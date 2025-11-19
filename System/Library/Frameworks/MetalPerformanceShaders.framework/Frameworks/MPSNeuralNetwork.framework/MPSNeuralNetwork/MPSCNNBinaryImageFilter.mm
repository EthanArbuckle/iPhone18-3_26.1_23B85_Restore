@interface MPSCNNBinaryImageFilter
- (MPSCNNBinaryImageFilter)initWithCoder:(id)a3 device:(id)a4;
- (MPSCNNBinaryImageFilter)initWithDevice:(id)a3;
- (MPSCNNBinaryImageFilter)initWithFilter:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MPSCNNBinaryImageFilter

- (MPSCNNBinaryImageFilter)initWithDevice:(id)a3
{
  if (MTLReportFailureTypeEnabled())
  {
    v4 = objc_opt_class();
    NSStringFromClass(v4);
    MTLReportFailure();
  }

  return 0;
}

- (MPSCNNBinaryImageFilter)initWithFilter:(id)a3
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = objc_opt_class();
    if (!v4)
    {
      return 0;
    }

    goto LABEL_9;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = objc_opt_class();
    if (!v4)
    {
      return 0;
    }

    goto LABEL_9;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = objc_opt_class();
    if (v4)
    {
      goto LABEL_9;
    }

    return 0;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  v4 = objc_opt_class();
  if (!v4)
  {
    return 0;
  }

LABEL_9:
  v5 = [v4 alloc];
  v13 = objc_msgSend_device(a3, v6, v7, v8, v9, v10, v11, v12);
  v20 = objc_msgSend_initWithDevice_(v5, v14, v13, v15, v16, v17, v18, v19);
  v28 = v20;
  if (!v20)
  {
    return v28;
  }

  if (a3)
  {
    objc_msgSend_primaryOffset(a3, v21, v22, v23, v24, v25, v26, v27);
    v204 = v212;
    *&v205 = v213;
    objc_msgSend_setPrimaryOffset_(v28, v29, &v204, v30, v31, v32, v33, v34);
    objc_msgSend_secondaryOffset(a3, v35, v36, v37, v38, v39, v40, v41);
    v204 = v210;
    *&v205 = v211;
    objc_msgSend_setSecondaryOffset_(v28, v42, &v204, v43, v44, v45, v46, v47);
    objc_msgSend_clipRect(a3, v48, v49, v50, v51, v52, v53, v54);
  }

  else
  {
    v212 = 0uLL;
    v213 = 0;
    v204 = 0uLL;
    *&v205 = 0;
    objc_msgSend_setPrimaryOffset_(v20, v21, &v204, v23, v24, v25, v26, v27);
    v211 = 0;
    v210 = 0uLL;
    v204 = 0uLL;
    *&v205 = 0;
    objc_msgSend_setSecondaryOffset_(v28, v61, &v204, v62, v63, v64, v65, v66);
    v207 = 0u;
    v208 = 0u;
    v209 = 0u;
  }

  v204 = v207;
  v205 = v208;
  v206 = v209;
  objc_msgSend_setClipRect_(v28, v55, &v204, v56, v57, v58, v59, v60);
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return v28;
  }

  if (a3)
  {
    objc_msgSend_primaryStrideInPixels(a3, v67, v68, v69, v70, v71, v72, v73);
    objc_msgSend_setPrimaryStrideInPixelsX_(v28, v74, v204, v75, v76, v77, v78, v79);
    objc_msgSend_primaryStrideInPixels(a3, v80, v81, v82, v83, v84, v85, v86);
    objc_msgSend_setPrimaryStrideInPixelsY_(v28, v87, *(&v204 + 1), v88, v89, v90, v91, v92);
    objc_msgSend_primaryStrideInPixels(a3, v93, v94, v95, v96, v97, v98, v99);
    objc_msgSend_setPrimaryStrideInFeatureChannels_(v28, v100, v205, v101, v102, v103, v104, v105);
    objc_msgSend_secondaryStrideInPixels(a3, v106, v107, v108, v109, v110, v111, v112);
    objc_msgSend_setSecondaryStrideInPixelsX_(v28, v113, v204, v114, v115, v116, v117, v118);
    objc_msgSend_secondaryStrideInPixels(a3, v119, v120, v121, v122, v123, v124, v125);
    objc_msgSend_setSecondaryStrideInPixelsY_(v28, v126, *(&v204 + 1), v127, v128, v129, v130, v131);
    objc_msgSend_secondaryStrideInPixels(a3, v132, v133, v134, v135, v136, v137, v138);
    objc_msgSend_setSecondaryStrideInFeatureChannels_(v28, v139, v205, v140, v141, v142, v143, v144, v204, v205);
  }

  else
  {
    objc_msgSend_setPrimaryStrideInPixelsX_(v28, v67, 0, v69, v70, v71, v72, v73);
    objc_msgSend_setPrimaryStrideInPixelsY_(v28, v153, 0, v154, v155, v156, v157, v158);
    objc_msgSend_setPrimaryStrideInFeatureChannels_(v28, v159, 0, v160, v161, v162, v163, v164);
    objc_msgSend_setSecondaryStrideInPixelsX_(v28, v165, 0, v166, v167, v168, v169, v170);
    objc_msgSend_setSecondaryStrideInPixelsY_(v28, v171, 0, v172, v173, v174, v175, v176);
    objc_msgSend_setSecondaryStrideInFeatureChannels_(v28, v177, 0, v178, v179, v180, v181, v182, 0, 0);
  }

  objc_msgSend_minimumValue(a3, v145, v146, v147, v148, v149, v150, v151);
  objc_msgSend_setMinimumValue_(v28, v183, v184, v185, v186, v187, v188, v189);
  objc_msgSend_maximumValue(a3, v190, v191, v192, v193, v194, v195, v196);
  objc_msgSend_setMaximumValue_(v28, v197, v198, v199, v200, v201, v202, v203);
  return v28;
}

- (void)encodeWithCoder:(id)a3
{
  if (MTLReportFailureTypeEnabled())
  {
    v3 = objc_opt_class();
    NSStringFromClass(v3);
    MTLReportFailure();
  }
}

- (MPSCNNBinaryImageFilter)initWithCoder:(id)a3 device:(id)a4
{
  v6 = objc_opt_class();
  v12 = objc_msgSend_decodeObjectOfClass_forKey_(a3, v7, v6, @"MPSCNNBinaryImageFilter.className", v8, v9, v10, v11);
  if (v12 && (v13 = NSClassFromString(v12), (v19 = objc_msgSend_decodeObjectOfClass_forKey_(a3, v14, v13, @"MPSCNNBinaryImageFilter.class", v15, v16, v17, v18)) != 0))
  {

    return MEMORY[0x2821F9670](self, sel_initWithFilter_, v19, v20, v21, v22, v23, v24);
  }

  else
  {

    return 0;
  }
}

@end