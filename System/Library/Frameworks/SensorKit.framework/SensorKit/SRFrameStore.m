@interface SRFrameStore
+ (void)initialize;
- (SRFramesStoreOffsetEnumerator)enumerateFromOffset:(SRFramesStoreOffsetEnumerator *)result;
- (uint64_t)initWithFileHandle:(unint64_t)a3 maxSize:(uint64_t)a4 permission:(uint64_t)a5 defaults:;
- (uint64_t)isValidFrame:(uint64_t)result;
- (uint64_t)resizeBackingFileTo:(uint64_t)result;
- (uint64_t)resizeMappedRegionTo:(uint64_t)a1;
- (uint64_t)writeFrameForBytes:(z_size_t)a3 length:(SRError *)a4 timestamp:(double)a5 error:;
- (unint64_t)countByEnumeratingWithState:(id *)a3 objects:(id *)a4 count:(unint64_t)a5;
- (void)dealloc;
- (void)markFrameAsRemoved:(uint64_t)a1;
- (void)sync;
@end

@implementation SRFrameStore

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    SRLogFrameStore = os_log_create("com.apple.SensorKit", "FrameStore");
  }
}

- (uint64_t)initWithFileHandle:(unint64_t)a3 maxSize:(uint64_t)a4 permission:(uint64_t)a5 defaults:
{
  v63 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    goto LABEL_45;
  }

  v54.receiver = a1;
  v54.super_class = SRFrameStore;
  v9 = objc_msgSendSuper2(&v54, sel_init);
  v10 = v9;
  if (!v9)
  {
    goto LABEL_48;
  }

  if (a5)
  {
    v11 = *(a5 + 8);
  }

  else
  {
    v11 = 0;
  }

  if (v11 >= 0xFFFFFFFF)
  {
    v12 = -1;
  }

  else
  {
    v12 = v11;
  }

  v9[2] = v12;
  v57 = 0;
  v56 = 0u;
  memset(v55, 0, sizeof(v55));
  objc_opt_self();
  v13 = [a2 seekToEndOfFile];
  [a2 seekToFileOffset:0];
  if (a2)
  {
    v14 = [-[NSFileHandle pathname](a2) lastPathComponent];
    if (!v13)
    {
      goto LABEL_21;
    }
  }

  else
  {
    v14 = 0;
    if (!v13)
    {
      goto LABEL_21;
    }
  }

  v15 = [(NSFileHandle *)a2 pathname];
  if (v13 > 0x37)
  {
    v21 = [a2 readDataOfLength:56];
    [a2 seekToFileOffset:0];
    if (v21 && [v21 length] > 0x37)
    {
      v24 = [v21 bytes];
      v25 = v24;
      if (*v24 == 1195725633)
      {
        v53 = *(v24 + 16);
        v55[0] = *v24;
        v55[1] = v53;
        v56 = *(v24 + 32);
        v57 = *(v24 + 48);
        goto LABEL_22;
      }

      v26 = SRLogFrameStore;
      if (os_log_type_enabled(SRLogFrameStore, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 68289794;
        *v59 = 4;
        *&v59[4] = 2082;
        *&v59[6] = "ASEG";
        *&v59[14] = 1042;
        *&v59[16] = 4;
        *v60 = 2082;
        *&v60[2] = v25;
        v61 = 2114;
        v62 = v15;
        v17 = "Segment header magic number %{public}.4s doesn't match %{public}.4s in file %{public}@. Potentially overwriting whatever data is currently there";
        v18 = v26;
        v19 = OS_LOG_TYPE_DEFAULT;
        v20 = 44;
        goto LABEL_20;
      }
    }

    else
    {
      v22 = SRLogFrameStore;
      if (os_log_type_enabled(SRLogFrameStore, OS_LOG_TYPE_INFO))
      {
        v23 = [v21 length];
        *buf = 138543618;
        *v59 = v15;
        *&v59[8] = 2050;
        *&v59[10] = v23;
        v17 = "Unable to read frames file segment header %{public}@. Received data of %{public}lu length. Potentially overwriting whatever data is currently there";
        v18 = v22;
        v19 = OS_LOG_TYPE_INFO;
        v20 = 22;
        goto LABEL_20;
      }
    }
  }

  else
  {
    v16 = SRLogFrameStore;
    if (os_log_type_enabled(SRLogFrameStore, OS_LOG_TYPE_INFO))
    {
      *buf = 138543362;
      *v59 = v15;
      v17 = "Frames file %{public}@ is invalid because the current size is less than a valid segment header. Potentially overwriting whatever data is currently there.";
      v18 = v16;
      v19 = OS_LOG_TYPE_INFO;
      v20 = 12;
LABEL_20:
      _os_log_impl(&dword_1C914D000, v18, v19, v17, buf, v20);
    }
  }

LABEL_21:
  SRMakeSegmentHeader(v55, 0, v14, v12);
LABEL_22:
  v27 = [a2 seekToEndOfFile];
  [a2 seekToFileOffset:0];
  v29 = [(NSFileHandle *)a2 pathname];
  v30 = *(v55 + 4);
  if (*(v55 + 4) > v27)
  {
    v31 = SRLogFrameStore;
    if (os_log_type_enabled(SRLogFrameStore, OS_LOG_TYPE_INFO))
    {
      *buf = 138543874;
      *v59 = v29;
      *&v59[8] = 2048;
      *&v59[10] = v30;
      *&v59[18] = 2050;
      *v60 = a3;
      v32 = "Segment header in %{public}@ says file size is %llu but that is larger than the max size (%{public}lu) we can support.";
      v33 = v31;
      v34 = OS_LOG_TYPE_INFO;
      v35 = 32;
LABEL_43:
      _os_log_impl(&dword_1C914D000, v33, v34, v32, buf, v35);
      goto LABEL_44;
    }

    goto LABEL_44;
  }

  if (!(*(v55 + 4) | a4 & 0xFFFFFFFFFFFFFFFDLL))
  {
    v45 = SRLogFrameStore;
    if (os_log_type_enabled(SRLogFrameStore, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      *v59 = v29;
      v32 = "Not mapping an empty file %{public}@";
      v33 = v45;
      v34 = OS_LOG_TYPE_DEFAULT;
      v35 = 12;
      goto LABEL_43;
    }

LABEL_44:

LABEL_45:
    v10 = 0;
    goto LABEL_48;
  }

  v36 = DWORD1(v55[1]);
  v37 = *(v10 + 8);
  if (DWORD1(v55[1]) != v37)
  {
    v38 = SRLogFrameStore;
    if (os_log_type_enabled(SRLogFrameStore, OS_LOG_TYPE_DEFAULT))
    {
      v39 = "";
      *buf = 138544130;
      *v59 = v29;
      *&v59[8] = 1026;
      if (a4 == 1)
      {
        v39 = "Potentially overwriting whatever data is currently there";
      }

      *&v59[10] = v36;
      *&v59[14] = 1026;
      *&v59[16] = v37;
      *v60 = 2080;
      *&v60[2] = v39;
      _os_log_impl(&dword_1C914D000, v38, OS_LOG_TYPE_DEFAULT, "Segment versions of %{public}@ don't match. Received %{public}d, expected %{public}d.%s", buf, 0x22u);
    }

    v30 = 0;
    *(v55 + 4) = 0;
  }

  if (a2)
  {
    v40 = [-[NSFileHandle pathname](a2) lastPathComponent];
  }

  else
  {
    v40 = 0;
  }

  objc_setProperty_nonatomic_copy(v10, v28, v40, 40);
  if (v30 <= a3)
  {
    v41 = a3;
  }

  else
  {
    v41 = v30;
  }

  *(v10 + 32) = a4;
  v42 = memoryMappingsForPermission(a4, v55, v41, v30);
  *(v10 + 56) = a2;
  if (a4 == 1 && ([(SRFrameStore *)v10 resizeBackingFileTo:v41]& 1) == 0)
  {
    v52 = SRLogFrameStore;
    if (os_log_type_enabled(SRLogFrameStore, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1C914D000, v52, OS_LOG_TYPE_ERROR, "Failed to resize backing file", buf, 2u);
    }

    goto LABEL_44;
  }

  *(v10 + 16) = [v42 lastObject];
  if ([v42 count] <= 1)
  {
    v44 = *(v10 + 24);
  }

  else
  {
    v44 = [v42 firstObject];
    *(v10 + 24) = v44;
  }

  Property = objc_getProperty(v10, v43, 56, 1);
  [(SRMemoryMapping *)v44 mapWithFileHandle:?];
  v47 = *(v10 + 16);
  v49 = objc_getProperty(v10, v48, 56, 1);
  [(SRMemoryMapping *)v47 mapWithFileHandle:v49];
  *(v10 + 48) = *(v55 + 12);
LABEL_48:
  v50 = *MEMORY[0x1E69E9840];
  return v10;
}

- (uint64_t)resizeBackingFileTo:(uint64_t)result
{
  v11 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v2 = result;
    v3 = SRLogFrameStore;
    if (*(result + 32) == 1)
    {
      if (os_log_type_enabled(SRLogFrameStore, OS_LOG_TYPE_INFO))
      {
        v5 = [(NSFileHandle *)*(v2 + 56) pathname];
        v7 = 138478083;
        v8 = v5;
        v9 = 2048;
        v10 = a2;
        _os_log_impl(&dword_1C914D000, v3, OS_LOG_TYPE_INFO, "Resizing file %{private}@ to %llu bytes", &v7, 0x16u);
      }

      [*(v2 + 56) truncateFileAtOffset:a2];
      result = 1;
    }

    else
    {
      result = os_log_type_enabled(SRLogFrameStore, OS_LOG_TYPE_ERROR);
      if (result)
      {
        LOWORD(v7) = 0;
        _os_log_error_impl(&dword_1C914D000, v3, OS_LOG_TYPE_ERROR, "Attempting to resize a non-writable file", &v7, 2u);
        result = 0;
      }
    }
  }

  v6 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)dealloc
{
  v21 = *MEMORY[0x1E69E9840];
  if (self)
  {
    header = self->_header;
    if (header && (start = header->_start) != 0)
    {
      v5 = *(start + 4);
    }

    else
    {
      frames = self->_frames;
      if (frames)
      {
        v5 = frames->_currentPosition - frames->_start + 56;
      }

      else
      {
        v5 = 56;
      }
    }

    v7 = SRLogFrameStore;
    if (os_log_type_enabled(SRLogFrameStore, OS_LOG_TYPE_INFO))
    {
      Property = objc_getProperty(self, v8, 56, 1);
LABEL_9:
      *buf = 138543362;
      v18 = [(NSFileHandle *)Property pathname];
      _os_log_impl(&dword_1C914D000, v7, OS_LOG_TYPE_INFO, "Tearing down frame store for %{public}@", buf, 0xCu);
    }
  }

  else
  {
    v7 = SRLogFrameStore;
    v5 = 0;
    if (os_log_type_enabled(SRLogFrameStore, OS_LOG_TYPE_INFO))
    {
      Property = 0;
      goto LABEL_9;
    }
  }

  self->_header = 0;
  self->_frames = 0;
  if (self->_permission == 1)
  {
    v11 = SRLogFrameStore;
    if (os_log_type_enabled(SRLogFrameStore, OS_LOG_TYPE_INFO))
    {
      v13 = objc_getProperty(self, v12, 56, 1);
      v14 = [(NSFileHandle *)v13 pathname];
      *buf = 138543618;
      v18 = v14;
      v19 = 2050;
      v20 = v5;
      _os_log_impl(&dword_1C914D000, v11, OS_LOG_TYPE_INFO, "Finalizing %{public}@ to %{public}llu bytes", buf, 0x16u);
    }

    [(SRFrameStore *)self resizeBackingFileTo:v5];
  }

  objc_setProperty_atomic(self, v10, 0, 56);

  self->_segmentName = 0;
  v16.receiver = self;
  v16.super_class = SRFrameStore;
  [(SRFrameStore *)&v16 dealloc];
  v15 = *MEMORY[0x1E69E9840];
}

- (uint64_t)resizeMappedRegionTo:(uint64_t)a1
{
  if (!a1)
  {
    return 0;
  }

  v3 = NSRoundUpToMultipleOfPageSize(bytes);
  if (![(SRFrameStore *)a1 resizeBackingFileTo:v3])
  {
    return 0;
  }

  v4 = *(a1 + 24);
  if (!v4)
  {
    return 0;
  }

  v5 = *(v4 + 16);
  if (!v5)
  {
    return 0;
  }

  v6 = memoryMappingsForPermission(*(a1 + 32), v5, v3, *(v5 + 4));

  v7 = [v6 lastObject];
  *(a1 + 16) = v7;
  v8 = *(a1 + 56);

  return [(SRMemoryMapping *)v7 mapWithFileHandle:v8];
}

- (uint64_t)isValidFrame:(uint64_t)result
{
  v16 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v2 = *(result + 16);
    if (!v2)
    {
      goto LABEL_4;
    }

    v4 = (a2 + 20);
    v5 = *(a2 + 16);
    if (a2 + 20 + v5 > *(v2 + 24))
    {
      goto LABEL_4;
    }

    v6 = adler32(0, 0, 0);
    v7 = adler32_z(v6, v4, v5);
    v8 = *(a2 + 8);
    result = v7 == v8;
    if (v7 != v8 && v8 != 0)
    {
      v10 = SRLogFrameStore;
      result = os_log_type_enabled(SRLogFrameStore, OS_LOG_TYPE_INFO);
      if (result)
      {
        v12 = 134218240;
        v13 = v8;
        v14 = 2050;
        v15 = v7;
        _os_log_impl(&dword_1C914D000, v10, OS_LOG_TYPE_INFO, "Checksums don't match. Header: %llu, Generated checksum: %{public}lu. Skipping frame.", &v12, 0x16u);
LABEL_4:
        result = 0;
      }
    }
  }

  v11 = *MEMORY[0x1E69E9840];
  return result;
}

- (unint64_t)countByEnumeratingWithState:(id *)a3 objects:(id *)a4 count:(unint64_t)a5
{
  frames = self->_frames;
  if (frames)
  {
    v10 = 0;
    var0 = (frames->_start + a3->var0);
    while (var0 < frames->_currentPosition && v10 < a5)
    {
      if ([(SRFrameStore *)self isValidFrame:?])
      {
        a4[v10++] = var0;
      }

      var0 = (var0 + var0[4] + 20);
      frames = self->_frames;
      if (!frames)
      {
        goto LABEL_12;
      }
    }

    frames = frames->_start;
  }

  else
  {
    v10 = 0;
    var0 = a3->var0;
  }

LABEL_12:
  a3->var0 = var0 - frames;
  a3->var1 = a4;
  a3->var2 = self;
  return v10;
}

- (SRFramesStoreOffsetEnumerator)enumerateFromOffset:(SRFramesStoreOffsetEnumerator *)result
{
  if (result)
  {
    v3 = result;
    v4 = [SRFramesStoreOffsetEnumerator alloc];
    if (v4)
    {
      v5.receiver = v4;
      v5.super_class = SRFramesStoreOffsetEnumerator;
      v4 = [(SRFramesStoreOffsetEnumerator *)&v5 init];
      if (v4)
      {
        v4->_framesStore = v3;
        v4->_offset = a2;
      }
    }

    return v4;
  }

  return result;
}

- (uint64_t)writeFrameForBytes:(z_size_t)a3 length:(SRError *)a4 timestamp:(double)a5 error:
{
  v40 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v6 = result;
    v7 = *(result + 24);
    if (!v7 || (v8 = *(v7 + 16)) == 0)
    {
      v20 = SRLogFrameStore;
      if (os_log_type_enabled(SRLogFrameStore, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_1C914D000, v20, OS_LOG_TYPE_ERROR, "Failed to find a segment header while writing. Dropping incoming data", buf, 2u);
        if (!a4)
        {
          goto LABEL_48;
        }
      }

      else if (!a4)
      {
        goto LABEL_48;
      }

      v19 = 12294;
      goto LABEL_25;
    }

    if (!*(v8 + 4))
    {
      v39 = 0;
      v38 = 0u;
      memset(buf, 0, sizeof(buf));
      SRMakeSegmentHeader(buf, 56, *(result + 40), *(result + 8));
      v12 = *(v6 + 24);
      if (v12)
      {
        v13 = *(v12 + 16);
        if ([(SRMemoryMapping *)v12 isValidWriteToDestinationAddress:v13 withLength:0x38uLL bytes:buf])
        {
          v14 = *buf;
          v15 = *&buf[16];
          v16 = v38;
          *(v13 + 48) = v39;
          *(v13 + 16) = v15;
          *(v13 + 32) = v16;
          *v13 = v14;
        }
      }
    }

    v17 = *(v6 + 16);
    if (v17)
    {
      v17 = (v17[6] - v17[3] + v17[2]);
    }

    if (v17 < a3 + 20)
    {
      v18 = SRLogFrameStore;
      if (os_log_type_enabled(SRLogFrameStore, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_1C914D000, v18, OS_LOG_TYPE_ERROR, "No space left to write to the mapped region", buf, 2u);
        if (a4)
        {
          goto LABEL_13;
        }
      }

      else if (a4)
      {
LABEL_13:
        v19 = 12291;
LABEL_25:
        v26 = [SRError errorWithCode:v19];
        result = 0;
        *a4 = v26;
        goto LABEL_49;
      }

LABEL_48:
      result = 0;
      goto LABEL_49;
    }

    v21 = *(v6 + 48);
    if (v21 >= a5)
    {
      v25 = SRLogFrameStore;
      if (os_log_type_enabled(SRLogFrameStore, OS_LOG_TYPE_ERROR))
      {
        *buf = 134218240;
        *&buf[4] = a5;
        *&buf[12] = 2048;
        *&buf[14] = v21;
        _os_log_error_impl(&dword_1C914D000, v25, OS_LOG_TYPE_ERROR, "Frame should come in chronological order. Input %f < last %f", buf, 0x16u);
        if (!a4)
        {
          goto LABEL_48;
        }
      }

      else if (!a4)
      {
        goto LABEL_48;
      }

      v19 = 12292;
      goto LABEL_25;
    }

    v22 = mach_continuous_time();
    v23 = SRAbsoluteTimeFromContinuousTime(v22);
    if (v23 + 10.0 < a5)
    {
      v24 = SRLogFrameStore;
      if (os_log_type_enabled(SRLogFrameStore, OS_LOG_TYPE_ERROR))
      {
        *buf = 134218240;
        *&buf[4] = a5;
        *&buf[12] = 2048;
        *&buf[14] = v23;
        _os_log_error_impl(&dword_1C914D000, v24, OS_LOG_TYPE_ERROR, "Timestamp is from the future. Input %f, Current: %f", buf, 0x16u);
        if (!a4)
        {
          goto LABEL_48;
        }
      }

      else if (!a4)
      {
        goto LABEL_48;
      }

      v19 = 12296;
      goto LABEL_25;
    }

    if (HIDWORD(a3))
    {
      v27 = SRLogFrameStore;
      if (os_log_type_enabled(SRLogFrameStore, OS_LOG_TYPE_ERROR))
      {
        *buf = 134349312;
        *&buf[4] = a3;
        *&buf[12] = 1024;
        *&buf[14] = -1;
        _os_log_error_impl(&dword_1C914D000, v27, OS_LOG_TYPE_ERROR, "Sample too large %{public}zu but only %u supported", buf, 0x12u);
        if (!a4)
        {
          goto LABEL_48;
        }
      }

      else if (!a4)
      {
        goto LABEL_48;
      }

      v19 = 12293;
      goto LABEL_25;
    }

    v28 = adler32(0, 0, 0);
    v29 = adler32_z(v28, a2, a3);
    *buf = a5;
    *&buf[8] = v29;
    *&buf[16] = a3;
    [(SRMemoryMapping *)*(v6 + 16) appendBytes:buf length:0x14uLL];
    [(SRMemoryMapping *)*(v6 + 16) appendBytes:a2 length:a3];
    *(v6 + 48) = a5;
    v30 = *(v6 + 16);
    if (v30)
    {
      v30 = (v30[3] + v30[4] - v30[2]);
    }

    v36 = v30;
    v31 = *(v6 + 24);
    if (v31)
    {
      v32 = *(v31 + 16);
      if ([(SRMemoryMapping *)v31 isValidWriteToDestinationAddress:8uLL withLength:&v36 bytes:?])
      {
        *(v32 + 4) = v36;
      }

      v33 = *(v6 + 24);
      if (v33)
      {
        v34 = *(v33 + 16);
        if ([(SRMemoryMapping *)v33 isValidWriteToDestinationAddress:8uLL withLength:v6 + 48 bytes:?])
        {
          *(v34 + 12) = *(v6 + 48);
        }
      }
    }

    result = 1;
  }

LABEL_49:
  v35 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)markFrameAsRemoved:(uint64_t)a1
{
  v7 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    *(a2 + 8) = 0;
    v2 = memset_s((a2 + 20), *(a2 + 16), 0, *(a2 + 16));
    if (v2 < 0)
    {
      v3 = v2;
      v4 = SRLogFrameStore;
      if (os_log_type_enabled(SRLogFrameStore, OS_LOG_TYPE_FAULT))
      {
        v6[0] = 67240192;
        v6[1] = v3;
        _os_log_fault_impl(&dword_1C914D000, v4, OS_LOG_TYPE_FAULT, "Failed to zero out memory. %{public, darwin.errno}d", v6, 8u);
      }
    }
  }

  v5 = *MEMORY[0x1E69E9840];
}

- (void)sync
{
  v12 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v2 = SRLogFrameStore;
    if (os_log_type_enabled(SRLogFrameStore, OS_LOG_TYPE_DEFAULT))
    {
      v4 = a1[2];
      if (v4)
      {
        v5 = *(v4 + 24) - *(v4 + 16);
      }

      else
      {
        v5 = 0;
      }

      Property = objc_getProperty(a1, v3, 56, 1);
      v8 = 134349314;
      v9 = v5;
      v10 = 2114;
      v11 = [(NSFileHandle *)Property pathname];
      _os_log_impl(&dword_1C914D000, v2, OS_LOG_TYPE_DEFAULT, "Syncing %{public}zu bytes from segment %{public}@ to disk", &v8, 0x16u);
    }

    [(SRMemoryMapping *)a1[3] sync];
    [(SRMemoryMapping *)a1[2] sync];
  }

  v7 = *MEMORY[0x1E69E9840];
}

@end