@interface LPiCloudSharingMetadataProviderSpecialization
+ (id)normalizeKind:(id)a3 forApplication:(id)a4;
+ (id)specializedMetadataProviderForURLWithContext:(id)a3;
- (BOOL)canRetrieveThumbnailForApplication:(id)a3;
- (BOOL)canUseCloudKit;
- (LPiCloudSharingMetadataProviderSpecialization)initWithContext:(id)a3 applicationFromURL:(id)a4 kindFromURL:(id)a5 titleFromURL:(id)a6;
- (id)applicationFromBundleIdentifiers:(id)a3 containerIdentifier:(id)a4;
- (id)iconFromShare:(id)a3;
- (void)completeRetrievingThumbnailForShareMetadata:(id)a3 application:(id)a4 kind:(id)a5 title:(id)a6 icon:(id)a7;
- (void)completeUsingApplication:(id)a3 kind:(id)a4 title:(id)a5 thumbnail:(id)a6 icon:(id)a7;
- (void)completeWithShareMetadata:(id)a3 bundleIDs:(id)a4;
- (void)fail;
- (void)start;
@end

@implementation LPiCloudSharingMetadataProviderSpecialization

+ (id)specializedMetadataProviderForURLWithContext:(id)a3
{
  v3 = a3;
  v4 = [v3 postRedirectURL];
  v5 = [LPPresentationSpecializations isiCloudSharingURL:v4];

  if (v5)
  {
    v6 = [v3 postRedirectURL];
    v7 = [LPiCloudSharingMetadata extractApplicationFromURL:v6];

    if ([v7 _lp_isEqualIgnoringCase:@"photos"])
    {
      v8 = 0;
    }

    else
    {
      v9 = [v3 postRedirectURL];
      v10 = [LPiCloudSharingMetadata extractKindFromURL:v9];

      v11 = [v3 postRedirectURL];
      v12 = [LPiCloudSharingMetadata extractTitleFromURL:v11];

      v8 = [[LPiCloudSharingMetadataProviderSpecialization alloc] initWithContext:v3 applicationFromURL:v7 kindFromURL:v10 titleFromURL:v12];
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)canUseCloudKit
{
  v3 = +[LPiCloudSharingMetadata _applicationNameMap];
  v4 = [v3 objectForKeyedSubscript:self->_applicationFromURL];

  v5 = [objc_opt_class() normalizeKind:self->_kindFromURL forApplication:v4];
  if ([v5 isEqualToString:@"Template"] & 1) != 0 || objc_msgSend(v4, "isEqualToString:", @"Freeform") && (objc_msgSend(v5, "isEqualToString:", @"Copy"))
  {
    v6 = 0;
  }

  else
  {
    v7 = LPValueForEntitlement(*MEMORY[0x1E695BB10]);
    objc_opt_class();
    v6 = (objc_opt_isKindOfClass() & 1) != 0 && ([v7 containsObject:*MEMORY[0x1E695BB08]] & 1) != 0;
  }

  return v6;
}

- (LPiCloudSharingMetadataProviderSpecialization)initWithContext:(id)a3 applicationFromURL:(id)a4 kindFromURL:(id)a5 titleFromURL:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v20.receiver = self;
  v20.super_class = LPiCloudSharingMetadataProviderSpecialization;
  v14 = [(LPMetadataProviderSpecialization *)&v20 initWithContext:v10];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_applicationFromURL, a4);
    objc_storeStrong(&v15->_kindFromURL, a5);
    objc_storeStrong(&v15->_titleFromURL, a6);
    if ([(LPiCloudSharingMetadataProviderSpecialization *)v15 canUseCloudKit])
    {
      v16 = [MEMORY[0x1E695B888] containerWithIdentifier:@"com.apple.cloudkit"];
      baseContainer = v15->_baseContainer;
      v15->_baseContainer = v16;
    }

    v18 = v15;
  }

  return v15;
}

- (id)applicationFromBundleIdentifiers:(id)a3 containerIdentifier:(id)a4
{
  v33 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v27 objects:v32 count:16];
  if (v8)
  {
    v9 = *v28;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v28 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = [LPApplicationIdentification unlocalizedNameForBundleIdentifier:*(*(&v27 + 1) + 8 * i)];
        if (v11)
        {
          v21 = v11;
          v12 = v7;
          goto LABEL_21;
        }
      }

      v8 = [v7 countByEnumeratingWithState:&v27 objects:v32 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v12 = v7;
  v13 = [v12 countByEnumeratingWithState:&v23 objects:v31 count:16];
  if (v13)
  {
    v14 = *v24;
    while (2)
    {
      for (j = 0; j != v13; ++j)
      {
        if (*v24 != v14)
        {
          objc_enumerationMutation(v12);
        }

        v16 = *(*(&v23 + 1) + 8 * j);
        v17 = objc_alloc(MEMORY[0x1E69635F8]);
        v18 = [v17 initWithBundleIdentifier:v16 allowPlaceholder:1 error:{0, v23}];
        v19 = [v18 localizedName];
        if (v19)
        {
          v21 = v19;

          goto LABEL_21;
        }
      }

      v13 = [v12 countByEnumeratingWithState:&v23 objects:v31 count:16];
      if (v13)
      {
        continue;
      }

      break;
    }
  }

  v12 = [objc_alloc(MEMORY[0x1E69635F8]) initWithBundleIdentifier:v6 allowPlaceholder:1 error:0];
  v20 = [v12 localizedName];
  v21 = v20;
  if (v20)
  {
    v21 = v20;
  }

LABEL_21:

  return v21;
}

+ (id)normalizeKind:(id)a3 forApplication:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (![v6 isEqualToString:@"Reminders"])
  {
    goto LABEL_14;
  }

  if (!v5)
  {
    v7 = @"Shared List";
    goto LABEL_11;
  }

  if ([v5 _lp_isEqualIgnoringCase:@"template"])
  {
    v7 = @"Template";
  }

  else
  {
LABEL_14:
    if ([v6 isEqualToString:@"Freeform"])
    {
      if ([v5 _lp_isEqualIgnoringCase:@"copy"])
      {
        v7 = @"Copy";
      }

      else
      {
        v7 = 0;
      }
    }

    else
    {
      v7 = 0;
    }
  }

LABEL_11:

  return v7;
}

- (id)iconFromShare:(id)a3
{
  v3 = a3;
  v4 = *MEMORY[0x1E695B820];
  v5 = [v3 objectForKeyedSubscript:*MEMORY[0x1E695B820]];
  if (v5)
  {
    v6 = [LPImage alloc];
    v7 = [v3 objectForKeyedSubscript:v4];
    v8 = [(LPImage *)v6 initWithData:v7 MIMEType:@"image/png"];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)start
{
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __54__LPiCloudSharingMetadataProviderSpecialization_start__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __54__LPiCloudSharingMetadataProviderSpecialization_start__block_invoke_3;
  block[3] = &unk_1E7A36318;
  block[4] = *(a1 + 32);
  v10 = v6;
  v11 = v5;
  v7 = v5;
  v8 = v6;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __54__LPiCloudSharingMetadataProviderSpecialization_start__block_invoke_3(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  if ((*(*(a1 + 32) + 64) & 1) == 0)
  {
    if (*(a1 + 40))
    {
      v2 = LPLogChannelFetching();
      if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
      {
        __54__LPiCloudSharingMetadataProviderSpecialization_start__block_invoke_3_cold_1();
      }

LABEL_13:
      [*(a1 + 32) fail];
      return;
    }

    v3 = *(a1 + 48);
    if (!v3 || ([v3 containerIdentifier], v4 = objc_claimAutoreleasedReturnValue(), v4, !v4))
    {
      v13 = LPLogChannelFetching();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        __54__LPiCloudSharingMetadataProviderSpecialization_start__block_invoke_3_cold_3();
      }

      goto LABEL_13;
    }

    v5 = LPLogChannelFetching();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v6 = [*(a1 + 48) containerIdentifier];
      __54__LPiCloudSharingMetadataProviderSpecialization_start__block_invoke_3_cold_2(v6, buf, v5);
    }

    v7 = MEMORY[0x1E695B888];
    v8 = [*(a1 + 48) containerIdentifier];
    v9 = [v7 containerWithIdentifier:v8];
    v10 = *(a1 + 32);
    v11 = *(v10 + 56);
    *(v10 + 56) = v9;

    v12 = objc_alloc_init(MEMORY[0x1E695B970]);
    v14 = MEMORY[0x1E69E9820];
    v15 = 3221225472;
    v16 = __54__LPiCloudSharingMetadataProviderSpecialization_start__block_invoke_43;
    v17 = &unk_1E7A373B0;
    v18 = *(a1 + 32);
    v19 = *(a1 + 48);
    [v12 setFetchWhitelistedBundleIDsCompletionBlock:&v14];
    [*(*(a1 + 32) + 56) addOperation:{v12, v14, v15, v16, v17, v18}];
  }
}

void __54__LPiCloudSharingMetadataProviderSpecialization_start__block_invoke_43(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __54__LPiCloudSharingMetadataProviderSpecialization_start__block_invoke_2_44;
  v10[3] = &unk_1E7A35C10;
  v7 = *(a1 + 40);
  v10[4] = *(a1 + 32);
  v11 = v6;
  v12 = v5;
  v13 = v7;
  v8 = v5;
  v9 = v6;
  dispatch_async(MEMORY[0x1E69E96A0], v10);
}

uint64_t __54__LPiCloudSharingMetadataProviderSpecialization_start__block_invoke_2_44(uint64_t result)
{
  if ((*(*(result + 32) + 64) & 1) == 0)
  {
    v1 = result;
    v2 = *(result + 40);
    v3 = LPLogChannelFetching();
    v4 = v3;
    if (v2)
    {
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        __54__LPiCloudSharingMetadataProviderSpecialization_start__block_invoke_2_44_cold_1();
      }

      return [*(v1 + 32) fail];
    }

    else
    {
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
      {
        __54__LPiCloudSharingMetadataProviderSpecialization_start__block_invoke_2_44_cold_2(v1, v4);
      }

      return [*(v1 + 32) completeWithShareMetadata:*(v1 + 56) bundleIDs:*(v1 + 48)];
    }
  }

  return result;
}

- (void)completeWithShareMetadata:(id)a3 bundleIDs:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = LPLogChannelFetching();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [LPiCloudSharingMetadataProviderSpecialization completeWithShareMetadata:bundleIDs:];
  }

  v9 = +[LPiCloudSharingMetadata _applicationNameMap];
  v10 = [v9 objectForKeyedSubscript:self->_applicationFromURL];

  v11 = [objc_opt_class() normalizeKind:self->_kindFromURL forApplication:v10];
  v12 = [v6 share];
  v13 = [v12 objectForKeyedSubscript:*MEMORY[0x1E695B828]];

  v14 = [v6 share];
  v15 = [(LPiCloudSharingMetadataProviderSpecialization *)self iconFromShare:v14];

  if (v10)
  {
    if ([(LPiCloudSharingMetadataProviderSpecialization *)self canRetrieveThumbnailForApplication:v10])
    {
      [(LPiCloudSharingMetadataProviderSpecialization *)self completeRetrievingThumbnailForShareMetadata:v6 application:v10 kind:v11 title:v13 icon:v15];
    }

    else
    {
      [(LPiCloudSharingMetadataProviderSpecialization *)self completeUsingApplication:v10 kind:v11 title:v13 thumbnail:0 icon:v15];
    }
  }

  else
  {
    v16 = [v6 containerIdentifier];
    v17 = [(LPiCloudSharingMetadataProviderSpecialization *)self applicationFromBundleIdentifiers:v7 containerIdentifier:v16];

    if (self->_titleFromURL)
    {
      titleFromURL = self->_titleFromURL;
    }

    else
    {
      titleFromURL = v13;
    }

    [(LPiCloudSharingMetadataProviderSpecialization *)self completeUsingApplication:v17 kind:v11 title:titleFromURL thumbnail:0 icon:v15];
  }
}

- (void)completeUsingApplication:(id)a3 kind:(id)a4 title:(id)a5 thumbnail:(id)a6 icon:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = LPLogChannelFetching();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    [LPiCloudSharingMetadataProviderSpecialization completeUsingApplication:v12 kind:v14 title:v17 thumbnail:? icon:?];
  }

  v18 = objc_alloc_init(LPiCloudSharingMetadata);
  [(LPiCloudSharingMetadata *)v18 setApplication:v12];
  [(LPiCloudSharingMetadata *)v18 setKind:v13];
  [(LPiCloudSharingMetadata *)v18 setTitle:v14];
  [(LPiCloudSharingMetadata *)v18 setThumbnail:v15];
  [(LPiCloudSharingMetadata *)v18 setIcon:v16];
  v19 = [(LPMetadataProviderSpecialization *)self createMetadataWithSpecialization:v18];
  v20 = [(LPMetadataProviderSpecialization *)self delegate];
  [v20 metadataProviderSpecialization:self didCompleteWithMetadata:v19];
}

- (void)fail
{
  [(LPiCloudSharingMetadataProviderSpecialization *)self cancel];
  v3 = [(LPMetadataProviderSpecialization *)self delegate];
  [v3 metadataProviderSpecializationDidFail:self];
}

- (BOOL)canRetrieveThumbnailForApplication:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"Notes"] & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"Reminders"))
  {
    v4 = 0;
LABEL_14:

    return v4;
  }

  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v5 = getBREntitlementSharingPrivateInterfaceSymbolLoc_ptr;
  v19 = getBREntitlementSharingPrivateInterfaceSymbolLoc_ptr;
  if (!getBREntitlementSharingPrivateInterfaceSymbolLoc_ptr)
  {
    v6 = CloudDocsLibrary();
    v17[3] = dlsym(v6, "BREntitlementSharingPrivateInterface");
    getBREntitlementSharingPrivateInterfaceSymbolLoc_ptr = v17[3];
    v5 = v17[3];
  }

  _Block_object_dispose(&v16, 8);
  if (v5)
  {
    v7 = LPValueForEntitlement(*v5);
    if (([v7 BOOLValue] & 1) == 0)
    {
      v4 = 0;
      goto LABEL_13;
    }

    v16 = 0;
    v17 = &v16;
    v18 = 0x2020000000;
    v8 = getBRContainerProxyEntitlementSymbolLoc_ptr;
    v19 = getBRContainerProxyEntitlementSymbolLoc_ptr;
    if (!getBRContainerProxyEntitlementSymbolLoc_ptr)
    {
      v9 = CloudDocsLibrary();
      v17[3] = dlsym(v9, "BRContainerProxyEntitlement");
      getBRContainerProxyEntitlementSymbolLoc_ptr = v17[3];
      v8 = v17[3];
    }

    _Block_object_dispose(&v16, 8);
    if (v8)
    {
      v10 = LPValueForEntitlement(*v8);
      v4 = [v10 BOOLValue];

LABEL_13:
      goto LABEL_14;
    }
  }

  else
  {
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    v13 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getBREntitlementSharingPrivateInterface(void)"];
    [v12 handleFailureInFunction:v13 file:@"LPiCloudSharingMetadataProviderSpecialization.m" lineNumber:25 description:{@"%s", dlerror()}];

    __break(1u);
  }

  v14 = [MEMORY[0x1E696AAA8] currentHandler];
  v15 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getBRContainerProxyEntitlement(void)"];
  [v14 handleFailureInFunction:v15 file:@"LPiCloudSharingMetadataProviderSpecialization.m" lineNumber:26 description:{@"%s", dlerror()}];

  __break(1u);
  return result;
}

- (void)completeRetrievingThumbnailForShareMetadata:(id)a3 application:(id)a4 kind:(id)a5 title:(id)a6 icon:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __121__LPiCloudSharingMetadataProviderSpecialization_completeRetrievingThumbnailForShareMetadata_application_kind_title_icon___block_invoke;
  aBlock[3] = &unk_1E7A37478;
  aBlock[4] = self;
  v17 = v13;
  v40 = v17;
  v18 = v14;
  v41 = v18;
  v19 = v15;
  v42 = v19;
  v20 = v16;
  v43 = v20;
  v29 = _Block_copy(aBlock);
  v21 = objc_alloc_init(MEMORY[0x1E696ADC8]);
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __121__LPiCloudSharingMetadataProviderSpecialization_completeRetrievingThumbnailForShareMetadata_application_kind_title_icon___block_invoke_2_57;
  v30[3] = &unk_1E7A374A0;
  v28 = v12;
  v31 = v28;
  v32 = self;
  v22 = v17;
  v33 = v22;
  v23 = v18;
  v34 = v23;
  v24 = v19;
  v35 = v24;
  v25 = v20;
  v36 = v25;
  v26 = v29;
  v37 = v21;
  v38 = v26;
  v27 = v21;
  [v27 addOperationWithBlock:v30];
}

void __121__LPiCloudSharingMetadataProviderSpecialization_completeRetrievingThumbnailForShareMetadata_application_kind_title_icon___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5 || v6)
  {
    v14 = LPLogChannelFetching();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      __121__LPiCloudSharingMetadataProviderSpecialization_completeRetrievingThumbnailForShareMetadata_application_kind_title_icon___block_invoke_cold_1();
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __121__LPiCloudSharingMetadataProviderSpecialization_completeRetrievingThumbnailForShareMetadata_application_kind_title_icon___block_invoke_50;
    block[3] = &unk_1E7A37400;
    v20 = *(a1 + 32);
    v15 = *(&v20 + 1);
    v16 = *(a1 + 48);
    v17 = *(a1 + 56);
    *&v18 = v16;
    *(&v18 + 1) = v17;
    v27 = v20;
    v28 = v18;
    v29 = *(a1 + 64);
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }

  else
  {
    [v5 startAccessingSecurityScopedResource];
    v8 = [objc_alloc(MEMORY[0x1E697A0E0]) initWithFileAtURL:v5 size:4 scale:300.0 representationTypes:{600.0, 3.0}];
    v9 = [MEMORY[0x1E697A0E8] sharedGenerator];
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __121__LPiCloudSharingMetadataProviderSpecialization_completeRetrievingThumbnailForShareMetadata_application_kind_title_icon___block_invoke_2;
    v21[3] = &unk_1E7A37450;
    v22 = v5;
    v19 = *(a1 + 32);
    v10 = *(&v19 + 1);
    v11 = *(a1 + 48);
    v12 = *(a1 + 56);
    *&v13 = v11;
    *(&v13 + 1) = v12;
    v23 = v19;
    v24 = v13;
    v25 = *(a1 + 64);
    [v9 generateBestRepresentationForRequest:v8 completionHandler:v21];
  }
}

void __121__LPiCloudSharingMetadataProviderSpecialization_completeRetrievingThumbnailForShareMetadata_application_kind_title_icon___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  [*(a1 + 32) stopAccessingSecurityScopedResource];
  if (v6)
  {
    v7 = LPLogChannelFetching();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __121__LPiCloudSharingMetadataProviderSpecialization_completeRetrievingThumbnailForShareMetadata_application_kind_title_icon___block_invoke_2_cold_1();
    }
  }

  else if ([v5 CGImage])
  {
    v8 = -[LPImage _initWithCGImage:]([LPImage alloc], "_initWithCGImage:", [v5 CGImage]);
    goto LABEL_7;
  }

  v8 = 0;
LABEL_7:
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __121__LPiCloudSharingMetadataProviderSpecialization_completeRetrievingThumbnailForShareMetadata_application_kind_title_icon___block_invoke_53;
  block[3] = &unk_1E7A37428;
  v14 = *(a1 + 40);
  v9 = *(&v14 + 1);
  v10 = *(a1 + 56);
  v11 = *(a1 + 64);
  *&v12 = v10;
  *(&v12 + 1) = v11;
  v16 = v14;
  v17 = v12;
  v18 = v8;
  v19 = *(a1 + 72);
  v13 = v8;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __121__LPiCloudSharingMetadataProviderSpecialization_completeRetrievingThumbnailForShareMetadata_application_kind_title_icon___block_invoke_2_57(uint64_t a1)
{
  v30 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696AC08] defaultManager];
  v3 = [*(a1 + 32) containerIdentifier];
  v4 = [v2 URLForUbiquityContainerIdentifier:v3];

  if (v4)
  {
    v21 = 0;
    v22 = &v21;
    v23 = 0x2050000000;
    v5 = getBRShareCopyDocumentURLForRecordIDClass_softClass;
    v24 = getBRShareCopyDocumentURLForRecordIDClass_softClass;
    if (!getBRShareCopyDocumentURLForRecordIDClass_softClass)
    {
      *buf = MEMORY[0x1E69E9820];
      v26 = 3221225472;
      v27 = __getBRShareCopyDocumentURLForRecordIDClass_block_invoke;
      v28 = &unk_1E7A35518;
      v29 = &v21;
      __getBRShareCopyDocumentURLForRecordIDClass_block_invoke(buf);
      v5 = v22[3];
    }

    v6 = v5;
    _Block_object_dispose(&v21, 8);
    v7 = [v5 alloc];
    v8 = [*(a1 + 32) hierarchicalRootRecordID];
    v9 = [v7 initWithRecordID:v8 fileURL:v4 withServerLookup:1];

    [v9 setCopyDocumentURLCompletionBlock:*(a1 + 88)];
    [*(a1 + 80) addOperation:v9];
  }

  else
  {
    v10 = LPLogChannelFetching();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = [*(a1 + 32) containerIdentifier];
      __121__LPiCloudSharingMetadataProviderSpecialization_completeRetrievingThumbnailForShareMetadata_application_kind_title_icon___block_invoke_2_57_cold_1(v11, buf, v10);
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __121__LPiCloudSharingMetadataProviderSpecialization_completeRetrievingThumbnailForShareMetadata_application_kind_title_icon___block_invoke_59;
    block[3] = &unk_1E7A37400;
    v16 = *(a1 + 40);
    v12 = *(&v16 + 1);
    v13 = *(a1 + 56);
    v14 = *(a1 + 64);
    *&v15 = v13;
    *(&v15 + 1) = v14;
    v18 = v16;
    v19 = v15;
    v20 = *(a1 + 72);
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

void __54__LPiCloudSharingMetadataProviderSpecialization_start__block_invoke_3_cold_2(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138412290;
  *(buf + 4) = a1;
  _os_log_debug_impl(&dword_1AE886000, log, OS_LOG_TYPE_DEBUG, "LPiCloudSharingMetadata: starting fetch bundleIDs (container=%@)", buf, 0xCu);
}

void __54__LPiCloudSharingMetadataProviderSpecialization_start__block_invoke_3_cold_3()
{
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __54__LPiCloudSharingMetadataProviderSpecialization_start__block_invoke_2_44_cold_2(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 48);
  v3 = 138412290;
  v4 = v2;
  _os_log_debug_impl(&dword_1AE886000, a2, OS_LOG_TYPE_DEBUG, "LPiCloudSharingMetadata: finished fetching bundleIDs (%@)", &v3, 0xCu);
}

- (void)completeUsingApplication:(os_log_t)log kind:title:thumbnail:icon:.cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_debug_impl(&dword_1AE886000, log, OS_LOG_TYPE_DEBUG, "LPiCloudSharingMetadata: completed using application name (%@) and title (%@)", &v3, 0x16u);
}

void __121__LPiCloudSharingMetadataProviderSpecialization_completeRetrievingThumbnailForShareMetadata_application_kind_title_icon___block_invoke_2_57_cold_1(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138412290;
  *(buf + 4) = a1;
  _os_log_error_impl(&dword_1AE886000, log, OS_LOG_TYPE_ERROR, "LPiCloudSharingMetadata: failed to retrieve a containerURL (container=%@)", buf, 0xCu);
}

@end