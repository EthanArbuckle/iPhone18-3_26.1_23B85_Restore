@interface ADVisualLoggerHandler
- (ADVisualLoggerHandler)initWithName:(id)name;
- (int64_t)removeFileSettings;
- (int64_t)removeHostSettings;
- (int64_t)setHostName:(id)name;
- (int64_t)setLogFolder:(id)folder;
- (void)dealloc;
- (void)logCalibration:(id)calibration name:(const char *)name timestamp:(double)timestamp;
- (void)logDictionary:(id)dictionary name:(const char *)name timestamp:(double)timestamp;
- (void)logPixelBuffer:(__CVBuffer *)buffer name:(const char *)name timestamp:(double)timestamp;
- (void)logPointCloud:(id)cloud name:(const char *)name timestamp:(double)timestamp;
- (void)logRawBuffer:(void *)buffer size:(unint64_t)size name:(const char *)name timestamp:(double)timestamp;
- (void)logString:(id)string name:(const char *)name timestamp:(double)timestamp;
- (void)postDisable;
- (void)preEnable;
@end

@implementation ADVisualLoggerHandler

- (void)logDictionary:(id)dictionary name:(const char *)name timestamp:(double)timestamp
{
  if (dictionary)
  {
    obj = self;
    objc_sync_enter(obj);
    objc_sync_exit(obj);
  }
}

- (void)logCalibration:(id)calibration name:(const char *)name timestamp:(double)timestamp
{
  calibrationCopy = calibration;
  if (calibrationCopy)
  {
    v10 = calibrationCopy;
    dictionaryRepresentation = [calibrationCopy dictionaryRepresentation];
    [(ADVisualLoggerHandler *)self logDictionary:dictionaryRepresentation name:name timestamp:timestamp];

    calibrationCopy = v10;
  }
}

- (void)logRawBuffer:(void *)buffer size:(unint64_t)size name:(const char *)name timestamp:(double)timestamp
{
  v18 = *MEMORY[0x277D85DE8];
  if (buffer && size)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    VZDataInfoCreate();
    VZDataInfoSetTimestampMachContinuousNanoseconds();
    VZDataInfoSetName();
    v10 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:buffer length:size freeWhenDone:0];
    BlobWithCFData = VZDataCreateBlobWithCFData();
    if (BlobWithCFData)
    {
      name = [*&selfCopy->_synchronousFileLogging stringByAppendingFormat:@".%s", name];
      v13 = name;
      [name UTF8String];
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

    objc_sync_exit(selfCopy);
  }
}

- (void)logString:(id)string name:(const char *)name timestamp:(double)timestamp
{
  v12[1] = *MEMORY[0x277D85DE8];
  stringCopy = string;
  v9 = stringCopy;
  if (stringCopy)
  {
    v11 = @"value";
    v12[0] = stringCopy;
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:&v11 count:1];
    [(ADVisualLoggerHandler *)self logDictionary:v10 name:name timestamp:timestamp];
  }
}

- (void)logPointCloud:(id)cloud name:(const char *)name timestamp:(double)timestamp
{
  cloudCopy = cloud;
  if (cloudCopy)
  {
    v10 = cloudCopy;
    dictionaryRepresentation = [cloudCopy dictionaryRepresentation];
    [(ADVisualLoggerHandler *)self logDictionary:dictionaryRepresentation name:name timestamp:timestamp];

    cloudCopy = v10;
  }
}

- (void)logPixelBuffer:(__CVBuffer *)buffer name:(const char *)name timestamp:(double)timestamp
{
  v20 = *MEMORY[0x277D85DE8];
  if (buffer)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    PixelFormatType = CVPixelBufferGetPixelFormatType(buffer);
    PixelBufferNoCopy = buffer;
    if (CVPixelBufferIsPlanar(buffer) && (PixelBufferNoCopy = PixelBufferUtils::createConvertedPixelBufferFormat(buffer, 0x42475241, 1)) == 0)
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
        PixelBufferNoCopy = PixelBufferUtils::createPixelBufferNoCopy(buffer, 0x62313667, *MEMORY[0x277CBF398]);
      }

      VZDataInfoCreate();
      VZDataInfoSetTimestampMachContinuousNanoseconds();
      VZDataInfoSetName();
      ImageWithCVPixelBuffer = VZDataCreateImageWithCVPixelBuffer();
      if (ImageWithCVPixelBuffer)
      {
        name = [*&selfCopy->_synchronousFileLogging stringByAppendingFormat:@".%s", name];
        v12 = name;
        [name UTF8String];
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
      if (PixelBufferNoCopy != buffer)
      {
        CVPixelBufferRelease(PixelBufferNoCopy);
      }
    }

    objc_sync_exit(selfCopy);
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

  selfCopy = self;
  objc_sync_enter(selfCopy);
  VZLoggerRemoveDestination();
  VZRelease();
  v4 = 0;
  self->_fileDestination = 0;
  objc_sync_exit(selfCopy);

  return v4;
}

- (int64_t)setHostName:(id)name
{
  v9 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (nameCopy)
  {
    if (selfCopy->_fileDestination)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "ADLogManager cannot start network logging, network destination already set", buf, 2u);
      }

      removeHostSettings = -22961;
    }

    else
    {
      VZClientOptionsCreate();
      [nameCopy UTF8String];
      VZClientOptionsSetTcpIpAddress();
      selfCopy->_fileDestination = VZDestinationCreateWithClient();
      VZRelease();
      VZLoggerAddDestination();
      removeHostSettings = 0;
    }
  }

  else
  {
    removeHostSettings = [(ADVisualLoggerHandler *)selfCopy removeHostSettings];
  }

  objc_sync_exit(selfCopy);

  return removeHostSettings;
}

- (int64_t)removeFileSettings
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy->_loggerName && selfCopy->_visualLogger)
  {
    VZLoggerRemoveDestination();
    VZRelease();
    selfCopy->_visualLogger = 0;
  }

  objc_sync_exit(selfCopy);

  return 0;
}

- (int64_t)setLogFolder:(id)folder
{
  v21 = *MEMORY[0x277D85DE8];
  folderCopy = folder;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  removeFileSettings = [(ADVisualLoggerHandler *)selfCopy removeFileSettings];
  if (!removeFileSettings)
  {
    if (folderCopy)
    {
      defaultManager = [MEMORY[0x277CCAA00] defaultManager];
      v16 = 0;
      v8 = [defaultManager createDirectoryAtPath:folderCopy withIntermediateDirectories:1 attributes:0 error:&v16];
      v9 = v16;
      if (v8)
      {
        v10 = [folderCopy stringByAppendingPathComponent:@"sequence.csv"];
        [defaultManager removeItemAtPath:v10 error:0];

        v11 = [folderCopy stringByAppendingPathComponent:@"info.json"];
        [defaultManager removeItemAtPath:v11 error:0];

        v12 = [*&selfCopy->_synchronousFileLogging stringByReplacingOccurrencesOfString:@"." withString:@"/"];
        v13 = [folderCopy stringByAppendingPathComponent:v12];
        [defaultManager removeItemAtPath:v13 error:0];

        if (selfCopy->_visualLogger)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_error_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "cannot start file logging. destination already set", buf, 2u);
          }

          removeFileSettings = -22961;
        }

        else
        {
          VZFileExportOptionsCreate();
          if (*(&selfCopy->super._humanReadableFormat + 1))
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
          v14 = folderCopy;
          [folderCopy UTF8String];
          selfCopy->_visualLogger = VZDestinationCreateWithFileExporter();
          VZRelease();
          VZRelease();
          VZRelease();
          VZRelease();
          VZLoggerAddDestination();
          removeFileSettings = 0;
        }
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          *buf = 138543618;
          v18 = folderCopy;
          v19 = 2114;
          v20 = v9;
          _os_log_error_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "ADLogManager cannot create logger directory %{public}@. Error: %{public}@", buf, 0x16u);
        }

        removeFileSettings = -22950;
      }
    }

    else
    {
      removeFileSettings = 0;
    }
  }

  objc_sync_exit(selfCopy);

  return removeFileSettings;
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

- (ADVisualLoggerHandler)initWithName:(id)name
{
  v15 = *MEMORY[0x277D85DE8];
  nameCopy = name;
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
    nameCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"appledepth.vz.%@", nameCopy];
    v7 = *&self->_synchronousFileLogging;
    *&self->_synchronousFileLogging = nameCopy;

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
    selfCopy = 0;
    goto LABEL_13;
  }

LABEL_6:
  self = self;
  selfCopy = self;
LABEL_13:

  return selfCopy;
}

@end