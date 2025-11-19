@interface CKOperationCallbackProxyEndpoint
- (CKOperationCallbackProxyEndpoint)initWithClass:(Class)a3 protocol:(id)a4 endpoint:(id)a5;
- (CKOperationCallbackProxyEndpoint)initWithCoder:(id)a3;
- (NSXPCInterface)interface;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CKOperationCallbackProxyEndpoint

- (NSXPCInterface)interface
{
  if (qword_1ED4B6068 != -1)
  {
    dispatch_once(&qword_1ED4B6068, &unk_1EFA2F288);
  }

  v3 = qword_1ED4B6060;
  objc_sync_enter(v3);
  v4 = MEMORY[0x1E696AEC0];
  v7 = objc_msgSend_cls(self, v5, v6);
  v10 = objc_msgSend_protocol(self, v8, v9);
  v12 = objc_msgSend_stringWithFormat_(v4, v11, @"%@:%@", v7, v10);

  v16 = objc_msgSend_objectForKey_(qword_1ED4B6060, v13, v12);
  if (!v16)
  {
    v17 = MEMORY[0x1E696B0D0];
    v18 = objc_msgSend_protocol(self, v14, v15);
    v16 = objc_msgSend_interfaceWithProtocol_(v17, v19, v18);

    v22 = objc_msgSend_cls(self, v20, v21);
    objc_msgSend_applyDaemonCallbackInterfaceTweaks_(v22, v23, v16);
    objc_msgSend_setObject_forKey_(qword_1ED4B6060, v24, v16, v12);
  }

  objc_sync_exit(v3);

  return v16;
}

- (CKOperationCallbackProxyEndpoint)initWithClass:(Class)a3 protocol:(id)a4 endpoint:(id)a5
{
  v10 = a4;
  v13 = a5;
  if (a3)
  {
    if (v10)
    {
      goto LABEL_3;
    }

LABEL_8:
    v22 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v11, v12);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v22, v23, a2, self, @"CKOperationCallbackProxy.m", 36, @"Invalid parameter not satisfying: %@", @"protocol");

    if (v13)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  v20 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v11, v12);
  objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v20, v21, a2, self, @"CKOperationCallbackProxy.m", 35, @"Invalid parameter not satisfying: %@", @"cls");

  if (!v10)
  {
    goto LABEL_8;
  }

LABEL_3:
  if (v13)
  {
    goto LABEL_4;
  }

LABEL_9:
  v24 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v11, v12);
  objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v24, v25, a2, self, @"CKOperationCallbackProxy.m", 37, @"Invalid parameter not satisfying: %@", @"endpoint");

LABEL_4:
  v26.receiver = self;
  v26.super_class = CKOperationCallbackProxyEndpoint;
  v14 = [(CKOperationCallbackProxyEndpoint *)&v26 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_cls, a3);
    objc_storeStrong(&v15->_protocol, a4);
    objc_storeStrong(&v15->_endpoint, a5);
    v18 = objc_msgSend_interface(v15, v16, v17);
  }

  return v15;
}

- (void)encodeWithCoder:(id)a3
{
  v26 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v23 = [CKException alloc];
    v25 = objc_msgSend_initWithName_format_(v23, v24, *MEMORY[0x1E695D930], @"This class must only be encoded by NSXPCCoder");
    objc_exception_throw(v25);
  }

  v6 = objc_msgSend_cls(self, v4, v5);
  v9 = objc_msgSend_protocol(self, v7, v8);
  v10 = sub_1884264BC(v6, v9);
  v12 = objc_msgSend_CKMap_(v10, v11, &unk_1EFA2F2A8);

  objc_msgSend_encodeObject_forKey_(v26, v13, v12, @"CK.classNames");
  v16 = objc_msgSend_protocol(self, v14, v15);
  v17 = NSStringFromProtocol(v16);
  objc_msgSend_encodeObject_forKey_(v26, v18, v17, @"CK.protocolName");

  v21 = objc_msgSend_endpoint(self, v19, v20);
  objc_msgSend_encodeObject_forKey_(v26, v22, v21, @"CK.endpoint");
}

- (CKOperationCallbackProxyEndpoint)initWithCoder:(id)a3
{
  v37[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = MEMORY[0x1E695DFD8];
  v37[0] = objc_opt_class();
  v37[1] = objc_opt_class();
  v7 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v6, v37, 2);
  v9 = objc_msgSend_setWithArray_(v5, v8, v7);
  v11 = objc_msgSend_decodeObjectOfClasses_forKey_(v4, v10, v9, @"CK.classNames");

  v13 = objc_msgSend_CKCompactMap_(v11, v12, &unk_1EFA2F2C8);
  Object = objc_msgSend_lastObject(v13, v14, v15);
  if (!Object)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v17 = ck_log_facility_ck;
    if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_FAULT))
    {
      v31 = v17;
      v34 = objc_msgSend_lastObject(v11, v32, v33);
      v35 = 138412290;
      v36 = v34;
    }
  }

  v18 = objc_opt_class();
  v20 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v19, v18, @"CK.protocolName");
  v21 = NSProtocolFromString(v20);
  if (!v21)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v22 = ck_log_facility_ck;
    if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_FAULT))
    {
      v35 = 138412290;
      v36 = v20;
    }
  }

  v23 = objc_opt_class();
  v26 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v24, v23, @"CK.endpoint");
  if (!Object)
  {
    Object = objc_opt_class();
  }

  if (v21)
  {
    v27 = objc_msgSend_initWithClass_protocol_endpoint_(self, v25, Object, v21, v26);
  }

  else
  {
    v27 = objc_msgSend_initWithClass_protocol_endpoint_(self, v25, Object, &unk_1EFA9DBD8, v26);
  }

  v28 = v27;

  v29 = *MEMORY[0x1E69E9840];
  return v28;
}

@end