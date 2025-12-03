@interface ADPearlColorInFieldCalibrationInterSessionData
+ (id)defaults;
- (ADPearlColorInFieldCalibrationInterSessionData)initWithDictionaryRepresentation:(id)representation andDeviceName:(id)name;
- (ADPearlColorInFieldCalibrationInterSessionData)initWithDictionaryRepresentation:(id)representation andFlowType:(int)type;
- (ADPearlColorInFieldCalibrationInterSessionData)initWithFactoryPearlToColorTransform:(__n128)transform currentPearlToColorTransform:(__n128)colorTransform andFlowType:(double)type;
- (__n128)convertDictToExtrinsicsAngles:(void *)angles;
- (id)convertExtrinsicsAnglesToDict:(ADPearlColorInFieldCalibrationInterSessionData *)self;
- (id)persistenceData;
- (uint64_t)initWithFactoryPearlToColorTransform:(double)transform currentPearlToColorTransform:(double)colorTransform andDeviceName:(double)name;
- (void)initIsfWithFlowType:(int)type;
@end

@implementation ADPearlColorInFieldCalibrationInterSessionData

- (__n128)convertDictToExtrinsicsAngles:(void *)angles
{
  anglesCopy = angles;
  v4 = [anglesCopy objectForKeyedSubscript:@"rotX"];
  [v4 floatValue];
  v13 = v5;
  v6 = [anglesCopy objectForKeyedSubscript:@"rotY"];
  [v6 floatValue];
  v12 = v7;
  v8 = [anglesCopy objectForKeyedSubscript:@"rotZ"];
  [v8 floatValue];
  v11 = v9;

  result.n128_u32[0] = v13;
  result.n128_u32[1] = v12;
  result.n128_u32[2] = v11;
  return result;
}

- (id)convertExtrinsicsAnglesToDict:(ADPearlColorInFieldCalibrationInterSessionData *)self
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
  v21[3] = *MEMORY[0x277D85DE8];
  v20[0] = @"rotX";
  LODWORD(v2) = *self->_pearlToColorRotationAngles;
  v4 = [MEMORY[0x277CCABB0] numberWithFloat:v2];
  v21[0] = v4;
  v20[1] = @"rotY";
  LODWORD(v5) = *&self->_pearlToColorRotationAngles[4];
  v6 = [MEMORY[0x277CCABB0] numberWithFloat:v5];
  v21[1] = v6;
  v20[2] = @"rotZ";
  LODWORD(v7) = *&self->_pearlToColorRotationAngles[8];
  v8 = [MEMORY[0x277CCABB0] numberWithFloat:v7];
  v21[2] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:3];

  v10 = MEMORY[0x277CBEB38];
  v18[0] = @"isfHistoryKey";
  persistenceData = [(ADInterSessionFilter *)self->super._isf persistenceData];
  v19[0] = persistenceData;
  v18[1] = @"telemetryKey";
  inFieldCalibrationTelemetryData = [(ADPearlColorInFieldCalibrationInterSessionData *)self inFieldCalibrationTelemetryData];
  persistenceData2 = [inFieldCalibrationTelemetryData persistenceData];
  v19[1] = persistenceData2;
  v19[2] = v9;
  v18[2] = @"depthToMcamFactoryExtrinsics";
  v18[3] = @"interSessionDataVersion";
  v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{-[ADInFieldCalibrationInterSessionData version](self, "version")}];
  v19[3] = v14;
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:4];
  v16 = [v10 dictionaryWithDictionary:v15];

  return v16;
}

- (ADPearlColorInFieldCalibrationInterSessionData)initWithFactoryPearlToColorTransform:(__n128)transform currentPearlToColorTransform:(__n128)colorTransform andFlowType:(double)type
{
  v36.receiver = self;
  v36.super_class = ADPearlColorInFieldCalibrationInterSessionData;
  v11 = [(ADInFieldCalibrationInterSessionData *)&v36 init];
  v12 = v11;
  if (v11 && (([(ADInFieldCalibrationInterSessionData *)v11 setVersion:6], [(ADPearlColorInFieldCalibrationInterSessionData *)v12 initIsfWithFlowType:a10], !v12->super._isf) || (v13 = objc_alloc_init(ADPearlColorInFieldCalibrationTelemetryData), inFieldCalibrationTelemetryData = v12->_inFieldCalibrationTelemetryData, v12->_inFieldCalibrationTelemetryData = v13, inFieldCalibrationTelemetryData, v33 = 0u, v34 = 0u, v33.i32[2] = a2.n128_i32[2], v35 = 0u, v34.i32[2] = transform.n128_i32[2], v33.i64[0] = a2.n128_u64[0], v34.i64[0] = transform.n128_u64[0], v35.i32[2] = colorTransform.n128_i32[2], v35.i64[0] = colorTransform.n128_u64[0], [ADUtils calcRotationAngle:&v33], *v12->_pearlToColorRotationAngles = v15, v30 = 0u, v31 = 0u, v32 = 0u, v16 = vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(a6, v33.f32[0]), a7, v34.f32[0]), a8, v35.f32[0]), v17 = vmlaq_lane_f32(vmlaq_lane_f32(vmulq_lane_f32(a6, *v33.f32, 1), a7, *v34.f32, 1), a8, *v35.f32, 1), v18 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(a6, v33, 2), a7, v34, 2), a8, v35, 2), DWORD2(v30) = v16.i32[2], DWORD2(v31) = v17.i32[2], *&v30 = v16.i64[0], *&v31 = v17.i64[0], DWORD2(v32) = v18.i32[2], *&v32 = v18.i64[0], [ADUtils calcRotationAngle:&v30], isf = v12->super._isf, [(ADPearlColorInFieldCalibrationInterSessionData *)v12 convertExtrinsicsAnglesToDict:?], v20 = objc_claimAutoreleasedReturnValue(), v21 = [(ADInterSessionFilter *)isf fillWithEntry:v20], v20, v21)))
  {
    v22 = 0;
  }

  else
  {
    v22 = v12;
  }

  return v22;
}

- (ADPearlColorInFieldCalibrationInterSessionData)initWithDictionaryRepresentation:(id)representation andFlowType:(int)type
{
  v4 = *&type;
  representationCopy = representation;
  v25.receiver = self;
  v25.super_class = ADPearlColorInFieldCalibrationInterSessionData;
  v7 = [(ADInFieldCalibrationInterSessionData *)&v25 init];
  if (!v7)
  {
    goto LABEL_15;
  }

  v8 = [representationCopy objectForKey:@"interSessionDataVersion"];
  -[ADInFieldCalibrationInterSessionData setVersion:](v7, "setVersion:", [v8 unsignedIntValue]);

  if ([(ADInFieldCalibrationInterSessionData *)v7 version]< 5 || [(ADInFieldCalibrationInterSessionData *)v7 version]> 6 || ([(ADPearlColorInFieldCalibrationInterSessionData *)v7 initIsfWithFlowType:v4], !v7->super._isf))
  {
LABEL_17:
    v23 = 0;
    goto LABEL_18;
  }

  v9 = [representationCopy objectForKey:@"telemetryKey"];
  v10 = [representationCopy objectForKey:@"isfHistoryKey"];
  v11 = [representationCopy objectForKey:@"depthToMcamFactoryExtrinsics"];
  isf = v7->super._isf;
  if (!v10)
  {
    v13 = [(ADPearlColorInFieldCalibrationInterSessionData *)v7 convertExtrinsicsAnglesToDict:0.0];
    v14 = [(ADInterSessionFilter *)isf fillWithEntry:v13];

    if (!v14)
    {
      goto LABEL_9;
    }

LABEL_16:

    goto LABEL_17;
  }

  if ([(ADInterSessionFilter *)v7->super._isf fillWithDictionaryRepresentation:v10])
  {
    goto LABEL_16;
  }

LABEL_9:
  if (v9)
  {
    v15 = [[ADPearlColorInFieldCalibrationTelemetryData alloc] initWithDictionaryRepresentation:v9];
  }

  else
  {
    v15 = objc_alloc_init(ADPearlColorInFieldCalibrationTelemetryData);
  }

  inFieldCalibrationTelemetryData = v7->_inFieldCalibrationTelemetryData;
  v7->_inFieldCalibrationTelemetryData = v15;

  if (!v7->_inFieldCalibrationTelemetryData || !v11)
  {
    goto LABEL_16;
  }

  v17 = [v11 objectForKeyedSubscript:@"rotX"];
  [v17 floatValue];
  *v7->_pearlToColorRotationAngles = v18;

  v19 = [v11 objectForKeyedSubscript:@"rotY"];
  [v19 floatValue];
  *&v7->_pearlToColorRotationAngles[4] = v20;

  v21 = [v11 objectForKeyedSubscript:@"rotZ"];
  [v21 floatValue];
  *&v7->_pearlToColorRotationAngles[8] = v22;

  [(ADInFieldCalibrationInterSessionData *)v7 setVersion:6];
LABEL_15:
  v23 = v7;
LABEL_18:

  return v23;
}

- (ADPearlColorInFieldCalibrationInterSessionData)initWithDictionaryRepresentation:(id)representation andDeviceName:(id)name
{
  representationCopy = representation;
  nameCopy = name;
  if ([nameCopy hasPrefix:@"J7"] & 1) != 0 || (objc_msgSend(nameCopy, "hasPrefix:", @"J8"))
  {
    v8 = 1;
  }

  else if ([nameCopy hasPrefix:@"V59"])
  {
    v8 = 2;
  }

  else if ([nameCopy hasPrefix:@"V5"])
  {
    v8 = 3;
  }

  else if ([nameCopy hasPrefix:@"D23"])
  {
    v8 = 3;
  }

  else
  {
    v8 = 0;
  }

  v9 = [(ADPearlColorInFieldCalibrationInterSessionData *)self initWithDictionaryRepresentation:representationCopy andFlowType:v8];
  return v9;
}

- (uint64_t)initWithFactoryPearlToColorTransform:(double)transform currentPearlToColorTransform:(double)colorTransform andDeviceName:(double)name
{
  v12 = a11;
  if ([v12 hasPrefix:@"J7"] & 1) != 0 || (objc_msgSend(v12, "hasPrefix:", @"J8"))
  {
    v13 = 1;
  }

  else if ([v12 hasPrefix:@"V59"])
  {
    v13 = 2;
  }

  else if ([v12 hasPrefix:@"V5"])
  {
    v13 = 3;
  }

  else if ([v12 hasPrefix:@"D23"])
  {
    v13 = 3;
  }

  else
  {
    v13 = 0;
  }

  v14 = [self initWithFactoryPearlToColorTransform:v13 currentPearlToColorTransform:a2 andFlowType:{transform, colorTransform, name, a6, a7, a8, a9}];
  return v14;
}

- (void)initIsfWithFlowType:(int)type
{
  [(ADInterSessionFilterParameters *)self->super._isfParameters setIsStepDetectionActive:1];
  [(ADInterSessionFilterParameters *)self->super._isfParameters setMinStepIndex:2];
  LODWORD(v5) = 1053609165;
  [(ADInterSessionFilterParameters *)self->super._isfParameters setMinimalWeight:v5];
  LODWORD(v6) = 4.0;
  [(ADInterSessionFilterParameters *)self->super._isfParameters setMaximalWeight:v6];
  LODWORD(v7) = 1053609165;
  [(ADInterSessionFilterParameters *)self->super._isfParameters setOutlierWeight:v7];
  LODWORD(v8) = 1092691385;
  [(ADInterSessionFilterParameters *)self->super._isfParameters setStepDetectionThreshold:v8];
  isf = self->super._isf;
  self->super._isf = 0;

  if (type > 3)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *v18 = 0;
      _os_log_error_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "initIsf unknown flow type", v18, 2u);
    }
  }

  else
  {
    defaults = [objc_opt_class() defaults];
    v11 = [defaults numberForKey:kADDeviceConfigurationKeyPearlColorIsfCapacity];
    -[ADInterSessionFilterParameters setMinimalEntriesForResult:](self->super._isfParameters, "setMinimalEntriesForResult:", [v11 unsignedIntValue]);

    defaults2 = [objc_opt_class() defaults];
    v13 = [defaults2 numberForKey:kADDeviceConfigurationKeyPearlColorIsfCapacity];
    -[ADInterSessionFilterParameters setCapacity:](self->super._isfParameters, "setCapacity:", [v13 unsignedIntValue]);

    defaults3 = [objc_opt_class() defaults];
    v15 = [defaults3 numberForKey:kADDeviceConfigurationKeyPearlColorIsfOutliers];
    -[ADInterSessionFilterParameters setOutlierNumber:](self->super._isfParameters, "setOutlierNumber:", [v15 unsignedIntValue]);

    [(ADInterSessionFilterParameters *)self->super._isfParameters setMinStepSize:10];
    v16 = [objc_alloc(MEMORY[0x277CED090]) initWithFieldNames:&unk_28524AB30 parameters:self->super._isfParameters];
    v17 = self->super._isf;
    self->super._isf = v16;
  }
}

+ (id)defaults
{
  v7[2] = *MEMORY[0x277D85DE8];
  p_opt_class_meths = &OBJC_PROTOCOL___NSObject.opt_class_meths;
  {
    v6[0] = kADDeviceConfigurationKeyPearlColorIsfCapacity;
    v6[1] = kADDeviceConfigurationKeyPearlColorIsfOutliers;
    v7[0] = &unk_28524A818;
    v7[1] = &unk_28524A830;
    v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:v6 count:2];
    +[ADPearlColorInFieldCalibrationInterSessionData defaults]::result = [ADDeviceConfiguration preferencesWithDefaultValues:v5];

    p_opt_class_meths = (&OBJC_PROTOCOL___NSObject + 48);
  }

  v3 = p_opt_class_meths[138];

  return v3;
}

@end