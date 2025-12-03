@interface SKProductPageExtension
+ (id)serviceInterface;
- (BOOL)_isClientEntitled;
- (id)_createNavigationItem;
- (void)_setAskToBuy:(BOOL)buy;
- (void)_setCancelButtonTitle:(id)title;
- (void)_setPromptString:(id)string;
- (void)_setRightBarButtonTitle:(id)title;
- (void)_setShowsRightBarButton:(BOOL)button;
- (void)_setShowsStoreButton:(BOOL)button;
- (void)_setUsageContext:(id)context;
- (void)_setupWithClientBundleID:(id)d bagType:(int64_t)type;
- (void)clientLookupItemDidLoad:(id)load parameters:(id)parameters;
- (void)finishWithResult:(unint64_t)result completion:(id)completion;
- (void)loadDidFinish;
- (void)setupWithCancelButtonTitle:(id)title rightBarButtonTitle:(id)buttonTitle showsStoreButton:(BOOL)button promptString:(id)string askToBuy:(BOOL)buy;
- (void)userDidInteractWithProduct:(unint64_t)product;
@end

@implementation SKProductPageExtension

- (void)finishWithResult:(unint64_t)result completion:(id)completion
{
  completionCopy = completion;
  _remoteViewControllerProxy = [(SKProductPageExtension *)self _remoteViewControllerProxy];
  if (_remoteViewControllerProxy)
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __54__SKProductPageExtension_finishWithResult_completion___block_invoke;
    v8[3] = &unk_1E7B27900;
    v9 = completionCopy;
    [_remoteViewControllerProxy finishWithResult:result completion:v8];
  }

  else
  {
    [(SKProductPageExtension *)self dismissViewControllerAnimated:1 completion:completionCopy];
  }
}

uint64_t __54__SKProductPageExtension_finishWithResult_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)loadDidFinish
{
  v3 = *MEMORY[0x1E69DD930];
  view = [(SKProductPageExtension *)self view];
  UIAccessibilityPostNotification(v3, view);

  _remoteViewControllerProxy = [(SKProductPageExtension *)self _remoteViewControllerProxy];
  if (_remoteViewControllerProxy)
  {
    v6 = _remoteViewControllerProxy;
    [_remoteViewControllerProxy loadDidFinish];
    _remoteViewControllerProxy = v6;
  }
}

- (void)userDidInteractWithProduct:(unint64_t)product
{
  _remoteViewControllerProxy = [(SKProductPageExtension *)self _remoteViewControllerProxy];
  if (_remoteViewControllerProxy)
  {
    v5 = _remoteViewControllerProxy;
    [_remoteViewControllerProxy userDidInteractWithProduct:product];
    _remoteViewControllerProxy = v5;
  }
}

- (void)setupWithCancelButtonTitle:(id)title rightBarButtonTitle:(id)buttonTitle showsStoreButton:(BOOL)button promptString:(id)string askToBuy:(BOOL)buy
{
  v18 = *MEMORY[0x1E69E9840];
  titleCopy = title;
  buttonTitleCopy = buttonTitle;
  stringCopy = string;
  if (SKLogHandleForCategory_onceToken != -1)
  {
    [SKProductPageExtension setupWithCancelButtonTitle:rightBarButtonTitle:showsStoreButton:promptString:askToBuy:];
  }

  v13 = SKLogHandleForCategory_logHandles_9;
  if (os_log_type_enabled(SKLogHandleForCategory_logHandles_9, OS_LOG_TYPE_INFO))
  {
    v16 = 138543362;
    selfCopy = self;
    _os_log_impl(&dword_1B23EF000, v13, OS_LOG_TYPE_INFO, "[%{public}@]: Subclass hasn't implemented setupWithCancelButtonTitle:rightBarButtonTitle:showsStoreButton:promptString:askToBuy:. Falling back to setupWithCustomNavigationItem:promptString:askToBuy:", &v16, 0xCu);
  }

  _createNavigationItem = [(SKProductPageExtension *)self _createNavigationItem];
  promptString = [(SKProductPageExtension *)self promptString];
  [(SKProductPageExtension *)self setupWithCustomNavigationItem:_createNavigationItem promptString:promptString askToBuy:[(SKProductPageExtension *)self askToBuy]];
}

- (void)clientLookupItemDidLoad:(id)load parameters:(id)parameters
{
  parametersCopy = parameters;
  loadCopy = load;
  v8 = [parametersCopy objectForKey:@"isViewOnly"];

  if (v8)
  {
    [(SKProductPageExtension *)self setShowsStoreButton:0];
  }

  if ([(SKProductPageExtension *)self showsRightBarButton])
  {
    rightBarButtonTitle = [(SKProductPageExtension *)self rightBarButtonTitle];
  }

  else
  {
    rightBarButtonTitle = 0;
  }

  cancelButtonTitle = [(SKProductPageExtension *)self cancelButtonTitle];
  showsStoreButton = [(SKProductPageExtension *)self showsStoreButton];
  promptString = [(SKProductPageExtension *)self promptString];
  [(SKProductPageExtension *)self setupWithCancelButtonTitle:cancelButtonTitle rightBarButtonTitle:rightBarButtonTitle showsStoreButton:showsStoreButton promptString:promptString askToBuy:[(SKProductPageExtension *)self askToBuy]];

  LODWORD(cancelButtonTitle) = [(SKProductPageExtension *)self lookupItemDidLoad:loadCopy parameters:parametersCopy];
  if (cancelButtonTitle)
  {
    [(SKProductPageExtension *)self loadDidFinish];
  }
}

+ (id)serviceInterface
{
  v2 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F29F7000];
  v3 = MEMORY[0x1E695DFD8];
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = [v3 setWithObjects:{v4, v5, v6, v7, v8, objc_opt_class(), 0}];
  [v2 setClasses:v9 forSelector:sel_clientLookupItemDidLoad_parameters_ argumentIndex:0 ofReply:0];

  return v2;
}

- (id)_createNavigationItem
{
  v3 = objc_alloc_init(MEMORY[0x1E69DCCE0]);
  cancelButtonTitle = [(SKProductPageExtension *)self cancelButtonTitle];

  v5 = objc_alloc(MEMORY[0x1E69DC708]);
  v6 = v5;
  if (cancelButtonTitle)
  {
    cancelButtonTitle2 = [(SKProductPageExtension *)self cancelButtonTitle];
    v8 = [v6 initWithTitle:cancelButtonTitle2 style:0 target:self action:sel_cancelButtonPressed_];
    [v3 setLeftBarButtonItem:v8];
  }

  else
  {
    cancelButtonTitle2 = [v5 initWithBarButtonSystemItem:0 target:self action:sel_cancelButtonPressed_];
    [v3 setLeftBarButtonItem:cancelButtonTitle2];
  }

  if ([(SKProductPageExtension *)self showsRightBarButton]&& ([(SKProductPageExtension *)self rightBarButtonTitle], v9 = objc_claimAutoreleasedReturnValue(), v9, v9))
  {
    v10 = objc_alloc(MEMORY[0x1E69DC708]);
    rightBarButtonTitle = [(SKProductPageExtension *)self rightBarButtonTitle];
    v12 = [v10 initWithTitle:rightBarButtonTitle style:0 target:self action:sel_rightBarButtonPressed_];
    [v3 setRightBarButtonItem:v12];
  }

  else
  {
    if (![(SKProductPageExtension *)self showsStoreButton])
    {
      goto LABEL_10;
    }

    v13 = objc_alloc(MEMORY[0x1E69DC708]);
    rightBarButtonTitle = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v12 = [rightBarButtonTitle localizedStringForKey:@"VIEW_IN_STORE" value:&stru_1F29BCE20 table:0];
    v14 = [v13 initWithTitle:v12 style:0 target:self action:sel_storeButtonPressed_];
    [v3 setRightBarButtonItem:v14];
  }

LABEL_10:

  return v3;
}

- (void)_setShowsStoreButton:(BOOL)button
{
  buttonCopy = button;
  if ([(SKProductPageExtension *)self _isClientEntitled])
  {

    [(SKProductPageExtension *)self setShowsStoreButton:buttonCopy];
  }

  else
  {
    if (SKLogHandleForCategory_onceToken != -1)
    {
      [SKProductPageExtension setupWithCancelButtonTitle:rightBarButtonTitle:showsStoreButton:promptString:askToBuy:];
    }

    if (os_log_type_enabled(SKLogHandleForCategory_logHandles_9, OS_LOG_TYPE_ERROR))
    {
      [SKProductPageExtension _setShowsStoreButton:];
    }
  }
}

- (void)_setCancelButtonTitle:(id)title
{
  titleCopy = title;
  if ([(SKProductPageExtension *)self _isClientEntitled])
  {
    [(SKProductPageExtension *)self setCancelButtonTitle:titleCopy];
  }

  else
  {
    if (SKLogHandleForCategory_onceToken != -1)
    {
      [SKProductPageExtension setupWithCancelButtonTitle:rightBarButtonTitle:showsStoreButton:promptString:askToBuy:];
    }

    if (os_log_type_enabled(SKLogHandleForCategory_logHandles_9, OS_LOG_TYPE_ERROR))
    {
      [SKProductPageExtension _setCancelButtonTitle:];
    }
  }
}

- (void)_setRightBarButtonTitle:(id)title
{
  titleCopy = title;
  if ([(SKProductPageExtension *)self _isClientEntitled])
  {
    [(SKProductPageExtension *)self setRightBarButtonTitle:titleCopy];
  }

  else
  {
    if (SKLogHandleForCategory_onceToken != -1)
    {
      [SKProductPageExtension setupWithCancelButtonTitle:rightBarButtonTitle:showsStoreButton:promptString:askToBuy:];
    }

    if (os_log_type_enabled(SKLogHandleForCategory_logHandles_9, OS_LOG_TYPE_ERROR))
    {
      [SKProductPageExtension _setRightBarButtonTitle:];
    }
  }
}

- (void)_setShowsRightBarButton:(BOOL)button
{
  buttonCopy = button;
  if ([(SKProductPageExtension *)self _isClientEntitled])
  {

    [(SKProductPageExtension *)self setShowsRightBarButton:buttonCopy];
  }

  else
  {
    if (SKLogHandleForCategory_onceToken != -1)
    {
      [SKProductPageExtension setupWithCancelButtonTitle:rightBarButtonTitle:showsStoreButton:promptString:askToBuy:];
    }

    if (os_log_type_enabled(SKLogHandleForCategory_logHandles_9, OS_LOG_TYPE_ERROR))
    {
      [SKProductPageExtension _setShowsRightBarButton:];
    }
  }
}

- (void)_setPromptString:(id)string
{
  stringCopy = string;
  if ([(SKProductPageExtension *)self _isClientEntitled])
  {
    [(SKProductPageExtension *)self setPromptString:stringCopy];
  }

  else
  {
    if (SKLogHandleForCategory_onceToken != -1)
    {
      [SKProductPageExtension setupWithCancelButtonTitle:rightBarButtonTitle:showsStoreButton:promptString:askToBuy:];
    }

    if (os_log_type_enabled(SKLogHandleForCategory_logHandles_9, OS_LOG_TYPE_ERROR))
    {
      [SKProductPageExtension _setPromptString:];
    }
  }
}

- (void)_setAskToBuy:(BOOL)buy
{
  buyCopy = buy;
  if ([(SKProductPageExtension *)self _isClientEntitled])
  {

    [(SKProductPageExtension *)self setAskToBuy:buyCopy];
  }

  else
  {
    if (SKLogHandleForCategory_onceToken != -1)
    {
      [SKProductPageExtension setupWithCancelButtonTitle:rightBarButtonTitle:showsStoreButton:promptString:askToBuy:];
    }

    if (os_log_type_enabled(SKLogHandleForCategory_logHandles_9, OS_LOG_TYPE_ERROR))
    {
      [SKProductPageExtension _setAskToBuy:];
    }
  }
}

- (void)_setUsageContext:(id)context
{
  contextCopy = context;
  if ([(SKProductPageExtension *)self _isClientEntitled])
  {
    [(SKProductPageExtension *)self setUsageContext:contextCopy];
  }

  else
  {
    if (SKLogHandleForCategory_onceToken != -1)
    {
      [SKProductPageExtension setupWithCancelButtonTitle:rightBarButtonTitle:showsStoreButton:promptString:askToBuy:];
    }

    if (os_log_type_enabled(SKLogHandleForCategory_logHandles_9, OS_LOG_TYPE_ERROR))
    {
      [SKProductPageExtension _setUsageContext:];
    }
  }
}

- (void)_setupWithClientBundleID:(id)d bagType:(int64_t)type
{
  dCopy = d;
  if ([(SKProductPageExtension *)self _isClientEntitled])
  {
    [(SKProductPageExtension *)self setupWithClientBundleID:dCopy bagType:type];
  }

  else
  {
    _hostApplicationBundleIdentifier = [(SKProductPageExtension *)self _hostApplicationBundleIdentifier];
    [(SKProductPageExtension *)self setupWithClientBundleID:_hostApplicationBundleIdentifier bagType:type];
  }
}

- (BOOL)_isClientEntitled
{
  if (!_os_feature_enabled_impl())
  {
    return 1;
  }

  [(SKProductPageExtension *)self _hostAuditToken];
  return [SKEntitlementChecker isProcessEntitled:&v4 entitlementName:@"com.apple.itunesstored.private"];
}

@end