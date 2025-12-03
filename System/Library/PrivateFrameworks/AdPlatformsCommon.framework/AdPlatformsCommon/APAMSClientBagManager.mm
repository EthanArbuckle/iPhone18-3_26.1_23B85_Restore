@interface APAMSClientBagManager
+ (BOOL)isSubsequentAdsFetchDisabled;
+ (NSString)bagSubProfile;
+ (NSString)bagSubProfileVersion;
+ (id)adprivacydBag;
+ (void)isDisabledAdsPrefetch:(id)prefetch withCompletionHandler:(id)handler;
+ (void)isSubsequentAdsFetchDisabled:(id)disabled withCompletionHandler:(id)handler;
@end

@implementation APAMSClientBagManager

+ (NSString)bagSubProfile
{
  if (qword_1EDD509F0 != -1)
  {
    sub_1BB014220();
  }

  v3 = qword_1EDD509F8;

  return v3;
}

+ (NSString)bagSubProfileVersion
{
  if (qword_1EDD509E0 != -1)
  {
    sub_1BB014234();
  }

  v3 = qword_1EDD509E8;

  return v3;
}

+ (id)adprivacydBag
{
  v7 = MEMORY[0x1E698C7D8];
  v8 = objc_msgSend_bagSubProfile(APAMSClientBagManager, a2, v2, v3, v4, v5, v6);
  v15 = objc_msgSend_bagSubProfileVersion(APAMSClientBagManager, v9, v10, v11, v12, v13, v14);
  v20 = objc_msgSend_bagForProfile_profileVersion_(v7, v16, v8, v15, v17, v18, v19);

  return v20;
}

+ (BOOL)isSubsequentAdsFetchDisabled
{
  v51 = *MEMORY[0x1E69E9840];
  v8 = objc_msgSend_adprivacydBag(self, a2, v2, v3, v4, v5, v6);
  v9 = dispatch_semaphore_create(0);
  v45 = 0;
  v46 = &v45;
  v47 = 0x2020000000;
  v48 = 0;
  v14 = objc_msgSend_BOOLForKey_(v8, v10, @"disablePromotedContentDaemonSubsequentAdsFetch", v11, v12, COERCE_DOUBLE(0x2020000000), v13);
  v21 = objc_msgSend_valuePromise(v14, v15, v16, v17, v18, v19, v20);

  v41[0] = MEMORY[0x1E69E9820];
  v41[1] = 3221225472;
  v41[2] = sub_1BAFD3884;
  v41[3] = &unk_1E7F20EB8;
  v43 = &v45;
  selfCopy = self;
  v22 = v9;
  v42 = v22;
  objc_msgSend_addFinishBlock_(v21, v23, v41, v24, v25, v26, v27);
  v28 = dispatch_time(0, 10000000000);
  if (dispatch_semaphore_wait(v22, v28))
  {
    v29 = APLogForCategory();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      v30 = objc_opt_class();
      *buf = 138477827;
      v50 = v30;
      v31 = v30;
      _os_log_impl(&dword_1BAFC4000, v29, OS_LOG_TYPE_ERROR, "%{private}@: Failed to get the 'disablePromotedContentDaemonSubsequentAdsFetch' key from the bag in time.", buf, 0xCu);
    }

    v37 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v32, @"Failed to get the 'disablePromotedContentDaemonSubsequentAdsFetch' key from the bag in time.", v33, v34, v35, v36);
    CreateDiagnosticReport();
  }

  v38 = *(v46 + 24);

  _Block_object_dispose(&v45, 8);
  v39 = *MEMORY[0x1E69E9840];
  return v38 & 1;
}

+ (void)isSubsequentAdsFetchDisabled:(id)disabled withCompletionHandler:(id)handler
{
  disabledCopy = disabled;
  handlerCopy = handler;
  if (!disabledCopy)
  {
    disabledCopy = objc_msgSend_adprivacydBag(self, v7, v8, v9, v10, v12, v13);
  }

  v14 = objc_msgSend_BOOLForKey_(disabledCopy, v7, @"disablePromotedContentDaemonSubsequentAdsFetch", v9, v10, v12, v13);
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = sub_1BAFD3A68;
  v21[3] = &unk_1E7F20EE0;
  v22 = handlerCopy;
  selfCopy = self;
  v15 = handlerCopy;
  objc_msgSend_valueWithCompletion_(v14, v16, v21, v17, v18, v19, v20);
}

+ (void)isDisabledAdsPrefetch:(id)prefetch withCompletionHandler:(id)handler
{
  prefetchCopy = prefetch;
  handlerCopy = handler;
  if (!prefetchCopy)
  {
    prefetchCopy = objc_msgSend_adprivacydBag(self, v7, v8, v9, v10, v12, v13);
  }

  v14 = objc_msgSend_BOOLForKey_(prefetchCopy, v7, @"disableAdsPreFetch7006", v9, v10, v12, v13);
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = sub_1BAFD3C58;
  v21[3] = &unk_1E7F20F08;
  v22 = handlerCopy;
  v15 = handlerCopy;
  objc_msgSend_valueWithCompletion_(v14, v16, v21, v17, v18, v19, v20);
}

@end