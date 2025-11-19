@interface VNDetectHumanHandPoseRequest
+ (BOOL)revision:(unint64_t)a3 mayAcceptResultsProducedByRevision:(unint64_t)a4;
+ (NSArray)supportedJointNamesForRevision:(NSUInteger)revision error:(NSError *)error;
+ (NSArray)supportedJointsGroupNamesForRevision:(NSUInteger)revision error:(NSError *)error;
+ (id)_supportedJointNamesRevision1;
+ (id)_supportedJointsGroupNamesRevision1;
- (BOOL)internalPerformRevision:(unint64_t)a3 inContext:(id)a4 error:(id *)a5;
- (BOOL)isEqual:(id)a3;
- (BOOL)willAcceptCachedResultsFromRequestWithConfiguration:(id)a3;
- (NSArray)supportedJointNamesAndReturnError:(NSError *)error;
- (NSArray)supportedJointsGroupNamesAndReturnError:(NSError *)error;
- (NSUInteger)maximumHandCount;
- (id)applicableDetectorTypeForRevision:(unint64_t)a3 error:(id *)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)newDefaultDetectorOptionsForRequestRevision:(unint64_t)a3 session:(id)a4;
- (unint64_t)hash;
- (void)setMaximumHandCount:(NSUInteger)maximumHandCount;
- (void)setProcessedResults:(id)a3;
@end

@implementation VNDetectHumanHandPoseRequest

- (void)setMaximumHandCount:(NSUInteger)maximumHandCount
{
  v4 = [(VNRequest *)self configuration];
  [v4 setMaximumHandCount:maximumHandCount];
}

- (NSUInteger)maximumHandCount
{
  v2 = [(VNRequest *)self configuration];
  v3 = [v2 maximumHandCount];

  return v3;
}

- (NSArray)supportedJointsGroupNamesAndReturnError:(NSError *)error
{
  if ([(VNRequest *)self revision]== 1)
  {
    v5 = [objc_opt_class() _supportedJointsGroupNamesRevision1];
  }

  else if (error)
  {
    v6 = [VNError errorForUnsupportedRevision:[(VNRequest *)self revision] ofRequest:self];
    v7 = v6;
    v5 = 0;
    *error = v6;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (NSArray)supportedJointNamesAndReturnError:(NSError *)error
{
  if ([(VNRequest *)self revision]== 1)
  {
    v5 = [objc_opt_class() _supportedJointNamesRevision1];
  }

  else if (error)
  {
    v6 = [VNError errorForUnsupportedRevision:[(VNRequest *)self revision] ofRequest:self];
    v7 = v6;
    v5 = 0;
    *error = v6;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v6.receiver = self;
  v6.super_class = VNDetectHumanHandPoseRequest;
  v4 = [(VNRequest *)&v6 copyWithZone:a3];
  if (v4)
  {
    [v4 setMaximumHandCount:{-[VNDetectHumanHandPoseRequest maximumHandCount](self, "maximumHandCount")}];
  }

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v7 = 1;
  }

  else
  {
    v9.receiver = self;
    v9.super_class = VNDetectHumanHandPoseRequest;
    if ([(VNDetectHumanHandPoseRequest *)&v9 isEqual:v4]&& (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v5 = v4;
      v6 = [(VNDetectHumanHandPoseRequest *)self maximumHandCount];
      v7 = v6 == [(VNDetectHumanHandPoseRequest *)v5 maximumHandCount];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (unint64_t)hash
{
  v3.receiver = self;
  v3.super_class = VNDetectHumanHandPoseRequest;
  return [(VNDetectHumanHandPoseRequest *)self maximumHandCount]^ __ROR8__([(VNDetectHumanHandPoseRequest *)&v3 hash], 51);
}

- (void)setProcessedResults:(id)a3
{
  v4 = a3;
  v5 = [(VNDetectHumanHandPoseRequest *)self maximumHandCount];
  if ([v4 count] > v5)
  {
    v6 = [MEMORY[0x1E696AC90] indexSetWithIndexesInRange:{0, v5}];
    v7 = [v4 objectsAtIndexes:v6];

    v4 = v7;
  }

  v8.receiver = self;
  v8.super_class = VNDetectHumanHandPoseRequest;
  [(VNRequest *)&v8 setProcessedResults:v4];
}

- (BOOL)internalPerformRevision:(unint64_t)a3 inContext:(id)a4 error:(id *)a5
{
  v22[1] = *MEMORY[0x1E69E9840];
  v8 = a4;
  v9 = [v8 imageBufferAndReturnError:a5];
  if (v9)
  {
    v10 = [v8 session];
    v21 = 0;
    v11 = [(VNRequest *)self applicableDetectorAndOptions:&v21 forRevision:a3 loadedInSession:v10 error:a5];
    v12 = v21;
    if (v11)
    {
      v22[0] = v9;
      v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:1];
      [v12 setObject:v13 forKeyedSubscript:@"VNDetectorProcessOption_InputImageBuffers"];

      v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[VNDetectHumanHandPoseRequest maximumHandCount](self, "maximumHandCount")}];
      [v12 setObject:v14 forKeyedSubscript:@"VNHumanHandPoseDetectorProcessOption_MaximumHandCount"];

      v15 = [v8 qosClass];
      [(VNImageBasedRequest *)self regionOfInterest];
      v16 = [v11 processUsingQualityOfServiceClass:v15 options:v12 regionOfInterest:self warningRecorder:a5 error:0 progressHandler:?];
      v17 = v16 != 0;
      if (v16)
      {
        if (a3 == 1 && [(VisionCoreRuntimeUtilities *)VNRuntimeUtilities linkTimeOrRunTimeBeforeVersion:393216])
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

- (BOOL)willAcceptCachedResultsFromRequestWithConfiguration:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = VNDetectHumanHandPoseRequest;
  if ([(VNImageBasedRequest *)&v8 willAcceptCachedResultsFromRequestWithConfiguration:v4])
  {
    v5 = [v4 maximumHandCount];
    v6 = v5 >= [(VNDetectHumanHandPoseRequest *)self maximumHandCount];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)newDefaultDetectorOptionsForRequestRevision:(unint64_t)a3 session:(id)a4
{
  v8.receiver = self;
  v8.super_class = VNDetectHumanHandPoseRequest;
  v5 = [(VNRequest *)&v8 newDefaultDetectorOptionsForRequestRevision:a3 session:a4];
  v6 = [MEMORY[0x1E696AD98] numberWithBool:{-[VNRequest usesCPUOnly](self, "usesCPUOnly")}];
  [v5 setObject:v6 forKey:@"VNHumanPoseDetectorInitOption_UseCPUOnly"];

  return v5;
}

- (id)applicableDetectorTypeForRevision:(unint64_t)a3 error:(id *)a4
{
  if (a3 == 1)
  {
    v4 = @"VNHumanHandPoseDetectorType";
    v5 = @"VNHumanHandPoseDetectorType";
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

+ (NSArray)supportedJointsGroupNamesForRevision:(NSUInteger)revision error:(NSError *)error
{
  v6 = objc_alloc_init(VNDetectHumanHandPoseRequest);
  if ([(VNRequest *)v6 setRevision:revision error:error])
  {
    v7 = [(VNDetectHumanHandPoseRequest *)v6 supportedJointsGroupNamesAndReturnError:error];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (NSArray)supportedJointNamesForRevision:(NSUInteger)revision error:(NSError *)error
{
  v6 = objc_alloc_init(VNDetectHumanHandPoseRequest);
  if ([(VNRequest *)v6 setRevision:revision error:error])
  {
    v7 = [(VNDetectHumanHandPoseRequest *)v6 supportedJointNamesAndReturnError:error];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)_supportedJointsGroupNamesRevision1
{
  if (+[VNDetectHumanHandPoseRequest _supportedJointsGroupNamesRevision1]::onceToken != -1)
  {
    dispatch_once(&+[VNDetectHumanHandPoseRequest _supportedJointsGroupNamesRevision1]::onceToken, &__block_literal_global_138);
  }

  v3 = +[VNDetectHumanHandPoseRequest _supportedJointsGroupNamesRevision1]::jointGroupNames;

  return v3;
}

void __67__VNDetectHumanHandPoseRequest__supportedJointsGroupNamesRevision1__block_invoke()
{
  v2[6] = *MEMORY[0x1E69E9840];
  v2[0] = @"VNHLRKT";
  v2[1] = @"VNHLRKM";
  v2[2] = @"VNHLRKI";
  v2[3] = @"VNHLRKR";
  v2[4] = @"VNHLRKP";
  v2[5] = @"VNIPOAll";
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:v2 count:6];
  v1 = +[VNDetectHumanHandPoseRequest _supportedJointsGroupNamesRevision1]::jointGroupNames;
  +[VNDetectHumanHandPoseRequest _supportedJointsGroupNamesRevision1]::jointGroupNames = v0;
}

+ (id)_supportedJointNamesRevision1
{
  if (+[VNDetectHumanHandPoseRequest _supportedJointNamesRevision1]::onceToken != -1)
  {
    dispatch_once(&+[VNDetectHumanHandPoseRequest _supportedJointNamesRevision1]::onceToken, &__block_literal_global_13511);
  }

  v3 = +[VNDetectHumanHandPoseRequest _supportedJointNamesRevision1]::jointNames;

  return v3;
}

void __61__VNDetectHumanHandPoseRequest__supportedJointNamesRevision1__block_invoke()
{
  v2[21] = *MEMORY[0x1E69E9840];
  v2[0] = @"VNHLKWRI";
  v2[1] = @"VNHLKTCMC";
  v2[2] = @"VNHLKTMP";
  v2[3] = @"VNHLKTIP";
  v2[4] = @"VNHLKTTIP";
  v2[5] = @"VNHLKIMCP";
  v2[6] = @"VNHLKIPIP";
  v2[7] = @"VNHLKIDIP";
  v2[8] = @"VNHLKITIP";
  v2[9] = @"VNHLKMMCP";
  v2[10] = @"VNHLKMPIP";
  v2[11] = @"VNHLKMDIP";
  v2[12] = @"VNHLKMTIP";
  v2[13] = @"VNHLKRMCP";
  v2[14] = @"VNHLKRPIP";
  v2[15] = @"VNHLKRDIP";
  v2[16] = @"VNHLKRTIP";
  v2[17] = @"VNHLKPMCP";
  v2[18] = @"VNHLKPPIP";
  v2[19] = @"VNHLKPDIP";
  v2[20] = @"VNHLKPTIP";
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:v2 count:21];
  v1 = +[VNDetectHumanHandPoseRequest _supportedJointNamesRevision1]::jointNames;
  +[VNDetectHumanHandPoseRequest _supportedJointNamesRevision1]::jointNames = v0;
}

+ (BOOL)revision:(unint64_t)a3 mayAcceptResultsProducedByRevision:(unint64_t)a4
{
  if (a3 != a4)
  {
    return 0;
  }

  v8 = v4;
  v9 = v5;
  v7.receiver = a1;
  v7.super_class = &OBJC_METACLASS___VNDetectHumanHandPoseRequest;
  return objc_msgSendSuper2(&v7, sel_revision_mayAcceptResultsProducedByRevision_, a3, a3);
}

@end