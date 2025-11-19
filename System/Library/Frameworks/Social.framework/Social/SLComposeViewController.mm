@interface SLComposeViewController
+ (BOOL)_isAvailableForServiceType:(id)a3 inHostApplicationBundleID:(id)a4;
+ (BOOL)_isMultiUserDevice;
+ (BOOL)_isServiceType:(id)a3;
+ (BOOL)_legacyBuiltInAvailabilityForService:(id)a3 inHostApplicationBundleID:(id)a4;
+ (BOOL)isAvailableForExtension:(id)a3;
+ (BOOL)isAvailableForExtension:(id)a3 inHostApplicationBundleID:(id)a4;
+ (BOOL)isAvailableForServiceType:(NSString *)serviceType;
+ (SLComposeViewController)composeViewControllerForServiceType:(NSString *)serviceType;
+ (id)_extensionIdentifierForServiceType:(id)a3;
+ (id)_serviceTypeForExtensionIdentifier:(id)a3;
+ (id)_serviceTypeToExtensionIdentifierMap;
+ (id)_shareExtensionWithIdentifier:(id)a3;
+ (id)_unsupportedServiceTypes;
+ (id)composeViewControllerForExtension:(id)a3;
+ (id)extensionIdentifierForActivityType:(id)a3;
- (BOOL)_addImageAsset:(id)a3 preview:(id)a4;
- (BOOL)_addImageJPEGData:(id)a3 preview:(id)a4;
- (BOOL)_addURL:(id)a3 type:(int64_t)a4 preview:(id)a5;
- (BOOL)_addVideoAsset:(id)a3 preview:(id)a4;
- (BOOL)_addVideoData:(id)a3 preview:(id)a4;
- (BOOL)addAttachment:(id)a3;
- (BOOL)addExtensionItem:(id)a3;
- (BOOL)addImage:(UIImage *)image;
- (BOOL)addImageAsset:(id)a3;
- (BOOL)addItemProvider:(id)a3;
- (BOOL)addURL:(NSURL *)url;
- (BOOL)addURL:(id)a3 withPreviewImage:(id)a4;
- (BOOL)removeAllImages;
- (BOOL)removeAllURLs;
- (BOOL)setInitialText:(NSString *)text;
- (BOOL)shouldAutorotateToInterfaceOrientation:(int64_t)a3;
- (BOOL)supportsImageAsset:(id)a3;
- (BOOL)supportsVideoAsset:(id)a3;
- (SLComposeViewController)initWithExtension:(id)a3 requestedServiceType:(id)a4;
- (SLComposeViewController)initWithServiceType:(id)a3;
- (void)_handleRemoteViewFailure;
- (void)_instantiateAndBeginExtensionIfNeededWithCompletion:(id)a3;
- (void)completeWithResult:(int64_t)a3;
- (void)dealloc;
- (void)didLoadSheetViewController;
- (void)remoteController:(id)a3 didLoadWithError:(id)a4;
- (void)remoteViewController:(id)a3 didTerminateWithError:(id)a4;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidUnload;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation SLComposeViewController

+ (id)_unsupportedServiceTypes
{
  if (_unsupportedServiceTypes_onceToken != -1)
  {
    +[SLComposeViewController _unsupportedServiceTypes];
  }

  v3 = _unsupportedServiceTypes__unsupportedServiceTypes;

  return v3;
}

uint64_t __51__SLComposeViewController__unsupportedServiceTypes__block_invoke()
{
  _unsupportedServiceTypes__unsupportedServiceTypes = [MEMORY[0x1E695DFD8] setWithObjects:{@"com.apple.social.facebook", @"com.apple.social.twitter", @"com.apple.social.sinaweibo", @"com.apple.social.flickr", @"com.apple.social.vimeo", @"com.apple.social.tencentweibo", 0}];

  return MEMORY[0x1EEE66BB8]();
}

+ (id)_serviceTypeToExtensionIdentifierMap
{
  if (_serviceTypeToExtensionIdentifierMap_onceToken != -1)
  {
    +[SLComposeViewController _serviceTypeToExtensionIdentifierMap];
  }

  v3 = _serviceTypeToExtensionIdentifierMap__map;

  return v3;
}

void __63__SLComposeViewController__serviceTypeToExtensionIdentifierMap__block_invoke()
{
  v3[6] = *MEMORY[0x1E69E9840];
  v2[0] = @"com.apple.social.facebook";
  v2[1] = @"com.apple.social.twitter";
  v3[0] = @"com.apple.share.Facebook.post";
  v3[1] = @"com.apple.share.Twitter.post";
  v2[2] = @"com.apple.social.sinaweibo";
  v2[3] = @"com.apple.social.flickr";
  v3[2] = @"com.apple.share.SinaWeibo.post";
  v3[3] = @"com.apple.share.Flickr.post";
  v2[4] = @"com.apple.social.vimeo";
  v2[5] = @"com.apple.social.tencentweibo";
  v3[4] = @"com.apple.share.Vimeo.post";
  v3[5] = @"com.apple.share.TencentWeibo.post";
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v3 forKeys:v2 count:6];
  v1 = _serviceTypeToExtensionIdentifierMap__map;
  _serviceTypeToExtensionIdentifierMap__map = v0;
}

+ (id)_extensionIdentifierForServiceType:(id)a3
{
  v4 = a3;
  v5 = [a1 _serviceTypeToExtensionIdentifierMap];
  v6 = [v5 objectForKey:v4];

  return v6;
}

+ (id)_serviceTypeForExtensionIdentifier:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [a1 _serviceTypeToExtensionIdentifierMap];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = [v5 allKeys];
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = *v15;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        v11 = [v5 objectForKey:v10];
        v12 = [v4 isEqualToString:v11];

        if (v12)
        {
          v7 = v10;
          goto LABEL_11;
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v7;
}

+ (BOOL)_isServiceType:(id)a3
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __42__SLComposeViewController__isServiceType___block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  v3 = _isServiceType__onceToken;
  v4 = a3;
  if (v3 != -1)
  {
    dispatch_once(&_isServiceType__onceToken, block);
  }

  v5 = [_isServiceType___serviceTypes containsObject:v4];

  return v5;
}

void __42__SLComposeViewController__isServiceType___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) _serviceTypeToExtensionIdentifierMap];
  v1 = [v3 allKeys];
  v2 = _isServiceType___serviceTypes;
  _isServiceType___serviceTypes = v1;
}

+ (id)extensionIdentifierForActivityType:(id)a3
{
  v13[6] = *MEMORY[0x1E69E9840];
  v4 = *MEMORY[0x1E69CDAD8];
  v12[0] = *MEMORY[0x1E69CDAC0];
  v12[1] = v4;
  v13[0] = @"com.apple.share.Facebook.post";
  v13[1] = @"com.apple.share.Twitter.post";
  v5 = *MEMORY[0x1E69CDAC8];
  v12[2] = *MEMORY[0x1E69CDAE8];
  v12[3] = v5;
  v13[2] = @"com.apple.share.SinaWeibo.post";
  v13[3] = @"com.apple.share.Flickr.post";
  v6 = *MEMORY[0x1E69CDAD0];
  v12[4] = *MEMORY[0x1E69CDAE0];
  v12[5] = v6;
  v13[4] = @"com.apple.share.Vimeo.post";
  v13[5] = @"com.apple.share.TencentWeibo.post";
  v7 = MEMORY[0x1E695DF20];
  v8 = a3;
  v9 = [v7 dictionaryWithObjects:v13 forKeys:v12 count:6];
  v11 = [v9 objectForKey:v8];
  _SLLog(v3, 7, @"SLComposeViewController extensionIdentifierForActivityType: %@ => %@");

  return v11;
}

+ (id)_shareExtensionWithIdentifier:(id)a3
{
  v3 = _shareExtensionWithIdentifier__onceToken;
  v4 = a3;
  if (v3 != -1)
  {
    +[SLComposeViewController _shareExtensionWithIdentifier:];
  }

  v5 = [_shareExtensionWithIdentifier___identifierToMatcherMap objectForKeyedSubscript:v4];

  v6 = [v5 extension];

  return v6;
}

void __57__SLComposeViewController__shareExtensionWithIdentifier___block_invoke()
{
  v9[6] = *MEMORY[0x1E69E9840];
  v8[0] = @"com.apple.share.Facebook.post";
  v0 = [[_SLExtensionLazyMatcher alloc] initWithIdentifier:@"com.apple.share.Facebook.post"];
  v9[0] = v0;
  v8[1] = @"com.apple.share.Twitter.post";
  v1 = [[_SLExtensionLazyMatcher alloc] initWithIdentifier:@"com.apple.share.Twitter.post"];
  v9[1] = v1;
  v8[2] = @"com.apple.share.SinaWeibo.post";
  v2 = [[_SLExtensionLazyMatcher alloc] initWithIdentifier:@"com.apple.share.SinaWeibo.post"];
  v9[2] = v2;
  v8[3] = @"com.apple.share.Flickr.post";
  v3 = [[_SLExtensionLazyMatcher alloc] initWithIdentifier:@"com.apple.share.Flickr.post"];
  v9[3] = v3;
  v8[4] = @"com.apple.share.Vimeo.post";
  v4 = [[_SLExtensionLazyMatcher alloc] initWithIdentifier:@"com.apple.share.Vimeo.post"];
  v9[4] = v4;
  v8[5] = @"com.apple.share.TencentWeibo.post";
  v5 = [[_SLExtensionLazyMatcher alloc] initWithIdentifier:@"com.apple.share.TencentWeibo.post"];
  v9[5] = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:6];
  v7 = _shareExtensionWithIdentifier___identifierToMatcherMap;
  _shareExtensionWithIdentifier___identifierToMatcherMap = v6;
}

+ (BOOL)_legacyBuiltInAvailabilityForService:(id)a3 inHostApplicationBundleID:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 isFirstClassService])
  {
    if ((![v7 hasPrefix:@"com.apple."] || !objc_msgSend(v7, "compare:options:", @"com.apple.gamecenter.GameCenterUIService", 1)) && (objc_msgSend(v6, "hasAccounts") & 1) == 0)
    {
      goto LABEL_5;
    }

LABEL_7:
    v8 = [a1 _isMultiUserDevice] ^ 1;
    goto LABEL_8;
  }

  if ([v6 hasAccounts])
  {
    goto LABEL_7;
  }

LABEL_5:
  LOBYTE(v8) = 0;
LABEL_8:

  return v8;
}

+ (BOOL)_isMultiUserDevice
{
  if (_isMultiUserDevice_onceToken != -1)
  {
    +[SLComposeViewController _isMultiUserDevice];
  }

  return _isMultiUserDevice_isMultiUserDevice;
}

void __45__SLComposeViewController__isMultiUserDevice__block_invoke()
{
  v3 = MKBUserTypeDeviceMode();
  v1 = [v3 objectForKeyedSubscript:*MEMORY[0x1E69B1A10]];
  v2 = [v1 isEqualToString:*MEMORY[0x1E69B1A18]];
  _isMultiUserDevice_isMultiUserDevice = v2;
  if (v2)
  {
    _SLLog(v0, 7, @"Built-in Social services disabled for multi-user mode.");
  }
}

+ (BOOL)isAvailableForExtension:(id)a3
{
  v4 = MEMORY[0x1E696AAE8];
  v5 = a3;
  v6 = [v4 mainBundle];
  v7 = [v6 bundleIdentifier];
  LOBYTE(a1) = [a1 isAvailableForExtension:v5 inHostApplicationBundleID:v7];

  return a1;
}

+ (BOOL)isAvailableForServiceType:(NSString *)serviceType
{
  v5 = serviceType;
  v6 = [a1 _unsupportedServiceTypes];
  v7 = [v6 containsObject:v5];

  if (v7)
  {
    _SLLog(v3, 3, @"isAvailableForServiceType: for %@ returning NO");
    v8 = 0;
  }

  else
  {
    v9 = [MEMORY[0x1E696AAE8] mainBundle];
    v10 = [v9 bundleIdentifier];
    v8 = [a1 _isAvailableForServiceType:v5 inHostApplicationBundleID:v10];
  }

  return v8;
}

+ (BOOL)isAvailableForExtension:(id)a3 inHostApplicationBundleID:(id)a4
{
  v7 = a3;
  v8 = a4;
  _SLLog(v4, 7, @"SLComposeViewController isAvailableForExtension: %@ inHostApplicationBundleID: %@");
  v9 = [v7 _plugIn];
  v10 = [v9 supersededBy];

  if (v10)
  {
    v11 = 1;
  }

  else
  {
    v12 = [v7 identifier];
    v13 = [a1 _serviceTypeForExtensionIdentifier:v12];

    _SLLog(v4, 7, @"SLComposeViewController isAvailableForExtension: %@ inHostApplicationBundleID: %@ got serviceType %@");
    if (v13)
    {
      v14 = [SLService serviceForServiceType:v13, v7, v8, v13];
      v11 = [a1 _legacyBuiltInAvailabilityForService:v14 inHostApplicationBundleID:v8];
    }

    else
    {
      v11 = 1;
    }
  }

  return v11;
}

+ (BOOL)_isAvailableForServiceType:(id)a3 inHostApplicationBundleID:(id)a4
{
  v7 = a3;
  v8 = a4;
  _SLLog(v4, 7, @"SLComposeViewController isAvailableForServiceType %@");
  v9 = [a1 _isServiceType:{v7, v7}];
  v10 = v7;
  if (v9)
  {
    v11 = [a1 _extensionIdentifierForServiceType:v10];
    v12 = v10;
  }

  else
  {
    v12 = [a1 _serviceTypeForExtensionIdentifier:v10];
    v11 = v10;
  }

  if (v12)
  {
    v13 = [SLService serviceForServiceType:v12];
    v14 = [a1 _legacyBuiltInAvailabilityForService:v13 inHostApplicationBundleID:v8];

    [MEMORY[0x1E696AD98] numberWithBool:v14];
    v21 = v20 = v12;
    _SLLog(v4, 7, @"SLComposeViewController isAvailableForServiceType got serviceType %@ isAvailable %@");

    if ((v14 & 1) == 0)
    {
      v15 = [SLComposeViewController _shareExtensionWithIdentifier:v11, v12, v21];
      _SLLog(v4, 7, @"SLComposeViewController isAvailableForServiceType got extension %@ for extensionIdentifer %@");
      if (v15)
      {
        v16 = [v15 _plugIn];
        v17 = [v16 supersededBy];

        if (v17)
        {
          v20 = v11;
          _SLLog(v4, 7, @"SLComposeViewController isAvailableForServiceType returning YES for overridden extensionIdentifier %@");
          v18 = 1;
LABEL_13:

          goto LABEL_14;
        }
      }

      else
      {
        v20 = v11;
        _SLLog(v4, 3, @"SLComposeViewController isAvailableForServiceType failed to get extension for identifier %@");
      }

      v18 = 0;
      goto LABEL_13;
    }
  }

  else
  {
    v20 = v11;
    _SLLog(v4, 7, @"SLComposeViewController isAvailableForServiceType returning YES for extensionIdentifer %@");
  }

  v18 = 1;
LABEL_14:
  v22 = [MEMORY[0x1E696AD98] numberWithBool:{v18, v20}];
  _SLLog(v4, 7, @"SLComposeViewController isAvailableForServiceType %@ returning %@");

  return v18;
}

- (SLComposeViewController)initWithExtension:(id)a3 requestedServiceType:(id)a4
{
  v8 = a3;
  v9 = a4;
  _SLLog(v4, 7, @"SLComposeViewController initWithExtension: %@ requestedServiceType: %@");
  v10 = objc_opt_class();
  v11 = [v8 identifier];
  v12 = [v10 _serviceTypeForExtensionIdentifier:v11];

  if (v12)
  {
    v13 = [SLService serviceForServiceType:v12];
    if (([v13 isFirstClassService] & 1) == 0 && !objc_msgSend(v13, "hasAccounts"))
    {
      v14 = 0;
      goto LABEL_30;
    }
  }

  else
  {
    v13 = 0;
  }

  v37.receiver = self;
  v37.super_class = SLComposeViewController;
  v15 = [(SLComposeViewController *)&v37 initWithNibName:0 bundle:0];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_extension, a3);
    v17 = objc_opt_new();
    itemProviders = v16->_itemProviders;
    v16->_itemProviders = v17;

    if (v9)
    {
      v19 = v9;
    }

    else
    {
      v19 = &stru_1F41EC300;
    }

    serviceType = v16->_serviceType;
    v16->_serviceType = &v19->isa;

    if (v13)
    {
      v16->_maximumImageCount = [v13 maximumImageCount];
      v16->_maximumURLCount = [v13 maximumURLCount];
      v16->_maximumVideoCount = [v13 maximumVideoCount];
    }

    else
    {
      v16->_maximumImageCount = 0;
      v16->_maximumURLCount = 0;
      v16->_maximumVideoCount = 0;
      v21 = [(NSExtension *)v16->_extension attributes];
      v22 = [v21 objectForKeyedSubscript:@"NSExtensionActivationRule"];

      if (v22)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v23 = [v22 objectForKeyedSubscript:@"NSExtensionActivationSupportsImageWithMaxCount"];
          if (v23)
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v16->_maximumImageCount = [v23 integerValue];
            }
          }

          v24 = [v22 objectForKeyedSubscript:@"NSExtensionActivationSupportsWebURLWithMaxCount"];

          if (v24)
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v16->_maximumURLCount = [v24 integerValue];
            }
          }

          v25 = [v22 objectForKeyedSubscript:@"NSExtensionActivationSupportsMovieWithMaxCount"];

          if (v25)
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v16->_maximumVideoCount = [v25 integerValue];
            }
          }
        }

        else
        {
          v16->_maximumImageCount = -1;
          v16->_maximumURLCount = -1;
          v16->_maximumVideoCount = -1;
        }
      }
    }

    if (!v16->_extension)
    {
      v16->_didFailLoadingRemoteViewController = 1;
    }

    objc_initWeak(&location, v16);
    v34[0] = MEMORY[0x1E69E9820];
    v34[1] = 3221225472;
    v34[2] = __66__SLComposeViewController_initWithExtension_requestedServiceType___block_invoke;
    v34[3] = &unk_1E8175D20;
    objc_copyWeak(&v35, &location);
    [(NSExtension *)v16->_extension setRequestCompletionBlock:v34];
    v32[0] = MEMORY[0x1E69E9820];
    v32[1] = 3221225472;
    v32[2] = __66__SLComposeViewController_initWithExtension_requestedServiceType___block_invoke_3;
    v32[3] = &unk_1E8175B70;
    objc_copyWeak(&v33, &location);
    [(NSExtension *)v16->_extension setRequestCancellationBlock:v32];
    v26 = [(SLComposeViewController *)v16 view];
    [v26 setOpaque:0];

    v27 = [(SLComposeViewController *)v16 view];
    [v27 setClipsToBounds:0];

    v28 = [MEMORY[0x1E69DC888] clearColor];
    v29 = [(SLComposeViewController *)v16 view];
    [v29 setBackgroundColor:v28];

    v30 = [(SLComposeViewController *)v16 view];
    [v30 setAutoresizingMask:18];

    [(SLComposeViewController *)v16 setModalPresentationStyle:17];
    [(SLComposeViewController *)v16 setShouldForceNonAnimatedTransition:1];
    objc_destroyWeak(&v33);
    objc_destroyWeak(&v35);
    objc_destroyWeak(&location);
  }

  self = v16;
  v14 = self;
LABEL_30:

  return v14;
}

void __66__SLComposeViewController_initWithExtension_requestedServiceType___block_invoke(uint64_t a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __66__SLComposeViewController_initWithExtension_requestedServiceType___block_invoke_2;
  block[3] = &unk_1E8175C10;
  objc_copyWeak(&v2, (a1 + 32));
  dispatch_async(MEMORY[0x1E69E96A0], block);
  objc_destroyWeak(&v2);
}

void __66__SLComposeViewController_initWithExtension_requestedServiceType___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained completeWithResult:1];
    WeakRetained = v2;
  }
}

void __66__SLComposeViewController_initWithExtension_requestedServiceType___block_invoke_3(uint64_t a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __66__SLComposeViewController_initWithExtension_requestedServiceType___block_invoke_4;
  block[3] = &unk_1E8175C10;
  objc_copyWeak(&v2, (a1 + 32));
  dispatch_async(MEMORY[0x1E69E96A0], block);
  objc_destroyWeak(&v2);
}

void __66__SLComposeViewController_initWithExtension_requestedServiceType___block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained completeWithResult:0];
    WeakRetained = v2;
  }
}

- (SLComposeViewController)initWithServiceType:(id)a3
{
  v5 = a3;
  _SLLog(v3, 7, @"SLComposeViewController initWithServiceType: %@");
  if ([objc_opt_class() _isServiceType:{v5, v5}])
  {
    v6 = v5;
    v7 = [objc_opt_class() _extensionIdentifierForServiceType:v6];
  }

  else
  {
    v6 = [objc_opt_class() _serviceTypeForExtensionIdentifier:v5];
    v7 = v5;
  }

  v8 = v7;
  v9 = [SLComposeViewController _shareExtensionWithIdentifier:v7];
  v18 = v9;
  _SLLog(v3, 7, @"SLComposeViewController initWithServiceType got extension %@ for identifier %@");
  if (v9 || (+[SLComposeViewController _unsupportedServiceTypes](SLComposeViewController, "_unsupportedServiceTypes", 0, v8), v10 = objc_claimAutoreleasedReturnValue(), v11 = [v10 containsObject:v8], v10, !v11) || (+[SLService serviceForServiceType:](SLService, "serviceForServiceType:", v6), v12 = objc_claimAutoreleasedReturnValue(), objc_msgSend(MEMORY[0x1E696AAE8], "mainBundle"), v13 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v13, "bundleIdentifier"), v14 = objc_claimAutoreleasedReturnValue(), v15 = +[SLComposeViewController _legacyBuiltInAvailabilityForService:inHostApplicationBundleID:](SLComposeViewController, "_legacyBuiltInAvailabilityForService:inHostApplicationBundleID:", v12, v14), v14, v13, v12, v15))
  {
    self = [(SLComposeViewController *)self initWithExtension:v9 requestedServiceType:v6, v18];
    v16 = self;
  }

  else
  {
    _SLLog(v3, 3, @"SLComposeViewController initWithServiceType failed to get extension for identifier %@");
    v16 = 0;
  }

  return v16;
}

+ (id)composeViewControllerForExtension:(id)a3
{
  v4 = a3;
  v5 = [v4 identifier];
  v6 = [a1 _serviceTypeForExtensionIdentifier:v5];

  v7 = [[a1 alloc] initWithExtension:v4 requestedServiceType:v6];

  return v7;
}

+ (SLComposeViewController)composeViewControllerForServiceType:(NSString *)serviceType
{
  v4 = serviceType;
  v5 = [[a1 alloc] initWithServiceType:v4];

  return v5;
}

- (void)dealloc
{
  _SLLog(v2, 7, @"SLComposeViewController dealloc %@");
  v4 = [MEMORY[0x1E696AD88] defaultCenter];
  [v4 removeObserver:self];

  v6.receiver = self;
  v6.super_class = SLComposeViewController;
  [(SLComposeViewController *)&v6 dealloc];
}

- (BOOL)setInitialText:(NSString *)text
{
  v4 = text;
  v5 = [(SLComposeViewController *)self canAddContent];
  if (v5)
  {
    v6 = [(NSString *)v4 copy];
    initialText = self->_initialText;
    self->_initialText = v6;
  }

  return v5;
}

- (BOOL)supportsImageAsset:(id)a3
{
  v4 = a3;
  _SLLog(v3, 7, @"supportsImageAsset start");
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if ((isKindOfClass & 1) == 0)
  {
    v6 = objc_opt_class();
    v8 = NSStringFromClass(v6);
    _SLLog(v3, 3, @"Unsupported asset type %@");
  }

  return isKindOfClass & 1;
}

- (BOOL)supportsVideoAsset:(id)a3
{
  v4 = a3;
  _SLLog(v3, 7, @"supportsVideoAsset start");
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if ((isKindOfClass & 1) == 0)
  {
    v6 = objc_opt_class();
    v8 = NSStringFromClass(v6);
    _SLLog(v3, 3, @"Unsupported asset type %@");
  }

  return isKindOfClass & 1;
}

- (BOOL)addImageAsset:(id)a3
{
  v5 = a3;
  _SLLog(v3, 7, @"addImageAsset: start");
  LOBYTE(self) = [(SLComposeViewController *)self _addImageAsset:v5 preview:0];

  return self;
}

- (BOOL)_addImageAsset:(id)a3 preview:(id)a4
{
  v24[2] = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  _SLLog(v4, 7, @"SLComposeViewController _addImageAsset: %@ preview: %@");
  if (![(SLComposeViewController *)self supportsImageAsset:v7, v7, v8])
  {
    _SLLog(v4, 3, @"Asset type not supported");
LABEL_11:
    v19 = 0;
    goto LABEL_12;
  }

  if (![(SLComposeViewController *)self canAddContent])
  {
    goto LABEL_11;
  }

  maximumImageCount = self->_maximumImageCount;
  if (maximumImageCount != -1 && self->_numImagesAdded >= maximumImageCount)
  {
    goto LABEL_11;
  }

  v10 = [v7 scheme];
  v11 = [v10 isEqualToString:@"file"];
  v12 = MEMORY[0x1E69637C0];
  if (!v11)
  {
    v12 = MEMORY[0x1E69638B8];
  }

  v13 = *v12;

  v14 = [objc_alloc(MEMORY[0x1E696ACA0]) initWithItem:v7 typeIdentifier:v13];
  v23[0] = @"SLItemProviderIsImage";
  v23[1] = @"SLItemProviderHasPreview";
  v24[0] = MEMORY[0x1E695E118];
  v15 = [MEMORY[0x1E696AD98] numberWithInt:v8 != 0];
  v24[1] = v15;
  v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:v23 count:2];
  [v14 setUserInfo:v16];

  if (v8)
  {
    _SLLog(v4, 7, @"SLComposeViewController _addImageAsset:preview: supplying itemProvider.previewImageHandler");
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __50__SLComposeViewController__addImageAsset_preview___block_invoke;
    v21[3] = &unk_1E8175D48;
    v22 = v8;
    [v14 setPreviewImageHandler:v21];
  }

  ++self->_numImagesAdded;
  v17 = [(NSArray *)self->_itemProviders arrayByAddingObject:v14];
  itemProviders = self->_itemProviders;
  self->_itemProviders = v17;

  v19 = 1;
LABEL_12:

  return v19;
}

void __50__SLComposeViewController__addImageAsset_preview___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  _SLLog(v2, 7, @"SLComposeViewController _addImageAsset:preview: itemProvider previewImageHandler got expectedValueClass %@ options %@");
  (*(v4 + 2))(v4, *(a1 + 32), 0);
}

- (BOOL)addImage:(UIImage *)image
{
  v5 = image;
  _SLLog(v3, 7, @"addImage start");
  if ([(SLComposeViewController *)self canAddContent]&& ((maximumImageCount = self->_maximumImageCount, maximumImageCount == -1) || self->_numImagesAdded < maximumImageCount))
  {
    v7 = UIImageJPEGRepresentation(v5, 0.8);
    v8 = [(SLComposeViewController *)self _addImageJPEGData:v7 preview:0];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)_addImageJPEGData:(id)a3 preview:(id)a4
{
  v24[2] = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  if ([(SLComposeViewController *)self canAddContent]&& ((maximumImageCount = self->_maximumImageCount, maximumImageCount == -1) || self->_numImagesAdded < maximumImageCount))
  {
    v10 = objc_alloc(MEMORY[0x1E696ACA0]);
    v11 = [v10 initWithItem:v7 typeIdentifier:*MEMORY[0x1E6963808]];
    v23[0] = @"SLItemProviderIsImage";
    v23[1] = @"SLItemProviderHasPreview";
    v24[0] = MEMORY[0x1E695E118];
    v12 = [MEMORY[0x1E696AD98] numberWithInt:v8 != 0];
    v24[1] = v12;
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:v23 count:2];
    [v11 setUserInfo:v13];

    if (v8)
    {
      _SLLog(v4, 7, @"SLComposeViewController _addImageJPEGData:preview: supplying itemProvider.previewImageHandler");
      v18 = MEMORY[0x1E69E9820];
      v19 = 3221225472;
      v20 = __53__SLComposeViewController__addImageJPEGData_preview___block_invoke;
      v21 = &unk_1E8175D48;
      v22 = v8;
      [v11 setPreviewImageHandler:&v18];
    }

    ++self->_numImagesAdded;
    v14 = [(NSArray *)self->_itemProviders arrayByAddingObject:v11, v18, v19, v20, v21];
    itemProviders = self->_itemProviders;
    self->_itemProviders = v14;

    v16 = 1;
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

void __53__SLComposeViewController__addImageJPEGData_preview___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  _SLLog(v2, 7, @"SLComposeViewController _addImageJPEGData:preview: itemProvider previewImageHandler got expectedValueClass %@ options %@");
  (*(v4 + 2))(v4, *(a1 + 32), 0);
}

- (BOOL)removeAllImages
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = [(SLComposeViewController *)self canAddContent];
  v5 = v4;
  if (v4)
  {
    v18 = v4;
    v6 = [(NSArray *)self->_itemProviders mutableCopy];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v17 = 1008;
    v7 = self->_itemProviders;
    v8 = [(NSArray *)v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v20;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v20 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v19 + 1) + 8 * i);
          v13 = [v12 userInfo];
          v14 = [v13 objectForKeyedSubscript:@"SLItemProviderIsImage"];

          if (v14)
          {
            [v6 removeObject:v12];
          }
        }

        v9 = [(NSArray *)v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v9);
    }

    self->_numImagesAdded = 0;
    v15 = *(&self->super.super.super.isa + v17);
    *(&self->super.super.super.isa + v17) = v6;

    return v18;
  }

  else
  {
    _SLLog(v2, 6, @"Can't remove images - sheet already presented, returning NO");
  }

  return v5;
}

- (BOOL)_addVideoAsset:(id)a3 preview:(id)a4
{
  v24[2] = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  _SLLog(v4, 7, @"SLComposeViewController _addVideoAsset: %@ preview: %@");
  if ([(SLComposeViewController *)self supportsVideoAsset:v7, v7, v8]&& [(SLComposeViewController *)self canAddContent]&& ((maximumVideoCount = self->_maximumVideoCount, maximumVideoCount == -1) || self->_numVideosAdded < maximumVideoCount))
  {
    v10 = [v7 scheme];
    v11 = [v10 isEqualToString:@"file"];
    v12 = MEMORY[0x1E69637C0];
    if (!v11)
    {
      v12 = MEMORY[0x1E69638B8];
    }

    v13 = *v12;

    v14 = [objc_alloc(MEMORY[0x1E696ACA0]) initWithItem:v7 typeIdentifier:v13];
    v23[0] = @"SLItemProviderIsVideo";
    v23[1] = @"SLItemProviderHasPreview";
    v24[0] = MEMORY[0x1E695E118];
    v15 = [MEMORY[0x1E696AD98] numberWithInt:v8 != 0];
    v24[1] = v15;
    v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:v23 count:2];
    [v14 setUserInfo:v16];

    if (v8)
    {
      _SLLog(v4, 7, @"SLComposeViewController _addVideoAsset:preview: supplying itemProvider.previewImageHandler");
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __50__SLComposeViewController__addVideoAsset_preview___block_invoke;
      v21[3] = &unk_1E8175D48;
      v22 = v8;
      [v14 setPreviewImageHandler:v21];
    }

    ++self->_numVideosAdded;
    v17 = [(NSArray *)self->_itemProviders arrayByAddingObject:v14];
    itemProviders = self->_itemProviders;
    self->_itemProviders = v17;

    v19 = 1;
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

void __50__SLComposeViewController__addVideoAsset_preview___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  _SLLog(v2, 7, @"SLComposeViewController _addVideoAsset:preview: itemProvider previewImageHandler got expectedValueClass %@ options %@");
  (*(v4 + 2))(v4, *(a1 + 32), 0);
}

- (BOOL)_addVideoData:(id)a3 preview:(id)a4
{
  v24[2] = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  if ([(SLComposeViewController *)self canAddContent]&& ((maximumVideoCount = self->_maximumVideoCount, maximumVideoCount == -1) || self->_numVideosAdded < maximumVideoCount))
  {
    v10 = objc_alloc(MEMORY[0x1E696ACA0]);
    v11 = [v10 initWithItem:v7 typeIdentifier:*MEMORY[0x1E6963850]];
    v23[0] = @"SLItemProviderIsVideo";
    v23[1] = @"SLItemProviderHasPreview";
    v24[0] = MEMORY[0x1E695E118];
    v12 = [MEMORY[0x1E696AD98] numberWithInt:v8 != 0];
    v24[1] = v12;
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:v23 count:2];
    [v11 setUserInfo:v13];

    if (v8)
    {
      _SLLog(v4, 7, @"SLComposeViewController _addVideoData:preview: supplying itemProvider.previewImageHandler");
      v18 = MEMORY[0x1E69E9820];
      v19 = 3221225472;
      v20 = __49__SLComposeViewController__addVideoData_preview___block_invoke;
      v21 = &unk_1E8175D48;
      v22 = v8;
      [v11 setPreviewImageHandler:&v18];
    }

    ++self->_numVideosAdded;
    v14 = [(NSArray *)self->_itemProviders arrayByAddingObject:v11, v18, v19, v20, v21];
    itemProviders = self->_itemProviders;
    self->_itemProviders = v14;

    v16 = 1;
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

void __49__SLComposeViewController__addVideoData_preview___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  _SLLog(v2, 7, @"SLComposeViewController _addVideoData:preview: itemProvider previewImageHandler got expectedValueClass %@ options %@");
  (*(v4 + 2))(v4, *(a1 + 32), 0);
}

- (BOOL)addURL:(NSURL *)url
{
  v5 = url;
  _SLLog(v3, 7, @"addURL: start");
  LOBYTE(self) = [(SLComposeViewController *)self addURL:v5 withPreviewImage:0];

  return self;
}

- (BOOL)addURL:(id)a3 withPreviewImage:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 isMusicStoreURL])
  {
    v8 = 3;
  }

  else if ([v6 isAppStoreURL])
  {
    v8 = 4;
  }

  else
  {
    v8 = 0;
  }

  v9 = [(SLComposeViewController *)self _addURL:v6 type:v8 preview:v7];

  return v9;
}

- (BOOL)_addURL:(id)a3 type:(int64_t)a4 preview:(id)a5
{
  v28[3] = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a5;
  v24 = [MEMORY[0x1E696AD98] numberWithInteger:a4];
  _SLLog(v5, 7, @"SLComposeViewController _addURL: %@ type: %@ preview: %@");

  if ([(SLComposeViewController *)self canAddContent:v9]&& ((maximumURLCount = self->_maximumURLCount, maximumURLCount == -1) || self->_numURLsAdded < maximumURLCount))
  {
    v12 = [v9 scheme];
    v13 = [v12 isEqualToString:@"file"];
    v14 = MEMORY[0x1E69637C0];
    if (!v13)
    {
      v14 = MEMORY[0x1E69638B8];
    }

    v15 = *v14;

    v16 = [objc_alloc(MEMORY[0x1E696ACA0]) initWithItem:v9 typeIdentifier:v15];
    v28[0] = MEMORY[0x1E695E118];
    v27[0] = @"SLItemProviderIsURL";
    v27[1] = @"SLAttachmentURLType";
    v17 = [MEMORY[0x1E696AD98] numberWithInteger:a4];
    v28[1] = v17;
    v27[2] = @"SLItemProviderHasPreview";
    v18 = [MEMORY[0x1E696AD98] numberWithInt:v10 != 0];
    v28[2] = v18;
    v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v28 forKeys:v27 count:3];
    [v16 setUserInfo:v19];

    if (v10)
    {
      _SLLog(v5, 7, @"SLComposeViewController _addURL:type:preview: supplying itemProvider.previewImageHandler");
      v25[0] = MEMORY[0x1E69E9820];
      v25[1] = 3221225472;
      v25[2] = __48__SLComposeViewController__addURL_type_preview___block_invoke;
      v25[3] = &unk_1E8175D48;
      v26 = v10;
      [v16 setPreviewImageHandler:v25];
    }

    ++self->_numURLsAdded;
    v20 = [(NSArray *)self->_itemProviders arrayByAddingObject:v16];
    itemProviders = self->_itemProviders;
    self->_itemProviders = v20;

    v22 = 1;
  }

  else
  {
    v22 = 0;
  }

  return v22;
}

void __48__SLComposeViewController__addURL_type_preview___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  _SLLog(v2, 7, @"SLComposeViewController _addURL:type:preview: itemProvider previewImageHandler got expectedValueClass %@ options %@");
  (*(v4 + 2))(v4, *(a1 + 32), 0);
}

- (BOOL)removeAllURLs
{
  v33 = *MEMORY[0x1E69E9840];
  _SLLog(v2, 7, @"SLComposeViewController removeAllURLs");
  v4 = [(SLComposeViewController *)self canAddContent];
  v5 = v4;
  if (v4)
  {
    v26 = v4;
    if ([(NSArray *)self->_extensionItems count])
    {
      v6 = [MEMORY[0x1E696AAE8] mainBundle];
      v7 = [v6 bundleIdentifier];
      v8 = [v7 isEqualToString:@"com.apple.itunesu"];

      if (v8)
      {
        if (![(NSString *)self->_initialText length])
        {
          v9 = [(NSArray *)self->_extensionItems objectAtIndexedSubscript:0];
          v10 = [v9 attributedContentText];
          v11 = [v10 string];
          initialText = self->_initialText;
          self->_initialText = v11;
        }

        extensionItems = self->_extensionItems;
        self->_extensionItems = 0;

        _SLLog(v2, 7, @"SLComposeViewController removeAllURLs did remove all _extensionItems and transfer the first items text to _initialText");
      }
    }

    v27 = [(NSArray *)self->_itemProviders mutableCopy];
    _SLLog(v2, 7, @"SLComposeViewController removeAllURLs starting with mutableItemProviders %@");
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v25 = self;
    v14 = self->_itemProviders;
    v15 = [(NSArray *)v14 countByEnumeratingWithState:&v28 objects:v32 count:16, v27];
    if (v15)
    {
      v16 = v15;
      v17 = *v29;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v29 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = *(*(&v28 + 1) + 8 * i);
          v24 = [v19 userInfo];
          _SLLog(v2, 7, @"SLComposeViewController removeAllURLs examining itemProvider.userInfo %@");

          v20 = [v19 userInfo];
          v21 = [v20 objectForKeyedSubscript:@"SLItemProviderIsURL"];

          if (v21)
          {
            [(NSArray *)v27 removeObject:v19];
          }
        }

        v16 = [(NSArray *)v14 countByEnumeratingWithState:&v28 objects:v32 count:16];
      }

      while (v16);
    }

    _SLLog(v2, 7, @"SLComposeViewController removeAllURLs ended with mutableItemProviders %@");
    v25->_numURLsAdded = 0;
    itemProviders = v25->_itemProviders;
    v25->_itemProviders = v27;

    return v26;
  }

  else
  {
    _SLLog(v2, 6, @"Can't remove URLs - sheet already presented, returning NO");
  }

  return v5;
}

- (BOOL)addItemProvider:(id)a3
{
  v5 = a3;
  _SLLog(v3, 7, @"SLComposeViewController addItemProvider: %@");
  v6 = [(SLComposeViewController *)self canAddContent];
  if (v6)
  {
    v7 = [(NSArray *)self->_itemProviders arrayByAddingObject:v5];
    itemProviders = self->_itemProviders;
    self->_itemProviders = v7;
  }

  else
  {
    _SLLog(v3, 6, @"Can't addItemProvider - sheet already presented, returning NO");
  }

  return v6;
}

- (BOOL)addExtensionItem:(id)a3
{
  v11[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  _SLLog(v3, 7, @"SLComposeViewController addExtensionItem: %@");
  v6 = [(SLComposeViewController *)self canAddContent];
  if (v6)
  {
    extensionItems = self->_extensionItems;
    if (extensionItems)
    {
      v8 = [(NSArray *)extensionItems arrayByAddingObject:v5];
    }

    else
    {
      v11[0] = v5;
      v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
    }

    v9 = self->_extensionItems;
    self->_extensionItems = v8;
  }

  else
  {
    _SLLog(v3, 6, @"Can't addExtensionItem - sheet already presented, returning NO");
  }

  return v6;
}

- (BOOL)addAttachment:(id)a3
{
  v4 = a3;
  v5 = [v4 type];
  v6 = 0;
  if (v5 <= 5)
  {
    if (v5 <= 3)
    {
      if (!v5)
      {
        v7 = [v4 payload];
        v8 = [v4 previewImage];
        v9 = [(SLComposeViewController *)self _addImageJPEGData:v7 preview:v8];
        goto LABEL_18;
      }

      if (v5 == 2)
      {
        v7 = [v4 payload];
        v8 = [v4 previewImage];
        v9 = [(SLComposeViewController *)self _addImageAsset:v7 preview:v8];
LABEL_18:
        v6 = v9;

        goto LABEL_19;
      }

      goto LABEL_19;
    }

    if (v5 == 4)
    {
      v7 = [v4 payload];
      v8 = [v4 previewImage];
      v10 = self;
      v11 = v7;
      v12 = 0;
    }

    else
    {
      v7 = [v4 payload];
      v8 = [v4 previewImage];
      v10 = self;
      v11 = v7;
      v12 = 3;
    }

LABEL_17:
    v9 = [(SLComposeViewController *)v10 _addURL:v11 type:v12 preview:v8];
    goto LABEL_18;
  }

  if (v5 <= 7)
  {
    if (v5 == 6)
    {
      v7 = [v4 payload];
      v8 = [v4 previewImage];
      v10 = self;
      v11 = v7;
      v12 = 4;
    }

    else
    {
      v7 = [v4 payload];
      v8 = [v4 previewImage];
      v10 = self;
      v11 = v7;
      v12 = 5;
    }

    goto LABEL_17;
  }

  if (v5 == 8)
  {
    v7 = [v4 payload];
    v8 = [v4 previewImage];
    v9 = [(SLComposeViewController *)self _addVideoData:v7 preview:v8];
    goto LABEL_18;
  }

  if (v5 == 9)
  {
    v7 = [v4 payload];
    v8 = [v4 previewImage];
    v9 = [(SLComposeViewController *)self _addVideoAsset:v7 preview:v8];
    goto LABEL_18;
  }

LABEL_19:

  return v6;
}

- (void)completeWithResult:(int64_t)a3
{
  v12 = a3;
  _SLLog(v3, 7, @"SLComposeViewController completeWithResult: %d");
  self->_didCompleteSheet = 1;
  if (self->_completionHandler)
  {
    v6 = [(SLComposeViewController *)self serviceType];
    if ([v6 isEqualToString:@"com.apple.social.sinaweibo"])
    {
      v7 = dyld_program_sdk_at_least();

      completionHandler = self->_completionHandler;
      if (completionHandler)
      {
        completionHandler[2](completionHandler, a3);
        v9 = self->_completionHandler;
        self->_completionHandler = 0;
      }

      if ((v7 & 1) == 0)
      {

        _SLLog(v3, 6, @"Expecting client to dismiss SLComposeViewController.");
        return;
      }
    }

    else
    {

      v10 = self->_completionHandler;
      if (v10)
      {
        v10[2](v10, a3);
        v11 = self->_completionHandler;
        self->_completionHandler = 0;
      }
    }
  }

  if ([(SLComposeViewController *)self isBeingDismissed])
  {
    v13 = [MEMORY[0x1E696AD98] numberWithBool:{-[SLComposeViewController isBeingDismissed](self, "isBeingDismissed")}];
    _SLLog(v3, 7, @"SLComposeViewController skipping explicit dismiss because isBeingDismissed is already %@");
  }

  else
  {
    _SLLog(v3, 7, @"SLComposeViewController automatically dismissing itself");
    v13 = [(SLComposeViewController *)self presentingViewController];
    [v13 dismissViewControllerAnimated:1 completion:0];
  }
}

- (void)didLoadSheetViewController
{
  v3 = [(SLComposeViewController *)self remoteViewController];
  [v3 willMoveToParentViewController:self];

  v4 = [(SLComposeViewController *)self remoteViewController];
  [(SLComposeViewController *)self addChildViewController:v4];

  v5 = [(SLComposeViewController *)self view];
  v6 = [(SLComposeViewController *)self remoteViewController];
  v7 = [v6 view];
  [v5 addSubview:v7];

  v8 = [(SLComposeViewController *)self view];
  v9 = [(SLComposeViewController *)self remoteViewController];
  v10 = [v9 view];
  [v8 bringSubviewToFront:v10];

  v11 = [(SLComposeViewController *)self view];
  [v11 bounds];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v20 = [(SLComposeViewController *)self remoteViewController];
  v21 = [v20 view];
  [v21 setFrame:{v13, v15, v17, v19}];

  v22 = [(SLComposeViewController *)self remoteViewController];
  v23 = [v22 view];
  [v23 setAlpha:1.0];

  v24 = [(SLComposeViewController *)self remoteViewController];
  [v24 didMoveToParentViewController:self];

  v25 = [(SLComposeViewController *)self view];
  [v25 setNeedsLayout];
}

- (void)_handleRemoteViewFailure
{
  if (([(SLComposeViewController *)self isBeingPresented]& 1) != 0)
  {
    _SLLog(v2, 3, @"Sheet is being presented, delaying dismissal and callbacks");
  }

  else
  {
    _SLLog(v2, 3, @"Sheet not being presented, calling premature completion");
    [(SLComposeViewController *)self completeWithResult:0];
  }

  self->_hasInstantiatedExtensionUI = 1;
  self->_didFailLoadingRemoteViewController = 1;
}

- (void)remoteController:(id)a3 didLoadWithError:(id)a4
{
  v8 = a3;
  if (a4)
  {
    _SLLog(v4, 3, @"HOST: Failed to load remote view controller with error: %@");
    [(SLComposeViewController *)self _handleRemoteViewFailure];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      _SLLog(v4, 7, @"SLComposeViewController received remoteViewController of class SLRemoteComposeViewController, and setting its delegate to self");
      [v8 setDelegate:self];
    }

    v7 = [v8 view];
    [v7 setClipsToBounds:0];

    _SLLog(v4, 6, @"HOST: Successfully loaded remote SLComposeVC");
    [(SLComposeViewController *)self setRemoteViewController:v8];
    _SLLog(v4, 6, @"[remoteViewController setupRemoteViewController]");
    [(SLComposeViewController *)self setRemoteViewController:v8];
    [(SLComposeViewController *)self didLoadSheetViewController];
    _SLLog(v4, 6, @"Finished setting up remote view controller");
  }
}

- (void)remoteViewController:(id)a3 didTerminateWithError:(id)a4
{
  _SLLog(v4, 7, @"SLComposeViewController remoteViewController: %@ didTerminateWithError: %@");
  if (!self->_didCompleteSheet)
  {

    [(SLComposeViewController *)self completeWithResult:0];
  }
}

- (void)viewWillAppear:(BOOL)a3
{
  v4 = a3;
  _SLLog(v3, 7, @"viewWillAppear");
  self->_wasPresented = 1;
  v7.receiver = self;
  v7.super_class = SLComposeViewController;
  [(SLComposeViewController *)&v7 viewWillAppear:v4];
  v6 = [MEMORY[0x1E69DC668] sharedApplication];
  self->_savedStatusBarStyle = [v6 statusBarStyle];

  [(SLComposeViewController *)self _instantiateAndBeginExtensionIfNeeded];
}

- (void)_instantiateAndBeginExtensionIfNeededWithCompletion:(id)a3
{
  v5 = a3;
  if (!self->_hasInstantiatedExtensionUI && self->_extension)
  {
    [(SLComposeViewController *)self _beginDelayingPresentation:0 cancellationHandler:3.0];
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    if ([(NSArray *)self->_itemProviders count])
    {
      v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[NSArray count](self->_itemProviders, "count")}];
      _SLLog(v3, 7, @"SLComposeViewController building implicit NSExtensionItem from array of %@ _itemProviders");

      v7 = objc_alloc_init(MEMORY[0x1E696ABE0]);
      [v7 setAttachments:{self->_itemProviders, v13}];
      [v6 addObject:v7];
    }

    extensionItems = self->_extensionItems;
    if (extensionItems)
    {
      v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[NSArray count](extensionItems, "count")}];
      _SLLog(v3, 7, @"SLComposeViewController including %@ explicit NSExtensionItems");

      [v6 addObjectsFromArray:{self->_extensionItems, v14}];
    }

    if (self->_initialText)
    {
      initialText = self->_initialText;
      _SLLog(v3, 7, @"SLComposeViewController setting first extensionItem.attributedContentText to '%@'");
      if (![v6 count])
      {
        v9 = objc_alloc_init(MEMORY[0x1E696ABE0]);
        [v6 addObject:v9];
      }

      v10 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:self->_initialText];
      v11 = [v6 firstObject];
      [v11 setAttributedContentText:v10];
    }

    v16 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v6, "count")}];
    _SLLog(v3, 7, @"SLComposeViewController about to instantiate remote view controller with array of %@ NSExtensionItems");

    self->_hasInstantiatedExtensionUI = 1;
    extension = self->_extension;
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __79__SLComposeViewController__instantiateAndBeginExtensionIfNeededWithCompletion___block_invoke;
    v17[3] = &unk_1E8175D90;
    v17[4] = self;
    v18 = v5;
    [(NSExtension *)extension instantiateViewControllerWithInputItems:v6 listenerEndpoint:0 connectionHandler:v17, v16];
  }
}

void __79__SLComposeViewController__instantiateAndBeginExtensionIfNeededWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v11 = a2;
  v8 = a3;
  v9 = a4;
  _SLLog(v4, 7, @"SLComposeViewController finished instantiate remote view controller %@ error %{public}@ extension request identifier %@");
  v10 = *(a1 + 40);
  if (v10)
  {
    (*(v10 + 16))(v10, v11);
  }

  [*(a1 + 32) remoteController:v8 didLoadWithError:{v9, v8, v9, v11}];
  [*(a1 + 32) _endDelayingPresentation];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v3.receiver = self;
  v3.super_class = SLComposeViewController;
  [(SLComposeViewController *)&v3 viewDidDisappear:a3];
}

- (void)viewDidAppear:(BOOL)a3
{
  v4 = a3;
  _SLLog(v3, 7, @"viewDidAppear");
  v7.receiver = self;
  v7.super_class = SLComposeViewController;
  [(SLComposeViewController *)&v7 viewDidAppear:v4];
  if (self->_didFailLoadingRemoteViewController)
  {
    _SLLog(v3, 6, @"ViewDidAppear, but remote VC failed, dismissing");
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __41__SLComposeViewController_viewDidAppear___block_invoke;
    block[3] = &unk_1E81757C8;
    block[4] = self;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

- (void)viewDidUnload
{
  v2.receiver = self;
  v2.super_class = SLComposeViewController;
  [(SLComposeViewController *)&v2 viewDidUnload];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(int64_t)a3
{
  v4 = [MEMORY[0x1E69DC938] currentDevice];
  if (objc_opt_respondsToSelector())
  {
    v5 = [MEMORY[0x1E69DC938] currentDevice];
    v6 = [v5 userInterfaceIdiom];

    v7 = v6 != 0;
  }

  else
  {
    v7 = 0;
  }

  return a3 != 2 || v7;
}

@end