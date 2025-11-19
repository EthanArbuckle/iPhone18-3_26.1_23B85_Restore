@interface CNPropertyIDSRequest
+ (id)sharedWorkQueue;
- (BOOL)cancelled;
- (CNPropertyIDSRequest)initWithPropertyItems:(id)a3 service:(id)a4 postToMainQueue:(BOOL)a5 resultBlock:(id)a6;
- (void)_requestStatusOnMainQueue:(BOOL)a3;
- (void)cancel;
- (void)cleanupDelegate;
- (void)idStatusUpdatedForDestinations:(id)a3 service:(id)a4;
@end

@implementation CNPropertyIDSRequest

- (void)_requestStatusOnMainQueue:(BOOL)a3
{
  v73 = *MEMORY[0x1E69E9840];
  v54 = [MEMORY[0x1E695DF90] dictionary];
  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  v3 = [(CNPropertyIDSRequest *)self propertyItems];
  v4 = [v3 countByEnumeratingWithState:&v59 objects:v72 count:16];
  if (v4)
  {
    v5 = *v60;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v60 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v59 + 1) + 8 * i);
        v8 = [v7 labeledValue];
        v9 = [v8 value];

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v10 = v9;
          v11 = [v10 digits];
          v12 = [v10 countryCode];
          v13 = v11;
          v14 = v12;
          v68 = 0;
          v69 = &v68;
          v70 = 0x2020000000;
          v15 = getIDSCopyIDForPhoneNumberWithOptionsSymbolLoc_ptr;
          v71 = getIDSCopyIDForPhoneNumberWithOptionsSymbolLoc_ptr;
          if (!getIDSCopyIDForPhoneNumberWithOptionsSymbolLoc_ptr)
          {
            location = MEMORY[0x1E69E9820];
            v64 = 3221225472;
            v65 = __getIDSCopyIDForPhoneNumberWithOptionsSymbolLoc_block_invoke;
            v66 = &unk_1E74E7518;
            v67 = &v68;
            v16 = IDSLibrary_23061();
            v17 = dlsym(v16, "IDSCopyIDForPhoneNumberWithOptions");
            *(v67[1] + 24) = v17;
            getIDSCopyIDForPhoneNumberWithOptionsSymbolLoc_ptr = *(v67[1] + 24);
            v15 = v69[3];
          }

          _Block_object_dispose(&v68, 8);
          if (!v15)
          {
            v47 = [MEMORY[0x1E696AAA8] currentHandler];
            v48 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"NSString *CNUISoftLinkIDSCopyIDForPhoneNumberWithOptions(NSString *__strong, NSString *__strong, BOOL)"}];
            [v47 handleFailureInFunction:v48 file:@"CNUIIDS_SoftLink.h" lineNumber:30 description:{@"%s", dlerror()}];

            while (1)
            {
              __break(1u);
LABEL_28:
              v49 = [MEMORY[0x1E696AAA8] currentHandler];
              v50 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *CNUISoftLinkIDSCopyIDForEmailAddress(NSString *__strong)"];
              [v49 handleFailureInFunction:v50 file:@"CNUIIDS_SoftLink.h" lineNumber:34 description:{@"%s", dlerror()}];
            }
          }

          v18 = v15(v13, v14, 1);
        }

        else
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0 || ![v9 _appearsToBeEmail])
          {
            goto LABEL_19;
          }

          v19 = v9;
          v68 = 0;
          v69 = &v68;
          v70 = 0x2020000000;
          v20 = getIDSCopyIDForEmailAddressSymbolLoc_ptr;
          v71 = getIDSCopyIDForEmailAddressSymbolLoc_ptr;
          if (!getIDSCopyIDForEmailAddressSymbolLoc_ptr)
          {
            location = MEMORY[0x1E69E9820];
            v64 = 3221225472;
            v65 = __getIDSCopyIDForEmailAddressSymbolLoc_block_invoke;
            v66 = &unk_1E74E7518;
            v67 = &v68;
            v21 = IDSLibrary_23061();
            v22 = dlsym(v21, "IDSCopyIDForEmailAddress");
            *(v67[1] + 24) = v22;
            getIDSCopyIDForEmailAddressSymbolLoc_ptr = *(v67[1] + 24);
            v20 = v69[3];
          }

          _Block_object_dispose(&v68, 8);
          if (!v20)
          {
            goto LABEL_28;
          }

          v18 = v20(v19);
        }

        if (v18)
        {
          [v54 setObject:v7 forKeyedSubscript:v18];
        }

LABEL_19:
      }

      v4 = [v3 countByEnumeratingWithState:&v59 objects:v72 count:16];
    }

    while (v4);
  }

  if ([v54 count])
  {
    v23 = [v54 allKeys];
    v24 = [v23 componentsJoinedByString:{@", "}];
    _CNUILog("/Library/Caches/com.apple.xbs/Sources/ContactsUI/Framework/CNPropertyIDSRequest.m", 126, 6, @"Querying IDS for handles: [%@]", v25, v26, v27, v28, v24);

    objc_initWeak(&location, self);
    v55[0] = MEMORY[0x1E69E9820];
    v55[1] = 3221225472;
    v55[2] = __50__CNPropertyIDSRequest__requestStatusOnMainQueue___block_invoke;
    v55[3] = &unk_1E74E32B8;
    objc_copyWeak(&v57, &location);
    v29 = v54;
    v56 = v29;
    v58 = a3;
    [(CNPropertyIDSRequest *)self setIdQueryResultHandler:v55];
    v30 = [v29 allKeys];
    v31 = [v30 componentsJoinedByString:{@", "}];
    _CNUILog("/Library/Caches/com.apple.xbs/Sources/ContactsUI/Framework/CNPropertyIDSRequest.m", 193, 6, @"Querying IDS for handles: [%@]", v32, v33, v34, v35, v31);

    v36 = [getIDSIDQueryControllerClass_23071() sharedInstance];
    v37 = [v29 allKeys];
    v38 = [(CNPropertyIDSRequest *)self service];
    v39 = [(CNPropertyIDSRequest *)self listenerID];
    v40 = [objc_opt_class() sharedWorkQueue];
    v41 = [(CNPropertyIDSRequest *)self idQueryResultHandler];
    v42 = [v36 refreshIDStatusForDestinations:v37 service:v38 listenerID:v39 queue:v40 completionBlock:v41];

    if ((v42 & 1) == 0)
    {
      _CNUILog("/Library/Caches/com.apple.xbs/Sources/ContactsUI/Framework/CNPropertyIDSRequest.m", 202, 6, @"Failed to query IDS for handles", v43, v44, v45, v46, v51);
    }

    objc_destroyWeak(&v57);
    objc_destroyWeak(&location);
  }
}

void __50__CNPropertyIDSRequest__requestStatusOnMainQueue___block_invoke(uint64_t a1, void *a2)
{
  v50 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (([WeakRetained cancelled] & 1) == 0)
  {
    v5 = [v3 count];
    _CNUILog("/Library/Caches/com.apple.xbs/Sources/ContactsUI/Framework/CNPropertyIDSRequest.m", 132, 6, @"Received %u IDS responses", v6, v7, v8, v9, v5);
    v40 = [MEMORY[0x1E695DF70] array];
    v39 = [MEMORY[0x1E695DF70] array];
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    obj = [v3 allKeys];
    v10 = [obj countByEnumeratingWithState:&v45 objects:v49 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v46;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v46 != v12)
          {
            objc_enumerationMutation(obj);
          }

          v14 = *(*(&v45 + 1) + 8 * i);
          v15 = [*(a1 + 32) objectForKeyedSubscript:v14];
          v16 = [WeakRetained propertyItems];
          v17 = [v16 containsObject:v15];

          if (v17)
          {
            v18 = [v3 objectForKeyedSubscript:v14];
            v19 = [v18 integerValue];

            if (v19 == 1)
            {
              v20 = [WeakRetained service];
              _CNUILog("/Library/Caches/com.apple.xbs/Sources/ContactsUI/Framework/CNPropertyIDSRequest.m", 142, 6, @"%@: IDS %@ valid", v21, v22, v23, v24, v20);

              [v40 addObject:v15];
            }

            else
            {
              v25 = WeakRetained;
              v26 = a1;
              v27 = v3;
              v28 = [v3 objectForKeyedSubscript:v14];
              v29 = [v28 integerValue];

              v30 = v25;
              v31 = [v25 service];
              v36 = v31;
              if (v29 == 2)
              {
                _CNUILog("/Library/Caches/com.apple.xbs/Sources/ContactsUI/Framework/CNPropertyIDSRequest.m", 145, 6, @"%@: IDS %@ invalid", v32, v33, v34, v35, v31);

                [v39 addObject:v15];
              }

              else
              {
                _CNUILog("/Library/Caches/com.apple.xbs/Sources/ContactsUI/Framework/CNPropertyIDSRequest.m", 148, 6, @"%@: IDS %@ unknown", v32, v33, v34, v35, v31);
              }

              v3 = v27;
              a1 = v26;
              WeakRetained = v30;
            }
          }
        }

        v11 = [obj countByEnumeratingWithState:&v45 objects:v49 count:16];
      }

      while (v11);
    }

    if ([v40 count] || objc_msgSend(v39, "count"))
    {
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __50__CNPropertyIDSRequest__requestStatusOnMainQueue___block_invoke_2;
      aBlock[3] = &unk_1E74E6EE8;
      aBlock[4] = WeakRetained;
      v43 = v40;
      v44 = v39;
      v37 = _Block_copy(aBlock);
      v38 = v37;
      if (*(a1 + 48) == 1)
      {
        dispatch_async(MEMORY[0x1E69E96A0], v37);
      }

      else
      {
        v37[2](v37);
      }
    }
  }

  [WeakRetained cleanupDelegate];
}

uint64_t __50__CNPropertyIDSRequest__requestStatusOnMainQueue___block_invoke_2(uint64_t a1)
{
  v3 = [*(a1 + 32) requestResultBlock];
  if (([*(a1 + 32) cancelled] & 1) == 0 && v3)
  {
    (*(v3 + 16))(v3, *(a1 + 40), *(a1 + 48));
  }

  return MEMORY[0x1EEE66C30]();
}

- (void)idStatusUpdatedForDestinations:(id)a3 service:(id)a4
{
  v11 = a3;
  v6 = a4;
  v7 = [(CNPropertyIDSRequest *)self service];
  v8 = [v6 isEqualToString:v7];

  if (v8)
  {
    v9 = [(CNPropertyIDSRequest *)self idQueryResultHandler];
    v10 = v9;
    if (v9)
    {
      (*(v9 + 16))(v9, v11);
    }
  }
}

- (BOOL)cancelled
{
  v2 = [(CNPropertyIDSRequest *)self requestResultBlock];
  v3 = v2 == 0;

  return v3;
}

- (void)cancel
{
  v3 = [objc_opt_class() sharedWorkQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __30__CNPropertyIDSRequest_cancel__block_invoke;
  block[3] = &unk_1E74E6A88;
  block[4] = self;
  dispatch_async(v3, block);

  [(CNPropertyIDSRequest *)self setRequestResultBlock:0];
  [(CNPropertyIDSRequest *)self setIdQueryResultHandler:0];
}

- (void)cleanupDelegate
{
  v5 = [getIDSIDQueryControllerClass_23071() sharedInstance];
  v3 = [(CNPropertyIDSRequest *)self service];
  v4 = [(CNPropertyIDSRequest *)self listenerID];
  [v5 removeDelegate:self forService:v3 listenerID:v4];
}

- (CNPropertyIDSRequest)initWithPropertyItems:(id)a3 service:(id)a4 postToMainQueue:(BOOL)a5 resultBlock:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v21.receiver = self;
  v21.super_class = CNPropertyIDSRequest;
  v13 = [(CNPropertyIDSRequest *)&v21 init];
  v14 = v13;
  if (v13)
  {
    [(CNPropertyIDSRequest *)v13 setPropertyItems:v10];
    v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"CNPropertyIDSRequestListenerID_%lx", v14];
    [(CNPropertyIDSRequest *)v14 setListenerID:v15];

    [(CNPropertyIDSRequest *)v14 setService:v11];
    [(CNPropertyIDSRequest *)v14 setRequestResultBlock:v12];
    v16 = [objc_opt_class() sharedWorkQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __82__CNPropertyIDSRequest_initWithPropertyItems_service_postToMainQueue_resultBlock___block_invoke;
    block[3] = &unk_1E74E4768;
    v19 = v14;
    v20 = a5;
    dispatch_async(v16, block);
  }

  return v14;
}

void __82__CNPropertyIDSRequest_initWithPropertyItems_service_postToMainQueue_resultBlock___block_invoke(uint64_t a1)
{
  v6 = [getIDSIDQueryControllerClass_23071() sharedInstance];
  v2 = *(a1 + 32);
  v3 = [v2 service];
  v4 = [*(a1 + 32) listenerID];
  v5 = [objc_opt_class() sharedWorkQueue];
  [v6 addDelegate:v2 forService:v3 listenerID:v4 queue:v5];

  [*(a1 + 32) _requestStatusOnMainQueue:*(a1 + 40)];
}

+ (id)sharedWorkQueue
{
  if (sharedWorkQueue_onceToken != -1)
  {
    dispatch_once(&sharedWorkQueue_onceToken, &__block_literal_global_23118);
  }

  v3 = sharedWorkQueue_sharedQueue;

  return v3;
}

void __39__CNPropertyIDSRequest_sharedWorkQueue__block_invoke()
{
  v2 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_DEFAULT, 0);
  v0 = dispatch_queue_create("com.apple.contacts.ContactsUI.CNPropertyIDSRequest.workQueue", v2);
  v1 = sharedWorkQueue_sharedQueue;
  sharedWorkQueue_sharedQueue = v0;
}

@end