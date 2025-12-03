@interface ExplicitZeroPadding
- (ExplicitZeroPadding)initWithPaddingLeft:(unint64_t)left paddingRight:(unint64_t)right paddingTop:(unint64_t)top paddingBottom:(unint64_t)bottom;
- (id)destinationImageDescriptorForSourceImages:(id)images sourceStates:(id)states forKernel:(id)kernel suggestedDescriptor:(id)descriptor;
@end

@implementation ExplicitZeroPadding

- (ExplicitZeroPadding)initWithPaddingLeft:(unint64_t)left paddingRight:(unint64_t)right paddingTop:(unint64_t)top paddingBottom:(unint64_t)bottom
{
  v11.receiver = self;
  v11.super_class = ExplicitZeroPadding;
  result = [(ExplicitZeroPadding *)&v11 init];
  result->_paddingTop = top;
  result->_paddingLeft = left;
  result->_paddingRight = right;
  result->_paddingBottom = bottom;
  return result;
}

- (id)destinationImageDescriptorForSourceImages:(id)images sourceStates:(id)states forKernel:(id)kernel suggestedDescriptor:(id)descriptor
{
  v12 = objc_msgSend_kernelWidth(kernel, a2, images, states, kernel, descriptor, v6, v7) - 1;
  v20 = v12 * objc_msgSend_dilationRateX(kernel, v13, v14, v15, v16, v17, v18, v19);
  v21 = v20 + 1;
  v29 = objc_msgSend_kernelHeight(kernel, v22, v23, v24, v25, v26, v27, v28) - 1;
  v37 = v29 * objc_msgSend_dilationRateY(kernel, v30, v31, v32, v33, v34, v35, v36);
  v38 = v37 + 1;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v183 = 0;
    v184 = 0;
    v185 = 0;
    objc_msgSend_setOffset_(kernel, v39, &v183, v40, v41, v42, v43, v44);
    objc_msgSend_setKernelOffsetX_(kernel, v45, v21 / 2 - self->_paddingLeft, v46, v47, v48, v49, v50);
    objc_msgSend_setKernelOffsetY_(kernel, v51, v38 / 2 - self->_paddingTop, v52, v53, v54, v55, v56);
    v63 = objc_msgSend_objectAtIndexedSubscript_(images, v57, 0, v58, v59, v60, v61, v62);
    v71 = objc_msgSend_width(v63, v64, v65, v66, v67, v68, v69, v70) - 1;
    v79 = self->_paddingLeft - v20 + v71 * objc_msgSend_strideInPixelsX(kernel, v72, v73, v74, v75, v76, v77, v78) + self->_paddingRight + 1;
    v86 = objc_msgSend_objectAtIndexedSubscript_(images, v80, 0, v81, v82, v83, v84, v85);
    v94 = objc_msgSend_height(v86, v87, v88, v89, v90, v91, v92, v93) - 1;
    v108 = self->_paddingTop - v37 + v94 * objc_msgSend_strideInPixelsY(kernel, v95, v96, v97, v98, v99, v100, v101) + self->_paddingBottom + 1;
  }

  else
  {
    v182 = ~v37;
    v109 = ~v20;
    v110 = v38 / 2 - self->_paddingTop;
    v183 = v21 / 2 - self->_paddingLeft;
    v184 = v110;
    v185 = 0;
    objc_msgSend_setOffset_(kernel, v39, &v183, v40, v41, v42, v43, v44);
    v117 = objc_msgSend_objectAtIndexedSubscript_(images, v111, 0, v112, v113, v114, v115, v116);
    v125 = objc_msgSend_width(v117, v118, v119, v120, v121, v122, v123, v124);
    paddingLeft = self->_paddingLeft;
    paddingRight = self->_paddingRight;
    v135 = v125 + v109 + paddingLeft + paddingRight + objc_msgSend_strideInPixelsX(kernel, v128, v129, v130, v131, v132, v133, v134);
    v79 = v135 / objc_msgSend_strideInPixelsX(kernel, v136, v137, v138, v139, v140, v141, v142);
    v149 = objc_msgSend_objectAtIndexedSubscript_(images, v143, 0, v144, v145, v146, v147, v148);
    v157 = objc_msgSend_height(v149, v150, v151, v152, v153, v154, v155, v156);
    paddingTop = self->_paddingTop;
    paddingBottom = self->_paddingBottom;
    v167 = v157 + v182 + paddingTop + paddingBottom + objc_msgSend_strideInPixelsY(kernel, v160, v161, v162, v163, v164, v165, v166);
    v108 = v167 / objc_msgSend_strideInPixelsY(kernel, v168, v169, v170, v171, v172, v173, v174);
  }

  objc_msgSend_setWidth_(descriptor, v102, v79, v103, v104, v105, v106, v107);
  objc_msgSend_setHeight_(descriptor, v175, v108, v176, v177, v178, v179, v180);
  return descriptor;
}

@end