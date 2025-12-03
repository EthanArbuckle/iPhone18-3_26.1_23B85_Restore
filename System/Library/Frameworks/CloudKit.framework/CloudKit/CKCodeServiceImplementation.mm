@interface CKCodeServiceImplementation
- (CKContainerImplementation)containerImplementation;
- (id)CKStatusReportArray;
- (id)initInternalWithContainerImplementation:(id)implementation serviceName:(id)name boxedDatabaseScope:(id)scope serviceInstanceURL:(id)l;
- (void)_addPreparedOperation:(id)operation;
- (void)addOperation:(id)operation wrappingCodeService:(id)service convenienceConfiguration:(id)configuration;
@end

@implementation CKCodeServiceImplementation

- (id)initInternalWithContainerImplementation:(id)implementation serviceName:(id)name boxedDatabaseScope:(id)scope serviceInstanceURL:(id)l
{
  implementationCopy = implementation;
  nameCopy = name;
  scopeCopy = scope;
  lCopy = l;
  v45.receiver = self;
  v45.super_class = CKCodeServiceImplementation;
  v14 = [(CKCodeServiceImplementation *)&v45 init];
  v15 = v14;
  if (v14)
  {
    objc_storeWeak(&v14->_containerImplementation, implementationCopy);
    v18 = objc_msgSend_copy(nameCopy, v16, v17);
    serviceName = v15->_serviceName;
    v15->_serviceName = v18;

    v22 = objc_msgSend_copy(scopeCopy, v20, v21);
    boxedDatabaseScope = v15->_boxedDatabaseScope;
    v15->_boxedDatabaseScope = v22;

    v26 = objc_msgSend_copy(lCopy, v24, v25);
    serviceInstanceURL = v15->_serviceInstanceURL;
    v15->_serviceInstanceURL = v26;

    v28 = MEMORY[0x1E696AEC0];
    v31 = objc_msgSend_containerIdentifier(implementationCopy, v29, v30);
    v33 = objc_msgSend_stringWithFormat_(v28, v32, @"%@.%@", @"com.apple.cloudkit.codeservice-queue", v31);
    v34 = v33;
    v37 = objc_msgSend_UTF8String(v34, v35, v36);
    v38 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v39 = dispatch_queue_create(v37, v38);
    underlyingDispatchQueue = v15->_underlyingDispatchQueue;
    v15->_underlyingDispatchQueue = v39;

    v41 = objc_opt_new();
    operationQueue = v15->_operationQueue;
    v15->_operationQueue = v41;

    objc_msgSend_setUnderlyingQueue_(v15->_operationQueue, v43, v15->_underlyingDispatchQueue);
  }

  return v15;
}

- (void)_addPreparedOperation:(id)operation
{
  operationCopy = operation;
  v8 = objc_msgSend_operationQueue(self, v5, v6);
  objc_msgSend_addOperation_(v8, v7, operationCopy);
}

- (void)addOperation:(id)operation wrappingCodeService:(id)service convenienceConfiguration:(id)configuration
{
  operationCopy = operation;
  serviceCopy = service;
  configurationCopy = configuration;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v70 = [CKException alloc];
    v72 = objc_msgSend_initWithCode_format_(v70, v71, 12, @"Only CKCodeOperation must be submitted to a CKCodeService");
    objc_exception_throw(v72);
  }

  v12 = objc_msgSend_configuration(operationCopy, v10, v11);
  if (objc_msgSend_hasDiscretionaryNetworkBehavior(v12, v13, v14))
  {
    goto LABEL_7;
  }

  v17 = objc_msgSend_group(operationCopy, v15, v16);
  v20 = objc_msgSend_defaultConfiguration(v17, v18, v19);
  if (objc_msgSend_hasDiscretionaryNetworkBehavior(v20, v21, v22))
  {
    goto LABEL_6;
  }

  v25 = objc_msgSend_configuration(configurationCopy, v23, v24);
  if (objc_msgSend_hasDiscretionaryNetworkBehavior(v25, v26, v27))
  {

LABEL_6:
LABEL_7:

    goto LABEL_8;
  }

  v53 = objc_msgSend_group(configurationCopy, v28, v29);
  v56 = objc_msgSend_defaultConfiguration(v53, v54, v55);
  hasDiscretionaryNetworkBehavior = objc_msgSend_hasDiscretionaryNetworkBehavior(v56, v57, v58);

  if ((hasDiscretionaryNetworkBehavior & 1) == 0)
  {
    v12 = objc_msgSend_configuration(operationCopy, v30, v31);
    objc_msgSend_setDiscretionaryNetworkBehavior_(v12, v60, 0);
    goto LABEL_7;
  }

LABEL_8:
  v32 = objc_msgSend_configuration(operationCopy, v30, v31);
  if (objc_msgSend_hasAutomaticallyRetryNetworkFailures(v32, v33, v34))
  {
LABEL_13:

    goto LABEL_14;
  }

  v37 = objc_msgSend_group(operationCopy, v35, v36);
  v40 = objc_msgSend_defaultConfiguration(v37, v38, v39);
  if (objc_msgSend_hasAutomaticallyRetryNetworkFailures(v40, v41, v42))
  {
LABEL_12:

    goto LABEL_13;
  }

  v45 = objc_msgSend_configuration(configurationCopy, v43, v44);
  if (objc_msgSend_hasAutomaticallyRetryNetworkFailures(v45, v46, v47))
  {

    goto LABEL_12;
  }

  v61 = objc_msgSend_group(configurationCopy, v48, v49);
  v64 = objc_msgSend_defaultConfiguration(v61, v62, v63);
  hasAutomaticallyRetryNetworkFailures = objc_msgSend_hasAutomaticallyRetryNetworkFailures(v64, v65, v66);

  if ((hasAutomaticallyRetryNetworkFailures & 1) == 0)
  {
    v32 = objc_msgSend_configuration(operationCopy, v50, v68);
    objc_msgSend_setAutomaticallyRetryNetworkFailures_(v32, v69, 0);
    goto LABEL_13;
  }

LABEL_14:
  objc_msgSend_setCodeService_(operationCopy, v50, serviceCopy);
  objc_msgSend_applyConvenienceConfiguration_(operationCopy, v51, configurationCopy);
  objc_msgSend__addPreparedOperation_(self, v52, operationCopy);
}

- (id)CKStatusReportArray
{
  v49 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v4 = MEMORY[0x1E696AEC0];
  v7 = objc_msgSend_operationQueue(self, v5, v6);
  v10 = objc_msgSend_operationCount(v7, v8, v9);
  v13 = objc_msgSend_operationQueue(self, v11, v12);
  v16 = objc_msgSend_maxConcurrentOperationCount(v13, v14, v15);
  v18 = objc_msgSend_stringWithFormat_(v4, v17, @"%@, %lu/%ld operations", self, v10, v16);
  objc_msgSend_addObject_(v3, v19, v18);

  v22 = objc_msgSend_operationQueue(self, v20, v21);
  v25 = objc_msgSend_operationCount(v22, v23, v24);

  if (v25)
  {
    objc_msgSend_addObject_(v3, v26, @"\nOperations: {");
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v29 = objc_msgSend_operationQueue(self, v27, v28);
    v32 = objc_msgSend_operations(v29, v30, v31);

    v34 = objc_msgSend_countByEnumeratingWithState_objects_count_(v32, v33, &v44, v48, 16);
    if (v34)
    {
      v36 = v34;
      v37 = *v45;
      do
      {
        for (i = 0; i != v36; ++i)
        {
          if (*v45 != v37)
          {
            objc_enumerationMutation(v32);
          }

          v39 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v35, @"\t%@", *(*(&v44 + 1) + 8 * i));
          objc_msgSend_addObject_(v3, v40, v39);
        }

        v36 = objc_msgSend_countByEnumeratingWithState_objects_count_(v32, v35, &v44, v48, 16);
      }

      while (v36);
    }

    objc_msgSend_addObject_(v3, v41, @"}");
  }

  v42 = *MEMORY[0x1E69E9840];

  return v3;
}

- (CKContainerImplementation)containerImplementation
{
  WeakRetained = objc_loadWeakRetained(&self->_containerImplementation);

  return WeakRetained;
}

@end