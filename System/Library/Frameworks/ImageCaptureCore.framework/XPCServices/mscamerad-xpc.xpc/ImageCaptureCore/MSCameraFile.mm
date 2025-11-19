@interface MSCameraFile
- (BOOL)closeMap:(char *)a3 size:(unint64_t)a4;
- (BOOL)closeStream;
- (BOOL)hasThumbnail;
- (BOOL)hasValidInformation:(id)a3;
- (BOOL)imageIOSupported;
- (BOOL)openStream;
- (BOOL)processMetadata:(id)a3;
- (BOOL)rawImageSupported;
- (NSMutableDictionary)metadataDict;
- (id)createThumbnailUsingOffsets:(id)a3;
- (id)exifThumbOffsets;
- (id)fingerprintWithError:(id *)a3;
- (id)initForReadingOnlyWithName:(id)a3 parent:(id)a4 device:(id)a5;
- (id)movieThumbnailDataForMaxPixelSize:(unsigned int)a3;
- (id)rawImageValidateSubImage:(id)a3 error:(id *)a4;
- (id)subImageDictForPixelWidth:(id)a3;
- (id)thumbnailDataUsingSidecarFiles;
- (int)imageHeight;
- (int)imageOrientation;
- (int)imageWidth;
- (int64_t)compare:(id)a3 against:(id)a4 withContext:(void *)a5;
- (unint64_t)readStream:(void *)a3 size:(unint64_t)a4 offset:(unint64_t)a5;
- (void)addSubImageDict:(id)a3;
- (void)createBufferCache;
- (void)dealloc;
- (void)destroyBufferCache;
- (void)metadataWithOptions:(id)a3 reply:(id)a4;
- (void)rawImageMinimumProperties;
- (void)readDataWithOptions:(id)a3 reply:(id)a4;
- (void)readMap:(unint64_t)a3 offset:(unint64_t)a4;
- (void)setSizeAndOrientationFromImageProperties:(id)a3;
- (void)thumbnailDataUsingSidecarFiles;
- (void)thumbnailDataWithOptions:(id)a3 reply:(id)a4;
- (void)updateBasicMetadata;
@end

@implementation MSCameraFile

- (id)initForReadingOnlyWithName:(id)a3 parent:(id)a4 device:(id)a5
{
  v6.receiver = self;
  v6.super_class = MSCameraFile;
  return [(MSCameraItem *)&v6 initWithName:a3 parent:a4 device:a5];
}

- (BOOL)hasThumbnail
{
  v2 = [(MSCameraItem *)self cameraItemProxy];
  v3 = [v2 hasThumbnail];

  return v3;
}

- (int)imageHeight
{
  v2 = [(MSCameraItem *)self cameraItemProxy];
  v3 = [v2 height];

  return v3;
}

- (int)imageWidth
{
  v2 = [(MSCameraItem *)self cameraItemProxy];
  v3 = [v2 width];

  return v3;
}

- (int)imageOrientation
{
  v2 = [(MSCameraItem *)self cameraItemProxy];
  v3 = [v2 orientation];

  return v3;
}

- (void)dealloc
{
  [(MSCameraItem *)self cancelSource];
  [(MSCameraFile *)self clearDevice];
  bufferCache = self->_bufferCache;
  self->_bufferCache = 0;

  v4.receiver = self;
  v4.super_class = MSCameraFile;
  [(MSCameraItem *)&v4 dealloc];
}

- (BOOL)openStream
{
  v3 = [(MSCameraItem *)self device];
  v4 = [v3 beingEjected];

  if (v4)
  {
    return 0;
  }

  os_unfair_lock_lock(&self->_fileOpenLock);
  v6 = [(MSCameraItem *)self path];
  v7 = [v6 UTF8String];

  v8 = [(MSCameraItem *)self fd];
  if (v8 || (v8 = open(v7, 0, 0), v8))
  {
    [(MSCameraItem *)self setFd:v8];
    [(MSCameraFile *)self incrementStreamCount];
    v5 = 1;
  }

  else
  {
    v5 = 0;
  }

  os_unfair_lock_unlock(&self->_fileOpenLock);
  return v5;
}

- (BOOL)closeStream
{
  v3 = [(MSCameraItem *)self device];
  v4 = [v3 beingEjected];

  if (v4)
  {
    return 0;
  }

  os_unfair_lock_lock(&self->_fileOpenLock);
  [(MSCameraFile *)self decrementStreamCount];
  v6 = atomic_load(&self->_fileOpenCount);
  if (v6 || ![(MSCameraItem *)self fd])
  {
    v5 = 0;
  }

  else
  {
    close([(MSCameraItem *)self fd]);
    [(MSCameraItem *)self setFd:0];
    v5 = 1;
  }

  os_unfair_lock_unlock(&self->_fileOpenLock);
  return v5;
}

- (void)readMap:(unint64_t)a3 offset:(unint64_t)a4
{
  result = mmap(0, a3, 1, 16385, [(MSCameraItem *)self fd], a4);
  if (result == -1)
  {
    return 0;
  }

  return result;
}

- (BOOL)closeMap:(char *)a3 size:(unint64_t)a4
{
  v6 = [(MSCameraItem *)self device];
  v7 = [v6 beingEjected];
  if (a3)
  {
    v8 = v7;
  }

  else
  {
    v8 = 1;
  }

  if ((v8 & 1) == 0)
  {
    munmap(a3, a4);
  }

  return v8 ^ 1;
}

- (void)createBufferCache
{
  bufferCache = self->_bufferCache;
  if (bufferCache)
  {
    [(ICBufferCache *)bufferCache stopReading];
    v4 = self->_bufferCache;
    self->_bufferCache = 0;
  }

  v5 = [[ICBufferCache alloc] initWithFile:self];
  v6 = self->_bufferCache;
  self->_bufferCache = v5;

  v7 = self->_bufferCache;
  if (v7)
  {

    [(ICBufferCache *)v7 startReading];
  }
}

- (void)destroyBufferCache
{
  bufferCache = self->_bufferCache;
  if (bufferCache)
  {
    [(ICBufferCache *)bufferCache stopReading];
    v4 = self->_bufferCache;
    self->_bufferCache = 0;
  }
}

- (unint64_t)readStream:(void *)a3 size:(unint64_t)a4 offset:(unint64_t)a5
{
  v9 = [(MSCameraItem *)self device];
  v10 = [v9 beingEjected];

  if (v10)
  {
    return 0;
  }

  v11 = [(MSCameraItem *)self fd];
  if (!v11)
  {
    return 0;
  }

  v12 = v11;
  if (a5 + a4 > [(MSCameraItem *)self size])
  {
    a4 = [(MSCameraItem *)self size]- a5;
  }

  return pread(v12, a3, a4, a5);
}

- (id)thumbnailDataUsingSidecarFiles
{
  v3 = [(MSCameraItem *)self name];
  v4 = [v3 stringByDeletingPathExtension];
  v5 = [v4 stringByAppendingPathExtension:@"THM"];

  v6 = [MSCameraFile alloc];
  v7 = [(MSCameraItem *)self parent];
  v8 = [(MSCameraItem *)self device];
  v9 = [(MSCameraFile *)v6 initForReadingOnlyWithName:v5 parent:v7 device:v8];

  if (v9 && [v9 openStream])
  {
    v10 = [v9 size];
    v11 = [[NSMutableData alloc] initWithLength:v10];
    v12 = [v9 readStream:objc_msgSend(v11 size:"mutableBytes") offset:{v10, 0}];
    v13 = 0;
    if (v11 && v12 == v10)
    {
      v13 = v11;
    }

    [v9 closeStream];

    if (v13)
    {
      __ICOSLogCreate();
      v14 = [(MSCameraItem *)self name];
      v15 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"  ✓             [%12s] thumbnail using sidecar file", [v14 UTF8String]);

      v16 = __ICLogTypeEnabled();
      v17 = _gICOSLog;
      if (v16)
      {
        if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v20 = v15;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
        }
      }

      else if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEBUG))
      {
        [(MSCameraFile *)v15 thumbnailDataUsingSidecarFiles];
      }
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)createThumbnailUsingOffsets:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"JPEGLength"];
  v6 = [v5 intValue];

  v7 = [v4 objectForKeyedSubscript:@"JPEGOffset"];

  v8 = [v7 intValue];
  v9 = 0;
  if (v6 && v8)
  {
    __ICOSLogCreate();
    v10 = [(MSCameraItem *)self name];
    if ([v10 length] >= 0x15)
    {
      v11 = [v10 substringWithRange:{0, 18}];
      v12 = [v11 stringByAppendingString:@".."];

      v10 = v12;
    }

    v13 = [NSString stringWithFormat:@"[subImage] %10s: [%7db @ %9d]", "using", v6, v8];
    v14 = _gICOSLog;
    if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
    {
      v15 = v10;
      v16 = v14;
      *buf = 136446466;
      v37 = [v10 UTF8String];
      v38 = 2114;
      v39 = v13;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
    }

    if (![(MSCameraFile *)self openStream])
    {
      v9 = 0;
      goto LABEL_25;
    }

    if ([(MSCameraItem *)self size]>= (v8 + v6))
    {
      v17 = mmap(0, v6, 3, 4097, -1, 0);
      v18 = [(MSCameraFile *)self readStream:v17 size:v6 offset:v8];
      if ([(MSCameraFile *)self validateReturnDataSize:v18 forRequestSize:v6])
      {
        if (*v17 == 255 && v17[1] == 216)
        {
          __ICOSLogCreate();
          v19 = [(MSCameraItem *)self name];
          if ([v19 length] >= 0x15)
          {
            v20 = [v19 substringWithRange:{0, 18}];
            v21 = [v20 stringByAppendingString:@".."];

            v19 = v21;
          }

          v22 = [NSString stringWithFormat:@"[subImage] %10s: [%7db @ %9d]", "validated", v6, v8];
          v23 = _gICOSLog;
          if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
          {
            v24 = v19;
            v25 = v23;
            v26 = [v19 UTF8String];
            *buf = 136446466;
            v37 = v26;
            v38 = 2114;
            v39 = v22;
            _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
          }

          v9 = dispatch_data_create(v17, v18, 0, _dispatch_data_destructor_munmap);
          goto LABEL_24;
        }

        __ICOSLogCreate();
        v27 = [(MSCameraItem *)self name];
        if ([v27 length] >= 0x15)
        {
          v28 = [v27 substringWithRange:{0, 18}];
          v29 = [v28 stringByAppendingString:@".."];

          v27 = v29;
        }

        v30 = [NSString stringWithFormat:@"[subImage] %10s: [%7db @ %9d]", "invalid", v6, v8];
        v31 = _gICOSLog;
        if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
        {
          v32 = v27;
          v33 = v31;
          v34 = [v27 UTF8String];
          *buf = 136446466;
          v37 = v34;
          v38 = 2114;
          v39 = v30;
          _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
        }
      }
    }

    v9 = 0;
LABEL_24:
    [(MSCameraFile *)self closeStream];
  }

LABEL_25:

  return v9;
}

- (void)rawImageMinimumProperties
{
  info = 0;
  mach_timebase_info(&info);
  _gBenchmarkStartMachTime = 0;
  *&_gBenchmarkStartMachTime = mach_absolute_time();
  v47 = +[NSMutableDictionary dictionary];
  v3 = [(MSCameraItem *)self path];
  v4 = [NSURL fileURLWithPath:v3];

  v5 = CGImageSourceCreateWithURL(v4, 0);
  v6 = CGImageSourceCopyProperties(v5, 0);
  v7 = v6;
  if (v6)
  {
    v8 = [(__CFDictionary *)v6 objectForKeyedSubscript:@"{raw}"];
    v9 = [v8 objectForKeyedSubscript:@"Thumbnails"];

    v10 = [(__CFDictionary *)v7 objectForKeyedSubscript:@"{raw}"];
    v11 = [v10 objectForKeyedSubscript:@"CropSize"];

    v12 = [(__CFDictionary *)v7 objectForKeyedSubscript:@"{raw}"];
    v13 = [v12 objectForKeyedSubscript:@"Orientation"];

    if (![(MSCameraFile *)self imageHeight]&& ![(MSCameraFile *)self imageWidth]&& v11)
    {
      v14 = [v11 objectForKeyedSubscript:@"Height"];
      -[MSCameraFile setImageHeight:](self, "setImageHeight:", [v14 intValue]);

      [v11 objectForKeyedSubscript:@"Width"];
      v45 = v13;
      v16 = v15 = v11;
      -[MSCameraFile setImageWidth:](self, "setImageWidth:", [v16 intValue]);

      v11 = v15;
      v17 = [v15 objectForKeyedSubscript:@"Width"];
      [v47 setObject:v17 forKeyedSubscript:@"PixelWidth"];

      v18 = [v15 objectForKeyedSubscript:@"Height"];
      v13 = v45;
      [v47 setObject:v18 forKeyedSubscript:@"PixelHeight"];
    }

    if (![(MSCameraFile *)self imageOrientation]&& v13)
    {
      -[MSCameraFile setImageOrientation:](self, "setImageOrientation:", [v13 intValue]);
      [v47 setObject:v13 forKeyedSubscript:@"Orientation"];
    }

    if (v9)
    {
      v44 = v4;
      v46 = v13;
      v42 = v5;
      v43 = v7;
      v51 = 0u;
      v52 = 0u;
      v49 = 0u;
      v50 = 0u;
      v19 = v9;
      v20 = [v19 countByEnumeratingWithState:&v49 objects:v58 count:16];
      if (v20)
      {
        v21 = v20;
        v22 = *v50;
        do
        {
          for (i = 0; i != v21; i = i + 1)
          {
            if (*v50 != v22)
            {
              objc_enumerationMutation(v19);
            }

            v24 = *(*(&v49 + 1) + 8 * i);
            v48 = 0;
            v25 = [(MSCameraFile *)self rawImageValidateSubImage:v24 error:&v48];
            v26 = v25;
            if (v25)
            {
              v27 = [v25 objectForKeyedSubscript:@"JPEGOffset"];

              if (v27)
              {
                if (![(MSCameraFile *)self imageOrientation])
                {
                  v28 = [v26 objectForKeyedSubscript:@"Orientation"];

                  if (v28)
                  {
                    v29 = [v26 objectForKeyedSubscript:@"Orientation"];
                    -[MSCameraFile setImageOrientation:](self, "setImageOrientation:", [v29 intValue]);

                    v30 = [v26 objectForKeyedSubscript:@"Orientation"];
                    [v47 setObject:v30 forKeyedSubscript:kCGImagePropertyTIFFOrientation];
                  }
                }

                [(MSCameraFile *)self addSubImageDict:v26];
              }
            }
          }

          v21 = [v19 countByEnumeratingWithState:&v49 objects:v58 count:16];
        }

        while (v21);
      }

      v7 = v43;
      v4 = v44;
      v5 = v42;
      v13 = v46;
    }
  }

  [(MSCameraFile *)self setSizeAndOrientationFromImageProperties:v47];
  if (v5)
  {
    CFRelease(v5);
  }

  v31 = (((mach_absolute_time() - *&_gBenchmarkStartMachTime) * info.numer) / info.denom) / 1000000.0;
  __ICOSLogCreate();
  v32 = [(MSCameraItem *)self name];
  if ([v32 length] >= 0x15)
  {
    v33 = [v32 substringWithRange:{0, 18}];
    v34 = [v33 stringByAppendingString:@".."];

    v32 = v34;
  }

  if (v31 <= 300.0)
  {
    v35 = @"𝚫";
  }

  else
  {
    v35 = @"⊗";
  }

  v36 = [NSString stringWithFormat:@"rawImageMinimumProperties"];
  v37 = [NSString stringWithFormat:@"%@[%4.0f ms] %@", v35, v31, v36];

  v38 = _gICOSLog;
  if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
  {
    v39 = v32;
    v40 = v38;
    v41 = [v32 UTF8String];
    *buf = 136446466;
    v55 = v41;
    v56 = 2114;
    v57 = v37;
    _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
  }

  _gLastBenchmarkElapsedMilliseconds = LODWORD(v31);
}

- (BOOL)hasValidInformation:(id)a3
{
  v3 = a3;
  v4 = [v3 caseInsensitiveCompare:@"wav"] && objc_msgSend(v3, "caseInsensitiveCompare:", @"aif") && objc_msgSend(v3, "caseInsensitiveCompare:", @"3fr") && objc_msgSend(v3, "caseInsensitiveCompare:", @"erf") && objc_msgSend(v3, "caseInsensitiveCompare:", @"iiq") && objc_msgSend(v3, "caseInsensitiveCompare:", @"raw") && objc_msgSend(v3, "caseInsensitiveCompare:", @"tif") && objc_msgSend(v3, "caseInsensitiveCompare:", @"fff") && objc_msgSend(v3, "caseInsensitiveCompare:", @"dng");

  return v4;
}

- (void)thumbnailDataWithOptions:(id)a3 reply:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(MSCameraItem *)self device];
  [v8 holdPowerAssertion];

  v9 = [v7 objectForKeyedSubscript:@"kCGImageSourceThumbnailMaxPixelSize"];

  v10 = +[NSMutableDictionary dictionary];
  [(MSCameraFile *)self updateBasicMetadata];
  v11 = [(MSCameraItem *)self metadata];

  if (!v11)
  {
    v12 = [(MSCameraFile *)self metadataDict];
    v13 = [v12 mutableCopy];

    if (v13)
    {
      [(MSCameraItem *)self setMetadata:v13];
    }
  }

  v14 = [(MSCameraItem *)self metadata];

  if (v14)
  {
    v15 = [(MSCameraItem *)self metadata];
    [v10 setObject:v15 forKeyedSubscript:@"metadata"];
  }

  if ([(MSCameraFile *)self imageOrientation])
  {
    v16 = [NSNumber numberWithInt:[(MSCameraFile *)self imageOrientation]];
    if (v16)
    {
      v17 = v16;
      v18 = [(MSCameraItem *)self metadata];
      v19 = [v18 objectForKeyedSubscript:kCGImagePropertyOrientation];

      if (v19)
      {
        [v10 setObject:v19 forKeyedSubscript:kCGImagePropertyOrientation];
      }
    }
  }

  v22 = 0;
  v20 = -[MSCameraFile thumbnailDataForMaxPixelSize:rotated:](self, "thumbnailDataForMaxPixelSize:rotated:", [v9 unsignedIntegerValue], &v22);
  if (v20)
  {
    [v10 setObject:v20 forKeyedSubscript:@"thumb"];
  }

  if (v22 == 1)
  {
    [v10 setObject:&__kCFBooleanTrue forKeyedSubscript:@"ICThumbnailRotated"];
  }

  v6[2](v6, v10);
  v21 = [(MSCameraItem *)self device];
  [v21 releasePowerAssertion];
}

- (void)readDataWithOptions:(id)a3 reply:(id)a4
{
  v6 = a3;
  v54 = a4;
  v7 = [(MSCameraItem *)self device];
  [v7 holdPowerAssertion];

  v8 = +[NSMutableDictionary dictionary];
  v9 = [(MSCameraItem *)self size];
  v10 = [v6 objectForKeyedSubscript:@"ICReadOffset"];
  if (v10)
  {
    v11 = [v6 objectForKeyedSubscript:@"ICReadOffset"];
    v12 = [v11 unsignedLongLongValue];
  }

  else
  {
    v12 = 0;
  }

  v13 = [v6 objectForKeyedSubscript:@"ICReadLength"];
  if (v13)
  {
    v14 = [v6 objectForKeyedSubscript:@"ICReadLength"];
    v15 = [v14 unsignedLongLongValue];
  }

  else
  {
    v15 = [(MSCameraItem *)self size];
  }

  v16 = [v6 objectForKeyedSubscript:@"ICReadBufferStreamOpen"];
  if (v16)
  {
    v17 = [v6 objectForKeyedSubscript:@"ICReadBufferStreamOpen"];
    v18 = [v17 BOOLValue] ^ 1;
  }

  else
  {
    v18 = 1;
  }

  v19 = [v6 objectForKeyedSubscript:@"ICReadBufferStreamClose"];
  if (!v19)
  {
    if (v18)
    {
      goto LABEL_15;
    }

    v32 = 1;
LABEL_39:
    __ICOSLogCreate();
    v33 = [(MSCameraItem *)self name];
    if ([v33 length] >= 0x15)
    {
      v34 = [v33 substringWithRange:{0, 18}];
      v35 = [v34 stringByAppendingString:@".."];

      v33 = v35;
    }

    v36 = [NSString stringWithFormat:@"ICReadBufferStreamOpen: %llu", [(MSCameraItem *)self size]];
    v37 = _gICOSLog;
    if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
    {
      v38 = v33;
      v39 = v37;
      *buf = 136446466;
      *&buf[4] = [v33 UTF8String];
      v56 = 2114;
      v57 = v36;
      _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
    }

    [(MSCameraFile *)self openStream];
    [(MSCameraFile *)self createBufferCache];
    if (v32)
    {
      goto LABEL_49;
    }

    goto LABEL_44;
  }

  v20 = v19;
  v21 = [v6 objectForKeyedSubscript:@"ICReadBufferStreamClose"];
  v22 = [v21 BOOLValue];

  if ((v18 & 1) == 0)
  {
    v32 = v22 ^ 1;
    goto LABEL_39;
  }

  if (v22)
  {
LABEL_44:
    __ICOSLogCreate();
    v40 = [(MSCameraItem *)self name];
    if ([v40 length] >= 0x15)
    {
      v41 = [v40 substringWithRange:{0, 18}];
      v42 = [v41 stringByAppendingString:@".."];

      v40 = v42;
    }

    v43 = [NSString stringWithFormat:@"ICReadBufferStreamClose: %llu", [(MSCameraItem *)self size]];
    v44 = _gICOSLog;
    if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
    {
      v45 = v40;
      v46 = v44;
      v47 = [v40 UTF8String];
      *buf = 136446466;
      *&buf[4] = v47;
      v56 = 2114;
      v57 = v43;
      _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
    }

    [(MSCameraFile *)self closeStream];
    [(MSCameraFile *)self destroyBufferCache];
LABEL_49:
    v27 = 0;
    goto LABEL_50;
  }

LABEL_15:
  v25 = v12 <= v9 && v12 >= 0 && v15 >= 1 && v12 + v15 <= v9;
  v26 = -21449;
  if (v25)
  {
    v26 = 0;
  }

  if (v15 <= 52428800)
  {
    v27 = v26;
  }

  else
  {
    v27 = -21446;
  }

  *buf = 0;
  if (v15 && !v27 && [(MSCameraFile *)self openStream])
  {
    v28 = [(MSCameraFile *)self bufferCache];

    if (v28)
    {
      v29 = [(MSCameraFile *)self bufferCache];
      v30 = [v29 consumeBufferAtOffset:v12 sized:buf];

      v31 = *buf;
      if (*buf > 0x200000uLL)
      {
        v31 = 0;
        *buf = 0;
      }
    }

    else
    {
      v30 = mmap(0, v15, 3, 4097, -1, 0);
      v31 = [(MSCameraFile *)self readStream:v30 size:v15 offset:v12];
      *buf = v31;
    }

    v49 = dispatch_data_create(v30, v31, 0, _dispatch_data_destructor_munmap);
    v53 = [(MSCameraFile *)self bufferCache];
    [v53 setConsumedOffset:v12];

    [(MSCameraFile *)self closeStream];
    [v8 addEntriesFromDictionary:v6];
    if (v49)
    {
      [v8 setObject:v49 forKeyedSubscript:@"ICReadData"];
      v27 = 0;
      goto LABEL_51;
    }

    goto LABEL_49;
  }

  [v8 addEntriesFromDictionary:v6];
LABEL_50:
  v48 = +[NSData data];
  [v8 setObject:v48 forKeyedSubscript:@"ICReadData"];

  v49 = 0;
LABEL_51:
  [v8 setObject:&off_1000269A0 forKeyedSubscript:@"ICBufferOffset"];
  v50 = [NSNumber numberWithUnsignedInteger:[v49 length]];
  [v8 setObject:v50 forKeyedSubscript:@"ICBytesRead"];

  v51 = [NSNumber numberWithInteger:v27];
  [v8 setObject:v51 forKeyedSubscript:@"errCode"];

  v54[2](v54, v8);
  v52 = [(MSCameraItem *)self device];
  [v52 releasePowerAssertion];
}

- (void)metadataWithOptions:(id)a3 reply:(id)a4
{
  v5 = a4;
  v6 = [(MSCameraItem *)self device];
  [v6 holdPowerAssertion];

  [(MSCameraFile *)self updateBasicMetadata];
  v7 = [(MSCameraItem *)self metadata];

  if (!v7)
  {
    v8 = [(MSCameraFile *)self metadataDict];
    v9 = [v8 mutableCopy];

    if (v9)
    {
      [(MSCameraItem *)self setMetadata:v9];
    }
  }

  v10 = [(MSCameraItem *)self metadata];
  v5[2](v5, v10);

  v11 = [(MSCameraItem *)self device];
  [v11 releasePowerAssertion];
}

- (void)updateBasicMetadata
{
  if (![(MSCameraFile *)self updatedBasicMetadata])
  {
    v3 = [(MSCameraItem *)self name];
    v4 = [v3 pathExtension];
    v12 = [v4 lowercaseString];

    if ([(MSCameraItem *)self type]== 1768776039)
    {
      if ([(MSCameraFile *)self rawImageSupported])
      {
        [(MSCameraFile *)self setHasThumbnail:1];
        [(MSCameraFile *)self setUpdatedBasicMetadata:1];
      }

      else if (([v12 isEqualToString:@"jpg"] & 1) != 0 || (objc_msgSend(v12, "isEqualToString:", @"heic") & 1) != 0 || objc_msgSend(v12, "isEqualToString:", @"jpeg"))
      {
        v8 = [(MSCameraItem *)self path];
        [v8 UTF8String];
        v9 = CGCopyBasicPropertiesOfImageAtPath();

        if (v9 && [v9 count] >= 3)
        {
          [(MSCameraFile *)self setSizeAndOrientationFromImageProperties:v9];
          [(MSCameraFile *)self setHasThumbnail:[(MSCameraFile *)self thumbSize]!= 0];
        }

        else
        {
          v10 = [(MSCameraFile *)self metadataDict];
        }
      }

      else
      {
        v11 = [(MSCameraFile *)self metadataDict];
        [(MSCameraFile *)self setHasThumbnail:1];
      }
    }

    else if ([(MSCameraItem *)self type]== 1836019574)
    {
      v5 = [(MSCameraFile *)self metadataDict];
      v6 = [(MSCameraItem *)self metadata];
      v7 = [v6 mutableCopy];

      [(MSCameraFile *)self setSizeAndOrientationFromImageProperties:v7];
      [(MSCameraItem *)self setMetadata:v7];
      [(MSCameraFile *)self setHasThumbnail:1];
    }

    [(MSCameraFile *)self setUpdatedBasicMetadata:1];
  }
}

- (BOOL)imageIOSupported
{
  if (imageIOSupported_onceToken != -1)
  {
    [MSCameraFile imageIOSupported];
  }

  v3 = [(MSCameraItem *)self name];
  v4 = [v3 pathExtension];
  v5 = [v4 lowercaseString];

  LOBYTE(v3) = [_gPTPImageIOSupportedFileExtensions containsObject:v5];
  return v3;
}

void __32__MSCameraFile_imageIOSupported__block_invoke(id a1)
{
  v3 = CGImageSourceCopyTypeExtensions();
  v1 = [[NSSet alloc] initWithArray:v3];
  v2 = _gPTPImageIOSupportedFileExtensions;
  _gPTPImageIOSupportedFileExtensions = v1;
}

- (BOOL)rawImageSupported
{
  if (rawImageSupported_onceToken != -1)
  {
    [MSCameraFile rawImageSupported];
  }

  v3 = [(MSCameraItem *)self name];
  v4 = [v3 pathExtension];
  v5 = [v4 lowercaseString];

  if ([(MSCameraFile *)self hasValidInformation:v5])
  {
    v6 = [_gPTPKnownRawExtensions containsObject:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

void __33__MSCameraFile_rawImageSupported__block_invoke(id a1)
{
  v3 = CGImageSourceCopyTypeExtensions();
  v1 = [[NSMutableSet alloc] initWithArray:v3];
  v2 = _gPTPKnownRawExtensions;
  _gPTPKnownRawExtensions = v1;

  [_gPTPKnownRawExtensions removeObject:@"tif"];
}

- (void)setSizeAndOrientationFromImageProperties:(id)a3
{
  v13 = 0;
  v14 = 0;
  v12 = 0;
  ICGetDimensionsFromImageProperties(a3, &v14, &v13, &v12);
  v10 = v14;
  v4 = v13;
  v5 = v12;
  -[MSCameraFile setImageOrientation:](self, "setImageOrientation:", [v10 intValue]);
  v6 = [(MSCameraFile *)self imageOrientation];
  v7 = v6 <= 4;
  if (v6 <= 4)
  {
    v8 = v4;
  }

  else
  {
    v8 = v5;
  }

  if (v7)
  {
    v9 = v5;
  }

  else
  {
    v9 = v4;
  }

  -[MSCameraFile setImageWidth:](self, "setImageWidth:", [v8 intValue]);
  -[MSCameraFile setImageHeight:](self, "setImageHeight:", [v9 intValue]);
}

- (BOOL)processMetadata:(id)a3
{
  v4 = a3;
  if ([(MSCameraFile *)self updatedExpensiveMetadata])
  {
    v5 = 1;
    goto LABEL_57;
  }

  v6 = [v4 mutableCopy];
  v5 = v4 != 0;
  if (!v4)
  {
    __ICOSLogCreate();
    v12 = [(MSCameraItem *)self name];
    if ([v12 length] >= 0x15)
    {
      v18 = [v12 substringWithRange:{0, 18}];
      v19 = [v18 stringByAppendingString:@".."];

      v12 = v19;
    }

    v13 = [NSString stringWithFormat:@"Missing Metadata"];
    v20 = _gICOSLog;
    if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
    {
      v21 = v12;
      v22 = v20;
      *buf = 136446466;
      v48 = [v12 UTF8String];
      v49 = 2114;
      v50 = v13;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
    }

    goto LABEL_54;
  }

  [(MSCameraFile *)self setSizeAndOrientationFromImageProperties:v4];
  v7 = [NSNumber numberWithInt:[(MSCameraFile *)self imageHeight]];
  [v6 setObject:v7 forKeyedSubscript:kCGImagePropertyPixelHeight];

  v8 = [NSNumber numberWithInt:[(MSCameraFile *)self imageWidth]];
  [v6 setObject:v8 forKeyedSubscript:kCGImagePropertyPixelWidth];

  v9 = [NSNumber numberWithInt:[(MSCameraFile *)self imageOrientation]];
  [v6 setObject:v9 forKeyedSubscript:kCGImagePropertyOrientation];

  v10 = [v6 objectForKeyedSubscript:kCGImagePropertyExifPixelXDimension];

  if (v10)
  {
    [v6 removeObjectForKey:kCGImagePropertyExifPixelXDimension];
  }

  v11 = [v6 objectForKeyedSubscript:kCGImagePropertyExifPixelYDimension];

  if (v11)
  {
    [v6 removeObjectForKey:kCGImagePropertyExifPixelYDimension];
  }

  v12 = [v4 objectForKeyedSubscript:kCGImagePropertyExifDictionary];
  v13 = [v4 objectForKeyedSubscript:kCGImagePropertyTIFFDictionary];
  if (v12)
  {
    v14 = [v12 objectForKeyedSubscript:kCGImagePropertyExifDateTimeOriginal];
    if (v14)
    {
      v15 = v14;
LABEL_21:
      [(MSCameraItem *)self setExifCreationDateTime:v15];
LABEL_22:
      v23 = [v12 objectForKeyedSubscript:kCGImagePropertyExifDateTimeDigitized];

      if (v23)
      {
        [(MSCameraItem *)self setExifModificationDateTime:v23];
        goto LABEL_32;
      }

      goto LABEL_24;
    }
  }

  if (v13)
  {
    v16 = kCGImagePropertyTIFFDateTime;
    v17 = [v13 objectForKeyedSubscript:kCGImagePropertyTIFFDateTime];
    if (v17)
    {
      v15 = v17;
      [(MSCameraItem *)self setExifCreationDateTime:v17];
      if (!v12)
      {
        goto LABEL_26;
      }

      goto LABEL_22;
    }
  }

  if (v12)
  {
    v15 = [v12 objectForKeyedSubscript:kCGImagePropertyTIFFDateTime];
    if (!v15)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

LABEL_24:
  if (!v13)
  {
    goto LABEL_29;
  }

  v15 = 0;
  v16 = kCGImagePropertyTIFFDateTime;
LABEL_26:
  v23 = [v13 objectForKeyedSubscript:v16];

  if (v23)
  {
    [(MSCameraItem *)self setExifModificationDateTime:v23];
    if (!v12)
    {
      goto LABEL_45;
    }

    goto LABEL_32;
  }

LABEL_29:
  if (!v12)
  {
    v23 = 0;
    goto LABEL_45;
  }

  v23 = [v12 objectForKeyedSubscript:kCGImagePropertyTIFFDateTime];
  if (v23)
  {
    [(MSCameraItem *)self setExifCreationDateTime:v23];
  }

LABEL_32:
  v24 = [v12 objectForKeyedSubscript:@"ThumbnailOffset"];
  v25 = [v24 intValue];
  if (v25)
  {
    v26 = v25;
    v27 = [v12 objectForKeyedSubscript:@"ThumbnailSize"];
    v28 = [v27 intValue];

    if (v28)
    {
      goto LABEL_38;
    }
  }

  else
  {
  }

  v29 = [v12 objectForKeyedSubscript:@"JPEGOffset"];
  v30 = [v29 intValue];
  if (!v30)
  {
LABEL_43:

    goto LABEL_45;
  }

  v26 = v30;
  v31 = [v12 objectForKeyedSubscript:@"JPEGLength"];
  v28 = [v31 intValue];

  if (v28)
  {
LABEL_38:
    [(MSCameraFile *)self setThumbOffset:v26];
    [(MSCameraFile *)self setThumbSize:v28];
    v32 = [v12 objectForKeyedSubscript:@"ThumbnailWidth"];
    if (!v32)
    {
      goto LABEL_45;
    }

    v33 = v32;
    v34 = [v12 objectForKeyedSubscript:@"ThumbnailHeight"];

    if (!v34)
    {
      goto LABEL_45;
    }

    v29 = +[NSMutableDictionary dictionary];
    v35 = [NSNumber numberWithInt:v26];
    [v29 setObject:v35 forKeyedSubscript:@"JPEGOffset"];

    v36 = [NSNumber numberWithInt:v28];
    [v29 setObject:v36 forKeyedSubscript:@"JPEGLength"];

    v37 = [v12 objectForKeyedSubscript:@"ThumbnailWidth"];
    [v29 setObject:v37 forKeyedSubscript:@"ImageWidth"];

    v38 = [v12 objectForKeyedSubscript:@"ThumbnailHeight"];
    [v29 setObject:v38 forKeyedSubscript:@"ImageHeight"];

    v46 = 0;
    v39 = [(MSCameraFile *)self rawImageValidateSubImage:v29 error:&v46];
    if (v39)
    {
      [(MSCameraFile *)self addSubImageDict:v39];
    }

    goto LABEL_43;
  }

LABEL_45:
  v40 = [(MSCameraItem *)self exifModificationDateTime];
  v41 = v40;
  if (v40)
  {
    v42 = ICStandardDateFromString(v40);
    if (v42)
    {
      [(MSCameraItem *)self setExifModificationDate:v42];
    }
  }

  else
  {
    v42 = 0;
  }

  v43 = [(MSCameraItem *)self exifCreationDateTime];

  if (v43)
  {
    v44 = ICStandardDateFromString(v43);

    if (v44)
    {
      [(MSCameraItem *)self setExifCreationDate:v44];
      v42 = v44;
    }

    else
    {
      v42 = 0;
    }
  }

  [(MSCameraItem *)self setMetadata:v6];
  [(MSCameraFile *)self setUpdatedExpensiveMetadata:1];

  v5 = v4 != 0;
LABEL_54:

  if (![(MSCameraFile *)self updatedExpensiveMetadata])
  {
    [(MSCameraFile *)self setHasMetadata:0];
    [(MSCameraFile *)self setUpdatedExpensiveMetadata:1];
  }

LABEL_57:
  return v5;
}

- (id)rawImageValidateSubImage:(id)a3 error:(id *)a4
{
  v6 = a3;
  if (!v6)
  {
    v15 = 0;
    goto LABEL_27;
  }

  v7 = [NSMutableDictionary dictionaryWithDictionary:v6];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 objectForKeyedSubscript:@"ImageWidth"];
    v10 = [v9 intValue];

    if (!v10)
    {
      v11 = [v8 objectForKeyedSubscript:@"Width"];
      v10 = [v11 intValue];

      if (v10)
      {
        v12 = [v8 objectForKeyedSubscript:@"Width"];
        [v8 setObject:v12 forKeyedSubscript:@"ImageWidth"];
      }
    }

    v13 = [v8 objectForKeyedSubscript:@"ImageHeight"];
    v14 = [v13 intValue];

    if (v14)
    {
      if (!v10)
      {
LABEL_16:
        if (a4)
        {
          [NSError errorWithDomain:@"com.apple.imagecapture" code:-2 userInfo:0];
          *a4 = v15 = 0;
        }

        else
        {
          v15 = 0;
        }

        goto LABEL_26;
      }
    }

    else
    {
      v16 = [v8 objectForKeyedSubscript:@"Height"];
      v17 = [v16 intValue];

      if (!v17)
      {
        goto LABEL_16;
      }

      v18 = [v8 objectForKeyedSubscript:@"Height"];
      [v8 setObject:v18 forKeyedSubscript:@"ImageHeight"];

      if (!v10)
      {
        goto LABEL_16;
      }
    }

    v19 = [v6 objectForKeyedSubscript:@"JPEGLength"];
    v20 = [v19 intValue];

    v21 = [v6 objectForKeyedSubscript:@"JPEGOffset"];
    v22 = [v21 intValue];

    if (v20 && v22)
    {
      if (v10 == 160)
      {
        [(MSCameraFile *)self setThumbOffset:v22];
        [(MSCameraFile *)self setThumbSize:v20];
        [(MSCameraFile *)self setSmallThumbnail:1];
        [v8 setObject:@"smallThumbnail" forKeyedSubscript:@"imageType"];
      }

      else if (v10 < 1400)
      {
        if (v10 <= 1024)
        {
          [v8 setObject:@"ptpSubThumbnailImage" forKeyedSubscript:@"imageType"];
          [(MSCameraFile *)self setSmallThumbnail:1];
        }
      }

      else
      {
        [v8 setObject:@"previewImage" forKeyedSubscript:@"imageType"];
        [(MSCameraFile *)self setPreviewThumbnail:1];
      }
    }

    else if (a4)
    {
      *a4 = [NSError errorWithDomain:@"com.apple.imagecapture" code:-4 userInfo:0];
    }
  }

  v15 = v8;
LABEL_26:

LABEL_27:

  return v15;
}

- (void)addSubImageDict:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"ImageWidth"];
  if (v5)
  {
    v6 = v5;
    subImages = self->_subImages;
    v8 = [v4 objectForKeyedSubscript:@"ImageWidth"];
    v9 = [(NSMutableDictionary *)subImages objectForKeyedSubscript:v8];

    if (!v9)
    {
      v10 = self->_subImages;
      v11 = [v4 objectForKeyedSubscript:@"ImageWidth"];
      [(NSMutableDictionary *)v10 setObject:v4 forKeyedSubscript:v11];

      __ICOSLogCreate();
      v12 = [(MSCameraItem *)self name];
      if ([v12 length] >= 0x15)
      {
        v13 = [v12 substringWithRange:{0, 18}];
        v14 = [v13 stringByAppendingString:@".."];

        v12 = v14;
      }

      v15 = [v4 objectForKeyedSubscript:@"ImageWidth"];
      v16 = [v15 intValue];
      v17 = [v4 objectForKeyedSubscript:@"ImageHeight"];
      v18 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"[subImage] %10s: [%7d x %9d]", "adding", v16, [v17 intValue]);

      v19 = _gICOSLog;
      if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
      {
        v20 = v12;
        v21 = v19;
        *buf = 136446466;
        v23 = [v12 UTF8String];
        v24 = 2114;
        v25 = v18;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
      }
    }
  }
}

- (id)subImageDictForPixelWidth:(id)a3
{
  v4 = a3;
  __ICOSLogCreate();
  v5 = [(MSCameraItem *)self name];
  if ([v5 length] >= 0x15)
  {
    v6 = [v5 substringWithRange:{0, 18}];
    v7 = [v6 stringByAppendingString:@".."];

    v5 = v7;
  }

  v8 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"[subImage] %10s: [%7d]", "searching", [v4 intValue]);
  v9 = _gICOSLog;
  if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
  {
    v10 = v5;
    v11 = v9;
    *buf = 136446466;
    v47 = [v5 UTF8String];
    v48 = 2114;
    v49 = v8;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
  }

  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v12 = [(NSMutableDictionary *)self->_subImages allKeys];
  v13 = [v12 sortedArrayUsingSelector:"compare:"];

  v14 = [v13 countByEnumeratingWithState:&v41 objects:v45 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v42;
LABEL_7:
    v17 = 0;
    while (1)
    {
      if (*v42 != v16)
      {
        objc_enumerationMutation(v13);
      }

      v18 = *(*(&v41 + 1) + 8 * v17);
      v19 = [v4 intValue];
      if (v19 <= [v18 intValue])
      {
        break;
      }

      if (v15 == ++v17)
      {
        v15 = [v13 countByEnumeratingWithState:&v41 objects:v45 count:16];
        if (v15)
        {
          goto LABEL_7;
        }

        goto LABEL_13;
      }
    }

    v20 = [(NSMutableDictionary *)self->_subImages objectForKeyedSubscript:v18];
    __ICOSLogCreate();
    v21 = [(MSCameraItem *)self name];
    if ([v21 length] >= 0x15)
    {
      v22 = [v21 substringWithRange:{0, 18}];
      v23 = [v22 stringByAppendingString:@".."];

      v21 = v23;
    }

    v24 = [v20 objectForKeyedSubscript:@"ImageWidth"];
    v25 = [v24 intValue];
    v26 = [v20 objectForKeyedSubscript:@"ImageHeight"];
    v27 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"[subImage] %10s: [%7d x %9d]", "found", v25, [v26 intValue]);

    v28 = _gICOSLog;
    if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
    {
      v29 = v21;
      v30 = v28;
      v31 = [v21 UTF8String];
      *buf = 136446466;
      v47 = v31;
      v48 = 2114;
      v49 = v27;
      _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
    }

    if (v20)
    {
      goto LABEL_24;
    }
  }

  else
  {
LABEL_13:
  }

  __ICOSLogCreate();
  v32 = [(MSCameraItem *)self name];
  if ([v32 length] >= 0x15)
  {
    v33 = [v32 substringWithRange:{0, 18}];
    v34 = [v33 stringByAppendingString:@".."];

    v32 = v34;
  }

  v35 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"[subImage] %10s: [%7d]", "none", [v4 intValue]);
  v36 = _gICOSLog;
  if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
  {
    v37 = v32;
    v38 = v36;
    v39 = [v32 UTF8String];
    *buf = 136446466;
    v47 = v39;
    v48 = 2114;
    v49 = v35;
    _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
  }

  v20 = 0;
LABEL_24:

  return v20;
}

- (NSMutableDictionary)metadataDict
{
  v3 = [(MSCameraItem *)self metadata];
  if (v3 || ![(MSCameraFile *)self hasMetadata])
  {

    goto LABEL_8;
  }

  if ([(MSCameraFile *)self updatedExpensiveMetadata])
  {
LABEL_8:
    v15 = [(MSCameraItem *)self metadata];
    goto LABEL_9;
  }

  v4 = [NSMutableDictionary dictionaryWithCapacity:0];
  if ([(MSCameraItem *)self type]== 1768776039)
  {
    v5 = [(MSCameraItem *)self name];
    v6 = [v5 pathExtension];
    TypeWithExtension = CGImageSourceGetTypeWithExtension();

    v41[0] = kCGImageSourceShouldCache;
    v41[1] = kCGImageSourceTypeIdentifierHint;
    v42[0] = &__kCFBooleanFalse;
    v42[1] = TypeWithExtension;
    v8 = [NSDictionary dictionaryWithObjects:v42 forKeys:v41 count:2];
    v9 = [(MSCameraItem *)self path];
    v10 = [NSURL fileURLWithPath:v9];

    v11 = CGImageSourceCreateWithURL(v10, 0);
    *info = 0;
    mach_timebase_info(info);
    _gBenchmarkStartMachTime = 0;
    *&_gBenchmarkStartMachTime = mach_absolute_time();
    v12 = CGImageSourceCopyPropertiesAtIndex(v11, 0, v8);
    if (v12)
    {
      v13 = v12;
      v14 = [(MSCameraFile *)self processMetadata:v12];
      CFRelease(v13);
    }

    else
    {
      v14 = 0;
    }

    if (v11)
    {
      CFRelease(v11);
    }

    if ((v14 & 1) == 0)
    {
      [(MSCameraFile *)self setHasMetadata:0];
      goto LABEL_26;
    }

    v20 = [(MSCameraItem *)self metadata];
    [v4 addEntriesFromDictionary:v20];
LABEL_24:

LABEL_26:
    goto LABEL_27;
  }

  if ([(MSCameraItem *)self type]== 1836019574)
  {
    v8 = dispatch_semaphore_create(0);
    v10 = objc_alloc_init(NSMutableArray);
    v17 = [AVURLAsset alloc];
    v18 = [(MSCameraItem *)self path];
    v19 = [NSURL fileURLWithPath:v18];
    v20 = [v17 initWithURL:v19 options:0];

    if ([(MSCameraFile *)self fullMetadata])
    {
      [(__CFURL *)v10 addObject:@"duration"];
    }

    [(__CFURL *)v10 addObject:@"tracks"];
    v21 = [(MSCameraItem *)self metadata];
    v22 = [v21 objectForKeyedSubscript:kCGImagePropertyOrientation];

    if (!v22)
    {
      v23 = [v20 videoOrientation];
      [(MSCameraFile *)self setImageOrientation:v23];
      v24 = [NSNumber numberWithUnsignedInt:v23];
      [v4 setObject:v24 forKeyedSubscript:kCGImagePropertyOrientation];
    }

    if (v20)
    {
      v34[0] = _NSConcreteStackBlock;
      v34[1] = 3221225472;
      v34[2] = __28__MSCameraFile_metadataDict__block_invoke;
      v34[3] = &unk_1000248F0;
      v34[4] = self;
      v35 = v20;
      v36 = v4;
      v25 = v8;
      v37 = v25;
      [v35 loadValuesAsynchronouslyForKeys:v10 completionHandler:v34];
      dispatch_semaphore_wait(v25, 0xFFFFFFFFFFFFFFFFLL);
    }

    goto LABEL_24;
  }

LABEL_27:
  [(MSCameraItem *)self setMetadata:v4];
  __ICOSLogCreate();
  if (__ICLogTypeEnabled())
  {
    v26 = [(MSCameraItem *)self name];
    if ([v26 length] >= 0x15)
    {
      v27 = [v26 substringWithRange:{0, 18}];
      v28 = [v27 stringByAppendingString:@".."];

      v26 = v28;
    }

    v29 = [NSString stringWithFormat:@"AVAsset: metadata: %@", v4];
    v30 = _gICOSLog;
    if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
    {
      v31 = v26;
      v32 = v30;
      v33 = [v26 UTF8String];
      *info = 136446466;
      *&info[4] = v33;
      v39 = 2114;
      v40 = v29;
      _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", info, 0x16u);
    }
  }

  v15 = [(MSCameraItem *)self metadata];

LABEL_9:

  return v15;
}

void __28__MSCameraFile_metadataDict__block_invoke(id *a1)
{
  if ([a1[4] fullMetadata])
  {
    v2 = a1[5];
    v67 = 0;
    v3 = [v2 statusOfValueForKey:@"duration" error:&v67];
    v4 = v67;
    if (v3 == 2)
    {
      memset(&buf, 0, sizeof(buf));
      v5 = a1[5];
      if (v5)
      {
        [v5 duration];
      }

      time = buf;
      Seconds = CMTimeGetSeconds(&time);
      *&Seconds = Seconds;
      v7 = [NSNumber numberWithFloat:Seconds];
      [a1[6] setObject:v7 forKeyedSubscript:@"VideoDuration"];

      time = buf;
      v8 = CMTimeGetSeconds(&time);
      *&v8 = v8;
      v9 = [NSNumber numberWithFloat:v8];
      [a1[6] setObject:v9 forKeyedSubscript:@"Duration"];
    }

    else
    {
      __ICOSLogCreate();
      v9 = [a1[4] name];
      if ([v9 length] >= 0x15)
      {
        v10 = [v9 substringWithRange:{0, 18}];
        v11 = [v10 stringByAppendingString:@".."];

        v9 = v11;
      }

      v12 = [NSString stringWithFormat:@"AVAsset: loadValuesAsynchronously failed to return the duration"];
      v13 = _gICOSLog;
      if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
      {
        v14 = v9;
        v15 = v13;
        v16 = [v9 UTF8String];
        LODWORD(buf.value) = 136446466;
        *(&buf.value + 4) = v16;
        LOWORD(buf.flags) = 2114;
        *(&buf.flags + 2) = v12;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", &buf, 0x16u);
      }
    }
  }

  else
  {
    v4 = 0;
  }

  v17 = objc_alloc_init(NSMutableDictionary);
  v60 = objc_alloc_init(NSMutableDictionary);
  v18 = a1[5];
  v65 = v4;
  v57 = [v18 statusOfValueForKey:@"tracks" error:&v65];
  v58 = v65;

  v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  v62 = 0u;
  v59 = a1;
  v19 = [a1[5] commonMetadata];
  v20 = [v19 countByEnumeratingWithState:&v61 objects:v68 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v62;
    do
    {
      v23 = 0;
      do
      {
        if (*v62 != v22)
        {
          objc_enumerationMutation(v19);
        }

        v24 = *(*(&v61 + 1) + 8 * v23);
        v25 = [v24 commonKey];
        v26 = [v25 isEqualToString:@"model"];

        if (v26)
        {
          v27 = [v24 stringValue];
          v28 = v17;
          v29 = v27;
          v30 = @"Model";
          goto LABEL_26;
        }

        v31 = [v24 commonKey];
        v32 = [v31 isEqualToString:@"software"];

        if (v32)
        {
          v27 = [v24 stringValue];
          v28 = v17;
          v29 = v27;
          v30 = @"Software";
          goto LABEL_26;
        }

        v33 = [v24 commonKey];
        v34 = [v33 isEqualToString:@"make"];

        if (v34)
        {
          v27 = [v24 stringValue];
          v28 = v17;
          v29 = v27;
          v30 = @"Make";
          goto LABEL_26;
        }

        v35 = [v24 commonKey];
        v36 = [v35 isEqualToString:@"identifier"];

        if (v36)
        {
          v27 = [v24 stringValue];
          v28 = v60;
          v29 = v27;
          v30 = @"17";
          goto LABEL_26;
        }

        v37 = [v24 commonKey];
        v38 = [v37 isEqualToString:@"creationDate"];

        if (v38)
        {
          v39 = [v24 stringValue];
          [v17 setObject:v39 forKeyedSubscript:kCGImagePropertyTIFFDateTime];

          v27 = objc_alloc_init(NSDateFormatter);
          [v27 setDateFormat:@"yyyy-MM-dd'T'HH:mm:ssZ"];
          v40 = [v24 stringValue];
          v41 = [v27 dateFromString:v40];

          if (v41)
          {
            [v41 timeIntervalSince1970];
            [v59[4] setCaptureDate:v42];
          }

          goto LABEL_27;
        }

        v43 = [v24 commonKey];
        v44 = [v43 isEqualToString:@"location"];

        if (v44)
        {
          v27 = [v24 stringValue];
          v28 = v59[6];
          v29 = v27;
          v30 = @"GPSString";
LABEL_26:
          [v28 setObject:v29 forKeyedSubscript:v30];
LABEL_27:
        }

        v23 = v23 + 1;
      }

      while (v21 != v23);
      v45 = [v19 countByEnumeratingWithState:&v61 objects:v68 count:16];
      v21 = v45;
    }

    while (v45);
  }

  [v59[6] setObject:v17 forKeyedSubscript:@"{TIFF}"];
  [v59[6] setObject:v60 forKeyedSubscript:@"{MakerApple}"];
  if (v57 != 2)
  {
    __ICOSLogCreate();
    v49 = [v59[4] name];
    if ([v49 length] >= 0x15)
    {
      v50 = [v49 substringWithRange:{0, 18}];
      v51 = [v50 stringByAppendingString:@".."];

      v49 = v51;
    }

    v52 = [NSString stringWithFormat:@"AVAsset: could not be loaded"];
    v53 = _gICOSLog;
    if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
    {
      v54 = v49;
      v55 = v53;
      v56 = [v49 UTF8String];
      LODWORD(buf.value) = 136446466;
      *(&buf.value + 4) = v56;
      LOWORD(buf.flags) = 2114;
      *(&buf.flags + 2) = v52;
      _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", &buf, 0x16u);
    }

    goto LABEL_47;
  }

  buf.value = 0;
  time.value = 0;
  v46 = v59[5];
  v47 = [v59[4] name];
  LODWORD(v46) = [v46 decodableVideoNamed:v47 width:&time height:&buf];

  if (v46 && *&time.value != 0.0 && *&buf.value != 0.0)
  {
    v48 = [NSNumber numberWithInt:*&buf.value];
    [v59[6] setObject:v48 forKeyedSubscript:kCGImagePropertyPixelHeight];

    v49 = [NSNumber numberWithInt:*&time.value];
    [v59[6] setObject:v49 forKeyedSubscript:kCGImagePropertyPixelWidth];
LABEL_47:
  }

  dispatch_semaphore_signal(v59[7]);
}

- (int64_t)compare:(id)a3 against:(id)a4 withContext:(void *)a5
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 objHandle];
  if (v8 >= [v7 objHandle])
  {
    v10 = [v6 objHandle];
    v9 = v10 > [v7 objHandle];
  }

  else
  {
    v9 = -1;
  }

  return v9;
}

- (id)exifThumbOffsets
{
  if ([(MSCameraFile *)self thumbSize]&& [(MSCameraFile *)self thumbHeight]&& [(MSCameraFile *)self thumbOffset]&& [(MSCameraFile *)self thumbWidth])
  {
    v3 = +[NSMutableDictionary dictionary];
    v4 = [NSNumber numberWithUnsignedInt:[(MSCameraFile *)self thumbSize]];
    [v3 setObject:v4 forKeyedSubscript:@"ThumbnailSize"];

    v5 = [NSNumber numberWithUnsignedInt:[(MSCameraFile *)self thumbOffset]];
    [v3 setObject:v5 forKeyedSubscript:@"ThumbnailOffset"];

    v6 = [NSNumber numberWithUnsignedInt:[(MSCameraFile *)self thumbWidth]];
    [v3 setObject:v6 forKeyedSubscript:@"ThumbnailWidth"];

    v7 = [NSNumber numberWithUnsignedInt:[(MSCameraFile *)self thumbHeight]];
    [v3 setObject:v7 forKeyedSubscript:@"ThumbnailHeight"];
  }

  return 0;
}

- (id)movieThumbnailDataForMaxPixelSize:(unsigned int)a3
{
  v34 = 0;
  v35 = &v34;
  v36 = 0x2020000000;
  v37 = 0;
  v5 = [AVURLAsset alloc];
  v6 = [(MSCameraItem *)self path];
  v7 = [NSURL fileURLWithPath:v6];
  v8 = [v5 initWithURL:v7 options:0];

  if (v8)
  {
    v9 = dispatch_semaphore_create(0);
    v10 = [[AVAssetImageGenerator alloc] initWithAsset:v8];
    [v10 setMaximumSize:{a3, a3}];
    [v10 setAppliesPreferredTrackTransform:1];
    v29 = *&kCMTimeZero.value;
    epoch = kCMTimeZero.epoch;
    v11 = [NSValue valueWithCMTime:&v29];
    *&v29 = 0;
    *(&v29 + 1) = &v29;
    epoch = 0x3032000000;
    v31 = __Block_byref_object_copy__0;
    v32 = __Block_byref_object_dispose__0;
    v33 = 0;
    v21 = _NSConcreteStackBlock;
    v22 = 3221225472;
    v23 = __50__MSCameraFile_movieThumbnailDataForMaxPixelSize___block_invoke;
    v24 = &unk_100024958;
    v27 = &v34;
    v28 = &v29;
    v25 = self;
    v12 = v9;
    v26 = v12;
    v13 = objc_retainBlock(&v21);
    v14 = [v13 copy];
    v15 = *(*(&v29 + 1) + 40);
    *(*(&v29 + 1) + 40) = v14;

    v38 = v11;
    v16 = [NSArray arrayWithObjects:&v38 count:1];
    [v10 generateCGImagesAsynchronouslyForTimes:v16 completionHandler:*(*(&v29 + 1) + 40)];

    dispatch_semaphore_wait(v12, 0xFFFFFFFFFFFFFFFFLL);
    _Block_object_dispose(&v29, 8);
  }

  if (v35[3])
  {
    Mutable = CFDataCreateMutable(kCFAllocatorDefault, 0);
    v18 = [UTTypeJPEG identifier];
    v19 = CGImageDestinationCreateWithData(Mutable, v18, 1uLL, 0);

    if (v19)
    {
      CGImageDestinationAddImage(v19, v35[3], 0);
      if (!CGImageDestinationFinalize(v19))
      {

        Mutable = 0;
      }

      CFRelease(v19);
    }

    else
    {

      Mutable = 0;
    }

    CFRelease(v35[3]);
  }

  else
  {
    Mutable = 0;
  }

  _Block_object_dispose(&v34, 8);

  return Mutable;
}

intptr_t __50__MSCameraFile_movieThumbnailDataForMaxPixelSize___block_invoke(uint64_t a1, int a2, CGImageRef image, uint64_t a4, uint64_t a5)
{
  if (!image || a5)
  {
    __ICOSLogCreate();
    v6 = [*(a1 + 32) name];
    if ([v6 length] >= 0x15)
    {
      v7 = [v6 substringWithRange:{0, 18}];
      v8 = [v7 stringByAppendingString:@".."];

      v6 = v8;
    }

    v9 = [NSString stringWithFormat:@"AVAsset: failed to generate a preview thumbnail"];
    if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_ERROR))
    {
      [ICBufferCache initWithFile:];
    }
  }

  else
  {
    *(*(*(a1 + 48) + 8) + 24) = CGImageCreateCopy(image);
  }

  v10 = *(*(a1 + 56) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = 0;

  return dispatch_semaphore_signal(*(a1 + 40));
}

- (id)fingerprintWithError:(id *)a3
{
  v5 = [(MSCameraFile *)self fingerprint];

  if (!v5)
  {
    v6 = objc_alloc_init(ICCameraFileFingerprint);
    v7 = [(MSCameraItem *)self path];
    v8 = [NSURL URLWithString:v7];
    v9 = [v6 fingerprintForFileAtURL:v8 error:a3];
    [(MSCameraFile *)self setFingerprint:v9];
  }

  return [(MSCameraFile *)self fingerprint];
}

- (void)thumbnailDataUsingSidecarFiles
{
  v2 = 138543362;
  v3 = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "%{public}@", &v2, 0xCu);
}

@end