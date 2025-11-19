@interface MPSNNFilterNode
- (FilterGraphNode)newFilterNode;
- (MPSNNFilterNode)initWithSourceImages:(id)a3 sourceStates:(id)a4 paddingPolicy:(id)a5;
- (MPSNNGradientFilterNode)gradientFilterWithSource:(MPSNNImageNode *)gradientImage;
- (MPSNNGradientFilterNode)gradientFilterWithSources:(NSArray *)gradientImages;
- (MPSNNStateNode)resultState;
- (NSArray)gradientFiltersWithSource:(MPSNNImageNode *)gradientImage;
- (NSArray)gradientFiltersWithSources:(NSArray *)gradientImages;
- (NSArray)resultStates;
- (NSArray)trainingGraphWithSourceGradient:(MPSNNImageNode *)gradientImage nodeHandler:(MPSGradientNodeBlock)nodeHandler;
- (id)debugDescription;
- (void)dealloc;
@end

@implementation MPSNNFilterNode

- (MPSNNFilterNode)initWithSourceImages:(id)a3 sourceStates:(id)a4 paddingPolicy:(id)a5
{
  if (!a3)
  {
    if (MTLReportFailureTypeEnabled())
    {
      goto LABEL_37;
    }

    goto LABEL_38;
  }

  v9 = a5;
  objc_msgSend_count(a3, a2, a3, a4, a5, v5, v6, v7);
  if (!objc_msgSend_count(a3, v13, v14, v15, v16, v17, v18, v19))
  {
    if (MTLReportFailureTypeEnabled())
    {
      goto LABEL_37;
    }

    goto LABEL_38;
  }

  if (a4)
  {
    objc_msgSend_count(a4, v20, v21, v22, v23, v24, v25, v26);
    if (!objc_msgSend_count(a4, v27, v28, v29, v30, v31, v32, v33))
    {
      if (MTLReportFailureTypeEnabled())
      {
LABEL_37:
        v161 = objc_opt_class();
        NSStringFromClass(v161);
        MTLReportFailure();
      }

LABEL_38:

      return 0;
    }
  }

  v171.receiver = self;
  v171.super_class = MPSNNFilterNode;
  v40 = [(MPSNNFilterNode *)&v171 init];
  if (v40)
  {
    if (!v9)
    {
      v9 = objc_msgSend_paddingWithMethod_(MPSNNDefaultPadding, v34, 16, v35, v36, v37, v38, v39);
    }

    objc_msgSend_setPaddingPolicy_(v40, v34, v9, v35, v36, v37, v38, v39);
    v48 = objc_msgSend_count(a3, v41, v42, v43, v44, v45, v46, v47);
    v49 = objc_alloc(MEMORY[0x277CBEB18]);
    v56 = objc_msgSend_initWithCapacity_(v49, v50, v48, v51, v52, v53, v54, v55);
    v40->_sourceImages = v56;
    objc_msgSend_setArray_(v56, v57, a3, v58, v59, v60, v61, v62);
    if (v48)
    {
      v69 = 0;
      for (i = objc_msgSend_objectAtIndexedSubscript_(v40->_sourceImages, v63, 0, v64, v65, v66, v67, v68); ; i = objc_msgSend_objectAtIndexedSubscript_(v40->_sourceImages, v72, v69, v73, v74, v75, v76, v77, v162, v164, v166, v168))
      {
        v78 = i;
        if (*(i + 51) && !*(i + 16) && MTLReportFailureTypeEnabled())
        {
          v79 = objc_opt_class();
          v170 = NSStringFromClass(v79);
          v80 = NSStringFromSelector(a2);
          v166 = v78;
          v168 = objc_msgSend_debugDescription(v78, v81, v82, v83, v84, v85, v86, v87);
          v162 = v170;
          v164 = v80;
          MTLReportFailure();
        }

        v71 = *(v78 + 16);
        ++*(v78 + 32);
        if (v48 == ++v69)
        {
          break;
        }
      }
    }

    if (a4)
    {
      v88 = objc_alloc(MEMORY[0x277CBEB18]);
      v96 = objc_msgSend_count(a4, v89, v90, v91, v92, v93, v94, v95);
      v103 = objc_msgSend_initWithCapacity_(v88, v97, v96, v98, v99, v100, v101, v102);
      v40->_sourceStates = v103;
      objc_msgSend_setArray_(v103, v104, a4, v105, v106, v107, v108, v109);
      v117 = objc_msgSend_count(v40->_sourceStates, v110, v111, v112, v113, v114, v115, v116);
      if (v117)
      {
        v124 = v117;
        v125 = 0;
        v48 = 1;
        for (j = objc_msgSend_objectAtIndexedSubscript_(v40->_sourceStates, v118, 0, v119, v120, v121, v122, v123, v162, v164, v166, v168); ; j = objc_msgSend_objectAtIndexedSubscript_(v40->_sourceStates, v128, v125, v129, v130, v131, v132, v133, v163, v165, v167, v169))
        {
          v134 = j;
          if (*(j + 34) && !*(j + 16) && MTLReportFailureTypeEnabled())
          {
            v135 = objc_opt_class();
            v136 = NSStringFromClass(v135);
            v137 = NSStringFromSelector(a2);
            v167 = v134;
            v169 = objc_msgSend_debugDescription(v134, v138, v139, v140, v141, v142, v143, v144);
            v163 = v136;
            v165 = v137;
            MTLReportFailure();
          }

          v127 = *(v134 + 16);
          ++*(v134 + 24);
          if (v124 == ++v125)
          {
            break;
          }
        }
      }

      else
      {
        v48 = 0;
      }
    }

    v40->_resultStates = 0;
    v40->_label = 0;
    v145 = [MPSNNImageNode alloc];
    v152 = objc_msgSend_initWithParent_(v145, v146, v40, v147, v148, v149, v150, v151);
    v40->_resultImage = v152;
    if (v152)
    {
      v159 = v48 == 0;
    }

    else
    {
      v159 = 1;
    }

    if (!v159)
    {
      v40->_resultImage->_format = *(objc_msgSend_objectAtIndexedSubscript_(v40->_sourceImages, v153, 0, v154, v155, v156, v157, v158) + 40);
    }
  }

  return v40;
}

- (MPSNNStateNode)resultState
{
  resultStates = self->_resultStates;
  if (resultStates)
  {
  }

  else
  {
    v10 = [MPSNNGradientStateNode alloc];
    v17 = objc_msgSend_initWithParent_(v10, v11, self, v12, v13, v14, v15, v16);
    v18 = objc_alloc(MEMORY[0x277CBEB18]);
    self->_resultStates = objc_msgSend_initWithObjects_(v18, v19, v17, v20, v21, v22, v23, v24, 0);

    resultStates = self->_resultStates;
  }

  return objc_msgSend_objectAtIndexedSubscript_(resultStates, a2, 0, v2, v3, v4, v5, v6);
}

- (NSArray)resultStates
{
  result = &self->_resultStates->super;
  if (!result)
  {
    v4 = [MPSNNGradientStateNode alloc];
    v11 = objc_msgSend_initWithParent_(v4, v5, self, v6, v7, v8, v9, v10);
    v12 = objc_alloc(MEMORY[0x277CBEB18]);
    self->_resultStates = objc_msgSend_initWithObjects_(v12, v13, v11, v14, v15, v16, v17, v18, 0);

    return &self->_resultStates->super;
  }

  return result;
}

- (void)dealloc
{
  resultImage = self->_resultImage;
  if (resultImage)
  {
    resultImage->_parent = 0;

    self->_resultImage = 0;
  }

  resultStates = self->_resultStates;
  if (resultStates)
  {
    v12 = objc_msgSend_count(resultStates, v3, v4, v5, v6, v7, v8, v9);
    if (v12)
    {
      v19 = v12;
      for (i = 0; i != v19; ++i)
      {
        *(objc_msgSend_objectAtIndexedSubscript_(self->_resultStates, v13, i, v14, v15, v16, v17, v18) + 16) = 0;
      }
    }

    self->_resultStates = 0;
  }

  sourceImages = self->_sourceImages;
  if (sourceImages)
  {
    v29 = objc_msgSend_count(sourceImages, v21, v22, v23, v24, v25, v26, v27);
    if (v29)
    {
      v36 = v29;
      v37 = 0;
      for (j = objc_msgSend_objectAtIndexedSubscript_(self->_sourceImages, v30, 0, v31, v32, v33, v34, v35); ; j = objc_msgSend_objectAtIndexedSubscript_(self->_sourceImages, v39, v37, v40, v41, v42, v43, v44))
      {
        if (j)
        {
          v45 = *(j + 16);
          if (v45)
          {
          }
        }

        if (v36 == ++v37)
        {
          break;
        }
      }
    }
  }

  sourceStates = self->_sourceStates;
  if (sourceStates)
  {
    v47 = objc_msgSend_count(sourceStates, v21, v22, v23, v24, v25, v26, v27);
    if (v47)
    {
      v54 = v47;
      v55 = 0;
      for (k = objc_msgSend_objectAtIndexedSubscript_(self->_sourceStates, v48, 0, v49, v50, v51, v52, v53); ; k = objc_msgSend_objectAtIndexedSubscript_(self->_sourceStates, v57, v55, v58, v59, v60, v61, v62))
      {
        if (k)
        {
          v63 = *(k + 16);
          if (v63)
          {
          }
        }

        if (v54 == ++v55)
        {
          break;
        }
      }
    }
  }

  v64.receiver = self;
  v64.super_class = MPSNNFilterNode;
  [(MPSNNFilterNode *)&v64 dealloc];
}

- (id)debugDescription
{
  v3 = objc_autoreleasePoolPush();
  v4 = MEMORY[0x277CCACA8];
  v11 = objc_msgSend_objectAtIndexedSubscript_(self->_sourceImages, v5, 0, v6, v7, v8, v9, v10);
  v18 = objc_msgSend_stringWithFormat_(v4, v12, @"%p", v13, v14, v15, v16, v17, v11);
  v26 = objc_msgSend_count(self->_sourceImages, v19, v20, v21, v22, v23, v24, v25);
  if (v26 >= 2)
  {
    v33 = v26;
    for (i = 1; i != v33; ++i)
    {
      v35 = MEMORY[0x277CCACA8];
      v36 = objc_msgSend_objectAtIndexedSubscript_(self->_sourceImages, v27, i, v28, v29, v30, v31, v32);
      v18 = objc_msgSend_stringWithFormat_(v35, v37, @"%@, %p", v38, v39, v40, v41, v42, v18, v36);
    }
  }

  v43 = MEMORY[0x277CCACA8];
  v44 = objc_msgSend_objectAtIndexedSubscript_(self->_sourceStates, v27, 0, v28, v29, v30, v31, v32);
  v51 = objc_msgSend_stringWithFormat_(v43, v45, @"%p", v46, v47, v48, v49, v50, v44);
  v59 = objc_msgSend_count(self->_sourceStates, v52, v53, v54, v55, v56, v57, v58);
  if (v59 >= 2)
  {
    v66 = v59;
    for (j = 1; j != v66; ++j)
    {
      v68 = MEMORY[0x277CCACA8];
      v69 = objc_msgSend_objectAtIndexedSubscript_(self->_sourceStates, v60, j, v61, v62, v63, v64, v65);
      v51 = objc_msgSend_stringWithFormat_(v68, v70, @"%@, %p", v71, v72, v73, v74, v75, v51, v69);
    }
  }

  v76 = MEMORY[0x277CCACA8];
  v77 = objc_msgSend_objectAtIndexedSubscript_(self->_resultStates, v60, 0, v61, v62, v63, v64, v65);
  v84 = objc_msgSend_stringWithFormat_(v76, v78, @"%p", v79, v80, v81, v82, v83, v77);
  v92 = objc_msgSend_count(self->_resultStates, v85, v86, v87, v88, v89, v90, v91);
  if (v92 >= 2)
  {
    v99 = v92;
    for (k = 1; k != v99; ++k)
    {
      v101 = MEMORY[0x277CCACA8];
      v102 = objc_msgSend_objectAtIndexedSubscript_(self->_resultStates, v93, k, v94, v95, v96, v97, v98);
      v84 = objc_msgSend_stringWithFormat_(v101, v103, @"%@, %p", v104, v105, v106, v107, v108, v84, v102);
    }
  }

  v109 = objc_alloc(MEMORY[0x277CCACA8]);
  v130.receiver = self;
  v130.super_class = MPSNNFilterNode;
  v117 = [(MPSNNFilterNode *)&v130 debugDescription];
  paddingPolicy = self->_paddingPolicy;
  if (self->_label)
  {
    label = self->_label;
  }

  else
  {
    label = @"<no label>";
  }

  resultImage = self->_resultImage;
  v121 = objc_msgSend_debugDescription(paddingPolicy, v110, v111, v112, v113, v114, v115, v116);
  v128 = objc_msgSend_initWithFormat_(v109, v122, @"%@ %@\n\tsource images:  %@\n\tsource states:  %@\n\tresultImage:    %p\n\tresult states:  %@\n\tpadding policy: \n\t\t%@", v123, v124, v125, v126, v127, v117, label, v18, v51, resultImage, v84, v121);
  objc_autoreleasePoolPop(v3);
  return v128;
}

- (FilterGraphNode)newFilterNode
{
  if (MTLReportFailureTypeEnabled())
  {
    v3 = objc_opt_class();
    NSStringFromClass(v3);
    MTLReportFailure();
  }

  return 0;
}

- (MPSNNGradientFilterNode)gradientFilterWithSources:(NSArray *)gradientImages
{
  objc_msgSend_count(self->_sourceImages, a2, gradientImages, v3, v4, v5, v6, v7);
  if (objc_msgSend_count(self->_sourceImages, v10, v11, v12, v13, v14, v15, v16) != 1 && MTLReportFailureTypeEnabled())
  {
    v32 = objc_opt_class();
    v33 = NSStringFromClass(v32);
    MTLReportFailure();
  }

  v24 = objc_alloc(objc_msgSend_gradientClass(self, v17, v18, v19, v20, v21, v22, v23, v33));
  v30 = objc_msgSend_initWithGradientImages_forwardFilter_(v24, v25, gradientImages, self, v26, v27, v28, v29);

  return v30;
}

- (MPSNNGradientFilterNode)gradientFilterWithSource:(MPSNNImageNode *)gradientImage
{
  v16[1] = *MEMORY[0x277D85DE8];
  v16[0] = gradientImage;
  v8 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], a2, v16, 1, v3, v4, v5, v6);
  return objc_msgSend_gradientFilterWithSources_(self, v9, v8, v10, v11, v12, v13, v14);
}

- (NSArray)gradientFiltersWithSources:(NSArray *)gradientImages
{
  v31[1] = *MEMORY[0x277D85DE8];
  objc_msgSend_count(self->_sourceImages, a2, gradientImages, v3, v4, v5, v6, v7);
  if (objc_msgSend_count(self->_sourceImages, v10, v11, v12, v13, v14, v15, v16) != 1 && MTLReportFailureTypeEnabled())
  {
    v29 = objc_opt_class();
    v30 = NSStringFromClass(v29);
    MTLReportFailure();
  }

  v31[0] = objc_msgSend_gradientFilterWithSources_(self, v17, gradientImages, v18, v19, v20, v21, v22, v30);
  return objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v23, v31, 1, v24, v25, v26, v27);
}

- (NSArray)gradientFiltersWithSource:(MPSNNImageNode *)gradientImage
{
  v16[1] = *MEMORY[0x277D85DE8];
  v16[0] = gradientImage;
  v8 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], a2, v16, 1, v3, v4, v5, v6);
  return objc_msgSend_gradientFiltersWithSources_(self, v9, v8, v10, v11, v12, v13, v14);
}

- (NSArray)trainingGraphWithSourceGradient:(MPSNNImageNode *)gradientImage nodeHandler:(MPSGradientNodeBlock)nodeHandler
{
  v9 = gradientImage;
  if (!gradientImage)
  {
    v9 = objc_msgSend_resultImage(self, a2, 0, nodeHandler, v4, v5, v6, v7);
  }

  v11 = objc_opt_new();
  v12 = objc_autoreleasePoolPush();
  v29 = 0;
  v30 = 0;
  sub_239CFF314(&v29, &v30, self);
  v13 = v30;
  if (v30)
  {
    do
    {
      v14 = *v13;
      free(v13);
      v13 = v14;
    }

    while (v14);
  }

  v15 = v29;
  if (v29)
  {
    v16 = 0;
    do
    {
      if (v16)
      {
        while (v15[2] < 2uLL)
        {
          v17 = *v15;
          *v16 = *v15;
          free(v15);
          v15 = v17;
          if (!v17)
          {
            goto LABEL_14;
          }
        }
      }

      else
      {
        while (v15[2] <= 1uLL)
        {
          v29 = *v15;
          v18 = v29;
          free(v15);
          v15 = v18;
          if (!v18)
          {
            goto LABEL_14;
          }
        }
      }

      v16 = v15;
      v15 = *v15;
    }

    while (v15);
  }

LABEL_14:
  v30 = 0;
  sub_239CFF44C(&v29, &v30, &self->super.isa, v9, nodeHandler, v11);
  v26 = v30;
  if (v30)
  {
    do
    {
      v27 = *v26;
      free(v26);
      v26 = v27;
    }

    while (v27);
  }

  if (objc_msgSend_count(v11, v19, v20, v21, v22, v23, v24, v25))
  {
    objc_autoreleasePoolPop(v12);

    return v11;
  }

  else
  {

    objc_autoreleasePoolPop(v12);
    return 0;
  }
}

@end