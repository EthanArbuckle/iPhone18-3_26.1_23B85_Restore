@interface AMSUIWebStoreProductPresentAction
- (AMSUIWebStoreProductPresentAction)initWithJSObject:(id)object context:(id)context;
- (id)runAction;
- (void)productViewControllerDidFinish:(id)finish;
@end

@implementation AMSUIWebStoreProductPresentAction

- (AMSUIWebStoreProductPresentAction)initWithJSObject:(id)object context:(id)context
{
  objectCopy = object;
  contextCopy = context;
  v48.receiver = self;
  v48.super_class = AMSUIWebStoreProductPresentAction;
  v8 = [(AMSUIWebAction *)&v48 initWithJSObject:objectCopy context:contextCopy];
  if (v8)
  {
    v9 = [objectCopy objectForKeyedSubscript:@"itunesItemIdentifier"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v47 = v9;
    }

    else
    {
      v47 = 0;
    }

    v10 = [objectCopy objectForKeyedSubscript:@"productIdentifier"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v46 = v10;
    }

    else
    {
      v46 = 0;
    }

    v11 = [objectCopy objectForKeyedSubscript:@"customProductPageIdentifier"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v45 = v11;
    }

    else
    {
      v45 = 0;
    }

    v12 = [objectCopy objectForKeyedSubscript:@"affiliateToken"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v44 = v12;
    }

    else
    {
      v44 = 0;
    }

    v13 = [objectCopy objectForKeyedSubscript:@"campaignToken"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    v15 = [objectCopy objectForKeyedSubscript:@"providerToken"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v16 = v15;
    }

    else
    {
      v16 = 0;
    }

    v17 = [objectCopy objectForKeyedSubscript:@"advertisingPartnerToken"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v18 = v17;
    }

    else
    {
      v18 = 0;
    }

    dictionary = [MEMORY[0x1E695DF90] dictionary];
    if (v47)
    {
      v54 = 0;
      v55 = &v54;
      v56 = 0x2020000000;
      v20 = getSKStoreProductParameterITunesItemIdentifierSymbolLoc_ptr;
      v57 = getSKStoreProductParameterITunesItemIdentifierSymbolLoc_ptr;
      if (!getSKStoreProductParameterITunesItemIdentifierSymbolLoc_ptr)
      {
        v49 = MEMORY[0x1E69E9820];
        v50 = 3221225472;
        v51 = __getSKStoreProductParameterITunesItemIdentifierSymbolLoc_block_invoke;
        v52 = &unk_1E7F241B0;
        v53 = &v54;
        v21 = StoreKitLibrary();
        v22 = dlsym(v21, "SKStoreProductParameterITunesItemIdentifier");
        *(v53[1] + 24) = v22;
        getSKStoreProductParameterITunesItemIdentifierSymbolLoc_ptr = *(v53[1] + 24);
        v20 = v55[3];
      }

      _Block_object_dispose(&v54, 8);
      if (!v20)
      {
        [AIDAMutableServiceContext(AppleMediaServicesUI) _ams_installCDPUIWithCDPUIController:flowControllerDelegate:];
        goto LABEL_61;
      }

      [(NSDictionary *)dictionary setObject:v47 forKeyedSubscript:*v20];
    }

    if (!v46)
    {
LABEL_33:
      if (!v45)
      {
LABEL_38:
        if (!v44)
        {
LABEL_43:
          if (!v14)
          {
LABEL_48:
            if (!v16)
            {
LABEL_53:
              if (!v18)
              {
LABEL_58:
                parameters = v8->_parameters;
                v8->_parameters = dictionary;

                goto LABEL_59;
              }

              v54 = 0;
              v55 = &v54;
              v56 = 0x2020000000;
              v38 = getSKStoreProductParameterAdvertisingPartnerTokenSymbolLoc_ptr;
              v57 = getSKStoreProductParameterAdvertisingPartnerTokenSymbolLoc_ptr;
              if (!getSKStoreProductParameterAdvertisingPartnerTokenSymbolLoc_ptr)
              {
                v49 = MEMORY[0x1E69E9820];
                v50 = 3221225472;
                v51 = __getSKStoreProductParameterAdvertisingPartnerTokenSymbolLoc_block_invoke;
                v52 = &unk_1E7F241B0;
                v53 = &v54;
                v39 = StoreKitLibrary();
                v40 = dlsym(v39, "SKStoreProductParameterAdvertisingPartnerToken");
                *(v53[1] + 24) = v40;
                getSKStoreProductParameterAdvertisingPartnerTokenSymbolLoc_ptr = *(v53[1] + 24);
                v38 = v55[3];
              }

              _Block_object_dispose(&v54, 8);
              if (v38)
              {
                [(NSDictionary *)dictionary setObject:v18 forKeyedSubscript:*v38];
                goto LABEL_58;
              }

LABEL_66:
              v43 = [AIDAMutableServiceContext(AppleMediaServicesUI) _ams_installCDPUIWithCDPUIController:flowControllerDelegate:];
              _Block_object_dispose(&v54, 8);
              _Unwind_Resume(v43);
            }

            v54 = 0;
            v55 = &v54;
            v56 = 0x2020000000;
            v35 = getSKStoreProductParameterProviderTokenSymbolLoc_ptr;
            v57 = getSKStoreProductParameterProviderTokenSymbolLoc_ptr;
            if (!getSKStoreProductParameterProviderTokenSymbolLoc_ptr)
            {
              v49 = MEMORY[0x1E69E9820];
              v50 = 3221225472;
              v51 = __getSKStoreProductParameterProviderTokenSymbolLoc_block_invoke;
              v52 = &unk_1E7F241B0;
              v53 = &v54;
              v36 = StoreKitLibrary();
              v37 = dlsym(v36, "SKStoreProductParameterProviderToken");
              *(v53[1] + 24) = v37;
              getSKStoreProductParameterProviderTokenSymbolLoc_ptr = *(v53[1] + 24);
              v35 = v55[3];
            }

            _Block_object_dispose(&v54, 8);
            if (v35)
            {
              [(NSDictionary *)dictionary setObject:v16 forKeyedSubscript:*v35];
              goto LABEL_53;
            }

LABEL_65:
            [AIDAMutableServiceContext(AppleMediaServicesUI) _ams_installCDPUIWithCDPUIController:flowControllerDelegate:];
            goto LABEL_66;
          }

          v54 = 0;
          v55 = &v54;
          v56 = 0x2020000000;
          v32 = getSKStoreProductParameterCampaignTokenSymbolLoc_ptr;
          v57 = getSKStoreProductParameterCampaignTokenSymbolLoc_ptr;
          if (!getSKStoreProductParameterCampaignTokenSymbolLoc_ptr)
          {
            v49 = MEMORY[0x1E69E9820];
            v50 = 3221225472;
            v51 = __getSKStoreProductParameterCampaignTokenSymbolLoc_block_invoke;
            v52 = &unk_1E7F241B0;
            v53 = &v54;
            v33 = StoreKitLibrary();
            v34 = dlsym(v33, "SKStoreProductParameterCampaignToken");
            *(v53[1] + 24) = v34;
            getSKStoreProductParameterCampaignTokenSymbolLoc_ptr = *(v53[1] + 24);
            v32 = v55[3];
          }

          _Block_object_dispose(&v54, 8);
          if (v32)
          {
            [(NSDictionary *)dictionary setObject:v14 forKeyedSubscript:*v32];
            goto LABEL_48;
          }

LABEL_64:
          [AIDAMutableServiceContext(AppleMediaServicesUI) _ams_installCDPUIWithCDPUIController:flowControllerDelegate:];
          goto LABEL_65;
        }

        v54 = 0;
        v55 = &v54;
        v56 = 0x2020000000;
        v29 = getSKStoreProductParameterAffiliateTokenSymbolLoc_ptr;
        v57 = getSKStoreProductParameterAffiliateTokenSymbolLoc_ptr;
        if (!getSKStoreProductParameterAffiliateTokenSymbolLoc_ptr)
        {
          v49 = MEMORY[0x1E69E9820];
          v50 = 3221225472;
          v51 = __getSKStoreProductParameterAffiliateTokenSymbolLoc_block_invoke;
          v52 = &unk_1E7F241B0;
          v53 = &v54;
          v30 = StoreKitLibrary();
          v31 = dlsym(v30, "SKStoreProductParameterAffiliateToken");
          *(v53[1] + 24) = v31;
          getSKStoreProductParameterAffiliateTokenSymbolLoc_ptr = *(v53[1] + 24);
          v29 = v55[3];
        }

        _Block_object_dispose(&v54, 8);
        if (v29)
        {
          [(NSDictionary *)dictionary setObject:v44 forKeyedSubscript:*v29];
          goto LABEL_43;
        }

LABEL_63:
        [AIDAMutableServiceContext(AppleMediaServicesUI) _ams_installCDPUIWithCDPUIController:flowControllerDelegate:];
        goto LABEL_64;
      }

      v54 = 0;
      v55 = &v54;
      v56 = 0x2020000000;
      v26 = getSKStoreProductParameterCustomProductPageIdentifierSymbolLoc_ptr;
      v57 = getSKStoreProductParameterCustomProductPageIdentifierSymbolLoc_ptr;
      if (!getSKStoreProductParameterCustomProductPageIdentifierSymbolLoc_ptr)
      {
        v49 = MEMORY[0x1E69E9820];
        v50 = 3221225472;
        v51 = __getSKStoreProductParameterCustomProductPageIdentifierSymbolLoc_block_invoke;
        v52 = &unk_1E7F241B0;
        v53 = &v54;
        v27 = StoreKitLibrary();
        v28 = dlsym(v27, "SKStoreProductParameterCustomProductPageIdentifier");
        *(v53[1] + 24) = v28;
        getSKStoreProductParameterCustomProductPageIdentifierSymbolLoc_ptr = *(v53[1] + 24);
        v26 = v55[3];
      }

      _Block_object_dispose(&v54, 8);
      if (v26)
      {
        [(NSDictionary *)dictionary setObject:v45 forKeyedSubscript:*v26];
        goto LABEL_38;
      }

LABEL_62:
      [AIDAMutableServiceContext(AppleMediaServicesUI) _ams_installCDPUIWithCDPUIController:flowControllerDelegate:];
      goto LABEL_63;
    }

    v54 = 0;
    v55 = &v54;
    v56 = 0x2020000000;
    v23 = getSKStoreProductParameterProductIdentifierSymbolLoc_ptr;
    v57 = getSKStoreProductParameterProductIdentifierSymbolLoc_ptr;
    if (!getSKStoreProductParameterProductIdentifierSymbolLoc_ptr)
    {
      v49 = MEMORY[0x1E69E9820];
      v50 = 3221225472;
      v51 = __getSKStoreProductParameterProductIdentifierSymbolLoc_block_invoke;
      v52 = &unk_1E7F241B0;
      v53 = &v54;
      v24 = StoreKitLibrary();
      v25 = dlsym(v24, "SKStoreProductParameterProductIdentifier");
      *(v53[1] + 24) = v25;
      getSKStoreProductParameterProductIdentifierSymbolLoc_ptr = *(v53[1] + 24);
      v23 = v55[3];
    }

    _Block_object_dispose(&v54, 8);
    if (v23)
    {
      [(NSDictionary *)dictionary setObject:v46 forKeyedSubscript:*v23];
      goto LABEL_33;
    }

LABEL_61:
    [AIDAMutableServiceContext(AppleMediaServicesUI) _ams_installCDPUIWithCDPUIController:flowControllerDelegate:];
    goto LABEL_62;
  }

LABEL_59:

  return v8;
}

- (id)runAction
{
  v15.receiver = self;
  v15.super_class = AMSUIWebStoreProductPresentAction;
  runAction = [(AMSUIWebAction *)&v15 runAction];
  v4 = objc_alloc_init(MEMORY[0x1E698CA48]);
  [(AMSUIWebStoreProductPresentAction *)self setPresentPromise:v4];
  v17 = 0;
  v18 = &v17;
  v19 = 0x2050000000;
  v5 = getSKStoreProductViewControllerClass_softClass;
  v20 = getSKStoreProductViewControllerClass_softClass;
  if (!getSKStoreProductViewControllerClass_softClass)
  {
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __getSKStoreProductViewControllerClass_block_invoke;
    v16[3] = &unk_1E7F241B0;
    v16[4] = &v17;
    __getSKStoreProductViewControllerClass_block_invoke(v16);
    v5 = v18[3];
  }

  v6 = v5;
  _Block_object_dispose(&v17, 8);
  v7 = objc_alloc_init(v5);
  [(AMSUIWebStoreProductPresentAction *)self setController:v7];

  controller = [(AMSUIWebStoreProductPresentAction *)self controller];
  [controller setDelegate:self];

  controller2 = [(AMSUIWebStoreProductPresentAction *)self controller];
  parameters = [(AMSUIWebStoreProductPresentAction *)self parameters];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __46__AMSUIWebStoreProductPresentAction_runAction__block_invoke;
  v14[3] = &unk_1E7F246E0;
  v14[4] = self;
  [controller2 loadProductWithParameters:parameters completionBlock:v14];

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __46__AMSUIWebStoreProductPresentAction_runAction__block_invoke_2;
  v13[3] = &unk_1E7F246E0;
  v13[4] = self;
  [v4 addFinishBlock:v13];
  promiseAdapter = [v4 promiseAdapter];

  return promiseAdapter;
}

void __46__AMSUIWebStoreProductPresentAction_runAction__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = *(a1 + 32);
  v11 = v4;
  if (v4)
  {
    v6 = [v5 presentPromise];
    [v6 finishWithError:v11];

    [*(a1 + 32) setPresentPromise:0];
  }

  else
  {
    v7 = [v5 context];
    v8 = [v7 flowController];
    v9 = [v8 currentContainer];

    v10 = [*(a1 + 32) controller];
    [v9 presentViewController:v10 animated:1 completion:0];
  }

  [*(a1 + 32) setController:0];
}

uint64_t __46__AMSUIWebStoreProductPresentAction_runAction__block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setController:0];
  v2 = *(a1 + 32);

  return [v2 setPresentPromise:0];
}

- (void)productViewControllerDidFinish:(id)finish
{
  presentPromise = [(AMSUIWebStoreProductPresentAction *)self presentPromise];
  [presentPromise finishWithSuccess];
}

@end