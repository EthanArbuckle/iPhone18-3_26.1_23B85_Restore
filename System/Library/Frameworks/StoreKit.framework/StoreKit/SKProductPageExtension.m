@interface SKProductPageExtension
+ (id)serviceInterface;
- (BOOL)_isClientEntitled;
- (id)_createNavigationItem;
- (void)_setAskToBuy:(BOOL)a3;
- (void)_setCancelButtonTitle:(id)a3;
- (void)_setPromptString:(id)a3;
- (void)_setRightBarButtonTitle:(id)a3;
- (void)_setShowsRightBarButton:(BOOL)a3;
- (void)_setShowsStoreButton:(BOOL)a3;
- (void)_setUsageContext:(id)a3;
- (void)_setupWithClientBundleID:(id)a3 bagType:(int64_t)a4;
- (void)clientLookupItemDidLoad:(id)a3 parameters:(id)a4;
- (void)finishWithResult:(unint64_t)a3 completion:(id)a4;
- (void)loadDidFinish;
- (void)setupWithCancelButtonTitle:(id)a3 rightBarButtonTitle:(id)a4 showsStoreButton:(BOOL)a5 promptString:(id)a6 askToBuy:(BOOL)a7;
- (void)userDidInteractWithProduct:(unint64_t)a3;
@end

@implementation SKProductPageExtension

- (void)finishWithResult:(unint64_t)a3 completion:(id)a4
{
  v6 = a4;
  v7 = [(SKProductPageExtension *)self _remoteViewControllerProxy];
  if (v7)
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __54__SKProductPageExtension_finishWithResult_completion___block_invoke;
    v8[3] = &unk_1E7B27900;
    v9 = v6;
    [v7 finishWithResult:a3 completion:v8];
  }

  else
  {
    [(SKProductPageExtension *)self dismissViewControllerAnimated:1 completion:v6];
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
  v4 = [(SKProductPageExtension *)self view];
  UIAccessibilityPostNotification(v3, v4);

  v5 = [(SKProductPageExtension *)self _remoteViewControllerProxy];
  if (v5)
  {
    v6 = v5;
    [v5 loadDidFinish];
    v5 = v6;
  }
}

- (void)userDidInteractWithProduct:(unint64_t)a3
{
  v4 = [(SKProductPageExtension *)self _remoteViewControllerProxy];
  if (v4)
  {
    v5 = v4;
    [v4 userDidInteractWithProduct:a3];
    v4 = v5;
  }
}

- (void)setupWithCancelButtonTitle:(id)a3 rightBarButtonTitle:(id)a4 showsStoreButton:(BOOL)a5 promptString:(id)a6 askToBuy:(BOOL)a7
{
  v18 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a6;
  if (SKLogHandleForCategory_onceToken != -1)
  {
    [SKProductPageExtension setupWithCancelButtonTitle:rightBarButtonTitle:showsStoreButton:promptString:askToBuy:];
  }

  v13 = SKLogHandleForCategory_logHandles_9;
  if (os_log_type_enabled(SKLogHandleForCategory_logHandles_9, OS_LOG_TYPE_INFO))
  {
    v16 = 138543362;
    v17 = self;
    _os_log_impl(&dword_1B23EF000, v13, OS_LOG_TYPE_INFO, "[%{public}@]: Subclass hasn't implemented setupWithCancelButtonTitle:rightBarButtonTitle:showsStoreButton:promptString:askToBuy:. Falling back to setupWithCustomNavigationItem:promptString:askToBuy:", &v16, 0xCu);
  }

  v14 = [(SKProductPageExtension *)self _createNavigationItem];
  v15 = [(SKProductPageExtension *)self promptString];
  [(SKProductPageExtension *)self setupWithCustomNavigationItem:v14 promptString:v15 askToBuy:[(SKProductPageExtension *)self askToBuy]];
}

- (void)clientLookupItemDidLoad:(id)a3 parameters:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v6 objectForKey:@"isViewOnly"];

  if (v8)
  {
    [(SKProductPageExtension *)self setShowsStoreButton:0];
  }

  if ([(SKProductPageExtension *)self showsRightBarButton])
  {
    v12 = [(SKProductPageExtension *)self rightBarButtonTitle];
  }

  else
  {
    v12 = 0;
  }

  v9 = [(SKProductPageExtension *)self cancelButtonTitle];
  v10 = [(SKProductPageExtension *)self showsStoreButton];
  v11 = [(SKProductPageExtension *)self promptString];
  [(SKProductPageExtension *)self setupWithCancelButtonTitle:v9 rightBarButtonTitle:v12 showsStoreButton:v10 promptString:v11 askToBuy:[(SKProductPageExtension *)self askToBuy]];

  LODWORD(v9) = [(SKProductPageExtension *)self lookupItemDidLoad:v7 parameters:v6];
  if (v9)
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
  v4 = [(SKProductPageExtension *)self cancelButtonTitle];

  v5 = objc_alloc(MEMORY[0x1E69DC708]);
  v6 = v5;
  if (v4)
  {
    v7 = [(SKProductPageExtension *)self cancelButtonTitle];
    v8 = [v6 initWithTitle:v7 style:0 target:self action:sel_cancelButtonPressed_];
    [v3 setLeftBarButtonItem:v8];
  }

  else
  {
    v7 = [v5 initWithBarButtonSystemItem:0 target:self action:sel_cancelButtonPressed_];
    [v3 setLeftBarButtonItem:v7];
  }

  if ([(SKProductPageExtension *)self showsRightBarButton]&& ([(SKProductPageExtension *)self rightBarButtonTitle], v9 = objc_claimAutoreleasedReturnValue(), v9, v9))
  {
    v10 = objc_alloc(MEMORY[0x1E69DC708]);
    v11 = [(SKProductPageExtension *)self rightBarButtonTitle];
    v12 = [v10 initWithTitle:v11 style:0 target:self action:sel_rightBarButtonPressed_];
    [v3 setRightBarButtonItem:v12];
  }

  else
  {
    if (![(SKProductPageExtension *)self showsStoreButton])
    {
      goto LABEL_10;
    }

    v13 = objc_alloc(MEMORY[0x1E69DC708]);
    v11 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v12 = [v11 localizedStringForKey:@"VIEW_IN_STORE" value:&stru_1F29BCE20 table:0];
    v14 = [v13 initWithTitle:v12 style:0 target:self action:sel_storeButtonPressed_];
    [v3 setRightBarButtonItem:v14];
  }

LABEL_10:

  return v3;
}

- (void)_setShowsStoreButton:(BOOL)a3
{
  v3 = a3;
  if ([(SKProductPageExtension *)self _isClientEntitled])
  {

    [(SKProductPageExtension *)self setShowsStoreButton:v3];
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

- (void)_setCancelButtonTitle:(id)a3
{
  v4 = a3;
  if ([(SKProductPageExtension *)self _isClientEntitled])
  {
    [(SKProductPageExtension *)self setCancelButtonTitle:v4];
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

- (void)_setRightBarButtonTitle:(id)a3
{
  v4 = a3;
  if ([(SKProductPageExtension *)self _isClientEntitled])
  {
    [(SKProductPageExtension *)self setRightBarButtonTitle:v4];
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

- (void)_setShowsRightBarButton:(BOOL)a3
{
  v3 = a3;
  if ([(SKProductPageExtension *)self _isClientEntitled])
  {

    [(SKProductPageExtension *)self setShowsRightBarButton:v3];
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

- (void)_setPromptString:(id)a3
{
  v4 = a3;
  if ([(SKProductPageExtension *)self _isClientEntitled])
  {
    [(SKProductPageExtension *)self setPromptString:v4];
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

- (void)_setAskToBuy:(BOOL)a3
{
  v3 = a3;
  if ([(SKProductPageExtension *)self _isClientEntitled])
  {

    [(SKProductPageExtension *)self setAskToBuy:v3];
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

- (void)_setUsageContext:(id)a3
{
  v4 = a3;
  if ([(SKProductPageExtension *)self _isClientEntitled])
  {
    [(SKProductPageExtension *)self setUsageContext:v4];
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

- (void)_setupWithClientBundleID:(id)a3 bagType:(int64_t)a4
{
  v7 = a3;
  if ([(SKProductPageExtension *)self _isClientEntitled])
  {
    [(SKProductPageExtension *)self setupWithClientBundleID:v7 bagType:a4];
  }

  else
  {
    v6 = [(SKProductPageExtension *)self _hostApplicationBundleIdentifier];
    [(SKProductPageExtension *)self setupWithClientBundleID:v6 bagType:a4];
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