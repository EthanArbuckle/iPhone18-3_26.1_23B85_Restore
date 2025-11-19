@interface VNHumanBodyPoseDetector
+ (id)configurationOptionKeysForDetectorKey;
+ (id)supportedComputeStageDevicesForOptions:(id)a3 error:(id *)a4;
- (BOOL)canBehaveAsDetectorOfClass:(Class)a3 withConfiguration:(id)a4;
- (BOOL)completeInitializationForSession:(id)a3 error:(id *)a4;
- (BOOL)shouldBeReplacedByDetectorOfClass:(Class)a3 withConfiguration:(id)a4;
- (id)_vcpRequestRevisionForOptions:(id)a3;
- (id)vcpPoseRequestSetupOptionsForDetectorOptions:(id)a3 error:(id *)a4;
@end

@implementation VNHumanBodyPoseDetector

+ (id)supportedComputeStageDevicesForOptions:(id)a3 error:(id *)a4
{
  v17[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [VNValidationUtilities originatingRequestSpecifierInOptions:v5 error:a4];
  if (!v6)
  {
    goto LABEL_13;
  }

  v7 = [v6 specifiesRequestClass:objc_opt_class()];
  if (a4)
  {
    v8 = v7;
  }

  else
  {
    v8 = 1;
  }

  if ((v8 & 1) == 0)
  {
    *a4 = [VNError errorForUnsupportedRequestSpecifier:v6];
  }

  v9 = [v6 requestRevision];
  if (v9 == 1)
  {
    v16 = @"VNComputeStageMain";
    v12 = +[VNComputeDeviceUtilities allComputeDevices];
    v17[0] = v12;
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:&v16 count:1];

    goto LABEL_14;
  }

  if (v9 == 3737841664)
  {
    v14 = @"VNComputeStageMain";
    v10 = +[VNComputeDeviceUtilities allNeuralEngineComputeDevices];
    v15 = v10;
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v15 forKeys:&v14 count:1];

    goto LABEL_14;
  }

  if (a4)
  {
    [VNError errorForUnsupportedRequestSpecifier:v6];
    *a4 = v11 = 0;
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
  block[4] = a1;
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

- (id)_vcpRequestRevisionForOptions:(id)a3
{
  v7 = 1;
  v6 = 0;
  v3 = [VNValidationUtilities getBOOLValue:&v7 forKey:@"VNHumanBodyPoseDetectorProcessOption_HolisticDetection" inOptions:a3 withDefaultValue:1 error:&v6];
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

- (id)vcpPoseRequestSetupOptionsForDetectorOptions:(id)a3 error:(id *)a4
{
  v6 = a3;
  v15.receiver = self;
  v15.super_class = VNHumanBodyPoseDetector;
  v7 = [(VNHumanPoseDetector *)&v15 vcpPoseRequestSetupOptionsForDetectorOptions:v6 error:a4];
  if (!v7)
  {
    v13 = 0;
    goto LABEL_13;
  }

  v8 = [VNValidationUtilities originatingRequestSpecifierInOptions:v6 specifyingRequestClass:objc_opt_class() error:a4];
  v9 = v8;
  if (!v8)
  {
    goto LABEL_11;
  }

  v10 = [v8 requestRevision];
  if (v10 == 1)
  {
    v11 = getVCPRequestRevisionPropertyKey();
    [v7 setObject:&unk_1F19C1510 forKeyedSubscript:v11];
    goto LABEL_8;
  }

  if (v10 != 3737841664)
  {
    if (a4)
    {
      [VNError errorForUnsupportedRequestSpecifier:v9];
      *a4 = v13 = 0;
      goto LABEL_12;
    }

LABEL_11:
    v13 = 0;
    goto LABEL_12;
  }

  v11 = [(VNHumanBodyPoseDetector *)self _vcpRequestRevisionForOptions:v6];
  v12 = getVCPRequestRevisionPropertyKey();
  [v7 setObject:v11 forKeyedSubscript:v12];

LABEL_8:
  v13 = v7;
LABEL_12:

LABEL_13:

  return v13;
}

- (BOOL)shouldBeReplacedByDetectorOfClass:(Class)a3 withConfiguration:(id)a4
{
  v6 = a4;
  v7 = [(VNDetector *)self configurationOptions];
  v8 = [(VNHumanBodyPoseDetector *)self _vcpRequestRevisionForOptions:v7];

  v9 = [(VNHumanBodyPoseDetector *)self _vcpRequestRevisionForOptions:v6];
  if ([v8 isEqualToNumber:&unk_1F19C14F8] && (objc_msgSend(v9, "isEqualToNumber:", &unk_1F19C14E0) & 1) != 0)
  {
    v10 = 1;
  }

  else
  {
    v12.receiver = self;
    v12.super_class = VNHumanBodyPoseDetector;
    v10 = [(VNDetector *)&v12 shouldBeReplacedByDetectorOfClass:a3 withConfiguration:v6];
  }

  return v10;
}

- (BOOL)canBehaveAsDetectorOfClass:(Class)a3 withConfiguration:(id)a4
{
  v6 = a4;
  v7 = [(VNDetector *)self configurationOptions];
  v8 = [(VNHumanBodyPoseDetector *)self _vcpRequestRevisionForOptions:v7];

  v9 = [(VNHumanBodyPoseDetector *)self _vcpRequestRevisionForOptions:v6];
  if ([v8 isEqualToNumber:v9])
  {
    v12.receiver = self;
    v12.super_class = VNHumanBodyPoseDetector;
    v10 = [(VNDetector *)&v12 canBehaveAsDetectorOfClass:a3 withConfiguration:v6];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BOOL)completeInitializationForSession:(id)a3 error:(id *)a4
{
  v6 = a3;
  v15.receiver = self;
  v15.super_class = VNHumanBodyPoseDetector;
  if ([(VNDetector *)&v15 completeInitializationForSession:v6 error:a4])
  {
    v7 = [(VNDetector *)self configurationOptions];
    v8 = [(VNHumanBodyPoseDetector *)self vcpPoseRequestSetupOptionsForDetectorOptions:v7 error:a4];
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

      if (a4)
      {
        [VNError errorForInternalErrorWithLocalizedDescription:@"Unable to setup request in VNDetectHumanBodyPoseRequest"];
        *a4 = v13 = 0;
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