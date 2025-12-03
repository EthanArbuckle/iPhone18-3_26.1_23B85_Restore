@interface ADFileLoggerHandler
- (ADFileLoggerHandler)initWithName:(id)name;
- (id)getFullPath:(const char *)path timestamp:(double)timestamp extension:(const char *)extension;
- (int64_t)setLogFolder:(id)folder;
- (void)logCalibration:(id)calibration name:(const char *)name timestamp:(double)timestamp;
- (void)logDictionary:(id)dictionary name:(const char *)name timestamp:(double)timestamp;
- (void)logMatrix4x3:(__n128)matrix4x3 name:(__n128)name timestamp:(__n128)timestamp;
- (void)logMatrix4x4:(__n128)matrix4x4 name:(__n128)name timestamp:(__n128)timestamp;
- (void)logPixelBuffer:(__CVBuffer *)buffer name:(const char *)name timestamp:(double)timestamp;
- (void)logPointCloud:(id)cloud name:(const char *)name timestamp:(double)timestamp;
- (void)logRawBuffer:(void *)buffer size:(unint64_t)size name:(const char *)name timestamp:(double)timestamp;
- (void)logString:(id)string name:(const char *)name timestamp:(double)timestamp;
@end

@implementation ADFileLoggerHandler

- (void)logMatrix4x3:(__n128)matrix4x3 name:(__n128)name timestamp:(__n128)timestamp
{
  v18 = *MEMORY[0x277D85DE8];
  if (self[2])
  {
    *v15 = a2;
    *&v15[16] = matrix4x3;
    *&v15[32] = name;
    *&v15[48] = timestamp;
    if ([self humanReadableFormat])
    {
      [self getFullPath:a8 timestamp:"json" extension:a6];
    }

    else
    {
      [self getFullPath:a8 timestamp:"bin" extension:a6];
    }
    v11 = ;
    uTF8String = [v11 UTF8String];
    v14 = ADCommonUtils::extrinsicsToFile(uTF8String, v13, *v15);

    if ((v14 & 1) == 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v17 = a8;
      _os_log_error_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failed to logMatrix4x3 for %s", buf, 0xCu);
    }
  }
}

- (void)logMatrix4x4:(__n128)matrix4x4 name:(__n128)name timestamp:(__n128)timestamp
{
  v18 = *MEMORY[0x277D85DE8];
  if (self[2])
  {
    *v15 = a2;
    *&v15[16] = matrix4x4;
    *&v15[32] = name;
    *&v15[48] = timestamp;
    if ([self humanReadableFormat])
    {
      [self getFullPath:a8 timestamp:"json" extension:a6];
    }

    else
    {
      [self getFullPath:a8 timestamp:"bin" extension:a6];
    }
    v11 = ;
    uTF8String = [v11 UTF8String];
    v14 = ADCommonUtils::extrinsicsToFile(uTF8String, v13, *v15);

    if ((v14 & 1) == 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v17 = a8;
      _os_log_error_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failed to logMatrix4x4 for %s", buf, 0xCu);
    }
  }
}

- (void)logDictionary:(id)dictionary name:(const char *)name timestamp:(double)timestamp
{
  v15 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  if (self->_logFolder)
  {
    v9 = MEMORY[0x277CBEBC0];
    v10 = [(ADFileLoggerHandler *)self getFullPath:name timestamp:"plist" extension:timestamp];
    v11 = [v9 fileURLWithPath:v10];
    v12 = [dictionaryCopy writeToURL:v11 atomically:1];

    if ((v12 & 1) == 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v13 = 136315138;
      nameCopy = name;
      _os_log_error_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failed to logDictionary for %s", &v13, 0xCu);
    }
  }
}

- (void)logCalibration:(id)calibration name:(const char *)name timestamp:(double)timestamp
{
  v13 = *MEMORY[0x277D85DE8];
  calibrationCopy = calibration;
  if (self->_logFolder)
  {
    if ([(ADLogManagerHandler *)self humanReadableFormat])
    {
      [(ADFileLoggerHandler *)self getFullPath:name timestamp:"json" extension:timestamp];
    }

    else
    {
      [(ADFileLoggerHandler *)self getFullPath:name timestamp:"plist" extension:timestamp];
    }
    v9 = ;
    v10 = [calibrationCopy writeToFile:v9 atomically:1];

    if ((v10 & 1) == 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v11 = 136315138;
      nameCopy = name;
      _os_log_error_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failed to logCalibration for %s", &v11, 0xCu);
    }
  }
}

- (void)logRawBuffer:(void *)buffer size:(unint64_t)size name:(const char *)name timestamp:(double)timestamp
{
  if (self->_logFolder)
  {
    v11 = [(ADFileLoggerHandler *)self getFullPath:name timestamp:"raw" extension:timestamp];
    uTF8String = [v11 UTF8String];
    v9 = strlen(uTF8String);
    if (v9 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v10 = v9;
    if (v9 >= 0x17)
    {
      operator new();
    }

    v13 = v9;
    if (v9)
    {
      memmove(&__dst, uTF8String, v9);
    }

    *(&__dst + v10) = 0;
    dumpRawImageFile(&__dst, buffer, size);
    if (v13 < 0)
    {
      operator delete(__dst);
    }
  }
}

- (void)logString:(id)string name:(const char *)name timestamp:(double)timestamp
{
  v13 = *MEMORY[0x277D85DE8];
  stringCopy = string;
  if (self->_logFolder)
  {
    v9 = [(ADFileLoggerHandler *)self getFullPath:name timestamp:"txt" extension:timestamp];
    v10 = [stringCopy writeToFile:v9 atomically:1 encoding:4 error:0];

    if ((v10 & 1) == 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v11 = 136315138;
      nameCopy = name;
      _os_log_error_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failed to logString %s", &v11, 0xCu);
    }
  }
}

- (void)logPointCloud:(id)cloud name:(const char *)name timestamp:(double)timestamp
{
  v13 = *MEMORY[0x277D85DE8];
  cloudCopy = cloud;
  if (self->_logFolder)
  {
    if ([(ADLogManagerHandler *)self humanReadableFormat])
    {
      [(ADFileLoggerHandler *)self getFullPath:name timestamp:"csv" extension:timestamp];
    }

    else
    {
      [(ADFileLoggerHandler *)self getFullPath:name timestamp:"plist" extension:timestamp];
    }
    v9 = ;
    v10 = [cloudCopy writeToFile:v9 atomically:1];

    if ((v10 & 1) == 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v11 = 136315138;
      nameCopy = name;
      _os_log_error_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failed to logPointCloud %s", &v11, 0xCu);
    }
  }
}

- (void)logPixelBuffer:(__CVBuffer *)buffer name:(const char *)name timestamp:(double)timestamp
{
  if (self->_logFolder)
  {
    v8 = [(ADFileLoggerHandler *)self getFullPath:name timestamp:0 extension:timestamp];
    uTF8String = [v8 UTF8String];
    PixelBufferUtils::pixelBufferToRawFile(uTF8String, buffer, v7);
  }
}

- (int64_t)setLogFolder:(id)folder
{
  v19 = *MEMORY[0x277D85DE8];
  folderCopy = folder;
  v5 = [folderCopy stringByAppendingPathComponent:self->_shortName];
  logFolder = self->_logFolder;
  self->_logFolder = v5;

  if (self->_logFolder)
  {
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    v8 = self->_logFolder;
    v14 = 0;
    v9 = [defaultManager createDirectoryAtPath:v8 withIntermediateDirectories:1 attributes:0 error:&v14];
    v10 = v14;
    if (v9)
    {
      v11 = 0;
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        v13 = self->_logFolder;
        *buf = 138543618;
        v16 = v13;
        v17 = 2114;
        v18 = v10;
        _os_log_error_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "ADFileLoggerHandler cannot create logger directory %{public}@. Error: %{public}@", buf, 0x16u);
      }

      v11 = -22950;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (ADFileLoggerHandler)initWithName:(id)name
{
  v15 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  v12.receiver = self;
  v12.super_class = ADFileLoggerHandler;
  v6 = [(ADFileLoggerHandler *)&v12 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_shortName, name);
    nameCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"appledepth.fl.%@", nameCopy];
    loggerName = v7->_loggerName;
    v7->_loggerName = nameCopy;

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v10 = v7->_loggerName;
      *buf = 138412290;
      v14 = v10;
      _os_log_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "created logger handler %@", buf, 0xCu);
    }
  }

  return v7;
}

- (id)getFullPath:(const char *)path timestamp:(double)timestamp extension:(const char *)extension
{
  logFolder = self->_logFolder;
  v6 = timestamp * 1000.0;
  if (extension)
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"%@/%010.0f_%s.%s", logFolder, *&v6, path, extension];
  }

  else
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"%@/%010.0f_%s", logFolder, *&v6, path, v9];
  }
  v7 = ;

  return v7;
}

@end