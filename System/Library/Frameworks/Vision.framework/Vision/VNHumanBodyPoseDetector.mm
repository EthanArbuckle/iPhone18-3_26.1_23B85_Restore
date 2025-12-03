@interface VNHumanBodyPoseDetector
+ (id)configurationOptionKeysForDetectorKey;
+ (id)supportedComputeStageDevicesForOptions:(id)options error:(id *)error;
- (BOOL)canBehaveAsDetectorOfClass:(Class)class withConfiguration:(id)configuration;
- (BOOL)completeInitializationForSession:(id)session error:(id *)error;
- (BOOL)shouldBeReplacedByDetectorOfClass:(Class)class withConfiguration:(id)configuration;
- (id)_vcpRequestRevisionForOptions:(id)options;
- (id)vcpPoseRequestSetupOptionsForDetectorOptions:(id)options error:(id *)error;
@end

@implementation VNHumanBodyPoseDetector

+ (id)supportedComputeStageDevicesForOptions:(id)options error:(id *)error
{
  v17[1] = *MEMORY[0x1E69E9840];
  optionsCopy = options;
  v6 = [VNValidationUtilities originatingRequestSpecifierInOptions:optionsCopy error:error];
  if (!v6)
  {
    goto LABEL_13;
  }

  v7 = [v6 specifiesRequestClass:objc_opt_class()];
  if (error)
  {
    v8 = v7;
  }

  else
  {
    v8 = 1;
  }

  if ((v8 & 1) == 0)
  {
    *error = [VNError errorForUnsupportedRequestSpecifier:v6];
  }

  requestRevision = [v6 requestRevision];
  if (requestRevision == 1)
  {
    v16 = @"VNComputeStageMain";
    v12 = +[VNComputeDeviceUtilities allComputeDevices];
    v17[0] = v12;
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:&v16 count:1];

    goto LABEL_14;
  }

  if (requestRevision == 3737841664)
  {
    v14 = @"VNComputeStageMain";
    v10 = +[VNComputeDeviceUtilities allNeuralEngineComputeDevices];
    v15 = v10;
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v15 forKeys:&v14 count:1];

    goto LABEL_14;
  }

  if (error)
  {
    [VNError errorForUnsupportedRequestSpecifier:v6];
    *error = v11 = 0;
  }

  else
  {
LABEL_13:
    v11 = 0;
  }

LABEL_14:

  return v11;
}

+ (id)configurationOptionKeysForDetectorKey
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __64__VNHumanBodyPoseDetector_configurationOptionKeysForDetectorKey__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (+[VNHumanBodyPoseDetector configurationOptionKeysForDetectorKey]::onceToken != -1)
  {
    dispatch_once(&+[VNHumanBodyPoseDetector configurationOptionKeysForDetectorKey]::onceToken, block);
  }

  v2 = +[VNHumanBodyPoseDetector configurationOptionKeysForDetectorKey]::configurationOptionKeys;

  return v2;
}

void __64__VNHumanBodyPoseDetector_configurationOptionKeysForDetectorKey__block_invoke(uint64_t a1)
{
  v5.receiver = *(a1 + 32);
  v5.super_class = &OBJC_METACLASS___VNHumanBodyPoseDetector;
  v1 = objc_msgSendSuper2(&v5, sel_configurationOptionKeysForDetectorKey);
  v2 = [v1 mutableCopy];

  v3 = [v2 copy];
  v4 = +[VNHumanBodyPoseDetector configurationOptionKeysForDetectorKey]::configurationOptionKeys;
  +[VNHumanBodyPoseDetector configurationOptionKeysForDetectorKey]::configurationOptionKeys = v3;
}

- (id)_vcpRequestRevisionForOptions:(id)options
{
  v7 = 1;
  v6 = 0;
  v3 = [VNValidationUtilities getBOOLValue:&v7 forKey:@"VNHumanBodyPoseDetectorProcessOption_HolisticDetection" inOptions:options withDefaultValue:1 error:&v6];
  v4 = &unk_1F19C14F8;
  if (v7)
  {
    v4 = &unk_1F19C14E0;
  }

  if (v3)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

- (id)vcpPoseRequestSetupOptionsForDetectorOptions:(id)options error:(id *)error
{
  optionsCopy = options;
  v15.receiver = self;
  v15.super_class = VNHumanBodyPoseDetector;
  v7 = [(VNHumanPoseDetector *)&v15 vcpPoseRequestSetupOptionsForDetectorOptions:optionsCopy error:error];
  if (!v7)
  {
    v13 = 0;
    goto LABEL_13;
  }

  v8 = [VNValidationUtilities originatingRequestSpecifierInOptions:optionsCopy specifyingRequestClass:objc_opt_class() error:error];
  v9 = v8;
  if (!v8)
  {
    goto LABEL_11;
  }

  requestRevision = [v8 requestRevision];
  if (requestRevision == 1)
  {
    v11 = getVCPRequestRevisionPropertyKey();
    [v7 setObject:&unk_1F19C1510 forKeyedSubscript:v11];
    goto LABEL_8;
  }

  if (requestRevision != 3737841664)
  {
    if (error)
    {
      [VNError errorForUnsupportedRequestSpecifier:v9];
      *error = v13 = 0;
      goto LABEL_12;
    }

LABEL_11:
    v13 = 0;
    goto LABEL_12;
  }

  v11 = [(VNHumanBodyPoseDetector *)self _vcpRequestRevisionForOptions:optionsCopy];
  v12 = getVCPRequestRevisionPropertyKey();
  [v7 setObject:v11 forKeyedSubscript:v12];

LABEL_8:
  v13 = v7;
LABEL_12:

LABEL_13:

  return v13;
}

- (BOOL)shouldBeReplacedByDetectorOfClass:(Class)class withConfiguration:(id)configuration
{
  configurationCopy = configuration;
  configurationOptions = [(VNDetector *)self configurationOptions];
  v8 = [(VNHumanBodyPoseDetector *)self _vcpRequestRevisionForOptions:configurationOptions];

  v9 = [(VNHumanBodyPoseDetector *)self _vcpRequestRevisionForOptions:configurationCopy];
  if ([v8 isEqualToNumber:&unk_1F19C14F8] && (objc_msgSend(v9, "isEqualToNumber:", &unk_1F19C14E0) & 1) != 0)
  {
    v10 = 1;
  }

  else
  {
    v12.receiver = self;
    v12.super_class = VNHumanBodyPoseDetector;
    v10 = [(VNDetector *)&v12 shouldBeReplacedByDetectorOfClass:class withConfiguration:configurationCopy];
  }

  return v10;
}

- (BOOL)canBehaveAsDetectorOfClass:(Class)class withConfiguration:(id)configuration
{
  configurationCopy = configuration;
  configurationOptions = [(VNDetector *)self configurationOptions];
  v8 = [(VNHumanBodyPoseDetector *)self _vcpRequestRevisionForOptions:configurationOptions];

  v9 = [(VNHumanBodyPoseDetector *)self _vcpRequestRevisionForOptions:configurationCopy];
  if ([v8 isEqualToNumber:v9])
  {
    v12.receiver = self;
    v12.super_class = VNHumanBodyPoseDetector;
    v10 = [(VNDetector *)&v12 canBehaveAsDetectorOfClass:class withConfiguration:configurationCopy];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BOOL)completeInitializationForSession:(id)session error:(id *)error
{
  sessionCopy = session;
  v15.receiver = self;
  v15.super_class = VNHumanBodyPoseDetector;
  if ([(VNDetector *)&v15 completeInitializationForSession:sessionCopy error:error])
  {
    configurationOptions = [(VNDetector *)self configurationOptions];
    v8 = [(VNHumanBodyPoseDetector *)self vcpPoseRequestSetupOptionsForDetectorOptions:configurationOptions error:error];
    if (v8)
    {
      v17 = 0;
      v18 = &v17;
      v19 = 0x2050000000;
      v9 = getVCPHumanPoseImageRequestClass(void)::softClass;
      v20 = getVCPHumanPoseImageRequestClass(void)::softClass;
      if (!getVCPHumanPoseImageRequestClass(void)::softClass)
      {
        v16[0] = MEMORY[0x1E69E9820];
        v16[1] = 3221225472;
        v16[2] = ___ZL32getVCPHumanPoseImageRequestClassv_block_invoke;
        v16[3] = &unk_1E77B69F0;
        v16[4] = &v17;
        ___ZL32getVCPHumanPoseImageRequestClassv_block_invoke(v16);
        v9 = v18[3];
      }

      v10 = v9;
      _Block_object_dispose(&v17, 8);
      v11 = [[v9 alloc] initWithOptions:v8];
      humanPoseDetector = self->super._humanPoseDetector;
      self->super._humanPoseDetector = v11;

      if (self->super._humanPoseDetector)
      {
        v13 = 1;
LABEL_11:

        goto LABEL_12;
      }

      if (error)
      {
        [VNError errorForInternalErrorWithLocalizedDescription:@"Unable to setup request in VNDetectHumanBodyPoseRequest"];
        *error = v13 = 0;
        goto LABEL_11;
      }
    }

    v13 = 0;
    goto LABEL_11;
  }

  v13 = 0;
LABEL_12:

  return v13;
}

@end