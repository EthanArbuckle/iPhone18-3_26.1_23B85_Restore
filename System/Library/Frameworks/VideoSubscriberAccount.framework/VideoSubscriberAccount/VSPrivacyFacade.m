@interface VSPrivacyFacade
- (BOOL)isAccessGrantedForBundle:(__CFBundle *)a3;
- (BOOL)isAccessGrantedForBundleID:(id)a3;
- (BOOL)reset;
- (BOOL)setAccessGranted:(BOOL)a3 forBundle:(__CFBundle *)a4;
- (BOOL)setAccessGranted:(BOOL)a3 forBundleID:(id)a4;
- (NSArray)knownAppBundles;
- (VSPrivacyFacade)init;
- (VSPrivacyFacade)initWithService:(id)a3 voucherLockbox:(id)a4;
- (id)_voucherForProcess:(int)a3 providerID:(id)a4;
- (void)_promptForAccessUsingAuditToken:(id *)a3 processIdentifier:(int)a4 identityProviderDisplayName:(id)a5 providerIsSupported:(BOOL)a6 completionHandler:(id)a7;
- (void)preflightCheckForProcessIdentifier:(int)a3 withCompletionHandler:(id)a4;
- (void)requestAccessForAuditToken:(id *)a3 processIdentifier:(int)a4 identityProviderDisplayName:(id)a5 providerIsSupported:(BOOL)a6 identityProviderID:(id)a7 allowUI:(BOOL)a8 completionHandler:(id)a9;
@end

@implementation VSPrivacyFacade

- (VSPrivacyFacade)initWithService:(id)a3 voucherLockbox:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = VSPrivacyFacade;
  v8 = [(VSPrivacyFacade *)&v14 init];
  if (v8)
  {
    v9 = [v6 copy];
    service = v8->_service;
    v8->_service = v9;

    objc_storeStrong(&v8->_voucherLockbox, a4);
    v11 = objc_alloc_init(MEMORY[0x277CCABD8]);
    privateQueue = v8->_privateQueue;
    v8->_privateQueue = v11;

    [(NSOperationQueue *)v8->_privateQueue setName:@"VSPrivacyFacade"];
    [(NSOperationQueue *)v8->_privateQueue setMaxConcurrentOperationCount:1];
  }

  return v8;
}

- (VSPrivacyFacade)init
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The %@ initializer is not available.", v5}];

  return 0;
}

- (void)preflightCheckForProcessIdentifier:(int)a3 withCompletionHandler:(id)a4
{
  v29 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = VSDefaultLogObject();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v27) = 0;
    _os_log_impl(&dword_23AB8E000, v7, OS_LOG_TYPE_DEFAULT, "Will preflight for pid.", &v27, 2u);
  }

  v8 = VSBundleURLForProcessIdentifier(a3);
  if (!v8)
  {
    v18 = VSErrorLogObject();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [VSPrivacyFacade preflightCheckForProcessIdentifier:withCompletionHandler:];
    }

    goto LABEL_17;
  }

  Unique = _CFBundleCreateUnique();
  if (!Unique)
  {
    v19 = VSErrorLogObject();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      [VSPrivacyFacade preflightCheckForProcessIdentifier:withCompletionHandler:];
    }

LABEL_17:
    v17 = 0;
    goto LABEL_35;
  }

  v10 = Unique;
  v11 = TCCAccessCopyInformationForBundle();
  if (v11)
  {
    v12 = v11;
    if (CFArrayGetCount(v11) < 1)
    {
LABEL_10:
      v17 = 0;
    }

    else
    {
      v13 = 0;
      v14 = MEMORY[0x277D6C0E8];
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v12, v13);
        Value = CFDictionaryGetValue(ValueAtIndex, *v14);
        if (CFStringCompare(Value, [(VSPrivacyFacade *)self service], 0) == kCFCompareEqualTo)
        {
          break;
        }

        if (++v13 >= CFArrayGetCount(v12))
        {
          goto LABEL_10;
        }
      }

      v21 = CFDictionaryGetValue(ValueAtIndex, *MEMORY[0x277D6C0D0]);
      if (v21)
      {
        v22 = CFBooleanGetValue(v21);
        v23 = VSDefaultLogObject();
        v24 = os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT);
        if (v22)
        {
          if (v24)
          {
            LOWORD(v27) = 0;
            _os_log_impl(&dword_23AB8E000, v23, OS_LOG_TYPE_DEFAULT, "TCC status is granted.", &v27, 2u);
          }

          v17 = 1;
        }

        else if (v24)
        {
          LOWORD(v27) = 0;
          v17 = 2;
          _os_log_impl(&dword_23AB8E000, v23, OS_LOG_TYPE_DEFAULT, "TCC status is denied.", &v27, 2u);
        }

        else
        {
          v17 = 2;
        }
      }

      else
      {
        v23 = VSErrorLogObject();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          [VSPrivacyFacade preflightCheckForProcessIdentifier:withCompletionHandler:];
        }

        v17 = 0;
      }
    }

    CFRelease(v12);
  }

  else
  {
    v20 = VSErrorLogObject();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      [VSPrivacyFacade preflightCheckForProcessIdentifier:withCompletionHandler:];
    }

    v17 = 0;
  }

  CFRelease(v10);
LABEL_35:
  v25 = VSDefaultLogObject();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    v26 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v17];
    v27 = 138412290;
    v28 = v26;
    _os_log_impl(&dword_23AB8E000, v25, OS_LOG_TYPE_DEFAULT, "Will call preflight completion handler with result %@", &v27, 0xCu);
  }

  v6[2](v6, v17);
}

- (id)_voucherForProcess:(int)a3 providerID:(id)a4
{
  v31 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = VSBundleURLForProcessIdentifier(a3);
  if (v7)
  {
    v8 = [MEMORY[0x277CC1E70] vs_applicationRecordWithBundleURL:v7];
    v9 = MEMORY[0x277CCABB0];
    v10 = [v8 iTunesMetadata];
    v11 = [v9 numberWithUnsignedLongLong:{objc_msgSend(v10, "storeItemIdentifier")}];

    v12 = [v11 stringValue];
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v13 = [(VSPrivacyFacade *)self voucherLockbox];
    v14 = [v13 unredeemedVouchers];

    v15 = [v14 countByEnumeratingWithState:&v26 objects:v30 count:16];
    if (v15)
    {
      v23 = v11;
      v24 = v8;
      v25 = v7;
      v16 = *v27;
      do
      {
        for (i = 0; i != v15; i = i + 1)
        {
          if (*v27 != v16)
          {
            objc_enumerationMutation(v14);
          }

          v18 = *(*(&v26 + 1) + 8 * i);
          v19 = [v18 appAdamID];
          if ([v19 isEqual:v12])
          {
            v20 = [v18 providerID];
            v21 = [v20 isEqual:v6];

            if (v21)
            {
              v15 = v18;
              goto LABEL_15;
            }
          }

          else
          {
          }
        }

        v15 = [v14 countByEnumeratingWithState:&v26 objects:v30 count:16];
      }

      while (v15);
LABEL_15:
      v8 = v24;
      v7 = v25;
      v11 = v23;
    }
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (void)requestAccessForAuditToken:(id *)a3 processIdentifier:(int)a4 identityProviderDisplayName:(id)a5 providerIsSupported:(BOOL)a6 identityProviderID:(id)a7 allowUI:(BOOL)a8 completionHandler:(id)a9
{
  v9 = a8;
  v11 = a6;
  v12 = *&a4;
  v15 = a5;
  v16 = a7;
  v17 = a9;
  if (!v17)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The completionHandler parameter must not be nil."];
  }

  v18 = [(VSPrivacyFacade *)self _voucherForProcess:v12 providerID:v16];
  v19 = VSDefaultLogObject();
  v20 = os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT);
  if (v18)
  {
    if (v20)
    {
      LOWORD(v26) = 0;
      _os_log_impl(&dword_23AB8E000, v19, OS_LOG_TYPE_DEFAULT, "Found a voucher for process.", &v26, 2u);
    }

    v21 = [(VSPrivacyFacade *)self voucherLockbox];
    [v21 redeemVoucher:v18];

    v22 = *&a3->var0[4];
    v26 = *a3->var0;
    v27 = v22;
    [(VSPrivacyFacade *)self setAccessGranted:1 forAuditToken:&v26];
    v23 = objc_alloc_init(VSOptional);
    v17[2](v17, 1, v23);
    goto LABEL_12;
  }

  if (v20)
  {
    LOWORD(v26) = 0;
    _os_log_impl(&dword_23AB8E000, v19, OS_LOG_TYPE_DEFAULT, "No voucher found for process.", &v26, 2u);
  }

  if (!v9)
  {
    v23 = VSPrivateError(-12, 0);
    v25 = [VSOptional optionalWithObject:v23];
    v17[2](v17, 0, v25);

LABEL_12:
    goto LABEL_13;
  }

  v24 = *&a3->var0[4];
  v26 = *a3->var0;
  v27 = v24;
  [(VSPrivacyFacade *)self _promptForAccessUsingAuditToken:&v26 processIdentifier:v12 identityProviderDisplayName:v15 providerIsSupported:v11 completionHandler:v17];
LABEL_13:
}

- (void)_promptForAccessUsingAuditToken:(id *)a3 processIdentifier:(int)a4 identityProviderDisplayName:(id)a5 providerIsSupported:(BOOL)a6 completionHandler:(id)a7
{
  v8 = *&a4;
  v10 = a5;
  v47 = a7;
  v11 = objc_alloc_init(VSUserNotificationOperation);
  v12 = [MEMORY[0x277CCA8D8] vs_bundleForProcessIdentifier:v8];
  v13 = [v12 bundleIdentifier];
  v14 = [VSOptional optionalWithObject:v13];

  v60 = 0;
  v61 = &v60;
  v62 = 0x3032000000;
  v63 = __Block_byref_object_copy__5;
  v64 = __Block_byref_object_dispose__5;
  v65 = 0;
  v59[0] = MEMORY[0x277D85DD0];
  v59[1] = 3221225472;
  v59[2] = __135__VSPrivacyFacade__promptForAccessUsingAuditToken_processIdentifier_identityProviderDisplayName_providerIsSupported_completionHandler___block_invoke;
  v59[3] = &unk_278B74240;
  v59[4] = &v60;
  [v14 conditionallyUnwrapObject:v59];
  v15 = [MEMORY[0x277CCA8D8] vs_frameworkBundle];
  if (v10)
  {
    v16 = [v15 localizedStringForKey:@"PRIVACY_TITLE_FORMAT" value:0 table:0];

    [MEMORY[0x277CCACA8] stringWithFormat:v16, v61[5], v10];
  }

  else
  {
    v16 = [v15 localizedStringForKey:@"PRIVACY_TITLE_FORMAT_GENERIC" value:0 table:0];

    [MEMORY[0x277CCACA8] stringWithFormat:v16, v61[5]];
  }
  v17 = ;

  [(VSUserNotificationOperation *)v11 setTitle:v17];
  v18 = [v12 objectForInfoDictionaryKey:@"NSVideoSubscriberAccountUsageDescription"];
  v19 = v18;
  v45 = v17;
  v46 = v14;
  if (v18)
  {
    v42 = self;
    v20 = v18;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v21 = MEMORY[0x277CBEAD8];
        v22 = objc_opt_class();
        v23 = NSStringFromClass(v22);
        [v21 raise:*MEMORY[0x277CBE660] format:{@"Unexpectedly, usageValue was %@, instead of NSString.", v23}];
      }

      v24 = v20;
      if (!a6)
      {
        v25 = [MEMORY[0x277CCA8D8] vs_frameworkBundle];
        v26 = [v25 localizedStringForKey:@"UNSUPPORTED_PROVIDER_MESSAGE_FORMAT" value:0 table:0];

        v27 = [MEMORY[0x277CCACA8] stringWithFormat:v26, v61[5]];

        v24 = v27;
      }

      [(VSUserNotificationOperation *)v11 setMessage:v24];
      v28 = [MEMORY[0x277CCA8D8] vs_frameworkBundle];
      v29 = [v28 localizedStringForKey:@"PRIVACY_ALLOW_ACCESS_BUTTON_TITLE" value:0 table:0];
      [(VSUserNotificationOperation *)v11 setDefaultButtonTitle:v29];

      v30 = [MEMORY[0x277CCA8D8] vs_frameworkBundle];
      v31 = [v30 localizedStringForKey:@"PRIVACY_DENY_ACCESS_BUTTON_TITLE" value:0 table:0];
      [(VSUserNotificationOperation *)v11 setAlternateButtonTitle:v31];
      v32 = v10;

      v33 = MEMORY[0x277CCA8C8];
      v54[0] = MEMORY[0x277D85DD0];
      v54[1] = 3221225472;
      v54[2] = __135__VSPrivacyFacade__promptForAccessUsingAuditToken_processIdentifier_identityProviderDisplayName_providerIsSupported_completionHandler___block_invoke_2;
      v54[3] = &unk_278B74290;
      v34 = v11;
      v55[0] = v34;
      v55[1] = v42;
      v35 = *&a3->var0[4];
      v57 = *a3->var0;
      v58 = v35;
      v56 = v47;
      v36 = [v33 blockOperationWithBlock:v54];
      [v36 addDependency:v34];
      v37 = [(VSPrivacyFacade *)v42 privateQueue];
      [v37 addOperation:v34];
      [v37 addOperation:v36];
      v38 = v55;

      v39 = v47;
    }

    else
    {
      v32 = v10;
      VSPrivateAccessUsageDescriptionMissing();
      v41 = v39 = v47;
      v51[0] = MEMORY[0x277D85DD0];
      v51[1] = 3221225472;
      v51[2] = __135__VSPrivacyFacade__promptForAccessUsingAuditToken_processIdentifier_identityProviderDisplayName_providerIsSupported_completionHandler___block_invoke_2_48;
      v51[3] = &unk_278B737F8;
      v53 = v47;
      v24 = v41;
      v52 = v24;
      VSPerformCompletionHandler(v51);
      v38 = &v53;
    }

    v10 = v32;
  }

  else
  {
    VSPrivateAccessUsageDescriptionMissing();
    v40 = v39 = v47;
    v48[0] = MEMORY[0x277D85DD0];
    v48[1] = 3221225472;
    v48[2] = __135__VSPrivacyFacade__promptForAccessUsingAuditToken_processIdentifier_identityProviderDisplayName_providerIsSupported_completionHandler___block_invoke_3;
    v48[3] = &unk_278B737F8;
    v50 = v47;
    v20 = v40;
    v49 = v20;
    VSPerformCompletionHandler(v48);

    v24 = v50;
  }

  _Block_object_dispose(&v60, 8);
}

uint64_t __135__VSPrivacyFacade__promptForAccessUsingAuditToken_processIdentifier_identityProviderDisplayName_providerIsSupported_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  *(*(*(a1 + 32) + 8) + 40) = VSDisplayNameForBundleWithIdentifier(a2);

  return MEMORY[0x2821F96F8]();
}

void __135__VSPrivacyFacade__promptForAccessUsingAuditToken_processIdentifier_identityProviderDisplayName_providerIsSupported_completionHandler___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) response];
  v3 = 0;
  if (v2 <= 1)
  {
    if (v2)
    {
      v4 = 0;
      if (v2 == 1)
      {
        v5 = VSDefaultLogObject();
        if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_23AB8E000, v5, OS_LOG_TYPE_DEFAULT, "Will grant access.", buf, 2u);
        }

        v6 = *(a1 + 40);
        v7 = *(a1 + 72);
        *buf = *(a1 + 56);
        v19 = v7;
        if ([v6 setAccessGranted:1 forAuditToken:buf])
        {
          v8 = VSDefaultLogObject();
          if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_23AB8E000, v8, OS_LOG_TYPE_DEFAULT, "Did grant access.", buf, 2u);
          }
        }

        else
        {
          v8 = VSErrorLogObject();
          if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
          {
            __135__VSPrivacyFacade__promptForAccessUsingAuditToken_processIdentifier_identityProviderDisplayName_providerIsSupported_completionHandler___block_invoke_2_cold_2();
          }
        }

        v3 = 0;
        v4 = 1;
      }

      goto LABEL_23;
    }

LABEL_11:
    v3 = VSPublicError(0, 2, 0);
    v4 = 0;
    goto LABEL_23;
  }

  if (v2 != 2)
  {
    v4 = 0;
    if (v2 != 3)
    {
      goto LABEL_23;
    }

    goto LABEL_11;
  }

  v3 = VSPrivateError(-11, 0);
  v9 = VSDefaultLogObject();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23AB8E000, v9, OS_LOG_TYPE_DEFAULT, "Will deny access.", buf, 2u);
  }

  v10 = *(a1 + 40);
  v11 = *(a1 + 72);
  *buf = *(a1 + 56);
  v19 = v11;
  if ([v10 setAccessGranted:0 forAuditToken:buf])
  {
    v12 = VSDefaultLogObject();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23AB8E000, v12, OS_LOG_TYPE_DEFAULT, "Did deny access.", buf, 2u);
    }
  }

  else
  {
    v12 = VSErrorLogObject();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      __135__VSPrivacyFacade__promptForAccessUsingAuditToken_processIdentifier_identityProviderDisplayName_providerIsSupported_completionHandler___block_invoke_2_cold_1();
    }
  }

  v4 = 2;
LABEL_23:
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __135__VSPrivacyFacade__promptForAccessUsingAuditToken_processIdentifier_identityProviderDisplayName_providerIsSupported_completionHandler___block_invoke_46;
  v14[3] = &unk_278B74268;
  v16 = *(a1 + 48);
  v17 = v4;
  v15 = v3;
  v13 = v3;
  VSPerformCompletionHandler(v14);
}

void __135__VSPrivacyFacade__promptForAccessUsingAuditToken_processIdentifier_identityProviderDisplayName_providerIsSupported_completionHandler___block_invoke_46(void *a1)
{
  v2 = a1[5];
  v1 = a1[6];
  v3 = [VSOptional optionalWithObject:a1[4]];
  (*(v2 + 16))(v2, v1, v3);
}

void __135__VSPrivacyFacade__promptForAccessUsingAuditToken_processIdentifier_identityProviderDisplayName_providerIsSupported_completionHandler___block_invoke_2_48(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [VSOptional optionalWithObject:*(a1 + 32)];
  (*(v1 + 16))(v1, 0, v2);
}

void __135__VSPrivacyFacade__promptForAccessUsingAuditToken_processIdentifier_identityProviderDisplayName_providerIsSupported_completionHandler___block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [VSOptional optionalWithObject:*(a1 + 32)];
  (*(v1 + 16))(v1, 0, v2);
}

- (BOOL)isAccessGrantedForBundle:(__CFBundle *)a3
{
  Identifier = CFBundleGetIdentifier(a3);

  return [(VSPrivacyFacade *)self isAccessGrantedForBundleID:Identifier];
}

- (BOOL)isAccessGrantedForBundleID:(id)a3
{
  v4 = TCCAccessCopyInformationForBundleId();
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  Count = CFArrayGetCount(v4);
  if (Count < 1)
  {
LABEL_6:
    v12 = 0;
  }

  else
  {
    v7 = Count;
    v8 = 0;
    v9 = MEMORY[0x277D6C0E8];
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v5, v8);
      Value = CFDictionaryGetValue(ValueAtIndex, *v9);
      if (CFStringCompare(Value, [(VSPrivacyFacade *)self service], 0) == kCFCompareEqualTo)
      {
        break;
      }

      if (v7 == ++v8)
      {
        goto LABEL_6;
      }
    }

    v13 = CFDictionaryGetValue(ValueAtIndex, *MEMORY[0x277D6C0D0]);
    v12 = CFBooleanGetValue(v13) != 0;
  }

  CFRelease(v5);
  return v12;
}

- (BOOL)setAccessGranted:(BOOL)a3 forBundle:(__CFBundle *)a4
{
  v4 = a3;
  Identifier = CFBundleGetIdentifier(a4);

  return [(VSPrivacyFacade *)self setAccessGranted:v4 forBundleID:Identifier];
}

- (BOOL)setAccessGranted:(BOOL)a3 forBundleID:(id)a4
{
  v5 = a4;
  [(VSPrivacyFacade *)self service];
  v6 = TCCAccessSetForBundleId();

  return v6 != 0;
}

- (NSArray)knownAppBundles
{
  v44 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  [(VSPrivacyFacade *)self service];
  v5 = TCCAccessCopyInformation();
  if (v5)
  {
    v6 = v5;
    Count = CFArrayGetCount(v5);
    if (Count >= 1)
    {
      v8 = Count;
      v9 = 0;
      v10 = MEMORY[0x277D6C0C8];
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v6, v9);
        *value = 0;
        if (CFDictionaryGetValueIfPresent(ValueAtIndex, *v10, value))
        {
          v12 = CFBundleGetIdentifier(*value);
          [v4 addObject:v12];
        }

        ++v9;
      }

      while (v8 != v9);
    }

    CFRelease(v6);
  }

  v13 = [MEMORY[0x277CBEB38] dictionary];
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v14 = v4;
  v15 = [v14 countByEnumeratingWithState:&v37 objects:v43 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v38;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v38 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v37 + 1) + 8 * i);
        v20 = VSDisplayNameForBundleWithIdentifier(v19);
        if (v20)
        {
          [v13 setObject:v20 forKeyedSubscript:v19];
        }
      }

      v16 = [v14 countByEnumeratingWithState:&v37 objects:v43 count:16];
    }

    while (v16);
  }

  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 3221225472;
  v35[2] = __34__VSPrivacyFacade_knownAppBundles__block_invoke;
  v35[3] = &unk_278B742B8;
  v30 = v13;
  v36 = v30;
  [v14 sortUsingComparator:v35];
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v21 = v14;
  v22 = [v21 countByEnumeratingWithState:&v31 objects:v42 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v32;
    do
    {
      for (j = 0; j != v23; ++j)
      {
        if (*v32 != v24)
        {
          objc_enumerationMutation(v21);
        }

        v26 = *(*(&v31 + 1) + 8 * j);
        v27 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:v26];
        if (v27)
        {
          [v3 addObject:v27];
        }

        else
        {
          v28 = VSErrorLogObject();
          if (os_log_type_enabled(v28, OS_LOG_TYPE_FAULT))
          {
            *value = 138412290;
            *&value[4] = v26;
            _os_log_fault_impl(&dword_23AB8E000, v28, OS_LOG_TYPE_FAULT, "No bundle for %@", value, 0xCu);
          }
        }
      }

      v23 = [v21 countByEnumeratingWithState:&v31 objects:v42 count:16];
    }

    while (v23);
  }

  return v3;
}

uint64_t __34__VSPrivacyFacade_knownAppBundles__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = [v5 objectForKeyedSubscript:a2];
  v8 = [*(a1 + 32) objectForKeyedSubscript:v6];

  if (v8)
  {
    v9 = [v7 localizedCompare:v8];
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

- (BOOL)reset
{
  v3 = [(VSPrivacyFacade *)self voucherLockbox];
  [v3 removeAllVouchers];

  [(VSPrivacyFacade *)self service];
  return TCCAccessReset() != 0;
}

@end