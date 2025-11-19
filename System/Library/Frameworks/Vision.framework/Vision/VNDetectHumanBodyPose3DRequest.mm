@interface VNDetectHumanBodyPose3DRequest
+ (id)_supportedJointNamesRevision1;
+ (id)_supportedJointsGroupsNamesRevision1;
- (BOOL)internalPerformRevision:(unint64_t)a3 inContext:(id)a4 error:(id *)a5;
- (NSArray)supportedJointNamesAndReturnError:(NSError *)error;
- (NSArray)supportedJointsGroupNamesAndReturnError:(NSError *)error;
- (VNDetectHumanBodyPose3DRequest)initWithCompletionHandler:(VNRequestCompletionHandler)completionHandler;
- (VNDetectHumanBodyPose3DRequest)initWithFrameAnalysisSpacing:(id *)a3 completionHandler:(id)a4;
- (id)applicableDetectorTypeForRevision:(unint64_t)a3 error:(id *)a4;
- (void)_initializeStateForRevision:(unint64_t)a3;
- (void)resolvedRevisionDidChangeFromRevision:(unint64_t)a3;
@end

@implementation VNDetectHumanBodyPose3DRequest

- (BOOL)internalPerformRevision:(unint64_t)a3 inContext:(id)a4 error:(id *)a5
{
  v20[1] = *MEMORY[0x1E69E9840];
  v8 = a4;
  v9 = [v8 session];
  v19 = 0;
  v10 = [(VNRequest *)self applicableDetectorAndOptions:&v19 forRevision:a3 loadedInSession:v9 error:a5];
  v11 = v19;
  if (v10)
  {
    v12 = [v8 imageBufferAndReturnError:a5];
    v13 = v12;
    if (v12)
    {
      v20[0] = v12;
      v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:1];
      [v11 setObject:v14 forKeyedSubscript:@"VNDetectorProcessOption_InputImageBuffers"];

      [v11 setObject:self->_bodyPosePipelineWrapper forKeyedSubscript:@"VNHumanBodyPose3DDetectorProcessOption_ABPKPipeline"];
      v15 = [v8 qosClass];
      [(VNImageBasedRequest *)self regionOfInterest];
      v16 = [v10 processUsingQualityOfServiceClass:v15 options:v11 regionOfInterest:self warningRecorder:a5 error:0 progressHandler:?];
      v17 = v16 != 0;
      if (v16)
      {
        [(VNRequest *)self setResults:v16];
      }
    }

    else
    {
      v17 = 0;
    }
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (void)resolvedRevisionDidChangeFromRevision:(unint64_t)a3
{
  v4.receiver = self;
  v4.super_class = VNDetectHumanBodyPose3DRequest;
  [(VNRequest *)&v4 resolvedRevisionDidChangeFromRevision:a3];
  [(VNDetectHumanBodyPose3DRequest *)self _initializeStateForRevision:[(VNRequest *)self resolvedRevision]];
}

- (id)applicableDetectorTypeForRevision:(unint64_t)a3 error:(id *)a4
{
  if (a3 == 1)
  {
    v4 = @"VNHumanBodyPose3DDetectorType";
    v5 = @"VNHumanBodyPose3DDetectorType";
  }

  else if (a4)
  {
    [VNError errorForUnsupportedRevision:"errorForUnsupportedRevision:ofRequest:" ofRequest:?];
    *a4 = v4 = 0;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NSArray)supportedJointsGroupNamesAndReturnError:(NSError *)error
{
  v5 = [(VNRequest *)self resolvedRevision];
  if (v5 == 1)
  {
    v6 = [objc_opt_class() _supportedJointsGroupsNamesRevision1];
  }

  else if (error)
  {
    v7 = [VNError errorForUnsupportedRevision:v5 ofRequest:self];
    v8 = v7;
    v6 = 0;
    *error = v7;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (NSArray)supportedJointNamesAndReturnError:(NSError *)error
{
  v5 = [(VNRequest *)self resolvedRevision];
  if (v5 == 1)
  {
    v6 = [objc_opt_class() _supportedJointNamesRevision1];
  }

  else if (error)
  {
    v7 = [VNError errorForUnsupportedRevision:v5 ofRequest:self];
    v8 = v7;
    v6 = 0;
    *error = v7;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (VNDetectHumanBodyPose3DRequest)initWithFrameAnalysisSpacing:(id *)a3 completionHandler:(id)a4
{
  v8.receiver = self;
  v8.super_class = VNDetectHumanBodyPose3DRequest;
  v7 = *a3;
  v4 = [(VNStatefulRequest *)&v8 initWithFrameAnalysisSpacing:&v7 completionHandler:a4];
  v5 = v4;
  if (v4)
  {
    [(VNDetectHumanBodyPose3DRequest *)v4 _initializeStateForRevision:[(VNRequest *)v4 resolvedRevision]];
  }

  return v5;
}

- (VNDetectHumanBodyPose3DRequest)initWithCompletionHandler:(VNRequestCompletionHandler)completionHandler
{
  v4 = *MEMORY[0x1E6960CC0];
  v5 = *(MEMORY[0x1E6960CC0] + 16);
  return [(VNDetectHumanBodyPose3DRequest *)self initWithFrameAnalysisSpacing:&v4 completionHandler:completionHandler];
}

- (void)_initializeStateForRevision:(unint64_t)a3
{
  self->_bodyPosePipelineWrapper = objc_alloc_init(VNABPKPipelineWrapper);

  MEMORY[0x1EEE66BB8]();
}

+ (id)_supportedJointsGroupsNamesRevision1
{
  if (_supportedJointsGroupsNamesRevision1_onceToken != -1)
  {
    dispatch_once(&_supportedJointsGroupsNamesRevision1_onceToken, &__block_literal_global_29);
  }

  v3 = _supportedJointsGroupsNamesRevision1_supportedJointsGroupsNamesRevision1;

  return v3;
}

void __70__VNDetectHumanBodyPose3DRequest__supportedJointsGroupsNamesRevision1__block_invoke()
{
  v2[7] = *MEMORY[0x1E69E9840];
  v2[0] = @"human_joint_group_head_3D";
  v2[1] = @"human_joint_group_left_arm_3D";
  v2[2] = @"human_joint_group_right_arm_3D";
  v2[3] = @"human_joint_group_torso_3D";
  v2[4] = @"human_joint_group_left_leg_3D";
  v2[5] = @"human_joint_group_right_leg_3D";
  v2[6] = @"VNIPOAll";
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:v2 count:7];
  v1 = _supportedJointsGroupsNamesRevision1_supportedJointsGroupsNamesRevision1;
  _supportedJointsGroupsNamesRevision1_supportedJointsGroupsNamesRevision1 = v0;
}

+ (id)_supportedJointNamesRevision1
{
  if (_supportedJointNamesRevision1_onceToken != -1)
  {
    dispatch_once(&_supportedJointNamesRevision1_onceToken, &__block_literal_global_8214);
  }

  v3 = _supportedJointNamesRevision1_supportedJointNamesRevision1;

  return v3;
}

void __63__VNDetectHumanBodyPose3DRequest__supportedJointNamesRevision1__block_invoke()
{
  v2[17] = *MEMORY[0x1E69E9840];
  v2[0] = @"human_top_head_3D";
  v2[1] = @"human_center_head_3D";
  v2[2] = @"human_center_shoulder_3D";
  v2[3] = @"human_left_shoulder_3D";
  v2[4] = @"human_right_shoulder_3D";
  v2[5] = @"human_spine_3D";
  v2[6] = @"human_left_elbow_3D";
  v2[7] = @"human_right_elbow_3D";
  v2[8] = @"human_left_wrist_3D";
  v2[9] = @"human_right_wrist_3D";
  v2[10] = @"human_root_3D";
  v2[11] = @"human_left_hip_3D";
  v2[12] = @"human_right_hip_3D";
  v2[13] = @"human_left_knee_3D";
  v2[14] = @"human_right_knee_3D";
  v2[15] = @"human_left_ankle_3D";
  v2[16] = @"human_right_ankle_3D";
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:v2 count:17];
  v1 = _supportedJointNamesRevision1_supportedJointNamesRevision1;
  _supportedJointNamesRevision1_supportedJointNamesRevision1 = v0;
}

@end