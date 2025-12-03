@interface VideoUtil
+ (BOOL)isBufferDescriptionForMultiImageStream:(id)stream;
+ (CGSize)compute16AlignedResolutionForNativeWidth:(unsigned int)width nativeHeight:(unsigned int)height maxScreenPixelCount:(unint64_t)count maxScreenEncodingSizeSupported:(unint64_t)supported;
+ (CGSize)computeResolutionForMainDisplayWithMaxScreenPixelCount:(unint64_t)count;
+ (CGSize)getBestCaptureSizeForEncodingSize:(CGSize)size;
+ (CGSize)lowPowerModeEncodingResolutionForMaxResolution:(CGSize)resolution;
+ (CGSize)maxCaptureEncodingResolutionForStreamConfigResolution:(int64_t)resolution lowPowerModeEnabled:(BOOL)enabled;
+ (CGSize)sizeForVideoResolution:(int64_t)resolution;
+ (__CFString)typeIdentifierForImageType:(int)type;
+ (id)convertPixelBuffer:(__CVBuffer *)buffer toImageType:(int)type withAssetIdentifier:(id)identifier cameraStatusBits:(unsigned __int8)bits allowTimeMetaData:(BOOL)data;
+ (int)setupBufferPool:(__CVPixelBufferPool *)pool width:(double)width height:(double)height;
+ (int)stereoVideoPackingTypeFromVideoBufferDescription:(id)description;
+ (int)videoOrientationFromVideoOrientationMessage:(int)message;
+ (int)videoOrientationMessageFromVideoOrientation:(int)orientation;
+ (int64_t)compareVideoAspectRatioSizeA:(CGSize)a toSizeB:(CGSize)b;
+ (int64_t)videoResolutionForWidth:(int)width height:(int)height;
+ (unsigned)videoCodecForPayload:(int)payload;
@end

@implementation VideoUtil

+ (id)convertPixelBuffer:(__CVBuffer *)buffer toImageType:(int)type withAssetIdentifier:(id)identifier cameraStatusBits:(unsigned __int8)bits allowTimeMetaData:(BOOL)data
{
  dataCopy = data;
  v9 = *&type;
  v70[1] = *MEMORY[0x1E69E9840];
  pixelTransferSessionOut = 0;
  pixelBufferOut = 0;
  Width = CVPixelBufferGetWidth(buffer);
  Height = CVPixelBufferGetHeight(buffer);
  if (CVPixelBufferCreate(*MEMORY[0x1E695E480], Width, Height, 0x42475241u, 0, &pixelBufferOut))
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        +[VideoUtil convertPixelBuffer:toImageType:withAssetIdentifier:cameraStatusBits:allowTimeMetaData:];
      }
    }

    goto LABEL_65;
  }

  if (VTPixelTransferSessionCreate(0, &pixelTransferSessionOut))
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        +[VideoUtil convertPixelBuffer:toImageType:withAssetIdentifier:cameraStatusBits:allowTimeMetaData:];
      }
    }

    goto LABEL_65;
  }

  if (VTPixelTransferSessionTransferImage(pixelTransferSessionOut, buffer, pixelBufferOut))
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        +[VideoUtil convertPixelBuffer:toImageType:withAssetIdentifier:cameraStatusBits:allowTimeMetaData:];
      }
    }

    goto LABEL_65;
  }

  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  if (!DeviceRGB)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        +[VideoUtil convertPixelBuffer:toImageType:withAssetIdentifier:cameraStatusBits:allowTimeMetaData:];
      }
    }

LABEL_65:
    v20 = 0;
    v14 = 0;
LABEL_66:
    v22 = 0;
LABEL_67:
    v47 = 0;
    v28 = 0;
    goto LABEL_50;
  }

  v14 = DeviceRGB;
  BytesPerRow = CVPixelBufferGetBytesPerRow(pixelBufferOut);
  CFRetain(pixelBufferOut);
  CVPixelBufferLockBaseAddress(pixelBufferOut, 1uLL);
  v16 = pixelBufferOut;
  BaseAddress = CVPixelBufferGetBaseAddress(pixelBufferOut);
  DataSize = CVPixelBufferGetDataSize(pixelBufferOut);
  v19 = CGDataProviderCreateWithData(v16, BaseAddress, DataSize, ReleaseCVPixelBuffer);
  if (!v19)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        +[VideoUtil convertPixelBuffer:toImageType:withAssetIdentifier:cameraStatusBits:allowTimeMetaData:];
      }
    }

    v20 = 0;
    goto LABEL_66;
  }

  v20 = v19;
  v21 = CGImageCreate(Width, Height, 8uLL, 0x20uLL, BytesPerRow, v14, 0x2006u, v19, 0, 0, kCGRenderingIntentDefault);
  if (!v21)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        +[VideoUtil convertPixelBuffer:toImageType:withAssetIdentifier:cameraStatusBits:allowTimeMetaData:];
      }
    }

    goto LABEL_66;
  }

  v22 = v21;
  v23 = [VideoUtil typeIdentifierForImageType:v9];
  if (!v23)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        +[VideoUtil convertPixelBuffer:toImageType:withAssetIdentifier:cameraStatusBits:allowTimeMetaData:];
      }
    }

    goto LABEL_67;
  }

  v24 = v23;
  v53 = Height;
  data = [MEMORY[0x1E695DF88] data];
  v26 = CGImageDestinationCreateWithData(data, v24, 1uLL, 0);
  if (!v26)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        +[VideoUtil convertPixelBuffer:toImageType:withAssetIdentifier:cameraStatusBits:allowTimeMetaData:];
      }
    }

    goto LABEL_67;
  }

  v27 = v26;
  v52 = v9;
  v28 = objc_opt_new();
  v51 = Width;
  if (ImageMetadataDictionary_sOnceToken != -1)
  {
    +[VideoUtil convertPixelBuffer:toImageType:withAssetIdentifier:cameraStatusBits:allowTimeMetaData:];
  }

  date = [MEMORY[0x1E695DF00] date];
  v30 = [ImageMetadataDictionary_sDateTimeFormatter stringFromDate:date];
  v31 = [ImageMetadataDictionary_sSubsecTimeFormatter stringFromDate:date];
  if ((bits & 8) != 0)
  {
    v32 = 1;
  }

  else
  {
    v32 = 3;
  }

  if ((bits & 8) != 0)
  {
    v33 = 3;
  }

  else
  {
    v33 = 1;
  }

  if ((bits & 3) == 2)
  {
    v33 = v32;
  }

  if ((bits & 3) != 0)
  {
    v34 = 8;
  }

  else
  {
    v34 = 6;
  }

  if ((bits & 3u) <= 1)
  {
    v35 = v34;
  }

  else
  {
    v35 = v33;
  }

  if ((bits & 0x80) != 0)
  {
    v36 = v35;
  }

  else
  {
    v36 = 0;
  }

  v37 = v31;
  v38 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:v36];
  [v28 setObject:v38 forKeyedSubscript:*MEMORY[0x1E696DE78]];
  if (identifier)
  {
    v70[0] = *MEMORY[0x1E69867A8];
    *buf = identifier;
    v39 = [MEMORY[0x1E695DF20] dictionaryWithObjects:buf forKeys:v70 count:1];
    [v28 setObject:v39 forKeyedSubscript:*MEMORY[0x1E696DE30]];
  }

  v40 = objc_opt_new();
  if (v40)
  {
    v41 = v40;
    [v40 setObject:@"Apple" forKeyedSubscript:*MEMORY[0x1E696DF48]];
    [v41 setObject:ImageMetadataDictionary_sMarketingNameString forKeyedSubscript:*MEMORY[0x1E696DF50]];
    if (dataCopy)
    {
      [v41 setObject:v30 forKeyedSubscript:*MEMORY[0x1E696DF20]];
    }

    [v41 setObject:&unk_1F5799DF8 forKeyedSubscript:*MEMORY[0x1E696DF88]];
    [v41 setObject:&unk_1F5799DF8 forKeyedSubscript:*MEMORY[0x1E696DF98]];
    [v41 setObject:&unk_1F5799E10 forKeyedSubscript:*MEMORY[0x1E696DF60]];
    [v28 setObject:&unk_1F5799DF8 forKeyedSubscript:*MEMORY[0x1E696D888]];
    [v28 setObject:&unk_1F5799DF8 forKeyedSubscript:*MEMORY[0x1E696D880]];
    [v28 setObject:v41 forKeyedSubscript:*MEMORY[0x1E696DF28]];
  }

  v42 = objc_opt_new();
  if (v42)
  {
    v43 = v42;
    if (dataCopy)
    {
      [v42 setObject:v30 forKeyedSubscript:*MEMORY[0x1E696D998]];
      [v43 setObject:v30 forKeyedSubscript:*MEMORY[0x1E696D990]];
      [v43 setObject:v37 forKeyedSubscript:*MEMORY[0x1E696DB28]];
      [v43 setObject:v37 forKeyedSubscript:*MEMORY[0x1E696DB20]];
    }

    [v43 setObject:@"Apple" forKeyedSubscript:*MEMORY[0x1E696DA50]];
    v44 = objc_opt_new();
    if (v44)
    {
      v45 = v44;
      if (ImageMetadataDictionary_sMarketingNameString)
      {
        [v44 appendString:?];
        if ((bits & 8) != 0)
        {
          v46 = @" back FaceTime camera";
        }

        else
        {
          v46 = @" front FaceTime camera";
        }

        [v45 appendString:v46];
        [v43 setObject:v45 forKeyedSubscript:*MEMORY[0x1E696DA58]];
      }
    }

    [v43 setObject:@"FaceTime Photo" forKeyedSubscript:*MEMORY[0x1E696DB40]];
    [v28 setObject:v43 forKeyedSubscript:*MEMORY[0x1E696D9B0]];
  }

  [v28 setObject:&unk_1F579E4A0 forKeyedSubscript:*MEMORY[0x1E696D338]];
  CGImageDestinationAddImage(v27, v22, v28);
  if (CGImageDestinationFinalize(v27))
  {
    v47 = data;
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v48 = VRTraceErrorLogLevelToCSTR();
      v49 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136316674;
        *&buf[4] = v48;
        v58 = 2080;
        v59 = "+[VideoUtil convertPixelBuffer:toImageType:withAssetIdentifier:cameraStatusBits:allowTimeMetaData:]";
        v60 = 1024;
        v61 = 2015;
        v62 = 1024;
        v63 = v52;
        v64 = 2048;
        v65 = v51;
        v66 = 2048;
        v67 = v53;
        v68 = 2112;
        v69 = v28;
        _os_log_impl(&dword_1DB56E000, v49, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Created image type:%d data with (%zux%zu) %@", buf, 0x40u);
      }
    }
  }

  else
  {
    +[VideoUtil convertPixelBuffer:toImageType:withAssetIdentifier:cameraStatusBits:allowTimeMetaData:];
    v47 = *buf;
  }

  CFRelease(v27);
LABEL_50:
  CGImageRelease(v22);
  CGColorSpaceRelease(v14);
  CGDataProviderRelease(v20);
  CVPixelBufferRelease(pixelBufferOut);
  if (pixelTransferSessionOut)
  {
    CFRelease(pixelTransferSessionOut);
  }

  return v47;
}

+ (CGSize)sizeForVideoResolution:(int64_t)resolution
{
  if (resolution < 0x1C)
  {
    if (resolution != 27)
    {
      v4 = dbl_1DBD495B0[resolution];
      v3 = dbl_1DBD49688[resolution];
      goto LABEL_8;
    }
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      +[VideoUtil sizeForVideoResolution:];
    }
  }

  v3 = 480.0;
  v4 = 640.0;
LABEL_8:
  result.height = v3;
  result.width = v4;
  return result;
}

+ (CGSize)getBestCaptureSizeForEncodingSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v35 = *MEMORY[0x1E69E9840];
  v5 = size.width;
  v6 = size.height;
  if (size.width)
  {
    v7 = v6 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    if (size.width == size.height)
    {
      [VideoUtil getBestCaptureSizeForEncodingSize:1280.0, 720.0];
LABEL_23:
      width = v8;
      height = v9;
    }

    else
    {
      v10 = 0;
      v11 = -1;
      v12 = -1;
      do
      {
        [VideoUtil sizeForVideoResolution:v10];
        v14 = v13;
        v16 = v15;
        v17 = v13;
        v18 = v15;
        if ([+[VCVideoCaptureServer VCVideoCaptureServerSingleton](VCVideoCaptureServer "VCVideoCaptureServerSingleton")])
        {
          if (v17 == v5 && v18 == v6)
          {
            v12 = v10;
LABEL_21:
            v20 = v12;
LABEL_22:
            [VideoUtil sizeForVideoResolution:v20];
            goto LABEL_23;
          }

          if (vabdd_f64(v14 / v16, width / height) >= 0.05)
          {
            v11 = v10;
          }

          else
          {
            v12 = v10;
          }
        }

        ++v10;
      }

      while (v10 != 28);
      if (v12 != -1)
      {
        goto LABEL_21;
      }

      if (v11 != -1)
      {
        v20 = v11;
        goto LABEL_22;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v23 = VRTraceErrorLogLevelToCSTR();
        v24 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          v25 = 136316162;
          v26 = v23;
          v27 = 2080;
          v28 = "+[VideoUtil getBestCaptureSizeForEncodingSize:]";
          v29 = 1024;
          v30 = 2185;
          v31 = 1024;
          v32 = v5;
          v33 = 1024;
          v34 = v6;
          _os_log_error_impl(&dword_1DB56E000, v24, OS_LOG_TYPE_ERROR, " [%s] %s:%d Cannot find capture size for %dx%d", &v25, 0x28u);
        }
      }
    }
  }

  v21 = width;
  v22 = height;
  result.height = v22;
  result.width = v21;
  return result;
}

+ (int64_t)videoResolutionForWidth:(int)width height:(int)height
{
  if (width == 1088 && height == 1088)
  {
    return 20;
  }

  if (width == 96 && height == 96)
  {
    return 0;
  }

  if (width == 128 && height == 128)
  {
    return 1;
  }

  if (width == 192 && height == 112)
  {
    return 2;
  }

  if (width == 192 && height == 192)
  {
    return 3;
  }

  if (width == 240 && height == 240)
  {
    return 4;
  }

  if (width == 256 && height == 256)
  {
    return 5;
  }

  if (width == 320 && height == 176)
  {
    return 6;
  }

  if (width == 320 && height == 240)
  {
    return 7;
  }

  if (width == 320 && height == 320)
  {
    return 8;
  }

  if (width == 480 && height == 272)
  {
    return 9;
  }

  if (width == 480 && height == 368)
  {
    return 10;
  }

  if (width == 480 && height == 480)
  {
    return 11;
  }

  if (width == 512 && height == 512)
  {
    return 12;
  }

  if (width == 640 && height == 368)
  {
    return 13;
  }

  if (width == 640 && height == 480)
  {
    return 14;
  }

  if (width == 640 && height == 640)
  {
    return 15;
  }

  if (width == 720 && height == 720)
  {
    return 16;
  }

  if (width == 1024 && height == 768)
  {
    return 17;
  }

  if (width == 1280 && height == 720)
  {
    return 18;
  }

  if (width == 1280 && height == 960)
  {
    return 19;
  }

  if (width == 1664 && height == 1248)
  {
    return 21;
  }

  if (width == 1920 && height == 1080)
  {
    return 22;
  }

  if (width == 2592 && height == 1936)
  {
    return 24;
  }

  if (height == 2448 && width == 3264)
  {
    return 25;
  }

  else
  {
    return 27;
  }
}

+ (int)setupBufferPool:(__CVPixelBufferPool *)pool width:(double)width height:(double)height
{
  v22[1] = *MEMORY[0x1E69E9840];
  v8 = objc_autoreleasePoolPush();
  v21 = *MEMORY[0x1E696CF68];
  v22[0] = MEMORY[0x1E695E118];
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:&v21 count:1];
  v10 = *MEMORY[0x1E6966158];
  v19[0] = *MEMORY[0x1E6966160];
  v19[1] = v10;
  v20[0] = &unk_1F5799DB0;
  v20[1] = &unk_1F5799DC8;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:v19 count:2];
  v17[0] = *MEMORY[0x1E6966208];
  v18[0] = [MEMORY[0x1E696AD98] numberWithDouble:width];
  v17[1] = *MEMORY[0x1E69660B8];
  v12 = [MEMORY[0x1E696AD98] numberWithDouble:height];
  v13 = *MEMORY[0x1E6966130];
  v18[1] = v12;
  v18[2] = &unk_1F5799DE0;
  v14 = *MEMORY[0x1E69660D8];
  v17[2] = v13;
  v17[3] = v14;
  v18[3] = v9;
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:v17 count:4];
  LODWORD(pool) = CVPixelBufferPoolCreate(*MEMORY[0x1E695E480], v11, v15, pool);
  objc_autoreleasePoolPop(v8);
  return pool;
}

+ (int64_t)compareVideoAspectRatioSizeA:(CGSize)a toSizeB:(CGSize)b
{
  v4 = a.width / a.height;
  v5 = b.width / b.height;
  v6 = vabdd_f64(v4, b.width / b.height);
  v7 = -1;
  if (v4 >= v5)
  {
    v7 = 1;
  }

  if (v6 >= 0.05)
  {
    return v7;
  }

  else
  {
    return 0;
  }
}

+ (__CFString)typeIdentifierForImageType:(int)type
{
  if (!type)
  {
    return @"public.jpeg";
  }

  if (type == 1)
  {
    return @"public.heic";
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      +[VideoUtil typeIdentifierForImageType:];
    }
  }

  return 0;
}

+ (unsigned)videoCodecForPayload:(int)payload
{
  if (payload == 123)
  {
    return 1635148593;
  }

  if (payload == 100)
  {
    return 1752589105;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    result = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    +[VideoUtil videoCodecForPayload:];
  }

  return 0;
}

+ (CGSize)compute16AlignedResolutionForNativeWidth:(unsigned int)width nativeHeight:(unsigned int)height maxScreenPixelCount:(unint64_t)count maxScreenEncodingSizeSupported:(unint64_t)supported
{
  if (!width)
  {
    +[VideoUtil compute16AlignedResolutionForNativeWidth:nativeHeight:maxScreenPixelCount:maxScreenEncodingSizeSupported:];
LABEL_20:
    v9 = v11;
    v10 = v12;
    goto LABEL_21;
  }

  if (!height)
  {
    +[VideoUtil compute16AlignedResolutionForNativeWidth:nativeHeight:maxScreenPixelCount:maxScreenEncodingSizeSupported:];
    goto LABEL_20;
  }

  if (!count)
  {
    +[VideoUtil compute16AlignedResolutionForNativeWidth:nativeHeight:maxScreenPixelCount:maxScreenEncodingSizeSupported:];
    goto LABEL_20;
  }

  if (!supported)
  {
    +[VideoUtil compute16AlignedResolutionForNativeWidth:nativeHeight:maxScreenPixelCount:maxScreenEncodingSizeSupported:];
    goto LABEL_20;
  }

  v6 = height * width;
  if (!v6)
  {
    +[VideoUtil compute16AlignedResolutionForNativeWidth:nativeHeight:maxScreenPixelCount:maxScreenEncodingSizeSupported:];
    goto LABEL_20;
  }

  if (v6 >= supported)
  {
    countCopy = supported;
  }

  else
  {
    countCopy = height * width;
  }

  if (countCopy >= count)
  {
    countCopy = count;
  }

  if (countCopy >= v6)
  {
    v9 = ((width + 15) & 0xFFFFFFF0);
    v10 = ((height + 15) & 0xFFFFFFF0);
  }

  else
  {
    v8 = width / height;
    v9 = ((sqrt(v8 * countCopy) + 15) & 0xFFFFFFF0);
    v10 = (((v9 / v8) + 15) & 0xFFFFFFF0);
  }

LABEL_21:
  result.height = v10;
  result.width = v9;
  return result;
}

+ (CGSize)computeResolutionForMainDisplayWithMaxScreenPixelCount:(unint64_t)count
{
  v10[2] = *MEMORY[0x1E69E9840];
  v4 = [VCHardwareSettings screenWidthForDisplayID:0];
  v5 = [VCHardwareSettings screenHeightForDisplayID:0];
  +[VideoUtil compute16AlignedResolutionForNativeWidth:nativeHeight:maxScreenPixelCount:maxScreenEncodingSizeSupported:](VideoUtil, "compute16AlignedResolutionForNativeWidth:nativeHeight:maxScreenPixelCount:maxScreenEncodingSizeSupported:", v4, v5, count, +[VCHardwareSettings maxScreenEncodingSizeSupported]);
  if (v6 == 0.0)
  {
    [VideoUtil computeResolutionForMainDisplayWithMaxScreenPixelCount:v10];
LABEL_8:
    v8 = *v10;
    v9 = *&v10[1];
    goto LABEL_9;
  }

  if (v7 == 0.0)
  {
    [VideoUtil computeResolutionForMainDisplayWithMaxScreenPixelCount:v10];
    goto LABEL_8;
  }

  v8 = VideoUtil_ComputeScreenSizeClosestToNativeAspectRatio(0x10u, v6, v7, v4, v5);
LABEL_9:
  result.height = v9;
  result.width = v8;
  return result;
}

+ (int)videoOrientationMessageFromVideoOrientation:(int)orientation
{
  orientationCopy = orientation;
  if (orientation >= 4)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        +[VideoUtil videoOrientationMessageFromVideoOrientation:];
      }
    }

    return 0;
  }

  return orientationCopy;
}

+ (int)videoOrientationFromVideoOrientationMessage:(int)message
{
  messageCopy = message;
  if (message >= 4)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        +[VideoUtil videoOrientationFromVideoOrientationMessage:];
      }
    }

    return 0;
  }

  return messageCopy;
}

+ (CGSize)lowPowerModeEncodingResolutionForMaxResolution:(CGSize)resolution
{
  v3 = resolution.width / resolution.height;
  v4 = VCMU_CompareWithAccuracy(v3, 1.3333, 0.00000011920929);
  [VideoUtil sizeForVideoResolution:19];
  v6 = v5;
  v8 = v7;
  [VideoUtil sizeForVideoResolution:18];
  if (v4)
  {
    v9 = v6;
    v10 = v8;
  }

  result.height = v10;
  result.width = v9;
  return result;
}

+ (CGSize)maxCaptureEncodingResolutionForStreamConfigResolution:(int64_t)resolution lowPowerModeEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v39 = *MEMORY[0x1E69E9840];
  [VideoUtil sizeForVideoResolution:resolution];
  v7 = v6;
  v9 = v8;
  if (enabledCopy && VCDefaults_GetBoolValueForKey(@"enable720pThermalLightMitigation", 0) && v7 != v9)
  {
    [VideoUtil lowPowerModeEncodingResolutionForMaxResolution:v7, v9];
    if (v10 < v7 || v11 < v9)
    {
      v13 = v10;
      v14 = v11;
      if (objc_opt_class() == self)
      {
        if (VRTraceGetErrorLogLevelForModule() < 7)
        {
          goto LABEL_20;
        }

        v16 = VRTraceErrorLogLevelToCSTR();
        v17 = *MEMORY[0x1E6986650];
        if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_20;
        }

        v25 = 136316162;
        v26 = v16;
        v27 = 2080;
        v28 = "+[VideoUtil maxCaptureEncodingResolutionForStreamConfigResolution:lowPowerModeEnabled:]";
        v29 = 1024;
        v30 = 2882;
        v31 = 2048;
        v32 = *&v13;
        v33 = 2048;
        v34 = v14;
        v18 = " [%s] %s:%d LowPowerMode enabled, setting capture size to %fx%f";
        v19 = v17;
        v20 = 48;
      }

      else
      {
        if (objc_opt_respondsToSelector())
        {
          v15 = [self performSelector:sel_logPrefix];
        }

        else
        {
          v15 = &stru_1F570E008;
        }

        if (VRTraceGetErrorLogLevelForModule() < 7)
        {
          goto LABEL_20;
        }

        v21 = VRTraceErrorLogLevelToCSTR();
        v22 = *MEMORY[0x1E6986650];
        if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_20;
        }

        v25 = 136316674;
        v26 = v21;
        v27 = 2080;
        v28 = "+[VideoUtil maxCaptureEncodingResolutionForStreamConfigResolution:lowPowerModeEnabled:]";
        v29 = 1024;
        v30 = 2882;
        v31 = 2112;
        v32 = v15;
        v33 = 2048;
        v34 = *&self;
        v35 = 2048;
        v36 = v13;
        v37 = 2048;
        v38 = v14;
        v18 = " [%s] %s:%d %@(%p) LowPowerMode enabled, setting capture size to %fx%f";
        v19 = v22;
        v20 = 68;
      }

      _os_log_impl(&dword_1DB56E000, v19, OS_LOG_TYPE_DEFAULT, v18, &v25, v20);
LABEL_20:
      v7 = v13;
      v9 = v14;
    }
  }

  v23 = v7;
  v24 = v9;
  result.height = v24;
  result.width = v23;
  return result;
}

+ (int)stereoVideoPackingTypeFromVideoBufferDescription:(id)description
{
  v25 = *MEMORY[0x1E69E9840];
  tagBuffer = *MEMORY[0x1E6960630];
  numberOfTagsCopied = 0;
  if (!description || CFArrayGetCount(description) < 1)
  {
    return 0;
  }

  v4 = 0;
  v5 = *MEMORY[0x1E6960640];
  v6 = *(MEMORY[0x1E6960640] + 8);
  v7 = *MEMORY[0x1E6960688];
  v8 = *(MEMORY[0x1E6960688] + 8);
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(description, v4);
    *&v26.category = v5;
    v26.value = v6;
    if (CMTagCollectionContainsTag(ValueAtIndex, v26))
    {
      *&v27.category = v7;
      v27.value = v8;
      if (CMTagCollectionContainsTag(ValueAtIndex, v27))
      {
        break;
      }
    }

    if (++v4 >= CFArrayGetCount(description))
    {
      return 0;
    }
  }

  TagsWithCategory = CMTagCollectionGetTagsWithCategory(ValueAtIndex, kCMTagCategory_PackingType, &tagBuffer, 1, &numberOfTagsCopied);
  if (!TagsWithCategory)
  {
    return [VideoUtil stereoVideoPackingTypeForCMPackingType:CMTagGetFlagsValue(tagBuffer)];
  }

  v12 = TagsWithCategory;
  if (VRTraceGetErrorLogLevelForModule() < 3)
  {
    return 0;
  }

  v13 = VRTraceErrorLogLevelToCSTR();
  v14 = *MEMORY[0x1E6986650];
  result = OUTLINED_FUNCTION_28();
  if (result)
  {
    v19 = 136315906;
    v20 = v13;
    v21 = 2080;
    OUTLINED_FUNCTION_6_20();
    v22 = 1904;
    v23 = v15;
    v24 = v12;
    OUTLINED_FUNCTION_25_5(&dword_1DB56E000, v14, v16, " [%s] %s:%d Failed to get packing type tag even thought stereo view set error=%d", &v19);
    return 0;
  }

  return result;
}

+ (BOOL)isBufferDescriptionForMultiImageStream:(id)stream
{
  v30 = *MEMORY[0x1E69E9840];
  tagBuffer = *MEMORY[0x1E6960630];
  numberOfTagsCopied = 0;
  if (!stream || CFArrayGetCount(stream) < 1)
  {
LABEL_16:
    v14 = 0;
    return v14 & 1;
  }

  v4 = 0;
  v5 = 0;
  v6 = 0;
  v7 = 0;
  v8 = *MEMORY[0x1E6960640];
  v9 = *(MEMORY[0x1E6960640] + 8);
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(stream, v7);
    *&v31.category = v8;
    v31.value = v9;
    if (CMTagCollectionContainsTag(ValueAtIndex, v31))
    {
      break;
    }

LABEL_13:
    if (++v7 >= CFArrayGetCount(stream))
    {
      goto LABEL_14;
    }
  }

  TagsWithCategory = CMTagCollectionGetTagsWithCategory(ValueAtIndex, kCMTagCategory_PackingType, &tagBuffer, 1, &numberOfTagsCopied);
  if (!TagsWithCategory)
  {
    if ([VideoUtil stereoVideoPackingTypeForCMPackingType:CMTagGetFlagsValue(tagBuffer)])
    {
      goto LABEL_14;
    }

    v12 = CMTagCollectionGetTagsWithCategory(ValueAtIndex, kCMTagCategory_StereoView, &tagBuffer, 1, &numberOfTagsCopied);
    if (v12)
    {
      v20 = v12;
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        v21 = *MEMORY[0x1E6986650];
        if (OUTLINED_FUNCTION_34())
        {
          OUTLINED_FUNCTION_33_3();
          OUTLINED_FUNCTION_6_20();
          v27 = 1945;
          v28 = v22;
          v29 = v20;
          OUTLINED_FUNCTION_25_5(&dword_1DB56E000, v21, v23, " [%s] %s:%d Failed to get stereo view tag, error=%d", v26);
        }
      }

      goto LABEL_15;
    }

    FlagsValue = CMTagGetFlagsValue(tagBuffer);
    if (FlagsValue == 1)
    {
      v5 = 1;
    }

    else if (FlagsValue == 2)
    {
      v6 = 1;
    }

    v4 = 1;
    goto LABEL_13;
  }

  v16 = TagsWithCategory;
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    v17 = *MEMORY[0x1E6986650];
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_33_3();
      OUTLINED_FUNCTION_6_20();
      v27 = 1936;
      v28 = v18;
      v29 = v16;
      OUTLINED_FUNCTION_25_5(&dword_1DB56E000, v17, v19, " [%s] %s:%d Failed to get packing type tag even thought stereo view set, error=%d", v26);
    }
  }

LABEL_14:
  if ((v4 & 1) == 0)
  {
    goto LABEL_16;
  }

LABEL_15:
  v14 = v5 & v6;
  return v14 & 1;
}

+ (void)convertPixelBuffer:toImageType:withAssetIdentifier:cameraStatusBits:allowTimeMetaData:.cold.1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

+ (void)convertPixelBuffer:toImageType:withAssetIdentifier:cameraStatusBits:allowTimeMetaData:.cold.2()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

+ (void)convertPixelBuffer:toImageType:withAssetIdentifier:cameraStatusBits:allowTimeMetaData:.cold.3()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

+ (void)convertPixelBuffer:toImageType:withAssetIdentifier:cameraStatusBits:allowTimeMetaData:.cold.5()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_20();
}

+ (void)convertPixelBuffer:toImageType:withAssetIdentifier:cameraStatusBits:allowTimeMetaData:.cold.6()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

+ (void)convertPixelBuffer:toImageType:withAssetIdentifier:cameraStatusBits:allowTimeMetaData:.cold.7()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

+ (void)convertPixelBuffer:toImageType:withAssetIdentifier:cameraStatusBits:allowTimeMetaData:.cold.8()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d source image is NULL", v2, v3, v4, v5, v6);
}

+ (void)convertPixelBuffer:toImageType:withAssetIdentifier:cameraStatusBits:allowTimeMetaData:.cold.9()
{
  v4 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_21();
  v3 = 0;
  OUTLINED_FUNCTION_25_5(&dword_1DB56E000, v0, v1, " [%s] %s:%d CGDataProviderCreateWithData failed %d", v2);
}

+ (void)convertPixelBuffer:toImageType:withAssetIdentifier:cameraStatusBits:allowTimeMetaData:.cold.10()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d Failed to create color space", v2, v3, v4, v5, v6);
}

+ (void)sizeForVideoResolution:.cold.1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

+ (void)typeIdentifierForImageType:.cold.1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

+ (void)videoCodecForPayload:.cold.1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

+ (void)compute16AlignedResolutionForNativeWidth:nativeHeight:maxScreenPixelCount:maxScreenEncodingSizeSupported:.cold.1()
{
  OUTLINED_FUNCTION_16_2();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_24();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_16_7();
}

+ (void)compute16AlignedResolutionForNativeWidth:nativeHeight:maxScreenPixelCount:maxScreenEncodingSizeSupported:.cold.2()
{
  OUTLINED_FUNCTION_16_2();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_24();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_16_7();
}

+ (void)compute16AlignedResolutionForNativeWidth:nativeHeight:maxScreenPixelCount:maxScreenEncodingSizeSupported:.cold.3()
{
  OUTLINED_FUNCTION_16_2();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_24();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_16_7();
}

+ (void)compute16AlignedResolutionForNativeWidth:nativeHeight:maxScreenPixelCount:maxScreenEncodingSizeSupported:.cold.4()
{
  OUTLINED_FUNCTION_16_2();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_24();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_16_7();
}

+ (void)compute16AlignedResolutionForNativeWidth:nativeHeight:maxScreenPixelCount:maxScreenEncodingSizeSupported:.cold.5()
{
  OUTLINED_FUNCTION_16_2();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_24();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_16_7();
}

+ (void)computeResolutionForMainDisplayWithMaxScreenPixelCount:(void *)a1 .cold.1(void *a1)
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v2, v3, v4, v5, v6, 0x1Cu);
    }
  }

  *a1 = 0;
  a1[1] = 0;
}

+ (void)computeResolutionForMainDisplayWithMaxScreenPixelCount:(void *)a1 .cold.2(void *a1)
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v2, v3, v4, v5, v6, 0x1Cu);
    }
  }

  *a1 = 0;
  a1[1] = 0;
}

+ (void)videoOrientationMessageFromVideoOrientation:.cold.1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x28u);
}

+ (void)videoOrientationFromVideoOrientationMessage:.cold.1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x28u);
}

@end