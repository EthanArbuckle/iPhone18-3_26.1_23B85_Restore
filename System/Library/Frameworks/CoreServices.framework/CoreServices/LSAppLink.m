@interface LSAppLink
+ (BOOL)URLComponentsAreValidForAppLinks:(id)a3 error:(id *)a4;
+ (BOOL)_URLIsValidForAppLinks:(id)a3 error:(id *)a4;
+ (BOOL)areEnabledByDefault;
+ (BOOL)auditTokenHasReadAccess:(id *)a3;
+ (BOOL)auditTokenHasWriteAccess:(id *)a3;
+ (BOOL)currentProcessHasReadAccess;
+ (BOOL)currentProcessHasWriteAccess;
+ (id)_appLinkWithURL:(id)a3 applicationRecord:(id)a4 plugInClass:(Class)a5;
+ (id)_appLinksWithState:(id)a3 context:(LSContext *)a4 limit:(unint64_t)a5 URLComponents:(id)a6 error:(id *)a7;
+ (id)_appLinksWithState:(id)a3 context:(LSContext *)a4 limit:(unint64_t)a5 error:(id *)a6;
+ (id)_dispatchQueue;
+ (id)appLinksWithURL:(id)a3 limit:(unint64_t)a4 error:(id *)a5;
+ (void)_openAppLink:(id)a3 state:(id)a4 completionHandler:(id)a5;
+ (void)_openWithAppLink:(id)a3 state:(id)a4 completionHandler:(id)a5;
+ (void)afterAppLinksBecomeAvailableForURL:(id)a3 limit:(unint64_t)a4 performBlock:(id)a5;
+ (void)getAppLinkWithURL:(id)a3 completionHandler:(id)a4;
+ (void)getAppLinksWithURL:(id)a3 completionHandler:(id)a4;
+ (void)openWithURL:(id)a3 configuration:(id)a4 completionHandler:(id)a5;
- (BOOL)isEnabled;
- (BOOL)isEqual:(id)a3;
- (BOOL)removeSettingsReturningError:(id *)a3;
- (BOOL)setBrowserSettings:(id)a3 error:(id *)a4;
- (BOOL)setEnabled:(BOOL)a3 error:(id *)a4;
- (LSAppLink)initWithCoder:(id)a3;
- (id)_userActivityWithState:(id)a3 error:(id *)a4;
- (id)debugDescription;
- (int64_t)openStrategy;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)openInWebBrowser:(BOOL)a3 setOpenStrategy:(int64_t)a4 webBrowserState:(id)a5 configuration:(id)a6 completionHandler:(id)a7;
- (void)openWithConfiguration:(id)a3 completionHandler:(id)a4;
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

+ (id)appLinksWithURL:(id)a3 limit:(unint64_t)a4 error:(id *)a5
{
  v5 = [a1 appLinksWithURL:a3 limit:a4 includeLinksForCurrentApplication:0 error:a5];

  return v5;
}

+ (void)getAppLinkWithURL:(id)a3 completionHandler:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (!v8)
  {
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    [v12 handleFailureInMethod:a2 object:a1 file:@"LSAppLink.mm" lineNumber:101 description:{@"Invalid parameter not satisfying: %@", @"completionHandler != nil"}];
  }

  v9 = [objc_opt_class() _dispatchQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __49__LSAppLink_getAppLinkWithURL_completionHandler___block_invoke;
  block[3] = &unk_1E6A1A4F8;
  v15 = v8;
  v16 = a1;
  v14 = v7;
  v10 = v8;
  v11 = v7;
  dispatch_async(v9, block);
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

+ (void)getAppLinksWithURL:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [objc_opt_class() _dispatchQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __50__LSAppLink_getAppLinksWithURL_completionHandler___block_invoke;
  block[3] = &unk_1E6A1A4F8;
  v13 = v7;
  v14 = a1;
  v12 = v6;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
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

+ (void)afterAppLinksBecomeAvailableForURL:(id)a3 limit:(unint64_t)a4 performBlock:(id)a5
{
  v9 = a3;
  v10 = a5;
  v11 = v10;
  if (v9)
  {
    if (v10)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v14 = [MEMORY[0x1E696AAA8] currentHandler];
    [v14 handleFailureInMethod:a2 object:a1 file:@"LSAppLink.mm" lineNumber:121 description:{@"Invalid parameter not satisfying: %@", @"aURL != nil"}];

    if (v11)
    {
      goto LABEL_3;
    }
  }

  v15 = [MEMORY[0x1E696AAA8] currentHandler];
  [v15 handleFailureInMethod:a2 object:a1 file:@"LSAppLink.mm" lineNumber:122 description:{@"Invalid parameter not satisfying: %@", @"block != nil"}];

LABEL_3:
  v16 = 0;
  v12 = [a1 _URLIsValidForAppLinks:v9 error:&v16];
  v13 = v16;
  if (v12)
  {
    [_LSSharedWebCredentialsAppLink afterAppLinksBecomeAvailableForURL:v9 limit:a4 performBlock:v11];
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
    v3 = [v2 BOOLValue];
  }

  else
  {
    v3 = 1;
  }

  return v3;
}

- (BOOL)isEnabled
{
  v2 = objc_opt_class();

  return [v2 areEnabledByDefault];
}

- (BOOL)setEnabled:(BOOL)a3 error:(id *)a4
{
  if (a4)
  {
    *a4 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -4, 0, "[LSAppLink setEnabled:error:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Workspace/LSAppLink.mm", 169);
  }

  return 0;
}

- (unint64_t)hash
{
  v3 = [(LSAppLink *)self URL];
  v4 = [v3 hash];
  v5 = [(LSAppLink *)self targetApplicationRecord];
  v6 = [v5 hash];

  return v6 ^ v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(LSAppLink *)v5 URL];
      v7 = [(LSAppLink *)self URL];
      if ([v6 isEqual:v7])
      {
        v8 = [(LSAppLink *)v5 targetApplicationRecord];
        v9 = [(LSAppLink *)self targetApplicationRecord];
        v10 = [v8 isEqual:v9];
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
  v6 = [(LSAppLink *)self targetApplicationRecord];
  v7 = [v6 bundleIdentifier];
  v8 = [v3 stringWithFormat:@"<%@ %p> { url = %@, app = %@ }", v4, self, v5, v7];

  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  v6 = a3;
  v4 = [(LSAppLink *)self URL];
  [v6 encodeObject:v4 forKey:@"URL"];

  v5 = [(LSAppLink *)self targetApplicationRecord];
  [v6 encodeObject:v5 forKey:@"targetApplicationRecord"];

  [v6 encodeObject:self->_targetApplicationProxy forKey:@"targetApplicationProxy"];
}

- (LSAppLink)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(LSAppLink *)self init];
  if (v5)
  {
    v6 = [v4 ls_decodeObjectOfClass:objc_opt_class() forKey:@"URL"];
    [(LSAppLink *)v5 setURL:v6];

    v7 = [v4 ls_decodeObjectOfClass:objc_opt_class() forKey:@"targetApplicationRecord"];
    [(LSAppLink *)v5 setTargetApplicationRecord:v7];

    v8 = [v4 ls_decodeObjectOfClass:objc_opt_class() forKey:@"targetApplicationProxy"];
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
    LOBYTE(v3) = [a1 auditTokenHasReadAccess:v6];
  }

  return v3;
}

+ (BOOL)auditTokenHasReadAccess:(id *)a3
{
  v4 = _LSAuditTokenMayMapDatabase(a3);
  if (v4)
  {
    v5 = _LSSWCServiceDetailsClass();
    v6 = *&a3->var0[4];
    v8[0] = *a3->var0;
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
    LOBYTE(v3) = [a1 auditTokenHasWriteAccess:v6];
  }

  return v3;
}

+ (BOOL)auditTokenHasWriteAccess:(id *)a3
{
  v4 = _LSSWCServiceDetailsClass();
  v5 = *&a3->var0[4];
  v7[0] = *a3->var0;
  v7[1] = v5;
  return [v4 auditTokenHasWriteAccess:v7];
}

- (void)openWithConfiguration:(id)a3 completionHandler:(id)a4
{
  v7 = a3;
  v8 = a4;
  if ([__LSDefaultsGetSharedInstance() isServer])
  {
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"LSAppLink.mm" lineNumber:336 description:@"Cannot call this method from within the Launch Services daemon."];
  }

  v9 = [objc_opt_class() _dispatchQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __59__LSAppLink_Open__openWithConfiguration_completionHandler___block_invoke;
  block[3] = &unk_1E6A193B8;
  block[4] = self;
  v14 = v7;
  v15 = v8;
  v10 = v8;
  v11 = v7;
  dispatch_async(v9, block);
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

+ (void)openWithURL:(id)a3 configuration:(id)a4 completionHandler:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if ([__LSDefaultsGetSharedInstance() isServer])
  {
    v16 = [MEMORY[0x1E696AAA8] currentHandler];
    [v16 handleFailureInMethod:a2 object:a1 file:@"LSAppLink.mm" lineNumber:361 description:@"Cannot call this method from within the Launch Services daemon."];
  }

  v12 = [a1 _dispatchQueue];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __63__LSAppLink_Open__openWithURL_configuration_completionHandler___block_invoke;
  v17[3] = &unk_1E6A1A520;
  v18 = v9;
  v19 = v10;
  v20 = v11;
  v21 = a1;
  v13 = v11;
  v14 = v10;
  v15 = v9;
  dispatch_async(v12, v17);
}

void __63__LSAppLink_Open__openWithURL_configuration_completionHandler___block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(_LSAppLinkOpenState);
  [(_LSAppLinkOpenState *)v2 setURL:*(a1 + 32)];
  [(_LSAppLinkOpenState *)v2 setOpenConfiguration:*(a1 + 40)];
  [*(a1 + 56) _openWithAppLink:0 state:v2 completionHandler:*(a1 + 48)];
}

- (BOOL)setBrowserSettings:(id)a3 error:(id *)a4
{
  if (a4)
  {
    *a4 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -4, 0, "[LSAppLink(BrowserSettings) setBrowserSettings:error:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Workspace/LSAppLink.mm", 398);
  }

  return 0;
}

- (BOOL)removeSettingsReturningError:(id *)a3
{
  if (a3)
  {
    *a3 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -4, 0, "[LSAppLink(BrowserSettings) removeSettingsReturningError:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Workspace/LSAppLink.mm", 404);
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

- (void)openInWebBrowser:(BOOL)a3 setOpenStrategy:(int64_t)a4 webBrowserState:(id)a5 configuration:(id)a6 completionHandler:(id)a7
{
  v12 = a5;
  v13 = a6;
  v14 = a7;
  v15 = MEMORY[0x1865D71B0]();
  MEMORY[0x1865D7C40]();
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __108__LSAppLink_OpenStrategy__openInWebBrowser_setOpenStrategy_webBrowserState_configuration_completionHandler___block_invoke;
  v28[3] = &unk_1E6A190B8;
  v16 = v15;
  v29 = v16;
  v17 = MEMORY[0x1865D71B0](v28);

  v18 = [objc_opt_class() _dispatchQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __108__LSAppLink_OpenStrategy__openInWebBrowser_setOpenStrategy_webBrowserState_configuration_completionHandler___block_invoke_2;
  block[3] = &unk_1E6A1A548;
  v25 = v17;
  v26 = a4;
  block[4] = self;
  v23 = v12;
  v27 = a3;
  v24 = v13;
  v19 = v17;
  v20 = v13;
  v21 = v12;
  dispatch_async(v18, block);
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

+ (BOOL)_URLIsValidForAppLinks:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [objc_alloc(MEMORY[0x1E696AF20]) initWithURL:v6 resolvingAgainstBaseURL:1];
  LOBYTE(a4) = [a1 URLComponentsAreValidForAppLinks:v7 error:a4];

  return a4;
}

+ (id)_appLinksWithState:(id)a3 context:(LSContext *)a4 limit:(unint64_t)a5 error:(id *)a6
{
  v29[1] = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = [v10 URL];
  if (!v11 || (objc_opt_class(), (v10 == 0) | ((objc_opt_isKindOfClass() & 1) == 0)))
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
    v13 = [a1 URLComponentsAreValidForAppLinks:v12 error:&v27];
    v14 = v27;
    v15 = v14;
    if (v13)
    {
      v16 = [v12 scheme];
      v17 = [v16 lowercaseString];
      [v12 setScheme:v17];

      v18 = [v12 host];
      v19 = [v18 lowercaseString];
      [v12 setHost:v19];

      v26 = 0;
      v20 = [a1 _appLinksWithState:v10 context:a4 limit:a5 URLComponents:v12 error:&v26];
      v21 = v26;
    }

    else
    {
      v20 = 0;
      v21 = v14;
    }

    v22 = v21;
  }

  if (a6 && !v20)
  {
    v23 = v22;
    *a6 = v22;
  }

  v24 = *MEMORY[0x1E69E9840];

  return v20;
}

+ (id)_appLinkWithURL:(id)a3 applicationRecord:(id)a4 plugInClass:(Class)a5
{
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (v8)
  {
    if (v9)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v16 = [MEMORY[0x1E696AAA8] currentHandler];
    [v16 handleFailureInMethod:a2 object:a1 file:@"LSAppLink.mm" lineNumber:705 description:{@"Invalid parameter not satisfying: %@", @"aURL != nil"}];

    if (v10)
    {
      goto LABEL_3;
    }
  }

  v17 = [MEMORY[0x1E696AAA8] currentHandler];
  [v17 handleFailureInMethod:a2 object:a1 file:@"LSAppLink.mm" lineNumber:706 description:{@"Invalid parameter not satisfying: %@", @"appRecord != nil"}];

LABEL_3:
  v11 = objc_alloc_init(a1);
  v12 = v11;
  if (v11)
  {
    [v11 setURL:v8];
    [v12 setTargetApplicationRecord:v10];
    v13 = [v10 compatibilityObject];
    v14 = v12[2];
    v12[2] = v13;
  }

  return v12;
}

+ (void)_openWithAppLink:(id)a3 state:(id)a4 completionHandler:(id)a5
{
  v34 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (!(v9 | v10))
  {
    v27 = [MEMORY[0x1E696AAA8] currentHandler];
    [v27 handleFailureInMethod:a2 object:a1 file:@"LSAppLink.mm" lineNumber:725 description:{@"Invalid parameter not satisfying: %@", @"appLink != nil || openState != nil"}];
  }

  if (([__LSDefaultsGetSharedInstance() isServer] & 1) == 0)
  {
    v13 = &__block_literal_global_227;
    if (v11)
    {
      v13 = v11;
    }

    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __64__LSAppLink_Internal___openWithAppLink_state_completionHandler___block_invoke_2;
    v29[3] = &unk_1E6A19090;
    v11 = v13;
    v30 = v11;
    v14 = [(_LSDService *)_LSDOpenService XPCProxyWithErrorHandler:v29];
    [v14 openAppLink:v9 state:v10 completionHandler:v11];

    v12 = v30;
    goto LABEL_12;
  }

  if (v10)
  {
    if (v9)
    {
      v12 = 0;
      goto LABEL_7;
    }

    v28 = 0;
    v17 = [a1 _appLinksWithState:v10 context:0 limit:1 error:&v28];
    v12 = v28;
    if (v17)
    {
      if ([v17 count])
      {
        v9 = [v17 firstObject];

        if (v9)
        {
LABEL_7:
          if ([v9 isEnabled])
          {
LABEL_8:
            [a1 _openAppLink:v9 state:v10 completionHandler:v11];
            goto LABEL_12;
          }

          v18 = [v10 openConfiguration];
          v19 = [v18 ignoreAppLinkEnabledProperty];

          if (v19)
          {
            v20 = [v10 auditToken];
            v21 = v20;
            if (v20)
            {
              if (_LSCheckEntitlementForAuditToken(v20, @"com.apple.private.canIgnoreAppLinkEnabledProperty"))
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

          if (v11)
          {
            v25 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -912, 0, "+[LSAppLink(Internal) _openWithAppLink:state:completionHandler:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Workspace/LSAppLink.mm", 795);
            (*(v11 + 2))(v11, 0, v25);
          }

          goto LABEL_12;
        }

LABEL_32:
        if (v11)
        {
          (*(v11 + 2))(v11, 0, v12);
        }

        v9 = 0;
        goto LABEL_12;
      }

      v26 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -10814, 0, "+[LSAppLink(Internal) _openWithAppLink:state:completionHandler:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Workspace/LSAppLink.mm", 763);

      v12 = v26;
    }

    goto LABEL_32;
  }

  if (!v11)
  {
    goto LABEL_13;
  }

  v31 = *MEMORY[0x1E696A278];
  v32 = @"invalid input parameters";
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v32 forKeys:&v31 count:1];
  v16 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -50, v12, "+[LSAppLink(Internal) _openWithAppLink:state:completionHandler:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Workspace/LSAppLink.mm", 809);
  (*(v11 + 2))(v11, 0, v16);

LABEL_12:
LABEL_13:

  v15 = *MEMORY[0x1E69E9840];
}

+ (void)_openAppLink:(id)a3 state:(id)a4 completionHandler:(id)a5
{
  v36[1] = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (v9)
  {
    if (v10)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v28 = [MEMORY[0x1E696AAA8] currentHandler];
    [v28 handleFailureInMethod:a2 object:a1 file:@"LSAppLink.mm" lineNumber:817 description:{@"Invalid parameter not satisfying: %@", @"appLink != nil"}];

    if (v10)
    {
      goto LABEL_3;
    }
  }

  v29 = [MEMORY[0x1E696AAA8] currentHandler];
  [v29 handleFailureInMethod:a2 object:a1 file:@"LSAppLink.mm" lineNumber:818 description:{@"Invalid parameter not satisfying: %@", @"openState != nil"}];

LABEL_3:
  v12 = [v9 targetApplicationRecord];
  if ([v12 isSystemPlaceholder])
  {
    v33[0] = MEMORY[0x1E69E9820];
    v33[1] = 3221225472;
    v33[2] = __60__LSAppLink_Internal___openAppLink_state_completionHandler___block_invoke;
    v33[3] = &unk_1E6A19090;
    v13 = v11;
    v34 = v13;
    v14 = [(_LSDService *)_LSDOpenService XPCProxyWithErrorHandler:v33];
    v15 = [v12 bundleIdentifier];
    v16 = [v9 URL];
    [v14 failedToOpenApplication:v15 withURL:v16 completionHandler:v13];

    v17 = v34;
LABEL_18:

    goto LABEL_19;
  }

  v18 = [v10 XPCConnection];

  if (v18)
  {
    v32 = 0;
    v19 = [v9 _userActivityWithState:v10 error:&v32];
    v20 = v32;
    v21 = v20;
    if (v19)
    {
      v31 = v20;
      v22 = _LSGetDataForUserActivity(v19, &v31);
      v17 = v31;

      if (v22)
      {
        v30 = [v19 _uniqueIdentifier];
        v23 = [v19 activityType];
        v24 = [v12 bundleIdentifier];
        v25 = [v10 XPCConnection];
        _LSServer_OpenUserActivity(v30, v22, v23, 1, v24, v9, v10, 0, v25, v11);
      }

      else if (v11)
      {
        (*(v11 + 2))(v11, 0, v17);
      }
    }

    else
    {
      if (v11)
      {
        (*(v11 + 2))(v11, 0, v20);
      }

      v17 = v21;
    }

    goto LABEL_18;
  }

  if (v11)
  {
    v35 = *MEMORY[0x1E696A278];
    v36[0] = @"openState.XPCConnection";
    v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v36 forKeys:&v35 count:1];
    v26 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -50, v17, "+[LSAppLink(Internal) _openAppLink:state:completionHandler:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Workspace/LSAppLink.mm", 842);
    (*(v11 + 2))(v11, 0, v26);

    goto LABEL_18;
  }

LABEL_19:

  v27 = *MEMORY[0x1E69E9840];
}

+ (BOOL)URLComponentsAreValidForAppLinks:(id)a3 error:(id *)a4
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = a3;
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

        if ([*(*(&v15 + 1) + 8 * i) canHandleURLComponents:v5])
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

  v10 = [v5 URL];
  v6 = v10;
  if (v10)
  {
    if (a4)
    {
      v19 = *MEMORY[0x1E696A980];
      v20 = v10;
      v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v20 forKeys:&v19 count:1];
      *a4 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A978], -1002, v11, "+[LSAppLink(Private) URLComponentsAreValidForAppLinks:error:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Workspace/LSAppLink.mm", 920);
    }

    goto LABEL_15;
  }

  if (!a4)
  {
LABEL_15:
    v12 = 0;
    goto LABEL_16;
  }

  _LSMakeNSErrorImpl(*MEMORY[0x1E696A978], -1002, 0, "+[LSAppLink(Private) URLComponentsAreValidForAppLinks:error:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Workspace/LSAppLink.mm", 922);
  *a4 = v12 = 0;
LABEL_16:

  v13 = *MEMORY[0x1E69E9840];
  return v12;
}

+ (id)_appLinksWithState:(id)a3 context:(LSContext *)a4 limit:(unint64_t)a5 URLComponents:(id)a6 error:(id *)a7
{
  v34 = *MEMORY[0x1E69E9840];
  v26 = a3;
  v9 = a6;
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
        if ([(objc_class *)v15 canHandleURLComponents:v9])
        {
          v16 = objc_alloc_init(v15);
          if (v16)
          {
            v17 = [v9 copy];
            [v16 setURLComponents:v17];

            [v16 setLimit:a5];
            [v16 setState:v26];
            v28 = v12;
            v18 = [v16 appLinksWithContext:a4 error:&v28];
            v19 = v28;

            if (!v18 || ([v27 addObjectsFromArray:v18], v20 = objc_msgSend(v27, "count") < a5, v18, !v20))
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
    if ([v27 count] > a5)
    {
      [v27 removeObjectsInRange:{a5, objc_msgSend(v27, "count") - a5}];
    }

    v12 = 0;
  }

  else
  {
    v12 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -10814, 0, "+[LSAppLink(Private) _appLinksWithState:context:limit:URLComponents:error:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Workspace/LSAppLink.mm", 985);
  }

LABEL_24:
  if (a7 && !v27)
  {
    v21 = v12;
    *a7 = v12;
  }

  v22 = *MEMORY[0x1E69E9840];

  return v27;
}

- (id)_userActivityWithState:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = objc_alloc(MEMORY[0x1E696B090]);
  v8 = [v7 initWithActivityType:*MEMORY[0x1E696AA68]];
  if (v8)
  {
    v9 = [(LSAppLink *)self URL];
    [v8 setWebpageURL:v9];

    v10 = [v6 openConfiguration];
    v11 = [v10 referrerURL];
    [v8 setReferrerURL:v11];

    if (objc_opt_respondsToSelector())
    {
      [v8 set_universalLink:1];
    }
  }

  else if (a4)
  {
    *a4 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -41, 0, "[LSAppLink(Private) _userActivityWithState:error:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Workspace/LSAppLink.mm", 1011);
  }

  return v8;
}

@end