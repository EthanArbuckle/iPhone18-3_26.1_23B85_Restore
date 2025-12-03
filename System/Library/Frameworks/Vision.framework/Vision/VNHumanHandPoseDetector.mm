@interface VNHumanHandPoseDetector
- (BOOL)completeInitializationForSession:(id)session error:(id *)error;
- (id)vcpPoseRequestRuntimeOptionsForDetectorOptions:(id)options error:(id *)error;
- (id)vcpPoseRequestSetupOptionsForDetectorOptions:(id)options error:(id *)error;
@end

@implementation VNHumanHandPoseDetector

- (id)vcpPoseRequestRuntimeOptionsForDetectorOptions:(id)options error:(id *)error
{
  optionsCopy = options;
  v15.receiver = self;
  v15.super_class = VNHumanHandPoseDetector;
  v7 = [(VNHumanPoseDetector *)&v15 vcpPoseRequestRuntimeOptionsForDetectorOptions:optionsCopy error:error];
  if (v7 && (v14 = 0, [VNValidationUtilities getNSUIntegerValue:&v14 forKey:@"VNHumanHandPoseDetectorProcessOption_MaximumHandCount" inOptions:optionsCopy error:error]))
  {
    v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v14];
    v21 = 0;
    v22 = &v21;
    v23 = 0x2020000000;
    v9 = getVCPRequestMaxNumOfHandsPropertyKeySymbolLoc(void)::ptr;
    v24 = getVCPRequestMaxNumOfHandsPropertyKeySymbolLoc(void)::ptr;
    if (!getVCPRequestMaxNumOfHandsPropertyKeySymbolLoc(void)::ptr)
    {
      v16 = MEMORY[0x1E69E9820];
      v17 = 3221225472;
      v18 = ___ZL46getVCPRequestMaxNumOfHandsPropertyKeySymbolLocv_block_invoke;
      v19 = &unk_1E77B69F0;
      v20 = &v21;
      v10 = VideoProcessingLibrary();
      v11 = dlsym(v10, "VCPRequestMaxNumOfHandsPropertyKey");
      *(v20[1] + 24) = v11;
      getVCPRequestMaxNumOfHandsPropertyKeySymbolLoc(void)::ptr = *(v20[1] + 24);
      v9 = v22[3];
    }

    _Block_object_dispose(&v21, 8);
    if (!v9)
    {
      dlerror();
      result = abort_report_np();
      __break(1u);
      return result;
    }

    [v7 setObject:v8 forKeyedSubscript:*v9];

    v12 = v7;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)vcpPoseRequestSetupOptionsForDetectorOptions:(id)options error:(id *)error
{
  optionsCopy = options;
  v15.receiver = self;
  v15.super_class = VNHumanHandPoseDetector;
  v7 = [(VNHumanPoseDetector *)&v15 vcpPoseRequestSetupOptionsForDetectorOptions:optionsCopy error:error];
  if (v7)
  {
    v8 = [VNValidationUtilities originatingRequestSpecifierInOptions:optionsCopy specifyingRequestClass:objc_opt_class() error:error];
    v9 = v8;
    if (!v8)
    {
      goto LABEL_11;
    }

    if ([v8 requestRevision] == 1)
    {
      v21 = 0;
      v22 = &v21;
      v23 = 0x2020000000;
      v10 = getVCPRequestRevisionPropertyKeySymbolLoc(void)::ptr;
      v24 = getVCPRequestRevisionPropertyKeySymbolLoc(void)::ptr;
      if (!getVCPRequestRevisionPropertyKeySymbolLoc(void)::ptr)
      {
        v16 = MEMORY[0x1E69E9820];
        v17 = 3221225472;
        v18 = ___ZL41getVCPRequestRevisionPropertyKeySymbolLocv_block_invoke_19336;
        v19 = &unk_1E77B69F0;
        v20 = &v21;
        v11 = VideoProcessingLibrary();
        v12 = dlsym(v11, "VCPRequestRevisionPropertyKey");
        *(v20[1] + 24) = v12;
        getVCPRequestRevisionPropertyKeySymbolLoc(void)::ptr = *(v20[1] + 24);
        v10 = v22[3];
      }

      _Block_object_dispose(&v21, 8);
      if (!v10)
      {
        dlerror();
        result = abort_report_np();
        __break(1u);
        return result;
      }

      [v7 setObject:&unk_1F19C1558 forKeyedSubscript:*v10];
      v13 = v7;
      goto LABEL_12;
    }

    if (error)
    {
      [VNError errorForUnsupportedRequestSpecifier:v9];
      *error = v13 = 0;
    }

    else
    {
LABEL_11:
      v13 = 0;
    }

LABEL_12:

    goto LABEL_13;
  }

  v13 = 0;
LABEL_13:

  return v13;
}

- (BOOL)completeInitializationForSession:(id)session error:(id *)error
{
  sessionCopy = session;
  v15.receiver = self;
  v15.super_class = VNHumanHandPoseDetector;
  if ([(VNDetector *)&v15 completeInitializationForSession:sessionCopy error:error])
  {
    configurationOptions = [(VNDetector *)self configurationOptions];
    v8 = [(VNHumanHandPoseDetector *)self vcpPoseRequestSetupOptionsForDetectorOptions:configurationOptions error:error];
    if (v8)
    {
      v17 = 0;
      v18 = &v17;
      v19 = 0x2050000000;
      v9 = getVCPHandPoseImageRequestClass(void)::softClass;
      v20 = getVCPHandPoseImageRequestClass(void)::softClass;
      if (!getVCPHandPoseImageRequestClass(void)::softClass)
      {
        v16[0] = MEMORY[0x1E69E9820];
        v16[1] = 3221225472;
        v16[2] = ___ZL31getVCPHandPoseImageRequestClassv_block_invoke;
        v16[3] = &unk_1E77B69F0;
        v16[4] = &v17;
        ___ZL31getVCPHandPoseImageRequestClassv_block_invoke(v16);
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
        [VNError errorForInternalErrorWithLocalizedDescription:@"Unable to setup request in VNDetectHumanHandPoseRequest"];
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