@interface MPSCNNConvolutionState
- (MPSCNNConvolutionState)initWithSourceWidth:(unint64_t)a3 sourceHeight:(unint64_t)a4 kernelWidth:(unint64_t)a5 kernelHeight:(unint64_t)a6 sourceOffset:(id *)a7;
- (id)destinationImageDescriptorForSourceImages:(id)a3 sourceStates:(id)a4 forKernel:(id)a5 suggestedDescriptor:(id)a6;
@end

@implementation MPSCNNConvolutionState

- (MPSCNNConvolutionState)initWithSourceWidth:(unint64_t)a3 sourceHeight:(unint64_t)a4 kernelWidth:(unint64_t)a5 kernelHeight:(unint64_t)a6 sourceOffset:(id *)a7
{
  v14.receiver = self;
  v14.super_class = MPSCNNConvolutionState;
  result = [(MPSState *)&v14 initWithResource:0];
  if (result)
  {
    result->_originalConvolutionSourceWidth = a3;
    result->_originalConvolutionSourceHeight = a4;
    var2 = a7->var2;
    *&result->_srcOffset.x = *&a7->var0;
    result->_srcOffset.z = var2;
    result->_kernelWidth = a5;
    result->_kernelHeight = a6;
  }

  return result;
}

- (id)destinationImageDescriptorForSourceImages:(id)a3 sourceStates:(id)a4 forKernel:(id)a5 suggestedDescriptor:(id)a6
{
  v147.receiver = self;
  v147.super_class = MPSCNNConvolutionState;
  v9 = [(MPSState *)&v147 destinationImageDescriptorForSourceImages:a3 sourceStates:a4 forKernel:a5 suggestedDescriptor:a6];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if ((*(a5 + *MEMORY[0x277CD7378]) & 1) == 0)
    {
      objc_msgSend_count(a3, v10, v11, v12, v13, v14, v15, v16);
      if (!objc_msgSend_count(a3, v17, v18, v19, v20, v21, v22, v23) && MTLReportFailureTypeEnabled())
      {
        v140 = objc_opt_class();
        v141 = NSStringFromClass(v140);
        MTLReportFailure();
      }

      kernelWidth = self->_kernelWidth;
      if (kernelWidth == objc_msgSend_kernelWidth(a5, v24, v25, v26, v27, v28, v29, v30, v141))
      {
        objc_msgSend_kernelHeight(a5, v32, v33, v34, v35, v36, v37, v38);
      }

      v39 = self->_kernelWidth;
      if (v39 != objc_msgSend_kernelWidth(a5, v32, v33, v34, v35, v36, v37, v38) || (v47 = self->_kernelHeight, v47 != objc_msgSend_kernelHeight(a5, v40, v41, v42, v43, v44, v45, v46)))
      {
        if (MTLReportFailureTypeEnabled())
        {
          v122 = objc_opt_class();
          v123 = NSStringFromClass(v122);
          v131 = objc_msgSend_kernelWidth(a5, v124, v125, v126, v127, v128, v129, v130);
          v139 = objc_msgSend_kernelHeight(a5, v132, v133, v134, v135, v136, v137, v138);
          v144 = self->_kernelWidth;
          kernelHeight = self->_kernelHeight;
          v142 = v131;
          v143 = v139;
          v141 = v123;
          MTLReportFailure();
        }
      }
    }

    objc_msgSend_setWidth_(v9, v10, self->_originalConvolutionSourceWidth, v12, v13, v14, v15, v16, v141, v142, v143, v144, kernelHeight);
    objc_msgSend_setHeight_(v9, v48, self->_originalConvolutionSourceHeight, v49, v50, v51, v52, v53);
    v61 = objc_msgSend_outputFeatureChannels(a5, v54, v55, v56, v57, v58, v59, v60);
    objc_msgSend_setFeatureChannels_(v9, v62, v61, v63, v64, v65, v66, v67);
    v68 = ((self->_kernelWidth & 1) == 0) - self->_srcOffset.x;
    v69 = ((self->_kernelHeight & 1) == 0) - self->_srcOffset.y;
    v77 = objc_msgSend_strideInPixelsX(a5, v70, v71, v72, v73, v74, v75, v76);
    if (v77 <= 1)
    {
      v85 = 1;
    }

    else
    {
      v85 = v77;
    }

    v86 = v68 % v85;
    v87 = (v68 % v85) >> 63;
    v88 = v87 + v68 / v85;
    v89 = v87 & v85;
    v90 = objc_msgSend_strideInPixelsY(a5, v78, v79, v80, v81, v82, v83, v84);
    if (v90 <= 1)
    {
      v98 = 1;
    }

    else
    {
      v98 = v90;
    }

    v99 = v69 / v98;
    v100 = v69 % v98;
    v101 = (v100 >> 63) + v99;
    v102 = (v100 >> 63) & v98;
    objc_msgSend_offset(a5, v91, v92, v93, v94, v95, v96, v97);
    v146[0] = v88;
    v146[1] = v101;
    v146[2] = v146[5];
    objc_msgSend_setOffset_(a5, v103, v146, v104, v105, v106, v107, v108);
    objc_msgSend_setKernelOffsetX_(a5, v109, v89 + v86, v110, v111, v112, v113, v114);
    objc_msgSend_setKernelOffsetY_(a5, v115, v102 + v100, v116, v117, v118, v119, v120);
  }

  return v9;
}

@end