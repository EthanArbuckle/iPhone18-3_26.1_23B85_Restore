@interface VCVideoFeatureListStringHelper
+ (BOOL)extractAspectRatios:(const char *)ratios prefix:(const char *)prefix landscapeX:(int *)x landscapeY:(int *)y portraitX:(int *)portraitX portraitY:(int *)portraitY;
+ (BOOL)extractExpectedAspectRatiosFromFeatureString:(const char *)string expectedFullScreenAspectRatios:(tagVCAspectRatios *)ratios;
+ (BOOL)featureListString:(char *)string maxSize:(int64_t)size payload:(int)payload featureListStrings:(__CFDictionary *)strings;
+ (BOOL)findFeatureString:(const char *)string value:(char *)value valueLength:(unint64_t)length withPrefix:(const char *)prefix;
+ (id)deriveAspectRatioFLS;
+ (id)deriveAspectRatioFLSWithPortraitRatio:(CGSize)ratio landscapeRatio:(CGSize)landscapeRatio expectedPortraitRatio:(CGSize)portraitRatio expectedLandscapeRatio:(CGSize)expectedLandscapeRatio expectedFullScreenRatios:(const tagVCAspectRatios *)ratios;
+ (id)extractKeyAndValueStringFromFeatureString:(id)string prefix:(id)prefix;
+ (id)newEmptyFeatureString;
+ (id)newEmptyFeatureStringWithPayload:(int)payload;
+ (id)newFeatureListStringsDictForGroupID:(unsigned int)d isOneToOne:(BOOL)one;
+ (id)newLocalFeaturesStringFixedPositionWithType:(unsigned __int8)type;
+ (id)newLocalFeaturesStringWithType:(unsigned __int8)type;
+ (id)newLocalFeaturesStringWithType:(unsigned __int8)type aspectRatioFLS:(id)s version:(int64_t)version;
+ (id)newLocalFeaturesStringWithVCP:(id)p aspectRatioFLS:(id)s;
+ (id)retrieveVCPFeaturesStringWithType:(unsigned __int8)type version:(int64_t)version;
+ (int)defaultPayload:(__CFDictionary *)payload;
+ (unsigned)hardwareSettingsModeFromFeatureListStringType:(unsigned __int8)type;
+ (void)aspectRatioPortrait:(CGSize *)portrait landscape:(CGSize *)landscape isMismatchedOrientation:(BOOL)orientation;
+ (void)fixInvalidAspectRatioPortrait:(CGSize *)portrait landscape:(CGSize *)landscape;
@end

@implementation VCVideoFeatureListStringHelper

+ (unsigned)hardwareSettingsModeFromFeatureListStringType:(unsigned __int8)type
{
  typeCopy = type;
  if ((type - 1) >= 9)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        +[VCVideoFeatureListStringHelper hardwareSettingsModeFromFeatureListStringType:];
      }
    }

    return 0;
  }

  return typeCopy;
}

+ (id)retrieveVCPFeaturesStringWithType:(unsigned __int8)type version:(int64_t)version
{
  typeCopy = type;
  v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
  supportedPayloads = 0;
  if (typeCopy > 4)
  {
    if (typeCopy > 6)
    {
      switch(typeCopy)
      {
        case 7:
          sharedInstance = +[VCVideoRuleCollectionsFaceTexture newU1VideoRuleCollections];
LABEL_21:
          supportedPayloads = [(__objc2_class *)sharedInstance supportedPayloads];
          goto LABEL_22;
        case 8:
          v9 = VCVideoRuleCollectionsImmersiveVideo;
          break;
        case 9:
          v9 = VCVideoRuleCollectionsCompositorServices;
          break;
        default:
          goto LABEL_22;
      }

LABEL_20:
      sharedInstance = [(__objc2_class *)v9 sharedInstance];
      goto LABEL_21;
    }

    if (typeCopy == 5)
    {
      v9 = VCVideoRuleCollectionsRemoteCamera;
      goto LABEL_20;
    }

LABEL_15:
    v9 = VCVideoRuleCollectionsCamera;
    goto LABEL_20;
  }

  if (typeCopy > 2)
  {
    if (typeCopy == 3)
    {
      v9 = VCVideoRuleCollectionsScreenSecondary;
    }

    else
    {
      v9 = VCVideoRuleCollectionsScreenAirplay;
    }

    goto LABEL_20;
  }

  if (typeCopy == 1)
  {
    goto LABEL_15;
  }

  if (typeCopy == 2)
  {
    supportedPayloads = &unk_1F579E118;
  }

  else
  {
    supportedPayloads = 0;
  }

LABEL_22:
  v11 = [self hardwareSettingsModeFromFeatureListStringType:typeCopy];
  v12 = [VCHardwareSettings featureListStringForPayload:126 hardwareSettingsMode:v11 version:version];
  v13 = [VCHardwareSettings featureListStringForPayload:100 hardwareSettingsMode:v11 version:version];
  v14 = [supportedPayloads containsObject:&unk_1F579BB08];
  if (v12)
  {
    v15 = v14;
    if (([v12 hasSuffix:@";"] & 1) == 0)
    {
      v12 = [v12 stringByAppendingString:@";"];
    }

    [v7 setObject:v12 forKeyedSubscript:&unk_1F579BB38];
    if (v15)
    {
      [v7 setObject:v12 forKeyedSubscript:&unk_1F579BB08];
    }
  }

  if ([supportedPayloads containsObject:&unk_1F579BB20])
  {
    if (!v13 && v12)
    {
      v13 = [MEMORY[0x1E696AEC0] stringWithString:v12];
    }

    if (v13)
    {
      if (([v13 hasSuffix:@";"] & 1) == 0)
      {
        v13 = [v13 stringByAppendingString:@";"];
      }

      [v7 setObject:v13 forKeyedSubscript:&unk_1F579BB20];
    }
  }

  return v7;
}

+ (void)fixInvalidAspectRatioPortrait:(CGSize *)portrait landscape:(CGSize *)landscape
{
  if (portrait->width == 512.0 && portrait->height == 683.0)
  {
    *portrait = xmmword_1DBD4F740;
  }

  if (landscape->width == 683.0 && landscape->height == 512.0)
  {
    *landscape = xmmword_1DBD4F750;
  }
}

+ (void)aspectRatioPortrait:(CGSize *)portrait landscape:(CGSize *)landscape isMismatchedOrientation:(BOOL)orientation
{
  orientationCopy = orientation;
  v19 = *MEMORY[0x1E69E9840];
  v8 = +[VCVideoCaptureServer VCVideoCaptureServerSingleton];
  if (orientationCopy)
  {
    [v8 localExpectedRatioForScreenOrientation:0];
    v10 = v9;
    v12 = v11;
    [+[VCVideoCaptureServer VCVideoCaptureServerSingleton](VCVideoCaptureServer "VCVideoCaptureServerSingleton")];
  }

  else
  {
    [v8 localScreenRatioForScreenOrientation:0];
    v10 = v15;
    v12 = v16;
    [+[VCVideoCaptureServer VCVideoCaptureServerSingleton](VCVideoCaptureServer "VCVideoCaptureServerSingleton")];
  }

  v18.width = v10;
  v18.height = v12;
  v17.width = v13;
  v17.height = v14;
  SimplifyFixedPointRatio(&v18.width);
  [VCVideoFeatureListStringHelper fixInvalidAspectRatioPortrait:&v18 landscape:&v17, SimplifyFixedPointRatio(&v17.width)];
  if (portrait)
  {
    *portrait = v18;
  }

  if (landscape)
  {
    *landscape = v17;
  }
}

+ (id)deriveAspectRatioFLS
{
  v10 = *MEMORY[0x1E69E9840];
  *&v9 = -1;
  *(&v9 + 1) = -1;
  *&v8 = -1;
  *(&v8 + 1) = -1;
  v6 = NAN;
  v7 = NAN;
  v4 = NAN;
  v5 = NAN;
  [VCVideoFeatureListStringHelper aspectRatioPortrait:&v9 landscape:&v8 isMismatchedOrientation:0, *MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8), *MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)];
  [VCVideoFeatureListStringHelper aspectRatioPortrait:&v6 landscape:&v4 isMismatchedOrientation:1];
  if (+[VCHardwareSettings supportsFullBleedReceive])
  {
    v3[0] = v9;
    v3[1] = v8;
  }

  return [VCVideoFeatureListStringHelper deriveAspectRatioFLSWithPortraitRatio:v3 landscapeRatio:v9 expectedPortraitRatio:v8 expectedLandscapeRatio:v6 expectedFullScreenRatios:v7, v4, v5];
}

+ (id)deriveAspectRatioFLSWithPortraitRatio:(CGSize)ratio landscapeRatio:(CGSize)landscapeRatio expectedPortraitRatio:(CGSize)portraitRatio expectedLandscapeRatio:(CGSize)expectedLandscapeRatio expectedFullScreenRatios:(const tagVCAspectRatios *)ratios
{
  result = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s:%d/%d, %d/%d;%s:%d/%d, %d/%d;", "AR", landscapeRatio.width, landscapeRatio.height, ratio.width, ratio.height, "XR", expectedLandscapeRatio.width, expectedLandscapeRatio.height, portraitRatio.width, portraitRatio.height];
  width = ratios->landscape.width;
  if (width != 0.0)
  {
    return [result stringByAppendingFormat:@"%s:%d/%d, %d/%d;", "XRF", width, ratios->landscape.height, ratios->portrait.width, ratios->portrait.height];
  }

  return result;
}

+ (BOOL)findFeatureString:(const char *)string value:(char *)value valueLength:(unint64_t)length withPrefix:(const char *)prefix
{
  v16 = *MEMORY[0x1E69E9840];
  v14 = 0xAAAAAAAAAAAAAAAALL;
  memset(__b, 170, sizeof(__b));
  __strlcpy_chk();
  v9 = strtok_r(__b, ";", &v14);
  if (v9)
  {
    v10 = v9;
    while (1)
    {
      v11 = strchr(v10, 58);
      v12 = v11;
      if (v11)
      {
        *v11 = 0;
      }

      if (!strcmp(v10, prefix))
      {
        break;
      }

      v9 = strtok_r(0, ";", &v14);
      v10 = v9;
      if (!v9)
      {
        return v9;
      }
    }

    if (value)
    {
      if (v12)
      {
        strncpy(value, v12 + 1, length);
      }

      else
      {
        *value = 0;
      }
    }

    LOBYTE(v9) = 1;
  }

  return v9;
}

+ (id)newLocalFeaturesStringWithType:(unsigned __int8)type
{
  typeCopy = type;
  deriveAspectRatioFLS = 0;
  if (type != 3 && type != 5)
  {
    deriveAspectRatioFLS = [self deriveAspectRatioFLS];
  }

  return [VCVideoFeatureListStringHelper newLocalFeaturesStringWithType:typeCopy aspectRatioFLS:deriveAspectRatioFLS version:1];
}

+ (id)newLocalFeaturesStringFixedPositionWithType:(unsigned __int8)type
{
  typeCopy = type;
  deriveAspectRatioFLS = 0;
  if (type <= 4u && type != 3)
  {
    deriveAspectRatioFLS = [self deriveAspectRatioFLS];
  }

  return [VCVideoFeatureListStringHelper newLocalFeaturesStringWithType:typeCopy aspectRatioFLS:deriveAspectRatioFLS version:2];
}

+ (id)newLocalFeaturesStringWithType:(unsigned __int8)type aspectRatioFLS:(id)s version:(int64_t)version
{
  typeCopy = type;
  v20 = *MEMORY[0x1E69E9840];
  v8 = [self retrieveVCPFeaturesStringWithType:type version:version];
  if (typeCopy > 0xA)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 5)
    {
      v10 = VRTraceErrorLogLevelToCSTR();
      v11 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v12 = 136315906;
        v13 = v10;
        v14 = 2080;
        v15 = "+[VCVideoFeatureListStringHelper newLocalFeaturesStringWithType:aspectRatioFLS:version:]";
        v16 = 1024;
        v17 = 317;
        v18 = 1024;
        v19 = typeCopy;
        _os_log_impl(&dword_1DB56E000, v11, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Unexpected VCVideoFeatureListStringType=%d", &v12, 0x22u);
      }
    }

    return 0;
  }

  else if (((1 << typeCopy) & 0x7E8) != 0)
  {

    return v8;
  }

  else
  {

    return [self newLocalFeaturesStringWithVCP:v8 aspectRatioFLS:s];
  }
}

+ (id)newLocalFeaturesStringWithVCP:(id)p aspectRatioFLS:(id)s
{
  v8[6] = *MEMORY[0x1E69E9840];
  v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __79__VCVideoFeatureListStringHelper_newLocalFeaturesStringWithVCP_aspectRatioFLS___block_invoke;
  v8[3] = &unk_1E85F8650;
  v8[4] = s;
  v8[5] = v6;
  [p enumerateKeysAndObjectsUsingBlock:v8];
  return v6;
}

uint64_t __79__VCVideoFeatureListStringHelper_newLocalFeaturesStringWithVCP_aspectRatioFLS___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AEC0] stringWithString:?];
  v5 = v4;
  if (*(a1 + 32))
  {
    v5 = [v4 stringByAppendingString:?];
  }

  v6 = *(a1 + 40);

  return [v6 setObject:v5 forKeyedSubscript:a2];
}

+ (id)newEmptyFeatureStringWithPayload:(int)payload
{
  v7[1] = *MEMORY[0x1E69E9840];
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*&payload];
  v7[0] = @"FLS;";
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:&v6 count:1];
  v4 = v3;
  return v3;
}

+ (id)newEmptyFeatureString
{
  v2 = objc_alloc(MEMORY[0x1E696AEC0]);

  return [v2 initWithString:@"FLS;"];
}

+ (BOOL)extractAspectRatios:(const char *)ratios prefix:(const char *)prefix landscapeX:(int *)x landscapeY:(int *)y portraitX:(int *)portraitX portraitY:(int *)portraitY
{
  v22 = *MEMORY[0x1E69E9840];
  if (!ratios || !prefix)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v16 = VRTraceErrorLogLevelToCSTR();
      v17 = *MEMORY[0x1E6986650];
      v15 = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
      if (!v15)
      {
        return v15;
      }

      *buf = 136316162;
      *&buf[4] = v16;
      *&buf[12] = 2080;
      *&buf[14] = "+[VCVideoFeatureListStringHelper extractAspectRatios:prefix:landscapeX:landscapeY:portraitX:portraitY:]";
      *&buf[22] = 1024;
      *&buf[24] = 351;
      *&buf[28] = 2080;
      *&buf[30] = ratios;
      v20 = 2080;
      prefixCopy = prefix;
      _os_log_error_impl(&dword_1DB56E000, v17, OS_LOG_TYPE_ERROR, " [%s] %s:%d Invalid parameter(s): featureListStrings=%s, prefix=%s", buf, 0x30u);
    }

LABEL_9:
    LOBYTE(v15) = 0;
    return v15;
  }

  *&v14 = 0xAAAAAAAAAAAAAAAALL;
  *(&v14 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *buf = v14;
  *&buf[16] = v14;
  if (![VCVideoFeatureListStringHelper findFeatureString:ratios value:buf valueLength:32 withPrefix:prefix]|| sscanf(buf, "%d/%d,%d/%d", x, y, portraitX, portraitY) != 4)
  {
    goto LABEL_9;
  }

  LOBYTE(v15) = 1;
  return v15;
}

+ (BOOL)extractExpectedAspectRatiosFromFeatureString:(const char *)string expectedFullScreenAspectRatios:(tagVCAspectRatios *)ratios
{
  v14 = *MEMORY[0x1E69E9840];
  v12 = -1431655766;
  v13 = -1431655766;
  v10 = -1431655766;
  v11 = -1431655766;
  v5 = [VCVideoFeatureListStringHelper extractAspectRatios:string prefix:"XRF" landscapeX:&v13 landscapeY:&v12 portraitX:&v11 portraitY:&v10];
  if (v5)
  {
    v6 = v10;
    v7 = v12;
    v8 = v13;
    ratios->portrait.width = v11;
    ratios->portrait.height = v6;
    ratios->landscape.width = v8;
    ratios->landscape.height = v7;
  }

  return v5;
}

+ (id)extractKeyAndValueStringFromFeatureString:(id)string prefix:(id)prefix
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = [string componentsSeparatedByString:@";"];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v12 count:16];
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  v8 = *v14;
LABEL_3:
  v9 = 0;
  while (1)
  {
    if (*v14 != v8)
    {
      objc_enumerationMutation(v5);
    }

    v10 = *(*(&v13 + 1) + 8 * v9);
    if ([v10 hasPrefix:prefix])
    {
      return v10;
    }

    if (v7 == ++v9)
    {
      v7 = [v5 countByEnumeratingWithState:&v13 objects:v12 count:16];
      if (v7)
      {
        goto LABEL_3;
      }

      return 0;
    }
  }
}

+ (int)defaultPayload:(__CFDictionary *)payload
{
  v9 = *MEMORY[0x1E69E9840];
  Count = CFDictionaryGetCount(payload);
  if (Count)
  {
    v5 = 8 * Count;
    v6 = (&v8 - ((8 * Count + 15) & 0xFFFFFFFFFFFFFFF0));
    memset(v6, 170, 8 * Count);
    memset(v6, 170, v5);
    CFDictionaryGetKeysAndValues(payload, v6, v6);
    HIDWORD(v8) = 128;
    if (!CFNumberGetValue(*v6, kCFNumberIntType, &v8 + 4) || (result = HIDWORD(v8), HIDWORD(v8) == 128))
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          +[VCVideoFeatureListStringHelper defaultPayload:];
        }
      }

      return 128;
    }
  }

  else
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        +[VCVideoFeatureListStringHelper defaultPayload:];
      }
    }

    return 128;
  }

  return result;
}

+ (BOOL)featureListString:(char *)string maxSize:(int64_t)size payload:(int)payload featureListStrings:(__CFDictionary *)strings
{
  v28 = *MEMORY[0x1E69E9840];
  valuePtr = payload;
  if (!string || !strings)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v14 = VRTraceErrorLogLevelToCSTR();
      v15 = *MEMORY[0x1E6986650];
      v13 = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
      if (!v13)
      {
        return v13;
      }

      *buf = 136316162;
      v19 = v14;
      v20 = 2080;
      v21 = "+[VCVideoFeatureListStringHelper featureListString:maxSize:payload:featureListStrings:]";
      v22 = 1024;
      v23 = 444;
      v24 = 2048;
      stringCopy2 = strings;
      v26 = 2080;
      stringCopy = string;
      _os_log_error_impl(&dword_1DB56E000, v15, OS_LOG_TYPE_ERROR, " [%s] %s:%d Invalid parameter(s): featureListStrings=%p, featureListString=%s", buf, 0x30u);
    }

    LOBYTE(v13) = 0;
    return v13;
  }

  v9 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberIntType, &valuePtr);
  Value = CFDictionaryGetValue(strings, v9);
  CFRelease(v9);
  if (CFStringGetCString(Value, string, size, 0x8000100u) && *string)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v11 = VRTraceErrorLogLevelToCSTR();
      v12 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315906;
        v19 = v11;
        v20 = 2080;
        v21 = "+[VCVideoFeatureListStringHelper featureListString:maxSize:payload:featureListStrings:]";
        v22 = 1024;
        v23 = 453;
        v24 = 2080;
        stringCopy2 = string;
        _os_log_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Selected %s", buf, 0x26u);
      }
    }

    LOBYTE(v13) = 1;
  }

  else
  {
    LOBYTE(v13) = 0;
    *string = 0;
  }

  return v13;
}

+ (id)newFeatureListStringsDictForGroupID:(unsigned int)d isOneToOne:(BOOL)one
{
  if (d != 1935897189)
  {
    if (d == 1718909044)
    {
      v4 = 100;
      return [VCVideoFeatureListStringHelper newEmptyFeatureStringWithPayload:v4, one];
    }

    if (d == 1667329399)
    {
      v4 = 123;
      return [VCVideoFeatureListStringHelper newEmptyFeatureStringWithPayload:v4, one];
    }

    if (one)
    {
      v6 = 1;
    }

    else
    {
      v6 = 2;
    }

    return [VCVideoFeatureListStringHelper newLocalFeaturesStringWithType:v6];
  }

  if (one)
  {
    v6 = 6;
    return [VCVideoFeatureListStringHelper newLocalFeaturesStringWithType:v6];
  }

  return +[VCVideoFeatureListStringHelper newScreenFeatureString];
}

+ (void)hardwareSettingsModeFromFeatureListStringType:.cold.1()
{
  v10 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5();
  v4 = v0;
  v5 = "+[VCVideoFeatureListStringHelper hardwareSettingsModeFromFeatureListStringType:]";
  v6 = 1024;
  v7 = 57;
  v8 = 1024;
  v9 = v1;
  _os_log_error_impl(&dword_1DB56E000, v2, OS_LOG_TYPE_ERROR, " [%s] %s:%d Unexpected featureListStringType=%hhu", v3, 0x22u);
}

+ (void)defaultPayload:.cold.1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  v2 = 433;
  _os_log_error_impl(&dword_1DB56E000, v0, OS_LOG_TYPE_ERROR, " [%s] %s:%d Failed to retrieve fist payload from featureListStrings", v1, 0x1Cu);
}

+ (void)defaultPayload:.cold.2()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  v2 = 425;
  _os_log_error_impl(&dword_1DB56E000, v0, OS_LOG_TYPE_ERROR, " [%s] %s:%d featureListStrings is empty", v1, 0x1Cu);
}

@end