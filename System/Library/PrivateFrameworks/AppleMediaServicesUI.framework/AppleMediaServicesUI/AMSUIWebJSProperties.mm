@interface AMSUIWebJSProperties
- (AMSUIWebClientContext)context;
- (AMSUIWebJSProperties)initWithContext:(id)context delegate:(id)delegate;
- (AMSUIWebJSPropertiesDelegate)delegate;
- (id)_accessibilityProperties;
- (id)_accountsProperties;
- (id)_appearanceProperties;
- (id)_appearancePropertiesDictionary;
- (id)_clientOptionsProperties;
- (id)_deviceProperties;
- (id)_hexStringFromColor:(id)color;
- (id)_pluginProperties;
- (id)_processProperties;
- (id)_propertiesForClientInfo:(id)info;
- (id)generateProperties;
- (void)_accessibilityPropertiesDidChange:(id)change;
- (void)_accountStoreDidChange:(id)change;
- (void)_lastConnectionReportDidChange:(id)change;
- (void)dealloc;
@end

@implementation AMSUIWebJSProperties

- (AMSUIWebJSProperties)initWithContext:(id)context delegate:(id)delegate
{
  contextCopy = context;
  delegateCopy = delegate;
  v21.receiver = self;
  v21.super_class = AMSUIWebJSProperties;
  v8 = [(AMSUIWebJSProperties *)&v21 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_context, contextCopy);
    objc_storeWeak(&v9->_delegate, delegateCopy);
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v9 selector:sel__lastConnectionReportDidChange_ name:*MEMORY[0x1E698C5F8] object:0];

    defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter2 addObserver:v9 selector:sel__accountStoreDidChange_ name:*MEMORY[0x1E69597D8] object:0];

    defaultCenter3 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter3 addObserver:v9 selector:sel__accessibilityPropertiesDidChange_ name:*MEMORY[0x1E69DD8D8] object:0];

    defaultCenter4 = [MEMORY[0x1E696AD88] defaultCenter];
    v14 = *MEMORY[0x1E69DD898];
    [defaultCenter4 addObserver:v9 selector:sel__accessibilityPropertiesDidChange_ name:*MEMORY[0x1E69DD898] object:0];

    defaultCenter5 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter5 addObserver:v9 selector:sel__accessibilityPropertiesDidChange_ name:*MEMORY[0x1E69DD8D0] object:0];

    defaultCenter6 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter6 addObserver:v9 selector:sel__accessibilityPropertiesDidChange_ name:v14 object:0];

    defaultCenter7 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter7 addObserver:v9 selector:sel__accessibilityPropertiesDidChange_ name:*MEMORY[0x1E69DD8B8] object:0];

    defaultCenter8 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter8 addObserver:v9 selector:sel__accessibilityPropertiesDidChange_ name:*MEMORY[0x1E69DD900] object:0];

    defaultCenter9 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter9 addObserver:v9 selector:sel__accessibilityPropertiesDidChange_ name:*MEMORY[0x1E69DDA58] object:0];
  }

  return v9;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = AMSUIWebJSProperties;
  [(AMSUIWebJSProperties *)&v4 dealloc];
}

- (id)generateProperties
{
  v16[6] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E698CAD0];
  _accountsProperties = [(AMSUIWebJSProperties *)self _accountsProperties];
  v16[0] = _accountsProperties;
  _appearanceProperties = [(AMSUIWebJSProperties *)self _appearanceProperties];
  v16[1] = _appearanceProperties;
  _clientOptionsProperties = [(AMSUIWebJSProperties *)self _clientOptionsProperties];
  v16[2] = _clientOptionsProperties;
  _deviceProperties = [(AMSUIWebJSProperties *)self _deviceProperties];
  v16[3] = _deviceProperties;
  _processProperties = [(AMSUIWebJSProperties *)self _processProperties];
  v16[4] = _processProperties;
  _accessibilityProperties = [(AMSUIWebJSProperties *)self _accessibilityProperties];
  v16[5] = _accessibilityProperties;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:6];
  v11 = [v3 promiseWithAll:v10];

  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __42__AMSUIWebJSProperties_generateProperties__block_invoke;
  v15[3] = &unk_1E7F25D98;
  v15[4] = self;
  v12 = [v11 thenWithBlock:v15];

  v13 = *MEMORY[0x1E69E9840];

  return v12;
}

id __42__AMSUIWebJSProperties_generateProperties__block_invoke(uint64_t a1, void *a2)
{
  v34 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E695DF90];
  v4 = a2;
  v5 = objc_alloc_init(v3);
  v6 = [*(a1 + 32) _pluginProperties];
  [v5 addEntriesFromDictionary:v6];

  v7 = [v4 objectAtIndexedSubscript:0];
  [v5 setObject:v7 forKeyedSubscript:@"accounts"];

  v8 = [v4 objectAtIndexedSubscript:1];
  [v5 setObject:v8 forKeyedSubscript:@"appearance"];

  v9 = [v4 objectAtIndexedSubscript:2];
  [v5 setObject:v9 forKeyedSubscript:@"clientData"];

  v10 = [v4 objectAtIndexedSubscript:3];
  [v5 setObject:v10 forKeyedSubscript:@"device"];

  v11 = [v4 objectAtIndexedSubscript:4];
  [v5 setObject:v11 forKeyedSubscript:@"process"];

  v12 = [v4 objectAtIndexedSubscript:5];

  [v5 setObject:v12 forKeyedSubscript:@"accessibility"];
  if ([MEMORY[0x1E696ACB0] isValidJSONObject:v5])
  {
    v29 = 0;
    v13 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v5 options:0 error:&v29];
    v14 = v29;
    if ([v13 length])
    {
      v15 = MEMORY[0x1E698CAD0];
      v16 = [v13 base64EncodedStringWithOptions:0];
      v17 = [v15 promiseWithResult:v16];
    }

    else
    {
      v16 = [MEMORY[0x1E698C968] sharedWebUIConfig];
      if (!v16)
      {
        v16 = [MEMORY[0x1E698C968] sharedConfig];
      }

      v22 = [v16 OSLogObject];
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        v23 = *(a1 + 32);
        v24 = objc_opt_class();
        v25 = [*(a1 + 32) context];
        v26 = [v25 logKey];
        *buf = 138543618;
        v31 = v24;
        v32 = 2114;
        v33 = v26;
        _os_log_impl(&dword_1BB036000, v22, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to encode JS properties JSON data", buf, 0x16u);
      }

      v17 = 0;
    }
  }

  else
  {
    v14 = [MEMORY[0x1E698C968] sharedWebUIConfig];
    if (!v14)
    {
      v14 = [MEMORY[0x1E698C968] sharedConfig];
    }

    v13 = [v14 OSLogObject];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v18 = *(a1 + 32);
      v19 = objc_opt_class();
      v20 = [*(a1 + 32) context];
      v21 = [v20 logKey];
      *buf = 138543618;
      v31 = v19;
      v32 = 2114;
      v33 = v21;
      _os_log_impl(&dword_1BB036000, v13, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to encode JS properties", buf, 0x16u);
    }

    v17 = 0;
  }

  v27 = *MEMORY[0x1E69E9840];

  return v17;
}

- (void)_accessibilityPropertiesDidChange:(id)change
{
  delegate = [(AMSUIWebJSProperties *)self delegate];
  [delegate propertiesDidChange:self];

  context = [(AMSUIWebJSProperties *)self context];
  dataProvider = [context dataProvider];
  v6 = [dataProvider postEvent:@"AccessibilityChange" options:0];
}

- (void)_accountStoreDidChange:(id)change
{
  changeCopy = change;
  context = [(AMSUIWebJSProperties *)self context];
  clientInfo = [context clientInfo];
  accountMediaType = [clientInfo accountMediaType];

  userInfo = [changeCopy userInfo];
  v9 = [userInfo objectForKeyedSubscript:*MEMORY[0x1E69598B8]];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  userInfo2 = [changeCopy userInfo];
  v12 = [userInfo2 objectForKeyedSubscript:*MEMORY[0x1E6959720]];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  v14 = [MEMORY[0x1E6959A48] ams_accountTypeIdentifierForMediaType:accountMediaType];
  if ([v10 isEqualToString:v14])
  {

LABEL_10:
    context2 = [(AMSUIWebJSProperties *)self context];
    account = [context2 account];
    [account reload];

    _accountsProperties = [(AMSUIWebJSProperties *)self _accountsProperties];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __47__AMSUIWebJSProperties__accountStoreDidChange___block_invoke;
    v19[3] = &unk_1E7F25BA0;
    v19[4] = self;
    [_accountsProperties resultWithCompletion:v19];

    goto LABEL_11;
  }

  v15 = [v13 isEqualToString:*MEMORY[0x1E698C600]];

  if (v15)
  {
    goto LABEL_10;
  }

LABEL_11:
}

void __47__AMSUIWebJSProperties__accountStoreDidChange___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = a2;
  if (a3)
  {
    v6 = [MEMORY[0x1E698C968] sharedWebUIConfig];
    if (!v6)
    {
      v6 = [MEMORY[0x1E698C968] sharedConfig];
    }

    v7 = [v6 OSLogObject];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = *(a1 + 32);
      v9 = objc_opt_class();
      v10 = AMSLogKey();
      v20 = 138543618;
      v21 = v9;
      v22 = 2114;
      v23 = v10;
      _os_log_impl(&dword_1BB036000, v7, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Unable to determine accounts properties.", &v20, 0x16u);
    }
  }

  else
  {
    v11 = [*(a1 + 32) lastAccountsExport];
    if (!v11 || (v12 = v11, [*(a1 + 32) lastAccountsExport], v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v13, "isEqualToDictionary:", v5), v13, v12, (v14 & 1) == 0))
    {
      v15 = [*(a1 + 32) delegate];
      [v15 propertiesDidChange:*(a1 + 32)];

      v16 = [*(a1 + 32) context];
      v17 = [v16 dataProvider];
      v18 = [v17 postEvent:@"AccountChange" options:0];
    }
  }

  v19 = *MEMORY[0x1E69E9840];
}

- (void)_lastConnectionReportDidChange:(id)change
{
  v4 = dispatch_get_global_queue(21, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __55__AMSUIWebJSProperties__lastConnectionReportDidChange___block_invoke;
  block[3] = &unk_1E7F242D0;
  block[4] = self;
  dispatch_async(v4, block);
}

void __55__AMSUIWebJSProperties__lastConnectionReportDidChange___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 propertiesDidChange:*(a1 + 32)];
}

- (id)_accessibilityProperties
{
  v26[18] = *MEMORY[0x1E69E9840];
  v20 = MEMORY[0x1E698CAD0];
  v25[0] = @"buttonShapesEnabled";
  v24 = [MEMORY[0x1E696AD98] numberWithBool:{+[AMSUIAccessibilityWrapper buttonShapesEnabled](AMSUIAccessibilityWrapper, "buttonShapesEnabled")}];
  v26[0] = v24;
  v25[1] = @"isBoldTextEnabled";
  v23 = [MEMORY[0x1E696AD98] numberWithBool:{+[AMSUIAccessibilityWrapper isBoldTextEnabled](AMSUIAccessibilityWrapper, "isBoldTextEnabled")}];
  v26[1] = v23;
  v25[2] = @"isClosedCaptioningEnabled";
  v22 = [MEMORY[0x1E696AD98] numberWithBool:{+[AMSUIAccessibilityWrapper isClosedCaptioningEnabled](AMSUIAccessibilityWrapper, "isClosedCaptioningEnabled")}];
  v26[2] = v22;
  v25[3] = @"isDarkerSystemColorsEnabled";
  v21 = [MEMORY[0x1E696AD98] numberWithBool:{+[AMSUIAccessibilityWrapper isDarkerSystemColorsEnabled](AMSUIAccessibilityWrapper, "isDarkerSystemColorsEnabled")}];
  v26[3] = v21;
  v25[4] = @"isGrayscaleEnabled";
  v19 = [MEMORY[0x1E696AD98] numberWithBool:{+[AMSUIAccessibilityWrapper isGrayscaleEnabled](AMSUIAccessibilityWrapper, "isGrayscaleEnabled")}];
  v26[4] = v19;
  v25[5] = @"isInvertColorsEnabled";
  v18 = [MEMORY[0x1E696AD98] numberWithBool:{+[AMSUIAccessibilityWrapper isInvertColorsEnabled](AMSUIAccessibilityWrapper, "isInvertColorsEnabled")}];
  v26[5] = v18;
  v25[6] = @"isMonoAudioEnabled";
  v17 = [MEMORY[0x1E696AD98] numberWithBool:{+[AMSUIAccessibilityWrapper isMonoAudioEnabled](AMSUIAccessibilityWrapper, "isMonoAudioEnabled")}];
  v26[6] = v17;
  v25[7] = @"isOnOffSwitchLabelsEnabled";
  v16 = [MEMORY[0x1E696AD98] numberWithBool:{+[AMSUIAccessibilityWrapper isOnOffSwitchLabelsEnabled](AMSUIAccessibilityWrapper, "isOnOffSwitchLabelsEnabled")}];
  v26[7] = v16;
  v25[8] = @"isReduceMotionEnabled";
  v15 = [MEMORY[0x1E696AD98] numberWithBool:{+[AMSUIAccessibilityWrapper isReduceMotionEnabled](AMSUIAccessibilityWrapper, "isReduceMotionEnabled")}];
  v26[8] = v15;
  v25[9] = @"isReduceTransparencyEnabled";
  v14 = [MEMORY[0x1E696AD98] numberWithBool:{+[AMSUIAccessibilityWrapper isReduceTransparencyEnabled](AMSUIAccessibilityWrapper, "isReduceTransparencyEnabled")}];
  v26[9] = v14;
  v25[10] = @"isShakeToUndoEnabled";
  v2 = [MEMORY[0x1E696AD98] numberWithBool:{+[AMSUIAccessibilityWrapper isShakeToUndoEnabled](AMSUIAccessibilityWrapper, "isShakeToUndoEnabled")}];
  v26[10] = v2;
  v25[11] = @"isSpeakScreenEnabled";
  v3 = [MEMORY[0x1E696AD98] numberWithBool:{+[AMSUIAccessibilityWrapper isSpeakScreenEnabled](AMSUIAccessibilityWrapper, "isSpeakScreenEnabled")}];
  v26[11] = v3;
  v25[12] = @"isSpeakSelectionEnabled";
  v4 = [MEMORY[0x1E696AD98] numberWithBool:{+[AMSUIAccessibilityWrapper isSpeakSelectionEnabled](AMSUIAccessibilityWrapper, "isSpeakSelectionEnabled")}];
  v26[12] = v4;
  v25[13] = @"isSwitchControlRunning";
  v5 = [MEMORY[0x1E696AD98] numberWithBool:{+[AMSUIAccessibilityWrapper isSwitchControlRunning](AMSUIAccessibilityWrapper, "isSwitchControlRunning")}];
  v26[13] = v5;
  v25[14] = @"isVideoAutoplayEnabled";
  v6 = [MEMORY[0x1E696AD98] numberWithBool:{+[AMSUIAccessibilityWrapper isVideoAutoplayEnabled](AMSUIAccessibilityWrapper, "isVideoAutoplayEnabled")}];
  v26[14] = v6;
  v25[15] = @"isVoiceOverRunning";
  v7 = [MEMORY[0x1E696AD98] numberWithBool:{+[AMSUIAccessibilityWrapper isVoiceOverRunning](AMSUIAccessibilityWrapper, "isVoiceOverRunning")}];
  v26[15] = v7;
  v25[16] = @"prefersCrossFadeTransitions";
  v8 = [MEMORY[0x1E696AD98] numberWithBool:{+[AMSUIAccessibilityWrapper prefersCrossFadeTransitions](AMSUIAccessibilityWrapper, "prefersCrossFadeTransitions")}];
  v26[16] = v8;
  v25[17] = @"shouldDifferentiateWithoutColor";
  v9 = [MEMORY[0x1E696AD98] numberWithBool:{+[AMSUIAccessibilityWrapper shouldDifferentiateWithoutColor](AMSUIAccessibilityWrapper, "shouldDifferentiateWithoutColor")}];
  v26[17] = v9;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:v25 count:18];
  v11 = [v20 promiseWithResult:v10];

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

- (id)_accountsProperties
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = MEMORY[0x1E6959A48];
  context = [(AMSUIWebJSProperties *)self context];
  clientInfo = [context clientInfo];
  accountMediaType = [clientInfo accountMediaType];
  v8 = [v4 ams_sharedAccountStoreForMediaType:accountMediaType];

  ams_activeiCloudAccount = [v8 ams_activeiCloudAccount];
  ams_activeiTunesAccount = [v8 ams_activeiTunesAccount];
  context2 = [(AMSUIWebJSProperties *)self context];
  account = [context2 account];
  v13 = account;
  if (account)
  {
    ams_localiTunesAccount = account;
  }

  else
  {
    ams_localiTunesAccount = [v8 ams_localiTunesAccount];
  }

  v15 = ams_localiTunesAccount;

  context3 = [(AMSUIWebJSProperties *)self context];
  v17 = [context3 JSAccountFromAccount:ams_activeiCloudAccount store:v8];
  [v3 setObject:v17 forKeyedSubscript:@"activeiCloud"];

  context4 = [(AMSUIWebJSProperties *)self context];
  v19 = [context4 JSAccountFromAccount:ams_activeiTunesAccount store:v8];
  [v3 setObject:v19 forKeyedSubscript:@"activeiTunes"];

  context5 = [(AMSUIWebJSProperties *)self context];
  v21 = [context5 JSAccountFromAccount:v15 store:v8];
  [v3 setObject:v21 forKeyedSubscript:@"current"];

  ams_DSID = [ams_activeiCloudAccount ams_DSID];
  if (ams_DSID)
  {
    ams_DSID2 = [ams_activeiTunesAccount ams_DSID];

    if (ams_DSID2)
    {
      ams_DSID3 = [ams_activeiCloudAccount ams_DSID];
      ams_DSID4 = [ams_activeiTunesAccount ams_DSID];
      ams_DSID = [ams_DSID3 isEqualToNumber:ams_DSID4];
    }

    else
    {
      ams_DSID = 0;
    }
  }

  v26 = [MEMORY[0x1E696AD98] numberWithBool:ams_DSID];
  [v3 setObject:v26 forKeyedSubscript:@"isCombinedAccount"];

  v27 = [v3 copy];
  [(AMSUIWebJSProperties *)self setLastAccountsExport:v27];

  v28 = [MEMORY[0x1E698CAD0] promiseWithResult:v3];

  return v28;
}

- (id)_appearanceProperties
{
  v3 = objc_alloc_init(MEMORY[0x1E698CAD0]);
  if ([MEMORY[0x1E696AF00] isMainThread])
  {
    _appearancePropertiesDictionary = [(AMSUIWebJSProperties *)self _appearancePropertiesDictionary];
    [v3 finishWithResult:_appearancePropertiesDictionary];
  }

  else
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __45__AMSUIWebJSProperties__appearanceProperties__block_invoke;
    v6[3] = &unk_1E7F243C0;
    v7 = v3;
    selfCopy = self;
    dispatch_async(MEMORY[0x1E69E96A0], v6);
  }

  return v3;
}

void __45__AMSUIWebJSProperties__appearanceProperties__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) _appearancePropertiesDictionary];
  [v1 finishWithResult:v2];
}

- (id)_appearancePropertiesDictionary
{
  v16[1] = *MEMORY[0x1E69E9840];
  context = [(AMSUIWebJSProperties *)self context];
  flowController = [context flowController];
  rootContainer = [flowController rootContainer];
  view = [rootContainer view];
  tintColor = [view tintColor];
  v8 = tintColor;
  if (tintColor)
  {
    systemBlueColor = tintColor;
  }

  else
  {
    systemBlueColor = [MEMORY[0x1E69DC888] systemBlueColor];
  }

  v10 = systemBlueColor;

  v15 = @"tintColor";
  v11 = [(AMSUIWebJSProperties *)self _hexStringFromColor:v10];
  v16[0] = v11;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:&v15 count:1];

  v13 = *MEMORY[0x1E69E9840];

  return v12;
}

- (id)_clientOptionsProperties
{
  v18 = *MEMORY[0x1E69E9840];
  context = [(AMSUIWebJSProperties *)self context];
  clientOptions = [context clientOptions];
  v4 = clientOptions;
  v5 = MEMORY[0x1E695E0F8];
  if (clientOptions)
  {
    v5 = clientOptions;
  }

  v6 = v5;

  if ([MEMORY[0x1E696ACB0] isValidJSONObject:v6])
  {
    v7 = [MEMORY[0x1E698CAD0] promiseWithResult:v6];
  }

  else
  {
    mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedWebUIConfig];
    if (!mEMORY[0x1E698C968])
    {
      mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedConfig];
    }

    oSLogObject = [mEMORY[0x1E698C968] OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
    {
      v10 = objc_opt_class();
      v11 = AMSLogKey();
      v14 = 138543618;
      v15 = v10;
      v16 = 2114;
      v17 = v11;
      _os_log_impl(&dword_1BB036000, oSLogObject, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Cannot serialize client options", &v14, 0x16u);
    }

    v7 = 0;
  }

  v12 = *MEMORY[0x1E69E9840];

  return v7;
}

- (id)_deviceProperties
{
  v31[4] = *MEMORY[0x1E69E9840];
  if (os_variant_has_internal_content())
  {
    v2 = @"internal";
  }

  else
  {
    v2 = @"customer";
  }

  v3 = [objc_alloc(MEMORY[0x1E695DFF8]) initFileURLWithPath:@"/"];
  v4 = *MEMORY[0x1E695DD50];
  v31[0] = *MEMORY[0x1E695DD60];
  v31[1] = v4;
  v5 = *MEMORY[0x1E695DE98];
  v31[2] = *MEMORY[0x1E695DD58];
  v31[3] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v31 count:4];
  v24 = 0;
  v7 = [v3 resourceValuesForKeys:v6 error:&v24];
  v8 = v24;

  if (!v7)
  {
    mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedConfig];
    if (!mEMORY[0x1E698C968])
    {
      mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedConfig];
    }

    oSLogObject = [mEMORY[0x1E698C968] OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
    {
      v11 = objc_opt_class();
      v12 = AMSLogKey();
      *buf = 138543874;
      v26 = v11;
      v27 = 2114;
      v28 = v12;
      v29 = 2114;
      v30 = v8;
      _os_log_impl(&dword_1BB036000, oSLogObject, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to fetch resource keys for free space: %{public}@", buf, 0x20u);
    }
  }

  v13 = MEMORY[0x1E698CAD0];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __41__AMSUIWebJSProperties__deviceProperties__block_invoke;
  block[3] = &unk_1E7F243C0;
  v22 = v2;
  v23 = v7;
  v14 = _deviceProperties_ams_once_token___COUNTER__;
  v15 = v7;
  if (v14 != -1)
  {
    dispatch_once(&_deviceProperties_ams_once_token___COUNTER__, block);
  }

  v16 = v23;
  v17 = _deviceProperties_ams_once_object___COUNTER__;

  v18 = [v13 promiseWithResult:v17];

  v19 = *MEMORY[0x1E69E9840];

  return v18;
}

void __41__AMSUIWebJSProperties__deviceProperties__block_invoke(uint64_t a1)
{
  v71[27] = *MEMORY[0x1E69E9840];
  v71[0] = *(a1 + 32);
  v70[0] = @"buildType";
  v70[1] = @"buildVersion";
  v60 = [MEMORY[0x1E698C8A8] buildVersion];
  v2 = v60;
  if (!v60)
  {
    v2 = &stru_1F3921360;
  }

  v71[1] = v2;
  v70[2] = @"fileSystemFreeSize";
  v4 = *(a1 + 40);
  v3 = (a1 + 40);
  v59 = [v4 ams_objectForKey:*MEMORY[0x1E695DD60] defaultValue:&unk_1F394A768];
  v71[2] = v59;
  v70[3] = @"fileSystemImportantFreeSize";
  v58 = [*v3 ams_objectForKey:*MEMORY[0x1E695DD50] defaultValue:&unk_1F394A768];
  v71[3] = v58;
  v70[4] = @"fileSystemOpportunisticFreeSize";
  v57 = [*v3 ams_objectForKey:*MEMORY[0x1E695DD58] defaultValue:&unk_1F394A768];
  v71[4] = v57;
  v70[5] = @"fileSystemSize";
  v56 = [*v3 ams_objectForKey:*MEMORY[0x1E695DE98] defaultValue:&unk_1F394A768];
  v71[5] = v56;
  v70[6] = @"isPassLibraryAvailable";
  v5 = MEMORY[0x1E696AD98];
  v66 = 0;
  v67 = &v66;
  v68 = 0x2050000000;
  v6 = getPKPassLibraryClass_softClass_0;
  v69 = getPKPassLibraryClass_softClass_0;
  if (!getPKPassLibraryClass_softClass_0)
  {
    v61 = MEMORY[0x1E69E9820];
    v62 = 3221225472;
    v63 = __getPKPassLibraryClass_block_invoke_0;
    v64 = &unk_1E7F241B0;
    v65 = &v66;
    __getPKPassLibraryClass_block_invoke_0(&v61);
    v6 = v67[3];
  }

  v7 = v6;
  _Block_object_dispose(&v66, 8);
  v55 = [v5 numberWithBool:{objc_msgSend(v6, "isPassLibraryAvailable")}];
  v71[6] = v55;
  v70[7] = @"guid";
  v54 = [MEMORY[0x1E698C8A8] deviceGUID];
  v8 = v54;
  if (!v54)
  {
    v8 = &stru_1F3921360;
  }

  v71[7] = v8;
  v70[8] = @"isApplePayAvailable";
  v53 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(MEMORY[0x1E698C8A8], "isSecureElementAvailable")}];
  v71[8] = v53;
  v70[9] = @"isBundle";
  v52 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(MEMORY[0x1E698C8A8], "deviceIsBundle")}];
  v71[9] = v52;
  v70[10] = @"isCameraSupported";
  v51 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(MEMORY[0x1E6999018], "supportedCameraCount")}];
  v71[10] = v51;
  v70[11] = @"videoAuthorizationStatus";
  v50 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(MEMORY[0x1E69870A0], "authorizationStatusForMediaType:", *MEMORY[0x1E6987608])}];
  v71[11] = v50;
  v70[12] = @"isDiagnosticsSubmissionAllowed";
  v49 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(MEMORY[0x1E698CA00], "diagnosticsSubmissionAllowed")}];
  v71[12] = v49;
  v70[13] = @"canMakePayments";
  v9 = MEMORY[0x1E696AD98];
  v66 = 0;
  v67 = &v66;
  v68 = 0x2050000000;
  v10 = getPKPaymentAuthorizationControllerClass_softClass_0;
  v69 = getPKPaymentAuthorizationControllerClass_softClass_0;
  if (!getPKPaymentAuthorizationControllerClass_softClass_0)
  {
    v61 = MEMORY[0x1E69E9820];
    v62 = 3221225472;
    v63 = __getPKPaymentAuthorizationControllerClass_block_invoke_0;
    v64 = &unk_1E7F241B0;
    v65 = &v66;
    __getPKPaymentAuthorizationControllerClass_block_invoke_0(&v61);
    v10 = v67[3];
  }

  v11 = v10;
  _Block_object_dispose(&v66, 8);
  v48 = [v9 numberWithBool:{objc_msgSend(v10, "canMakePayments")}];
  v71[13] = v48;
  v70[14] = @"isGreenTea";
  v47 = [MEMORY[0x1E696AD98] numberWithBool:MGGetBoolAnswer()];
  v71[14] = v47;
  v70[15] = @"isScreenReaderRunning";
  v46 = [MEMORY[0x1E696AD98] numberWithBool:{+[AMSUIAccessibilityWrapper isVoiceOverRunning](AMSUIAccessibilityWrapper, "isVoiceOverRunning")}];
  v71[15] = v46;
  v70[16] = @"isWalletBiometricsEnabled";
  v45 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(MEMORY[0x1E698C8A8], "isWalletBiometricsEnabled")}];
  v71[16] = v45;
  v70[17] = @"language";
  v12 = [MEMORY[0x1E698C8A8] language];
  v13 = &stru_1F3921360;
  if (v12)
  {
    v13 = v12;
  }

  v71[17] = v13;
  v70[18] = @"languages";
  v14 = [MEMORY[0x1E698C8A8] languages];
  v15 = v14;
  v16 = &stru_1F3921360;
  if (v14)
  {
    v16 = v14;
  }

  v71[18] = v16;
  v70[19] = @"modelPartNumber";
  v17 = [MEMORY[0x1E698C8A8] modelPartNumber];
  v18 = v17;
  v19 = &stru_1F3921360;
  if (v17)
  {
    v19 = v17;
  }

  v71[19] = v19;
  v70[20] = @"os";
  v20 = [MEMORY[0x1E698C8A8] operatingSystem];
  v21 = v20;
  v22 = &stru_1F3921360;
  if (v20)
  {
    v22 = v20;
  }

  v71[20] = v22;
  v70[21] = @"osVersion";
  v23 = [MEMORY[0x1E698C8A8] productVersion];
  v24 = v23;
  v25 = &stru_1F3921360;
  if (v23)
  {
    v25 = v23;
  }

  v71[21] = v25;
  v70[22] = @"productType";
  v26 = [MEMORY[0x1E698C8A8] productType];
  v27 = v26;
  v28 = &stru_1F3921360;
  if (v26)
  {
    v28 = v26;
  }

  v71[22] = v28;
  v70[23] = @"regionCode";
  v29 = [MEMORY[0x1E698C8A8] regionCode];
  v30 = v29;
  v31 = &stru_1F3921360;
  if (v29)
  {
    v31 = v29;
  }

  v71[23] = v31;
  v70[24] = @"regionIdentifier";
  v32 = [MEMORY[0x1E698C8A8] regionIdentifier];
  v33 = v32;
  v34 = &stru_1F3921360;
  if (v32)
  {
    v34 = v32;
  }

  v71[24] = v34;
  v70[25] = @"secureElementID";
  v35 = [MEMORY[0x1E698C8A8] secureElementID];
  v36 = v35;
  v37 = &stru_1F3921360;
  if (v35)
  {
    v37 = v35;
  }

  v71[25] = v37;
  v70[26] = @"serial";
  v38 = [MEMORY[0x1E698C8A8] serialNumber];
  v39 = v38;
  v40 = &stru_1F3921360;
  if (v38)
  {
    v40 = v38;
  }

  v71[26] = v40;
  v41 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v71 forKeys:v70 count:27];
  v42 = _deviceProperties_ams_once_object___COUNTER__;
  _deviceProperties_ams_once_object___COUNTER__ = v41;

  v43 = *MEMORY[0x1E69E9840];
}

- (id)_pluginProperties
{
  v44 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  selfCopy = self;
  context = [(AMSUIWebJSProperties *)self context];
  pluginLoader = [context pluginLoader];
  loadedPlugins = [pluginLoader loadedPlugins];

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  obj = loadedPlugins;
  v7 = [obj countByEnumeratingWithState:&v33 objects:v43 count:16];
  if (v7)
  {
    v9 = v7;
    v10 = *v34;
    v11 = 0x1E698C000uLL;
    *&v8 = 138543874;
    v29 = v8;
    do
    {
      v12 = 0;
      v31 = v9;
      do
      {
        if (*v34 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v33 + 1) + 8 * v12);
        globalName = [v13 globalName];
        lowercaseString = [globalName lowercaseString];
        v16 = [v3 objectForKeyedSubscript:lowercaseString];

        if (v16)
        {
          sharedWebUIConfig = [*(v11 + 2408) sharedWebUIConfig];
          if (!sharedWebUIConfig)
          {
            sharedWebUIConfig = [*(v11 + 2408) sharedConfig];
          }

          oSLogObject = [sharedWebUIConfig OSLogObject];
          if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
          {
            v19 = v3;
            v20 = v10;
            v21 = v11;
            v22 = objc_opt_class();
            context2 = [(AMSUIWebJSProperties *)selfCopy context];
            logKey = [context2 logKey];
            globalName2 = [v13 globalName];
            *buf = v29;
            v38 = v22;
            v39 = 2114;
            v40 = logKey;
            v41 = 2114;
            v42 = globalName2;
            _os_log_impl(&dword_1BB036000, oSLogObject, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Skipping plugin with duplicate global name: %{public}@", buf, 0x20u);

            v11 = v21;
            v10 = v20;
            v3 = v19;
            v9 = v31;
          }
        }

        else
        {
          sharedWebUIConfig = [v13 generateGlobalProperties];
          oSLogObject = [v13 globalName];
          lowercaseString2 = [oSLogObject lowercaseString];
          [v3 setObject:sharedWebUIConfig forKeyedSubscript:lowercaseString2];
        }

        ++v12;
      }

      while (v9 != v12);
      v9 = [obj countByEnumeratingWithState:&v33 objects:v43 count:16];
    }

    while (v9);
  }

  v27 = *MEMORY[0x1E69E9840];

  return v3;
}

- (id)_processProperties
{
  v14[2] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E698CAD0];
  v13[0] = @"client";
  context = [(AMSUIWebJSProperties *)self context];
  clientInfo = [context clientInfo];
  v6 = [(AMSUIWebJSProperties *)self _propertiesForClientInfo:clientInfo];
  v13[1] = @"current";
  v14[0] = v6;
  currentProcess = [MEMORY[0x1E698CAC8] currentProcess];
  v8 = [(AMSUIWebJSProperties *)self _propertiesForClientInfo:currentProcess];
  v14[1] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:2];
  v10 = [v3 promiseWithResult:v9];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

- (id)_propertiesForClientInfo:(id)info
{
  v22[5] = *MEMORY[0x1E69E9840];
  v21[0] = @"accountMediaType";
  infoCopy = info;
  accountMediaType = [infoCopy accountMediaType];
  v5 = accountMediaType;
  if (accountMediaType)
  {
    v6 = accountMediaType;
  }

  else
  {
    v6 = &stru_1F3921360;
  }

  v22[0] = v6;
  v21[1] = @"bundleIdentifier";
  bundleIdentifier = [infoCopy bundleIdentifier];
  v8 = bundleIdentifier;
  if (bundleIdentifier)
  {
    v9 = bundleIdentifier;
  }

  else
  {
    v9 = &stru_1F3921360;
  }

  v22[1] = v9;
  v21[2] = @"bundleVersion";
  clientVersion = [infoCopy clientVersion];
  v11 = clientVersion;
  if (clientVersion)
  {
    v12 = clientVersion;
  }

  else
  {
    v12 = &stru_1F3921360;
  }

  v22[2] = v12;
  v21[3] = @"executableName";
  executableName = [infoCopy executableName];
  v14 = executableName;
  if (executableName)
  {
    v15 = executableName;
  }

  else
  {
    v15 = &stru_1F3921360;
  }

  v22[3] = v15;
  v21[4] = @"proxyApp";
  proxyAppBundleID = [infoCopy proxyAppBundleID];

  if (proxyAppBundleID)
  {
    v17 = proxyAppBundleID;
  }

  else
  {
    v17 = &stru_1F3921360;
  }

  v22[4] = v17;
  v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:v21 count:5];

  v19 = *MEMORY[0x1E69E9840];

  return v18;
}

- (id)_hexStringFromColor:(id)color
{
  if (color)
  {
    v13 = 0.0;
    v14 = 0.0;
    v12 = 0.0;
    v11 = 0;
    [color getRed:&v14 green:&v13 blue:&v12 alpha:&v11];
    v4 = v14 * 255.0;
    v5 = llroundf(v4);
    v6 = v13 * 255.0;
    v7 = llroundf(v6);
    v8 = v12 * 255.0;
    v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"#%02lX%02lX%02lX", v5, v7, llroundf(v8)];
  }

  else
  {
    v9 = &stru_1F3921360;
  }

  return v9;
}

- (AMSUIWebJSPropertiesDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (AMSUIWebClientContext)context
{
  WeakRetained = objc_loadWeakRetained(&self->_context);

  return WeakRetained;
}

@end