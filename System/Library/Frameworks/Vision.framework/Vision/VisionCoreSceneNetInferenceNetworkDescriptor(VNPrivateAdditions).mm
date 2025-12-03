@interface VisionCoreSceneNetInferenceNetworkDescriptor(VNPrivateAdditions)
- (id)VNPublicClassificationDisallowedList;
- (id)VNSceneprintFromData:()VNPrivateAdditions originatingRequestSpecifier:error:;
- (id)VNSceneprintFromOutputObjects:()VNPrivateAdditions originatingRequestSpecifier:error:;
@end

@implementation VisionCoreSceneNetInferenceNetworkDescriptor(VNPrivateAdditions)

- (id)VNSceneprintFromData:()VNPrivateAdditions originatingRequestSpecifier:error:
{
  v8 = a3;
  v9 = a4;
  sceneprintOutput = [self sceneprintOutput];
  if (sceneprintOutput)
  {
    if ([v9 requestClassAndReturnError:a5])
    {
      objc_opt_class();
      v11 = [self VNEspressoModelImageprintOfClass:objc_opt_class() fromData:v8 tensorDescriptor:sceneprintOutput originatingRequestSpecifier:v9 fromBlock:0 error:a5];
      goto LABEL_7;
    }
  }

  else if (a5)
  {
    [VNError errorForDataUnavailableWithLocalizedDescription:@"could not obtain sceneprint descriptor" underlyingError:0];
    *a5 = v11 = 0;
    goto LABEL_7;
  }

  v11 = 0;
LABEL_7:

  return v11;
}

- (id)VNSceneprintFromOutputObjects:()VNPrivateAdditions originatingRequestSpecifier:error:
{
  v8 = a3;
  v9 = a4;
  sceneprintOutput = [self sceneprintOutput];
  if (sceneprintOutput)
  {
    v19 = 0;
    v20 = &v19;
    v21 = 0x3032000000;
    v22 = __Block_byref_object_copy__13927;
    v23 = __Block_byref_object_dispose__13928;
    v24 = 0;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __132__VisionCoreSceneNetInferenceNetworkDescriptor_VNPrivateAdditions__VNSceneprintFromOutputObjects_originatingRequestSpecifier_error___block_invoke;
    aBlock[3] = &unk_1E77B3C08;
    v18 = &v19;
    aBlock[4] = self;
    v17 = v9;
    v11 = _Block_copy(aBlock);
    name = [sceneprintOutput name];
    v13 = [v8 accessReadOnlyDataForName:name usingBlock:v11 error:a5];

    if (v13)
    {
      v14 = v20[5];
    }

    else
    {
      v14 = 0;
    }

    _Block_object_dispose(&v19, 8);
  }

  else if (a5)
  {
    [VNError errorForInternalErrorWithLocalizedDescription:@"sceneprint output descriptor is not defined"];
    *a5 = v14 = 0;
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (id)VNPublicClassificationDisallowedList
{
  if ([self model] == 1)
  {
    v1 = +[VNDisallowedList sceneNetV3];
  }

  else
  {
    v1 = 0;
  }

  return v1;
}

@end