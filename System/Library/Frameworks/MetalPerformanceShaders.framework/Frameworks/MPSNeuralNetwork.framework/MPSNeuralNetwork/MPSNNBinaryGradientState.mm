@interface MPSNNBinaryGradientState
- (id)destinationImageDescriptorForSourceImages:(id)a3 sourceStates:(id)a4 forKernel:(id)a5 suggestedDescriptor:(id)a6;
- (void)dealloc;
@end

@implementation MPSNNBinaryGradientState

- (id)destinationImageDescriptorForSourceImages:(id)a3 sourceStates:(id)a4 forKernel:(id)a5 suggestedDescriptor:(id)a6
{
  v170.receiver = self;
  v170.super_class = MPSNNBinaryGradientState;
  v9 = [(MPSState *)&v170 destinationImageDescriptorForSourceImages:a3 sourceStates:a4 forKernel:a5 suggestedDescriptor:a6];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if ((*(a5 + *MEMORY[0x277CD7378]) & 1) == 0)
    {
      objc_msgSend_count(a3, v10, v11, v12, v13, v14, v15, v16);
      if (objc_msgSend_count(a3, v17, v18, v19, v20, v21, v22, v23) <= 1 && MTLReportFailureTypeEnabled())
      {
        v160 = objc_opt_class();
        v161 = NSStringFromClass(v160);
        MTLReportFailure();
      }

      primaryKernelWidth = self->_primaryKernelWidth;
      if (primaryKernelWidth == objc_msgSend_primaryKernelWidth(a5, v24, v25, v26, v27, v28, v29, v30, v161))
      {
        objc_msgSend_primaryKernelHeight(a5, v32, v33, v34, v35, v36, v37, v38);
      }

      v39 = self->_primaryKernelWidth;
      if (v39 != objc_msgSend_primaryKernelWidth(a5, v32, v33, v34, v35, v36, v37, v38) || (v47 = self->_primaryKernelHeight, v47 != objc_msgSend_primaryKernelHeight(a5, v40, v41, v42, v43, v44, v45, v46)))
      {
        if (MTLReportFailureTypeEnabled())
        {
          v124 = objc_opt_class();
          v125 = NSStringFromClass(v124);
          v133 = objc_msgSend_primaryKernelWidth(a5, v126, v127, v128, v129, v130, v131, v132);
          v141 = objc_msgSend_primaryKernelHeight(a5, v134, v135, v136, v137, v138, v139, v140);
          v165 = self->_primaryKernelWidth;
          primaryKernelHeight = self->_primaryKernelHeight;
          v163 = v133;
          v164 = v141;
          v162 = v125;
          MTLReportFailure();
        }
      }

      secondaryKernelWidth = self->_secondaryKernelWidth;
      if (secondaryKernelWidth == objc_msgSend_secondaryKernelWidth(a5, v48, v49, v50, v51, v52, v53, v54, v162, v163, v164, v165, primaryKernelHeight))
      {
        objc_msgSend_secondaryKernelHeight(a5, v56, v57, v58, v59, v60, v61, v62);
      }

      v63 = self->_secondaryKernelWidth;
      if (v63 != objc_msgSend_secondaryKernelWidth(a5, v56, v57, v58, v59, v60, v61, v62) || (secondaryKernelHeight = self->_secondaryKernelHeight, secondaryKernelHeight != objc_msgSend_secondaryKernelHeight(a5, v64, v65, v66, v67, v68, v69, v70)))
      {
        if (MTLReportFailureTypeEnabled())
        {
          v142 = objc_opt_class();
          v143 = NSStringFromClass(v142);
          v151 = objc_msgSend_secondaryKernelWidth(a5, v144, v145, v146, v147, v148, v149, v150);
          v159 = objc_msgSend_secondaryKernelHeight(a5, v152, v153, v154, v155, v156, v157, v158);
          v165 = self->_secondaryKernelWidth;
          primaryKernelHeight = self->_secondaryKernelHeight;
          v163 = v151;
          v164 = v159;
          v161 = v143;
          MTLReportFailure();
        }
      }
    }

    isSecondarySourceFilter = objc_msgSend_isSecondarySourceFilter(a5, v10, v11, v12, v13, v14, v15, v16, v161, v163, v164, v165, primaryKernelHeight);
    v167 = 0;
    v168 = 0;
    v169 = 0;
    objc_msgSend_setPrimaryOffset_(a5, v73, &v167, v74, v75, v76, v77, v78);
    v167 = 0;
    v168 = 0;
    v169 = 0;
    objc_msgSend_setSecondaryOffset_(a5, v79, &v167, v80, v81, v82, v83, v84);
    v91 = &OBJC_IVAR___MPSNNBinaryGradientState__primarySrcSize;
    v92 = isSecondarySourceFilter == 0;
    if (isSecondarySourceFilter)
    {
      v91 = &OBJC_IVAR___MPSNNBinaryGradientState__secondarySrcSize;
      v93 = &OBJC_IVAR___MPSNNBinaryGradientState__secondarySourceFeatureChannels;
    }

    else
    {
      v93 = &OBJC_IVAR___MPSNNBinaryGradientState__primarySourceFeatureChannels;
    }

    if (v92)
    {
      v94 = &OBJC_IVAR___MPSNNBinaryGradientState__primaryOffset;
    }

    else
    {
      v94 = &OBJC_IVAR___MPSNNBinaryGradientState__secondaryOffset;
    }

    if (v92)
    {
      v95 = &OBJC_IVAR___MPSNNBinaryGradientState__primaryKernelWidth;
    }

    else
    {
      v95 = &OBJC_IVAR___MPSNNBinaryGradientState__secondaryKernelWidth;
    }

    if (v92)
    {
      v96 = &OBJC_IVAR___MPSNNBinaryGradientState__primaryKernelHeight;
    }

    else
    {
      v96 = &OBJC_IVAR___MPSNNBinaryGradientState__secondaryKernelHeight;
    }

    v97 = (self + *v91);
    objc_msgSend_setWidth_(v9, v85, *v97, v86, v87, v88, v89, v90);
    objc_msgSend_setHeight_(v9, v98, v97[1], v99, v100, v101, v102, v103);
    objc_msgSend_setFeatureChannels_(v9, v104, *(&self->super.super.isa + *v93), v105, v106, v107, v108, v109);
    v110 = (&self->super.super.isa + *v94);
    objc_msgSend_setKernelOffsetX_(a5, v111, ((*(&self->super.super.isa + *v95) & 1) == 0) - *v110, v112, v113, v114, v115, v116);
    objc_msgSend_setKernelOffsetY_(a5, v117, ((*(&self->super.super.isa + *v96) & 1) == 0) - v110[1], v118, v119, v120, v121, v122);
  }

  return v9;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MPSNNBinaryGradientState;
  [(MPSState *)&v3 dealloc];
}

@end