@interface LSAppLink
+ (BOOL)URLComponentsAreValidForAppLinks:(id)links error:(id *)error;
+ (BOOL)_URLIsValidForAppLinks:(id)links error:(id *)error;
+ (BOOL)areEnabledByDefault;
+ (BOOL)auditTokenHasReadAccess:(id *)access;
+ (BOOL)auditTokenHasWriteAccess:(id *)access;
+ (BOOL)currentProcessHasReadAccess;
+ (BOOL)currentProcessHasWriteAccess;
+ (id)_appLinkWithURL:(id)l applicationRecord:(id)record plugInClass:(Class)class;
+ (id)_appLinksWithState:(id)state context:(LSContext *)context limit:(unint64_t)limit URLComponents:(id)components error:(id *)error;
+ (id)_appLinksWithState:(id)state context:(LSContext *)context limit:(unint64_t)limit error:(id *)error;
+ (id)_dispatchQueue;
+ (id)appLinksWithURL:(id)l limit:(unint64_t)limit error:(id *)error;
+ (void)_openAppLink:(id)link state:(id)state completionHandler:(id)handler;
+ (void)_openWithAppLink:(id)link state:(id)state completionHandler:(id)handler;
+ (void)afterAppLinksBecomeAvailableForURL:(id)l limit:(unint64_t)limit performBlock:(id)block;
+ (void)getAppLinkWithURL:(id)l completionHandler:(id)handler;
+ (void)getAppLinksWithURL:(id)l completionHandler:(id)handler;
+ (void)openWithURL:(id)l configuration:(id)configuration completionHandler:(id)handler;
- (BOOL)isEnabled;
- (BOOL)isEqual:(id)equal;
- (BOOL)removeSettingsReturningError:(id *)error;
- (BOOL)setBrowserSettings:(id)settings error:(id *)error;
- (BOOL)setEnabled:(BOOL)enabled error:(id *)error;
- (LSAppLink)initWithCoder:(id)coder;
- (id)_userActivityWithState:(id)state error:(id *)error;
- (id)debugDescription;
- (int64_t)openStrategy;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)openInWebBrowser:(BOOL)browser setOpenStrategy:(int64_t)strategy webBrowserState:(id)state configuration:(id)configuration completionHandler:(id)handler;
- (void)openWithConfiguration:(id)configuration completionHandler:(id)handler;
@end

@implementation LSAppLink

+ (id)_dispatchQueue
{
  if (+[LSAppLink(Internal) _dispatchQueue]::once != -1)
  {
    +[LSAppLink(Internal) _dispatchQueue];
  }

  v3 = +[LSAppLink(Internal) _dispatchQueue]::result;

  return v3;
}

+ (id)appLinksWithURL:(id)l limit:(unint64_t)limit error:(id *)error
{
  v5 = [self appLinksWithURL:l limit:limit includeLinksForCurrentApplication:0 error:error];

  return v5;
}

+ (void)getAppLinkWithURL:(id)l completionHandler:(id)handler
{
  lCopy = l;
  handlerCopy = handler;
  if (!handlerCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"LSAppLink.mm" lineNumber:101 description:{@"Invalid parameter not satisfying: %@", @"completionHandler != nil"}];
  }

  _dispatchQueue = [objc_opt_class() _dispatchQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __49__LSAppLink_getAppLinkWithURL_completionHandler___block_invoke;
  block[3] = &unk_1E6A1A4F8;
  v15 = handlerCopy;
  selfCopy = self;
  v14 = lCopy;
  v10 = handlerCopy;
  v11 = lCopy;
  dispatch_async(_dispatchQueue, block);
}

void __49__LSAppLink_getAppLinkWithURL_completionHandler___block_invoke(void *a1)
{
  v2 = a1[6];
  v3 = a1[4];
  v8 = 0;
  v4 = [v2 appLinksWithURL:v3 limit:1 error:&v8];
  v5 = v8;
  v6 = a1[5];
  v7 = [v4 firstObject];
  (*(v6 + 16))(v6, v7, v5);
}

+ (void)getAppLinksWithURL:(id)l completionHandler:(id)handler
{
  lCopy = l;
  handlerCopy = handler;
  _dispatchQueue = [objc_opt_class() _dispatchQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __50__LSAppLink_getAppLinksWithURL_completionHandler___block_invoke;
  block[3] = &unk_1E6A1A4F8;
  v13 = handlerCopy;
  selfCopy = self;
  v12 = lCopy;
  v9 = handlerCopy;
  v10 = lCopy;
  dispatch_async(_dispatchQueue, block);
}

void __50__LSAppLink_getAppLinksWithURL_completionHandler___block_invoke(void *a1)
{
  v2 = a1[6];
  v3 = a1[4];
  v6 = 0;
  v4 = [v2 appLinksWithURL:v3 limit:-1 error:&v6];
  v5 = v6;
  (*(a1[5] + 16))();
}

+ (void)afterAppLinksBecomeAvailableForURL:(id)l limit:(unint64_t)limit performBlock:(id)block
{
  lCopy = l;
  blockCopy = block;
  v11 = blockCopy;
  if (lCopy)
  {
    if (blockCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"LSAppLink.mm" lineNumber:121 description:{@"Invalid parameter not satisfying: %@", @"aURL != nil"}];

    if (v11)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"LSAppLink.mm" lineNumber:122 description:{@"Invalid parameter not satisfying: %@", @"block != nil"}];

LABEL_3:
  v16 = 0;
  v12 = [self _URLIsValidForAppLinks:lCopy error:&v16];
  v13 = v16;
  if (v12)
  {
    [_LSSharedWebCredentialsAppLink afterAppLinksBecomeAvailableForURL:lCopy limit:limit performBlock:v11];
  }

  else
  {
    (v11)[2](v11, 0, v13);
  }
}

+ (BOOL)areEnabledByDefault
{
  if (![__LSDefaultsGetSharedInstance() isAppleInternal])
  {
    return 1;
  }

  v2 = CFPreferencesCopyValue(@"LSAppLinksEnabledByDefault", *MEMORY[0x1E695E890], *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E898]);
  if (v2 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    bOOLValue = [v2 BOOLValue];
  }

  else
  {
    bOOLValue = 1;
  }

  return bOOLValue;
}

- (BOOL)isEnabled
{
  v2 = objc_opt_class();

  return [v2 areEnabledByDefault];
}

- (BOOL)setEnabled:(BOOL)enabled error:(id *)error
{
  if (error)
  {
    *error = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -4, 0, "[LSAppLink setEnabled:error:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Workspace/LSAppLink.mm", 169);
  }

  return 0;
}

- (unint64_t)hash
{
  v3 = [(LSAppLink *)self URL];
  v4 = [v3 hash];
  targetApplicationRecord = [(LSAppLink *)self targetApplicationRecord];
  v6 = [targetApplicationRecord hash];

  return v6 ^ v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      v6 = [(LSAppLink *)v5 URL];
      v7 = [(LSAppLink *)self URL];
      if ([v6 isEqual:v7])
      {
        targetApplicationRecord = [(LSAppLink *)v5 targetApplicationRecord];
        targetApplicationRecord2 = [(LSAppLink *)self targetApplicationRecord];
        v10 = [targetApplicationRecord isEqual:targetApplicationRecord2];
      }

      else
      {
        v10 = 0;
      }
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

- (id)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(LSAppLink *)self URL];
  targetApplicationRecord = [(LSAppLink *)self targetApplicationRecord];
  bundleIdentifier = [targetApplicationRecord bundleIdentifier];
  v8 = [v3 stringWithFormat:@"<%@ %p> { url = %@, app = %@ }", v4, self, v5, bundleIdentifier];

  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = [(LSAppLink *)self URL];
  [coderCopy encodeObject:v4 forKey:@"URL"];

  targetApplicationRecord = [(LSAppLink *)self targetApplicationRecord];
  [coderCopy encodeObject:targetApplicationRecord forKey:@"targetApplicationRecord"];

  [coderCopy encodeObject:self->_targetApplicationProxy forKey:@"targetApplicationProxy"];
}

- (LSAppLink)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(LSAppLink *)self init];
  if (v5)
  {
    v6 = [coderCopy ls_decodeObjectOfClass:objc_opt_class() forKey:@"URL"];
    [(LSAppLink *)v5 setURL:v6];

    v7 = [coderCopy ls_decodeObjectOfClass:objc_opt_class() forKey:@"targetApplicationRecord"];
    [(LSAppLink *)v5 setTargetApplicationRecord:v7];

    v8 = [coderCopy ls_decodeObjectOfClass:objc_opt_class() forKey:@"targetApplicationProxy"];
    targetApplicationProxy = v5->_targetApplicationProxy;
    v5->_targetApplicationProxy = v8;

    v10 = [(LSAppLink *)v5 URL];
    if (!v10 || ([(LSAppLink *)v5 targetApplicationRecord], v11 = objc_claimAutoreleasedReturnValue(), v11, v10, !v11))
    {

      v5 = 0;
    }
  }

  return v5;
}

+ (BOOL)currentProcessHasReadAccess
{
  v3 = _LSGetAuditTokenForSelf();
  if (v3)
  {
    v4 = v3[1];
    v6[0] = *v3;
    v6[1] = v4;
    LOBYTE(v3) = [self auditTokenHasReadAccess:v6];
  }

  return v3;
}

+ (BOOL)auditTokenHasReadAccess:(id *)access
{
  v4 = _LSAuditTokenMayMapDatabase(access);
  if (v4)
  {
    v5 = _LSSWCServiceDetailsClass();
    v6 = *&access->var0[4];
    v8[0] = *access->var0;
    v8[1] = v6;
    LOBYTE(v4) = [v5 auditTokenHasReadAccess:v8];
  }

  return v4;
}

+ (BOOL)currentProcessHasWriteAccess
{
  v3 = _LSGetAuditTokenForSelf();
  if (v3)
  {
    v4 = v3[1];
    v6[0] = *v3;
    v6[1] = v4;
    LOBYTE(v3) = [self auditTokenHasWriteAccess:v6];
  }

  return v3;
}

+ (BOOL)auditTokenHasWriteAccess:(id *)access
{
  v4 = _LSSWCServiceDetailsClass();
  v5 = *&access->var0[4];
  v7[0] = *access->var0;
  v7[1] = v5;
  return [v4 auditTokenHasWriteAccess:v7];
}

- (void)openWithConfiguration:(id)configuration completionHandler:(id)handler
{
  configurationCopy = configuration;
  handlerCopy = handler;
  if ([__LSDefaultsGetSharedInstance() isServer])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"LSAppLink.mm" lineNumber:336 description:@"Cannot call this method from within the Launch Services daemon."];
  }

  _dispatchQueue = [objc_opt_class() _dispatchQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __59__LSAppLink_Open__openWithConfiguration_completionHandler___block_invoke;
  block[3] = &unk_1E6A193B8;
  block[4] = self;
  v14 = configurationCopy;
  v15 = handlerCopy;
  v10 = handlerCopy;
  v11 = configurationCopy;
  dispatch_async(_dispatchQueue, block);
}

void __59__LSAppLink_Open__openWithConfiguration_completionHandler___block_invoke(uint64_t a1)
{
  v4 = objc_alloc_init(_LSAppLinkOpenState);
  v2 = [*(a1 + 32) URL];
  [(_LSAppLinkOpenState *)v4 setURL:v2];

  [(_LSAppLinkOpenState *)v4 setOpenConfiguration:*(a1 + 40)];
  v3 = *(a1 + 32);
  [objc_opt_class() _openWithAppLink:v3 state:v4 completionHandler:*(a1 + 48)];
}

+ (void)openWithURL:(id)l configuration:(id)configuration completionHandler:(id)handler
{
  lCopy = l;
  configurationCopy = configuration;
  handlerCopy = handler;
  if ([__LSDefaultsGetSharedInstance() isServer])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"LSAppLink.mm" lineNumber:361 description:@"Cannot call this method from within the Launch Services daemon."];
  }

  _dispatchQueue = [self _dispatchQueue];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __63__LSAppLink_Open__openWithURL_configuration_completionHandler___block_invoke;
  v17[3] = &unk_1E6A1A520;
  v18 = lCopy;
  v19 = configurationCopy;
  v20 = handlerCopy;
  selfCopy = self;
  v13 = handlerCopy;
  v14 = configurationCopy;
  v15 = lCopy;
  dispatch_async(_dispatchQueue, v17);
}

void __63__LSAppLink_Open__openWithURL_configuration_completionHandler___block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(_LSAppLinkOpenState);
  [(_LSAppLinkOpenState *)v2 setURL:*(a1 + 32)];
  [(_LSAppLinkOpenState *)v2 setOpenConfiguration:*(a1 + 40)];
  [*(a1 + 56) _openWithAppLink:0 state:v2 completionHandler:*(a1 + 48)];
}

- (BOOL)setBrowserSettings:(id)settings error:(id *)error
{
  if (error)
  {
    *error = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -4, 0, "[LSAppLink(BrowserSettings) setBrowserSettings:error:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Workspace/LSAppLink.mm", 398);
  }

  return 0;
}

- (BOOL)removeSettingsReturningError:(id *)error
{
  if (error)
  {
    *error = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -4, 0, "[LSAppLink(BrowserSettings) removeSettingsReturningError:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Workspace/LSAppLink.mm", 404);
  }

  return 0;
}

- (int64_t)openStrategy
{
  if ([(LSAppLink *)self isEnabled])
  {
    return 2;
  }

  else
  {
    return 0;
  }
}

- (void)openInWebBrowser:(BOOL)browser setOpenStrategy:(int64_t)strategy webBrowserState:(id)state configuration:(id)configuration completionHandler:(id)handler
{
  stateCopy = state;
  configurationCopy = configuration;
  handlerCopy = handler;
  v15 = MEMORY[0x1865D71B0]();
  MEMORY[0x1865D7C40]();
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __108__LSAppLink_OpenStrategy__openInWebBrowser_setOpenStrategy_webBrowserState_configuration_completionHandler___block_invoke;
  v28[3] = &unk_1E6A190B8;
  v16 = v15;
  v29 = v16;
  v17 = MEMORY[0x1865D71B0](v28);

  _dispatchQueue = [objc_opt_class() _dispatchQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __108__LSAppLink_OpenStrategy__openInWebBrowser_setOpenStrategy_webBrowserState_configuration_completionHandler___block_invoke_2;
  block[3] = &unk_1E6A1A548;
  v25 = v17;
  strategyCopy = strategy;
  block[4] = self;
  v23 = stateCopy;
  browserCopy = browser;
  v24 = configurationCopy;
  v19 = v17;
  v20 = configurationCopy;
  v21 = stateCopy;
  dispatch_async(_dispatchQueue, block);
}

void __108__LSAppLink_OpenStrategy__openInWebBrowser_setOpenStrategy_webBrowserState_configuration_completionHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3;
  v5 = *(a1 + 32);
  if (v5)
  {
    v5 = (*(v5 + 16))(v5, a2, v6);
  }

  MEMORY[0x1865D7C50](v5);
}

void __108__LSAppLink_OpenStrategy__openInWebBrowser_setOpenStrategy_webBrowserState_configuration_completionHandler___block_invoke_2(uint64_t a1)
{
  v15[1] = *MEMORY[0x1E69E9840];
  [*(a1 + 32) setOpenStrategy:*(a1 + 64)];
  v2 = objc_alloc_init(_LSAppLinkOpenState);
  v3 = [*(a1 + 32) URL];
  [(_LSAppLinkOpenState *)v2 setURL:v3];

  [(_LSAppLinkOpenState *)v2 setBrowserState:*(a1 + 40)];
  [(_LSAppLinkOpenState *)v2 setOpenConfiguration:*(a1 + 48)];
  if (*(a1 + 72) == 1)
  {
    v9 = MEMORY[0x1E69E9820];
    v10 = 3221225472;
    v11 = __108__LSAppLink_OpenStrategy__openInWebBrowser_setOpenStrategy_webBrowserState_configuration_completionHandler___block_invoke_3;
    v12 = &unk_1E6A19090;
    v13 = *(a1 + 56);
    v4 = [(_LSDService *)_LSDOpenService XPCProxyWithErrorHandler:?];
    v5 = [*(a1 + 32) URL];
    v14 = @"_LSAppLinkOpenStateLaunchOptionKey";
    v15[0] = v2;
    v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:&v14 count:1];
    [v4 performOpenOperationWithURL:v5 fileHandle:0 bundleIdentifier:@"com.apple.mobilesafari" documentIdentifier:0 isContentManaged:0 sourceAuditToken:0 userInfo:0 options:v6 delegate:0 completionHandler:{*(a1 + 56), v9, v10, v11, v12}];
  }

  else
  {
    v7 = *(a1 + 32);
    [objc_opt_class() _openWithAppLink:v7 state:v2 completionHandler:*(a1 + 56)];
  }

  v8 = *MEMORY[0x1E69E9840];
}

void __37__LSAppLink_Internal___dispatchQueue__block_invoke()
{
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_create("com.apple.launchservices.applinks", v2);
  v1 = +[LSAppLink(Internal) _dispatchQueue]::result;
  +[LSAppLink(Internal) _dispatchQueue]::result = v0;
}

+ (BOOL)_URLIsValidForAppLinks:(id)links error:(id *)error
{
  linksCopy = links;
  v7 = [objc_alloc(MEMORY[0x1E696AF20]) initWithURL:linksCopy resolvingAgainstBaseURL:1];
  LOBYTE(error) = [self URLComponentsAreValidForAppLinks:v7 error:error];

  return error;
}

+ (id)_appLinksWithState:(id)state context:(LSContext *)context limit:(unint64_t)limit error:(id *)error
{
  v29[1] = *MEMORY[0x1E69E9840];
  stateCopy = state;
  v11 = [stateCopy URL];
  if (!v11 || (objc_opt_class(), (stateCopy == 0) | ((objc_opt_isKindOfClass() & 1) == 0)))
  {
    v28 = *MEMORY[0x1E696A278];
    v29[0] = @"invalid input parameters";
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v29 forKeys:&v28 count:1];
    v22 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -50, v12, "+[LSAppLink(Internal) _appLinksWithState:context:limit:error:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Workspace/LSAppLink.mm", 691);
    v20 = 0;
  }

  else
  {
    v12 = [objc_alloc(MEMORY[0x1E696AF20]) initWithURL:v11 resolvingAgainstBaseURL:1];
    v27 = 0;
    v13 = [self URLComponentsAreValidForAppLinks:v12 error:&v27];
    v14 = v27;
    v15 = v14;
    if (v13)
    {
      scheme = [v12 scheme];
      lowercaseString = [scheme lowercaseString];
      [v12 setScheme:lowercaseString];

      host = [v12 host];
      lowercaseString2 = [host lowercaseString];
      [v12 setHost:lowercaseString2];

      v26 = 0;
      v20 = [self _appLinksWithState:stateCopy context:context limit:limit URLComponents:v12 error:&v26];
      v21 = v26;
    }

    else
    {
      v20 = 0;
      v21 = v14;
    }

    v22 = v21;
  }

  if (error && !v20)
  {
    v23 = v22;
    *error = v22;
  }

  v24 = *MEMORY[0x1E69E9840];

  return v20;
}

+ (id)_appLinkWithURL:(id)l applicationRecord:(id)record plugInClass:(Class)class
{
  lCopy = l;
  recordCopy = record;
  v10 = recordCopy;
  if (lCopy)
  {
    if (recordCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"LSAppLink.mm" lineNumber:705 description:{@"Invalid parameter not satisfying: %@", @"aURL != nil"}];

    if (v10)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"LSAppLink.mm" lineNumber:706 description:{@"Invalid parameter not satisfying: %@", @"appRecord != nil"}];

LABEL_3:
  v11 = objc_alloc_init(self);
  v12 = v11;
  if (v11)
  {
    [v11 setURL:lCopy];
    [v12 setTargetApplicationRecord:v10];
    compatibilityObject = [v10 compatibilityObject];
    v14 = v12[2];
    v12[2] = compatibilityObject;
  }

  return v12;
}

+ (void)_openWithAppLink:(id)link state:(id)state completionHandler:(id)handler
{
  v34 = *MEMORY[0x1E69E9840];
  linkCopy = link;
  stateCopy = state;
  handlerCopy = handler;
  if (!(linkCopy | stateCopy))
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"LSAppLink.mm" lineNumber:725 description:{@"Invalid parameter not satisfying: %@", @"appLink != nil || openState != nil"}];
  }

  if (([__LSDefaultsGetSharedInstance() isServer] & 1) == 0)
  {
    v13 = &__block_literal_global_227;
    if (handlerCopy)
    {
      v13 = handlerCopy;
    }

    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __64__LSAppLink_Internal___openWithAppLink_state_completionHandler___block_invoke_2;
    v29[3] = &unk_1E6A19090;
    handlerCopy = v13;
    v30 = handlerCopy;
    v14 = [(_LSDService *)_LSDOpenService XPCProxyWithErrorHandler:v29];
    [v14 openAppLink:linkCopy state:stateCopy completionHandler:handlerCopy];

    v12 = v30;
    goto LABEL_12;
  }

  if (stateCopy)
  {
    if (linkCopy)
    {
      v12 = 0;
      goto LABEL_7;
    }

    v28 = 0;
    v17 = [self _appLinksWithState:stateCopy context:0 limit:1 error:&v28];
    v12 = v28;
    if (v17)
    {
      if ([v17 count])
      {
        linkCopy = [v17 firstObject];

        if (linkCopy)
        {
LABEL_7:
          if ([linkCopy isEnabled])
          {
LABEL_8:
            [self _openAppLink:linkCopy state:stateCopy completionHandler:handlerCopy];
            goto LABEL_12;
          }

          openConfiguration = [stateCopy openConfiguration];
          ignoreAppLinkEnabledProperty = [openConfiguration ignoreAppLinkEnabledProperty];

          if (ignoreAppLinkEnabledProperty)
          {
            auditToken = [stateCopy auditToken];
            v21 = auditToken;
            if (auditToken)
            {
              if (_LSCheckEntitlementForAuditToken(auditToken, @"com.apple.private.canIgnoreAppLinkEnabledProperty"))
              {
                goto LABEL_8;
              }

              if (_LSCheckEntitlementForAuditToken(v21, @"com.apple.private.canIgnoreAppLinkOpenStrategy"))
              {
                if ([__LSDefaultsGetSharedInstance() isAppleInternal])
                {
                  v22 = _LSDefaultLog();
                  if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
                  {
                    v23 = _LSGetPIDFromToken(v21);
                    v24 = _LSCopyExecutableURLForAuditToken(v21);
                    [(LSAppLink(Internal) *)v23 _openWithAppLink:v24 state:buf completionHandler:v22];
                  }
                }

                goto LABEL_8;
              }
            }
          }

          if (handlerCopy)
          {
            v25 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -912, 0, "+[LSAppLink(Internal) _openWithAppLink:state:completionHandler:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Workspace/LSAppLink.mm", 795);
            (*(handlerCopy + 2))(handlerCopy, 0, v25);
          }

          goto LABEL_12;
        }

LABEL_32:
        if (handlerCopy)
        {
          (*(handlerCopy + 2))(handlerCopy, 0, v12);
        }

        linkCopy = 0;
        goto LABEL_12;
      }

      v26 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -10814, 0, "+[LSAppLink(Internal) _openWithAppLink:state:completionHandler:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Workspace/LSAppLink.mm", 763);

      v12 = v26;
    }

    goto LABEL_32;
  }

  if (!handlerCopy)
  {
    goto LABEL_13;
  }

  v31 = *MEMORY[0x1E696A278];
  v32 = @"invalid input parameters";
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v32 forKeys:&v31 count:1];
  v16 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -50, v12, "+[LSAppLink(Internal) _openWithAppLink:state:completionHandler:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Workspace/LSAppLink.mm", 809);
  (*(handlerCopy + 2))(handlerCopy, 0, v16);

LABEL_12:
LABEL_13:

  v15 = *MEMORY[0x1E69E9840];
}

+ (void)_openAppLink:(id)link state:(id)state completionHandler:(id)handler
{
  v36[1] = *MEMORY[0x1E69E9840];
  linkCopy = link;
  stateCopy = state;
  handlerCopy = handler;
  if (linkCopy)
  {
    if (stateCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"LSAppLink.mm" lineNumber:817 description:{@"Invalid parameter not satisfying: %@", @"appLink != nil"}];

    if (stateCopy)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"LSAppLink.mm" lineNumber:818 description:{@"Invalid parameter not satisfying: %@", @"openState != nil"}];

LABEL_3:
  targetApplicationRecord = [linkCopy targetApplicationRecord];
  if ([targetApplicationRecord isSystemPlaceholder])
  {
    v33[0] = MEMORY[0x1E69E9820];
    v33[1] = 3221225472;
    v33[2] = __60__LSAppLink_Internal___openAppLink_state_completionHandler___block_invoke;
    v33[3] = &unk_1E6A19090;
    v13 = handlerCopy;
    v34 = v13;
    v14 = [(_LSDService *)_LSDOpenService XPCProxyWithErrorHandler:v33];
    bundleIdentifier = [targetApplicationRecord bundleIdentifier];
    v16 = [linkCopy URL];
    [v14 failedToOpenApplication:bundleIdentifier withURL:v16 completionHandler:v13];

    v17 = v34;
LABEL_18:

    goto LABEL_19;
  }

  xPCConnection = [stateCopy XPCConnection];

  if (xPCConnection)
  {
    v32 = 0;
    v19 = [linkCopy _userActivityWithState:stateCopy error:&v32];
    v20 = v32;
    v21 = v20;
    if (v19)
    {
      v31 = v20;
      v22 = _LSGetDataForUserActivity(v19, &v31);
      v17 = v31;

      if (v22)
      {
        _uniqueIdentifier = [v19 _uniqueIdentifier];
        activityType = [v19 activityType];
        bundleIdentifier2 = [targetApplicationRecord bundleIdentifier];
        xPCConnection2 = [stateCopy XPCConnection];
        _LSServer_OpenUserActivity(_uniqueIdentifier, v22, activityType, 1, bundleIdentifier2, linkCopy, stateCopy, 0, xPCConnection2, handlerCopy);
      }

      else if (handlerCopy)
      {
        (*(handlerCopy + 2))(handlerCopy, 0, v17);
      }
    }

    else
    {
      if (handlerCopy)
      {
        (*(handlerCopy + 2))(handlerCopy, 0, v20);
      }

      v17 = v21;
    }

    goto LABEL_18;
  }

  if (handlerCopy)
  {
    v35 = *MEMORY[0x1E696A278];
    v36[0] = @"openState.XPCConnection";
    v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v36 forKeys:&v35 count:1];
    v26 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -50, v17, "+[LSAppLink(Internal) _openAppLink:state:completionHandler:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Workspace/LSAppLink.mm", 842);
    (*(handlerCopy + 2))(handlerCopy, 0, v26);

    goto LABEL_18;
  }

LABEL_19:

  v27 = *MEMORY[0x1E69E9840];
}

+ (BOOL)URLComponentsAreValidForAppLinks:(id)links error:(id *)error
{
  v22 = *MEMORY[0x1E69E9840];
  linksCopy = links;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = +[_LSAppLinkPlugIn plugInClasses];
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v21 count:16];
  if (v7)
  {
    v8 = *v16;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v6);
        }

        if ([*(*(&v15 + 1) + 8 * i) canHandleURLComponents:linksCopy])
        {
          v12 = 1;
          goto LABEL_16;
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v15 objects:v21 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v10 = [linksCopy URL];
  v6 = v10;
  if (v10)
  {
    if (error)
    {
      v19 = *MEMORY[0x1E696A980];
      v20 = v10;
      v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v20 forKeys:&v19 count:1];
      *error = _LSMakeNSErrorImpl(*MEMORY[0x1E696A978], -1002, v11, "+[LSAppLink(Private) URLComponentsAreValidForAppLinks:error:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Workspace/LSAppLink.mm", 920);
    }

    goto LABEL_15;
  }

  if (!error)
  {
LABEL_15:
    v12 = 0;
    goto LABEL_16;
  }

  _LSMakeNSErrorImpl(*MEMORY[0x1E696A978], -1002, 0, "+[LSAppLink(Private) URLComponentsAreValidForAppLinks:error:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Workspace/LSAppLink.mm", 922);
  *error = v12 = 0;
LABEL_16:

  v13 = *MEMORY[0x1E69E9840];
  return v12;
}

+ (id)_appLinksWithState:(id)state context:(LSContext *)context limit:(unint64_t)limit URLComponents:(id)components error:(id *)error
{
  v34 = *MEMORY[0x1E69E9840];
  stateCopy = state;
  componentsCopy = components;
  v27 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v10 = +[_LSAppLinkPlugIn plugInClasses];
  v11 = [v10 countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v11)
  {
    v12 = 0;
    v13 = *v30;
    while (2)
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v30 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v29 + 1) + 8 * i);
        if ([(objc_class *)v15 canHandleURLComponents:componentsCopy])
        {
          v16 = objc_alloc_init(v15);
          if (v16)
          {
            v17 = [componentsCopy copy];
            [v16 setURLComponents:v17];

            [v16 setLimit:limit];
            [v16 setState:stateCopy];
            v28 = v12;
            v18 = [v16 appLinksWithContext:context error:&v28];
            v19 = v28;

            if (!v18 || ([v27 addObjectsFromArray:v18], v20 = objc_msgSend(v27, "count") < limit, v18, !v20))
            {

              v12 = v19;
              goto LABEL_16;
            }

            v12 = v19;
          }
        }

        else
        {
          v16 = 0;
        }
      }

      v11 = [v10 countByEnumeratingWithState:&v29 objects:v33 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }

LABEL_16:

    if (v12)
    {

      v27 = 0;
      goto LABEL_24;
    }
  }

  else
  {
  }

  if ([v27 count])
  {
    if ([v27 count] > limit)
    {
      [v27 removeObjectsInRange:{limit, objc_msgSend(v27, "count") - limit}];
    }

    v12 = 0;
  }

  else
  {
    v12 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -10814, 0, "+[LSAppLink(Private) _appLinksWithState:context:limit:URLComponents:error:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Workspace/LSAppLink.mm", 985);
  }

LABEL_24:
  if (error && !v27)
  {
    v21 = v12;
    *error = v12;
  }

  v22 = *MEMORY[0x1E69E9840];

  return v27;
}

- (id)_userActivityWithState:(id)state error:(id *)error
{
  stateCopy = state;
  v7 = objc_alloc(MEMORY[0x1E696B090]);
  v8 = [v7 initWithActivityType:*MEMORY[0x1E696AA68]];
  if (v8)
  {
    v9 = [(LSAppLink *)self URL];
    [v8 setWebpageURL:v9];

    openConfiguration = [stateCopy openConfiguration];
    referrerURL = [openConfiguration referrerURL];
    [v8 setReferrerURL:referrerURL];

    if (objc_opt_respondsToSelector())
    {
      [v8 set_universalLink:1];
    }
  }

  else if (error)
  {
    *error = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -41, 0, "[LSAppLink(Private) _userActivityWithState:error:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Workspace/LSAppLink.mm", 1011);
  }

  return v8;
}

@end