@interface MPSUserDAGVisibleOperation
- (MPSUserDAGVisibleOperation)initWithVisibleName:(id)name specializedName:(id)specializedName functionConstants:(id)constants;
- (id)getVisibleFunction:(id)function;
- (void)dealloc;
@end

@implementation MPSUserDAGVisibleOperation

- (MPSUserDAGVisibleOperation)initWithVisibleName:(id)name specializedName:(id)specializedName functionConstants:(id)constants
{
  v22.receiver = self;
  v22.super_class = MPSUserDAGVisibleOperation;
  v8 = [(MPSUserDAGVisibleOperation *)&v22 init];
  v8->_visibleName = objc_msgSend_copy(name, v9, v10, v11, v12);
  v8->_specializedName = objc_msgSend_copy(specializedName, v13, v14, v15, v16);
  v8->_functionConstants = objc_msgSend_copy(constants, v17, v18, v19, v20);
  return v8;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MPSUserDAGVisibleOperation;
  [(MPSUserDAGVisibleOperation *)&v3 dealloc];
}

- (id)getVisibleFunction:(id)function
{
  visibleName = self->_visibleName;
  specializedName = self->_specializedName;
  v79 = 0;
  functionConstants = self->_functionConstants;
  v9 = objc_msgSend_functionDescriptor(MEMORY[0x277CD6D78], a2, function, v3, v4);
  objc_msgSend_setName_(v9, v10, visibleName, v11, v12);
  objc_msgSend_setSpecializedName_(v9, v13, specializedName, v14, v15);
  if (functionConstants)
  {
    objc_msgSend_setConstantValues_(v9, v16, functionConstants, v18, v19);
  }

  if (objc_msgSend_constantValues(v9, v16, v17, v18, v19) || (v24 = objc_msgSend_specializedName(v9, v20, v21, v22, v23), v29 = objc_msgSend_name(v9, v25, v26, v27, v28), (objc_msgSend_isEqualToString_(v24, v30, v29, v31, v32) & 1) == 0))
  {
    v39 = objc_msgSend_device(function, v20, v21, v22, v23);
    MPSDevice = MPSDevice::GetMPSDevice(v39);
    MPSDevice::AddBinaryArchives(MPSDevice, v9, function);
    result = objc_msgSend_newFunctionWithDescriptor_error_(function, v41, v9, &v79, v42);
    if (v79)
    {
      v47 = result;
      v48 = objc_msgSend_localizedFailureReason(v79, v43, v44, v45, v46);
      v52 = objc_msgSend_cStringUsingEncoding_(v48, v49, 4, v50, v51);
      v57 = objc_msgSend_localizedDescription(v79, v53, v54, v55, v56);
      v61 = objc_msgSend_cStringUsingEncoding_(v57, v58, 4, v59, v60);
      NSLog(&cfstr_ErrorGettingVi.isa, v52, v61);
      result = v47;
      if (v79)
      {
        v66 = MTLReportFailureTypeEnabled();
        result = v47;
        if (v66)
        {
          v67 = objc_msgSend_localizedFailureReason(v79, v62, v63, v64, v65);
          objc_msgSend_cStringUsingEncoding_(v67, v68, 4, v69, v70);
          v75 = objc_msgSend_localizedDescription(v79, v71, v72, v73, v74);
          objc_msgSend_cStringUsingEncoding_(v75, v76, 4, v77, v78);
          MTLReportFailure();
          return v47;
        }
      }
    }
  }

  else
  {
    v33 = objc_msgSend_name(v9, v20, v21, v22, v23);
    v37 = objc_msgSend_newFunctionWithName_(function, v34, v33, v35, v36);

    return v37;
  }

  return result;
}

@end