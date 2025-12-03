@interface WKWebViewConfiguration
+ (BOOL)_isValidCustomScheme:(id)scheme;
- (BOOL)_applePayEnabled;
- (BOOL)_delaysWebProcessLaunchUntilFirstLoad;
- (BOOL)_printsBackgrounds;
- (BOOL)_respectsImageOrientation;
- (NSArray)_additionalSupportedImageTypes;
- (NSArray)_corsDisablingPatterns;
- (NSArray)_portsForUpgradingInsecureSchemeForTesting;
- (NSSet)_allowedNetworkHosts;
- (NSSet)_maskedURLSchemes;
- (NSString)_applicationNameForDesktopUserAgent;
- (NSString)_attributedBundleIdentifier;
- (NSString)_groupIdentifier;
- (NSString)_mediaContentTypesRequiringHardwareSupport;
- (NSString)_overrideContentSecurityPolicy;
- (NSString)_processDisplayName;
- (NSString)applicationNameForUserAgent;
- (NSString)description;
- (NSURL)_requiredWebExtensionBaseURL;
- (Ref<API::PageConfiguration,)_protectedPageConfiguration;
- (WKPreferences)preferences;
- (WKProcessPool)processPool;
- (WKUserContentController)userContentController;
- (WKWebExtensionController)_strongWebExtensionController;
- (WKWebExtensionController)_weakWebExtensionController;
- (WKWebExtensionController)webExtensionController;
- (WKWebView)_alternateWebViewForNavigationGestures;
- (WKWebView)_relatedWebView;
- (WKWebView)_webViewToCloneSessionStorageFrom;
- (WKWebViewConfiguration)init;
- (WKWebViewConfiguration)initWithCoder:(id)coder;
- (WKWebpagePreferences)defaultWebpagePreferences;
- (WKWebsiteDataStore)_websiteDataStoreIfExists;
- (WKWebsiteDataStore)websiteDataStore;
- (_WKApplicationManifest)_applicationManifest;
- (_WKVisitedLinkStore)_visitedLinkStore;
- (id)copyWithZone:(_NSZone *)zone;
- (id)urlSchemeHandlerForURLScheme:(NSString *)urlScheme;
- (id)valueForKey:(id)key;
- (int64_t)writingToolsBehavior;
- (unint64_t)_appInitiatedOverrideValueForTesting;
- (unint64_t)_contentSecurityPolicyModeForExtension;
- (unint64_t)_dragLiftDelay;
- (void)_setAdditionalSupportedImageTypes:(id)types;
- (void)_setAllowedNetworkHosts:(id)hosts;
- (void)_setAlternateWebViewForNavigationGestures:(id)gestures;
- (void)_setAppInitiatedOverrideValueForTesting:(unint64_t)testing;
- (void)_setApplePayEnabled:(BOOL)enabled;
- (void)_setApplicationManifest:(id)manifest;
- (void)_setAttachmentFileWrapperClass:(Class)class;
- (void)_setAttributedBundleIdentifier:(id)identifier;
- (void)_setCORSDisablingPatterns:(id)patterns;
- (void)_setClickInteractionDriverForTesting:(id)testing;
- (void)_setContentSecurityPolicyModeForExtension:(unint64_t)extension;
- (void)_setDelaysWebProcessLaunchUntilFirstLoad:(BOOL)load;
- (void)_setDragLiftDelay:(unint64_t)delay;
- (void)_setGroupIdentifier:(id)identifier;
- (void)_setLoadsFromNetwork:(BOOL)network;
- (void)_setMaskedURLSchemes:(id)schemes;
- (void)_setMediaContentTypesRequiringHardwareSupport:(id)support;
- (void)_setOverrideContentSecurityPolicy:(id)policy;
- (void)_setPortsForUpgradingInsecureSchemeForTesting:(id)testing;
- (void)_setPrintsBackgrounds:(BOOL)backgrounds;
- (void)_setProcessDisplayName:(id)name;
- (void)_setRelatedWebView:(id)view;
- (void)_setRequiredWebExtensionBaseURL:(id)l;
- (void)_setRequiresUserActionForAudioPlayback:(BOOL)playback;
- (void)_setRequiresUserActionForVideoPlayback:(BOOL)playback;
- (void)_setRespectsImageOrientation:(BOOL)orientation;
- (void)_setShouldRelaxThirdPartyCookieBlocking:(BOOL)blocking;
- (void)_setVisitedLinkStore:(id)store;
- (void)_setWeakWebExtensionController:(id)controller;
- (void)_setWebViewToCloneSessionStorageFrom:(id)from;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)setApplicationNameForUserAgent:(NSString *)applicationNameForUserAgent;
- (void)setDefaultWebpagePreferences:(WKWebpagePreferences *)defaultWebpagePreferences;
- (void)setPreferences:(WKPreferences *)preferences;
- (void)setProcessPool:(WKProcessPool *)processPool;
- (void)setURLSchemeHandler:(id)urlSchemeHandler forURLScheme:(NSString *)urlScheme;
- (void)setUserContentController:(WKUserContentController *)userContentController;
- (void)setValue:(id)value forKey:(id)key;
- (void)setWebExtensionController:(id)controller;
- (void)setWebsiteDataStore:(WKWebsiteDataStore *)websiteDataStore;
- (void)setWritingToolsBehavior:(int64_t)behavior;
@end

@implementation WKWebViewConfiguration

- (WKWebViewConfiguration)init
{
  v8.receiver = self;
  v8.super_class = WKWebViewConfiguration;
  v2 = [(WKWebViewConfiguration *)&v8 init];
  v3 = v2;
  if (v2)
  {
    v4 = API::Object::apiObjectsUnderConstruction(v2);
    _apiObject = [(WKWebViewConfiguration *)v3 _apiObject];
    v10 = v3;
    v11 = _apiObject;
    WTF::HashMap<API::Object *,void const*,WTF::DefaultHash<API::Object *>,WTF::HashTraits<API::Object *>,WTF::HashTraits<void const*>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<void const*>(v4, &v11, &v10, v9);
    v6 = API::Object::Object([(WKWebViewConfiguration *)v3 _apiObject]);
    *v6 = &unk_1F111B740;
    API::PageConfiguration::Data::Data((v6 + 16));
  }

  return v3;
}

- (Ref<API::PageConfiguration,)_protectedPageConfiguration
{
  v3 = v2;
  p_pageConfiguration = &self->_pageConfiguration;
  v5 = CFRetain(*&self->_pageConfiguration.m_storage.data[8]);
  *v3 = p_pageConfiguration;
  return v5;
}

- (WKWebpagePreferences)defaultWebpagePreferences
{
  [(WKWebViewConfiguration *)self _protectedPageConfiguration];
  v2 = API::PageConfiguration::Data::LazyInitializedRef<API::WebsitePolicies,&API::PageConfiguration::Data::createWebsitePolicies>::get((v7 + 48));
  CFRetain(*(v2 + 1));
  v3 = *(v2 + 1);
  if (v3)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      result = 117;
      __break(0xC471u);
      return result;
    }

    v4 = *(v2 + 1);
  }

  else
  {
    v4 = 0;
  }

  CFRelease(v4);
  v5 = v7;
  v7 = 0;
  if (v5)
  {
    CFRelease(*(v5 + 8));
  }

  return v3;
}

- (WKPreferences)preferences
{
  [(WKWebViewConfiguration *)self _protectedPageConfiguration];
  v2 = API::PageConfiguration::Data::LazyInitializedRef<WebKit::WebPreferences,&API::PageConfiguration::Data::createWebPreferences>::get((v7 + 32));
  CFRetain(*(v2 + 1));
  v3 = *(v2 + 1);
  if (v3)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      result = 117;
      __break(0xC471u);
      return result;
    }

    v4 = *(v2 + 1);
  }

  else
  {
    v4 = 0;
  }

  CFRelease(v4);
  v5 = v7;
  v7 = 0;
  if (v5)
  {
    CFRelease(*(v5 + 8));
  }

  return v3;
}

- (void)dealloc
{
  v3 = objc_opt_class();
  if ((WebCoreObjCScheduleDeallocateOnMainRunLoop(v3, self) & 1) == 0)
  {
    [(WKWebViewConfiguration *)self _protectedPageConfiguration];
    v4 = v8;
    *v8 = &unk_1F111B740;
    API::PageConfiguration::Data::~Data((v4 + 2), v5);
    v6 = v8;
    v8 = 0;
    if (v6)
    {
      CFRelease(v6[1]);
    }

    v7.receiver = self;
    v7.super_class = WKWebViewConfiguration;
    [(WKWebViewConfiguration *)&v7 dealloc];
  }
}

- (WKWebsiteDataStore)websiteDataStore
{
  if (self)
  {
    [(WKWebViewConfiguration *)self _protectedPageConfiguration];
    self = v7;
  }

  else
  {
    v7 = 0;
  }

  v2 = API::PageConfiguration::websiteDataStore(self);
  CFRetain(*(v2 + 8));
  v3 = *(v2 + 8);
  if (v3)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      result = 117;
      __break(0xC471u);
      return result;
    }

    v4 = *(v2 + 8);
  }

  else
  {
    v4 = 0;
  }

  CFRelease(v4);
  v5 = v7;
  v7 = 0;
  if (v5)
  {
    CFRelease(*(v5 + 1));
  }

  return v3;
}

- (WKWebView)_relatedWebView
{
  [(WKWebViewConfiguration *)self _protectedPageConfiguration];
  v2 = *(v8 + 128);
  if (v2 && (v3 = *(v2 + 8)) != 0)
  {
    CFRetain(*(v3 - 8));
    if (v8)
    {
      CFRelease(*(v8 + 8));
    }

    WeakRetained = objc_loadWeakRetained((*(v3 + 16) + 2248));
    v5 = WeakRetained;
    if (WeakRetained)
    {
      v6 = WeakRetained;
    }

    CFRelease(*(v3 - 8));
  }

  else
  {
    CFRelease(*(v8 + 8));
    return 0;
  }

  return v5;
}

- (WKProcessPool)processPool
{
  [(WKWebViewConfiguration *)self _protectedPageConfiguration];
  v2 = API::PageConfiguration::Data::LazyInitializedRef<WebKit::WebProcessPool,&API::PageConfiguration::Data::createWebProcessPool>::get((v7 + 16));
  CFRetain(*(v2 + 8));
  v3 = *(v2 + 8);
  if (v3)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      result = 117;
      __break(0xC471u);
      return result;
    }

    v4 = *(v2 + 8);
  }

  else
  {
    v4 = 0;
  }

  CFRelease(v4);
  v5 = v7;
  v7 = 0;
  if (v5)
  {
    CFRelease(*(v5 + 8));
  }

  return v3;
}

- (WKWebView)_webViewToCloneSessionStorageFrom
{
  [(WKWebViewConfiguration *)self _protectedPageConfiguration];
  v2 = *(v8 + 264);
  if (v2 && (v3 = *(v2 + 8)) != 0)
  {
    CFRetain(*(v3 - 8));
    if (v8)
    {
      CFRelease(*(v8 + 8));
    }

    WeakRetained = objc_loadWeakRetained((*(v3 + 16) + 2248));
    v5 = WeakRetained;
    if (WeakRetained)
    {
      v6 = WeakRetained;
    }

    CFRelease(*(v3 - 8));
  }

  else
  {
    CFRelease(*(v8 + 8));
    return 0;
  }

  return v5;
}

- (WKUserContentController)userContentController
{
  [(WKWebViewConfiguration *)self _protectedPageConfiguration];
  v2 = API::PageConfiguration::Data::LazyInitializedRef<WebKit::WebUserContentControllerProxy,&API::PageConfiguration::Data::createWebUserContentControllerProxy>::get((v7 + 24));
  CFRetain(*(v2 + 1));
  v3 = *(v2 + 1);
  if (v3)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      result = 117;
      __break(0xC471u);
      return result;
    }

    v4 = *(v2 + 1);
  }

  else
  {
    v4 = 0;
  }

  CFRelease(v4);
  v5 = v7;
  v7 = 0;
  if (v5)
  {
    CFRelease(*(v5 + 8));
  }

  return v3;
}

- (_WKVisitedLinkStore)_visitedLinkStore
{
  [(WKWebViewConfiguration *)self _protectedPageConfiguration];
  v2 = API::PageConfiguration::Data::LazyInitializedRef<WebKit::VisitedLinkStore,&API::PageConfiguration::Data::createVisitedLinkStore>::get((v7 + 40));
  CFRetain(*(v2 + 1));
  v3 = *(v2 + 1);
  if (v3)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      result = 117;
      __break(0xC471u);
      return result;
    }

    v4 = *(v2 + 1);
  }

  else
  {
    v4 = 0;
  }

  CFRelease(v4);
  v5 = v7;
  v7 = 0;
  if (v5)
  {
    CFRelease(*(v5 + 8));
  }

  return v3;
}

- (WKWebExtensionController)_strongWebExtensionController
{
  [(WKWebViewConfiguration *)self _protectedPageConfiguration];
  v2 = v7;
  v3 = *(v7 + 104);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_7;
  }

  CFRetain(*(v3 + 8));
  v4 = *(v3 + 8);
  if (!v4)
  {
    v5 = 0;
LABEL_6:
    CFRelease(v5);
    v2 = v7;
    if (!v7)
    {
      return v4;
    }

LABEL_7:
    CFRelease(*(v2 + 8));
    return v4;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = *(v3 + 8);
    goto LABEL_6;
  }

  result = 128;
  __break(0xC471u);
  return result;
}

- (WKWebExtensionController)_weakWebExtensionController
{
  [(WKWebViewConfiguration *)self _protectedPageConfiguration];
  v2 = v8;
  v3 = *(v8 + 112);
  if (!v3 || (v4 = *(v3 + 8)) == 0)
  {
    v5 = 0;
    goto LABEL_9;
  }

  CFRetain(*(v4 - 8));
  v5 = *(v4 - 8);
  if (!v5)
  {
    v6 = 0;
LABEL_8:
    CFRelease(v6);
    v2 = v8;
    if (!v8)
    {
      return v5;
    }

LABEL_9:
    CFRelease(*(v2 + 8));
    return v5;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = *(v4 - 8);
    goto LABEL_8;
  }

  result = 128;
  __break(0xC471u);
  return result;
}

- (NSString)_groupIdentifier
{
  result = *&self[9]._pageConfiguration.m_storage.data[8];
  if (result)
  {
    return WTF::StringImpl::operator NSString *();
  }

  return result;
}

- (NSArray)_additionalSupportedImageTypes
{
  if (self[6]._pageConfiguration.m_storage.data[40] != 1)
  {
    return 0;
  }

  WTF::createNSArray<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(&self[6]._pageConfiguration.m_storage.data[24], &v6);
  v2 = v6;
  v6 = 0;
  if (v2)
  {
    v3 = v2;
    v4 = v6;
    v6 = 0;
    if (v4)
    {
    }
  }

  return v2;
}

- (BOOL)_applePayEnabled
{
  if (self)
  {
    [(WKWebViewConfiguration *)self _protectedPageConfiguration];
    self = v4;
  }

  else
  {
    v4 = 0;
  }

  v2 = API::PageConfiguration::applePayEnabled(self);
  if (v4)
  {
    CFRelease(*(v4 + 1));
  }

  return v2;
}

- (NSString)_mediaContentTypesRequiringHardwareSupport
{
  v2 = *&self[9]._pageConfiguration.m_storage.data[16];
  if (!v2)
  {
    v4 = &stru_1F1147748;
    v5 = &stru_1F1147748;
    v9 = 0;
LABEL_7:
    v6 = v4;
    v7 = v9;
    v9 = 0;
    if (v7)
    {
    }

    return &v4->isa;
  }

  atomic_fetch_add_explicit(v2, 2u, memory_order_relaxed);
  MEMORY[0x19EB00B70](&v9, v2, a2);
  if (atomic_fetch_add_explicit(v2, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v2, v3);
  }

  v4 = v9;
  v9 = 0;
  if (v4)
  {
    goto LABEL_7;
  }

  return &v4->isa;
}

- (NSString)applicationNameForUserAgent
{
  if (self[9]._pageConfiguration.m_storage.data[32] == 1)
  {
    v2 = *&self[9]._pageConfiguration.m_storage.data[24];
    if (v2)
    {
      atomic_fetch_add_explicit(v2, 2u, memory_order_relaxed);
    }

    v7 = v2;
    if (v2)
    {
      goto LABEL_5;
    }

    return 0;
  }

  MEMORY[0x19EB02040](&v7, @"Mobile/15E148");
  if (!v7)
  {
    return 0;
  }

LABEL_5:
  v4 = WTF::StringImpl::operator NSString *();
  v5 = v7;
  v7 = 0;
  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, v3);
  }

  return v4;
}

- (NSString)_applicationNameForDesktopUserAgent
{
  if (self[9]._pageConfiguration.m_storage.data[32] != 1)
  {
    return 0;
  }

  v2 = *&self[9]._pageConfiguration.m_storage.data[24];
  if (!v2)
  {
    return 0;
  }

  atomic_fetch_add_explicit(v2, 2u, memory_order_relaxed);
  v4 = WTF::StringImpl::operator NSString *();
  if (atomic_fetch_add_explicit(v2, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v2, v3);
  }

  return v4;
}

- (WKWebView)_alternateWebViewForNavigationGestures
{
  [(WKWebViewConfiguration *)self _protectedPageConfiguration];
  v2 = *(v8 + 272);
  if (v2 && (v3 = *(v2 + 8)) != 0)
  {
    CFRetain(*(v3 - 8));
    if (v8)
    {
      CFRelease(*(v8 + 8));
    }

    WeakRetained = objc_loadWeakRetained((*(v3 + 16) + 2248));
    v5 = WeakRetained;
    if (WeakRetained)
    {
      v6 = WeakRetained;
    }

    CFRelease(*(v3 - 8));
  }

  else
  {
    CFRelease(*(v8 + 8));
    return 0;
  }

  return v5;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  return [v3 stringWithFormat:@"<%@: %p; processPool = %@; preferences = %@>", NSStringFromClass(v4), self, -[WKWebViewConfiguration processPool](self, "processPool"), -[WKWebViewConfiguration preferences](self, "preferences")];
}

- (void)encodeWithCoder:(id)coder
{
  [coder encodeObject:-[WKWebViewConfiguration processPool](self forKey:{"processPool"), @"processPool"}];
  [coder encodeObject:-[WKWebViewConfiguration preferences](self forKey:{"preferences"), @"preferences"}];
  [coder encodeObject:-[WKWebViewConfiguration userContentController](self forKey:{"userContentController"), @"userContentController"}];
  [coder encodeObject:-[WKWebViewConfiguration websiteDataStore](self forKey:{"websiteDataStore"), @"websiteDataStore"}];
  [coder encodeBool:-[WKWebViewConfiguration suppressesIncrementalRendering](self forKey:{"suppressesIncrementalRendering"), @"suppressesIncrementalRendering"}];
  if (self[9]._pageConfiguration.m_storage.data[32] == 1)
  {
    v5 = *&self[9]._pageConfiguration.m_storage.data[24];
    if (v5)
    {
      atomic_fetch_add_explicit(v5, 2u, memory_order_relaxed);
      MEMORY[0x19EB00B70](&v9, v5);
      if (atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v5, v6);
      }
    }

    else
    {
      v9 = &stru_1F1147748;
      v7 = &stru_1F1147748;
    }

    [coder encodeObject:v9 forKey:@"applicationNameForUserAgent"];
    v8 = v9;
    v9 = 0;
    if (v8)
    {
    }
  }

  [coder encodeBool:-[WKWebViewConfiguration allowsAirPlayForMediaPlayback](self forKey:{"allowsAirPlayForMediaPlayback"), @"allowsAirPlayForMediaPlayback"}];
  [coder encodeBool:-[WKWebViewConfiguration _drawsBackground](self forKey:{"_drawsBackground"), @"drawsBackground"}];
  [coder encodeInteger:-[WKWebViewConfiguration dataDetectorTypes](self forKey:{"dataDetectorTypes"), @"dataDetectorTypes"}];
  [coder encodeBool:-[WKWebViewConfiguration allowsInlineMediaPlayback](self forKey:{"allowsInlineMediaPlayback"), @"allowsInlineMediaPlayback"}];
  [coder encodeBool:-[WKWebViewConfiguration _allowsInlineMediaPlaybackAfterFullscreen](self forKey:{"_allowsInlineMediaPlaybackAfterFullscreen"), @"allowsInlineMediaPlaybackAfterFullscreen"}];
  [coder encodeBool:-[WKWebViewConfiguration mediaTypesRequiringUserActionForPlayback](self forKey:{"mediaTypesRequiringUserActionForPlayback") != 0, @"mediaTypesRequiringUserActionForPlayback"}];
  [coder encodeInteger:-[WKWebViewConfiguration selectionGranularity](self forKey:{"selectionGranularity"), @"selectionGranularity"}];
  [coder encodeBool:-[WKWebViewConfiguration allowsPictureInPictureMediaPlayback](self forKey:{"allowsPictureInPictureMediaPlayback"), @"allowsPictureInPictureMediaPlayback"}];
  [coder encodeBool:-[WKWebViewConfiguration ignoresViewportScaleLimits](self forKey:{"ignoresViewportScaleLimits"), @"ignoresViewportScaleLimits"}];
  [coder encodeInteger:-[WKWebViewConfiguration _dragLiftDelay](self forKey:{"_dragLiftDelay"), @"dragLiftDelay"}];
  [coder encodeBool:-[WKWebViewConfiguration _textInteractionGesturesEnabled](self forKey:{"_textInteractionGesturesEnabled"), @"textInteractionGesturesEnabled"}];
  [coder encodeBool:-[WKWebViewConfiguration _longPressActionsEnabled](self forKey:{"_longPressActionsEnabled"), @"longPressActionsEnabled"}];
  [coder encodeBool:-[WKWebViewConfiguration _systemPreviewEnabled](self forKey:{"_systemPreviewEnabled"), @"systemPreviewEnabled"}];
  [coder encodeBool:-[WKWebViewConfiguration _shouldDecidePolicyBeforeLoadingQuickLookPreview](self forKey:{"_shouldDecidePolicyBeforeLoadingQuickLookPreview"), @"shouldDecidePolicyBeforeLoadingQuickLookPreview"}];
  [coder encodeBool:-[WKWebViewConfiguration _scrollToTextFragmentIndicatorEnabled](self forKey:{"_scrollToTextFragmentIndicatorEnabled"), @"scrollToTextFragmentIndicatorEnabled"}];
  [coder encodeBool:-[WKWebViewConfiguration _scrollToTextFragmentMarkingEnabled](self forKey:{"_scrollToTextFragmentMarkingEnabled"), @"scrollToTextFragmentMarkingEnabled"}];
  [coder encodeBool:-[WKWebViewConfiguration _multiRepresentationHEICInsertionEnabled](self forKey:{"_multiRepresentationHEICInsertionEnabled"), @"multiRepresentationHEICInsertionEnabled"}];
}

- (WKWebViewConfiguration)initWithCoder:(id)coder
{
  v4 = [(WKWebViewConfiguration *)self init];
  if (v4)
  {
    -[WKWebViewConfiguration setProcessPool:](v4, "setProcessPool:", [coder decodeObjectOfClass:objc_opt_class() forKey:@"processPool"]);
    -[WKWebViewConfiguration setPreferences:](v4, "setPreferences:", [coder decodeObjectOfClass:objc_opt_class() forKey:@"preferences"]);
    -[WKWebViewConfiguration setUserContentController:](v4, "setUserContentController:", [coder decodeObjectOfClass:objc_opt_class() forKey:@"userContentController"]);
    -[WKWebViewConfiguration setWebsiteDataStore:](v4, "setWebsiteDataStore:", [coder decodeObjectOfClass:objc_opt_class() forKey:@"websiteDataStore"]);
    -[WKWebViewConfiguration setSuppressesIncrementalRendering:](v4, "setSuppressesIncrementalRendering:", [coder decodeBoolForKey:@"suppressesIncrementalRendering"]);
    if ([coder containsValueForKey:@"applicationNameForUserAgent"])
    {
      -[WKWebViewConfiguration setApplicationNameForUserAgent:](v4, "setApplicationNameForUserAgent:", [coder decodeObjectOfClass:objc_opt_class() forKey:@"applicationNameForUserAgent"]);
    }

    -[WKWebViewConfiguration setAllowsAirPlayForMediaPlayback:](v4, "setAllowsAirPlayForMediaPlayback:", [coder decodeBoolForKey:@"allowsAirPlayForMediaPlayback"]);
    if ([coder containsValueForKey:@"drawsBackground"])
    {
      -[WKWebViewConfiguration _setDrawsBackground:](v4, "_setDrawsBackground:", [coder decodeBoolForKey:@"drawsBackground"]);
    }

    -[WKWebViewConfiguration setDataDetectorTypes:](v4, "setDataDetectorTypes:", [coder decodeIntegerForKey:@"dataDetectorTypes"]);
    -[WKWebViewConfiguration setAllowsInlineMediaPlayback:](v4, "setAllowsInlineMediaPlayback:", [coder decodeBoolForKey:@"allowsInlineMediaPlayback"]);
    -[WKWebViewConfiguration _setAllowsInlineMediaPlaybackAfterFullscreen:](v4, "_setAllowsInlineMediaPlaybackAfterFullscreen:", [coder decodeBoolForKey:@"allowsInlineMediaPlaybackAfterFullscreen"]);
    -[WKWebViewConfiguration setMediaTypesRequiringUserActionForPlayback:](v4, "setMediaTypesRequiringUserActionForPlayback:", [coder decodeBoolForKey:@"mediaTypesRequiringUserActionForPlayback"]);
    v5 = [coder decodeIntegerForKey:@"selectionGranularity"];
    if (v5 <= 1)
    {
      [(WKWebViewConfiguration *)v4 setSelectionGranularity:v5];
    }

    -[WKWebViewConfiguration setAllowsPictureInPictureMediaPlayback:](v4, "setAllowsPictureInPictureMediaPlayback:", [coder decodeBoolForKey:@"allowsPictureInPictureMediaPlayback"]);
    -[WKWebViewConfiguration setIgnoresViewportScaleLimits:](v4, "setIgnoresViewportScaleLimits:", [coder decodeBoolForKey:@"ignoresViewportScaleLimits"]);
    v6 = [coder decodeIntegerForKey:@"dragLiftDelay"];
    if (v6 == 1)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2 * (v6 == 2);
    }

    [(WKWebViewConfiguration *)v4 _setDragLiftDelay:v7];
    -[WKWebViewConfiguration _setTextInteractionGesturesEnabled:](v4, "_setTextInteractionGesturesEnabled:", [coder decodeBoolForKey:@"textInteractionGesturesEnabled"]);
    -[WKWebViewConfiguration _setLongPressActionsEnabled:](v4, "_setLongPressActionsEnabled:", [coder decodeBoolForKey:@"longPressActionsEnabled"]);
    -[WKWebViewConfiguration _setSystemPreviewEnabled:](v4, "_setSystemPreviewEnabled:", [coder decodeBoolForKey:@"systemPreviewEnabled"]);
    -[WKWebViewConfiguration _setShouldDecidePolicyBeforeLoadingQuickLookPreview:](v4, "_setShouldDecidePolicyBeforeLoadingQuickLookPreview:", [coder decodeBoolForKey:@"shouldDecidePolicyBeforeLoadingQuickLookPreview"]);
    -[WKWebViewConfiguration _setScrollToTextFragmentIndicatorEnabled:](v4, "_setScrollToTextFragmentIndicatorEnabled:", [coder decodeBoolForKey:@"scrollToTextFragmentIndicatorEnabled"]);
    -[WKWebViewConfiguration _setScrollToTextFragmentMarkingEnabled:](v4, "_setScrollToTextFragmentMarkingEnabled:", [coder decodeBoolForKey:@"scrollToTextFragmentMarkingEnabled"]);
    -[WKWebViewConfiguration _setMultiRepresentationHEICInsertionEnabled:](v4, "_setMultiRepresentationHEICInsertionEnabled:", [coder decodeBoolForKey:@"multiRepresentationHEICInsertionEnabled"]);
  }

  return v4;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v5 = v4;
  if (v4)
  {
    [v4 _protectedPageConfiguration];
    v6 = v9;
  }

  else
  {
    v6 = 0;
    v9 = 0;
  }

  [(WKWebViewConfiguration *)self _protectedPageConfiguration];
  API::PageConfiguration::Data::operator=((v6 + 16), v8 + 16);
  if (v8)
  {
    CFRelease(*(v8 + 8));
  }

  if (v9)
  {
    CFRelease(*(v9 + 8));
  }

  return v5;
}

- (void)setValue:(id)value forKey:(id)key
{
  v11 = *MEMORY[0x1E69E9840];
  if (([key isEqualToString:@"allowUniversalAccessFromFileURLs"] & 1) != 0 || objc_msgSend(key, "isEqualToString:", @"_allowUniversalAccessFromFileURLs")) && (objc_opt_class(), (objc_opt_isKindOfClass()) && (WTF::linkedOnOrAfterSDKWithBehavior() & 1) == 0)
  {
    v7 = qword_1ED6407C0;
    if (os_log_type_enabled(qword_1ED6407C0, OS_LOG_TYPE_FAULT))
    {
      *buf = 138543362;
      keyCopy = key;
    }

    -[WKWebViewConfiguration _setAllowUniversalAccessFromFileURLs:](self, "_setAllowUniversalAccessFromFileURLs:", [value BOOLValue]);
  }

  else
  {
    v8.receiver = self;
    v8.super_class = WKWebViewConfiguration;
    [(WKWebViewConfiguration *)&v8 setValue:value forKey:key];
  }
}

- (id)valueForKey:(id)key
{
  v10 = *MEMORY[0x1E69E9840];
  if ((([key isEqualToString:@"allowUniversalAccessFromFileURLs"] & 1) != 0 || objc_msgSend(key, "isEqualToString:", @"_allowUniversalAccessFromFileURLs")) && (WTF::linkedOnOrAfterSDKWithBehavior() & 1) == 0)
  {
    v6 = qword_1ED6407C0;
    if (os_log_type_enabled(qword_1ED6407C0, OS_LOG_TYPE_FAULT))
    {
      *buf = 138543362;
      keyCopy = key;
    }

    return [MEMORY[0x1E696AD98] numberWithBool:{-[WKWebViewConfiguration _allowUniversalAccessFromFileURLs](self, "_allowUniversalAccessFromFileURLs")}];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = WKWebViewConfiguration;
    return [(WKWebViewConfiguration *)&v7 valueForKey:key];
  }
}

- (void)setProcessPool:(WKProcessPool *)processPool
{
  if (self)
  {
    [(WKWebViewConfiguration *)self _protectedPageConfiguration];
    v4 = v7;
    if (processPool)
    {
LABEL_3:
      CFRetain(*&processPool->_processPool.m_storage.data[8]);
      p_processPool = &processPool->_processPool;
      goto LABEL_6;
    }
  }

  else
  {
    v4 = 0;
    v7 = 0;
    if (processPool)
    {
      goto LABEL_3;
    }
  }

  p_processPool = 0;
LABEL_6:
  v6 = *(v4 + 16);
  *(v4 + 16) = p_processPool;
  if (v6)
  {
    CFRelease(*(v6 + 8));
  }

  if (v7)
  {
    CFRelease(*(v7 + 8));
  }
}

- (void)setPreferences:(WKPreferences *)preferences
{
  if (self)
  {
    [(WKWebViewConfiguration *)self _protectedPageConfiguration];
    v4 = v7;
    if (preferences)
    {
LABEL_3:
      CFRetain(*&preferences->_preferences.m_storage.data[8]);
      p_preferences = &preferences->_preferences;
      goto LABEL_6;
    }
  }

  else
  {
    v4 = 0;
    v7 = 0;
    if (preferences)
    {
      goto LABEL_3;
    }
  }

  p_preferences = 0;
LABEL_6:
  v6 = *(v4 + 32);
  *(v4 + 32) = p_preferences;
  if (v6)
  {
    CFRelease(*(v6 + 8));
  }

  if (v7)
  {
    CFRelease(*(v7 + 8));
  }
}

- (void)setUserContentController:(WKUserContentController *)userContentController
{
  if (self)
  {
    [(WKWebViewConfiguration *)self _protectedPageConfiguration];
    v4 = v7;
    if (userContentController)
    {
LABEL_3:
      CFRetain(*&userContentController->_userContentControllerProxy.m_storage.data[8]);
      p_userContentControllerProxy = &userContentController->_userContentControllerProxy;
      goto LABEL_6;
    }
  }

  else
  {
    v4 = 0;
    v7 = 0;
    if (userContentController)
    {
      goto LABEL_3;
    }
  }

  p_userContentControllerProxy = 0;
LABEL_6:
  v6 = *(v4 + 24);
  *(v4 + 24) = p_userContentControllerProxy;
  if (v6)
  {
    CFRelease(*(v6 + 8));
  }

  if (v7)
  {
    CFRelease(*(v7 + 8));
  }
}

- (NSURL)_requiredWebExtensionBaseURL
{
  [(WKWebViewConfiguration *)self _protectedPageConfiguration];
  WTF::URL::createCFURL(&v8, (v7 + 64));
  v2 = v8;
  v8 = 0;
  if (v2)
  {
    v3 = v2;
    v4 = v8;
    v8 = 0;
    if (v4)
    {
    }
  }

  v5 = v7;
  v7 = 0;
  if (v5)
  {
    CFRelease(*(v5 + 8));
  }

  return v2;
}

- (void)_setRequiredWebExtensionBaseURL:(id)l
{
  if (self)
  {
    [(WKWebViewConfiguration *)self _protectedPageConfiguration];
    v4 = v9;
  }

  else
  {
    v4 = 0;
    v9 = 0;
  }

  MEMORY[0x19EB01DE0](v8, l);
  WTF::URL::operator=(v4 + 64, v8);
  v6 = v8[0];
  v8[0] = 0;
  if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v6, v5);
  }

  v7 = v9;
  v9 = 0;
  if (v7)
  {
    CFRelease(*(v7 + 8));
  }
}

- (void)_setWeakWebExtensionController:(id)controller
{
  if (self)
  {
    [(WKWebViewConfiguration *)self _protectedPageConfiguration];
    v4 = v6;
    if (controller)
    {
LABEL_3:
      _webExtensionController = [controller _webExtensionController];
      CFRetain(_webExtensionController[1]);
      API::PageConfiguration::setWeakWebExtensionController(v4, _webExtensionController);
      CFRelease(_webExtensionController[1]);
      goto LABEL_6;
    }
  }

  else
  {
    v4 = 0;
    v6 = 0;
    if (controller)
    {
      goto LABEL_3;
    }
  }

  API::PageConfiguration::setWeakWebExtensionController(v4, 0);
LABEL_6:
  if (v6)
  {
    CFRelease(*(v6 + 1));
  }
}

- (WKWebExtensionController)webExtensionController
{
  result = [(WKWebViewConfiguration *)self _weakWebExtensionController];
  if (!result)
  {

    return [(WKWebViewConfiguration *)self _strongWebExtensionController];
  }

  return result;
}

- (void)setWebExtensionController:(id)controller
{
  if (self)
  {
    [(WKWebViewConfiguration *)self _protectedPageConfiguration];
    v4 = v7;
    if (controller)
    {
LABEL_3:
      _webExtensionController = [controller _webExtensionController];
      CFRetain(*(_webExtensionController + 8));
      CFRetain(*(_webExtensionController + 8));
      goto LABEL_6;
    }
  }

  else
  {
    v4 = 0;
    v7 = 0;
    if (controller)
    {
      goto LABEL_3;
    }
  }

  _webExtensionController = 0;
LABEL_6:
  v6 = *(v4 + 104);
  *(v4 + 104) = _webExtensionController;
  if (v6)
  {
    CFRelease(*(v6 + 8));
  }

  if (controller && _webExtensionController)
  {
    CFRelease(*(_webExtensionController + 8));
  }

  if (v7)
  {
    CFRelease(*(v7 + 8));
  }
}

- (void)setWebsiteDataStore:(WKWebsiteDataStore *)websiteDataStore
{
  if (self)
  {
    [(WKWebViewConfiguration *)self _protectedPageConfiguration];
    v4 = v7;
    if (websiteDataStore)
    {
LABEL_3:
      CFRetain(*&websiteDataStore->_websiteDataStore.m_storage.data[8]);
      p_websiteDataStore = &websiteDataStore->_websiteDataStore;
      goto LABEL_6;
    }
  }

  else
  {
    v4 = 0;
    v7 = 0;
    if (websiteDataStore)
    {
      goto LABEL_3;
    }
  }

  p_websiteDataStore = 0;
LABEL_6:
  v6 = *(v4 + 56);
  *(v4 + 56) = p_websiteDataStore;
  if (v6)
  {
    CFRelease(*(v6 + 8));
  }

  if (v7)
  {
    CFRelease(*(v7 + 8));
  }
}

- (void)setDefaultWebpagePreferences:(WKWebpagePreferences *)defaultWebpagePreferences
{
  if (self)
  {
    [(WKWebViewConfiguration *)self _protectedPageConfiguration];
    v4 = v7;
    if (defaultWebpagePreferences)
    {
LABEL_3:
      CFRetain(*&defaultWebpagePreferences->_websitePolicies.m_storage.data[8]);
      p_websitePolicies = &defaultWebpagePreferences->_websitePolicies;
      goto LABEL_6;
    }
  }

  else
  {
    v4 = 0;
    v7 = 0;
    if (defaultWebpagePreferences)
    {
      goto LABEL_3;
    }
  }

  p_websitePolicies = 0;
LABEL_6:
  v6 = *(v4 + 48);
  *(v4 + 48) = p_websitePolicies;
  if (v6)
  {
    CFRelease(*(v6 + 8));
  }

  if (v7)
  {
    CFRelease(*(v7 + 8));
  }
}

- (void)setApplicationNameForUserAgent:(NSString *)applicationNameForUserAgent
{
  MEMORY[0x19EB02040](&v6, applicationNameForUserAgent);
  v7 = 1;
  std::__optional_storage_base<WTF::String,false>::__assign_from[abi:sn200100]<std::__optional_move_assign_base<WTF::String,false>>(&self[9]._pageConfiguration.m_storage.data[24], &v6);
  if (v7 == 1)
  {
    v5 = v6;
    v6 = 0;
    if (v5)
    {
      if (atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v5, v4);
      }
    }
  }
}

- (void)_setVisitedLinkStore:(id)store
{
  if (self)
  {
    [(WKWebViewConfiguration *)self _protectedPageConfiguration];
    v4 = v7;
    if (store)
    {
LABEL_3:
      CFRetain(*(store + 2));
      v5 = store + 8;
      goto LABEL_6;
    }
  }

  else
  {
    v4 = 0;
    v7 = 0;
    if (store)
    {
      goto LABEL_3;
    }
  }

  v5 = 0;
LABEL_6:
  v6 = *(v4 + 40);
  *(v4 + 40) = v5;
  if (v6)
  {
    CFRelease(*(v6 + 8));
  }

  if (v7)
  {
    CFRelease(*(v7 + 8));
  }
}

- (void)setURLSchemeHandler:(id)urlSchemeHandler forURLScheme:(NSString *)urlScheme
{
  v7 = [WKWebView handlesURLScheme:urlScheme];
  v8 = MEMORY[0x1E695D940];
  if (v7)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"'%@' is a URL scheme that WKWebView handles natively", urlScheme}];
  }

  MEMORY[0x19EB02040](v26, urlScheme);
  WTF::URLParser::maybeCanonicalizeScheme();
  v11 = v26[0];
  v26[0] = 0;
  if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v11, v9);
  }

  if ((v25 & 1) == 0)
  {
    [MEMORY[0x1E695DF30] raise:*v8 format:{@"'%@' is not a valid URL scheme", urlScheme}];
  }

  if (self)
  {
    [(WKWebViewConfiguration *)self _protectedPageConfiguration];
  }

  else
  {
    v26[0] = 0;
  }

  if ((v25 & 1) == 0)
  {
    goto LABEL_39;
  }

  v12 = WTF::HashMap<WTF::String,WTF::Ref<WebKit::WebURLSchemeHandler,WTF::RawPtrTraits<WebKit::WebURLSchemeHandler>,WTF::DefaultRefDerefTraits<WebKit::WebURLSchemeHandler>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WebKit::WebURLSchemeHandler,WTF::RawPtrTraits<WebKit::WebURLSchemeHandler>,WTF::DefaultRefDerefTraits<WebKit::WebURLSchemeHandler>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WTF::String,WTF::Ref<WebKit::WebURLSchemeHandler,WTF::RawPtrTraits<WebKit::WebURLSchemeHandler>,WTF::DefaultRefDerefTraits<WebKit::WebURLSchemeHandler>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WebKit::WebURLSchemeHandler,WTF::RawPtrTraits<WebKit::WebURLSchemeHandler>,WTF::DefaultRefDerefTraits<WebKit::WebURLSchemeHandler>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::String>>,WTF::String>(v26[0] + 51, &v24, v10);
  v13 = v12;
  if (v12)
  {
    v14 = *(v12 + 2);
    *(v12 + 2) = v14 + 1;
    if (v14)
    {
      *(v12 + 2) = v14;
    }

    else
    {
      (*(*v12 + 8))(v12);
    }
  }

  v15 = v26[0];
  v26[0] = 0;
  if (v15)
  {
    CFRelease(*(v15 + 1));
  }

  if (v13)
  {
    [MEMORY[0x1E695DF30] raise:*v8 format:{@"URL scheme '%@' already has a registered URL scheme handler", urlScheme}];
  }

  if (self)
  {
    [(WKWebViewConfiguration *)self _protectedPageConfiguration];
    self = v23;
  }

  else
  {
    v23 = 0;
  }

  WebKit::WebURLSchemeHandlerCocoa::create(urlSchemeHandler, &v21);
  v16 = v21;
  v21 = 0;
  v22 = v16;
  if (v25)
  {
    WTF::HashMap<WTF::String,WTF::Ref<WebKit::WebURLSchemeHandler,WTF::RawPtrTraits<WebKit::WebURLSchemeHandler>,WTF::DefaultRefDerefTraits<WebKit::WebURLSchemeHandler>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WebKit::WebURLSchemeHandler,WTF::RawPtrTraits<WebKit::WebURLSchemeHandler>,WTF::DefaultRefDerefTraits<WebKit::WebURLSchemeHandler>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::inlineSet<WTF::String const&,WTF::Ref<WebKit::WebURLSchemeHandler,WTF::RawPtrTraits<WebKit::WebURLSchemeHandler>,WTF::DefaultRefDerefTraits<WebKit::WebURLSchemeHandler>>>(&self[7]._pageConfiguration.m_storage.data[8], &v24, &v22, v26);
    v18 = v22;
    v22 = 0;
    if (v18)
    {
      if (v18[2] == 1)
      {
        (*(*v18 + 8))(v18);
      }

      else
      {
        --v18[2];
      }
    }

    if (v21)
    {
      if (v21[2] == 1)
      {
        (*(*v21 + 8))();
      }

      else
      {
        --v21[2];
      }
    }

    v19 = v23;
    v23 = 0;
    if (v19)
    {
      CFRelease(*v19->_pageConfiguration.m_storage.data);
    }

    if (v25 == 1)
    {
      v20 = v24;
      v24 = 0;
      if (v20)
      {
        if (atomic_fetch_add_explicit(v20, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v20, v17);
        }
      }
    }
  }

  else
  {
LABEL_39:
    __break(1u);
  }
}

- (id)urlSchemeHandlerForURLScheme:(NSString *)urlScheme
{
  MEMORY[0x19EB02040](&v14, urlScheme);
  WTF::URLParser::maybeCanonicalizeScheme();
  v5 = v14;
  v14 = 0;
  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, v4);
  }

  if ((v16 & 1) == 0)
  {
    return 0;
  }

  [(WKWebViewConfiguration *)self _protectedPageConfiguration];
  if (v16)
  {
    v7 = WTF::HashMap<WTF::String,WTF::Ref<WebKit::WebURLSchemeHandler,WTF::RawPtrTraits<WebKit::WebURLSchemeHandler>,WTF::DefaultRefDerefTraits<WebKit::WebURLSchemeHandler>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WebKit::WebURLSchemeHandler,WTF::RawPtrTraits<WebKit::WebURLSchemeHandler>,WTF::DefaultRefDerefTraits<WebKit::WebURLSchemeHandler>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WTF::String,WTF::Ref<WebKit::WebURLSchemeHandler,WTF::RawPtrTraits<WebKit::WebURLSchemeHandler>,WTF::DefaultRefDerefTraits<WebKit::WebURLSchemeHandler>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WebKit::WebURLSchemeHandler,WTF::RawPtrTraits<WebKit::WebURLSchemeHandler>,WTF::DefaultRefDerefTraits<WebKit::WebURLSchemeHandler>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::String>>,WTF::String>(v14 + 51, &v15, v6);
    v9 = v7;
    if (v7)
    {
      ++*(v7 + 2);
    }

    v10 = v14;
    v14 = 0;
    if (v10)
    {
      CFRelease(*(v10 + 1));
    }

    if (!v9)
    {
      v11 = 0;
      goto LABEL_19;
    }

    if (((*(*v9 + 16))(v9) & 1) == 0)
    {
      v11 = 0;
LABEL_17:
      if (*(v9 + 2) == 1)
      {
        (*(*v9 + 8))(v9);
      }

      else
      {
        --*(v9 + 2);
      }

LABEL_19:
      if (v16)
      {
        v12 = v15;
        v15 = 0;
        if (v12)
        {
          if (atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v12, v8);
          }
        }
      }

      return v11;
    }

    if ((*(*v9 + 24))(v9))
    {
      v11 = *(v9 + 6);
      goto LABEL_17;
    }
  }

  else
  {
    __break(1u);
  }

  result = 105;
  __break(0xC471u);
  return result;
}

+ (BOOL)_isValidCustomScheme:(id)scheme
{
  if ([WKWebView handlesURLScheme:?])
  {
    return 0;
  }

  MEMORY[0x19EB02040](&v9, scheme);
  WTF::URLParser::maybeCanonicalizeScheme();
  v6 = v9;
  v9 = 0;
  if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v6, v5);
  }

  v4 = v11;
  if (v11)
  {
    v7 = v10;
    v10 = 0;
    if (v7)
    {
      if (atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v7, v5);
      }
    }
  }

  return v4;
}

- (void)setWritingToolsBehavior:(int64_t)behavior
{
  v3 = 0x20301u >> (8 * behavior);
  if (behavior >= 3)
  {
    LOBYTE(v3) = 0;
  }

  self[10]._pageConfiguration.m_storage.data[29] = v3;
}

- (int64_t)writingToolsBehavior
{
  if (self[10]._pageConfiguration.m_storage.data[29] - 1 > 2)
  {
    return -1;
  }

  else
  {
    return qword_19E703590[(self[10]._pageConfiguration.m_storage.data[29] - 1)];
  }
}

- (void)_setRelatedWebView:(id)view
{
  if (!view)
  {
    v6 = *&self[2]._pageConfiguration.m_storage.data[16];
    *&self[2]._pageConfiguration.m_storage.data[16] = 0;
    if (!v6)
    {
      return;
    }

    goto LABEL_9;
  }

  v4 = *(view + 52);
  if (v4)
  {
    WTF::WeakPtrFactory<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl>::initializeIfNeeded((v4 + 24), v4 + 16);
    v5 = *(v4 + 24);
    if (v5)
    {
      atomic_fetch_add(v5, 1u);
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = *&self[2]._pageConfiguration.m_storage.data[16];
  *&self[2]._pageConfiguration.m_storage.data[16] = v5;
  if (v6)
  {
LABEL_9:
    if (atomic_fetch_add(v6, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v6);

      WTF::fastFree(v6, a2);
    }
  }
}

- (void)_setWebViewToCloneSessionStorageFrom:(id)from
{
  if (from)
  {
    if (self)
    {
      [(WKWebViewConfiguration *)self _protectedPageConfiguration];
      v4 = v9;
    }

    else
    {
      v4 = 0;
      v9 = 0;
    }

    v7 = *(from + 52);
    if (v7)
    {
      WTF::WeakPtrFactory<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl>::initializeIfNeeded((v7 + 24), v7 + 16);
      v8 = *(v7 + 24);
      if (v8)
      {
        atomic_fetch_add(v8, 1u);
      }
    }

    else
    {
      v8 = 0;
    }

    v6 = *(v4 + 264);
    *(v4 + 264) = v8;
    if (!v6)
    {
      goto LABEL_14;
    }

    goto LABEL_12;
  }

  [(WKWebViewConfiguration *)self _protectedPageConfiguration];
  v5 = v9;
  v6 = *(v9 + 264);
  *(v9 + 264) = 0;
  if (v6)
  {
LABEL_12:
    if (atomic_fetch_add(v6, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v6);
      WTF::fastFree(v6, a2);
    }

LABEL_14:
    v5 = v9;
  }

  if (v5)
  {
    CFRelease(*(v5 + 8));
  }
}

- (void)_setAlternateWebViewForNavigationGestures:(id)gestures
{
  if (gestures)
  {
    if (self)
    {
      [(WKWebViewConfiguration *)self _protectedPageConfiguration];
      v4 = v9;
    }

    else
    {
      v4 = 0;
      v9 = 0;
    }

    v7 = *(gestures + 52);
    if (v7)
    {
      WTF::WeakPtrFactory<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl>::initializeIfNeeded((v7 + 24), v7 + 16);
      v8 = *(v7 + 24);
      if (v8)
      {
        atomic_fetch_add(v8, 1u);
      }
    }

    else
    {
      v8 = 0;
    }

    v6 = *(v4 + 272);
    *(v4 + 272) = v8;
    if (!v6)
    {
      goto LABEL_14;
    }

    goto LABEL_12;
  }

  [(WKWebViewConfiguration *)self _protectedPageConfiguration];
  v5 = v9;
  v6 = *(v9 + 272);
  *(v9 + 272) = 0;
  if (v6)
  {
LABEL_12:
    if (atomic_fetch_add(v6, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v6);
      WTF::fastFree(v6, a2);
    }

LABEL_14:
    v5 = v9;
  }

  if (v5)
  {
    CFRelease(*(v5 + 8));
  }
}

- (void)_setGroupIdentifier:(id)identifier
{
  MEMORY[0x19EB02040](&v8, identifier);
  v5 = v8;
  v8 = 0;
  v6 = *&self[9]._pageConfiguration.m_storage.data[8];
  *&self[9]._pageConfiguration.m_storage.data[8] = v5;
  if (v6)
  {
    if (atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v6, v4);
    }

    v7 = v8;
    v8 = 0;
    if (v7)
    {
      if (atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v7, v4);
      }
    }
  }
}

- (BOOL)_respectsImageOrientation
{
  preferences = [(WKWebViewConfiguration *)self preferences];
  CFRetain(*&preferences->_preferences.m_storage.data[8]);
  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::shouldRespectImageOrientationKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::shouldRespectImageOrientationKey(void)::key = WebKit::WebPreferencesKey::shouldRespectImageOrientationKey(void)::$_0::operator() const(void)::impl;
  }

  BoolValueForKey = WebKit::WebPreferencesStore::getBoolValueForKey(&preferences->_preferences.m_storage.data[40], &WebKit::WebPreferencesKey::shouldRespectImageOrientationKey(void)::key, v3);
  CFRelease(*&preferences->_preferences.m_storage.data[8]);
  return BoolValueForKey;
}

- (void)_setRespectsImageOrientation:(BOOL)orientation
{
  orientationCopy = orientation;
  preferences = [(WKWebViewConfiguration *)self preferences];
  CFRetain(*&preferences->_preferences.m_storage.data[8]);
  WebKit::WebPreferences::setShouldRespectImageOrientation(&preferences->_preferences, &orientationCopy);
  v4 = *&preferences->_preferences.m_storage.data[8];

  CFRelease(v4);
}

- (BOOL)_printsBackgrounds
{
  preferences = [(WKWebViewConfiguration *)self preferences];

  return [(WKPreferences *)preferences shouldPrintBackgrounds];
}

- (void)_setPrintsBackgrounds:(BOOL)backgrounds
{
  backgroundsCopy = backgrounds;
  preferences = [(WKWebViewConfiguration *)self preferences];

  [(WKPreferences *)preferences setShouldPrintBackgrounds:backgroundsCopy];
}

- (NSArray)_portsForUpgradingInsecureSchemeForTesting
{
  v4[2] = *MEMORY[0x1E69E9840];
  v2 = *self[6]._pageConfiguration.m_storage.data | (*&self[6]._pageConfiguration.m_storage.data[4] << 32);
  if ((v2 & 0x100000000) == 0)
  {
    return 0;
  }

  v4[0] = [MEMORY[0x1E696AD98] numberWithUnsignedShort:*self[6]._pageConfiguration.m_storage.data];
  v4[1] = [MEMORY[0x1E696AD98] numberWithUnsignedShort:WORD1(v2)];
  return [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:2];
}

- (void)_setPortsForUpgradingInsecureSchemeForTesting:(id)testing
{
  if ([testing count] == 2 && !(objc_msgSend(objc_msgSend(testing, "objectAtIndexedSubscript:", 0), "unsignedIntegerValue") >> 16) && !(objc_msgSend(objc_msgSend(testing, "objectAtIndexedSubscript:", 1), "unsignedIntegerValue") >> 16))
  {
    v5 = [objc_msgSend(testing objectAtIndexedSubscript:{0), "unsignedIntegerValue"}];
    v6 = [objc_msgSend(testing objectAtIndexedSubscript:{1), "unsignedIntegerValue"}];
    if (self[6]._pageConfiguration.m_storage.data[4] == 1)
    {
      *self[6]._pageConfiguration.m_storage.data = v5;
      *&self[6]._pageConfiguration.m_storage.data[2] = v6;
    }

    else
    {
      *self[6]._pageConfiguration.m_storage.data = v5 | (v6 << 16);
      self[6]._pageConfiguration.m_storage.data[4] = 1;
    }
  }
}

- (unint64_t)_dragLiftDelay
{
  v2 = self[5]._pageConfiguration.m_storage.data[20];
  if (v2 == 1)
  {
    return 1;
  }

  else
  {
    return 2 * (v2 == 2);
  }
}

- (void)_setDragLiftDelay:(unint64_t)delay
{
  v3 = 2 * (delay == 2);
  if (delay == 1)
  {
    v3 = 1;
  }

  self[5]._pageConfiguration.m_storage.data[20] = v3;
}

- (void)_setClickInteractionDriverForTesting:(id)testing
{
  if (testing)
  {
    testingCopy = testing;
  }

  v6 = *&self[5]._pageConfiguration.m_storage.data[8];
  *&self[5]._pageConfiguration.m_storage.data[8] = testing;
  if (v6)
  {
  }
}

- (void)_setAppInitiatedOverrideValueForTesting:(unint64_t)testing
{
  v3 = testing == 2;
  if (testing == 1)
  {
    v3 = 2;
  }

  self[5]._pageConfiguration.m_storage.data[1] = v3;
}

- (unint64_t)_appInitiatedOverrideValueForTesting
{
  v2 = self[5]._pageConfiguration.m_storage.data[1];
  if (v2 == 2)
  {
    return 1;
  }

  else
  {
    return 2 * (v2 == 1);
  }
}

- (void)_setAttachmentFileWrapperClass:(Class)class
{
  if (class && ([(objc_class *)class isSubclassOfClass:objc_opt_class()]& 1) == 0)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"Class %@ does not inherit from NSFileWrapper", class}];
  }

  if (!self)
  {
    v7 = 0;
    if (!class)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  [(WKWebViewConfiguration *)self _protectedPageConfiguration];
  self = v7;
  if (class)
  {
LABEL_8:
    classCopy = class;
  }

LABEL_9:
  v6 = *&self[6]._pageConfiguration.m_storage.data[8];
  *&self[6]._pageConfiguration.m_storage.data[8] = class;
  if (v6)
  {
  }

  if (v7)
  {
    CFRelease(*(v7 + 8));
  }
}

- (WKWebsiteDataStore)_websiteDataStoreIfExists
{
  [(WKWebViewConfiguration *)self _protectedPageConfiguration];
  v2 = v7;
  v3 = *(v7 + 56);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_7;
  }

  CFRetain(*(v3 + 8));
  v4 = *(v3 + 8);
  if (!v4)
  {
    v5 = 0;
LABEL_6:
    CFRelease(v5);
    v2 = v7;
    if (!v7)
    {
      return v4;
    }

LABEL_7:
    CFRelease(*(v2 + 8));
    return v4;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = *(v3 + 8);
    goto LABEL_6;
  }

  result = 117;
  __break(0xC471u);
  return result;
}

- (NSArray)_corsDisablingPatterns
{
  WTF::createNSArray<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(&self[7]._pageConfiguration.m_storage.data[24], &v6);
  v2 = v6;
  v6 = 0;
  if (v2)
  {
    v3 = v2;
    v4 = v6;
    v6 = 0;
    if (v4)
    {
    }
  }

  return v2;
}

- (void)_setCORSDisablingPatterns:(id)patterns
{
  if (self)
  {
    [(WKWebViewConfiguration *)self _protectedPageConfiguration];
    v4 = v13;
  }

  else
  {
    v4 = 0;
    v13 = 0;
  }

  patternsCopy = patterns;
  v5 = [patterns count];
  v14 = &patternsCopy;
  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> WTF::makeVector<WTF::String>(NSArray *)::{lambda(unsigned long)#1}>(&v11, v5, &v14, 0);
  v7 = *(v4 + 428);
  if (v7)
  {
    WTF::VectorDestructor<true,WTF::String>::destruct(*(v4 + 416), (*(v4 + 416) + 8 * v7));
  }

  v8 = *(v4 + 416);
  if (v8)
  {
    *(v4 + 416) = 0;
    *(v4 + 424) = 0;
    WTF::fastFree(v8, v6);
  }

  *(v4 + 416) = v11;
  v9 = v12;
  v11 = 0;
  v12 = 0;
  *(v4 + 424) = v9;
  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v11, v6);
  v10 = v13;
  v13 = 0;
  if (v10)
  {
    CFRelease(*(v10 + 8));
  }
}

- (NSSet)_maskedURLSchemes
{
  if (self)
  {
    [(WKWebViewConfiguration *)self _protectedPageConfiguration];
    self = v15;
  }

  else
  {
    v15 = 0;
  }

  API::PageConfiguration::maskedURLSchemes(self, &v16);
  v2 = v15;
  v15 = 0;
  if (v2)
  {
    CFRelease(*(v2 + 1));
  }

  if (v16)
  {
    v3 = *(v16 - 3);
  }

  else
  {
    v3 = 0;
  }

  v4 = [MEMORY[0x1E695DFA8] setWithCapacity:{v3, v15}];
  v6 = WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::begin(&v16);
  v7 = v5;
  v8 = v16;
  if (v16)
  {
    v9 = &v16[*(v16 - 1)];
  }

  else
  {
    v9 = 0;
  }

  if (v9 != v6)
  {
    do
    {
      v10 = *v6;
      if (*v6)
      {
        atomic_fetch_add_explicit(v10, 2u, memory_order_relaxed);
        MEMORY[0x19EB00B70](&v15, v10);
        if (atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v10, v11);
        }
      }

      else
      {
        v15 = &stru_1F1147748;
        v12 = &stru_1F1147748;
      }

      [(NSSet *)v4 addObject:v15, v15];
      v13 = v15;
      v15 = 0;
      if (v13)
      {
      }

      do
      {
        ++v6;
      }

      while (v6 != v7 && *v6 + 1 <= 1);
    }

    while (v6 != v9);
    v8 = v16;
  }

  if (v8)
  {
    WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v8, v5);
  }

  return v4;
}

- (void)_setMaskedURLSchemes:(id)schemes
{
  v24 = *MEMORY[0x1E69E9840];
  v22 = 0;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v5 = [schemes countByEnumeratingWithState:&v18 objects:v23 count:16];
  if (v5)
  {
    v6 = *v19;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v19 != v6)
        {
          objc_enumerationMutation(schemes);
        }

        MEMORY[0x19EB02040](&v17, *(*(&v18 + 1) + 8 * i));
        WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::add<(WTF::ShouldValidateKey)1>(&v22, &v17, v8, v16);
        v10 = v17;
        v17 = 0;
        if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v10, v9);
        }
      }

      v5 = [schemes countByEnumeratingWithState:&v18 objects:v23 count:16];
    }

    while (v5);
  }

  [(WKWebViewConfiguration *)self _protectedPageConfiguration];
  v12 = v16[0];
  *(v16[0] + 440) = 1;
  v13 = v22;
  v22 = 0;
  v14 = *(v12 + 432);
  *(v12 + 432) = v13;
  if (!v14)
  {
    v16[0] = 0;
LABEL_13:
    CFRelease(*(v12 + 8));
    goto LABEL_14;
  }

  WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v14, v11);
  v12 = v16[0];
  v16[0] = 0;
  if (v12)
  {
    goto LABEL_13;
  }

LABEL_14:
  if (v22)
  {
    WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v22, v15);
  }
}

- (void)_setLoadsFromNetwork:(BOOL)network
{
  networkCopy = network;
  if (!self)
  {
    v4 = 0;
    v10 = 0;
    if (network)
    {
      goto LABEL_3;
    }

LABEL_5:
    v7 = 0;
    *v8 = 0;
    v5 = 1;
    *(&v8[1] + 1) = 0;
    goto LABEL_6;
  }

  [(WKWebViewConfiguration *)self _protectedPageConfiguration];
  v4 = v10;
  if (!networkCopy)
  {
    goto LABEL_5;
  }

LABEL_3:
  v5 = 0;
  LOBYTE(v7) = 0;
LABEL_6:
  v9 = v5;
  std::__optional_storage_base<WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::MemoryCompactLookupOnlyRobinHoodHashTableTraits,(WTF::ShouldValidateKey)1>,false>::__assign_from[abi:sn200100]<std::__optional_move_assign_base<WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::MemoryCompactLookupOnlyRobinHoodHashTableTraits,(WTF::ShouldValidateKey)1>,false>>((v4 + 464), &v7);
  if (v9 == 1 && v7)
  {
    WTF::RobinHoodHashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::MemoryCompactLookupOnlyRobinHoodHashTableSizePolicy,WTF::FastMalloc>::deallocateTable(v7, v8[0]);
  }

  v6 = v10;
  v10 = 0;
  if (v6)
  {
    CFRelease(*(v6 + 8));
  }
}

- (void)_setAllowedNetworkHosts:(id)hosts
{
  v27 = *MEMORY[0x1E69E9840];
  if (hosts)
  {
    v19 = 0;
    memset(v20, 0, 13);
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v5 = [hosts countByEnumeratingWithState:&v15 objects:v26 count:16];
    if (v5)
    {
      v6 = *v16;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v16 != v6)
          {
            objc_enumerationMutation(hosts);
          }

          MEMORY[0x19EB02040](&v14, *(*(&v15 + 1) + 8 * i));
          WTF::RobinHoodHashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::MemoryCompactLookupOnlyRobinHoodHashTableSizePolicy,WTF::FastMalloc>::add<(WTF::ShouldValidateKey)1>(&v19, &v14, v8, &v21);
          v10 = v14;
          v14 = 0;
          if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v10, v9);
          }
        }

        v5 = [hosts countByEnumeratingWithState:&v15 objects:v26 count:16];
      }

      while (v5);
    }

    [(WKWebViewConfiguration *)self _protectedPageConfiguration];
    v21 = v19;
    v11 = v20[0];
    v19 = 0;
    memset(v20, 0, 13);
    v22 = v11;
    v23 = v20[1];
    v24 = BYTE4(v20[1]);
    v25 = 1;
    std::__optional_storage_base<WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::MemoryCompactLookupOnlyRobinHoodHashTableTraits,(WTF::ShouldValidateKey)1>,false>::__assign_from[abi:sn200100]<std::__optional_move_assign_base<WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::MemoryCompactLookupOnlyRobinHoodHashTableTraits,(WTF::ShouldValidateKey)1>,false>>((v14 + 464), &v21);
    if (v25 == 1 && v21)
    {
      WTF::RobinHoodHashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::MemoryCompactLookupOnlyRobinHoodHashTableSizePolicy,WTF::FastMalloc>::deallocateTable(v21, v22);
    }

    v12 = v14;
    v14 = 0;
    if (v12)
    {
      CFRelease(*(v12 + 1));
    }

    if (v19)
    {
      WTF::RobinHoodHashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::MemoryCompactLookupOnlyRobinHoodHashTableSizePolicy,WTF::FastMalloc>::deallocateTable(v19, LODWORD(v20[0]));
    }
  }

  else
  {
    [(WKWebViewConfiguration *)self _protectedPageConfiguration];
    LOBYTE(v21) = 0;
    v25 = 0;
    std::__optional_storage_base<WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::MemoryCompactLookupOnlyRobinHoodHashTableTraits,(WTF::ShouldValidateKey)1>,false>::__assign_from[abi:sn200100]<std::__optional_move_assign_base<WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::MemoryCompactLookupOnlyRobinHoodHashTableTraits,(WTF::ShouldValidateKey)1>,false>>((v19 + 464), &v21);
    if (v25 == 1 && v21)
    {
      WTF::RobinHoodHashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::MemoryCompactLookupOnlyRobinHoodHashTableSizePolicy,WTF::FastMalloc>::deallocateTable(v21, v22);
    }

    v13 = v19;
    v19 = 0;
    if (v13)
    {
      CFRelease(*(v13 + 1));
    }
  }
}

- (NSSet)_allowedNetworkHosts
{
  if (self[8]._pageConfiguration.m_storage.data[40] != 1)
  {
    return 0;
  }

  result = [MEMORY[0x1E695DFA8] setWithCapacity:*&self[8]._pageConfiguration.m_storage.data[28]];
  if (self[8]._pageConfiguration.m_storage.data[40])
  {
    v4 = result;
    if (*&self[8]._pageConfiguration.m_storage.data[28])
    {
      v5 = *&self[8]._pageConfiguration.m_storage.data[24];
      if (v5)
      {
        v6 = 8 * v5;
        for (i = *&self[8]._pageConfiguration.m_storage.data[16]; !*i; ++i)
        {
          v6 -= 8;
          if (!v6)
          {
            return v4;
          }
        }
      }

      else
      {
        i = *&self[8]._pageConfiguration.m_storage.data[16];
      }

      v8 = *&self[8]._pageConfiguration.m_storage.data[16] + 8 * v5;
      if (i != v8)
      {
LABEL_13:
        v9 = *i;
        if (*i)
        {
          atomic_fetch_add_explicit(v9, 2u, memory_order_relaxed);
          MEMORY[0x19EB00B70](&v13, v9);
          if (atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v9, v10);
          }
        }

        else
        {
          v13 = &stru_1F1147748;
          v11 = &stru_1F1147748;
        }

        [(NSSet *)v4 addObject:v13];
        v12 = v13;
        v13 = 0;
        if (v12)
        {
        }

        while (++i != v8)
        {
          if (*i)
          {
            if (i != v8)
            {
              goto LABEL_13;
            }

            return v4;
          }
        }
      }
    }

    return v4;
  }

  __break(1u);
  return result;
}

- (void)_setRequiresUserActionForVideoPlayback:(BOOL)playback
{
  playbackCopy = playback;
  v5 = [(WKWebViewConfiguration *)self mediaTypesRequiringUserActionForPlayback]& 0xFFFFFFFFFFFFFFFDLL;
  v6 = 2;
  if (!playbackCopy)
  {
    v6 = 0;
  }

  [(WKWebViewConfiguration *)self setMediaTypesRequiringUserActionForPlayback:v5 | v6];
}

- (void)_setRequiresUserActionForAudioPlayback:(BOOL)playback
{
  v4 = [(WKWebViewConfiguration *)self mediaTypesRequiringUserActionForPlayback]& 0xFFFFFFFFFFFFFFFELL | playback;

  [(WKWebViewConfiguration *)self setMediaTypesRequiringUserActionForPlayback:v4];
}

- (_WKApplicationManifest)_applicationManifest
{
  [(WKWebViewConfiguration *)self _protectedPageConfiguration];
  v2 = v7;
  v3 = *(v7 + 400);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_7;
  }

  CFRetain(*(v3 + 8));
  v4 = *(v3 + 8);
  if (!v4)
  {
    v5 = 0;
LABEL_6:
    CFRelease(v5);
    v2 = v7;
    if (!v7)
    {
      return v4;
    }

LABEL_7:
    CFRelease(*(v2 + 8));
    return v4;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = *(v3 + 8);
    goto LABEL_6;
  }

  result = 117;
  __break(0xC471u);
  return result;
}

- (void)_setApplicationManifest:(id)manifest
{
  if (self)
  {
    [(WKWebViewConfiguration *)self _protectedPageConfiguration];
    v4 = v7;
    if (manifest)
    {
LABEL_3:
      CFRetain(*(manifest + 2));
      v5 = manifest + 8;
      goto LABEL_6;
    }
  }

  else
  {
    v4 = 0;
    v7 = 0;
    if (manifest)
    {
      goto LABEL_3;
    }
  }

  v5 = 0;
LABEL_6:
  v6 = *(v4 + 400);
  *(v4 + 400) = v5;
  if (v6)
  {
    CFRelease(*(v6 + 8));
  }

  if (v7)
  {
    CFRelease(*(v7 + 8));
  }
}

- (void)_setApplePayEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  [(WKWebViewConfiguration *)self _protectedPageConfiguration];
  v4 = v5;
  *(v5 + 503) = enabledCopy | 0x100;
  v5 = 0;
  CFRelease(*(v4 + 8));
}

- (NSString)_overrideContentSecurityPolicy
{
  v2 = *&self[6]._pageConfiguration.m_storage.data[8];
  if (!v2)
  {
    v4 = &stru_1F1147748;
    v5 = &stru_1F1147748;
    v9 = 0;
LABEL_7:
    v6 = v4;
    v7 = v9;
    v9 = 0;
    if (v7)
    {
    }

    return &v4->isa;
  }

  atomic_fetch_add_explicit(v2, 2u, memory_order_relaxed);
  MEMORY[0x19EB00B70](&v9, v2, a2);
  if (atomic_fetch_add_explicit(v2, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v2, v3);
  }

  v4 = v9;
  v9 = 0;
  if (v4)
  {
    goto LABEL_7;
  }

  return &v4->isa;
}

- (void)_setOverrideContentSecurityPolicy:(id)policy
{
  MEMORY[0x19EB02040](&v8, policy);
  v5 = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(v8, 2u, memory_order_relaxed);
  }

  v6 = *&self[6]._pageConfiguration.m_storage.data[8];
  *&self[6]._pageConfiguration.m_storage.data[8] = v5;
  if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v6, v4);
  }

  v7 = v8;
  v8 = 0;
  if (v7)
  {
    if (atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v7, v4);
    }
  }
}

- (void)_setMediaContentTypesRequiringHardwareSupport:(id)support
{
  MEMORY[0x19EB02040](&v8, support);
  v5 = v8;
  v8 = 0;
  v6 = *&self[9]._pageConfiguration.m_storage.data[16];
  *&self[9]._pageConfiguration.m_storage.data[16] = v5;
  if (v6)
  {
    if (atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v6, v4);
    }

    v7 = v8;
    v8 = 0;
    if (v7)
    {
      if (atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v7, v4);
      }
    }
  }
}

- (void)_setAdditionalSupportedImageTypes:(id)types
{
  if (types)
  {
    if (self)
    {
      [(WKWebViewConfiguration *)self _protectedPageConfiguration];
      v4 = v12;
    }

    else
    {
      v4 = 0;
      v12 = 0;
    }

    typesCopy = types;
    v7 = [types count];
    v13 = &typesCopy;
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> WTF::makeVector<WTF::String>(NSArray *)::{lambda(unsigned long)#1}>(v9, v7, &v13, 0);
    std::optional<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>::optional[abi:sn200100]<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,0>(v10, v9);
    std::__optional_storage_base<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,false>::__assign_from[abi:sn200100]<std::__optional_move_assign_base<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,false>>((v4 + 360), v10);
    if (v11 == 1)
    {
      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v10, v8);
    }

    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v9, v8);
    v6 = v12;
    v12 = 0;
    if (v6)
    {
LABEL_12:
      CFRelease(*(v6 + 8));
    }
  }

  else
  {
    [(WKWebViewConfiguration *)self _protectedPageConfiguration];
    v10[0] = 0;
    v11 = 0;
    std::__optional_storage_base<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,false>::__assign_from[abi:sn200100]<std::__optional_move_assign_base<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,false>>((*v9 + 360), v10);
    if (v11 == 1)
    {
      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v10, v5);
    }

    v6 = *v9;
    *v9 = 0;
    if (v6)
    {
      goto LABEL_12;
    }
  }
}

- (BOOL)_delaysWebProcessLaunchUntilFirstLoad
{
  if (self)
  {
    [(WKWebViewConfiguration *)self _protectedPageConfiguration];
    self = v4;
  }

  else
  {
    v4 = 0;
  }

  Load = API::PageConfiguration::delaysWebProcessLaunchUntilFirstLoad(&self->super.isa);
  if (v4)
  {
    CFRelease(*(v4 + 1));
  }

  return Load;
}

- (void)_setDelaysWebProcessLaunchUntilFirstLoad:(BOOL)load
{
  loadCopy = load;
  if (self)
  {
    [(WKWebViewConfiguration *)self _protectedPageConfiguration];
    self = v5;
  }

  else
  {
    v5 = 0;
  }

  API::PageConfiguration::setDelaysWebProcessLaunchUntilFirstLoad(self, loadCopy);
  v4 = v5;
  v5 = 0;
  if (v4)
  {
    CFRelease(*(v4 + 1));
  }
}

- (void)_setShouldRelaxThirdPartyCookieBlocking:(BOOL)blocking
{
  WTF::applicationBundleIdentifier(&v13, self);
  v6 = MEMORY[0x19EB01EF0](v13, "com.apple.WebKit.TestWebKitAPI", 30);
  v7 = v13;
  v13 = 0;
  if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    v7 = WTF::StringImpl::destroy(v7, v5);
  }

  isMobileSafari = WTF::IOSApplication::isMobileSafari(v7);
  if (isMobileSafari)
  {
    isSafariViewService = 1;
  }

  else
  {
    isSafariViewService = WTF::IOSApplication::isSafariViewService(isMobileSafari);
  }

  v10 = isSafariViewService | v6;
  [(WKWebViewConfiguration *)self _protectedPageConfiguration];
  v11 = v13;
  v12 = v10 | *(v13 + 18) & 1;
  v13 = 0;
  CFRelease(*(v11 + 1));
  if (!v12)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E696A790] format:@"_shouldRelaxThirdPartyCookieBlocking may only be used by Safari."];
  }

  self[10]._pageConfiguration.m_storage.data[30] = blocking;
}

- (NSString)_processDisplayName
{
  v2 = *self[8]._pageConfiguration.m_storage.data;
  if (!v2)
  {
    v4 = &stru_1F1147748;
    v5 = &stru_1F1147748;
    v9 = 0;
LABEL_7:
    v6 = v4;
    v7 = v9;
    v9 = 0;
    if (v7)
    {
    }

    return &v4->isa;
  }

  atomic_fetch_add_explicit(v2, 2u, memory_order_relaxed);
  MEMORY[0x19EB00B70](&v9, v2, a2);
  if (atomic_fetch_add_explicit(v2, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v2, v3);
  }

  v4 = v9;
  v9 = 0;
  if (v4)
  {
    goto LABEL_7;
  }

  return &v4->isa;
}

- (void)_setProcessDisplayName:(id)name
{
  MEMORY[0x19EB02040](&v8, name);
  v5 = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(v8, 2u, memory_order_relaxed);
  }

  v6 = *self[8]._pageConfiguration.m_storage.data;
  *self[8]._pageConfiguration.m_storage.data = v5;
  if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v6, v4);
  }

  v7 = v8;
  v8 = 0;
  if (v7)
  {
    if (atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v7, v4);
    }
  }
}

- (void)_setAttributedBundleIdentifier:(id)identifier
{
  MEMORY[0x19EB02040](&v8, identifier);
  v5 = v8;
  v8 = 0;
  v6 = *&self[10]._pageConfiguration.m_storage.data[32];
  *&self[10]._pageConfiguration.m_storage.data[32] = v5;
  if (v6)
  {
    if (atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v6, v4);
    }

    v7 = v8;
    v8 = 0;
    if (v7)
    {
      if (atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v7, v4);
      }
    }
  }
}

- (NSString)_attributedBundleIdentifier
{
  v2 = *&self[10]._pageConfiguration.m_storage.data[32];
  if (v2)
  {
    atomic_fetch_add_explicit(v2, 2u, memory_order_relaxed);
    MEMORY[0x19EB00B70](&v7, v2, a2);
    if (atomic_fetch_add_explicit(v2, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v2, v3);
    }

    v2 = v7;
    v7 = 0;
    if (v2)
    {
      v4 = v2;
      v5 = v7;
      v7 = 0;
      if (v5)
      {
      }
    }
  }

  return v2;
}

- (void)_setContentSecurityPolicyModeForExtension:(unint64_t)extension
{
  v3 = extension == 1;
  if (extension == 2)
  {
    v3 = 2;
  }

  self[10]._pageConfiguration.m_storage.data[40] = v3;
}

- (unint64_t)_contentSecurityPolicyModeForExtension
{
  v2 = self[10]._pageConfiguration.m_storage.data[40];
  if (v2 == 2)
  {
    return 2;
  }

  else
  {
    return v2 == 1;
  }
}

@end