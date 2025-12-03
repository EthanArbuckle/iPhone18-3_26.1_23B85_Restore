@interface CKRequestInfo
- (CKRequestInfo)initWithCoder:(id)coder;
- (CKRequestInfo)initWithRequestUUID:(id)d responseHTTPHeaders:(id)headers w3cTiming:(id)timing;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CKRequestInfo

- (CKRequestInfo)initWithRequestUUID:(id)d responseHTTPHeaders:(id)headers w3cTiming:(id)timing
{
  dCopy = d;
  headersCopy = headers;
  timingCopy = timing;
  v25.receiver = self;
  v25.super_class = CKRequestInfo;
  v13 = [(CKRequestInfo *)&v25 init];
  if (v13)
  {
    v14 = objc_msgSend_copy(dCopy, v11, v12);
    requestUUID = v13->_requestUUID;
    v13->_requestUUID = v14;

    v18 = objc_msgSend_copy(headersCopy, v16, v17);
    responseHTTPHeaders = v13->_responseHTTPHeaders;
    v13->_responseHTTPHeaders = v18;

    v22 = objc_msgSend_copy(timingCopy, v20, v21);
    w3cNavigationTiming = v13->_w3cNavigationTiming;
    v13->_w3cNavigationTiming = v22;
  }

  return v13;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v6 = objc_msgSend_requestUUID(self, v4, v5);
  objc_msgSend_encodeObject_forKey_(coderCopy, v7, v6, @"RequestUUID");

  v10 = objc_msgSend_responseHTTPHeaders(self, v8, v9);
  objc_msgSend_encodeObject_forKey_(coderCopy, v11, v10, @"ResponseHTTPHeaders");

  v14 = objc_msgSend_w3cNavigationTiming(self, v12, v13);
  objc_msgSend_encodeObject_forKey_(coderCopy, v15, v14, @"W3CNavigationTiming");

  if (__sTestOverridesAvailable[0] == 1)
  {
    v18 = objc_msgSend_requestOperations(self, v16, v17);
    objc_msgSend_encodeObject_forKey_(coderCopy, v19, v18, @"RequestOperations");

    v22 = objc_msgSend_operationClassName(self, v20, v21);
    objc_msgSend_encodeObject_forKey_(coderCopy, v23, v22, @"OperationClassName");
  }
}

- (CKRequestInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v29.receiver = self;
  v29.super_class = CKRequestInfo;
  v5 = [(CKRequestInfo *)&v29 init];
  if (v5)
  {
    v6 = objc_opt_class();
    v8 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v7, v6, @"RequestUUID");
    requestUUID = v5->_requestUUID;
    v5->_requestUUID = v8;

    v11 = objc_msgSend_decodePropertyListForKey_(coderCopy, v10, @"ResponseHTTPHeaders");
    responseHTTPHeaders = v5->_responseHTTPHeaders;
    v5->_responseHTTPHeaders = v11;

    v14 = objc_msgSend_decodePropertyListForKey_(coderCopy, v13, @"W3CNavigationTiming");
    w3cNavigationTiming = v5->_w3cNavigationTiming;
    v5->_w3cNavigationTiming = v14;

    if (__sTestOverridesAvailable[0] == 1)
    {
      v17 = objc_msgSend_decodePropertyListForKey_(coderCopy, v16, @"OperationClassName");
      operationClassName = v5->_operationClassName;
      v5->_operationClassName = v17;

      v19 = NSClassFromString(&cfstr_Ckdprequestope.isa);
      if (v19)
      {
        v20 = v19;
        v21 = MEMORY[0x1E695DFD8];
        v22 = objc_opt_class();
        v24 = objc_msgSend_setWithObjects_(v21, v23, v22, v20, 0);
        v26 = objc_msgSend_decodeObjectOfClasses_forKey_(coderCopy, v25, v24, @"RequestOperations");
        requestOperations = v5->_requestOperations;
        v5->_requestOperations = v26;
      }
    }
  }

  return v5;
}

@end