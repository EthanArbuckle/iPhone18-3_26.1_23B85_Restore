@interface AMSUICardMetadata
+ (id)_cardArtworkForPaymentPass:(id)a3 width:(double)a4;
+ (id)_passesForPassTypeIdentifier:(id)a3 serialNumber:(id)a4;
+ (id)appleCardIcon;
+ (id)appleCardIconString;
+ (id)metadataForPassTypeIdentifier:(id)a3 serialNumber:(id)a4 cardArtworkSize:(id)a5;
+ (void)metadataForPassTypeIdentifier:(id)a3 serialNumber:(id)a4 cardArtworkSize:(id)a5 completionHandler:(id)a6;
@end

@implementation AMSUICardMetadata

+ (id)appleCardIcon
{
  v24 = *MEMORY[0x1E69E9840];
  if (appleCardIcon_onceToken != -1)
  {
    +[AMSUICardMetadata appleCardIcon];
  }

  v2 = AMSSetLogKeyIfNeeded();
  v3 = [MEMORY[0x1E698C968] sharedConfig];
  if (!v3)
  {
    v3 = [MEMORY[0x1E698C968] sharedConfig];
  }

  v4 = [v3 OSLogObject];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    *&buf[4] = objc_opt_class();
    *&buf[12] = 2114;
    *&buf[14] = v2;
    v5 = *&buf[4];
    _os_log_impl(&dword_1BB036000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Checking for card icon", buf, 0x16u);
  }

  v17 = 0;
  v18 = &v17;
  v19 = 0x2050000000;
  v6 = getPKVirtualCardClass_softClass;
  v20 = getPKVirtualCardClass_softClass;
  if (!getPKVirtualCardClass_softClass)
  {
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 3221225472;
    *&buf[16] = __getPKVirtualCardClass_block_invoke;
    v22 = &unk_1E7F241B0;
    v23 = &v17;
    __getPKVirtualCardClass_block_invoke(buf);
    v6 = v18[3];
  }

  v7 = v6;
  _Block_object_dispose(&v17, 8);
  v8 = objc_alloc_init(v6);
  v9 = v8;
  if (v8)
  {
    v10 = [v8 cardIcon];
  }

  else
  {
    v11 = [MEMORY[0x1E698C968] sharedConfig];
    if (!v11)
    {
      v11 = [MEMORY[0x1E698C968] sharedConfig];
    }

    v12 = [v11 OSLogObject];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = objc_opt_class();
      *buf = 138543618;
      *&buf[4] = v13;
      *&buf[12] = 2114;
      *&buf[14] = v2;
      v14 = v13;
      _os_log_impl(&dword_1BB036000, v12, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to fetch virtual card", buf, 0x16u);
    }

    v10 = 0;
  }

  v15 = *MEMORY[0x1E69E9840];

  return v10;
}

void __34__AMSUICardMetadata_appleCardIcon__block_invoke()
{
  v5 = *MEMORY[0x1E69E9840];
  v2[0] = 0;
  if (!PassKitUIFoundationLibraryCore_frameworkLibrary)
  {
    v2[1] = MEMORY[0x1E69E9820];
    v2[2] = 3221225472;
    v2[3] = __PassKitUIFoundationLibraryCore_block_invoke;
    v2[4] = &__block_descriptor_40_e5_v8__0l;
    v2[5] = v2;
    v3 = xmmword_1E7F24840;
    v4 = 0;
    PassKitUIFoundationLibraryCore_frameworkLibrary = _sl_dlopen();
    v0 = v2[0];
    if (PassKitUIFoundationLibraryCore_frameworkLibrary)
    {
      if (!v2[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v0 = abort_report_np();
    }

    free(v0);
  }

LABEL_4:
  v1 = *MEMORY[0x1E69E9840];
}

+ (id)appleCardIconString
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = [a1 appleCardIcon];
  v3 = UIImagePNGRepresentation(v2);
  v4 = v3;
  if (v3)
  {
    v5 = [v3 base64EncodedStringWithOptions:1];
    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"data:image/pngbase64, %@", v5];;
  }

  else
  {
    v7 = [MEMORY[0x1E698C968] sharedConfig];
    if (!v7)
    {
      v7 = [MEMORY[0x1E698C968] sharedConfig];
    }

    v8 = [v7 OSLogObject];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = objc_opt_class();
      v10 = v9;
      v11 = AMSSetLogKeyIfNeeded();
      *buf = 138543618;
      v15 = v9;
      v16 = 2114;
      v17 = v11;
      _os_log_impl(&dword_1BB036000, v8, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to fetch card icon", buf, 0x16u);
    }

    v6 = 0;
  }

  v12 = *MEMORY[0x1E69E9840];

  return v6;
}

+ (void)metadataForPassTypeIdentifier:(id)a3 serialNumber:(id)a4 cardArtworkSize:(id)a5 completionHandler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = dispatch_get_global_queue(2, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __98__AMSUICardMetadata_metadataForPassTypeIdentifier_serialNumber_cardArtworkSize_completionHandler___block_invoke;
  block[3] = &unk_1E7F247D0;
  v23 = v13;
  v24 = a1;
  v20 = v10;
  v21 = v11;
  v22 = v12;
  v15 = v13;
  v16 = v12;
  v17 = v11;
  v18 = v10;
  dispatch_async(v14, block);
}

void __98__AMSUICardMetadata_metadataForPassTypeIdentifier_serialNumber_cardArtworkSize_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 64) metadataForPassTypeIdentifier:*(a1 + 32) serialNumber:*(a1 + 40) cardArtworkSize:*(a1 + 48)];
  (*(*(a1 + 56) + 16))();
}

+ (id)metadataForPassTypeIdentifier:(id)a3 serialNumber:(id)a4 cardArtworkSize:(id)a5
{
  v38 = *MEMORY[0x1E69E9840];
  v26 = a3;
  v8 = a4;
  v9 = a5;
  v24 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v10 = AMSSetLogKeyIfNeeded();
  v11 = [a1 _passesForPassTypeIdentifier:v26 serialNumber:v8];
  v12 = [MEMORY[0x1E698C968] sharedConfig];
  if (!v12)
  {
    v12 = [MEMORY[0x1E698C968] sharedConfig];
  }

  v13 = [v12 OSLogObject];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = objc_opt_class();
    v15 = MEMORY[0x1E696AD98];
    v16 = v14;
    v17 = [v15 numberWithUnsignedInteger:{objc_msgSend(v11, "count")}];
    *buf = 138543874;
    v33 = v14;
    v34 = 2114;
    v35 = v10;
    v36 = 2114;
    v37 = v17;
    _os_log_impl(&dword_1BB036000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Found %{public}@ payment passes", buf, 0x20u);
  }

  objc_initWeak(buf, a1);
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __80__AMSUICardMetadata_metadataForPassTypeIdentifier_serialNumber_cardArtworkSize___block_invoke;
  v27[3] = &unk_1E7F24820;
  objc_copyWeak(&v31, buf);
  v18 = v9;
  v28 = v18;
  v19 = v10;
  v29 = v19;
  v20 = v25;
  v30 = v20;
  [v11 enumerateObjectsUsingBlock:v27];
  v21 = [v20 copy];

  objc_destroyWeak(&v31);
  objc_destroyWeak(buf);

  v22 = *MEMORY[0x1E69E9840];

  return v21;
}

void __80__AMSUICardMetadata_metadataForPassTypeIdentifier_serialNumber_cardArtworkSize___block_invoke(uint64_t a1, void *a2)
{
  v61 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v5 = objc_alloc_init(MEMORY[0x1E698C850]);
  v48 = 0;
  v49 = &v48;
  v50 = 0x3032000000;
  v51 = __Block_byref_object_copy__0;
  v52 = __Block_byref_object_dispose__0;
  v53 = 0;
  [*(a1 + 32) floatValue];
  if (v6 <= 0.0)
  {
    v10 = [MEMORY[0x1E698C968] sharedConfig];
    if (!v10)
    {
      v10 = [MEMORY[0x1E698C968] sharedConfig];
    }

    v11 = [v10 OSLogObject];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = objc_opt_class();
      v13 = *(a1 + 40);
      *buf = 138543618;
      *&buf[4] = v12;
      *&buf[12] = 2114;
      *&buf[14] = v13;
      v14 = v12;
      _os_log_impl(&dword_1BB036000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Caller did not specify a valid image size", buf, 0x16u);
    }
  }

  else
  {
    v7 = v6;
    if ([MEMORY[0x1E696AF00] isMainThread])
    {
      v8 = [WeakRetained _cardArtworkForPaymentPass:v3 width:v7];
      v9 = v49[5];
      v49[5] = v8;
    }

    else
    {
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __80__AMSUICardMetadata_metadataForPassTypeIdentifier_serialNumber_cardArtworkSize___block_invoke_22;
      block[3] = &unk_1E7F247F8;
      v46 = &v48;
      block[4] = WeakRetained;
      v45 = v3;
      v47 = v7;
      dispatch_sync(MEMORY[0x1E69E96A0], block);
    }

    v15 = v49[5];
    if (v15)
    {
      v10 = [v15 base64EncodedStringWithOptions:1];
      v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"data:image/pngbase64, %@", v10];;
      [v5 setCardArtwork:v11];
      [v5 setCardArtworkData:v49[5]];
    }

    else
    {
      v10 = [MEMORY[0x1E698C968] sharedConfig];
      if (!v10)
      {
        v10 = [MEMORY[0x1E698C968] sharedConfig];
      }

      v11 = [v10 OSLogObject];
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v16 = objc_opt_class();
        v17 = *(a1 + 40);
        *buf = 138543618;
        *&buf[4] = v16;
        *&buf[12] = 2114;
        *&buf[14] = v17;
        v18 = v16;
        _os_log_impl(&dword_1BB036000, v11, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to find card artwork", buf, 0x16u);
      }
    }
  }

  v19 = [v3 localizedDescription];
  [v5 setDescriptionShort:v19];

  v20 = [v3 serialNumber];
  [v5 setSerialNumber:v20];

  v21 = [v3 passTypeIdentifier];
  [v5 setPassTypeIdentifier:v21];

  v54 = 0;
  v55 = &v54;
  v56 = 0x2050000000;
  v22 = getPKPaymentPassClass_softClass;
  v57 = getPKPaymentPassClass_softClass;
  if (!getPKPaymentPassClass_softClass)
  {
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 3221225472;
    *&buf[16] = __getPKPaymentPassClass_block_invoke;
    v59 = &unk_1E7F241B0;
    v60 = &v54;
    __getPKPaymentPassClass_block_invoke(buf);
    v22 = v55[3];
  }

  v23 = v22;
  _Block_object_dispose(&v54, 8);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v5 setSuffix:{objc_msgSend(v3, "performSelector:withObject:", sel_primaryAccountNumberSuffix, 0)}];
  }

  v24 = [v3 paymentPass];
  v25 = [v24 associatedAccountServiceAccountIdentifier];
  v26 = v25 == 0;

  if (v26)
  {
    v33 = [v3 paymentPass];
    v34 = [v33 hasAssociatedPeerPaymentAccount];

    if (v34)
    {
      v27 = [MEMORY[0x1E698C968] sharedConfig];
      if (!v27)
      {
        v27 = [MEMORY[0x1E698C968] sharedConfig];
      }

      v28 = [v27 OSLogObject];
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        v35 = objc_opt_class();
        v36 = *(a1 + 40);
        *buf = 138543618;
        *&buf[4] = v35;
        *&buf[12] = 2114;
        *&buf[14] = v36;
        v37 = v35;
        _os_log_impl(&dword_1BB036000, v28, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Found cash payment instrument", buf, 0x16u);
      }

      v32 = 1;
    }

    else
    {
      v27 = [MEMORY[0x1E698C968] sharedConfig];
      if (!v27)
      {
        v27 = [MEMORY[0x1E698C968] sharedConfig];
      }

      v28 = [v27 OSLogObject];
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        v38 = objc_opt_class();
        v39 = *(a1 + 40);
        *buf = 138543618;
        *&buf[4] = v38;
        *&buf[12] = 2114;
        *&buf[14] = v39;
        v40 = v38;
        _os_log_impl(&dword_1BB036000, v28, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Found credit payment instrument", buf, 0x16u);
      }

      v32 = 0;
    }
  }

  else
  {
    v27 = [MEMORY[0x1E698C968] sharedConfig];
    if (!v27)
    {
      v27 = [MEMORY[0x1E698C968] sharedConfig];
    }

    v28 = [v27 OSLogObject];
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      v29 = objc_opt_class();
      v30 = *(a1 + 40);
      *buf = 138543618;
      *&buf[4] = v29;
      *&buf[12] = 2114;
      *&buf[14] = v30;
      v31 = v29;
      _os_log_impl(&dword_1BB036000, v28, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Found associated account", buf, 0x16u);
    }

    v32 = 2;
  }

  [v5 setCardType:v32];
  v41 = [v3 paymentPass];
  v42 = [v41 devicePrimaryInAppPaymentApplication];
  [v5 setPaymentNetwork:{objc_msgSend(v42, "paymentNetworkIdentifier")}];

  [*(a1 + 48) addObject:v5];
  _Block_object_dispose(&v48, 8);

  v43 = *MEMORY[0x1E69E9840];
}

uint64_t __80__AMSUICardMetadata_metadataForPassTypeIdentifier_serialNumber_cardArtworkSize___block_invoke_22(uint64_t a1)
{
  v2 = [*(a1 + 32) _cardArtworkForPaymentPass:*(a1 + 40) width:*(a1 + 56)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8]();
}

+ (id)_cardArtworkForPaymentPass:(id)a3 width:(double)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (_cardArtworkForPaymentPass_width__onceToken != -1)
  {
    +[AMSUICardMetadata _cardArtworkForPaymentPass:width:];
  }

  v6 = [v5 cardImageWithDimensions:{a4, a4}];
  v7 = v6;
  if (v6)
  {
    v8 = UIImagePNGRepresentation(v6);
  }

  else
  {
    v9 = [MEMORY[0x1E698C968] sharedConfig];
    if (!v9)
    {
      v9 = [MEMORY[0x1E698C968] sharedConfig];
    }

    v10 = [v9 OSLogObject];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = objc_opt_class();
      v12 = v11;
      v13 = AMSSetLogKeyIfNeeded();
      v16 = 138543618;
      v17 = v11;
      v18 = 2114;
      v19 = v13;
      _os_log_impl(&dword_1BB036000, v10, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to obtain card artwork", &v16, 0x16u);
    }

    v8 = 0;
  }

  v14 = *MEMORY[0x1E69E9840];

  return v8;
}

void __54__AMSUICardMetadata__cardArtworkForPaymentPass_width___block_invoke()
{
  v5 = *MEMORY[0x1E69E9840];
  v2[0] = 0;
  if (!PassKitUILibraryCore_frameworkLibrary)
  {
    v2[1] = MEMORY[0x1E69E9820];
    v2[2] = 3221225472;
    v2[3] = __PassKitUILibraryCore_block_invoke;
    v2[4] = &__block_descriptor_40_e5_v8__0l;
    v2[5] = v2;
    v3 = xmmword_1E7F24870;
    v4 = 0;
    PassKitUILibraryCore_frameworkLibrary = _sl_dlopen();
    v0 = v2[0];
    if (PassKitUILibraryCore_frameworkLibrary)
    {
      if (!v2[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v0 = abort_report_np();
    }

    free(v0);
  }

LABEL_4:
  v1 = *MEMORY[0x1E69E9840];
}

+ (id)_passesForPassTypeIdentifier:(id)a3 serialNumber:(id)a4
{
  v38 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = AMSSetLogKeyIfNeeded();
  v30 = 0;
  v31 = &v30;
  v32 = 0x2050000000;
  v8 = getPKPassLibraryClass_softClass;
  v33 = getPKPassLibraryClass_softClass;
  if (!getPKPassLibraryClass_softClass)
  {
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 3221225472;
    *&buf[16] = __getPKPassLibraryClass_block_invoke;
    v36 = &unk_1E7F241B0;
    v37 = &v30;
    __getPKPassLibraryClass_block_invoke(buf);
    v8 = v31[3];
  }

  v9 = v8;
  _Block_object_dispose(&v30, 8);
  v10 = objc_alloc_init(v8);
  if (v5)
  {
    v11 = v6 == 0;
  }

  else
  {
    v11 = 1;
  }

  v12 = !v11;
  v13 = [MEMORY[0x1E698C968] sharedConfig];
  v14 = v13;
  if (v12)
  {
    if (!v13)
    {
      v14 = [MEMORY[0x1E698C968] sharedConfig];
    }

    v15 = [v14 OSLogObject];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = objc_opt_class();
      *buf = 138543618;
      *&buf[4] = v16;
      *&buf[12] = 2114;
      *&buf[14] = v7;
      v17 = v16;
      _os_log_impl(&dword_1BB036000, v15, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Attempting to search for specific card", buf, 0x16u);
    }

    v18 = [v10 passWithPassTypeIdentifier:v5 serialNumber:v6];
    v19 = v18;
    if (v18)
    {
      v34 = v18;
      v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v34 count:1];
    }

    else
    {
      v24 = [MEMORY[0x1E698C968] sharedConfig];
      if (!v24)
      {
        v24 = [MEMORY[0x1E698C968] sharedConfig];
      }

      v25 = [v24 OSLogObject];
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        v26 = objc_opt_class();
        *buf = 138543618;
        *&buf[4] = v26;
        *&buf[12] = 2114;
        *&buf[14] = v7;
        v27 = v26;
        _os_log_impl(&dword_1BB036000, v25, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Card metadata failed for no card", buf, 0x16u);
      }

      v20 = 0;
    }
  }

  else
  {
    if (!v13)
    {
      v14 = [MEMORY[0x1E698C968] sharedConfig];
    }

    v21 = [v14 OSLogObject];
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v22 = objc_opt_class();
      *buf = 138543618;
      *&buf[4] = v22;
      *&buf[12] = 2114;
      *&buf[14] = v7;
      v23 = v22;
      _os_log_impl(&dword_1BB036000, v21, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Attempting to search for all cards", buf, 0x16u);
    }

    v20 = [v10 passesOfType:1];
  }

  v28 = *MEMORY[0x1E69E9840];

  return v20;
}

@end