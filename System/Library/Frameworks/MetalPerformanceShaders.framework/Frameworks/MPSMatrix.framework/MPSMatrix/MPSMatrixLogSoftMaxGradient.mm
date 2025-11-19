@interface MPSMatrixLogSoftMaxGradient
- (MPSMatrixLogSoftMaxGradient)initWithDevice:(id)a3;
- (void)encodeToCommandBuffer:(id)a3 gradientMatrix:(id)a4 forwardOutputMatrix:(id)a5 resultMatrix:(id)a6;
@end

@implementation MPSMatrixLogSoftMaxGradient

- (MPSMatrixLogSoftMaxGradient)initWithDevice:(id)a3
{
  v4.receiver = self;
  v4.super_class = MPSMatrixLogSoftMaxGradient;
  return [(MPSMatrixSoftMaxGradient *)&v4 initWithDevice:a3];
}

- (void)encodeToCommandBuffer:(id)a3 gradientMatrix:(id)a4 forwardOutputMatrix:(id)a5 resultMatrix:(id)a6
{
  v13 = *MEMORY[0x277CD7378];
  if ((*(&self->super.super.super.super.isa + v13) & 1) == 0)
  {
    if (!a3 && MTLReportFailureTypeEnabled())
    {
      v150 = objc_opt_class();
      v157 = NSStringFromClass(v150);
      MTLReportFailure();
    }

    if (!a4 && MTLReportFailureTypeEnabled())
    {
      v151 = objc_opt_class();
      v157 = NSStringFromClass(v151);
      MTLReportFailure();
    }

    if (!a5 && MTLReportFailureTypeEnabled())
    {
      v152 = objc_opt_class();
      v157 = NSStringFromClass(v152);
      MTLReportFailure();
    }

    if (!a6 && MTLReportFailureTypeEnabled())
    {
      v153 = objc_opt_class();
      v157 = NSStringFromClass(v153);
      MTLReportFailure();
    }

    objc_msgSend_primarySourceMatrixOrigin(self, a2, a3, a4, a5, a6, v6, v7, v157);
    objc_msgSend_primarySourceMatrixOrigin(self, v14, v15, v16, v17, v18, v19, v20);
    if (v161 && MTLReportFailureTypeEnabled())
    {
      v154 = objc_opt_class();
      v158 = NSStringFromClass(v154);
      MTLReportFailure();
    }

    objc_msgSend_secondarySourceMatrixOrigin(self, v21, v22, v23, v24, v25, v26, v27, v158);
    objc_msgSend_secondarySourceMatrixOrigin(self, v28, v29, v30, v31, v32, v33, v34);
    if (v161 && MTLReportFailureTypeEnabled())
    {
      v155 = objc_opt_class();
      v159 = NSStringFromClass(v155);
      MTLReportFailure();
    }

    objc_msgSend_resultMatrixOrigin(self, v35, v36, v37, v38, v39, v40, v41, v159);
    objc_msgSend_resultMatrixOrigin(self, v42, v43, v44, v45, v46, v47, v48);
    if (v161 && MTLReportFailureTypeEnabled())
    {
      v156 = objc_opt_class();
      v160 = NSStringFromClass(v156);
      MTLReportFailure();
    }

    if (objc_msgSend_matrices(a4, v49, v50, v51, v52, v53, v54, v55, v160) == 1 && objc_msgSend_matrices(a5, v56, v57, v58, v59, v60, v61, v62) == 1)
    {
      objc_msgSend_matrices(a6, v56, v57, v58, v59, v60, v61, v62);
    }

    if ((objc_msgSend_matrices(a4, v56, v57, v58, v59, v60, v61, v62) != 1 || objc_msgSend_matrices(a5, v63, v64, v65, v66, v67, v68, v69) != 1 || objc_msgSend_matrices(a6, v70, v71, v72, v73, v74, v75, v76) != 1) && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    objc_msgSend_dataType(a6, v77, v78, v79, v80, v81, v82, v83);
    if (objc_msgSend_dataType(a6, v84, v85, v86, v87, v88, v89, v90) != 268435488 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    objc_msgSend_dataType(a4, v91, v92, v93, v94, v95, v96, v97);
    if (objc_msgSend_dataType(a4, v98, v99, v100, v101, v102, v103, v104) != 268435488 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    objc_msgSend_dataType(a5, v105, v106, v107, v108, v109, v110, v111);
    if (objc_msgSend_dataType(a5, v112, v113, v114, v115, v116, v117, v118) != 268435488 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }
  }

  v119 = objc_alloc(MEMORY[0x277CD7210]);
  v131 = objc_msgSend_initWithCommandBuffer_withDispatchType_(v119, v120, a3, 0, v121, v122, v123, v124);
  if ((*(&self->super.super.super.super.isa + v13) & 0x18) != 0)
  {
    v132 = *(&self->super.super.super.super.isa + *MEMORY[0x277CD7360]);
    if (v132 || (v133 = objc_opt_class(), v134 = NSStringFromClass(v133), objc_msgSend_setLabel_(self, v135, v134, v136, v137, v138, v139, v140), (v132 = v134) != 0))
    {
      objc_msgSend_setLabel_(v131, v125, v132, v126, v127, v128, v129, v130);
    }
  }

  sub_2399D7A0C(self, v131, a3, a4, a5, a6, 1, v130);
  v148 = MEMORY[0x277CD7388];
  v149 = *MEMORY[0x277CD7388];
  if (*(a4 + v149 + 24))
  {
    MPSDecrementReadCount(a4);
    v149 = *v148;
  }

  if (*(a5 + v149 + 24))
  {
    MPSDecrementReadCount(a5);
  }

  objc_msgSend_endEncoding(v131, v141, v142, v143, v144, v145, v146, v147);
}

@end