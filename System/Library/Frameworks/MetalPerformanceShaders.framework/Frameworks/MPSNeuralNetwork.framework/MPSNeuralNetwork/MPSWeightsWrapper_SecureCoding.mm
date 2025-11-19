@interface MPSWeightsWrapper_SecureCoding
- (MPSWeightsWrapper_SecureCoding)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MPSWeightsWrapper_SecureCoding

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
      objc_msgSend_debugDescription(self->super._dataSource, v130, v131, v132, v133, v134, v135, v136);
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
        objc_msgSend_encodeBytes_length_forKey_(a3, v45, v43, v44 + 1, @"MPSWeightsWrapper_SecureCoding.c0", v46, v47, v48);
        objc_msgSend_encodeObject_forKey_(a3, v49, dataSource, @"MPSWeightsWrapper_SecureCoding.o0", v50, v51, v52, v53);
      }
    }
  }

  objc_autoreleasePoolPop(v33);
  source = self->super._source;
  v55 = objc_autoreleasePoolPush();
  v56 = objc_opt_class();
  if (v56)
  {
    v57 = NSStringFromClass(v56);
    v64 = objc_msgSend_cStringUsingEncoding_(v57, v58, 1, v59, v60, v61, v62, v63);
    if (v64)
    {
      v65 = v64;
      v66 = strlen(v64);
      if (v66)
      {
        objc_msgSend_encodeBytes_length_forKey_(a3, v67, v65, v66 + 1, @"MPSWeightsWrapper_SecureCoding.c1", v68, v69, v70);
        objc_msgSend_encodeObject_forKey_(a3, v71, source, @"MPSWeightsWrapper_SecureCoding.o1", v72, v73, v74, v75);
      }
    }
  }

  objc_autoreleasePoolPop(v55);
  descriptor = self->super._descriptor;
  v77 = objc_autoreleasePoolPush();
  v78 = objc_opt_class();
  if (v78)
  {
    v79 = NSStringFromClass(v78);
    v86 = objc_msgSend_cStringUsingEncoding_(v79, v80, 1, v81, v82, v83, v84, v85);
    if (v86)
    {
      v87 = v86;
      v88 = strlen(v86);
      if (v88)
      {
        objc_msgSend_encodeBytes_length_forKey_(a3, v89, v87, v88 + 1, @"MPSWeightsWrapper_SecureCoding.c2", v90, v91, v92);
        objc_msgSend_encodeObject_forKey_(a3, v93, descriptor, @"MPSWeightsWrapper_SecureCoding.o2", v94, v95, v96, v97);
      }
    }
  }

  objc_autoreleasePoolPop(v77);
  objc_msgSend_encodeInteger_forKey_(a3, v98, self->super._info.type, @"MPSWeightsWrapper_SecureCoding.it", v99, v100, v101, v102);
  *&v103 = self->super._info.a;
  objc_msgSend_encodeFloat_forKey_(a3, v104, @"MPSWeightsWrapper_SecureCoding.ia", v105, v106, v107, v108, v109, v103);
  *&v110 = self->super._info.b;
  objc_msgSend_encodeFloat_forKey_(a3, v111, @"MPSWeightsWrapper_SecureCoding.ib", v112, v113, v114, v115, v116, v110);
  *&v117 = self->super._info.c;
  objc_msgSend_encodeFloat_forKey_(a3, v118, @"MPSWeightsWrapper_SecureCoding.ic", v119, v120, v121, v122, v123, v117);
  aData = self->super._info.aData;
  if (aData)
  {

    objc_msgSend_encodeObject_forKey_(a3, v124, aData, @"MPSWeightsWrapper_SecureCoding.id", v125, v126, v127, v128);
  }
}

- (MPSWeightsWrapper_SecureCoding)initWithCoder:(id)a3
{
  v50.receiver = self;
  v50.super_class = MPSWeightsWrapper_SecureCoding;
  v7 = [(MPSWeightsWrapper_SecureCoding *)&v50 init];
  if (!v7)
  {
    return v7;
  }

  v8 = sub_239D2668C(a3, @"MPSWeightsWrapper_SecureCoding.c1", @"MPSWeightsWrapper_SecureCoding.o1", 0, &unk_284D0FAF8, v4, v5, v6);
  if (v8)
  {
    v7->super._source = v8;
    v7->super._dataSource = sub_239D2668C(a3, @"MPSWeightsWrapper_SecureCoding.c0", @"MPSWeightsWrapper_SecureCoding.o0", 0, &unk_284D1B308, v9, v10, v11);
    v49 = objc_opt_class();
    v7->super._descriptor = sub_239D2668C(a3, @"MPSWeightsWrapper_SecureCoding.c2", @"MPSWeightsWrapper_SecureCoding.o2", &v49, 0, v12, v13, v14);
    v7->super._info.type = objc_msgSend_decodeIntegerForKey_(a3, v15, @"MPSWeightsWrapper_SecureCoding.it", v16, v17, v18, v19, v20);
    objc_msgSend_decodeFloatForKey_(a3, v21, @"MPSWeightsWrapper_SecureCoding.ia", v22, v23, v24, v25, v26);
    v7->super._info.a = v27;
    objc_msgSend_decodeFloatForKey_(a3, v28, @"MPSWeightsWrapper_SecureCoding.ib", v29, v30, v31, v32, v33);
    v7->super._info.b = v34;
    objc_msgSend_decodeFloatForKey_(a3, v35, @"MPSWeightsWrapper_SecureCoding.ic", v36, v37, v38, v39, v40);
    v7->super._info.c = v41;
    v42 = objc_opt_class();
    v7->super._info.aData = objc_msgSend_decodeObjectOfClass_forKey_(a3, v43, v42, @"MPSWeightsWrapper_SecureCoding.id", v44, v45, v46, v47);
    return v7;
  }

  return 0;
}

@end