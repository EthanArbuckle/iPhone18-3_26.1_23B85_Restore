@interface SLComposeViewController
+ (BOOL)_isAvailableForServiceType:(id)type inHostApplicationBundleID:(id)d;
+ (BOOL)_isMultiUserDevice;
+ (BOOL)_isServiceType:(id)type;
+ (BOOL)_legacyBuiltInAvailabilityForService:(id)service inHostApplicationBundleID:(id)d;
+ (BOOL)isAvailableForExtension:(id)extension;
+ (BOOL)isAvailableForExtension:(id)extension inHostApplicationBundleID:(id)d;
+ (BOOL)isAvailableForServiceType:(NSString *)serviceType;
+ (SLComposeViewController)composeViewControllerForServiceType:(NSString *)serviceType;
+ (id)_extensionIdentifierForServiceType:(id)type;
+ (id)_serviceTypeForExtensionIdentifier:(id)identifier;
+ (id)_serviceTypeToExtensionIdentifierMap;
+ (id)_shareExtensionWithIdentifier:(id)identifier;
+ (id)_unsupportedServiceTypes;
+ (id)composeViewControllerForExtension:(id)extension;
+ (id)extensionIdentifierForActivityType:(id)type;
- (BOOL)_addImageAsset:(id)asset preview:(id)preview;
- (BOOL)_addImageJPEGData:(id)data preview:(id)preview;
- (BOOL)_addURL:(id)l type:(int64_t)type preview:(id)preview;
- (BOOL)_addVideoAsset:(id)asset preview:(id)preview;
- (BOOL)_addVideoData:(id)data preview:(id)preview;
- (BOOL)addAttachment:(id)attachment;
- (BOOL)addExtensionItem:(id)item;
- (BOOL)addImage:(UIImage *)image;
- (BOOL)addImageAsset:(id)asset;
- (BOOL)addItemProvider:(id)provider;
- (BOOL)addURL:(NSURL *)url;
- (BOOL)addURL:(id)l withPreviewImage:(id)image;
- (BOOL)removeAllImages;
- (BOOL)removeAllURLs;
- (BOOL)setInitialText:(NSString *)text;
- (BOOL)shouldAutorotateToInterfaceOrientation:(int64_t)orientation;
- (BOOL)supportsImageAsset:(id)asset;
- (BOOL)supportsVideoAsset:(id)asset;
- (SLComposeViewController)initWithExtension:(id)extension requestedServiceType:(id)type;
- (SLComposeViewController)initWithServiceType:(id)type;
- (void)_handleRemoteViewFailure;
- (void)_instantiateAndBeginExtensionIfNeededWithCompletion:(id)completion;
- (void)completeWithResult:(int64_t)result;
- (void)dealloc;
- (void)didLoadSheetViewController;
- (void)remoteController:(id)controller didLoadWithError:(id)error;
- (void)remoteViewController:(id)controller didTerminateWithError:(id)error;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidUnload;
- (void)viewWillAppear:(BOOL)appear;
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

+ (id)_extensionIdentifierForServiceType:(id)type
{
  typeCopy = type;
  _serviceTypeToExtensionIdentifierMap = [self _serviceTypeToExtensionIdentifierMap];
  v6 = [_serviceTypeToExtensionIdentifierMap objectForKey:typeCopy];

  return v6;
}

+ (id)_serviceTypeForExtensionIdentifier:(id)identifier
{
  v19 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  _serviceTypeToExtensionIdentifierMap = [self _serviceTypeToExtensionIdentifierMap];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  allKeys = [_serviceTypeToExtensionIdentifierMap allKeys];
  v7 = [allKeys countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = *v15;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(allKeys);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        v11 = [_serviceTypeToExtensionIdentifierMap objectForKey:v10];
        v12 = [identifierCopy isEqualToString:v11];

        if (v12)
        {
          v7 = v10;
          goto LABEL_11;
        }
      }

      v7 = [allKeys countByEnumeratingWithState:&v14 objects:v18 count:16];
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

+ (BOOL)_isServiceType:(id)type
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __42__SLComposeViewController__isServiceType___block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  v3 = _isServiceType__onceToken;
  typeCopy = type;
  if (v3 != -1)
  {
    dispatch_once(&_isServiceType__onceToken, block);
  }

  v5 = [_isServiceType___serviceTypes containsObject:typeCopy];

  return v5;
}

void __42__SLComposeViewController__isServiceType___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) _serviceTypeToExtensionIdentifierMap];
  v1 = [v3 allKeys];
  v2 = _isServiceType___serviceTypes;
  _isServiceType___serviceTypes = v1;
}

+ (id)extensionIdentifierForActivityType:(id)type
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
  typeCopy = type;
  v9 = [v7 dictionaryWithObjects:v13 forKeys:v12 count:6];
  v11 = [v9 objectForKey:typeCopy];
  _SLLog(v3, 7, @"SLComposeViewController extensionIdentifierForActivityType: %@ => %@");

  return v11;
}

+ (id)_shareExtensionWithIdentifier:(id)identifier
{
  v3 = _shareExtensionWithIdentifier__onceToken;
  identifierCopy = identifier;
  if (v3 != -1)
  {
    +[SLComposeViewController _shareExtensionWithIdentifier:];
  }

  v5 = [_shareExtensionWithIdentifier___identifierToMatcherMap objectForKeyedSubscript:identifierCopy];

  extension = [v5 extension];

  return extension;
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

+ (BOOL)_legacyBuiltInAvailabilityForService:(id)service inHostApplicationBundleID:(id)d
{
  serviceCopy = service;
  dCopy = d;
  if ([serviceCopy isFirstClassService])
  {
    if ((![dCopy hasPrefix:@"com.apple."] || !objc_msgSend(dCopy, "compare:options:", @"com.apple.gamecenter.GameCenterUIService", 1)) && (objc_msgSend(serviceCopy, "hasAccounts") & 1) == 0)
    {
      goto LABEL_5;
    }

LABEL_7:
    v8 = [self _isMultiUserDevice] ^ 1;
    goto LABEL_8;
  }

  if ([serviceCopy hasAccounts])
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

+ (BOOL)isAvailableForExtension:(id)extension
{
  v4 = MEMORY[0x1E696AAE8];
  extensionCopy = extension;
  mainBundle = [v4 mainBundle];
  bundleIdentifier = [mainBundle bundleIdentifier];
  LOBYTE(self) = [self isAvailableForExtension:extensionCopy inHostApplicationBundleID:bundleIdentifier];

  return self;
}

+ (BOOL)isAvailableForServiceType:(NSString *)serviceType
{
  v5 = serviceType;
  _unsupportedServiceTypes = [self _unsupportedServiceTypes];
  v7 = [_unsupportedServiceTypes containsObject:v5];

  if (v7)
  {
    _SLLog(v3, 3, @"isAvailableForServiceType: for %@ returning NO");
    v8 = 0;
  }

  else
  {
    mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
    bundleIdentifier = [mainBundle bundleIdentifier];
    v8 = [self _isAvailableForServiceType:v5 inHostApplicationBundleID:bundleIdentifier];
  }

  return v8;
}

+ (BOOL)isAvailableForExtension:(id)extension inHostApplicationBundleID:(id)d
{
  extensionCopy = extension;
  dCopy = d;
  _SLLog(v4, 7, @"SLComposeViewController isAvailableForExtension: %@ inHostApplicationBundleID: %@");
  _plugIn = [extensionCopy _plugIn];
  supersededBy = [_plugIn supersededBy];

  if (supersededBy)
  {
    v11 = 1;
  }

  else
  {
    identifier = [extensionCopy identifier];
    v13 = [self _serviceTypeForExtensionIdentifier:identifier];

    _SLLog(v4, 7, @"SLComposeViewController isAvailableForExtension: %@ inHostApplicationBundleID: %@ got serviceType %@");
    if (v13)
    {
      v14 = [SLService serviceForServiceType:v13, extensionCopy, dCopy, v13];
      v11 = [self _legacyBuiltInAvailabilityForService:v14 inHostApplicationBundleID:dCopy];
    }

    else
    {
      v11 = 1;
    }
  }

  return v11;
}

+ (BOOL)_isAvailableForServiceType:(id)type inHostApplicationBundleID:(id)d
{
  typeCopy = type;
  dCopy = d;
  _SLLog(v4, 7, @"SLComposeViewController isAvailableForServiceType %@");
  v9 = [self _isServiceType:{typeCopy, typeCopy}];
  v10 = typeCopy;
  if (v9)
  {
    v11 = [self _extensionIdentifierForServiceType:v10];
    v12 = v10;
  }

  else
  {
    v12 = [self _serviceTypeForExtensionIdentifier:v10];
    v11 = v10;
  }

  if (v12)
  {
    v13 = [SLService serviceForServiceType:v12];
    v14 = [self _legacyBuiltInAvailabilityForService:v13 inHostApplicationBundleID:dCopy];

    [MEMORY[0x1E696AD98] numberWithBool:v14];
    v21 = v20 = v12;
    _SLLog(v4, 7, @"SLComposeViewController isAvailableForServiceType got serviceType %@ isAvailable %@");

    if ((v14 & 1) == 0)
    {
      v15 = [SLComposeViewController _shareExtensionWithIdentifier:v11, v12, v21];
      _SLLog(v4, 7, @"SLComposeViewController isAvailableForServiceType got extension %@ for extensionIdentifer %@");
      if (v15)
      {
        _plugIn = [v15 _plugIn];
        supersededBy = [_plugIn supersededBy];

        if (supersededBy)
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

- (SLComposeViewController)initWithExtension:(id)extension requestedServiceType:(id)type
{
  extensionCopy = extension;
  typeCopy = type;
  _SLLog(v4, 7, @"SLComposeViewController initWithExtension: %@ requestedServiceType: %@");
  v10 = objc_opt_class();
  identifier = [extensionCopy identifier];
  v12 = [v10 _serviceTypeForExtensionIdentifier:identifier];

  if (v12)
  {
    v13 = [SLService serviceForServiceType:v12];
    if (([v13 isFirstClassService] & 1) == 0 && !objc_msgSend(v13, "hasAccounts"))
    {
      selfCopy = 0;
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
    objc_storeStrong(&v15->_extension, extension);
    v17 = objc_opt_new();
    itemProviders = v16->_itemProviders;
    v16->_itemProviders = v17;

    if (typeCopy)
    {
      v19 = typeCopy;
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
      attributes = [(NSExtension *)v16->_extension attributes];
      v22 = [attributes objectForKeyedSubscript:@"NSExtensionActivationRule"];

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
    view = [(SLComposeViewController *)v16 view];
    [view setOpaque:0];

    view2 = [(SLComposeViewController *)v16 view];
    [view2 setClipsToBounds:0];

    clearColor = [MEMORY[0x1E69DC888] clearColor];
    view3 = [(SLComposeViewController *)v16 view];
    [view3 setBackgroundColor:clearColor];

    view4 = [(SLComposeViewController *)v16 view];
    [view4 setAutoresizingMask:18];

    [(SLComposeViewController *)v16 setModalPresentationStyle:17];
    [(SLComposeViewController *)v16 setShouldForceNonAnimatedTransition:1];
    objc_destroyWeak(&v33);
    objc_destroyWeak(&v35);
    objc_destroyWeak(&location);
  }

  self = v16;
  selfCopy = self;
LABEL_30:

  return selfCopy;
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

- (SLComposeViewController)initWithServiceType:(id)type
{
  typeCopy = type;
  _SLLog(v3, 7, @"SLComposeViewController initWithServiceType: %@");
  if ([objc_opt_class() _isServiceType:{typeCopy, typeCopy}])
  {
    v6 = typeCopy;
    v7 = [objc_opt_class() _extensionIdentifierForServiceType:v6];
  }

  else
  {
    v6 = [objc_opt_class() _serviceTypeForExtensionIdentifier:typeCopy];
    v7 = typeCopy;
  }

  v8 = v7;
  v9 = [SLComposeViewController _shareExtensionWithIdentifier:v7];
  v18 = v9;
  _SLLog(v3, 7, @"SLComposeViewController initWithServiceType got extension %@ for identifier %@");
  if (v9 || (+[SLComposeViewController _unsupportedServiceTypes](SLComposeViewController, "_unsupportedServiceTypes", 0, v8), v10 = objc_claimAutoreleasedReturnValue(), v11 = [v10 containsObject:v8], v10, !v11) || (+[SLService serviceForServiceType:](SLService, "serviceForServiceType:", v6), v12 = objc_claimAutoreleasedReturnValue(), objc_msgSend(MEMORY[0x1E696AAE8], "mainBundle"), v13 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v13, "bundleIdentifier"), v14 = objc_claimAutoreleasedReturnValue(), v15 = +[SLComposeViewController _legacyBuiltInAvailabilityForService:inHostApplicationBundleID:](SLComposeViewController, "_legacyBuiltInAvailabilityForService:inHostApplicationBundleID:", v12, v14), v14, v13, v12, v15))
  {
    self = [(SLComposeViewController *)self initWithExtension:v9 requestedServiceType:v6, v18];
    selfCopy = self;
  }

  else
  {
    _SLLog(v3, 3, @"SLComposeViewController initWithServiceType failed to get extension for identifier %@");
    selfCopy = 0;
  }

  return selfCopy;
}

+ (id)composeViewControllerForExtension:(id)extension
{
  extensionCopy = extension;
  identifier = [extensionCopy identifier];
  v6 = [self _serviceTypeForExtensionIdentifier:identifier];

  v7 = [[self alloc] initWithExtension:extensionCopy requestedServiceType:v6];

  return v7;
}

+ (SLComposeViewController)composeViewControllerForServiceType:(NSString *)serviceType
{
  v4 = serviceType;
  v5 = [[self alloc] initWithServiceType:v4];

  return v5;
}

- (void)dealloc
{
  _SLLog(v2, 7, @"SLComposeViewController dealloc %@");
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  v6.receiver = self;
  v6.super_class = SLComposeViewController;
  [(SLComposeViewController *)&v6 dealloc];
}

- (BOOL)setInitialText:(NSString *)text
{
  v4 = text;
  canAddContent = [(SLComposeViewController *)self canAddContent];
  if (canAddContent)
  {
    v6 = [(NSString *)v4 copy];
    initialText = self->_initialText;
    self->_initialText = v6;
  }

  return canAddContent;
}

- (BOOL)supportsImageAsset:(id)asset
{
  assetCopy = asset;
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

- (BOOL)supportsVideoAsset:(id)asset
{
  assetCopy = asset;
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

- (BOOL)addImageAsset:(id)asset
{
  assetCopy = asset;
  _SLLog(v3, 7, @"addImageAsset: start");
  LOBYTE(self) = [(SLComposeViewController *)self _addImageAsset:assetCopy preview:0];

  return self;
}

- (BOOL)_addImageAsset:(id)asset preview:(id)preview
{
  v24[2] = *MEMORY[0x1E69E9840];
  assetCopy = asset;
  previewCopy = preview;
  _SLLog(v4, 7, @"SLComposeViewController _addImageAsset: %@ preview: %@");
  if (![(SLComposeViewController *)self supportsImageAsset:assetCopy, assetCopy, previewCopy])
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

  scheme = [assetCopy scheme];
  v11 = [scheme isEqualToString:@"file"];
  v12 = MEMORY[0x1E69637C0];
  if (!v11)
  {
    v12 = MEMORY[0x1E69638B8];
  }

  v13 = *v12;

  v14 = [objc_alloc(MEMORY[0x1E696ACA0]) initWithItem:assetCopy typeIdentifier:v13];
  v23[0] = @"SLItemProviderIsImage";
  v23[1] = @"SLItemProviderHasPreview";
  v24[0] = MEMORY[0x1E695E118];
  v15 = [MEMORY[0x1E696AD98] numberWithInt:previewCopy != 0];
  v24[1] = v15;
  v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:v23 count:2];
  [v14 setUserInfo:v16];

  if (previewCopy)
  {
    _SLLog(v4, 7, @"SLComposeViewController _addImageAsset:preview: supplying itemProvider.previewImageHandler");
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __50__SLComposeViewController__addImageAsset_preview___block_invoke;
    v21[3] = &unk_1E8175D48;
    v22 = previewCopy;
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

- (BOOL)_addImageJPEGData:(id)data preview:(id)preview
{
  v24[2] = *MEMORY[0x1E69E9840];
  dataCopy = data;
  previewCopy = preview;
  if ([(SLComposeViewController *)self canAddContent]&& ((maximumImageCount = self->_maximumImageCount, maximumImageCount == -1) || self->_numImagesAdded < maximumImageCount))
  {
    v10 = objc_alloc(MEMORY[0x1E696ACA0]);
    v11 = [v10 initWithItem:dataCopy typeIdentifier:*MEMORY[0x1E6963808]];
    v23[0] = @"SLItemProviderIsImage";
    v23[1] = @"SLItemProviderHasPreview";
    v24[0] = MEMORY[0x1E695E118];
    v12 = [MEMORY[0x1E696AD98] numberWithInt:previewCopy != 0];
    v24[1] = v12;
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:v23 count:2];
    [v11 setUserInfo:v13];

    if (previewCopy)
    {
      _SLLog(v4, 7, @"SLComposeViewController _addImageJPEGData:preview: supplying itemProvider.previewImageHandler");
      v18 = MEMORY[0x1E69E9820];
      v19 = 3221225472;
      v20 = __53__SLComposeViewController__addImageJPEGData_preview___block_invoke;
      v21 = &unk_1E8175D48;
      v22 = previewCopy;
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
  canAddContent = [(SLComposeViewController *)self canAddContent];
  v5 = canAddContent;
  if (canAddContent)
  {
    v18 = canAddContent;
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
          userInfo = [v12 userInfo];
          v14 = [userInfo objectForKeyedSubscript:@"SLItemProviderIsImage"];

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

- (BOOL)_addVideoAsset:(id)asset preview:(id)preview
{
  v24[2] = *MEMORY[0x1E69E9840];
  assetCopy = asset;
  previewCopy = preview;
  _SLLog(v4, 7, @"SLComposeViewController _addVideoAsset: %@ preview: %@");
  if ([(SLComposeViewController *)self supportsVideoAsset:assetCopy, assetCopy, previewCopy]&& [(SLComposeViewController *)self canAddContent]&& ((maximumVideoCount = self->_maximumVideoCount, maximumVideoCount == -1) || self->_numVideosAdded < maximumVideoCount))
  {
    scheme = [assetCopy scheme];
    v11 = [scheme isEqualToString:@"file"];
    v12 = MEMORY[0x1E69637C0];
    if (!v11)
    {
      v12 = MEMORY[0x1E69638B8];
    }

    v13 = *v12;

    v14 = [objc_alloc(MEMORY[0x1E696ACA0]) initWithItem:assetCopy typeIdentifier:v13];
    v23[0] = @"SLItemProviderIsVideo";
    v23[1] = @"SLItemProviderHasPreview";
    v24[0] = MEMORY[0x1E695E118];
    v15 = [MEMORY[0x1E696AD98] numberWithInt:previewCopy != 0];
    v24[1] = v15;
    v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:v23 count:2];
    [v14 setUserInfo:v16];

    if (previewCopy)
    {
      _SLLog(v4, 7, @"SLComposeViewController _addVideoAsset:preview: supplying itemProvider.previewImageHandler");
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __50__SLComposeViewController__addVideoAsset_preview___block_invoke;
      v21[3] = &unk_1E8175D48;
      v22 = previewCopy;
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

- (BOOL)_addVideoData:(id)data preview:(id)preview
{
  v24[2] = *MEMORY[0x1E69E9840];
  dataCopy = data;
  previewCopy = preview;
  if ([(SLComposeViewController *)self canAddContent]&& ((maximumVideoCount = self->_maximumVideoCount, maximumVideoCount == -1) || self->_numVideosAdded < maximumVideoCount))
  {
    v10 = objc_alloc(MEMORY[0x1E696ACA0]);
    v11 = [v10 initWithItem:dataCopy typeIdentifier:*MEMORY[0x1E6963850]];
    v23[0] = @"SLItemProviderIsVideo";
    v23[1] = @"SLItemProviderHasPreview";
    v24[0] = MEMORY[0x1E695E118];
    v12 = [MEMORY[0x1E696AD98] numberWithInt:previewCopy != 0];
    v24[1] = v12;
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:v23 count:2];
    [v11 setUserInfo:v13];

    if (previewCopy)
    {
      _SLLog(v4, 7, @"SLComposeViewController _addVideoData:preview: supplying itemProvider.previewImageHandler");
      v18 = MEMORY[0x1E69E9820];
      v19 = 3221225472;
      v20 = __49__SLComposeViewController__addVideoData_preview___block_invoke;
      v21 = &unk_1E8175D48;
      v22 = previewCopy;
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

- (BOOL)addURL:(id)l withPreviewImage:(id)image
{
  lCopy = l;
  imageCopy = image;
  if ([lCopy isMusicStoreURL])
  {
    v8 = 3;
  }

  else if ([lCopy isAppStoreURL])
  {
    v8 = 4;
  }

  else
  {
    v8 = 0;
  }

  v9 = [(SLComposeViewController *)self _addURL:lCopy type:v8 preview:imageCopy];

  return v9;
}

- (BOOL)_addURL:(id)l type:(int64_t)type preview:(id)preview
{
  v28[3] = *MEMORY[0x1E69E9840];
  lCopy = l;
  previewCopy = preview;
  v24 = [MEMORY[0x1E696AD98] numberWithInteger:type];
  _SLLog(v5, 7, @"SLComposeViewController _addURL: %@ type: %@ preview: %@");

  if ([(SLComposeViewController *)self canAddContent:lCopy]&& ((maximumURLCount = self->_maximumURLCount, maximumURLCount == -1) || self->_numURLsAdded < maximumURLCount))
  {
    scheme = [lCopy scheme];
    v13 = [scheme isEqualToString:@"file"];
    v14 = MEMORY[0x1E69637C0];
    if (!v13)
    {
      v14 = MEMORY[0x1E69638B8];
    }

    v15 = *v14;

    v16 = [objc_alloc(MEMORY[0x1E696ACA0]) initWithItem:lCopy typeIdentifier:v15];
    v28[0] = MEMORY[0x1E695E118];
    v27[0] = @"SLItemProviderIsURL";
    v27[1] = @"SLAttachmentURLType";
    v17 = [MEMORY[0x1E696AD98] numberWithInteger:type];
    v28[1] = v17;
    v27[2] = @"SLItemProviderHasPreview";
    v18 = [MEMORY[0x1E696AD98] numberWithInt:previewCopy != 0];
    v28[2] = v18;
    v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v28 forKeys:v27 count:3];
    [v16 setUserInfo:v19];

    if (previewCopy)
    {
      _SLLog(v5, 7, @"SLComposeViewController _addURL:type:preview: supplying itemProvider.previewImageHandler");
      v25[0] = MEMORY[0x1E69E9820];
      v25[1] = 3221225472;
      v25[2] = __48__SLComposeViewController__addURL_type_preview___block_invoke;
      v25[3] = &unk_1E8175D48;
      v26 = previewCopy;
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
  canAddContent = [(SLComposeViewController *)self canAddContent];
  v5 = canAddContent;
  if (canAddContent)
  {
    v26 = canAddContent;
    if ([(NSArray *)self->_extensionItems count])
    {
      mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
      bundleIdentifier = [mainBundle bundleIdentifier];
      v8 = [bundleIdentifier isEqualToString:@"com.apple.itunesu"];

      if (v8)
      {
        if (![(NSString *)self->_initialText length])
        {
          v9 = [(NSArray *)self->_extensionItems objectAtIndexedSubscript:0];
          attributedContentText = [v9 attributedContentText];
          string = [attributedContentText string];
          initialText = self->_initialText;
          self->_initialText = string;
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
    selfCopy = self;
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
          userInfo = [v19 userInfo];
          _SLLog(v2, 7, @"SLComposeViewController removeAllURLs examining itemProvider.userInfo %@");

          userInfo2 = [v19 userInfo];
          v21 = [userInfo2 objectForKeyedSubscript:@"SLItemProviderIsURL"];

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
    selfCopy->_numURLsAdded = 0;
    itemProviders = selfCopy->_itemProviders;
    selfCopy->_itemProviders = v27;

    return v26;
  }

  else
  {
    _SLLog(v2, 6, @"Can't remove URLs - sheet already presented, returning NO");
  }

  return v5;
}

- (BOOL)addItemProvider:(id)provider
{
  providerCopy = provider;
  _SLLog(v3, 7, @"SLComposeViewController addItemProvider: %@");
  canAddContent = [(SLComposeViewController *)self canAddContent];
  if (canAddContent)
  {
    v7 = [(NSArray *)self->_itemProviders arrayByAddingObject:providerCopy];
    itemProviders = self->_itemProviders;
    self->_itemProviders = v7;
  }

  else
  {
    _SLLog(v3, 6, @"Can't addItemProvider - sheet already presented, returning NO");
  }

  return canAddContent;
}

- (BOOL)addExtensionItem:(id)item
{
  v11[1] = *MEMORY[0x1E69E9840];
  itemCopy = item;
  _SLLog(v3, 7, @"SLComposeViewController addExtensionItem: %@");
  canAddContent = [(SLComposeViewController *)self canAddContent];
  if (canAddContent)
  {
    extensionItems = self->_extensionItems;
    if (extensionItems)
    {
      v8 = [(NSArray *)extensionItems arrayByAddingObject:itemCopy];
    }

    else
    {
      v11[0] = itemCopy;
      v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
    }

    v9 = self->_extensionItems;
    self->_extensionItems = v8;
  }

  else
  {
    _SLLog(v3, 6, @"Can't addExtensionItem - sheet already presented, returning NO");
  }

  return canAddContent;
}

- (BOOL)addAttachment:(id)attachment
{
  attachmentCopy = attachment;
  type = [attachmentCopy type];
  v6 = 0;
  if (type <= 5)
  {
    if (type <= 3)
    {
      if (!type)
      {
        payload = [attachmentCopy payload];
        previewImage = [attachmentCopy previewImage];
        v9 = [(SLComposeViewController *)self _addImageJPEGData:payload preview:previewImage];
        goto LABEL_18;
      }

      if (type == 2)
      {
        payload = [attachmentCopy payload];
        previewImage = [attachmentCopy previewImage];
        v9 = [(SLComposeViewController *)self _addImageAsset:payload preview:previewImage];
LABEL_18:
        v6 = v9;

        goto LABEL_19;
      }

      goto LABEL_19;
    }

    if (type == 4)
    {
      payload = [attachmentCopy payload];
      previewImage = [attachmentCopy previewImage];
      selfCopy4 = self;
      v11 = payload;
      v12 = 0;
    }

    else
    {
      payload = [attachmentCopy payload];
      previewImage = [attachmentCopy previewImage];
      selfCopy4 = self;
      v11 = payload;
      v12 = 3;
    }

LABEL_17:
    v9 = [(SLComposeViewController *)selfCopy4 _addURL:v11 type:v12 preview:previewImage];
    goto LABEL_18;
  }

  if (type <= 7)
  {
    if (type == 6)
    {
      payload = [attachmentCopy payload];
      previewImage = [attachmentCopy previewImage];
      selfCopy4 = self;
      v11 = payload;
      v12 = 4;
    }

    else
    {
      payload = [attachmentCopy payload];
      previewImage = [attachmentCopy previewImage];
      selfCopy4 = self;
      v11 = payload;
      v12 = 5;
    }

    goto LABEL_17;
  }

  if (type == 8)
  {
    payload = [attachmentCopy payload];
    previewImage = [attachmentCopy previewImage];
    v9 = [(SLComposeViewController *)self _addVideoData:payload preview:previewImage];
    goto LABEL_18;
  }

  if (type == 9)
  {
    payload = [attachmentCopy payload];
    previewImage = [attachmentCopy previewImage];
    v9 = [(SLComposeViewController *)self _addVideoAsset:payload preview:previewImage];
    goto LABEL_18;
  }

LABEL_19:

  return v6;
}

- (void)completeWithResult:(int64_t)result
{
  resultCopy = result;
  _SLLog(v3, 7, @"SLComposeViewController completeWithResult: %d");
  self->_didCompleteSheet = 1;
  if (self->_completionHandler)
  {
    serviceType = [(SLComposeViewController *)self serviceType];
    if ([serviceType isEqualToString:@"com.apple.social.sinaweibo"])
    {
      v7 = dyld_program_sdk_at_least();

      completionHandler = self->_completionHandler;
      if (completionHandler)
      {
        completionHandler[2](completionHandler, result);
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
        v10[2](v10, result);
        v11 = self->_completionHandler;
        self->_completionHandler = 0;
      }
    }
  }

  if ([(SLComposeViewController *)self isBeingDismissed])
  {
    presentingViewController = [MEMORY[0x1E696AD98] numberWithBool:{-[SLComposeViewController isBeingDismissed](self, "isBeingDismissed")}];
    _SLLog(v3, 7, @"SLComposeViewController skipping explicit dismiss because isBeingDismissed is already %@");
  }

  else
  {
    _SLLog(v3, 7, @"SLComposeViewController automatically dismissing itself");
    presentingViewController = [(SLComposeViewController *)self presentingViewController];
    [presentingViewController dismissViewControllerAnimated:1 completion:0];
  }
}

- (void)didLoadSheetViewController
{
  remoteViewController = [(SLComposeViewController *)self remoteViewController];
  [remoteViewController willMoveToParentViewController:self];

  remoteViewController2 = [(SLComposeViewController *)self remoteViewController];
  [(SLComposeViewController *)self addChildViewController:remoteViewController2];

  view = [(SLComposeViewController *)self view];
  remoteViewController3 = [(SLComposeViewController *)self remoteViewController];
  view2 = [remoteViewController3 view];
  [view addSubview:view2];

  view3 = [(SLComposeViewController *)self view];
  remoteViewController4 = [(SLComposeViewController *)self remoteViewController];
  view4 = [remoteViewController4 view];
  [view3 bringSubviewToFront:view4];

  view5 = [(SLComposeViewController *)self view];
  [view5 bounds];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  remoteViewController5 = [(SLComposeViewController *)self remoteViewController];
  view6 = [remoteViewController5 view];
  [view6 setFrame:{v13, v15, v17, v19}];

  remoteViewController6 = [(SLComposeViewController *)self remoteViewController];
  view7 = [remoteViewController6 view];
  [view7 setAlpha:1.0];

  remoteViewController7 = [(SLComposeViewController *)self remoteViewController];
  [remoteViewController7 didMoveToParentViewController:self];

  view8 = [(SLComposeViewController *)self view];
  [view8 setNeedsLayout];
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

- (void)remoteController:(id)controller didLoadWithError:(id)error
{
  controllerCopy = controller;
  if (error)
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
      [controllerCopy setDelegate:self];
    }

    view = [controllerCopy view];
    [view setClipsToBounds:0];

    _SLLog(v4, 6, @"HOST: Successfully loaded remote SLComposeVC");
    [(SLComposeViewController *)self setRemoteViewController:controllerCopy];
    _SLLog(v4, 6, @"[remoteViewController setupRemoteViewController]");
    [(SLComposeViewController *)self setRemoteViewController:controllerCopy];
    [(SLComposeViewController *)self didLoadSheetViewController];
    _SLLog(v4, 6, @"Finished setting up remote view controller");
  }
}

- (void)remoteViewController:(id)controller didTerminateWithError:(id)error
{
  _SLLog(v4, 7, @"SLComposeViewController remoteViewController: %@ didTerminateWithError: %@");
  if (!self->_didCompleteSheet)
  {

    [(SLComposeViewController *)self completeWithResult:0];
  }
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  _SLLog(v3, 7, @"viewWillAppear");
  self->_wasPresented = 1;
  v7.receiver = self;
  v7.super_class = SLComposeViewController;
  [(SLComposeViewController *)&v7 viewWillAppear:appearCopy];
  mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
  self->_savedStatusBarStyle = [mEMORY[0x1E69DC668] statusBarStyle];

  [(SLComposeViewController *)self _instantiateAndBeginExtensionIfNeeded];
}

- (void)_instantiateAndBeginExtensionIfNeededWithCompletion:(id)completion
{
  completionCopy = completion;
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
      firstObject = [v6 firstObject];
      [firstObject setAttributedContentText:v10];
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
    v18 = completionCopy;
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

- (void)viewDidDisappear:(BOOL)disappear
{
  v3.receiver = self;
  v3.super_class = SLComposeViewController;
  [(SLComposeViewController *)&v3 viewDidDisappear:disappear];
}

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  _SLLog(v3, 7, @"viewDidAppear");
  v7.receiver = self;
  v7.super_class = SLComposeViewController;
  [(SLComposeViewController *)&v7 viewDidAppear:appearCopy];
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

- (BOOL)shouldAutorotateToInterfaceOrientation:(int64_t)orientation
{
  currentDevice = [MEMORY[0x1E69DC938] currentDevice];
  if (objc_opt_respondsToSelector())
  {
    currentDevice2 = [MEMORY[0x1E69DC938] currentDevice];
    userInterfaceIdiom = [currentDevice2 userInterfaceIdiom];

    v7 = userInterfaceIdiom != 0;
  }

  else
  {
    v7 = 0;
  }

  return orientation != 2 || v7;
}

@end