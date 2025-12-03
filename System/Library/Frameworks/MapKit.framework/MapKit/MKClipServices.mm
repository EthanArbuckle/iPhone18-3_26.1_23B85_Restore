@interface MKClipServices
+ (id)sharedInstance;
- (MKClipServices)init;
- (void)_validateAppClipBasedQuickLinks:(id)links completion:(id)completion;
- (void)appClipWithQuickLink:(id)link completion:(id)completion;
- (void)appClipsFromQuickLinks:(id)links completion:(id)completion;
- (void)quickLinksCopyByRemovingNonAvailableAppClipLinks:(id)links completion:(id)completion;
- (void)requestAppClip:(id)clip completion:(id)completion;
@end

@implementation MKClipServices

- (void)requestAppClip:(id)clip completion:(id)completion
{
  completionCopy = completion;
  clipCopy = clip;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2050000000;
  v7 = getCPSClipRequestClass_softClass;
  v16 = getCPSClipRequestClass_softClass;
  if (!getCPSClipRequestClass_softClass)
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __getCPSClipRequestClass_block_invoke;
    v12[3] = &unk_1E76CD7B0;
    v12[4] = &v13;
    __getCPSClipRequestClass_block_invoke(v12);
    v7 = v14[3];
  }

  v8 = v7;
  _Block_object_dispose(&v13, 8);
  v9 = [v8 alloc];
  appClipURL = [clipCopy appClipURL];

  v11 = [v9 initWithURL:appClipURL];
  [v11 requestClipWithCompletion:completionCopy];
}

- (void)_validateAppClipBasedQuickLinks:(id)links completion:(id)completion
{
  v46 = *MEMORY[0x1E69E9840];
  linksCopy = links;
  completionCopy = completion;
  v28 = linksCopy;
  if ([linksCopy count])
  {
    v27 = completionCopy;
    v7 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(linksCopy, "count")}];
    v29 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(linksCopy, "count")}];
    v8 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(linksCopy, "count")}];
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v9 = linksCopy;
    v10 = [v9 countByEnumeratingWithState:&v34 objects:v42 count:16];
    if (v10)
    {
      v11 = *v35;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v35 != v11)
          {
            objc_enumerationMutation(v9);
          }

          v13 = *(*(&v34 + 1) + 8 * i);
          v14 = MEMORY[0x1E695DFF8];
          uRLString = [v13 URLString];
          v16 = [v14 URLWithString:uRLString];

          [v7 addObject:v16];
          bundleID = [v13 bundleID];
          [v29 addObject:bundleID];

          [v8 setObject:v13 forKey:v16];
        }

        v10 = [v9 countByEnumeratingWithState:&v34 objects:v42 count:16];
      }

      while (v10);
    }

    v18 = MKGetClipServicesLog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412546;
      *&buf[4] = v7;
      *&buf[12] = 2112;
      *&buf[14] = v29;
      _os_log_impl(&dword_1A2EA0000, v18, OS_LOG_TYPE_DEBUG, "Requesting validation with url list %@ and bundle identifier list %@", buf, 0x16u);
    }

    v38 = 0;
    v39 = &v38;
    v40 = 0x2050000000;
    v19 = getCPSValidationRequestClass_softClass;
    v41 = getCPSValidationRequestClass_softClass;
    if (!getCPSValidationRequestClass_softClass)
    {
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 3221225472;
      *&buf[16] = __getCPSValidationRequestClass_block_invoke;
      v44 = &unk_1E76CD7B0;
      v45 = &v38;
      __getCPSValidationRequestClass_block_invoke(buf);
      v19 = v39[3];
    }

    v20 = v19;
    _Block_object_dispose(&v38, 8);
    v21 = [v20 alloc];
    v22 = [v7 copy];
    v23 = [v29 copy];
    v24 = [v21 initWithURLs:v22 bundleIDs:v23];

    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = __61__MKClipServices__validateAppClipBasedQuickLinks_completion___block_invoke;
    v30[3] = &unk_1E76C6468;
    v31 = v7;
    v32 = v8;
    v33 = v27;
    v25 = v8;
    v26 = v7;
    [v24 validateWithCompletion:v30];

    completionCopy = v27;
  }

  else
  {
    (*(completionCopy + 2))(completionCopy, MEMORY[0x1E695E0F0]);
  }
}

void __61__MKClipServices__validateAppClipBasedQuickLinks_completion___block_invoke(uint64_t a1, void *a2)
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = MKGetClipServicesLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = [v3 availabilities];
    *buf = 138412290;
    v27 = v5;
    _os_log_impl(&dword_1A2EA0000, v4, OS_LOG_TYPE_DEBUG, "Received validation result with availabilities %@", buf, 0xCu);
  }

  v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v7 = *(a1 + 32);
  v8 = [v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v8)
  {
    v10 = v8;
    v11 = *v22;
    *&v9 = 138412290;
    v20 = v9;
    do
    {
      v12 = 0;
      do
      {
        if (*v22 != v11)
        {
          objc_enumerationMutation(v7);
        }

        v13 = *(*(&v21 + 1) + 8 * v12);
        v14 = [v3 availabilities];
        v15 = [v14 objectForKey:v13];

        if (([v15 BOOLValue] & 1) == 0)
        {
          v16 = MKGetClipServicesLog();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
          {
            *buf = v20;
            v27 = v13;
            _os_log_impl(&dword_1A2EA0000, v16, OS_LOG_TYPE_DEBUG, "app clip with url %@ is not available", buf, 0xCu);
          }

          v17 = [*(a1 + 40) objectForKey:v13];
          [v6 addObject:v17];
        }

        ++v12;
      }

      while (v10 != v12);
      v10 = [v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v10);
  }

  v18 = *(a1 + 48);
  v19 = [v6 copy];
  (*(v18 + 16))(v18, v19);
}

- (void)appClipsFromQuickLinks:(id)links completion:(id)completion
{
  completionCopy = completion;
  v7 = MEMORY[0x1E696AE18];
  linksCopy = links;
  v9 = [v7 predicateWithBlock:&__block_literal_global_695];
  v10 = [linksCopy filteredArrayUsingPredicate:v9];

  requestAppClipMetadataQueue = self->_requestAppClipMetadataQueue;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __52__MKClipServices_appClipsFromQuickLinks_completion___block_invoke_2;
  v14[3] = &unk_1E76CDA20;
  v15 = v10;
  v16 = completionCopy;
  v12 = completionCopy;
  v13 = v10;
  dispatch_async(requestAppClipMetadataQueue, v14);
}

void __52__MKClipServices_appClipsFromQuickLinks_completion___block_invoke_2(uint64_t a1)
{
  v53 = *MEMORY[0x1E69E9840];
  v29 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v28 = a1;
  obj = *(a1 + 32);
  v33 = [obj countByEnumeratingWithState:&v41 objects:v49 count:16];
  if (v33)
  {
    v32 = *v42;
    do
    {
      for (i = 0; i != v33; ++i)
      {
        if (*v42 != v32)
        {
          objc_enumerationMutation(obj);
        }

        v3 = *(*(&v41 + 1) + 8 * i);
        v4 = MEMORY[0x1E695DFF8];
        v5 = [v3 URLString];
        v37 = [v4 URLWithString:v5];

        v45 = 0;
        v46 = &v45;
        v47 = 0x2050000000;
        v6 = getCPSClipMetadataRequestClass_softClass;
        v48 = getCPSClipMetadataRequestClass_softClass;
        if (!getCPSClipMetadataRequestClass_softClass)
        {
          *buf = MEMORY[0x1E69E9820];
          *&buf[8] = 3221225472;
          *&buf[16] = __getCPSClipMetadataRequestClass_block_invoke;
          v51 = &unk_1E76CD7B0;
          v52 = &v45;
          __getCPSClipMetadataRequestClass_block_invoke(buf);
          v6 = v46[3];
        }

        v7 = v6;
        _Block_object_dispose(&v45, 8);
        v36 = [[v7 alloc] initWithURL:v37];
        v8 = MKGetClipServicesLog();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
        {
          v9 = [v3 URLString];
          *buf = 138412290;
          *&buf[4] = v9;
          _os_log_impl(&dword_1A2EA0000, v8, OS_LOG_TYPE_DEBUG, "Requesting app clip for url = %@", buf, 0xCu);
        }

        v10 = [v36 getClipMetadataSynchronously];
        if (v10)
        {
          v11 = [v3 title];
          v12 = v11;
          if (v11)
          {
            log = v11;
          }

          else
          {
            log = [v10 clipName];
          }

          v14 = [v10 bundleDisplayName];
          v15 = v14;
          if (v14)
          {
            v34 = v14;
          }

          else
          {
            v34 = [v10 clipName];
          }

          v16 = objc_alloc(MEMORY[0x1E69A1B58]);
          v17 = [v3 bundleID];
          v18 = [v10 fullAppShortName];
          v19 = [v10 clipBusinessIconURL];
          v20 = v19;
          if (!v19)
          {
            v31 = [v10 fullAppIconURL];
            v20 = v31;
          }

          v21 = [v10 provider];
          v22 = [v16 initWithBundleID:v17 title:log subtitle:v34 appShortName:v18 appClipURL:v37 artworkURL:v20 providerName:{v21, v28}];

          if (!v19)
          {
          }

          v23 = MKGetClipServicesLog();
          v24 = v23;
          if (v22)
          {
            if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              *&buf[4] = v22;
              _os_log_impl(&dword_1A2EA0000, v24, OS_LOG_TYPE_DEBUG, "Found %@", buf, 0xCu);
            }

            [v29 addObject:v22];
          }

          else
          {
            if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
            {
              v25 = [v3 bundleID];
              *buf = 138412802;
              *&buf[4] = v25;
              *&buf[12] = 2112;
              *&buf[14] = log;
              *&buf[22] = 2112;
              v51 = v34;
              _os_log_impl(&dword_1A2EA0000, v24, OS_LOG_TYPE_ERROR, "Unable to create app clip because one of the following was missing bundle id %@. title %@ subtitle %@", buf, 0x20u);
            }
          }
        }

        else
        {
          log = MKGetClipServicesLog();
          if (os_log_type_enabled(log, OS_LOG_TYPE_DEBUG))
          {
            v13 = [v3 URLString];
            *buf = 138412290;
            *&buf[4] = v13;
            _os_log_impl(&dword_1A2EA0000, log, OS_LOG_TYPE_DEBUG, "No app clip found for url = %@", buf, 0xCu);
          }
        }
      }

      v33 = [obj countByEnumeratingWithState:&v41 objects:v49 count:16];
    }

    while (v33);
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __52__MKClipServices_appClipsFromQuickLinks_completion___block_invoke_21;
  block[3] = &unk_1E76CDA20;
  v26 = *(v28 + 40);
  v39 = v29;
  v40 = v26;
  v27 = v29;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __52__MKClipServices_appClipsFromQuickLinks_completion___block_invoke_21(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) copy];
  (*(v1 + 16))(v1, v2);
}

- (void)quickLinksCopyByRemovingNonAvailableAppClipLinks:(id)links completion:(id)completion
{
  v26 = *MEMORY[0x1E69E9840];
  linksCopy = links;
  completionCopy = completion;
  v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v9 = linksCopy;
  v10 = [v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v22;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v22 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v21 + 1) + 8 * i);
        if ([v14 type] == 2)
        {
          [v8 addObject:v14];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v11);
  }

  v15 = [v8 copy];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __78__MKClipServices_quickLinksCopyByRemovingNonAvailableAppClipLinks_completion___block_invoke;
  v18[3] = &unk_1E76C6420;
  v19 = v9;
  v20 = completionCopy;
  v16 = completionCopy;
  v17 = v9;
  [(MKClipServices *)self _validateAppClipBasedQuickLinks:v15 completion:v18];
}

void __78__MKClipServices_quickLinksCopyByRemovingNonAvailableAppClipLinks_completion___block_invoke(uint64_t a1, void *a2)
{
  v37 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v21 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(*(a1 + 32), "count")}];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v20 = a1;
  obj = *(a1 + 32);
  v4 = [obj countByEnumeratingWithState:&v26 objects:v36 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v27;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v27 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v26 + 1) + 8 * i);
        v9 = [v3 containsObject:v8];
        v10 = MKGetClipServicesLog();
        v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG);
        if (v9)
        {
          if (v11)
          {
            v12 = [v8 appAdamID];
            v13 = [v8 URLString];
            v14 = [v8 bundleID];
            *buf = 138412802;
            v31 = v12;
            v32 = 2112;
            v33 = v13;
            v34 = 2112;
            v35 = v14;
            _os_log_impl(&dword_1A2EA0000, v10, OS_LOG_TYPE_DEBUG, "Removing quick link with identifier %@ url %@ bundleID %@", buf, 0x20u);
          }
        }

        else
        {
          if (v11)
          {
            v15 = [v8 appAdamID];
            v16 = [v8 URLString];
            v17 = [v8 bundleID];
            *buf = 138412802;
            v31 = v15;
            v32 = 2112;
            v33 = v16;
            v34 = 2112;
            v35 = v17;
            _os_log_impl(&dword_1A2EA0000, v10, OS_LOG_TYPE_DEBUG, "Adding quick link with identifier %@ url %@ bundleID %@", buf, 0x20u);
          }

          [v21 addObject:v8];
        }
      }

      v5 = [obj countByEnumeratingWithState:&v26 objects:v36 count:16];
    }

    while (v5);
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __78__MKClipServices_quickLinksCopyByRemovingNonAvailableAppClipLinks_completion___block_invoke_16;
  block[3] = &unk_1E76CDA20;
  v18 = *(v20 + 40);
  v24 = v21;
  v25 = v18;
  v19 = v21;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __78__MKClipServices_quickLinksCopyByRemovingNonAvailableAppClipLinks_completion___block_invoke_16(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) copy];
  (*(v1 + 16))(v1, v2);
}

- (void)appClipWithQuickLink:(id)link completion:(id)completion
{
  v12[1] = *MEMORY[0x1E69E9840];
  linkCopy = link;
  completionCopy = completion;
  v8 = completionCopy;
  if (linkCopy)
  {
    v12[0] = linkCopy;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __50__MKClipServices_appClipWithQuickLink_completion___block_invoke;
    v10[3] = &unk_1E76C63F8;
    v11 = v8;
    [(MKClipServices *)self appClipsFromQuickLinks:v9 completion:v10];
  }

  else
  {
    (*(completionCopy + 2))(completionCopy, 0);
  }
}

void __50__MKClipServices_appClipWithQuickLink_completion___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 firstObject];
  (*(v2 + 16))(v2, v3);
}

- (MKClipServices)init
{
  v7.receiver = self;
  v7.super_class = MKClipServices;
  v2 = [(MKClipServices *)&v7 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.MapKit.MKClipServices.RequestAppClipMetadata", v3);
    requestAppClipMetadataQueue = v2->_requestAppClipMetadataQueue;
    v2->_requestAppClipMetadataQueue = v4;
  }

  return v2;
}

+ (id)sharedInstance
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __32__MKClipServices_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedInstance_once_711 != -1)
  {
    dispatch_once(&sharedInstance_once_711, block);
  }

  v2 = sharedInstance_sharedInstance_712;

  return v2;
}

void __32__MKClipServices_sharedInstance__block_invoke(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = sharedInstance_sharedInstance_712;
  sharedInstance_sharedInstance_712 = v1;
}

@end