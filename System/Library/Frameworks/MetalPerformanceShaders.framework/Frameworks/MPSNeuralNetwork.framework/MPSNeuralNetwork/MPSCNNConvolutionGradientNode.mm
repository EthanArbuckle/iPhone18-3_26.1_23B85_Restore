@interface MPSCNNConvolutionGradientNode
+ (MPSCNNConvolutionGradientNode)nodeWithSourceGradient:(MPSNNImageNode *)sourceGradient sourceImage:(MPSNNImageNode *)sourceImage convolutionGradientState:(MPSCNNConvolutionGradientStateNode *)gradientState weights:(id)weights;
- (MPSCNNConvolutionGradientNode)initWithGradientImages:(id)a3 forwardFilter:(id)a4;
- (MPSCNNConvolutionGradientNode)initWithSourceGradient:(id)a3 sourceImage:(id)a4 gradientState:(id)a5 weights:(id)a6;
- (NSString)debugDescription;
- (void)dealloc;
@end

@implementation MPSCNNConvolutionGradientNode

+ (MPSCNNConvolutionGradientNode)nodeWithSourceGradient:(MPSNNImageNode *)sourceGradient sourceImage:(MPSNNImageNode *)sourceImage convolutionGradientState:(MPSCNNConvolutionGradientStateNode *)gradientState weights:(id)weights
{
  v10 = [a1 alloc];
  v14 = objc_msgSend_initWithSourceGradient_sourceImage_convolutionGradientState_weights_(v10, v11, sourceGradient, sourceImage, gradientState, weights, v12, v13);

  return v14;
}

- (MPSCNNConvolutionGradientNode)initWithSourceGradient:(id)a3 sourceImage:(id)a4 gradientState:(id)a5 weights:(id)a6
{
  v8 = a6;
  v75[1] = *MEMORY[0x277D85DE8];
  if (!a5 && MTLReportFailureTypeEnabled())
  {
    v68 = objc_opt_class();
    v72 = NSStringFromClass(v68);
    MTLReportFailure();
  }

  v13 = *(a5 + 2);
  if (v8)
  {
    if (v13)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        objc_opt_class();
        objc_opt_isKindOfClass();
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (MTLReportFailureTypeEnabled())
          {
            v71 = objc_opt_class();
            v72 = NSStringFromClass(v71);
            MTLReportFailure();
          }
        }
      }

      v21 = objc_msgSend_weights(v13, v14, v15, v16, v17, v18, v19, v20, v72);
      if (objc_msgSend_conformsToProtocol_(v8, v22, &unk_284D09FA0, v23, v24, v25, v26, v27))
      {
        v28 = objc_opt_class();
        if ((objc_msgSend_supportsSecureCoding(v28, v29, v30, v31, v32, v33, v34, v35) & (v21 == v8)) != 0)
        {
          v8 = 0;
        }
      }
    }
  }

  else
  {
    if (!v13 && MTLReportFailureTypeEnabled())
    {
      v69 = objc_opt_class();
      v72 = NSStringFromClass(v69);
      MTLReportFailure();
    }

    objc_opt_class();
    objc_opt_isKindOfClass();
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 && MTLReportFailureTypeEnabled())
    {
      v70 = objc_opt_class();
      v72 = NSStringFromClass(v70);
      MTLReportFailure();
    }

    v43 = objc_msgSend_weights(v13, v36, v37, v38, v39, v40, v41, v42, v72);
    if (objc_msgSend_conformsToProtocol_(v43, v44, &unk_284D09FA0, v45, v46, v47, v48, v49))
    {
      v50 = objc_opt_class();
      objc_msgSend_supportsSecureCoding(v50, v51, v52, v53, v54, v55, v56, v57);
    }

    v8 = 0;
  }

  v75[0] = a3;
  v58 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], a2, v75, 1, a5, a6, v6, v7, v72);
  v74 = a4;
  v64 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v59, &v74, 1, v60, v61, v62, v63);
  v73.receiver = self;
  v73.super_class = MPSCNNConvolutionGradientNode;
  result = [(MPSNNGradientFilterNode *)&v73 initWithGradientImages:v58 sourceImages:v64 gradientState:a5 paddingPolicy:0];
  if (result)
  {
    v66 = result;
    v67 = v8;
    result = v66;
    v66->_weights = v67;
    v66->_trainingStyle = 2;
  }

  return result;
}

- (MPSCNNConvolutionGradientNode)initWithGradientImages:(id)a3 forwardFilter:(id)a4
{
  objc_opt_class();
  objc_opt_isKindOfClass();
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = objc_msgSend_objectAtIndexedSubscript_(a3, v7, 0, v8, v9, v10, v11, v12);
    v20 = objc_msgSend_objectAtIndexedSubscript_(*(a4 + 1), v14, 0, v15, v16, v17, v18, v19);
    v28 = objc_msgSend_resultState(a4, v21, v22, v23, v24, v25, v26, v27);
    v39 = objc_msgSend_initWithSourceGradient_sourceImage_convolutionGradientState_weights_(self, v29, v13, v20, v28, 0, v30, v31);
    if (v39 && ((v40 = objc_msgSend_paddingMethod(*(a4 + 5), v32, v33, v34, v35, v36, v37, v38), (v40 & 0x7F0) != 0x10) ? (v47 = objc_msgSend_paddingWithMethod_(MPSNNDefaultPadding, v41, v40 & 0xFFFFFFFFFFFFBFFFLL ^ 0x20, v42, v43, v44, v45, v46)) : (v47 = objc_msgSend_paddingWithMethod_(MPSNNDefaultPadding, v41, v40 & 0xFFFFFFFFFFFFBFFFLL, v42, v43, v44, v45, v46)), objc_msgSend_setPaddingPolicy_(v39, v48, v47, v49, v50, v51, v52, v53), v61 = objc_msgSend_trainingStyle(a4, v54, v55, v56, v57, v58, v59, v60), objc_msgSend_setTrainingStyle_(v39, v62, v61, v63, v64, v65, v66, v67), !v39->super.super._label))
    {
      v69 = *(a4 + 6);
      v70 = MEMORY[0x277CCACA8];
      v71 = objc_opt_class();
      v72 = NSStringFromClass(v71);
      if (v69)
      {
        v79 = objc_msgSend_stringWithFormat_(v70, v73, @"gradient for %p %@ (%@)", v74, v75, v76, v77, v78, a4, v69, v72);
      }

      else
      {
        v79 = objc_msgSend_stringWithFormat_(v70, v73, @"gradient for %p (%@)", v74, v75, v76, v77, v78, a4, v72);
      }

      v39->super.super._label = v79;
      return v39;
    }

    else
    {
      return v39;
    }
  }

  else
  {
    if (MTLReportFailureTypeEnabled())
    {
      v80 = objc_opt_class();
      NSStringFromClass(v80);
      MTLReportFailure();
    }

    return 0;
  }
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MPSCNNConvolutionGradientNode;
  [(MPSNNFilterNode *)&v3 dealloc];
}

- (NSString)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  v12.receiver = self;
  v12.super_class = MPSCNNConvolutionGradientNode;
  v4 = [(MPSNNFilterNode *)&v12 debugDescription];
  return objc_msgSend_stringWithFormat_(v3, v5, @"%@\n\ttraining style: %@", v6, v7, v8, v9, v10, v4, off_278B36D70[self->_trainingStyle & 3]);
}

@end