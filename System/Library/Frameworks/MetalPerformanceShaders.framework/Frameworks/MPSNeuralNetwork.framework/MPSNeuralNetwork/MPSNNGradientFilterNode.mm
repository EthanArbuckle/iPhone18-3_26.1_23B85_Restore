@interface MPSNNGradientFilterNode
- (MPSNNGradientFilterNode)initWithGradientImages:(id)images forwardFilter:(id)filter;
- (MPSNNGradientFilterNode)initWithGradientImages:(id)images sourceImages:(id)sourceImages binaryGradientState:(id)state paddingPolicy:(id)policy;
- (MPSNNGradientFilterNode)initWithGradientImages:(id)images sourceImages:(id)sourceImages gradientState:(id)state paddingPolicy:(id)policy;
- (id)resultState;
@end

@implementation MPSNNGradientFilterNode

- (MPSNNGradientFilterNode)initWithGradientImages:(id)images forwardFilter:(id)filter
{
  v11 = objc_msgSend_resultState(filter, a2, images, filter, v4, v5, v6, v7);
  v19 = objc_msgSend_paddingMethod(*(filter + 5), v12, v13, v14, v15, v16, v17, v18);
  if ((v19 & 0x7F0) == 0x10)
  {
    v26 = v19 & 0xFFFFFFFFFFFFBFFFLL;
  }

  else
  {
    v26 = v19 & 0xFFFFFFFFFFFFBFFFLL ^ 0x20;
  }

  v27 = *(filter + 1);
  v28 = objc_msgSend_paddingWithMethod_(MPSNNDefaultPadding, v20, v26, v21, v22, v23, v24, v25);
  v32 = objc_msgSend_initWithGradientImages_sourceImages_gradientState_paddingPolicy_(self, v29, images, v27, v11, v28, v30, v31);
  v39 = v32;
  if (v32)
  {
    if (objc_msgSend_conformsToProtocol_(v32, v33, &unk_284D174C0, v34, v35, v36, v37, v38))
    {
      v47 = objc_msgSend_trainingStyle(filter, v40, v41, v42, v43, v44, v45, v46);
      objc_msgSend_setTrainingStyle_(v39, v48, v47, v49, v50, v51, v52, v53);
    }

    if (!v39->super._label)
    {
      v54 = *(filter + 6);
      v55 = MEMORY[0x277CCACA8];
      v56 = objc_opt_class();
      v57 = NSStringFromClass(v56);
      if (v54)
      {
        v64 = objc_msgSend_stringWithFormat_(v55, v58, @"gradient for %p %@ (%@)", v59, v60, v61, v62, v63, filter, v54, v57);
      }

      else
      {
        v64 = objc_msgSend_stringWithFormat_(v55, v58, @"gradient for %p (%@)", v59, v60, v61, v62, v63, filter, v57);
      }

      v39->super._label = v64;
    }
  }

  return v39;
}

- (MPSNNGradientFilterNode)initWithGradientImages:(id)images sourceImages:(id)sourceImages gradientState:(id)state paddingPolicy:(id)policy
{
  v22[1] = *MEMORY[0x277D85DE8];
  v17 = objc_autoreleasePoolPush();
  if (sourceImages)
  {
    images = objc_msgSend_arrayByAddingObjectsFromArray_(images, v11, sourceImages, v12, v13, v14, v15, v16);
  }

  if (state)
  {
    v22[0] = state;
    v18 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v11, v22, 1, v13, v14, v15, v16);
  }

  else
  {
    v18 = 0;
  }

  v21.receiver = self;
  v21.super_class = MPSNNGradientFilterNode;
  v19 = [(MPSNNFilterNode *)&v21 initWithSourceImages:images sourceStates:v18 paddingPolicy:policy];
  objc_autoreleasePoolPop(v17);
  return v19;
}

- (MPSNNGradientFilterNode)initWithGradientImages:(id)images sourceImages:(id)sourceImages binaryGradientState:(id)state paddingPolicy:(id)policy
{
  v22[1] = *MEMORY[0x277D85DE8];
  v17 = objc_autoreleasePoolPush();
  if (sourceImages)
  {
    images = objc_msgSend_arrayByAddingObjectsFromArray_(images, v11, sourceImages, v12, v13, v14, v15, v16);
  }

  if (state)
  {
    v22[0] = state;
    v18 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v11, v22, 1, v13, v14, v15, v16);
  }

  else
  {
    v18 = 0;
  }

  v21.receiver = self;
  v21.super_class = MPSNNGradientFilterNode;
  v19 = [(MPSNNFilterNode *)&v21 initWithSourceImages:images sourceStates:v18 paddingPolicy:policy];
  objc_autoreleasePoolPop(v17);
  return v19;
}

- (id)resultState
{
  result = self->super._resultStates;
  if (result)
  {
    return objc_msgSend_objectAtIndexedSubscript_(result, a2, 0, v2, v3, v4, v5, v6);
  }

  return result;
}

@end