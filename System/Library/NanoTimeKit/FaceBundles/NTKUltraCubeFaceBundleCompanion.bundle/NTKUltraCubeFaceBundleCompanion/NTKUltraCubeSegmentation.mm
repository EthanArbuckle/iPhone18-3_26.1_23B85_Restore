@interface NTKUltraCubeSegmentation
+ (CGImage)maskImageFromAuxiliaryDictionary:(id)a3;
+ (id)dataFromAuxiliaryDictionary:(id)a3;
+ (id)descriptionFromAuxiliaryDictionary:(id)a3;
- (NTKUltraCubeSegmentation)initWithType:(unint64_t)a3 dictionary:(id)a4;
@end

@implementation NTKUltraCubeSegmentation

- (NTKUltraCubeSegmentation)initWithType:(unint64_t)a3 dictionary:(id)a4
{
  v7 = a4;
  v11.receiver = self;
  v11.super_class = NTKUltraCubeSegmentation;
  v8 = [(NTKUltraCubeSegmentation *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_type = a3;
    objc_storeStrong(&v8->_auxiliaryDictionary, a4);
  }

  return v9;
}

+ (CGImage)maskImageFromAuxiliaryDictionary:(id)a3
{
  v4 = a3;
  v5 = [a1 dataFromAuxiliaryDictionary:v4];
  if (v5)
  {
    v6 = [a1 descriptionFromAuxiliaryDictionary:v4];
    if (!v6)
    {
      v10 = 0;
LABEL_14:

      goto LABEL_15;
    }

    v7 = CGDataProviderCreateWithCFData(v5);
    if ([v6 format] == 1278226488)
    {
      v8 = CGColorSpaceCreateWithName(kCGColorSpaceGenericGray);
      v9 = CGImageCreate([v6 width], objc_msgSend(v6, "height"), 8uLL, 8uLL, objc_msgSend(v6, "bytesPerRow"), v8, 0, v7, 0, 1, kCGRenderingIntentDefault);
    }

    else
    {
      if ([v6 format] != 1751411059)
      {
        v11 = _NTKLoggingObjectForDomain();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109888;
          v14 = [v6 format] >> 24;
          v15 = 1024;
          v16 = ([v6 format] << 8) >> 24;
          v17 = 1024;
          v18 = [v6 format] >> 8;
          v19 = 1024;
          v20 = [v6 format];
          _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "createMask: unknown pixel format '%c%c%c%c'", buf, 0x1Au);
        }

        v10 = 0;
        goto LABEL_13;
      }

      v8 = CGColorSpaceCreateWithName(kCGColorSpaceGenericGray);
      v9 = CGImageCreate([v6 width], objc_msgSend(v6, "height"), 0x10uLL, 0x10uLL, objc_msgSend(v6, "bytesPerRow"), v8, 0x100u, v7, 0, 1, kCGRenderingIntentDefault);
    }

    v10 = v9;
    CFRelease(v8);
LABEL_13:
    CFRelease(v7);
    goto LABEL_14;
  }

  v10 = 0;
LABEL_15:

  return v10;
}

+ (id)dataFromAuxiliaryDictionary:(id)a3
{
  v3 = [a3 objectForKeyedSubscript:kCGImageAuxiliaryDataInfoData];
  if (v3)
  {
    v4 = _NTKLoggingObjectForDomain();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 136315394;
      v7 = "+[NTKUltraCubeSegmentation dataFromAuxiliaryDictionary:]";
      v8 = 2048;
      v9 = [v3 length];
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "%s: auxiliaryData length: %ld bytes", &v6, 0x16u);
    }
  }

  return v3;
}

+ (id)descriptionFromAuxiliaryDictionary:(id)a3
{
  if (a3)
  {
    v3 = [a3 objectForKeyedSubscript:kCGImageAuxiliaryDataInfoDataDescription];
    if (v3)
    {
      v4 = objc_alloc_init(NTKUltraCubeAuxiliaryDataDescription);
      v5 = [v3 objectForKeyedSubscript:kCGImagePropertyWidth];
      -[NTKUltraCubeAuxiliaryDataDescription setWidth:](v4, "setWidth:", [v5 intValue]);

      v6 = [v3 objectForKeyedSubscript:kCGImagePropertyHeight];
      -[NTKUltraCubeAuxiliaryDataDescription setHeight:](v4, "setHeight:", [v6 intValue]);

      v7 = [v3 objectForKeyedSubscript:kCGImagePropertyBytesPerRow];
      -[NTKUltraCubeAuxiliaryDataDescription setBytesPerRow:](v4, "setBytesPerRow:", [v7 intValue]);

      v8 = [v3 objectForKeyedSubscript:kCGImagePropertyPixelFormat];
      -[NTKUltraCubeAuxiliaryDataDescription setFormat:](v4, "setFormat:", [v8 unsignedIntValue]);

      v9 = [v3 objectForKeyedSubscript:@"NTKImageAuxiliaryThresholdSegmentation"];
      -[NTKUltraCubeAuxiliaryDataDescription setIsThresholdMask:](v4, "setIsThresholdMask:", [v9 BOOLValue]);

      v10 = _NTKLoggingObjectForDomain();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v12 = 136315394;
        v13 = "+[NTKUltraCubeSegmentation descriptionFromAuxiliaryDictionary:]";
        v14 = 2112;
        v15 = v4;
        _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "%s: %@", &v12, 0x16u);
      }
    }

    else
    {
      v10 = _NTKLoggingObjectForDomain();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v12 = 136315138;
        v13 = "+[NTKUltraCubeSegmentation descriptionFromAuxiliaryDictionary:]";
        _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "%s: unable to retrieve data description from zuxiliary dictionary", &v12, 0xCu);
      }

      v4 = 0;
    }
  }

  else
  {
    v3 = _NTKLoggingObjectForDomain();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 136315138;
      v13 = "+[NTKUltraCubeSegmentation descriptionFromAuxiliaryDictionary:]";
      _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "%s: no auxiliaryDictionary", &v12, 0xCu);
    }

    v4 = 0;
  }

  return v4;
}

@end