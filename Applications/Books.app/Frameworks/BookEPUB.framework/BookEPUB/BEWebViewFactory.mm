@interface BEWebViewFactory
+ (id)_booksViewWKWebViewConfiguration:(BOOL)configuration protocolCacheItem:(id)item;
+ (id)_standardProcessPoolForAssetID:(id)d withSingleWebProcess:(BOOL)process forWebTOC:(BOOL)c;
+ (id)_standardProcessPoolWithSingleWebProcess:(BOOL)process forWebTOC:(BOOL)c;
+ (id)_standardWKPreferences:(BOOL)preferences;
+ (id)_standardWKWebViewConfiguration:(id)configuration cacheItem:(id)item usesSingleWebProcess:(BOOL)process forWebTOC:(BOOL)c;
+ (id)_viewConfiguredForBooks:(CGRect)books fixedLayoutSize:(CGSize)size protocolCacheItem:(id)item paginationOptions:(id)options cleanupOptions:(id)cleanupOptions cfiOptions:(id)cfiOptions stylesheetSet:(id)set styleManager:(id)self0 contentSupportMode:(unint64_t)self1;
+ (id)_viewConfiguredForBooks:(CGRect)books fixedLayoutSize:(CGSize)size protocolCacheItem:(id)item paginationOptions:(id)options cleanupOptions:(id)cleanupOptions cfiOptions:(id)cfiOptions stylesheetSet:(id)set styleManager:(id)self0 contentSupportMode:(unint64_t)self1 imageFilterMode:(unint64_t)self2 completion:(id)self3;
+ (id)_viewConfiguredForPagination:(CGRect)pagination protocolCacheItem:(id)item paginationOptions:(id)options cleanupOptions:(id)cleanupOptions cfiOptions:(id)cfiOptions stylesheetSet:(id)set styleManager:(id)manager forDisplay:(BOOL)self0;
+ (id)javascriptProvidersWithPaginationOptions:(id)options cfiOptions:(id)cfiOptions cleanupOptions:(id)cleanupOptions stylesheetSet:(id)set externalIframeJS:(id)s forDisplay:(BOOL)display;
+ (id)viewConfiguredAsyncForBooks:(CGRect)books protocolCacheItem:(id)item paginationOptions:(id)options cleanupOptions:(id)cleanupOptions cfiOptions:(id)cfiOptions imageFilterMode:(unint64_t)mode stylesheetSet:(id)set styleManager:(id)self0 completion:(id)self1;
+ (id)viewConfiguredForBooks:(CGRect)books protocolCacheItem:(id)item paginationOptions:(id)options cleanupOptions:(id)cleanupOptions cfiOptions:(id)cfiOptions stylesheetSet:(id)set styleManager:(id)manager;
+ (id)viewConfiguredForCoverContent:(CGRect)content bookID:(id)d protocolCacheItem:(id)item paginationOptions:(id)options cfiOptions:(id)cfiOptions;
+ (id)viewConfiguredForPictureBooks:(CGRect)books fixedLayoutSize:(CGSize)size protocolCacheItem:(id)item paginationOptions:(id)options cleanupOptions:(id)cleanupOptions cfiOptions:(id)cfiOptions stylesheetSet:(id)set;
+ (id)viewConfiguredForPreview:(CGRect)preview enableDeveloperExtras:(BOOL)extras bookID:(id)d imageFilterMode:(unint64_t)mode protocolCacheItem:(id)item cleanupOptions:(id)options stylesheetSet:(id)set;
+ (id)viewConfiguredForThemePreview;
+ (id)viewConfiguredForTocParse:(CGRect)parse assetID:(id)d cleanupOptions:(id)options;
+ (id)viewConfiguredForWebTOC:(CGRect)c;
+ (id)viewCreatedForBooksAtSize:(CGSize)size protocolCacheItem:(id)item paginationOptions:(id)options cleanupOptions:(id)cleanupOptions cfiOptions:(id)cfiOptions stylesheetSet:(id)set imageFilterMode:(unint64_t)mode lineGuideEnabled:(BOOL)self0;
+ (void)_addJavascript:(id)javascript userContentController:(id)controller;
+ (void)_applyMetaViewportOverridesToWebView:(id)view fixedLayoutSize:(CGSize)size;
+ (void)_configureNavigationForCoalescingLoadEvents:(id)events userContentController:(id)controller;
+ (void)_modifyScrollViewBehaviors:(id)behaviors;
+ (void)_setupContentBlockingRulesforWebView:(id)view rule:(unint64_t)rule;
+ (void)_viewConfiguredForPagination:(CGRect)pagination protocolCacheItem:(id)item paginationOptions:(id)options cleanupOptions:(id)cleanupOptions cfiOptions:(id)cfiOptions stylesheetSet:(id)set styleManager:(id)manager forDisplay:(BOOL)self0 completion:(id)self1;
+ (void)configureExistingWebView:(id)view fixedLayoutSize:(CGSize)size protocolCacheItem:(id)item paginationOptions:(id)options styleManager:(id)manager completion:(id)completion;
+ (void)updateFixedLayoutWebView:(id)view fixedLayoutSize:(CGSize)size;
+ (void)updateThemePreviewWebView:(id)view styleManager:(id)manager stylesheetSet:(id)set fontFamily:(id)family;
+ (void)viewConfiguredForSearch:(CGRect)search protocolCacheItem:(id)item paginationOptions:(id)options cleanupOptions:(id)cleanupOptions cfiOptions:(id)cfiOptions stylesheetSet:(id)set styleManager:(id)manager contentSupportMode:(unint64_t)self0 completion:(id)self1;
@end

@implementation BEWebViewFactory

+ (id)_standardProcessPoolWithSingleWebProcess:(BOOL)process forWebTOC:(BOOL)c
{
  processCopy = process;
  v6 = objc_alloc_init(_WKProcessPoolConfiguration);
  if (!c)
  {
    v7 = +[NSBundle mainBundle];
    builtInPlugInsURL = [v7 builtInPlugInsURL];
    v9 = [builtInPlugInsURL URLByAppendingPathComponent:@"BookEPUBWebProcessPlugin.bundle"];

    [v6 setInjectedBundleURL:v9];
  }

  [v6 setUsesSingleWebProcess:processCopy];
  [v6 setShouldThrowExceptionForGlobalConstantRedeclaration:0];
  [v6 setProcessSwapsOnNavigation:0];
  v10 = [[WKProcessPool alloc] _initWithConfiguration:v6];

  return v10;
}

+ (id)_standardProcessPoolForAssetID:(id)d withSingleWebProcess:(BOOL)process forWebTOC:(BOOL)c
{
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = sub_1261C;
  v24 = sub_1262C;
  v25 = 0;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v13 = sub_12634;
  v14 = &unk_328740;
  v16 = &v20;
  dCopy = d;
  v15 = dCopy;
  selfCopy = self;
  processCopy = process;
  cCopy = c;
  v9 = v12;
  os_unfair_lock_lock(&unk_36AB00);
  v13(v9);
  os_unfair_lock_unlock(&unk_36AB00);

  v10 = v21[5];
  _Block_object_dispose(&v20, 8);

  return v10;
}

+ (id)_standardWKPreferences:(BOOL)preferences
{
  +[UIView be_enableWKContentViewOverrides];
  +[UILongPressGestureRecognizer be_enableUIVariableDelayLoupeGestureOverrides];
  v4 = objc_alloc_init(WKPreferences);
  [v4 _setDeveloperExtrasEnabled:BEShouldEnableDeveloperExtrasSettings(preferences)];
  [v4 setJavaScriptCanOpenWindowsAutomatically:0];
  [v4 _setOfflineApplicationCacheIsEnabled:0];
  [v4 _setLargeImageAsyncDecodingEnabled:0];
  [v4 _setAnimatedImageAsyncDecodingEnabled:0];
  [v4 _setShouldSuppressKeyboardInputDuringProvisionalNavigation:1];
  [v4 _setTextAutosizingEnabled:0];
  [v4 _setJavaScriptCanAccessClipboard:0];
  v5 = +[NSUserDefaults standardUserDefaults];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = +[WKPreferences _internalDebugFeatures];
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        v12 = [v11 key];
        if ([v12 isEqualToString:@"SelectionFlippingEnabled"])
        {
          v13 = [v4 _isEnabledForInternalDebugFeature:v11];

          if ((v13 & 1) == 0)
          {
            [v4 _setEnabled:1 forInternalDebugFeature:v11];
            goto LABEL_12;
          }
        }

        else
        {
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

LABEL_12:

  if ([v5 BOOLForKey:BKDisableAccleratedWebRendering[0]])
  {
    [v4 _setAcceleratedDrawingEnabled:0];
  }

  if ([v5 BOOLForKey:BKWebDrawBorders])
  {
    [v4 _setCompositingBordersVisible:1];
  }

  return v4;
}

+ (id)_standardWKWebViewConfiguration:(id)configuration cacheItem:(id)item usesSingleWebProcess:(BOOL)process forWebTOC:(BOOL)c
{
  cCopy = c;
  processCopy = process;
  configurationCopy = configuration;
  itemCopy = item;
  v12 = objc_alloc_init(WKWebpagePreferences);
  [v12 setPreferredContentMode:1];
  v13 = objc_alloc_init(WKWebViewConfiguration);
  v14 = +[WKWebsiteDataStore defaultDataStore];
  [v13 setWebsiteDataStore:v14];

  [v13 setDefaultWebpagePreferences:v12];
  bookID = [itemCopy bookID];
  if (processCopy)
  {
    bookID2 = [itemCopy bookID];
    v17 = [NSString stringWithFormat:@"%@_single_process", bookID2];

    bookID = v17;
  }

  v18 = [self _standardProcessPoolForAssetID:bookID withSingleWebProcess:processCopy forWebTOC:cCopy];
  [v13 setProcessPool:v18];

  [v13 setPreferences:configurationCopy];
  [v13 setAllowsAirPlayForMediaPlayback:0];
  v19 = +[NSBundle mainBundle];
  v20 = [v19 objectForInfoDictionaryKey:@"CFBundleDisplayName"];
  [v13 setApplicationNameForUserAgent:v20];

  [v13 _setAllowsMetaRefresh:0];
  [v13 _setApplePayEnabled:0];
  [v13 setMediaTypesRequiringUserActionForPlayback:-1];
  [v13 _setMediaDataLoadsAutomatically:0];
  [v13 setSuppressesIncrementalRendering:1];
  [v13 setDataDetectorTypes:0];
  [v13 setAllowsPictureInPictureMediaPlayback:0];
  [v13 _setDragLiftDelay:2];
  v21 = [BEURLSchemeHandler schemeHandlerForCacheItem:itemCopy];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  supportedSchemes = [v21 supportedSchemes];
  v23 = [supportedSchemes countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v29;
    do
    {
      for (i = 0; i != v24; i = i + 1)
      {
        if (*v29 != v25)
        {
          objc_enumerationMutation(supportedSchemes);
        }

        [v13 setURLSchemeHandler:v21 forURLScheme:*(*(&v28 + 1) + 8 * i)];
      }

      v24 = [supportedSchemes countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v24);
  }

  return v13;
}

+ (void)_addJavascript:(id)javascript userContentController:(id)controller
{
  javascriptCopy = javascript;
  controllerCopy = controller;
  v22 = +[WKContentWorld pageWorld];
  v5 = BEURLIncludePatternsForBooks();
  v6 = 0;
  do
  {
    v21 = v6;
    v7 = &qword_295BF0[2 * v6];
    v8 = *v7;
    v9 = *(v7 + 8);
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v10 = javascriptCopy;
    v11 = [v10 countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v25;
      do
      {
        for (i = 0; i != v12; i = i + 1)
        {
          if (*v25 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v24 + 1) + 8 * i);
          if (v9)
          {
            v16 = [v15 mainFrameOnlyJavascript:v8];
            [v15 mainFrameJavascriptURL:v8];
          }

          else
          {
            v16 = [v15 anyFrameJavascript:v8];
            [v15 anyFrameJavascriptURL:v8];
          }
          v17 = ;
          if ([v16 length])
          {
            LOBYTE(v19) = 0;
            v18 = [[WKUserScript alloc] _initWithSource:v16 injectionTime:v8 forMainFrameOnly:v9 includeMatchPatternStrings:v5 excludeMatchPatternStrings:&__NSArray0__struct associatedURL:v17 contentWorld:v22 deferRunningUntilNotification:v19];
            [controllerCopy addUserScript:v18];
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v24 objects:v28 count:16];
      }

      while (v12);
    }

    v6 = v21 + 1;
  }

  while (v21 != 3);
}

+ (void)_setupContentBlockingRulesforWebView:(id)view rule:(unint64_t)rule
{
  viewCopy = view;
  [viewCopy be_suspendLoading];
  v6 = +[BEContentBlockingRules sharedInstance];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_12F28;
  v8[3] = &unk_328768;
  v9 = viewCopy;
  v7 = viewCopy;
  [v6 applyContentBlockingRule:rule toWebView:v7 completion:v8];
}

+ (void)_applyMetaViewportOverridesToWebView:(id)view fixedLayoutSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  viewCopy = view;
  objc_opt_class();
  v6 = BUDynamicCast();
  v7 = v6;
  if (v6)
  {
    [v6 be_applyMetaViewportOverridesForFixedLayoutSize:{width, height}];
  }

  else
  {
    be_viewportArguments = [viewCopy be_viewportArguments];
    [viewCopy _overrideViewportWithArguments:be_viewportArguments];
  }
}

+ (void)updateFixedLayoutWebView:(id)view fixedLayoutSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  viewCopy = view;
  objc_opt_class();
  v11 = BUDynamicCast();

  if (v11)
  {
    [v11 be_fixedLayoutSize];
    if (width != v8 || height != v7)
    {
      v13.width = width;
      v13.height = height;
      v10 = NSStringFromSize(v13);
      NSLog(@"{IMRenderingCache} Updating webView fixed layout size to %@", v10);

      [v11 be_applyMetaViewportOverridesForFixedLayoutSize:{width, height}];
    }
  }
}

+ (void)_modifyScrollViewBehaviors:(id)behaviors
{
  scrollView = [behaviors scrollView];
  [scrollView be_configureForBooks];
}

+ (id)_booksViewWKWebViewConfiguration:(BOOL)configuration protocolCacheItem:(id)item
{
  configurationCopy = configuration;
  itemCopy = item;
  v7 = [self _standardWKPreferences:configurationCopy];
  v8 = [self _standardWKWebViewConfiguration:v7 cacheItem:itemCopy usesSingleWebProcess:0 forWebTOC:0];

  [v8 setMediaTypesRequiringUserActionForPlayback:0];
  [v8 _setInvisibleAutoplayNotPermitted:0];
  [v8 _setInlineMediaPlaybackRequiresPlaysInlineAttribute:0];
  [v8 setAllowsInlineMediaPlayback:1];

  return v8;
}

+ (id)_viewConfiguredForBooks:(CGRect)books fixedLayoutSize:(CGSize)size protocolCacheItem:(id)item paginationOptions:(id)options cleanupOptions:(id)cleanupOptions cfiOptions:(id)cfiOptions stylesheetSet:(id)set styleManager:(id)self0 contentSupportMode:(unint64_t)self1 imageFilterMode:(unint64_t)self2 completion:(id)self3
{
  height = size.height;
  width = size.width;
  v21 = books.size.height;
  v22 = books.size.width;
  completionCopy = completion;
  managerCopy = manager;
  optionsCopy = options;
  itemCopy = item;
  v27 = [BEWebViewFactory viewCreatedForBooksAtSize:itemCopy protocolCacheItem:optionsCopy paginationOptions:cleanupOptions cleanupOptions:cfiOptions cfiOptions:set stylesheetSet:filterMode imageFilterMode:v22, v21];
  [BEWebViewFactory configureExistingWebView:v27 fixedLayoutSize:itemCopy protocolCacheItem:optionsCopy paginationOptions:managerCopy styleManager:completionCopy completion:width, height];

  return v27;
}

+ (id)viewCreatedForBooksAtSize:(CGSize)size protocolCacheItem:(id)item paginationOptions:(id)options cleanupOptions:(id)cleanupOptions cfiOptions:(id)cfiOptions stylesheetSet:(id)set imageFilterMode:(unint64_t)mode lineGuideEnabled:(BOOL)self0
{
  height = size.height;
  width = size.width;
  optionsCopy = options;
  setCopy = set;
  cfiOptionsCopy = cfiOptions;
  cleanupOptionsCopy = cleanupOptions;
  itemCopy = item;
  v56 = sub_13780(optionsCopy);
  selfCopy = self;
  v22 = [self _booksViewWKWebViewConfiguration:objc_msgSend(optionsCopy protocolCacheItem:{"developerExtrasEnabled"), itemCopy}];

  if (![optionsCopy mode])
  {
    [v22 _setDrawsBackground:0];
  }

  v47 = objc_alloc_init(BEExternalIframeJS);
  v23 = [optionsCopy mode] == &dword_4;
  v51 = objc_alloc_init(BEBooksObjectJS);
  v57[0] = v51;
  v50 = [[BEContentLayoutInfo alloc] initWithOptions:optionsCopy];
  v57[1] = v50;
  v49 = -[BEReadingSystemJS initWithPaginationMode:]([BEReadingSystemJS alloc], "initWithPaginationMode:", [optionsCopy mode]);
  v57[2] = v49;
  v48 = objc_alloc_init(BEImageFilteringJS);
  v57[3] = v48;
  v46 = objc_alloc_init(BETextFieldDisablingJS);
  v57[4] = v46;
  v24 = [BECFIUtilitiesJS alloc];
  [optionsCopy gapBetweenPages];
  v25 = [(BECFIUtilitiesJS *)v24 initWithOptions:cfiOptionsCopy gapBetweenPages:v23 paginatedTopToBottom:?];
  v57[5] = v25;
  v52 = v22;
  v26 = [BEContentSupportJS alloc];
  documentAttributes = [setCopy documentAttributes];
  modeCopy = mode;
  v28 = [(BEContentSupportJS *)v26 initWithMode:v56 forDisplay:1 attributes:documentAttributes imageFilterMode:mode lineGuideEnabled:enabled];
  v57[6] = v28;
  v29 = [BEContentCleanupJS alloc];
  [optionsCopy pageLength];
  v31 = v30;
  [optionsCopy gapBetweenPages];
  v33 = [(BEContentCleanupJS *)v29 initWithOptions:cleanupOptionsCopy pageLength:v31 gapBetweenPages:v32];

  v57[7] = v33;
  v57[8] = v47;
  v34 = objc_alloc_init(BEReadAloudJS);
  v57[9] = v34;
  v35 = objc_alloc_init(BETriggerJS);
  v57[10] = v35;
  v36 = [NSArray arrayWithObjects:v57 count:11];

  userContentController = [v52 userContentController];
  [selfCopy _addJavascript:v36 userContentController:userContentController];
  [setCopy applyToUserContentController:userContentController];

  v38 = [[BENavigationHandler alloc] initWithMode:0];
  assetId = [cfiOptionsCopy assetId];

  [(BENavigationHandler *)v38 setBookID:assetId];
  [(BENavigationHandler *)v38 setExternalIframeJS:v47];
  v40 = objc_alloc_init(BEUIHandler);
  v41 = objc_opt_class();
  if (v56 == 4)
  {
    v41 = objc_opt_class();
  }

  v42 = [[v41 alloc] initWithFrame:v52 configuration:{0.0, 0.0, width, height}];
  v43 = +[NSUUID UUID];
  uUIDString = [v43 UUIDString];
  [v42 setBe_identifier:uUIDString];

  [v42 setAutoresizingMask:18];
  [v42 setBe_navigationHandler:v38];
  [v42 setBe_userContentController:userContentController];
  [v42 setNavigationDelegate:v38];
  [v42 setBe_imageFilterMode:modeCopy];
  [v42 setBe_uiHandler:v40];
  [v42 setUIDelegate:v40];
  [v42 _setObservedRenderingProgressEvents:256];

  return v42;
}

+ (void)configureExistingWebView:(id)view fixedLayoutSize:(CGSize)size protocolCacheItem:(id)item paginationOptions:(id)options styleManager:(id)manager completion:(id)completion
{
  height = size.height;
  width = size.width;
  viewCopy = view;
  itemCopy = item;
  optionsCopy = options;
  completionCopy = completion;
  managerCopy = manager;
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_1392C;
  v24[3] = &unk_328790;
  v25 = viewCopy;
  v26 = optionsCopy;
  v28 = completionCopy;
  selfCopy = self;
  v30 = width;
  v31 = height;
  v32 = sub_13780(optionsCopy);
  v27 = itemCopy;
  v20 = completionCopy;
  v21 = itemCopy;
  v22 = optionsCopy;
  v23 = viewCopy;
  [v23 be_configureFontWithStyleManager:managerCopy completion:v24];
}

+ (void)_viewConfiguredForPagination:(CGRect)pagination protocolCacheItem:(id)item paginationOptions:(id)options cleanupOptions:(id)cleanupOptions cfiOptions:(id)cfiOptions stylesheetSet:(id)set styleManager:(id)manager forDisplay:(BOOL)self0 completion:(id)self1
{
  height = pagination.size.height;
  width = pagination.size.width;
  y = pagination.origin.y;
  x = pagination.origin.x;
  itemCopy = item;
  optionsCopy = options;
  cfiOptionsCopy = cfiOptions;
  completionCopy = completion;
  managerCopy = manager;
  setCopy = set;
  cleanupOptionsCopy = cleanupOptions;
  v46 = [self _standardWKPreferences:{objc_msgSend(optionsCopy, "developerExtrasEnabled")}];
  v26 = [self _standardWKWebViewConfiguration:? cacheItem:? usesSingleWebProcess:? forWebTOC:?];
  userContentController = [v26 userContentController];
  [setCopy applyToUserContentController:userContentController];
  v28 = objc_alloc_init(BEExternalIframeJS);
  v29 = [self javascriptProvidersWithPaginationOptions:optionsCopy cfiOptions:cfiOptionsCopy cleanupOptions:cleanupOptionsCopy stylesheetSet:setCopy externalIframeJS:v28 forDisplay:display];

  v30 = [v29 mutableCopy];
  v44 = v30;
  [self _addJavascript:v30 userContentController:userContentController];
  v31 = [[BENavigationHandler alloc] initWithMode:0];
  if (cfiOptionsCopy)
  {
    assetId = [cfiOptionsCopy assetId];
    [(BENavigationHandler *)v31 setBookID:assetId];
  }

  [(BENavigationHandler *)v31 setExternalIframeJS:v28];
  height = [[BEWKWebView alloc] initWithFrame:v26 configuration:x, y, width, height];
  v34 = +[NSUUID UUID];
  [v34 UUIDString];
  v35 = v42 = cfiOptionsCopy;
  [(BEWKWebView *)height setBe_identifier:v35];

  [(BEWKWebView *)height setAutoresizingMask:18];
  [(BEWKWebView *)height setBe_navigationHandler:v31];
  [(BEWKWebView *)height setNavigationDelegate:v31];
  [(BEWKWebView *)height setAccessibilityElementsHidden:1];
  [(BEWKWebView *)height setUserInteractionEnabled:0];
  v47[0] = _NSConcreteStackBlock;
  v47[1] = 3221225472;
  v47[2] = sub_13DEC;
  v47[3] = &unk_3287B8;
  v48 = height;
  v49 = optionsCopy;
  v50 = itemCopy;
  v51 = v31;
  v52 = userContentController;
  v53 = completionCopy;
  selfCopy = self;
  v36 = completionCopy;
  v37 = userContentController;
  v38 = v31;
  v39 = itemCopy;
  v40 = optionsCopy;
  v41 = height;
  [(BEWKWebView *)v41 be_configureFontWithStyleManager:managerCopy completion:v47];
}

+ (id)viewConfiguredAsyncForBooks:(CGRect)books protocolCacheItem:(id)item paginationOptions:(id)options cleanupOptions:(id)cleanupOptions cfiOptions:(id)cfiOptions imageFilterMode:(unint64_t)mode stylesheetSet:(id)set styleManager:(id)self0 completion:(id)self1
{
  height = books.size.height;
  width = books.size.width;
  y = books.origin.y;
  x = books.origin.x;
  completionCopy = completion;
  managerCopy = manager;
  setCopy = set;
  cfiOptionsCopy = cfiOptions;
  cleanupOptionsCopy = cleanupOptions;
  optionsCopy = options;
  itemCopy = item;
  v29 = [self _viewConfiguredForBooks:itemCopy fixedLayoutSize:optionsCopy protocolCacheItem:cleanupOptionsCopy paginationOptions:cfiOptionsCopy cleanupOptions:setCopy cfiOptions:managerCopy stylesheetSet:x styleManager:y contentSupportMode:width imageFilterMode:height completion:{CGSizeZero.width, CGSizeZero.height, sub_13780(optionsCopy), mode, completionCopy}];

  return v29;
}

+ (void)viewConfiguredForSearch:(CGRect)search protocolCacheItem:(id)item paginationOptions:(id)options cleanupOptions:(id)cleanupOptions cfiOptions:(id)cfiOptions stylesheetSet:(id)set styleManager:(id)manager contentSupportMode:(unint64_t)self0 completion:(id)self1
{
  height = search.size.height;
  width = search.size.width;
  y = search.origin.y;
  x = search.origin.x;
  itemCopy = item;
  optionsCopy = options;
  completionCopy = completion;
  managerCopy = manager;
  setCopy = set;
  cfiOptionsCopy = cfiOptions;
  cleanupOptionsCopy = cleanupOptions;
  selfCopy = self;
  v59 = [self _standardWKPreferences:0];
  v55 = [self _standardWKWebViewConfiguration:v59 cacheItem:itemCopy usesSingleWebProcess:1 forWebTOC:0];
  userContentController = [v55 userContentController];
  v51 = objc_alloc_init(BEExternalIframeJS);
  v23 = [optionsCopy mode] == &dword_4;
  v24 = objc_alloc_init(BEBooksObjectJS);
  v68[0] = v24;
  v25 = objc_alloc_init(BEImageFilteringJS);
  v68[1] = v25;
  v26 = [[BEContentLayoutInfo alloc] initWithOptions:optionsCopy];
  v68[2] = v26;
  v27 = [BECFIUtilitiesJS alloc];
  [optionsCopy gapBetweenPages];
  v28 = [(BECFIUtilitiesJS *)v27 initWithOptions:cfiOptionsCopy gapBetweenPages:v23 paginatedTopToBottom:?];
  v68[3] = v28;
  v29 = [BEContentSupportJS alloc];
  documentAttributes = [setCopy documentAttributes];
  v31 = [(BEContentSupportJS *)v29 initWithMode:mode forDisplay:0 attributes:documentAttributes imageFilterMode:0 lineGuideEnabled:0];
  v68[4] = v31;
  v32 = [BEContentCleanupJS alloc];
  [optionsCopy pageLength];
  v34 = v33;
  [optionsCopy gapBetweenPages];
  v36 = [(BEContentCleanupJS *)v32 initWithOptions:cleanupOptionsCopy pageLength:v34 gapBetweenPages:v35];

  v68[5] = v36;
  v68[6] = v51;
  v37 = [NSArray arrayWithObjects:v68 count:7];

  v38 = v37;
  [selfCopy _addJavascript:v37 userContentController:userContentController];
  [setCopy applyToUserContentController:userContentController];

  v39 = [[BENavigationHandler alloc] initWithMode:0];
  assetId = [cfiOptionsCopy assetId];

  [(BENavigationHandler *)v39 setBookID:assetId];
  [(BENavigationHandler *)v39 setExternalIframeJS:v51];
  height = [[BEWKWebView alloc] initWithFrame:v55 configuration:x, y, width, height];
  v42 = +[NSUUID UUID];
  uUIDString = [v42 UUIDString];
  [(BEWKWebView *)height setBe_identifier:uUIDString];

  [(BEWKWebView *)height setAutoresizingMask:18];
  [(BEWKWebView *)height setBe_navigationHandler:v39];
  [(BEWKWebView *)height setNavigationDelegate:v39];
  [(BEWKWebView *)height setUserInteractionEnabled:0];
  v60[0] = _NSConcreteStackBlock;
  v60[1] = 3221225472;
  v60[2] = sub_144B8;
  v60[3] = &unk_3287B8;
  v61 = height;
  v62 = optionsCopy;
  v67 = selfCopy;
  v63 = itemCopy;
  v64 = v39;
  v65 = userContentController;
  v66 = completionCopy;
  v44 = completionCopy;
  v45 = userContentController;
  v46 = v39;
  v47 = itemCopy;
  v48 = optionsCopy;
  v49 = height;
  [(BEWKWebView *)v49 be_configureFontWithStyleManager:managerCopy completion:v60];
}

+ (id)_viewConfiguredForBooks:(CGRect)books fixedLayoutSize:(CGSize)size protocolCacheItem:(id)item paginationOptions:(id)options cleanupOptions:(id)cleanupOptions cfiOptions:(id)cfiOptions stylesheetSet:(id)set styleManager:(id)self0 contentSupportMode:(unint64_t)self1
{
  height = size.height;
  width = size.width;
  v18 = books.size.height;
  v19 = books.size.width;
  y = books.origin.y;
  x = books.origin.x;
  itemCopy = item;
  optionsCopy = options;
  managerCopy = manager;
  setCopy = set;
  cfiOptionsCopy = cfiOptions;
  cleanupOptionsCopy = cleanupOptions;
  v66 = itemCopy;
  v28 = [self _booksViewWKWebViewConfiguration:objc_msgSend(optionsCopy protocolCacheItem:{"developerExtrasEnabled"), itemCopy}];
  if (![optionsCopy mode])
  {
    [v28 _setDrawsBackground:0];
  }

  v67 = objc_alloc_init(BEExternalIframeJS);
  v29 = [optionsCopy mode] == &dword_4;
  v63 = objc_alloc_init(BEBooksObjectJS);
  v69[0] = v63;
  v62 = [[BEContentLayoutInfo alloc] initWithOptions:optionsCopy];
  v69[1] = v62;
  v61 = -[BEReadingSystemJS initWithPaginationMode:]([BEReadingSystemJS alloc], "initWithPaginationMode:", [optionsCopy mode]);
  v69[2] = v61;
  v59 = objc_alloc_init(BEImageFilteringJS);
  v69[3] = v59;
  v58 = objc_alloc_init(BETextFieldDisablingJS);
  v69[4] = v58;
  v68 = v28;
  v30 = [BECFIUtilitiesJS alloc];
  [optionsCopy gapBetweenPages];
  v31 = [(BECFIUtilitiesJS *)v30 initWithOptions:cfiOptionsCopy gapBetweenPages:v29 paginatedTopToBottom:?];
  v69[5] = v31;
  v32 = [BEContentSupportJS alloc];
  v33 = setCopy;
  [setCopy documentAttributes];
  v34 = v60 = cfiOptionsCopy;
  v35 = [(BEContentSupportJS *)v32 initWithMode:mode forDisplay:1 attributes:v34 imageFilterMode:0 lineGuideEnabled:0];
  v69[6] = v35;
  v36 = [BEContentCleanupJS alloc];
  [optionsCopy pageLength];
  v38 = v37;
  [optionsCopy gapBetweenPages];
  v40 = [(BEContentCleanupJS *)v36 initWithOptions:cleanupOptionsCopy pageLength:v38 gapBetweenPages:v39];

  v69[7] = v40;
  v69[8] = v67;
  v41 = objc_alloc_init(BEReadAloudJS);
  v69[9] = v41;
  v42 = objc_alloc_init(BETriggerJS);
  v69[10] = v42;
  v43 = [NSArray arrayWithObjects:v69 count:11];

  userContentController = [v68 userContentController];
  v64 = v43;
  [self _addJavascript:v43 userContentController:userContentController];
  [v33 applyToUserContentController:userContentController];

  v45 = [[BENavigationHandler alloc] initWithMode:0];
  assetId = [v60 assetId];

  [(BENavigationHandler *)v45 setBookID:assetId];
  [(BENavigationHandler *)v45 setExternalIframeJS:v67];
  v47 = objc_alloc_init(BEUIHandler);
  v48 = objc_opt_class();
  if (mode == 4)
  {
    v48 = objc_opt_class();
  }

  v49 = [[v48 alloc] initWithFrame:v68 configuration:{x, y, v19, v18}];
  v50 = +[NSUUID UUID];
  uUIDString = [v50 UUIDString];
  [v49 setBe_identifier:uUIDString];

  [v49 setAutoresizingMask:18];
  [v49 setBe_navigationHandler:v45];
  [v49 setNavigationDelegate:v45];
  [v49 setBe_uiHandler:v47];
  [v49 setUIDelegate:v47];
  [v49 _setObservedRenderingProgressEvents:256];
  if (managerCopy)
  {
    [v49 be_configureFontWithStyleManager:managerCopy completion:&stru_3287F8];
  }

  [v49 setBe_isHorizontalScroll:{objc_msgSend(optionsCopy, "isHorizontalScroll")}];
  sinfInfo = [v66 sinfInfo];
  allKeys = [sinfInfo allKeys];
  v54 = [allKeys count];

  if (v54)
  {
    [v49 be_containsProtectedContent];
  }

  [v49 be_enableAX];
  [optionsCopy applyToWebView:v49];
  [self _setupContentBlockingRulesforWebView:v49 rule:{objc_msgSend(v66, "contentBlockingRule")}];
  [self _applyMetaViewportOverridesToWebView:v49 fixedLayoutSize:{width, height}];
  if (mode == 4)
  {
    configuration = [v49 configuration];
    defaultWebpagePreferences = [configuration defaultWebpagePreferences];
    [defaultWebpagePreferences _setMouseEventPolicy:1];
  }

  [self _modifyScrollViewBehaviors:v49];
  [self _configureNavigationForCoalescingLoadEvents:v45 userContentController:userContentController];

  return v49;
}

+ (id)viewConfiguredForBooks:(CGRect)books protocolCacheItem:(id)item paginationOptions:(id)options cleanupOptions:(id)cleanupOptions cfiOptions:(id)cfiOptions stylesheetSet:(id)set styleManager:(id)manager
{
  height = books.size.height;
  width = books.size.width;
  y = books.origin.y;
  x = books.origin.x;
  managerCopy = manager;
  setCopy = set;
  cfiOptionsCopy = cfiOptions;
  cleanupOptionsCopy = cleanupOptions;
  optionsCopy = options;
  itemCopy = item;
  v25 = [self _viewConfiguredForBooks:itemCopy fixedLayoutSize:optionsCopy protocolCacheItem:cleanupOptionsCopy paginationOptions:cfiOptionsCopy cleanupOptions:setCopy cfiOptions:managerCopy stylesheetSet:x styleManager:y contentSupportMode:{width, height, CGSizeZero.width, CGSizeZero.height, sub_13780(optionsCopy)}];

  return v25;
}

+ (id)viewConfiguredForPictureBooks:(CGRect)books fixedLayoutSize:(CGSize)size protocolCacheItem:(id)item paginationOptions:(id)options cleanupOptions:(id)cleanupOptions cfiOptions:(id)cfiOptions stylesheetSet:(id)set
{
  height = size.height;
  width = size.width;
  v15 = books.size.height;
  v16 = books.size.width;
  y = books.origin.y;
  x = books.origin.x;
  setCopy = set;
  cfiOptionsCopy = cfiOptions;
  cleanupOptionsCopy = cleanupOptions;
  optionsCopy = options;
  itemCopy = item;
  v25 = [self _viewConfiguredForBooks:itemCopy fixedLayoutSize:optionsCopy protocolCacheItem:cleanupOptionsCopy paginationOptions:cfiOptionsCopy cleanupOptions:setCopy cfiOptions:0 stylesheetSet:x styleManager:y contentSupportMode:{v16, v15, width, height, sub_13780(optionsCopy)}];

  return v25;
}

+ (id)viewConfiguredForCoverContent:(CGRect)content bookID:(id)d protocolCacheItem:(id)item paginationOptions:(id)options cfiOptions:(id)cfiOptions
{
  height = content.size.height;
  width = content.size.width;
  y = content.origin.y;
  x = content.origin.x;
  cfiOptionsCopy = cfiOptions;
  optionsCopy = options;
  itemCopy = item;
  dCopy = d;
  v40 = [self _standardWKPreferences:{objc_msgSend(optionsCopy, "developerExtrasEnabled")}];
  v37 = [self _standardWKWebViewConfiguration:v40 cacheItem:itemCopy usesSingleWebProcess:1 forWebTOC:0];
  v17 = [optionsCopy mode] == &dword_4;
  v18 = objc_alloc_init(BEBooksObjectJS);
  v41[0] = v18;
  v19 = [[BEContentLayoutInfo alloc] initWithOptions:optionsCopy];
  v41[1] = v19;
  v20 = -[BEReadingSystemJS initWithPaginationMode:]([BEReadingSystemJS alloc], "initWithPaginationMode:", [optionsCopy mode]);
  v41[2] = v20;
  v21 = objc_alloc_init(BEImageFilteringJS);
  v41[3] = v21;
  v22 = objc_alloc_init(BETextFieldDisablingJS);
  v41[4] = v22;
  v23 = [BECFIUtilitiesJS alloc];
  [optionsCopy gapBetweenPages];
  v24 = [(BECFIUtilitiesJS *)v23 initWithOptions:cfiOptionsCopy gapBetweenPages:v17 paginatedTopToBottom:?];

  v41[5] = v24;
  v25 = [BEContentSupportJS alloc];
  v26 = sub_13780(optionsCopy);

  v27 = [(BEContentSupportJS *)v25 initWithMode:v26 forDisplay:1 imageFilterMode:0 lineGuideEnabled:0];
  v41[6] = v27;
  v28 = [NSArray arrayWithObjects:v41 count:7];

  userContentController = [v37 userContentController];
  [self _addJavascript:v28 userContentController:userContentController];

  v30 = [[BENavigationHandler alloc] initWithMode:3];
  [(BENavigationHandler *)v30 setBookID:dCopy];

  height = [[BEWKWebView alloc] initWithFrame:v37 configuration:x, y, width, height];
  v32 = +[NSUUID UUID];
  uUIDString = [v32 UUIDString];
  [(BEWKWebView *)height setBe_identifier:uUIDString];

  [(BEWKWebView *)height setAutoresizingMask:18];
  [(BEWKWebView *)height setBe_navigationHandler:v30];
  [(BEWKWebView *)height setNavigationDelegate:v30];
  [(BEWKWebView *)height setUserInteractionEnabled:0];
  [(BEWKWebView *)height be_enableAX];
  contentBlockingRule = [itemCopy contentBlockingRule];

  [self _setupContentBlockingRulesforWebView:height rule:contentBlockingRule];
  [self _applyMetaViewportOverridesToWebView:height fixedLayoutSize:{CGSizeZero.width, CGSizeZero.height}];
  [self _modifyScrollViewBehaviors:height];
  userContentController2 = [v37 userContentController];
  [self _configureNavigationForCoalescingLoadEvents:v30 userContentController:userContentController2];

  return height;
}

+ (id)viewConfiguredForPreview:(CGRect)preview enableDeveloperExtras:(BOOL)extras bookID:(id)d imageFilterMode:(unint64_t)mode protocolCacheItem:(id)item cleanupOptions:(id)options stylesheetSet:(id)set
{
  extrasCopy = extras;
  height = preview.size.height;
  width = preview.size.width;
  y = preview.origin.y;
  x = preview.origin.x;
  setCopy = set;
  optionsCopy = options;
  itemCopy = item;
  dCopy = d;
  v45 = [self _standardWKPreferences:extrasCopy];
  v40 = [self _standardWKWebViewConfiguration:v45 cacheItem:itemCopy usesSingleWebProcess:0 forWebTOC:0];
  [v40 setSuppressesIncrementalRendering:0];
  [v40 setIgnoresViewportScaleLimits:1];
  v39 = objc_alloc_init(BEExternalIframeJS);
  v20 = objc_alloc_init(BEBooksObjectJS);
  v46[0] = v20;
  v21 = [BEContentLayoutInfo alloc];
  v22 = objc_opt_new();
  v23 = [(BEContentLayoutInfo *)v21 initWithOptions:v22];
  v46[1] = v23;
  v24 = [[BEReadingSystemJS alloc] initWithPaginationMode:0];
  v46[2] = v24;
  v25 = objc_alloc_init(BEImageFilteringJS);
  v46[3] = v25;
  v26 = objc_alloc_init(BETextFieldDisablingJS);
  v46[4] = v26;
  v27 = [[BEContentSupportJS alloc] initWithMode:5 forDisplay:1 attributes:&__NSDictionary0__struct imageFilterMode:mode lineGuideEnabled:0];
  v46[5] = v27;
  v28 = [[BEContentCleanupJS alloc] initWithOptions:optionsCopy pageLength:0.0 gapBetweenPages:0.0];

  v46[6] = v28;
  v46[7] = v39;
  v29 = objc_alloc_init(BETriggerJS);
  v46[8] = v29;
  v30 = [NSArray arrayWithObjects:v46 count:9];

  userContentController = [v40 userContentController];
  [self _addJavascript:v30 userContentController:userContentController];
  [setCopy applyToUserContentController:userContentController];

  v32 = [[BENavigationHandler alloc] initWithMode:3];
  [(BENavigationHandler *)v32 setBookID:dCopy];

  [(BENavigationHandler *)v32 setExternalIframeJS:v39];
  v33 = objc_alloc_init(BEUIHandler);
  height = [[BEWKWebView alloc] initWithFrame:v40 configuration:x, y, width, height];
  v35 = +[NSUUID UUID];
  uUIDString = [v35 UUIDString];
  [(BEWKWebView *)height setBe_identifier:uUIDString];

  [(BEWKWebView *)height setAutoresizingMask:18];
  [(BEWKWebView *)height setBe_navigationHandler:v32];
  [(BEWKWebView *)height setNavigationDelegate:v32];
  [(BEWKWebView *)height setBe_uiHandler:v33];
  [(BEWKWebView *)height setUIDelegate:v33];
  [(BEWKWebView *)height _setObservedRenderingProgressEvents:64];
  [(BEWKWebView *)height be_enableAX];
  contentBlockingRule = [itemCopy contentBlockingRule];

  [self _setupContentBlockingRulesforWebView:height rule:contentBlockingRule];
  [self _configureNavigationForCoalescingLoadEvents:v32 userContentController:userContentController];

  return height;
}

+ (id)viewConfiguredForWebTOC:(CGRect)c
{
  height = c.size.height;
  width = c.size.width;
  y = c.origin.y;
  x = c.origin.x;
  v8 = [self _standardWKPreferences:0];
  v9 = [self _standardWKWebViewConfiguration:v8 cacheItem:0 usesSingleWebProcess:1 forWebTOC:1];
  height = [[BEWKWebView alloc] initWithFrame:v9 configuration:x, y, width, height];
  v11 = +[NSUUID UUID];
  uUIDString = [v11 UUIDString];
  [(BEWKWebView *)height setBe_identifier:uUIDString];

  [(BEWKWebView *)height setTranslatesAutoresizingMaskIntoConstraints:0];
  [(BEWKWebView *)height setAutoresizingMask:0];
  [(BEWKWebView *)height be_enableAX];
  [self _setupContentBlockingRulesforWebView:height rule:1];
  [self _applyMetaViewportOverridesToWebView:height fixedLayoutSize:{CGSizeZero.width, CGSizeZero.height}];

  return height;
}

+ (id)viewConfiguredForThemePreview
{
  v3 = [self _standardWKPreferences:0];
  v4 = [self _standardWKWebViewConfiguration:v3 cacheItem:0 usesSingleWebProcess:0 forWebTOC:0];
  [v4 _setDrawsBackground:0];
  v5 = [[BEThemePreviewWKWebView alloc] initWithFrame:v4 configuration:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];

  return v5;
}

+ (void)updateThemePreviewWebView:(id)view styleManager:(id)manager stylesheetSet:(id)set fontFamily:(id)family
{
  viewCopy = view;
  managerCopy = manager;
  setCopy = set;
  familyCopy = family;
  objc_opt_class();
  v12 = BUDynamicCast();
  v13 = v12;
  if (v12)
  {
    [v12 be_registerFontFamilyForStyleManager:managerCopy fontFamily:familyCopy];
    [setCopy applyToWebView:viewCopy];
  }
}

+ (id)javascriptProvidersWithPaginationOptions:(id)options cfiOptions:(id)cfiOptions cleanupOptions:(id)cleanupOptions stylesheetSet:(id)set externalIframeJS:(id)s forDisplay:(BOOL)display
{
  displayCopy = display;
  optionsCopy = options;
  cfiOptionsCopy = cfiOptions;
  cleanupOptionsCopy = cleanupOptions;
  setCopy = set;
  sCopy = s;
  if (!sCopy)
  {
    sCopy = objc_alloc_init(BEExternalIframeJS);
  }

  v33 = sCopy;
  v18 = [optionsCopy mode] == &dword_4;
  v36 = objc_alloc_init(BEBooksObjectJS);
  v37[0] = v36;
  v35 = [[BEContentLayoutInfo alloc] initWithOptions:optionsCopy];
  v37[1] = v35;
  v34 = objc_alloc_init(BEImageFilteringJS);
  v37[2] = v34;
  v32 = -[BEReadingSystemJS initWithPaginationMode:]([BEReadingSystemJS alloc], "initWithPaginationMode:", [optionsCopy mode]);
  v37[3] = v32;
  v19 = [BECFIUtilitiesJS alloc];
  [optionsCopy gapBetweenPages];
  v20 = [(BECFIUtilitiesJS *)v19 initWithOptions:cfiOptionsCopy gapBetweenPages:v18 paginatedTopToBottom:?];
  v37[4] = v20;
  v21 = [BEContentSupportJS alloc];
  v22 = sub_13780(optionsCopy);
  documentAttributes = [setCopy documentAttributes];
  v24 = [(BEContentSupportJS *)v21 initWithMode:v22 forDisplay:displayCopy attributes:documentAttributes imageFilterMode:0 lineGuideEnabled:0];
  v37[5] = v24;
  v25 = [BEContentCleanupJS alloc];
  [optionsCopy pageLength];
  v27 = v26;
  [optionsCopy gapBetweenPages];
  v29 = [(BEContentCleanupJS *)v25 initWithOptions:cleanupOptionsCopy pageLength:v27 gapBetweenPages:v28];
  v37[6] = v29;
  v37[7] = v33;
  v30 = [NSArray arrayWithObjects:v37 count:8];

  return v30;
}

+ (id)_viewConfiguredForPagination:(CGRect)pagination protocolCacheItem:(id)item paginationOptions:(id)options cleanupOptions:(id)cleanupOptions cfiOptions:(id)cfiOptions stylesheetSet:(id)set styleManager:(id)manager forDisplay:(BOOL)self0
{
  height = pagination.size.height;
  width = pagination.size.width;
  y = pagination.origin.y;
  x = pagination.origin.x;
  itemCopy = item;
  optionsCopy = options;
  cfiOptionsCopy = cfiOptions;
  managerCopy = manager;
  setCopy = set;
  cleanupOptionsCopy = cleanupOptions;
  v37 = [self _standardWKPreferences:{objc_msgSend(optionsCopy, "developerExtrasEnabled")}];
  v39 = itemCopy;
  v25 = [self _standardWKWebViewConfiguration:? cacheItem:? usesSingleWebProcess:? forWebTOC:?];
  userContentController = [v25 userContentController];
  [setCopy applyToUserContentController:userContentController];
  v27 = objc_alloc_init(BEExternalIframeJS);
  v28 = [self javascriptProvidersWithPaginationOptions:optionsCopy cfiOptions:cfiOptionsCopy cleanupOptions:cleanupOptionsCopy stylesheetSet:setCopy externalIframeJS:v27 forDisplay:display];

  v29 = [v28 mutableCopy];
  v36 = v29;
  [self _addJavascript:v29 userContentController:userContentController];
  v30 = [[BENavigationHandler alloc] initWithMode:0];
  if (cfiOptionsCopy)
  {
    assetId = [cfiOptionsCopy assetId];
    [(BENavigationHandler *)v30 setBookID:assetId];
  }

  [(BENavigationHandler *)v30 setExternalIframeJS:v27];
  height = [[BEWKWebView alloc] initWithFrame:v25 configuration:x, y, width, height];
  v33 = +[NSUUID UUID];
  uUIDString = [v33 UUIDString];
  [(BEWKWebView *)height setBe_identifier:uUIDString];

  [(BEWKWebView *)height setAutoresizingMask:18];
  [(BEWKWebView *)height setBe_navigationHandler:v30];
  [(BEWKWebView *)height setNavigationDelegate:v30];
  [(BEWKWebView *)height setAccessibilityElementsHidden:1];
  [(BEWKWebView *)height setUserInteractionEnabled:0];
  if (managerCopy)
  {
    [(BEWKWebView *)height be_configureFontWithStyleManager:managerCopy completion:&stru_328818];
  }

  -[BEWKWebView setBe_isHorizontalScroll:](height, "setBe_isHorizontalScroll:", [optionsCopy isHorizontalScroll]);
  [optionsCopy applyToWebView:height];
  [self _setupContentBlockingRulesforWebView:height rule:{objc_msgSend(v39, "contentBlockingRule")}];
  [self _applyMetaViewportOverridesToWebView:height fixedLayoutSize:{CGSizeZero.width, CGSizeZero.height}];
  [self _modifyScrollViewBehaviors:height];
  [self _configureNavigationForCoalescingLoadEvents:v30 userContentController:userContentController];

  return height;
}

+ (id)viewConfiguredForTocParse:(CGRect)parse assetID:(id)d cleanupOptions:(id)options
{
  height = parse.size.height;
  width = parse.size.width;
  y = parse.origin.y;
  x = parse.origin.x;
  optionsCopy = options;
  dCopy = d;
  v30 = [self _standardWKPreferences:0];
  [v30 _setLoadsImagesAutomatically:0];
  v13 = [self _standardWKWebViewConfiguration:v30 cacheItem:0 usesSingleWebProcess:1 forWebTOC:0];
  userContentController = [v13 userContentController];
  v15 = objc_alloc_init(BEExternalIframeJS);
  v16 = [BECFIUtilitiesJS alloc];
  v17 = objc_opt_new();
  v29 = [(BECFIUtilitiesJS *)v16 initWithOptions:v17 gapBetweenPages:0 paginatedTopToBottom:0.0];

  v18 = objc_alloc_init(BEBooksObjectJS);
  v31[0] = v18;
  v19 = [BEContentLayoutInfo alloc];
  v20 = objc_opt_new();
  v21 = [(BEContentLayoutInfo *)v19 initWithOptions:v20];
  v31[1] = v21;
  v31[2] = v29;
  v22 = [[BEContentCleanupJS alloc] initWithOptions:optionsCopy pageLength:0.0 gapBetweenPages:0.0];

  v31[3] = v22;
  v31[4] = v15;
  v23 = [NSArray arrayWithObjects:v31 count:5];

  [self _addJavascript:v23 userContentController:userContentController];
  v24 = [[BENavigationHandler alloc] initWithMode:0];
  [(BENavigationHandler *)v24 setBookID:dCopy];

  [(BENavigationHandler *)v24 setExternalIframeJS:v15];
  height = [[BEWKWebView alloc] initWithFrame:v13 configuration:x, y, width, height];
  v26 = +[NSUUID UUID];
  uUIDString = [v26 UUIDString];
  [(BEWKWebView *)height setBe_identifier:uUIDString];

  [(BEWKWebView *)height setAutoresizingMask:18];
  [(BEWKWebView *)height setBe_navigationHandler:v24];
  [(BEWKWebView *)height setNavigationDelegate:v24];
  [(BEWKWebView *)height setAccessibilityElementsHidden:1];
  [(BEWKWebView *)height setUserInteractionEnabled:0];
  [self _setupContentBlockingRulesforWebView:height rule:1];
  [self _configureNavigationForCoalescingLoadEvents:v24 userContentController:userContentController];

  return height;
}

+ (void)_configureNavigationForCoalescingLoadEvents:(id)events userContentController:(id)controller
{
  controllerCopy = controller;
  eventsCopy = events;
  [eventsCopy setShouldWaitForJavascriptLoadComplete:1];
  v8 = objc_opt_new();
  v10 = v8;
  v9 = [NSArray arrayWithObjects:&v10 count:1];
  [self _addJavascript:v9 userContentController:controllerCopy];

  [controllerCopy removeScriptMessageHandlerForName:@"BENavigationHandlerJSLoadComplete"];
  [controllerCopy be_addScriptMessageHandler:eventsCopy name:@"BENavigationHandlerJSLoadComplete"];
}

@end