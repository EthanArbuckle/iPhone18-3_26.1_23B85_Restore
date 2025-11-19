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
  v10 = [a1 sceneprintOutput];
  if (v10)
  {
    if ([v9 requestClassAndReturnError:a5])
    {
      objc_opt_class();
      v11 = [a1 VNEspressoModelImageprintOfClass:objc_opt_class() fromData:v8 tensorDescriptor:v10 originatingRequestSpecifier:v9 fromBlock:0 error:a5];
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
  v10 = [a1 sceneprintOutput];
  if (v10)
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
    aBlock[4] = a1;
    v17 = v9;
    v11 = _Block_copy(aBlock);
    v12 = [v10 name];
    v13 = [v8 accessReadOnlyDataForName:v12 usingBlock:v11 error:a5];

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
  if ([a1 model] == 1)
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