@interface CKRequestInfo
- (CKRequestInfo)initWithCoder:(id)a3;
- (CKRequestInfo)initWithRequestUUID:(id)a3 responseHTTPHeaders:(id)a4 w3cTiming:(id)a5;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CKRequestInfo

- (CKRequestInfo)initWithRequestUUID:(id)a3 responseHTTPHeaders:(id)a4 w3cTiming:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v25.receiver = self;
  v25.super_class = CKRequestInfo;
  v13 = [(CKRequestInfo *)&v25 init];
  if (v13)
  {
    v14 = objc_msgSend_copy(v8, v11, v12);
    requestUUID = v13->_requestUUID;
    v13->_requestUUID = v14;

    v18 = objc_msgSend_copy(v9, v16, v17);
    responseHTTPHeaders = v13->_responseHTTPHeaders;
    v13->_responseHTTPHeaders = v18;

    v22 = objc_msgSend_copy(v10, v20, v21);
    w3cNavigationTiming = v13->_w3cNavigationTiming;
    v13->_w3cNavigationTiming = v22;
  }

  return v13;
}

- (void)encodeWithCoder:(id)a3
{
  v24 = a3;
  v6 = objc_msgSend_requestUUID(self, v4, v5);
  objc_msgSend_encodeObject_forKey_(v24, v7, v6, @"RequestUUID");

  v10 = objc_msgSend_responseHTTPHeaders(self, v8, v9);
  objc_msgSend_encodeObject_forKey_(v24, v11, v10, @"ResponseHTTPHeaders");

  v14 = objc_msgSend_w3cNavigationTiming(self, v12, v13);
  objc_msgSend_encodeObject_forKey_(v24, v15, v14, @"W3CNavigationTiming");

  if (__sTestOverridesAvailable[0] == 1)
  {
    v18 = objc_msgSend_requestOperations(self, v16, v17);
    objc_msgSend_encodeObject_forKey_(v24, v19, v18, @"RequestOperations");

    v22 = objc_msgSend_operationClassName(self, v20, v21);
    objc_msgSend_encodeObject_forKey_(v24, v23, v22, @"OperationClassName");
  }
}

- (CKRequestInfo)initWithCoder:(id)a3
{
  v4 = a3;
  v29.receiver = self;
  v29.super_class = CKRequestInfo;
  v5 = [(CKRequestInfo *)&v29 init];
  if (v5)
  {
    v6 = objc_opt_class();
    v8 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v7, v6, @"RequestUUID");
    requestUUID = v5->_requestUUID;
    v5->_requestUUID = v8;

    v11 = objc_msgSend_decodePropertyListForKey_(v4, v10, @"ResponseHTTPHeaders");
    responseHTTPHeaders = v5->_responseHTTPHeaders;
    v5->_responseHTTPHeaders = v11;

    v14 = objc_msgSend_decodePropertyListForKey_(v4, v13, @"W3CNavigationTiming");
    w3cNavigationTiming = v5->_w3cNavigationTiming;
    v5->_w3cNavigationTiming = v14;

    if (__sTestOverridesAvailable[0] == 1)
    {
      v17 = objc_msgSend_decodePropertyListForKey_(v4, v16, @"OperationClassName");
      operationClassName = v5->_operationClassName;
      v5->_operationClassName = v17;

      v19 = NSClassFromString(&cfstr_Ckdprequestope.isa);
      if (v19)
      {
        v20 = v19;
        v21 = MEMORY[0x1E695DFD8];
        v22 = objc_opt_class();
        v24 = objc_msgSend_setWithObjects_(v21, v23, v22, v20, 0);
        v26 = objc_msgSend_decodeObjectOfClasses_forKey_(v4, v25, v24, @"RequestOperations");
        requestOperations = v5->_requestOperations;
        v5->_requestOperations = v26;
      }
    }
  }

  return v5;
}

@end