@interface ADVisualLoggerHandler
- (ADVisualLoggerHandler)initWithName:(id)a3;
- (int64_t)removeFileSettings;
- (int64_t)removeHostSettings;
- (int64_t)setHostName:(id)a3;
- (int64_t)setLogFolder:(id)a3;
- (void)dealloc;
- (void)logCalibration:(id)a3 name:(const char *)a4 timestamp:(double)a5;
- (void)logDictionary:(id)a3 name:(const char *)a4 timestamp:(double)a5;
- (void)logPixelBuffer:(__CVBuffer *)a3 name:(const char *)a4 timestamp:(double)a5;
- (void)logPointCloud:(id)a3 name:(const char *)a4 timestamp:(double)a5;
- (void)logRawBuffer:(void *)a3 size:(unint64_t)a4 name:(const char *)a5 timestamp:(double)a6;
- (void)logString:(id)a3 name:(const char *)a4 timestamp:(double)a5;
- (void)postDisable;
- (void)preEnable;
@end

@implementation ADVisualLoggerHandler

- (void)logDictionary:(id)a3 name:(const char *)a4 timestamp:(double)a5
{
  if (a3)
  {
    obj = self;
    objc_sync_enter(obj);
    objc_sync_exit(obj);
  }
}

- (void)logCalibration:(id)a3 name:(const char *)a4 timestamp:(double)a5
{
  v8 = a3;
  if (v8)
  {
    v10 = v8;
    v9 = [v8 dictionaryRepresentation];
    [(ADVisualLoggerHandler *)self logDictionary:v9 name:a4 timestamp:a5];

    v8 = v10;
  }
}

- (void)logRawBuffer:(void *)a3 size:(unint64_t)a4 name:(const char *)a5 timestamp:(double)a6
{
  v18 = *MEMORY[0x277D85DE8];
  if (a3 && a4)
  {
    v9 = self;
    objc_sync_enter(v9);
    VZDataInfoCreate();
    VZDataInfoSetTimestampMachContinuousNanoseconds();
    VZDataInfoSetName();
    v10 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:a3 length:a4 freeWhenDone:0];
    BlobWithCFData = VZDataCreateBlobWithCFData();
    if (BlobWithCFData)
    {
      v12 = [*&v9->_synchronousFileLogging stringByAppendingFormat:@".%s", a5];
      v13 = v12;
      [v12 UTF8String];
      VZLoggerLogData();
    }

    else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 134218242;
      v15 = BlobWithCFData;
      v16 = 2114;
      v17 = 0;
      _os_log_error_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "ADVisualLoggerHandler failed logging raw buffer. data:%p, Error: %{public}@", buf, 0x16u);
    }

    VZRelease();
    VZRelease();

    objc_sync_exit(v9);
  }
}

- (void)logString:(id)a3 name:(const char *)a4 timestamp:(double)a5
{
  v12[1] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = v8;
  if (v8)
  {
    v11 = @"value";
    v12[0] = v8;
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:&v11 count:1];
    [(ADVisualLoggerHandler *)self logDictionary:v10 name:a4 timestamp:a5];
  }
}

- (void)logPointCloud:(id)a3 name:(const char *)a4 timestamp:(double)a5
{
  v8 = a3;
  if (v8)
  {
    v10 = v8;
    v9 = [v8 dictionaryRepresentation];
    [(ADVisualLoggerHandler *)self logDictionary:v9 name:a4 timestamp:a5];

    v8 = v10;
  }
}

- (void)logPixelBuffer:(__CVBuffer *)a3 name:(const char *)a4 timestamp:(double)a5
{
  v20 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v7 = self;
    objc_sync_enter(v7);
    PixelFormatType = CVPixelBufferGetPixelFormatType(a3);
    PixelBufferNoCopy = a3;
    if (CVPixelBufferIsPlanar(a3) && (PixelBufferNoCopy = PixelBufferUtils::createConvertedPixelBufferFormat(a3, 0x42475241, 1)) == 0)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        PixelBufferUtils::pixelFormatAsString(PixelFormatType, buf);
        v13 = v17 >= 0 ? buf : *buf;
        *v18 = 136446210;
        v19 = v13;
        _os_log_error_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "ADVisualLoggerHandler failed logging pixel buffer with format %{public}s", v18, 0xCu);
        if (v17 < 0)
        {
          operator delete(*buf);
        }
      }
    }

    else
    {
      if (PixelFormatType == 825306677 || PixelFormatType == 1932996149 || PixelFormatType == 825437747)
      {
        PixelBufferNoCopy = PixelBufferUtils::createPixelBufferNoCopy(a3, 0x62313667, *MEMORY[0x277CBF398]);
      }

      VZDataInfoCreate();
      VZDataInfoSetTimestampMachContinuousNanoseconds();
      VZDataInfoSetName();
      ImageWithCVPixelBuffer = VZDataCreateImageWithCVPixelBuffer();
      if (ImageWithCVPixelBuffer)
      {
        v11 = [*&v7->_synchronousFileLogging stringByAppendingFormat:@".%s", a4];
        v12 = v11;
        [v11 UTF8String];
        VZLoggerLogData();
      }

      else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        *buf = 134218242;
        *&buf[4] = ImageWithCVPixelBuffer;
        v15 = 2114;
        v16 = 0;
        _os_log_error_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "ADVisualLoggerHandler failed logging pixel buffer. data:%p, Error: %{public}@", buf, 0x16u);
      }

      VZRelease();
      VZRelease();
      if (PixelBufferNoCopy != a3)
      {
        CVPixelBufferRelease(PixelBufferNoCopy);
      }
    }

    objc_sync_exit(v7);
  }
}

- (int64_t)removeHostSettings
{
  v6 = *MEMORY[0x277D85DE8];
  if (!self->_loggerName)
  {
    return -22961;
  }

  if (!self->_fileDestination)
  {
    return 0;
  }

  v3 = self;
  objc_sync_enter(v3);
  VZLoggerRemoveDestination();
  VZRelease();
  v4 = 0;
  self->_fileDestination = 0;
  objc_sync_exit(v3);

  return v4;
}

- (int64_t)setHostName:(id)a3
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  if (v4)
  {
    if (v5->_fileDestination)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "ADLogManager cannot start network logging, network destination already set", buf, 2u);
      }

      v6 = -22961;
    }

    else
    {
      VZClientOptionsCreate();
      [v4 UTF8String];
      VZClientOptionsSetTcpIpAddress();
      v5->_fileDestination = VZDestinationCreateWithClient();
      VZRelease();
      VZLoggerAddDestination();
      v6 = 0;
    }
  }

  else
  {
    v6 = [(ADVisualLoggerHandler *)v5 removeHostSettings];
  }

  objc_sync_exit(v5);

  return v6;
}

- (int64_t)removeFileSettings
{
  v2 = self;
  objc_sync_enter(v2);
  if (v2->_loggerName && v2->_visualLogger)
  {
    VZLoggerRemoveDestination();
    VZRelease();
    v2->_visualLogger = 0;
  }

  objc_sync_exit(v2);

  return 0;
}

- (int64_t)setLogFolder:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v6 = [(ADVisualLoggerHandler *)v5 removeFileSettings];
  if (!v6)
  {
    if (v4)
    {
      v7 = [MEMORY[0x277CCAA00] defaultManager];
      v16 = 0;
      v8 = [v7 createDirectoryAtPath:v4 withIntermediateDirectories:1 attributes:0 error:&v16];
      v9 = v16;
      if (v8)
      {
        v10 = [v4 stringByAppendingPathComponent:@"sequence.csv"];
        [v7 removeItemAtPath:v10 error:0];

        v11 = [v4 stringByAppendingPathComponent:@"info.json"];
        [v7 removeItemAtPath:v11 error:0];

        v12 = [*&v5->_synchronousFileLogging stringByReplacingOccurrencesOfString:@"." withString:@"/"];
        v13 = [v4 stringByAppendingPathComponent:v12];
        [v7 removeItemAtPath:v13 error:0];

        if (v5->_visualLogger)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_error_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "cannot start file logging. destination already set", buf, 2u);
          }

          v6 = -22961;
        }

        else
        {
          VZFileExportOptionsCreate();
          if (*(&v5->super._humanReadableFormat + 1))
          {
            VZFileExportOptionsSetAsyncQueueMaxElementCount();
          }

          VZLogMessageFilterCreate();
          VZDataGetDictionaryDataTypeID();
          VZLogMessageFilterRequireDataTypeIDExact();
          VZFileExportOptionsAddFilteredStoragePreference();
          VZLogMessageFilterCreate();
          VZDataGetMeshDataTypeID();
          VZLogMessageFilterRequireDataTypeIDExact();
          VZFileExportOptionsAddFilteredStoragePreference();
          VZLogMessageFilterCreate();
          VZFileExportOptionsAddFilteredStoragePreference();
          v14 = v4;
          [v4 UTF8String];
          v5->_visualLogger = VZDestinationCreateWithFileExporter();
          VZRelease();
          VZRelease();
          VZRelease();
          VZRelease();
          VZLoggerAddDestination();
          v6 = 0;
        }
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          *buf = 138543618;
          v18 = v4;
          v19 = 2114;
          v20 = v9;
          _os_log_error_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "ADLogManager cannot create logger directory %{public}@. Error: %{public}@", buf, 0x16u);
        }

        v6 = -22950;
      }
    }

    else
    {
      v6 = 0;
    }
  }

  objc_sync_exit(v5);

  return v6;
}

- (void)postDisable
{
  obj = self;
  objc_sync_enter(obj);
  [*&obj->_synchronousFileLogging UTF8String];
  VZLoggerDisable();
  objc_sync_exit(obj);
}

- (void)preEnable
{
  obj = self;
  objc_sync_enter(obj);
  [*&obj->_synchronousFileLogging UTF8String];
  VZLoggerEnable();
  objc_sync_exit(obj);
}

- (void)dealloc
{
  if (MEMORY[0x282237DD0])
  {
    [(ADVisualLoggerHandler *)self removeFileSettings];
    [(ADVisualLoggerHandler *)self removeHostSettings];
    VZRelease();
    VZRelease();
    VZRelease();
  }

  v3.receiver = self;
  v3.super_class = ADVisualLoggerHandler;
  [(ADVisualLoggerHandler *)&v3 dealloc];
}

- (ADVisualLoggerHandler)initWithName:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (!MEMORY[0x282237DD0])
  {
    if (ADDebugUtilsADVerboseLogsEnabled == 1)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Skipping VisualLogger creation as it is not availiable on this platform", buf, 2u);
      }
    }

    else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "Skipping VisualLogger creation as it is not availiable on this platform", buf, 2u);
    }

    goto LABEL_12;
  }

  v12.receiver = self;
  v12.super_class = ADVisualLoggerHandler;
  v5 = [(ADVisualLoggerHandler *)&v12 init];
  self = v5;
  if (v5)
  {
    *(&v5->super._humanReadableFormat + 1) = 0;
    v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"appledepth.vz.%@", v4];
    v7 = *&self->_synchronousFileLogging;
    *&self->_synchronousFileLogging = v6;

    v8 = MEMORY[0x245CBF9F0]();
    self->_loggerName = v8;
    if (v8)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        v9 = *&self->_synchronousFileLogging;
        *buf = 138412290;
        v14 = v9;
        _os_log_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "created logger handler %@", buf, 0xCu);
      }

      goto LABEL_6;
    }

LABEL_12:
    v10 = 0;
    goto LABEL_13;
  }

LABEL_6:
  self = self;
  v10 = self;
LABEL_13:

  return v10;
}

@end