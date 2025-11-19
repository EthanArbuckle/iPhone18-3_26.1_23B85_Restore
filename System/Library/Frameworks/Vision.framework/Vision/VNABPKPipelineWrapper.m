@interface VNABPKPipelineWrapper
- (VNABPKPipelineWrapper)init;
@end

@implementation VNABPKPipelineWrapper

- (VNABPKPipelineWrapper)init
{
  v8.receiver = self;
  v8.super_class = VNABPKPipelineWrapper;
  v2 = [(VNABPKPipelineWrapper *)&v8 init];
  if (v2 && AltruisticBodyPoseKitLibraryCore())
  {
    v10 = 0;
    v11 = &v10;
    v12 = 0x2050000000;
    v3 = getABPKPoseEstimationPipelineClass_softClass;
    v13 = getABPKPoseEstimationPipelineClass_softClass;
    if (!getABPKPoseEstimationPipelineClass_softClass)
    {
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __getABPKPoseEstimationPipelineClass_block_invoke;
      v9[3] = &unk_1E77B69F0;
      v9[4] = &v10;
      __getABPKPoseEstimationPipelineClass_block_invoke(v9);
      v3 = v11[3];
    }

    v4 = v3;
    _Block_object_dispose(&v10, 8);
    v5 = objc_alloc_init(v3);
    bodyPosePipeline = v2->_bodyPosePipeline;
    v2->_bodyPosePipeline = v5;
  }

  return v2;
}

@end