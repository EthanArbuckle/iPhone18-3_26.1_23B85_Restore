@interface ASEProcessingT0
- (ASEProcessingT0)initWithConfig:(id *)config aseProcessing:(id)processing productType:(unsigned int)type;
- (int64_t)processFrameWithInput:(__IOSurface *)input Measurement:(id *)measurement Output:(id *)output;
- (int64_t)processFrameWithInput:(__IOSurface *)input Measurement:(id *)measurement callback:(id)callback;
- (int64_t)processFrameWithInput:(__IOSurface *)input Measurement:(id *)measurement outputData:(id *)data;
- (void)DumpOutputHcus:(id)hcus;
- (void)configControlHeader_V2:(aseConfigurationUnitsV2_t *)v2;
- (void)dealloc;
- (void)digitalZoomSelectControl_V1:(aseConfigurationUnitsV1_t *)v1;
- (void)digitalZoomSelectControl_V2:(aseConfigurationUnitsV2_t *)v2;
- (void)printAseMeasurementOutput:(id *)output;
- (void)processPixelWithInput:(__IOSurface *)input Measurement:(id *)measurement controlUnit:(aseConfigurationUnitsV2_t *)unit;
- (void)processPixelWithInput_V1:(__IOSurface *)v1 Measurement:(id *)measurement Output:(aseConfigurationUnitsV1_t *)output;
- (void)processPixelWithInput_V2:(__IOSurface *)v2 Measurement:(id *)measurement Output:(aseConfigurationUnitsV2_t *)output;
- (void)processPixelWithMeasurement_V1:(__IOSurface *)v1 Measurement:(id *)measurement pixelControl:(aseConfigurationUnitsV1_t *)control;
- (void)processPixelWithMeasurement_V2:(__IOSurface *)v2 Measurement:(id *)measurement Output:(aseConfigurationUnitsV2_t *)output;
- (void)processPixelWithPixelControl_V1:(__IOSurface *)v1 Output:(aseConfigurationUnitsV1_t *)output;
- (void)processPixelWithPixelControl_V2:(__IOSurface *)v2 Output:(aseConfigurationUnitsV2_t *)output;
@end

@implementation ASEProcessingT0

- (ASEProcessingT0)initWithConfig:(id *)config aseProcessing:(id)processing productType:(unsigned int)type
{
  v35 = *MEMORY[0x277D85DE8];
  processingCopy = processing;
  if (logLevel >= 4 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v32 = "[ASEProcessingT0 initWithConfig:aseProcessing:productType:]";
    v33 = 2048;
    selfCopy = config;
    _os_log_impl(&dword_23D3F2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.50.3] ++ %s : config=%p\n", buf, 0x16u);
  }

  if (config)
  {
    v28.receiver = self;
    v28.super_class = ASEProcessingT0;
    v9 = [(ASEProcessingT0 *)&v28 init];
    self = v9;
    if (v9)
    {
      *&v9->_aseProcessingType = 0x50000000000;
      v9->_inputHeight = 720;
      [processingCopy enhancementStrength];
      self->_enhancementStrength = v10;
      self->_destinationWidth = [processingCopy destinationWidth];
      self->_destinationHeight = [processingCopy destinationHeight];
      self->_inputType = [processingCopy inputType];
      var0 = config->var0;
      self->_asePlatform = 1668903027;
      self->_aseProcessingVersion = var0;
      *entry = 0;
      cf = 0;
      v12 = *MEMORY[0x277CBECE8];
      ServiceObject = IOSurfaceAcceleratorCreate();
      if (ServiceObject || (ServiceObject = IOSurfaceAcceleratorGetServiceObject()) != 0)
      {
        intValue = ServiceObject;
      }

      else
      {
        v25 = IORegistryEntrySearchCFProperty(entry[1], "IOService", @"IOSurfaceAcceleratorCapabilitiesDict", 0, 0);
        if (v25)
        {
          v26 = v25;
          v27 = [v26 objectForKeyedSubscript:@"IOSurfaceAcceleratorASEApiVersion"];
          intValue = [v27 intValue];
          CFRelease(v26);
        }

        else
        {
          intValue = -536870212;
        }
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v32 = "int getASECapability(void)";
        v33 = 1024;
        LODWORD(selfCopy) = intValue;
        _os_log_impl(&dword_23D3F2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.50.3] ++ %s: ASEApiVer=%d\n", buf, 0x12u);
      }

      if (cf)
      {
        CFRelease(cf);
      }

      if (intValue == 2)
      {
        v15 = 1668903028;
      }

      else
      {
        v15 = 1668903027;
      }

      self->_asePlatform = v15;
      self->_productType = type;
      if ((isT1OrNewer(type) & 1) == 0)
      {
        self->_aseControlUnit = malloc_type_malloc(0x1050uLL, 0x1000040B51FC2CFuLL);
      }

      self->_aseProcessingType = config->var1;
      if (config->var3)
      {
        var2 = config->var2;
        if (var2)
        {
          self->_inputWidth = var2;
          self->_inputHeight = config->var3;
        }
      }

      *&self->_noiseMeterStepSize = 0x100000004;
      *&self->_FG_count = 0;
      *&self->_prev_H1_7 = 0;
      self->_prev_ratio_2D_1D = 0;
      v17 = dispatch_queue_create("ASE Schedule Queue", 0);
      scheduleQueue = self->_scheduleQueue;
      self->_scheduleQueue = v17;

      v19 = dispatch_queue_create("ASE Completion Queue", 0);
      completionQueue = self->_completionQueue;
      self->_completionQueue = v19;

      v21 = dispatch_semaphore_create(3);
      scheduleSemaphone = self->_scheduleSemaphone;
      self->_scheduleSemaphone = v21;

      self->_numberOfRequestedFrames = 0;
      self->_numberOfScheduledFrames = 0;
      self->_numberOfProcessedFrames = 0;
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23D3F2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.50.3] Assertion: ((void*)0) == config failed in /Library/Caches/com.apple.xbs/Sources/ASEFramework/ASEProcessingT0.m at line 301 goto EXIT\n", buf, 2u);
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v32 = "[ASEProcessingT0 initWithConfig:aseProcessing:productType:]";
      v33 = 2048;
      selfCopy = 0;
      _os_log_impl(&dword_23D3F2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.50.3] %s : config=%p", buf, 0x16u);
    }
  }

  if (logLevel >= 4 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v32 = "[ASEProcessingT0 initWithConfig:aseProcessing:productType:]";
    v33 = 2048;
    selfCopy = self;
    _os_log_impl(&dword_23D3F2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.50.3] -- %s : instance=%p\n", buf, 0x16u);
  }

  v23 = *MEMORY[0x277D85DE8];
  return self;
}

- (void)dealloc
{
  v11 = *MEMORY[0x277D85DE8];
  aseControlUnit = self->_aseControlUnit;
  if (aseControlUnit)
  {
    free(aseControlUnit);
    self->_aseControlUnit = 0;
  }

  scheduleQueue = self->_scheduleQueue;
  self->_scheduleQueue = 0;

  completionQueue = self->_completionQueue;
  self->_completionQueue = 0;

  scheduleSemaphone = self->_scheduleSemaphone;
  self->_scheduleSemaphone = 0;

  if (logLevel >= 4 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v10 = "[ASEProcessingT0 dealloc]";
    _os_log_impl(&dword_23D3F2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.50.3] --  %s \n", buf, 0xCu);
  }

  v8.receiver = self;
  v8.super_class = ASEProcessingT0;
  [(ASEProcessingT0 *)&v8 dealloc];
  v7 = *MEMORY[0x277D85DE8];
}

- (void)DumpOutputHcus:(id)hcus
{
  v49 = *MEMORY[0x277D85DE8];
  hcusCopy = hcus;
  bytes = [hcusCopy bytes];
  if (dumpOutputHcu)
  {
    v5 = bytes;
    if (logLevel >= 3 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v6 = *v5;
      v7 = v5[1];
      *buf = 136315650;
      v32 = "[ASEProcessingT0 DumpOutputHcus:]";
      v33 = 1024;
      v34 = v6;
      v35 = 1024;
      v36 = v7;
      _os_log_impl(&dword_23D3F2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.50.3]     %s: hcuHeader: hcuCount = %d, hcuSize = %d\n", buf, 0x18u);
    }

    if (*v5)
    {
      v8 = 0;
      v30 = 0;
      v9 = (v5 + 2);
      v10 = MEMORY[0x277D86220];
      while (1)
      {
        if (logLevel >= 3 && os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          v12 = *v9;
          v11 = v9[1];
          *buf = 136316930;
          v32 = "[ASEProcessingT0 DumpOutputHcus:]";
          v33 = 1024;
          v34 = v8;
          v35 = 1024;
          v36 = v11;
          v37 = 1024;
          v38 = v12;
          v39 = 1024;
          v40 = HIBYTE(v12);
          v41 = 1024;
          v42 = BYTE2(v12);
          v43 = 1024;
          v44 = BYTE1(v12);
          v45 = 1024;
          v46 = v12;
          _os_log_impl(&dword_23D3F2000, v10, OS_LOG_TYPE_DEFAULT, " [1.50.3]     %s: entryHeader[%d]: hcuSize = %d, hcuType = 0x%x ('%c%c%c%c')\n", buf, 0x36u);
        }

        v13 = v9 + 2;
        v14 = *v9;
        if (*v9 > 1718772078)
        {
          switch(v14)
          {
            case 0x6672616Fu:
              v13 = v9 + 7;
              break;
            case 0x66726170u:
              v13 = v9 + 74;
              break;
            case 0x66726171u:
              v13 = v9 + 17;
              break;
            default:
LABEL_21:
              if (logLevel >= 3 && os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
              {
                v15 = *v9;
                *buf = 136316418;
                v32 = "[ASEProcessingT0 DumpOutputHcus:]";
                v33 = 1024;
                v34 = v15;
                v35 = 1024;
                v36 = HIBYTE(v15);
                v37 = 1024;
                v38 = BYTE2(v15);
                v39 = 1024;
                v40 = BYTE1(v15);
                v41 = 1024;
                v42 = v15;
                _os_log_impl(&dword_23D3F2000, v10, OS_LOG_TYPE_DEFAULT, " [1.50.3]     %s: ERROR: Unsupported HCU!  hcuType = 0x%x ('%c%c%c%c')\n", buf, 0x2Au);
              }

              break;
          }
        }

        else
        {
          switch(v14)
          {
            case 0x61736573u:
              v30 = v9 + 2;
              v13 = v9 + 14;
              break;
            case 0x6672616Du:
              v13 = v9 + 144;
              break;
            case 0x6672616Eu:
              v13 = v9 + 3;
              break;
            default:
              goto LABEL_21;
          }
        }

        ++v8;
        v9 = v13;
        if (v8 >= *v5)
        {
          goto LABEL_29;
        }
      }
    }

    v30 = 0;
LABEL_29:
    if ((dumpOutputHcu & 2) != 0 && v30 && logLevel >= 3)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v32 = "[ASEProcessingT0 DumpOutputHcus:]";
        _os_log_impl(&dword_23D3F2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.50.3]     %s: -----------------------------------------------\n", buf, 0xCu);
      }

      if (logLevel >= 3)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          v16 = v30[1];
          v17 = *v30 & 0x7FF;
          v18 = (*v30 >> 11) & 0x7FF;
          v19 = v30[2];
          v20 = v30[3];
          *buf = 136317186;
          v32 = "[ASEProcessingT0 DumpOutputHcus:]";
          v33 = 1024;
          v34 = v17;
          v35 = 1024;
          v36 = v18;
          v37 = 1024;
          v38 = v16 & 0x7FF;
          v39 = 1024;
          v40 = (v16 >> 11) & 0x7FF;
          v41 = 1024;
          v42 = v19 & 0x7FF;
          v43 = 1024;
          v44 = (v19 >> 11) & 0x7FF;
          v45 = 1024;
          v46 = v20 & 0x7FF;
          v47 = 1024;
          v48 = (v20 >> 11) & 0x7FF;
          _os_log_impl(&dword_23D3F2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.50.3]     %s: ASELumaBlendConfig: lumaVal : { { %d, %d }, { %d, %d }, { %d, %d }, { %d, %d } }\n", buf, 0x3Cu);
        }

        if (logLevel >= 3)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            v21 = v30[4];
            v22 = v30[5];
            v23 = v30[6];
            v24 = v30[7];
            *buf = 136317186;
            v32 = "[ASEProcessingT0 DumpOutputHcus:]";
            v33 = 1024;
            v34 = v21 & 0xFFF;
            v35 = 1024;
            v36 = (v21 >> 12) & 0xFFF;
            v37 = 1024;
            v38 = v22 & 0xFFF;
            v39 = 1024;
            v40 = (v22 >> 12) & 0xFFF;
            v41 = 1024;
            v42 = v23 & 0xFFF;
            v43 = 1024;
            v44 = (v23 >> 12) & 0xFFF;
            v45 = 1024;
            v46 = v24 & 0xFFF;
            v47 = 1024;
            v48 = (v24 >> 12) & 0xFFF;
            _os_log_impl(&dword_23D3F2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.50.3]     %s: ASELumaBlendConfig: lumaThresh : { { %d, %d }, { %d, %d }, { %d, %d }, { %d, %d } }\n", buf, 0x3Cu);
          }

          if (logLevel >= 3 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            v25 = v30[8];
            v26 = v30[9];
            v27 = v30[10];
            v28 = v30[11];
            *buf = 136317186;
            v32 = "[ASEProcessingT0 DumpOutputHcus:]";
            v33 = 1024;
            v34 = v25 << 21 >> 21;
            v35 = 1024;
            v36 = v25 << 10 >> 21;
            v37 = 1024;
            v38 = v26 << 21 >> 21;
            v39 = 1024;
            v40 = v26 << 10 >> 21;
            v41 = 1024;
            v42 = v27 << 21 >> 21;
            v43 = 1024;
            v44 = v27 << 10 >> 21;
            v45 = 1024;
            v46 = v28 << 21 >> 21;
            v47 = 1024;
            v48 = v28 << 10 >> 21;
            _os_log_impl(&dword_23D3F2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.50.3]     %s: ASELumaBlendConfig: lumaSlope : { { %d, %d }, { %d, %d }, { %d, %d }, { %d, %d } }\n", buf, 0x3Cu);
          }
        }
      }
    }
  }

  v29 = *MEMORY[0x277D85DE8];
}

- (int64_t)processFrameWithInput:(__IOSurface *)input Measurement:(id *)measurement Output:(id *)output
{
  v25[49] = *MEMORY[0x277D85DE8];
  if (logLevel >= 4)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(v25[0]) = 136315906;
      *(v25 + 4) = "[ASEProcessingT0 processFrameWithInput:Measurement:Output:]";
      WORD2(v25[1]) = 2048;
      *(&v25[1] + 6) = input;
      HIWORD(v25[2]) = 2048;
      v25[3] = measurement;
      LOWORD(v25[4]) = 2048;
      *(&v25[4] + 2) = output;
      _os_log_impl(&dword_23D3F2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.50.3] ++  %s : input=%p, aseMeasurementOutput=%p, aseFrameProcessingControl=%p\n", v25, 0x2Au);
    }

    if (logLevel >= 4 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      aseProcessingType = self->_aseProcessingType;
      v10 = getASEProcessingType(aseProcessingType);
      inputWidth = self->_inputWidth;
      inputHeight = self->_inputHeight;
      enhancementStrength = self->_enhancementStrength;
      LODWORD(v25[0]) = 136316418;
      *(v25 + 4) = "[ASEProcessingT0 processFrameWithInput:Measurement:Output:]";
      WORD2(v25[1]) = 1024;
      *(&v25[1] + 6) = aseProcessingType;
      WORD1(v25[2]) = 2080;
      *(&v25[2] + 4) = v10;
      WORD2(v25[3]) = 1024;
      *(&v25[3] + 6) = inputWidth;
      WORD1(v25[4]) = 1024;
      HIDWORD(v25[4]) = inputHeight;
      LOWORD(v25[5]) = 2048;
      *(&v25[5] + 2) = enhancementStrength;
      _os_log_impl(&dword_23D3F2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.50.3]     %s : aseProcessingType=%d [%s], width=%d, height=%d, strength=%f\n", v25, 0x32u);
    }
  }

  if (self->_aseProcessingType - 9 <= 0xFFFFFFF7)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v25[0]) = 0;
      _os_log_impl(&dword_23D3F2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.50.3] Assertion: _aseProcessingType < kASEProcessingTypeLivePhoto || _aseProcessingType > kASEProcessingTypeEnhanceOnly failed in /Library/Caches/com.apple.xbs/Sources/ASEFramework/ASEProcessingT0.m at line 531 goto EXIT\n", v25, 2u);
    }

    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_19;
    }

    v14 = self->_enhancementStrength;
    v15 = self->_aseProcessingType;
    v16 = self->_inputWidth;
    v17 = self->_inputHeight;
    LODWORD(v25[0]) = 136316162;
    *(v25 + 4) = "[ASEProcessingT0 processFrameWithInput:Measurement:Output:]";
    WORD2(v25[1]) = 1024;
    *(&v25[1] + 6) = v15;
    WORD1(v25[2]) = 2048;
    *(&v25[2] + 4) = v14;
    WORD2(v25[3]) = 1024;
    *(&v25[3] + 6) = v16;
    WORD1(v25[4]) = 1024;
    HIDWORD(v25[4]) = v17;
    v18 = MEMORY[0x277D86220];
    v19 = " [1.50.3] %s : unknownProcessingType=%d, strength=%f, wxh=%dx%d";
    v20 = 40;
    goto LABEL_18;
  }

  if (!output)
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
LABEL_19:
      v22 = -18002;
      goto LABEL_20;
    }

    LODWORD(v25[0]) = 136315906;
    *(v25 + 4) = "[ASEProcessingT0 processFrameWithInput:Measurement:Output:]";
    WORD2(v25[1]) = 2048;
    *(&v25[1] + 6) = input;
    HIWORD(v25[2]) = 2048;
    v25[3] = measurement;
    LOWORD(v25[4]) = 2048;
    *(&v25[4] + 2) = 0;
    v18 = MEMORY[0x277D86220];
    v19 = " [1.50.3] %s : input=%p, aseMeasurementOutput=%p, aseFrameProcessingControl=%p";
    v20 = 42;
LABEL_18:
    _os_log_impl(&dword_23D3F2000, v18, OS_LOG_TYPE_DEFAULT, v19, v25, v20);
    goto LABEL_19;
  }

  *(&v25[46] + 4) = 0;
  *(&v25[42] + 4) = 0u;
  *(&v25[44] + 4) = 0u;
  *(&v25[38] + 4) = 0u;
  *(&v25[40] + 4) = 0u;
  *(&v25[34] + 4) = 0u;
  *(&v25[36] + 4) = 0u;
  *(&v25[32] + 4) = 0u;
  *(&v25[30] + 4) = 0u;
  *(&v25[28] + 4) = 0u;
  *(&v25[26] + 4) = 0u;
  *(&v25[24] + 4) = 0u;
  *(&v25[22] + 4) = 0u;
  *(&v25[20] + 4) = 0u;
  *(&v25[18] + 4) = 0u;
  *(&v25[16] + 4) = 0u;
  *(&v25[14] + 4) = 0u;
  *(&v25[12] + 4) = 0u;
  *(&v25[10] + 4) = 0u;
  *(&v25[8] + 4) = 0u;
  *(&v25[6] + 4) = 0u;
  *(&v25[4] + 4) = 0u;
  *(&v25[2] + 4) = 0u;
  *(v25 + 4) = 0u;
  LODWORD(v25[0]) = 1;
  if (measurement)
  {
    memcpy(v25, measurement, 0x17CuLL);
  }

  v21 = &self->_aseControlUnit[self->_numberOfRequestedFrames & 3];
  bzero(v21, 0x414uLL);
  updateConfigsPerFrame();
  ++self->_numberOfRequestedFrames;
  [(ASEProcessingT0 *)self processPixelWithInput:input Measurement:v25 controlUnit:v21];
  memcpy(output, &v21->var2, sizeof($CED3C016A32710402726D8BDC2341DB0));
  ++self->_numberOfProcessedFrames;
  v22 = -18000;
LABEL_20:
  if (logLevel >= 4 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(v25[0]) = 136315394;
    *(v25 + 4) = "[ASEProcessingT0 processFrameWithInput:Measurement:Output:]";
    WORD2(v25[1]) = 2048;
    *(&v25[1] + 6) = v22;
    _os_log_impl(&dword_23D3F2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.50.3] -- %s : retVal=%ld\n", v25, 0x16u);
  }

  v23 = *MEMORY[0x277D85DE8];
  return v22;
}

- (int64_t)processFrameWithInput:(__IOSurface *)input Measurement:(id *)measurement outputData:(id *)data
{
  v32[49] = *MEMORY[0x277D85DE8];
  v9 = logLevel;
  if (logLevel >= 4)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(v32[0]) = 136315906;
      *(v32 + 4) = "[ASEProcessingT0 processFrameWithInput:Measurement:outputData:]";
      WORD2(v32[1]) = 2048;
      *(&v32[1] + 6) = input;
      HIWORD(v32[2]) = 2048;
      v32[3] = measurement;
      LOWORD(v32[4]) = 2048;
      *(&v32[4] + 2) = data;
      _os_log_impl(&dword_23D3F2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.50.3] ++  %s : input=%p, aseMeasurementOutput=%p, aseFrameProcessingControl=%p\n", v32, 0x2Au);
    }

    v9 = logLevel;
  }

  if (v9 >= 2)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      aseProcessingType = self->_aseProcessingType;
      v11 = getASEProcessingType(aseProcessingType);
      inputWidth = self->_inputWidth;
      inputHeight = self->_inputHeight;
      enhancementStrength = self->_enhancementStrength;
      destinationWidth = self->_destinationWidth;
      destinationHeight = self->_destinationHeight;
      v17 = "SDR";
      if (self->_inputType)
      {
        v17 = "HDR";
      }

      LODWORD(v32[0]) = 136317186;
      *(v32 + 4) = "[ASEProcessingT0 processFrameWithInput:Measurement:outputData:]";
      WORD2(v32[1]) = 1024;
      *(&v32[1] + 6) = aseProcessingType;
      WORD1(v32[2]) = 2080;
      *(&v32[2] + 4) = v11;
      WORD2(v32[3]) = 1024;
      *(&v32[3] + 6) = inputWidth;
      WORD1(v32[4]) = 1024;
      HIDWORD(v32[4]) = inputHeight;
      LOWORD(v32[5]) = 2048;
      *(&v32[5] + 2) = enhancementStrength;
      WORD1(v32[6]) = 1024;
      HIDWORD(v32[6]) = destinationWidth;
      LOWORD(v32[7]) = 1024;
      *(&v32[7] + 2) = destinationHeight;
      HIWORD(v32[7]) = 2080;
      v32[8] = v17;
      _os_log_impl(&dword_23D3F2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.50.3]     %s : aseProcessingType=%d [%s], width=%d, height=%d, strength=%f, destinationWidth=%d, destinationHeight=%d, inputType=%s\n", v32, 0x48u);
    }

    if (logLevel >= 2)
    {
      [ASEProcessing shouldEnhanceWidth:self->_inputWidth height:self->_inputHeight destinationWidth:self->_destinationWidth destinationHeight:self->_destinationHeight];
    }
  }

  if (self->_aseProcessingType - 9 <= 0xFFFFFFF7)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v32[0]) = 0;
      _os_log_impl(&dword_23D3F2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.50.3] Assertion: _aseProcessingType < kASEProcessingTypeLivePhoto || _aseProcessingType > kASEProcessingTypeEnhanceOnly failed in /Library/Caches/com.apple.xbs/Sources/ASEFramework/ASEProcessingT0.m at line 586 goto EXIT\n", v32, 2u);
    }

    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_24;
    }

    v18 = self->_enhancementStrength;
    v19 = self->_aseProcessingType;
    v20 = self->_inputWidth;
    v21 = self->_inputHeight;
    LODWORD(v32[0]) = 136316162;
    *(v32 + 4) = "[ASEProcessingT0 processFrameWithInput:Measurement:outputData:]";
    WORD2(v32[1]) = 1024;
    *(&v32[1] + 6) = v19;
    WORD1(v32[2]) = 2048;
    *(&v32[2] + 4) = v18;
    WORD2(v32[3]) = 1024;
    *(&v32[3] + 6) = v20;
    WORD1(v32[4]) = 1024;
    HIDWORD(v32[4]) = v21;
    v22 = MEMORY[0x277D86220];
    v23 = " [1.50.3] %s : unknownProcessingType=%d, strength=%f, wxh=%dx%d";
    v24 = 40;
    goto LABEL_23;
  }

  if (!data)
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
LABEL_24:
      v28 = -18002;
      goto LABEL_25;
    }

    LODWORD(v32[0]) = 136315906;
    *(v32 + 4) = "[ASEProcessingT0 processFrameWithInput:Measurement:outputData:]";
    WORD2(v32[1]) = 2048;
    *(&v32[1] + 6) = input;
    HIWORD(v32[2]) = 2048;
    v32[3] = measurement;
    LOWORD(v32[4]) = 2048;
    *(&v32[4] + 2) = 0;
    v22 = MEMORY[0x277D86220];
    v23 = " [1.50.3] %s : input=%p, aseMeasurementOutput=%p, aseFrameProcessingControl=%p";
    v24 = 42;
LABEL_23:
    _os_log_impl(&dword_23D3F2000, v22, OS_LOG_TYPE_DEFAULT, v23, v32, v24);
    goto LABEL_24;
  }

  *(&v32[46] + 4) = 0;
  *(&v32[42] + 4) = 0u;
  *(&v32[44] + 4) = 0u;
  *(&v32[38] + 4) = 0u;
  *(&v32[40] + 4) = 0u;
  *(&v32[34] + 4) = 0u;
  *(&v32[36] + 4) = 0u;
  *(&v32[32] + 4) = 0u;
  *(&v32[30] + 4) = 0u;
  *(&v32[28] + 4) = 0u;
  *(&v32[26] + 4) = 0u;
  *(&v32[24] + 4) = 0u;
  *(&v32[22] + 4) = 0u;
  *(&v32[20] + 4) = 0u;
  *(&v32[18] + 4) = 0u;
  *(&v32[16] + 4) = 0u;
  *(&v32[14] + 4) = 0u;
  *(&v32[12] + 4) = 0u;
  *(&v32[10] + 4) = 0u;
  *(&v32[8] + 4) = 0u;
  *(&v32[6] + 4) = 0u;
  *(&v32[4] + 4) = 0u;
  *(&v32[2] + 4) = 0u;
  *(v32 + 4) = 0u;
  LODWORD(v32[0]) = 1;
  if (measurement)
  {
    memcpy(v32, measurement, 0x17CuLL);
  }

  v25 = &self->_aseControlUnit[self->_numberOfRequestedFrames & 3];
  bzero(v25, 0x414uLL);
  updateConfigsPerFrame();
  ++self->_numberOfRequestedFrames;
  [(ASEProcessingT0 *)self processPixelWithInput:input Measurement:v32 controlUnit:v25];
  v26 = [MEMORY[0x277CBEA90] dataWithBytes:v25 length:1044];
  [(ASEProcessingT0 *)self DumpOutputHcus:v26];
  v27 = v26;
  *data = v26;
  ++self->_numberOfProcessedFrames;

  v28 = -18000;
LABEL_25:
  if (logLevel >= 4 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    numberOfProcessedFrames = self->_numberOfProcessedFrames;
    LODWORD(v32[0]) = 136315650;
    *(v32 + 4) = "[ASEProcessingT0 processFrameWithInput:Measurement:outputData:]";
    WORD2(v32[1]) = 2048;
    *(&v32[1] + 6) = numberOfProcessedFrames;
    HIWORD(v32[2]) = 2048;
    v32[3] = v28;
    _os_log_impl(&dword_23D3F2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.50.3] -- %s : frame=%ld, retVal=%ld\n", v32, 0x20u);
  }

  v30 = *MEMORY[0x277D85DE8];
  return v28;
}

- (int64_t)processFrameWithInput:(__IOSurface *)input Measurement:(id *)measurement callback:(id)callback
{
  v23 = *MEMORY[0x277D85DE8];
  callbackCopy = callback;
  if (logLevel >= 4 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v9 = MEMORY[0x23EEE0510](callbackCopy);
    *buf = 136315906;
    *&buf[4] = "[ASEProcessingT0 processFrameWithInput:Measurement:callback:]";
    *&buf[12] = 2048;
    *&buf[14] = input;
    *&buf[22] = 2048;
    *&buf[24] = measurement;
    *&buf[32] = 2048;
    *&buf[34] = v9;
    _os_log_impl(&dword_23D3F2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.50.3] ++  %s : input=%p, aseMeasurementOutput=%p, completionCallback=%p\n", buf, 0x2Au);
  }

  if (callbackCopy)
  {
    memset(buf, 0, sizeof(buf));
    if (measurement)
    {
      var0 = measurement->var0;
      memcpy(buf, &measurement->var1, sizeof(buf));
    }

    else
    {
      var0 = 1;
    }

    v12 = MEMORY[0x23EEE0510](callbackCopy);
    ++self->_numberOfRequestedFrames;
    scheduleQueue = self->_scheduleQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __62__ASEProcessingT0_processFrameWithInput_Measurement_callback___block_invoke;
    block[3] = &unk_278BCFCE0;
    block[4] = self;
    inputCopy = input;
    v20 = var0;
    memcpy(v21, buf, sizeof(v21));
    v18 = v12;
    v14 = v12;
    dispatch_async(scheduleQueue, block);

    v11 = -18000;
  }

  else
  {
    v11 = -18002;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136316162;
      *&buf[4] = "[ASEProcessingT0 processFrameWithInput:Measurement:callback:]";
      *&buf[12] = 2048;
      *&buf[14] = -18002;
      *&buf[22] = 2048;
      *&buf[24] = input;
      *&buf[32] = 2048;
      *&buf[34] = measurement;
      *&buf[42] = 2048;
      *&buf[44] = 0;
      _os_log_impl(&dword_23D3F2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.50.3] %s : bad argument, retVal=%ld, input=%p, aseMeasurementOutput=%p, completionCallback=%p\n", buf, 0x34u);
    }
  }

  if (logLevel >= 4 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *&buf[4] = "[ASEProcessingT0 processFrameWithInput:Measurement:callback:]";
    *&buf[12] = 2048;
    *&buf[14] = v11;
    _os_log_impl(&dword_23D3F2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.50.3] -- %s : retVal=%ld\n", buf, 0x16u);
  }

  v15 = *MEMORY[0x277D85DE8];
  return v11;
}

void __62__ASEProcessingT0_processFrameWithInput_Measurement_callback___block_invoke(uint64_t a1)
{
  dispatch_semaphore_wait(*(*(a1 + 32) + 72), 0xFFFFFFFFFFFFFFFFLL);
  v2 = (*(*(a1 + 32) + 128) + 1044 * (*(*(a1 + 32) + 8) & 3));
  bzero(v2, 0x414uLL);
  updateConfigsPerFrame();
  ++*(*(a1 + 32) + 8);
  [*(a1 + 32) processPixelWithInput:*(a1 + 48) Measurement:a1 + 56 controlUnit:v2];
  ++*(*(a1 + 32) + 24);
  v3 = *(*(a1 + 32) + 64);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __62__ASEProcessingT0_processFrameWithInput_Measurement_callback___block_invoke_2;
  v4[3] = &unk_278BCFCB8;
  v5 = *(a1 + 40);
  v6 = v2;
  dispatch_async(v3, v4);
  dispatch_semaphore_signal(*(*(a1 + 32) + 72));
}

- (void)processPixelWithInput:(__IOSurface *)input Measurement:(id *)measurement controlUnit:(aseConfigurationUnitsV2_t *)unit
{
  v28 = *MEMORY[0x277D85DE8];
  if (logLevel >= 4 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v21 = 136315906;
    *v22 = "[ASEProcessingT0 processPixelWithInput:Measurement:controlUnit:]";
    *&v22[8] = 2048;
    inputCopy = input;
    v24 = 2048;
    measurementCopy = measurement;
    v26 = 2048;
    unitCopy = unit;
    _os_log_impl(&dword_23D3F2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.50.3] ++  %s : input=%p, aseMeasurementOutput=%p, aseControlUnit=%p\n", &v21, 0x2Au);
  }

  unit->var2.var0.var0.var0.var0 = self->_aseProcessingVersion;
  unit->var2.var0.var0.var0.var1 = 556;
  unit->var1 = 0x2386672616DLL;
  asePlatform = self->_asePlatform;
  if (asePlatform == 1668903028)
  {
    [(ASEProcessingT0 *)self processPixelWithInput_V2:input Measurement:measurement Output:unit];
    unit->var0 = 0x3AC00000005;
    InputType = getInputType(self->_inputType);
    TransferFunction = getTransferFunction(input);
    if (shouldApplyGraphicSettings(InputType, TransferFunction))
    {
      unit->var0 = vadd_s32(unit->var0, 0x3000000001);
    }

    if (logLevel >= 3)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
LABEL_18:
        var0 = unit->var0.var0;
        var1 = unit->var0.var1;
        v21 = 67109376;
        *v22 = var0;
        *&v22[4] = 1024;
        *&v22[6] = var1;
        v16 = MEMORY[0x277D86220];
        v17 = " [1.50.3] aseControlUnit->hcuCount %d, aseControlUnit->hcuSize %d, \n";
        v18 = 14;
LABEL_22:
        _os_log_impl(&dword_23D3F2000, v16, OS_LOG_TYPE_DEFAULT, v17, &v21, v18);
      }

LABEL_23:
      if (logLevel >= 4 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        v21 = 136315138;
        *v22 = "[ASEProcessingT0 processPixelWithInput:Measurement:controlUnit:]";
        _os_log_impl(&dword_23D3F2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.50.3] --  %s \n", &v21, 0xCu);
      }
    }
  }

  else
  {
    if (asePlatform != 1668903027)
    {
      if (logLevel < 3)
      {
        goto LABEL_26;
      }

      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_23;
      }

      v19 = self->_asePlatform;
      v21 = 67109120;
      *v22 = v19;
      v16 = MEMORY[0x277D86220];
      v17 = " [1.50.3] ERROR: Not supported, _asePlatform = %d\n";
      v18 = 8;
      goto LABEL_22;
    }

    [(ASEProcessingT0 *)self processPixelWithInput_V1:input Measurement:measurement Output:unit];
    unit->var0 = 0x23800000001;
    v10 = getInputType(self->_inputType);
    v11 = getTransferFunction(input);
    if (shouldApplyGraphicSettings(v10, v11))
    {
      unit->var0 = vadd_s32(unit->var0, 0x3000000001);
    }

    if (logLevel >= 3)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        v21 = 134218240;
        *v22 = 556;
        *&v22[8] = 2048;
        inputCopy = 48;
        _os_log_impl(&dword_23D3F2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.50.3] aseFrameProcessingControl->control.size (V1) is %lu, ASELumaBlendConfig is %lu\n", &v21, 0x16u);
      }

      if (logLevel >= 3)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_18;
        }

        goto LABEL_23;
      }
    }
  }

LABEL_26:
  v20 = *MEMORY[0x277D85DE8];
}

- (void)processPixelWithInput_V1:(__IOSurface *)v1 Measurement:(id *)measurement Output:(aseConfigurationUnitsV1_t *)output
{
  aseProcessingType = self->_aseProcessingType;
  if (aseProcessingType > 7)
  {
    goto LABEL_10;
  }

  v7 = 1 << aseProcessingType;
  if ((v7 & 0xE6) != 0)
  {
    output->var2.var0.var0.var0.var2 = 0;

    [(ASEProcessingT0 *)self processPixelWithPixelControl_V1:v1 Output:output];
    return;
  }

  if ((v7 & 0x18) == 0)
  {
LABEL_10:
    [ASEProcessingT0 processPixelWithInput_V1:Measurement:Output:];
  }

  output->var2.var0.var0.var0.var2 = 1;

  [(ASEProcessingT0 *)self processPixelWithMeasurement_V1:v1 Measurement:measurement pixelControl:?];
}

- (void)processPixelWithPixelControl_V1:(__IOSurface *)v1 Output:(aseConfigurationUnitsV1_t *)output
{
  v17 = *MEMORY[0x277D85DE8];
  p_var3 = &output->var2.var0.var0.var0.var3;
  if (logLevel >= 4 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v13 = 136315394;
    v14 = "[ASEProcessingT0 processPixelWithPixelControl_V1:Output:]";
    v15 = 2048;
    v16 = p_var3;
    _os_log_impl(&dword_23D3F2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.50.3] ++  %s : pixelControl=%p\n", &v13, 0x16u);
  }

  [(ASEProcessingT0 *)self configControlHeader_V1:output];
  aseProcessingType = self->_aseProcessingType;
  if (aseProcessingType > 4)
  {
    if ((aseProcessingType - 5) < 2 || aseProcessingType == 7)
    {
      v9 = &FixedSettingGraphics;
LABEL_15:
      memcpy(p_var3, v9, sizeof($E4C3A545081BFD4720EF2C1A74D800C2));
      goto LABEL_16;
    }

    goto LABEL_20;
  }

  if (aseProcessingType == 1)
  {
    v9 = &FixedSettingLivePhoto;
    goto LABEL_15;
  }

  if (aseProcessingType != 2)
  {
LABEL_20:
    [ASEProcessingT0 processPixelWithPixelControl_V1:Output:];
  }

  enhancementStrength = self->_enhancementStrength;
  LODWORD(v7) = 1.0;
  if (enhancementStrength > 1.0 || (v7 = 0.0, enhancementStrength < 0.0))
  {
    self->_enhancementStrength = *&v7;
  }

  [(ASEProcessingT0 *)self digitalZoomSelectControl_V1:output, v7];
LABEL_16:
  v11 = unk_27E2BDCC0;
  *output->var4.var0 = lumaBlend_FixedSettingGraphics_V1;
  *output->var4.var1 = v11;
  *output->var4.var2 = xmmword_27E2BDCD0;
  if (logLevel >= 4 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v13 = 136315138;
    v14 = "[ASEProcessingT0 processPixelWithPixelControl_V1:Output:]";
    _os_log_impl(&dword_23D3F2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.50.3] --  %s \n", &v13, 0xCu);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)digitalZoomSelectControl_V1:(aseConfigurationUnitsV1_t *)v1
{
  enhancementStrength = self->_enhancementStrength;
  if (enhancementStrength == 0.0)
  {
    v5 = &FixedSettingDigitalZoom_NoEnh;
  }

  else
  {
    v6 = enhancementStrength;
    if (v6 <= 0.051)
    {
      v5 = &FixedSettingDigitalZoom_weak00;
    }

    else if (v6 <= 0.101)
    {
      v5 = &FixedSettingDigitalZoom_weak01;
    }

    else if (v6 <= 0.151)
    {
      v5 = &FixedSettingDigitalZoom_weak02;
    }

    else if (v6 <= 0.201)
    {
      v5 = &FixedSettingDigitalZoom_weak05;
    }

    else if (v6 <= 0.251)
    {
      v5 = &FixedSettingDigitalZoom_weak08;
    }

    else if (v6 <= 0.301)
    {
      v5 = &FixedSettingDigitalZoom_weak10;
    }

    else if (v6 <= 0.351)
    {
      v5 = &FixedSettingDigitalZoom_weak12;
    }

    else if (v6 <= 0.401)
    {
      v5 = &FixedSettingDigitalZoom_weak15;
    }

    else if (v6 <= 0.451)
    {
      v5 = &FixedSettingDigitalZoom_weak18;
    }

    else if (v6 <= 0.501)
    {
      v5 = &FixedSettingDigitalZoom;
    }

    else if (v6 <= 0.551)
    {
      v5 = &FixedSettingDigitalZoom_strong02;
    }

    else if (v6 <= 0.601)
    {
      v5 = &FixedSettingDigitalZoom_strong05;
    }

    else if (v6 <= 0.651)
    {
      v5 = &FixedSettingDigitalZoom_strong06;
    }

    else if (v6 <= 0.701)
    {
      v5 = &FixedSettingDigitalZoom_strong08;
    }

    else if (v6 <= 0.751)
    {
      v5 = &FixedSettingDigitalZoom_strong10;
    }

    else if (v6 <= 0.801)
    {
      v5 = &FixedSettingDigitalZoom_strong12;
    }

    else if (v6 <= 0.851)
    {
      v5 = &FixedSettingDigitalZoom_strong15;
    }

    else if (v6 <= 0.901)
    {
      v5 = &FixedSettingDigitalZoom_strong18;
    }

    else if (v6 <= 0.951)
    {
      v5 = &FixedSettingDigitalZoom_strong2;
    }

    else
    {
      v5 = &FixedSettingDigitalZoom_FullEnh;
    }
  }

  memcpy(&v1->var2.var0.var0.var0.var3, v5, sizeof(v1->var2.var0.var0.var0.var3));
  v7 = unk_27E2BDCF0;
  *v1->var4.var0 = lumaBlend_FixedSettingDigitalZoom_V1;
  *v1->var4.var1 = v7;
  *v1->var4.var2 = xmmword_27E2BDD00;
}

- (void)processPixelWithMeasurement_V1:(__IOSurface *)v1 Measurement:(id *)measurement pixelControl:(aseConfigurationUnitsV1_t *)control
{
  *&v22[11] = *MEMORY[0x277D85DE8];
  if (logLevel >= 4 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315906;
    v18 = "[ASEProcessingT0 processPixelWithMeasurement_V1:Measurement:pixelControl:]";
    v19 = 2048;
    *v20 = v1;
    *&v20[8] = 2048;
    *v21 = measurement;
    *&v21[8] = 2048;
    *v22 = control;
    _os_log_impl(&dword_23D3F2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.50.3] ++  %s : input=%p, aseMeasurementOutput=%p, aseControlUnit=%p\n", buf, 0x2Au);
  }

  [(ASEProcessingT0 *)self printAseMeasurementOutput:measurement];
  [(ASEProcessingT0 *)self configControlHeader_V1:control];
  InputType = getInputType(self->_inputType);
  TransferFunction = getTransferFunction(v1);
  calculate_control_setting_V1(measurement, control, self->_inputWidth, self->_inputHeight, self->_numberOfProcessedFrames, &self->_noiseMeterStepSize, &self->_FD_state, &self->_FG_count, &self->_NFG_count, &self->_prev_H1_7, &self->_prev_V1_7, &self->_prev_ratio_2D_1D, self->_productType, self->_destinationWidth, self->_destinationHeight, InputType, TransferFunction);
  if (logLevel >= 4 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    destinationWidth = self->_destinationWidth;
    destinationHeight = self->_destinationHeight;
    v13 = "SDR";
    if (InputType)
    {
      v13 = "HDR";
    }

    v14 = "Unknown";
    *buf = 136316162;
    v18 = "[ASEProcessingT0 processPixelWithMeasurement_V1:Measurement:pixelControl:]";
    if (TransferFunction == 16)
    {
      v14 = "PQ";
    }

    v19 = 1024;
    *v20 = destinationWidth;
    v15 = "sRGB";
    *&v20[4] = 1024;
    *&v20[6] = destinationHeight;
    *v21 = 2080;
    if (TransferFunction != 13)
    {
      v15 = v14;
    }

    *&v21[2] = v13;
    v22[0] = 2080;
    *&v22[1] = v15;
    _os_log_impl(&dword_23D3F2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.50.3] --  %s : _destinationWidth=%d, _destinationHeight=%d, inputType=%s, inputTransferFunction=%s\n", buf, 0x2Cu);
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)processPixelWithInput_V2:(__IOSurface *)v2 Measurement:(id *)measurement Output:(aseConfigurationUnitsV2_t *)output
{
  aseProcessingType = self->_aseProcessingType;
  if (aseProcessingType > 7)
  {
    goto LABEL_10;
  }

  v7 = 1 << aseProcessingType;
  if ((v7 & 0xE6) != 0)
  {
    output->var2.var0.var0.var0.var2 = 0;

    [(ASEProcessingT0 *)self processPixelWithPixelControl_V2:v2 Output:output];
    return;
  }

  if ((v7 & 0x18) == 0)
  {
LABEL_10:
    [ASEProcessingT0 processPixelWithInput_V2:Measurement:Output:];
  }

  output->var2.var0.var0.var0.var2 = 1;

  [(ASEProcessingT0 *)self processPixelWithMeasurement_V2:v2 Measurement:measurement Output:?];
}

- (void)configControlHeader_V2:(aseConfigurationUnitsV2_t *)v2
{
  v2->var3 = 0x46672616ELL;
  v2->var5 = 0x146672616FLL;
  v2->var7 = 0x12066726170;
  v2->var9 = 0x3C66726171;
  v2->var11 = 0x3061736573;
}

- (void)processPixelWithPixelControl_V2:(__IOSurface *)v2 Output:(aseConfigurationUnitsV2_t *)output
{
  v19 = *MEMORY[0x277D85DE8];
  if (logLevel >= 4 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v15 = 136315394;
    v16 = "[ASEProcessingT0 processPixelWithPixelControl_V2:Output:]";
    v17 = 2048;
    outputCopy = output;
    _os_log_impl(&dword_23D3F2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.50.3] ++  %s : aseControlUnit=%p\n", &v15, 0x16u);
  }

  [(ASEProcessingT0 *)self configControlHeader_V2:output];
  aseProcessingType = self->_aseProcessingType;
  if (aseProcessingType > 4)
  {
    if ((aseProcessingType - 5) < 2 || aseProcessingType == 7)
    {
      memcpy(&output->var2.var0.var0.var0.var3, &FixedSettingGraphics_V2, sizeof(output->var2.var0.var0.var0.var3));
      output->var4.var0 = 0;
      *&output->var6.var0.var0 = downSample_FixedSettingGraphics_V2;
      LODWORD(output->var6.var0.var4) = dword_27E2C6138;
      memcpy(&output->var8, &blendLogic_FixedSettingGraphics_V2, sizeof(output->var8));
      v8 = unk_27E2C626C;
      *&output->var10.var0.var0 = objectProtection_FixedSettingGraphics_V2;
      *&output->var10.var0.var4 = v8;
      *&output->var10.var1.var3 = xmmword_27E2C627C;
      *&output->var10.var2.var1 = *(&xmmword_27E2C627C + 12);
      p_var12 = &output->var12;
      v10 = &lumaBlend_FixedSettingGraphics_V2;
LABEL_15:
      v13 = v10[1];
      *p_var12->var0 = *v10;
      *p_var12->var1 = v13;
      *p_var12->var2 = v10[2];
      goto LABEL_16;
    }

    goto LABEL_20;
  }

  if (aseProcessingType == 1)
  {
    memcpy(&output->var2.var0.var0.var0.var3, &FixedSettingLivePhoto_V2, sizeof(output->var2.var0.var0.var0.var3));
    output->var4.var0 = 0;
    *&output->var6.var0.var0 = downSample_FixedSettingLivePhoto_V2;
    LODWORD(output->var6.var0.var4) = dword_27E2C11D0;
    memcpy(&output->var8, &blendLogic_FixedSettingLivePhoto_V2, sizeof(output->var8));
    v12 = unk_27E2C1304;
    *&output->var10.var0.var0 = objectProtection_FixedSettingLivePhoto_V2;
    *&output->var10.var0.var4 = v12;
    *&output->var10.var1.var3 = xmmword_27E2C1314;
    *&output->var10.var2.var1 = *(&xmmword_27E2C1314 + 12);
    p_var12 = &output->var12;
    v10 = &lumaBlend_FixedSettingLivePhoto_V2;
    goto LABEL_15;
  }

  if (aseProcessingType != 2)
  {
LABEL_20:
    [ASEProcessingT0 processPixelWithPixelControl_V2:Output:];
  }

  enhancementStrength = self->_enhancementStrength;
  LODWORD(v6) = 1.0;
  if (enhancementStrength > 1.0 || (v6 = 0.0, enhancementStrength < 0.0))
  {
    self->_enhancementStrength = *&v6;
  }

  [(ASEProcessingT0 *)self digitalZoomSelectControl_V2:output, v6];
LABEL_16:
  if (logLevel >= 4 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v15 = 136315138;
    v16 = "[ASEProcessingT0 processPixelWithPixelControl_V2:Output:]";
    _os_log_impl(&dword_23D3F2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.50.3] --  %s \n", &v15, 0xCu);
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)digitalZoomSelectControl_V2:(aseConfigurationUnitsV2_t *)v2
{
  v22 = *MEMORY[0x277D85DE8];
  if (logLevel >= 4 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    enhancementStrength = self->_enhancementStrength;
    v16 = 136315650;
    v17 = "[ASEProcessingT0 digitalZoomSelectControl_V2:]";
    v18 = 2048;
    v2Copy = v2;
    v20 = 2048;
    v21 = enhancementStrength;
    _os_log_impl(&dword_23D3F2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.50.3] ++  %s : aseControlUnit=%p, strength=%f\n", &v16, 0x20u);
  }

  [(ASEProcessingT0 *)self configControlHeader_V2:v2];
  v6 = self->_enhancementStrength;
  if (v6 == 0.0)
  {
    memcpy(&v2->var2.var0.var0.var0.var3, &FixedSettingDigitalZoom_NoEnh_V2, sizeof(v2->var2.var0.var0.var0.var3));
    v2->var4.var0 = 0;
    *&v2->var6.var0.var0 = downSample_FixedSettingDigitalZoom_NoEnh_V2;
    LODWORD(v2->var6.var0.var4) = dword_27E2C156C;
    memcpy(&v2->var8, &blendLogic_FixedSettingDigitalZoom_NoEnh_V2, sizeof(v2->var8));
    p_var10 = &v2->var10;
    v8 = &objectProtection_FixedSettingDigitalZoom_NoEnh_V2;
LABEL_44:
    v12 = v8[1];
    *&v2->var10.var0.var0 = *v8;
    *&v2->var10.var0.var4 = v12;
    *&v2->var10.var1.var3 = v8[2];
    *&p_var10->var2.var1 = *(v8 + 44);
    goto LABEL_45;
  }

  v9 = v6;
  if (v9 <= 0.051)
  {
    memcpy(&v2->var2.var0.var0.var0.var3, &FixedSettingDigitalZoom_005_V2, sizeof(v2->var2.var0.var0.var0.var3));
    v2->var4.var0 = 0;
    *&v2->var6.var0.var0 = downSample_FixedSettingDigitalZoom_005_V2;
    LODWORD(v2->var6.var0.var4) = dword_27E2C1908;
    memcpy(&v2->var8, &blendLogic_FixedSettingDigitalZoom_005_V2, sizeof(v2->var8));
    p_var10 = &v2->var10;
    v8 = &objectProtection_FixedSettingDigitalZoom_005_V2;
    goto LABEL_44;
  }

  if (v9 <= 0.101)
  {
    memcpy(&v2->var2.var0.var0.var0.var3, &FixedSettingDigitalZoom_010_V2, sizeof(v2->var2.var0.var0.var0.var3));
    v2->var4.var0 = 0;
    *&v2->var6.var0.var0 = downSample_FixedSettingDigitalZoom_010_V2;
    LODWORD(v2->var6.var0.var4) = dword_27E2C1CA4;
    memcpy(&v2->var8, &blendLogic_FixedSettingDigitalZoom_010_V2, sizeof(v2->var8));
    p_var10 = &v2->var10;
    v8 = &objectProtection_FixedSettingDigitalZoom_010_V2;
    goto LABEL_44;
  }

  if (v9 <= 0.151)
  {
    memcpy(&v2->var2.var0.var0.var0.var3, &FixedSettingDigitalZoom_015_V2, sizeof(v2->var2.var0.var0.var0.var3));
    v2->var4.var0 = 0;
    *&v2->var6.var0.var0 = downSample_FixedSettingDigitalZoom_015_V2;
    LODWORD(v2->var6.var0.var4) = dword_27E2C2040;
    memcpy(&v2->var8, &blendLogic_FixedSettingDigitalZoom_015_V2, sizeof(v2->var8));
    p_var10 = &v2->var10;
    v8 = &objectProtection_FixedSettingDigitalZoom_015_V2;
    goto LABEL_44;
  }

  if (v9 <= 0.201)
  {
    memcpy(&v2->var2.var0.var0.var0.var3, &FixedSettingDigitalZoom_020_V2, sizeof(v2->var2.var0.var0.var0.var3));
    v2->var4.var0 = 0;
    *&v2->var6.var0.var0 = downSample_FixedSettingDigitalZoom_020_V2;
    LODWORD(v2->var6.var0.var4) = dword_27E2C23DC;
    memcpy(&v2->var8, &blendLogic_FixedSettingDigitalZoom_020_V2, sizeof(v2->var8));
    p_var10 = &v2->var10;
    v8 = &objectProtection_FixedSettingDigitalZoom_020_V2;
    goto LABEL_44;
  }

  if (v9 <= 0.251)
  {
    memcpy(&v2->var2.var0.var0.var0.var3, &FixedSettingDigitalZoom_025_V2, sizeof(v2->var2.var0.var0.var0.var3));
    v2->var4.var0 = 0;
    *&v2->var6.var0.var0 = downSample_FixedSettingDigitalZoom_025_V2;
    LODWORD(v2->var6.var0.var4) = dword_27E2C2778;
    memcpy(&v2->var8, &blendLogic_FixedSettingDigitalZoom_025_V2, sizeof(v2->var8));
    p_var10 = &v2->var10;
    v8 = &objectProtection_FixedSettingDigitalZoom_025_V2;
    goto LABEL_44;
  }

  if (v9 <= 0.301)
  {
    memcpy(&v2->var2.var0.var0.var0.var3, &FixedSettingDigitalZoom_030_V2, sizeof(v2->var2.var0.var0.var0.var3));
    v2->var4.var0 = 0;
    *&v2->var6.var0.var0 = downSample_FixedSettingDigitalZoom_030_V2;
    LODWORD(v2->var6.var0.var4) = dword_27E2C2B14;
    memcpy(&v2->var8, &blendLogic_FixedSettingDigitalZoom_030_V2, sizeof(v2->var8));
    p_var10 = &v2->var10;
    v8 = &objectProtection_FixedSettingDigitalZoom_030_V2;
    goto LABEL_44;
  }

  if (v9 <= 0.351)
  {
    memcpy(&v2->var2.var0.var0.var0.var3, &FixedSettingDigitalZoom_035_V2, sizeof(v2->var2.var0.var0.var0.var3));
    v2->var4.var0 = 0;
    *&v2->var6.var0.var0 = downSample_FixedSettingDigitalZoom_035_V2;
    LODWORD(v2->var6.var0.var4) = dword_27E2C2EB0;
    memcpy(&v2->var8, &blendLogic_FixedSettingDigitalZoom_035_V2, sizeof(v2->var8));
    p_var10 = &v2->var10;
    v8 = &objectProtection_FixedSettingDigitalZoom_035_V2;
    goto LABEL_44;
  }

  if (v9 <= 0.401)
  {
    memcpy(&v2->var2.var0.var0.var0.var3, &FixedSettingDigitalZoom_040_V2, sizeof(v2->var2.var0.var0.var0.var3));
    v2->var4.var0 = 0;
    *&v2->var6.var0.var0 = downSample_FixedSettingDigitalZoom_040_V2;
    LODWORD(v2->var6.var0.var4) = dword_27E2C324C;
    memcpy(&v2->var8, &blendLogic_FixedSettingDigitalZoom_040_V2, sizeof(v2->var8));
    p_var10 = &v2->var10;
    v8 = &objectProtection_FixedSettingDigitalZoom_040_V2;
    goto LABEL_44;
  }

  if (v9 <= 0.451)
  {
    memcpy(&v2->var2.var0.var0.var0.var3, &FixedSettingDigitalZoom_045_V2, sizeof(v2->var2.var0.var0.var0.var3));
    v2->var4.var0 = 0;
    *&v2->var6.var0.var0 = downSample_FixedSettingDigitalZoom_045_V2;
    LODWORD(v2->var6.var0.var4) = dword_27E2C35E8;
    memcpy(&v2->var8, &blendLogic_FixedSettingDigitalZoom_045_V2, sizeof(v2->var8));
    p_var10 = &v2->var10;
    v8 = &objectProtection_FixedSettingDigitalZoom_045_V2;
    goto LABEL_44;
  }

  if (v9 <= 0.501)
  {
    memcpy(&v2->var2.var0.var0.var0.var3, &FixedSettingDigitalZoom_050_V2, sizeof(v2->var2.var0.var0.var0.var3));
    v2->var4.var0 = 0;
    *&v2->var6.var0.var0 = downSample_FixedSettingDigitalZoom_050_V2;
    LODWORD(v2->var6.var0.var4) = dword_27E2C3984;
    memcpy(&v2->var8, &blendLogic_FixedSettingDigitalZoom_050_V2, sizeof(v2->var8));
    p_var10 = &v2->var10;
    v8 = &objectProtection_FixedSettingDigitalZoom_050_V2;
    goto LABEL_44;
  }

  if (v9 <= 0.551)
  {
    memcpy(&v2->var2.var0.var0.var0.var3, &FixedSettingDigitalZoom_055_V2, sizeof(v2->var2.var0.var0.var0.var3));
    v2->var4.var0 = 0;
    *&v2->var6.var0.var0 = downSample_FixedSettingDigitalZoom_055_V2;
    LODWORD(v2->var6.var0.var4) = dword_27E2C3D20;
    memcpy(&v2->var8, &blendLogic_FixedSettingDigitalZoom_055_V2, sizeof(v2->var8));
    p_var10 = &v2->var10;
    v8 = &objectProtection_FixedSettingDigitalZoom_055_V2;
    goto LABEL_44;
  }

  if (v9 <= 0.601)
  {
    memcpy(&v2->var2.var0.var0.var0.var3, &FixedSettingDigitalZoom_060_V2, sizeof(v2->var2.var0.var0.var0.var3));
    v2->var4.var0 = 0;
    *&v2->var6.var0.var0 = downSample_FixedSettingDigitalZoom_060_V2;
    LODWORD(v2->var6.var0.var4) = dword_27E2C40BC;
    memcpy(&v2->var8, &blendLogic_FixedSettingDigitalZoom_060_V2, sizeof(v2->var8));
    p_var10 = &v2->var10;
    v8 = &objectProtection_FixedSettingDigitalZoom_060_V2;
    goto LABEL_44;
  }

  if (v9 <= 0.651)
  {
    memcpy(&v2->var2.var0.var0.var0.var3, &FixedSettingDigitalZoom_065_V2, sizeof(v2->var2.var0.var0.var0.var3));
    v2->var4.var0 = 0;
    *&v2->var6.var0.var0 = downSample_FixedSettingDigitalZoom_065_V2;
    LODWORD(v2->var6.var0.var4) = dword_27E2C4458;
    memcpy(&v2->var8, &blendLogic_FixedSettingDigitalZoom_065_V2, sizeof(v2->var8));
    p_var10 = &v2->var10;
    v8 = &objectProtection_FixedSettingDigitalZoom_065_V2;
    goto LABEL_44;
  }

  if (v9 <= 0.701)
  {
    memcpy(&v2->var2.var0.var0.var0.var3, &FixedSettingDigitalZoom_070_V2, sizeof(v2->var2.var0.var0.var0.var3));
    v2->var4.var0 = 0;
    *&v2->var6.var0.var0 = downSample_FixedSettingDigitalZoom_070_V2;
    LODWORD(v2->var6.var0.var4) = dword_27E2C47F4;
    memcpy(&v2->var8, &blendLogic_FixedSettingDigitalZoom_070_V2, sizeof(v2->var8));
    p_var10 = &v2->var10;
    v8 = &objectProtection_FixedSettingDigitalZoom_070_V2;
    goto LABEL_44;
  }

  if (v9 <= 0.751)
  {
    memcpy(&v2->var2.var0.var0.var0.var3, &FixedSettingDigitalZoom_075_V2, sizeof(v2->var2.var0.var0.var0.var3));
    v2->var4.var0 = 0;
    *&v2->var6.var0.var0 = downSample_FixedSettingDigitalZoom_075_V2;
    LODWORD(v2->var6.var0.var4) = dword_27E2C4B90;
    memcpy(&v2->var8, &blendLogic_FixedSettingDigitalZoom_075_V2, sizeof(v2->var8));
    p_var10 = &v2->var10;
    v8 = &objectProtection_FixedSettingDigitalZoom_075_V2;
    goto LABEL_44;
  }

  if (v9 <= 0.801)
  {
    memcpy(&v2->var2.var0.var0.var0.var3, &FixedSettingDigitalZoom_080_V2, sizeof(v2->var2.var0.var0.var0.var3));
    v2->var4.var0 = 0;
    *&v2->var6.var0.var0 = downSample_FixedSettingDigitalZoom_080_V2;
    LODWORD(v2->var6.var0.var4) = dword_27E2C4F2C;
    memcpy(&v2->var8, &blendLogic_FixedSettingDigitalZoom_080_V2, sizeof(v2->var8));
    p_var10 = &v2->var10;
    v8 = &objectProtection_FixedSettingDigitalZoom_080_V2;
    goto LABEL_44;
  }

  if (v9 <= 0.851)
  {
    memcpy(&v2->var2.var0.var0.var0.var3, &FixedSettingDigitalZoom_085_V2, sizeof(v2->var2.var0.var0.var0.var3));
    v2->var4.var0 = 0;
    *&v2->var6.var0.var0 = downSample_FixedSettingDigitalZoom_085_V2;
    LODWORD(v2->var6.var0.var4) = dword_27E2C52C8;
    memcpy(&v2->var8, &blendLogic_FixedSettingDigitalZoom_085_V2, sizeof(v2->var8));
    p_var10 = &v2->var10;
    v8 = &objectProtection_FixedSettingDigitalZoom_085_V2;
    goto LABEL_44;
  }

  if (v9 <= 0.901)
  {
    memcpy(&v2->var2.var0.var0.var0.var3, &FixedSettingDigitalZoom_090_V2, sizeof(v2->var2.var0.var0.var0.var3));
    v2->var4.var0 = 0;
    *&v2->var6.var0.var0 = downSample_FixedSettingDigitalZoom_090_V2;
    LODWORD(v2->var6.var0.var4) = dword_27E2C5664;
    memcpy(&v2->var8, &blendLogic_FixedSettingDigitalZoom_090_V2, sizeof(v2->var8));
    p_var10 = &v2->var10;
    v8 = &objectProtection_FixedSettingDigitalZoom_090_V2;
    goto LABEL_44;
  }

  p_var6 = &v2->var6;
  if (v9 <= 0.951)
  {
    memcpy(&v2->var2.var0.var0.var0.var3, &FixedSettingDigitalZoom_095_V2, sizeof(v2->var2.var0.var0.var0.var3));
    v2->var4.var0 = 0;
    *&p_var6->var0.var0 = downSample_FixedSettingDigitalZoom_095_V2;
    LODWORD(v2->var6.var0.var4) = dword_27E2C5A00;
    memcpy(&v2->var8, &blendLogic_FixedSettingDigitalZoom_095_V2, sizeof(v2->var8));
    v11 = &objectProtection_FixedSettingDigitalZoom_095_V2;
  }

  else
  {
    memcpy(&v2->var2.var0.var0.var0.var3, &FixedSettingDigitalZoom_FullEnh_V2, sizeof(v2->var2.var0.var0.var0.var3));
    v2->var4.var0 = 0;
    *&p_var6->var0.var0 = downSample_FixedSettingDigitalZoom_FullEnh_V2;
    LODWORD(v2->var6.var0.var4) = dword_27E2C5D9C;
    memcpy(&v2->var8, &blendLogic_FixedSettingDigitalZoom_FullEnh_V2, sizeof(v2->var8));
    v11 = &objectProtection_FixedSettingDigitalZoom_FullEnh_V2;
  }

  v15 = v11[1];
  *&v2->var10.var0.var0 = *v11;
  *&v2->var10.var0.var4 = v15;
  *&v2->var10.var1.var3 = v11[2];
  *&v2->var10.var2.var1 = *(v11 + 44);
LABEL_45:
  v13 = unk_27E2BDD80;
  *v2->var12.var0 = lumaBlend_FixedSettingDigitalZoom_V2;
  *v2->var12.var1 = v13;
  *v2->var12.var2 = xmmword_27E2BDD90;
  v14 = *MEMORY[0x277D85DE8];
}

- (void)processPixelWithMeasurement_V2:(__IOSurface *)v2 Measurement:(id *)measurement Output:(aseConfigurationUnitsV2_t *)output
{
  *&v22[11] = *MEMORY[0x277D85DE8];
  if (logLevel >= 4 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315906;
    v18 = "[ASEProcessingT0 processPixelWithMeasurement_V2:Measurement:Output:]";
    v19 = 2048;
    *v20 = v2;
    *&v20[8] = 2048;
    *v21 = measurement;
    *&v21[8] = 2048;
    *v22 = output;
    _os_log_impl(&dword_23D3F2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.50.3] ++  %s : input=%p, aseMeasurementOutput=%p, aseControlUnit=%p\n", buf, 0x2Au);
  }

  [(ASEProcessingT0 *)self printAseMeasurementOutput:measurement];
  [(ASEProcessingT0 *)self configControlHeader_V2:output];
  InputType = getInputType(self->_inputType);
  TransferFunction = getTransferFunction(v2);
  calculate_control_setting_V2(measurement, output, self->_inputWidth, self->_inputHeight, self->_numberOfProcessedFrames, &self->_noiseMeterStepSize, &self->_FD_state, &self->_FG_count, &self->_NFG_count, &self->_prev_H1_7, &self->_prev_V1_7, &self->_prev_ratio_2D_1D, self->_productType, self->_destinationWidth, self->_destinationHeight, InputType, TransferFunction);
  if (logLevel >= 4 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    destinationWidth = self->_destinationWidth;
    destinationHeight = self->_destinationHeight;
    v13 = "SDR";
    if (InputType)
    {
      v13 = "HDR";
    }

    v14 = "Unknown";
    *buf = 136316162;
    v18 = "[ASEProcessingT0 processPixelWithMeasurement_V2:Measurement:Output:]";
    if (TransferFunction == 16)
    {
      v14 = "PQ";
    }

    v19 = 1024;
    *v20 = destinationWidth;
    v15 = "sRGB";
    *&v20[4] = 1024;
    *&v20[6] = destinationHeight;
    *v21 = 2080;
    if (TransferFunction != 13)
    {
      v15 = v14;
    }

    *&v21[2] = v13;
    v22[0] = 2080;
    *&v22[1] = v15;
    _os_log_impl(&dword_23D3F2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.50.3] --  %s : _destinationWidth=%d, _destinationHeight=%d, inputType=%s, inputTransferFunction=%s\n", buf, 0x2Cu);
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)printAseMeasurementOutput:(id *)output
{
  v116 = *MEMORY[0x277D85DE8];
  if (logLevel >= 3)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      numberOfProcessedFrames = self->_numberOfProcessedFrames;
      v102 = 134217984;
      *v103 = numberOfProcessedFrames;
      _os_log_impl(&dword_23D3F2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.50.3] Frame %ld aseMeasurementOutput:\n", &v102, 0xCu);
    }

    if (logLevel >= 3)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        var0 = output->var0;
        v102 = 67109120;
        *v103 = var0;
        _os_log_impl(&dword_23D3F2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.50.3] totalValid = %010d\n", &v102, 8u);
      }

      if (logLevel >= 3)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          var1 = output->var1;
          v102 = 67109120;
          *v103 = var1;
          _os_log_impl(&dword_23D3F2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.50.3] totalValidValue = %010d\n", &v102, 8u);
        }

        if (logLevel >= 3)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            var2 = output->var2;
            v102 = 67109120;
            *v103 = var2;
            _os_log_impl(&dword_23D3F2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.50.3] totalValidActivity = %010d\n", &v102, 8u);
          }

          if (logLevel >= 3)
          {
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
            {
              var3 = output->var3;
              v102 = 67109120;
              *v103 = var3;
              _os_log_impl(&dword_23D3F2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.50.3] maxAbsH0 = %010d\n", &v102, 8u);
            }

            if (logLevel >= 3)
            {
              if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
              {
                var4 = output->var4;
                v102 = 67109120;
                *v103 = var4;
                _os_log_impl(&dword_23D3F2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.50.3] maxAbsH1 = %010d\n", &v102, 8u);
              }

              if (logLevel >= 3)
              {
                if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                {
                  var5 = output->var5;
                  v102 = 67109120;
                  *v103 = var5;
                  _os_log_impl(&dword_23D3F2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.50.3] maxAbsH2 = %010d\n", &v102, 8u);
                }

                if (logLevel >= 3)
                {
                  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                  {
                    var6 = output->var6;
                    v102 = 67109120;
                    *v103 = var6;
                    _os_log_impl(&dword_23D3F2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.50.3] maxAbsV0 = %010d\n", &v102, 8u);
                  }

                  if (logLevel >= 3)
                  {
                    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                    {
                      var7 = output->var7;
                      v102 = 67109120;
                      *v103 = var7;
                      _os_log_impl(&dword_23D3F2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.50.3] maxAbsV1 = %010d\n", &v102, 8u);
                    }

                    if (logLevel >= 3)
                    {
                      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                      {
                        var8 = output->var8;
                        v102 = 67109120;
                        *v103 = var8;
                        _os_log_impl(&dword_23D3F2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.50.3] maxAbsV2 = %010d\n", &v102, 8u);
                      }

                      if (logLevel >= 3)
                      {
                        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                        {
                          var9 = output->var9;
                          v102 = 67109120;
                          *v103 = var9;
                          _os_log_impl(&dword_23D3F2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.50.3] maxAbsHV0 = %010d\n", &v102, 8u);
                        }

                        if (logLevel >= 3)
                        {
                          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                          {
                            var10 = output->var10;
                            v102 = 67109120;
                            *v103 = var10;
                            _os_log_impl(&dword_23D3F2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.50.3] maxAbsHV1 = %010d\n", &v102, 8u);
                          }

                          if (logLevel >= 3)
                          {
                            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                            {
                              var11 = output->var11;
                              v102 = 67109120;
                              *v103 = var11;
                              _os_log_impl(&dword_23D3F2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.50.3] maxAbsHV2 = %010d\n", &v102, 8u);
                            }

                            if (logLevel >= 3)
                            {
                              if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                              {
                                var12 = output->var12;
                                v102 = 67109120;
                                *v103 = var12;
                                _os_log_impl(&dword_23D3F2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.50.3] sumAbsHV0 = %010d\n", &v102, 8u);
                              }

                              if (logLevel >= 3)
                              {
                                if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                                {
                                  var13 = output->var13;
                                  v102 = 67109120;
                                  *v103 = var13;
                                  _os_log_impl(&dword_23D3F2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.50.3] sumAbsHV1 = %010d\n", &v102, 8u);
                                }

                                if (logLevel >= 3)
                                {
                                  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                                  {
                                    var14 = output->var14;
                                    v102 = 67109120;
                                    *v103 = var14;
                                    _os_log_impl(&dword_23D3F2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.50.3] sumAbsHV2 = %010d\n", &v102, 8u);
                                  }

                                  if (logLevel >= 3)
                                  {
                                    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                                    {
                                      v21 = output->var15[0];
                                      v22 = output->var15[1];
                                      v23 = output->var15[2];
                                      v24 = output->var15[3];
                                      v25 = output->var15[4];
                                      v26 = output->var15[5];
                                      v27 = output->var15[6];
                                      v28 = output->var15[7];
                                      v102 = 67110912;
                                      *v103 = v21;
                                      *&v103[4] = 1024;
                                      *&v103[6] = v22;
                                      v104 = 1024;
                                      v105 = v23;
                                      v106 = 1024;
                                      v107 = v24;
                                      v108 = 1024;
                                      v109 = v25;
                                      v110 = 1024;
                                      v111 = v26;
                                      v112 = 1024;
                                      v113 = v27;
                                      v114 = 1024;
                                      v115 = v28;
                                      _os_log_impl(&dword_23D3F2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.50.3] histOutH1[ 0 -  7] = %010d, %010d, %010d, %010d, %010d, %010d, %010d, %010d\n", &v102, 0x32u);
                                    }

                                    if (logLevel >= 3)
                                    {
                                      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                                      {
                                        v29 = output->var16[0];
                                        v30 = output->var16[1];
                                        v31 = output->var16[2];
                                        v32 = output->var16[3];
                                        v33 = output->var16[4];
                                        v34 = output->var16[5];
                                        v35 = output->var16[6];
                                        v36 = output->var16[7];
                                        v102 = 67110912;
                                        *v103 = v29;
                                        *&v103[4] = 1024;
                                        *&v103[6] = v30;
                                        v104 = 1024;
                                        v105 = v31;
                                        v106 = 1024;
                                        v107 = v32;
                                        v108 = 1024;
                                        v109 = v33;
                                        v110 = 1024;
                                        v111 = v34;
                                        v112 = 1024;
                                        v113 = v35;
                                        v114 = 1024;
                                        v115 = v36;
                                        _os_log_impl(&dword_23D3F2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.50.3] histOutH2[ 0 -  7] = %010d, %010d, %010d, %010d, %010d, %010d, %010d, %010d\n", &v102, 0x32u);
                                      }

                                      if (logLevel >= 3)
                                      {
                                        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                                        {
                                          v37 = output->var17[0];
                                          v38 = output->var17[1];
                                          v39 = output->var17[2];
                                          v40 = output->var17[3];
                                          v41 = output->var17[4];
                                          v42 = output->var17[5];
                                          v43 = output->var17[6];
                                          v44 = output->var17[7];
                                          v102 = 67110912;
                                          *v103 = v37;
                                          *&v103[4] = 1024;
                                          *&v103[6] = v38;
                                          v104 = 1024;
                                          v105 = v39;
                                          v106 = 1024;
                                          v107 = v40;
                                          v108 = 1024;
                                          v109 = v41;
                                          v110 = 1024;
                                          v111 = v42;
                                          v112 = 1024;
                                          v113 = v43;
                                          v114 = 1024;
                                          v115 = v44;
                                          _os_log_impl(&dword_23D3F2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.50.3] histOutV1[ 0 -  7] = %010d, %010d, %010d, %010d, %010d, %010d, %010d, %010d\n", &v102, 0x32u);
                                        }

                                        if (logLevel >= 3)
                                        {
                                          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                                          {
                                            v45 = output->var18[0];
                                            v46 = output->var18[1];
                                            v47 = output->var18[2];
                                            v48 = output->var18[3];
                                            v49 = output->var18[4];
                                            v50 = output->var18[5];
                                            v51 = output->var18[6];
                                            v52 = output->var18[7];
                                            v102 = 67110912;
                                            *v103 = v45;
                                            *&v103[4] = 1024;
                                            *&v103[6] = v46;
                                            v104 = 1024;
                                            v105 = v47;
                                            v106 = 1024;
                                            v107 = v48;
                                            v108 = 1024;
                                            v109 = v49;
                                            v110 = 1024;
                                            v111 = v50;
                                            v112 = 1024;
                                            v113 = v51;
                                            v114 = 1024;
                                            v115 = v52;
                                            _os_log_impl(&dword_23D3F2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.50.3] histOutV2[ 0 -  7] = %010d, %010d, %010d, %010d, %010d, %010d, %010d, %010d\n", &v102, 0x32u);
                                          }

                                          if (logLevel >= 3)
                                          {
                                            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                                            {
                                              v53 = output->var19[0];
                                              v54 = output->var19[1];
                                              v55 = output->var19[2];
                                              v56 = output->var19[3];
                                              v57 = output->var19[4];
                                              v58 = output->var19[5];
                                              v59 = output->var19[6];
                                              v60 = output->var19[7];
                                              v102 = 67110912;
                                              *v103 = v53;
                                              *&v103[4] = 1024;
                                              *&v103[6] = v54;
                                              v104 = 1024;
                                              v105 = v55;
                                              v106 = 1024;
                                              v107 = v56;
                                              v108 = 1024;
                                              v109 = v57;
                                              v110 = 1024;
                                              v111 = v58;
                                              v112 = 1024;
                                              v113 = v59;
                                              v114 = 1024;
                                              v115 = v60;
                                              _os_log_impl(&dword_23D3F2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.50.3] histOutHV0[0 -  7] = %010d, %010d, %010d, %010d, %010d, %010d, %010d, %010d\n", &v102, 0x32u);
                                            }

                                            if (logLevel >= 3)
                                            {
                                              if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                                              {
                                                v61 = output->var19[8];
                                                v62 = output->var19[9];
                                                v63 = output->var19[10];
                                                v64 = output->var19[11];
                                                v65 = output->var19[12];
                                                v66 = output->var19[13];
                                                v67 = output->var19[14];
                                                v68 = output->var19[15];
                                                v102 = 67110912;
                                                *v103 = v61;
                                                *&v103[4] = 1024;
                                                *&v103[6] = v62;
                                                v104 = 1024;
                                                v105 = v63;
                                                v106 = 1024;
                                                v107 = v64;
                                                v108 = 1024;
                                                v109 = v65;
                                                v110 = 1024;
                                                v111 = v66;
                                                v112 = 1024;
                                                v113 = v67;
                                                v114 = 1024;
                                                v115 = v68;
                                                _os_log_impl(&dword_23D3F2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.50.3] histOutHV0[9 - 15] = %010d, %010d, %010d, %010d, %010d, %010d, %010d, %010d\n", &v102, 0x32u);
                                              }

                                              if (logLevel >= 3)
                                              {
                                                if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                                                {
                                                  v69 = output->var20[0];
                                                  v70 = output->var20[1];
                                                  v71 = output->var20[2];
                                                  v72 = output->var20[3];
                                                  v73 = output->var20[4];
                                                  v74 = output->var20[5];
                                                  v75 = output->var20[6];
                                                  v76 = output->var20[7];
                                                  v102 = 67110912;
                                                  *v103 = v69;
                                                  *&v103[4] = 1024;
                                                  *&v103[6] = v70;
                                                  v104 = 1024;
                                                  v105 = v71;
                                                  v106 = 1024;
                                                  v107 = v72;
                                                  v108 = 1024;
                                                  v109 = v73;
                                                  v110 = 1024;
                                                  v111 = v74;
                                                  v112 = 1024;
                                                  v113 = v75;
                                                  v114 = 1024;
                                                  v115 = v76;
                                                  _os_log_impl(&dword_23D3F2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.50.3] histOutHV1[0 -  7] = %010d, %010d, %010d, %010d, %010d, %010d, %010d, %010d\n", &v102, 0x32u);
                                                }

                                                if (logLevel >= 3)
                                                {
                                                  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                                                  {
                                                    v77 = output->var20[8];
                                                    v78 = output->var20[9];
                                                    v79 = output->var20[10];
                                                    v80 = output->var20[11];
                                                    v81 = output->var20[12];
                                                    v82 = output->var20[13];
                                                    v83 = output->var20[14];
                                                    v84 = output->var20[15];
                                                    v102 = 67110912;
                                                    *v103 = v77;
                                                    *&v103[4] = 1024;
                                                    *&v103[6] = v78;
                                                    v104 = 1024;
                                                    v105 = v79;
                                                    v106 = 1024;
                                                    v107 = v80;
                                                    v108 = 1024;
                                                    v109 = v81;
                                                    v110 = 1024;
                                                    v111 = v82;
                                                    v112 = 1024;
                                                    v113 = v83;
                                                    v114 = 1024;
                                                    v115 = v84;
                                                    _os_log_impl(&dword_23D3F2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.50.3] histOutHV1[7 - 15] = %010d, %010d, %010d, %010d, %010d, %010d, %010d, %010d\n", &v102, 0x32u);
                                                  }

                                                  if (logLevel >= 3)
                                                  {
                                                    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                                                    {
                                                      v85 = output->var21[0];
                                                      v86 = output->var21[1];
                                                      v87 = output->var21[2];
                                                      v88 = output->var21[3];
                                                      v89 = output->var21[4];
                                                      v90 = output->var21[5];
                                                      v91 = output->var21[6];
                                                      v92 = output->var21[7];
                                                      v102 = 67110912;
                                                      *v103 = v85;
                                                      *&v103[4] = 1024;
                                                      *&v103[6] = v86;
                                                      v104 = 1024;
                                                      v105 = v87;
                                                      v106 = 1024;
                                                      v107 = v88;
                                                      v108 = 1024;
                                                      v109 = v89;
                                                      v110 = 1024;
                                                      v111 = v90;
                                                      v112 = 1024;
                                                      v113 = v91;
                                                      v114 = 1024;
                                                      v115 = v92;
                                                      _os_log_impl(&dword_23D3F2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.50.3] histOutHV2[0 -  7] = %010d, %010d, %010d, %010d, %010d, %010d, %010d, %010d\n", &v102, 0x32u);
                                                    }

                                                    if (logLevel >= 3 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                                                    {
                                                      v93 = output->var21[8];
                                                      v94 = output->var21[9];
                                                      v95 = output->var21[10];
                                                      v96 = output->var21[11];
                                                      v97 = output->var21[12];
                                                      v98 = output->var21[13];
                                                      v99 = output->var21[14];
                                                      v100 = output->var21[15];
                                                      v102 = 67110912;
                                                      *v103 = v93;
                                                      *&v103[4] = 1024;
                                                      *&v103[6] = v94;
                                                      v104 = 1024;
                                                      v105 = v95;
                                                      v106 = 1024;
                                                      v107 = v96;
                                                      v108 = 1024;
                                                      v109 = v97;
                                                      v110 = 1024;
                                                      v111 = v98;
                                                      v112 = 1024;
                                                      v113 = v99;
                                                      v114 = 1024;
                                                      v115 = v100;
                                                      _os_log_impl(&dword_23D3F2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.50.3] histOutHV2[0 - 15] = %010d, %010d, %010d, %010d, %010d, %010d, %010d, %010d\n", &v102, 0x32u);
                                                    }
                                                  }
                                                }
                                              }
                                            }
                                          }
                                        }
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  v101 = *MEMORY[0x277D85DE8];
}

- (void)processPixelWithInput_V1:Measurement:Output:.cold.1()
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_0(&dword_23D3F2000, MEMORY[0x277D86220], v0, " [1.50.3] Assertion: 0 warned in /Library/Caches/com.apple.xbs/Sources/ASEFramework/ASEProcessingT0.m at line 790\n", v1, v2, v3, v4, 0);
  }

  __assert_rtn("[ASEProcessingT0 processPixelWithInput_V1:Measurement:Output:]", "ASEProcessingT0.m", 790, "0");
}

- (void)processPixelWithPixelControl_V1:Output:.cold.1()
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_0(&dword_23D3F2000, MEMORY[0x277D86220], v0, " [1.50.3] Assertion: 0 warned in /Library/Caches/com.apple.xbs/Sources/ASEFramework/ASEProcessingT0.m at line 828\n", v1, v2, v3, v4, 0);
  }

  __assert_rtn("[ASEProcessingT0 processPixelWithPixelControl_V1:Output:]", "ASEProcessingT0.m", 828, "0");
}

- (void)processPixelWithInput_V2:Measurement:Output:.cold.1()
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_0(&dword_23D3F2000, MEMORY[0x277D86220], v0, " [1.50.3] Assertion: 0 warned in /Library/Caches/com.apple.xbs/Sources/ASEFramework/ASEProcessingT0.m at line 957\n", v1, v2, v3, v4, 0);
  }

  __assert_rtn("[ASEProcessingT0 processPixelWithInput_V2:Measurement:Output:]", "ASEProcessingT0.m", 957, "0");
}

- (void)processPixelWithPixelControl_V2:Output:.cold.1()
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_0(&dword_23D3F2000, MEMORY[0x277D86220], v0, " [1.50.3] Assertion: 0 warned in /Library/Caches/com.apple.xbs/Sources/ASEFramework/ASEProcessingT0.m at line 1044\n", v1, v2, v3, v4, 0);
  }

  __assert_rtn("[ASEProcessingT0 processPixelWithPixelControl_V2:Output:]", "ASEProcessingT0.m", 1044, "0");
}

@end