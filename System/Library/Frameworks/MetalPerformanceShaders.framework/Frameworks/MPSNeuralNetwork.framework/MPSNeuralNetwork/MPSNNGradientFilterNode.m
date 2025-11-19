@interface MPSNNGradientFilterNode
- (MPSNNGradientFilterNode)initWithGradientImages:(id)a3 forwardFilter:(id)a4;
- (MPSNNGradientFilterNode)initWithGradientImages:(id)a3 sourceImages:(id)a4 binaryGradientState:(id)a5 paddingPolicy:(id)a6;
- (MPSNNGradientFilterNode)initWithGradientImages:(id)a3 sourceImages:(id)a4 gradientState:(id)a5 paddingPolicy:(id)a6;
- (id)resultState;
@end

@implementation MPSNNGradientFilterNode

- (MPSNNGradientFilterNode)initWithGradientImages:(id)a3 forwardFilter:(id)a4
{
  v11 = objc_msgSend_resultState(a4, a2, a3, a4, v4, v5, v6, v7);
  v19 = objc_msgSend_paddingMethod(*(a4 + 5), v12, v13, v14, v15, v16, v17, v18);
  if ((v19 & 0x7F0) == 0x10)
  {
    v26 = v19 & 0xFFFFFFFFFFFFBFFFLL;
  }

  else
  {
    v26 = v19 & 0xFFFFFFFFFFFFBFFFLL ^ 0x20;
  }

  v27 = *(a4 + 1);
  v28 = objc_msgSend_paddingWithMethod_(MPSNNDefaultPadding, v20, v26, v21, v22, v23, v24, v25);
  v32 = objc_msgSend_initWithGradientImages_sourceImages_gradientState_paddingPolicy_(self, v29, a3, v27, v11, v28, v30, v31);
  v39 = v32;
  if (v32)
  {
    if (objc_msgSend_conformsToProtocol_(v32, v33, &unk_284D174C0, v34, v35, v36, v37, v38))
    {
      v47 = objc_msgSend_trainingStyle(a4, v40, v41, v42, v43, v44, v45, v46);
      objc_msgSend_setTrainingStyle_(v39, v48, v47, v49, v50, v51, v52, v53);
    }

    if (!v39->super._label)
    {
      v54 = *(a4 + 6);
      v55 = MEMORY[0x277CCACA8];
      v56 = objc_opt_class();
      v57 = NSStringFromClass(v56);
      if (v54)
      {
        v64 = objc_msgSend_stringWithFormat_(v55, v58, @"gradient for %p %@ (%@)", v59, v60, v61, v62, v63, a4, v54, v57);
      }

      else
      {
        v64 = objc_msgSend_stringWithFormat_(v55, v58, @"gradient for %p (%@)", v59, v60, v61, v62, v63, a4, v57);
      }

      v39->super._label = v64;
    }
  }

  return v39;
}

- (MPSNNGradientFilterNode)initWithGradientImages:(id)a3 sourceImages:(id)a4 gradientState:(id)a5 paddingPolicy:(id)a6
{
  v22[1] = *MEMORY[0x277D85DE8];
  v17 = objc_autoreleasePoolPush();
  if (a4)
  {
    a3 = objc_msgSend_arrayByAddingObjectsFromArray_(a3, v11, a4, v12, v13, v14, v15, v16);
  }

  if (a5)
  {
    v22[0] = a5;
    v18 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v11, v22, 1, v13, v14, v15, v16);
  }

  else
  {
    v18 = 0;
  }

  v21.receiver = self;
  v21.super_class = MPSNNGradientFilterNode;
  v19 = [(MPSNNFilterNode *)&v21 initWithSourceImages:a3 sourceStates:v18 paddingPolicy:a6];
  objc_autoreleasePoolPop(v17);
  return v19;
}

- (MPSNNGradientFilterNode)initWithGradientImages:(id)a3 sourceImages:(id)a4 binaryGradientState:(id)a5 paddingPolicy:(id)a6
{
  v22[1] = *MEMORY[0x277D85DE8];
  v17 = objc_autoreleasePoolPush();
  if (a4)
  {
    a3 = objc_msgSend_arrayByAddingObjectsFromArray_(a3, v11, a4, v12, v13, v14, v15, v16);
  }

  if (a5)
  {
    v22[0] = a5;
    v18 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v11, v22, 1, v13, v14, v15, v16);
  }

  else
  {
    v18 = 0;
  }

  v21.receiver = self;
  v21.super_class = MPSNNGradientFilterNode;
  v19 = [(MPSNNFilterNode *)&v21 initWithSourceImages:a3 sourceStates:v18 paddingPolicy:a6];
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