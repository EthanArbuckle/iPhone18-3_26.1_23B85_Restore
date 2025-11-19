@interface APSigningAuthority
- (APSigningAuthority)initWithPoolName:(id)a3;
- (BOOL)_createAttribute:(void *)a3 enableStashing:(BOOL *)a4;
- (BOOL)_verifyContext:(void *)a3;
- (BOOL)isUsed;
- (BOOL)usingStashedContext;
- (id)_createContext:(void *)a3 requestStashed:(BOOL *)a4;
- (id)_failureString:(int64_t)a3;
- (id)_getEncodedStringFromFPDIDataRef:(void *)a3 withLength:(unsigned int)a4;
- (id)_signatureForData:(id)a3 error:(id *)a4;
- (id)signatureForData:(id)a3 error:(id *)a4;
- (void)_destroyObject:(void *)a3 ofType:(int64_t)a4;
- (void)_sendInitRequest:(id)a3 forContextRef:(void *)a4 withCompletion:(id)a5;
- (void)_sendSetupRequest:(id)a3 forContextRef:(unint64_t *)a4 withCompletion:(id)a5;
- (void)_setFailureStateWithError:(int64_t)a3 finalState:(unint64_t)a4;
- (void)_setFailureStateWithErrorAndDestroyContext:(int64_t)a3 finalState:(unint64_t)a4 contextRef:(void *)a5;
- (void)_setupNewContext:(BOOL)a3 withCompletion:(id)a4;
- (void)setState:(int64_t)a3;
@end

@implementation APSigningAuthority

- (APSigningAuthority)initWithPoolName:(id)a3
{
  v54[7] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v51.receiver = self;
  v51.super_class = APSigningAuthority;
  v9 = [(APSigningAuthority *)&v51 init];
  if (v9)
  {
    v50 = v5;
    v10 = objc_msgSend_null(MEMORY[0x1E695DFB0], v6, v7, v8);
    v54[0] = v10;
    v14 = objc_msgSend_null(MEMORY[0x1E695DFB0], v11, v12, v13);
    v54[1] = v14;
    v18 = objc_msgSend_null(MEMORY[0x1E695DFB0], v15, v16, v17);
    v54[2] = v18;
    v22 = objc_msgSend_null(MEMORY[0x1E695DFB0], v19, v20, v21);
    v54[3] = v22;
    v26 = objc_msgSend_null(MEMORY[0x1E695DFB0], v23, v24, v25);
    v54[4] = v26;
    v30 = objc_msgSend_null(MEMORY[0x1E695DFB0], v27, v28, v29);
    v54[5] = v30;
    v34 = objc_msgSend_null(MEMORY[0x1E695DFB0], v31, v32, v33);
    v54[6] = v34;
    v36 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v35, v54, 7);
    v40 = objc_msgSend_mutableCopy(v36, v37, v38, v39);
    stageDurationIntervals = v9->_stageDurationIntervals;
    v9->_stageDurationIntervals = v40;

    if (objc_msgSend_isAllowedClient(APSigningClientValidator, v42, v43, v44))
    {
      objc_storeStrong(&v9->_poolName, a3);
      v9->_failureError = 7204;
      v9->_state = 17005;
      v46 = APPerfLogForCategory(0x30uLL);
      v9->_signpostID = os_signpost_id_generate(v46);
    }

    else
    {
      objc_msgSend__setFailureStateWithError_finalState_(v9, v45, 7206, 0);
      v52 = @"finalStatus";
      v53 = &unk_1F3909010;
      v46 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v47, &v53, &v52, 1);
      AnalyticsSendEvent();
    }

    v5 = v50;
  }

  v48 = *MEMORY[0x1E69E9840];
  return v9;
}

- (void)_setupNewContext:(BOOL)a3 withCompletion:(id)a4
{
  v36 = *MEMORY[0x1E69E9840];
  v33 = a3;
  v5 = a4;
  v6 = APLogForCategory(0x30uLL);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    v35 = self;
    _os_log_impl(&dword_1BADC1000, v6, OS_LOG_TYPE_INFO, "Setting up new context for authority %p", buf, 0xCu);
  }

  objc_msgSend_setState_(self, v7, 17001, v8);
  v32 = 0;
  v15 = objc_msgSend_poolName(self, v9, v10, v11);
  if (!v15 || (objc_msgSend_poolName(self, v12, v13, v14), v16 = objc_claimAutoreleasedReturnValue(), v20 = objc_msgSend_length(v16, v17, v18, v19) == 0, v16, v15, v20))
  {
    v33 = 0;
  }

  v21 = objc_msgSend__createContext_requestStashed_(self, v12, &v32, &v33);
  if (v21)
  {
    objc_initWeak(buf, self);
    v22 = v32;
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = sub_1BAF26CF8;
    v28[3] = &unk_1E7F1D4A8;
    objc_copyWeak(v30, buf);
    v30[1] = v32;
    v28[4] = self;
    v31 = v33;
    v29 = v5;
    objc_msgSend__sendInitRequest_forContextRef_withCompletion_(self, v23, v21, v22, v28);

    objc_destroyWeak(v30);
    objc_destroyWeak(buf);
  }

  else
  {
    v24 = APLogForCategory(0x30uLL);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      *buf = 136642819;
      v35 = "[APSigningAuthority _setupNewContext:withCompletion:]";
      _os_log_impl(&dword_1BADC1000, v24, OS_LOG_TYPE_ERROR, "[%{sensitive}s]: initRequest nil, FPDI creation failed.", buf, 0xCu);
    }

    objc_msgSend_setState_(self, v25, 7200, v26);
    (*(v5 + 2))(v5, 0);
  }

  v27 = *MEMORY[0x1E69E9840];
}

- (id)_createContext:(void *)a3 requestStashed:(BOOL *)a4
{
  v80[1] = *MEMORY[0x1E69E9840];
  Current = CFAbsoluteTimeGetCurrent();
  v8 = APPerfLogForCategory(0x30uLL);
  v12 = objc_msgSend_signpostID(self, v9, v10, v11);
  if ((v12 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v13 = v12;
    if (os_signpost_enabled(v8))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1BADC1000, v8, OS_SIGNPOST_INTERVAL_BEGIN, v13, "ContextCreate", "", buf, 2u);
    }
  }

  v72[8] = 0;
  *v72 = a4 != 0;
  v15 = 0;
  if (objc_msgSend__createAttribute_enableStashing_(self, v14, &v72[1], v72))
  {
    v71 = 0;
    v70 = 0;
    v16 = APLogForCategory(0x30uLL);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      v76 = self;
      _os_log_impl(&dword_1BADC1000, v16, OS_LOG_TYPE_INFO, "Signing Authority %p creating context", buf, 0xCu);
    }

    inited = objc_msgSend_FPDICreateContext_withAttribute_initRequest_initRequestLength_(APFPDIWrapper, v17, a3, *&v72[1], &v71, &v70);
    if (inited == -44663 || (v20 = inited, inited == -44802))
    {
      v21 = APLogForCategory(0x30uLL);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        *buf = 134217984;
        v76 = self;
        _os_log_impl(&dword_1BADC1000, v21, OS_LOG_TYPE_INFO, "Attempting to re-create stashed context for authority %p as non-stashed", buf, 0xCu);
      }

      objc_msgSend_FPDISetStashingIsEnabled_forAttribute_(APFPDIWrapper, v22, 0, *&v72[1]);
      v24 = objc_msgSend_FPDICreateContext_withAttribute_initRequest_initRequestLength_(APFPDIWrapper, v23, a3, *&v72[1], &v71, &v70);
      if (v24 == -44663)
      {
        objc_msgSend__setFailureStateWithError_finalState_(self, v19, 7201, 3);
        objc_msgSend__destroyObject_ofType_(self, v25, &v72[1], 1205);
        v26 = APPerfLogForCategory(0x30uLL);
        v30 = objc_msgSend_signpostID(self, v27, v28, v29);
        if ((v30 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
        {
          v31 = v30;
          if (os_signpost_enabled(v26))
          {
            *buf = 0;
            _os_signpost_emit_with_name_impl(&dword_1BADC1000, v26, OS_SIGNPOST_INTERVAL_END, v31, "ContextCreate", " enableTelemetry=YES ", buf, 2u);
          }
        }

        v32 = MEMORY[0x1E696AD98];
        v33 = CFAbsoluteTimeGetCurrent();
        v37 = objc_msgSend_numberWithDouble_(v32, v34, v35, v36, (v33 - Current) * 1000.0);
        v41 = objc_msgSend_stageDurationIntervals(self, v38, v39, v40);
        objc_msgSend_setObject_atIndexedSubscript_(v41, v42, v37, 3);

        v79 = @"finalStatus";
        v80[0] = &unk_1F3909028;
        v44 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v43, v80, &v79, 1);
        AnalyticsSendEvent();
        v15 = 0;
LABEL_27:

        goto LABEL_28;
      }

      v20 = v24;
    }

    if (v20)
    {
      v45 = APLogForCategory(0x30uLL);
      if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
      {
        *buf = 136643075;
        v76 = "[APSigningAuthority _createContext:requestStashed:]";
        v77 = 1025;
        v78 = v20;
        _os_log_impl(&dword_1BADC1000, v45, OS_LOG_TYPE_ERROR, "[%{sensitive}s]: Attribution set privacy level error, FPDI creation failed. Status: %{private}d", buf, 0x12u);
      }

      objc_msgSend__setFailureStateWithError_finalState_(self, v46, 7200, 3);
      objc_msgSend__destroyObject_ofType_(self, v47, &v72[1], 1205);
      v73 = @"finalStatus";
      v74 = &unk_1F3909040;
      v49 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v48, &v74, &v73, 1);
      AnalyticsSendEvent();
      v15 = 0;
    }

    else
    {
      v15 = objc_msgSend__getEncodedStringFromFPDIDataRef_withLength_(self, v19, v71, v70);
      objc_msgSend__destroyObject_ofType_(self, v50, &v72[1], 1205);
      objc_msgSend__destroyObject_ofType_(self, v51, &v71, 1206);
      v49 = APLogForCategory(0x30uLL);
      if (os_log_type_enabled(v49, OS_LOG_TYPE_INFO))
      {
        *buf = 134217984;
        v76 = self;
        _os_log_impl(&dword_1BADC1000, v49, OS_LOG_TYPE_INFO, "Signing Authority %p finished creating context", buf, 0xCu);
      }
    }

    v52 = APPerfLogForCategory(0x30uLL);
    v56 = objc_msgSend_signpostID(self, v53, v54, v55);
    if ((v56 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v57 = v56;
      if (os_signpost_enabled(v52))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1BADC1000, v52, OS_SIGNPOST_INTERVAL_END, v57, "ContextCreate", " enableTelemetry=YES ", buf, 2u);
      }
    }

    v58 = MEMORY[0x1E696AD98];
    v59 = CFAbsoluteTimeGetCurrent();
    v44 = objc_msgSend_numberWithDouble_(v58, v60, v61, v62, (v59 - Current) * 1000.0);
    v66 = objc_msgSend_stageDurationIntervals(self, v63, v64, v65);
    objc_msgSend_setObject_atIndexedSubscript_(v66, v67, v44, 3);

    goto LABEL_27;
  }

LABEL_28:
  v68 = *MEMORY[0x1E69E9840];

  return v15;
}

- (BOOL)_createAttribute:(void *)a3 enableStashing:(BOOL *)a4
{
  v25[1] = *MEMORY[0x1E69E9840];
  if (objc_msgSend_FPDIInitAttribute_(APFPDIWrapper, a2, a3, a4) && objc_msgSend_FPDISetHighPrivacyLevelForAttribute_(APFPDIWrapper, v7, *a3, v8))
  {
    v9 = APLogForCategory(0x30uLL);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v20 = 136642819;
      *v21 = "[APSigningAuthority _createAttribute:enableStashing:]";
      _os_log_impl(&dword_1BADC1000, v9, OS_LOG_TYPE_ERROR, "[%{sensitive}s]: Attribution initialization error, FPDI creation failed", &v20, 0xCu);
    }

    objc_msgSend__setFailureStateWithError_finalState_(self, v10, 7200, 4);
    objc_msgSend__destroyObject_ofType_(self, v11, a3, 1205);
    v24 = @"finalStatus";
    v25[0] = &unk_1F3909058;
    v13 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v12, v25, &v24, 1);
    AnalyticsSendEvent();

    result = 0;
  }

  else
  {
    IsEnabled_forAttribute = objc_msgSend_FPDISetStashingIsEnabled_forAttribute_(APFPDIWrapper, v7, a4 != 0, *a3);
    if (IsEnabled_forAttribute)
    {
      v16 = IsEnabled_forAttribute;
      v17 = APLogForCategory(0x30uLL);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v18 = @"NO";
        v20 = 67109634;
        *v21 = v16;
        if (a4)
        {
          v18 = @"YES";
        }

        *&v21[4] = 2112;
        *&v21[6] = v18;
        v22 = 2048;
        v23 = self;
        _os_log_impl(&dword_1BADC1000, v17, OS_LOG_TYPE_ERROR, "Error %d setting stash attribute to %@ for signing authority %p", &v20, 0x1Cu);
      }

      *a4 = 0;
    }

    result = 1;
  }

  v19 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)_sendInitRequest:(id)a3 forContextRef:(void *)a4 withCompletion:(id)a5
{
  v51 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a5;
  v10 = APLogForCategory(0x30uLL);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    v50 = self;
    _os_log_impl(&dword_1BADC1000, v10, OS_LOG_TYPE_INFO, "Signing Authority %p sending init request", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  Current = CFAbsoluteTimeGetCurrent();
  v12 = APPerfLogForCategory(0x30uLL);
  v16 = objc_msgSend_signpostID(self, v13, v14, v15);
  if (v16 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
  {
    *v48 = 0;
    _os_signpost_emit_with_name_impl(&dword_1BADC1000, v12, OS_SIGNPOST_INTERVAL_BEGIN, v16, "ContextInit", "", v48, 2u);
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = sub_1BAF27B50;
  aBlock[3] = &unk_1E7F1D4D0;
  objc_copyWeak(v47, buf);
  aBlock[4] = self;
  v47[1] = *&Current;
  v47[2] = a4;
  v17 = v9;
  v46 = v17;
  v18 = _Block_copy(aBlock);
  if (!objc_msgSend_isAppleInternalInstall(APSystemInternal, v19, v20, v21))
  {
    goto LABEL_11;
  }

  v22 = objc_alloc_init(APSigningAuthoritySettings);
  v26 = objc_msgSend_failContextServerInit(v22, v23, v24, v25);
  v30 = objc_msgSend_BOOLValue(v26, v27, v28, v29);

  if (!v30 || (objc_msgSend_failContextServerInit(v22, v31, v32, v33), v34 = objc_claimAutoreleasedReturnValue(), v38 = objc_msgSend_integerValue(v34, v35, v36, v37), v34, v38 <= dword_1EBC37098))
  {

LABEL_11:
    v22 = objc_alloc_init(APSigningServerRequestor);
    objc_msgSend_sendRequestForData_requestType_completionHandler_(v22, v41, v8, 1301, v18);
    goto LABEL_12;
  }

  v39 = dispatch_time(0, 10000000000);
  v40 = dispatch_queue_create("com.apple.ap.signingauthority.fail_init", 0);
  v43[0] = MEMORY[0x1E69E9820];
  v43[1] = 3221225472;
  v43[2] = sub_1BAF27D64;
  v43[3] = &unk_1E7F1D4F8;
  v44 = v18;
  dispatch_after(v39, v40, v43);

  ++dword_1EBC37098;
LABEL_12:

  objc_destroyWeak(v47);
  objc_destroyWeak(buf);

  v42 = *MEMORY[0x1E69E9840];
}

- (void)_sendSetupRequest:(id)a3 forContextRef:(unint64_t *)a4 withCompletion:(id)a5
{
  v54 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a5;
  v10 = APLogForCategory(0x30uLL);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    v53 = self;
    _os_log_impl(&dword_1BADC1000, v10, OS_LOG_TYPE_INFO, "Signing Authority %p sending setup request", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  Current = CFAbsoluteTimeGetCurrent();
  v12 = APPerfLogForCategory(0x30uLL);
  v16 = objc_msgSend_signpostID(self, v13, v14, v15);
  if (v16 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
  {
    *v51 = 0;
    _os_signpost_emit_with_name_impl(&dword_1BADC1000, v12, OS_SIGNPOST_INTERVAL_BEGIN, v16, "ContextSetup", "", v51, 2u);
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = sub_1BAF28520;
  aBlock[3] = &unk_1E7F1D4D0;
  objc_copyWeak(v50, buf);
  aBlock[4] = self;
  v50[1] = *&Current;
  v50[2] = a4;
  v17 = v9;
  v49 = v17;
  v18 = _Block_copy(aBlock);
  if (!objc_msgSend_isAppleInternalInstall(APSystemInternal, v19, v20, v21))
  {
    goto LABEL_11;
  }

  v22 = objc_alloc_init(APSigningAuthoritySettings);
  v26 = objc_msgSend_failContextServerSetup(v22, v23, v24, v25);
  v30 = objc_msgSend_BOOLValue(v26, v27, v28, v29);

  if (!v30 || (objc_msgSend_failContextServerSetup(v22, v31, v32, v33), v34 = objc_claimAutoreleasedReturnValue(), v38 = objc_msgSend_integerValue(v34, v35, v36, v37), v34, v38 <= dword_1EBC3709C))
  {

LABEL_11:
    v22 = objc_alloc_init(APSigningServerRequestor);
    v44[0] = MEMORY[0x1E69E9820];
    v44[1] = 3221225472;
    v44[2] = sub_1BAF2880C;
    v44[3] = &unk_1E7F1D520;
    v45 = v18;
    objc_msgSend_sendRequestForData_requestType_completionHandler_(v22, v42, v8, 1302, v44);
    v41 = &v45;
    goto LABEL_12;
  }

  v39 = dispatch_time(0, 10000000000);
  v40 = dispatch_queue_create("com.apple.ap.signingauthority.fail_init", 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1BAF28724;
  block[3] = &unk_1E7F1D4F8;
  v47 = v18;
  dispatch_after(v39, v40, block);

  v41 = &v47;
  ++dword_1EBC3709C;
LABEL_12:

  objc_destroyWeak(v50);
  objc_destroyWeak(buf);

  v43 = *MEMORY[0x1E69E9840];
}

- (BOOL)_verifyContext:(void *)a3
{
  v35 = *MEMORY[0x1E69E9840];
  v5 = APLogForCategory(0x30uLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    v34 = self;
    _os_log_impl(&dword_1BADC1000, v5, OS_LOG_TYPE_INFO, "Signing Authority %p verifying stored context", buf, 0xCu);
  }

  v8 = objc_msgSend_dataUsingEncoding_(@"verificationContext", v6, 4, v7);
  v9 = v8;
  v13 = objc_msgSend_bytes(v9, v10, v11, v12);
  v17 = objc_msgSend_length(v8, v14, v15, v16);
  v30 = 0;
  v29 = 0;
  v19 = objc_msgSend_FPDISignWithContext_message_messageLength_rawSignature_rawSignatureLength_(APFPDIWrapper, v18, a3, v13, v17, &v30, &v29);
  v20 = APLogForCategory(0x30uLL);
  v21 = os_log_type_enabled(v20, OS_LOG_TYPE_INFO);
  if (v19)
  {
    if (v21)
    {
      *buf = 134217984;
      v34 = self;
      _os_log_impl(&dword_1BADC1000, v20, OS_LOG_TYPE_INFO, "FPDI context for signing authority %p is not valid.", buf, 0xCu);
    }

    v31 = @"finalStatus";
    v32 = &unk_1F39090E8;
    v23 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v22, &v32, &v31, 1);
    AnalyticsSendEvent();
  }

  else
  {
    if (v21)
    {
      *buf = 134217984;
      v34 = self;
      _os_log_impl(&dword_1BADC1000, v20, OS_LOG_TYPE_INFO, "Signing Authority %p verified context", buf, 0xCu);
    }

    objc_msgSend_setState_(self, v25, 17002, v26);
  }

  objc_msgSend__destroyObject_ofType_(self, v24, &v30, 1206);

  v27 = *MEMORY[0x1E69E9840];
  return v19 == 0;
}

- (void)_destroyObject:(void *)a3 ofType:(int64_t)a4
{
  v14 = *MEMORY[0x1E69E9840];
  if (a4 == 1207)
  {
    if (!objc_msgSend_FPDIDestroyContext_(APFPDIWrapper, a2, a3, 1207))
    {
      goto LABEL_10;
    }
  }

  else if (a4 == 1206)
  {
    if (!objc_msgSend_FPDIDestroyData_(APFPDIWrapper, a2, a3, 1206))
    {
      goto LABEL_10;
    }
  }

  else if (a4 != 1205 || !objc_msgSend_FPDIDestroyAttribute_(APFPDIWrapper, a2, a3, 1205))
  {
LABEL_10:
    v5 = APLogForCategory(0x30uLL);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v10 = 136643075;
      v11 = "[APSigningAuthority _destroyObject:ofType:]";
      v12 = 2050;
      v13 = a4;
      v6 = "[%{sensitive}s]: Successfully destroyed an object of type %{public}ld";
      v7 = v5;
      v8 = OS_LOG_TYPE_INFO;
      goto LABEL_12;
    }

    goto LABEL_13;
  }

  v5 = APLogForCategory(0x30uLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v10 = 136643075;
    v11 = "[APSigningAuthority _destroyObject:ofType:]";
    v12 = 2050;
    v13 = a4;
    v6 = "[%{sensitive}s]: Unsuccessfully attempted to destroy an object of type %{public}ld, object possibly no longer exists.";
    v7 = v5;
    v8 = OS_LOG_TYPE_DEBUG;
LABEL_12:
    _os_log_impl(&dword_1BADC1000, v7, v8, v6, &v10, 0x16u);
  }

LABEL_13:

  v9 = *MEMORY[0x1E69E9840];
}

- (id)_getEncodedStringFromFPDIDataRef:(void *)a3 withLength:(unsigned int)a4
{
  v4 = objc_msgSend_dataWithBytes_length_(MEMORY[0x1E695DEF0], a2, a3, a4);
  v7 = objc_msgSend_base64EncodedStringWithOptions_(v4, v5, 0, v6);

  return v7;
}

- (id)_failureString:(int64_t)a3
{
  if ((a3 - 7200) <= 6)
  {
    a2 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, off_1E7F1D5B8[a3 - 7200], v3, self);
  }

  return a2;
}

- (void)_setFailureStateWithError:(int64_t)a3 finalState:(unint64_t)a4
{
  v18 = *MEMORY[0x1E69E9840];
  objc_msgSend_setFailureError_(self, a2, a3, a4);
  objc_msgSend_setFinalState_(self, v7, a4, v8);
  objc_msgSend_setState_(self, v9, 17003, v10);
  v13 = objc_msgSend__failureString_(self, v11, a3, v12);
  v14 = APLogForCategory(0x30uLL);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    v16 = 138543362;
    v17 = v13;
    _os_log_impl(&dword_1BADC1000, v14, OS_LOG_TYPE_ERROR, "%{public}@", &v16, 0xCu);
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (void)_setFailureStateWithErrorAndDestroyContext:(int64_t)a3 finalState:(unint64_t)a4 contextRef:(void *)a5
{
  objc_msgSend__setFailureStateWithError_finalState_(self, a2, a3, a4);
  if (a5)
  {
    v11 = objc_msgSend_poolName(self, v7, v8, v9);
    objc_msgSend_removeContextForPool_contextIdentifier_(APSigningContextStorage, v10, v11, a5);
  }
}

- (id)_signatureForData:(id)a3 error:(id *)a4
{
  v71[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (objc_msgSend_state(self, v7, v8, v9) == 17002)
  {
    v13 = objc_msgSend_signingContextStorage(self, v10, v11, v12);
    objc_msgSend_setUsed_(v13, v14, 1, v15);

    v16 = v6;
    v20 = objc_msgSend_bytes(v16, v17, v18, v19);
    v24 = objc_msgSend_length(v6, v21, v22, v23);
    v63 = 0;
    v62 = 0;
    v28 = objc_msgSend_signingContextStorage(self, v25, v26, v27);
    v32 = objc_msgSend_contextRef(v28, v29, v30, v31);
    v34 = objc_msgSend_FPDISignWithContext_message_messageLength_rawSignature_rawSignatureLength_(APFPDIWrapper, v33, v32, v20, v24, &v63, &v62);

    if (v34)
    {
      if (a4)
      {
        v37 = MEMORY[0x1E696ABC0];
        v64 = *MEMORY[0x1E696A578];
        v38 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v35, @"failed with error code %d.", v36, v34);
        v65 = v38;
        v40 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v39, &v65, &v64, 1);
        *a4 = objc_msgSend_errorWithDomain_code_userInfo_(v37, v41, @"com.apple.ap.signingAuthorityErrorDomain", 7202, v40);
      }

      v42 = APLogForCategory(0x30uLL);
      if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
      {
        *buf = 136643075;
        v67 = "[APSigningAuthority _signatureForData:error:]";
        v68 = 1024;
        LODWORD(v69) = v34;
        _os_log_impl(&dword_1BADC1000, v42, OS_LOG_TYPE_ERROR, "[%{sensitive}s]: FairPlaySAPSign failed with error code %d. Unable to generate signature - disabling request signing.", buf, 0x12u);
      }

      v46 = objc_msgSend_signingContextStorage(self, v43, v44, v45);
      v50 = objc_msgSend_contextRef(v46, v47, v48, v49);

      objc_msgSend__setFailureStateWithErrorAndDestroyContext_finalState_contextRef_(self, v51, 7202, 1, v50);
      v53 = 0;
    }

    else
    {
      v58 = APLogForCategory(0x30uLL);
      if (os_log_type_enabled(v58, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136642819;
        v67 = "[APSigningAuthority _signatureForData:error:]";
        _os_log_impl(&dword_1BADC1000, v58, OS_LOG_TYPE_DEBUG, "[%{sensitive}s]: Successfully got a signature", buf, 0xCu);
      }

      v53 = objc_msgSend_dataWithBytes_length_(MEMORY[0x1E695DEF0], v59, v63, v62);
    }

    objc_msgSend__destroyObject_ofType_(self, v52, &v63, 1206);
  }

  else
  {
    if (a4)
    {
      v54 = MEMORY[0x1E696ABC0];
      v70 = *MEMORY[0x1E696A578];
      v71[0] = @"Signing authority is not setup, can not sign data";
      v55 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v10, v71, &v70, 1);
      *a4 = objc_msgSend_errorWithDomain_code_userInfo_(v54, v56, @"com.apple.ap.signingAuthorityErrorDomain", 7202, v55);
    }

    v57 = APLogForCategory(0x30uLL);
    if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
    {
      *buf = 136643075;
      v67 = "[APSigningAuthority _signatureForData:error:]";
      v68 = 2114;
      v69 = @"Signing authority is not setup, can not sign data";
      _os_log_impl(&dword_1BADC1000, v57, OS_LOG_TYPE_ERROR, "[%{sensitive}s]: %{public}@", buf, 0x16u);
    }

    v53 = 0;
  }

  v60 = *MEMORY[0x1E69E9840];

  return v53;
}

- (BOOL)isUsed
{
  v4 = objc_msgSend_signingContextStorage(self, a2, v2, v3);
  v8 = objc_msgSend_used(v4, v5, v6, v7);

  return v8;
}

- (BOOL)usingStashedContext
{
  v4 = objc_msgSend_signingContextStorage(self, a2, v2, v3);
  v8 = objc_msgSend_stashed(v4, v5, v6, v7);

  return v8;
}

- (void)setState:(int64_t)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = APLogForCategory(0x30uLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v9 = objc_msgSend_state(self, v6, v7, v8);
    if ((v9 - 17000) > 4)
    {
      v10 = @"invalid";
    }

    else
    {
      v10 = off_1E7F1D5F0[v9 - 17000];
    }

    if ((a3 - 17000) > 4)
    {
      v11 = @"invalid";
    }

    else
    {
      v11 = off_1E7F1D5F0[a3 - 17000];
    }

    v13 = 134218498;
    v14 = self;
    v15 = 2112;
    v16 = v10;
    v17 = 2112;
    v18 = v11;
    _os_log_impl(&dword_1BADC1000, v5, OS_LOG_TYPE_INFO, "SigningAuthority %p state %@ -> %@", &v13, 0x20u);
  }

  self->_state = a3;
  v12 = *MEMORY[0x1E69E9840];
}

- (id)signatureForData:(id)a3 error:(id *)a4
{
  v6 = objc_msgSend_sha256(a3, a2, a3, a4);
  v8 = objc_msgSend__signatureForData_error_(self, v7, v6, a4);

  return v8;
}

@end