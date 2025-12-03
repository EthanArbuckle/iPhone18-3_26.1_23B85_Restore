@interface WKPreferences
+ (id)_experimentalFeatures;
+ (id)_features;
+ (id)_internalDebugFeatures;
- (BOOL)_acceleratedCompositingEnabled;
- (BOOL)_acceleratedDrawingEnabled;
- (BOOL)_accessHandleEnabled;
- (BOOL)_allowFileAccessFromFileURLs;
- (BOOL)_allowPrivacySensitiveOperationsInNonPersistentDataStores;
- (BOOL)_allowsPictureInPictureMediaPlayback;
- (BOOL)_animatedImageAsyncDecodingEnabled;
- (BOOL)_appBadgeEnabled;
- (BOOL)_applePayCapabilityDisclosureAllowed;
- (BOOL)_avFoundationEnabled;
- (BOOL)_colorFilterEnabled;
- (BOOL)_compositingBordersVisible;
- (BOOL)_compositingRepaintCountersVisible;
- (BOOL)_contentChangeObserverEnabled;
- (BOOL)_cssTransformStyleSeparatedEnabled;
- (BOOL)_developerExtrasEnabled;
- (BOOL)_deviceOrientationEventEnabled;
- (BOOL)_diagnosticLoggingEnabled;
- (BOOL)_domPasteAllowed;
- (BOOL)_enumeratingAllNetworkInterfacesEnabled;
- (BOOL)_fileSystemAccessEnabled;
- (BOOL)_fullScreenEnabled;
- (BOOL)_getUserMediaRequiresFocus;
- (BOOL)_hiddenPageDOMTimerThrottlingAutoIncreases;
- (BOOL)_hiddenPageDOMTimerThrottlingEnabled;
- (BOOL)_iceCandidateFilteringEnabled;
- (BOOL)_interruptAudioOnPageVisibilityChangeEnabled;
- (BOOL)_isExtensibleSSOEnabled;
- (BOOL)_isSafeBrowsingEnabled;
- (BOOL)_isStandalone;
- (BOOL)_itpDebugModeEnabled;
- (BOOL)_javaScriptCanAccessClipboard;
- (BOOL)_largeImageAsyncDecodingEnabled;
- (BOOL)_legacyLineLayoutVisualCoverageEnabled;
- (BOOL)_loadsImagesAutomatically;
- (BOOL)_logsPageMessagesToSystemConsoleEnabled;
- (BOOL)_lowPowerVideoAudioBufferSizeEnabled;
- (BOOL)_managedMediaSourceEnabled;
- (BOOL)_mediaCapabilityGrantsEnabled;
- (BOOL)_mediaCaptureRequiresSecureConnection;
- (BOOL)_mediaDevicesEnabled;
- (BOOL)_mediaSessionEnabled;
- (BOOL)_mediaSourceEnabled;
- (BOOL)_mockCaptureDevicesEnabled;
- (BOOL)_mockCaptureDevicesPromptEnabled;
- (BOOL)_modelDocumentEnabled;
- (BOOL)_modelElementEnabled;
- (BOOL)_modelNoPortalAttributeEnabled;
- (BOOL)_modelProcessEnabled;
- (BOOL)_needsInAppBrowserPrivacyQuirks;
- (BOOL)_needsSiteSpecificQuirks;
- (BOOL)_notificationEventEnabled;
- (BOOL)_notificationsEnabled;
- (BOOL)_pageVisibilityBasedProcessSuppressionEnabled;
- (BOOL)_peerConnectionEnabled;
- (BOOL)_privateClickMeasurementDebugModeEnabled;
- (BOOL)_privateClickMeasurementEnabled;
- (BOOL)_punchOutWhiteBackgroundsInDarkMode;
- (BOOL)_pushAPIEnabled;
- (BOOL)_remotePlaybackEnabled;
- (BOOL)_requiresFullscreenToLockScreenOrientation;
- (BOOL)_requiresPageVisibilityToPlayAudio;
- (BOOL)_resourceUsageOverlayVisible;
- (BOOL)_screenCaptureEnabled;
- (BOOL)_secureContextChecksEnabled;
- (BOOL)_serviceWorkerEntitlementDisabledForTesting;
- (BOOL)_shouldAllowUserInstalledFonts;
- (BOOL)_shouldEnableTextAutosizingBoost;
- (BOOL)_shouldIgnoreMetaViewport;
- (BOOL)_shouldSuppressKeyboardInputDuringProvisionalNavigation;
- (BOOL)_siteIsolationEnabled;
- (BOOL)_speechRecognitionEnabled;
- (BOOL)_storageAPIEnabled;
- (BOOL)_telephoneNumberDetectionIsEnabled;
- (BOOL)_textAutosizingEnabled;
- (BOOL)_textExtractionEnabled;
- (BOOL)_tiledScrollingIndicatorVisible;
- (BOOL)_useSystemAppearance;
- (BOOL)_verifyWindowOpenUserGestureFromUIProcess;
- (BOOL)_videoFullscreenRequiresElementFullscreen;
- (BOOL)_videoQualityIncludesDisplayCompositingEnabled;
- (BOOL)_webAudioEnabled;
- (BOOL)isElementFullscreenEnabled;
- (BOOL)isFraudulentWebsiteWarningEnabled;
- (BOOL)isSiteSpecificQuirksModeEnabled;
- (BOOL)isTextInteractionEnabled;
- (BOOL)javaScriptCanOpenWindowsAutomatically;
- (BOOL)javaScriptEnabled;
- (BOOL)shouldPrintBackgrounds;
- (BOOL)tabFocusesLinks;
- (CGFloat)minimumFontSize;
- (NSString)_fixedPitchFontFamily;
- (WKInactiveSchedulingPolicy)inactiveSchedulingPolicy;
- (WKPreferences)init;
- (WKPreferences)initWithCoder:(id)coder;
- (double)_inactiveMediaCaptureStreamRepromptIntervalInMinutes;
- (double)_interactionRegionInlinePadding;
- (double)_interactionRegionMinimumCornerRadius;
- (double)_managedMediaSourceHighThreshold;
- (double)_managedMediaSourceLowThreshold;
- (double)_mediaPreferredFullscreenWidth;
- (id)copyWithZone:(_NSZone *)zone;
- (int64_t)_editableLinkBehavior;
- (int64_t)_pitchCorrectionAlgorithm;
- (int64_t)_storageBlockingPolicy;
- (unint64_t)_defaultFixedPitchFontSize;
- (unint64_t)_defaultFontSize;
- (unint64_t)_javaScriptRuntimeFlags;
- (unint64_t)_visibleDebugOverlayRegions;
- (void)_setEditableLinkBehavior:(int64_t)behavior;
- (void)_setFixedPitchFontFamily:(id)family;
- (void)_setStorageBlockingPolicy:(int64_t)policy;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)setInactiveSchedulingPolicy:(WKInactiveSchedulingPolicy)inactiveSchedulingPolicy;
@end

@implementation WKPreferences

+ (id)_features
{
  v2 = WebKit::WebPreferences::features(self);
  WTF::Vector<WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(v11, v2);
  API::Array::create(v11, &v10);
  v3 = v10;
  v4 = *(v10 + 1);
  if (!v4)
  {
    v7 = 0;
    goto LABEL_4;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = v4;
    v7 = *(v3 + 1);
LABEL_4:
    CFRelease(v7);
    WTF::Vector<WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v11, v8);
    return v4;
  }

  result = 117;
  __break(0xC471u);
  return result;
}

- (WKPreferences)init
{
  v11.receiver = self;
  v11.super_class = WKPreferences;
  v2 = [(WKPreferences *)&v11 init];
  v3 = v2;
  if (v2)
  {
    v4 = API::Object::apiObjectsUnderConstruction(v2);
    _apiObject = [(WKPreferences *)v3 _apiObject];
    v13 = v3;
    WTF::HashMap<API::Object *,void const*,WTF::DefaultHash<API::Object *>,WTF::HashTraits<API::Object *>,WTF::HashTraits<void const*>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<void const*>(v4, &_apiObject, &v13, &v12);
    _apiObject2 = [(WKPreferences *)v3 _apiObject];
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    v6 = v12;
    _apiObject = v12;
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    v7 = v12;
    v13 = v12;
    WebKit::WebPreferences::WebPreferences(_apiObject2, &v10, &_apiObject, &v13);
    if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v7, v8);
      if (!v6)
      {
        return v3;
      }
    }

    else if (!v6)
    {
      return v3;
    }

    if (atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v6, v8);
    }
  }

  return v3;
}

- (BOOL)_serviceWorkerEntitlementDisabledForTesting
{
  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::serviceWorkerEntitlementDisabledForTestingKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::serviceWorkerEntitlementDisabledForTestingKey(void)::key = WebKit::WebPreferencesKey::serviceWorkerEntitlementDisabledForTestingKey(void)::$_0::operator() const(void)::impl;
  }

  return WebKit::WebPreferencesStore::getBoolValueForKey(&self->_preferences.m_storage.data[40], &WebKit::WebPreferencesKey::serviceWorkerEntitlementDisabledForTestingKey(void)::key, v2);
}

- (BOOL)_modelDocumentEnabled
{
  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::modelDocumentEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::modelDocumentEnabledKey(void)::key = WebKit::WebPreferencesKey::modelDocumentEnabledKey(void)::$_0::operator() const(void)::impl;
  }

  return WebKit::WebPreferencesStore::getBoolValueForKey(&self->_preferences.m_storage.data[40], &WebKit::WebPreferencesKey::modelDocumentEnabledKey(void)::key, v2);
}

- (void)dealloc
{
  v3 = objc_opt_class();
  if ((WebCoreObjCScheduleDeallocateOnMainRunLoop(v3, self) & 1) == 0)
  {
    (**self->_preferences.m_storage.data)();
    v4.receiver = self;
    v4.super_class = WKPreferences;
    [(WKPreferences *)&v4 dealloc];
  }
}

- (void)encodeWithCoder:(id)coder
{
  [(WKPreferences *)self minimumFontSize];
  [coder encodeDouble:@"minimumFontSize" forKey:?];
  [coder encodeBool:-[WKPreferences javaScriptCanOpenWindowsAutomatically](self forKey:{"javaScriptCanOpenWindowsAutomatically"), @"javaScriptCanOpenWindowsAutomatically"}];
  [coder encodeBool:-[WKPreferences javaScriptEnabled](self forKey:{"javaScriptEnabled"), @"javaScriptEnabled"}];
  [coder encodeBool:-[WKPreferences shouldPrintBackgrounds](self forKey:{"shouldPrintBackgrounds"), @"shouldPrintBackgrounds"}];
  [coder encodeBool:-[WKPreferences tabFocusesLinks](self forKey:{"tabFocusesLinks"), @"tabFocusesLinks"}];
  isTextInteractionEnabled = [(WKPreferences *)self isTextInteractionEnabled];

  [coder encodeBool:isTextInteractionEnabled forKey:@"textInteractionEnabled"];
}

- (WKPreferences)initWithCoder:(id)coder
{
  v4 = [(WKPreferences *)self init];
  if (v4)
  {
    [coder decodeDoubleForKey:@"minimumFontSize"];
    [(WKPreferences *)v4 setMinimumFontSize:?];
    -[WKPreferences setJavaScriptCanOpenWindowsAutomatically:](v4, "setJavaScriptCanOpenWindowsAutomatically:", [coder decodeBoolForKey:@"javaScriptCanOpenWindowsAutomatically"]);
    -[WKPreferences setJavaScriptEnabled:](v4, "setJavaScriptEnabled:", [coder decodeBoolForKey:@"javaScriptEnabled"]);
    -[WKPreferences setShouldPrintBackgrounds:](v4, "setShouldPrintBackgrounds:", [coder decodeBoolForKey:@"shouldPrintBackgrounds"]);
    -[WKPreferences setTabFocusesLinks:](v4, "setTabFocusesLinks:", [coder decodeBoolForKey:@"tabFocusesLinks"]);
    if ([coder containsValueForKey:@"textInteractionEnabled"])
    {
      -[WKPreferences setTextInteractionEnabled:](v4, "setTextInteractionEnabled:", [coder decodeBoolForKey:@"textInteractionEnabled"]);
    }
  }

  return v4;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = API::Object::newObject(0x88uLL, 91);
  v5 = *(WebKit::WebPreferences::WebPreferences(v4, &self->_preferences) + 1);
  if (v5)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      result = 117;
      __break(0xC471u);
      return result;
    }

    v6 = v5;
  }

  v7 = v5;
  if (v5)
  {
  }

  CFRelease(v4[1]);
  return v7;
}

- (CGFloat)minimumFontSize
{
  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::minimumFontSizeKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::minimumFontSizeKey(void)::key = WebKit::WebPreferencesKey::minimumFontSizeKey(void)::$_0::operator() const(void)::impl;
  }

  return WebKit::valueForKey<double>(&self->_preferences.m_storage.data[40], &self[1]._preferences.m_storage.data[8], &WebKit::WebPreferencesKey::minimumFontSizeKey(void)::key);
}

- (BOOL)isFraudulentWebsiteWarningEnabled
{
  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::safeBrowsingEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::safeBrowsingEnabledKey(void)::key = WebKit::WebPreferencesKey::safeBrowsingEnabledKey(void)::$_0::operator() const(void)::impl;
  }

  return WebKit::WebPreferencesStore::getBoolValueForKey(&self->_preferences.m_storage.data[40], &WebKit::WebPreferencesKey::safeBrowsingEnabledKey(void)::key, v2);
}

- (BOOL)javaScriptCanOpenWindowsAutomatically
{
  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::javaScriptCanOpenWindowsAutomaticallyKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::javaScriptCanOpenWindowsAutomaticallyKey(void)::key = WebKit::WebPreferencesKey::javaScriptCanOpenWindowsAutomaticallyKey(void)::$_0::operator() const(void)::impl;
  }

  return WebKit::WebPreferencesStore::getBoolValueForKey(&self->_preferences.m_storage.data[40], &WebKit::WebPreferencesKey::javaScriptCanOpenWindowsAutomaticallyKey(void)::key, v2);
}

- (BOOL)shouldPrintBackgrounds
{
  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::shouldPrintBackgroundsKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::shouldPrintBackgroundsKey(void)::key = WebKit::WebPreferencesKey::shouldPrintBackgroundsKey(void)::$_0::operator() const(void)::impl;
  }

  return WebKit::WebPreferencesStore::getBoolValueForKey(&self->_preferences.m_storage.data[40], &WebKit::WebPreferencesKey::shouldPrintBackgroundsKey(void)::key, v2);
}

- (BOOL)isTextInteractionEnabled
{
  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::textInteractionEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::textInteractionEnabledKey(void)::key = WebKit::WebPreferencesKey::textInteractionEnabledKey(void)::$_0::operator() const(void)::impl;
  }

  return WebKit::WebPreferencesStore::getBoolValueForKey(&self->_preferences.m_storage.data[40], &WebKit::WebPreferencesKey::textInteractionEnabledKey(void)::key, v2);
}

- (BOOL)isSiteSpecificQuirksModeEnabled
{
  if (self[2]._preferences.m_storage.data[14] == 1)
  {
    return self[2]._preferences.m_storage.data[13];
  }

  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::needsSiteSpecificQuirksKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::needsSiteSpecificQuirksKey(void)::key = WebKit::WebPreferencesKey::needsSiteSpecificQuirksKey(void)::$_0::operator() const(void)::impl;
  }

  return WebKit::WebPreferencesStore::getBoolValueForKey(&self->_preferences.m_storage.data[40], &WebKit::WebPreferencesKey::needsSiteSpecificQuirksKey(void)::key, v2);
}

- (BOOL)isElementFullscreenEnabled
{
  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::fullScreenEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::fullScreenEnabledKey(void)::key = WebKit::WebPreferencesKey::fullScreenEnabledKey(void)::$_0::operator() const(void)::impl;
  }

  return WebKit::WebPreferencesStore::getBoolValueForKey(&self->_preferences.m_storage.data[40], &WebKit::WebPreferencesKey::fullScreenEnabledKey(void)::key, v2);
}

- (void)setInactiveSchedulingPolicy:(WKInactiveSchedulingPolicy)inactiveSchedulingPolicy
{
  if (inactiveSchedulingPolicy == WKInactiveSchedulingPolicyNone)
  {
    v9 = 1;
    WebKit::WebPreferences::setShouldTakeNearSuspendedAssertions(&self->_preferences, &v9);
    v8 = 0;
    WebKit::WebPreferences::setBackgroundWebContentRunningBoardThrottlingEnabled(&self->_preferences, &v8);
    v7 = 0;
    p_preferences = &self->_preferences;
    v6 = &v7;
  }

  else if (inactiveSchedulingPolicy == WKInactiveSchedulingPolicyThrottle)
  {
    v12 = 1;
    WebKit::WebPreferences::setShouldTakeNearSuspendedAssertions(&self->_preferences, &v12);
    v11 = 1;
    WebKit::WebPreferences::setBackgroundWebContentRunningBoardThrottlingEnabled(&self->_preferences, &v11);
    v10 = 0;
    p_preferences = &self->_preferences;
    v6 = &v10;
  }

  else
  {
    if (inactiveSchedulingPolicy)
    {
      return;
    }

    v15 = 0;
    WebKit::WebPreferences::setShouldTakeNearSuspendedAssertions(&self->_preferences, &v15);
    v14 = 1;
    WebKit::WebPreferences::setBackgroundWebContentRunningBoardThrottlingEnabled(&self->_preferences, &v14);
    {
      v4 = WebKit::defaultShouldDropNearSuspendedAssertionAfterDelay(void)::newSDK;
    }

    else
    {
      v4 = WTF::linkedOnOrAfterSDKWithBehavior();
      WebKit::defaultShouldDropNearSuspendedAssertionAfterDelay(void)::newSDK = v4;
    }

    v13 = v4;
    p_preferences = &self->_preferences;
    v6 = &v13;
  }

  WebKit::WebPreferences::setShouldDropNearSuspendedAssertionAfterDelay(p_preferences, v6);
}

- (WKInactiveSchedulingPolicy)inactiveSchedulingPolicy
{
  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::backgroundWebContentRunningBoardThrottlingEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::backgroundWebContentRunningBoardThrottlingEnabledKey(void)::key = WebKit::WebPreferencesKey::backgroundWebContentRunningBoardThrottlingEnabledKey(void)::$_0::operator() const(void)::impl;
  }

  if (!WebKit::WebPreferencesStore::getBoolValueForKey(&self->_preferences.m_storage.data[40], &WebKit::WebPreferencesKey::backgroundWebContentRunningBoardThrottlingEnabledKey(void)::key, v2))
  {
    return 2;
  }

  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::shouldTakeNearSuspendedAssertionsKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::shouldTakeNearSuspendedAssertionsKey(void)::key = WebKit::WebPreferencesKey::shouldTakeNearSuspendedAssertionsKey(void)::$_0::operator() const(void)::impl;
  }

  return WebKit::WebPreferencesStore::getBoolValueForKey(&self->_preferences.m_storage.data[40], &WebKit::WebPreferencesKey::shouldTakeNearSuspendedAssertionsKey(void)::key, v4);
}

- (BOOL)tabFocusesLinks
{
  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::tabsToLinksKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::tabsToLinksKey(void)::key = WebKit::WebPreferencesKey::tabsToLinksKey(void)::$_0::operator() const(void)::impl;
  }

  return WebKit::WebPreferencesStore::getBoolValueForKey(&self->_preferences.m_storage.data[40], &WebKit::WebPreferencesKey::tabsToLinksKey(void)::key, v2);
}

- (BOOL)_useSystemAppearance
{
  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::useSystemAppearanceKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::useSystemAppearanceKey(void)::key = WebKit::WebPreferencesKey::useSystemAppearanceKey(void)::$_0::operator() const(void)::impl;
  }

  return WebKit::WebPreferencesStore::getBoolValueForKey(&self->_preferences.m_storage.data[40], &WebKit::WebPreferencesKey::useSystemAppearanceKey(void)::key, v2);
}

- (BOOL)_telephoneNumberDetectionIsEnabled
{
  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::telephoneNumberParsingEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::telephoneNumberParsingEnabledKey(void)::key = WebKit::WebPreferencesKey::telephoneNumberParsingEnabledKey(void)::$_0::operator() const(void)::impl;
  }

  return WebKit::WebPreferencesStore::getBoolValueForKey(&self->_preferences.m_storage.data[40], &WebKit::WebPreferencesKey::telephoneNumberParsingEnabledKey(void)::key, v2);
}

- (int64_t)_storageBlockingPolicy
{
  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::storageBlockingPolicyKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::storageBlockingPolicyKey(void)::key = WebKit::WebPreferencesKey::storageBlockingPolicyKey(void)::$_0::operator() const(void)::impl;
  }

  v2 = WebKit::valueForKey<unsigned int>(&self->_preferences.m_storage.data[40], &self[1]._preferences.m_storage.data[8], &WebKit::WebPreferencesKey::storageBlockingPolicyKey(void)::key);
  if (v2 == 2)
  {
    return 2;
  }

  else
  {
    return v2 == 1;
  }
}

- (void)_setStorageBlockingPolicy:(int64_t)policy
{
  v3 = policy == 1;
  if (policy == 2)
  {
    v3 = 2;
  }

  v4 = v3;
  WebKit::WebPreferences::setStorageBlockingPolicy(&self->_preferences, &v4);
}

- (BOOL)_fullScreenEnabled
{
  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::fullScreenEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::fullScreenEnabledKey(void)::key = WebKit::WebPreferencesKey::fullScreenEnabledKey(void)::$_0::operator() const(void)::impl;
  }

  return WebKit::WebPreferencesStore::getBoolValueForKey(&self->_preferences.m_storage.data[40], &WebKit::WebPreferencesKey::fullScreenEnabledKey(void)::key, v2);
}

- (BOOL)_allowsPictureInPictureMediaPlayback
{
  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::allowsPictureInPictureMediaPlaybackKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::allowsPictureInPictureMediaPlaybackKey(void)::key = WebKit::WebPreferencesKey::allowsPictureInPictureMediaPlaybackKey(void)::$_0::operator() const(void)::impl;
  }

  return WebKit::WebPreferencesStore::getBoolValueForKey(&self->_preferences.m_storage.data[40], &WebKit::WebPreferencesKey::allowsPictureInPictureMediaPlaybackKey(void)::key, v2);
}

- (BOOL)_compositingBordersVisible
{
  if (self[2]._preferences.m_storage.data[2] == 1)
  {
    return self[2]._preferences.m_storage.data[1];
  }

  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::compositingBordersVisibleKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::compositingBordersVisibleKey(void)::key = WebKit::WebPreferencesKey::compositingBordersVisibleKey(void)::$_0::operator() const(void)::impl;
  }

  return WebKit::WebPreferencesStore::getBoolValueForKey(&self->_preferences.m_storage.data[40], &WebKit::WebPreferencesKey::compositingBordersVisibleKey(void)::key, v2);
}

- (BOOL)_compositingRepaintCountersVisible
{
  if (self[2]._preferences.m_storage.data[4] == 1)
  {
    return self[2]._preferences.m_storage.data[3];
  }

  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::compositingRepaintCountersVisibleKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::compositingRepaintCountersVisibleKey(void)::key = WebKit::WebPreferencesKey::compositingRepaintCountersVisibleKey(void)::$_0::operator() const(void)::impl;
  }

  return WebKit::WebPreferencesStore::getBoolValueForKey(&self->_preferences.m_storage.data[40], &WebKit::WebPreferencesKey::compositingRepaintCountersVisibleKey(void)::key, v2);
}

- (BOOL)_tiledScrollingIndicatorVisible
{
  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::tiledScrollingIndicatorVisibleKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::tiledScrollingIndicatorVisibleKey(void)::key = WebKit::WebPreferencesKey::tiledScrollingIndicatorVisibleKey(void)::$_0::operator() const(void)::impl;
  }

  return WebKit::WebPreferencesStore::getBoolValueForKey(&self->_preferences.m_storage.data[40], &WebKit::WebPreferencesKey::tiledScrollingIndicatorVisibleKey(void)::key, v2);
}

- (BOOL)_resourceUsageOverlayVisible
{
  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::resourceUsageOverlayVisibleKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::resourceUsageOverlayVisibleKey(void)::key = WebKit::WebPreferencesKey::resourceUsageOverlayVisibleKey(void)::$_0::operator() const(void)::impl;
  }

  return WebKit::WebPreferencesStore::getBoolValueForKey(&self->_preferences.m_storage.data[40], &WebKit::WebPreferencesKey::resourceUsageOverlayVisibleKey(void)::key, v2);
}

- (unint64_t)_visibleDebugOverlayRegions
{
  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::visibleDebugOverlayRegionsKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::visibleDebugOverlayRegionsKey(void)::key = WebKit::WebPreferencesKey::visibleDebugOverlayRegionsKey(void)::$_0::operator() const(void)::impl;
  }

  return WebKit::valueForKey<unsigned int>(&self->_preferences.m_storage.data[40], &self[1]._preferences.m_storage.data[8], &WebKit::WebPreferencesKey::visibleDebugOverlayRegionsKey(void)::key);
}

- (BOOL)_legacyLineLayoutVisualCoverageEnabled
{
  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::legacyLineLayoutVisualCoverageEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::legacyLineLayoutVisualCoverageEnabledKey(void)::key = WebKit::WebPreferencesKey::legacyLineLayoutVisualCoverageEnabledKey(void)::$_0::operator() const(void)::impl;
  }

  return WebKit::WebPreferencesStore::getBoolValueForKey(&self->_preferences.m_storage.data[40], &WebKit::WebPreferencesKey::legacyLineLayoutVisualCoverageEnabledKey(void)::key, v2);
}

- (BOOL)_contentChangeObserverEnabled
{
  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::contentChangeObserverEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::contentChangeObserverEnabledKey(void)::key = WebKit::WebPreferencesKey::contentChangeObserverEnabledKey(void)::$_0::operator() const(void)::impl;
  }

  return WebKit::WebPreferencesStore::getBoolValueForKey(&self->_preferences.m_storage.data[40], &WebKit::WebPreferencesKey::contentChangeObserverEnabledKey(void)::key, v2);
}

- (BOOL)_acceleratedDrawingEnabled
{
  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::acceleratedDrawingEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::acceleratedDrawingEnabledKey(void)::key = WebKit::WebPreferencesKey::acceleratedDrawingEnabledKey(void)::$_0::operator() const(void)::impl;
  }

  return WebKit::WebPreferencesStore::getBoolValueForKey(&self->_preferences.m_storage.data[40], &WebKit::WebPreferencesKey::acceleratedDrawingEnabledKey(void)::key, v2);
}

- (BOOL)_largeImageAsyncDecodingEnabled
{
  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::largeImageAsyncDecodingEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::largeImageAsyncDecodingEnabledKey(void)::key = WebKit::WebPreferencesKey::largeImageAsyncDecodingEnabledKey(void)::$_0::operator() const(void)::impl;
  }

  return WebKit::WebPreferencesStore::getBoolValueForKey(&self->_preferences.m_storage.data[40], &WebKit::WebPreferencesKey::largeImageAsyncDecodingEnabledKey(void)::key, v2);
}

- (BOOL)_needsInAppBrowserPrivacyQuirks
{
  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::needsInAppBrowserPrivacyQuirksKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::needsInAppBrowserPrivacyQuirksKey(void)::key = WebKit::WebPreferencesKey::needsInAppBrowserPrivacyQuirksKey(void)::$_0::operator() const(void)::impl;
  }

  return WebKit::WebPreferencesStore::getBoolValueForKey(&self->_preferences.m_storage.data[40], &WebKit::WebPreferencesKey::needsInAppBrowserPrivacyQuirksKey(void)::key, v2);
}

- (BOOL)_animatedImageAsyncDecodingEnabled
{
  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::animatedImageAsyncDecodingEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::animatedImageAsyncDecodingEnabledKey(void)::key = WebKit::WebPreferencesKey::animatedImageAsyncDecodingEnabledKey(void)::$_0::operator() const(void)::impl;
  }

  return WebKit::WebPreferencesStore::getBoolValueForKey(&self->_preferences.m_storage.data[40], &WebKit::WebPreferencesKey::animatedImageAsyncDecodingEnabledKey(void)::key, v2);
}

- (BOOL)_textAutosizingEnabled
{
  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::textAutosizingEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::textAutosizingEnabledKey(void)::key = WebKit::WebPreferencesKey::textAutosizingEnabledKey(void)::$_0::operator() const(void)::impl;
  }

  return WebKit::WebPreferencesStore::getBoolValueForKey(&self->_preferences.m_storage.data[40], &WebKit::WebPreferencesKey::textAutosizingEnabledKey(void)::key, v2);
}

- (BOOL)_developerExtrasEnabled
{
  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::developerExtrasEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::developerExtrasEnabledKey(void)::key = WebKit::WebPreferencesKey::developerExtrasEnabledKey(void)::$_0::operator() const(void)::impl;
  }

  return WebKit::WebPreferencesStore::getBoolValueForKey(&self->_preferences.m_storage.data[40], &WebKit::WebPreferencesKey::developerExtrasEnabledKey(void)::key, v2);
}

- (BOOL)_logsPageMessagesToSystemConsoleEnabled
{
  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::logsPageMessagesToSystemConsoleEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::logsPageMessagesToSystemConsoleEnabledKey(void)::key = WebKit::WebPreferencesKey::logsPageMessagesToSystemConsoleEnabledKey(void)::$_0::operator() const(void)::impl;
  }

  return WebKit::WebPreferencesStore::getBoolValueForKey(&self->_preferences.m_storage.data[40], &WebKit::WebPreferencesKey::logsPageMessagesToSystemConsoleEnabledKey(void)::key, v2);
}

- (BOOL)_hiddenPageDOMTimerThrottlingEnabled
{
  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::hiddenPageDOMTimerThrottlingEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::hiddenPageDOMTimerThrottlingEnabledKey(void)::key = WebKit::WebPreferencesKey::hiddenPageDOMTimerThrottlingEnabledKey(void)::$_0::operator() const(void)::impl;
  }

  return WebKit::WebPreferencesStore::getBoolValueForKey(&self->_preferences.m_storage.data[40], &WebKit::WebPreferencesKey::hiddenPageDOMTimerThrottlingEnabledKey(void)::key, v2);
}

- (BOOL)_hiddenPageDOMTimerThrottlingAutoIncreases
{
  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::hiddenPageDOMTimerThrottlingAutoIncreasesKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::hiddenPageDOMTimerThrottlingAutoIncreasesKey(void)::key = WebKit::WebPreferencesKey::hiddenPageDOMTimerThrottlingAutoIncreasesKey(void)::$_0::operator() const(void)::impl;
  }

  return WebKit::WebPreferencesStore::getBoolValueForKey(&self->_preferences.m_storage.data[40], &WebKit::WebPreferencesKey::hiddenPageDOMTimerThrottlingAutoIncreasesKey(void)::key, v2);
}

- (BOOL)_pageVisibilityBasedProcessSuppressionEnabled
{
  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::pageVisibilityBasedProcessSuppressionEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::pageVisibilityBasedProcessSuppressionEnabledKey(void)::key = WebKit::WebPreferencesKey::pageVisibilityBasedProcessSuppressionEnabledKey(void)::$_0::operator() const(void)::impl;
  }

  return WebKit::WebPreferencesStore::getBoolValueForKey(&self->_preferences.m_storage.data[40], &WebKit::WebPreferencesKey::pageVisibilityBasedProcessSuppressionEnabledKey(void)::key, v2);
}

- (BOOL)_allowFileAccessFromFileURLs
{
  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::allowFileAccessFromFileURLsKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::allowFileAccessFromFileURLsKey(void)::key = WebKit::WebPreferencesKey::allowFileAccessFromFileURLsKey(void)::$_0::operator() const(void)::impl;
  }

  return WebKit::WebPreferencesStore::getBoolValueForKey(&self->_preferences.m_storage.data[40], &WebKit::WebPreferencesKey::allowFileAccessFromFileURLsKey(void)::key, v2);
}

- (unint64_t)_javaScriptRuntimeFlags
{
  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::javaScriptRuntimeFlagsKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::javaScriptRuntimeFlagsKey(void)::key = WebKit::WebPreferencesKey::javaScriptRuntimeFlagsKey(void)::$_0::operator() const(void)::impl;
  }

  return WebKit::valueForKey<unsigned int>(&self->_preferences.m_storage.data[40], &self[1]._preferences.m_storage.data[8], &WebKit::WebPreferencesKey::javaScriptRuntimeFlagsKey(void)::key);
}

- (BOOL)_isStandalone
{
  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::standaloneKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::standaloneKey(void)::key = WebKit::WebPreferencesKey::standaloneKey(void)::$_0::operator() const(void)::impl;
  }

  return WebKit::WebPreferencesStore::getBoolValueForKey(&self->_preferences.m_storage.data[40], &WebKit::WebPreferencesKey::standaloneKey(void)::key, v2);
}

- (BOOL)_diagnosticLoggingEnabled
{
  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::diagnosticLoggingEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::diagnosticLoggingEnabledKey(void)::key = WebKit::WebPreferencesKey::diagnosticLoggingEnabledKey(void)::$_0::operator() const(void)::impl;
  }

  return WebKit::WebPreferencesStore::getBoolValueForKey(&self->_preferences.m_storage.data[40], &WebKit::WebPreferencesKey::diagnosticLoggingEnabledKey(void)::key, v2);
}

- (unint64_t)_defaultFontSize
{
  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::defaultFontSizeKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::defaultFontSizeKey(void)::key = WebKit::WebPreferencesKey::defaultFontSizeKey(void)::$_0::operator() const(void)::impl;
  }

  return WebKit::valueForKey<double>(&self->_preferences.m_storage.data[40], &self[1]._preferences.m_storage.data[8], &WebKit::WebPreferencesKey::defaultFontSizeKey(void)::key);
}

- (unint64_t)_defaultFixedPitchFontSize
{
  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::defaultFixedFontSizeKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::defaultFixedFontSizeKey(void)::key = WebKit::WebPreferencesKey::defaultFixedFontSizeKey(void)::$_0::operator() const(void)::impl;
  }

  return WebKit::valueForKey<double>(&self->_preferences.m_storage.data[40], &self[1]._preferences.m_storage.data[8], &WebKit::WebPreferencesKey::defaultFixedFontSizeKey(void)::key);
}

- (NSString)_fixedPitchFontFamily
{
  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::fixedFontFamilyKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::fixedFontFamilyKey(void)::key = WebKit::WebPreferencesKey::fixedFontFamilyKey(void)::$_0::operator() const(void)::impl;
  }

  WebKit::valueForKey<WTF::String>(&self->_preferences.m_storage.data[40], &self[1]._preferences.m_storage.data[8], &WebKit::WebPreferencesKey::fixedFontFamilyKey(void)::key, &v9);
  v2 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(v9, 2u, memory_order_relaxed);
    MEMORY[0x19EB00B70](&v10, v2);
    if (atomic_fetch_add_explicit(v2, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v2, v3);
    }
  }

  else
  {
    v10 = &stru_1F1147748;
    v4 = &stru_1F1147748;
  }

  v5 = v10;
  v10 = 0;
  if (v5)
  {
    v6 = v5;
    v7 = v10;
    v10 = 0;
    if (v7)
    {
    }
  }

  if (v2 && atomic_fetch_add_explicit(v2, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v2, v3);
  }

  return v5;
}

- (void)_setFixedPitchFontFamily:(id)family
{
  MEMORY[0x19EB02040](&v6, family);
  WebKit::WebPreferences::setFixedFontFamily(&self->_preferences, &v6);
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

+ (id)_internalDebugFeatures
{
  v2 = WebKit::WebPreferences::internalDebugFeatures(self);
  WTF::Vector<WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(v11, v2);
  API::Array::create(v11, &v10);
  v3 = v10;
  v4 = *(v10 + 1);
  if (!v4)
  {
    v7 = 0;
    goto LABEL_4;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = v4;
    v7 = *(v3 + 1);
LABEL_4:
    CFRelease(v7);
    WTF::Vector<WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v11, v8);
    return v4;
  }

  result = 117;
  __break(0xC471u);
  return result;
}

+ (id)_experimentalFeatures
{
  v2 = WebKit::WebPreferences::experimentalFeatures(self);
  WTF::Vector<WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(v11, v2);
  API::Array::create(v11, &v10);
  v3 = v10;
  v4 = *(v10 + 1);
  if (!v4)
  {
    v7 = 0;
    goto LABEL_4;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = v4;
    v7 = *(v3 + 1);
LABEL_4:
    CFRelease(v7);
    WTF::Vector<WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v11, v8);
    return v4;
  }

  result = 117;
  __break(0xC471u);
  return result;
}

- (BOOL)_applePayCapabilityDisclosureAllowed
{
  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::applePayCapabilityDisclosureAllowedKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::applePayCapabilityDisclosureAllowedKey(void)::key = WebKit::WebPreferencesKey::applePayCapabilityDisclosureAllowedKey(void)::$_0::operator() const(void)::impl;
  }

  return WebKit::WebPreferencesStore::getBoolValueForKey(&self->_preferences.m_storage.data[40], &WebKit::WebPreferencesKey::applePayCapabilityDisclosureAllowedKey(void)::key, v2);
}

- (BOOL)_shouldSuppressKeyboardInputDuringProvisionalNavigation
{
  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::shouldSuppressTextInputFromEditingDuringProvisionalNavigationKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::shouldSuppressTextInputFromEditingDuringProvisionalNavigationKey(void)::key = WebKit::WebPreferencesKey::shouldSuppressTextInputFromEditingDuringProvisionalNavigationKey(void)::$_0::operator() const(void)::impl;
  }

  return WebKit::WebPreferencesStore::getBoolValueForKey(&self->_preferences.m_storage.data[40], &WebKit::WebPreferencesKey::shouldSuppressTextInputFromEditingDuringProvisionalNavigationKey(void)::key, v2);
}

- (BOOL)_loadsImagesAutomatically
{
  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::loadsImagesAutomaticallyKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::loadsImagesAutomaticallyKey(void)::key = WebKit::WebPreferencesKey::loadsImagesAutomaticallyKey(void)::$_0::operator() const(void)::impl;
  }

  return WebKit::WebPreferencesStore::getBoolValueForKey(&self->_preferences.m_storage.data[40], &WebKit::WebPreferencesKey::loadsImagesAutomaticallyKey(void)::key, v2);
}

- (BOOL)_peerConnectionEnabled
{
  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::peerConnectionEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::peerConnectionEnabledKey(void)::key = WebKit::WebPreferencesKey::peerConnectionEnabledKey(void)::$_0::operator() const(void)::impl;
  }

  return WebKit::WebPreferencesStore::getBoolValueForKey(&self->_preferences.m_storage.data[40], &WebKit::WebPreferencesKey::peerConnectionEnabledKey(void)::key, v2);
}

- (BOOL)_mediaDevicesEnabled
{
  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::mediaDevicesEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::mediaDevicesEnabledKey(void)::key = WebKit::WebPreferencesKey::mediaDevicesEnabledKey(void)::$_0::operator() const(void)::impl;
  }

  return WebKit::WebPreferencesStore::getBoolValueForKey(&self->_preferences.m_storage.data[40], &WebKit::WebPreferencesKey::mediaDevicesEnabledKey(void)::key, v2);
}

- (BOOL)_getUserMediaRequiresFocus
{
  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::getUserMediaRequiresFocusKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::getUserMediaRequiresFocusKey(void)::key = WebKit::WebPreferencesKey::getUserMediaRequiresFocusKey(void)::$_0::operator() const(void)::impl;
  }

  return WebKit::WebPreferencesStore::getBoolValueForKey(&self->_preferences.m_storage.data[40], &WebKit::WebPreferencesKey::getUserMediaRequiresFocusKey(void)::key, v2);
}

- (BOOL)_screenCaptureEnabled
{
  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::screenCaptureEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::screenCaptureEnabledKey(void)::key = WebKit::WebPreferencesKey::screenCaptureEnabledKey(void)::$_0::operator() const(void)::impl;
  }

  return WebKit::WebPreferencesStore::getBoolValueForKey(&self->_preferences.m_storage.data[40], &WebKit::WebPreferencesKey::screenCaptureEnabledKey(void)::key, v2);
}

- (BOOL)_mockCaptureDevicesEnabled
{
  if (self[2]._preferences.m_storage.data[8] == 1)
  {
    return self[2]._preferences.m_storage.data[7];
  }

  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::mockCaptureDevicesEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::mockCaptureDevicesEnabledKey(void)::key = WebKit::WebPreferencesKey::mockCaptureDevicesEnabledKey(void)::$_0::operator() const(void)::impl;
  }

  return WebKit::WebPreferencesStore::getBoolValueForKey(&self->_preferences.m_storage.data[40], &WebKit::WebPreferencesKey::mockCaptureDevicesEnabledKey(void)::key, v2);
}

- (BOOL)_mockCaptureDevicesPromptEnabled
{
  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::mockCaptureDevicesPromptEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::mockCaptureDevicesPromptEnabledKey(void)::key = WebKit::WebPreferencesKey::mockCaptureDevicesPromptEnabledKey(void)::$_0::operator() const(void)::impl;
  }

  return WebKit::WebPreferencesStore::getBoolValueForKey(&self->_preferences.m_storage.data[40], &WebKit::WebPreferencesKey::mockCaptureDevicesPromptEnabledKey(void)::key, v2);
}

- (BOOL)_mediaCaptureRequiresSecureConnection
{
  if (self[2]._preferences.m_storage.data[12] == 1)
  {
    return self[2]._preferences.m_storage.data[11];
  }

  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::mediaCaptureRequiresSecureConnectionKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::mediaCaptureRequiresSecureConnectionKey(void)::key = WebKit::WebPreferencesKey::mediaCaptureRequiresSecureConnectionKey(void)::$_0::operator() const(void)::impl;
  }

  return WebKit::WebPreferencesStore::getBoolValueForKey(&self->_preferences.m_storage.data[40], &WebKit::WebPreferencesKey::mediaCaptureRequiresSecureConnectionKey(void)::key, v2);
}

- (double)_inactiveMediaCaptureStreamRepromptIntervalInMinutes
{
  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::inactiveMediaCaptureStreamRepromptIntervalInMinutesKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::inactiveMediaCaptureStreamRepromptIntervalInMinutesKey(void)::key = WebKit::WebPreferencesKey::inactiveMediaCaptureStreamRepromptIntervalInMinutesKey(void)::$_0::operator() const(void)::impl;
  }

  return WebKit::valueForKey<double>(&self->_preferences.m_storage.data[40], &self[1]._preferences.m_storage.data[8], &WebKit::WebPreferencesKey::inactiveMediaCaptureStreamRepromptIntervalInMinutesKey(void)::key);
}

- (BOOL)_interruptAudioOnPageVisibilityChangeEnabled
{
  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::interruptAudioOnPageVisibilityChangeEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::interruptAudioOnPageVisibilityChangeEnabledKey(void)::key = WebKit::WebPreferencesKey::interruptAudioOnPageVisibilityChangeEnabledKey(void)::$_0::operator() const(void)::impl;
  }

  return WebKit::WebPreferencesStore::getBoolValueForKey(&self->_preferences.m_storage.data[40], &WebKit::WebPreferencesKey::interruptAudioOnPageVisibilityChangeEnabledKey(void)::key, v2);
}

- (BOOL)_enumeratingAllNetworkInterfacesEnabled
{
  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::enumeratingAllNetworkInterfacesEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::enumeratingAllNetworkInterfacesEnabledKey(void)::key = WebKit::WebPreferencesKey::enumeratingAllNetworkInterfacesEnabledKey(void)::$_0::operator() const(void)::impl;
  }

  return WebKit::WebPreferencesStore::getBoolValueForKey(&self->_preferences.m_storage.data[40], &WebKit::WebPreferencesKey::enumeratingAllNetworkInterfacesEnabledKey(void)::key, v2);
}

- (BOOL)_iceCandidateFilteringEnabled
{
  if (self[2]._preferences.m_storage.data[6] == 1)
  {
    return self[2]._preferences.m_storage.data[5];
  }

  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::iceCandidateFilteringEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::iceCandidateFilteringEnabledKey(void)::key = WebKit::WebPreferencesKey::iceCandidateFilteringEnabledKey(void)::$_0::operator() const(void)::impl;
  }

  return WebKit::WebPreferencesStore::getBoolValueForKey(&self->_preferences.m_storage.data[40], &WebKit::WebPreferencesKey::iceCandidateFilteringEnabledKey(void)::key, v2);
}

- (BOOL)_shouldAllowUserInstalledFonts
{
  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::shouldAllowUserInstalledFontsKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::shouldAllowUserInstalledFontsKey(void)::key = WebKit::WebPreferencesKey::shouldAllowUserInstalledFontsKey(void)::$_0::operator() const(void)::impl;
  }

  return WebKit::WebPreferencesStore::getBoolValueForKey(&self->_preferences.m_storage.data[40], &WebKit::WebPreferencesKey::shouldAllowUserInstalledFontsKey(void)::key, v2);
}

- (int64_t)_editableLinkBehavior
{
  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::editableLinkBehaviorKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::editableLinkBehaviorKey(void)::key = WebKit::WebPreferencesKey::editableLinkBehaviorKey(void)::$_0::operator() const(void)::impl;
  }

  LOBYTE(result) = WebKit::valueForKey<unsigned int>(&self->_preferences.m_storage.data[40], &self[1]._preferences.m_storage.data[8], &WebKit::WebPreferencesKey::editableLinkBehaviorKey(void)::key);
  if (result >= 5u)
  {
    return 4;
  }

  else
  {
    return result;
  }
}

- (void)_setEditableLinkBehavior:(int64_t)behavior
{
  if (behavior >= 5)
  {
    behaviorCopy = 4;
  }

  else
  {
    behaviorCopy = behavior;
  }

  v4 = behaviorCopy;
  WebKit::WebPreferences::setEditableLinkBehavior(&self->_preferences, &v4);
}

- (BOOL)_avFoundationEnabled
{
  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::isAVFoundationEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::isAVFoundationEnabledKey(void)::key = WebKit::WebPreferencesKey::isAVFoundationEnabledKey(void)::$_0::operator() const(void)::impl;
  }

  return WebKit::WebPreferencesStore::getBoolValueForKey(&self->_preferences.m_storage.data[40], &WebKit::WebPreferencesKey::isAVFoundationEnabledKey(void)::key, v2);
}

- (BOOL)_textExtractionEnabled
{
  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::textExtractionEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::textExtractionEnabledKey(void)::key = WebKit::WebPreferencesKey::textExtractionEnabledKey(void)::$_0::operator() const(void)::impl;
  }

  return WebKit::WebPreferencesStore::getBoolValueForKey(&self->_preferences.m_storage.data[40], &WebKit::WebPreferencesKey::textExtractionEnabledKey(void)::key, v2);
}

- (BOOL)_colorFilterEnabled
{
  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::colorFilterEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::colorFilterEnabledKey(void)::key = WebKit::WebPreferencesKey::colorFilterEnabledKey(void)::$_0::operator() const(void)::impl;
  }

  return WebKit::WebPreferencesStore::getBoolValueForKey(&self->_preferences.m_storage.data[40], &WebKit::WebPreferencesKey::colorFilterEnabledKey(void)::key, v2);
}

- (BOOL)_punchOutWhiteBackgroundsInDarkMode
{
  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::punchOutWhiteBackgroundsInDarkModeKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::punchOutWhiteBackgroundsInDarkModeKey(void)::key = WebKit::WebPreferencesKey::punchOutWhiteBackgroundsInDarkModeKey(void)::$_0::operator() const(void)::impl;
  }

  return WebKit::WebPreferencesStore::getBoolValueForKey(&self->_preferences.m_storage.data[40], &WebKit::WebPreferencesKey::punchOutWhiteBackgroundsInDarkModeKey(void)::key, v2);
}

- (BOOL)_lowPowerVideoAudioBufferSizeEnabled
{
  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::lowPowerVideoAudioBufferSizeEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::lowPowerVideoAudioBufferSizeEnabledKey(void)::key = WebKit::WebPreferencesKey::lowPowerVideoAudioBufferSizeEnabledKey(void)::$_0::operator() const(void)::impl;
  }

  return WebKit::WebPreferencesStore::getBoolValueForKey(&self->_preferences.m_storage.data[40], &WebKit::WebPreferencesKey::lowPowerVideoAudioBufferSizeEnabledKey(void)::key, v2);
}

- (BOOL)_shouldIgnoreMetaViewport
{
  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::shouldIgnoreMetaViewportKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::shouldIgnoreMetaViewportKey(void)::key = WebKit::WebPreferencesKey::shouldIgnoreMetaViewportKey(void)::$_0::operator() const(void)::impl;
  }

  return WebKit::WebPreferencesStore::getBoolValueForKey(&self->_preferences.m_storage.data[40], &WebKit::WebPreferencesKey::shouldIgnoreMetaViewportKey(void)::key, v2);
}

- (BOOL)_needsSiteSpecificQuirks
{
  if (self[2]._preferences.m_storage.data[14] == 1)
  {
    return self[2]._preferences.m_storage.data[13];
  }

  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::needsSiteSpecificQuirksKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::needsSiteSpecificQuirksKey(void)::key = WebKit::WebPreferencesKey::needsSiteSpecificQuirksKey(void)::$_0::operator() const(void)::impl;
  }

  return WebKit::WebPreferencesStore::getBoolValueForKey(&self->_preferences.m_storage.data[40], &WebKit::WebPreferencesKey::needsSiteSpecificQuirksKey(void)::key, v2);
}

- (BOOL)_itpDebugModeEnabled
{
  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::itpDebugModeEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::itpDebugModeEnabledKey(void)::key = WebKit::WebPreferencesKey::itpDebugModeEnabledKey(void)::$_0::operator() const(void)::impl;
  }

  return WebKit::WebPreferencesStore::getBoolValueForKey(&self->_preferences.m_storage.data[40], &WebKit::WebPreferencesKey::itpDebugModeEnabledKey(void)::key, v2);
}

- (BOOL)_mediaSourceEnabled
{
  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::mediaSourceEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::mediaSourceEnabledKey(void)::key = WebKit::WebPreferencesKey::mediaSourceEnabledKey(void)::$_0::operator() const(void)::impl;
  }

  return WebKit::WebPreferencesStore::getBoolValueForKey(&self->_preferences.m_storage.data[40], &WebKit::WebPreferencesKey::mediaSourceEnabledKey(void)::key, v2);
}

- (BOOL)_managedMediaSourceEnabled
{
  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::managedMediaSourceEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::managedMediaSourceEnabledKey(void)::key = WebKit::WebPreferencesKey::managedMediaSourceEnabledKey(void)::$_0::operator() const(void)::impl;
  }

  return WebKit::WebPreferencesStore::getBoolValueForKey(&self->_preferences.m_storage.data[40], &WebKit::WebPreferencesKey::managedMediaSourceEnabledKey(void)::key, v2);
}

- (double)_managedMediaSourceLowThreshold
{
  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::managedMediaSourceLowThresholdKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::managedMediaSourceLowThresholdKey(void)::key = WebKit::WebPreferencesKey::managedMediaSourceLowThresholdKey(void)::$_0::operator() const(void)::impl;
  }

  return WebKit::valueForKey<double>(&self->_preferences.m_storage.data[40], &self[1]._preferences.m_storage.data[8], &WebKit::WebPreferencesKey::managedMediaSourceLowThresholdKey(void)::key);
}

- (double)_managedMediaSourceHighThreshold
{
  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::managedMediaSourceHighThresholdKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::managedMediaSourceHighThresholdKey(void)::key = WebKit::WebPreferencesKey::managedMediaSourceHighThresholdKey(void)::$_0::operator() const(void)::impl;
  }

  return WebKit::valueForKey<double>(&self->_preferences.m_storage.data[40], &self[1]._preferences.m_storage.data[8], &WebKit::WebPreferencesKey::managedMediaSourceHighThresholdKey(void)::key);
}

- (BOOL)_secureContextChecksEnabled
{
  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::secureContextChecksEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::secureContextChecksEnabledKey(void)::key = WebKit::WebPreferencesKey::secureContextChecksEnabledKey(void)::$_0::operator() const(void)::impl;
  }

  return WebKit::WebPreferencesStore::getBoolValueForKey(&self->_preferences.m_storage.data[40], &WebKit::WebPreferencesKey::secureContextChecksEnabledKey(void)::key, v2);
}

- (BOOL)_webAudioEnabled
{
  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::webAudioEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::webAudioEnabledKey(void)::key = WebKit::WebPreferencesKey::webAudioEnabledKey(void)::$_0::operator() const(void)::impl;
  }

  return WebKit::WebPreferencesStore::getBoolValueForKey(&self->_preferences.m_storage.data[40], &WebKit::WebPreferencesKey::webAudioEnabledKey(void)::key, v2);
}

- (BOOL)_acceleratedCompositingEnabled
{
  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::acceleratedCompositingEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::acceleratedCompositingEnabledKey(void)::key = WebKit::WebPreferencesKey::acceleratedCompositingEnabledKey(void)::$_0::operator() const(void)::impl;
  }

  return WebKit::WebPreferencesStore::getBoolValueForKey(&self->_preferences.m_storage.data[40], &WebKit::WebPreferencesKey::acceleratedCompositingEnabledKey(void)::key, v2);
}

- (BOOL)_remotePlaybackEnabled
{
  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::remotePlaybackEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::remotePlaybackEnabledKey(void)::key = WebKit::WebPreferencesKey::remotePlaybackEnabledKey(void)::$_0::operator() const(void)::impl;
  }

  return WebKit::WebPreferencesStore::getBoolValueForKey(&self->_preferences.m_storage.data[40], &WebKit::WebPreferencesKey::remotePlaybackEnabledKey(void)::key, v2);
}

- (BOOL)_javaScriptCanAccessClipboard
{
  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::javaScriptCanAccessClipboardKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::javaScriptCanAccessClipboardKey(void)::key = WebKit::WebPreferencesKey::javaScriptCanAccessClipboardKey(void)::$_0::operator() const(void)::impl;
  }

  return WebKit::WebPreferencesStore::getBoolValueForKey(&self->_preferences.m_storage.data[40], &WebKit::WebPreferencesKey::javaScriptCanAccessClipboardKey(void)::key, v2);
}

- (BOOL)_domPasteAllowed
{
  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::domPasteAllowedKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::domPasteAllowedKey(void)::key = WebKit::WebPreferencesKey::domPasteAllowedKey(void)::$_0::operator() const(void)::impl;
  }

  return WebKit::WebPreferencesStore::getBoolValueForKey(&self->_preferences.m_storage.data[40], &WebKit::WebPreferencesKey::domPasteAllowedKey(void)::key, v2);
}

- (BOOL)_shouldEnableTextAutosizingBoost
{
  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::shouldEnableTextAutosizingBoostKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::shouldEnableTextAutosizingBoostKey(void)::key = WebKit::WebPreferencesKey::shouldEnableTextAutosizingBoostKey(void)::$_0::operator() const(void)::impl;
  }

  return WebKit::WebPreferencesStore::getBoolValueForKey(&self->_preferences.m_storage.data[40], &WebKit::WebPreferencesKey::shouldEnableTextAutosizingBoostKey(void)::key, v2);
}

- (BOOL)_isSafeBrowsingEnabled
{
  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::safeBrowsingEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::safeBrowsingEnabledKey(void)::key = WebKit::WebPreferencesKey::safeBrowsingEnabledKey(void)::$_0::operator() const(void)::impl;
  }

  return WebKit::WebPreferencesStore::getBoolValueForKey(&self->_preferences.m_storage.data[40], &WebKit::WebPreferencesKey::safeBrowsingEnabledKey(void)::key, v2);
}

- (BOOL)_videoQualityIncludesDisplayCompositingEnabled
{
  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::videoQualityIncludesDisplayCompositingEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::videoQualityIncludesDisplayCompositingEnabledKey(void)::key = WebKit::WebPreferencesKey::videoQualityIncludesDisplayCompositingEnabledKey(void)::$_0::operator() const(void)::impl;
  }

  return WebKit::WebPreferencesStore::getBoolValueForKey(&self->_preferences.m_storage.data[40], &WebKit::WebPreferencesKey::videoQualityIncludesDisplayCompositingEnabledKey(void)::key, v2);
}

- (BOOL)_deviceOrientationEventEnabled
{
  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::deviceOrientationEventEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::deviceOrientationEventEnabledKey(void)::key = WebKit::WebPreferencesKey::deviceOrientationEventEnabledKey(void)::$_0::operator() const(void)::impl;
  }

  return WebKit::WebPreferencesStore::getBoolValueForKey(&self->_preferences.m_storage.data[40], &WebKit::WebPreferencesKey::deviceOrientationEventEnabledKey(void)::key, v2);
}

- (BOOL)_speechRecognitionEnabled
{
  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::speechRecognitionEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::speechRecognitionEnabledKey(void)::key = WebKit::WebPreferencesKey::speechRecognitionEnabledKey(void)::$_0::operator() const(void)::impl;
  }

  return WebKit::WebPreferencesStore::getBoolValueForKey(&self->_preferences.m_storage.data[40], &WebKit::WebPreferencesKey::speechRecognitionEnabledKey(void)::key, v2);
}

- (BOOL)_privateClickMeasurementEnabled
{
  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::privateClickMeasurementEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::privateClickMeasurementEnabledKey(void)::key = WebKit::WebPreferencesKey::privateClickMeasurementEnabledKey(void)::$_0::operator() const(void)::impl;
  }

  return WebKit::WebPreferencesStore::getBoolValueForKey(&self->_preferences.m_storage.data[40], &WebKit::WebPreferencesKey::privateClickMeasurementEnabledKey(void)::key, v2);
}

- (BOOL)_privateClickMeasurementDebugModeEnabled
{
  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::privateClickMeasurementDebugModeEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::privateClickMeasurementDebugModeEnabledKey(void)::key = WebKit::WebPreferencesKey::privateClickMeasurementDebugModeEnabledKey(void)::$_0::operator() const(void)::impl;
  }

  return WebKit::WebPreferencesStore::getBoolValueForKey(&self->_preferences.m_storage.data[40], &WebKit::WebPreferencesKey::privateClickMeasurementDebugModeEnabledKey(void)::key, v2);
}

- (int64_t)_pitchCorrectionAlgorithm
{
  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::pitchCorrectionAlgorithmKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::pitchCorrectionAlgorithmKey(void)::key = WebKit::WebPreferencesKey::pitchCorrectionAlgorithmKey(void)::$_0::operator() const(void)::impl;
  }

  return WebKit::valueForKey<unsigned int>(&self->_preferences.m_storage.data[40], &self[1]._preferences.m_storage.data[8], &WebKit::WebPreferencesKey::pitchCorrectionAlgorithmKey(void)::key);
}

- (BOOL)_mediaSessionEnabled
{
  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::mediaSessionEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::mediaSessionEnabledKey(void)::key = WebKit::WebPreferencesKey::mediaSessionEnabledKey(void)::$_0::operator() const(void)::impl;
  }

  return WebKit::WebPreferencesStore::getBoolValueForKey(&self->_preferences.m_storage.data[40], &WebKit::WebPreferencesKey::mediaSessionEnabledKey(void)::key, v2);
}

- (BOOL)_isExtensibleSSOEnabled
{
  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::isExtensibleSSOEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::isExtensibleSSOEnabledKey(void)::key = WebKit::WebPreferencesKey::isExtensibleSSOEnabledKey(void)::$_0::operator() const(void)::impl;
  }

  return WebKit::WebPreferencesStore::getBoolValueForKey(&self->_preferences.m_storage.data[40], &WebKit::WebPreferencesKey::isExtensibleSSOEnabledKey(void)::key, v2);
}

- (BOOL)_requiresPageVisibilityToPlayAudio
{
  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::requiresPageVisibilityToPlayAudioKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::requiresPageVisibilityToPlayAudioKey(void)::key = WebKit::WebPreferencesKey::requiresPageVisibilityToPlayAudioKey(void)::$_0::operator() const(void)::impl;
  }

  return WebKit::WebPreferencesStore::getBoolValueForKey(&self->_preferences.m_storage.data[40], &WebKit::WebPreferencesKey::requiresPageVisibilityToPlayAudioKey(void)::key, v2);
}

- (BOOL)_fileSystemAccessEnabled
{
  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::fileSystemEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::fileSystemEnabledKey(void)::key = WebKit::WebPreferencesKey::fileSystemEnabledKey(void)::$_0::operator() const(void)::impl;
  }

  return WebKit::WebPreferencesStore::getBoolValueForKey(&self->_preferences.m_storage.data[40], &WebKit::WebPreferencesKey::fileSystemEnabledKey(void)::key, v2);
}

- (BOOL)_storageAPIEnabled
{
  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::storageAPIEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::storageAPIEnabledKey(void)::key = WebKit::WebPreferencesKey::storageAPIEnabledKey(void)::$_0::operator() const(void)::impl;
  }

  return WebKit::WebPreferencesStore::getBoolValueForKey(&self->_preferences.m_storage.data[40], &WebKit::WebPreferencesKey::storageAPIEnabledKey(void)::key, v2);
}

- (BOOL)_accessHandleEnabled
{
  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::accessHandleEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::accessHandleEnabledKey(void)::key = WebKit::WebPreferencesKey::accessHandleEnabledKey(void)::$_0::operator() const(void)::impl;
  }

  return WebKit::WebPreferencesStore::getBoolValueForKey(&self->_preferences.m_storage.data[40], &WebKit::WebPreferencesKey::accessHandleEnabledKey(void)::key, v2);
}

- (BOOL)_notificationsEnabled
{
  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::notificationsEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::notificationsEnabledKey(void)::key = WebKit::WebPreferencesKey::notificationsEnabledKey(void)::$_0::operator() const(void)::impl;
  }

  return WebKit::WebPreferencesStore::getBoolValueForKey(&self->_preferences.m_storage.data[40], &WebKit::WebPreferencesKey::notificationsEnabledKey(void)::key, v2);
}

- (BOOL)_notificationEventEnabled
{
  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::notificationEventEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::notificationEventEnabledKey(void)::key = WebKit::WebPreferencesKey::notificationEventEnabledKey(void)::$_0::operator() const(void)::impl;
  }

  return WebKit::WebPreferencesStore::getBoolValueForKey(&self->_preferences.m_storage.data[40], &WebKit::WebPreferencesKey::notificationEventEnabledKey(void)::key, v2);
}

- (BOOL)_pushAPIEnabled
{
  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::pushAPIEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::pushAPIEnabledKey(void)::key = WebKit::WebPreferencesKey::pushAPIEnabledKey(void)::$_0::operator() const(void)::impl;
  }

  return WebKit::WebPreferencesStore::getBoolValueForKey(&self->_preferences.m_storage.data[40], &WebKit::WebPreferencesKey::pushAPIEnabledKey(void)::key, v2);
}

- (BOOL)_requiresFullscreenToLockScreenOrientation
{
  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::fullscreenRequirementForScreenOrientationLockingEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::fullscreenRequirementForScreenOrientationLockingEnabledKey(void)::key = WebKit::WebPreferencesKey::fullscreenRequirementForScreenOrientationLockingEnabledKey(void)::$_0::operator() const(void)::impl;
  }

  return WebKit::WebPreferencesStore::getBoolValueForKey(&self->_preferences.m_storage.data[40], &WebKit::WebPreferencesKey::fullscreenRequirementForScreenOrientationLockingEnabledKey(void)::key, v2);
}

- (double)_interactionRegionMinimumCornerRadius
{
  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::interactionRegionMinimumCornerRadiusKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::interactionRegionMinimumCornerRadiusKey(void)::key = WebKit::WebPreferencesKey::interactionRegionMinimumCornerRadiusKey(void)::$_0::operator() const(void)::impl;
  }

  return WebKit::valueForKey<double>(&self->_preferences.m_storage.data[40], &self[1]._preferences.m_storage.data[8], &WebKit::WebPreferencesKey::interactionRegionMinimumCornerRadiusKey(void)::key);
}

- (double)_interactionRegionInlinePadding
{
  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::interactionRegionInlinePaddingKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::interactionRegionInlinePaddingKey(void)::key = WebKit::WebPreferencesKey::interactionRegionInlinePaddingKey(void)::$_0::operator() const(void)::impl;
  }

  return WebKit::valueForKey<double>(&self->_preferences.m_storage.data[40], &self[1]._preferences.m_storage.data[8], &WebKit::WebPreferencesKey::interactionRegionInlinePaddingKey(void)::key);
}

- (double)_mediaPreferredFullscreenWidth
{
  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::mediaPreferredFullscreenWidthKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::mediaPreferredFullscreenWidthKey(void)::key = WebKit::WebPreferencesKey::mediaPreferredFullscreenWidthKey(void)::$_0::operator() const(void)::impl;
  }

  return WebKit::valueForKey<double>(&self->_preferences.m_storage.data[40], &self[1]._preferences.m_storage.data[8], &WebKit::WebPreferencesKey::mediaPreferredFullscreenWidthKey(void)::key);
}

- (BOOL)_appBadgeEnabled
{
  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::appBadgeEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::appBadgeEnabledKey(void)::key = WebKit::WebPreferencesKey::appBadgeEnabledKey(void)::$_0::operator() const(void)::impl;
  }

  return WebKit::WebPreferencesStore::getBoolValueForKey(&self->_preferences.m_storage.data[40], &WebKit::WebPreferencesKey::appBadgeEnabledKey(void)::key, v2);
}

- (BOOL)_verifyWindowOpenUserGestureFromUIProcess
{
  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::verifyWindowOpenUserGestureFromUIProcessKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::verifyWindowOpenUserGestureFromUIProcessKey(void)::key = WebKit::WebPreferencesKey::verifyWindowOpenUserGestureFromUIProcessKey(void)::$_0::operator() const(void)::impl;
  }

  return WebKit::WebPreferencesStore::getBoolValueForKey(&self->_preferences.m_storage.data[40], &WebKit::WebPreferencesKey::verifyWindowOpenUserGestureFromUIProcessKey(void)::key, v2);
}

- (BOOL)_mediaCapabilityGrantsEnabled
{
  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::mediaCapabilityGrantsEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::mediaCapabilityGrantsEnabledKey(void)::key = WebKit::WebPreferencesKey::mediaCapabilityGrantsEnabledKey(void)::$_0::operator() const(void)::impl;
  }

  return WebKit::WebPreferencesStore::getBoolValueForKey(&self->_preferences.m_storage.data[40], &WebKit::WebPreferencesKey::mediaCapabilityGrantsEnabledKey(void)::key, v2);
}

- (BOOL)_allowPrivacySensitiveOperationsInNonPersistentDataStores
{
  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::allowPrivacySensitiveOperationsInNonPersistentDataStoresKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::allowPrivacySensitiveOperationsInNonPersistentDataStoresKey(void)::key = WebKit::WebPreferencesKey::allowPrivacySensitiveOperationsInNonPersistentDataStoresKey(void)::$_0::operator() const(void)::impl;
  }

  return WebKit::WebPreferencesStore::getBoolValueForKey(&self->_preferences.m_storage.data[40], &WebKit::WebPreferencesKey::allowPrivacySensitiveOperationsInNonPersistentDataStoresKey(void)::key, v2);
}

- (BOOL)_videoFullscreenRequiresElementFullscreen
{
  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::videoFullscreenRequiresElementFullscreenKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::videoFullscreenRequiresElementFullscreenKey(void)::key = WebKit::WebPreferencesKey::videoFullscreenRequiresElementFullscreenKey(void)::$_0::operator() const(void)::impl;
  }

  return WebKit::WebPreferencesStore::getBoolValueForKey(&self->_preferences.m_storage.data[40], &WebKit::WebPreferencesKey::videoFullscreenRequiresElementFullscreenKey(void)::key, v2);
}

- (BOOL)_cssTransformStyleSeparatedEnabled
{
  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::cssTransformStyleSeparatedEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::cssTransformStyleSeparatedEnabledKey(void)::key = WebKit::WebPreferencesKey::cssTransformStyleSeparatedEnabledKey(void)::$_0::operator() const(void)::impl;
  }

  return WebKit::WebPreferencesStore::getBoolValueForKey(&self->_preferences.m_storage.data[40], &WebKit::WebPreferencesKey::cssTransformStyleSeparatedEnabledKey(void)::key, v2);
}

- (BOOL)_modelProcessEnabled
{
  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::modelProcessEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::modelProcessEnabledKey(void)::key = WebKit::WebPreferencesKey::modelProcessEnabledKey(void)::$_0::operator() const(void)::impl;
  }

  return WebKit::WebPreferencesStore::getBoolValueForKey(&self->_preferences.m_storage.data[40], &WebKit::WebPreferencesKey::modelProcessEnabledKey(void)::key, v2);
}

- (BOOL)_modelElementEnabled
{
  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::modelElementEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::modelElementEnabledKey(void)::key = WebKit::WebPreferencesKey::modelElementEnabledKey(void)::$_0::operator() const(void)::impl;
  }

  return WebKit::WebPreferencesStore::getBoolValueForKey(&self->_preferences.m_storage.data[40], &WebKit::WebPreferencesKey::modelElementEnabledKey(void)::key, v2);
}

- (BOOL)_modelNoPortalAttributeEnabled
{
  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::modelNoPortalAttributeEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::modelNoPortalAttributeEnabledKey(void)::key = WebKit::WebPreferencesKey::modelNoPortalAttributeEnabledKey(void)::$_0::operator() const(void)::impl;
  }

  return WebKit::WebPreferencesStore::getBoolValueForKey(&self->_preferences.m_storage.data[40], &WebKit::WebPreferencesKey::modelNoPortalAttributeEnabledKey(void)::key, v2);
}

- (BOOL)_siteIsolationEnabled
{
  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::siteIsolationEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::siteIsolationEnabledKey(void)::key = WebKit::WebPreferencesKey::siteIsolationEnabledKey(void)::$_0::operator() const(void)::impl;
  }

  return WebKit::WebPreferencesStore::getBoolValueForKey(&self->_preferences.m_storage.data[40], &WebKit::WebPreferencesKey::siteIsolationEnabledKey(void)::key, v2);
}

- (BOOL)javaScriptEnabled
{
  if (self[2]._preferences.m_storage.data[10] == 1)
  {
    return self[2]._preferences.m_storage.data[9];
  }

  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::javaScriptEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::javaScriptEnabledKey(void)::key = WebKit::WebPreferencesKey::javaScriptEnabledKey(void)::$_0::operator() const(void)::impl;
  }

  return WebKit::WebPreferencesStore::getBoolValueForKey(&self->_preferences.m_storage.data[40], &WebKit::WebPreferencesKey::javaScriptEnabledKey(void)::key, v2);
}

@end