@interface PanoramaAssemblyShaders
- (PanoramaAssemblyShaders)initWithContext:(id)context;
@end

@implementation PanoramaAssemblyShaders

- (PanoramaAssemblyShaders)initWithContext:(id)context
{
  contextCopy = context;
  v44.receiver = self;
  v44.super_class = PanoramaAssemblyShaders;
  v5 = [(PanoramaAssemblyShaders *)&v44 init];
  if (v5 && (v6 = sub_23C44B740(), objc_msgSend_computePipelineStateFor_constants_(v6, v7, v8, v9), v10 = objc_claimAutoreleasedReturnValue(), resetPanoSizedState = v5->_resetPanoSizedState, v5->_resetPanoSizedState = v10, resetPanoSizedState, v5->_resetPanoSizedState) && (v12 = sub_23C44B740(), objc_msgSend_computePipelineStateFor_constants_(v12, v13, v14, v15), v16 = objc_claimAutoreleasedReturnValue(), resetSliceSizedState = v5->_resetSliceSizedState, v5->_resetSliceSizedState = v16, resetSliceSizedState, v5->_resetSliceSizedState) && (v18 = sub_23C44B740(), objc_msgSend_computePipelineStateFor_constants_(v18, v19, v20, v21), v22 = objc_claimAutoreleasedReturnValue(), addSliceToStaging = v5->_addSliceToStaging, v5->_addSliceToStaging = v22, addSliceToStaging, v5->_addSliceToStaging) && (v24 = sub_23C44B740(), objc_msgSend_computePipelineStateFor_constants_(v24, v25, v26, v27), v28 = objc_claimAutoreleasedReturnValue(), addSliceToProjectiveGrid = v5->_addSliceToProjectiveGrid, v5->_addSliceToProjectiveGrid = v28, addSliceToProjectiveGrid, v5->_addSliceToProjectiveGrid) && (v30 = sub_23C44B740(), objc_msgSend_computePipelineStateFor_constants_(v30, v31, v32, v33), v34 = objc_claimAutoreleasedReturnValue(), addStagingToOutput = v5->_addStagingToOutput, v5->_addStagingToOutput = v34, addStagingToOutput, v5->_addStagingToOutput) && (v36 = sub_23C44B740(), objc_msgSend_computePipelineStateFor_constants_(v36, v37, v38, v39), v40 = objc_claimAutoreleasedReturnValue(), prepareForDenoising = v5->_prepareForDenoising, v5->_prepareForDenoising = v40, prepareForDenoising, v5->_prepareForDenoising))
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