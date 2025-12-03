@interface VNDetectHumanBodyPoseRequest
+ (NSArray)supportedJointNamesForRevision:(NSUInteger)revision error:(NSError *)error;
+ (NSArray)supportedJointsGroupNamesForRevision:(NSUInteger)revision error:(NSError *)error;
+ (id)_supportedJointNamesRevision1;
+ (id)_supportedJointsGroupNamesRevision1;
+ (id)descriptionForPrivateRevision:(unint64_t)revision;
+ (id)privateRevisionsSet;
- (BOOL)internalPerformRevision:(unint64_t)revision inContext:(id)context error:(id *)error;
- (NSArray)supportedJointNamesAndReturnError:(NSError *)error;
- (NSArray)supportedJointsGroupNamesAndReturnError:(NSError *)error;
- (id)applicableDetectorTypeForRevision:(unint64_t)revision error:(id *)error;
- (id)newDefaultDetectorOptionsForRequestRevision:(unint64_t)revision session:(id)session;
@end

@implementation VNDetectHumanBodyPoseRequest

- (BOOL)internalPerformRevision:(unint64_t)revision inContext:(id)context error:(id *)error
{
  v22[1] = *MEMORY[0x1E69E9840];
  contextCopy = context;
  v9 = [contextCopy imageBufferAndReturnError:error];
  if (v9)
  {
    session = [contextCopy session];
    v21 = 0;
    v11 = [(VNRequest *)self applicableDetectorAndOptions:&v21 forRevision:revision loadedInSession:session error:error];
    v12 = v21;
    if (v11)
    {
      v22[0] = v9;
      v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:1];
      [v12 setObject:v13 forKeyedSubscript:@"VNDetectorProcessOption_InputImageBuffers"];

      if (revision == 3737841664)
      {
        v14 = [MEMORY[0x1E696AD98] numberWithBool:{-[VNDetectHumanBodyPoseRequest detectsHands](self, "detectsHands")}];
        [v12 setObject:v14 forKey:@"VNHumanBodyPoseDetectorProcessOption_HolisticDetection"];
      }

      qosClass = [contextCopy qosClass];
      [(VNImageBasedRequest *)self regionOfInterest];
      v16 = [v11 processUsingQualityOfServiceClass:qosClass options:v12 regionOfInterest:self warningRecorder:error error:0 progressHandler:?];
      v17 = v16 != 0;
      if (v16)
      {
        if (revision == 1 && [(VisionCoreRuntimeUtilities *)VNRuntimeUtilities linkTimeOrRunTimeBeforeVersion:393216])
        {
          v18 = &__block_literal_global_125;
          v19 = [v16 sortedArrayWithOptions:16 usingComparator:&__block_literal_global_125];

          v16 = v19;
        }

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

- (id)newDefaultDetectorOptionsForRequestRevision:(unint64_t)revision session:(id)session
{
  v8.receiver = self;
  v8.super_class = VNDetectHumanBodyPoseRequest;
  v5 = [(VNRequest *)&v8 newDefaultDetectorOptionsForRequestRevision:revision session:session];
  v6 = [MEMORY[0x1E696AD98] numberWithBool:{-[VNRequest usesCPUOnly](self, "usesCPUOnly")}];
  [v5 setObject:v6 forKey:@"VNHumanPoseDetectorInitOption_UseCPUOnly"];

  return v5;
}

- (NSArray)supportedJointsGroupNamesAndReturnError:(NSError *)error
{
  revision = [(VNRequest *)self revision];
  if (revision == 3737841664 || revision == 1)
  {
    _supportedJointsGroupNamesRevision1 = [objc_opt_class() _supportedJointsGroupNamesRevision1];
  }

  else if (error)
  {
    v7 = [VNError errorForUnsupportedRevision:[(VNRequest *)self revision] ofRequest:self];
    v8 = v7;
    _supportedJointsGroupNamesRevision1 = 0;
    *error = v7;
  }

  else
  {
    _supportedJointsGroupNamesRevision1 = 0;
  }

  return _supportedJointsGroupNamesRevision1;
}

- (NSArray)supportedJointNamesAndReturnError:(NSError *)error
{
  revision = [(VNRequest *)self revision];
  if (revision == 3737841664 || revision == 1)
  {
    _supportedJointNamesRevision1 = [objc_opt_class() _supportedJointNamesRevision1];
  }

  else if (error)
  {
    v7 = [VNError errorForUnsupportedRevision:[(VNRequest *)self revision] ofRequest:self];
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
  if (revision == 3737841664 || revision == 1)
  {
    v5 = @"VNHumanBodyPoseDetectorType";
    v6 = @"VNHumanBodyPoseDetectorType";
  }

  else if (error)
  {
    [VNError errorForUnsupportedRevision:"errorForUnsupportedRevision:ofRequest:" ofRequest:?];
    *error = v5 = 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (NSArray)supportedJointsGroupNamesForRevision:(NSUInteger)revision error:(NSError *)error
{
  v6 = objc_alloc_init(VNDetectHumanBodyPoseRequest);
  if ([(VNRequest *)v6 setRevision:revision error:error])
  {
    v7 = [(VNDetectHumanBodyPoseRequest *)v6 supportedJointsGroupNamesAndReturnError:error];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (NSArray)supportedJointNamesForRevision:(NSUInteger)revision error:(NSError *)error
{
  v6 = objc_alloc_init(VNDetectHumanBodyPoseRequest);
  if ([(VNRequest *)v6 setRevision:revision error:error])
  {
    v7 = [(VNDetectHumanBodyPoseRequest *)v6 supportedJointNamesAndReturnError:error];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)_supportedJointsGroupNamesRevision1
{
  if (+[VNDetectHumanBodyPoseRequest _supportedJointsGroupNamesRevision1]::onceToken != -1)
  {
    dispatch_once(&+[VNDetectHumanBodyPoseRequest _supportedJointsGroupNamesRevision1]::onceToken, &__block_literal_global_29_23955);
  }

  v3 = +[VNDetectHumanBodyPoseRequest _supportedJointsGroupNamesRevision1]::jointsGroupNames;

  return v3;
}

void __67__VNDetectHumanBodyPoseRequest__supportedJointsGroupNamesRevision1__block_invoke()
{
  v2[7] = *MEMORY[0x1E69E9840];
  v2[0] = @"VNIPOAll";
  v2[1] = @"VNBLKFACE";
  v2[2] = @"VNBLKTORSO";
  v2[3] = @"VNBLKLARM";
  v2[4] = @"VNBLKRARM";
  v2[5] = @"VNBLKLLEG";
  v2[6] = @"VNBLKRLEG";
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:v2 count:7];
  v1 = +[VNDetectHumanBodyPoseRequest _supportedJointsGroupNamesRevision1]::jointsGroupNames;
  +[VNDetectHumanBodyPoseRequest _supportedJointsGroupNamesRevision1]::jointsGroupNames = v0;
}

+ (id)_supportedJointNamesRevision1
{
  if (+[VNDetectHumanBodyPoseRequest _supportedJointNamesRevision1]::onceToken != -1)
  {
    dispatch_once(&+[VNDetectHumanBodyPoseRequest _supportedJointNamesRevision1]::onceToken, &__block_literal_global_23957);
  }

  v3 = +[VNDetectHumanBodyPoseRequest _supportedJointNamesRevision1]::jointNames;

  return v3;
}

void __61__VNDetectHumanBodyPoseRequest__supportedJointNamesRevision1__block_invoke()
{
  v2[19] = *MEMORY[0x1E69E9840];
  v2[0] = @"head_joint";
  v2[1] = @"left_eye_joint";
  v2[2] = @"right_eye_joint";
  v2[3] = @"left_ear_joint";
  v2[4] = @"right_ear_joint";
  v2[5] = @"left_shoulder_1_joint";
  v2[6] = @"right_shoulder_1_joint";
  v2[7] = @"neck_1_joint";
  v2[8] = @"left_forearm_joint";
  v2[9] = @"right_forearm_joint";
  v2[10] = @"left_hand_joint";
  v2[11] = @"right_hand_joint";
  v2[12] = @"left_upLeg_joint";
  v2[13] = @"right_upLeg_joint";
  v2[14] = @"root";
  v2[15] = @"left_leg_joint";
  v2[16] = @"right_leg_joint";
  v2[17] = @"left_foot_joint";
  v2[18] = @"right_foot_joint";
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:v2 count:19];
  v1 = +[VNDetectHumanBodyPoseRequest _supportedJointNamesRevision1]::jointNames;
  +[VNDetectHumanBodyPoseRequest _supportedJointNamesRevision1]::jointNames = v0;
}

+ (id)descriptionForPrivateRevision:(unint64_t)revision
{
  if (revision == 3737841664)
  {
    v5 = @"VNDetectHumanBodyPoseRequestRevision2";
  }

  else
  {
    v8 = v3;
    v9 = v4;
    v7.receiver = self;
    v7.super_class = &OBJC_METACLASS___VNDetectHumanBodyPoseRequest;
    v5 = objc_msgSendSuper2(&v7, sel_descriptionForPrivateRevision_);
  }

  return v5;
}

+ (id)privateRevisionsSet
{
  if (+[VNDetectHumanBodyPoseRequest(Revisioning) privateRevisionsSet]::onceToken != -1)
  {
    dispatch_once(&+[VNDetectHumanBodyPoseRequest(Revisioning) privateRevisionsSet]::onceToken, &__block_literal_global_59_23975);
  }

  v3 = +[VNDetectHumanBodyPoseRequest(Revisioning) privateRevisionsSet]::privateRevisions;

  return v3;
}

void __64__VNDetectHumanBodyPoseRequest_Revisioning__privateRevisionsSet__block_invoke()
{
  v2 = objc_alloc_init(MEMORY[0x1E696AD50]);
  [v2 addIndex:3737841664];
  v0 = [v2 copy];
  v1 = +[VNDetectHumanBodyPoseRequest(Revisioning) privateRevisionsSet]::privateRevisions;
  +[VNDetectHumanBodyPoseRequest(Revisioning) privateRevisionsSet]::privateRevisions = v0;
}

@end