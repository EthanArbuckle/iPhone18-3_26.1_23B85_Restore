@interface AAAttributionResult
- (AAAttributionResult)initWithCoder:(id)a3;
- (AAAttributionResult)initWithToken:(id)a3 tokenKey:(id)a4 success:(BOOL)a5 error:(id)a6 source:(int64_t)a7;
- (void)encodeWithCoder:(id)a3;
@end

@implementation AAAttributionResult

- (AAAttributionResult)initWithToken:(id)a3 tokenKey:(id)a4 success:(BOOL)a5 error:(id)a6 source:(int64_t)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a6;
  v19.receiver = self;
  v19.super_class = AAAttributionResult;
  v16 = [(AAAttributionResult *)&v19 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_token, a3);
    objc_storeStrong(&v17->_tokenKey, a4);
    v17->_success = a5;
    objc_storeStrong(&v17->_error, a6);
    v17->_source = a7;
  }

  return v17;
}

- (void)encodeWithCoder:(id)a3
{
  v70 = a3;
  v10 = objc_msgSend_token(self, v4, v5, v6, v7, v8, v9);
  objc_msgSend_encodeObject_forKey_(v70, v11, v10, @"token", v12, v13, v14);

  v21 = objc_msgSend_success(self, v15, v16, v17, v18, v19, v20);
  objc_msgSend_encodeBool_forKey_(v70, v22, v21, @"success", v23, v24, v25);
  v32 = objc_msgSend_error(self, v26, v27, v28, v29, v30, v31);
  objc_msgSend_encodeObject_forKey_(v70, v33, v32, @"error", v34, v35, v36);

  v43 = objc_msgSend_storeFront(self, v37, v38, v39, v40, v41, v42);
  objc_msgSend_encodeObject_forKey_(v70, v44, v43, @"storeFront", v45, v46, v47);

  objc_msgSend_daemonRunningTime(self, v48, v49, v50, v51, v52, v53);
  objc_msgSend_encodeDouble_forKey_(v70, v54, @"daemonRunningTime", v55, v56, v57, v58);
  v65 = objc_msgSend_source(self, v59, v60, v61, v62, v63, v64);
  objc_msgSend_encodeInteger_forKey_(v70, v66, v65, @"source", v67, v68, v69);
}

- (AAAttributionResult)initWithCoder:(id)a3
{
  v4 = a3;
  v44.receiver = self;
  v44.super_class = AAAttributionResult;
  v5 = [(AAAttributionResult *)&v44 init];
  if (v5)
  {
    v6 = objc_opt_class();
    v11 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v7, v6, @"token", v8, v9, v10);
    token = v5->_token;
    v5->_token = v11;

    v5->_success = objc_msgSend_decodeBoolForKey_(v4, v13, @"success", v14, v15, v16, v17);
    v18 = objc_opt_class();
    v23 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v19, v18, @"error", v20, v21, v22);
    error = v5->_error;
    v5->_error = v23;

    v25 = objc_opt_class();
    v30 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v26, v25, @"storeFront", v27, v28, v29);
    storeFront = v5->_storeFront;
    v5->_storeFront = v30;

    objc_msgSend_decodeDoubleForKey_(v4, v32, @"daemonRunningTime", v33, v34, v35, v36);
    v5->_daemonRunningTime = v37;
    v5->_source = objc_msgSend_decodeIntegerForKey_(v4, v38, @"source", v39, v40, v41, v42);
  }

  return v5;
}

@end