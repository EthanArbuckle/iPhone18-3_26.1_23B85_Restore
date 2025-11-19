@interface PanoramaParallaxStageShaders
- (PanoramaParallaxStageShaders)initWithContext:(id)a3;
@end

@implementation PanoramaParallaxStageShaders

- (PanoramaParallaxStageShaders)initWithContext:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = PanoramaParallaxStageShaders;
  v6 = [(PanoramaParallaxStageShaders *)&v17 init];
  if (v6 && (objc_msgSend_computePipelineStateFor_constants_(v4, v5, @"applyWarpToSlice", 0), v7 = objc_claimAutoreleasedReturnValue(), applyWarpToSlice = v6->_applyWarpToSlice, v6->_applyWarpToSlice = v7, applyWarpToSlice, v6->_applyWarpToSlice) && (objc_msgSend_computePipelineStateFor_constants_(v4, v9, @"computePreShifts", 0), v10 = objc_claimAutoreleasedReturnValue(), computePreShifts = v6->_computePreShifts, v6->_computePreShifts = v10, computePreShifts, v6->_computePreShifts) && (objc_msgSend_computePipelineStateFor_constants_(v4, v12, @"downsampleShifts", 0), v13 = objc_claimAutoreleasedReturnValue(), downsampleShifts = v6->_downsampleShifts, v6->_downsampleShifts = v13, downsampleShifts, v6->_downsampleShifts))
  {
    v15 = v6;
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

@end