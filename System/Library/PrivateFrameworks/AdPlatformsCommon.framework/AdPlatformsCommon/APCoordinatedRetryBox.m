@interface APCoordinatedRetryBox
- (APCoordinatedRetryBox)initWithType:(int64_t)a3 delegate:(id)a4;
- (APRequestCoordinatorDelegate)requestDelegate;
- (BOOL)isEqual:(id)a3;
- (NSDictionary)diagnosticReportPayload;
@end

@implementation APCoordinatedRetryBox

- (APCoordinatedRetryBox)initWithType:(int64_t)a3 delegate:(id)a4
{
  v6 = a4;
  v26.receiver = self;
  v26.super_class = APCoordinatedRetryBox;
  v7 = [(APCoordinatedRetryBox *)&v26 init];
  v8 = v7;
  if (v7)
  {
    v7->_requestType = a3;
    objc_storeWeak(&v7->_requestDelegate, v6);
    v8->_canRetry = 1;
    v15 = objc_msgSend_UUID(MEMORY[0x1E696AFB0], v9, v10, v11, v12, v13, v14);
    requestID = v8->_requestID;
    v8->_requestID = v15;

    v23 = objc_msgSend_requesterID(v6, v17, v18, v19, v20, v21, v22);
    requesterID = v8->_requesterID;
    v8->_requesterID = v23;
  }

  return v8;
}

- (NSDictionary)diagnosticReportPayload
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = MEMORY[0x1E696AD98];
  v11 = objc_msgSend_requestType(self, v5, v6, v7, v8, v9, v10);
  v17 = objc_msgSend_numberWithInteger_(v4, v12, v11, v13, v14, v15, v16);
  objc_msgSend_setObject_forKey_(v3, v18, v17, @"kAPCoordinatedRetryBoxRequestType", v19, v20, v21);

  v22 = MEMORY[0x1E696AD98];
  canRetry = objc_msgSend_canRetry(self, v23, v24, v25, v26, v27, v28);
  v35 = objc_msgSend_numberWithBool_(v22, v30, canRetry, v31, v32, v33, v34);
  objc_msgSend_setObject_forKey_(v3, v36, v35, @"kAPCoordinatedRetryBoxCanRetry", v37, v38, v39);

  v46 = objc_msgSend_requestID(self, v40, v41, v42, v43, v44, v45);

  if (v46)
  {
    v53 = objc_msgSend_requestID(self, v47, v48, v49, v50, v51, v52);
    objc_msgSend_setObject_forKey_(v3, v54, v53, @"kAPCoordinatedRetryBoxRequestID", v55, v56, v57);
  }

  v58 = objc_msgSend_requesterID(self, v47, v48, v49, v50, v51, v52);

  if (v58)
  {
    v65 = objc_msgSend_requesterID(self, v59, v60, v61, v62, v63, v64);
    objc_msgSend_setObject_forKey_(v3, v66, v65, @"kAPCoordinatedRetryBoxRequesterID", v67, v68, v69);
  }

  v70 = objc_msgSend_dictionaryWithDictionary_(MEMORY[0x1E695DF20], v59, v3, v61, v62, v63, v64);

  return v70;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (objc_opt_respondsToSelector())
  {
    v11 = objc_msgSend_requestID(self, v5, v6, v7, v8, v9, v10);
    v18 = objc_msgSend_requestID(v4, v12, v13, v14, v15, v16, v17);
    isEqual = objc_msgSend_isEqual_(v11, v19, v18, v20, v21, v22, v23);
  }

  else
  {
    isEqual = 0;
  }

  return isEqual;
}

- (APRequestCoordinatorDelegate)requestDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_requestDelegate);

  return WeakRetained;
}

@end