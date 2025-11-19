@interface VCVirtualAVCaptureHardware
- ($2825F4736939C4A6D3AD43837233062D)highResolutionStillImageDimensionsWithFormatDict:(id)a3;
- (NSDictionary)devices;
- (id)defaultFormatForDeviceID:(id)a3;
- (id)initForDevice:(id)a3;
- (id)newDeviceFormatsFromJsonList:(id)a3;
- (id)newVirtualHardwareForDevice:(id)a3;
- (id)supportedMaxPhotoDimensionsWithFormatDict:(id)a3;
- (id)videoSupportedFrameRateRangesWithFormatDict:(id)a3;
- (opaqueCMFormatDescription)newFormatDescription:(id)a3;
- (void)dealloc;
@end

@implementation VCVirtualAVCaptureHardware

- (id)initForDevice:(id)a3
{
  v9 = *MEMORY[0x1E69E9840];
  v8.receiver = self;
  v8.super_class = VCVirtualAVCaptureHardware;
  v4 = [(VCVirtualAVCaptureHardware *)&v8 init];
  v5 = v4;
  if (!v4)
  {
    [VCVirtualAVCaptureHardware initForDevice:];
LABEL_6:

    return 0;
  }

  v6 = [(VCVirtualAVCaptureHardware *)v4 newVirtualHardwareForDevice:a3];
  v5->_virtualHardware = v6;
  if (!v6)
  {
    [VCVirtualAVCaptureHardware initForDevice:];
    goto LABEL_6;
  }

  return v5;
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  v3.receiver = self;
  v3.super_class = VCVirtualAVCaptureHardware;
  [(VCVirtualAVCaptureHardware *)&v3 dealloc];
}

- (id)defaultFormatForDeviceID:(id)a3
{
  v3 = [(NSDictionary *)self->_virtualHardware objectForKeyedSubscript:a3];

  return [v3 firstObject];
}

- (NSDictionary)devices
{
  v2 = [(NSDictionary *)self->_virtualHardware copy];

  return v2;
}

- (opaqueCMFormatDescription)newFormatDescription:(id)a3
{
  v11[1] = *MEMORY[0x1E69E9840];
  v11[0] = 0;
  v4 = [a3 objectForKeyedSubscript:kVCVirtualDeviceFormatPixelFormat];
  if (v4)
  {
    v5 = [objc_msgSend(v4 "description")];
  }

  else
  {
    v5 = "<nil>";
  }

  v6 = CStrToFourcc(v5);
  v7 = [objc_msgSend(a3 objectForKeyedSubscript:{kVCVirtualDeviceFormatCaptureWidth), "intValue"}];
  v8 = [objc_msgSend(a3 objectForKeyedSubscript:{kVCVirtualDeviceFormatCaptureHeight), "intValue"}];
  CMVideoFormatDescriptionCreate(*MEMORY[0x1E695E480], v6, v7, v8, 0, v11);
  if (!v11[0] && VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v9 = VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      [VCVirtualAVCaptureHardware newFormatDescription:v9];
    }
  }

  return v11[0];
}

- (id)videoSupportedFrameRateRangesWithFormatDict:(id)a3
{
  v8[1] = *MEMORY[0x1E69E9840];
  [objc_msgSend(a3 objectForKeyedSubscript:{kVCVirtualDeviceFormatMinFrameRate), "floatValue"}];
  v5 = v4;
  [objc_msgSend(a3 objectForKeyedSubscript:{kVCVirtualDeviceFormatMaxFrameRate), "floatValue"}];
  v8[0] = [[VCVirtualAVFrameRateRange alloc] initWithMinFrameRate:v5 maxFrameRate:v6];
  return [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
}

- ($2825F4736939C4A6D3AD43837233062D)highResolutionStillImageDimensionsWithFormatDict:(id)a3
{
  v3 = [objc_msgSend(a3 objectForKeyedSubscript:{kVCVirtualDeviceFormatPhotoDimensions), "lastObject"}];
  v4 = [objc_msgSend(v3 objectAtIndexedSubscript:{0), "intValue"}];
  return (v4 | ([objc_msgSend(v3 objectAtIndexedSubscript:{1), "intValue"}] << 32));
}

- (id)supportedMaxPhotoDimensionsWithFormatDict:(id)a3
{
  v5[1] = *MEMORY[0x1E69E9840];
  v4 = [(VCVirtualAVCaptureHardware *)self highResolutionStillImageDimensionsWithFormatDict:a3];
  v5[0] = [MEMORY[0x1E696B098] valueWithBytes:&v4 objCType:"{?=ii}"];
  return [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];
}

- (id)newDeviceFormatsFromJsonList:(id)a3
{
  v36 = *MEMORY[0x1E69E9840];
  v26 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (v26)
  {
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v5 = [a3 countByEnumeratingWithState:&v32 objects:v31 count:16];
    if (v5)
    {
      v6 = v5;
      v25 = *v33;
      v7 = *MEMORY[0x1E6987608];
      v24 = *MEMORY[0x1E69868A8];
      v23 = *MEMORY[0x1E69868A0];
      v22 = *MEMORY[0x1E69868C0];
      v21 = *MEMORY[0x1E69868B8];
      v20 = *MEMORY[0x1E69868B0];
      v8 = MEMORY[0x1E6960C70];
      v9 = MEMORY[0x1E695E0F0];
      obj = a3;
      while (2)
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v33 != v25)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v32 + 1) + 8 * i);
          v12 = [VCVirtualAVCaptureDeviceFormat alloc];
          if (!v12)
          {
            [VCVirtualAVCaptureHardware newDeviceFormatsFromJsonList:];
            goto LABEL_16;
          }

          v13 = v12;
          v14 = [(VCVirtualAVCaptureHardware *)self newFormatDescription:v11];
          if (!v14)
          {
            [VCVirtualAVCaptureHardware newDeviceFormatsFromJsonList:v13];
            goto LABEL_16;
          }

          v15 = v14;
          [(VCVirtualAVCaptureDeviceFormat *)v13 setMediaType:v7];
          [(VCVirtualAVCaptureDeviceFormat *)v13 setFormatDescription:v15];
          [(VCVirtualAVCaptureDeviceFormat *)v13 setVideoSupportedFrameRateRanges:[(VCVirtualAVCaptureHardware *)self videoSupportedFrameRateRangesWithFormatDict:v11]];
          [objc_msgSend(v11 objectForKeyedSubscript:{kVCVirtualDeviceFormatFOV), "floatValue"}];
          [(VCVirtualAVCaptureDeviceFormat *)v13 setVideoFieldOfView:?];
          -[VCVirtualAVCaptureDeviceFormat setVideoBinned:](v13, "setVideoBinned:", [v11 objectForKeyedSubscript:kVCVirtualDeviceFormatBinned] != 0);
          [(VCVirtualAVCaptureDeviceFormat *)v13 setVideoStabilizationSupported:0];
          [objc_msgSend(v11 objectForKeyedSubscript:{kVCVirtualDeviceFormatMaxZoom), "floatValue"}];
          [(VCVirtualAVCaptureDeviceFormat *)v13 setVideoMaxZoomFactor:v16];
          [(VCVirtualAVCaptureDeviceFormat *)v13 setVideoZoomFactorUpscaleThreshold:0.0];
          v28 = *v8;
          v27 = v28;
          v29 = *(v8 + 2);
          v17 = v29;
          [(VCVirtualAVCaptureDeviceFormat *)v13 setMinExposureDuration:&v28];
          v28 = v27;
          v29 = v17;
          [(VCVirtualAVCaptureDeviceFormat *)v13 setMaxExposureDuration:&v28];
          [objc_msgSend(v11 objectForKeyedSubscript:{kVCVirtualDeviceFormatISOMin), "floatValue"}];
          [(VCVirtualAVCaptureDeviceFormat *)v13 setMinISO:?];
          [objc_msgSend(v11 objectForKeyedSubscript:{kVCVirtualDeviceFormatISOMax), "floatValue"}];
          [(VCVirtualAVCaptureDeviceFormat *)v13 setMaxISO:?];
          [(VCVirtualAVCaptureDeviceFormat *)v13 setGlobalToneMappingSupported:0];
          -[VCVirtualAVCaptureDeviceFormat setVideoHDRSupported:](v13, "setVideoHDRSupported:", [v11 objectForKeyedSubscript:kVCVirtualDeviceFormatHDR] != 0);
          [(VCVirtualAVCaptureDeviceFormat *)v13 setHighResolutionStillImageDimensions:[(VCVirtualAVCaptureHardware *)self highResolutionStillImageDimensionsWithFormatDict:v11]];
          -[VCVirtualAVCaptureDeviceFormat setHighPhotoQualitySupported:](v13, "setHighPhotoQualitySupported:", [v11 objectForKeyedSubscript:kVCVirtualDeviceFormatHighPhotoQuality] != 0);
          -[VCVirtualAVCaptureDeviceFormat setHighestPhotoQualitySupported:](v13, "setHighestPhotoQualitySupported:", [v11 objectForKeyedSubscript:kVCVirtualDeviceFormatSupportsHighestPhotoQuality] != 0);
          -[VCVirtualAVCaptureDeviceFormat setPortraitEffectSupported:](v13, "setPortraitEffectSupported:", [v11 objectForKeyedSubscript:kVCVirtualDeviceFormatPortrait] != 0);
          -[VCVirtualAVCaptureDeviceFormat setAutoFocusSystem:](v13, "setAutoFocusSystem:", [v11 objectForKeyedSubscript:kVCVirtualDeviceFormatAFSystem]);
          [(VCVirtualAVCaptureDeviceFormat *)v13 setSupportedColorSpaces:v9];
          [(VCVirtualAVCaptureDeviceFormat *)v13 setVideoMinZoomFactorForDepthDataDelivery:0.0];
          [(VCVirtualAVCaptureDeviceFormat *)v13 setVideoMaxZoomFactorForDepthDataDelivery:0.0];
          [(VCVirtualAVCaptureDeviceFormat *)v13 setSupportedVideoZoomFactorsForDepthDataDelivery:v9];
          [(VCVirtualAVCaptureDeviceFormat *)v13 setSupportedDepthDataFormats:v9];
          [(VCVirtualAVCaptureDeviceFormat *)v13 setUnsupportedCaptureOutputClasses:v9];
          [(VCVirtualAVCaptureDeviceFormat *)v13 setSupportedMaxPhotoDimensions:[(VCVirtualAVCaptureHardware *)self supportedMaxPhotoDimensionsWithFormatDict:v11]];
          [(VCVirtualAVCaptureDeviceFormat *)v13 setSecondaryNativeResolutionZoomFactors:v9];
          -[VCVirtualAVCaptureDeviceFormat setCenterStageSupported:](v13, "setCenterStageSupported:", [v11 objectForKeyedSubscript:kVCVirtualDeviceFormatCenterStage] != 0);
          [(VCVirtualAVCaptureDeviceFormat *)v13 setSupportedOutputAspectRatios:v9];
          if ([v11 objectForKeyedSubscript:kVCVirtualDeviceFormatSupportsAspectRatio])
          {
            v30[0] = v24;
            v30[1] = v23;
            v30[2] = v22;
            v30[3] = v21;
            v30[4] = v20;
            -[VCVirtualAVCaptureDeviceFormat setSupportedOutputAspectRatios:](v13, "setSupportedOutputAspectRatios:", [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:5]);
          }

          CFRelease(v15);
          [v26 addObject:v13];
        }

        v6 = [obj countByEnumeratingWithState:&v32 objects:v31 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }
  }

  else
  {
    [VCVirtualAVCaptureHardware newDeviceFormatsFromJsonList:];
LABEL_16:

    return 0;
  }

  return v26;
}

- (id)newVirtualHardwareForDevice:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
  if (!v4)
  {
    [(VCVirtualAVCaptureHardware *)&v19 newVirtualHardwareForDevice:?];
LABEL_15:
    v17 = v19;
    v6 = v20;
    goto LABEL_16;
  }

  v5 = [VCDefaults copyStringValueForKey:@"virtualCaptureFormatJSONPath"];
  if (!v5)
  {
    [(VCVirtualAVCaptureHardware *)&v19 newVirtualHardwareForDevice:?];
    goto LABEL_15;
  }

  v6 = v5;
  v7 = [MEMORY[0x1E695DEF0] dataWithContentsOfFile:v5];
  if (!v7)
  {
    [VCVirtualAVCaptureHardware newVirtualHardwareForDevice:v6];
    goto LABEL_15;
  }

  v8 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v7 options:0 error:0];
  if (!v8)
  {
    [VCVirtualAVCaptureHardware newVirtualHardwareForDevice:];
    goto LABEL_15;
  }

  v9 = v8;
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v10 = [v8 countByEnumeratingWithState:&v22 objects:v21 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v23;
    while (2)
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v23 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v22 + 1) + 8 * i);
        v15 = -[VCVirtualAVCaptureHardware newDeviceFormatsFromJsonList:](self, "newDeviceFormatsFromJsonList:", [v9 objectForKeyedSubscript:v14]);
        if (!v15)
        {
          [VCVirtualAVCaptureHardware newVirtualHardwareForDevice:v14];
          goto LABEL_15;
        }

        v16 = v15;
        [v4 setValue:v15 forKey:v14];
      }

      v11 = [v9 countByEnumeratingWithState:&v22 objects:v21 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

  v17 = [v4 copy];
LABEL_16:

  return v17;
}

- (void)initForDevice:.cold.1()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_17(&dword_1DB56E000, v0, v1, " [%s] %s:%d Failed to create virtual hardware", v2, v3, v4, v5, v6);
    }
  }
}

- (void)initForDevice:.cold.2()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_17(&dword_1DB56E000, v0, v1, " [%s] %s:%d Failed to init self", v2, v3, v4, v5, v6);
    }
  }
}

- (void)newFormatDescription:(uint64_t)a1 .cold.1(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = 136315650;
  v4 = a1;
  OUTLINED_FUNCTION_0();
  v5 = 94;
  OUTLINED_FUNCTION_26(&dword_1DB56E000, v1, v2, " [%s] %s:%d Failed to create format description", &v3);
}

- (void)newDeviceFormatsFromJsonList:(void *)a1 .cold.1(void *a1)
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_17(&dword_1DB56E000, v1, v2, " [%s] %s:%d Failed to create format description", v3, v4, v5, v6, v7);
    }
  }
}

- (void)newDeviceFormatsFromJsonList:.cold.2()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_17(&dword_1DB56E000, v0, v1, " [%s] %s:%d Failed to allocate virtual device format", v2, v3, v4, v5, v6);
    }
  }
}

- (void)newDeviceFormatsFromJsonList:.cold.3()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_17(&dword_1DB56E000, v0, v1, " [%s] %s:%d Failed to allocate device format list", v2, v3, v4, v5, v6);
    }
  }
}

- (void)newVirtualHardwareForDevice:(uint64_t)a1 .cold.1(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v2 = VRTraceErrorLogLevelToCSTR();
    v3 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      v4 = 136315906;
      v5 = v2;
      v6 = 2080;
      v7 = "[VCVirtualAVCaptureHardware newVirtualHardwareForDevice:]";
      v8 = 1024;
      v9 = 208;
      v10 = 2112;
      v11 = a1;
      _os_log_error_impl(&dword_1DB56E000, v3, OS_LOG_TYPE_ERROR, " [%s] %s:%d Failed to get device formats for device:%@", &v4, 0x26u);
    }
  }

  OUTLINED_FUNCTION_3_29();
}

- (void)newVirtualHardwareForDevice:.cold.2()
{
  v6 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v0 = VRTraceErrorLogLevelToCSTR();
    v1 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      v3 = 136315650;
      v4 = v0;
      OUTLINED_FUNCTION_0();
      v5 = 204;
      OUTLINED_FUNCTION_26(&dword_1DB56E000, v1, v2, " [%s] %s:%d Failed to get hardware JSON", &v3);
    }
  }

  OUTLINED_FUNCTION_3_29();
}

- (void)newVirtualHardwareForDevice:(uint64_t)a1 .cold.3(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v2 = VRTraceErrorLogLevelToCSTR();
    v3 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      v4 = 136315906;
      v5 = v2;
      v6 = 2080;
      v7 = "[VCVirtualAVCaptureHardware newVirtualHardwareForDevice:]";
      v8 = 1024;
      v9 = 201;
      v10 = 2112;
      v11 = a1;
      _os_log_error_impl(&dword_1DB56E000, v3, OS_LOG_TYPE_ERROR, " [%s] %s:%d Failed to retrieve virtual device data from resource path=%@", &v4, 0x26u);
    }
  }

  OUTLINED_FUNCTION_3_29();
}

- (void)newVirtualHardwareForDevice:(void *)a1 .cold.4(void *a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v4 = VRTraceErrorLogLevelToCSTR();
    v5 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      v7 = 136315650;
      v8 = v4;
      OUTLINED_FUNCTION_0();
      v9 = 198;
      OUTLINED_FUNCTION_26(&dword_1DB56E000, v5, v6, " [%s] %s:%d Failed to retrieve virtual device resource path from bundle", &v7);
    }
  }

  *a2 = 0;
  *a1 = 0;
}

- (void)newVirtualHardwareForDevice:(void *)a1 .cold.5(void *a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v4 = VRTraceErrorLogLevelToCSTR();
    v5 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      v7 = 136315650;
      v8 = v4;
      OUTLINED_FUNCTION_0();
      v9 = 195;
      OUTLINED_FUNCTION_26(&dword_1DB56E000, v5, v6, " [%s] %s:%d Failed to allocate hardware dictionary", &v7);
    }
  }

  *a2 = 0;
  *a1 = 0;
}

@end