@interface ATBSActionListener
+ (void)initialize;
- (ATBSActionListener)initWithResponseHandler:(id)handler;
- (id)_uiApp;
- (id)handleBSActions:(id)actions;
- (void)appDidFinishLaunching:(id)launching;
- (void)startListening;
@end

@implementation ATBSActionListener

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    _BSActionListenerLogger = os_log_create("com.apple.AskTo", "BSActionListener");

    MEMORY[0x2821F96F8]();
  }
}

- (ATBSActionListener)initWithResponseHandler:(id)handler
{
  handlerCopy = handler;
  v12.receiver = self;
  v12.super_class = ATBSActionListener;
  v6 = [(ATBSActionListener *)&v12 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_responseHandler, handler);
    _uiApp = [(ATBSActionListener *)v7 _uiApp];
    v9 = NSSelectorFromString(&cfstr_Hasapplication.isa);
    if ((objc_opt_respondsToSelector() & 1) != 0 && [_uiApp performSelector:v9])
    {
      [handlerCopy notifyApplicationDidFinishLaunching];
    }

    else
    {
      defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
      [defaultCenter addObserver:v7 selector:sel_appDidFinishLaunching_ name:@"UIApplicationDidFinishLaunchingNotification" object:0];
    }
  }

  return v7;
}

- (id)_uiApp
{
  if (_uiApp_sniffUIApplicationOnce != -1)
  {
    [ATBSActionListener _uiApp];
  }

  v2 = _uiApp_uiApplicationClass;
  if (_uiApp_uiApplicationClass)
  {
    if (objc_opt_respondsToSelector())
    {
      v2 = [_uiApp_uiApplicationClass performSelector:_uiApp_sharedApplicationSelector];
    }

    else
    {
      v2 = 0;
    }
  }

  return v2;
}

SEL __28__ATBSActionListener__uiApp__block_invoke()
{
  _uiApp_uiApplicationClass = NSClassFromString(&cfstr_Uiapplication.isa);
  result = NSSelectorFromString(&cfstr_Sharedapplicat.isa);
  _uiApp_sharedApplicationSelector = result;
  return result;
}

- (void)appDidFinishLaunching:(id)launching
{
  responseHandler = [(ATBSActionListener *)self responseHandler];
  [responseHandler notifyApplicationDidFinishLaunching];
}

- (void)startListening
{
  _uiApp = [(ATBSActionListener *)self _uiApp];
  v4 = NSSelectorFromString(&cfstr_Registerbsacti.isa);
  if (objc_opt_respondsToSelector())
  {
    [_uiApp performSelector:v4 withObject:self];
    v5 = _BSActionListenerLogger;
    if (os_log_type_enabled(_BSActionListenerLogger, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_2258D2000, v5, OS_LOG_TYPE_DEFAULT, "BSActionListener registered for BSAction handling", v6, 2u);
    }
  }
}

- (id)handleBSActions:(id)actions
{
  v33 = *MEMORY[0x277D85DE8];
  actionsCopy = actions;
  v4 = _BSActionListenerLogger;
  if (os_log_type_enabled(_BSActionListenerLogger, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2258D2000, v4, OS_LOG_TYPE_DEFAULT, "handleBSActions: called", buf, 2u);
  }

  array = [MEMORY[0x277CBEB18] array];
  v6 = [MEMORY[0x277CBEB58] set];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v7 = actionsCopy;
  v8 = [v7 countByEnumeratingWithState:&v26 objects:v32 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v27;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v27 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v26 + 1) + 8 * i);
        info = [v12 info];
        v14 = [info objectForSetting:483941];

        if (v14)
        {
          v15 = [ATResponseDecoder responseFromJSONData:v14];
          if (v15)
          {
            [array addObject:v15];
            [v6 addObject:v12];
          }

          else
          {
            v17 = _BSActionListenerLogger;
            if (os_log_type_enabled(_BSActionListenerLogger, OS_LOG_TYPE_ERROR))
            {
              [(ATBSActionListener *)&v24 handleBSActions:v25, v17];
            }
          }
        }

        else
        {
          v16 = _BSActionListenerLogger;
          if (os_log_type_enabled(_BSActionListenerLogger, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v31 = v12;
            _os_log_impl(&dword_2258D2000, v16, OS_LOG_TYPE_DEFAULT, "Failed to derive response data from BSAction: %@", buf, 0xCu);
          }
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v26 objects:v32 count:16];
    }

    while (v9);
  }

  if ([array count])
  {
    v18 = _BSActionListenerLogger;
    if (os_log_type_enabled(_BSActionListenerLogger, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_2258D2000, v18, OS_LOG_TYPE_DEFAULT, "handleBSActions: we have incoming responses to deliver to the client.", buf, 2u);
    }

    responseHandler = [(ATBSActionListener *)self responseHandler];
    [responseHandler processIncomingResponses:array];
  }

  v20 = [v7 mutableCopy];
  [v20 minusSet:v6];

  v21 = *MEMORY[0x277D85DE8];

  return v20;
}

- (void)handleBSActions:(os_log_t)log .cold.1(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&dword_2258D2000, log, OS_LOG_TYPE_ERROR, "Failed to decode response from data. Dropping response.", buf, 2u);
}

@end