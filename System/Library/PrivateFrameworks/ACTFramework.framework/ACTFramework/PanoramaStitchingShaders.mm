@interface PanoramaStitchingShaders
- (PanoramaStitchingShaders)initWithContext:(id)a3;
@end

@implementation PanoramaStitchingShaders

- (PanoramaStitchingShaders)initWithContext:(id)a3
{
  v4 = a3;
  v44.receiver = self;
  v44.super_class = PanoramaStitchingShaders;
  v5 = [(PanoramaStitchingShaders *)&v44 init];
  if (v5 && (v6 = sub_23C44B740(), objc_msgSend_computePipelineStateFor_constants_(v6, v7, v8, v9), v10 = objc_claimAutoreleasedReturnValue(), computeCentralStitchingMask = v5->_computeCentralStitchingMask, v5->_computeCentralStitchingMask = v10, computeCentralStitchingMask, v5->_computeCentralStitchingMask) && (v12 = sub_23C44B740(), objc_msgSend_computePipelineStateFor_constants_(v12, v13, v14, v15), v16 = objc_claimAutoreleasedReturnValue(), initializeSeamPreviousSlice = v5->_initializeSeamPreviousSlice, v5->_initializeSeamPreviousSlice = v16, initializeSeamPreviousSlice, v5->_initializeSeamPreviousSlice) && (v18 = sub_23C44B740(), objc_msgSend_computePipelineStateFor_constants_(v18, v19, v20, v21), v22 = objc_claimAutoreleasedReturnValue(), initializeSeamPreviousSliceWithMask = v5->_initializeSeamPreviousSliceWithMask, v5->_initializeSeamPreviousSliceWithMask = v22, initializeSeamPreviousSliceWithMask, v5->_initializeSeamPreviousSliceWithMask) && (v24 = sub_23C44B740(), objc_msgSend_computePipelineStateFor_constants_(v24, v25, v26, v27), v28 = objc_claimAutoreleasedReturnValue(), computeSeamCost = v5->_computeSeamCost, v5->_computeSeamCost = v28, computeSeamCost, v5->_computeSeamCost) && (v30 = sub_23C44B740(), objc_msgSend_computePipelineStateFor_constants_(v30, v31, v32, v33), v34 = objc_claimAutoreleasedReturnValue(), seamCutDescend = v5->_seamCutDescend, v5->_seamCutDescend = v34, seamCutDescend, v5->_seamCutDescend) && (v36 = sub_23C44B740(), objc_msgSend_computePipelineStateFor_constants_(v36, v37, v38, v39), v40 = objc_claimAutoreleasedReturnValue(), seamCutAscend = v5->_seamCutAscend, v5->_seamCutAscend = v40, seamCutAscend, v5->_seamCutAscend))
  {
    v42 = v5;
  }

  else
  {
    v42 = 0;
  }

  return v42;
}

@end