uint64_t WebKit::WebPreferences::setDataDetectorTypes(atomic_uint **this, const unsigned int *a2)
{
  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::dataDetectorTypesKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::dataDetectorTypesKey(void)::key = WebKit::WebPreferencesKey::dataDetectorTypesKey(void)::$_0::operator() const(void)::impl;
  }

  result = WebKit::WebPreferencesStore::setUInt32ValueForKey((this + 5), &WebKit::WebPreferencesKey::dataDetectorTypesKey(void)::key, *a2);
  if (result)
  {
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::dataDetectorTypesKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::dataDetectorTypesKey(void)::key = WebKit::WebPreferencesKey::dataDetectorTypesKey(void)::$_0::operator() const(void)::impl;
    }

    WebKit::WebPreferences::platformUpdateUInt32ValueForKey(this, &WebKit::WebPreferencesKey::dataDetectorTypesKey(void)::key, *a2);

    return WebKit::WebPreferences::update(this);
  }

  return result;
}

void *WebKit::WebPreferences::setAllowsAirPlayForMediaPlayback(atomic_uint **this, const BOOL *a2)
{
  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::allowsAirPlayForMediaPlaybackKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::allowsAirPlayForMediaPlaybackKey(void)::key = WebKit::WebPreferencesKey::allowsAirPlayForMediaPlaybackKey(void)::$_0::operator() const(void)::impl;
  }

  result = WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::allowsAirPlayForMediaPlaybackKey(void)::key, *a2);
  if (result)
  {
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::allowsAirPlayForMediaPlaybackKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::allowsAirPlayForMediaPlaybackKey(void)::key = WebKit::WebPreferencesKey::allowsAirPlayForMediaPlaybackKey(void)::$_0::operator() const(void)::impl;
    }

    v5 = *a2;

    return WebKit::WebPreferences::updateBoolValueForKey(this, &WebKit::WebPreferencesKey::allowsAirPlayForMediaPlaybackKey(void)::key, v5, 0);
  }

  return result;
}

void *WebKit::WebPreferences::setApplePayEnabled(atomic_uint **this, const BOOL *a2)
{
  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::applePayEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::applePayEnabledKey(void)::key = WebKit::WebPreferencesKey::applePayEnabledKey(void)::$_0::operator() const(void)::impl;
  }

  result = WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::applePayEnabledKey(void)::key, *a2);
  if (result)
  {
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::applePayEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::applePayEnabledKey(void)::key = WebKit::WebPreferencesKey::applePayEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    v5 = *a2;

    return WebKit::WebPreferences::updateBoolValueForKey(this, &WebKit::WebPreferencesKey::applePayEnabledKey(void)::key, v5, 0);
  }

  return result;
}

uint64_t API::PageConfiguration::applePayEnabled(API::PageConfiguration *this)
{
  v1 = *(this + 503);
  if ((v1 & 0x100) != 0)
  {
    return v1 & 1;
  }

  v2 = API::PageConfiguration::Data::LazyInitializedRef<WebKit::WebPreferences,&API::PageConfiguration::Data::createWebPreferences>::get(this + 4);
  CFRetain(*(v2 + 1));
  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::applePayEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::applePayEnabledKey(void)::key = WebKit::WebPreferencesKey::applePayEnabledKey(void)::$_0::operator() const(void)::impl;
  }

  BoolValueForKey = WebKit::WebPreferencesStore::getBoolValueForKey((v2 + 40), &WebKit::WebPreferencesKey::applePayEnabledKey(void)::key, v3);
  CFRelease(*(v2 + 1));
  return BoolValueForKey;
}

void *WebKit::WebPreferences::setNeedsStorageAccessFromFileURLsQuirk(atomic_uint **this, const BOOL *a2)
{
  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::needsStorageAccessFromFileURLsQuirkKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::needsStorageAccessFromFileURLsQuirkKey(void)::key = WebKit::WebPreferencesKey::needsStorageAccessFromFileURLsQuirkKey(void)::$_0::operator() const(void)::impl;
  }

  result = WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::needsStorageAccessFromFileURLsQuirkKey(void)::key, *a2);
  if (result)
  {
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::needsStorageAccessFromFileURLsQuirkKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::needsStorageAccessFromFileURLsQuirkKey(void)::key = WebKit::WebPreferencesKey::needsStorageAccessFromFileURLsQuirkKey(void)::$_0::operator() const(void)::impl;
    }

    v5 = *a2;

    return WebKit::WebPreferences::updateBoolValueForKey(this, &WebKit::WebPreferencesKey::needsStorageAccessFromFileURLsQuirkKey(void)::key, v5, 0);
  }

  return result;
}

void sub_19D5C6F6C(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v10, a2);
  }

  _Unwind_Resume(exception_object);
}

void *WebKit::WebPreferences::setMediaContentTypesRequiringHardwareSupport(atomic_uint **this, const WTF::StringImpl **a2)
{
  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::mediaContentTypesRequiringHardwareSupportKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::mediaContentTypesRequiringHardwareSupportKey(void)::key = WebKit::WebPreferencesKey::mediaContentTypesRequiringHardwareSupportKey(void)::$_0::operator() const(void)::impl;
  }

  result = WebKit::WebPreferencesStore::setStringValueForKey((this + 5), &WebKit::WebPreferencesKey::mediaContentTypesRequiringHardwareSupportKey(void)::key, a2);
  if (result)
  {
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::mediaContentTypesRequiringHardwareSupportKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::mediaContentTypesRequiringHardwareSupportKey(void)::key = WebKit::WebPreferencesKey::mediaContentTypesRequiringHardwareSupportKey(void)::$_0::operator() const(void)::impl;
    }

    WebKit::WebPreferences::platformUpdateStringValueForKey(this, &WebKit::WebPreferencesKey::mediaContentTypesRequiringHardwareSupportKey(void)::key, a2);

    return WebKit::WebPreferences::update(this);
  }

  return result;
}

uint64_t WebKit::WebPreferencesStore::setStringValueForKey(WebKit::WebPreferencesStore *this, WTF::StringImpl **a2, const WTF::StringImpl **a3)
{
  WebKit::valueForKey<WTF::String>(this, this + 24, a2, &v16);
  v6 = v16;
  v9 = WTF::equal(v16, *a3, v7);
  if (v9)
  {
    goto LABEL_7;
  }

  v10 = *a3;
  if (*a3)
  {
    atomic_fetch_add_explicit(v10, 2u, memory_order_relaxed);
  }

  v14 = v10;
  v15 = 0;
  WTF::HashMap<WTF::String,mpark::variant<WTF::String,BOOL,unsigned int,double>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<mpark::variant<WTF::String,BOOL,unsigned int,double>>,WTF::MemoryCompactRobinHoodHashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::inlineSet<WTF::String const&,mpark::variant<WTF::String,BOOL,unsigned int,double>>(this, a2, &v14, &v13);
  if (!v15 && (v11 = v14, v14 = 0, v11) && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v11, v8);
    if (!v6)
    {
      return v9 ^ 1u;
    }
  }

  else
  {
LABEL_7:
    if (!v6)
    {
      return v9 ^ 1u;
    }
  }

  if (atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v6, v8);
  }

  return v9 ^ 1u;
}

void *WebKit::WebPreferences::setAllowMediaContentTypesRequiringHardwareSupportAsFallback(atomic_uint **this, const BOOL *a2)
{
  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::allowMediaContentTypesRequiringHardwareSupportAsFallbackKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::allowMediaContentTypesRequiringHardwareSupportAsFallbackKey(void)::key = WebKit::WebPreferencesKey::allowMediaContentTypesRequiringHardwareSupportAsFallbackKey(void)::$_0::operator() const(void)::impl;
  }

  result = WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::allowMediaContentTypesRequiringHardwareSupportAsFallbackKey(void)::key, *a2);
  if (result)
  {
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::allowMediaContentTypesRequiringHardwareSupportAsFallbackKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::allowMediaContentTypesRequiringHardwareSupportAsFallbackKey(void)::key = WebKit::WebPreferencesKey::allowMediaContentTypesRequiringHardwareSupportAsFallbackKey(void)::$_0::operator() const(void)::impl;
    }

    v5 = *a2;

    return WebKit::WebPreferences::updateBoolValueForKey(this, &WebKit::WebPreferencesKey::allowMediaContentTypesRequiringHardwareSupportAsFallbackKey(void)::key, v5, 0);
  }

  return result;
}

uint64_t WebKit::WebPreferencesStore::getBoolValueForKey(WebKit::WebPreferencesStore *this, const WTF::StringImpl **a2, const WTF::StringImpl *a3)
{
  {
    WebKit::BOOLTestRunnerOverridesMap(void)::map = 0;
  }

  v5 = WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,BOOL>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,BOOL>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,BOOL,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<BOOL>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WTF::String,BOOL,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<BOOL>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::String>>,(WTF::ShouldValidateKey)1,WTF::String>(&WebKit::BOOLTestRunnerOverridesMap(void)::map, a2, a3);
  {
    v6 = WebKit::BOOLTestRunnerOverridesMap(void)::map;
    if (WebKit::BOOLTestRunnerOverridesMap(void)::map)
    {
      v6 = WebKit::BOOLTestRunnerOverridesMap(void)::map + 16 * *(WebKit::BOOLTestRunnerOverridesMap(void)::map - 4);
    }
  }

  else
  {
    v6 = 0;
    WebKit::BOOLTestRunnerOverridesMap(void)::map = 0;
  }

  if (v6 != v5)
  {
    return *(v5 + 8);
  }

  return WebKit::valueForKey<BOOL>(this, this + 24, a2);
}

void *WebKit::WebPreferences::setColorFilterEnabled(atomic_uint **this, const BOOL *a2)
{
  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::colorFilterEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::colorFilterEnabledKey(void)::key = WebKit::WebPreferencesKey::colorFilterEnabledKey(void)::$_0::operator() const(void)::impl;
  }

  result = WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::colorFilterEnabledKey(void)::key, *a2);
  if (result)
  {
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::colorFilterEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::colorFilterEnabledKey(void)::key = WebKit::WebPreferencesKey::colorFilterEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    v5 = *a2;

    return WebKit::WebPreferences::updateBoolValueForKey(this, &WebKit::WebPreferencesKey::colorFilterEnabledKey(void)::key, v5, 0);
  }

  return result;
}

void *WebKit::WebPreferences::setUndoManagerAPIEnabled(atomic_uint **this, const BOOL *a2)
{
  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::undoManagerAPIEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::undoManagerAPIEnabledKey(void)::key = WebKit::WebPreferencesKey::undoManagerAPIEnabledKey(void)::$_0::operator() const(void)::impl;
  }

  result = WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::undoManagerAPIEnabledKey(void)::key, *a2);
  if (result)
  {
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::undoManagerAPIEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::undoManagerAPIEnabledKey(void)::key = WebKit::WebPreferencesKey::undoManagerAPIEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    v5 = *a2;

    return WebKit::WebPreferences::updateBoolValueForKey(this, &WebKit::WebPreferencesKey::undoManagerAPIEnabledKey(void)::key, v5, 1);
  }

  return result;
}

void *WebKit::WebPreferences::setAppHighlightsEnabled(atomic_uint **this, const BOOL *a2)
{
  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::appHighlightsEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::appHighlightsEnabledKey(void)::key = WebKit::WebPreferencesKey::appHighlightsEnabledKey(void)::$_0::operator() const(void)::impl;
  }

  result = WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::appHighlightsEnabledKey(void)::key, *a2);
  if (result)
  {
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::appHighlightsEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::appHighlightsEnabledKey(void)::key = WebKit::WebPreferencesKey::appHighlightsEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    v5 = *a2;

    return WebKit::WebPreferences::updateBoolValueForKey(this, &WebKit::WebPreferencesKey::appHighlightsEnabledKey(void)::key, v5, 1);
  }

  return result;
}

void *WebKit::WebPreferences::setLegacyEncryptedMediaAPIEnabled(atomic_uint **this, const BOOL *a2)
{
  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::legacyEncryptedMediaAPIEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::legacyEncryptedMediaAPIEnabledKey(void)::key = WebKit::WebPreferencesKey::legacyEncryptedMediaAPIEnabledKey(void)::$_0::operator() const(void)::impl;
  }

  result = WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::legacyEncryptedMediaAPIEnabledKey(void)::key, *a2);
  if (result)
  {
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::legacyEncryptedMediaAPIEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::legacyEncryptedMediaAPIEnabledKey(void)::key = WebKit::WebPreferencesKey::legacyEncryptedMediaAPIEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    v5 = *a2;

    return WebKit::WebPreferences::updateBoolValueForKey(this, &WebKit::WebPreferencesKey::legacyEncryptedMediaAPIEnabledKey(void)::key, v5, 0);
  }

  return result;
}

void *WebKit::WebPreferences::setServiceWorkerEntitlementDisabledForTesting(atomic_uint **this, const BOOL *a2)
{
  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::serviceWorkerEntitlementDisabledForTestingKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::serviceWorkerEntitlementDisabledForTestingKey(void)::key = WebKit::WebPreferencesKey::serviceWorkerEntitlementDisabledForTestingKey(void)::$_0::operator() const(void)::impl;
  }

  result = WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::serviceWorkerEntitlementDisabledForTestingKey(void)::key, *a2);
  if (result)
  {
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::serviceWorkerEntitlementDisabledForTestingKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::serviceWorkerEntitlementDisabledForTestingKey(void)::key = WebKit::WebPreferencesKey::serviceWorkerEntitlementDisabledForTestingKey(void)::$_0::operator() const(void)::impl;
    }

    v5 = *a2;

    return WebKit::WebPreferences::updateBoolValueForKey(this, &WebKit::WebPreferencesKey::serviceWorkerEntitlementDisabledForTestingKey(void)::key, v5, 0);
  }

  return result;
}

uint64_t WebKit::WebPreferences::setSampledPageTopColorMaxDifference(atomic_uint **this, double *a2)
{
  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::sampledPageTopColorMaxDifferenceKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::sampledPageTopColorMaxDifferenceKey(void)::key = WebKit::WebPreferencesKey::sampledPageTopColorMaxDifferenceKey(void)::$_0::operator() const(void)::impl;
  }

  result = WebKit::WebPreferencesStore::setDoubleValueForKey((this + 5), &WebKit::WebPreferencesKey::sampledPageTopColorMaxDifferenceKey(void)::key, *a2);
  if (result)
  {
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::sampledPageTopColorMaxDifferenceKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::sampledPageTopColorMaxDifferenceKey(void)::key = WebKit::WebPreferencesKey::sampledPageTopColorMaxDifferenceKey(void)::$_0::operator() const(void)::impl;
    }

    WebKit::WebPreferences::platformUpdateDoubleValueForKey(this, &WebKit::WebPreferencesKey::sampledPageTopColorMaxDifferenceKey(void)::key, *a2);

    return WebKit::WebPreferences::update(this);
  }

  return result;
}

void WebKit::WebPreferences::platformUpdateDoubleValueForKey(atomic_uint **this, atomic_uint **a2, double a3)
{
  if (this[2])
  {
    v6 = [MEMORY[0x1E695E000] standardUserDefaults];
    WebKit::makeKey(&v8, this[2], this + 3, a2);
    [v6 setDouble:v8 forKey:a3];
    v7 = v8;
    v8 = 0;
    if (v7)
    {
    }
  }
}

void sub_19D5C78F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

uint64_t WebKit::WebPreferences::setSampledPageTopColorMinHeight(atomic_uint **this, double *a2)
{
  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::sampledPageTopColorMinHeightKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::sampledPageTopColorMinHeightKey(void)::key = WebKit::WebPreferencesKey::sampledPageTopColorMinHeightKey(void)::$_0::operator() const(void)::impl;
  }

  result = WebKit::WebPreferencesStore::setDoubleValueForKey((this + 5), &WebKit::WebPreferencesKey::sampledPageTopColorMinHeightKey(void)::key, *a2);
  if (result)
  {
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::sampledPageTopColorMinHeightKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::sampledPageTopColorMinHeightKey(void)::key = WebKit::WebPreferencesKey::sampledPageTopColorMinHeightKey(void)::$_0::operator() const(void)::impl;
    }

    WebKit::WebPreferences::platformUpdateDoubleValueForKey(this, &WebKit::WebPreferencesKey::sampledPageTopColorMinHeightKey(void)::key, *a2);

    return WebKit::WebPreferences::update(this);
  }

  return result;
}

void *WebKit::WebPreferences::setAllowTestOnlyIPC(atomic_uint **this, const BOOL *a2)
{
  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::allowTestOnlyIPCKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::allowTestOnlyIPCKey(void)::key = WebKit::WebPreferencesKey::allowTestOnlyIPCKey(void)::$_0::operator() const(void)::impl;
  }

  result = WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::allowTestOnlyIPCKey(void)::key, *a2);
  if (result)
  {
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::allowTestOnlyIPCKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::allowTestOnlyIPCKey(void)::key = WebKit::WebPreferencesKey::allowTestOnlyIPCKey(void)::$_0::operator() const(void)::impl;
    }

    v5 = *a2;

    return WebKit::WebPreferences::updateBoolValueForKey(this, &WebKit::WebPreferencesKey::allowTestOnlyIPCKey(void)::key, v5, 0);
  }

  return result;
}

void *WebKit::WebPreferences::setUsesSingleWebProcess(atomic_uint **this, const BOOL *a2)
{
  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::usesSingleWebProcessKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::usesSingleWebProcessKey(void)::key = WebKit::WebPreferencesKey::usesSingleWebProcessKey(void)::$_0::operator() const(void)::impl;
  }

  result = WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::usesSingleWebProcessKey(void)::key, *a2);
  if (result)
  {
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::usesSingleWebProcessKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::usesSingleWebProcessKey(void)::key = WebKit::WebPreferencesKey::usesSingleWebProcessKey(void)::$_0::operator() const(void)::impl;
    }

    v5 = *a2;

    return WebKit::WebPreferences::updateBoolValueForKey(this, &WebKit::WebPreferencesKey::usesSingleWebProcessKey(void)::key, v5, 0);
  }

  return result;
}

void sub_19D5C83DC(_Unwind_Exception *exception_object, WTF::StringImpl *a2)
{
  v4 = *(v2 + 72);
  *(v2 + 72) = 0;
  if (v4)
  {
    if (atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v4, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

WebKit::FocusedElementInformation *WebKit::FocusedElementInformation::FocusedElementInformation(WebKit::FocusedElementInformation *this)
{
  *(this + 6) = 0;
  *(this + 7) = 0;
  *(this + 8) = 0;
  *(this + 10) = 0;
  *(this + 12) = 0;
  *this = 0u;
  *(this + 1) = 0u;
  *(this + 4) = 0;
  *(this + 104) = xmmword_19E7042F0;
  *(this + 120) = xmmword_19E704300;
  *(this + 136) = 0;
  *(this + 148) = 0;
  *(this + 140) = 0;
  *(this + 156) = 0;
  *(this + 21) = 0;
  *(this + 22) = 0;
  *(this + 20) = 0;
  *(this + 46) = 0;
  *(this + 24) = 0;
  *(this + 25) = 0;
  *(this + 26) = 0;
  *(this + 54) = -1;
  *(this + 28) = 0;
  *(this + 29) = 0;
  *(this + 30) = 0;
  *(this + 124) = 0;
  WTF::URL::URL((this + 256));
  *(this + 148) = 0;
  *(this + 42) = 0;
  *(this + 344) = 0;
  *(this + 39) = 0;
  *(this + 40) = 0;
  *(this + 38) = 0;
  *(this + 164) = 0;
  *(this + 44) = 0;
  *(this + 45) = 0;
  *(this + 184) = 0;
  *(this + 370) = 1;
  *(this + 416) = 0;
  *(this + 768) = 0;
  *(this + 371) = 0;
  *(this + 374) = 0;
  *(this + 49) = 0;
  *(this + 50) = 0;
  *(this + 48) = 0;
  return this;
}

void sub_19D5C8504(_Unwind_Exception *a1, WTF::StringImpl *a2)
{
  v7 = *(v2 + 240);
  *(v2 + 240) = 0;
  if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v7, a2);
  }

  v8 = *v5;
  *v5 = 0;
  if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v8, a2);
  }

  WTF::Vector<std::pair<WTF::String,WebCore::ContentSecurityPolicyHeaderType>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v3, a2);
  v10 = *v4;
  *v4 = 0;
  if (v10)
  {
    if (atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v10, v9);
    }
  }

  _Unwind_Resume(a1);
}

double WebKit::WKSelectionDrawingInfo::WKSelectionDrawingInfo(WebKit::WKSelectionDrawingInfo *this)
{
  *this = 0;
  *(this + 12) = 0;
  *(this + 4) = 0;
  *(this + 80) = 0;
  result = 0.0;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 49) = 0u;
  return result;
}

WebKit::ApplicationStateTracker *WebKit::ApplicationStateTracker::ApplicationStateTracker(WebKit::ApplicationStateTracker *this, UIView *a2, objc_selector *a3, objc_selector *a4, objc_selector *a5, objc_selector *a6)
{
  *this = 0;
  *(this + 2) = 1;
  *(this + 2) = 0;
  objc_initWeak(this + 2, a2);
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  v11 = [[WKUIWindowSceneObserver alloc] initWithParent:this];
  *(this + 104) = 0u;
  *(this + 6) = v11;
  *(this + 56) = 0;
  *(this + 8) = a3;
  *(this + 9) = a4;
  *(this + 10) = a5;
  *(this + 11) = a6;
  *(this + 96) = 1;
  *(this + 120) = 0u;
  {
    WebKit::allApplicationStateTrackers(void)::trackers = 0;
    *&dword_1ED643398 = 1;
    goto LABEL_15;
  }

  if (++dword_1ED643398 > dword_1ED64339C)
  {
    v13 = WebKit::allApplicationStateTrackers(void)::trackers;
    if (WebKit::allApplicationStateTrackers(void)::trackers)
    {
      v14 = *(WebKit::allApplicationStateTrackers(void)::trackers - 4);
      if (!v14)
      {
LABEL_16:
        v20 = *(v13 - 4);
        if (6 * *(v13 - 12) < v20 && v20 > 8)
        {
          WTF::HashTable<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::FastMalloc>::shrinkToBestSize(&WebKit::allApplicationStateTrackers(void)::trackers);
          v13 = WebKit::allApplicationStateTrackers(void)::trackers;
          dword_1ED643398 = 0;
          if (!WebKit::allApplicationStateTrackers(void)::trackers)
          {
            goto LABEL_23;
          }
        }

        else
        {
          dword_1ED643398 = 0;
        }

        LODWORD(v13) = *(v13 - 12);
        if (v13 > 0x7FFFFFFE)
        {
          v22 = -2;
          goto LABEL_25;
        }

LABEL_23:
        v22 = 2 * v13;
LABEL_25:
        dword_1ED64339C = v22;
        goto LABEL_26;
      }

      v15 = 0;
      v16 = 8 * v14;
      v17 = WebKit::allApplicationStateTrackers(void)::trackers - 8;
      do
      {
        v18 = *(v17 + v16);
        if ((v18 + 1) >= 2 && !*(v18 + 8))
        {
          *(v17 + v16) = 0;
          if (atomic_fetch_add(v18, 0xFFFFFFFF) == 1)
          {
            atomic_store(1u, v18);
            WTF::fastFree(v18, v12);
          }

          *(v17 + v16) = -1;
          ++v15;
        }

        v16 -= 8;
      }

      while (v16);
      v13 = WebKit::allApplicationStateTrackers(void)::trackers;
      if (v15)
      {
        v19 = *(WebKit::allApplicationStateTrackers(void)::trackers - 12) - v15;
        *(WebKit::allApplicationStateTrackers(void)::trackers - 16) += v15;
        *(v13 - 12) = v19;
        goto LABEL_16;
      }

      if (WebKit::allApplicationStateTrackers(void)::trackers)
      {
        goto LABEL_16;
      }
    }

LABEL_15:
    LODWORD(v13) = 0;
    dword_1ED643398 = 0;
    goto LABEL_23;
  }

LABEL_26:
  WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(this, this);
  v23 = *this;
  atomic_fetch_add(*this, 1u);
  v28 = v23;
  WTF::HashTable<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::FastMalloc>::add<(WTF::ShouldValidateKey)1>(&WebKit::allApplicationStateTrackers(void)::trackers, &v28, &v27);
  v25 = v28;
  v28 = 0;
  if (v25 && atomic_fetch_add(v25, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v25);
    WTF::fastFree(v25, v24);
  }

  return this;
}

void sub_19D5C8834(_Unwind_Exception *a1, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, WTF *a12)
{
  if (a12 && atomic_fetch_add(a12, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, a12);
    WTF::fastFree(a12, a2);
  }

  objc_destroyWeak(v17 + 3);
  objc_destroyWeak(v18);
  objc_destroyWeak(v17 + 1);
  objc_destroyWeak(v17);
  v20 = *(v12 + 48);
  *(v12 + 48) = 0;
  if (v20)
  {
  }

  objc_destroyWeak(v16);
  objc_destroyWeak(v15);
  objc_destroyWeak(v14);
  objc_destroyWeak(v13);
  if (*(v12 + 8) == 1)
  {
    WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::~WeakPtrFactory(v12, v21);
    _Unwind_Resume(a1);
  }

  __break(0xC471u);
}

WebKit::PageClientImpl *WebKit::PageClientImpl::PageClientImpl(WebKit::PageClientImpl *this, WKContentView *a2, WKWebView *a3)
{
  v5 = WebKit::PageClientImplCocoa::PageClientImplCocoa(this, a3);
  *(v5 + 12) = 0;
  *v5 = &unk_1F110CAB8;
  *(v5 + 5) = &unk_1F110D308;
  *(v5 + 7) = 0;
  objc_initWeak(v5 + 7, a2);
  *(this + 8) = objc_alloc_init(WKEditorUndoTarget);
  return this;
}

void sub_19D5C89A4(_Unwind_Exception *a1)
{
  objc_destroyWeak(v2);
  WebKit::PageClientImplCocoa::~PageClientImplCocoa(v1);
  _Unwind_Resume(a1);
}

WebKit::PageClientImplCocoa *WebKit::PageClientImplCocoa::PageClientImplCocoa(WebKit::PageClientImplCocoa *this, WKWebView *a2)
{
  *(this + 1) = 0;
  *this = &unk_1F10FFD98;
  *(this + 2) = 0;
  objc_initWeak(this + 2, a2);
  v4 = WebCore::AlternativeTextUIController::operator new(0x10, v3);
  *v4 = 0;
  v4[1] = 0;
  *(this + 3) = v4;
  *(this + 4) = 0;
  return this;
}

void sub_19D5C8A38(_Unwind_Exception *a1)
{
  objc_destroyWeak(v2);
  WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::~WeakPtrFactory(v1, v4);
  _Unwind_Resume(a1);
}

uint64_t WebCore::AlternativeTextUIController::operator new(WebCore::AlternativeTextUIController *this, void *a2)
{
  if (this == 16 && *MEMORY[0x1E69E26E0])
  {
    return bmalloc::api::tzoneAllocateNonCompact(*MEMORY[0x1E69E26E0], a2);
  }

  else
  {
    return MEMORY[0x1EEE596E8]();
  }
}

atomic_uint *WebKit::WebProcessPool::createWebPage@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v4 = a3;
  v75 = *MEMORY[0x1E69E9840];
  v8 = *a3;
  if (!*(*a3 + 120))
  {
    v9 = *(a1 + 184);
    CFRetain(*(v9 + 8));
    v10 = *(v8 + 120);
    *(v8 + 120) = v9;
    if (v10)
    {
      CFRelease(*(v10 + 8));
    }
  }

  v11 = API::PageConfiguration::lockdownModeEnabled(*v4);
  v12 = *v4;
  v13 = *(*v4 + 128);
  if (v13 && (v14 = *(v13 + 8)) != 0)
  {
    v15 = v14 - 16;
    CFRetain(*(v14 - 8));
    v16 = 0;
    v12 = *v4;
  }

  else
  {
    v15 = 0;
    v16 = 1;
  }

  v17 = *(v12 + 17);
  v64 = v16;
  if (*(v17 + 32) != 1)
  {
    goto LABEL_83;
  }

  v18 = API::PageConfiguration::Data::LazyInitializedRef<WebKit::WebPreferences,&API::PageConfiguration::Data::createWebPreferences>::get(v12 + 4);
  CFRetain(*(v18 + 1));
  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::siteIsolationEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::siteIsolationEnabledKey(void)::key = WebKit::WebPreferencesKey::siteIsolationEnabledKey(void)::$_0::operator() const(void)::impl;
  }

  BoolValueForKey = WebKit::WebPreferencesStore::getBoolValueForKey((v18 + 40), &WebKit::WebPreferencesKey::siteIsolationEnabledKey(void)::key, v19);
  CFRelease(*(v18 + 1));
  if (!BoolValueForKey)
  {
LABEL_83:
    if ((v16 & 1) == 0 && (*(v15 + 865) & 1) == 0 && WebKit::WebPageProxy::hasSameGPUAndNetworkProcessPreferencesAs(v15, *v4))
    {
      v21 = WebKit::WebPageProxy::ensureRunningProcess(v15);
      v22 = (v21 + 16);
LABEL_25:
      atomic_fetch_add(v22, 1u);
      goto LABEL_36;
    }

    Load = API::PageConfiguration::delaysWebProcessLaunchUntilFirstLoad(*v4);
    v24 = qword_1ED6416A0;
    v25 = os_log_type_enabled(qword_1ED6416A0, OS_LOG_TYPE_DEFAULT);
    if (!Load)
    {
      if (v25)
      {
        LODWORD(buf) = 134217984;
        *(&buf + 4) = a1;
        _os_log_impl(&dword_19D52D000, v24, OS_LOG_TYPE_DEFAULT, "%p - WebProcessPool::createWebPage: Not delaying WebProcess launch", &buf, 0xCu);
      }

      v28 = API::PageConfiguration::websiteDataStore(*v4);
      CFRetain(*(v28 + 8));
      LOBYTE(buf) = 0;
      v74 = 0;
      WebKit::WebProcessPool::processForSite(a1, v28, &buf, v11, *v4, 0, &v65);
      v21 = v65;
      if (v74 == 1)
      {
        v30 = *(&buf + 1);
        *(&buf + 1) = 0;
        if (v30 && atomic_fetch_add_explicit(v30, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v30, v29);
        }

        v31 = buf;
        *&buf = 0;
        if (v31 && atomic_fetch_add_explicit(v31, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v31, v29);
        }
      }

      CFRelease(*(v28 + 8));
      goto LABEL_36;
    }

    if (v25)
    {
      LODWORD(buf) = 134217984;
      *(&buf + 4) = a1;
      _os_log_impl(&dword_19D52D000, v24, OS_LOG_TYPE_DEFAULT, "%p - WebProcessPool::createWebPage: delaying WebProcess launch until first load", &buf, 0xCu);
    }

    v26 = API::PageConfiguration::websiteDataStore(*v4);
    v27 = WebKit::WebProcessPool::dummyProcessProxy(a1, *(v26 + 24));
    if (!v27)
    {
LABEL_79:
      v61 = API::PageConfiguration::websiteDataStore(*v4);
      CFRetain(*(v61 + 8));
      v63 = WebKit::WebProcessProxy::operator new(0x4D8, v62);
      WebKit::WebProcessProxy::WebProcessProxy(v63, a1, v61, 0);
    }

    v21 = v27;
LABEL_24:
    v22 = (v21 + 16);
    goto LABEL_25;
  }

  if ((*(v17 + 32) & 1) == 0)
  {
LABEL_78:
    __break(1u);
    goto LABEL_79;
  }

  v21 = *(v17 + 8);
  if (v21)
  {
    goto LABEL_24;
  }

LABEL_36:
  v32 = API::PageConfiguration::Data::LazyInitializedRef<WebKit::WebUserContentControllerProxy,&API::PageConfiguration::Data::createWebUserContentControllerProxy>::get((*v4 + 24));
  CFRetain(*(v32 + 1));
  *(v21 + 1040) = *(*v4 + 312);
  v33 = API::Object::newObject(0x638uLL, 85);
  *a4 = WebKit::WebPageProxy::WebPageProxy(v33, a2, v21, v4);
  WebKit::WebProcessProxy::addExistingWebPage(v21, v33, 1);
  v34 = *(v33 + 46);
  CFRetain(*(v34 + 8));
  if ((*(a1 + 152) & 1) == 0)
  {
    std::optional<WebKit::WebPreferencesStore>::operator=[abi:sn200100]<WebKit::WebPreferencesStore const&,void>(a1 + 104, (*(v33 + 46) + 40));
    {
      WebKit::WebProcessPool::remoteWorkerProcesses(void)::processes = 0;
      *algn_1ED643608 = 0;
    }

    WTF::WeakHashSet<WebKit::ApplicationStateTracker,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::begin(&WebKit::WebProcessPool::remoteWorkerProcesses(void)::processes, &buf);
    if (WebKit::WebProcessPool::remoteWorkerProcesses(void)::processes)
    {
      v35 = *(WebKit::WebProcessPool::remoteWorkerProcesses(void)::processes - 4);
      v36 = WebKit::WebProcessPool::remoteWorkerProcesses(void)::processes + 8 * v35;
    }

    else
    {
      v36 = 0;
      v35 = 0;
    }

    v65 = &WebKit::WebProcessPool::remoteWorkerProcesses(void)::processes;
    v66 = v36;
    v67 = v36;
    v68 = v36;
    v69 = WebKit::WebProcessPool::remoteWorkerProcesses(void)::processes + 8 * v35;
    WTF::WeakHashSet<WebKit::RemoteLayerBackingStore,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::WeakHashSetConstIterator::skipEmptyBuckets(&v65);
    for (i = *(&buf + 1); *(&buf + 1) != v66; i = *(&buf + 1))
    {
      v4 = *(*i + 8);
      atomic_fetch_add((v4 + 16), 1u);
      if ((*(a1 + 152) & 1) == 0)
      {
        goto LABEL_78;
      }

      if (*(v4 + 896) == 1)
      {
        v39 = IPC::Encoder::operator new(0x238, v37);
        *v39 = 3087;
        *(v39 + 68) = 0;
        *(v39 + 70) = 0;
        *(v39 + 69) = 0;
        *(v39 + 2) = 0;
        *(v39 + 3) = 0;
        *(v39 + 1) = 0;
        IPC::Encoder::encodeHeader(v39);
        v72 = v39;
        IPC::ArgumentCoder<WTF::HashMap<WTF::String,mpark::variant<WTF::String,BOOL,unsigned int,double>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<mpark::variant<WTF::String,BOOL,unsigned int,double>>,WTF::MemoryCompactRobinHoodHashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,void>::encode<IPC::Encoder,WTF::HashMap<WTF::String,mpark::variant<WTF::String,BOOL,unsigned int,double>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<mpark::variant<WTF::String,BOOL,unsigned int,double>>,WTF::MemoryCompactRobinHoodHashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc> const&>(v39, (a1 + 104));
        IPC::ArgumentCoder<WTF::HashMap<WTF::String,mpark::variant<WTF::String,BOOL,unsigned int,double>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<mpark::variant<WTF::String,BOOL,unsigned int,double>>,WTF::MemoryCompactRobinHoodHashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,void>::encode<IPC::Encoder,WTF::HashMap<WTF::String,mpark::variant<WTF::String,BOOL,unsigned int,double>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<mpark::variant<WTF::String,BOOL,unsigned int,double>>,WTF::MemoryCompactRobinHoodHashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc> const&>(v39, (a1 + 128));
        LOBYTE(v70[0]) = 0;
        v71 = 0;
        WebKit::AuxiliaryProcessProxy::sendMessage(v4, &v72, 0, v70, 1);
        if (v71 == 1)
        {
          v40 = v70[0];
          v70[0] = 0;
          if (v40)
          {
            (*(*v40 + 8))(v40);
          }
        }

        v41 = v72;
        v72 = 0;
        if (v41)
        {
          IPC::Encoder::~Encoder(v41, v37);
          bmalloc::api::tzoneFree(v46, v47);
        }
      }

      if (*(v4 + 968) == 1)
      {
        v42 = IPC::Encoder::operator new(0x238, v37);
        *v42 = 3155;
        *(v42 + 68) = 0;
        *(v42 + 70) = 0;
        *(v42 + 69) = 0;
        *(v42 + 2) = 0;
        *(v42 + 3) = 0;
        *(v42 + 1) = 0;
        IPC::Encoder::encodeHeader(v42);
        v72 = v42;
        IPC::ArgumentCoder<WTF::HashMap<WTF::String,mpark::variant<WTF::String,BOOL,unsigned int,double>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<mpark::variant<WTF::String,BOOL,unsigned int,double>>,WTF::MemoryCompactRobinHoodHashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,void>::encode<IPC::Encoder,WTF::HashMap<WTF::String,mpark::variant<WTF::String,BOOL,unsigned int,double>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<mpark::variant<WTF::String,BOOL,unsigned int,double>>,WTF::MemoryCompactRobinHoodHashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc> const&>(v42, (a1 + 104));
        IPC::ArgumentCoder<WTF::HashMap<WTF::String,mpark::variant<WTF::String,BOOL,unsigned int,double>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<mpark::variant<WTF::String,BOOL,unsigned int,double>>,WTF::MemoryCompactRobinHoodHashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,void>::encode<IPC::Encoder,WTF::HashMap<WTF::String,mpark::variant<WTF::String,BOOL,unsigned int,double>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<mpark::variant<WTF::String,BOOL,unsigned int,double>>,WTF::MemoryCompactRobinHoodHashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc> const&>(v42, (a1 + 128));
        LOBYTE(v70[0]) = 0;
        v71 = 0;
        WebKit::AuxiliaryProcessProxy::sendMessage(v4, &v72, 0, v70, 1);
        if (v71 == 1)
        {
          v44 = v70[0];
          v70[0] = 0;
          if (v44)
          {
            (*(*v44 + 8))(v44);
          }
        }

        v45 = v72;
        v72 = 0;
        if (v45)
        {
          IPC::Encoder::~Encoder(v45, v43);
          bmalloc::api::tzoneFree(v48, v49);
        }
      }

      WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v4 + 16));
      WTF::WeakHashSet<WebKit::RemoteLayerBackingStore,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::WeakHashSetConstIterator::operator++(&buf);
    }
  }

  CFRetain(*(v32 + 1));
  v51 = *(a1 + 160);
  *(a1 + 160) = v32;
  if (v51)
  {
    CFRelease(*(v51 + 8));
  }

  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::processSwapOnCrossSiteNavigationEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::processSwapOnCrossSiteNavigationEnabledKey(void)::key = WebKit::WebPreferencesKey::processSwapOnCrossSiteNavigationEnabledKey(void)::$_0::operator() const(void)::impl;
  }

  v52 = WebKit::WebPreferencesStore::getBoolValueForKey((v34 + 40), &WebKit::WebPreferencesKey::processSwapOnCrossSiteNavigationEnabledKey(void)::key, v50);
  v53 = *(a1 + 48);
  CFRetain(*(v53 + 8));
  v55 = 86;
  if (*(v53 + 85))
  {
    v55 = 84;
  }

  v56 = *(v53 + v55);
  *(v53 + 86) = v52;
  if (v56 != *(v53 + v55))
  {
    WebKit::WebProcessCache::updateCapacity(*(a1 + 816), *(a1 + 48));
  }

  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::useGPUProcessForDOMRenderingEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::useGPUProcessForDOMRenderingEnabledKey(void)::key = WebKit::WebPreferencesKey::useGPUProcessForDOMRenderingEnabledKey(void)::$_0::operator() const(void)::impl;
  }

  if (WebKit::WebPreferencesStore::getBoolValueForKey((v34 + 40), &WebKit::WebPreferencesKey::useGPUProcessForDOMRenderingEnabledKey(void)::key, v54))
  {
    WebKit::WebProcessPool::ensureGPUProcess(a1, v57);
  }

  {
    if (WebKit::singleton(void)::singleton)
    {
      v58 = *(WebKit::singleton(void)::singleton + 8);
      if (v58)
      {
        v59 = (v58 + 16);
        atomic_fetch_add((v58 + 16), 1u);
        WebKit::GPUProcessProxy::updatePreferences(v58, v21);
        WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref(v59);
      }
    }
  }

  else
  {
    WebKit::singleton(void)::singleton = 0;
  }

  CFRelease(*(v53 + 8));
  if (v34)
  {
    CFRelease(*(v34 + 8));
  }

  CFRelease(*(v32 + 1));
  if ((v64 & 1) == 0)
  {
    CFRelease(*(v15 + 8));
  }

  return WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref(v21 + 4);
}

uint64_t API::PageConfiguration::delaysWebProcessLaunchUntilFirstLoad(WebKit::WebPreferences **this)
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = API::PageConfiguration::Data::LazyInitializedRef<WebKit::WebPreferences,&API::PageConfiguration::Data::createWebPreferences>::get(this + 4);
  CFRetain(v2[1].isa);
  {
    goto LABEL_29;
  }

  while (1)
  {
    BoolValueForKey = WebKit::WebPreferencesStore::getBoolValueForKey(&v2[5], &WebKit::WebPreferencesKey::siteIsolationEnabledKey(void)::key, v3);
    CFRelease(v2[1].isa);
    if (BoolValueForKey)
    {
      v6 = 1;
      return v6 & 1;
    }

    v7 = this[2];
    if (v7)
    {
      CFRetain(*(v7 + 8));
      {
        WebKit::allInspectorProcessPools(void)::allInspectorProcessPools = 0;
        unk_1ED643740 = 0;
      }

      if (WTF::WeakHashSet<WebKit::WebProcessPool,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::contains<WebKit::WebProcessPool>(&WebKit::allInspectorProcessPools(void)::allInspectorProcessPools, v7))
      {
        v8 = qword_1ED6416A0;
        if (os_log_type_enabled(qword_1ED6416A0, OS_LOG_TYPE_DEFAULT))
        {
          v15 = 134217984;
          v16 = this;
          _os_log_impl(&dword_19D52D000, v8, OS_LOG_TYPE_DEFAULT, "%p - PageConfiguration::delaysWebProcessLaunchUntilFirstLoad() -> false because of WebInspector pool", &v15, 0xCu);
        }

        CFRelease(*(v7 + 8));
        goto LABEL_11;
      }

      CFRelease(*(v7 + 8));
    }

    if (*(this + 314) != 1)
    {
      break;
    }

    v2 = qword_1ED6416A0;
    if (!os_log_type_enabled(qword_1ED6416A0, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_18;
    }

    v9 = "false";
    if (*(this + 313))
    {
      v9 = "true";
    }

    v15 = 134218242;
    v16 = this;
    v17 = 2082;
    v18 = v9;
    _os_log_impl(&dword_19D52D000, v2, OS_LOG_TYPE_DEFAULT, "%p - PageConfiguration::delaysWebProcessLaunchUntilFirstLoad() -> %{public}s because of explicit client value", &v15, 0x16u);
    v4 = *(this + 314);
    if (v4)
    {
LABEL_18:
      v6 = *(this + 313);
      return v6 & 1;
    }

    __break(1u);
LABEL_29:
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::siteIsolationEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::siteIsolationEnabledKey(void)::key = WebKit::WebPreferencesKey::siteIsolationEnabledKey(void)::$_0::operator() const(void)::impl;
    v4[2240] = 1;
  }

  v10 = this[2];
  if (v10)
  {
    CFRetain(*(v10 + 1));
    v11 = qword_1ED6416A0;
    if (os_log_type_enabled(qword_1ED6416A0, OS_LOG_TYPE_DEFAULT))
    {
      v12 = "false";
      if (*(v10 + 945))
      {
        v12 = "true";
      }

      v15 = 134218242;
      v16 = this;
      v17 = 2082;
      v18 = v12;
      _os_log_impl(&dword_19D52D000, v11, OS_LOG_TYPE_DEFAULT, "%p - PageConfiguration::delaysWebProcessLaunchUntilFirstLoad() -> %{public}s because of associated processPool value", &v15, 0x16u);
    }

    v6 = *(v10 + 945);
    CFRelease(*(v10 + 1));
  }

  else
  {
    v14 = qword_1ED6416A0;
    v6 = 0;
    if (os_log_type_enabled(qword_1ED6416A0, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 134218242;
      v16 = this;
      v17 = 2082;
      v18 = "false";
      _os_log_impl(&dword_19D52D000, v14, OS_LOG_TYPE_DEFAULT, "%p - PageConfiguration::delaysWebProcessLaunchUntilFirstLoad() -> %{public}s because of global default value", &v15, 0x16u);
LABEL_11:
      v6 = 0;
    }
  }

  return v6 & 1;
}

uint64_t API::PageConfiguration::lockdownModeEnabled(API::PageConfiguration *this)
{
  v1 = *(this + 6);
  if (v1)
  {
    v2 = CFRetain(*(v1 + 8));
    if (*(v1 + 161) == 1)
    {
      v3 = *(v1 + 160);
    }

    else if (HIBYTE(WebKit::cachedLockdownModeEnabledGlobally(void)::cachedLockdownModeEnabledGlobally) == 1)
    {
      v3 = WebKit::cachedLockdownModeEnabledGlobally(void)::cachedLockdownModeEnabledGlobally;
    }

    else
    {
      isLockdownModeEnabledBySystemIgnoringCaching = WebKit::isLockdownModeEnabledBySystemIgnoringCaching(v2);
      v3 = isLockdownModeEnabledBySystemIgnoringCaching;
      WebKit::cachedLockdownModeEnabledGlobally(void)::cachedLockdownModeEnabledGlobally = isLockdownModeEnabledBySystemIgnoringCaching | 0x100;
    }

    CFRelease(*(v1 + 8));
  }

  else if (HIBYTE(WebKit::cachedLockdownModeEnabledGlobally(void)::cachedLockdownModeEnabledGlobally) == 1)
  {
    v3 = WebKit::cachedLockdownModeEnabledGlobally(void)::cachedLockdownModeEnabledGlobally;
  }

  else
  {
    v6 = WebKit::isLockdownModeEnabledBySystemIgnoringCaching(this);
    v3 = v6;
    WebKit::cachedLockdownModeEnabledGlobally(void)::cachedLockdownModeEnabledGlobally = v6 | 0x100;
  }

  return v3 & 1;
}

uint64_t WebKit::AuxiliaryProcessProxy::wasTerminated(WebKit::AuxiliaryProcessProxy *this)
{
  v1 = *(this + 10);
  if (!v1)
  {
    return 1;
  }

  if (*(v1 + 104))
  {
    return 0;
  }

  if (!*(this + 11))
  {
    return 1;
  }

  v3 = *(v1 + 108);
  if (!v3)
  {
    return 1;
  }

  result = kill(v3, 0);
  if (result)
  {
    return *__error() == 3;
  }

  return result;
}

uint64_t WebKit::NetworkProcessProxy::sendXPCEndpointToProcess(WebKit::NetworkProcessProxy *this, WebKit::AuxiliaryProcessProxy *a2)
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = qword_1ED6416A0;
  if (os_log_type_enabled(qword_1ED6416A0, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a2 + 10);
    if (v5 && *(v5 + 104) == 1)
    {
      v6 = 0;
      v7 = *(a2 + 11);
    }

    else
    {
      v7 = *(a2 + 11);
      if (v7)
      {
        v6 = 1;
      }

      else
      {
        v6 = 2;
      }
    }

    v8 = *(this + 65);
    v16 = 134219008;
    v17 = this;
    v18 = 2048;
    v19 = a2;
    v20 = 1024;
    v21 = v6;
    v22 = 1024;
    v23 = v7 != 0;
    v24 = 2048;
    v25 = v8;
    _os_log_impl(&dword_19D52D000, v4, OS_LOG_TYPE_DEFAULT, "%p - NetworkProcessProxy::sendXPCEndpointToProcess(%p) state = %d has connection = %d XPC endpoint message = %p", &v16, 0x2Cu);
  }

  v9 = *(a2 + 10);
  if (v9)
  {
    result = 0;
    if ((*(v9 + 104) & 1) != 0 || !*(a2 + 11))
    {
      return result;
    }
  }

  else if (!*(a2 + 11))
  {
    return 0;
  }

  v11 = *(this + 65);
  if (!v11)
  {
    return 0;
  }

  v12 = v11;
  v13 = *(a2 + 11);
  if (!v13 || (v14 = *(v13 + 344)) == 0)
  {
    __break(0xC471u);
    JUMPOUT(0x19D5C9998);
  }

  v15 = v14;
  xpc_connection_send_message(v14, v11);

  return 1;
}

uint64_t WebKit::WebProcessProxy::logger(WebKit::WebProcessProxy *this)
{
  if (!*(this + 103))
  {
    v2 = WTF::fastMalloc(0x18);
    *(v2 + 8) = 1;
    *v2 = &unk_1F10FAF48;
    *(v2 + 12) = 1;
    *(v2 + 16) = this;
    atomic_fetch_add((v2 + 8), 1u);
    v3 = *(this + 103);
    *(this + 103) = v2;
    if (v3 && atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v3 + 2);
      (*(*v3 + 8))(v3);
    }

    isAlwaysOnLoggingAllowed = WebKit::WebProcessProxy::isAlwaysOnLoggingAllowed(this);
    if (*(v2 + 16) == this)
    {
      *(v2 + 12) = isAlwaysOnLoggingAllowed;
    }

    if (atomic_fetch_add((v2 + 8), 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, (v2 + 8));
      (*(*v2 + 8))(v2);
    }
  }

  return *(this + 103);
}

uint64_t WebKit::WebProcessProxy::isAlwaysOnLoggingAllowed(WebKit::WebProcessProxy *this)
{
  WebKit::WebProcessProxy::pages(this, &v9);
  if (v10)
  {
    v2 = v9;
    v3 = 8 * v10 - 8;
    do
    {
      v4 = *v2++;
      isAlwaysOnLoggingAllowed = WebKit::WebPageProxy::isAlwaysOnLoggingAllowed(v4);
      if (isAlwaysOnLoggingAllowed)
      {
        v6 = v3 == 0;
      }

      else
      {
        v6 = 1;
      }

      v3 -= 8;
    }

    while (!v6);
    v7 = isAlwaysOnLoggingAllowed;
  }

  else
  {
    v7 = 1;
  }

  WTF::Vector<WTF::Ref<WebKit::WebPageProxy,WTF::RawPtrTraits<WebKit::WebPageProxy>,WTF::DefaultRefDerefTraits<WebKit::WebPageProxy>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v9, v1);
  return v7;
}

void WebKit::WebProcessProxy::updateRegistrationWithDataStore(WebKit::WebProcessProxy *this)
{
  v1 = *(this + 100);
  if (v1)
  {
    CFRetain(*(v1 + 8));
    v4 = *(this + 74);
    if (v4 && *(v4 - 12) || WTF::WeakHashSet<WebKit::ProcessThrottlerActivity,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::computeSize(this + 616, v3))
    {
      WTF::WeakHashSet<WebKit::FrameLoadStateObserver,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::add<WebKit::FrameLoadStateObserver>(v1 + 328, this, v6);
    }

    else
    {
      WTF::WeakHashSet<WebKit::RemoteAudioSessionProxy,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::remove<WebKit::RemoteAudioSessionProxy>(v1 + 328, this);
    }

    v5 = *(v1 + 8);

    CFRelease(v5);
  }
}

uint64_t WTF::WeakHashSet<WebKit::RemoteAudioSessionProxy,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::remove<WebKit::RemoteAudioSessionProxy>(uint64_t a1, void *a2)
{
  v4 = *(a1 + 12);
  v5 = *(a1 + 8) + 1;
  *(a1 + 8) = v5;
  if (v5 > v4)
  {
    v6 = *a1;
    if (*a1)
    {
      v7 = *(v6 - 4);
      if (!v7)
      {
LABEL_15:
        v13 = *(v6 - 4);
        if (6 * *(v6 - 12) < v13 && v13 > 8)
        {
          WTF::HashTable<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::FastMalloc>::shrinkToBestSize(a1);
          v6 = *a1;
          *(a1 + 8) = 0;
          if (!v6)
          {
            goto LABEL_22;
          }
        }

        else
        {
          *(a1 + 8) = 0;
        }

        LODWORD(v6) = *(v6 - 12);
        if (v6 > 0x7FFFFFFE)
        {
          v15 = -2;
          goto LABEL_24;
        }

LABEL_22:
        v15 = 2 * v6;
LABEL_24:
        *(a1 + 12) = v15;
        goto LABEL_25;
      }

      v8 = 0;
      v9 = 8 * v7;
      v10 = v6 - 8;
      do
      {
        v11 = *(v10 + v9);
        if ((v11 + 1) >= 2 && !*(v11 + 8))
        {
          *(v10 + v9) = 0;
          if (atomic_fetch_add(v11, 0xFFFFFFFF) == 1)
          {
            atomic_store(1u, v11);
            WTF::fastFree(v11, a2);
          }

          *(v10 + v9) = -1;
          ++v8;
        }

        v9 -= 8;
      }

      while (v9);
      v6 = *a1;
      if (v8)
      {
        v12 = *(v6 - 12) - v8;
        *(v6 - 16) += v8;
        *(v6 - 12) = v12;
        goto LABEL_15;
      }

      if (v6)
      {
        goto LABEL_15;
      }
    }

    LODWORD(v6) = 0;
    *(a1 + 8) = 0;
    goto LABEL_22;
  }

LABEL_25:
  v16 = a2[1];
  if (!v16 || !*(v16 + 8))
  {
    return 0;
  }

  v20 = a2[1];
  v17 = WTF::HashTable<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::FastMalloc>::find<WTF::HashSetTranslator<WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>>,(WTF::ShouldValidateKey)1,WTF::DefaultWeakPtrImpl const*>(a1, &v20);
  if (*a1)
  {
    v18 = *a1 + 8 * *(*a1 - 4);
    if (v18 == v17)
    {
      return 0;
    }
  }

  else
  {
    if (!v17)
    {
      return 0;
    }

    v18 = 0;
  }

  if (v18 != v17)
  {
    WTF::HashTable<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::FastMalloc>::remove(a1, v17);
  }

  return 1;
}

void WebKit::WebProcessPool::webProcessDataStoreParameters(WebKit::WebProcessPool *this, WebKit::WebProcessProxy *a2, atomic_uchar *a3)
{
  v6 = WebKit::WebsiteDataStore::resolvedDirectories(a3);
  v7 = v6;
  v8 = *(v6 + 12);
  if (v8)
  {
    atomic_fetch_add_explicit(v8, 2u, memory_order_relaxed);
  }

  v9 = *(v6 + 13);
  if (v9)
  {
    atomic_fetch_add_explicit(v9, 2u, memory_order_relaxed);
    v10 = *(v9 + 4);
    if (v10 && (WebKit::SandboxExtension::createHandleWithoutResolvingPath(*(v9 + 8), (v10 | (((*(v9 + 16) >> 2) & 1) << 32)), 1, &v38), v39 == 1))
    {
      v11 = v38;
      v38 = 0;
      v40 = v11;
      WebKit::SandboxExtensionHandle::~SandboxExtensionHandle(&v38);
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
    v40 = 0;
  }

  v12 = WebKit::WebsiteDataStore::mediaKeysStorageSalt(a3);
  v13 = v12;
  v14 = *(a2 + 66);
  v34 = v11;
  if (v14 && *(v14 + 4))
  {
    WebKit::resolvePathForSandboxExtension(&v38);
    v15 = v38;
    if (!v38)
    {
      goto LABEL_20;
    }
  }

  else
  {
    if (*(a2 + 522) != 1 || (v15 = *(v7 + 10)) == 0)
    {
      v17 = v12;
      v18 = 0;
      v15 = 0;
      goto LABEL_22;
    }

    atomic_fetch_add_explicit(v15, 2u, memory_order_relaxed);
  }

  v16 = *(v15 + 1);
  if (v16)
  {
    v17 = v13;
    WebKit::SandboxExtension::createHandleWithoutResolvingPath(*(v15 + 1), (v16 | (((*(v15 + 4) >> 2) & 1) << 32)), 1, &v38);
    if (v39 == 1)
    {
      v18 = v38;
      v37 = v38;
      v38 = 0;
      WebKit::SandboxExtensionHandle::~SandboxExtensionHandle(&v38);
      goto LABEL_22;
    }

    goto LABEL_21;
  }

LABEL_20:
  v17 = v13;
LABEL_21:
  v18 = 0;
LABEL_22:
  WebKit::WebsiteDataStore::resolvedContainerTemporaryDirectory(a3, &v35);
  v20 = v35;
  if (!v35)
  {
    v32 = 0;
    goto LABEL_46;
  }

  if (!v35[1])
  {
    goto LABEL_42;
  }

  v21 = *(a2 + 128);
  if (v21)
  {
    v22 = *(v21 + 4);
    if (v22)
    {
      goto LABEL_39;
    }
  }

  WTF::FileSystemImpl::pathByAppendingComponent();
  if (v36)
  {
    v23 = *(v36 + 1);
    v24 = *(v36 + 1) | (((*(v36 + 4) >> 2) & 1) << 32);
  }

  else
  {
    v23 = 0;
    v24 = 0x100000000;
  }

  WebKit::resolveAndCreateReadWriteDirectoryForSandboxExtension(v23, v24, &v38);
  v26 = v38;
  v38 = 0;
  v27 = *(a2 + 128);
  *(a2 + 128) = v26;
  if (v27)
  {
    if (atomic_fetch_add_explicit(v27, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v27, v25);
    }

    v28 = v38;
    v38 = 0;
    if (v28 && atomic_fetch_add_explicit(v28, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v28, v25);
    }
  }

  v29 = v36;
  v36 = 0;
  if (v29 && atomic_fetch_add_explicit(v29, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v29, v25);
  }

  v21 = *(a2 + 128);
  if (v21)
  {
    v22 = *(v21 + 4);
LABEL_39:
    v30 = *(v21 + 8);
    v31 = v22 | (((*(v21 + 16) >> 2) & 1) << 32);
    goto LABEL_40;
  }

  v30 = 0;
  v31 = 0x100000000;
LABEL_40:
  WebKit::SandboxExtension::createHandleWithoutResolvingPath(v30, v31, 1, &v38);
  if (v39 == 1)
  {
    v32 = v38;
    v38 = 0;
    v36 = v32;
    WebKit::SandboxExtensionHandle::~SandboxExtensionHandle(&v38);
    goto LABEL_43;
  }

LABEL_42:
  v32 = 0;
LABEL_43:
  if (atomic_fetch_add_explicit(v20, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v20, v19);
  }

LABEL_46:
  *this = *(a3 + 3);
  *(this + 1) = v8;
  v40 = 0;
  *(this + 2) = v9;
  *(this + 3) = v34;
  *(this + 4) = v17;
  *(this + 5) = v15;
  v37 = 0;
  *(this + 6) = v18;
  *(this + 56) = WebKit::WebsiteDataStore::thirdPartyCookieBlockingMode(a3);
  WTF::HashTable<WebCore::RegistrableDomain,WebCore::RegistrableDomain,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::HashTable(this + 8, a2 + 119);
  WTF::HashTable<WebCore::RegistrableDomain,WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashMap<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::HashTable(this + 9, a2 + 120);
  v36 = 0;
  *(this + 10) = v32;
  if (a3[289])
  {
    LOBYTE(v33) = a3[289] == 2;
  }

  else
  {
    v33 = *(*(a3 + 28) + 544);
    if ((v33 & 0x100) == 0)
    {
      LOBYTE(v33) = WebKit::doesAppHaveTrackingPreventionEnabled(v33);
    }
  }

  *(this + 88) = v33 & 1;
  *(this + 89) = WebKit::WebsiteDataStore::isOptInCookiePartitioningEnabled(a3);
  WebKit::SandboxExtensionHandle::~SandboxExtensionHandle(&v36);
  WebKit::SandboxExtensionHandle::~SandboxExtensionHandle(&v37);
  WebKit::SandboxExtensionHandle::~SandboxExtensionHandle(&v40);
}

void *WebKit::WebsiteDataStore::resolvedContainerTemporaryDirectory@<X0>(void *this@<X0>, atomic_uint **a2@<X8>)
{
  v3 = this[34];
  if (v3)
  {
    goto LABEL_2;
  }

  v4 = this;
  WebKit::WebsiteDataStore::defaultResolvedContainerTemporaryDirectory(&v6);
  v3 = v6;
  this = v4[34];
  v4[34] = v6;
  if (this)
  {
    if (atomic_fetch_add_explicit(this, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      this = WTF::StringImpl::destroy(this, v5);
    }

    v3 = v4[34];
  }

  if (v3)
  {
LABEL_2:
    atomic_fetch_add_explicit(v3, 2u, memory_order_relaxed);
  }

  *a2 = v3;
  return this;
}

uint64_t WebKit::WebsiteDataStore::mediaKeysStorageSalt(atomic_uchar *this)
{
  v2 = 0;
  v3 = (this + 32);
  atomic_compare_exchange_strong_explicit(this + 32, &v2, 1u, memory_order_acquire, memory_order_acquire);
  if (v2)
  {
    MEMORY[0x19EB01E30](this + 32);
  }

  if (this[208])
  {
    result = *(this + 27);
    v5 = 1;
    atomic_compare_exchange_strong_explicit(this + 32, &v5, 0, memory_order_release, memory_order_relaxed);
    if (v5 != 1)
    {
      v6 = result;
      WTF::Lock::unlockSlow(v3);
      return v6;
    }
  }

  else
  {
    result = 506;
    __break(0xC471u);
  }

  return result;
}

void WebKit::WebsiteDataStore::defaultResolvedContainerTemporaryDirectory(uint64_t *a1@<X8>)
{
  if ((byte_1ED64278B & 1) == 0)
  {
    qword_1ED6427C0 = 0;
    byte_1ED64278B = 1;
  }

  if (atomic_load_explicit(&qword_1ED6427C8, memory_order_acquire) != -1)
  {
    v6 = &v4;
    v5 = &v6;
    std::__call_once(&qword_1ED6427C8, &v5, std::__call_once_proxy[abi:sn200100]<std::tuple<WebKit::WebsiteDataStore::defaultResolvedContainerTemporaryDirectory(void)::$_0 &&>>);
  }

  v3 = qword_1ED6427C0;
  if (qword_1ED6427C0)
  {
    atomic_fetch_add_explicit(qword_1ED6427C0, 2u, memory_order_relaxed);
  }

  *a1 = v3;
}

WTF::StringImpl *std::__call_once_proxy[abi:sn200100]<std::tuple<WebKit::WebsiteDataStore::defaultResolvedContainerTemporaryDirectory(void)::$_0 &&>>()
{
  v0 = NSTemporaryDirectory();
  MEMORY[0x19EB02040](&v8, v0);
  if (v8)
  {
    v1 = *(v8 + 1);
    v2 = *(v8 + 1) | (((*(v8 + 4) >> 2) & 1) << 32);
  }

  else
  {
    v1 = 0;
    v2 = 0x100000000;
  }

  WebKit::resolveAndCreateReadWriteDirectoryForSandboxExtension(v1, v2, &v9);
  v4 = v9;
  v9 = 0;
  v5 = qword_1ED6427C0;
  qword_1ED6427C0 = v4;
  if (v5)
  {
    if (atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v5, v3);
    }

    v6 = v9;
    v9 = 0;
    if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v6, v3);
    }
  }

  result = v8;
  v8 = 0;
  if (result)
  {
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v3);
    }
  }

  return result;
}

void sub_19D5CA3D8(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9)
{
  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t IPC::ArgumentCoder<WebKit::WebProcessDataStoreParameters,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  v4 = a2 + 32;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *a2);
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 8));
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 16));
  IPC::ArgumentCoder<WebKit::SandboxExtensionHandle,void>::encode(a1, (a2 + 24));
  for (i = 0; i != 8; ++i)
  {
    IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, *(v4 + i));
  }

  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 40));
  IPC::ArgumentCoder<WebKit::SandboxExtensionHandle,void>::encode(a1, (a2 + 48));
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, *(a2 + 56));
  IPC::ArgumentCoder<WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>,void>::encode<IPC::Encoder>(a1, (a2 + 64));
  IPC::ArgumentCoder<WTF::HashMap<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,void>::encode<IPC::Encoder,WTF::HashMap<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>(a1, (a2 + 72));
  IPC::ArgumentCoder<WebKit::SandboxExtensionHandle,void>::encode(a1, (a2 + 80));
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 88));

  return IPC::Encoder::operator<<<BOOL>(a1, (a2 + 89));
}

void WebKit::WebProcessDataStoreParameters::~WebProcessDataStoreParameters(WebKit::SandboxExtensionImpl **this)
{
  WebKit::SandboxExtensionHandle::~SandboxExtensionHandle(this + 10);
  v3 = this[9];
  if (v3)
  {
    WTF::HashTable<WebCore::RegistrableDomain,WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashMap<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::deallocateTable(v3, v2);
  }

  v4 = this[8];
  if (v4)
  {
    WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v4, v2);
  }

  WebKit::SandboxExtensionHandle::~SandboxExtensionHandle(this + 6);
  v6 = this[5];
  this[5] = 0;
  if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v6, v5);
  }

  WebKit::SandboxExtensionHandle::~SandboxExtensionHandle(this + 3);
  v8 = this[2];
  this[2] = 0;
  if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v8, v7);
  }

  v9 = this[1];
  this[1] = 0;
  if (v9)
  {
    if (atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v9, v7);
    }
  }
}

uint64_t WebKit::WebLockRegistryProxy::operator new(WebKit::WebLockRegistryProxy *this, void *a2)
{
  if (WebKit::WebLockRegistryProxy::s_heapRef)
  {
    return bmalloc::api::tzoneAllocateNonCompact(WebKit::WebLockRegistryProxy::s_heapRef, a2);
  }

  else
  {
    return WebKit::WebLockRegistryProxy::operatorNewSlow(0x20);
  }
}

WebKit::WebLockRegistryProxy *std::unique_ptr<WebKit::WebLockRegistryProxy>::reset[abi:sn200100](WebKit::WebLockRegistryProxy **a1, WebKit::WebLockRegistryProxy *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    WebKit::WebLockRegistryProxy::~WebLockRegistryProxy(result);

    return bmalloc::api::tzoneFree(v4, v5);
  }

  return result;
}

uint64_t WebKit::WebPageProxy::WebPageProxy(uint64_t a1, uint64_t a2, uint64_t a3, API::PageConfiguration **a4)
{
  v218 = *MEMORY[0x1E69E9840];
  v8 = (a1 + 865);
  v9 = API::Object::Object(a1);
  v10 = v9 + 16;
  *(v9 + 3) = 0;
  v11 = (v9 + 24);
  *v9 = &unk_1F1116B40;
  *(v9 + 2) = &unk_1F1116BA0;
  v12 = WTF::fastMalloc(0xB80);
  *(v12 + 8) = 0;
  *(v12 + 32) = 0;
  *(v12 + 48) = 0;
  *v12 = &unk_1F11040B0;
  *(v12 + 16) = &unk_1F1104190;
  *(v12 + 24) = 0;
  *(v12 + 40) = &unk_1F1104210;
  *(v12 + 56) = 0;
  *(v12 + 64) = &unk_1F1104240;
  v13 = WTF::WeakPtrFactory<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(v11, v10);
  v14 = *v11;
  atomic_fetch_add(*v11, 1u);
  *(v12 + 72) = v14;
  *(v12 + 80) = 0;
  v15 = WTF::RunLoop::mainSingleton(v13);
  v16 = v15;
  while (1)
  {
    v17 = *(v15 + 8);
    if ((v17 & 1) == 0)
    {
      break;
    }

    v18 = *(v15 + 8);
    atomic_compare_exchange_strong_explicit((v15 + 8), &v18, v17 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v18 == v17)
    {
      goto LABEL_6;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*(v15 + 8));
LABEL_6:
  *buf = v16;
  WTF::RunLoop::Timer::Timer<WebKit::WebPageProxy>((v12 + 88), buf, "WebPageProxy::Internals::AudibleActivityTimer", 46, a1, WebKit::WebPageProxy::clearAudibleActivity, 0);
  v19 = *buf;
  *buf = 0;
  if (v19)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WTF::SerialFunctionDispatcher,(WTF::DestructionThread)0>::deref((v19 + 8));
  }

  *(v12 + 248) = 0u;
  *(v12 + 136) = 0;
  *(v12 + 144) = 0;
  *(v12 + 240) = 0;
  *(v12 + 152) = 0;
  *(v12 + 160) = 0;
  *(v12 + 264) = 0u;
  *(v12 + 280) = 256;
  *(v12 + 304) = 0;
  *(v12 + 528) = 0;
  *(v12 + 544) = 0;
  *(v12 + 800) = 0;
  *(v12 + 282) = 0;
  *(v12 + 290) = 0;
  *(v12 + 816) = 0u;
  *(v12 + 832) = 0u;
  v20 = WTF::WeakPtrFactory<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(v11, v10);
  v21 = *v11;
  atomic_fetch_add(*v11, 1u);
  *(v12 + 848) = v21;
  *(v12 + 856) = 0u;
  *(v12 + 872) = 0u;
  *(v12 + 888) = 0;
  *(v12 + 896) = 16843009;
  *(v12 + 900) = 0u;
  v22 = WTF::RunLoop::mainSingleton(v20);
  v23 = v22;
  while (1)
  {
    v24 = *(v22 + 8);
    if ((v24 & 1) == 0)
    {
      break;
    }

    v25 = *(v22 + 8);
    atomic_compare_exchange_strong_explicit((v22 + 8), &v25, v24 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v25 == v24)
    {
      goto LABEL_13;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*(v22 + 8));
LABEL_13:
  *buf = v23;
  WTF::RunLoop::Timer::Timer<WebKit::WebPageProxy>((v12 + 920), buf, "WebPageProxy::Internals::UpdatePlayingMediaDidChangeTimer", 58, a1, WebKit::WebPageProxy::updatePlayingMediaDidChangeTimerFired, 0);
  v26 = *buf;
  *buf = 0;
  if (v26)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WTF::SerialFunctionDispatcher,(WTF::DestructionThread)0>::deref((v26 + 8));
  }

  *(v12 + 1048) = 0;
  *(v12 + 1016) = 0u;
  *(v12 + 1032) = 0u;
  *(v12 + 984) = 0u;
  *(v12 + 1000) = 0u;
  *(v12 + 968) = 0u;
  *(v12 + 1064) = 0;
  *(v12 + 1056) = &unk_1F111F200;
  WTF::WeakPtrFactory<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(v11, v10);
  v27 = *(a1 + 24);
  atomic_fetch_add(v27, 1u);
  *(v12 + 1072) = v27;
  *(v12 + 1080) = 0;
  *(v12 + 1112) = 0;
  *(v12 + 1088) = 0u;
  *(v12 + 1104) = 0;
  State = WebKit::PageLoadState::PageLoadState((v12 + 1120), a1);
  *(v12 + 1528) = 0;
  *(v12 + 1536) = 0;
  *(v12 + 1544) = 0;
  *(v12 + 1872) = 0;
  *(v12 + 1880) = 0;
  v29 = WTF::RunLoop::mainSingleton(State);
  v30 = v29;
  while (1)
  {
    v31 = *(v29 + 8);
    if ((v31 & 1) == 0)
    {
      break;
    }

    v32 = *(v29 + 8);
    atomic_compare_exchange_strong_explicit((v29 + 8), &v32, v31 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v32 == v31)
    {
      goto LABEL_20;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*(v29 + 8));
LABEL_20:
  *buf = v30;
  v33 = WTF::RunLoop::Timer::Timer<WebKit::WebPageProxy>((v12 + 1888), buf, "WebPageProxy::Internals::ResetRecentCrashCountTimer", 52, a1, WebKit::WebPageProxy::resetRecentCrashCount, 0);
  v34 = *buf;
  *buf = 0;
  if (v34)
  {
    v33 = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WTF::SerialFunctionDispatcher,(WTF::DestructionThread)0>::deref((v34 + 8));
  }

  *(v12 + 1940) = 257;
  *(v12 + 1936) = 16843009;
  *(v12 + 1944) = 0;
  *(v12 + 1952) = 0;
  *(v12 + 1956) = 0;
  *(v12 + 1968) = 0;
  *(v12 + 1984) = 0;
  *(v12 + 1976) = 0;
  v35 = WTF::RunLoop::mainSingleton(v33);
  v36 = v35;
  while (1)
  {
    v37 = *(v35 + 8);
    if ((v37 & 1) == 0)
    {
      break;
    }

    v38 = *(v35 + 8);
    atomic_compare_exchange_strong_explicit((v35 + 8), &v38, v37 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v38 == v37)
    {
      goto LABEL_27;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*(v35 + 8));
LABEL_27:
  *buf = v36;
  v39 = WTF::RunLoop::Timer::Timer<WebKit::WebPageProxy>((v12 + 1992), buf, "WebPageProxy::Internals::TryCloseTimeoutTimer", 46, a1, WebKit::WebPageProxy::tryCloseTimedOut, 0);
  v40 = *buf;
  *buf = 0;
  if (v40)
  {
    v39 = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WTF::SerialFunctionDispatcher,(WTF::DestructionThread)0>::deref((v40 + 8));
  }

  *(v12 + 2040) = 0u;
  v41 = WTF::RunLoop::mainSingleton(v39);
  v42 = v41;
  while (1)
  {
    v43 = *(v41 + 8);
    if ((v43 & 1) == 0)
    {
      break;
    }

    v44 = *(v41 + 8);
    atomic_compare_exchange_strong_explicit((v41 + 8), &v44, v43 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v44 == v43)
    {
      goto LABEL_34;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*(v41 + 8));
LABEL_34:
  *buf = v42;
  WTF::RunLoop::Timer::Timer<WebKit::WebPageProxy>((v12 + 2056), buf, "updateReportedMediaCaptureStateTimer", 37, a1, WebKit::WebPageProxy::updateReportedMediaCaptureState, 0);
  v45 = *buf;
  *buf = 0;
  if (v45)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WTF::SerialFunctionDispatcher,(WTF::DestructionThread)0>::deref((v45 + 8));
  }

  *(v12 + 2104) = 0;
  *(v12 + 2112) = 0;
  *(v12 + 2128) = 0;
  *(v12 + 2132) = 0;
  *(v12 + 2140) = 0;
  *(v12 + 2208) = 0;
  *(v12 + 2272) = 0;
  *(v12 + 2144) = 0;
  *(v12 + 2168) = 0;
  *(v12 + 2152) = 0u;
  *(v12 + 2176) = 0u;
  *(v12 + 2192) = 0;
  *(v12 + 2216) = 0u;
  *(v12 + 2232) = 0u;
  *(v12 + 2241) = 0u;
  WTF::WeakPtrFactory<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(v11, v10);
  v46 = *v11;
  atomic_fetch_add(*v11, 1u);
  v47 = WTF::fastMalloc(0x10);
  *v47 = &unk_1F1117570;
  v47[1] = v46;
  *buf = v47;
  PAL::HysteresisActivity::HysteresisActivity(v12 + 2280, buf, 1.5);
  v48 = *buf;
  *buf = 0;
  if (v48)
  {
    v48 = (*(*v48 + 8))(v48);
  }

  *(v12 + 2400) = 0;
  *(v12 + 2408) = 0;
  *(v12 + 2448) = 0;
  *(v12 + 2452) = 0;
  *(v12 + 2528) = 0;
  *(v12 + 2536) = 0;
  *(v12 + 2784) = 0;
  *(v12 + 2792) = 0;
  *(v12 + 2352) = 0u;
  *(v12 + 2368) = 0u;
  *(v12 + 2377) = 0u;
  *(v12 + 2464) = 0u;
  *(v12 + 2480) = 0;
  *(v12 + 2544) = 0u;
  *(v12 + 2560) = 0u;
  *(v12 + 2576) = 0u;
  *(v12 + 2585) = 0u;
  v49 = WTF::RunLoop::mainSingleton(v48);
  v50 = v49;
  while (1)
  {
    v51 = *(v49 + 8);
    if ((v51 & 1) == 0)
    {
      break;
    }

    v52 = *(v49 + 8);
    atomic_compare_exchange_strong_explicit((v49 + 8), &v52, v51 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v52 == v51)
    {
      goto LABEL_43;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*(v49 + 8));
LABEL_43:
  *buf = v50;
  WTF::RunLoop::Timer::Timer<WebKit::WebPageProxy>((v12 + 2800), buf, "WebPageProxy::Internals::FullscreenVideoTextRecognitionTimer", 61, a1, WebKit::WebPageProxy::fullscreenVideoTextRecognitionTimerFired, 0);
  v53 = *buf;
  *buf = 0;
  if (v53)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WTF::SerialFunctionDispatcher,(WTF::DestructionThread)0>::deref((v53 + 8));
  }

  *(v12 + 2848) = 0;
  *(v12 + 2864) = 0;
  *(v12 + 2904) = 0;
  *(v12 + 2872) = 0;
  *(v12 + 2888) = 0;
  *(v12 + 2880) = 0;
  *(v12 + 2896) = &unk_1F1116C38;
  WTF::WeakPtrFactory<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(v11, v10);
  v54 = *(a1 + 24);
  atomic_fetch_add(v54, 1u);
  *(v12 + 2912) = v54;
  *(v12 + 2920) = 0;
  *(v12 + 2928) = 1;
  *(a1 + 32) = v12;
  if (WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1 || (*(a1 + 40) = WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>::generateIdentifierInternal(), WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1))
  {
    __break(0xC471u);
    JUMPOUT(0x19D5CBE28);
  }

  *(a1 + 48) = WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>::generateIdentifierInternal();
  if (!*(a2 + 8))
  {
    v56 = WTF::fastCompactMalloc(0x10);
    *v56 = 1;
    *(v56 + 8) = a2;
    v57 = *(a2 + 8);
    *(a2 + 8) = v56;
    if (v57)
    {
      if (atomic_fetch_add(v57, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v57);
        WTF::fastFree(v57, v55);
      }
    }
  }

  v58 = *(a2 + 8);
  atomic_fetch_add(v58, 1u);
  *(a1 + 56) = v58;
  v59 = *a4;
  v60 = CFRetain(*(*a4 + 1));
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 64) = v59;
  v62 = API::NavigationClient::operator new(v60, v61);
  *v62 = &unk_1F1117598;
  *(a1 + 88) = v62;
  if (qword_1ED6429F8)
  {
    NonCompact = bmalloc::api::tzoneAllocateNonCompact(qword_1ED6429F8, v63);
  }

  else
  {
    NonCompact = bmalloc::api::tzoneAllocateNonCompactSlow();
  }

  *NonCompact = &unk_1F1117720;
  *(a1 + 96) = NonCompact;
  v66 = API::IconLoadingClient::operator new(8, v65);
  *v66 = &unk_1F1116FF0;
  *(a1 + 104) = v66;
  v68 = API::FormClient::operator new(8, v67);
  *v68 = &unk_1F1117018;
  *(a1 + 112) = v68;
  v70 = API::UIClient::operator new(8, v69);
  *v70 = &unk_1F111B880;
  *(a1 + 120) = v70;
  v72 = API::FindClient::operator new(8, v71);
  *v72 = &unk_1F1117040;
  *(a1 + 128) = v72;
  v74 = API::FindMatchesClient::operator new(8, v73);
  *v74 = &unk_1F1117090;
  *(a1 + 136) = v74;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  if (WebKit::WebNavigationState::s_heapRef)
  {
    v76 = bmalloc::api::tzoneAllocateNonCompact(WebKit::WebNavigationState::s_heapRef, v75);
  }

  else
  {
    v76 = WebKit::WebNavigationState::operatorNewSlow(0x18);
  }

  v77 = v76;
  *v76 = 0;
  v78 = WTF::WeakPtrFactory<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(v11, v10);
  v79 = *(a1 + 24);
  atomic_fetch_add(v79, 1u);
  v77[1] = v79;
  v77[2] = 0;
  *(a1 + 176) = v77;
  *(a1 + 184) = 0;
  *(a1 + 192) = 0;
  *(a1 + 200) = 0;
  *(a1 + 208) = 0;
  v80 = WTF::RunLoop::mainSingleton(v78);
  v81 = v80;
  while (1)
  {
    v82 = *(v80 + 8);
    if ((v82 & 1) == 0)
    {
      break;
    }

    v83 = *(v80 + 8);
    atomic_compare_exchange_strong_explicit((v80 + 8), &v83, v82 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v83 == v82)
    {
      goto LABEL_61;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*(v80 + 8));
LABEL_61:
  *buf = v81;
  v84 = WTF::RunLoop::Timer::Timer<WebKit::WebPageProxy>((a1 + 216), buf, "WebPageProxy::GeneratePageLoadTimingTimer", 42, a1, WebKit::WebPageProxy::didEndNetworkRequestsForPageLoadTimingTimerFired, 0);
  v85 = *buf;
  *buf = 0;
  if (v85)
  {
    v84 = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WTF::SerialFunctionDispatcher,(WTF::DestructionThread)0>::deref((v85 + 8));
  }

  v86 = WTF::RunLoop::mainSingleton(v84);
  v87 = v86;
  while (1)
  {
    v88 = *(v86 + 8);
    if ((v88 & 1) == 0)
    {
      break;
    }

    v89 = *(v86 + 8);
    atomic_compare_exchange_strong_explicit((v86 + 8), &v89, v88 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v89 == v88)
    {
      goto LABEL_68;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*(v86 + 8));
LABEL_68:
  *buf = v87;
  WTF::RunLoop::Timer::Timer<WebKit::WebPageProxy>((a1 + 264), buf, "WebPageProxy::TextIndicatorFadeTimer", 37, a1, WebKit::WebPageProxy::startTextIndicatorFadeOut, 0);
  v90 = *buf;
  *buf = 0;
  if (v90)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WTF::SerialFunctionDispatcher,(WTF::DestructionThread)0>::deref((v90 + 8));
  }

  *(a1 + 344) = 0;
  *(a1 + 312) = 0u;
  *(a1 + 328) = 0u;
  atomic_fetch_add((a3 + 16), 1u);
  *(a1 + 352) = a3;
  v91 = *(*a4 + 15);
  CFRetain(*(v91 + 8));
  *(a1 + 360) = v91;
  v92 = API::PageConfiguration::Data::LazyInitializedRef<WebKit::WebPreferences,&API::PageConfiguration::Data::createWebPreferences>::get(*a4 + 4);
  CFRetain(*(v92 + 1));
  *(a1 + 368) = v92;
  v93 = API::PageConfiguration::Data::LazyInitializedRef<WebKit::WebUserContentControllerProxy,&API::PageConfiguration::Data::createWebUserContentControllerProxy>::get(*a4 + 3);
  CFRetain(*(v93 + 1));
  *(a1 + 376) = v93;
  v94 = *(*a4 + 13);
  if (v94)
  {
    CFRetain(*(v94 + 8));
  }

  *(a1 + 384) = v94;
  v95 = *(*a4 + 14);
  if (v95)
  {
    v96 = *(v95 + 8);
    if (v96)
    {
      WTF::WeakPtrFactory<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl>::initializeIfNeeded((v96 + 8), *(v95 + 8));
      v95 = *(v96 + 8);
      if (v95)
      {
        atomic_fetch_add(v95, 1u);
      }
    }

    else
    {
      v95 = 0;
    }
  }

  *(a1 + 392) = v95;
  v97 = API::PageConfiguration::Data::LazyInitializedRef<WebKit::VisitedLinkStore,&API::PageConfiguration::Data::createVisitedLinkStore>::get(*a4 + 5);
  CFRetain(*(v97 + 1));
  *(a1 + 400) = v97;
  v98 = API::PageConfiguration::websiteDataStore(*a4);
  CFRetain(*(v98 + 8));
  *(a1 + 408) = v98;
  *(a1 + 416) = 0;
  *(a1 + 424) = 0;
  *(a1 + 432) = 0;
  *buf = 0;
  WebCore::standardUserAgentWithApplicationName();
  v100 = *buf;
  *buf = 0;
  if (v100 && atomic_fetch_add_explicit(v100, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v100, v99);
  }

  *(a1 + 448) = 0u;
  *(a1 + 464) = 0u;
  v101 = *(*a4 + 43);
  if (v101)
  {
    atomic_fetch_add_explicit(v101, 2u, memory_order_relaxed);
  }

  *(a1 + 480) = v101;
  v102 = *(*a4 + 20);
  if (v102)
  {
    atomic_fetch_add_explicit(v102, 2u, memory_order_relaxed);
  }

  *(a1 + 488) = v102;
  *(a1 + 496) = 0uLL;
  v103 = API::FullscreenClient::operator new(8, v99);
  *v103 = &unk_1F11170C0;
  *(a1 + 512) = v103;
  *(a1 + 664) = 0;
  *(a1 + 672) = 0;
  *(a1 + 535) = 0;
  *(a1 + 520) = 0u;
  *(a1 + 540) = 0;
  *(a1 + 548) = 0;
  *(a1 + 642) = 0u;
  *(a1 + 616) = 0u;
  *(a1 + 632) = 0u;
  *(a1 + 584) = 0u;
  *(a1 + 600) = 0u;
  *(a1 + 552) = 0u;
  *(a1 + 568) = 0u;
  v104 = WTF::fastMalloc(0x38);
  WTF::WeakPtrFactory<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(v11, v10);
  v105 = *(a1 + 24);
  atomic_fetch_add(v105, 1u);
  *v104 = v105;
  *(v104 + 8) = 0;
  *(v104 + 16) = 0u;
  *(v104 + 32) = 0u;
  *(v104 + 48) = 0;
  *(a1 + 680) = v104;
  v106 = *a4;
  *(a1 + 688) = *(*a4 + 308);
  v108 = *(v106 + 40);
  v107 = *(v106 + 41);
  *(a1 + 696) = v108;
  *(a1 + 704) = v107;
  v109 = API::Object::newObject(0x38uLL, 42);
  v110 = WebKit::WebBackForwardList::WebBackForwardList(v109, a1);
  *(a1 + 712) = v110;
  *(a1 + 720) = 0;
  *(a1 + 721) = *(*a4 + 309);
  *(a1 + 722) = 0;
  *(a1 + 728) = 0;
  *(a1 + 736) = 0;
  *(a1 + 744) = 0x3FF0000000000000;
  __asm { FMOV            V0.2D, #1.0 }

  *(a1 + 752) = _Q0;
  *(a1 + 768) = 0x3FF0000000000000;
  *(a1 + 776) = 0;
  *(a1 + 784) = 0;
  *(a1 + 792) = 0;
  *(a1 + 800) = 0;
  *(a1 + 808) = 0x3FF0000000000000;
  *(a1 + 816) = 0x3FF0000000000000;
  *(a1 + 824) = 1065353216;
  *(a1 + 828) = 0;
  *(a1 + 832) = 0;
  *(a1 + 839) = 0;
  *(a1 + 836) = 0;
  *(a1 + 848) = 0u;
  v116 = *(a3 + 80);
  v117 = v116 && (*(v116 + 104) & 1) != 0 || *(a3 + 88) != 0;
  *(a1 + 864) = v117;
  *v8 = 0;
  *(a1 + 869) = 1;
  *(a1 + 880) = 0;
  *(a1 + 888) = 0;
  *(a1 + 892) = 0;
  *(a1 + 896) = 0;
  *(v8 + 5) = 0;
  *(a1 + 936) = 0;
  *(a1 + 904) = 0uLL;
  *(a1 + 920) = 0uLL;
  *(a1 + 944) = 0uLL;
  *(a1 + 960) = 256;
  *(a1 + 962) = *(*a4 + 311);
  *(a1 + 964) = 0;
  *(a1 + 968) = WebKit::TextChecker::isSmartInsertDeleteEnabled(v110);
  *(a1 + 972) = 0;
  *(a1 + 978) = 0;
  *(v8 + 121) = 16842753;
  *(a1 + 990) = 1;
  *(v8 + 126) = 0;
  *(a1 + 996) = 0u;
  *(a1 + 1011) = 0;
  *(a1 + 1020) = 1065353216;
  *(a1 + 1024) = 1;
  *(a1 + 1026) = 1;
  v119 = (a1 + 1032);
  *(a1 + 1088) = 0;
  *(a1 + 1096) = 0;
  *(a1 + 1104) = 0u;
  *(v8 + 162) = 0;
  *(a1 + 1048) = 0;
  *(a1 + 1032) = 0u;
  *(a1 + 1056) = 0u;
  *(a1 + 1080) = 0;
  *(a1 + 1072) = 0;
  *(a1 + 1120) = 1;
  *(a1 + 1128) = 0x4008000000000000;
  *(a1 + 1136) = 0;
  *(a1 + 1140) = 0;
  *(a1 + 1144) = 0x3FF0000000000000;
  *(a1 + 1152) = 0u;
  *(a1 + 1168) = 0;
  *(a1 + 1176) = 0;
  *(a1 + 1184) = 0;
  *(a1 + 1192) = 0u;
  if (WebKit::WebPageInspectorController::s_heapRef)
  {
    v120 = bmalloc::api::tzoneAllocateNonCompact(WebKit::WebPageInspectorController::s_heapRef, v118);
  }

  else
  {
    v120 = WebKit::WebPageInspectorController::operatorNewSlow(0x48);
  }

  *(a1 + 1208) = WebKit::WebPageInspectorController::WebPageInspectorController(v120, a1);
  WebKit::WebPageDebuggable::create(a1, v121, buf);
  *(a1 + 1216) = *buf;
  *(a1 + 1224) = 0;
  *(a1 + 1232) = 0;
  *(a1 + 1336) = 0;
  *(a1 + 1240) = 0;
  *(a1 + 1247) = 0;
  *(a1 + 1256) = 0u;
  *(a1 + 1272) = 0u;
  *(a1 + 1288) = 0u;
  *(a1 + 1304) = 0u;
  *(a1 + 1315) = 0u;
  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(a1 + 1344, *a4 + 416);
  *(a1 + 1392) = 0;
  v122 = 0uLL;
  *(a1 + 1376) = 0u;
  *(a1 + 1360) = 0u;
  *(a1 + 1396) = *(*(a1 + 64) + 496);
  *(a1 + 1398) = 0;
  *(a1 + 1400) = 1;
  *(a1 + 1408) = 0u;
  *(a1 + 1424) = 1;
  *(a1 + 1432) = 0;
  v8[140] = 0;
  *(a1 + 1440) = 1;
  *(a1 + 1448) = 0;
  *(a1 + 1456) = 0;
  *(a1 + 1464) = 0u;
  v123 = *(*a4 + 17);
  if (*(v123 + 32) == 1)
  {
    v124 = *(v123 + 16);
    ++*(v124 + 8);
  }

  else
  {
    v124 = WTF::fastMalloc(0x48);
    *v124 = 0;
    *(v124 + 8) = 1;
    v122 = 0uLL;
    *(v124 + 16) = 0u;
    *(v124 + 32) = 0u;
    *(v124 + 48) = 0u;
    *(v124 + 64) = 0;
  }

  *(a1 + 1480) = v124;
  v125 = *(*a4 + 17);
  if (*(v125 + 32) == 1)
  {
    *(a1 + 1488) = *(v125 + 24);
    v126 = 1;
  }

  else
  {
    v126 = 0;
    *(a1 + 1488) = 0;
  }

  *(a1 + 1496) = v126;
  *(a1 + 1504) = v122;
  *(a1 + 1520) = v122;
  *(a1 + 1536) = 0;
  v127 = *(*(a3 + 552) + 8);
  if (v127)
  {
    v128 = v127 - 16;
  }

  else
  {
    v128 = 0;
  }

  v129 = *(v128 + 48);
  v130 = *(v129 + 100);
  v131 = *(v129 + 116);
  *(a1 + 1572) = *(v129 + 132);
  *(a1 + 1540) = v130;
  *(a1 + 1556) = v131;
  WebKit::AboutSchemeHandler::create((a1 + 1576));
  if (qword_1ED6429C8)
  {
    v133 = bmalloc::api::tzoneAllocateNonCompact(qword_1ED6429C8, v132);
  }

  else
  {
    v133 = WebKit::WebPageProxyTesting::operatorNewSlow(0);
  }

  v134 = v133;
  *(v133 + 8) = 1;
  *v133 = &unk_1F1116BE8;
  WTF::WeakPtrFactory<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(v11, v10);
  v135 = *(a1 + 24);
  atomic_fetch_add(v135, 1u);
  *(v134 + 16) = v135;
  *(a1 + 1584) = v134;
  v136 = qword_1ED640D10;
  if (os_log_type_enabled(qword_1ED640D10, OS_LOG_TYPE_DEFAULT))
  {
    v209 = v11;
    v138 = v8;
    v139 = a3;
    v140 = *(*(a1 + 352) + 80);
    if (v140)
    {
      v141 = *(v140 + 108);
    }

    else
    {
      v141 = 0;
    }

    v143 = *(a1 + 40);
    v142 = *(a1 + 48);
    v144 = *(a1 + 368);
    CFRetain(*(v144 + 8));
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::siteIsolationEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::siteIsolationEnabledKey(void)::key = WebKit::WebPreferencesKey::siteIsolationEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    BoolValueForKey = WebKit::WebPreferencesStore::getBoolValueForKey((v144 + 40), &WebKit::WebPreferencesKey::siteIsolationEnabledKey(void)::key, v145);
    *buf = 134219008;
    *&buf[4] = a1;
    *&buf[12] = 2048;
    *&buf[14] = v143;
    *&buf[22] = 2048;
    *&buf[24] = v142;
    v214 = 1024;
    v215 = v141;
    v216 = 1024;
    v217 = BoolValueForKey;
    _os_log_impl(&dword_19D52D000, v136, OS_LOG_TYPE_DEFAULT, "%p - [pageProxyID=%llu, webPageID=%llu, PID=%i] WebPageProxy::constructor, site isolation enabled %d", buf, 0x2Cu);
    CFRelease(*(v144 + 8));
    a3 = v139;
    v8 = v138;
    v11 = v209;
    v119 = (a1 + 1032);
  }

  API::PageConfiguration::consumeOpenerInfo(*(a1 + 64), v137);
  if ((*(*a4 + 310) & 1) == 0)
  {
    *buf = 0x1104000000000000;
    std::optional<WebCore::Color>::operator=[abi:sn200100]<WebCore::Color,void>(*(a1 + 32) + 136, buf);
    if ((*buf & 0x8000000000000) != 0)
    {
      v208 = (*buf & 0xFFFFFFFFFFFFLL);
      if (atomic_fetch_add((*buf & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v208);
        WTF::fastFree(v208, v147);
      }
    }
  }

  WebKit::WebPageProxy::updateActivityState(a1, 1023);
  WebKit::WebPageProxy::updateThrottleState(a1);
  WebKit::WebPageProxy::updateHiddenPageThrottlingAutoIncreases(a1);
  ++HIDWORD(WebKit::WebProcessPool::statistics(void)::statistics);
  v148 = *(a1 + 368);
  CFRetain(*(v148 + 8));
  WTF::WeakHashSet<WebKit::WebPageProxy,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::add<WebKit::WebPageProxy>(v148 + 88, a1, buf);
  CFRelease(*(v148 + 8));
  v149 = *(a1 + 384);
  if (v149)
  {
    goto LABEL_111;
  }

  v204 = *(a1 + 392);
  if (v204)
  {
    v205 = *(v204 + 8);
    if (v205)
    {
      v149 = (v205 - 16);
LABEL_111:
      CFRetain(v149[1]);
      WebKit::WebExtensionController::addPage(v149, a1);
      CFRelease(v149[1]);
    }
  }

  v150 = API::Object::newObject(0x58uLL, 70);
  v151 = WebKit::WebInspectorUIProxy::WebInspectorUIProxy(v150, a1);
  v152 = *(a1 + 496);
  *(a1 + 496) = v151;
  if (v152)
  {
    CFRelease(*(v152 + 8));
  }

  if ((*v8 & 1) == 0 && *(a1 + 864) == 1)
  {
    WebKit::WebPageProxy::didAttachToRunningProcess(a1);
  }

  WebKit::WebPageProxy::addAllMessageReceivers(a1);
  v154 = *(a1 + 368);
  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::disableScreenSizeOverrideKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::disableScreenSizeOverrideKey(void)::key = WebKit::WebPreferencesKey::disableScreenSizeOverrideKey(void)::$_0::operator() const(void)::impl;
  }

  v155 = WebKit::WebPreferencesStore::getBoolValueForKey((v154 + 40), &WebKit::WebPreferencesKey::disableScreenSizeOverrideKey(void)::key, v153);
  *(WebCore::DeprecatedGlobalSettings::shared(v155) + 17) = v155;
  v156 = API::PageConfiguration::Data::LazyInitializedRef<WebKit::WebPreferences,&API::PageConfiguration::Data::createWebPreferences>::get((*(a1 + 64) + 32));
  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::serviceWorkerEntitlementDisabledForTestingKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::serviceWorkerEntitlementDisabledForTestingKey(void)::key = WebKit::WebPreferencesKey::serviceWorkerEntitlementDisabledForTestingKey(void)::$_0::operator() const(void)::impl;
  }

  if (WebKit::WebPreferencesStore::getBoolValueForKey((v156 + 40), &WebKit::WebPreferencesKey::serviceWorkerEntitlementDisabledForTestingKey(void)::key, v157))
  {
    v159 = a3;
    v160 = *(a1 + 408);
    CFRetain(v160[1]);
    v162 = WebKit::WebsiteDataStore::networkProcess(v160, v161);
    atomic_fetch_add((v162 + 16), 1u);
    v164 = IPC::Encoder::operator new(0x238, v163);
    *v164 = 602;
    *(v164 + 68) = 0;
    *(v164 + 70) = 0;
    *(v164 + 69) = 0;
    *(v164 + 2) = 0;
    *(v164 + 3) = 0;
    *(v164 + 1) = 0;
    IPC::Encoder::encodeHeader(v164);
    v210[0] = v164;
    buf[0] = 0;
    buf[16] = 0;
    WebKit::AuxiliaryProcessProxy::sendMessage(v162, v210, 0, buf, 1);
    if (buf[16] == 1)
    {
      v166 = *buf;
      *buf = 0;
      if (v166)
      {
        (*(*v166 + 8))(v166);
      }
    }

    v167 = v210[0];
    v210[0] = 0;
    if (v167)
    {
      IPC::Encoder::~Encoder(v167, v165);
      bmalloc::api::tzoneFree(v206, v207);
    }

    WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v162 + 16));
    CFRelease(v160[1]);
    a3 = v159;
  }

  if (*MEMORY[0x1E69E2578])
  {
    v168 = bmalloc::api::tzoneAllocateNonCompact(*MEMORY[0x1E69E2578], v158);
  }

  else
  {
    v168 = WebCore::RunLoopObserver::operatorNewSlow(0x18);
  }

  v169 = v168;
  v170 = WTF::fastMalloc(0x10);
  *v170 = &unk_1F1117110;
  v170[1] = a1;
  *v169 = v170;
  *(v169 + 8) = 512;
  *(v169 + 16) = 0;
  std::unique_ptr<WebCore::RunLoopObserver>::reset[abi:sn200100](v119, v169);
  v171 = *(a1 + 1216);
  if (v171)
  {
    while (1)
    {
      v172 = v171[1];
      if ((v172 & 1) == 0)
      {
        break;
      }

      v173 = v171[1];
      atomic_compare_exchange_strong_explicit(v171 + 1, &v173, v172 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v173 == v172)
      {
        goto LABEL_135;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(v171[1]);
  }

LABEL_135:
  JSRemoteInspectorGetInspectionEnabledByDefault();
  Inspector::RemoteInspectionTarget::setInspectable(v171);
  v174 = *(*(a3 + 552) + 8);
  if (v174)
  {
    v175 = v174 - 16;
  }

  else
  {
    v175 = 0;
  }

  *buf = *(*(v175 + 48) + 80);
  buf[4] = 1;
  Inspector::RemoteInspectionTarget::setPresentingApplicationPID();
  Inspector::RemoteControllableTarget::init(v171);
  WebKit::WebPageInspectorController::init(*(a1 + 1208));
  if (*(a1 + 962) == 1)
  {
    v176 = *(API::PageConfiguration::Data::LazyInitializedRef<WebKit::WebProcessPool,&API::PageConfiguration::Data::createWebProcessPool>::get((*(a1 + 64) + 16)) + 320);
    if (v176)
    {
      CFRetain(*(v176 + 8));
      WebKit::BidiBrowserAgent::didCreatePage(*(*(v176 + 104) + 32), a1);
      CFRelease(*(v176 + 8));
    }
  }

  v177 = *(*a4 + 33);
  if (v177 && (v178 = *(v177 + 8)) != 0)
  {
    v179 = v178 - 16;
    CFRetain(*(v178 - 8));
  }

  else
  {
    v179 = 0;
  }

  v180 = *(a1 + 1472);
  *(a1 + 1472) = v179;
  if (v180)
  {
    CFRelease(*(v180 + 8));
  }

  if ((byte_1ED642A00 & 1) == 0)
  {
    *algn_1ED642A88 = 0u;
    *&qword_1ED642AA8 = 0u;
    dword_1ED642A90 = 1;
    qword_1ED642A98 = 0;
    unk_1ED642AA0 = 0;
    qword_1ED642AA8 = 0;
    byte_1ED642AB0 = 0;
    qword_1ED642AB8 = 0;
    unk_1ED642AC0 = 0;
    qword_1ED642A80 = &unk_1F10EE480;
    byte_1ED642A00 = 1;
  }

  WTF::WeakPtrFactory<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(v11, v10);
  v181 = *(a1 + 24);
  atomic_fetch_add(v181, 1u);
  v182 = WTF::fastMalloc(0x10);
  *v182 = &unk_1F1117760;
  *(v182 + 1) = v181;
  v210[0] = v182;
  WebKit::ListDataControllerBase::observeUpdates(&qword_1ED642A80, v210, buf);
  v184 = *buf;
  *buf = 0;
  v185 = *(a1 + 1432);
  *(a1 + 1432) = v184;
  if (v185)
  {
    WTF::RefCounted<WebKit::ListDataObserver>::deref((v185 + 8), v183);
    v187 = *buf;
    *buf = 0;
    if (v187)
    {
      WTF::RefCounted<WebKit::ListDataObserver>::deref((v187 + 8), v186);
    }
  }

  v188 = v210[0];
  v210[0] = 0;
  if (v188)
  {
    (*(*v188 + 8))(v188);
  }

  v189 = *(a1 + 368);
  CFRetain(*(v189 + 8));
  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::scriptTrackingPrivacyProtectionsEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::scriptTrackingPrivacyProtectionsEnabledKey(void)::key = WebKit::WebPreferencesKey::scriptTrackingPrivacyProtectionsEnabledKey(void)::$_0::operator() const(void)::impl;
  }

  v191 = WebKit::WebPreferencesStore::getBoolValueForKey((v189 + 40), &WebKit::WebPreferencesKey::scriptTrackingPrivacyProtectionsEnabledKey(void)::key, v190);
  CFRelease(*(v189 + 8));
  if (v191)
  {
    v192 = *(*(a3 + 552) + 8);
    v193 = v192 ? v192 - 16 : 0;
    CFRetain(*(v193 + 8));
    WebKit::WebProcessPool::observeScriptTrackingPrivacyUpdatesIfNeeded(v193);
    if (v192)
    {
      CFRelease(*(v192 - 8));
    }
  }

  {
    if (WebKit::singleton(void)::singleton)
    {
      v194 = *(WebKit::singleton(void)::singleton + 8);
      if (v194)
      {
        v195 = (v194 + 16);
        atomic_fetch_add((v194 + 16), 1u);
        v196 = *(a3 + 120);
        v197 = *(a1 + 48);
        buf[0] = 0;
        LOBYTE(v214) = 0;
        if (*(a1 + 1572) == 1)
        {
          v198 = *(a1 + 1556);
          *buf = *(a1 + 1540);
          *&buf[16] = v198;
          LOBYTE(v214) = 1;
        }

        v211 = v197;
        v212 = v196;
        v210[0] = &v212;
        v210[1] = &v211;
        v210[2] = buf;
        WebKit::AuxiliaryProcessProxy::send<Messages::GPUProcess::SetPresentingApplicationAuditToken>(v194, v210, 0, 0);
        WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref(v195);
      }
    }
  }

  else
  {
    WebKit::singleton(void)::singleton = 0;
  }

  v199 = *(a1 + 368);
  CFRetain(*(v199 + 8));
  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::siteIsolationEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::siteIsolationEnabledKey(void)::key = WebKit::WebPreferencesKey::siteIsolationEnabledKey(void)::$_0::operator() const(void)::impl;
  }

  v201 = WebKit::WebPreferencesStore::getBoolValueForKey((v199 + 40), &WebKit::WebPreferencesKey::siteIsolationEnabledKey(void)::key, v200);
  CFRelease(*(v199 + 8));
  if (v201)
  {
    IPC::s_shouldCrashOnMessageCheckFailure = 1;
  }

  if (v171)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<Inspector::RemoteControllableTarget,(WTF::DestructionThread)0>::deref(v171 + 1, v202);
  }

  return a1;
}

WebKit::PageLoadState *WebKit::PageLoadState::PageLoadState(WebKit::PageLoadState *this, WebKit::WebPageProxy *a2)
{
  *this = 0;
  *(this + 1) = 0;
  WTF::WeakPtrFactory<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(a2 + 6, a2 + 16);
  v4 = *(a2 + 3);
  atomic_fetch_add(v4, 1u);
  *(this + 2) = v4;
  *(this + 6) = 2;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 73) = 0u;
  *(this + 6) = 0u;
  *(this + 7) = 0u;
  WTF::URL::invalidate((this + 120));
  *(this + 80) = 0;
  *(this + 162) = 0;
  *(this + 21) = 0;
  *(this + 176) = 0;
  *(this + 23) = 0;
  *(this + 24) = 0;
  *(this + 52) = 2;
  *(this + 232) = 0u;
  *(this + 248) = 0u;
  *(this + 216) = 0u;
  *(this + 257) = 0u;
  *(this + 280) = 0u;
  *(this + 296) = 0u;
  WTF::URL::invalidate((this + 304));
  *(this + 172) = 0;
  *(this + 346) = 0;
  *(this + 44) = 0;
  *(this + 360) = 0;
  *(this + 46) = 0;
  *(this + 47) = 0;
  *(this + 49) = 0;
  *(this + 400) = 0;
  *(this + 101) = 0;
  return this;
}

uint64_t API::NavigationClient::operator new(API::NavigationClient *this, void *a2)
{
  if (API::NavigationClient::operator new(unsigned long)::s_heapRef)
  {
    return bmalloc::api::tzoneAllocateNonCompact(API::NavigationClient::operator new(unsigned long)::s_heapRef, a2);
  }

  else
  {
    return bmalloc::api::tzoneAllocateNonCompactSlow();
  }
}

uint64_t API::FormClient::operator new(API::FormClient *this, void *a2)
{
  if (this == 8 && API::FormClient::operator new(unsigned long)::s_heapRef)
  {
    return bmalloc::api::tzoneAllocateNonCompact(API::FormClient::operator new(unsigned long)::s_heapRef, a2);
  }

  else
  {
    return bmalloc::api::tzoneAllocateNonCompactSlow();
  }
}

uint64_t API::IconLoadingClient::operator new(API::IconLoadingClient *this, void *a2)
{
  if (this == 8 && API::IconLoadingClient::operator new(unsigned long)::s_heapRef)
  {
    return bmalloc::api::tzoneAllocateNonCompact(API::IconLoadingClient::operator new(unsigned long)::s_heapRef, a2);
  }

  else
  {
    return bmalloc::api::tzoneAllocateNonCompactSlow();
  }
}

uint64_t API::UIClient::operator new(API::UIClient *this, void *a2)
{
  if (this == 8 && API::UIClient::s_heapRef)
  {
    return bmalloc::api::tzoneAllocateNonCompact(API::UIClient::s_heapRef, a2);
  }

  else
  {
    return API::UIClient::operatorNewSlow(this);
  }
}

uint64_t API::FindClient::operator new(API::FindClient *this, void *a2)
{
  if (this == 8 && API::FindClient::operator new(unsigned long)::s_heapRef)
  {
    return bmalloc::api::tzoneAllocateNonCompact(API::FindClient::operator new(unsigned long)::s_heapRef, a2);
  }

  else
  {
    return bmalloc::api::tzoneAllocateNonCompactSlow();
  }
}

uint64_t API::FindMatchesClient::operator new(API::FindMatchesClient *this, void *a2)
{
  if (this == 8 && API::FindMatchesClient::operator new(unsigned long)::s_heapRef)
  {
    return bmalloc::api::tzoneAllocateNonCompact(API::FindMatchesClient::operator new(unsigned long)::s_heapRef, a2);
  }

  else
  {
    return bmalloc::api::tzoneAllocateNonCompactSlow();
  }
}

uint64_t API::FullscreenClient::operator new(API::FullscreenClient *this, void *a2)
{
  if (this == 8 && API::FullscreenClient::operator new(unsigned long)::s_heapRef)
  {
    return bmalloc::api::tzoneAllocateNonCompact(API::FullscreenClient::operator new(unsigned long)::s_heapRef, a2);
  }

  else
  {
    return bmalloc::api::tzoneAllocateNonCompactSlow();
  }
}

WebKit::WebBackForwardList *WebKit::WebBackForwardList::WebBackForwardList(WebKit::WebBackForwardList *this, WebKit::WebPageProxy *a2)
{
  *API::Object::Object(this) = &unk_1F1115CD8;
  WTF::WeakPtrFactory<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(a2 + 6, a2 + 16);
  v4 = *(a2 + 3);
  if (v4)
  {
    atomic_fetch_add(v4, 1u);
  }

  *(this + 48) = 0;
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 2) = v4;
  *(this + 40) = 0;
  return this;
}

Inspector::BackendDispatcher **WebKit::WebPageInspectorController::WebPageInspectorController(Inspector::BackendDispatcher **this, WebKit::WebPageProxy *a2)
{
  Inspector::FrontendRouter::create(this);
  v4 = *this;
  *v4 = **this + 1;
  v10 = v4;
  Inspector::BackendDispatcher::create();
  if (v10)
  {
    WTF::RefCounted<Inspector::FrontendRouter>::deref(v10, v5);
  }

  Inspector::AgentRegistry::AgentRegistry((this + 2));
  WTF::WeakPtrFactory<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(a2 + 6, a2 + 16);
  v6 = *(a2 + 3);
  atomic_fetch_add(v6, 1u);
  this[4] = v6;
  this[6] = 0;
  this[7] = 0;
  *(this + 64) = 0;
  this[5] = 0;
  v8 = Inspector::InspectorTargetAgent::operator new(0x48, v7);
  Inspector::InspectorTargetAgent::InspectorTargetAgent(v8, *this, this[1]);
  WTF::CheckedPtr<Inspector::InspectorTargetAgent,WTF::RawPtrTraits<Inspector::InspectorTargetAgent>>::operator=((this + 5), v8);
  Inspector::AgentRegistry::append();
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  return this;
}

uint64_t Inspector::InspectorTargetAgent::operator new(Inspector::InspectorTargetAgent *this, void *a2)
{
  if (this == 72 && *MEMORY[0x1E696EBE0])
  {
    return bmalloc::api::tzoneAllocateNonCompact(*MEMORY[0x1E696EBE0], a2);
  }

  else
  {
    return MEMORY[0x1EEDCBB70]();
  }
}

uint64_t WTF::CheckedPtr<Inspector::InspectorTargetAgent,WTF::RawPtrTraits<Inspector::InspectorTargetAgent>>::operator=(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    ++*(a2 + 24);
  }

  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = *(v2 + 24);
    if (v3)
    {
      *(v2 + 24) = v3 - 1;
    }

    else
    {
      result = 290;
      __break(0xC471u);
    }
  }

  return result;
}

unsigned int *WebKit::WebPageDebuggable::create@<X0>(WebKit::WebPageDebuggable *this@<X0>, WebKit::WebPageProxy *a2@<X1>, Inspector::RemoteInspectionTarget **a3@<X8>)
{
  v5 = WebKit::WebPageDebuggable::operator new(0x38, a2);
  *Inspector::RemoteInspectionTarget::RemoteInspectionTarget(v5) = &unk_1F111EC78;
  result = WTF::WeakPtrFactory<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(this + 6, this + 16);
  v7 = *(this + 3);
  atomic_fetch_add(v7, 1u);
  *(v5 + 5) = v7;
  *(v5 + 6) = 0;
  *a3 = v5;
  return result;
}

uint64_t WebKit::WebPageDebuggable::operator new(WebKit::WebPageDebuggable *this, void *a2)
{
  if (this == 56 && WebKit::WebPageDebuggable::s_heapRef)
  {
    return bmalloc::api::tzoneAllocateNonCompact(WebKit::WebPageDebuggable::s_heapRef, a2);
  }

  else
  {
    return WebKit::WebPageDebuggable::operatorNewSlow(this);
  }
}

WTF::StringImpl *WebKit::AboutSchemeHandler::create@<X0>(uint64_t *a1@<X8>)
{
  v3 = WTF::fastMalloc(0x38);
  *(v3 + 8) = 1;
  *(v3 + 16) = WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>::generateIdentifierInternal();
  *(v3 + 24) = 0;
  *(v3 + 40) = 0;
  *(v3 + 48) = 0;
  *(v3 + 32) = 0;
  *v3 = &unk_1F1114830;
  result = WebKit::registerCocoaAboutHandlers(v3, v4);
  *a1 = v3;
  return result;
}

WTF::StringImpl *WebKit::registerCocoaAboutHandlers(WebKit *this, WebKit::AboutSchemeHandler *a2)
{
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v3 = WTF::fastMalloc(8);
  *v3 = &unk_1F10E6258;
  v7 = v3;
  WTF::HashMap<WTF::String,std::unique_ptr<WebKit::AboutSchemeHandler::OpaquePathHandler>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<std::unique_ptr<WebKit::AboutSchemeHandler::OpaquePathHandler>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::inlineSet<WTF::String const&,std::unique_ptr<WebKit::AboutSchemeHandler::OpaquePathHandler>>(this + 6, &v8, &v7, v9);
  v5 = v7;
  v7 = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  result = v8;
  v8 = 0;
  if (result)
  {
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v4);
    }
  }

  return result;
}

void sub_19D5CC420(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11)
{
  if (a11)
  {
    if (atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a11, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t WebKit::WebPageProxy::updateActivityState(void *a1, __int16 a2)
{
  v33 = *MEMORY[0x1E69E9840];
  v4 = a1[4];
  v5 = *(v4 + 80);
  v6 = a1[7];
  if (!v6)
  {
    v7 = 0;
    goto LABEL_5;
  }

  v7 = *(v6 + 8);
  if (!v7)
  {
LABEL_5:
    v8 = *(v4 + 80);
    goto LABEL_6;
  }

  (*(*v7 + 1712))(v7);
  v4 = a1[4];
  v8 = *(v4 + 80);
LABEL_6:
  *(v4 + 80) = v8 & ~a2;
  if ((a2 & 2) != 0 && (*(*v7 + 64))(v7))
  {
    *(a1[4] + 80) |= 2u;
  }

  if ((a2 & 1) != 0 && (*(*v7 + 56))(v7))
  {
    *(a1[4] + 80) |= 1u;
  }

  if ((a2 & 4) != 0)
  {
    v9 = v5 & 4;
    v10 = (*(*v7 + 80))(v7);
    v11 = v10;
    if (v10)
    {
      *(a1[4] + 80) |= 4u;
    }

    if ((v9 != 0) != v10)
    {
      v12 = qword_1ED641490;
      if (os_log_type_enabled(qword_1ED641490, OS_LOG_TYPE_DEFAULT))
      {
        v14 = a1[5];
        v13 = a1[6];
        v15 = *(a1[44] + 80);
        if (v15)
        {
          LODWORD(v15) = *(v15 + 108);
        }

        v21 = 134219264;
        v22 = a1;
        v23 = 2048;
        v24 = v14;
        v25 = 2048;
        v26 = v13;
        v27 = 1024;
        v28 = v15;
        v29 = 1024;
        v30 = v9 >> 2;
        v31 = 1024;
        v32 = v11;
        _os_log_impl(&dword_19D52D000, v12, OS_LOG_TYPE_DEFAULT, "%p - [pageProxyID=%llu, webPageID=%llu, PID=%i] WebPageProxy::updateActivityState: view visibility state changed %d -> %d", &v21, 0x32u);
      }
    }
  }

  if ((a2 & 8) != 0 && (*(*v7 + 112))(v7))
  {
    *(a1[4] + 80) |= 8u;
  }

  if ((a2 & 0x10) != 0 && (*(*v7 + 120))(v7))
  {
    *(a1[4] + 80) |= 0x10u;
  }

  v16 = (*(*v7 + 128))(v7);
  if ((a2 & 0x20) != 0 && v16)
  {
    *(a1[4] + 80) |= 0x20u;
  }

  if ((a2 & 0x40) != 0)
  {
    v17 = a1[4];
    if ((*(v17 + 968) & 1) != 0 && (*(v17 + 1048) & 1) == 0)
    {
      *(v17 + 80) |= 0x40u;
    }
  }

  if ((a2 & 0x80) == 0)
  {
LABEL_37:
    if ((a2 & 0x100) == 0)
    {
      return (*(*v7 + 1720))(v7);
    }

    goto LABEL_38;
  }

  v18 = a1[4];
  WebKit::PageLoadState::ref((v18 + 1120));
  if (*(v18 + 1160) || *(v18 + 1144) < 2u)
  {
    WebKit::PageLoadState::deref((v18 + 1120));
    *(a1[4] + 80) |= 0x80u;
    goto LABEL_37;
  }

  WebKit::PageLoadState::deref((v18 + 1120));
  if ((a2 & 0x100) == 0)
  {
    return (*(*v7 + 1720))(v7);
  }

LABEL_38:
  v19 = a1[4];
  if ((*(v19 + 968) & 0x1241800) != 0)
  {
    *(v19 + 80) |= 0x100u;
  }

  return (*(*v7 + 1720))(v7);
}

id WebKit::PageClientImpl::refView(id *this)
{
  v2 = objc_loadWeak(this + 7);
  Weak = objc_loadWeak(this + 2);

  return Weak;
}

uint64_t WebKit::PageClientImpl::isViewFocused(id *this)
{
  WeakRetained = objc_loadWeakRetained(this + 2);
  if (WebKit::PageClientImpl::isViewInWindow(this) && ([WeakRetained _isBackground] & 1) == 0 && (objc_msgSend(WeakRetained, "_contentViewIsFirstResponder") & 1) != 0)
  {
    v3 = 1;
    if (!WeakRetained)
    {
      return v3;
    }

    goto LABEL_7;
  }

  v3 = [WeakRetained _isRetainingActiveFocusedState];
  if (WeakRetained)
  {
LABEL_7:
  }

  return v3;
}

void sub_19D5CC8D8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
  }

  _Unwind_Resume(exception_object);
}

BOOL WebKit::PageClientImpl::isViewInWindow(id *this)
{
  WeakRetained = objc_loadWeakRetained(this + 2);
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v4 = [WeakRetained window];
LABEL_4:

    return v4 != 0;
  }

  v3 = objc_loadWeakRetained(this + 7);
  v4 = [v3 window];
  if (v3)
  {
    goto LABEL_4;
  }

  return v4 != 0;
}

void sub_19D5CC94C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
  }

  _Unwind_Resume(exception_object);
}

uint64_t WebKit::PageClientImpl::isViewWindowActive(id *this)
{
  if (WebKit::PageClientImpl::isActiveViewVisible(this))
  {
    return 1;
  }

  WeakRetained = objc_loadWeakRetained(this + 2);
  v2 = [WeakRetained _isRetainingActiveFocusedState];
  if (WeakRetained)
  {
  }

  return v2;
}

void sub_19D5CC9B8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
  }

  _Unwind_Resume(exception_object);
}

uint64_t WebKit::PageLoadState::ref(WebKit::PageLoadState *this)
{
  v1 = *(*(this + 2) + 8);
  if (v1)
  {
    return CFRetain(*(v1 - 8));
  }

  result = 92;
  __break(0xC471u);
  return result;
}

void WebKit::PageLoadState::deref(WebKit::PageLoadState *this)
{
  v1 = *(*(this + 2) + 8);
  if (v1)
  {
    CFRelease(*(v1 - 8));
  }

  else
  {
    __break(0xC471u);
  }
}

void WebKit::PageClientImpl::derefView(id *this)
{
  Weak = objc_loadWeak(this + 2);
}

void WebKit::WebPageProxy::updateThrottleState(WebKit::WebPageProxy *this)
{
  v112 = *MEMORY[0x1E69E9840];
  v2 = *(this + 46);
  CFRetain(*(v2 + 8));
  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::pageVisibilityBasedProcessSuppressionEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::pageVisibilityBasedProcessSuppressionEnabledKey(void)::key = WebKit::WebPreferencesKey::pageVisibilityBasedProcessSuppressionEnabledKey(void)::$_0::operator() const(void)::impl;
  }

  BoolValueForKey = WebKit::WebPreferencesStore::getBoolValueForKey((v2 + 40), &WebKit::WebPreferencesKey::pageVisibilityBasedProcessSuppressionEnabledKey(void)::key, v3);
  CFRelease(*(v2 + 8));
  v5 = API::PageConfiguration::Data::LazyInitializedRef<WebKit::WebProcessPool,&API::PageConfiguration::Data::createWebProcessPool>::get(*(this + 8) + 16);
  CFRetain(*(v5 + 8));
  if ((BoolValueForKey & 1) == 0)
  {
    v6 = *(v5 + 568);
    if (v6)
    {
      v7 = *v6;
      ++*(v6 + 8);
      if (v7)
      {
        if (*v7)
        {
          (*(**v7 + 16))(*v7, 1);
        }
      }
    }

    v8 = *(this + 4);
    v9 = *(v8 + 1536);
    *(v8 + 1536) = v6;
    if (v9)
    {
      v10 = *v9;
      v11 = *(v9 + 8) - 1;
      *(v9 + 8) = v11;
      if (v10)
      {
        v12 = *v10;
        if (!*v10)
        {
          goto LABEL_15;
        }

        v13 = *(v9 + 16);
        *(v9 + 16) = 1;
        (*(*v12 + 16))(v12, 0);
        *(v9 + 16) = v13;
        if (*v9)
        {
          goto LABEL_15;
        }

        v11 = *(v9 + 8);
      }

      if (!v11)
      {
        MEMORY[0x19EB14CF0](v9, 0x1020C40545B2139);
      }
    }
  }

LABEL_15:
  v14 = *(this + 4);
  v15 = *(v14 + 1096);
  if ((*(v14 + 80) & 0x20) != 0)
  {
    *(v14 + 1096) = 0;
    if (!v15)
    {
      goto LABEL_30;
    }
  }

  else
  {
    if (v15)
    {
      goto LABEL_30;
    }

    v16 = *(v5 + 552);
    if (!v16 || (v17 = *v16, ++*(v16 + 8), !v17) || !*v17)
    {
      *(v14 + 1096) = v16;
      goto LABEL_30;
    }

    (*(**v17 + 16))(*v17, 1);
    v18 = *(this + 4);
    v15 = *(v18 + 1096);
    *(v18 + 1096) = v16;
    if (!v15)
    {
      goto LABEL_30;
    }
  }

  v19 = *v15;
  v20 = *(v15 + 8) - 1;
  *(v15 + 8) = v20;
  if (v19)
  {
    v21 = *v19;
    if (!*v19)
    {
      goto LABEL_30;
    }

    v22 = *(v15 + 16);
    *(v15 + 16) = 1;
    (*(*v21 + 16))(v21, 0);
    *(v15 + 16) = v22;
    if (*v15)
    {
      goto LABEL_30;
    }

    v20 = *(v15 + 8);
  }

  if (!v20)
  {
    MEMORY[0x19EB14CF0](v15, 0x1020C40545B2139);
  }

LABEL_30:
  v23 = *(*(this + 4) + 80);
  hasValidVisibleActivity = WebKit::WebPageProxy::hasValidVisibleActivity(this);
  if ((v23 & 4) != 0)
  {
    if (hasValidVisibleActivity)
    {
      goto LABEL_48;
    }

    v36 = qword_1ED641030;
    if (os_log_type_enabled(qword_1ED641030, OS_LOG_TYPE_DEFAULT))
    {
      v38 = *(this + 5);
      v37 = *(this + 6);
      v39 = *(*(this + 44) + 80);
      if (v39)
      {
        LODWORD(v39) = *(v39 + 108);
      }

      *buf = 134218752;
      *&buf[4] = this;
      v104 = 2048;
      v105 = v38;
      v106 = 2048;
      v107 = v37;
      v108 = 1024;
      v109 = v39;
      _os_log_impl(&dword_19D52D000, v36, OS_LOG_TYPE_DEFAULT, "%p - [pageProxyID=%llu, webPageID=%llu, PID=%i] WebPageProxy::updateThrottleState: UIProcess is taking a foreground assertion because the view is visible", buf, 0x26u);
    }

    WebKit::WebProcessActivityState::takeVisibleActivity(*(this + 85));
    v32 = *(this + 185);
    v33 = (v32 + 8);
    ++*(v32 + 8);
    v34 = WTF::fastMalloc(0x10);
    v35 = &unk_1F11172C8;
  }

  else
  {
    if (!hasValidVisibleActivity)
    {
      goto LABEL_48;
    }

    v25 = qword_1ED641030;
    if (os_log_type_enabled(qword_1ED641030, OS_LOG_TYPE_DEFAULT))
    {
      v28 = *(this + 5);
      v27 = *(this + 6);
      v29 = *(*(this + 44) + 80);
      if (v29)
      {
        LODWORD(v29) = *(v29 + 108);
      }

      *buf = 134218752;
      *&buf[4] = this;
      v104 = 2048;
      v105 = v28;
      v106 = 2048;
      v107 = v27;
      v108 = 1024;
      v109 = v29;
      _os_log_impl(&dword_19D52D000, v25, OS_LOG_TYPE_DEFAULT, "%p - [pageProxyID=%llu, webPageID=%llu, PID=%i] WebPageProxy::updateThrottleState: UIProcess is releasing a foreground assertion because the view is no longer visible", buf, 0x26u);
    }

    v30 = *(this + 85);
    v31 = *(v30 + 16);
    *(v30 + 16) = 0;
    if (v31)
    {
      WTF::RefCounted<WebKit::ProcessThrottlerActivity>::deref((v31 + 8), v26);
    }

    v32 = *(this + 185);
    v33 = (v32 + 8);
    ++*(v32 + 8);
    v34 = WTF::fastMalloc(0x10);
    v35 = &unk_1F1117390;
  }

  *v34 = v35;
  *buf = v34;
  WebKit::BrowsingContextGroup::forEachRemotePage(v32, this, buf);
  v41 = *buf;
  *buf = 0;
  if (v41)
  {
    (*(*v41 + 8))(v41);
  }

  WTF::RefCounted<WebKit::BrowsingContextGroup>::deref(v33, v40);
LABEL_48:
  v42 = *(*(this + 4) + 80);
  hasValidAudibleActivity = WebKit::WebPageProxy::hasValidAudibleActivity(this);
  if ((v42 & 0x40) != 0)
  {
    if ((hasValidAudibleActivity & 1) == 0)
    {
      v48 = qword_1ED641030;
      if (os_log_type_enabled(qword_1ED641030, OS_LOG_TYPE_DEFAULT))
      {
        v50 = *(this + 5);
        v49 = *(this + 6);
        v51 = *(*(this + 44) + 80);
        if (v51)
        {
          LODWORD(v51) = *(v51 + 108);
        }

        *buf = 134218752;
        *&buf[4] = this;
        v104 = 2048;
        v105 = v50;
        v106 = 2048;
        v107 = v49;
        v108 = 1024;
        v109 = v51;
        _os_log_impl(&dword_19D52D000, v48, OS_LOG_TYPE_DEFAULT, "%p - [pageProxyID=%llu, webPageID=%llu, PID=%i] WebPageProxy::updateThrottleState: UIProcess is taking a foreground assertion because we are playing audio", buf, 0x26u);
      }

      WebKit::WebProcessActivityState::takeAudibleActivity(*(this + 85));
      v52 = *(this + 185);
      ++*(v52 + 8);
      v53 = WTF::fastMalloc(0x10);
      *v53 = &unk_1F11172F0;
      *buf = v53;
      WebKit::BrowsingContextGroup::forEachRemotePage(v52, this, buf);
      v55 = *buf;
      *buf = 0;
      if (v55)
      {
        (*(*v55 + 8))(v55);
      }

      WTF::RefCounted<WebKit::BrowsingContextGroup>::deref((v52 + 8), v54);
    }

    if (WTF::RunLoop::TimerBase::isActive((*(this + 4) + 88)))
    {
      v56 = qword_1ED641030;
      if (os_log_type_enabled(qword_1ED641030, OS_LOG_TYPE_DEFAULT))
      {
        v58 = *(this + 5);
        v57 = *(this + 6);
        v59 = *(*(this + 44) + 80);
        if (v59)
        {
          LODWORD(v59) = *(v59 + 108);
        }

        *buf = 134218752;
        *&buf[4] = this;
        v104 = 2048;
        v105 = v58;
        v106 = 2048;
        v107 = v57;
        v108 = 1024;
        v109 = v59;
        _os_log_impl(&dword_19D52D000, v56, OS_LOG_TYPE_DEFAULT, "%p - [pageProxyID=%llu, webPageID=%llu, PID=%i] WebPageProxy::updateThrottleState: Cancelling timer to release foreground assertion", buf, 0x26u);
      }

      WTF::RunLoop::TimerBase::stop((*(this + 4) + 88));
    }
  }

  else if (hasValidAudibleActivity && (WTF::RunLoop::TimerBase::isActive((*(this + 4) + 88)) & 1) == 0)
  {
    v44 = qword_1ED641030;
    if (os_log_type_enabled(qword_1ED641030, OS_LOG_TYPE_DEFAULT))
    {
      v46 = *(this + 5);
      v45 = *(this + 6);
      v47 = *(*(this + 44) + 80);
      if (v47)
      {
        LODWORD(v47) = *(v47 + 108);
      }

      *buf = 134219008;
      *&buf[4] = this;
      v104 = 2048;
      v105 = v46;
      v106 = 2048;
      v107 = v45;
      v108 = 1024;
      v109 = v47;
      v110 = 2048;
      v111 = 0x4024000000000000;
      _os_log_impl(&dword_19D52D000, v44, OS_LOG_TYPE_DEFAULT, "%p - [pageProxyID=%llu, webPageID=%llu, PID=%i] WebPageProxy::updateThrottleState: UIProcess starting timer to release a foreground assertion in %g seconds if audio doesn't start to play", buf, 0x30u);
    }

    WTF::RunLoop::TimerBase::start();
  }

  v60 = *(this + 4);
  v61 = *(v60 + 80);
  if ((v61 & 0x100) == 0 && (*(v60 + 968) & 0x2486000) != 0)
  {
    v62 = qword_1ED641030;
    if (os_log_type_enabled(qword_1ED641030, OS_LOG_TYPE_DEFAULT))
    {
      v64 = *(this + 5);
      v63 = *(this + 6);
      v65 = *(*(this + 44) + 80);
      if (v65)
      {
        LODWORD(v65) = *(v65 + 108);
      }

      *buf = 134218752;
      *&buf[4] = this;
      v104 = 2048;
      v105 = v64;
      v106 = 2048;
      v107 = v63;
      v108 = 1024;
      v109 = v65;
      _os_log_impl(&dword_19D52D000, v62, OS_LOG_TYPE_DEFAULT, "%p - [pageProxyID=%llu, webPageID=%llu, PID=%i] WebPageProxy::updateThrottleState: taking a web process background assertion for muted media capture", buf, 0x26u);
    }

    WebKit::WebProcessActivityState::takeMutedCaptureAssertion(*(this + 85));
    v66 = *(this + 185);
    ++*(v66 + 8);
    v67 = WTF::fastMalloc(0x10);
    *v67 = &unk_1F1117340;
    *buf = v67;
    WebKit::BrowsingContextGroup::forEachRemotePage(v66, this, buf);
    v69 = *buf;
    *buf = 0;
    if (v69)
    {
      (*(*v69 + 8))(v69);
    }

    WTF::RefCounted<WebKit::BrowsingContextGroup>::deref((v66 + 8), v68);
LABEL_98:
    if (!WebKit::WebPageProxy::hasValidCapturingActivity(this))
    {
      goto LABEL_109;
    }

    v93 = qword_1ED641030;
    if (os_log_type_enabled(qword_1ED641030, OS_LOG_TYPE_DEFAULT))
    {
      v96 = *(this + 5);
      v95 = *(this + 6);
      v97 = *(*(this + 44) + 80);
      if (v97)
      {
        LODWORD(v97) = *(v97 + 108);
      }

      *buf = 134218752;
      *&buf[4] = this;
      v104 = 2048;
      v105 = v96;
      v106 = 2048;
      v107 = v95;
      v108 = 1024;
      v109 = v97;
      _os_log_impl(&dword_19D52D000, v93, OS_LOG_TYPE_DEFAULT, "%p - [pageProxyID=%llu, webPageID=%llu, PID=%i] WebPageProxy::updateThrottleState: UIProcess is releasing a foreground assertion because media capture is no longer active", buf, 0x26u);
    }

    v98 = *(this + 85);
    v99 = *(v98 + 32);
    *(v98 + 32) = 0;
    if (v99)
    {
      WTF::RefCounted<WebKit::ProcessThrottlerActivity>::deref((v99 + 8), v94);
    }

    v89 = *(this + 185);
    v90 = (v89 + 8);
    ++*(v89 + 8);
    v91 = WTF::fastMalloc(0x10);
    v92 = &unk_1F11173E0;
    goto LABEL_106;
  }

  v102 = *(*(this + 85) + 40) != 0;
  v70 = *(this + 185);
  ++*(v70 + 8);
  v71 = WTF::fastMalloc(0x10);
  *v71 = &unk_1F11174A8;
  v71[1] = &v102;
  *buf = v71;
  WebKit::BrowsingContextGroup::forEachRemotePage(v70, this, buf);
  v73 = *buf;
  *buf = 0;
  if (v73)
  {
    (*(*v73 + 8))(v73);
  }

  WTF::RefCounted<WebKit::BrowsingContextGroup>::deref((v70 + 8), v72);
  if (v102)
  {
    v74 = qword_1ED641030;
    if (os_log_type_enabled(qword_1ED641030, OS_LOG_TYPE_DEFAULT))
    {
      v77 = *(this + 5);
      v76 = *(this + 6);
      v78 = *(*(this + 44) + 80);
      if (v78)
      {
        LODWORD(v78) = *(v78 + 108);
      }

      *buf = 134218752;
      *&buf[4] = this;
      v104 = 2048;
      v105 = v77;
      v106 = 2048;
      v107 = v76;
      v108 = 1024;
      v109 = v78;
      _os_log_impl(&dword_19D52D000, v74, OS_LOG_TYPE_DEFAULT, "%p - [pageProxyID=%llu, webPageID=%llu, PID=%i] WebPageProxy::updateThrottleState: releasing a web process background assertion for muted media capture", buf, 0x26u);
    }

    v79 = *(this + 85);
    v80 = *(v79 + 40);
    *(v79 + 40) = 0;
    if (v80)
    {
      WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::ProcessAssertion,(WTF::DestructionThread)0>::deref((v80 + 8), v75);
    }

    v81 = *(this + 185);
    ++*(v81 + 8);
    v82 = WTF::fastMalloc(0x10);
    *v82 = &unk_1F1117408;
    *buf = v82;
    WebKit::BrowsingContextGroup::forEachRemotePage(v81, this, buf);
    v84 = *buf;
    *buf = 0;
    if (v84)
    {
      (*(*v84 + 8))(v84);
    }

    WTF::RefCounted<WebKit::BrowsingContextGroup>::deref((v81 + 8), v83);
  }

  if ((v61 & 0x100) == 0)
  {
    goto LABEL_98;
  }

  if (WebKit::WebPageProxy::hasValidCapturingActivity(this))
  {
    goto LABEL_109;
  }

  v85 = qword_1ED641030;
  if (os_log_type_enabled(qword_1ED641030, OS_LOG_TYPE_DEFAULT))
  {
    v87 = *(this + 5);
    v86 = *(this + 6);
    v88 = *(*(this + 44) + 80);
    if (v88)
    {
      LODWORD(v88) = *(v88 + 108);
    }

    *buf = 134218752;
    *&buf[4] = this;
    v104 = 2048;
    v105 = v87;
    v106 = 2048;
    v107 = v86;
    v108 = 1024;
    v109 = v88;
    _os_log_impl(&dword_19D52D000, v85, OS_LOG_TYPE_DEFAULT, "%p - [pageProxyID=%llu, webPageID=%llu, PID=%i] WebPageProxy::updateThrottleState: UIProcess is taking a foreground assertion because media capture is active", buf, 0x26u);
  }

  WebKit::WebProcessActivityState::takeCapturingActivity(*(this + 85));
  v89 = *(this + 185);
  v90 = (v89 + 8);
  ++*(v89 + 8);
  v91 = WTF::fastMalloc(0x10);
  v92 = &unk_1F1117318;
LABEL_106:
  *v91 = v92;
  *buf = v91;
  WebKit::BrowsingContextGroup::forEachRemotePage(v89, this, buf);
  v101 = *buf;
  *buf = 0;
  if (v101)
  {
    (*(*v101 + 8))(v101);
  }

  WTF::RefCounted<WebKit::BrowsingContextGroup>::deref(v90, v100);
LABEL_109:
  CFRelease(*(v5 + 8));
}

uint64_t WebKit::WebPageProxy::hasValidVisibleActivity(WebKit::WebPageProxy *this)
{
  v2 = *(*(this + 85) + 16);
  if (v2)
  {
    v2 = *(v2 + 16);
    if (v2)
    {
      LOBYTE(v2) = *(v2 + 8) != 0;
    }
  }

  v9 = v2;
  v3 = *(this + 185);
  ++*(v3 + 8);
  v4 = WTF::fastMalloc(0x10);
  *v4 = &unk_1F1117430;
  v4[1] = &v9;
  v8 = v4;
  WebKit::BrowsingContextGroup::forEachRemotePage(v3, this, &v8);
  v6 = v8;
  v8 = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  WTF::RefCounted<WebKit::BrowsingContextGroup>::deref((v3 + 8), v5);
  return v9;
}

void *WebKit::BrowsingContextGroup::forEachRemotePage(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a1 + 56;
  WTF::WeakHashMap<WebKit::WebPageProxy,WTF::HashSet<WTF::Ref<WebKit::RemotePageProxy,WTF::RawPtrTraits<WebKit::RemotePageProxy>,WTF::DefaultRefDerefTraits<WebKit::RemotePageProxy>>,WTF::DefaultHash<WTF::Ref<WebKit::RemotePageProxy,WTF::RawPtrTraits<WebKit::RemotePageProxy>,WTF::DefaultRefDerefTraits<WebKit::RemotePageProxy>>>,WTF::HashTraits<WTF::Ref<WebKit::RemotePageProxy,WTF::RawPtrTraits<WebKit::RemotePageProxy>,WTF::DefaultRefDerefTraits<WebKit::RemotePageProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>,WTF::DefaultWeakPtrImpl>::find(a1 + 56, a2, v22);
  v6 = *(a1 + 56);
  if (v6)
  {
    v7 = *(v6 - 4);
    v8 = v6 + 16 * v7;
  }

  else
  {
    v8 = 0;
    v7 = 0;
  }

  v16 = v5;
  v17 = v8;
  v18 = v8;
  v19 = v8;
  v20 = v6 + 16 * v7;
  v21 = 0;
  result = WTF::WeakHashMap<WebKit::WebPageProxy,WTF::HashSet<WTF::Ref<WebKit::RemotePageProxy,WTF::RawPtrTraits<WebKit::RemotePageProxy>,WTF::DefaultRefDerefTraits<WebKit::RemotePageProxy>>,WTF::DefaultHash<WTF::Ref<WebKit::RemotePageProxy,WTF::RawPtrTraits<WebKit::RemotePageProxy>,WTF::DefaultRefDerefTraits<WebKit::RemotePageProxy>>>,WTF::HashTraits<WTF::Ref<WebKit::RemotePageProxy,WTF::RawPtrTraits<WebKit::RemotePageProxy>,WTF::DefaultRefDerefTraits<WebKit::RemotePageProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>,WTF::DefaultWeakPtrImpl>::WeakHashMapIteratorBase<WTF::WeakHashMap<WebKit::WebPageProxy,WTF::HashSet<WTF::Ref<WebKit::RemotePageProxy,WTF::RawPtrTraits<WebKit::RemotePageProxy>,WTF::DefaultRefDerefTraits<WebKit::RemotePageProxy>>,WTF::DefaultHash<WTF::Ref<WebKit::RemotePageProxy,WTF::RawPtrTraits<WebKit::RemotePageProxy>,WTF::DefaultRefDerefTraits<WebKit::RemotePageProxy>>>,WTF::HashTraits<WTF::Ref<WebKit::RemotePageProxy,WTF::RawPtrTraits<WebKit::RemotePageProxy>,WTF::DefaultRefDerefTraits<WebKit::RemotePageProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>,WTF::DefaultWeakPtrImpl>,WTF::HashTableIteratorAdapter<WTF::HashTable<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::KeyValuePair<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::HashSet<WTF::Ref<WebKit::RemotePageProxy,WTF::RawPtrTraits<WebKit::RemotePageProxy>,WTF::DefaultRefDerefTraits<WebKit::RemotePageProxy>>,WTF::DefaultHash<WTF::Ref<WebKit::RemotePageProxy,WTF::RawPtrTraits<WebKit::RemotePageProxy>,WTF::DefaultRefDerefTraits<WebKit::RemotePageProxy>>>,WTF::HashTraits<WTF::Ref<WebKit::RemotePageProxy,WTF::RawPtrTraits<WebKit::RemotePageProxy>,WTF::DefaultRefDerefTraits<WebKit::RemotePageProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::HashSet<WTF::Ref<WebKit::RemotePageProxy,WTF::RawPtrTraits<WebKit::RemotePageProxy>,WTF::DefaultRefDerefTraits<WebKit::RemotePageProxy>>,WTF::DefaultHash<WTF::Ref<WebKit::RemotePageProxy,WTF::RawPtrTraits<WebKit::RemotePageProxy>,WTF::DefaultRefDerefTraits<WebKit::RemotePageProxy>>>,WTF::HashTraits<WTF::Ref<WebKit::RemotePageProxy,WTF::RawPtrTraits<WebKit::RemotePageProxy>,WTF::DefaultRefDerefTraits<WebKit::RemotePageProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>>,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashMap<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::HashSet<WTF::Ref<WebKit::RemotePageProxy,WTF::RawPtrTraits<WebKit::RemotePageProxy>,WTF::DefaultRefDerefTraits<WebKit::RemotePageProxy>>,WTF::DefaultHash<WTF::Ref<WebKit::RemotePageProxy,WTF::RawPtrTraits<WebKit::RemotePageProxy>,WTF::DefaultRefDerefTraits<WebKit::RemotePageProxy>>>,WTF::HashTraits<WTF::Ref<WebKit::RemotePageProxy,WTF::RawPtrTraits<WebKit::RemotePageProxy>,WTF::DefaultRefDerefTraits<WebKit::RemotePageProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::HashSet<WTF::Ref<WebKit::RemotePageProxy,WTF::RawPtrTraits<WebKit::RemotePageProxy>,WTF::DefaultRefDerefTraits<WebKit::RemotePageProxy>>,WTF::DefaultHash<WTF::Ref<WebKit::RemotePageProxy,WTF::RawPtrTraits<WebKit::RemotePageProxy>,WTF::DefaultRefDerefTraits<WebKit::RemotePageProxy>>>,WTF::HashTraits<WTF::Ref<WebKit::RemotePageProxy,WTF::RawPtrTraits<WebKit::RemotePageProxy>,WTF::DefaultRefDerefTraits<WebKit::RemotePageProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::FastMalloc>,WTF::KeyValuePair<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::HashSet<WTF::Ref<WebKit::RemotePageProxy,WTF::RawPtrTraits<WebKit::RemotePageProxy>,WTF::DefaultRefDerefTraits<WebKit::RemotePageProxy>>,WTF::DefaultHash<WTF::Ref<WebKit::RemotePageProxy,WTF::RawPtrTraits<WebKit::RemotePageProxy>,WTF::DefaultRefDerefTraits<WebKit::RemotePageProxy>>>,WTF::HashTraits<WTF::Ref<WebKit::RemotePageProxy,WTF::RawPtrTraits<WebKit::RemotePageProxy>,WTF::DefaultRefDerefTraits<WebKit::RemotePageProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>>,WTF::WeakHashMap<WebKit::WebPageProxy,WTF::HashSet<WTF::Ref<WebKit::RemotePageProxy,WTF::RawPtrTraits<WebKit::RemotePageProxy>,WTF::DefaultRefDerefTraits<WebKit::RemotePageProxy>>,WTF::DefaultHash<WTF::Ref<WebKit::RemotePageProxy,WTF::RawPtrTraits<WebKit::RemotePageProxy>,WTF::DefaultRefDerefTraits<WebKit::RemotePageProxy>>>,WTF::HashTraits<WTF::Ref<WebKit::RemotePageProxy,WTF::RawPtrTraits<WebKit::RemotePageProxy>,WTF::DefaultRefDerefTraits<WebKit::RemotePageProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>,WTF::DefaultWeakPtrImpl>::PeekPtrType,WTF::WeakHashMap<WebKit::WebPageProxy,WTF::HashSet<WTF::Ref<WebKit::RemotePageProxy,WTF::RawPtrTraits<WebKit::RemotePageProxy>,WTF::DefaultRefDerefTraits<WebKit::RemotePageProxy>>,WTF::DefaultHash<WTF::Ref<WebKit::RemotePageProxy,WTF::RawPtrTraits<WebKit::RemotePageProxy>,WTF::DefaultRefDerefTraits<WebKit::RemotePageProxy>>>,WTF::HashTraits<WTF::Ref<WebKit::RemotePageProxy,WTF::RawPtrTraits<WebKit::RemotePageProxy>,WTF::DefaultRefDerefTraits<WebKit::RemotePageProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>,WTF::DefaultWeakPtrImpl>::PeekType>::skipEmptyBuckets(&v16);
  if (v23 != v17)
  {
    v10 = *(v23 + 8);
    result = WTF::HashTable<WTF::Ref<WebKit::RemotePageProxy,WTF::RawPtrTraits<WebKit::RemotePageProxy>,WTF::DefaultRefDerefTraits<WebKit::RemotePageProxy>>,WTF::Ref<WebKit::RemotePageProxy,WTF::RawPtrTraits<WebKit::RemotePageProxy>,WTF::DefaultRefDerefTraits<WebKit::RemotePageProxy>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::Ref<WebKit::RemotePageProxy,WTF::RawPtrTraits<WebKit::RemotePageProxy>,WTF::DefaultRefDerefTraits<WebKit::RemotePageProxy>>>,WTF::HashTraits<WTF::Ref<WebKit::RemotePageProxy,WTF::RawPtrTraits<WebKit::RemotePageProxy>,WTF::DefaultRefDerefTraits<WebKit::RemotePageProxy>>>,WTF::HashTraits<WTF::Ref<WebKit::RemotePageProxy,WTF::RawPtrTraits<WebKit::RemotePageProxy>,WTF::DefaultRefDerefTraits<WebKit::RemotePageProxy>>>,WTF::FastMalloc>::begin(v10);
    v11 = result;
    v13 = v12;
    v14 = v10 ? &v10[*(v10 - 1)] : 0;
    if (v14 != result)
    {
      do
      {
        v15 = *v11;
        v15[4] = *(*v11 + 16) + 1;
        result = (*(**a3 + 16))(*a3, v15);
        if (v15[4] == 1)
        {
          result = (*(*v15 + 24))(v15);
        }

        else
        {
          --v15[4];
        }

        do
        {
          ++v11;
        }

        while (v11 != v13 && (*v11 + 1) <= 1);
      }

      while (v11 != v14);
    }
  }

  return result;
}

void *WTF::WeakHashMap<WebKit::WebPageProxy,WTF::HashSet<WTF::Ref<WebKit::RemotePageProxy,WTF::RawPtrTraits<WebKit::RemotePageProxy>,WTF::DefaultRefDerefTraits<WebKit::RemotePageProxy>>,WTF::DefaultHash<WTF::Ref<WebKit::RemotePageProxy,WTF::RawPtrTraits<WebKit::RemotePageProxy>,WTF::DefaultRefDerefTraits<WebKit::RemotePageProxy>>>,WTF::HashTraits<WTF::Ref<WebKit::RemotePageProxy,WTF::RawPtrTraits<WebKit::RemotePageProxy>,WTF::DefaultRefDerefTraits<WebKit::RemotePageProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>,WTF::DefaultWeakPtrImpl>::find@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  ++*(a1 + 8);
  v5 = *(a2 + 24);
  if (v5 && *(v5 + 8))
  {
    v15 = *(a2 + 24);
    v6 = WTF::HashTable<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::KeyValuePair<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::HashSet<WTF::Ref<WebKit::RemotePageProxy,WTF::RawPtrTraits<WebKit::RemotePageProxy>,WTF::DefaultRefDerefTraits<WebKit::RemotePageProxy>>,WTF::DefaultHash<WTF::Ref<WebKit::RemotePageProxy,WTF::RawPtrTraits<WebKit::RemotePageProxy>,WTF::DefaultRefDerefTraits<WebKit::RemotePageProxy>>>,WTF::HashTraits<WTF::Ref<WebKit::RemotePageProxy,WTF::RawPtrTraits<WebKit::RemotePageProxy>,WTF::DefaultRefDerefTraits<WebKit::RemotePageProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::HashSet<WTF::Ref<WebKit::RemotePageProxy,WTF::RawPtrTraits<WebKit::RemotePageProxy>,WTF::DefaultRefDerefTraits<WebKit::RemotePageProxy>>,WTF::DefaultHash<WTF::Ref<WebKit::RemotePageProxy,WTF::RawPtrTraits<WebKit::RemotePageProxy>,WTF::DefaultRefDerefTraits<WebKit::RemotePageProxy>>>,WTF::HashTraits<WTF::Ref<WebKit::RemotePageProxy,WTF::RawPtrTraits<WebKit::RemotePageProxy>,WTF::DefaultRefDerefTraits<WebKit::RemotePageProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>>,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashMap<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::HashSet<WTF::Ref<WebKit::RemotePageProxy,WTF::RawPtrTraits<WebKit::RemotePageProxy>,WTF::DefaultRefDerefTraits<WebKit::RemotePageProxy>>,WTF::DefaultHash<WTF::Ref<WebKit::RemotePageProxy,WTF::RawPtrTraits<WebKit::RemotePageProxy>,WTF::DefaultRefDerefTraits<WebKit::RemotePageProxy>>>,WTF::HashTraits<WTF::Ref<WebKit::RemotePageProxy,WTF::RawPtrTraits<WebKit::RemotePageProxy>,WTF::DefaultRefDerefTraits<WebKit::RemotePageProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::HashSet<WTF::Ref<WebKit::RemotePageProxy,WTF::RawPtrTraits<WebKit::RemotePageProxy>,WTF::DefaultRefDerefTraits<WebKit::RemotePageProxy>>,WTF::DefaultHash<WTF::Ref<WebKit::RemotePageProxy,WTF::RawPtrTraits<WebKit::RemotePageProxy>,WTF::DefaultRefDerefTraits<WebKit::RemotePageProxy>>>,WTF::HashTraits<WTF::Ref<WebKit::RemotePageProxy,WTF::RawPtrTraits<WebKit::RemotePageProxy>,WTF::DefaultRefDerefTraits<WebKit::RemotePageProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::FastMalloc>::find<WTF::HashMapTranslator<WTF::HashMap<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::HashSet<WTF::Ref<WebKit::RemotePageProxy,WTF::RawPtrTraits<WebKit::RemotePageProxy>,WTF::DefaultRefDerefTraits<WebKit::RemotePageProxy>>,WTF::DefaultHash<WTF::Ref<WebKit::RemotePageProxy,WTF::RawPtrTraits<WebKit::RemotePageProxy>,WTF::DefaultRefDerefTraits<WebKit::RemotePageProxy>>>,WTF::HashTraits<WTF::Ref<WebKit::RemotePageProxy,WTF::RawPtrTraits<WebKit::RemotePageProxy>,WTF::DefaultRefDerefTraits<WebKit::RemotePageProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::HashSet<WTF::Ref<WebKit::RemotePageProxy,WTF::RawPtrTraits<WebKit::RemotePageProxy>,WTF::DefaultRefDerefTraits<WebKit::RemotePageProxy>>,WTF::DefaultHash<WTF::Ref<WebKit::RemotePageProxy,WTF::RawPtrTraits<WebKit::RemotePageProxy>,WTF::DefaultRefDerefTraits<WebKit::RemotePageProxy>>>,WTF::HashTraits<WTF::Ref<WebKit::RemotePageProxy,WTF::RawPtrTraits<WebKit::RemotePageProxy>,WTF::DefaultRefDerefTraits<WebKit::RemotePageProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>>,(WTF::ShouldValidateKey)1,WTF::DefaultWeakPtrImpl const*>( a1,  &v15);
    *a3 = a1;
    *(a3 + 8) = v6;
    *(a3 + 16) = v7;
    v8 = *a1;
    if (*a1)
    {
      v9 = *(v8 - 4);
      v10 = v8 + 16 * v9;
    }

    else
    {
      v10 = 0;
      v9 = 0;
    }

    *(a3 + 24) = v10;
    *(a3 + 32) = v8 + 16 * v9;
    *(a3 + 40) = 0;
    return WTF::WeakHashMap<WebKit::WebPageProxy,WTF::HashSet<WTF::Ref<WebKit::RemotePageProxy,WTF::RawPtrTraits<WebKit::RemotePageProxy>,WTF::DefaultRefDerefTraits<WebKit::RemotePageProxy>>,WTF::DefaultHash<WTF::Ref<WebKit::RemotePageProxy,WTF::RawPtrTraits<WebKit::RemotePageProxy>,WTF::DefaultRefDerefTraits<WebKit::RemotePageProxy>>>,WTF::HashTraits<WTF::Ref<WebKit::RemotePageProxy,WTF::RawPtrTraits<WebKit::RemotePageProxy>,WTF::DefaultRefDerefTraits<WebKit::RemotePageProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>,WTF::DefaultWeakPtrImpl>::WeakHashMapIteratorBase<WTF::WeakHashMap<WebKit::WebPageProxy,WTF::HashSet<WTF::Ref<WebKit::RemotePageProxy,WTF::RawPtrTraits<WebKit::RemotePageProxy>,WTF::DefaultRefDerefTraits<WebKit::RemotePageProxy>>,WTF::DefaultHash<WTF::Ref<WebKit::RemotePageProxy,WTF::RawPtrTraits<WebKit::RemotePageProxy>,WTF::DefaultRefDerefTraits<WebKit::RemotePageProxy>>>,WTF::HashTraits<WTF::Ref<WebKit::RemotePageProxy,WTF::RawPtrTraits<WebKit::RemotePageProxy>,WTF::DefaultRefDerefTraits<WebKit::RemotePageProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>,WTF::DefaultWeakPtrImpl>,WTF::HashTableIteratorAdapter<WTF::HashTable<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::KeyValuePair<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::HashSet<WTF::Ref<WebKit::RemotePageProxy,WTF::RawPtrTraits<WebKit::RemotePageProxy>,WTF::DefaultRefDerefTraits<WebKit::RemotePageProxy>>,WTF::DefaultHash<WTF::Ref<WebKit::RemotePageProxy,WTF::RawPtrTraits<WebKit::RemotePageProxy>,WTF::DefaultRefDerefTraits<WebKit::RemotePageProxy>>>,WTF::HashTraits<WTF::Ref<WebKit::RemotePageProxy,WTF::RawPtrTraits<WebKit::RemotePageProxy>,WTF::DefaultRefDerefTraits<WebKit::RemotePageProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::HashSet<WTF::Ref<WebKit::RemotePageProxy,WTF::RawPtrTraits<WebKit::RemotePageProxy>,WTF::DefaultRefDerefTraits<WebKit::RemotePageProxy>>,WTF::DefaultHash<WTF::Ref<WebKit::RemotePageProxy,WTF::RawPtrTraits<WebKit::RemotePageProxy>,WTF::DefaultRefDerefTraits<WebKit::RemotePageProxy>>>,WTF::HashTraits<WTF::Ref<WebKit::RemotePageProxy,WTF::RawPtrTraits<WebKit::RemotePageProxy>,WTF::DefaultRefDerefTraits<WebKit::RemotePageProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>>,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashMap<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::HashSet<WTF::Ref<WebKit::RemotePageProxy,WTF::RawPtrTraits<WebKit::RemotePageProxy>,WTF::DefaultRefDerefTraits<WebKit::RemotePageProxy>>,WTF::DefaultHash<WTF::Ref<WebKit::RemotePageProxy,WTF::RawPtrTraits<WebKit::RemotePageProxy>,WTF::DefaultRefDerefTraits<WebKit::RemotePageProxy>>>,WTF::HashTraits<WTF::Ref<WebKit::RemotePageProxy,WTF::RawPtrTraits<WebKit::RemotePageProxy>,WTF::DefaultRefDerefTraits<WebKit::RemotePageProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::HashSet<WTF::Ref<WebKit::RemotePageProxy,WTF::RawPtrTraits<WebKit::RemotePageProxy>,WTF::DefaultRefDerefTraits<WebKit::RemotePageProxy>>,WTF::DefaultHash<WTF::Ref<WebKit::RemotePageProxy,WTF::RawPtrTraits<WebKit::RemotePageProxy>,WTF::DefaultRefDerefTraits<WebKit::RemotePageProxy>>>,WTF::HashTraits<WTF::Ref<WebKit::RemotePageProxy,WTF::RawPtrTraits<WebKit::RemotePageProxy>,WTF::DefaultRefDerefTraits<WebKit::RemotePageProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::FastMalloc>,WTF::KeyValuePair<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::HashSet<WTF::Ref<WebKit::RemotePageProxy,WTF::RawPtrTraits<WebKit::RemotePageProxy>,WTF::DefaultRefDerefTraits<WebKit::RemotePageProxy>>,WTF::DefaultHash<WTF::Ref<WebKit::RemotePageProxy,WTF::RawPtrTraits<WebKit::RemotePageProxy>,WTF::DefaultRefDerefTraits<WebKit::RemotePageProxy>>>,WTF::HashTraits<WTF::Ref<WebKit::RemotePageProxy,WTF::RawPtrTraits<WebKit::RemotePageProxy>,WTF::DefaultRefDerefTraits<WebKit::RemotePageProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>>,WTF::WeakHashMap<WebKit::WebPageProxy,WTF::HashSet<WTF::Ref<WebKit::RemotePageProxy,WTF::RawPtrTraits<WebKit::RemotePageProxy>,WTF::DefaultRefDerefTraits<WebKit::RemotePageProxy>>,WTF::DefaultHash<WTF::Ref<WebKit::RemotePageProxy,WTF::RawPtrTraits<WebKit::RemotePageProxy>,WTF::DefaultRefDerefTraits<WebKit::RemotePageProxy>>>,WTF::HashTraits<WTF::Ref<WebKit::RemotePageProxy,WTF::RawPtrTraits<WebKit::RemotePageProxy>,WTF::DefaultRefDerefTraits<WebKit::RemotePageProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>,WTF::DefaultWeakPtrImpl>::PeekPtrType,WTF::WeakHashMap<WebKit::WebPageProxy,WTF::HashSet<WTF::Ref<WebKit::RemotePageProxy,WTF::RawPtrTraits<WebKit::RemotePageProxy>,WTF::DefaultRefDerefTraits<WebKit::RemotePageProxy>>,WTF::DefaultHash<WTF::Ref<WebKit::RemotePageProxy,WTF::RawPtrTraits<WebKit::RemotePageProxy>,WTF::DefaultRefDerefTraits<WebKit::RemotePageProxy>>>,WTF::HashTraits<WTF::Ref<WebKit::RemotePageProxy,WTF::RawPtrTraits<WebKit::RemotePageProxy>,WTF::DefaultRefDerefTraits<WebKit::RemotePageProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>,WTF::DefaultWeakPtrImpl>::PeekType>::skipEmptyBuckets(a3);
  }

  else
  {
    v11 = *a1;
    if (*a1)
    {
      v12 = *(v11 - 4);
      v13 = v11 + 16 * v12;
    }

    else
    {
      v13 = 0;
      v12 = 0;
    }

    *a3 = a1;
    *(a3 + 8) = v13;
    *(a3 + 16) = v13;
    *(a3 + 24) = v13;
    *(a3 + 32) = v11 + 16 * v12;
    *(a3 + 40) = 0;

    return WTF::WeakHashMap<WebKit::WebPageProxy,WTF::HashSet<WTF::Ref<WebKit::RemotePageProxy,WTF::RawPtrTraits<WebKit::RemotePageProxy>,WTF::DefaultRefDerefTraits<WebKit::RemotePageProxy>>,WTF::DefaultHash<WTF::Ref<WebKit::RemotePageProxy,WTF::RawPtrTraits<WebKit::RemotePageProxy>,WTF::DefaultRefDerefTraits<WebKit::RemotePageProxy>>>,WTF::HashTraits<WTF::Ref<WebKit::RemotePageProxy,WTF::RawPtrTraits<WebKit::RemotePageProxy>,WTF::DefaultRefDerefTraits<WebKit::RemotePageProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>,WTF::DefaultWeakPtrImpl>::WeakHashMapIteratorBase<WTF::WeakHashMap<WebKit::WebPageProxy,WTF::HashSet<WTF::Ref<WebKit::RemotePageProxy,WTF::RawPtrTraits<WebKit::RemotePageProxy>,WTF::DefaultRefDerefTraits<WebKit::RemotePageProxy>>,WTF::DefaultHash<WTF::Ref<WebKit::RemotePageProxy,WTF::RawPtrTraits<WebKit::RemotePageProxy>,WTF::DefaultRefDerefTraits<WebKit::RemotePageProxy>>>,WTF::HashTraits<WTF::Ref<WebKit::RemotePageProxy,WTF::RawPtrTraits<WebKit::RemotePageProxy>,WTF::DefaultRefDerefTraits<WebKit::RemotePageProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>,WTF::DefaultWeakPtrImpl>,WTF::HashTableIteratorAdapter<WTF::HashTable<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::KeyValuePair<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::HashSet<WTF::Ref<WebKit::RemotePageProxy,WTF::RawPtrTraits<WebKit::RemotePageProxy>,WTF::DefaultRefDerefTraits<WebKit::RemotePageProxy>>,WTF::DefaultHash<WTF::Ref<WebKit::RemotePageProxy,WTF::RawPtrTraits<WebKit::RemotePageProxy>,WTF::DefaultRefDerefTraits<WebKit::RemotePageProxy>>>,WTF::HashTraits<WTF::Ref<WebKit::RemotePageProxy,WTF::RawPtrTraits<WebKit::RemotePageProxy>,WTF::DefaultRefDerefTraits<WebKit::RemotePageProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::HashSet<WTF::Ref<WebKit::RemotePageProxy,WTF::RawPtrTraits<WebKit::RemotePageProxy>,WTF::DefaultRefDerefTraits<WebKit::RemotePageProxy>>,WTF::DefaultHash<WTF::Ref<WebKit::RemotePageProxy,WTF::RawPtrTraits<WebKit::RemotePageProxy>,WTF::DefaultRefDerefTraits<WebKit::RemotePageProxy>>>,WTF::HashTraits<WTF::Ref<WebKit::RemotePageProxy,WTF::RawPtrTraits<WebKit::RemotePageProxy>,WTF::DefaultRefDerefTraits<WebKit::RemotePageProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>>,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashMap<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::HashSet<WTF::Ref<WebKit::RemotePageProxy,WTF::RawPtrTraits<WebKit::RemotePageProxy>,WTF::DefaultRefDerefTraits<WebKit::RemotePageProxy>>,WTF::DefaultHash<WTF::Ref<WebKit::RemotePageProxy,WTF::RawPtrTraits<WebKit::RemotePageProxy>,WTF::DefaultRefDerefTraits<WebKit::RemotePageProxy>>>,WTF::HashTraits<WTF::Ref<WebKit::RemotePageProxy,WTF::RawPtrTraits<WebKit::RemotePageProxy>,WTF::DefaultRefDerefTraits<WebKit::RemotePageProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::HashSet<WTF::Ref<WebKit::RemotePageProxy,WTF::RawPtrTraits<WebKit::RemotePageProxy>,WTF::DefaultRefDerefTraits<WebKit::RemotePageProxy>>,WTF::DefaultHash<WTF::Ref<WebKit::RemotePageProxy,WTF::RawPtrTraits<WebKit::RemotePageProxy>,WTF::DefaultRefDerefTraits<WebKit::RemotePageProxy>>>,WTF::HashTraits<WTF::Ref<WebKit::RemotePageProxy,WTF::RawPtrTraits<WebKit::RemotePageProxy>,WTF::DefaultRefDerefTraits<WebKit::RemotePageProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::FastMalloc>,WTF::KeyValuePair<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::HashSet<WTF::Ref<WebKit::RemotePageProxy,WTF::RawPtrTraits<WebKit::RemotePageProxy>,WTF::DefaultRefDerefTraits<WebKit::RemotePageProxy>>,WTF::DefaultHash<WTF::Ref<WebKit::RemotePageProxy,WTF::RawPtrTraits<WebKit::RemotePageProxy>,WTF::DefaultRefDerefTraits<WebKit::RemotePageProxy>>>,WTF::HashTraits<WTF::Ref<WebKit::RemotePageProxy,WTF::RawPtrTraits<WebKit::RemotePageProxy>,WTF::DefaultRefDerefTraits<WebKit::RemotePageProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>>,WTF::WeakHashMap<WebKit::WebPageProxy,WTF::HashSet<WTF::Ref<WebKit::RemotePageProxy,WTF::RawPtrTraits<WebKit::RemotePageProxy>,WTF::DefaultRefDerefTraits<WebKit::RemotePageProxy>>,WTF::DefaultHash<WTF::Ref<WebKit::RemotePageProxy,WTF::RawPtrTraits<WebKit::RemotePageProxy>,WTF::DefaultRefDerefTraits<WebKit::RemotePageProxy>>>,WTF::HashTraits<WTF::Ref<WebKit::RemotePageProxy,WTF::RawPtrTraits<WebKit::RemotePageProxy>,WTF::DefaultRefDerefTraits<WebKit::RemotePageProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>,WTF::DefaultWeakPtrImpl>::PeekPtrType,WTF::WeakHashMap<WebKit::WebPageProxy,WTF::HashSet<WTF::Ref<WebKit::RemotePageProxy,WTF::RawPtrTraits<WebKit::RemotePageProxy>,WTF::DefaultRefDerefTraits<WebKit::RemotePageProxy>>,WTF::DefaultHash<WTF::Ref<WebKit::RemotePageProxy,WTF::RawPtrTraits<WebKit::RemotePageProxy>,WTF::DefaultRefDerefTraits<WebKit::RemotePageProxy>>>,WTF::HashTraits<WTF::Ref<WebKit::RemotePageProxy,WTF::RawPtrTraits<WebKit::RemotePageProxy>,WTF::DefaultRefDerefTraits<WebKit::RemotePageProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>,WTF::DefaultWeakPtrImpl>::PeekType>::skipEmptyBuckets(a3);
  }
}

uint64_t WebKit::WebPageProxy::hasValidAudibleActivity(WebKit::WebPageProxy *this)
{
  v2 = *(*(this + 85) + 24);
  if (v2)
  {
    v2 = *(v2 + 16);
    if (v2)
    {
      LOBYTE(v2) = *(v2 + 8) != 0;
    }
  }

  v9 = v2;
  v3 = *(this + 185);
  ++*(v3 + 8);
  v4 = WTF::fastMalloc(0x10);
  *v4 = &unk_1F1117458;
  v4[1] = &v9;
  v8 = v4;
  WebKit::BrowsingContextGroup::forEachRemotePage(v3, this, &v8);
  v6 = v8;
  v8 = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  WTF::RefCounted<WebKit::BrowsingContextGroup>::deref((v3 + 8), v5);
  return v9;
}

uint64_t WebKit::WebPageProxy::hasValidCapturingActivity(WebKit::WebPageProxy *this)
{
  v2 = *(*(this + 85) + 32);
  if (v2)
  {
    v2 = *(v2 + 16);
    if (v2)
    {
      LOBYTE(v2) = *(v2 + 8) != 0;
    }
  }

  v9 = v2;
  v3 = *(this + 185);
  ++*(v3 + 8);
  v4 = WTF::fastMalloc(0x10);
  *v4 = &unk_1F1117480;
  v4[1] = &v9;
  v8 = v4;
  WebKit::BrowsingContextGroup::forEachRemotePage(v3, this, &v8);
  v6 = v8;
  v8 = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  WTF::RefCounted<WebKit::BrowsingContextGroup>::deref((v3 + 8), v5);
  return v9;
}

void WebKit::WebPageProxy::updateHiddenPageThrottlingAutoIncreases(WebKit::WebPageProxy *this)
{
  v2 = *(this + 46);
  CFRetain(*(v2 + 8));
  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::hiddenPageDOMTimerThrottlingAutoIncreasesKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::hiddenPageDOMTimerThrottlingAutoIncreasesKey(void)::key = WebKit::WebPreferencesKey::hiddenPageDOMTimerThrottlingAutoIncreasesKey(void)::$_0::operator() const(void)::impl;
  }

  BoolValueForKey = WebKit::WebPreferencesStore::getBoolValueForKey((v2 + 40), &WebKit::WebPreferencesKey::hiddenPageDOMTimerThrottlingAutoIncreasesKey(void)::key, v3);
  CFRelease(*(v2 + 8));
  v5 = *(this + 4);
  v6 = *(v5 + 856);
  if (BoolValueForKey)
  {
    if (v6)
    {
      return;
    }

    v7 = API::PageConfiguration::Data::LazyInitializedRef<WebKit::WebProcessPool,&API::PageConfiguration::Data::createWebProcessPool>::get((*(this + 8) + 16));
    CFRetain(*(v7 + 8));
    v8 = *(v7 + 584);
    if (v8)
    {
      v9 = *v8;
      ++*(v8 + 8);
      if (v9)
      {
        if (*v9)
        {
          (*(**v9 + 16))(*v9, 1);
        }
      }
    }

    v10 = *(this + 4);
    v11 = *(v10 + 856);
    *(v10 + 856) = v8;
    if (!v11)
    {
      goto LABEL_16;
    }

    v12 = *v11;
    v13 = *(v11 + 8) - 1;
    *(v11 + 8) = v13;
    if (v12)
    {
      v14 = *v12;
      if (!*v12 || (v15 = *(v11 + 16), *(v11 + 16) = 1, (*(*v14 + 16))(v14, 0), *(v11 + 16) = v15, *v11))
      {
LABEL_16:
        v16 = *(v7 + 8);

        CFRelease(v16);
        return;
      }

      v13 = *(v11 + 8);
    }

    if (!v13)
    {
      MEMORY[0x19EB14CF0](v11, 0x1020C40545B2139);
    }

    goto LABEL_16;
  }

  *(v5 + 856) = 0;
  if (!v6)
  {
    return;
  }

  v17 = *v6;
  v18 = *(v6 + 8) - 1;
  *(v6 + 8) = v18;
  if (v17)
  {
    v19 = *v17;
    if (!*v17)
    {
      return;
    }

    v20 = *(v6 + 16);
    *(v6 + 16) = 1;
    (*(*v19 + 16))(v19, 0);
    *(v6 + 16) = v20;
    if (*v6)
    {
      return;
    }

    v18 = *(v6 + 8);
  }

  if (!v18)
  {

    JUMPOUT(0x19EB14CF0);
  }
}

void WebKit::WebExtensionController::addPage(WebKit::WebExtensionController *this, WebKit::WebPageProxy *a2)
{
  WTF::WeakHashSet<WebKit::WebPageProxy,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::add<WebKit::WebPageProxy>(this + 72, a2, v52);
  v4 = *(this + 21);
  if (v4)
  {
    v5 = *(v4 - 4);
    v6 = (v4 + 16 * v5);
    if (*(v4 - 12))
    {
      if (v5)
      {
        v7 = 16 * v5;
        v8 = *(this + 21);
        while ((*v8 + 1) <= 1)
        {
          v8 = (v8 + 16);
          v7 -= 16;
          if (!v7)
          {
            v8 = v6;
            goto LABEL_13;
          }
        }
      }

      else
      {
        v8 = *(this + 21);
      }

      goto LABEL_13;
    }
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v8 = v6;
  v6 = (v4 + 16 * v5);
  if (!v4)
  {
    v9 = 0;
    goto LABEL_14;
  }

LABEL_13:
  v9 = (v4 + 16 * *(v4 - 4));
LABEL_14:
  while (v8 != v9)
  {
    v10 = *(v8 + 1);
    ++*(v10 + 8);
    v52[0] = v10;
    WebKit::WebPageProxy::setURLSchemeHandlerForScheme(a2, v52, v8);
    v11 = v52[0];
    v52[0] = 0;
    if (v11)
    {
      if (*(v11 + 2) == 1)
      {
        (*(*v11 + 8))(v11);
      }

      else
      {
        --*(v11 + 2);
      }
    }

    do
    {
      v8 = (v8 + 16);
    }

    while (v8 != v6 && (*v8 + 1) <= 1);
  }

  v12 = API::PageConfiguration::Data::LazyInitializedRef<WebKit::WebProcessPool,&API::PageConfiguration::Data::createWebProcessPool>::get((*(a2 + 8) + 16));
  CFRetain(*(v12 + 8));
  v13 = WTF::WeakHashSet<WebKit::WebPageProxy,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::add<WebKit::WebPageProxy>(this + 88, v12, v52);
  if (v53 == 1)
  {
    v14 = WebKit::WebExtensionMatchPattern::extensionSchemes(v13);
    v15 = WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::begin(v14);
    v17 = v15;
    v19 = v18;
    if (*v14)
    {
      v20 = *v14 + 8 * *(*v14 - 4);
    }

    else
    {
      v20 = 0;
    }

    if (v20 != v15)
    {
      do
      {
        WebKit::WebProcessPool::registerURLSchemeAsSecure(v12, v17, v16);
        WebKit::WebProcessPool::registerURLSchemeAsBypassingContentSecurityPolicy(v12, v17, v21);
        WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::add<(WTF::ShouldValidateKey)1>((v12 + 352), v17, v22, v52);
        v52[0] = v17;
        WebKit::WebProcessPool::sendToAllProcesses<Messages::WebProcess::SetDomainRelaxationForbiddenForURLScheme>(v12, v52);
        do
        {
          ++v17;
        }

        while (v17 != v19 && *v17 + 1 <= 1);
      }

      while (v17 != v20);
    }

    v23 = *(this + 4);
    v50 = 166;
    v51 = v23;
    WTF::HashMap<std::pair<IPC::ReceiverName,unsigned long long>,WTF::WeakPtr<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<std::pair<IPC::ReceiverName,unsigned long long>>,WTF::PairHashTraits<WTF::StrongEnumHashTraits<IPC::ReceiverName>,WTF::HashTraits<unsigned long long>>,WTF::HashTraits<WTF::WeakPtr<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::inlineSet<std::pair<IPC::ReceiverName,unsigned long long>,IPC::MessageReceiver&>((v12 + 64), &v50, this + 16, v52);
    v24 = WTF::HashTable<WTF::Ref<WebKit::WebProcessProxy,WTF::RawPtrTraits<WebKit::WebProcessProxy>,WTF::DefaultRefDerefTraits<WebKit::WebProcessProxy>>,WTF::Ref<WebKit::WebProcessProxy,WTF::RawPtrTraits<WebKit::WebProcessProxy>,WTF::DefaultRefDerefTraits<WebKit::WebProcessProxy>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::Ref<WebKit::WebProcessProxy,WTF::RawPtrTraits<WebKit::WebProcessProxy>,WTF::DefaultRefDerefTraits<WebKit::WebProcessProxy>>>,WTF::HashTraits<WTF::Ref<WebKit::WebProcessProxy,WTF::RawPtrTraits<WebKit::WebProcessProxy>,WTF::DefaultRefDerefTraits<WebKit::WebProcessProxy>>>,WTF::HashTraits<WTF::Ref<WebKit::WebProcessProxy,WTF::RawPtrTraits<WebKit::WebProcessProxy>,WTF::DefaultRefDerefTraits<WebKit::WebProcessProxy>>>,WTF::FastMalloc>::begin(this + 7);
    v25 = v24;
    v27 = v26;
    v28 = *(this + 7);
    if (v28)
    {
      v29 = (v28 + 8 * *(v28 - 4));
    }

    else
    {
      v29 = 0;
    }

    if (v29 != v24)
    {
      do
      {
        v30 = *v25;
        CFRetain(*(*v25 + 8));
        v31 = *(v30 + 32);
        v50 = 164;
        v51 = v31;
        WTF::HashMap<std::pair<IPC::ReceiverName,unsigned long long>,WTF::WeakPtr<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<std::pair<IPC::ReceiverName,unsigned long long>>,WTF::PairHashTraits<WTF::StrongEnumHashTraits<IPC::ReceiverName>,WTF::HashTraits<unsigned long long>>,WTF::HashTraits<WTF::WeakPtr<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::inlineSet<std::pair<IPC::ReceiverName,unsigned long long>,IPC::MessageReceiver&>((v12 + 64), &v50, v30 + 16, v52);
        v32 = WebKit::WebExtensionContext::privilegedIdentifier(v30);
        v50 = 164;
        v51 = v32;
        WTF::HashMap<std::pair<IPC::ReceiverName,unsigned long long>,WTF::WeakPtr<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<std::pair<IPC::ReceiverName,unsigned long long>>,WTF::PairHashTraits<WTF::StrongEnumHashTraits<IPC::ReceiverName>,WTF::HashTraits<unsigned long long>>,WTF::HashTraits<WTF::WeakPtr<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::inlineSet<std::pair<IPC::ReceiverName,unsigned long long>,IPC::MessageReceiver&>((v12 + 64), &v50, v30 + 16, v52);
        CFRelease(*(v30 + 8));
        do
        {
          ++v25;
        }

        while (v25 != v27 && (*v25 + 1) <= 1);
      }

      while (v25 != v29);
    }
  }

  v33 = *(a2 + 51);
  CFRetain(*(v33 + 8));
  WTF::WeakHashSet<WebKit::WebsiteDataStore,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::add<WebKit::WebsiteDataStore>(this + 104, v33, v52);
  if (!*(this + 24))
  {
    v35 = WebKit::WebExtensionController::HTTPCookieStoreObserver::operator new(unsigned long)::s_heapRef ? bmalloc::api::tzoneAllocateNonCompact(WebKit::WebExtensionController::HTTPCookieStoreObserver::operator new(unsigned long)::s_heapRef, v34) : bmalloc::api::tzoneAllocateNonCompactSlow();
    v36 = v35;
    *(v35 + 8) = 0;
    *(v35 + 16) = 1;
    *v35 = &unk_1F113A9C8;
    WTF::WeakPtrFactory<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(this + 6, this + 16);
    v37 = *(this + 3);
    atomic_fetch_add(v37, 1u);
    *(v36 + 24) = v37;
    v38 = *(this + 24);
    *(this + 24) = v36;
    if (v38)
    {
      if (v38[4] == 1)
      {
        (*(*v38 + 8))(v38);
      }

      else
      {
        --v38[4];
      }
    }
  }

  v39 = WebKit::WebsiteDataStore::cookieStore(v33);
  CFRetain(*(v39 + 1));
  v40 = *(this + 24);
  if (v40)
  {
    ++*(v40 + 16);
  }

  API::HTTPCookieStore::registerObserver(v39, v40);
  if (*(v40 + 16) == 1)
  {
    (*(*v40 + 8))(v40);
  }

  else
  {
    --*(v40 + 16);
  }

  CFRelease(*(v39 + 1));
  v41 = *(a2 + 47);
  CFRetain(*(v41 + 8));
  v42 = *(v33 + 24);
  if (v42 < -1)
  {
    WTF::WeakHashSet<WebKit::WebPageProxy,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::add<WebKit::WebPageProxy>(this + 152, v41, v52);
  }

  else
  {
    WTF::WeakHashSet<WebKit::WebPageProxy,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::add<WebKit::WebPageProxy>(this + 136, v41, v52);
  }

  WTF::WeakHashSet<WebKit::WebPageProxy,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::add<WebKit::WebPageProxy>(this + 120, v41, v52);
  if (v53 == 1)
  {
    v43 = WTF::HashTable<WTF::Ref<WebKit::WebProcessProxy,WTF::RawPtrTraits<WebKit::WebProcessProxy>,WTF::DefaultRefDerefTraits<WebKit::WebProcessProxy>>,WTF::Ref<WebKit::WebProcessProxy,WTF::RawPtrTraits<WebKit::WebProcessProxy>,WTF::DefaultRefDerefTraits<WebKit::WebProcessProxy>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::Ref<WebKit::WebProcessProxy,WTF::RawPtrTraits<WebKit::WebProcessProxy>,WTF::DefaultRefDerefTraits<WebKit::WebProcessProxy>>>,WTF::HashTraits<WTF::Ref<WebKit::WebProcessProxy,WTF::RawPtrTraits<WebKit::WebProcessProxy>,WTF::DefaultRefDerefTraits<WebKit::WebProcessProxy>>>,WTF::HashTraits<WTF::Ref<WebKit::WebProcessProxy,WTF::RawPtrTraits<WebKit::WebProcessProxy>,WTF::DefaultRefDerefTraits<WebKit::WebProcessProxy>>>,WTF::FastMalloc>::begin(this + 7);
    v44 = v43;
    v46 = v45;
    v47 = *(this + 7);
    v48 = v47 ? v47 + 8 * *(v47 - 4) : 0;
    if (v48 != v43)
    {
      do
      {
        v49 = *v44;
        CFRetain(*(*v44 + 8));
        if (v42 > -2 || (*(v49 + 281) & 1) != 0)
        {
          WebKit::WebExtensionContext::addInjectedContent(v49, v41);
        }

        CFRelease(*(v49 + 8));
        do
        {
          ++v44;
        }

        while (v44 != v46 && (*v44 + 1) <= 1);
      }

      while (v44 != v48);
    }
  }

  CFRelease(*(v41 + 8));
  CFRelease(*(v33 + 8));
  CFRelease(*(v12 + 8));
}

uint64_t WebKit::WebProcessPool::registerURLSchemeAsSecure(WebKit::WebProcessPool *this, WTF::StringImpl **a2, const WTF::StringImpl *a3)
{
  {
    WebKit::LegacyGlobalSettings::singleton(void)::properties = 2;
    *&qword_1ED643540 = 0u;
    *&qword_1ED643550 = 0u;
  }

  WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::add<(WTF::ShouldValidateKey)1>(&qword_1ED643540, a2, a3, &v13);
  v13 = a2;
  WebKit::WebProcessPool::sendToAllProcesses<Messages::WebProcess::RegisterURLSchemeAsSecure>(this, &v13);
  WebKit::NetworkProcessProxy::allNetworkProcesses(v5, &v13);
  if (v14)
  {
    v7 = v13;
    v8 = 8 * v14;
    do
    {
      v9 = *v7;
      v10 = (*v7 + 16);
      atomic_fetch_add(v10, 1u);
      v12 = a2;
      WebKit::AuxiliaryProcessProxy::send<Messages::NetworkProcess::RegisterURLSchemeAsSecure>(v9, &v12, 0, 0);
      if (v9)
      {
        WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref(v10);
      }

      ++v7;
      v8 -= 8;
    }

    while (v8);
  }

  return WTF::Vector<WTF::Ref<WebKit::NetworkProcessProxy,WTF::RawPtrTraits<WebKit::NetworkProcessProxy>,WTF::DefaultRefDerefTraits<WebKit::NetworkProcessProxy>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v13, v6);
}

uint64_t WebKit::AuxiliaryProcessProxy::send<Messages::WebProcess::RegisterURLSchemeAsSecure>(uint64_t a1, uint64_t **a2, uint64_t a3, char a4)
{
  v8 = IPC::Encoder::operator new(0x238, a2);
  *v8 = 2975;
  *(v8 + 2) = 0;
  *(v8 + 3) = 0;
  *(v8 + 1) = a3;
  *(v8 + 68) = 0;
  *(v8 + 70) = 0;
  *(v8 + 69) = 0;
  IPC::Encoder::encodeHeader(v8);
  v18 = v8;
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v8, *a2);
  LOBYTE(v16) = 0;
  v17 = 0;
  v10 = WebKit::AuxiliaryProcessProxy::sendMessage(a1, &v18, a4, &v16, 1);
  if (v17 == 1)
  {
    v11 = v16;
    v16 = 0;
    if (v11)
    {
      (*(*v11 + 8))(v11);
    }
  }

  v12 = v18;
  v18 = 0;
  if (v12)
  {
    IPC::Encoder::~Encoder(v12, v9);
    bmalloc::api::tzoneFree(v14, v15);
  }

  return v10;
}

uint64_t WebKit::WebProcessPool::sendToAllProcesses<Messages::WebProcess::RegisterURLSchemeAsSecure>(uint64_t result, uint64_t **a2)
{
  v2 = *(result + 84);
  if (v2)
  {
    v4 = *(result + 72);
    v5 = 8 * v2;
    do
    {
      result = *v4;
      v6 = *(*v4 + 80);
      if (v6 && (*(v6 + 104) & 1) != 0 || *(result + 88))
      {
        v7 = *a2;
        result = WebKit::AuxiliaryProcessProxy::send<Messages::WebProcess::RegisterURLSchemeAsSecure>(result, &v7, 0, 0);
      }

      ++v4;
      v5 -= 8;
    }

    while (v5);
  }

  return result;
}

uint64_t WebKit::AuxiliaryProcessProxy::send<Messages::NetworkProcess::RegisterURLSchemeAsSecure>(uint64_t a1, uint64_t **a2, uint64_t a3, char a4)
{
  v8 = IPC::Encoder::operator new(0x238, a2);
  *v8 = 650;
  *(v8 + 2) = 0;
  *(v8 + 3) = 0;
  *(v8 + 1) = a3;
  *(v8 + 68) = 0;
  *(v8 + 70) = 0;
  *(v8 + 69) = 0;
  IPC::Encoder::encodeHeader(v8);
  v18 = v8;
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v8, *a2);
  LOBYTE(v16) = 0;
  v17 = 0;
  v10 = WebKit::AuxiliaryProcessProxy::sendMessage(a1, &v18, a4, &v16, 1);
  if (v17 == 1)
  {
    v11 = v16;
    v16 = 0;
    if (v11)
    {
      (*(*v11 + 8))(v11);
    }
  }

  v12 = v18;
  v18 = 0;
  if (v12)
  {
    IPC::Encoder::~Encoder(v12, v9);
    bmalloc::api::tzoneFree(v14, v15);
  }

  return v10;
}

void *WTF::WeakHashSet<WebKit::RemoteLayerBackingStore,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::WeakHashSetConstIterator::operator++(void *a1)
{
  v2 = a1[2];
  v3 = (a1[1] + 8);
  a1[1] = v3;
  while (v3 != v2 && (*v3 + 1) <= 1)
  {
    a1[1] = ++v3;
  }

  WTF::WeakHashSet<WebKit::RemoteLayerBackingStore,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::WeakHashSetConstIterator::skipEmptyBuckets(a1);
  ++*(*a1 + 8);
  return a1;
}

uint64_t WebKit::WebProcessPool::registerURLSchemeAsBypassingContentSecurityPolicy(WebKit::WebProcessPool *this, WTF::StringImpl **a2, const WTF::StringImpl *a3)
{
  {
    WebKit::LegacyGlobalSettings::singleton(void)::properties = 2;
    *&qword_1ED643540 = 0u;
    *&qword_1ED643550 = 0u;
  }

  WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::add<(WTF::ShouldValidateKey)1>(&qword_1ED643548, a2, a3, &v13);
  v13 = a2;
  WebKit::WebProcessPool::sendToAllProcesses<Messages::WebProcess::RegisterURLSchemeAsBypassingContentSecurityPolicy>(this, &v13);
  WebKit::NetworkProcessProxy::allNetworkProcesses(v5, &v13);
  if (v14)
  {
    v7 = v13;
    v8 = 8 * v14;
    do
    {
      v9 = *v7;
      v10 = (*v7 + 16);
      atomic_fetch_add(v10, 1u);
      v12 = a2;
      WebKit::AuxiliaryProcessProxy::send<Messages::NetworkProcess::RegisterURLSchemeAsBypassingContentSecurityPolicy>(v9, &v12, 0, 0);
      if (v9)
      {
        WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref(v10);
      }

      ++v7;
      v8 -= 8;
    }

    while (v8);
  }

  return WTF::Vector<WTF::Ref<WebKit::NetworkProcessProxy,WTF::RawPtrTraits<WebKit::NetworkProcessProxy>,WTF::DefaultRefDerefTraits<WebKit::NetworkProcessProxy>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v13, v6);
}

uint64_t WebKit::AuxiliaryProcessProxy::send<Messages::WebProcess::RegisterURLSchemeAsBypassingContentSecurityPolicy>(uint64_t a1, uint64_t **a2, uint64_t a3, char a4)
{
  v8 = IPC::Encoder::operator new(0x238, a2);
  *v8 = 2968;
  *(v8 + 2) = 0;
  *(v8 + 3) = 0;
  *(v8 + 1) = a3;
  *(v8 + 68) = 0;
  *(v8 + 70) = 0;
  *(v8 + 69) = 0;
  IPC::Encoder::encodeHeader(v8);
  v18 = v8;
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v8, *a2);
  LOBYTE(v16) = 0;
  v17 = 0;
  v10 = WebKit::AuxiliaryProcessProxy::sendMessage(a1, &v18, a4, &v16, 1);
  if (v17 == 1)
  {
    v11 = v16;
    v16 = 0;
    if (v11)
    {
      (*(*v11 + 8))(v11);
    }
  }

  v12 = v18;
  v18 = 0;
  if (v12)
  {
    IPC::Encoder::~Encoder(v12, v9);
    bmalloc::api::tzoneFree(v14, v15);
  }

  return v10;
}

uint64_t WebKit::WebProcessPool::sendToAllProcesses<Messages::WebProcess::RegisterURLSchemeAsBypassingContentSecurityPolicy>(uint64_t result, uint64_t **a2)
{
  v2 = *(result + 84);
  if (v2)
  {
    v4 = *(result + 72);
    v5 = 8 * v2;
    do
    {
      result = *v4;
      v6 = *(*v4 + 80);
      if (v6 && (*(v6 + 104) & 1) != 0 || *(result + 88))
      {
        v7 = *a2;
        result = WebKit::AuxiliaryProcessProxy::send<Messages::WebProcess::RegisterURLSchemeAsBypassingContentSecurityPolicy>(result, &v7, 0, 0);
      }

      ++v4;
      v5 -= 8;
    }

    while (v5);
  }

  return result;
}

uint64_t WebKit::AuxiliaryProcessProxy::send<Messages::NetworkProcess::RegisterURLSchemeAsBypassingContentSecurityPolicy>(uint64_t a1, uint64_t **a2, uint64_t a3, char a4)
{
  v8 = IPC::Encoder::operator new(0x238, a2);
  *v8 = 648;
  *(v8 + 2) = 0;
  *(v8 + 3) = 0;
  *(v8 + 1) = a3;
  *(v8 + 68) = 0;
  *(v8 + 70) = 0;
  *(v8 + 69) = 0;
  IPC::Encoder::encodeHeader(v8);
  v18 = v8;
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v8, *a2);
  LOBYTE(v16) = 0;
  v17 = 0;
  v10 = WebKit::AuxiliaryProcessProxy::sendMessage(a1, &v18, a4, &v16, 1);
  if (v17 == 1)
  {
    v11 = v16;
    v16 = 0;
    if (v11)
    {
      (*(*v11 + 8))(v11);
    }
  }

  v12 = v18;
  v18 = 0;
  if (v12)
  {
    IPC::Encoder::~Encoder(v12, v9);
    bmalloc::api::tzoneFree(v14, v15);
  }

  return v10;
}

uint64_t WebKit::AuxiliaryProcessProxy::send<Messages::WebProcess::SetDomainRelaxationForbiddenForURLScheme>(uint64_t a1, uint64_t **a2, uint64_t a3, char a4)
{
  v8 = IPC::Encoder::operator new(0x238, a2);
  *v8 = 2990;
  *(v8 + 2) = 0;
  *(v8 + 3) = 0;
  *(v8 + 1) = a3;
  *(v8 + 68) = 0;
  *(v8 + 70) = 0;
  *(v8 + 69) = 0;
  IPC::Encoder::encodeHeader(v8);
  v18 = v8;
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v8, *a2);
  LOBYTE(v16) = 0;
  v17 = 0;
  v10 = WebKit::AuxiliaryProcessProxy::sendMessage(a1, &v18, a4, &v16, 1);
  if (v17 == 1)
  {
    v11 = v16;
    v16 = 0;
    if (v11)
    {
      (*(*v11 + 8))(v11);
    }
  }

  v12 = v18;
  v18 = 0;
  if (v12)
  {
    IPC::Encoder::~Encoder(v12, v9);
    bmalloc::api::tzoneFree(v14, v15);
  }

  return v10;
}

uint64_t WebKit::WebProcessPool::sendToAllProcesses<Messages::WebProcess::SetDomainRelaxationForbiddenForURLScheme>(uint64_t result, uint64_t **a2)
{
  v2 = *(result + 84);
  if (v2)
  {
    v4 = *(result + 72);
    v5 = 8 * v2;
    do
    {
      result = *v4;
      v6 = *(*v4 + 80);
      if (v6 && (*(v6 + 104) & 1) != 0 || *(result + 88))
      {
        v7 = *a2;
        result = WebKit::AuxiliaryProcessProxy::send<Messages::WebProcess::SetDomainRelaxationForbiddenForURLScheme>(result, &v7, 0, 0);
      }

      ++v4;
      v5 -= 8;
    }

    while (v5);
  }

  return result;
}

unint64_t WTF::PairHash<WebKit::WebExtensionContentWorldType,WTF::ObjectIdentifierGeneric<WebKit::WebExtensionPortChannelIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>::hash(unsigned __int8 a1, uint64_t a2)
{
  v2 = ~(a1 << 15) + a1;
  v3 = (9 * (v2 ^ (v2 >> 10))) ^ ((9 * (v2 ^ (v2 >> 10))) >> 6);
  v4 = (~(a2 << 32) + a2) ^ ((~(a2 << 32) + a2) >> 22);
  v5 = 9 * ((v4 + ~(v4 << 13)) ^ ((v4 + ~(v4 << 13)) >> 8));
  v6 = (v5 ^ (v5 >> 15)) + ~((v5 ^ (v5 >> 15)) << 27);
  return (0xD7862706ELL * (277951225 * ((v3 + ~(v3 << 11)) ^ ((v3 + ~(v3 << 11)) >> 16)) + 95187966 * ((v6 >> 31) ^ v6))) >> 4;
}

API::HTTPCookieStore *WebKit::WebsiteDataStore::cookieStore(WebKit::WebsiteDataStore *this)
{
  result = *(this + 53);
  if (!result)
  {
    v3 = API::Object::newObject(0x30uLL, 65);
    result = API::HTTPCookieStore::HTTPCookieStore(v3, this);
    v4 = *(this + 53);
    *(this + 53) = result;
    if (v4)
    {
      CFRelease(*(v4 + 8));
      return *(this + 53);
    }
  }

  return result;
}

API::HTTPCookieStore *API::HTTPCookieStore::HTTPCookieStore(API::HTTPCookieStore *this, WebKit::WebsiteDataStore *a2)
{
  v4 = API::Object::Object(this);
  *v4 = &unk_1F111B448;
  *(v4 + 2) = *(a2 + 3);
  WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(a2 + 4, a2);
  v5 = *(a2 + 2);
  atomic_fetch_add(v5, 1u);
  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 3) = v5;
  return this;
}

unsigned int *API::HTTPCookieStore::registerObserver(uint64_t a1, void *a2)
{
  isEmptyIgnoringNullReferences = WTF::WeakHashSet<WebKit::ProcessThrottlerActivity,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::isEmptyIgnoringNullReferences((a1 + 32));
  result = WTF::WeakHashSet<API::HTTPCookieStoreObserver,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::add<API::HTTPCookieStoreObserver>(a1 + 32, a2, v7);
  if (isEmptyIgnoringNullReferences)
  {
    result = API::HTTPCookieStore::networkProcessLaunchingIfNecessary(a1);
    if (result)
    {
      v6 = (result + 4);
      atomic_fetch_add(result + 4, 1u);
      v7[0] = (a1 + 16);
      WebKit::AuxiliaryProcessProxy::send<Messages::WebCookieManager::StartObservingCookieChanges>(result, v7, 0, 0);
      return WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref(v6);
    }
  }

  return result;
}

uint64_t API::HTTPCookieStore::networkProcessLaunchingIfNecessary(API::HTTPCookieStore *this)
{
  v1 = *(this + 3);
  if (!v1)
  {
    return 0;
  }

  v2 = *(v1 + 8);
  if (!v2)
  {
    return 0;
  }

  CFRetain(v2[1]);
  v4 = WebKit::WebsiteDataStore::networkProcess(v2, v3);
  CFRelease(v2[1]);
  return v4;
}

uint64_t WebKit::AuxiliaryProcessProxy::send<Messages::WebCookieManager::StartObservingCookieChanges>(uint64_t a1, void **a2, uint64_t a3, char a4)
{
  v8 = IPC::Encoder::operator new(0x238, a2);
  *v8 = 1856;
  *(v8 + 2) = 0;
  *(v8 + 3) = 0;
  *(v8 + 1) = a3;
  *(v8 + 68) = 0;
  *(v8 + 70) = 0;
  *(v8 + 69) = 0;
  IPC::Encoder::encodeHeader(v8);
  v18 = v8;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v8, **a2);
  LOBYTE(v16) = 0;
  v17 = 0;
  v10 = WebKit::AuxiliaryProcessProxy::sendMessage(a1, &v18, a4, &v16, 1);
  if (v17 == 1)
  {
    v11 = v16;
    v16 = 0;
    if (v11)
    {
      (*(*v11 + 8))(v11);
    }
  }

  v12 = v18;
  v18 = 0;
  if (v12)
  {
    IPC::Encoder::~Encoder(v12, v9);
    bmalloc::api::tzoneFree(v14, v15);
  }

  return v10;
}

uint64_t WebKit::WebInspectorUIProxy::WebInspectorUIProxy(WebKit::WebInspectorUIProxy *this, WebKit::WebPageProxy *a2)
{
  v4 = API::Object::Object(this);
  v5 = v4 + 16;
  *v4 = &unk_1F111EBB0;
  *(v4 + 2) = &unk_1F111EC00;
  *(v4 + 3) = 0;
  *(v4 + 4) = &unk_1F111EC48;
  WTF::WeakPtrFactory<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(a2 + 6, a2 + 16);
  v7 = *(a2 + 3);
  atomic_fetch_add(v7, 1u);
  *(this + 5) = v7;
  *(this + 6) = 0;
  if (API::InspectorClient::operator new(unsigned long)::s_heapRef)
  {
    NonCompact = bmalloc::api::tzoneAllocateNonCompact(API::InspectorClient::operator new(unsigned long)::s_heapRef, v6);
  }

  else
  {
    NonCompact = bmalloc::api::tzoneAllocateNonCompactSlow();
  }

  *NonCompact = &unk_1F111ED90;
  *(this + 7) = NonCompact;
  *(this + 8) = *(a2 + 5);
  *(this + 9) = 0;
  *(this + 77) = 0;
  v9 = *(this + 5);
  if (v9 && (v10 = *(v9 + 8)) != 0)
  {
    v11 = v10 - 16;
    CFRetain(*(v10 - 8));
  }

  else
  {
    v11 = 0;
  }

  v12 = *(v11 + 352);
  atomic_fetch_add((v12 + 16), 1u);
  v13 = *(this + 5);
  if (v13 && (v14 = *(v13 + 8)) != 0)
  {
    v15 = *(v14 + 32);
    v18[0] = 181;
    v18[1] = v15;
    WTF::HashMap<std::pair<IPC::ReceiverName,unsigned long long>,WTF::WeakPtr<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<std::pair<IPC::ReceiverName,unsigned long long>>,WTF::PairHashTraits<WTF::StrongEnumHashTraits<IPC::ReceiverName>,WTF::HashTraits<unsigned long long>>,WTF::HashTraits<WTF::WeakPtr<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::inlineSet<std::pair<IPC::ReceiverName,unsigned long long>,IPC::MessageReceiver&>((v12 + 104), v18, v5, v17);
    if (v12)
    {
      WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v12 + 16));
    }

    CFRelease(*(v11 + 8));
    return this;
  }

  else
  {
    result = 121;
    __break(0xC471u);
  }

  return result;
}

uint64_t WebKit::WebPageProxy::didAttachToRunningProcess(WebKit::WebPageProxy *this)
{
  v2 = *(this + 7);
  if (v2)
  {
    v3 = *(v2 + 8);
    if (v3)
    {
      (*(*v3 + 1712))(v3);
    }
  }

  else
  {
    v3 = 0;
  }

  v4 = (*(*v3 + 1328))(v3);
  ++*(v4 + 2);
  v6 = WebKit::WebFullScreenManagerProxy::operator new(0x58, v5);
  WebKit::WebFullScreenManagerProxy::WebFullScreenManagerProxy(v6, this, v4);
  v7 = *(this + 63);
  *(this + 63) = v6;
  if (v7)
  {
    if (v7[5] == 1)
    {
      (*(*v7 + 24))(v7);
    }

    else
    {
      --v7[5];
    }
  }

  v8 = *(v4 + 2);
  if (!v8)
  {
    result = 290;
    __break(0xC471u);
    return result;
  }

  *(v4 + 2) = v8 - 1;
  (*(*v3 + 1720))(v3);
  WebKit::PlaybackSessionManagerProxy::create(this, &v38);
  v9 = v38;
  v10 = *(this + 65);
  *(this + 65) = v38;
  if (v10)
  {
    if (v10[4] == 1)
    {
      (*(*v10 + 24))(v10);
      v9 = *(this + 65);
      if (!v9)
      {
        goto LABEL_14;
      }

      goto LABEL_13;
    }

    --v10[4];
  }

  if (v9)
  {
LABEL_13:
    ++*(v9 + 4);
  }

LABEL_14:
  WebKit::VideoPresentationManagerProxy::create(this, v9, &v38);
  v12 = *(this + 66);
  *(this + 66) = v38;
  if (v12)
  {
    if (v12[4] == 1)
    {
      (*(*v12 + 24))(v12);
    }

    else
    {
      --v12[4];
    }
  }

  if (*(v9 + 4) == 1)
  {
    (*(*v9 + 24))(v9);
  }

  else
  {
    --*(v9 + 4);
  }

  v13 = *(this + 66);
  if (v13)
  {
    v14 = *(v13 + 16);
    *(v13 + 16) = v14 + 1;
    *(v13 + 32) = *(this + 536);
    if (v14)
    {
      *(v13 + 16) = v14;
    }

    else
    {
      (*(*v13 + 24))(v13);
    }
  }

  WebKit::WebPaymentCoordinatorProxy::create((*(this + 4) + 16), v11, &v38);
  v16 = *(this + 4);
  v17 = *(v16 + 2240);
  *(v16 + 2240) = v38;
  if (v17)
  {
    WTF::RefCounted<WebKit::WebPaymentCoordinatorProxy>::deref((v17 + 40));
  }

  v18 = WebKit::SystemPreviewController::operator new(0x130, v15);
  v19 = WebKit::SystemPreviewController::SystemPreviewController(v18, this);
  v20 = *(this + 69);
  *(this + 69) = v19;
  if (v20)
  {
    WTF::RefCounted<WebKit::SystemPreviewController>::deref((v20 + 8));
  }

  v21 = *(this + 46);
  CFRetain(*(v21 + 8));
  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::modelElementEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::modelElementEnabledKey(void)::key = WebKit::WebPreferencesKey::modelElementEnabledKey(void)::$_0::operator() const(void)::impl;
  }

  BoolValueForKey = WebKit::WebPreferencesStore::getBoolValueForKey((v21 + 40), &WebKit::WebPreferencesKey::modelElementEnabledKey(void)::key, v22);
  CFRelease(*(v21 + 8));
  if (BoolValueForKey)
  {
    v25 = WebKit::ModelElementController::operator new(0x18, v24);
    *v25 = 0;
    *(v25 + 8) = 1;
    WTF::WeakPtrFactory<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(this + 6, this + 16);
    v26 = *(this + 3);
    atomic_fetch_add(v26, 1u);
    *(v25 + 16) = v26;
    v27 = *(this + 70);
    *(this + 70) = v25;
    if (v27)
    {
      WTF::RefCounted<WebKit::ModelElementController>::deref(v27 + 8, v24);
    }
  }

  v28 = WebKit::WebAuthenticatorCoordinatorProxy::operator new(0x68, v24);
  WebKit::WebAuthenticatorCoordinatorProxy::WebAuthenticatorCoordinatorProxy(v28, this);
  v30 = *(this + 72);
  *(this + 72) = v28;
  if (v30)
  {
    if (v30[4] == 1)
    {
      (*(*v30 + 24))(v30);
    }

    else
    {
      --v30[4];
    }
  }

  WebKit::WebDeviceOrientationUpdateProviderProxy::create(this, v29, &v38);
  v32 = *(this + 172);
  *(this + 172) = v38;
  if (v32)
  {
    if (v32[8] == 1)
    {
      (*(*v32 + 8))(v32);
    }

    else
    {
      --v32[8];
    }
  }

  v33 = *(this + 135);
  if (v33 == -90)
  {
    v34 = 3;
  }

  else if (v33 == 90)
  {
    v34 = 2;
  }

  else
  {
    v34 = v33 == 180;
  }

  v35 = WebKit::WebScreenOrientationManagerProxy::operator new(0x38, v31);
  result = WebKit::WebScreenOrientationManagerProxy::WebScreenOrientationManagerProxy(v35, this, v34);
  v37 = *(this + 173);
  *(this + 173) = result;
  if (v37)
  {

    return WTF::RefCounted<WebKit::WebScreenOrientationManagerProxy>::deref((v37 + 16));
  }

  return result;
}

uint64_t WebKit::PageClientImpl::fullScreenManagerProxyClient(WebKit::PageClientImpl *this)
{
  if (*(this + 4))
  {
    return *(this + 4);
  }

  else
  {
    return this + 40;
  }
}

uint64_t WebKit::WebFullScreenManagerProxy::operator new(WebKit::WebFullScreenManagerProxy *this, void *a2)
{
  if (this == 88 && WebKit::WebFullScreenManagerProxy::s_heapRef)
  {
    return bmalloc::api::tzoneAllocateNonCompact(WebKit::WebFullScreenManagerProxy::s_heapRef, a2);
  }

  else
  {
    return WebKit::WebFullScreenManagerProxy::operatorNewSlow(this);
  }
}

WebKit::WebFullScreenManagerProxy *WebKit::WebFullScreenManagerProxy::WebFullScreenManagerProxy(WebKit::WebFullScreenManagerProxy *this, WebKit::WebPageProxy *a2, WebKit::WebFullScreenManagerProxyClient *a3)
{
  *(this + 2) = 0x100000000;
  *this = &unk_1F11163E8;
  *(this + 1) = 0;
  WTF::WeakPtrFactory<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(a2 + 6, a2 + 16);
  v6 = *(a2 + 3);
  atomic_fetch_add(v6, 1u);
  ++*(a3 + 2);
  *(this + 3) = v6;
  *(this + 4) = a3;
  *(this + 20) = 0;
  *(this + 7) = 0;
  *(this + 8) = 0;
  *(this + 6) = 0;
  v7 = WebKit::WebPageProxy::logger(a2);
  atomic_fetch_add((v7 + 8), 1u);
  *(this + 9) = v7;
  v8 = *(a2 + 5) + ~(*(a2 + 5) << 32);
  v9 = 9 * (((v8 ^ (v8 >> 22)) + ~((v8 ^ (v8 >> 22)) << 13)) ^ (((v8 ^ (v8 >> 22)) + ~((v8 ^ (v8 >> 22)) << 13)) >> 8));
  v10 = (v9 ^ (v9 >> 15)) + ~((v9 ^ (v9 >> 15)) << 27);
  *(this + 10) = (v10 >> 31) ^ v10;
  v11 = *(a2 + 44);
  atomic_fetch_add((v11 + 16), 1u);
  v12 = *(a2 + 6);
  v15[0] = 172;
  v15[1] = v12;
  WTF::HashMap<std::pair<IPC::ReceiverName,unsigned long long>,WTF::WeakPtr<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<std::pair<IPC::ReceiverName,unsigned long long>>,WTF::PairHashTraits<WTF::StrongEnumHashTraits<IPC::ReceiverName>,WTF::HashTraits<unsigned long long>>,WTF::HashTraits<WTF::WeakPtr<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::inlineSet<std::pair<IPC::ReceiverName,unsigned long long>,IPC::MessageReceiver&>((v11 + 104), v15, this, v14);
  if (v11)
  {
    WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v11 + 16));
  }

  return this;
}

uint64_t WebKit::WebPageProxy::logger(WebKit::WebPageProxy *this)
{
  if (!*(this + 164))
  {
    v2 = WTF::fastMalloc(0x18);
    *(v2 + 8) = 1;
    *v2 = &unk_1F10FAF48;
    *(v2 + 12) = 1;
    *(v2 + 16) = this;
    atomic_fetch_add((v2 + 8), 1u);
    v3 = *(this + 164);
    *(this + 164) = v2;
    if (v3 && atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v3 + 2);
      (*(*v3 + 8))(v3);
    }

    isAlwaysOnLoggingAllowed = WebKit::WebPageProxy::isAlwaysOnLoggingAllowed(this);
    if (*(v2 + 16) == this)
    {
      *(v2 + 12) = isAlwaysOnLoggingAllowed;
    }

    if (atomic_fetch_add((v2 + 8), 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, (v2 + 8));
      (*(*v2 + 8))(v2);
    }
  }

  return *(this + 164);
}

uint64_t WebKit::WebPageProxy::isAlwaysOnLoggingAllowed(WebKit::WebPageProxy *this)
{
  if (*(*(this + 51) + 24) > -2)
  {
    return 1;
  }

  v2 = *(this + 46);
  CFRetain(*(v2 + 8));
  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::allowPrivacySensitiveOperationsInNonPersistentDataStoresKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::allowPrivacySensitiveOperationsInNonPersistentDataStoresKey(void)::key = WebKit::WebPreferencesKey::allowPrivacySensitiveOperationsInNonPersistentDataStoresKey(void)::$_0::operator() const(void)::impl;
  }

  BoolValueForKey = WebKit::WebPreferencesStore::getBoolValueForKey((v2 + 40), &WebKit::WebPreferencesKey::allowPrivacySensitiveOperationsInNonPersistentDataStoresKey(void)::key, v3);
  CFRelease(*(v2 + 8));
  return BoolValueForKey;
}

WebKit::PlaybackSessionManagerProxy *WebKit::PlaybackSessionManagerProxy::create@<X0>(WebKit::PlaybackSessionManagerProxy *this@<X0>, WebKit::PlaybackSessionManagerProxy **a2@<X8>)
{
  v5 = WTF::fastMalloc(0x60);
  result = WebKit::PlaybackSessionManagerProxy::PlaybackSessionManagerProxy(v5, this);
  *a2 = v5;
  return result;
}

WebKit::PlaybackSessionManagerProxy *WebKit::PlaybackSessionManagerProxy::PlaybackSessionManagerProxy(WebKit::PlaybackSessionManagerProxy *this, WebKit::WebPageProxy *a2)
{
  *(this + 3) = 0;
  *(this + 1) = 0;
  *(this + 4) = 1;
  *this = &unk_1F11007D0;
  WTF::WeakPtrFactory<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(a2 + 6, a2 + 16);
  v4 = *(a2 + 3);
  atomic_fetch_add(v4, 1u);
  *(this + 5) = 0;
  *(this + 4) = v4;
  *(this + 9) = 0;
  *(this + 6) = 0;
  *(this + 7) = 0;
  *(this + 64) = 0;
  v5 = WebKit::WebPageProxy::logger(a2);
  atomic_fetch_add(v5 + 2, 1u);
  *(this + 10) = v5;
  v6 = *(a2 + 5) + ~(*(a2 + 5) << 32);
  v7 = (v6 ^ (v6 >> 22)) + ~((v6 ^ (v6 >> 22)) << 13);
  v8 = (9 * (v7 ^ (v7 >> 8))) ^ ((9 * (v7 ^ (v7 >> 8))) >> 15);
  *(this + 11) = ((v8 + ~(v8 << 27)) >> 31) ^ (v8 + ~(v8 << 27));
  atomic_fetch_add(v5 + 2, 1u);
  v9 = *(this + 11);
  v17[0] = "PlaybackSessionManagerProxy";
  v17[1] = 28;
  v17[2] = "PlaybackSessionManagerProxy";
  v17[3] = v9;
  if (WTF::Logger::willLog<WTF::Logger::LogSiteIdentifier>(v5, &WebKit2LogMedia, 0, v17))
  {
    WTF::Logger::log<WTF::Logger::LogSiteIdentifier>(&WebKit2LogMedia, 0, v17);
  }

  if (atomic_fetch_add(v5 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v5 + 2);
    (*(*v5 + 8))(v5);
  }

  v10 = *(this + 4);
  if (v10 && (v11 = *(v10 + 8)) != 0)
  {
    CFRetain(*(v11 - 8));
    v12 = 0;
    v13 = v11 - 16;
  }

  else
  {
    v13 = 0;
    v12 = 1;
  }

  v14 = *(v13 + 352);
  atomic_fetch_add((v14 + 16), 1u);
  v15 = *(v13 + 48);
  v18[0] = 50;
  v18[1] = v15;
  WTF::HashMap<std::pair<IPC::ReceiverName,unsigned long long>,WTF::WeakPtr<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<std::pair<IPC::ReceiverName,unsigned long long>>,WTF::PairHashTraits<WTF::StrongEnumHashTraits<IPC::ReceiverName>,WTF::HashTraits<unsigned long long>>,WTF::HashTraits<WTF::WeakPtr<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::inlineSet<std::pair<IPC::ReceiverName,unsigned long long>,IPC::MessageReceiver&>((v14 + 104), v18, this, v17);
  if (v14)
  {
    WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v14 + 16));
  }

  if ((v12 & 1) == 0)
  {
    CFRelease(*(v13 + 8));
  }

  return this;
}

void sub_19D5CFC48(_Unwind_Exception *a1, void *a2)
{
  v8 = *(v2 + 80);
  *(v2 + 80) = 0;
  if (v8 && atomic_fetch_add(v8 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v8 + 2);
    (*(*v8 + 8))(v8);
  }

  v9 = *(v2 + 72);
  if (v9)
  {
    WTF::fastFree((v9 - 16), a2);
  }

  if (*v6)
  {
    WTF::HashTable<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::tuple<WTF::Ref<WebKit::PlaybackSessionModelContext,WTF::RawPtrTraits<WebKit::PlaybackSessionModelContext>,WTF::DefaultRefDerefTraits<WebKit::PlaybackSessionModelContext>>,WTF::Ref<WebCore::PlaybackSessionInterfaceIOS,WTF::RawPtrTraits<WebCore::PlaybackSessionInterfaceIOS>,WTF::DefaultRefDerefTraits<WebCore::PlaybackSessionInterfaceIOS>>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::tuple<WTF::Ref<WebKit::PlaybackSessionModelContext,WTF::RawPtrTraits<WebKit::PlaybackSessionModelContext>,WTF::DefaultRefDerefTraits<WebKit::PlaybackSessionModelContext>>,WTF::Ref<WebCore::PlaybackSessionInterfaceIOS,WTF::RawPtrTraits<WebCore::PlaybackSessionInterfaceIOS>,WTF::DefaultRefDerefTraits<WebCore::PlaybackSessionInterfaceIOS>>>>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashMap<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::tuple<WTF::Ref<WebKit::PlaybackSessionModelContext,WTF::RawPtrTraits<WebKit::PlaybackSessionModelContext>,WTF::DefaultRefDerefTraits<WebKit::PlaybackSessionModelContext>>,WTF::Ref<WebCore::PlaybackSessionInterfaceIOS,WTF::RawPtrTraits<WebCore::PlaybackSessionInterfaceIOS>,WTF::DefaultRefDerefTraits<WebCore::PlaybackSessionInterfaceIOS>>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<std::tuple<WTF::Ref<WebKit::PlaybackSessionModelContext,WTF::RawPtrTraits<WebKit::PlaybackSessionModelContext>,WTF::DefaultRefDerefTraits<WebKit::PlaybackSessionModelContext>>,WTF::Ref<WebCore::PlaybackSessionInterfaceIOS,WTF::RawPtrTraits<WebCore::PlaybackSessionInterfaceIOS>,WTF::DefaultRefDerefTraits<WebCore::PlaybackSessionInterfaceIOS>>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::FastMalloc>::deallocateTable(*v6, a2);
  }

  v10 = *(v2 + 32);
  *(v2 + 32) = 0;
  if (v10 && atomic_fetch_add(v10, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v10);
    WTF::fastFree(v10, a2);
  }

  *v2 = v5;
  WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::~WeakPtrFactory(v4, a2);
  WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::~WeakPtrFactory(v3, v11);
  if (*(v2 + 16) == 1)
  {
    _Unwind_Resume(a1);
  }

  __break(0xC471u);
}

BOOL WTF::Logger::willLog<WTF::Logger::LogSiteIdentifier>(WTF::Logger *a1, _BYTE *a2, uint64_t a3, WTF::Logger::LogSiteIdentifier *a4)
{
  v24[1] = *MEMORY[0x1E69E9840];
  v8 = MEMORY[0x1E696EBD0];
  do
  {
    v9 = *v8;
    if (v9)
    {
      return 0;
    }

    v10 = *v8;
    atomic_compare_exchange_strong_explicit(v8, &v10, v9 | 1, memory_order_acquire, memory_order_acquire);
  }

  while (v10 != v9);
  v11 = WTF::Logger::messageHandlerObservers(a1);
  v12 = *(v11 + 12);
  if (v12)
  {
    v13 = *v11;
    v14 = 8 * v12;
    do
    {
      v15 = *v13;
      v23 = 0;
      WTF::Logger::LogSiteIdentifier::toString(v24, a4);
      WTF::Vector<WTF::JSONLogValue,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(v22, &v23, 1uLL);
      (*(*v15 + 16))(v15, a2, a3, v22);
      WTF::Vector<std::tuple<Inspector::BackendDispatcher::CommonErrorCode,WTF::String>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v22, v16);
      v18 = v24[0];
      v24[0] = 0;
      if (v18 && atomic_fetch_add_explicit(v18, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v18, v17);
      }

      ++v13;
      v14 -= 8;
    }

    while (v14);
  }

  v19 = 1;
  atomic_compare_exchange_strong_explicit(v8, &v19, 0, memory_order_release, memory_order_relaxed);
  if (v19 != 1)
  {
    WTF::Lock::unlockSlow(MEMORY[0x1E696EBD0]);
  }

  if ((*(a1 + 12) & 1) == 0)
  {
    return 0;
  }

  if (a3 < 2)
  {
    return 1;
  }

  return *a2 && a2[16] >= a3;
}

WTF::StringImpl *WTF::Logger::log<WTF::Logger::LogSiteIdentifier>(uint64_t a1, uint64_t a2, WTF::Logger::LogSiteIdentifier *this)
{
  v29 = *MEMORY[0x1E69E9840];
  WTF::Logger::LogSiteIdentifier::toString(&v24, this);
  *buf = v24;
  result = WTF::tryMakeStringFromAdapters<WTF::StringTypeAdapter<WTF::String,void>>(buf, &v25);
  if (v25)
  {
    v8 = v24;
    v24 = 0;
    if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v8, v7);
    }

    v9 = *(a1 + 32);
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
    if (v10)
    {
      WTF::String::utf8();
      v12 = v26 ? v26 + 16 : 0;
      *buf = 136446210;
      *&buf[4] = v12;
      _os_log_impl(&dword_19D52D000, v9, OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
      v10 = v26;
      v26 = 0;
      if (v10)
      {
        if (*v10 == 1)
        {
          v10 = WTF::fastFree(v10, v11);
        }

        else
        {
          --*v10;
        }
      }
    }

    if (*a1 && *(a1 + 16) >= a2)
    {
      v13 = MEMORY[0x1E696EBC0];
      while (1)
      {
        v14 = *v13;
        if (v14)
        {
          break;
        }

        v15 = *v13;
        atomic_compare_exchange_strong_explicit(v13, &v15, v14 | 1, memory_order_acquire, memory_order_acquire);
        if (v15 == v14)
        {
          v16 = WTF::Logger::observers(v10);
          v17 = *(v16 + 12);
          if (v17)
          {
            v18 = *v16;
            v19 = 8 * v17;
            do
            {
              v20 = *v18;
              LODWORD(v26) = 0;
              WTF::Logger::LogSiteIdentifier::toString(&v27, this);
              WTF::Vector<WTF::JSONLogValue,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(buf, &v26, 1uLL);
              (*(*v20 + 16))(v20, a1, a2, buf);
              WTF::Vector<std::tuple<Inspector::BackendDispatcher::CommonErrorCode,WTF::String>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(buf, v21);
              v22 = v27;
              v27 = 0;
              if (v22 && atomic_fetch_add_explicit(v22, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v22, v11);
              }

              ++v18;
              v19 -= 8;
            }

            while (v19);
          }

          v23 = 1;
          atomic_compare_exchange_strong_explicit(v13, &v23, 0, memory_order_release, memory_order_relaxed);
          if (v23 != 1)
          {
            WTF::Lock::unlockSlow(MEMORY[0x1E696EBC0]);
          }

          break;
        }
      }
    }

    result = v25;
    v25 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        return WTF::StringImpl::destroy(result, v11);
      }
    }
  }

  else
  {
    __break(0xC471u);
  }

  return result;
}

uint64_t WTF::tryMakeStringFromAdapters<WTF::StringTypeAdapter<WTF::String,void>>@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  if (!*a1)
  {
    result = 0;
    v4 = 1;
    return WTF::tryMakeStringImplFromAdaptersInternal<WTF::StringTypeAdapter<WTF::String,void>>(result, v4, v2, a2);
  }

  result = *(v2 + 4);
  if ((result & 0x80000000) == 0)
  {
    v4 = (*(v2 + 16) >> 2) & 1;
    return WTF::tryMakeStringImplFromAdaptersInternal<WTF::StringTypeAdapter<WTF::String,void>>(result, v4, v2, a2);
  }

  *a2 = 0;
  return result;
}

uint64_t WTF::tryMakeStringImplFromAdaptersInternal<WTF::StringTypeAdapter<WTF::String,void>>@<X0>(uint64_t result@<X0>, int a2@<W1>, _DWORD *a3@<X2>, void *a4@<X8>)
{
  v5 = result;
  if (a2)
  {
    if (result)
    {
      if ((result & 0x80000000) == 0)
      {
        result = WTF::tryFastCompactMalloc((result + 20));
        v7 = v10;
        if (v10)
        {
          v8 = (v10 + 5);
          *v10 = 2;
          v7[1] = v5;
          *(v7 + 1) = v7 + 5;
          v7[4] = 4;
          v10 = a3;
          result = WTF::StringTypeAdapter<WTF::StringImpl *,void>::writeTo<unsigned char>(&v10, v8);
        }

        goto LABEL_12;
      }

LABEL_8:
      v7 = 0;
      goto LABEL_12;
    }

LABEL_9:
    v7 = MEMORY[0x1E696EB88];
    atomic_fetch_add_explicit(MEMORY[0x1E696EB88], 2u, memory_order_relaxed);
    goto LABEL_12;
  }

  if (!result)
  {
    goto LABEL_9;
  }

  if (result > 0x7FFFFFEF)
  {
    goto LABEL_8;
  }

  result = WTF::tryFastCompactMalloc((2 * result + 20));
  v7 = v10;
  if (v10)
  {
    v9 = (v10 + 5);
    *v10 = 2;
    v7[1] = v5;
    *(v7 + 1) = v7 + 5;
    v7[4] = 0;
    v10 = a3;
    result = WTF::StringTypeAdapter<WTF::StringImpl *,void>::writeTo<char16_t>(&v10, v9);
  }

LABEL_12:
  *a4 = v7;
  return result;
}

WebKit::VideoPresentationManagerProxy *WebKit::VideoPresentationManagerProxy::create@<X0>(WebKit::VideoPresentationManagerProxy *this@<X0>, WebKit::WebPageProxy *a2@<X1>, WebKit::VideoPresentationManagerProxy **a3@<X8>)
{
  v7 = WTF::fastMalloc(0x80);
  result = WebKit::VideoPresentationManagerProxy::VideoPresentationManagerProxy(v7, this, a2);
  *a3 = v7;
  return result;
}

WebKit::VideoPresentationManagerProxy *WebKit::VideoPresentationManagerProxy::VideoPresentationManagerProxy(WebKit::VideoPresentationManagerProxy *this, WebKit::WebPageProxy *a2, WebKit::PlaybackSessionManagerProxy *a3)
{
  *(this + 4) = 1;
  *(this + 3) = 0;
  *(this + 1) = 0;
  *this = &unk_1F11027A0;
  *(this + 32) = 0;
  *(this + 36) = vdup_n_s32(0x42C80000u);
  WTF::WeakPtrFactory<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(a2 + 6, a2 + 16);
  v6 = *(a2 + 3);
  atomic_fetch_add(v6, 1u);
  ++*(a3 + 4);
  *(this + 5) = 0u;
  *(this + 6) = v6;
  *(this + 7) = a3;
  *(this + 4) = 0u;
  *(this + 6) = 0u;
  *(this + 7) = 0u;
  v7 = *(a3 + 10);
  atomic_fetch_add(v7 + 2, 1u);
  v8 = *(*(this + 7) + 88);
  v16[0] = "PlaybackSessionManagerProxy";
  v16[1] = 28;
  v16[2] = "VideoPresentationManagerProxy";
  v16[3] = v8;
  if (WTF::Logger::willLog<WTF::Logger::LogSiteIdentifier>(v7, &WebKit2LogFullscreen, 0, v16))
  {
    WTF::Logger::log<WTF::Logger::LogSiteIdentifier>(&WebKit2LogFullscreen, 0, v16);
  }

  if (v7 && atomic_fetch_add(v7 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v7 + 2);
    (*(*v7 + 8))(v7);
  }

  v9 = *(this + 6);
  if (v9 && (v10 = *(v9 + 8)) != 0)
  {
    CFRetain(*(v10 - 8));
    v11 = 0;
    v12 = v10 - 16;
  }

  else
  {
    v12 = 0;
    v11 = 1;
  }

  v13 = *(v12 + 352);
  atomic_fetch_add((v13 + 16), 1u);
  v14 = *(v12 + 48);
  v17[0] = 151;
  v17[1] = v14;
  WTF::HashMap<std::pair<IPC::ReceiverName,unsigned long long>,WTF::WeakPtr<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<std::pair<IPC::ReceiverName,unsigned long long>>,WTF::PairHashTraits<WTF::StrongEnumHashTraits<IPC::ReceiverName>,WTF::HashTraits<unsigned long long>>,WTF::HashTraits<WTF::WeakPtr<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::inlineSet<std::pair<IPC::ReceiverName,unsigned long long>,IPC::MessageReceiver&>((v13 + 104), v17, this, v16);
  if (v13)
  {
    WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v13 + 16));
  }

  if ((v11 & 1) == 0)
  {
    CFRelease(*(v12 + 8));
  }

  return this;
}

void sub_19D5D0528(_Unwind_Exception *a1, void *a2)
{
  v9 = *(v2 + 96);
  if (v9)
  {
    WTF::HashTable<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::FastMalloc>::deallocateTable(v9, a2);
  }

  WTF::Vector<WTF::CompletionHandler<void ()(void)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v6, a2);
  v11 = *(v2 + 72);
  if (v11)
  {
    WTF::fastFree((v11 - 16), v10);
  }

  if (*v7)
  {
    WTF::HashTable<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::pair<WTF::Ref<WebKit::VideoPresentationModelContext,WTF::RawPtrTraits<WebKit::VideoPresentationModelContext>,WTF::DefaultRefDerefTraits<WebKit::VideoPresentationModelContext>>,WTF::Ref<WebCore::VideoPresentationInterfaceIOS,WTF::RawPtrTraits<WebCore::VideoPresentationInterfaceIOS>,WTF::DefaultRefDerefTraits<WebCore::VideoPresentationInterfaceIOS>>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::pair<WTF::Ref<WebKit::VideoPresentationModelContext,WTF::RawPtrTraits<WebKit::VideoPresentationModelContext>,WTF::DefaultRefDerefTraits<WebKit::VideoPresentationModelContext>>,WTF::Ref<WebCore::VideoPresentationInterfaceIOS,WTF::RawPtrTraits<WebCore::VideoPresentationInterfaceIOS>,WTF::DefaultRefDerefTraits<WebCore::VideoPresentationInterfaceIOS>>>>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashMap<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::pair<WTF::Ref<WebKit::VideoPresentationModelContext,WTF::RawPtrTraits<WebKit::VideoPresentationModelContext>,WTF::DefaultRefDerefTraits<WebKit::VideoPresentationModelContext>>,WTF::Ref<WebCore::VideoPresentationInterfaceIOS,WTF::RawPtrTraits<WebCore::VideoPresentationInterfaceIOS>,WTF::DefaultRefDerefTraits<WebCore::VideoPresentationInterfaceIOS>>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<std::pair<WTF::Ref<WebKit::VideoPresentationModelContext,WTF::RawPtrTraits<WebKit::VideoPresentationModelContext>,WTF::DefaultRefDerefTraits<WebKit::VideoPresentationModelContext>>,WTF::Ref<WebCore::VideoPresentationInterfaceIOS,WTF::RawPtrTraits<WebCore::VideoPresentationInterfaceIOS>,WTF::DefaultRefDerefTraits<WebCore::VideoPresentationInterfaceIOS>>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::FastMalloc>::deallocateTable(*v7, v10);
  }

  v12 = *(v2 + 56);
  *(v2 + 56) = 0;
  if (v12)
  {
    if (v12[4] == 1)
    {
      (*(*v12 + 24))(v12);
    }

    else
    {
      --v12[4];
    }
  }

  v13 = *(v2 + 48);
  *(v2 + 48) = 0;
  if (v13 && atomic_fetch_add(v13, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v13);
    WTF::fastFree(v13, v10);
  }

  *v2 = v5;
  WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::~WeakPtrFactory(v4, v10);
  WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::~WeakPtrFactory(v3, v14);
  if (*(v2 + 16) == 1)
  {
    _Unwind_Resume(a1);
  }

  __break(0xC471u);
  JUMPOUT(0x19D5D066CLL);
}

uint64_t WebKit::WebPaymentCoordinatorProxy::operator new(WebKit::WebPaymentCoordinatorProxy *this, void *a2)
{
  if (this == 104 && WebKit::WebPaymentCoordinatorProxy::s_heapRef)
  {
    return bmalloc::api::tzoneAllocateNonCompact(WebKit::WebPaymentCoordinatorProxy::s_heapRef, a2);
  }

  else
  {
    return WebKit::WebPaymentCoordinatorProxy::operatorNewSlow(this);
  }
}

uint64_t WebKit::WebPaymentCoordinatorProxy::create@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = WebKit::WebPaymentCoordinatorProxy::operator new(0x68, a2);
  result = WebKit::WebPaymentCoordinatorProxy::WebPaymentCoordinatorProxy(v5, a1);
  *a3 = v5;
  return result;
}

uint64_t WebKit::WebPaymentCoordinatorProxy::WebPaymentCoordinatorProxy(uint64_t a1, void *a2)
{
  *(a1 + 8) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 1;
  *a1 = &unk_1F10EF7E0;
  *(a1 + 16) = &unk_1F10EF878;
  *(a1 + 24) = &unk_1F10EF8C8;
  if (!a2[1])
  {
    v5 = WTF::fastCompactMalloc(0x10);
    *v5 = 1;
    *(v5 + 8) = a2;
    v6 = a2[1];
    a2[1] = v5;
    if (v6)
    {
      if (atomic_fetch_add(v6, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v6);
        WTF::fastFree(v6, v4);
      }
    }
  }

  v7 = a2[1];
  atomic_fetch_add(v7, 1u);
  *(a1 + 48) = v7;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 76) = 0;
  *(a1 + 80) = 0;
  WTF::WorkQueue::create();
  *(a1 + 96) = 0;
  (*(*a2 + 48))(a2, a1, 189, a1);
  return a1;
}

void sub_19D5D085C(_Unwind_Exception *a1, void *a2)
{
  if (*(v2 + 40) == 1)
  {
    WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::~WeakPtrFactory(v4, a2);
    *v2 = &unk_1F10EA5E0;
    WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::~WeakPtrFactory(v3, v6);
    _Unwind_Resume(a1);
  }

  __break(0xC471u);
}

void WebKit::WebPageProxy::Internals::paymentCoordinatorAddMessageReceiver(WebKit::WebPageProxy::Internals *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  WebKit::WebPageProxy::Internals::protectedPage(a1, &v10);
  v7 = *(v10 + 352);
  atomic_fetch_add((v7 + 16), 1u);
  v8 = *(*(a1 + 9) + 8);
  if (v8)
  {
    v9 = *(v8 + 32);
    v12[0] = a3;
    v12[1] = v9;
    WTF::HashMap<std::pair<IPC::ReceiverName,unsigned long long>,WTF::WeakPtr<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<std::pair<IPC::ReceiverName,unsigned long long>>,WTF::PairHashTraits<WTF::StrongEnumHashTraits<IPC::ReceiverName>,WTF::HashTraits<unsigned long long>>,WTF::HashTraits<WTF::WeakPtr<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::inlineSet<std::pair<IPC::ReceiverName,unsigned long long>,IPC::MessageReceiver&>((v7 + 104), v12, a4, v11);
    if (v7)
    {
      WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v7 + 16));
    }

    if (v10)
    {
      CFRelease(*(v10 + 8));
    }
  }

  else
  {
    __break(0xC471u);
  }
}

CFTypeRef WebKit::WebPageProxy::Internals::protectedPage@<X0>(WebKit::WebPageProxy::Internals *this@<X0>, void *a2@<X8>)
{
  v3 = *(*(this + 9) + 8);
  if (!v3)
  {
    __break(0xC471u);
    JUMPOUT(0x19D5D0A9CLL);
  }

  v4 = v3 - 16;
  result = CFRetain(*(v3 - 8));
  *a2 = v4;
  return result;
}

uint64_t WebKit::SystemPreviewController::operator new(WebKit::SystemPreviewController *this, void *a2)
{
  if (this == 304 && WebKit::SystemPreviewController::s_heapRef)
  {
    return bmalloc::api::tzoneAllocateNonCompact(WebKit::SystemPreviewController::s_heapRef, a2);
  }

  else
  {
    return WebKit::SystemPreviewController::operatorNewSlow(this);
  }
}

WebKit::SystemPreviewController *WebKit::SystemPreviewController::SystemPreviewController(WebKit::SystemPreviewController *this, WebKit::WebPageProxy *a2)
{
  *this = 0;
  *(this + 2) = 1;
  *(this + 12) = 0;
  WTF::WeakPtrFactory<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(a2 + 6, a2 + 16);
  v4 = *(a2 + 3);
  atomic_fetch_add(v4, 1u);
  *(this + 2) = v4;
  *(this + 9) = 0;
  *(this + 10) = 0;
  *(this + 8) = 0;
  *(this + 12) = 0;
  *(this + 5) = 0;
  *(this + 6) = 0;
  *(this + 4) = 0;
  *(this + 14) = 0;
  *(this + 15) = 0;
  *(this + 128) = 0;
  *(this + 18) = 0;
  WTF::URL::invalidate((this + 144));
  *(this + 23) = 0;
  WTF::URL::invalidate((this + 184));
  *(this + 36) = 0;
  *(this + 16) = 0u;
  *(this + 17) = 0u;
  *(this + 14) = 0u;
  *(this + 15) = 0u;
  return this;
}

uint64_t WebKit::WebAuthenticatorCoordinatorProxy::operator new(WebKit::WebAuthenticatorCoordinatorProxy *this, void *a2)
{
  if (this == 104 && WebKit::WebAuthenticatorCoordinatorProxy::s_heapRef)
  {
    return bmalloc::api::tzoneAllocateNonCompact(WebKit::WebAuthenticatorCoordinatorProxy::s_heapRef, a2);
  }

  else
  {
    return WebKit::WebAuthenticatorCoordinatorProxy::operatorNewSlow(this);
  }
}

WebKit::WebAuthenticatorCoordinatorProxy *WebKit::WebAuthenticatorCoordinatorProxy::WebAuthenticatorCoordinatorProxy(WebKit::WebAuthenticatorCoordinatorProxy *this, WebKit::WebPageProxy *a2)
{
  *(this + 4) = 1;
  *this = &unk_1F1120C90;
  *(this + 1) = 0;
  WTF::WeakPtrFactory<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(a2 + 6, a2 + 16);
  v4 = *(a2 + 3);
  atomic_fetch_add(v4, 1u);
  *(this + 3) = v4;
  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 6) = 0;
  *(this + 28) = 0;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 12) = 0;
  v5 = *(a2 + 44);
  atomic_fetch_add((v5 + 16), 1u);
  v6 = *(a2 + 6);
  v9[0] = 157;
  v9[1] = v6;
  WTF::HashMap<std::pair<IPC::ReceiverName,unsigned long long>,WTF::WeakPtr<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<std::pair<IPC::ReceiverName,unsigned long long>>,WTF::PairHashTraits<WTF::StrongEnumHashTraits<IPC::ReceiverName>,WTF::HashTraits<unsigned long long>>,WTF::HashTraits<WTF::WeakPtr<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::inlineSet<std::pair<IPC::ReceiverName,unsigned long long>,IPC::MessageReceiver&>((v5 + 104), v9, this, v8);
  if (v5)
  {
    WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v5 + 16));
  }

  return this;
}

WebKit::WebDeviceOrientationUpdateProviderProxy *WebKit::WebDeviceOrientationUpdateProviderProxy::create@<X0>(WebKit::WebDeviceOrientationUpdateProviderProxy *this@<X0>, WebKit::WebPageProxy *a2@<X1>, WebKit::WebDeviceOrientationUpdateProviderProxy **a3@<X8>)
{
  v5 = WebKit::WebDeviceOrientationUpdateProviderProxy::operator new(0x30, a2);
  result = WebKit::WebDeviceOrientationUpdateProviderProxy::WebDeviceOrientationUpdateProviderProxy(v5, this);
  *a3 = v5;
  return result;
}

uint64_t WebKit::WebDeviceOrientationUpdateProviderProxy::operator new(WebKit::WebDeviceOrientationUpdateProviderProxy *this, void *a2)
{
  if (this == 48 && WebKit::WebDeviceOrientationUpdateProviderProxy::s_heapRef)
  {
    return bmalloc::api::tzoneAllocateNonCompact(WebKit::WebDeviceOrientationUpdateProviderProxy::s_heapRef, a2);
  }

  else
  {
    return WebKit::WebDeviceOrientationUpdateProviderProxy::operatorNewSlow(this);
  }
}

WebKit::WebDeviceOrientationUpdateProviderProxy *WebKit::WebDeviceOrientationUpdateProviderProxy::WebDeviceOrientationUpdateProviderProxy(WebKit::WebDeviceOrientationUpdateProviderProxy *this, WebKit::WebPageProxy *a2)
{
  *(this + 1) = 0;
  v4 = this + 16;
  *(this + 3) = 0;
  *(this + 8) = 1;
  *this = &unk_1F1136B78;
  *(this + 2) = &unk_1F1136BC0;
  WTF::WeakPtrFactory<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(a2 + 6, a2 + 16);
  v5 = *(a2 + 3);
  atomic_fetch_add(v5, 1u);
  *(this + 5) = v5;
  v6 = *(a2 + 44);
  atomic_fetch_add((v6 + 16), 1u);
  v7 = *(a2 + 6);
  v10[0] = 163;
  v10[1] = v7;
  WTF::HashMap<std::pair<IPC::ReceiverName,unsigned long long>,WTF::WeakPtr<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<std::pair<IPC::ReceiverName,unsigned long long>>,WTF::PairHashTraits<WTF::StrongEnumHashTraits<IPC::ReceiverName>,WTF::HashTraits<unsigned long long>>,WTF::HashTraits<WTF::WeakPtr<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::inlineSet<std::pair<IPC::ReceiverName,unsigned long long>,IPC::MessageReceiver&>((v6 + 104), v10, v4, v9);
  if (v6)
  {
    WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v6 + 16));
  }

  return this;
}

uint64_t WebKit::WebScreenOrientationManagerProxy::operator new(WebKit::WebScreenOrientationManagerProxy *this, void *a2)
{
  if (this == 56 && WebKit::WebScreenOrientationManagerProxy::s_heapRef)
  {
    return bmalloc::api::tzoneAllocateNonCompact(WebKit::WebScreenOrientationManagerProxy::s_heapRef, a2);
  }

  else
  {
    return WebKit::WebScreenOrientationManagerProxy::operatorNewSlow(this);
  }
}

uint64_t WebKit::WebScreenOrientationManagerProxy::WebScreenOrientationManagerProxy(uint64_t a1, uint64_t a2, char a3)
{
  *(a1 + 16) = 1;
  *a1 = &unk_1F111A130;
  *(a1 + 8) = 0;
  WTF::WeakPtrFactory<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl>::initializeIfNeeded((a2 + 24), a2 + 16);
  v6 = *(a2 + 24);
  atomic_fetch_add(v6, 1u);
  *(a1 + 24) = v6;
  *(a1 + 32) = a3;
  *(a1 + 33) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  v7 = *(v6 + 8);
  if (!v7 || (CFRetain(*(v7 - 8)), v8 = *(v7 + 336), atomic_fetch_add((v8 + 16), 1u), (v9 = *(*(a1 + 24) + 8)) == 0))
  {
    __break(0xC471u);
    JUMPOUT(0x19D5D0F5CLL);
  }

  v10 = *(v9 + 32);
  v13[0] = 203;
  v13[1] = v10;
  WTF::HashMap<std::pair<IPC::ReceiverName,unsigned long long>,WTF::WeakPtr<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<std::pair<IPC::ReceiverName,unsigned long long>>,WTF::PairHashTraits<WTF::StrongEnumHashTraits<IPC::ReceiverName>,WTF::HashTraits<unsigned long long>>,WTF::HashTraits<WTF::WeakPtr<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::inlineSet<std::pair<IPC::ReceiverName,unsigned long long>,IPC::MessageReceiver&>((v8 + 104), v13, a1, v12);
  if (v8)
  {
    WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v8 + 16));
  }

  CFRelease(*(v7 - 8));
  return a1;
}

atomic_uint *WebKit::WebPageProxy::addAllMessageReceivers(WebKit::WebPageProxy *this)
{
  v2 = *(this + 44);
  atomic_fetch_add((v2 + 16), 1u);
  WebKit::WebPageProxyMessageReceiverRegistration::startReceivingMessages((*(this + 4) + 2192), v2, *(this + 6), this + 16);
  v3 = *(this + 4);
  WebKit::WebNotificationManagerMessageHandler::ref((v3 + 1056));
  v4 = *(this + 6);
  v7[0] = 46;
  v7[1] = v4;
  WTF::HashMap<std::pair<IPC::ReceiverName,unsigned long long>,WTF::WeakPtr<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<std::pair<IPC::ReceiverName,unsigned long long>>,WTF::PairHashTraits<WTF::StrongEnumHashTraits<IPC::ReceiverName>,WTF::HashTraits<unsigned long long>>,WTF::HashTraits<WTF::WeakPtr<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::inlineSet<std::pair<IPC::ReceiverName,unsigned long long>,IPC::MessageReceiver&>((v2 + 104), v7, v3 + 1056, v6);
  WebKit::WebNotificationManagerMessageHandler::deref((v3 + 1056));

  return WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v2 + 16));
}

atomic_uint *WebKit::WebPageProxyMessageReceiverRegistration::startReceivingMessages(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WebKit::WebPageProxyMessageReceiverRegistration::stopReceivingMessages(a1);
  v13[0] = 185;
  v13[1] = a3;
  WTF::HashMap<std::pair<IPC::ReceiverName,unsigned long long>,WTF::WeakPtr<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<std::pair<IPC::ReceiverName,unsigned long long>>,WTF::PairHashTraits<WTF::StrongEnumHashTraits<IPC::ReceiverName>,WTF::HashTraits<unsigned long long>>,WTF::HashTraits<WTF::WeakPtr<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::inlineSet<std::pair<IPC::ReceiverName,unsigned long long>,IPC::MessageReceiver&>((a2 + 104), v13, a4, &v10);
  atomic_fetch_add((a2 + 16), 1u);
  v10 = a3;
  v11 = a2;
  v12 = 1;
  result = std::__optional_storage_base<WebKit::WebPageProxyMessageReceiverRegistration::Data,false>::__assign_from[abi:sn200100]<std::__optional_move_assign_base<WebKit::WebPageProxyMessageReceiverRegistration::Data,false>>(a1, &v10);
  if (v12 == 1)
  {
    v9 = v11;
    v11 = 0;
    if (v9)
    {
      return WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v9 + 16));
    }
  }

  return result;
}

unsigned __int8 *WebKit::WebPageProxyMessageReceiverRegistration::stopReceivingMessages(unsigned __int8 *this)
{
  if (this[16] == 1)
  {
    v1 = *this;
    v2 = *(this + 1);
    *(this + 1) = 0;
    this[16] = 0;
    atomic_fetch_add((v2 + 16), 1u);
    this = IPC::MessageReceiverMap::removeMessageReceiver(v2 + 96, 0xB9u, v1);
    if (v2)
    {
      WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v2 + 16));

      return WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v2 + 16));
    }
  }

  return this;
}

uint64_t WebKit::WebNotificationManagerMessageHandler::ref(WebKit::WebNotificationManagerMessageHandler *this)
{
  v1 = *(*(this + 2) + 8);
  if (v1)
  {
    return CFRetain(*(v1 - 8));
  }

  result = 92;
  __break(0xC471u);
  return result;
}

atomic_uint *std::__optional_storage_base<WebKit::WebPageProxyMessageReceiverRegistration::Data,false>::__assign_from[abi:sn200100]<std::__optional_move_assign_base<WebKit::WebPageProxyMessageReceiverRegistration::Data,false>>(atomic_uint *result, uint64_t a2)
{
  v2 = result;
  if (*(result + 16) == *(a2 + 16))
  {
    if (*(result + 16))
    {
      *result = *a2;
      v3 = *(a2 + 8);
      *(a2 + 8) = 0;
      v4 = *(result + 1);
      *(result + 1) = v3;
      if (v4)
      {

        return WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v4 + 16));
      }
    }
  }

  else if (*(result + 16))
  {
    v5 = *(result + 1);
    *(result + 1) = 0;
    if (v5)
    {
      result = WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v5 + 16));
    }

    *(v2 + 16) = 0;
  }

  else
  {
    *result = *a2;
    v6 = *(a2 + 8);
    *(a2 + 8) = 0;
    *(result + 1) = v6;
    *(result + 16) = 1;
  }

  return result;
}

void WebKit::WebNotificationManagerMessageHandler::deref(WebKit::WebNotificationManagerMessageHandler *this)
{
  v1 = *(*(this + 2) + 8);
  if (v1)
  {
    CFRelease(*(v1 - 8));
  }

  else
  {
    __break(0xC471u);
  }
}

uint64_t std::unique_ptr<WebCore::RunLoopObserver>::reset[abi:sn200100](uint64_t *a1, uint64_t a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    v4 = MEMORY[0x19EB06250]();

    return bmalloc::api::tzoneFree(v4, v5);
  }

  return result;
}

uint64_t WebKit::WebPageDebuggable::url@<X0>(WebKit::WebPageDebuggable *this@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  while (1)
  {
    v4 = *(this + 1);
    if ((v4 & 1) == 0)
    {
      break;
    }

    v5 = *(this + 1);
    atomic_compare_exchange_strong_explicit(this + 1, &v5, v4 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v5 == v4)
    {
      goto LABEL_6;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*(this + 1));
LABEL_6:
  v6 = WTF::fastMalloc(0x20);
  *v6 = &unk_1F111EE90;
  v6[1] = this;
  v6[2] = this;
  v6[3] = a2;
  v9 = v6;
  WTF::callOnMainRunLoopAndWait();
  result = v9;
  if (v9)
  {
    v8 = *(*v9 + 8);

    return v8();
  }

  return result;
}

void WTF::Detail::CallableWrapper<WebKit::WebPageDebuggable::url(void)::$_0,void>::call(WTF *a1)
{
  v1 = a1;
  v2 = *(*(a1 + 1) + 40);
  if (v2 && (v3 = *(v2 + 8)) != 0)
  {
    v4 = v3 - 16;
    a1 = CFRetain(*(v3 - 8));
    if (*(v3 + 408))
    {
      WTF::String::isolatedCopy();
      v6 = *(v1 + 3);
      v7 = *v6;
      *v6 = v16;
      if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v7, v5);
      }

      v8 = **(v1 + 3);
      if (!v8 || !*(v8 + 4))
      {
        WTF::aboutBlankURL(0);
        WTF::String::isolatedCopy();
        v10 = *(v1 + 3);
        v11 = *v10;
        *v10 = 0;
        if (v11)
        {
          if (atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v11, v9);
          }
        }
      }

LABEL_18:
      CFRelease(*(v4 + 8));
      return;
    }

    v12 = 0;
  }

  else
  {
    v4 = 0;
    v12 = 1;
  }

  WTF::aboutBlankURL(a1);
  WTF::String::isolatedCopy();
  v14 = *(v1 + 3);
  v15 = *v14;
  *v14 = v16;
  if (v15 && atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v15, v13);
  }

  if ((v12 & 1) == 0)
  {
    goto LABEL_18;
  }
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebPageDebuggable::url(void)::$_0,void>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F111EE90;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<Inspector::RemoteControllableTarget,(WTF::DestructionThread)0>::deref((v3 + 8), a2);
  }

  return WTF::fastFree(this, a2);
}

atomic_uchar **WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<Inspector::RemoteControllableTarget,(WTF::DestructionThread)0>::deref(atomic_uchar **result, void *a2)
{
  do
  {
    v2 = *result;
    if ((*result & 1) == 0)
    {
      return WTF::ThreadSafeWeakPtrControlBlock::strongDeref<Inspector::RemoteControllableTarget,(WTF::DestructionThread)0>(*result, a2);
    }

    v3 = *result;
    atomic_compare_exchange_strong_explicit(result, &v3, (v2 - 2), memory_order_relaxed, memory_order_relaxed);
  }

  while (v3 != v2);
  if (v2 == 3)
  {
    return (*(*(result - 1) + 1))();
  }

  return result;
}

uint64_t WebKit::WebPageDebuggable::name@<X0>(WebKit::WebPageDebuggable *this@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  while (1)
  {
    v4 = *(this + 1);
    if ((v4 & 1) == 0)
    {
      break;
    }

    v5 = *(this + 1);
    atomic_compare_exchange_strong_explicit(this + 1, &v5, v4 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v5 == v4)
    {
      goto LABEL_6;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*(this + 1));
LABEL_6:
  v6 = WTF::fastMalloc(0x20);
  *v6 = &unk_1F111EE68;
  v6[1] = this;
  v6[2] = this;
  v6[3] = a2;
  v9 = v6;
  WTF::callOnMainRunLoopAndWait();
  result = v9;
  if (v9)
  {
    v8 = *(*v9 + 8);

    return v8();
  }

  return result;
}

void WTF::Detail::CallableWrapper<WebKit::WebPageDebuggable::name(void)::$_0,void>::call(uint64_t a1)
{
  v1 = *(*(a1 + 8) + 40);
  if (v1)
  {
    v2 = *(v1 + 8);
    if (v2)
    {
      CFRetain(*(v2 - 8));
      if (*(v2 + 408))
      {
        WTF::String::isolatedCopy();
        v5 = *(a1 + 24);
        v6 = *v5;
        *v5 = v7;
        if (v6)
        {
          if (atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v6, v4);
          }
        }
      }

      CFRelease(*(v2 - 8));
    }
  }
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebPageDebuggable::name(void)::$_0,void>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F111EE68;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<Inspector::RemoteControllableTarget,(WTF::DestructionThread)0>::deref((v3 + 8), a2);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WebKit::WebPageDebuggable::hasLocalDebugger(WebKit::WebPageDebuggable *this)
{
  v7 = 0;
  while (1)
  {
    v2 = *(this + 1);
    if ((v2 & 1) == 0)
    {
      break;
    }

    v3 = *(this + 1);
    atomic_compare_exchange_strong_explicit(this + 1, &v3, v2 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v3 == v2)
    {
      goto LABEL_6;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*(this + 1));
LABEL_6:
  v4 = WTF::fastMalloc(0x20);
  *v4 = &unk_1F111EEB8;
  v4[1] = this;
  v4[2] = this;
  v4[3] = &v7;
  v6 = v4;
  WTF::callOnMainRunLoopAndWait();
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  return v7;
}

void WTF::Detail::CallableWrapper<WebKit::WebPageDebuggable::hasLocalDebugger(void)::$_0,void>::call(uint64_t a1)
{
  v2 = *(*(a1 + 8) + 40);
  if (v2 && (v3 = *(v2 + 8)) != 0)
  {
    CFRetain(*(v3 - 8));
    **(a1 + 24) = Inspector::FrontendRouter::hasLocalFrontend(**(v3 + 1192));
    v4 = *(v3 - 8);

    CFRelease(v4);
  }

  else
  {
    **(a1 + 24) = 0;
  }
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebPageDebuggable::hasLocalDebugger(void)::$_0,void>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F111EEB8;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<Inspector::RemoteControllableTarget,(WTF::DestructionThread)0>::deref((v3 + 8), a2);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WebKit::WebPageInspectorController::init(WebKit::WebPageInspectorController *this)
{
  v1 = *(*(this + 4) + 8);
  if (v1)
  {
    WebKit::WebPageInspectorTarget::toTargetID(*(v1 + 32), &v5);
    WebKit::WebPageInspectorController::createInspectorTarget(this, &v5, 0);
    result = v5;
    v5 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        return WTF::StringImpl::destroy(result, v3);
      }
    }
  }

  else
  {
    result = 92;
    __break(0xC471u);
  }

  return result;
}

uint64_t WTF::makeString<WTF::ASCIILiteral,unsigned long long>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, void *a4@<X8>)
{
  v7[0] = a1;
  v7[1] = a2;
  v6 = a3;
  result = WTF::tryMakeString<WTF::ASCIILiteral,unsigned long long>(v7, &v6, a4);
  if (!*a4)
  {
    __break(0xC471u);
  }

  return result;
}

void WebKit::WebPageInspectorController::createInspectorTarget(uint64_t a1, atomic_uint **a2, char a3)
{
  v3 = *(*(a1 + 32) + 8);
  if (!v3)
  {
    __break(0xC471u);
    JUMPOUT(0x19D5D1AD8);
  }

  CFRetain(*(v3 - 8));
  v8 = WebKit::InspectorTargetProxy::operator new(0x40, v7);
  v13 = WebKit::InspectorTargetProxy::InspectorTargetProxy(v8, v3 - 16, a2, a3);
  WebKit::WebPageInspectorController::addTarget(a1, &v13);
  v10 = v13;
  v13 = 0;
  if (v10)
  {
    WebKit::InspectorTargetProxy::~InspectorTargetProxy(v10, v9);
    bmalloc::api::tzoneFree(v11, v12);
  }

  CFRelease(*(v3 - 8));
}

uint64_t WebKit::InspectorTargetProxy::operator new(WebKit::InspectorTargetProxy *this, void *a2)
{
  if (this == 64 && WebKit::InspectorTargetProxy::s_heapRef)
  {
    return bmalloc::api::tzoneAllocateNonCompact(WebKit::InspectorTargetProxy::s_heapRef, a2);
  }

  else
  {
    return WebKit::InspectorTargetProxy::operatorNewSlow(this);
  }
}

uint64_t WebKit::InspectorTargetProxy::InspectorTargetProxy(uint64_t a1, uint64_t a2, atomic_uint **a3, char a4)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = &unk_1F111E570;
  WTF::WeakPtrFactory<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl>::initializeIfNeeded((a2 + 24), a2 + 16);
  v8 = *(a2 + 24);
  atomic_fetch_add(v8, 1u);
  *(a1 + 32) = v8;
  v9 = *a3;
  if (*a3)
  {
    atomic_fetch_add_explicit(v9, 2u, memory_order_relaxed);
  }

  *(a1 + 40) = v9;
  *(a1 + 48) = a4;
  *(a1 + 56) = 0;
  return a1;
}

WTF::StringImpl *WebKit::WebPageInspectorController::addTarget(uint64_t a1, Inspector::InspectorTarget **a2)
{
  v2 = *(a1 + 40);
  if (!v2 || (++*(v2 + 6), Inspector::InspectorTargetAgent::targetCreated(v2, *a2), (v5 = *(v2 + 6)) == 0))
  {
    __break(0xC471u);
    JUMPOUT(0x19D5D1C68);
  }

  *(v2 + 6) = v5 - 1;
  v6 = *(*a2 + 5);
  if (v6)
  {
    atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed);
  }

  v10 = v6;
  WTF::HashMap<WTF::String,std::unique_ptr<WebKit::InspectorTargetProxy>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<std::unique_ptr<WebKit::InspectorTargetProxy>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::inlineSet<WTF::String,std::unique_ptr<WebKit::InspectorTargetProxy>>((a1 + 48), &v10, a2, &v9);
  result = v10;
  v10 = 0;
  if (result)
  {
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v7);
    }
  }

  return result;
}

uint64_t WebKit::InspectorTargetProxy::identifier@<X0>(uint64_t this@<X0>, atomic_uint **a2@<X8>)
{
  v2 = *(this + 40);
  if (v2)
  {
    atomic_fetch_add_explicit(v2, 2u, memory_order_relaxed);
  }

  *a2 = v2;
  return this;
}

WebKit::InspectorTargetProxy *std::unique_ptr<WebKit::InspectorTargetProxy>::reset[abi:sn200100](WebKit::InspectorTargetProxy **a1, WebKit::InspectorTargetProxy *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    WebKit::InspectorTargetProxy::~InspectorTargetProxy(result, a2);

    return bmalloc::api::tzoneFree(v4, v5);
  }

  return result;
}

atomic_uint *WebKit::WebProcessProxy::addExistingWebPage(uint64_t a1, WebKit::WebPageProxy *a2, int a3)
{
  v33 = *MEMORY[0x1E69E9840];
  v6 = qword_1ED6416A0;
  if (os_log_type_enabled(qword_1ED6416A0, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 80);
    if (v7)
    {
      LODWORD(v7) = *(v7 + 108);
    }

    v8 = *(a2 + 5);
    v9 = *(a2 + 6);
    *buf = 134219008;
    v24 = a1;
    v25 = 1024;
    v26 = v7;
    v27 = 2048;
    v28 = a2;
    v29 = 2048;
    v30 = v8;
    v31 = 2048;
    v32 = v9;
    _os_log_impl(&dword_19D52D000, v6, OS_LOG_TYPE_DEFAULT, "%p - [PID=%i] WebProcessProxy::addExistingWebPage: webPage=%p, pageProxyID=%llu, webPageID=%llu", buf, 0x30u);
  }

  if (*(a1 + 760) == 1)
  {
    __break(0xC471u);
    goto LABEL_34;
  }

  if (*(a1 + 896) == 1)
  {
    v10 = *(a1 + 592);
    if (v10)
    {
      v11 = *(v10 - 12) == 0;
      if (!a3)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v11 = 1;
      if (!a3)
      {
        goto LABEL_16;
      }
    }
  }

  else
  {
    v11 = 0;
    if (!a3)
    {
      goto LABEL_16;
    }
  }

  v12 = *(a1 + 552);
  if (!v12 || (v13 = *(v12 + 8)) == 0)
  {
    __break(0xC471u);
    JUMPOUT(0x19D5D2008);
  }

  CFRetain(*(v13 - 8));
  v14 = *(a2 + 51);
  CFRetain(v14[1]);
  WebKit::WebProcessPool::pageBeginUsingWebsiteDataStore((v13 - 16), a2, v14);
  CFRelease(v14[1]);
  CFRelease(*(v13 - 8));
LABEL_16:
  if (!*(a1 + 1096))
  {
    WebKit::WebProcessProxy::updateSharedPreferences(a1, (*(a2 + 46) + 40), buf);
  }

  {
    WebKit::liveProcessesLRU(void)::processes = 0u;
    *algn_1ED643678 = 0u;
  }

  WTF::WeakListHashSet<WebKit::WebProcessProxy,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::moveToLastIfPresent<WebKit::WebProcessProxy>(&WebKit::liveProcessesLRU(void)::processes, a1);
  v22 = *(a2 + 5);
  WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakRef<WebKit::WebPageProxy,WTF::DefaultWeakPtrImpl>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakRef<WebKit::WebPageProxy,WTF::DefaultWeakPtrImpl>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::inlineSet<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::WebPageProxy&>(buf, (a1 + 592), &v22, a2);
  {
    WebKit::WebProcessProxy::globalPageMap(void)::pageMap = 0;
  }

  v22 = *(a2 + 5);
  WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakRef<WebKit::WebPageProxy,WTF::DefaultWeakPtrImpl>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakRef<WebKit::WebPageProxy,WTF::DefaultWeakPtrImpl>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::inlineSet<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::WebPageProxy&>(buf, &WebKit::WebProcessProxy::globalPageMap(void)::pageMap, &v22, a2);
  v15 = WebKit::WebProcessProxy::logger(a1);
  isAlwaysOnLoggingAllowed = WebKit::WebProcessProxy::isAlwaysOnLoggingAllowed(a1);
  if (*(v15 + 16) == a1)
  {
    *(v15 + 12) = isAlwaysOnLoggingAllowed;
  }

  v17 = *(*(a1 + 160) + 8);
  if (!v17)
  {
    __break(0xC471u);
LABEL_34:
    JUMPOUT(0x19D5D1FE8);
  }

  atomic_fetch_add((v17 + 16), 1u);
  shouldTakeNearSuspendedAssertion = WebKit::WebProcessProxy::shouldTakeNearSuspendedAssertion(a1);
  WebKit::ProcessThrottler::setShouldTakeNearSuspendedAssertion((a1 + 144), shouldTakeNearSuspendedAssertion);
  shouldDropNearSuspendedAssertionAfterDelay = WebKit::WebProcessProxy::shouldDropNearSuspendedAssertionAfterDelay(a1);
  WebKit::ProcessThrottler::setShouldDropNearSuspendedAssertionAfterDelay(a1 + 144, shouldDropNearSuspendedAssertionAfterDelay);
  WebKit::WebProcessProxy::updateRegistrationWithDataStore(a1);
  WebKit::BackgroundProcessResponsivenessTimer::updateState((a1 + 416));
  v20 = *(a1 + 800);
  if (!v20)
  {
    WebKit::WebsiteDataStore::propagateSettingUpdates(0);
    if (!v11)
    {
      return WebKit::ProcessThrottler::deref((a1 + 144));
    }

    goto LABEL_27;
  }

  CFRetain(*(v20 + 8));
  WebKit::WebsiteDataStore::propagateSettingUpdates(v20);
  CFRelease(*(v20 + 8));
  if (v11)
  {
LABEL_27:
    WebKit::WebProcessProxy::didChangeThrottleState(a1, *(a1 + 376));
  }

  return WebKit::ProcessThrottler::deref((a1 + 144));
}

void WebKit::WebProcessPool::pageBeginUsingWebsiteDataStore(WebKit::WebProcessPool *this, WebKit::WebPageProxy *a2, WebKit::WebsiteDataStore *a3)
{
  v6 = WTF::RunLoop::mainSingleton(this);
  if ((WTF::RunLoop::isCurrent(v6) & 1) == 0 || (v7 = *(a3 + 3), (v7 - 1) >= 0xFFFFFFFFFFFFFFFELL))
  {
    __break(0xC471u);
    JUMPOUT(0x19D5D20F8);
  }

  v11 = 0;
  v12 = v7;
  WTF::HashMap<PAL::SessionID,WTF::HashSet<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<WTF::HashSet<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<WTF::HashSet<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>(this + 96, &v12, &v11, v14);
  v10 = *(a2 + 5);
  WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::add<(WTF::ShouldValidateKey)1>((v14[0] + 8), &v10, v13);
  if (v11)
  {
    WTF::fastFree((v11 - 16), v8);
  }

  WTF::WeakHashSet<WebKit::WebPageProxy,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::add<WebKit::WebPageProxy>(a3 + 344, a2, v14);
  WebKit::WebsiteDataStore::updateServiceWorkerInspectability(a3, v9);
}

void WebKit::WebsiteDataStore::updateServiceWorkerInspectability(WebKit::WebsiteDataStore *this, void *a2)
{
  v3 = (this + 344);
  if (WTF::WeakHashSet<WebKit::ProcessThrottlerActivity,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::computeSize(this + 344, a2))
  {
    v4 = *(this + 480);
    WTF::WeakHashSet<WebKit::ApplicationStateTracker,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::begin(v3, &v20);
    v5 = *(this + 43);
    if (v5)
    {
      v6 = *(v5 - 4);
      v7 = v5 + 8 * v6;
    }

    else
    {
      v7 = 0;
      v6 = 0;
    }

    v15 = v3;
    v16 = v7;
    v17 = v7;
    v18 = v7;
    v19 = v5 + 8 * v6;
    WTF::WeakHashSet<WebKit::RemoteLayerBackingStore,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::WeakHashSetConstIterator::skipEmptyBuckets(&v15);
    v8 = v21;
    if (v21 == v16)
    {
      v11 = 0;
    }

    else
    {
      do
      {
        v9 = *(*v8 + 8);
        if (v9)
        {
          v10 = (v9 - 16);
        }

        else
        {
          v10 = 0;
        }

        CFRetain(v10[1]);
        v11 = WebKit::WebPageProxy::inspectable(v10);
        if (v9)
        {
          CFRelease(*(v9 - 8));
        }

        if (v11)
        {
          break;
        }

        WTF::WeakHashSet<WebKit::RemoteLayerBackingStore,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::WeakHashSetConstIterator::operator++(&v20);
        v8 = v21;
      }

      while (v21 != v16);
    }

    *(this + 480) = v11;
    if (v4 != v11)
    {
      v12 = *(this + 54);
      if (v12)
      {
        v13 = (v12 + 16);
        atomic_fetch_add((v12 + 16), 1u);
        v14 = *(this + 480);
        v20 = this + 24;
        LOBYTE(v21) = v14;
        WebKit::AuxiliaryProcessProxy::send<Messages::NetworkProcess::SetInspectionForServiceWorkersAllowed>(v12, &v20, 0, 0);
        WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref(v13);
      }
    }
  }
}

uint64_t WebKit::WebPageProxy::inspectable(WebKit::WebPageProxy *this)
{
  v1 = *(this + 152);
  if (!v1)
  {
    return 0;
  }

  v2 = (v1 + 8);
  while (1)
  {
    v3 = *v2;
    if ((*v2 & 1) == 0)
    {
      break;
    }

    v4 = *v2;
    atomic_compare_exchange_strong_explicit(v2, &v4, v3 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v4 == v3)
    {
      goto LABEL_7;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v2);
LABEL_7:
  v5 = Inspector::RemoteInspectionTarget::inspectable(v1);
  WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<Inspector::RemoteControllableTarget,(WTF::DestructionThread)0>::deref(v2, v6);
  return v5;
}

uint64_t WebKit::AuxiliaryProcessProxy::send<Messages::NetworkProcess::SetInspectionForServiceWorkersAllowed>(uint64_t a1, char *a2, uint64_t a3, char a4)
{
  v8 = IPC::Encoder::operator new(0x238, a2);
  *v8 = 678;
  *(v8 + 2) = 0;
  *(v8 + 3) = 0;
  *(v8 + 1) = a3;
  *(v8 + 68) = 0;
  *(v8 + 70) = 0;
  *(v8 + 69) = 0;
  IPC::Encoder::encodeHeader(v8);
  v18 = v8;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v8, **a2);
  IPC::Encoder::operator<<<BOOL &>(v8, a2 + 8);
  LOBYTE(v16) = 0;
  v17 = 0;
  v10 = WebKit::AuxiliaryProcessProxy::sendMessage(a1, &v18, a4, &v16, 1);
  if (v17 == 1)
  {
    v11 = v16;
    v16 = 0;
    if (v11)
    {
      (*(*v11 + 8))(v11);
    }
  }

  v12 = v18;
  v18 = 0;
  if (v12)
  {
    IPC::Encoder::~Encoder(v12, v9);
    bmalloc::api::tzoneFree(v14, v15);
  }

  return v10;
}

uint64_t WebKit::WebProcessProxy::updateSharedPreferences@<X0>(WebKit::WebProcessProxy *this@<X0>, const WebKit::WebPreferencesStore *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = this + 1096;
  result = WebKit::updateSharedPreferencesForWebProcess(this + 1096, a2, *(this + 812));
  if (result)
  {
    ++*(this + 137);
    result = WebKit::WebProcessProxy::sharedPreferencesDidChange(this);
    *a3 = *v5;
    *(a3 + 16) = *(v5 + 2);
    v7 = 1;
  }

  else
  {
    v7 = 0;
    *a3 = 0;
  }

  *(a3 + 24) = v7;
  return result;
}

atomic_uint *WebKit::WebProcessProxy::sharedPreferencesDidChange(atomic_uint *this)
{
  v1 = this;
  if ((*(this + 1109) & 0x10) != 0)
  {
    this = WebCore::AudioSession::enableMediaPlayback(this);
  }

  v2 = (v1 + 1096);
  v3 = *(v1 + 1096);
  if (*(v1 + 1120) != v3)
  {
    v4 = *(v1 + 800);
    if (v4)
    {
      v5 = *(v4 + 432);
      if (v5)
      {
        atomic_fetch_add((v5 + 16), 1u);
        v16 = *v2;
        v17 = *(v1 + 1112);
        WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::initializeIfNeeded((v1 + 8), v1);
        v6 = *(v1 + 8);
        if (v6)
        {
          atomic_fetch_add(v6, 1u);
        }

        v7 = WTF::fastMalloc(0x18);
        *v7 = &unk_1F111AC40;
        v7[1] = v6;
        v7[2] = v3;
        v15 = v7;
        v18 = *(v1 + 120);
        v19 = &v18;
        v20 = &v16;
        WebKit::AuxiliaryProcessProxy::sendWithAsyncReply<Messages::NetworkProcess::SharedPreferencesForWebProcessDidChange,WTF::CompletionHandler<void ()(void)>>(v5, &v19, &v15, 0, 0, 1);
        v8 = v15;
        v15 = 0;
        if (v8)
        {
          (*(*v8 + 8))(v8);
        }

        this = WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v5 + 16));
      }
    }
  }

  if (*(v1 + 1128) != v3)
  {
    v9 = *(*(v1 + 552) + 8);
    v10 = v9 ? v9 - 16 : 0;
    v11 = *(v10 + 176);
    if (v11)
    {
      atomic_fetch_add((v11 + 16), 1u);
      v16 = *v2;
      v17 = *(v1 + 1112);
      WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::initializeIfNeeded((v1 + 8), v1);
      v12 = *(v1 + 8);
      if (v12)
      {
        atomic_fetch_add(v12, 1u);
      }

      v13 = WTF::fastMalloc(0x18);
      *v13 = &unk_1F111AC68;
      v13[1] = v12;
      v13[2] = v3;
      v15 = v13;
      v18 = *(v1 + 120);
      v19 = &v18;
      v20 = &v16;
      WebKit::AuxiliaryProcessProxy::sendWithAsyncReply<Messages::GPUProcess::SharedPreferencesForWebProcessDidChange,WTF::CompletionHandler<void ()(void)>>(v11, &v19, &v15, 0, 0, 1);
      v14 = v15;
      v15 = 0;
      if (v14)
      {
        (*(*v14 + 8))(v14);
      }

      return WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v11 + 16));
    }
  }

  return this;
}

uint64_t WebKit::AuxiliaryProcessProxy::sendWithAsyncReply<Messages::NetworkProcess::SharedPreferencesForWebProcessDidChange,WTF::CompletionHandler<void ()(void)>>(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4, char a5, int a6)
{
  v12 = IPC::Encoder::operator new(0x238, a2);
  *v12 = 722;
  *(v12 + 2) = 0;
  *(v12 + 3) = 0;
  *(v12 + 1) = a4;
  *(v12 + 68) = 0;
  *(v12 + 70) = 0;
  *(v12 + 69) = 0;
  IPC::Encoder::encodeHeader(v12);
  v26 = v12;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v12, **a2);
  IPC::ArgumentCoder<WebKit::SharedPreferencesForWebProcess,void>::encode(v12, a2[1]);
  v13 = *a3;
  *a3 = 0;
  v14 = WTF::fastMalloc(0x10);
  *v14 = &unk_1F111F630;
  v14[1] = v13;
  if (WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1)
  {
    result = 141;
    __break(0xC471u);
  }

  else
  {
    v15 = v14;
    IdentifierInternal = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
    v24[0] = v15;
    v24[1] = IdentifierInternal;
    v25 = 1;
    v18 = WebKit::AuxiliaryProcessProxy::sendMessage(a1, &v26, a5, v24, a6);
    if (v25 == 1)
    {
      v19 = v24[0];
      v24[0] = 0;
      if (v19)
      {
        (*(*v19 + 8))(v19);
      }
    }

    v20 = v26;
    v26 = 0;
    if (v20)
    {
      IPC::Encoder::~Encoder(v20, v17);
      bmalloc::api::tzoneFree(v22, v23);
    }

    if (v18)
    {
      return IdentifierInternal;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t IPC::ArgumentCoder<WebKit::SharedPreferencesForWebProcess,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *a2);
  v5 = *(a2 + 8) & 1;
  IPC::Encoder::operator<<<BOOL>(a1, &v5);
  v5 = (*(a2 + 8) & 2) != 0;
  IPC::Encoder::operator<<<BOOL>(a1, &v5);
  v5 = (*(a2 + 8) & 4) != 0;
  IPC::Encoder::operator<<<BOOL>(a1, &v5);
  v5 = (*(a2 + 8) & 8) != 0;
  IPC::Encoder::operator<<<BOOL>(a1, &v5);
  v5 = (*(a2 + 8) & 0x10) != 0;
  IPC::Encoder::operator<<<BOOL>(a1, &v5);
  v5 = (*(a2 + 8) & 0x20) != 0;
  IPC::Encoder::operator<<<BOOL>(a1, &v5);
  v5 = (*(a2 + 8) & 0x40) != 0;
  IPC::Encoder::operator<<<BOOL>(a1, &v5);
  v5 = (*(a2 + 8) & 0x80) != 0;
  IPC::Encoder::operator<<<BOOL>(a1, &v5);
  v5 = *(a2 + 9) & 1;
  IPC::Encoder::operator<<<BOOL>(a1, &v5);
  v5 = (*(a2 + 8) & 0x200) != 0;
  IPC::Encoder::operator<<<BOOL>(a1, &v5);
  v5 = (*(a2 + 8) & 0x400) != 0;
  IPC::Encoder::operator<<<BOOL>(a1, &v5);
  v5 = (*(a2 + 8) & 0x800) != 0;
  IPC::Encoder::operator<<<BOOL>(a1, &v5);
  v5 = (*(a2 + 8) & 0x1000) != 0;
  IPC::Encoder::operator<<<BOOL>(a1, &v5);
  v5 = (*(a2 + 8) & 0x2000) != 0;
  IPC::Encoder::operator<<<BOOL>(a1, &v5);
  v5 = (*(a2 + 8) & 0x4000) != 0;
  IPC::Encoder::operator<<<BOOL>(a1, &v5);
  v5 = (*(a2 + 8) & 0x8000) != 0;
  IPC::Encoder::operator<<<BOOL>(a1, &v5);
  v5 = *(a2 + 10) & 1;
  IPC::Encoder::operator<<<BOOL>(a1, &v5);
  v5 = (*(a2 + 8) & 0x20000) != 0;
  IPC::Encoder::operator<<<BOOL>(a1, &v5);
  v5 = (*(a2 + 8) & 0x40000) != 0;
  IPC::Encoder::operator<<<BOOL>(a1, &v5);
  v5 = (*(a2 + 8) & 0x80000) != 0;
  IPC::Encoder::operator<<<BOOL>(a1, &v5);
  v5 = (*(a2 + 8) & 0x100000) != 0;
  IPC::Encoder::operator<<<BOOL>(a1, &v5);
  v5 = (*(a2 + 8) & 0x200000) != 0;
  IPC::Encoder::operator<<<BOOL>(a1, &v5);
  v5 = (*(a2 + 8) & 0x400000) != 0;
  IPC::Encoder::operator<<<BOOL>(a1, &v5);
  v5 = (*(a2 + 8) & 0x800000) != 0;
  IPC::Encoder::operator<<<BOOL>(a1, &v5);
  v5 = *(a2 + 11) & 1;
  IPC::Encoder::operator<<<BOOL>(a1, &v5);
  v5 = (*(a2 + 8) & 0x2000000) != 0;
  IPC::Encoder::operator<<<BOOL>(a1, &v5);
  v5 = (*(a2 + 8) & 0x4000000) != 0;
  IPC::Encoder::operator<<<BOOL>(a1, &v5);
  v5 = (*(a2 + 8) & 0x8000000) != 0;
  IPC::Encoder::operator<<<BOOL>(a1, &v5);
  v5 = (*(a2 + 8) & 0x10000000) != 0;
  IPC::Encoder::operator<<<BOOL>(a1, &v5);
  v5 = (*(a2 + 8) & 0x20000000) != 0;
  IPC::Encoder::operator<<<BOOL>(a1, &v5);
  v5 = (*(a2 + 8) & 0x40000000) != 0;
  IPC::Encoder::operator<<<BOOL>(a1, &v5);
  v5 = *(a2 + 8) < 0;
  IPC::Encoder::operator<<<BOOL>(a1, &v5);
  v5 = *(a2 + 12) & 1;
  IPC::Encoder::operator<<<BOOL>(a1, &v5);
  v5 = (*(a2 + 8) & 0x200000000) != 0;
  IPC::Encoder::operator<<<BOOL>(a1, &v5);
  v5 = (*(a2 + 8) & 0x400000000) != 0;
  IPC::Encoder::operator<<<BOOL>(a1, &v5);
  v5 = (*(a2 + 8) & 0x800000000) != 0;
  IPC::Encoder::operator<<<BOOL>(a1, &v5);
  v5 = (*(a2 + 8) & 0x1000000000) != 0;
  IPC::Encoder::operator<<<BOOL>(a1, &v5);
  v5 = (*(a2 + 8) & 0x2000000000) != 0;
  IPC::Encoder::operator<<<BOOL>(a1, &v5);
  v5 = (*(a2 + 8) & 0x4000000000) != 0;
  IPC::Encoder::operator<<<BOOL>(a1, &v5);
  v5 = (*(a2 + 8) & 0x8000000000) != 0;
  IPC::Encoder::operator<<<BOOL>(a1, &v5);
  v5 = *(a2 + 13) & 1;
  IPC::Encoder::operator<<<BOOL>(a1, &v5);
  v5 = (*(a2 + 8) & 0x20000000000) != 0;
  IPC::Encoder::operator<<<BOOL>(a1, &v5);
  v5 = (*(a2 + 8) & 0x40000000000) != 0;
  IPC::Encoder::operator<<<BOOL>(a1, &v5);
  v5 = (*(a2 + 8) & 0x80000000000) != 0;
  IPC::Encoder::operator<<<BOOL>(a1, &v5);
  v5 = (*(a2 + 8) & 0x100000000000) != 0;
  IPC::Encoder::operator<<<BOOL>(a1, &v5);
  v5 = (*(a2 + 8) & 0x200000000000) != 0;
  IPC::Encoder::operator<<<BOOL>(a1, &v5);
  v5 = (*(a2 + 8) & 0x400000000000) != 0;
  IPC::Encoder::operator<<<BOOL>(a1, &v5);
  v5 = (*(a2 + 8) & 0x800000000000) != 0;
  IPC::Encoder::operator<<<BOOL>(a1, &v5);
  v5 = *(a2 + 14) & 1;
  IPC::Encoder::operator<<<BOOL>(a1, &v5);
  v5 = (*(a2 + 8) & 0x2000000000000) != 0;
  IPC::Encoder::operator<<<BOOL>(a1, &v5);
  v5 = (*(a2 + 8) & 0x4000000000000) != 0;
  IPC::Encoder::operator<<<BOOL>(a1, &v5);
  v5 = (*(a2 + 8) & 0x8000000000000) != 0;
  IPC::Encoder::operator<<<BOOL>(a1, &v5);
  v5 = (*(a2 + 8) & 0x10000000000000) != 0;
  IPC::Encoder::operator<<<BOOL>(a1, &v5);
  v5 = (*(a2 + 8) & 0x20000000000000) != 0;
  IPC::Encoder::operator<<<BOOL>(a1, &v5);
  v5 = (*(a2 + 8) & 0x40000000000000) != 0;
  IPC::Encoder::operator<<<BOOL>(a1, &v5);
  v5 = (*(a2 + 8) & 0x80000000000000) != 0;
  IPC::Encoder::operator<<<BOOL>(a1, &v5);
  v5 = *(a2 + 15) & 1;
  IPC::Encoder::operator<<<BOOL>(a1, &v5);
  v5 = (*(a2 + 8) & 0x200000000000000) != 0;
  IPC::Encoder::operator<<<BOOL>(a1, &v5);
  v5 = (*(a2 + 8) & 0x400000000000000) != 0;
  IPC::Encoder::operator<<<BOOL>(a1, &v5);
  v5 = (*(a2 + 8) & 0x800000000000000) != 0;
  IPC::Encoder::operator<<<BOOL>(a1, &v5);
  v5 = (*(a2 + 8) & 0x1000000000000000) != 0;
  IPC::Encoder::operator<<<BOOL>(a1, &v5);
  v5 = (*(a2 + 8) & 0x2000000000000000) != 0;
  IPC::Encoder::operator<<<BOOL>(a1, &v5);
  v5 = (*(a2 + 8) & 0x4000000000000000) != 0;
  IPC::Encoder::operator<<<BOOL>(a1, &v5);
  v5 = *(a2 + 8) < 0;
  IPC::Encoder::operator<<<BOOL>(a1, &v5);
  v5 = *(a2 + 16) & 1;
  IPC::Encoder::operator<<<BOOL>(a1, &v5);
  v5 = (*(a2 + 16) & 2) != 0;
  IPC::Encoder::operator<<<BOOL>(a1, &v5);
  v5 = (*(a2 + 16) & 4) != 0;
  IPC::Encoder::operator<<<BOOL>(a1, &v5);
  v5 = (*(a2 + 16) & 8) != 0;
  IPC::Encoder::operator<<<BOOL>(a1, &v5);
  v5 = (*(a2 + 16) & 0x10) != 0;
  IPC::Encoder::operator<<<BOOL>(a1, &v5);
  v5 = (*(a2 + 16) & 0x20) != 0;
  IPC::Encoder::operator<<<BOOL>(a1, &v5);
  v5 = (*(a2 + 16) & 0x40) != 0;
  IPC::Encoder::operator<<<BOOL>(a1, &v5);
  v5 = (*(a2 + 16) & 0x80) != 0;
  IPC::Encoder::operator<<<BOOL>(a1, &v5);
  v5 = *(a2 + 17) & 1;
  IPC::Encoder::operator<<<BOOL>(a1, &v5);
  v5 = (*(a2 + 16) & 0x200) != 0;
  IPC::Encoder::operator<<<BOOL>(a1, &v5);
  v5 = (*(a2 + 16) & 0x400) != 0;
  IPC::Encoder::operator<<<BOOL>(a1, &v5);
  v5 = (*(a2 + 16) & 0x800) != 0;
  IPC::Encoder::operator<<<BOOL>(a1, &v5);
  v5 = (*(a2 + 16) & 0x1000) != 0;
  IPC::Encoder::operator<<<BOOL>(a1, &v5);
  v5 = (*(a2 + 16) & 0x2000) != 0;
  IPC::Encoder::operator<<<BOOL>(a1, &v5);
  v5 = (*(a2 + 16) & 0x4000) != 0;
  IPC::Encoder::operator<<<BOOL>(a1, &v5);
  v5 = *(a2 + 16) >> 15;
  IPC::Encoder::operator<<<BOOL>(a1, &v5);
  v5 = *(a2 + 18) & 1;
  IPC::Encoder::operator<<<BOOL>(a1, &v5);
  v5 = (*(a2 + 18) & 2) != 0;
  IPC::Encoder::operator<<<BOOL>(a1, &v5);
  v5 = (*(a2 + 18) & 4) != 0;
  IPC::Encoder::operator<<<BOOL>(a1, &v5);
  v5 = (*(a2 + 18) & 8) != 0;
  IPC::Encoder::operator<<<BOOL>(a1, &v5);
  v5 = (*(a2 + 18) & 0x10) != 0;
  IPC::Encoder::operator<<<BOOL>(a1, &v5);
  v5 = (*(a2 + 18) & 0x20) != 0;
  return IPC::Encoder::operator<<<BOOL>(a1, &v5);
}

BOOL WTF::WeakListHashSet<WebKit::WebProcessProxy,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::moveToLastIfPresent<WebKit::WebProcessProxy>(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 28);
  v5 = *(a1 + 24) + 1;
  *(a1 + 24) = v5;
  if (v5 > v4)
  {
    WTF::WeakListHashSet<WebKit::WebPageProxy,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::removeNullReferences(a1);
  }

  WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::initializeIfNeeded((a2 + 8), a2);
  v6 = *(a2 + 8);
  atomic_fetch_add(v6, 1u);
  v11 = v6;
  v8 = WTF::ListHashSet<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>>::moveToLastIfPresent(a1, &v11);
  v9 = v11;
  v11 = 0;
  if (v9 && atomic_fetch_add(v9, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v9);
    WTF::fastFree(v9, v7);
  }

  return v8;
}

BOOL WTF::ListHashSet<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>>::moveToLastIfPresent(uint64_t *a1, void *a2)
{
  v3 = WTF::HashTable<WTF::ListHashSetNode<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>> *,WTF::ListHashSetNode<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>> *,WTF::IdentityExtractor,WTF::ListHashSetNodeHashFunctions<WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>>,WTF::HashTraits<WTF::ListHashSetNode<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>> *>,WTF::HashTraits<WTF::ListHashSetNode<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>> *>,WTF::FastMalloc>::find<WTF::ListHashSetTranslator<WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>>,(WTF::ShouldValidateKey)1,WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>(a1, a2);
  v4 = *a1;
  if (*a1)
  {
    v4 += 8 * *(v4 - 4);
  }

  if (v4 != v3)
  {
    v5 = *v3;
    v6 = *(*v3 + 8);
    v7 = *(*v3 + 16);
    v8 = (v6 + 16);
    if (!v6)
    {
      v8 = a1 + 1;
    }

    *v8 = v7;
    if (v7)
    {
      v9 = (v7 + 8);
    }

    else
    {
      v9 = a1 + 2;
    }

    *v9 = v6;
    v10 = a1[2];
    *(v5 + 8) = v10;
    *(v5 + 16) = 0;
    if (v10)
    {
      v11 = (v10 + 16);
    }

    else
    {
      v11 = a1 + 1;
    }

    *v11 = v5;
    a1[2] = v5;
  }

  return v4 != v3;
}

atomic_uint *WebKit::WebsiteDataStore::propagateSettingUpdates(atomic_uint *this)
{
  v31 = *MEMORY[0x1E69E9840];
  v1 = *(this + 54);
  if (v1)
  {
    v2 = this;
    atomic_fetch_add((v1 + 16), 1u);
    isOptInCookiePartitioningEnabled = WebKit::WebsiteDataStore::isOptInCookiePartitioningEnabled(this);
    if (*(v2 + 482) != isOptInCookiePartitioningEnabled)
    {
      v5 = isOptInCookiePartitioningEnabled;
      if (*(v2 + 289) != 2)
      {
        if (*(v2 + 289))
        {
          return WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v1 + 16));
        }

        v6 = *(*(v2 + 28) + 544);
        if ((v6 & 0x100) != 0)
        {
          if ((v6 & 1) == 0)
          {
            return WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v1 + 16));
          }
        }

        else if (!WebKit::doesAppHaveTrackingPreventionEnabled(isOptInCookiePartitioningEnabled))
        {
          return WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v1 + 16));
        }
      }

      *(v2 + 482) = v5;
      v28 = *(v2 + 3);
      v26 = &v28;
      LOBYTE(v27[0]) = v5;
      v7 = IPC::Encoder::operator new(0x238, v4);
      *v7 = 684;
      *(v7 + 68) = 0;
      *(v7 + 70) = 0;
      *(v7 + 69) = 0;
      *(v7 + 2) = 0;
      *(v7 + 3) = 0;
      *(v7 + 1) = 0;
      IPC::Encoder::encodeHeader(v7);
      v29 = v7;
      IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v7, v28);
      IPC::Encoder::operator<<<BOOL &>(v7, v27);
      buf[0] = 0;
      buf[16] = 0;
      WebKit::AuxiliaryProcessProxy::sendMessage(v1, &v29, 0, buf, 1);
      if (buf[16] == 1)
      {
        v9 = *buf;
        *buf = 0;
        if (v9)
        {
          (*(*v9 + 8))(v9);
        }
      }

      v10 = v29;
      v29 = 0;
      if (v10)
      {
        IPC::Encoder::~Encoder(v10, v8);
        bmalloc::api::tzoneFree(v24, v25);
      }

      WTF::WeakHashSet<WebKit::ApplicationStateTracker,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::begin(v2 + 41, buf);
      v11 = *(v2 + 41);
      if (v11)
      {
        v12 = *(v11 - 4);
        v13 = v11 + 8 * v12;
      }

      else
      {
        v13 = 0;
        v12 = 0;
      }

      v26 = (v2 + 82);
      v27[0] = v13;
      v27[1] = v13;
      v27[2] = v13;
      v27[3] = v11 + 8 * v12;
      WTF::WeakHashSet<WebKit::RemoteLayerBackingStore,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::WeakHashSetConstIterator::skipEmptyBuckets(&v26);
      for (i = *&buf[8]; *&buf[8] != v27[0]; i = *&buf[8])
      {
        v15 = *(*i + 8);
        atomic_fetch_add((v15 + 16), 1u);
        LOBYTE(v29) = v5;
        WebKit::AuxiliaryProcessProxy::send<Messages::WebProcess::SetOptInCookiePartitioningEnabled>(v15, &v29, 0, 0);
        if (v15)
        {
          WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v15 + 16));
        }

        WTF::WeakHashSet<WebKit::RemoteLayerBackingStore,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::WeakHashSetConstIterator::operator++(buf);
      }

      if (*(v2 + 482))
      {
        if (!*(v2 + 449) || *(v2 + 448))
        {
          return WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v1 + 16));
        }

        v16 = qword_1ED641350;
        if (os_log_type_enabled(qword_1ED641350, OS_LOG_TYPE_DEFAULT))
        {
          v17 = *(v2 + 3);
          *buf = 134218240;
          *&buf[4] = v2;
          *&buf[12] = 2048;
          *&buf[14] = v17;
          _os_log_impl(&dword_19D52D000, v16, OS_LOG_TYPE_DEFAULT, "WebsiteDataStore::propagateSettingUpdates (%p) sessionID=%llu, OptInCookiePartitioning enabled, setting ThirdPartyCookieBlockingMode::AllExceptPartitioned", buf, 0x16u);
        }

        v18 = WTF::fastMalloc(0x10);
        *v18 = &unk_1F1121BC0;
        *buf = v18;
        v19 = v2;
        v20 = 3;
      }

      else
      {
        if (!*(v2 + 449) || *(v2 + 448) != 3)
        {
          return WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v1 + 16));
        }

        v21 = qword_1ED641350;
        if (os_log_type_enabled(qword_1ED641350, OS_LOG_TYPE_DEFAULT))
        {
          v22 = *(v2 + 3);
          *buf = 134218240;
          *&buf[4] = v2;
          *&buf[12] = 2048;
          *&buf[14] = v22;
          _os_log_impl(&dword_19D52D000, v21, OS_LOG_TYPE_DEFAULT, "WebsiteDataStore::propagateSettingUpdates (%p) sessionID=%llu, OptInCookiePartitioning disabled, setting ThirdPartyCookieBlockingMode::All", buf, 0x16u);
        }

        v23 = WTF::fastMalloc(0x10);
        *v23 = &unk_1F1121BE8;
        *buf = v23;
        v19 = v2;
        v20 = 0;
      }

      WebKit::WebsiteDataStore::setThirdPartyCookieBlockingMode(v19, v20, buf);
      if (*buf)
      {
        (*(**buf + 8))(*buf);
      }
    }

    return WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v1 + 16));
  }

  return this;
}

uint64_t WebKit::AuxiliaryProcessProxy::send<Messages::WebProcess::SetOptInCookiePartitioningEnabled>(uint64_t a1, void *a2, uint64_t a3, char a4)
{
  v8 = IPC::Encoder::operator new(0x238, a2);
  *v8 = 3007;
  *(v8 + 2) = 0;
  *(v8 + 3) = 0;
  *(v8 + 1) = a3;
  *(v8 + 68) = 0;
  *(v8 + 70) = 0;
  *(v8 + 69) = 0;
  IPC::Encoder::encodeHeader(v8);
  v18 = v8;
  IPC::Encoder::operator<<<BOOL &>(v8, a2);
  LOBYTE(v16) = 0;
  v17 = 0;
  v10 = WebKit::AuxiliaryProcessProxy::sendMessage(a1, &v18, a4, &v16, 1);
  if (v17 == 1)
  {
    v11 = v16;
    v16 = 0;
    if (v11)
    {
      (*(*v11 + 8))(v11);
    }
  }

  v12 = v18;
  v18 = 0;
  if (v12)
  {
    IPC::Encoder::~Encoder(v12, v9);
    bmalloc::api::tzoneFree(v14, v15);
  }

  return v10;
}

atomic_uint *WebKit::WebsiteDataStore::setThirdPartyCookieBlockingMode(uint64_t a1, int a2, uint64_t *a3)
{
  v6 = WTF::fastMalloc(0x10);
  *v6 = 1;
  v7 = *a3;
  *a3 = 0;
  *(v6 + 8) = v7;
  if (WebKit::WebsiteDataStore::thirdPartyCookieBlockingMode(a1) != a2)
  {
    *(a1 + 448) = a2 | 0x100;
    WTF::WeakHashSet<WebKit::ApplicationStateTracker,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::begin((a1 + 328), &v26);
    v9 = *(a1 + 328);
    if (v9)
    {
      v10 = *(v9 - 4);
      v11 = v9 + 8 * v10;
    }

    else
    {
      v11 = 0;
      v10 = 0;
    }

    v21 = a1 + 328;
    v22 = v11;
    v23 = v11;
    v24 = v11;
    v25 = v9 + 8 * v10;
    WTF::WeakHashSet<WebKit::RemoteLayerBackingStore,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::WeakHashSetConstIterator::skipEmptyBuckets(&v21);
    v12 = v27;
    if (v27 != v22)
    {
      while (1)
      {
        v13 = *(*v12 + 8);
        atomic_fetch_add((v13 + 16), 1u);
        atomic_fetch_add(v6, 1u);
        v14 = WTF::fastMalloc(0x10);
        *v14 = &unk_1F11219E0;
        v14[1] = v6;
        v20 = v14;
        v28 = a2;
        WebKit::AuxiliaryProcessProxy::sendWithAsyncReply<Messages::WebProcess::SetThirdPartyCookieBlockingMode,WTF::CompletionHandler<void ()(void)>>(v13, &v28, &v20, 0, 0, 1);
        v15 = v20;
        v20 = 0;
        if (v15)
        {
          break;
        }

        if (v13)
        {
          goto LABEL_8;
        }

LABEL_9:
        WTF::WeakHashSet<WebKit::RemoteLayerBackingStore,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::WeakHashSetConstIterator::operator++(&v26);
        v12 = v27;
        if (v27 == v22)
        {
          goto LABEL_13;
        }
      }

      (*(*v15 + 8))(v15);
      if (!v13)
      {
        goto LABEL_9;
      }

LABEL_8:
      WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v13 + 16));
      goto LABEL_9;
    }
  }

LABEL_13:
  v16 = WebKit::WebsiteDataStore::networkProcess(a1, v8);
  atomic_fetch_add((v16 + 16), 1u);
  v17 = *(a1 + 24);
  atomic_fetch_add(v6, 1u);
  v18 = WTF::fastMalloc(0x10);
  *v18 = &unk_1F1121A08;
  v18[1] = v6;
  v26 = v18;
  WebKit::NetworkProcessProxy::setThirdPartyCookieBlockingMode(v16, v17, a2, &v26);
  if (v26)
  {
    (*(*v26 + 8))(v26);
  }

  WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v16 + 16));
  return WTF::ThreadSafeRefCounted<WTF::CallbackAggregatorOnThread<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref(v6);
}

uint64_t WebKit::AuxiliaryProcessProxy::sendWithAsyncReply<Messages::WebProcess::SetThirdPartyCookieBlockingMode,WTF::CompletionHandler<void ()(void)>>(uint64_t a1, _BYTE *a2, uint64_t *a3, uint64_t a4, char a5, int a6)
{
  v12 = IPC::Encoder::operator new(0x238, a2);
  *v12 = 3012;
  *(v12 + 2) = 0;
  *(v12 + 3) = 0;
  *(v12 + 1) = a4;
  *(v12 + 68) = 0;
  *(v12 + 70) = 0;
  *(v12 + 69) = 0;
  IPC::Encoder::encodeHeader(v12);
  v26 = v12;
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(v12, *a2);
  v13 = *a3;
  *a3 = 0;
  v14 = WTF::fastMalloc(0x10);
  *v14 = &unk_1F111AA10;
  v14[1] = v13;
  if (WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1)
  {
    result = 141;
    __break(0xC471u);
  }

  else
  {
    v15 = v14;
    IdentifierInternal = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
    v24[0] = v15;
    v24[1] = IdentifierInternal;
    v25 = 1;
    v18 = WebKit::AuxiliaryProcessProxy::sendMessage(a1, &v26, a5, v24, a6);
    if (v25 == 1)
    {
      v19 = v24[0];
      v24[0] = 0;
      if (v19)
      {
        (*(*v19 + 8))(v19);
      }
    }

    v20 = v26;
    v26 = 0;
    if (v20)
    {
      IPC::Encoder::~Encoder(v20, v17);
      bmalloc::api::tzoneFree(v22, v23);
    }

    if (v18)
    {
      return IdentifierInternal;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t WebKit::NetworkProcessProxy::setThirdPartyCookieBlockingMode(uint64_t a1, void *a2, char a3, uint64_t *a4)
{
  v7 = *a4;
  *a4 = 0;
  v8 = IPC::Encoder::operator new(0x238, a2);
  *v8 = 715;
  *(v8 + 68) = 0;
  *(v8 + 70) = 0;
  *(v8 + 69) = 0;
  *(v8 + 2) = 0;
  *(v8 + 3) = 0;
  *(v8 + 1) = 0;
  IPC::Encoder::encodeHeader(v8);
  v17 = v8;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v8, a2);
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(v8, a3);
  v9 = WTF::fastMalloc(0x10);
  *v9 = &unk_1F1120058;
  v9[1] = v7;
  if (WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1)
  {
    result = 141;
    __break(0xC471u);
  }

  else
  {
    v15[0] = v9;
    v15[1] = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
    v16 = 1;
    WebKit::AuxiliaryProcessProxy::sendMessage(a1, &v17, 0, v15, 1);
    if (v16 == 1)
    {
      v11 = v15[0];
      v15[0] = 0;
      if (v11)
      {
        (*(*v11 + 8))(v11);
      }
    }

    result = v17;
    v17 = 0;
    if (result)
    {
      IPC::Encoder::~Encoder(result, v10);
      return bmalloc::api::tzoneFree(v13, v14);
    }
  }

  return result;
}

uint64_t std::optional<WebKit::WebPreferencesStore>::operator=[abi:sn200100]<WebKit::WebPreferencesStore const&,void>(uint64_t a1, uint64_t *a2)
{
  if (*(a1 + 48) == 1)
  {
    WTF::RobinHoodHashTable<WTF::String,WTF::KeyValuePair<WTF::String,mpark::variant<WTF::String,BOOL,unsigned int,double>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,mpark::variant<WTF::String,BOOL,unsigned int,double>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,mpark::variant<WTF::String,BOOL,unsigned int,double>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<mpark::variant<WTF::String,BOOL,unsigned int,double>>,WTF::MemoryCompactRobinHoodHashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::MemoryCompactRobinHoodHashTableSizePolicy,WTF::FastMalloc>::operator=(a1, a2);
    WTF::RobinHoodHashTable<WTF::String,WTF::KeyValuePair<WTF::String,mpark::variant<WTF::String,BOOL,unsigned int,double>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,mpark::variant<WTF::String,BOOL,unsigned int,double>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,mpark::variant<WTF::String,BOOL,unsigned int,double>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<mpark::variant<WTF::String,BOOL,unsigned int,double>>,WTF::MemoryCompactRobinHoodHashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::MemoryCompactRobinHoodHashTableSizePolicy,WTF::FastMalloc>::operator=(a1 + 24, a2 + 3);
  }

  else
  {
    WTF::RobinHoodHashTable<WTF::String,WTF::KeyValuePair<WTF::String,mpark::variant<WTF::String,BOOL,unsigned int,double>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,mpark::variant<WTF::String,BOOL,unsigned int,double>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,mpark::variant<WTF::String,BOOL,unsigned int,double>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<mpark::variant<WTF::String,BOOL,unsigned int,double>>,WTF::MemoryCompactRobinHoodHashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::MemoryCompactRobinHoodHashTableSizePolicy,WTF::FastMalloc>::RobinHoodHashTable(a1, a2);
    WTF::RobinHoodHashTable<WTF::String,WTF::KeyValuePair<WTF::String,mpark::variant<WTF::String,BOOL,unsigned int,double>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,mpark::variant<WTF::String,BOOL,unsigned int,double>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,mpark::variant<WTF::String,BOOL,unsigned int,double>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<mpark::variant<WTF::String,BOOL,unsigned int,double>>,WTF::MemoryCompactRobinHoodHashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::MemoryCompactRobinHoodHashTableSizePolicy,WTF::FastMalloc>::RobinHoodHashTable(a1 + 24, a2 + 3);
    *(a1 + 48) = 1;
  }

  return a1;
}

uint64_t WebKit::WebProcessPool::ensureGPUProcess(WebKit::WebProcessPool *this, void *a2)
{
  result = *(this + 22);
  if (!result)
  {
    WebKit::GPUProcessProxy::getOrCreate(a2, &v12);
    v5 = v12;
    atomic_fetch_add(v12 + 4, 1u);
    v6 = *(this + 22);
    *(this + 22) = v5;
    if (v6)
    {
      WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v6 + 16));
    }

    v7 = *(this + 21);
    if (v7)
    {
      v8 = *(this + 9);
      v9 = 8 * v7;
      do
      {
        v10 = *v8++;
        atomic_fetch_add(v10 + 4, 1u);
        v11 = v12;
        WebKit::GPUProcessProxy::updatePreferences(v12, v10);
        WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref(v10 + 4);
        v9 -= 8;
      }

      while (v9);
    }

    else
    {
      v11 = v12;
    }

    WebKit::WebProcessPool::registerFontsForGPUProcessIfNeeded(this, v4);
    if (v11)
    {
      WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref(v11 + 4);
    }

    return *(this + 22);
  }

  return result;
}

void WebKit::GPUProcessProxy::getOrCreate(void *a1@<X1>, uint64_t *a2@<X8>)
{
  {
    if (WebKit::singleton(void)::singleton)
    {
      v4 = *(WebKit::singleton(void)::singleton + 8);
      if (v4)
      {
        atomic_fetch_add((v4 + 16), 1u);
        *a2 = v4;
        return;
      }
    }
  }

  else
  {
    WebKit::singleton(void)::singleton = 0;
  }

  v5 = WebKit::GPUProcessProxy::operator new(0x1E0, a1);
  v6 = WebKit::GPUProcessProxy::GPUProcessProxy(v5);
  *a2 = v6;
  WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::initializeIfNeeded((v6 + 8), v5);
  v8 = *(v5 + 1);
  atomic_fetch_add(v8, 1u);
  {
    v9 = WebKit::singleton(void)::singleton;
    WebKit::singleton(void)::singleton = v8;
    if (v9 && atomic_fetch_add(v9, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v9);

      WTF::fastFree(v9, v7);
    }
  }

  else
  {
    WebKit::singleton(void)::singleton = v8;
  }
}

uint64_t WebKit::GPUProcessProxy::operator new(WebKit::GPUProcessProxy *this, void *a2)
{
  if (this == 480 && WebKit::GPUProcessProxy::s_heapRef)
  {
    return bmalloc::api::tzoneAllocateNonCompact(WebKit::GPUProcessProxy::s_heapRef, a2);
  }

  else
  {
    return WebKit::GPUProcessProxy::operatorNewSlow(this);
  }
}

uint64_t WebKit::GPUProcessProxy::GPUProcessProxy(WebKit::GPUProcessProxy *this)
{
  v2 = WebKit::WebProcessPool::anyProcessPoolNeedsUIBackgroundAssertion(this);
  v3 = WebKit::AuxiliaryProcessProxy::AuxiliaryProcessProxy(this, v2, 0, 3.0);
  *this = &unk_1F111E338;
  *(this + 3) = &unk_1F111E450;
  *(this + 4) = &unk_1F111E4D8;
  *(this + 52) = 0;
  *(this + 424) = WebCore::MockRealtimeMediaSourceCenter::mockRealtimeMediaSourceCenterEnabled(v3);
  *(this + 436) = 0;
  *(this + 428) = 0;
  *(this + 441) = 0;
  *(this + 58) = 0;
  *(this + 59) = 0;
  *(this + 57) = 0;
  WebKit::AuxiliaryProcessProxy::connect(this);
  v52 = 0;
  v57 = 0;
  v58 = 0u;
  memset(v59, 0, 26);
  v54 = 0;
  v55 = 0;
  v53 = 0;
  v56 = 0;
  WebKit::AuxiliaryProcessProxy::auxiliaryProcessParameters(v49);
  v51[0] = *v49;
  v51[1] = v50;
  {
    WebKit::overrideLanguagesStorage(void)::storage = 0;
    unk_1EB01E1D0 = 0;
  }

  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::operator=(&v59[2], &WebKit::overrideLanguagesStorage(void)::storage);
  LOBYTE(v52) = *(this + 424);
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  WebKit::WebsiteDataStore::cacheDirectoryInContainerOrHomeDirectory(v49, v47);
  v5 = v49[0];
  v49[0] = 0;
  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, v4);
  }

  WTF::FileSystemImpl::makeAllDirectories(v47, v4);
  if (v47[0])
  {
    v6 = *(v47[0] + 1);
    v7 = *(v47[0] + 1) | (((*(v47[0] + 4) >> 2) & 1) << 32);
  }

  else
  {
    v6 = 0;
    v7 = 0x100000000;
  }

  WebKit::resolveAndCreateReadWriteDirectoryForSandboxExtension(v6, v7, v49);
  v9 = v49[0];
  v49[0] = 0;
  v10 = v55;
  v55 = v9;
  if (v10)
  {
    if (atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v10, v8);
    }

    v11 = v49[0];
    v49[0] = 0;
    if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v11, v8);
    }
  }

  v12 = v47[0];
  v47[0] = 0;
  if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v12, v8);
  }

  WebKit::WebsiteDataStore::defaultResolvedContainerTemporaryDirectory(&v48);
  if (v55)
  {
    v13 = *(v55 + 1);
    if (v13)
    {
      WebKit::SandboxExtension::createHandleWithoutResolvingPath(*(v55 + 1), (v13 | (((*(v55 + 4) >> 2) & 1) << 32)), 1, v49);
      if (LOBYTE(v49[1]) == 1)
      {
        v14 = v49[0];
        v49[0] = 0;
        v15 = v53;
        v53 = v14;
        if (!v15 || (WebKit::SandboxExtensionImpl::~SandboxExtensionImpl(v15), bmalloc::api::tzoneFree(v42, v43), (v49[1] & 1) != 0))
        {
          WebKit::SandboxExtensionHandle::~SandboxExtensionHandle(v49);
        }
      }
    }
  }

  if (v48 && *(v48 + 1))
  {
    WTF::FileSystemImpl::pathByAppendingComponent();
    if (v49[0])
    {
      v16 = *(v49[0] + 1);
      v17 = *(v49[0] + 1) | (((*(v49[0] + 4) >> 2) & 1) << 32);
    }

    else
    {
      v16 = 0;
      v17 = 0x100000000;
    }

    WebKit::resolveAndCreateReadWriteDirectoryForSandboxExtension(v16, v17, v47);
    v19 = v49[0];
    v49[0] = 0;
    if (v19 && atomic_fetch_add_explicit(v19, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v19, v18);
    }

    if (v47[0])
    {
      v20 = *(v47[0] + 1);
      v21 = *(v47[0] + 1) | (((*(v47[0] + 4) >> 2) & 1) << 32);
    }

    else
    {
      v20 = 0;
      v21 = 0x100000000;
    }

    WebKit::SandboxExtension::createHandleWithoutResolvingPath(v20, v21, 1, v49);
    if (LOBYTE(v49[1]) == 1)
    {
      v23 = v49[0];
      v49[0] = 0;
      v24 = v54;
      v54 = v23;
      if (!v24 || (WebKit::SandboxExtensionImpl::~SandboxExtensionImpl(v24), bmalloc::api::tzoneFree(v44, v45), (v49[1] & 1) != 0))
      {
        WebKit::SandboxExtensionHandle::~SandboxExtensionHandle(v49);
      }
    }

    v25 = v47[0];
    v47[0] = 0;
    if (v25 && atomic_fetch_add_explicit(v25, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v25, v22);
    }
  }

  *(this + 470) = WebKit::GPUProcessProxy::s_enableMetalDebugDeviceInNewGPUProcessesForTesting;
  *(this + 471) = WebKit::GPUProcessProxy::s_enableMetalShaderValidationInNewGPUProcessesForTesting;
  WebKit::GPUProcessProxy::platformInitializeGPUProcessParameters(this, v51);
  *(this + 469) = HIDWORD(v58) != 0;
  WebKit::AuxiliaryProcessProxy::initializationActivityAndGrant(this, v26, v47);
  v28 = IPC::Encoder::operator new(0x238, v27);
  *v28 = 75;
  *(v28 + 68) = 0;
  *(v28 + 70) = 0;
  *(v28 + 69) = 0;
  *(v28 + 2) = 0;
  *(v28 + 3) = 0;
  *(v28 + 1) = 0;
  IPC::Encoder::encodeHeader(v28);
  v60 = v28;
  IPC::ArgumentCoder<WebKit::GPUProcessCreationParameters,void>::encode(v28, v51);
  v46 = *v47;
  v47[0] = 0;
  v47[1] = 0;
  v29 = WTF::fastMalloc(0x18);
  *v29 = &unk_1F111EA20;
  *(v29 + 8) = v46;
  if (WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1)
  {
    result = 141;
    __break(0xC471u);
  }

  else
  {
    v30 = v29;
    IdentifierInternal = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
    v49[0] = v30;
    v49[1] = IdentifierInternal;
    LOBYTE(v50) = 1;
    WebKit::AuxiliaryProcessProxy::sendMessage(this, &v60, 0, v49, 1);
    if (v50 == 1)
    {
      v33 = v49[0];
      v49[0] = 0;
      if (v33)
      {
        (*(*v33 + 8))(v33);
      }
    }

    v34 = v60;
    v60 = 0;
    if (v34)
    {
      IPC::Encoder::~Encoder(v34, v32);
      bmalloc::api::tzoneFree(v40, v41);
    }

    v35 = v47[1];
    v47[1] = 0;
    if (v35)
    {
      WTF::ThreadSafeRefCounted<WebKit::LaunchGrant,(WTF::DestructionThread)0>::deref(v35);
    }

    v36 = v47[0];
    v47[0] = 0;
    if (v36)
    {
      WTF::RefCounted<WebKit::ProcessThrottlerActivity>::deref(v36 + 2, v32);
    }

    WebKit::GPUProcessProxy::updateProcessAssertion(this);
    v38 = v48;
    v48 = 0;
    if (v38)
    {
      if (atomic_fetch_add_explicit(v38, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v38, v37);
      }
    }

    WebKit::GPUProcessCreationParameters::~GPUProcessCreationParameters(v51, v37);
    return this;
  }

  return result;
}

void WebKit::GPUProcessProxy::platformInitializeGPUProcessParameters(WebKit::GPUProcessProxy *this, WebKit::GPUProcessCreationParameters *a2)
{
  WebKit::AuxiliaryProcessProxy::createMobileGestaltSandboxExtensionIfNeeded(&v18);
  std::__optional_storage_base<WebKit::SandboxExtensionHandle,false>::__assign_from[abi:sn200100]<std::__optional_move_assign_base<WebKit::SandboxExtensionHandle,false>>(a2 + 64, &v18);
  if (v19 == 1)
  {
    WebKit::SandboxExtensionHandle::~SandboxExtensionHandle(&v18);
  }

  WebKit::GPUProcessProxy::createGPUToolsSandboxExtensionHandlesIfNeeded(v4, &v18);
  v6 = *(a2 + 23);
  if (v6)
  {
    v14 = *(a2 + 10);
    v15 = 8 * v6;
    do
    {
      WebKit::SandboxExtensionHandle::~SandboxExtensionHandle(v14);
      v14 = (v16 + 8);
      v15 -= 8;
    }

    while (v15);
  }

  v7 = *(a2 + 10);
  if (v7)
  {
    *(a2 + 10) = 0;
    *(a2 + 22) = 0;
    WTF::fastFree(v7, v5);
  }

  *(a2 + 10) = v18;
  v8 = v19;
  v18 = 0;
  v19 = 0;
  *(a2 + 11) = v8;
  WTF::Vector<WebKit::SandboxExtensionHandle,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v18, v5);
  WebKit::applicationVisibleName(&v17);
  v9 = v17;
  MEMORY[0x19EB02040](&v18, v17);
  v11 = v18;
  v18 = 0;
  v12 = *(a2 + 12);
  *(a2 + 12) = v11;
  if (v12)
  {
    if (atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v12, v10);
    }

    v13 = v18;
    v18 = 0;
    if (v13)
    {
      if (atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v13, v10);
        if (!v9)
        {
          goto LABEL_13;
        }

        goto LABEL_12;
      }
    }
  }

  if (v9)
  {
LABEL_12:
  }

LABEL_13:
  *(a2 + 60) = *(this + 235);
}

void sub_19D5D4454(_Unwind_Exception *a1, void *a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  WTF::Vector<WebKit::SandboxExtensionHandle,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(va, a2);
  _Unwind_Resume(a1);
}

void WebKit::GPUProcessProxy::createGPUToolsSandboxExtensionHandlesIfNeeded(WebKit::GPUProcessProxy *this@<X0>, void *a2@<X8>)
{
  v5[2] = *MEMORY[0x1E69E9840];
  if (WebKit::WebProcessProxy::shouldEnableRemoteInspector(this))
  {
    v5[0] = "com.apple.gputools.service";
    v5[1] = 27;
    LOBYTE(v3) = 0;
    v4 = 0;
    WebKit::SandboxExtension::createHandlesForMachLookup(v5, 1uLL, &v3, 0, a2);
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
  }
}

void WebKit::applicationVisibleName(WebKit *this)
{
  v2 = [MEMORY[0x1E696AAE8] mainBundle];
  v8 = v2;
  if (v2)
  {
    v7 = v2;
    v2 = v8;
  }

  v3 = [v2 infoDictionary];
  v4 = [v3 objectForKeyedSubscript:*MEMORY[0x1E695E120]];
  *this = v4;
  if (v4 || (*this = 0, v5 = [v8 infoDictionary], v4 = objc_msgSend(v5, "objectForKeyedSubscript:", *MEMORY[0x1E695E4F8]), (*this = v4) != 0))
  {
    v6 = v4;
  }

  if (v8)
  {
  }
}

void sub_19D5D461C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

uint64_t IPC::ArgumentCoder<WebKit::GPUProcessCreationParameters,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  IPC::ArgumentCoder<WebKit::AuxiliaryProcessCreationParameters,void>::encode(a1, a2);
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 32));
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 33));
  IPC::ArgumentCoder<WebKit::SandboxExtensionHandle,void>::encode(a1, (a2 + 40));
  IPC::ArgumentCoder<WebKit::SandboxExtensionHandle,void>::encode(a1, (a2 + 48));
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 56));
  IPC::ArgumentCoder<std::optional<WebKit::SandboxExtensionHandle>,void>::encode<IPC::Encoder,std::optional<WebKit::SandboxExtensionHandle>>(a1, a2 + 64);
  IPC::VectorArgumentCoder<false,WebKit::SandboxExtensionHandle,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WebKit::SandboxExtensionHandle,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(a1, a2 + 80);
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 96));
  IPC::VectorArgumentCoder<false,WTF::String,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(a1, a2 + 104);
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 120));

  return IPC::Encoder::operator<<<BOOL>(a1, (a2 + 121));
}

atomic_uint *WebKit::GPUProcessProxy::updateProcessAssertion(WebKit::GPUProcessProxy *this)
{
  WebKit::WebProcessPool::allProcessPools(&v24);
  if (v25)
  {
    v3 = 0;
    v4 = 0;
    v5 = v24;
    v6 = 8 * v25;
    do
    {
      v7 = *v5++;
      v3 |= *(*(v7 + 784) + 8) != 0;
      v4 |= *(*(v7 + 800) + 8) != 0;
      v6 -= 8;
    }

    while (v6);
    result = WTF::Vector<WTF::Ref<WebKit::WebProcessPool,WTF::RawPtrTraits<WebKit::WebProcessPool>,WTF::DefaultRefDerefTraits<WebKit::WebProcessPool>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v24, v2);
    if (v3)
    {
      v10 = *(this + 52);
      if (v10)
      {
        v11 = *(v10 + 16);
        if (v11)
        {
          if (*(v11 + 8) && (*(v10 + 40) & 1) != 0)
          {
            return result;
          }
        }
      }

      v12 = *(*(this + 20) + 8);
      if (v12)
      {
        atomic_fetch_add((v12 + 16), 1u);
        v13 = WebKit::ProcessThrottlerActivity::operator new(0x30, v9);
        v14 = "GPU for foreground view(s)";
        v15 = this + 144;
        v16 = 1;
LABEL_19:
        v20 = WebKit::ProcessThrottlerActivity::ProcessThrottlerActivity(v13, v15, v14, 27, v16, 0);
        v22 = *(this + 52);
        *(this + 52) = v20;
        if (v22)
        {
          WTF::RefCounted<WebKit::ProcessThrottlerActivity>::deref((v22 + 8), v21);
        }

        return WebKit::ProcessThrottler::deref((this + 144));
      }

      goto LABEL_25;
    }

    if (v4)
    {
      v17 = *(this + 52);
      if (v17)
      {
        v18 = *(v17 + 16);
        if (v18)
        {
          if (*(v18 + 8) && *(v17 + 40) != 1)
          {
            return result;
          }
        }
      }

      v19 = *(*(this + 20) + 8);
      if (v19)
      {
        atomic_fetch_add((v19 + 16), 1u);
        v13 = WebKit::ProcessThrottlerActivity::operator new(0x30, v9);
        v14 = "GPU for background view(s)";
        v15 = this + 144;
        v16 = 0;
        goto LABEL_19;
      }

LABEL_25:
      __break(0xC471u);
      JUMPOUT(0x19D5D489CLL);
    }
  }

  else
  {
    result = WTF::Vector<WTF::Ref<WebKit::WebProcessPool,WTF::RawPtrTraits<WebKit::WebProcessPool>,WTF::DefaultRefDerefTraits<WebKit::WebProcessPool>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v24, v2);
  }

  v23 = *(this + 52);
  *(this + 52) = 0;
  if (v23)
  {
    return WTF::RefCounted<WebKit::ProcessThrottlerActivity>::deref((v23 + 8), v9);
  }

  return result;
}

void WebKit::GPUProcessCreationParameters::~GPUProcessCreationParameters(WebKit::GPUProcessCreationParameters *this, void *a2)
{
  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(this + 104, a2);
  v4 = *(this + 12);
  *(this + 12) = 0;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, v3);
  }

  WTF::Vector<WebKit::SandboxExtensionHandle,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(this + 80, v3);
  if (*(this + 72) == 1)
  {
    WebKit::SandboxExtensionHandle::~SandboxExtensionHandle(this + 8);
  }

  v6 = *(this + 7);
  *(this + 7) = 0;
  if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v6, v5);
  }

  WebKit::SandboxExtensionHandle::~SandboxExtensionHandle(this + 6);
  WebKit::SandboxExtensionHandle::~SandboxExtensionHandle(this + 5);
  std::unique_ptr<WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>::~unique_ptr[abi:sn200100](this + 3, v7);
  v9 = *(this + 2);
  *(this + 2) = 0;
  if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v9, v8);
  }

  v10 = *(this + 1);
  *(this + 1) = 0;
  if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v10, v8);
  }

  v11 = *this;
  *this = 0;
  if (v11)
  {
    if (atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v11, v8);
    }
  }
}

uint64_t WebKit::GPUProcessProxy::updatePreferences(uint64_t this, WebKit::WebProcessProxy *a2)
{
  v2 = this;
  v3 = *(this + 80);
  if (v3 && (*(v3 + 104) & 1) != 0 || *(this + 88))
  {
    v14 = 0;
    v13 = 0;
    WebKit::WebProcessProxy::pages(a2, &v11);
    if (v12)
    {
      v5 = 8 * v12;
      v6 = v11;
      do
      {
        v7 = *v6;
        CFRetain(*(*v6 + 8));
        v8 = *(v7 + 368);
        CFRetain(v8[1]);
        {
          atomic_fetch_add_explicit(WebKit::WebPreferencesKey::useGPUProcessForMediaEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
          WebKit::WebPreferencesKey::useGPUProcessForMediaEnabledKey(void)::key = WebKit::WebPreferencesKey::useGPUProcessForMediaEnabledKey(void)::$_0::operator() const(void)::impl;
        }

        if (WebKit::WebPreferencesStore::getBoolValueForKey((v8 + 5), &WebKit::WebPreferencesKey::useGPUProcessForMediaEnabledKey(void)::key, v9))
        {
          WebKit::GPUProcessPreferences::copyEnabledWebPreferences(&v13, v8, v10);
        }

        CFRelease(v8[1]);
        CFRelease(*(v7 + 8));
        v6 += 8;
        v5 -= 8;
      }

      while (v5);
    }

    WTF::Vector<WTF::Ref<WebKit::WebPageProxy,WTF::RawPtrTraits<WebKit::WebPageProxy>,WTF::DefaultRefDerefTraits<WebKit::WebPageProxy>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v11, v4);
    v11 = &v13;
    return WebKit::AuxiliaryProcessProxy::send<Messages::GPUProcess::UpdateGPUProcessPreferences>(v2, &v11, 0, 0);
  }

  return this;
}

uint64_t WebKit::GPUProcessPreferences::copyEnabledWebPreferences(WebKit::GPUProcessPreferences *this, const WebKit::WebPreferences *a2, const WTF::StringImpl *a3)
{
  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::shouldUseModernAVContentKeySessionKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::shouldUseModernAVContentKeySessionKey(void)::key = WebKit::WebPreferencesKey::shouldUseModernAVContentKeySessionKey(void)::$_0::operator() const(void)::impl;
  }

  if (WebKit::WebPreferencesStore::getBoolValueForKey((a2 + 40), &WebKit::WebPreferencesKey::shouldUseModernAVContentKeySessionKey(void)::key, a3))
  {
    *this = 257;
  }

  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::vp9DecoderEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::vp9DecoderEnabledKey(void)::key = WebKit::WebPreferencesKey::vp9DecoderEnabledKey(void)::$_0::operator() const(void)::impl;
  }

  if (WebKit::WebPreferencesStore::getBoolValueForKey((a2 + 40), &WebKit::WebPreferencesKey::vp9DecoderEnabledKey(void)::key, v5))
  {
    *(this + 1) = 257;
  }

  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::sWVPDecodersAlwaysEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::sWVPDecodersAlwaysEnabledKey(void)::key = WebKit::WebPreferencesKey::sWVPDecodersAlwaysEnabledKey(void)::$_0::operator() const(void)::impl;
  }

  result = WebKit::WebPreferencesStore::getBoolValueForKey((a2 + 40), &WebKit::WebPreferencesKey::sWVPDecodersAlwaysEnabledKey(void)::key, v6);
  if (result)
  {
    *(this + 4) = 1;
  }

  return result;
}

uint64_t WebKit::AuxiliaryProcessProxy::send<Messages::GPUProcess::UpdateGPUProcessPreferences>(uint64_t a1, char **a2, uint64_t a3, char a4)
{
  v8 = IPC::Encoder::operator new(0x238, a2);
  *v8 = 96;
  *(v8 + 2) = 0;
  *(v8 + 3) = 0;
  *(v8 + 1) = a3;
  *(v8 + 68) = 0;
  *(v8 + 70) = 0;
  *(v8 + 69) = 0;
  IPC::Encoder::encodeHeader(v8);
  v18 = v8;
  IPC::ArgumentCoder<WebKit::GPUProcessPreferences,void>::encode(v8, *a2);
  LOBYTE(v16) = 0;
  v17 = 0;
  v10 = WebKit::AuxiliaryProcessProxy::sendMessage(a1, &v18, a4, &v16, 1);
  if (v17 == 1)
  {
    v11 = v16;
    v16 = 0;
    if (v11)
    {
      (*(*v11 + 8))(v11);
    }
  }

  v12 = v18;
  v18 = 0;
  if (v12)
  {
    IPC::Encoder::~Encoder(v12, v9);
    bmalloc::api::tzoneFree(v14, v15);
  }

  return v10;
}

uint64_t IPC::ArgumentCoder<WebKit::GPUProcessPreferences,void>::encode(IPC::Encoder *a1, char *a2)
{
  IPC::ArgumentCoder<std::optional<BOOL>,void>::encode<IPC::Encoder,std::optional<BOOL> const&>(a1, a2);
  IPC::ArgumentCoder<std::optional<BOOL>,void>::encode<IPC::Encoder,std::optional<BOOL> const&>(a1, a2 + 2);

  return IPC::Encoder::operator<<<BOOL>(a1, a2 + 4);
}

uint64_t IPC::ArgumentCoder<std::optional<BOOL>,void>::encode<IPC::Encoder,std::optional<BOOL> const&>(IPC::Encoder *a1, char *a2)
{
  if (a2[1])
  {
    v6 = 1;
    IPC::Encoder::operator<<<BOOL>(a1, &v6);
    if (a2[1])
    {
      return IPC::Encoder::operator<<<BOOL>(a1, a2);
    }

    else
    {
      v5 = std::__throw_bad_optional_access[abi:sn200100]();
      return WebKit::WebPageProxy::initializeWebPage(v5);
    }
  }

  else
  {
    v7 = 0;
    return IPC::Encoder::operator<<<BOOL>(a1, &v7);
  }
}

uint64_t WebKit::WebPageProxy::initializeWebPage(uint64_t result, WTF **a2, __int16 a3)
{
  if ((*(result + 865) & 1) == 0)
  {
    v3 = result;
    if (*(result + 864) == 1)
    {
      v4 = *(result + 56);
      if (v4)
      {
        v5 = *(v4 + 8);
        if (v5)
        {
          (*(*v5 + 1712))(v5);
          v8 = *(v3 + 352);
          atomic_fetch_add((v8 + 16), 1u);
          (*(*v5 + 16))(v66, v5, v8);
          v9 = v66[0];
          v66[0] = 0;
          v72[0] = v9;
          WebKit::WebPageProxy::setDrawingArea(v3, v72);
          if (v72[0])
          {
            (*(*v72[0] + 8))(v72[0]);
          }

          v10 = v66[0];
          v66[0] = 0;
          if (v10)
          {
            v10 = (*(*v10 + 8))(v10);
          }

          if (v8)
          {
            v10 = WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v8 + 16));
          }

          Inspector::RemoteInspector::singleton(v10);
          v11 = *(*(v3 + 64) + 592);
          if (v11)
          {
            atomic_fetch_add_explicit(v11, 2u, memory_order_relaxed);
            v74[0] = v11;
            v12 = *(v3 + 408);
            CFRetain(v12[1]);
            v14 = WebKit::WebsiteDataStore::networkProcess(v12, v13);
            atomic_fetch_add((v14 + 16), 1u);
            v15 = *(*(v3 + 408) + 24);
            v16 = *(v3 + 40);
            v18 = IPC::Encoder::operator new(0x238, v17);
            *v18 = 571;
            *(v18 + 68) = 0;
            *(v18 + 70) = 0;
            *(v18 + 69) = 0;
            *(v18 + 2) = 0;
            *(v18 + 3) = 0;
            *(v18 + 1) = 0;
            IPC::Encoder::encodeHeader(v18);
            v66[0] = v18;
            IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v18, v15);
            IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v18, v16);
            IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v18, v74);
            LOBYTE(v72[0]) = 0;
            LOBYTE(v73) = 0;
            WebKit::AuxiliaryProcessProxy::sendMessage(v14, v66, 0, v72, 1);
            if (v73 == 1)
            {
              v20 = v72[0];
              v72[0] = 0;
              if (v20)
              {
                (*(*v20 + 8))(v20);
              }
            }

            v21 = v66[0];
            v66[0] = 0;
            if (v21)
            {
              IPC::Encoder::~Encoder(v21, v19);
              bmalloc::api::tzoneFree(v60, v61);
            }

            WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v14 + 16));
            CFRelease(v12[1]);
            v23 = v74[0];
            v74[0] = 0;
            if (v23 && atomic_fetch_add_explicit(v23, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v23, v22);
            }
          }

          v24 = *(*(v3 + 408) + 432);
          if (v24)
          {
            atomic_fetch_add((v24 + 16), 1u);
            v25 = *(v3 + 1472);
            if (v25)
            {
              v66[0] = *(*(v3 + 408) + 24);
              v74[0] = *(v25 + 40);
              v75[0] = *(v3 + 40);
              v72[0] = v66;
              v72[1] = v74;
              v73 = v75;
              WebKit::AuxiliaryProcessProxy::send<Messages::NetworkProcess::CloneSessionStorageForWebPage>(v24, v72);
            }

            if (*(*(v3 + 64) + 590) == 1)
            {
              v66[0] = *(v3 + 40);
              v72[0] = v66;
              WebKit::AuxiliaryProcessProxy::send<Messages::NetworkProcess::SetShouldRelaxThirdPartyCookieBlockingForPage>(v24, v72);
            }

            WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v24 + 16));
          }

          v26 = *(v3 + 1472);
          *(v3 + 1472) = 0;
          if (v26)
          {
            CFRelease(*(v26 + 8));
          }

          v27 = *(v3 + 352);
          atomic_fetch_add(v27 + 4, 1u);
          v28 = *(v3 + 1480);
          ++*(v28 + 2);
          v29 = *(v3 + 368);
          CFRetain(*(v29 + 8));
          v30 = WebKit::BrowsingContextGroup::ensureProcessForSite(v28, a2, v27, v29, 1, v72);
          v31 = v72[0];
          FrameIdentifier = WebCore::generateFrameIdentifier(v30);
          v33 = WebKit::WebFrameProxy::webFrame(*(v3 + 1488), *(v3 + 1496));
          v34 = v33;
          if (v33)
          {
            CFRetain(*(v33 + 8));
          }

          v35 = API::Object::newObject(0x218uLL, 58);
          v36 = WebKit::WebFrameProxy::WebFrameProxy(v35, v3, v31, FrameIdentifier, a3, 0, v34, 1);
          v39 = *(v3 + 424);
          *(v3 + 424) = v36;
          if (v39)
          {
            CFRelease(*(v39 + 8));
          }

          if (v34)
          {
            CFRelease(*(v34 + 8));
          }

          WTF::RefCounted<WebKit::FrameProcess>::deref(v31 + 2, v37, v38);
          {
            atomic_fetch_add_explicit(WebKit::WebPreferencesKey::siteIsolationEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
            WebKit::WebPreferencesKey::siteIsolationEnabledKey(void)::key = WebKit::WebPreferencesKey::siteIsolationEnabledKey(void)::$_0::operator() const(void)::impl;
          }

          if (WebKit::WebPreferencesStore::getBoolValueForKey((v29 + 40), &WebKit::WebPreferencesKey::siteIsolationEnabledKey(void)::key, v40))
          {
            WebKit::BrowsingContextGroup::addPage(v28, v3);
          }

          v41 = *(v3 + 328);
          if (v41)
          {
            (**v41)(*(v3 + 328));
          }

          v42 = *(*(v3 + 424) + 288);
          LOBYTE(v66[0]) = 0;
          v71 = 0;
          v75[0] = 0;
          WebKit::WebPageProxy::creationParameters(v3, v27, v41, v42, v66, 0, v75, v72);
          v74[0] = v3 + 48;
          v74[1] = v72;
          WebKit::AuxiliaryProcessProxy::send<Messages::WebProcess::CreateWebPage>(v27, v74, 0, 0);
          WebKit::WebPageCreationParameters::~WebPageCreationParameters(v72, v43);
          if (v71 == 1)
          {
            if (v70[120] == 1)
            {
              WebKit::WebsitePoliciesData::~WebsitePoliciesData(v70, v44);
            }

            WTF::Vector<WebKit::FrameTreeCreationParameters,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v69, v44);
            v63 = v68;
            v68 = 0;
            if (v63)
            {
              WTF::RefCounted<WebCore::FrameTreeSyncData>::deref(v63, v62);
            }

            v64 = v67;
            v67 = 0;
            if (v64 && atomic_fetch_add_explicit(v64, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v64, v62);
            }

            v65 = v66[0];
            v66[0] = 0;
            if (v65 && atomic_fetch_add_explicit(v65, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v65, v62);
            }
          }

          (*(*v41 + 8))(v41);
          if (qword_1ED6429C0)
          {
            NonCompact = bmalloc::api::tzoneAllocateNonCompact(qword_1ED6429C0, v45);
          }

          else
          {
            NonCompact = WebKit::WebPageProxyFrameLoadStateObserver::operatorNewSlow(0);
          }

          *(NonCompact + 16) = 1;
          *NonCompact = &unk_1F1116AD0;
          *(NonCompact + 8) = 0;
          *(NonCompact + 24) = 0u;
          *(NonCompact + 40) = 0u;
          *(NonCompact + 56) = 0;
          v48 = *(v3 + 32);
          v49 = *(v48 + 2880);
          *(v48 + 2880) = NonCompact;
          if (v49)
          {
            WTF::RefCounted<WebKit::WebPageProxyFrameLoadStateObserver>::deref((v49 + 16), v47);
          }

          v50 = *(v3 + 424);
          v51 = *(*(v3 + 32) + 2880);
          if (v51)
          {
            ++v51[4];
          }

          WTF::WeakHashSet<WebKit::FrameLoadStateObserver,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::add<WebKit::FrameLoadStateObserver>(v50 + 224, v51, v72);
          WTF::RefCounted<WebKit::WebPageProxyFrameLoadStateObserver>::deref(v51 + 4, v52);
          v53 = *(v3 + 424);
          v54 = *(v3 + 32);
          WebKit::PageLoadTimingFrameLoadStateObserver::ref((v54 + 2896));
          WTF::WeakHashSet<WebKit::FrameLoadStateObserver,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::add<WebKit::FrameLoadStateObserver>(v53 + 224, (v54 + 2896), v72);
          WebKit::PageLoadTimingFrameLoadStateObserver::deref((v54 + 2896));
          WebKit::WebProcessProxy::addVisitedLinkStoreUser(v27, *(v3 + 400), *(v3 + 40));
          if (byte_1ED642A00)
          {
            v58 = dword_1ED642AC4 == 0;
          }

          else
          {
            v57 = 0uLL;
            *algn_1ED642A88 = 0u;
            *&qword_1ED642AA8 = 0u;
            v58 = 1;
            dword_1ED642A90 = 1;
            qword_1ED642A98 = 0;
            unk_1ED642AA0 = 0;
            qword_1ED642AA8 = 0;
            byte_1ED642AB0 = 0;
            qword_1ED642AB8 = 0;
            unk_1ED642AC0 = 0;
            qword_1ED642A80 = &unk_1F10EE480;
            byte_1ED642A00 = 1;
          }

          *(v3 + 1440) = v58;
          WebKit::WebPageProxy::cachedAllowedQueryParametersForAdvancedPrivacyProtections(v55, v56, v57);
          *(v3 + 1441) = dword_1ED642A2C == 0;
          CFRelease(*(v29 + 8));
          WTF::RefCounted<WebKit::BrowsingContextGroup>::deref(v28 + 2, v59);
          WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref(v27 + 4);
          return (*(*v5 + 1720))(v5);
        }
      }
    }
  }

  return result;
}

void WebKit::PageClientImpl::createDrawingAreaProxy(id *this@<X0>, WebKit::WebProcessProxy *a2@<X1>, void *a3@<X8>)
{
  WeakRetained = objc_loadWeakRetained(this + 7);
  if (WeakRetained)
  {
    v6 = WeakRetained;
    [WeakRetained _createDrawingAreaProxy:a2];
  }

  else
  {
    *a3 = 0;
  }
}

WebKit::RemoteLayerTreeDrawingAreaProxy *WebKit::RemoteLayerTreeDrawingAreaProxyIOS::create@<X0>(WebKit::RemoteLayerTreeDrawingAreaProxyIOS *this@<X0>, WebKit::WebPageProxy *a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = WebKit::RemoteLayerTreeDrawingAreaProxyIOS::operator new(0x130, a2);
  result = WebKit::RemoteLayerTreeDrawingAreaProxy::RemoteLayerTreeDrawingAreaProxy(v7, this, a2);
  *v7 = &unk_1F1109B68;
  *(v7 + 16) = &unk_1F1109D30;
  *(v7 + 288) = 0;
  *(v7 + 296) = 0;
  *a3 = v7;
  return result;
}

uint64_t WebKit::RemoteLayerTreeDrawingAreaProxyIOS::operator new(WebKit::RemoteLayerTreeDrawingAreaProxyIOS *this, void *a2)
{
  if (this == 304 && WebKit::RemoteLayerTreeDrawingAreaProxyIOS::s_heapRef)
  {
    return bmalloc::api::tzoneAllocateNonCompact(WebKit::RemoteLayerTreeDrawingAreaProxyIOS::s_heapRef, a2);
  }

  else
  {
    return WebKit::RemoteLayerTreeDrawingAreaProxyIOS::operatorNewSlow(this);
  }
}

WebKit::RemoteLayerTreeDrawingAreaProxy *WebKit::RemoteLayerTreeDrawingAreaProxy::RemoteLayerTreeDrawingAreaProxy(WebKit::RemoteLayerTreeDrawingAreaProxy *this, WebKit::WebPageProxy *a2, WebKit::WebProcessProxy *a3)
{
  v34 = *MEMORY[0x1E69E9840];
  v6 = WebKit::DrawingAreaProxy::DrawingAreaProxy(this, 0, a2, a3);
  *(v6 + 72) = 1;
  *v6 = &unk_1F1108930;
  *(v6 + 16) = &unk_1F1108AF8;
  v8 = WebKit::RemoteLayerTreeHost::operator new(0x48, v7);
  v9 = WTF::WeakPtrFactory<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(this + 2, this);
  v10 = *(this + 1);
  atomic_fetch_add(v10, 1u);
  *v8 = v10;
  *(v8 + 8) = 0u;
  *(v8 + 24) = 0u;
  *(v8 + 40) = 0u;
  *(v8 + 49) = 0u;
  *(this + 200) = 0u;
  *(this + 10) = v8;
  *(this + 88) = 0;
  *(this + 24) = 3;
  *(this + 104) = 0;
  *(this + 120) = 0;
  *(this + 128) = 0;
  *(this + 144) = 0;
  *(this + 240) = 0;
  *(this + 248) = 0;
  *(this + 152) = 0u;
  *(this + 168) = 0u;
  *(this + 184) = 0u;
  *(this + 216) = 0u;
  *(this + 232) = 0;
  v11 = *(a3 + 15);
  *(this + 32) = 0;
  *(this + 33) = v11;
  *(this + 34) = 0;
  *(this + 70) = 0;
  v12 = WebCore::IOSurfacePool::sharedPoolSingleton(v9);
  WebCore::IOSurfacePool::setPoolSize(v12);
  v13 = *(a2 + 46);
  CFRetain(*(v13 + 8));
  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::tiledScrollingIndicatorVisibleKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::tiledScrollingIndicatorVisibleKey(void)::key = WebKit::WebPreferencesKey::tiledScrollingIndicatorVisibleKey(void)::$_0::operator() const(void)::impl;
  }

  BoolValueForKey = WebKit::WebPreferencesStore::getBoolValueForKey((v13 + 40), &WebKit::WebPreferencesKey::tiledScrollingIndicatorVisibleKey(void)::key, v14);
  CFRelease(*(v13 + 8));
  if (BoolValueForKey)
  {
    v17 = WebKit::RemoteLayerTreeHost::operator new(0x48, v16);
    WTF::WeakPtrFactory<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(this + 2, this);
    v18 = *(this + 1);
    atomic_fetch_add(v18, 1u);
    *v17 = v18;
    *(v17 + 8) = 0u;
    *(v17 + 24) = 0u;
    *(v17 + 40) = 0u;
    *(v17 + 49) = 0u;
    std::unique_ptr<WebKit::RemoteLayerTreeHost>::reset[abi:sn200100](this + 25, v17);
    *(*(this + 25) + 64) = 1;
    v19 = objc_alloc_init(MEMORY[0x1E6979398]);
    v20 = *(this + 26);
    *(this + 26) = v19;
    if (v20)
    {

      v19 = *(this + 26);
    }

    [v19 setName:@"Tile map host"];
    [*(this + 26) setDelegate:{objc_msgSend(MEMORY[0x1E69E2198], "shared")}];
    v21 = MEMORY[0x1E695EFF8];
    [*(this + 26) setAnchorPoint:{*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8)}];
    LODWORD(v22) = 1061997773;
    [*(this + 26) setOpacity:v22];
    [*(this + 26) setMasksToBounds:1];
    v23 = WebCore::sRGBColorSpaceSingleton([*(this + 26) setBorderWidth:2.0]);
    v24 = v23;
    if (v23)
    {
      CFRetain(v23);
    }

    *components = xmmword_19E703BF0;
    v33 = unk_19E703C00;
    v25 = CGColorCreate(v24, components);
    [*(this + 26) setBackgroundColor:v25];
    v31[0] = xmmword_19E703C10;
    v31[1] = unk_19E703C20;
    v26 = CGColorCreate(v24, v31);
    [*(this + 26) setBorderColor:v26];
    if (v26)
    {
      CFRelease(v26);
    }

    if (v25)
    {
      CFRelease(v25);
    }

    v27 = objc_alloc_init(MEMORY[0x1E6979398]);
    v28 = *(this + 27);
    *(this + 27) = v27;
    if (v28)
    {

      v27 = *(this + 27);
    }

    [v27 setDelegate:{objc_msgSend(MEMORY[0x1E69E2198], "shared")}];
    [*(this + 27) setAnchorPoint:{*v21, v21[1]}];
    *components = xmmword_19E703C30;
    v33 = unk_19E703C40;
    v29 = CGColorCreate(v24, components);
    [*(this + 27) setBorderColor:v29];
    if (v29)
    {
      CFRelease(v29);
    }

    if (v24)
    {
      CFRelease(v24);
    }
  }

  return this;
}

void sub_19D5D5A14(_Unwind_Exception *a1)
{
  if (v4)
  {
    CFRelease(v4);
    if (!v3)
    {
      goto LABEL_7;
    }
  }

  else if (!v3)
  {
    goto LABEL_7;
  }

  CFRelease(v3);
LABEL_7:
  v6 = *(v1 + 216);
  *(v1 + 216) = 0;
  if (v6)
  {
  }

  v7 = *(v1 + 208);
  *(v1 + 208) = 0;
  if (v7)
  {
  }

  std::unique_ptr<WebKit::RemoteLayerTreeHost>::reset[abi:sn200100](v2, 0);
  v9 = *(v1 + 168);
  if (v9)
  {
    WTF::fastFree((v9 - 16), v8);
  }

  std::unique_ptr<WebKit::RemoteLayerTreeHost>::reset[abi:sn200100]((v1 + 80), 0);
  if (*(v1 + 72) == 1)
  {
    WebKit::DrawingAreaProxy::~DrawingAreaProxy(v1, v10);
    _Unwind_Resume(a1);
  }

  __break(0xC471u);
}

uint64_t WebKit::DrawingAreaProxy::DrawingAreaProxy(uint64_t a1, char a2, unsigned int *a3, uint64_t a4)
{
  *a1 = &unk_1F10EA5E0;
  *(a1 + 8) = 0;
  *(a1 + 16) = &unk_1F1147570;
  IdentifierInternal = WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>::generateIdentifierInternal();
  *(a1 + 32) = 0;
  *a1 = &unk_1F1114A60;
  *(a1 + 16) = &unk_1F1114BE8;
  *(a1 + 24) = IdentifierInternal;
  *(a1 + 36) = a2;
  WTF::WeakPtrFactory<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(a3 + 6, (a3 + 4));
  v9 = *(a3 + 3);
  atomic_fetch_add(v9, 1u);
  *(a1 + 40) = v9;
  atomic_fetch_add((a4 + 16), 1u);
  *(a1 + 48) = a4;
  *(a1 + 56) = WebKit::WebPageProxy::viewSize(a3);
  *(a1 + 64) = 0;
  return a1;
}

unint64_t WebKit::WebPageProxy::viewSize(WebKit::WebPageProxy *this)
{
  v1 = *(this + 7);
  if (!v1)
  {
    goto LABEL_6;
  }

  v2 = *(v1 + 8);
  if (!v2)
  {
    v1 = 0;
LABEL_6:
    v5 = 0;
    return v5 | v1;
  }

  (*(*v2 + 1712))(v2);
  v3 = (*(*v2 + 48))(v2);
  v4 = v3;
  v5 = v3 & 0xFFFFFFFF00000000;
  (*(*v2 + 1720))(v2);
  v1 = v4;
  return v5 | v1;
}

uint64_t WebKit::PageClientImpl::viewSize(id *this)
{
  WeakRetained = objc_loadWeakRetained(this + 2);
  [WeakRetained bounds];
  v5.width = v2;
  v5.height = v3;
  WebCore::IntSize::IntSize(&v6, &v5);
  if (WeakRetained)
  {
  }

  return v6;
}

void sub_19D5D5D5C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
  }

  _Unwind_Resume(exception_object);
}

uint64_t WebKit::RemoteLayerTreeHost::operator new(WebKit::RemoteLayerTreeHost *this, void *a2)
{
  if (WebKit::RemoteLayerTreeHost::s_heapRef)
  {
    return bmalloc::api::tzoneAllocateNonCompact(WebKit::RemoteLayerTreeHost::s_heapRef, a2);
  }

  else
  {
    return WebKit::RemoteLayerTreeHost::operatorNewSlow(0x48);
  }
}

uint64_t WebKit::WebPageProxy::setDrawingArea(WebKit::WebPageProxy *a1, void *a2)
{
  if (*(a1 + 41) == *a2)
  {
    result = 1692;
    __break(0xC471u);
    return result;
  }

  v27 = v2;
  v28 = v3;
  v6 = *(a1 + 43);
  *(a1 + 43) = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  v7 = *(a1 + 44);
  atomic_fetch_add(v7 + 4, 1u);
  v8 = *(a1 + 41);
  if (v8)
  {
    (**v8)(*(a1 + 41));
    WebKit::DrawingAreaProxy::stopReceivingMessages(v8, v7);
    (*(*v8 + 8))(v8);
  }

  v9 = *a2;
  *a2 = 0;
  v10 = *(a1 + 41);
  *(a1 + 41) = v9;
  if (v10)
  {
    (*(*v10 + 8))(v10);
    v9 = *(a1 + 41);
  }

  v11 = *(a1 + 185);
  ++*(v11 + 8);
  if (v9)
  {
    (**v9)(v9);
  }

  v12 = WTF::fastMalloc(0x10);
  *v12 = &unk_1F11177D8;
  v12[1] = v9;
  v26 = v12;
  WebKit::BrowsingContextGroup::forEachRemotePage(v11, a1, &v26);
  v14 = v26;
  v26 = 0;
  if (v14)
  {
    (*(**&v14 + 8))(v14);
  }

  result = WTF::RefCounted<WebKit::BrowsingContextGroup>::deref((v11 + 8), v13);
  v16 = *(a1 + 41);
  if (v16)
  {
    (**v16)(*(a1 + 41));
    WebKit::DrawingAreaProxy::startReceivingMessages(v16, v7);
    v25 = 0;
    v26 = WebKit::WebPageProxy::viewSize(a1);
    WebKit::DrawingAreaProxy::setSize(v16, &v26, &v25, v17, v18);
    v19 = *(v16 + 36);
    if (*(v16 + 36))
    {
      v20 = 0;
    }

    else
    {
      v20 = v16;
    }

    if (v20)
    {
      v21 = v20[18];
      v20[18] = v21 + 1;
      if (v19)
      {
LABEL_22:
        if (v21)
        {
          v20[18] = v21;
        }

        else
        {
          (*(*v20 + 24))(v20);
        }

        goto LABEL_24;
      }
    }

    else if (*(v16 + 36))
    {
LABEL_24:
      result = (*(*v16 + 8))(v16);
      goto LABEL_25;
    }

    (*(*v16 + 376))(&v26, v16);
    v22 = v26;
    v26 = 0;
    v23 = *(a1 + 43);
    *(a1 + 43) = v22;
    if (v23)
    {
      (*(*v23 + 8))(v23);
      v24 = v26;
      v26 = 0;
      if (v24)
      {
        (*(**&v24 + 8))(v24);
      }
    }

    v21 = *(v16 + 72) - 1;
    goto LABEL_22;
  }

LABEL_25:
  if (v7)
  {
    return WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref(v7 + 4);
  }

  return result;
}