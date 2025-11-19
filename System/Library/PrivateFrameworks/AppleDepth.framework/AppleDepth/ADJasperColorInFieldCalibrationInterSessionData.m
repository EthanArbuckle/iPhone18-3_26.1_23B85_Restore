@interface ADJasperColorInFieldCalibrationInterSessionData
+ (id)defaults;
- (ADJasperColorInFieldCalibrationInterSessionData)initWithDictionaryRepresentation:(id)a3 andDeviceName:(id)a4;
- (ADJasperColorInFieldCalibrationInterSessionData)initWithFactoryJasperToColorTransform:(__n128)a3 currentJasperToColorTransform:(__n128)a4 andDeviceName:(double)a5;
- (__n128)convertDictToExtrinsicsAngles:(void *)a3;
- (id)convertExtrinsicsAnglesToDict:(ADJasperColorInFieldCalibrationInterSessionData *)self;
- (id)persistenceData;
- (void)initIsf;
@end

@implementation ADJasperColorInFieldCalibrationInterSessionData

- (__n128)convertDictToExtrinsicsAngles:(void *)a3
{
  v3 = a3;
  v4 = [v3 objectForKeyedSubscript:@"rotX"];
  [v4 floatValue];
  v13 = v5;
  v6 = [v3 objectForKeyedSubscript:@"rotY"];
  [v6 floatValue];
  v12 = v7;
  v8 = [v3 objectForKeyedSubscript:@"rotZ"];
  [v8 floatValue];
  v11 = v9;

  result.n128_u32[0] = v13;
  result.n128_u32[1] = v12;
  result.n128_u32[2] = v11;
  return result;
}

- (id)convertExtrinsicsAnglesToDict:(ADJasperColorInFieldCalibrationInterSessionData *)self
{
  v11[3] = *MEMORY[0x277D85DE8];
  v10[0] = @"rotX";
  v9 = v2;
  v3 = [MEMORY[0x277CCABB0] numberWithFloat:?];
  v11[0] = v3;
  v10[1] = @"rotY";
  HIDWORD(v4) = DWORD1(v9);
  LODWORD(v4) = DWORD1(v9);
  v5 = [MEMORY[0x277CCABB0] numberWithFloat:v4];
  v11[1] = v5;
  v10[2] = @"rotZ";
  v6 = [MEMORY[0x277CCABB0] numberWithFloat:{COERCE_DOUBLE(__PAIR64__(DWORD1(v9), DWORD2(v9)))}];
  v11[2] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:3];

  return v7;
}

- (id)persistenceData
{
  v25[3] = *MEMORY[0x277D85DE8];
  v24[0] = @"rotX";
  LODWORD(v2) = *self->_jasperToColorRotationAngles;
  v4 = [MEMORY[0x277CCABB0] numberWithFloat:v2];
  v25[0] = v4;
  v24[1] = @"rotY";
  LODWORD(v5) = *&self->_jasperToColorRotationAngles[4];
  v6 = [MEMORY[0x277CCABB0] numberWithFloat:v5];
  v25[1] = v6;
  v24[2] = @"rotZ";
  LODWORD(v7) = *&self->_jasperToColorRotationAngles[8];
  v8 = [MEMORY[0x277CCABB0] numberWithFloat:v7];
  v25[2] = v8;
  v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:v24 count:3];

  v9 = MEMORY[0x277CBEB38];
  v22[0] = @"isfHistoryKey";
  v20 = [(ADInterSessionFilter *)self->super._isf persistenceData];
  v23[0] = v20;
  v22[1] = @"telemetryKey";
  v10 = [(ADJasperColorInFieldCalibrationInterSessionData *)self inFieldCalibrationTelemetryData];
  v11 = [v10 persistenceData];
  v23[1] = v11;
  v23[2] = v21;
  v22[2] = @"depthToMcamFactoryExtrinsics";
  v22[3] = @"interSessionDataVersion";
  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{-[ADInFieldCalibrationInterSessionData version](self, "version")}];
  v23[3] = v12;
  v22[4] = @"featuresHistoryCountKey";
  v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_intersessionFeaturesHistoryCount];
  v23[4] = v13;
  v22[5] = @"featursHistoryDataKey";
  intersessionFeaturesHistory = self->_intersessionFeaturesHistory;
  v15 = intersessionFeaturesHistory;
  if (!intersessionFeaturesHistory)
  {
    v15 = objc_opt_new();
  }

  v23[5] = v15;
  v22[6] = @"successfulResultCountKey";
  v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_successfulResultCount];
  v23[6] = v16;
  v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:7];
  v18 = [v9 dictionaryWithDictionary:v17];

  if (!intersessionFeaturesHistory)
  {
  }

  return v18;
}

- (ADJasperColorInFieldCalibrationInterSessionData)initWithDictionaryRepresentation:(id)a3 andDeviceName:(id)a4
{
  v5 = a3;
  v31.receiver = self;
  v31.super_class = ADJasperColorInFieldCalibrationInterSessionData;
  v6 = [(ADInFieldCalibrationInterSessionData *)&v31 init];
  if (!v6)
  {
    goto LABEL_18;
  }

  v7 = [v5 objectForKey:@"interSessionDataVersion"];
  -[ADInFieldCalibrationInterSessionData setVersion:](v6, "setVersion:", [v7 unsignedIntValue]);

  if ([(ADInFieldCalibrationInterSessionData *)v6 version]< 5 || [(ADInFieldCalibrationInterSessionData *)v6 version]> 7 || ([(ADJasperColorInFieldCalibrationInterSessionData *)v6 initIsf], !v6->super._isf))
  {
LABEL_20:
    v29 = 0;
    goto LABEL_21;
  }

  v8 = [v5 objectForKey:@"telemetryKey"];
  v9 = [v5 objectForKey:@"isfHistoryKey"];
  v10 = [v5 objectForKey:@"depthToMcamFactoryExtrinsics"];
  v11 = [v5 objectForKey:@"featursHistoryDataKey"];
  v12 = [v5 objectForKey:@"featuresHistoryCountKey"];
  v13 = [v12 unsignedLongLongValue];

  v14 = [v5 objectForKey:@"successfulResultCountKey"];
  v15 = [v14 unsignedLongLongValue];

  v6->_intersessionFeaturesHistoryCount = v13;
  if (v11)
  {
    v16 = objc_opt_new();
  }

  else
  {
    v16 = [MEMORY[0x277CBEA90] dataWithData:0];
  }

  v17 = v16;
  objc_storeStrong(&v6->_intersessionFeaturesHistory, v16);

  v6->_successfulResultCount = v15;
  isf = v6->super._isf;
  if (!v9)
  {
    v19 = [(ADJasperColorInFieldCalibrationInterSessionData *)v6 convertExtrinsicsAnglesToDict:0.0];
    v20 = [(ADInterSessionFilter *)isf fillWithEntry:v19];

    if (!v20)
    {
      goto LABEL_12;
    }

LABEL_19:

    goto LABEL_20;
  }

  if ([(ADInterSessionFilter *)v6->super._isf fillWithDictionaryRepresentation:v9])
  {
    goto LABEL_19;
  }

LABEL_12:
  if (v8)
  {
    v21 = [[ADJasperColorInFieldCalibrationTelemetryData alloc] initWithDictionaryRepresentation:v8];
  }

  else
  {
    v21 = objc_alloc_init(ADJasperColorInFieldCalibrationTelemetryData);
  }

  inFieldCalibrationTelemetryData = v6->_inFieldCalibrationTelemetryData;
  v6->_inFieldCalibrationTelemetryData = v21;

  if (!v6->_inFieldCalibrationTelemetryData || !v10)
  {
    goto LABEL_19;
  }

  v23 = [v10 objectForKeyedSubscript:@"rotX"];
  [v23 floatValue];
  *v6->_jasperToColorRotationAngles = v24;

  v25 = [v10 objectForKeyedSubscript:@"rotY"];
  [v25 floatValue];
  *&v6->_jasperToColorRotationAngles[4] = v26;

  v27 = [v10 objectForKeyedSubscript:@"rotZ"];
  [v27 floatValue];
  *&v6->_jasperToColorRotationAngles[8] = v28;

  [(ADInFieldCalibrationInterSessionData *)v6 setVersion:7];
LABEL_18:
  v29 = v6;
LABEL_21:

  return v29;
}

- (ADJasperColorInFieldCalibrationInterSessionData)initWithFactoryJasperToColorTransform:(__n128)a3 currentJasperToColorTransform:(__n128)a4 andDeviceName:(double)a5
{
  v33.receiver = a1;
  v33.super_class = ADJasperColorInFieldCalibrationInterSessionData;
  v8 = [(ADInFieldCalibrationInterSessionData *)&v33 init];
  v9 = v8;
  if (v8 && (([(ADInFieldCalibrationInterSessionData *)v8 setVersion:7], [(ADJasperColorInFieldCalibrationInterSessionData *)v9 initIsf], !v9->super._isf) || (v10 = objc_alloc_init(ADJasperColorInFieldCalibrationTelemetryData), inFieldCalibrationTelemetryData = v9->_inFieldCalibrationTelemetryData, v9->_inFieldCalibrationTelemetryData = v10, inFieldCalibrationTelemetryData, v30 = 0u, v31 = 0u, v30.i32[2] = a2.n128_i32[2], v32 = 0u, v31.i32[2] = a3.n128_i32[2], v30.i64[0] = a2.n128_u64[0], v31.i64[0] = a3.n128_u64[0], v32.i32[2] = a4.n128_i32[2], v32.i64[0] = a4.n128_u64[0], [ADUtils calcRotationAngle:&v30], *v9->_jasperToColorRotationAngles = v12, v27 = 0u, v28 = 0u, v29 = 0u, v13 = vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(a6, v30.f32[0]), a7, v31.f32[0]), a8, v32.f32[0]), v14 = vmlaq_lane_f32(vmlaq_lane_f32(vmulq_lane_f32(a6, *v30.f32, 1), a7, *v31.f32, 1), a8, *v32.f32, 1), v15 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(a6, v30, 2), a7, v31, 2), a8, v32, 2), DWORD2(v27) = v13.i32[2], DWORD2(v28) = v14.i32[2], *&v27 = v13.i64[0], *&v28 = v14.i64[0], DWORD2(v29) = v15.i32[2], *&v29 = v15.i64[0], [ADUtils calcRotationAngle:&v27], isf = v9->super._isf, [(ADJasperColorInFieldCalibrationInterSessionData *)v9 convertExtrinsicsAnglesToDict:?], v17 = objc_claimAutoreleasedReturnValue(), v18 = [(ADInterSessionFilter *)isf fillWithEntry:v17], v17, v18)))
  {
    v19 = 0;
  }

  else
  {
    v19 = v9;
  }

  return v19;
}

- (void)initIsf
{
  [(ADInterSessionFilterParameters *)self->super._isfParameters setIsStepDetectionActive:1];
  [(ADInterSessionFilterParameters *)self->super._isfParameters setMinStepIndex:2];
  isf = self->super._isf;
  self->super._isf = 0;

  v4 = [objc_opt_class() defaults];
  v5 = [v4 numberForKey:kADDeviceConfigurationKeyJasperColorIsfCapacity];
  -[ADInterSessionFilterParameters setCapacity:](self->super._isfParameters, "setCapacity:", [v5 unsignedIntValue]);

  [(ADInterSessionFilterParameters *)self->super._isfParameters setMinimalEntriesForResult:[(ADInterSessionFilterParameters *)self->super._isfParameters capacity]];
  LODWORD(v6) = 1017370378;
  [(ADInterSessionFilterParameters *)self->super._isfParameters setMinimalWeight:v6];
  LODWORD(v7) = 0.25;
  [(ADInterSessionFilterParameters *)self->super._isfParameters setMaximalWeight:v7];
  v8 = [objc_opt_class() defaults];
  v9 = [v8 numberForKey:kADDeviceConfigurationKeyJasperColorIsfOutliers];
  -[ADInterSessionFilterParameters setOutlierNumber:](self->super._isfParameters, "setOutlierNumber:", [v9 unsignedIntValue]);

  LODWORD(v10) = 1017370378;
  [(ADInterSessionFilterParameters *)self->super._isfParameters setOutlierWeight:v10];
  [(ADInterSessionFilterParameters *)self->super._isfParameters setMinStepSize:10];
  LODWORD(v11) = 1084093366;
  [(ADInterSessionFilterParameters *)self->super._isfParameters setStepDetectionThreshold:v11];
  v12 = [objc_alloc(MEMORY[0x277CED090]) initWithFieldNames:&unk_28524AB90 parameters:self->super._isfParameters];
  v13 = self->super._isf;
  self->super._isf = v12;
}

+ (id)defaults
{
  v7[2] = *MEMORY[0x277D85DE8];
  p_vtable = &OBJC_METACLASS___ADStereoV2Pipeline.vtable;
  {
    v6[0] = kADDeviceConfigurationKeyJasperColorIsfCapacity;
    v6[1] = kADDeviceConfigurationKeyJasperColorIsfOutliers;
    v7[0] = &unk_28524A890;
    v7[1] = &unk_28524A8A8;
    v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:v6 count:2];
    +[ADJasperColorInFieldCalibrationInterSessionData defaults]::result = [ADDeviceConfiguration preferencesWithDefaultValues:v5];

    p_vtable = (&OBJC_METACLASS___ADStereoV2Pipeline + 24);
  }

  v3 = p_vtable[453];

  return v3;
}

@end