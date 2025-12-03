@interface SRDatastore
+ (void)initialize;
- (BOOL)writeSampleBytes:(z_size_t)bytes length:(SRError *)length timestamp:(double)timestamp error:;
- (void)dealloc;
- (void)fetchSamplesFrom:(double)from to:(double)to callback:;
- (void)initWithSampleFile:(void *)file metadataFile:(void *)metadataFile configurationFile:(uint64_t)configurationFile permission:(uint64_t)permission defaults:(uint64_t)defaults writingStats:;
- (void)removeSamplesFrom:(double)from to:(double)to callback:;
- (void)startTimeOfCurrentSegment;
- (void)syncMappedFiles;
@end

@implementation SRDatastore

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    SRLogDatastore = os_log_create("com.apple.SensorKit", "Datastore");
  }
}

- (void)initWithSampleFile:(void *)file metadataFile:(void *)metadataFile configurationFile:(uint64_t)configurationFile permission:(uint64_t)permission defaults:(uint64_t)defaults writingStats:
{
  v45 = *MEMORY[0x1E69E9840];
  if (!self)
  {
    v14 = 0;
    goto LABEL_38;
  }

  v38.receiver = self;
  v38.super_class = SRDatastore;
  v13 = objc_msgSendSuper2(&v38, sel_init);
  v14 = v13;
  if (v13)
  {
    v13[1] = configurationFile;
    if (permission)
    {
      v15 = *(permission + 16);
      if (defaults)
      {
        goto LABEL_5;
      }
    }

    else
    {
      v15 = 0;
      if (defaults)
      {
LABEL_5:
        v16 = *(defaults + 56);
        v17 = *(defaults + 64);
        if (v17)
        {
          if (permission)
          {
            v18 = *(permission + 64);
          }

          else
          {
            v18 = 0.0;
          }

          v19 = *(defaults + 8);
          if (v19)
          {
            v20 = *(defaults + 16) / v19;
          }

          else
          {
            v20 = NAN;
          }

          v21 = (exp2((v18 - v20) / v18) * v17);
          if (permission)
          {
            v22 = *(permission + 72);
          }

          else
          {
            v22 = 0.0;
          }

          v23 = v22 * v15;
          if (v23 <= v21)
          {
            v15 = v21;
          }

          else
          {
            v15 = v23;
          }
        }
      }
    }

    if (a2)
    {
      lastPathComponent = [-[NSFileHandle pathname](a2) lastPathComponent];
    }

    else
    {
      lastPathComponent = 0;
    }

    [lastPathComponent doubleValue];
    [(SRWritingStats *)defaults updateSegmentCreationTime:v15 rateAdjustedSize:v25];
    if (defaults)
    {
      v26 = SRLogDatastore;
      if (os_log_type_enabled(SRLogDatastore, OS_LOG_TYPE_INFO))
      {
        if (permission)
        {
          v27 = *(permission + 64);
          v28 = *(permission + 16);
        }

        else
        {
          v28 = 0;
          v27 = 0;
        }

        *buf = 138412802;
        defaultsCopy = defaults;
        v41 = 2050;
        v42 = v27;
        v43 = 2048;
        v44 = v28;
        _os_log_impl(&dword_1C914D000, v26, OS_LOG_TYPE_INFO, "Writing Stats: %@\nExpected segment lifetime: %{public}f\nDefault segment size: %lu", buf, 0x20u);
      }
    }

    if (permission)
    {
      v29 = *(permission + 44);
    }

    else
    {
      v29 = 0.0;
    }

    v30 = (v29 * v15) / NSPageSize();
    if (permission)
    {
      v31 = *(permission + 32);
    }

    else
    {
      v31 = 0;
    }

    if (v31 < v30)
    {
      v30 = v31;
    }

    if (v30 <= 1)
    {
      v32 = 1;
    }

    else
    {
      v32 = v30;
    }

    v33 = v32 * NSPageSize();
    if (permission)
    {
      v14[2] = *(permission + 32);
      v34 = *(permission + 40);
      v35 = *(permission + 24);
    }

    else
    {
      v35 = 0;
      v14[2] = 0;
      v34 = 0;
    }

    *(v14 + 6) = v34;
    v14[4] = permission;
    v14[5] = [[SRFrameStore alloc] initWithFileHandle:a2 maxSize:v33 permission:v14[1] defaults:permission];
    if (file)
    {
      v14[6] = [[SRFrameStore alloc] initWithFileHandle:file maxSize:v35 permission:v14[1] defaults:permission];
    }

    if (metadataFile)
    {
      v14[7] = [[SRFrameStore alloc] initWithFileHandle:metadataFile maxSize:v35 permission:v14[1] defaults:permission];
    }
  }

LABEL_38:
  v36 = *MEMORY[0x1E69E9840];
  return v14;
}

- (void)dealloc
{
  if (self)
  {
    objc_setProperty_atomic(self, a2, 0, 40);
    objc_setProperty_atomic(self, v3, 0, 48);
    objc_setProperty_atomic(self, v4, 0, 56);
  }

  self->_defaults = 0;
  v5.receiver = self;
  v5.super_class = SRDatastore;
  [(SRDatastore *)&v5 dealloc];
}

- (BOOL)writeSampleBytes:(z_size_t)bytes length:(SRError *)length timestamp:(double)timestamp error:
{
  v46 = *MEMORY[0x1E69E9840];
  if (!result)
  {
    goto LABEL_46;
  }

  v9 = result;
  Property = objc_getProperty(result, a2, 40, 1);
  if (!Property)
  {
    v20 = SRLogDatastore;
    if (os_log_type_enabled(SRLogDatastore, OS_LOG_TYPE_INFO))
    {
      LOWORD(v42) = 0;
      v21 = "No disk space available, dropping data";
      v22 = v20;
      v23 = OS_LOG_TYPE_INFO;
      v24 = 2;
LABEL_42:
      _os_log_impl(&dword_1C914D000, v22, v23, v21, &v42, v24);
    }

LABEL_43:
    if (!length)
    {
      goto LABEL_45;
    }

    v40 = [SRError errorWithCode:12291];
    result = 0;
    *length = v40;
    goto LABEL_46;
  }

  v11 = Property;
  v12 = Property[2];
  if (v12)
  {
    v13 = v12[6] - v12[3] + v12[2];
  }

  else
  {
    v13 = 0;
  }

  if (v13 >= bytes + 20)
  {
    goto LABEL_21;
  }

  v14 = SRLogDatastore;
  if (os_log_type_enabled(SRLogDatastore, OS_LOG_TYPE_INFO))
  {
    if (v12)
    {
      v15 = v12[6] - v12[3] + v12[2];
    }

    else
    {
      v15 = 0;
    }

    v42 = 134349312;
    bytesCopy = v15;
    v44 = 2050;
    v45 = bytes + 20;
    _os_log_impl(&dword_1C914D000, v14, OS_LOG_TYPE_INFO, "Not enough free space (%{public}zu) to write %{public}zu. Attempting to expand the mapped region", &v42, 0x16u);
  }

  v16 = *(v9 + 16) * NSPageSize();
  v17 = *(v11 + 24);
  if (v17 && (v18 = *(v17 + 16)) != 0)
  {
    v19 = *(v18 + 4);
  }

  else
  {
    v25 = *(v11 + 16);
    if (v25)
    {
      v19 = *(v25 + 24) - *(v25 + 16) + 56;
    }

    else
    {
      v19 = 56;
    }
  }

  v26 = ((v19 + bytes) * *(v9 + 24));
  v27 = SRLogDatastore;
  if (v16 <= v26)
  {
    if (os_log_type_enabled(SRLogDatastore, OS_LOG_TYPE_DEFAULT))
    {
      if (v17 && (v31 = *(v17 + 16)) != 0)
      {
        v32 = *(v31 + 4);
      }

      else
      {
        v39 = *(v11 + 16);
        if (v39)
        {
          v32 = *(v39 + 24) - *(v39 + 16) + 56;
        }

        else
        {
          v32 = 56;
        }
      }

      v42 = 134349312;
      bytesCopy = bytes;
      v44 = 2050;
      v45 = v16 - v32;
      v21 = "Trying to write %{public}zd but only have %{public}llul available. Dropping the data.";
      v22 = v27;
      v23 = OS_LOG_TYPE_DEFAULT;
      v24 = 22;
      goto LABEL_42;
    }

    goto LABEL_43;
  }

  if (os_log_type_enabled(SRLogDatastore, OS_LOG_TYPE_INFO))
  {
    v42 = 134217984;
    bytesCopy = v26;
    _os_log_impl(&dword_1C914D000, v27, OS_LOG_TYPE_INFO, "Expanding the mapped region to %llu bytes while a new segment is fetched", &v42, 0xCu);
  }

  if (([(SRFrameStore *)v11 resizeMappedRegionTo:v26]& 1) == 0)
  {
    goto LABEL_43;
  }

LABEL_21:
  v28 = *(v11 + 24);
  if (v28 && (v29 = *(v28 + 16)) != 0)
  {
    v30 = *(v29 + 4);
  }

  else
  {
    v33 = *(v11 + 16);
    if (v33)
    {
      v30 = *(v33 + 24) - *(v33 + 16) + 56;
    }

    else
    {
      v30 = 56;
    }
  }

  [(SRFrameStore *)v11 writeFrameForBytes:a2 length:bytes timestamp:length error:timestamp];
  v34 = *(v11 + 24);
  if (v34 && (v35 = *(v34 + 16)) != 0)
  {
    v36 = *(v35 + 4);
  }

  else
  {
    v37 = *(v11 + 16);
    if (v37)
    {
      v36 = *(v37 + 24) - *(v37 + 16) + 56;
    }

    else
    {
      v36 = 56;
    }
  }

  if (v36 >= v30 + bytes)
  {
    result = 1;
  }

  else
  {
    v38 = SRLogDatastore;
    result = os_log_type_enabled(SRLogDatastore, OS_LOG_TYPE_INFO);
    if (result)
    {
      LOWORD(v42) = 0;
      _os_log_impl(&dword_1C914D000, v38, OS_LOG_TYPE_INFO, "Failed to write frames", &v42, 2u);
LABEL_45:
      result = 0;
    }
  }

LABEL_46:
  v41 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)fetchSamplesFrom:(double)from to:(double)to callback:
{
  v34 = *MEMORY[0x1E69E9840];
  if (self)
  {
    v32 = 0;
    v30 = 0;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    Property = objc_getProperty(self, a2, 40, 1);
    v9 = [(SRFrameStore *)Property enumerateFromOffset:?];
    v10 = [(SRFramesStoreOffsetEnumerator *)v9 countByEnumeratingWithState:&v25 objects:v33 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v26;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v26 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v25 + 1) + 8 * i);
          v15 = *v14;
          if (*v14 <= from || v15 > to)
          {
            if (v15 > to)
            {
              goto LABEL_30;
            }
          }

          else
          {
            v17 = self[6];
            if (v17)
            {
              fetchMetadataFromFrameStore(v17, &v32, &v31, v15);
              if (v32)
              {
                v18 = *(v32 + 16);
              }

              else
              {
                v18 = 0;
              }

              v19 = v32 + 20;
            }

            else
            {
              v19 = 0;
              v18 = 0;
            }

            v20 = self[7];
            if (v20)
            {
              fetchMetadataFromFrameStore(v20, &v30, &v29, v15);
              if (v30)
              {
                v21 = *(v30 + 16);
              }

              else
              {
                v21 = 0;
              }

              v22 = v30 + 20;
            }

            else
            {
              v21 = 0;
              v22 = 0;
            }

            v23 = (*(a2 + 16))(a2, v14 + 20, *(v14 + 16), v19, v18, v22, v21, v15);
            if (v15 > to || (v23 & 1) == 0)
            {
              goto LABEL_30;
            }
          }
        }

        v11 = [(SRFramesStoreOffsetEnumerator *)v9 countByEnumeratingWithState:&v25 objects:v33 count:16];
      }

      while (v11);
    }
  }

LABEL_30:
  v24 = *MEMORY[0x1E69E9840];
}

- (void)removeSamplesFrom:(double)from to:(double)to callback:
{
  v23 = *MEMORY[0x1E69E9840];
  if (self)
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    Property = objc_getProperty(self, a2, 40, 1);
    v9 = [(SRFrameStore *)Property enumerateFromOffset:?];
    v10 = [(SRFramesStoreOffsetEnumerator *)v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v19;
LABEL_4:
      v13 = 0;
      while (1)
      {
        if (*v19 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v18 + 1) + 8 * v13);
        v15 = *v14;
        if (*v14 >= from && v15 <= to)
        {
          [(SRFrameStore *)self[5] markFrameAsRemoved:v14];
          (*(a2 + 16))(a2, v15);
        }

        if (v15 > to)
        {
          break;
        }

        if (v11 == ++v13)
        {
          v11 = [(SRFramesStoreOffsetEnumerator *)v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
          if (v11)
          {
            goto LABEL_4;
          }

          break;
        }
      }
    }
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (void)startTimeOfCurrentSegment
{
  v7 = *MEMORY[0x1E69E9840];
  if (self)
  {
    memset(v5, 0, sizeof(v5));
    Property = objc_getProperty(self, a2, 40, 1);
    if ([(SRFramesStoreOffsetEnumerator *)[(SRFrameStore *)Property enumerateFromOffset:?] countByEnumeratingWithState:v5 objects:v6 count:16])
    {
      v3 = ***(&v5[0] + 1);
    }

    else
    {
      nan(&str_6);
    }
  }

  v4 = *MEMORY[0x1E69E9840];
}

- (void)syncMappedFiles
{
  if (self)
  {
    Property = objc_getProperty(self, a2, 40, 1);
    [(SRFrameStore *)Property sync];
    v5 = objc_getProperty(self, v4, 48, 1);
    [(SRFrameStore *)v5 sync];
    v7 = objc_getProperty(self, v6, 56, 1);

    [(SRFrameStore *)v7 sync];
  }
}

@end