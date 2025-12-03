@interface CKCodeFunctionInvokeOperationInfo
+ (void)applyDefaultParametersToServiceURLComponents:(id)components;
- (CKCodeFunctionInvokeOperationInfo)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CKCodeFunctionInvokeOperationInfo

+ (void)applyDefaultParametersToServiceURLComponents:(id)components
{
  componentsCopy = components;
  v5 = objc_msgSend_scheme(componentsCopy, v3, v4);

  if (!v5)
  {
    objc_msgSend_setScheme_(componentsCopy, v6, @"http");
  }

  v8 = objc_msgSend_port(componentsCopy, v6, v7);

  if (!v8)
  {
    objc_msgSend_setPort_(componentsCopy, v9, &unk_1EFA85188);
  }

  v11 = objc_msgSend_path(componentsCopy, v9, v10);
  v14 = objc_msgSend_length(v11, v12, v13);

  if (!v14)
  {
    objc_msgSend_setPath_(componentsCopy, v15, @"/route");
  }
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v7 = objc_msgSend_serviceName(self, v5, v6);
  objc_msgSend_encodeObject_forKey_(coderCopy, v8, v7, @"ServiceName");

  v11 = objc_msgSend_functionName(self, v9, v10);
  objc_msgSend_encodeObject_forKey_(coderCopy, v12, v11, @"FunctionName");

  v15 = objc_msgSend_requestLocalSerializations(self, v13, v14);
  objc_msgSend_encodeObject_forKey_(coderCopy, v16, v15, @"RequestLocalSerializations");

  v19 = objc_msgSend_requestLocalEnvelopes(self, v17, v18);
  objc_msgSend_encodeObject_forKey_(coderCopy, v20, v19, @"RequestLocalEnvelopes");

  v23 = objc_msgSend_dataProtectionType(self, v21, v22);
  objc_msgSend_encodeInteger_forKey_(coderCopy, v24, v23, @"DataProtectionType");
  v27 = objc_msgSend_permittedRemoteMeasurement(self, v25, v26);
  objc_msgSend_encodeObject_forKey_(coderCopy, v28, v27, @"PermittedRemoteMeasurement");

  v31 = objc_msgSend_trustedTargetDomain(self, v29, v30);
  objc_msgSend_encodeObject_forKey_(coderCopy, v32, v31, @"TrustedTargetDomain");

  v35 = objc_msgSend_trustedTargetOID(self, v33, v34);
  objc_msgSend_encodeObject_forKey_(coderCopy, v36, v35, @"TrustedTargetOID");

  shouldSendRecordPCSKeys = objc_msgSend_shouldSendRecordPCSKeys(self, v37, v38);
  objc_msgSend_encodeBool_forKey_(coderCopy, v40, shouldSendRecordPCSKeys, @"SendRecordPCSKeys");
  IsLocalBit = objc_msgSend_legacyIsLocalBit(self, v41, v42);
  objc_msgSend_encodeBool_forKey_(coderCopy, v44, IsLocalBit, @"LegacyLocal");
  v47 = objc_msgSend_clientRuntimeProvidedServiceURL(self, v45, v46);
  objc_msgSend_encodeObject_forKey_(coderCopy, v48, v47, @"ClientRuntimeProvidedServiceURL");

  AssetContentInMemory = objc_msgSend_shouldFetchAssetContentInMemory(self, v49, v50);
  objc_msgSend_encodeBool_forKey_(coderCopy, v52, AssetContentInMemory, @"ShouldFetchAssetContentInMemory");
  v55 = objc_msgSend_enqueuedOnContainerService(self, v53, v54);
  v56 = NSStringFromSelector(sel_enqueuedOnContainerService);
  objc_msgSend_encodeBool_forKey_(coderCopy, v57, v55, v56);

  v58.receiver = self;
  v58.super_class = CKCodeFunctionInvokeOperationInfo;
  [(CKDatabaseOperationInfo *)&v58 encodeWithCoder:coderCopy];
}

- (CKCodeFunctionInvokeOperationInfo)initWithCoder:(id)coder
{
  v56[2] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v54.receiver = self;
  v54.super_class = CKCodeFunctionInvokeOperationInfo;
  v5 = [(CKDatabaseOperationInfo *)&v54 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = objc_opt_class();
    v8 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v7, v6, @"ServiceName");
    serviceName = v5->_serviceName;
    v5->_serviceName = v8;

    v10 = objc_opt_class();
    v12 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v11, v10, @"FunctionName");
    functionName = v5->_functionName;
    v5->_functionName = v12;

    v14 = MEMORY[0x1E695DFD8];
    v56[0] = objc_opt_class();
    v56[1] = objc_opt_class();
    v16 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v15, v56, 2);
    v18 = objc_msgSend_setWithArray_(v14, v17, v16);
    v20 = objc_msgSend_decodeObjectOfClasses_forKey_(coderCopy, v19, v18, @"RequestLocalSerializations");
    requestLocalSerializations = v5->_requestLocalSerializations;
    v5->_requestLocalSerializations = v20;

    v22 = MEMORY[0x1E695DFD8];
    v55[0] = objc_opt_class();
    v55[1] = objc_opt_class();
    v24 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v23, v55, 2);
    v26 = objc_msgSend_setWithArray_(v22, v25, v24);
    v28 = objc_msgSend_decodeObjectOfClasses_forKey_(coderCopy, v27, v26, @"RequestLocalEnvelopes");
    requestLocalEnvelopes = v5->_requestLocalEnvelopes;
    v5->_requestLocalEnvelopes = v28;

    v5->_dataProtectionType = objc_msgSend_decodeIntegerForKey_(coderCopy, v30, @"DataProtectionType");
    v31 = objc_opt_class();
    v33 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v32, v31, @"PermittedRemoteMeasurement");
    permittedRemoteMeasurement = v5->_permittedRemoteMeasurement;
    v5->_permittedRemoteMeasurement = v33;

    v35 = objc_opt_class();
    v37 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v36, v35, @"TrustedTargetDomain");
    trustedTargetDomain = v5->_trustedTargetDomain;
    v5->_trustedTargetDomain = v37;

    v39 = objc_opt_class();
    v41 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v40, v39, @"TrustedTargetOID");
    trustedTargetOID = v5->_trustedTargetOID;
    v5->_trustedTargetOID = v41;

    v5->_shouldSendRecordPCSKeys = objc_msgSend_decodeBoolForKey_(coderCopy, v43, @"SendRecordPCSKeys");
    v5->_legacyIsLocalBit = objc_msgSend_decodeBoolForKey_(coderCopy, v44, @"LegacyLocal");
    v45 = objc_opt_class();
    v47 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v46, v45, @"ClientRuntimeProvidedServiceURL");
    clientRuntimeProvidedServiceURL = v5->_clientRuntimeProvidedServiceURL;
    v5->_clientRuntimeProvidedServiceURL = v47;

    v5->_shouldFetchAssetContentInMemory = objc_msgSend_decodeBoolForKey_(coderCopy, v49, @"ShouldFetchAssetContentInMemory");
    v50 = NSStringFromSelector(sel_enqueuedOnContainerService);
    v5->_enqueuedOnContainerService = objc_msgSend_decodeBoolForKey_(coderCopy, v51, v50);
  }

  v52 = *MEMORY[0x1E69E9840];
  return v5;
}

@end