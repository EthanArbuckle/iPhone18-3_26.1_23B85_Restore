@interface MPSConvolutionDataSourceWrapper_SecureCoding
- (BOOL)respondsToSelector:(SEL)a3;
- (MPSConvolutionDataSourceWrapper_SecureCoding)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MPSConvolutionDataSourceWrapper_SecureCoding

- (BOOL)respondsToSelector:(SEL)a3
{
  v5 = NSStringFromSelector(a3);
  if (objc_msgSend_isEqualToString_(v5, v6, @"supportsSecureCoding", v7, v8, v9, v10, v11))
  {
    return 1;
  }

  if (objc_msgSend_isEqualToString_(v5, v12, @"initWithCoder:", v13, v14, v15, v16, v17))
  {
    return 1;
  }

  if (objc_msgSend_isEqualToString_(v5, v19, @"encodeWithCoder:", v20, v21, v22, v23, v24))
  {
    return 1;
  }

  v25.receiver = self;
  v25.super_class = MPSConvolutionDataSourceWrapper_SecureCoding;
  return [(MPSConvolutionDataSourceWrapper *)&v25 respondsToSelector:a3];
}

- (MPSConvolutionDataSourceWrapper_SecureCoding)initWithCoder:(id)a3
{
  v8 = sub_239D2668C(a3, @"MPSConvolutionDataSourceWrapper.c", @"MPSConvolutionDataSourceWrapper.dataSource", 0, &unk_284D0FAF8, v3, v4, v5);
  if (v8)
  {
    v15 = v8;
    v16 = objc_msgSend_initWithDataSource_(self, v9, v8, v10, v11, v12, v13, v14);
    v24 = v16;
    if (v16)
    {
      objc_msgSend_initialize(v16, v17, v18, v19, v20, v21, v22, v23);
      if (!v24->super._batchNorm)
      {
        v24->super._batchNorm = sub_239D2668C(a3, @"MPSConvolutionDataSourceWrapper.b", @"MPSConvolutionDataSourceWrapper.batchNorm", 0, 0, v25, v26, v27);
        objc_opt_class();
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          objc_opt_class();
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v24->super._batchNorm = 0;
          }
        }
      }

      v34 = objc_opt_class();
      v31 = sub_239D2668C(a3, @"MPSConvolutionDataSourceWrapper.n", @"MPSConvolutionDataSourceWrapper.neuron", &v34, 0, v28, v29, v30);
      if (v31)
      {
        v32 = v31;

        v24->super._neuron = v32;
      }

      return v24;
    }

    else
    {

      return 0;
    }
  }

  else
  {

    return 0;
  }
}

- (void)encodeWithCoder:(id)a3
{
  if (objc_msgSend_conformsToProtocol_(self->super._dataSource, a2, &unk_284D09FA0, v3, v4, v5, v6, v7))
  {
    v16 = objc_opt_class();
    objc_msgSend_supportsSecureCoding(v16, v17, v18, v19, v20, v21, v22, v23);
  }

  if (!objc_msgSend_conformsToProtocol_(self->super._dataSource, v10, &unk_284D09FA0, v11, v12, v13, v14, v15) || (v24 = objc_opt_class(), (objc_msgSend_supportsSecureCoding(v24, v25, v26, v27, v28, v29, v30, v31) & 1) == 0))
  {
    if (MTLReportFailureTypeEnabled())
    {
      v175 = objc_msgSend_debugDescription(self->super._dataSource, v154, v155, v156, v157, v158, v159, v160);
      MTLReportFailure();
    }
  }

  dataSource = self->super._dataSource;
  v33 = objc_autoreleasePoolPush();
  v34 = objc_opt_class();
  if (v34)
  {
    v35 = NSStringFromClass(v34);
    v42 = objc_msgSend_cStringUsingEncoding_(v35, v36, 1, v37, v38, v39, v40, v41);
    if (v42)
    {
      v43 = v42;
      v44 = strlen(v42);
      if (v44)
      {
        objc_msgSend_encodeBytes_length_forKey_(a3, v45, v43, v44 + 1, @"MPSConvolutionDataSourceWrapper.c", v46, v47, v48);
        objc_msgSend_encodeObject_forKey_(a3, v49, dataSource, @"MPSConvolutionDataSourceWrapper.dataSource", v50, v51, v52, v53);
      }
    }
  }

  objc_autoreleasePoolPop(v33);
  if (objc_msgSend_conformsToProtocol_(self->super._batchNorm, v54, &unk_284D1B308, v55, v56, v57, v58, v59))
  {
    if (objc_msgSend_conformsToProtocol_(self->super._batchNorm, v60, &unk_284D09FA0, v61, v62, v63, v64, v65))
    {
      v72 = objc_opt_class();
      objc_msgSend_supportsSecureCoding(v72, v73, v74, v75, v76, v77, v78, v79);
    }

    if (!objc_msgSend_conformsToProtocol_(self->super._batchNorm, v66, &unk_284D09FA0, v67, v68, v69, v70, v71, v175) || (v80 = objc_opt_class(), (objc_msgSend_supportsSecureCoding(v80, v81, v82, v83, v84, v85, v86, v87) & 1) == 0))
    {
      if (MTLReportFailureTypeEnabled())
      {
        v175 = objc_msgSend_debugDescription(self->super._batchNorm, v168, v169, v170, v171, v172, v173, v174);
        MTLReportFailure();
      }
    }

    batchNorm = self->super._batchNorm;
    v89 = objc_autoreleasePoolPush();
    v90 = objc_opt_class();
    if (v90)
    {
      v91 = NSStringFromClass(v90);
      v98 = objc_msgSend_cStringUsingEncoding_(v91, v92, 1, v93, v94, v95, v96, v97);
      if (v98)
      {
        v99 = v98;
        v100 = strlen(v98);
        if (v100)
        {
          objc_msgSend_encodeBytes_length_forKey_(a3, v101, v99, v100 + 1, @"MPSConvolutionDataSourceWrapper.b", v102, v103, v104);
          objc_msgSend_encodeObject_forKey_(a3, v105, batchNorm, @"MPSConvolutionDataSourceWrapper.batchNorm", v106, v107, v108, v109);
        }
      }
    }

    objc_autoreleasePoolPop(v89);
  }

  if (self->super._neuron)
  {
    if (objc_msgSend_conformsToProtocol_(self->super._neuron, v60, &unk_284D09FA0, v61, v62, v63, v64, v65))
    {
      v116 = objc_opt_class();
      objc_msgSend_supportsSecureCoding(v116, v117, v118, v119, v120, v121, v122, v123);
    }

    if (!objc_msgSend_conformsToProtocol_(self->super._neuron, v110, &unk_284D09FA0, v111, v112, v113, v114, v115, v175) || (v124 = objc_opt_class(), (objc_msgSend_supportsSecureCoding(v124, v125, v126, v127, v128, v129, v130, v131) & 1) == 0))
    {
      if (MTLReportFailureTypeEnabled())
      {
        objc_msgSend_debugDescription(self->super._neuron, v161, v162, v163, v164, v165, v166, v167);
        MTLReportFailure();
      }
    }

    neuron = self->super._neuron;
    v133 = objc_autoreleasePoolPush();
    v134 = objc_opt_class();
    if (v134)
    {
      v135 = NSStringFromClass(v134);
      v142 = objc_msgSend_cStringUsingEncoding_(v135, v136, 1, v137, v138, v139, v140, v141);
      if (v142)
      {
        v143 = v142;
        v144 = strlen(v142);
        if (v144)
        {
          objc_msgSend_encodeBytes_length_forKey_(a3, v145, v143, v144 + 1, @"MPSConvolutionDataSourceWrapper.n", v146, v147, v148);
          objc_msgSend_encodeObject_forKey_(a3, v149, neuron, @"MPSConvolutionDataSourceWrapper.neuron", v150, v151, v152, v153);
        }
      }
    }

    objc_autoreleasePoolPop(v133);
  }
}

@end