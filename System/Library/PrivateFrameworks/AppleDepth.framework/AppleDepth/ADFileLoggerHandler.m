@interface ADFileLoggerHandler
- (ADFileLoggerHandler)initWithName:(id)a3;
- (id)getFullPath:(const char *)a3 timestamp:(double)a4 extension:(const char *)a5;
- (int64_t)setLogFolder:(id)a3;
- (void)logCalibration:(id)a3 name:(const char *)a4 timestamp:(double)a5;
- (void)logDictionary:(id)a3 name:(const char *)a4 timestamp:(double)a5;
- (void)logMatrix4x3:(__n128)a3 name:(__n128)a4 timestamp:(__n128)a5;
- (void)logMatrix4x4:(__n128)a3 name:(__n128)a4 timestamp:(__n128)a5;
- (void)logPixelBuffer:(__CVBuffer *)a3 name:(const char *)a4 timestamp:(double)a5;
- (void)logPointCloud:(id)a3 name:(const char *)a4 timestamp:(double)a5;
- (void)logRawBuffer:(void *)a3 size:(unint64_t)a4 name:(const char *)a5 timestamp:(double)a6;
- (void)logString:(id)a3 name:(const char *)a4 timestamp:(double)a5;
@end

@implementation ADFileLoggerHandler

- (void)logMatrix4x3:(__n128)a3 name:(__n128)a4 timestamp:(__n128)a5
{
  v18 = *MEMORY[0x277D85DE8];
  if (a1[2])
  {
    *v15 = a2;
    *&v15[16] = a3;
    *&v15[32] = a4;
    *&v15[48] = a5;
    if ([a1 humanReadableFormat])
    {
      [a1 getFullPath:a8 timestamp:"json" extension:a6];
    }

    else
    {
      [a1 getFullPath:a8 timestamp:"bin" extension:a6];
    }
    v11 = ;
    v12 = [v11 UTF8String];
    v14 = ADCommonUtils::extrinsicsToFile(v12, v13, *v15);

    if ((v14 & 1) == 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v17 = a8;
      _os_log_error_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failed to logMatrix4x3 for %s", buf, 0xCu);
    }
  }
}

- (void)logMatrix4x4:(__n128)a3 name:(__n128)a4 timestamp:(__n128)a5
{
  v18 = *MEMORY[0x277D85DE8];
  if (a1[2])
  {
    *v15 = a2;
    *&v15[16] = a3;
    *&v15[32] = a4;
    *&v15[48] = a5;
    if ([a1 humanReadableFormat])
    {
      [a1 getFullPath:a8 timestamp:"json" extension:a6];
    }

    else
    {
      [a1 getFullPath:a8 timestamp:"bin" extension:a6];
    }
    v11 = ;
    v12 = [v11 UTF8String];
    v14 = ADCommonUtils::extrinsicsToFile(v12, v13, *v15);

    if ((v14 & 1) == 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v17 = a8;
      _os_log_error_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failed to logMatrix4x4 for %s", buf, 0xCu);
    }
  }
}

- (void)logDictionary:(id)a3 name:(const char *)a4 timestamp:(double)a5
{
  v15 = *MEMORY[0x277D85DE8];
  v8 = a3;
  if (self->_logFolder)
  {
    v9 = MEMORY[0x277CBEBC0];
    v10 = [(ADFileLoggerHandler *)self getFullPath:a4 timestamp:"plist" extension:a5];
    v11 = [v9 fileURLWithPath:v10];
    v12 = [v8 writeToURL:v11 atomically:1];

    if ((v12 & 1) == 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v13 = 136315138;
      v14 = a4;
      _os_log_error_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failed to logDictionary for %s", &v13, 0xCu);
    }
  }
}

- (void)logCalibration:(id)a3 name:(const char *)a4 timestamp:(double)a5
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = a3;
  if (self->_logFolder)
  {
    if ([(ADLogManagerHandler *)self humanReadableFormat])
    {
      [(ADFileLoggerHandler *)self getFullPath:a4 timestamp:"json" extension:a5];
    }

    else
    {
      [(ADFileLoggerHandler *)self getFullPath:a4 timestamp:"plist" extension:a5];
    }
    v9 = ;
    v10 = [v8 writeToFile:v9 atomically:1];

    if ((v10 & 1) == 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v11 = 136315138;
      v12 = a4;
      _os_log_error_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failed to logCalibration for %s", &v11, 0xCu);
    }
  }
}

- (void)logRawBuffer:(void *)a3 size:(unint64_t)a4 name:(const char *)a5 timestamp:(double)a6
{
  if (self->_logFolder)
  {
    v11 = [(ADFileLoggerHandler *)self getFullPath:a5 timestamp:"raw" extension:a6];
    v8 = [v11 UTF8String];
    v9 = strlen(v8);
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
      memmove(&__dst, v8, v9);
    }

    *(&__dst + v10) = 0;
    dumpRawImageFile(&__dst, a3, a4);
    if (v13 < 0)
    {
      operator delete(__dst);
    }
  }
}

- (void)logString:(id)a3 name:(const char *)a4 timestamp:(double)a5
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = a3;
  if (self->_logFolder)
  {
    v9 = [(ADFileLoggerHandler *)self getFullPath:a4 timestamp:"txt" extension:a5];
    v10 = [v8 writeToFile:v9 atomically:1 encoding:4 error:0];

    if ((v10 & 1) == 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v11 = 136315138;
      v12 = a4;
      _os_log_error_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failed to logString %s", &v11, 0xCu);
    }
  }
}

- (void)logPointCloud:(id)a3 name:(const char *)a4 timestamp:(double)a5
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = a3;
  if (self->_logFolder)
  {
    if ([(ADLogManagerHandler *)self humanReadableFormat])
    {
      [(ADFileLoggerHandler *)self getFullPath:a4 timestamp:"csv" extension:a5];
    }

    else
    {
      [(ADFileLoggerHandler *)self getFullPath:a4 timestamp:"plist" extension:a5];
    }
    v9 = ;
    v10 = [v8 writeToFile:v9 atomically:1];

    if ((v10 & 1) == 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v11 = 136315138;
      v12 = a4;
      _os_log_error_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failed to logPointCloud %s", &v11, 0xCu);
    }
  }
}

- (void)logPixelBuffer:(__CVBuffer *)a3 name:(const char *)a4 timestamp:(double)a5
{
  if (self->_logFolder)
  {
    v8 = [(ADFileLoggerHandler *)self getFullPath:a4 timestamp:0 extension:a5];
    v6 = [v8 UTF8String];
    PixelBufferUtils::pixelBufferToRawFile(v6, a3, v7);
  }
}

- (int64_t)setLogFolder:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 stringByAppendingPathComponent:self->_shortName];
  logFolder = self->_logFolder;
  self->_logFolder = v5;

  if (self->_logFolder)
  {
    v7 = [MEMORY[0x277CCAA00] defaultManager];
    v8 = self->_logFolder;
    v14 = 0;
    v9 = [v7 createDirectoryAtPath:v8 withIntermediateDirectories:1 attributes:0 error:&v14];
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

- (ADFileLoggerHandler)initWithName:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v12.receiver = self;
  v12.super_class = ADFileLoggerHandler;
  v6 = [(ADFileLoggerHandler *)&v12 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_shortName, a3);
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"appledepth.fl.%@", v5];
    loggerName = v7->_loggerName;
    v7->_loggerName = v8;

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

- (id)getFullPath:(const char *)a3 timestamp:(double)a4 extension:(const char *)a5
{
  logFolder = self->_logFolder;
  v6 = a4 * 1000.0;
  if (a5)
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"%@/%010.0f_%s.%s", logFolder, *&v6, a3, a5];
  }

  else
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"%@/%010.0f_%s", logFolder, *&v6, a3, v9];
  }
  v7 = ;

  return v7;
}

@end