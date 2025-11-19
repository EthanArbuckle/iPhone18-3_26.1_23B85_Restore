@interface MPSNDTextureArray
- (MPSNDTextureArray)initWithTextureArray:(id)a3 descriptor:(id)a4;
- (void)dealloc;
@end

@implementation MPSNDTextureArray

- (MPSNDTextureArray)initWithTextureArray:(id)a3 descriptor:(id)a4
{
  if (!a3 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  if (*(a4 + 28) >= 4uLL && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v7 = *(a4 + 13);
  v9 = v7 <= 1u && BYTE1(v7) <= 1u && BYTE2(*(a4 + 13)) == 2;
  if (!v9 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  if (*(a4 + 22) && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  if (*(a4 + 38) != *(a4 + 6) && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  objc_msgSend_count(a3, a2, a3, a4, v4);
  if (objc_msgSend_count(a3, v10, v11, v12, v13) % *(a4 + 38) && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v18 = objc_msgSend_count(a3, v14, v15, v16, v17);
  v19 = *(a4 + 38);
  v21 = *(a4 + 4);
  v20 = *(a4 + 5);
  v25 = objc_msgSend_objectAtIndexedSubscript_(a3, v22, 0, v23, v24);
  v30 = objc_msgSend_width(v25, v26, v27, v28, v29);
  v34 = objc_msgSend_objectAtIndexedSubscript_(a3, v31, 0, v32, v33);
  v39 = objc_msgSend_height(v34, v35, v36, v37, v38);
  v47 = 0;
  v48 = 0;
  if (objc_msgSend_count(a3, v40, v41, v42, v43))
  {
    do
    {
      v49 = objc_msgSend_objectAtIndexedSubscript_(a3, v44, v47, v45, v46);
      v48 += objc_msgSend_width(v49, v50, v51, v52, v53);
      if (v48 >= v21)
      {
        break;
      }

      v54 = objc_msgSend_objectAtIndexedSubscript_(a3, v44, v47, v45, v46);
      objc_msgSend_width(v54, v55, v56, v57, v58);
      v62 = objc_msgSend_objectAtIndexedSubscript_(a3, v59, v47, v60, v61);
      if (objc_msgSend_width(v62, v63, v64, v65, v66) != v30 && MTLReportFailureTypeEnabled())
      {
        MTLReportFailure();
      }

      v70 = objc_msgSend_objectAtIndexedSubscript_(a3, v67, v47, v68, v69);
      objc_msgSend_height(v70, v71, v72, v73, v74);
      v78 = objc_msgSend_objectAtIndexedSubscript_(a3, v75, v47, v76, v77);
      if (objc_msgSend_height(v78, v79, v80, v81, v82) != v39 && MTLReportFailureTypeEnabled())
      {
        MTLReportFailure();
      }

      ++v47;
    }

    while (v47 < objc_msgSend_count(a3, v83, v84, v85, v86));
  }

  v87 = objc_msgSend_objectAtIndexedSubscript_(a3, v44, v47, v45, v46);
  objc_msgSend_height(v87, v88, v89, v90, v91);
  v95 = objc_msgSend_objectAtIndexedSubscript_(a3, v92, v47, v93, v94);
  if (objc_msgSend_height(v95, v96, v97, v98, v99) != v39 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v104 = v18 / v19;
  if (v48 != v21 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v105 = v47 + 1;
  v106 = v104 / (v47 + 1);
  if (v104 != v106 * v105 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  if (objc_msgSend_count(a3, v100, v101, v102, v103))
  {
    v110 = 0;
    v111 = 0;
    do
    {
      v112 = objc_msgSend_objectAtIndexedSubscript_(a3, v107, v111, v108, v109);
      v110 += objc_msgSend_height(v112, v113, v114, v115, v116);
      if (v110 >= v20)
      {
        break;
      }

      v117 = objc_msgSend_objectAtIndexedSubscript_(a3, v107, v111, v108, v109);
      objc_msgSend_width(v117, v118, v119, v120, v121);
      v125 = objc_msgSend_objectAtIndexedSubscript_(a3, v122, v111, v123, v124);
      if (objc_msgSend_width(v125, v126, v127, v128, v129) != v30 && MTLReportFailureTypeEnabled())
      {
        MTLReportFailure();
      }

      v133 = objc_msgSend_objectAtIndexedSubscript_(a3, v130, v111, v131, v132);
      objc_msgSend_height(v133, v134, v135, v136, v137);
      v141 = objc_msgSend_objectAtIndexedSubscript_(a3, v138, v111, v139, v140);
      if (objc_msgSend_height(v141, v142, v143, v144, v145) != v39 && MTLReportFailureTypeEnabled())
      {
        MTLReportFailure();
      }

      v111 += v105;
    }

    while (v111 < objc_msgSend_count(a3, v146, v147, v148, v149));
  }

  else
  {
    v111 = 0;
    v110 = 0;
  }

  if (v110 != v20 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  if (v111 / v105 + 1 != v106 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  if (v104 % v106 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v150 = objc_msgSend_objectAtIndexedSubscript_(a3, v107, 0, v108, v109);
  v155 = objc_msgSend_device(v150, v151, v152, v153, v154);
  v159.receiver = self;
  v159.super_class = MPSNDTextureArray;
  v156 = [(MPSNDArray *)&v159 initWithDevice:v155 descriptor:a4 isTextureBacked:1];
  v156->_textureArray = a3;
  return v156;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MPSNDTextureArray;
  [(MPSNDArray *)&v3 dealloc];
}

@end