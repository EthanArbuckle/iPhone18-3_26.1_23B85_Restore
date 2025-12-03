@interface AMSUIWebJSTelephony
+ (BOOL)_hasRequiredTelephonyEntitlement;
- (AMSUIWebJSTelephony)initWithDelegate:(id)delegate;
- (AMSUIWebJSTelephonyDelegate)delegate;
- (NSString)countryCode;
- (NSString)networkCode;
- (NSString)phoneNumber;
- (NSString)providerName;
- (NSString)radioTechnology;
- (NSString)radioType;
- (id)formattedPhoneNumber:(id)number;
- (void)dealloc;
- (void)operatorNameChanged:(id)changed name:(id)name;
- (void)phoneNumberAvailable:(id)available;
- (void)phoneNumberChanged:(id)changed;
@end

@implementation AMSUIWebJSTelephony

- (AMSUIWebJSTelephony)initWithDelegate:(id)delegate
{
  v37 = *MEMORY[0x1E69E9840];
  delegateCopy = delegate;
  v28.receiver = self;
  v28.super_class = AMSUIWebJSTelephony;
  v5 = [(AMSUIWebJSTelephony *)&v28 init];
  if (!v5)
  {
    goto LABEL_9;
  }

  if (!+[AMSUIWebJSTelephony _hasCellularTelephonyCapability])
  {
    mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedWebUIConfig];
    if (!mEMORY[0x1E698C968])
    {
      mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedConfig];
    }

    oSLogObject = [mEMORY[0x1E698C968] OSLogObject];
    if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_23;
    }

    v18 = objc_opt_class();
    *buf = 138543362;
    v30 = v18;
    v19 = "%{public}@ Not capable for telephony";
LABEL_22:
    _os_log_impl(&dword_1BB036000, oSLogObject, OS_LOG_TYPE_ERROR, v19, buf, 0xCu);
LABEL_23:

    v17 = 0;
    goto LABEL_24;
  }

  if (!+[AMSUIWebJSTelephony _hasRequiredTelephonyEntitlement])
  {
    mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedWebUIConfig];
    if (!mEMORY[0x1E698C968])
    {
      mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedConfig];
    }

    oSLogObject = [mEMORY[0x1E698C968] OSLogObject];
    if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_23;
    }

    v20 = objc_opt_class();
    *buf = 138543362;
    v30 = v20;
    v19 = "%{public}@ Not entitled for telephony";
    goto LABEL_22;
  }

  objc_storeWeak(&v5->_delegate, delegateCopy);
  v6 = dispatch_queue_create("com.apple.AppleMediaServicesUI.webTelephony", 0);
  telephonyQueue = v5->_telephonyQueue;
  v5->_telephonyQueue = v6;

  v8 = [objc_alloc(MEMORY[0x1E69650A0]) initWithQueue:v5->_telephonyQueue];
  telephonyClient = v5->_telephonyClient;
  v5->_telephonyClient = v8;

  [(CoreTelephonyClient *)v5->_telephonyClient setDelegate:v5];
  v10 = v5->_telephonyClient;
  if (!v10)
  {
    mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedWebUIConfig];
    if (!mEMORY[0x1E698C968])
    {
      mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedConfig];
    }

    oSLogObject = [mEMORY[0x1E698C968] OSLogObject];
    if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_23;
    }

    v21 = objc_opt_class();
    *buf = 138543362;
    v30 = v21;
    v19 = "%{public}@ Failed to initialize telephony client.";
    goto LABEL_22;
  }

  v27 = 0;
  oSLogObject = [(CoreTelephonyClient *)v10 getActiveContexts:&v27];
  mEMORY[0x1E698C968] = v27;
  voicePreferred = [oSLogObject voicePreferred];
  if (voicePreferred)
  {
    v14 = [oSLogObject findForUuid:voicePreferred];
    context = [v14 context];
    telephonyContext = v5->_telephonyContext;
    v5->_telephonyContext = context;
  }

  if (!v5->_telephonyContext)
  {
    mEMORY[0x1E698C968]2 = [MEMORY[0x1E698C968] sharedWebUIConfig];
    if (!mEMORY[0x1E698C968]2)
    {
      mEMORY[0x1E698C968]2 = [MEMORY[0x1E698C968] sharedConfig];
    }

    oSLogObject2 = [mEMORY[0x1E698C968]2 OSLogObject];
    if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_ERROR))
    {
      v26 = objc_opt_class();
      *buf = 138544130;
      v30 = v26;
      v31 = 1024;
      v32 = voicePreferred != 0;
      v33 = 1024;
      v34 = oSLogObject != 0;
      v35 = 2114;
      v36 = mEMORY[0x1E698C968];
      _os_log_impl(&dword_1BB036000, oSLogObject2, OS_LOG_TYPE_ERROR, "%{public}@ Failed to initialize telephony context. (hasUUID: %d hasContexts: %d) %{public}@", buf, 0x22u);
    }

    goto LABEL_23;
  }

LABEL_9:
  v17 = v5;
LABEL_24:

  v22 = *MEMORY[0x1E69E9840];
  return v17;
}

- (void)dealloc
{
  [(CoreTelephonyClient *)self->_telephonyClient setDelegate:0];
  v3.receiver = self;
  v3.super_class = AMSUIWebJSTelephony;
  [(AMSUIWebJSTelephony *)&v3 dealloc];
}

+ (BOOL)_hasRequiredTelephonyEntitlement
{
  if (_hasRequiredTelephonyEntitlement_sOnceToken != -1)
  {
    +[AMSUIWebJSTelephony _hasRequiredTelephonyEntitlement];
  }

  return _hasRequiredTelephonyEntitlement_hasEntitlement;
}

void __55__AMSUIWebJSTelephony__hasRequiredTelephonyEntitlement__block_invoke()
{
  v0 = SecTaskCreateFromSelf(0);
  if (v0)
  {
    v1 = v0;
    error = 0;
    v2 = SecTaskCopyValueForEntitlement(v0, @"com.apple.CommCenter.fine-grained", &error);
    if (v2)
    {
      v3 = v2;
      v4 = CFGetTypeID(v2);
      if (v4 == CFArrayGetTypeID())
      {
        _hasRequiredTelephonyEntitlement_hasEntitlement = [v3 containsObject:@"spi"];
      }

      CFRelease(v3);
    }

    if (error)
    {
      CFRelease(error);
    }

    CFRelease(v1);
  }
}

- (NSString)countryCode
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__6;
  v11 = __Block_byref_object_dispose__6;
  v12 = 0;
  telephonyQueue = [(AMSUIWebJSTelephony *)self telephonyQueue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __34__AMSUIWebJSTelephony_countryCode__block_invoke;
  v6[3] = &unk_1E7F26710;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(telephonyQueue, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __34__AMSUIWebJSTelephony_countryCode__block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) telephonyClient];
  v3 = [*(a1 + 32) telephonyContext];
  v14 = 0;
  v4 = [v2 copyMobileSubscriberCountryCode:v3 error:&v14];
  v5 = v14;
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v4;

  if (v5)
  {
    v8 = [MEMORY[0x1E698C968] sharedWebUIConfig];
    if (!v8)
    {
      v8 = [MEMORY[0x1E698C968] sharedConfig];
    }

    v9 = [v8 OSLogObject];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = *(a1 + 32);
      v11 = objc_opt_class();
      v12 = AMSLogableError();
      *buf = 138543618;
      v16 = v11;
      v17 = 2114;
      v18 = v12;
      _os_log_impl(&dword_1BB036000, v9, OS_LOG_TYPE_ERROR, "%{public}@ Failed to fetch country code. %{public}@", buf, 0x16u);
    }
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (NSString)networkCode
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__6;
  v11 = __Block_byref_object_dispose__6;
  v12 = 0;
  telephonyQueue = [(AMSUIWebJSTelephony *)self telephonyQueue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __34__AMSUIWebJSTelephony_networkCode__block_invoke;
  v6[3] = &unk_1E7F26710;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(telephonyQueue, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __34__AMSUIWebJSTelephony_networkCode__block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) telephonyClient];
  v3 = [*(a1 + 32) telephonyContext];
  v14 = 0;
  v4 = [v2 copyMobileSubscriberNetworkCode:v3 error:&v14];
  v5 = v14;
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v4;

  if (v5)
  {
    v8 = [MEMORY[0x1E698C968] sharedWebUIConfig];
    if (!v8)
    {
      v8 = [MEMORY[0x1E698C968] sharedConfig];
    }

    v9 = [v8 OSLogObject];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = *(a1 + 32);
      v11 = objc_opt_class();
      v12 = AMSLogableError();
      *buf = 138543618;
      v16 = v11;
      v17 = 2114;
      v18 = v12;
      _os_log_impl(&dword_1BB036000, v9, OS_LOG_TYPE_ERROR, "%{public}@ Failed to fetch network code. %{public}@", buf, 0x16u);
    }
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (NSString)phoneNumber
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__6;
  v11 = __Block_byref_object_dispose__6;
  v12 = 0;
  telephonyQueue = [(AMSUIWebJSTelephony *)self telephonyQueue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __34__AMSUIWebJSTelephony_phoneNumber__block_invoke;
  v6[3] = &unk_1E7F24460;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(telephonyQueue, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __34__AMSUIWebJSTelephony_phoneNumber__block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) telephonyClient];
  v3 = [*(a1 + 32) telephonyContext];
  v16 = 0;
  v4 = [v2 getPhoneNumber:v3 error:&v16];
  v5 = v16;

  if (v4)
  {
    v6 = v5 == 0;
  }

  else
  {
    v6 = 0;
  }

  if (!v6)
  {
    v7 = [MEMORY[0x1E698C968] sharedWebUIConfig];
    if (!v7)
    {
      v7 = [MEMORY[0x1E698C968] sharedConfig];
    }

    v8 = [v7 OSLogObject];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = *(a1 + 32);
      v10 = objc_opt_class();
      v11 = AMSLogableError();
      *buf = 138543618;
      v18 = v10;
      v19 = 2114;
      v20 = v11;
      _os_log_impl(&dword_1BB036000, v8, OS_LOG_TYPE_ERROR, "%{public}@ Failed to fetch phone number. %{public}@", buf, 0x16u);
    }
  }

  v12 = [v4 number];
  v13 = *(*(a1 + 40) + 8);
  v14 = *(v13 + 40);
  *(v13 + 40) = v12;

  v15 = *MEMORY[0x1E69E9840];
}

- (NSString)providerName
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__6;
  v11 = __Block_byref_object_dispose__6;
  v12 = 0;
  telephonyQueue = [(AMSUIWebJSTelephony *)self telephonyQueue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __35__AMSUIWebJSTelephony_providerName__block_invoke;
  v6[3] = &unk_1E7F24460;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(telephonyQueue, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __35__AMSUIWebJSTelephony_providerName__block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E6964F68]) initWithBundleType:1];
  v3 = [*(a1 + 32) telephonyClient];
  v4 = [*(a1 + 32) telephonyContext];
  v17 = 0;
  v5 = [v3 copyCarrierBundleValue:v4 key:@"CarrierName" bundleType:v2 error:&v17];
  v6 = v17;

  v7 = v5;
  objc_opt_class();
  v8 = 0;
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
  }

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;

  if (v6)
  {
    v11 = [MEMORY[0x1E698C968] sharedWebUIConfig];
    if (!v11)
    {
      v11 = [MEMORY[0x1E698C968] sharedConfig];
    }

    v12 = [v11 OSLogObject];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = *(a1 + 32);
      v14 = objc_opt_class();
      v15 = AMSLogableError();
      *buf = 138543618;
      v19 = v14;
      v20 = 2114;
      v21 = v15;
      _os_log_impl(&dword_1BB036000, v12, OS_LOG_TYPE_ERROR, "%{public}@ Failed to fetch provider name. %{public}@", buf, 0x16u);
    }
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (NSString)radioTechnology
{
  lastConnectionReport = [MEMORY[0x1E698CA68] lastConnectionReport];
  v3 = [lastConnectionReport objectForKeyedSubscript:*MEMORY[0x1E698C700]];

  return v3;
}

- (NSString)radioType
{
  lastConnectionReport = [MEMORY[0x1E698CA68] lastConnectionReport];
  v3 = [lastConnectionReport objectForKeyedSubscript:*MEMORY[0x1E698C6F8]];

  return v3;
}

- (id)formattedPhoneNumber:(id)number
{
  v3 = CPPhoneNumberCopyFormattedStringForTextMessage();

  return v3;
}

- (void)operatorNameChanged:(id)changed name:(id)name
{
  v5 = [(AMSUIWebJSTelephony *)self delegate:changed];
  [v5 telephonyDidChange:self];
}

- (void)phoneNumberAvailable:(id)available
{
  delegate = [(AMSUIWebJSTelephony *)self delegate];
  [delegate telephonyDidChange:self];
}

- (void)phoneNumberChanged:(id)changed
{
  delegate = [(AMSUIWebJSTelephony *)self delegate];
  [delegate telephonyDidChange:self];
}

- (AMSUIWebJSTelephonyDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end