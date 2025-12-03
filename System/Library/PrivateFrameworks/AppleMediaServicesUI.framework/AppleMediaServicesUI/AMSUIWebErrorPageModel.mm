@interface AMSUIWebErrorPageModel
+ (id)_messageFromError:(id)error;
- (AMSUIWebErrorPageModel)initWithError:(id)error context:(id)context actionBlock:(id)block;
- (AMSUIWebErrorPageModel)initWithJSObject:(id)object context:(id)context;
- (AMSUIWebErrorPageModelDelegate)delegate;
- (CGSize)windowSize;
- (NSString)description;
- (NSString)errorMessage;
- (id)createViewControllerForContainer:(id)container;
- (void)_startMonitoringNetwork;
- (void)_updateForNetworkConnectivityChange:(BOOL)change;
@end

@implementation AMSUIWebErrorPageModel

- (AMSUIWebErrorPageModel)initWithError:(id)error context:(id)context actionBlock:(id)block
{
  errorCopy = error;
  contextCopy = context;
  blockCopy = block;
  userInfo = [errorCopy userInfo];
  v13 = [userInfo objectForKeyedSubscript:@"errorPageModel"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  if (v14)
  {
    v15 = [(AMSUIWebErrorPageModel *)self initWithJSObject:v14 context:contextCopy];
  }

  else
  {
    v41.receiver = self;
    v41.super_class = AMSUIWebErrorPageModel;
    v15 = [(AMSUIWebErrorPageModel *)&v41 init];
  }

  v16 = v15;
  if (v15)
  {
    v17 = _Block_copy(blockCopy);
    actionBlock = v16->_actionBlock;
    v16->_actionBlock = v17;

    v19 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleMediaServicesUI"];
    bundle = v16->_bundle;
    v16->_bundle = v19;

    objc_storeStrong(&v16->_error, error);
    objc_storeStrong(&v16->_context, context);
    v16->_hasNetworkConnection = 1;
    v21 = nw_path_monitor_create();
    pathMonitor = v16->_pathMonitor;
    v16->_pathMonitor = v21;

    v23 = v16->_pathMonitor;
    v24 = dispatch_get_global_queue(0, 0);
    nw_path_monitor_set_queue(v23, v24);

    [(AMSUIWebErrorPageModel *)v16 _startMonitoringNetwork];
    v25 = objc_alloc_init(AMSUIAirplaneModeInquiry);
    isEnabled = [(AMSUIAirplaneModeInquiry *)v25 isEnabled];
    userInfo2 = [errorCopy userInfo];
    v28 = [userInfo2 objectForKeyedSubscript:*MEMORY[0x1E696AA08]];

    objc_opt_class();
    v29 = 0;
    if (objc_opt_isKindOfClass())
    {
      v29 = v28;
    }

    if (v29 && ([v29 domain], v30 = objc_claimAutoreleasedReturnValue(), v31 = v30 == *MEMORY[0x1E695AD78] && isEnabled, v30, v31 == 1))
    {
      bundle = [(AMSUIWebErrorPageModel *)v16 bundle];
      v33 = [bundle localizedStringForKey:@"WIFI_AIRPLANE_MODE_ERROR" value:&stru_1F3921360 table:0];
      errorTitle = v16->_errorTitle;
      v16->_errorTitle = v33;

      v35 = [objc_opt_class() _messageFromError:errorCopy];
      errorMessage = v16->_errorMessage;
      v16->_errorMessage = v35;
    }

    else if (!v14)
    {
      v37 = v16->_errorTitle;
      v16->_errorTitle = 0;

      v38 = [objc_opt_class() _messageFromError:errorCopy];
      v39 = v16->_errorMessage;
      v16->_errorMessage = v38;

      v16->_errorMessageInternalOnly = 1;
    }
  }

  return v16;
}

- (AMSUIWebErrorPageModel)initWithJSObject:(id)object context:(id)context
{
  objectCopy = object;
  contextCopy = context;
  if (objectCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v34.receiver = self;
    v34.super_class = AMSUIWebErrorPageModel;
    v9 = [(AMSUIWebErrorPageModel *)&v34 init];
    if (v9)
    {
      v10 = [objectCopy objectForKeyedSubscript:@"action"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v11 = v10;
      }

      else
      {
        v11 = 0;
      }

      v12 = [AMSUIWebActionMapper actionFromJSObject:v11 context:contextCopy];
      action = v9->_action;
      v9->_action = v12;

      v14 = [AMSUIWebModel backgroundColorFromPageModel:objectCopy];
      backgroundColor = v9->_backgroundColor;
      v9->_backgroundColor = v14;

      v16 = [AMSUIWebModel impressionEventFromPageModel:objectCopy context:contextCopy];
      impressionEvent = v9->_impressionEvent;
      v9->_impressionEvent = v16;

      v18 = [AMSUIWebModel navigationBarFromPageModel:objectCopy context:contextCopy];
      navigationBar = v9->_navigationBar;
      v9->_navigationBar = v18;

      [AMSUIWebModel windowSizeFromPageModel:objectCopy];
      v9->_windowSize.width = v20;
      v9->_windowSize.height = v21;
      v22 = [objectCopy objectForKeyedSubscript:@"actionButtonTitle"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v23 = v22;
      }

      else
      {
        v23 = 0;
      }

      actionButtonTitle = v9->_actionButtonTitle;
      v9->_actionButtonTitle = v23;

      objc_storeStrong(&v9->_context, context);
      v25 = [objectCopy objectForKeyedSubscript:@"errorMessage"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v26 = v25;
      }

      else
      {
        v26 = 0;
      }

      errorMessage = v9->_errorMessage;
      v9->_errorMessage = v26;

      v28 = [objectCopy objectForKeyedSubscript:@"errorTitle"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v29 = v28;
      }

      else
      {
        v29 = 0;
      }

      errorTitle = v9->_errorTitle;
      v9->_errorTitle = v29;

      v31 = [objectCopy objectForKeyedSubscript:@"errorMessageInternalOnly"];
      if (objc_opt_respondsToSelector())
      {
        v32 = [objectCopy objectForKeyedSubscript:@"errorMessageInternalOnly"];
        v9->_errorMessageInternalOnly = [v32 BOOLValue];
      }

      else
      {
        v9->_errorMessageInternalOnly = 0;
      }
    }

    self = v9;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (NSString)errorMessage
{
  v3 = self->_errorMessage;
  if ([(AMSUIWebErrorPageModel *)self errorMessageInternalOnly])
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"INTERNAL ONLY: %@", v3];

    v3 = v4;
  }

  return v3;
}

- (NSString)description
{
  v26[3] = *MEMORY[0x1E69E9840];
  v25[0] = @"disableReappearPlaceholder";
  if ([(AMSUIWebErrorPageModel *)self disableReappearPlaceholder])
  {
    v3 = @"true";
  }

  else
  {
    v3 = @"false";
  }

  v26[0] = v3;
  v25[1] = @"errorMessageInternalOnly";
  if ([(AMSUIWebErrorPageModel *)self errorMessageInternalOnly])
  {
    v4 = @"true";
  }

  else
  {
    v4 = @"false";
  }

  v26[1] = v4;
  v25[2] = @"windowSize";
  [(AMSUIWebErrorPageModel *)self windowSize];
  v5 = NSStringFromCGSize(v28);
  v26[2] = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:v25 count:3];
  v7 = [v6 mutableCopy];

  action = [(AMSUIWebErrorPageModel *)self action];

  if (action)
  {
    action2 = [(AMSUIWebErrorPageModel *)self action];
    [v7 setObject:action2 forKey:@"action"];
  }

  actionButtonTitle = [(AMSUIWebErrorPageModel *)self actionButtonTitle];

  if (actionButtonTitle)
  {
    actionButtonTitle2 = [(AMSUIWebErrorPageModel *)self actionButtonTitle];
    [v7 setObject:actionButtonTitle2 forKey:@"actionButtonTitle"];
  }

  backgroundColor = [(AMSUIWebErrorPageModel *)self backgroundColor];

  if (backgroundColor)
  {
    backgroundColor2 = [(AMSUIWebErrorPageModel *)self backgroundColor];
    [v7 setObject:backgroundColor2 forKey:@"backgroundColor"];
  }

  errorMessage = [(AMSUIWebErrorPageModel *)self errorMessage];

  if (errorMessage)
  {
    errorMessage2 = [(AMSUIWebErrorPageModel *)self errorMessage];
    [v7 setObject:errorMessage2 forKey:@"errorMessage"];
  }

  errorTitle = [(AMSUIWebErrorPageModel *)self errorTitle];

  if (errorTitle)
  {
    errorTitle2 = [(AMSUIWebErrorPageModel *)self errorTitle];
    [v7 setObject:errorTitle2 forKey:@"errorTitle"];
  }

  impressionEvent = [(AMSUIWebErrorPageModel *)self impressionEvent];

  if (impressionEvent)
  {
    impressionEvent2 = [(AMSUIWebErrorPageModel *)self impressionEvent];
    [v7 setObject:impressionEvent2 forKey:@"impressionEvent"];
  }

  navigationBar = [(AMSUIWebErrorPageModel *)self navigationBar];

  if (navigationBar)
  {
    navigationBar2 = [(AMSUIWebErrorPageModel *)self navigationBar];
    [v7 setObject:navigationBar2 forKey:@"navigationBar"];
  }

  v22 = [v7 description];

  v23 = *MEMORY[0x1E69E9840];

  return v22;
}

- (id)createViewControllerForContainer:(id)container
{
  v4 = [AMSUIWebErrorViewController alloc];
  context = [(AMSUIWebErrorPageModel *)self context];
  v6 = [(AMSUIWebErrorViewController *)v4 initWithContext:context];

  return v6;
}

- (void)_startMonitoringNetwork
{
  objc_initWeak(&location, self);
  pathMonitor = self->_pathMonitor;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __49__AMSUIWebErrorPageModel__startMonitoringNetwork__block_invoke;
  v4[3] = &unk_1E7F260E8;
  objc_copyWeak(&v5, &location);
  nw_path_monitor_set_update_handler(pathMonitor, v4);
  nw_path_monitor_start(self->_pathMonitor);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __49__AMSUIWebErrorPageModel__startMonitoringNetwork__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    status = nw_path_get_status(v3);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __49__AMSUIWebErrorPageModel__startMonitoringNetwork__block_invoke_2;
    v6[3] = &unk_1E7F260C0;
    v7 = status == nw_path_status_satisfied;
    v6[4] = WeakRetained;
    dispatch_async(MEMORY[0x1E69E96A0], v6);
  }
}

uint64_t __49__AMSUIWebErrorPageModel__startMonitoringNetwork__block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 40);
  result = [*(a1 + 32) hasNetworkConnection];
  if (v2 != result)
  {
    [*(a1 + 32) setHasNetworkConnection:*(a1 + 40)];
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);

    return [v4 _updateForNetworkConnectivityChange:v5];
  }

  return result;
}

+ (id)_messageFromError:(id)error
{
  errorCopy = error;
  v4 = [MEMORY[0x1E696AD60] stringWithFormat:@"[%ld]", objc_msgSend(errorCopy, "code")];
  ams_title = [errorCopy ams_title];
  if (ams_title)
  {
    ams_title2 = ams_title;
LABEL_4:
    [v4 appendFormat:@" %@", ams_title2];

    v9 = 0;
    goto LABEL_5;
  }

  userInfo = [errorCopy userInfo];
  v8 = [userInfo objectForKeyedSubscript:*MEMORY[0x1E696AA08]];
  ams_title2 = [v8 ams_title];

  if (ams_title2)
  {
    goto LABEL_4;
  }

  v9 = 1;
LABEL_5:
  ams_message = [errorCopy ams_message];
  if (ams_message)
  {
    ams_message2 = ams_message;
  }

  else
  {
    userInfo2 = [errorCopy userInfo];
    v13 = [userInfo2 objectForKeyedSubscript:*MEMORY[0x1E696AA08]];
    ams_message2 = [v13 ams_message];

    if (!ams_message2)
    {
      goto LABEL_11;
    }
  }

  if ((v9 & 1) == 0)
  {
    [v4 appendString:@":"];
  }

  [v4 appendFormat:@" %@", ams_message2];

LABEL_11:

  return v4;
}

- (void)_updateForNetworkConnectivityChange:(BOOL)change
{
  if (change)
  {
    objc_storeStrong(&self->_action, self->_cachedAction);
    cachedActionBlock = self->_cachedActionBlock;
    if (cachedActionBlock)
    {
      v5 = _Block_copy(cachedActionBlock);
      actionBlock = self->_actionBlock;
      self->_actionBlock = v5;
    }

    delegate = [(AMSUIWebErrorPageModel *)self delegate];
    v8 = objc_opt_respondsToSelector();

    if (v8)
    {
      delegate2 = [(AMSUIWebErrorPageModel *)self delegate];
      networkRestored = [delegate2 networkRestored];
      action = delegate2;
LABEL_11:

      MEMORY[0x1EEE66BB8](networkRestored, action);
    }
  }

  else
  {
    self->_errorMessageInternalOnly = 0;
    bundle = [(AMSUIWebErrorPageModel *)self bundle];
    v12 = [bundle localizedStringForKey:@"NETWORK_ERROR_TITLE" value:&stru_1F3921360 table:0];
    errorTitle = self->_errorTitle;
    self->_errorTitle = v12;

    LODWORD(bundle) = MGGetBoolAnswer();
    bundle2 = [(AMSUIWebErrorPageModel *)self bundle];
    v15 = bundle2;
    if (bundle)
    {
      v16 = @"WLAN_NETWORK_ERROR_MESSAGE";
    }

    else
    {
      v16 = @"WIFI_NETWORK_ERROR_MESSAGE";
    }

    v17 = [bundle2 localizedStringForKey:v16 value:&stru_1F3921360 table:0];
    errorMessage = self->_errorMessage;
    self->_errorMessage = v17;

    if ([(AMSUIWebErrorPageModel *)self _canOpenSettings])
    {
      bundle3 = [(AMSUIWebErrorPageModel *)self bundle];
      v20 = [bundle3 localizedStringForKey:@"NETWORK_ERROR_BUTTON" value:&stru_1F3921360 table:0];
      actionButtonTitle = self->_actionButtonTitle;
      self->_actionButtonTitle = v20;

      objc_storeStrong(&self->_cachedAction, self->_action);
      v22 = _Block_copy(self->_actionBlock);
      v23 = self->_cachedActionBlock;
      self->_cachedActionBlock = v22;

      v24 = [AMSUIWiFiSettingsAction alloc];
      networkRestored = [(AMSUIWiFiSettingsAction *)v24 initWithJSObject:MEMORY[0x1E695E0F8] context:self->_context];
      action = self->_action;
      self->_action = networkRestored;
      goto LABEL_11;
    }
  }
}

- (CGSize)windowSize
{
  width = self->_windowSize.width;
  height = self->_windowSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (AMSUIWebErrorPageModelDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end