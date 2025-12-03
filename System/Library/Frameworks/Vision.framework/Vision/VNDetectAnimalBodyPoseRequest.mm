@interface VNDetectAnimalBodyPoseRequest
+ (id)_supportedJointNamesRevision1;
+ (id)_supportedJointsGroupsNamesRevision1;
- (BOOL)internalPerformRevision:(unint64_t)revision inContext:(id)context error:(id *)error;
- (NSArray)supportedJointNamesAndReturnError:(NSError *)error;
- (NSArray)supportedJointsGroupNamesAndReturnError:(NSError *)error;
- (id)applicableDetectorTypeForRevision:(unint64_t)revision error:(id *)error;
@end

@implementation VNDetectAnimalBodyPoseRequest

+ (id)_supportedJointsGroupsNamesRevision1
{
  if (+[VNDetectAnimalBodyPoseRequest _supportedJointsGroupsNamesRevision1]::onceToken != -1)
  {
    dispatch_once(&+[VNDetectAnimalBodyPoseRequest _supportedJointsGroupsNamesRevision1]::onceToken, &__block_literal_global_29_22704);
  }

  v3 = +[VNDetectAnimalBodyPoseRequest _supportedJointsGroupsNamesRevision1]::supportedJointsGroupsNamesRevision1;

  return v3;
}

void __69__VNDetectAnimalBodyPoseRequest__supportedJointsGroupsNamesRevision1__block_invoke()
{
  v2[6] = *MEMORY[0x1E69E9840];
  v2[0] = @"VNIPOAll";
  v2[1] = @"animal_joint_group_head";
  v2[2] = @"animal_joint_group_trunk";
  v2[3] = @"animal_joint_group_gorelegs";
  v2[4] = @"animal_joint_group_hindlegs";
  v2[5] = @"animal_joint_group_tail";
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:v2 count:6];
  v1 = +[VNDetectAnimalBodyPoseRequest _supportedJointsGroupsNamesRevision1]::supportedJointsGroupsNamesRevision1;
  +[VNDetectAnimalBodyPoseRequest _supportedJointsGroupsNamesRevision1]::supportedJointsGroupsNamesRevision1 = v0;
}

+ (id)_supportedJointNamesRevision1
{
  if (+[VNDetectAnimalBodyPoseRequest _supportedJointNamesRevision1]::onceToken != -1)
  {
    dispatch_once(&+[VNDetectAnimalBodyPoseRequest _supportedJointNamesRevision1]::onceToken, &__block_literal_global_22707);
  }

  v3 = +[VNDetectAnimalBodyPoseRequest _supportedJointNamesRevision1]::supportedJointNamesRevision1;

  return v3;
}

void __62__VNDetectAnimalBodyPoseRequest__supportedJointNamesRevision1__block_invoke()
{
  v2[25] = *MEMORY[0x1E69E9840];
  v2[0] = @"animal_joint_left_ear_top";
  v2[1] = @"animal_joint_right_ear_top";
  v2[2] = @"animal_joint_left_ear_middle";
  v2[3] = @"animal_joint_right_ear_middle";
  v2[4] = @"animal_joint_left_ear_bottom";
  v2[5] = @"animal_joint_right_ear_bottom";
  v2[6] = @"animal_joint_left_eye";
  v2[7] = @"animal_joint_right_eye";
  v2[8] = @"animal_joint_nose";
  v2[9] = @"animal_joint_heck";
  v2[10] = @"animal_joint_left_front_elbow";
  v2[11] = @"animal_joint_right_front_elbow";
  v2[12] = @"animal_joint_left_front_knee";
  v2[13] = @"animal_joint_right_front_knee";
  v2[14] = @"animal_joint_left_front_paw";
  v2[15] = @"animal_joint_right_front_paw";
  v2[16] = @"animal_joint_left_back_elbow";
  v2[17] = @"animal_joint_right_back_elbow";
  v2[18] = @"animal_joint_left_back_knee";
  v2[19] = @"animal_joint_right_back_knee";
  v2[20] = @"animal_joint_left_back_paw";
  v2[21] = @"animal_joint_right_back_paw";
  v2[22] = @"animal_joint_tail_top";
  v2[23] = @"animal_joint_tail_middle";
  v2[24] = @"animal_joint_tail_bottom";
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:v2 count:25];
  v1 = +[VNDetectAnimalBodyPoseRequest _supportedJointNamesRevision1]::supportedJointNamesRevision1;
  +[VNDetectAnimalBodyPoseRequest _supportedJointNamesRevision1]::supportedJointNamesRevision1 = v0;
}

- (BOOL)internalPerformRevision:(unint64_t)revision inContext:(id)context error:(id *)error
{
  v19[1] = *MEMORY[0x1E69E9840];
  contextCopy = context;
  v9 = [contextCopy imageBufferAndReturnError:error];
  if (v9)
  {
    session = [contextCopy session];
    v18 = 0;
    v11 = [(VNRequest *)self applicableDetectorAndOptions:&v18 forRevision:revision loadedInSession:session error:error];
    v12 = v18;
    if (v11)
    {
      v19[0] = v9;
      v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:1];
      [v12 setObject:v13 forKeyedSubscript:@"VNDetectorProcessOption_InputImageBuffers"];

      qosClass = [contextCopy qosClass];
      [(VNImageBasedRequest *)self regionOfInterest];
      v15 = [v11 processUsingQualityOfServiceClass:qosClass options:v12 regionOfInterest:self warningRecorder:error error:0 progressHandler:?];
      v16 = v15 != 0;
      if (v15)
      {
        [(VNRequest *)self setResults:v15];
      }
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (NSArray)supportedJointsGroupNamesAndReturnError:(NSError *)error
{
  resolvedRevision = [(VNRequest *)self resolvedRevision];
  if (resolvedRevision == 1)
  {
    _supportedJointsGroupsNamesRevision1 = [objc_opt_class() _supportedJointsGroupsNamesRevision1];
  }

  else if (error)
  {
    v7 = [VNError errorForUnsupportedRevision:resolvedRevision ofRequest:self];
    v8 = v7;
    _supportedJointsGroupsNamesRevision1 = 0;
    *error = v7;
  }

  else
  {
    _supportedJointsGroupsNamesRevision1 = 0;
  }

  return _supportedJointsGroupsNamesRevision1;
}

- (NSArray)supportedJointNamesAndReturnError:(NSError *)error
{
  resolvedRevision = [(VNRequest *)self resolvedRevision];
  if (resolvedRevision == 1)
  {
    _supportedJointNamesRevision1 = [objc_opt_class() _supportedJointNamesRevision1];
  }

  else if (error)
  {
    v7 = [VNError errorForUnsupportedRevision:resolvedRevision ofRequest:self];
    v8 = v7;
    _supportedJointNamesRevision1 = 0;
    *error = v7;
  }

  else
  {
    _supportedJointNamesRevision1 = 0;
  }

  return _supportedJointNamesRevision1;
}

- (id)applicableDetectorTypeForRevision:(unint64_t)revision error:(id *)error
{
  if (revision == 1)
  {
    v4 = @"VNAnimalBodyPoseDetectorType";
    v5 = @"VNAnimalBodyPoseDetectorType";
  }

  else if (error)
  {
    [VNError errorForUnsupportedRevision:"errorForUnsupportedRevision:ofRequest:" ofRequest:?];
    *error = v4 = 0;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end