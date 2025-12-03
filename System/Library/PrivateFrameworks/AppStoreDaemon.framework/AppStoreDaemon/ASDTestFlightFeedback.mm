@interface ASDTestFlightFeedback
+ (id)interface;
+ (id)sharedInstance;
- (ASDTestFlightFeedback)init;
- (BOOL)isFeedbackEnabledForBundleID:(id)d;
- (BOOL)isFeedbackEnabledForBundleURL:(id)l;
- (BOOL)isLaunchScreenEnabledForBundleID:(id)d;
- (BOOL)isLaunchScreenEnabledForBundleURL:(id)l;
- (id)getDisplayNamesForBundleID:(id)d;
- (id)getDisplayNamesForBundleURL:(id)l;
- (id)getEmailAddressForBundleID:(id)d;
- (id)getEmailAddressForBundleURL:(id)l;
- (id)getLaunchInfoForBundleID:(id)d;
- (id)getLaunchInfoForBundleURL:(id)l;
- (id)getLaunchInfoForVersion:(id)version;
- (void)getFeedbackMetadataForBundleID:(id)d withCompletionHandler:(id)handler;
- (void)getFeedbackMetadataForBundleURL:(id)l withCompletionHandler:(id)handler;
- (void)getLaunchInfoForBundleID:(id)d withCompletionHandler:(id)handler;
- (void)getLaunchInfoForBundleURL:(id)l withCompletionHandler:(id)handler;
- (void)setFeedbackEnabled:(BOOL)enabled forVersion:(id)version withCompletionHandler:(id)handler;
- (void)setLaunchInfo:(id)info withCompletionHandler:(id)handler;
- (void)setLaunchScreenEnabled:(BOOL)enabled forVersion:(id)version withCompletionHandler:(id)handler;
- (void)submitFeedback:(id)feedback bundleURL:(id)l withCompletionHandler:(id)handler;
- (void)submitFeedback:(id)feedback withCompletionHandler:(id)handler;
- (void)updateTestNotes:(id)notes forVersion:(id)version withCompletionHandler:(id)handler;
@end

@implementation ASDTestFlightFeedback

+ (id)interface
{
  v2 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F3049F98];
  v3 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
  [v2 setClasses:v3 forSelector:sel_getFeedbackMetadataForBundleID_withCompletionHandler_ argumentIndex:0 ofReply:1];

  v4 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
  [v2 setClasses:v4 forSelector:sel_getLaunchInfoForBundleID_withCompletionHandler_ argumentIndex:0 ofReply:1];

  v5 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
  [v2 setClasses:v5 forSelector:sel_getLaunchInfoForVersion_withCompletionHandler_ argumentIndex:0 ofReply:1];

  v6 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
  [v2 setClasses:v6 forSelector:sel_getLaunchInfoForVersion_withCompletionHandler_ argumentIndex:1 ofReply:0];

  v7 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
  [v2 setClasses:v7 forSelector:sel_setFeedbackEnabled_forVersion_withCompletionHandler_ argumentIndex:1 ofReply:0];

  v8 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
  [v2 setClasses:v8 forSelector:sel_setLaunchScreenEnabled_forVersion_withCompletionHandler_ argumentIndex:1 ofReply:0];

  v9 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
  [v2 setClasses:v9 forSelector:sel_setLaunchInfo_withCompletionHandler_ argumentIndex:0 ofReply:0];

  return v2;
}

+ (id)sharedInstance
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __39__ASDTestFlightFeedback_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (qword_1ED90D498 != -1)
  {
    dispatch_once(&qword_1ED90D498, block);
  }

  v2 = _MergedGlobals_27;

  return v2;
}

uint64_t __39__ASDTestFlightFeedback_sharedInstance__block_invoke(uint64_t a1)
{
  _MergedGlobals_27 = objc_alloc_init(*(a1 + 32));

  return MEMORY[0x1EEE66BB8]();
}

- (ASDTestFlightFeedback)init
{
  v3 = +[ASDServiceBroker defaultBroker];
  v4 = v3;
  if (self)
  {
    v7.receiver = self;
    v7.super_class = ASDTestFlightFeedback;
    v5 = [(ASDTestFlightFeedback *)&v7 init];
    self = v5;
    if (v5)
    {
      objc_storeStrong(&v5->_serviceBroker, v3);
    }
  }

  return self;
}

- (id)getDisplayNamesForBundleID:(id)d
{
  v31[2] = *MEMORY[0x1E69E9840];
  dCopy = d;
  v5 = ASDLogHandleForCategory(38);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    LODWORD(buf) = 138543362;
    *(&buf + 4) = dCopy;
    _os_log_debug_impl(&dword_1B8220000, v5, OS_LOG_TYPE_DEBUG, "getDisplayNamesForBundleID: %{public}@", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v28 = 0x3032000000;
  v29 = __Block_byref_object_copy__2;
  v30 = __Block_byref_object_dispose__2;
  v31[0] = 0;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__2;
  v21 = __Block_byref_object_dispose__2;
  v22 = 0;
  serviceBroker = self->_serviceBroker;
  obj = 0;
  v7 = [(ASDServiceBroker *)serviceBroker getTestFlightFeedbackServiceWithError:&obj];
  objc_storeStrong(v31, obj);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __52__ASDTestFlightFeedback_getDisplayNamesForBundleID___block_invoke;
  v15[3] = &unk_1E7CDBB80;
  v15[4] = &buf;
  v8 = [v7 synchronousRemoteObjectProxyWithErrorHandler:v15];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __52__ASDTestFlightFeedback_getDisplayNamesForBundleID___block_invoke_2;
  v14[3] = &unk_1E7CDBFB0;
  v14[4] = &v17;
  [v8 getDisplayNamesForBundleID:dCopy withCompletionHandler:v14];

  if (*(*(&buf + 1) + 40))
  {
    v9 = ASDLogHandleForCategory(38);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v13 = *(*(&buf + 1) + 40);
      *v23 = 138543618;
      v24 = dCopy;
      v25 = 2114;
      v26 = v13;
      _os_log_error_impl(&dword_1B8220000, v9, OS_LOG_TYPE_ERROR, "Error in getDisplayNamesForBundleID:%{public}@ - %{public}@", v23, 0x16u);
    }
  }

  v10 = v18[5];

  _Block_object_dispose(&v17, 8);
  _Block_object_dispose(&buf, 8);

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

- (id)getDisplayNamesForBundleURL:(id)l
{
  v31[2] = *MEMORY[0x1E69E9840];
  lCopy = l;
  v5 = ASDLogHandleForCategory(38);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    LODWORD(buf) = 138543362;
    *(&buf + 4) = lCopy;
    _os_log_debug_impl(&dword_1B8220000, v5, OS_LOG_TYPE_DEBUG, "getDisplayNamesForBundleURL: %{public}@", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v28 = 0x3032000000;
  v29 = __Block_byref_object_copy__2;
  v30 = __Block_byref_object_dispose__2;
  v31[0] = 0;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__2;
  v21 = __Block_byref_object_dispose__2;
  v22 = 0;
  serviceBroker = self->_serviceBroker;
  obj = 0;
  v7 = [(ASDServiceBroker *)serviceBroker getTestFlightFeedbackServiceWithError:&obj];
  objc_storeStrong(v31, obj);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __53__ASDTestFlightFeedback_getDisplayNamesForBundleURL___block_invoke;
  v15[3] = &unk_1E7CDBB80;
  v15[4] = &buf;
  v8 = [v7 synchronousRemoteObjectProxyWithErrorHandler:v15];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __53__ASDTestFlightFeedback_getDisplayNamesForBundleURL___block_invoke_2;
  v14[3] = &unk_1E7CDBFB0;
  v14[4] = &v17;
  [v8 getDisplayNamesForBundleURL:lCopy withCompletionHandler:v14];

  if (*(*(&buf + 1) + 40))
  {
    v9 = ASDLogHandleForCategory(38);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v13 = *(*(&buf + 1) + 40);
      *v23 = 138543618;
      v24 = lCopy;
      v25 = 2114;
      v26 = v13;
      _os_log_error_impl(&dword_1B8220000, v9, OS_LOG_TYPE_ERROR, "Error in getDisplayNamesForBundleURL:%{public}@ - %{public}@", v23, 0x16u);
    }
  }

  v10 = v18[5];

  _Block_object_dispose(&v17, 8);
  _Block_object_dispose(&buf, 8);

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

- (id)getEmailAddressForBundleID:(id)d
{
  v31[2] = *MEMORY[0x1E69E9840];
  dCopy = d;
  v5 = ASDLogHandleForCategory(38);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    LODWORD(buf) = 138543362;
    *(&buf + 4) = dCopy;
    _os_log_debug_impl(&dword_1B8220000, v5, OS_LOG_TYPE_DEBUG, "getEmailAddressForBundleID: %{public}@", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v28 = 0x3032000000;
  v29 = __Block_byref_object_copy__2;
  v30 = __Block_byref_object_dispose__2;
  v31[0] = 0;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__2;
  v21 = __Block_byref_object_dispose__2;
  v22 = 0;
  serviceBroker = self->_serviceBroker;
  obj = 0;
  v7 = [(ASDServiceBroker *)serviceBroker getTestFlightFeedbackServiceWithError:&obj];
  objc_storeStrong(v31, obj);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __52__ASDTestFlightFeedback_getEmailAddressForBundleID___block_invoke;
  v15[3] = &unk_1E7CDBB80;
  v15[4] = &buf;
  v8 = [v7 synchronousRemoteObjectProxyWithErrorHandler:v15];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __52__ASDTestFlightFeedback_getEmailAddressForBundleID___block_invoke_2;
  v14[3] = &unk_1E7CDBFD8;
  v14[4] = &v17;
  [v8 getEmailAddressForBundleID:dCopy withCompletionHandler:v14];

  if (*(*(&buf + 1) + 40))
  {
    v9 = ASDLogHandleForCategory(38);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v13 = *(*(&buf + 1) + 40);
      *v23 = 138543618;
      v24 = dCopy;
      v25 = 2114;
      v26 = v13;
      _os_log_error_impl(&dword_1B8220000, v9, OS_LOG_TYPE_ERROR, "Error in getEmailAddressForBundleID:%{public}@ - %{public}@", v23, 0x16u);
    }
  }

  v10 = v18[5];

  _Block_object_dispose(&v17, 8);
  _Block_object_dispose(&buf, 8);

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

- (id)getEmailAddressForBundleURL:(id)l
{
  v31[2] = *MEMORY[0x1E69E9840];
  lCopy = l;
  v5 = ASDLogHandleForCategory(38);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    LODWORD(buf) = 138543362;
    *(&buf + 4) = lCopy;
    _os_log_debug_impl(&dword_1B8220000, v5, OS_LOG_TYPE_DEBUG, "getEmailAddressForBundleURL: %{public}@", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v28 = 0x3032000000;
  v29 = __Block_byref_object_copy__2;
  v30 = __Block_byref_object_dispose__2;
  v31[0] = 0;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__2;
  v21 = __Block_byref_object_dispose__2;
  v22 = 0;
  serviceBroker = self->_serviceBroker;
  obj = 0;
  v7 = [(ASDServiceBroker *)serviceBroker getTestFlightFeedbackServiceWithError:&obj];
  objc_storeStrong(v31, obj);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __53__ASDTestFlightFeedback_getEmailAddressForBundleURL___block_invoke;
  v15[3] = &unk_1E7CDBB80;
  v15[4] = &buf;
  v8 = [v7 synchronousRemoteObjectProxyWithErrorHandler:v15];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __53__ASDTestFlightFeedback_getEmailAddressForBundleURL___block_invoke_2;
  v14[3] = &unk_1E7CDBFD8;
  v14[4] = &v17;
  [v8 getEmailAddressForBundleURL:lCopy withCompletionHandler:v14];

  if (*(*(&buf + 1) + 40))
  {
    v9 = ASDLogHandleForCategory(38);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v13 = *(*(&buf + 1) + 40);
      *v23 = 138543618;
      v24 = lCopy;
      v25 = 2114;
      v26 = v13;
      _os_log_error_impl(&dword_1B8220000, v9, OS_LOG_TYPE_ERROR, "Error in getEmailAddressForBundleURL:%{public}@ - %{public}@", v23, 0x16u);
    }
  }

  v10 = v18[5];

  _Block_object_dispose(&v17, 8);
  _Block_object_dispose(&buf, 8);

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

- (void)getFeedbackMetadataForBundleID:(id)d withCompletionHandler:(id)handler
{
  v18 = *MEMORY[0x1E69E9840];
  dCopy = d;
  handlerCopy = handler;
  v8 = ASDLogHandleForCategory(38);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138543362;
    v17 = dCopy;
    _os_log_debug_impl(&dword_1B8220000, v8, OS_LOG_TYPE_DEBUG, "getFeedbackMetadataForBundleID: %{public}@", buf, 0xCu);
  }

  serviceBroker = self->_serviceBroker;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __78__ASDTestFlightFeedback_getFeedbackMetadataForBundleID_withCompletionHandler___block_invoke;
  v13[3] = &unk_1E7CDC028;
  v14 = dCopy;
  v15 = handlerCopy;
  v10 = dCopy;
  v11 = handlerCopy;
  [(ASDServiceBroker *)serviceBroker getTestFlightFeedbackServiceWithCompletionHandler:v13];

  v12 = *MEMORY[0x1E69E9840];
}

void __78__ASDTestFlightFeedback_getFeedbackMetadataForBundleID_withCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __78__ASDTestFlightFeedback_getFeedbackMetadataForBundleID_withCompletionHandler___block_invoke_2;
    v10[3] = &unk_1E7CDB730;
    v11 = *(a1 + 40);
    v4 = [a2 remoteObjectProxyWithErrorHandler:v10];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __78__ASDTestFlightFeedback_getFeedbackMetadataForBundleID_withCompletionHandler___block_invoke_4;
    v8[3] = &unk_1E7CDC000;
    v5 = *(a1 + 32);
    v9 = *(a1 + 40);
    [v4 getFeedbackMetadataForBundleID:v5 withCompletionHandler:v8];
  }

  else
  {
    v6 = *(a1 + 40);
    v7 = *(*(a1 + 40) + 16);

    v7();
  }
}

void __78__ASDTestFlightFeedback_getFeedbackMetadataForBundleID_withCompletionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = dispatch_get_global_queue(21, 0);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __78__ASDTestFlightFeedback_getFeedbackMetadataForBundleID_withCompletionHandler___block_invoke_3;
  v7[3] = &unk_1E7CDB890;
  v5 = *(a1 + 32);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(v4, v7);
}

void __78__ASDTestFlightFeedback_getFeedbackMetadataForBundleID_withCompletionHandler___block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = dispatch_get_global_queue(21, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __78__ASDTestFlightFeedback_getFeedbackMetadataForBundleID_withCompletionHandler___block_invoke_5;
  block[3] = &unk_1E7CDBAE0;
  v8 = *(a1 + 32);
  v13 = v6;
  v14 = v8;
  v12 = v5;
  v9 = v6;
  v10 = v5;
  dispatch_async(v7, block);
}

- (void)getFeedbackMetadataForBundleURL:(id)l withCompletionHandler:(id)handler
{
  v18 = *MEMORY[0x1E69E9840];
  lCopy = l;
  handlerCopy = handler;
  v8 = ASDLogHandleForCategory(38);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138543362;
    v17 = lCopy;
    _os_log_debug_impl(&dword_1B8220000, v8, OS_LOG_TYPE_DEBUG, "getFeedbackMetadataForBundleURL: %{public}@", buf, 0xCu);
  }

  serviceBroker = self->_serviceBroker;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __79__ASDTestFlightFeedback_getFeedbackMetadataForBundleURL_withCompletionHandler___block_invoke;
  v13[3] = &unk_1E7CDC028;
  v14 = lCopy;
  v15 = handlerCopy;
  v10 = lCopy;
  v11 = handlerCopy;
  [(ASDServiceBroker *)serviceBroker getTestFlightFeedbackServiceWithCompletionHandler:v13];

  v12 = *MEMORY[0x1E69E9840];
}

void __79__ASDTestFlightFeedback_getFeedbackMetadataForBundleURL_withCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __79__ASDTestFlightFeedback_getFeedbackMetadataForBundleURL_withCompletionHandler___block_invoke_2;
    v10[3] = &unk_1E7CDB730;
    v11 = *(a1 + 40);
    v4 = [a2 remoteObjectProxyWithErrorHandler:v10];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __79__ASDTestFlightFeedback_getFeedbackMetadataForBundleURL_withCompletionHandler___block_invoke_4;
    v8[3] = &unk_1E7CDC000;
    v5 = *(a1 + 32);
    v9 = *(a1 + 40);
    [v4 getFeedbackMetadataForBundleURL:v5 withCompletionHandler:v8];
  }

  else
  {
    v6 = *(a1 + 40);
    v7 = *(*(a1 + 40) + 16);

    v7();
  }
}

void __79__ASDTestFlightFeedback_getFeedbackMetadataForBundleURL_withCompletionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = dispatch_get_global_queue(21, 0);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __79__ASDTestFlightFeedback_getFeedbackMetadataForBundleURL_withCompletionHandler___block_invoke_3;
  v7[3] = &unk_1E7CDB890;
  v5 = *(a1 + 32);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(v4, v7);
}

void __79__ASDTestFlightFeedback_getFeedbackMetadataForBundleURL_withCompletionHandler___block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = dispatch_get_global_queue(21, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __79__ASDTestFlightFeedback_getFeedbackMetadataForBundleURL_withCompletionHandler___block_invoke_5;
  block[3] = &unk_1E7CDBAE0;
  v8 = *(a1 + 32);
  v13 = v6;
  v14 = v8;
  v12 = v5;
  v9 = v6;
  v10 = v5;
  dispatch_async(v7, block);
}

- (id)getLaunchInfoForBundleID:(id)d
{
  v31[2] = *MEMORY[0x1E69E9840];
  dCopy = d;
  v5 = ASDLogHandleForCategory(38);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    LODWORD(buf) = 138543362;
    *(&buf + 4) = dCopy;
    _os_log_debug_impl(&dword_1B8220000, v5, OS_LOG_TYPE_DEBUG, "getLaunchInfoForBundleID: %{public}@", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v28 = 0x3032000000;
  v29 = __Block_byref_object_copy__2;
  v30 = __Block_byref_object_dispose__2;
  v31[0] = 0;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__2;
  v21 = __Block_byref_object_dispose__2;
  v22 = 0;
  serviceBroker = self->_serviceBroker;
  obj = 0;
  v7 = [(ASDServiceBroker *)serviceBroker getTestFlightFeedbackServiceWithError:&obj];
  objc_storeStrong(v31, obj);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __50__ASDTestFlightFeedback_getLaunchInfoForBundleID___block_invoke;
  v15[3] = &unk_1E7CDBB80;
  v15[4] = &buf;
  v8 = [v7 synchronousRemoteObjectProxyWithErrorHandler:v15];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __50__ASDTestFlightFeedback_getLaunchInfoForBundleID___block_invoke_2;
  v14[3] = &unk_1E7CDC050;
  v14[4] = &buf;
  v14[5] = &v17;
  [v8 getLaunchInfoForBundleID:dCopy withCompletionHandler:v14];

  if (*(*(&buf + 1) + 40))
  {
    v9 = ASDLogHandleForCategory(38);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v13 = *(*(&buf + 1) + 40);
      *v23 = 138543618;
      v24 = dCopy;
      v25 = 2114;
      v26 = v13;
      _os_log_error_impl(&dword_1B8220000, v9, OS_LOG_TYPE_ERROR, "Error in getLaunchInfoForBundleID: %{public}@ - %{public}@", v23, 0x16u);
    }
  }

  v10 = v18[5];

  _Block_object_dispose(&v17, 8);
  _Block_object_dispose(&buf, 8);

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

void __50__ASDTestFlightFeedback_getLaunchInfoForBundleID___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
  v8 = a3;
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

- (id)getLaunchInfoForBundleURL:(id)l
{
  v31[2] = *MEMORY[0x1E69E9840];
  lCopy = l;
  v5 = ASDLogHandleForCategory(38);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    LODWORD(buf) = 138543362;
    *(&buf + 4) = lCopy;
    _os_log_debug_impl(&dword_1B8220000, v5, OS_LOG_TYPE_DEBUG, "getLaunchInfoForBundleURL: %{public}@", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v28 = 0x3032000000;
  v29 = __Block_byref_object_copy__2;
  v30 = __Block_byref_object_dispose__2;
  v31[0] = 0;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__2;
  v21 = __Block_byref_object_dispose__2;
  v22 = 0;
  serviceBroker = self->_serviceBroker;
  obj = 0;
  v7 = [(ASDServiceBroker *)serviceBroker getTestFlightFeedbackServiceWithError:&obj];
  objc_storeStrong(v31, obj);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __51__ASDTestFlightFeedback_getLaunchInfoForBundleURL___block_invoke;
  v15[3] = &unk_1E7CDBB80;
  v15[4] = &buf;
  v8 = [v7 synchronousRemoteObjectProxyWithErrorHandler:v15];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __51__ASDTestFlightFeedback_getLaunchInfoForBundleURL___block_invoke_2;
  v14[3] = &unk_1E7CDC050;
  v14[4] = &buf;
  v14[5] = &v17;
  [v8 getLaunchInfoForBundleURL:lCopy withCompletionHandler:v14];

  if (*(*(&buf + 1) + 40))
  {
    v9 = ASDLogHandleForCategory(38);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v13 = *(*(&buf + 1) + 40);
      *v23 = 138543618;
      v24 = lCopy;
      v25 = 2114;
      v26 = v13;
      _os_log_error_impl(&dword_1B8220000, v9, OS_LOG_TYPE_ERROR, "Error in getLaunchInfoForBundleID: %{public}@ - %{public}@", v23, 0x16u);
    }
  }

  v10 = v18[5];

  _Block_object_dispose(&v17, 8);
  _Block_object_dispose(&buf, 8);

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

void __51__ASDTestFlightFeedback_getLaunchInfoForBundleURL___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
  v8 = a3;
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

- (void)getLaunchInfoForBundleID:(id)d withCompletionHandler:(id)handler
{
  v18 = *MEMORY[0x1E69E9840];
  dCopy = d;
  handlerCopy = handler;
  v8 = ASDLogHandleForCategory(38);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138543362;
    v17 = dCopy;
    _os_log_debug_impl(&dword_1B8220000, v8, OS_LOG_TYPE_DEBUG, "getLaunchInfoForBundleID: %{public}@", buf, 0xCu);
  }

  serviceBroker = self->_serviceBroker;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __72__ASDTestFlightFeedback_getLaunchInfoForBundleID_withCompletionHandler___block_invoke;
  v13[3] = &unk_1E7CDC028;
  v14 = dCopy;
  v15 = handlerCopy;
  v10 = dCopy;
  v11 = handlerCopy;
  [(ASDServiceBroker *)serviceBroker getTestFlightFeedbackServiceWithCompletionHandler:v13];

  v12 = *MEMORY[0x1E69E9840];
}

void __72__ASDTestFlightFeedback_getLaunchInfoForBundleID_withCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __72__ASDTestFlightFeedback_getLaunchInfoForBundleID_withCompletionHandler___block_invoke_2;
    v10[3] = &unk_1E7CDB730;
    v11 = *(a1 + 40);
    v4 = [a2 remoteObjectProxyWithErrorHandler:v10];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __72__ASDTestFlightFeedback_getLaunchInfoForBundleID_withCompletionHandler___block_invoke_4;
    v8[3] = &unk_1E7CDC078;
    v5 = *(a1 + 32);
    v9 = *(a1 + 40);
    [v4 getLaunchInfoForBundleID:v5 withCompletionHandler:v8];
  }

  else
  {
    v6 = *(a1 + 40);
    v7 = *(*(a1 + 40) + 16);

    v7();
  }
}

void __72__ASDTestFlightFeedback_getLaunchInfoForBundleID_withCompletionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = dispatch_get_global_queue(21, 0);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __72__ASDTestFlightFeedback_getLaunchInfoForBundleID_withCompletionHandler___block_invoke_3;
  v7[3] = &unk_1E7CDB890;
  v5 = *(a1 + 32);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(v4, v7);
}

void __72__ASDTestFlightFeedback_getLaunchInfoForBundleID_withCompletionHandler___block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = dispatch_get_global_queue(21, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __72__ASDTestFlightFeedback_getLaunchInfoForBundleID_withCompletionHandler___block_invoke_5;
  block[3] = &unk_1E7CDBAE0;
  v8 = *(a1 + 32);
  v13 = v6;
  v14 = v8;
  v12 = v5;
  v9 = v6;
  v10 = v5;
  dispatch_async(v7, block);
}

- (void)getLaunchInfoForBundleURL:(id)l withCompletionHandler:(id)handler
{
  v18 = *MEMORY[0x1E69E9840];
  lCopy = l;
  handlerCopy = handler;
  v8 = ASDLogHandleForCategory(38);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138543362;
    v17 = lCopy;
    _os_log_debug_impl(&dword_1B8220000, v8, OS_LOG_TYPE_DEBUG, "getLaunchInfoForBundleURL: %{public}@", buf, 0xCu);
  }

  serviceBroker = self->_serviceBroker;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __73__ASDTestFlightFeedback_getLaunchInfoForBundleURL_withCompletionHandler___block_invoke;
  v13[3] = &unk_1E7CDC028;
  v14 = lCopy;
  v15 = handlerCopy;
  v10 = lCopy;
  v11 = handlerCopy;
  [(ASDServiceBroker *)serviceBroker getTestFlightFeedbackServiceWithCompletionHandler:v13];

  v12 = *MEMORY[0x1E69E9840];
}

void __73__ASDTestFlightFeedback_getLaunchInfoForBundleURL_withCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __73__ASDTestFlightFeedback_getLaunchInfoForBundleURL_withCompletionHandler___block_invoke_2;
    v10[3] = &unk_1E7CDB730;
    v11 = *(a1 + 40);
    v4 = [a2 remoteObjectProxyWithErrorHandler:v10];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __73__ASDTestFlightFeedback_getLaunchInfoForBundleURL_withCompletionHandler___block_invoke_4;
    v8[3] = &unk_1E7CDC078;
    v5 = *(a1 + 32);
    v9 = *(a1 + 40);
    [v4 getLaunchInfoForBundleURL:v5 withCompletionHandler:v8];
  }

  else
  {
    v6 = *(a1 + 40);
    v7 = *(*(a1 + 40) + 16);

    v7();
  }
}

void __73__ASDTestFlightFeedback_getLaunchInfoForBundleURL_withCompletionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = dispatch_get_global_queue(21, 0);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __73__ASDTestFlightFeedback_getLaunchInfoForBundleURL_withCompletionHandler___block_invoke_3;
  v7[3] = &unk_1E7CDB890;
  v5 = *(a1 + 32);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(v4, v7);
}

void __73__ASDTestFlightFeedback_getLaunchInfoForBundleURL_withCompletionHandler___block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = dispatch_get_global_queue(21, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __73__ASDTestFlightFeedback_getLaunchInfoForBundleURL_withCompletionHandler___block_invoke_5;
  block[3] = &unk_1E7CDBAE0;
  v8 = *(a1 + 32);
  v13 = v6;
  v14 = v8;
  v12 = v5;
  v9 = v6;
  v10 = v5;
  dispatch_async(v7, block);
}

- (id)getLaunchInfoForVersion:(id)version
{
  v31[2] = *MEMORY[0x1E69E9840];
  versionCopy = version;
  v5 = ASDLogHandleForCategory(38);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    LODWORD(buf) = 138543362;
    *(&buf + 4) = versionCopy;
    _os_log_debug_impl(&dword_1B8220000, v5, OS_LOG_TYPE_DEBUG, "getLaunchInfoForVersion %{public}@", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v28 = 0x3032000000;
  v29 = __Block_byref_object_copy__2;
  v30 = __Block_byref_object_dispose__2;
  v31[0] = 0;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__2;
  v21 = __Block_byref_object_dispose__2;
  v22 = 0;
  serviceBroker = self->_serviceBroker;
  obj = 0;
  v7 = [(ASDServiceBroker *)serviceBroker getTestFlightFeedbackServiceWithError:&obj];
  objc_storeStrong(v31, obj);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __49__ASDTestFlightFeedback_getLaunchInfoForVersion___block_invoke;
  v15[3] = &unk_1E7CDBB80;
  v15[4] = &buf;
  v8 = [v7 synchronousRemoteObjectProxyWithErrorHandler:v15];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __49__ASDTestFlightFeedback_getLaunchInfoForVersion___block_invoke_2;
  v14[3] = &unk_1E7CDC050;
  v14[4] = &buf;
  v14[5] = &v17;
  [v8 getLaunchInfoForVersion:versionCopy withCompletionHandler:v14];

  if (*(*(&buf + 1) + 40))
  {
    v9 = ASDLogHandleForCategory(38);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v13 = *(*(&buf + 1) + 40);
      *v23 = 138543618;
      v24 = versionCopy;
      v25 = 2114;
      v26 = v13;
      _os_log_error_impl(&dword_1B8220000, v9, OS_LOG_TYPE_ERROR, "Error in getLaunchInfoForVersion %{public}@: %{public}@", v23, 0x16u);
    }
  }

  v10 = v18[5];

  _Block_object_dispose(&v17, 8);
  _Block_object_dispose(&buf, 8);

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

void __49__ASDTestFlightFeedback_getLaunchInfoForVersion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
  v8 = a3;
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

- (BOOL)isFeedbackEnabledForBundleID:(id)d
{
  v29[2] = *MEMORY[0x1E69E9840];
  dCopy = d;
  v5 = ASDLogHandleForCategory(38);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    LODWORD(buf) = 138543362;
    *(&buf + 4) = dCopy;
    _os_log_debug_impl(&dword_1B8220000, v5, OS_LOG_TYPE_DEBUG, "isFeedbackEnabledForBundleID: %{public}@", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__2;
  v28 = __Block_byref_object_dispose__2;
  v29[0] = 0;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  serviceBroker = self->_serviceBroker;
  obj = 0;
  v7 = [(ASDServiceBroker *)serviceBroker getTestFlightFeedbackServiceWithError:&obj];
  objc_storeStrong(v29, obj);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __54__ASDTestFlightFeedback_isFeedbackEnabledForBundleID___block_invoke;
  v15[3] = &unk_1E7CDBB80;
  v15[4] = &buf;
  v8 = [v7 synchronousRemoteObjectProxyWithErrorHandler:v15];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __54__ASDTestFlightFeedback_isFeedbackEnabledForBundleID___block_invoke_2;
  v14[3] = &unk_1E7CDC0A0;
  v14[4] = &v17;
  [v8 isFeedbackEnabledForBundleID:dCopy withCompletionHandler:v14];

  if (*(*(&buf + 1) + 40))
  {
    v9 = ASDLogHandleForCategory(38);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v13 = *(*(&buf + 1) + 40);
      *v21 = 138543618;
      v22 = dCopy;
      v23 = 2114;
      v24 = v13;
      _os_log_error_impl(&dword_1B8220000, v9, OS_LOG_TYPE_ERROR, "Error in isFeedbackEnabledForBundleID:%{public}@ - %{public}@", v21, 0x16u);
    }

    v10 = 0;
    *(v18 + 24) = 0;
  }

  else
  {
    v10 = *(v18 + 24);
  }

  _Block_object_dispose(&v17, 8);
  _Block_object_dispose(&buf, 8);

  v11 = *MEMORY[0x1E69E9840];
  return v10 & 1;
}

- (BOOL)isFeedbackEnabledForBundleURL:(id)l
{
  v29[2] = *MEMORY[0x1E69E9840];
  lCopy = l;
  v5 = ASDLogHandleForCategory(38);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    LODWORD(buf) = 138543362;
    *(&buf + 4) = lCopy;
    _os_log_debug_impl(&dword_1B8220000, v5, OS_LOG_TYPE_DEBUG, "isFeedbackEnabledForBundleURL: %{public}@", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__2;
  v28 = __Block_byref_object_dispose__2;
  v29[0] = 0;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  serviceBroker = self->_serviceBroker;
  obj = 0;
  v7 = [(ASDServiceBroker *)serviceBroker getTestFlightFeedbackServiceWithError:&obj];
  objc_storeStrong(v29, obj);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __55__ASDTestFlightFeedback_isFeedbackEnabledForBundleURL___block_invoke;
  v15[3] = &unk_1E7CDBB80;
  v15[4] = &buf;
  v8 = [v7 synchronousRemoteObjectProxyWithErrorHandler:v15];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __55__ASDTestFlightFeedback_isFeedbackEnabledForBundleURL___block_invoke_2;
  v14[3] = &unk_1E7CDC0A0;
  v14[4] = &v17;
  [v8 isFeedbackEnabledForBundleURL:lCopy withCompletionHandler:v14];

  if (*(*(&buf + 1) + 40))
  {
    v9 = ASDLogHandleForCategory(38);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v13 = *(*(&buf + 1) + 40);
      *v21 = 138543618;
      v22 = lCopy;
      v23 = 2114;
      v24 = v13;
      _os_log_error_impl(&dword_1B8220000, v9, OS_LOG_TYPE_ERROR, "Error in isFeedbackEnabledForBundleURL:%{public}@ - %{public}@", v21, 0x16u);
    }

    v10 = 0;
    *(v18 + 24) = 0;
  }

  else
  {
    v10 = *(v18 + 24);
  }

  _Block_object_dispose(&v17, 8);
  _Block_object_dispose(&buf, 8);

  v11 = *MEMORY[0x1E69E9840];
  return v10 & 1;
}

- (BOOL)isLaunchScreenEnabledForBundleID:(id)d
{
  v29[2] = *MEMORY[0x1E69E9840];
  dCopy = d;
  v5 = ASDLogHandleForCategory(38);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    LODWORD(buf) = 138543362;
    *(&buf + 4) = dCopy;
    _os_log_debug_impl(&dword_1B8220000, v5, OS_LOG_TYPE_DEBUG, "isLaunchScreenEnabledForBundleID: %{public}@", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__2;
  v28 = __Block_byref_object_dispose__2;
  v29[0] = 0;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  serviceBroker = self->_serviceBroker;
  obj = 0;
  v7 = [(ASDServiceBroker *)serviceBroker getTestFlightFeedbackServiceWithError:&obj];
  objc_storeStrong(v29, obj);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __58__ASDTestFlightFeedback_isLaunchScreenEnabledForBundleID___block_invoke;
  v15[3] = &unk_1E7CDBB80;
  v15[4] = &buf;
  v8 = [v7 synchronousRemoteObjectProxyWithErrorHandler:v15];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __58__ASDTestFlightFeedback_isLaunchScreenEnabledForBundleID___block_invoke_2;
  v14[3] = &unk_1E7CDC0A0;
  v14[4] = &v17;
  [v8 isLaunchScreenEnabledForBundleID:dCopy withCompletionHandler:v14];

  if (*(*(&buf + 1) + 40))
  {
    v9 = ASDLogHandleForCategory(38);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v13 = *(*(&buf + 1) + 40);
      *v21 = 138543618;
      v22 = dCopy;
      v23 = 2114;
      v24 = v13;
      _os_log_error_impl(&dword_1B8220000, v9, OS_LOG_TYPE_ERROR, "Error in isLaunchScreenEnabledForBundleID:%{public}@ - %{public}@", v21, 0x16u);
    }

    v10 = 0;
    *(v18 + 24) = 0;
  }

  else
  {
    v10 = *(v18 + 24);
  }

  _Block_object_dispose(&v17, 8);
  _Block_object_dispose(&buf, 8);

  v11 = *MEMORY[0x1E69E9840];
  return v10 & 1;
}

- (BOOL)isLaunchScreenEnabledForBundleURL:(id)l
{
  v29[2] = *MEMORY[0x1E69E9840];
  lCopy = l;
  v5 = ASDLogHandleForCategory(38);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    LODWORD(buf) = 138543362;
    *(&buf + 4) = lCopy;
    _os_log_debug_impl(&dword_1B8220000, v5, OS_LOG_TYPE_DEBUG, "isLaunchScreenEnabledForBundleURL: %{public}@", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__2;
  v28 = __Block_byref_object_dispose__2;
  v29[0] = 0;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  serviceBroker = self->_serviceBroker;
  obj = 0;
  v7 = [(ASDServiceBroker *)serviceBroker getTestFlightFeedbackServiceWithError:&obj];
  objc_storeStrong(v29, obj);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __59__ASDTestFlightFeedback_isLaunchScreenEnabledForBundleURL___block_invoke;
  v15[3] = &unk_1E7CDBB80;
  v15[4] = &buf;
  v8 = [v7 synchronousRemoteObjectProxyWithErrorHandler:v15];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __59__ASDTestFlightFeedback_isLaunchScreenEnabledForBundleURL___block_invoke_2;
  v14[3] = &unk_1E7CDC0A0;
  v14[4] = &v17;
  [v8 isLaunchScreenEnabledForBundleURL:lCopy withCompletionHandler:v14];

  if (*(*(&buf + 1) + 40))
  {
    v9 = ASDLogHandleForCategory(38);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v13 = *(*(&buf + 1) + 40);
      *v21 = 138543618;
      v22 = lCopy;
      v23 = 2114;
      v24 = v13;
      _os_log_error_impl(&dword_1B8220000, v9, OS_LOG_TYPE_ERROR, "Error in isLaunchScreenEnabledForBundleURL:%{public}@ - %{public}@", v21, 0x16u);
    }

    v10 = 0;
    *(v18 + 24) = 0;
  }

  else
  {
    v10 = *(v18 + 24);
  }

  _Block_object_dispose(&v17, 8);
  _Block_object_dispose(&buf, 8);

  v11 = *MEMORY[0x1E69E9840];
  return v10 & 1;
}

- (void)setFeedbackEnabled:(BOOL)enabled forVersion:(id)version withCompletionHandler:(id)handler
{
  v21 = *MEMORY[0x1E69E9840];
  versionCopy = version;
  handlerCopy = handler;
  v10 = ASDLogHandleForCategory(38);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138543362;
    v20 = versionCopy;
    _os_log_debug_impl(&dword_1B8220000, v10, OS_LOG_TYPE_DEBUG, "setFeedbackEnabled:forVersion: %{public}@", buf, 0xCu);
  }

  serviceBroker = self->_serviceBroker;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __77__ASDTestFlightFeedback_setFeedbackEnabled_forVersion_withCompletionHandler___block_invoke;
  v15[3] = &unk_1E7CDC0C8;
  enabledCopy = enabled;
  v16 = versionCopy;
  v17 = handlerCopy;
  v12 = versionCopy;
  v13 = handlerCopy;
  [(ASDServiceBroker *)serviceBroker getTestFlightFeedbackServiceWithCompletionHandler:v15];

  v14 = *MEMORY[0x1E69E9840];
}

void __77__ASDTestFlightFeedback_setFeedbackEnabled_forVersion_withCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __77__ASDTestFlightFeedback_setFeedbackEnabled_forVersion_withCompletionHandler___block_invoke_2;
    v11[3] = &unk_1E7CDB730;
    v12 = *(a1 + 40);
    v4 = [a2 remoteObjectProxyWithErrorHandler:v11];
    v5 = *(a1 + 48);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __77__ASDTestFlightFeedback_setFeedbackEnabled_forVersion_withCompletionHandler___block_invoke_4;
    v9[3] = &unk_1E7CDB730;
    v6 = *(a1 + 32);
    v10 = *(a1 + 40);
    [v4 setFeedbackEnabled:v5 forVersion:v6 withCompletionHandler:v9];
  }

  else
  {
    v7 = *(a1 + 40);
    v8 = *(*(a1 + 40) + 16);

    v8();
  }
}

void __77__ASDTestFlightFeedback_setFeedbackEnabled_forVersion_withCompletionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = dispatch_get_global_queue(21, 0);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __77__ASDTestFlightFeedback_setFeedbackEnabled_forVersion_withCompletionHandler___block_invoke_3;
  v7[3] = &unk_1E7CDB890;
  v5 = *(a1 + 32);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(v4, v7);
}

void __77__ASDTestFlightFeedback_setFeedbackEnabled_forVersion_withCompletionHandler___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = dispatch_get_global_queue(21, 0);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __77__ASDTestFlightFeedback_setFeedbackEnabled_forVersion_withCompletionHandler___block_invoke_5;
  v7[3] = &unk_1E7CDB890;
  v5 = *(a1 + 32);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(v4, v7);
}

- (void)setLaunchScreenEnabled:(BOOL)enabled forVersion:(id)version withCompletionHandler:(id)handler
{
  v21 = *MEMORY[0x1E69E9840];
  versionCopy = version;
  handlerCopy = handler;
  v10 = ASDLogHandleForCategory(38);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138543362;
    v20 = versionCopy;
    _os_log_debug_impl(&dword_1B8220000, v10, OS_LOG_TYPE_DEBUG, "setLaunchScreenEnabled:forVersion: %{public}@", buf, 0xCu);
  }

  serviceBroker = self->_serviceBroker;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __81__ASDTestFlightFeedback_setLaunchScreenEnabled_forVersion_withCompletionHandler___block_invoke;
  v15[3] = &unk_1E7CDC0C8;
  enabledCopy = enabled;
  v16 = versionCopy;
  v17 = handlerCopy;
  v12 = versionCopy;
  v13 = handlerCopy;
  [(ASDServiceBroker *)serviceBroker getTestFlightFeedbackServiceWithCompletionHandler:v15];

  v14 = *MEMORY[0x1E69E9840];
}

void __81__ASDTestFlightFeedback_setLaunchScreenEnabled_forVersion_withCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __81__ASDTestFlightFeedback_setLaunchScreenEnabled_forVersion_withCompletionHandler___block_invoke_2;
    v11[3] = &unk_1E7CDB730;
    v12 = *(a1 + 40);
    v4 = [a2 remoteObjectProxyWithErrorHandler:v11];
    v5 = *(a1 + 48);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __81__ASDTestFlightFeedback_setLaunchScreenEnabled_forVersion_withCompletionHandler___block_invoke_4;
    v9[3] = &unk_1E7CDB730;
    v6 = *(a1 + 32);
    v10 = *(a1 + 40);
    [v4 setLaunchScreenEnabled:v5 forVersion:v6 withCompletionHandler:v9];
  }

  else
  {
    v7 = *(a1 + 40);
    v8 = *(*(a1 + 40) + 16);

    v8();
  }
}

void __81__ASDTestFlightFeedback_setLaunchScreenEnabled_forVersion_withCompletionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = dispatch_get_global_queue(21, 0);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __81__ASDTestFlightFeedback_setLaunchScreenEnabled_forVersion_withCompletionHandler___block_invoke_3;
  v7[3] = &unk_1E7CDB890;
  v5 = *(a1 + 32);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(v4, v7);
}

void __81__ASDTestFlightFeedback_setLaunchScreenEnabled_forVersion_withCompletionHandler___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = dispatch_get_global_queue(21, 0);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __81__ASDTestFlightFeedback_setLaunchScreenEnabled_forVersion_withCompletionHandler___block_invoke_5;
  v7[3] = &unk_1E7CDB890;
  v5 = *(a1 + 32);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(v4, v7);
}

- (void)setLaunchInfo:(id)info withCompletionHandler:(id)handler
{
  v19 = *MEMORY[0x1E69E9840];
  infoCopy = info;
  handlerCopy = handler;
  v8 = ASDLogHandleForCategory(38);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    version = [infoCopy version];
    *buf = 138543362;
    v18 = version;
    _os_log_debug_impl(&dword_1B8220000, v8, OS_LOG_TYPE_DEBUG, "setLaunchInfo: %{public}@", buf, 0xCu);
  }

  serviceBroker = self->_serviceBroker;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __61__ASDTestFlightFeedback_setLaunchInfo_withCompletionHandler___block_invoke;
  v14[3] = &unk_1E7CDC028;
  v15 = infoCopy;
  v16 = handlerCopy;
  v10 = infoCopy;
  v11 = handlerCopy;
  [(ASDServiceBroker *)serviceBroker getTestFlightFeedbackServiceWithCompletionHandler:v14];

  v12 = *MEMORY[0x1E69E9840];
}

void __61__ASDTestFlightFeedback_setLaunchInfo_withCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __61__ASDTestFlightFeedback_setLaunchInfo_withCompletionHandler___block_invoke_2;
    v10[3] = &unk_1E7CDB730;
    v11 = *(a1 + 40);
    v4 = [a2 remoteObjectProxyWithErrorHandler:v10];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __61__ASDTestFlightFeedback_setLaunchInfo_withCompletionHandler___block_invoke_4;
    v8[3] = &unk_1E7CDB730;
    v5 = *(a1 + 32);
    v9 = *(a1 + 40);
    [v4 setLaunchInfo:v5 withCompletionHandler:v8];
  }

  else
  {
    v6 = *(a1 + 40);
    v7 = *(*(a1 + 40) + 16);

    v7();
  }
}

void __61__ASDTestFlightFeedback_setLaunchInfo_withCompletionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = dispatch_get_global_queue(21, 0);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __61__ASDTestFlightFeedback_setLaunchInfo_withCompletionHandler___block_invoke_3;
  v7[3] = &unk_1E7CDB890;
  v5 = *(a1 + 32);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(v4, v7);
}

void __61__ASDTestFlightFeedback_setLaunchInfo_withCompletionHandler___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = dispatch_get_global_queue(21, 0);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __61__ASDTestFlightFeedback_setLaunchInfo_withCompletionHandler___block_invoke_5;
  v7[3] = &unk_1E7CDB890;
  v5 = *(a1 + 32);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(v4, v7);
}

- (void)submitFeedback:(id)feedback withCompletionHandler:(id)handler
{
  v19 = *MEMORY[0x1E69E9840];
  feedbackCopy = feedback;
  handlerCopy = handler;
  v8 = ASDLogHandleForCategory(38);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    bundleID = [feedbackCopy bundleID];
    *buf = 138543362;
    v18 = bundleID;
    _os_log_debug_impl(&dword_1B8220000, v8, OS_LOG_TYPE_DEBUG, "submitFeedback: %{public}@", buf, 0xCu);
  }

  serviceBroker = self->_serviceBroker;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __62__ASDTestFlightFeedback_submitFeedback_withCompletionHandler___block_invoke;
  v14[3] = &unk_1E7CDC028;
  v15 = feedbackCopy;
  v16 = handlerCopy;
  v10 = feedbackCopy;
  v11 = handlerCopy;
  [(ASDServiceBroker *)serviceBroker getTestFlightFeedbackServiceWithCompletionHandler:v14];

  v12 = *MEMORY[0x1E69E9840];
}

void __62__ASDTestFlightFeedback_submitFeedback_withCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __62__ASDTestFlightFeedback_submitFeedback_withCompletionHandler___block_invoke_2;
    v10[3] = &unk_1E7CDB730;
    v11 = *(a1 + 40);
    v4 = [a2 remoteObjectProxyWithErrorHandler:v10];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __62__ASDTestFlightFeedback_submitFeedback_withCompletionHandler___block_invoke_4;
    v8[3] = &unk_1E7CDB730;
    v5 = *(a1 + 32);
    v9 = *(a1 + 40);
    [v4 submitFeedback:v5 withCompletionHandler:v8];
  }

  else
  {
    v6 = *(a1 + 40);
    v7 = *(*(a1 + 40) + 16);

    v7();
  }
}

void __62__ASDTestFlightFeedback_submitFeedback_withCompletionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = dispatch_get_global_queue(21, 0);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __62__ASDTestFlightFeedback_submitFeedback_withCompletionHandler___block_invoke_3;
  v7[3] = &unk_1E7CDB890;
  v5 = *(a1 + 32);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(v4, v7);
}

void __62__ASDTestFlightFeedback_submitFeedback_withCompletionHandler___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = dispatch_get_global_queue(21, 0);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __62__ASDTestFlightFeedback_submitFeedback_withCompletionHandler___block_invoke_5;
  v7[3] = &unk_1E7CDB890;
  v5 = *(a1 + 32);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(v4, v7);
}

- (void)submitFeedback:(id)feedback bundleURL:(id)l withCompletionHandler:(id)handler
{
  v23 = *MEMORY[0x1E69E9840];
  feedbackCopy = feedback;
  lCopy = l;
  handlerCopy = handler;
  v11 = ASDLogHandleForCategory(38);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138543362;
    v22 = lCopy;
    _os_log_debug_impl(&dword_1B8220000, v11, OS_LOG_TYPE_DEBUG, "submitFeedback:bundleURL: %{public}@", buf, 0xCu);
  }

  serviceBroker = self->_serviceBroker;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __72__ASDTestFlightFeedback_submitFeedback_bundleURL_withCompletionHandler___block_invoke;
  v17[3] = &unk_1E7CDC0F0;
  v19 = lCopy;
  v20 = handlerCopy;
  v18 = feedbackCopy;
  v13 = lCopy;
  v14 = feedbackCopy;
  v15 = handlerCopy;
  [(ASDServiceBroker *)serviceBroker getTestFlightFeedbackServiceWithCompletionHandler:v17];

  v16 = *MEMORY[0x1E69E9840];
}

void __72__ASDTestFlightFeedback_submitFeedback_bundleURL_withCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __72__ASDTestFlightFeedback_submitFeedback_bundleURL_withCompletionHandler___block_invoke_2;
    v11[3] = &unk_1E7CDB730;
    v12 = *(a1 + 48);
    v4 = [a2 remoteObjectProxyWithErrorHandler:v11];
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __72__ASDTestFlightFeedback_submitFeedback_bundleURL_withCompletionHandler___block_invoke_4;
    v9[3] = &unk_1E7CDB730;
    v10 = *(a1 + 48);
    [v4 submitFeedback:v5 bundleURL:v6 withCompletionHandler:v9];
  }

  else
  {
    v7 = *(a1 + 48);
    v8 = *(*(a1 + 48) + 16);

    v8();
  }
}

void __72__ASDTestFlightFeedback_submitFeedback_bundleURL_withCompletionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = dispatch_get_global_queue(21, 0);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __72__ASDTestFlightFeedback_submitFeedback_bundleURL_withCompletionHandler___block_invoke_3;
  v7[3] = &unk_1E7CDB890;
  v5 = *(a1 + 32);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(v4, v7);
}

void __72__ASDTestFlightFeedback_submitFeedback_bundleURL_withCompletionHandler___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = dispatch_get_global_queue(21, 0);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __72__ASDTestFlightFeedback_submitFeedback_bundleURL_withCompletionHandler___block_invoke_5;
  v7[3] = &unk_1E7CDB890;
  v5 = *(a1 + 32);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(v4, v7);
}

- (void)updateTestNotes:(id)notes forVersion:(id)version withCompletionHandler:(id)handler
{
  v23 = *MEMORY[0x1E69E9840];
  notesCopy = notes;
  versionCopy = version;
  handlerCopy = handler;
  v11 = ASDLogHandleForCategory(38);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138543362;
    v22 = versionCopy;
    _os_log_debug_impl(&dword_1B8220000, v11, OS_LOG_TYPE_DEBUG, "updateTestNotes:forVersion: %{public}@", buf, 0xCu);
  }

  serviceBroker = self->_serviceBroker;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __74__ASDTestFlightFeedback_updateTestNotes_forVersion_withCompletionHandler___block_invoke;
  v17[3] = &unk_1E7CDC0F0;
  v19 = versionCopy;
  v20 = handlerCopy;
  v18 = notesCopy;
  v13 = versionCopy;
  v14 = notesCopy;
  v15 = handlerCopy;
  [(ASDServiceBroker *)serviceBroker getTestFlightFeedbackServiceWithCompletionHandler:v17];

  v16 = *MEMORY[0x1E69E9840];
}

void __74__ASDTestFlightFeedback_updateTestNotes_forVersion_withCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __74__ASDTestFlightFeedback_updateTestNotes_forVersion_withCompletionHandler___block_invoke_2;
    v11[3] = &unk_1E7CDB730;
    v12 = *(a1 + 48);
    v4 = [a2 remoteObjectProxyWithErrorHandler:v11];
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __74__ASDTestFlightFeedback_updateTestNotes_forVersion_withCompletionHandler___block_invoke_4;
    v9[3] = &unk_1E7CDB730;
    v10 = *(a1 + 48);
    [v4 updateTestNotes:v5 forVersion:v6 withCompletionHandler:v9];
  }

  else
  {
    v7 = *(a1 + 48);
    v8 = *(*(a1 + 48) + 16);

    v8();
  }
}

void __74__ASDTestFlightFeedback_updateTestNotes_forVersion_withCompletionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = dispatch_get_global_queue(21, 0);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __74__ASDTestFlightFeedback_updateTestNotes_forVersion_withCompletionHandler___block_invoke_3;
  v7[3] = &unk_1E7CDB890;
  v5 = *(a1 + 32);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(v4, v7);
}

void __74__ASDTestFlightFeedback_updateTestNotes_forVersion_withCompletionHandler___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = dispatch_get_global_queue(21, 0);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __74__ASDTestFlightFeedback_updateTestNotes_forVersion_withCompletionHandler___block_invoke_5;
  v7[3] = &unk_1E7CDB890;
  v5 = *(a1 + 32);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(v4, v7);
}

@end