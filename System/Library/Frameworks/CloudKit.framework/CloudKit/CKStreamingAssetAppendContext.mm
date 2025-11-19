@interface CKStreamingAssetAppendContext
+ (id)requestToAppendSegmentData:(id)a3 uploadURL:(id)a4 requestUUID:(id)a5 offset:(unint64_t)a6;
- (BOOL)appendSegmentWithData:(id)a3 newStreamingAsset:(id *)a4 error:(id *)a5;
- (CKStreamingAssetAppendContext)init;
- (CKStreamingAssetAppendContext)initWithStreamingAsset:(id)a3;
- (id)CKDescriptionPropertiesWithPublic:(BOOL)a3 private:(BOOL)a4 shouldExpand:(BOOL)a5;
- (void)URLSession:(id)a3 task:(id)a4 didCompleteWithError:(id)a5;
- (void)URLSession:(id)a3 task:(id)a4 needNewBodyStream:(id)a5;
- (void)abort;
- (void)appendSegmentWithData:(id)a3 completionHandler:(id)a4;
@end

@implementation CKStreamingAssetAppendContext

- (CKStreamingAssetAppendContext)init
{
  v2 = [CKException alloc];
  v3 = *MEMORY[0x1E695D940];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v7 = objc_msgSend_initWithName_format_(v2, v6, v3, @"[%@ init] is unavailable", v5);
  v8 = v7;

  objc_exception_throw(v7);
}

- (CKStreamingAssetAppendContext)initWithStreamingAsset:(id)a3
{
  v5 = a3;
  v15.receiver = self;
  v15.super_class = CKStreamingAssetAppendContext;
  v6 = [(CKStreamingAssetAppendContext *)&v15 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_streamingAsset, a3);
    v8 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v9 = dispatch_queue_create("com.apple.cloudkit.streaming-asset.append-context.append", v8);
    appendQueue = v7->_appendQueue;
    v7->_appendQueue = v9;

    v11 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v12 = dispatch_queue_create("com.apple.cloudkit.streaming-asset.append-context.callback", v11);
    callbackQueue = v7->_callbackQueue;
    v7->_callbackQueue = v12;
  }

  return v7;
}

- (id)CKDescriptionPropertiesWithPublic:(BOOL)a3 private:(BOOL)a4 shouldExpand:(BOOL)a5
{
  v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v11 = objc_msgSend_streamingAsset(self, v7, v8);
  if (v11)
  {
    objc_msgSend_CKAddPropertySafelyForKey_value_(v6, v9, @"streamingAsset", v11);
  }

  v13 = objc_msgSend_dataTask(self, v9, v10);
  if (v13)
  {
    objc_msgSend_CKAddPropertySafelyForKey_value_(v6, v12, @"dataTask", v13);
  }

  return v6;
}

- (BOOL)appendSegmentWithData:(id)a3 newStreamingAsset:(id *)a4 error:(id *)a5
{
  v8 = a3;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = sub_1883ED864;
  v28 = sub_1883EF588;
  v29 = 0;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = sub_1883ED864;
  v22 = sub_1883EF588;
  v23 = 0;
  v9 = dispatch_semaphore_create(0);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = sub_18852FA30;
  v14[3] = &unk_1E70BC298;
  v16 = &v18;
  v17 = &v24;
  v10 = v9;
  v15 = v10;
  objc_msgSend_appendSegmentWithData_completionHandler_(self, v11, v8, v14);
  dispatch_semaphore_wait(v10, 0xFFFFFFFFFFFFFFFFLL);
  if (a5)
  {
    *a5 = v25[5];
  }

  if (a4)
  {
    *a4 = v19[5];
  }

  v12 = v25[5] == 0;

  _Block_object_dispose(&v18, 8);
  _Block_object_dispose(&v24, 8);

  return v12;
}

- (void)appendSegmentWithData:(id)a3 completionHandler:(id)a4
{
  v70 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v63 = 0;
  v8 = _CKCheckArgument("data", v6, 0, 0, 0, &v63);
  v9 = v63;
  v10 = v9;
  if ((v8 & 1) == 0)
  {
    v34 = [CKException alloc];
    v37 = objc_msgSend_code(v10, v35, v36);
    v40 = objc_msgSend_localizedDescription(v10, v38, v39);
    v42 = objc_msgSend_initWithCode_format_(v34, v41, v37, @"%@", v40);
    v43 = v42;

    objc_exception_throw(v42);
  }

  v11 = _Block_copy(v7);
  v62 = 0;
  v12 = _CKCheckArgument("completionHandler", v11, 0, 0, 0, &v62);
  v13 = v62;

  if ((v12 & 1) == 0)
  {
    v44 = [CKException alloc];
    v47 = objc_msgSend_code(v13, v45, v46);
    v50 = objc_msgSend_localizedDescription(v13, v48, v49);
    v52 = objc_msgSend_initWithCode_format_(v44, v51, v47, @"%@", v50);
    v53 = v52;

    objc_exception_throw(v52);
  }

  v14 = _os_activity_create(&dword_1883EA000, "client/streaming-asset-append", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v14, &state);
  v17 = objc_msgSend_UUID(MEMORY[0x1E696AFB0], v15, v16);
  v20 = objc_msgSend_UUIDString(v17, v18, v19);

  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v21 = ck_log_facility_ck;
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
  {
    v33 = objc_msgSend_length(v6, v22, v23);
    *buf = 134218498;
    v65 = v33;
    v66 = 2112;
    v67 = self;
    v68 = 2114;
    v69 = v20;
    _os_log_debug_impl(&dword_1883EA000, v21, OS_LOG_TYPE_DEBUG, "Appending segment of length %ld to %@ with requestUUID %{public}@", buf, 0x20u);
  }

  if (objc_msgSend_length(v6, v24, v25))
  {
    v28 = objc_msgSend_appendQueue(self, v26, v27);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_18852FF78;
    block[3] = &unk_1E70BC310;
    block[4] = self;
    v58 = v7;
    v55 = v6;
    v56 = v20;
    v57 = v14;
    v29 = v7;
    dispatch_async(v28, block);
  }

  else
  {
    v30 = objc_msgSend_callbackQueue(self, v26, v27);
    v59[0] = MEMORY[0x1E69E9820];
    v59[1] = 3221225472;
    v59[2] = sub_18852FEF4;
    v59[3] = &unk_1E70BC2C0;
    v60 = v7;
    v31 = v7;
    dispatch_async(v30, v59);
  }

  os_activity_scope_leave(&state);
  v32 = *MEMORY[0x1E69E9840];
}

+ (id)requestToAppendSegmentData:(id)a3 uploadURL:(id)a4 requestUUID:(id)a5 offset:(unint64_t)a6
{
  v70 = *MEMORY[0x1E69E9840];
  v9 = MEMORY[0x1E696AD68];
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = [v9 alloc];
  v15 = objc_msgSend_initWithURL_(v13, v14, v11);

  objc_msgSend_setHTTPMethod_(v15, v16, @"PUT");
  objc_msgSend_setValue_forHTTPHeaderField_(v15, v17, v10, @"X-Apple-Request-UUID");

  objc_msgSend_setValue_forHTTPHeaderField_(v15, v18, @"1", @"x-apple-sa-version");
  v20 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v19, @"%lu", a6);
  objc_msgSend_setValue_forHTTPHeaderField_(v15, v21, v20, @"x-apple-sa-offset");
  v22 = objc_alloc_init(CKDPStreamingAssetFooter);
  objc_msgSend_setStatus_(v22, v23, 0);
  v24 = v12;
  v27 = objc_msgSend_bytes(v24, v25, v26);
  v30 = objc_msgSend_length(v12, v28, v29);
  CC_MD5(v27, v30, md);
  v32 = objc_msgSend_dataWithBytes_length_(MEMORY[0x1E695DEF0], v31, md, 16);
  objc_msgSend_setMd5_(v22, v33, v32);

  v36 = objc_msgSend_data(v22, v34, v35);
  v39 = objc_msgSend_length(v36, v37, v38);
  v66 = bswap32(v39);
  v41 = objc_msgSend_dataWithBytes_length_(MEMORY[0x1E695DEF0], v40, &v66, 4);
  v42 = objc_alloc(MEMORY[0x1E695DF88]);
  v45 = objc_msgSend_length(v12, v43, v44);
  v48 = objc_msgSend_length(v36, v46, v47);
  v51 = objc_msgSend_length(v41, v49, v50);
  v53 = objc_msgSend_initWithCapacity_(v42, v52, v48 + v45 + v51);
  objc_msgSend_appendData_(v53, v54, v12);

  objc_msgSend_appendData_(v53, v55, v36);
  objc_msgSend_appendData_(v53, v56, v41);
  v58 = objc_msgSend_inputStreamWithData_(MEMORY[0x1E695DF48], v57, v53);
  objc_msgSend_setHTTPBodyStream_(v15, v59, v58);
  if (v39 >= 0x801)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v60 = ck_log_facility_ck;
    if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_DEBUG))
    {
      *buf = 67109120;
      v68 = v39;
      _os_log_debug_impl(&dword_1883EA000, v60, OS_LOG_TYPE_DEBUG, "Overriding max footer length with %u", buf, 8u);
    }

    v62 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v61, @"%u", v39);
    objc_msgSend_setValue_forHTTPHeaderField_(v15, v63, v62, @"x-apple-sa-footer-max-size");
  }

  v64 = *MEMORY[0x1E69E9840];

  return v15;
}

- (void)URLSession:(id)a3 task:(id)a4 didCompleteWithError:(id)a5
{
  v7 = a4;
  v8 = a5;
  v11 = objc_msgSend_appendQueue(self, v9, v10);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1885309CC;
  block[3] = &unk_1E70BC360;
  block[4] = self;
  v15 = v8;
  v16 = v7;
  v12 = v7;
  v13 = v8;
  dispatch_async(v11, block);
}

- (void)URLSession:(id)a3 task:(id)a4 needNewBodyStream:(id)a5
{
  v8 = a5;
  objc_msgSend_cancel(a4, v6, v7);
  v8[2](v8, 0);
}

- (void)abort
{
  v4 = objc_msgSend_appendQueue(self, a2, v2);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_188531D48;
  block[3] = &unk_1E70BC388;
  block[4] = self;
  dispatch_sync(v4, block);
}

@end