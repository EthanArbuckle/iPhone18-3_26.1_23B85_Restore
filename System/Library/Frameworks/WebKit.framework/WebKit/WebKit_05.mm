void WebKit::WebsiteDataStore::platformSetNetworkParameters(WebKit::WebsiteDataStore *this, WebKit::WebsiteDataStoreParameters *a2)
{
  v4 = [MEMORY[0x1E695E000] standardUserDefaults];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::isSameSiteStrictEnforcementEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::isSameSiteStrictEnforcementEnabledKey(void)::key = WebKit::WebPreferencesKey::isSameSiteStrictEnforcementEnabledKey(void)::$_0::operator() const(void)::impl;
  }

  v7 = WebKit::optionalExperimentalFeatureEnabled(&WebKit::WebPreferencesKey::isSameSiteStrictEnforcementEnabledKey(void)::key, 0x100uLL);
  v9 = v7;
  if ((v7 & 0x100) == 0)
  {
    goto LABEL_148;
  }

  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::isFirstPartyWebsiteDataRemovalDisabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::isFirstPartyWebsiteDataRemovalDisabledKey(void)::key = WebKit::WebPreferencesKey::isFirstPartyWebsiteDataRemovalDisabledKey(void)::$_0::operator() const(void)::impl;
  }

  v7 = WebKit::optionalExperimentalFeatureEnabled(&WebKit::WebPreferencesKey::isFirstPartyWebsiteDataRemovalDisabledKey(void)::key, 0x100uLL);
  if ((v7 & 0x100) == 0)
  {
    goto LABEL_148;
  }

  if (v7)
  {
    v10 = 1;
    goto LABEL_28;
  }

  v11 = objc_alloc(MEMORY[0x1E696AEC0]);
  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::isFirstPartyWebsiteDataRemovalReproTestingEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::isFirstPartyWebsiteDataRemovalReproTestingEnabledKey(void)::key = WebKit::WebPreferencesKey::isFirstPartyWebsiteDataRemovalReproTestingEnabledKey(void)::$_0::operator() const(void)::impl;
  }

  WTF::String::createCFString(&cf, &WebKit::WebPreferencesKey::isFirstPartyWebsiteDataRemovalReproTestingEnabledKey(void)::key);
  v12 = [v11 initWithFormat:@"InternalDebug%@", cf];
  v13 = [v5 BOOLForKey:v12];
  if (v12)
  {
  }

  v14 = cf;
  cf = 0;
  if (v14)
  {
    CFRelease(v14);
    if (v13)
    {
      goto LABEL_17;
    }
  }

  else if (v13)
  {
LABEL_17:
    v10 = 3;
    goto LABEL_28;
  }

  v15 = objc_alloc(MEMORY[0x1E696AEC0]);
  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::isFirstPartyWebsiteDataRemovalLiveOnTestingEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::isFirstPartyWebsiteDataRemovalLiveOnTestingEnabledKey(void)::key = WebKit::WebPreferencesKey::isFirstPartyWebsiteDataRemovalLiveOnTestingEnabledKey(void)::$_0::operator() const(void)::impl;
  }

  WTF::String::createCFString(&cf, &WebKit::WebPreferencesKey::isFirstPartyWebsiteDataRemovalLiveOnTestingEnabledKey(void)::key);
  v16 = [v15 initWithFormat:@"InternalDebug%@", cf];
  v17 = [v5 BOOLForKey:v16];
  if (v16)
  {
  }

  v18 = cf;
  cf = 0;
  if (v18)
  {
    CFRelease(v18);
  }

  if (v17)
  {
    v10 = 2;
  }

  else
  {
    v10 = 0;
  }

LABEL_28:
  v19 = [v5 stringForKey:@"ITPManualPrevalentResource"];
  v20 = v19;
  if (!v19)
  {
    v21 = 0;
    goto LABEL_68;
  }

  v22 = v19;
  WTF::URL::URL(&v89);
  MEMORY[0x19EB02040](v88, v20);
  MEMORY[0x19EB01E00](&cf, &v89, v88, 0);
  v24 = v88[0];
  v88[0] = 0;
  if (v24 && atomic_fetch_add_explicit(v24, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v24, v23);
  }

  v25 = v89;
  v89 = 0;
  if (v25 && atomic_fetch_add_explicit(v25, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v25, v23);
  }

  if (v93)
  {
    goto LABEL_63;
  }

  WTF::URL::URL(v88);
  Length = CFStringGetLength(v20);
  if (Length < 0)
  {
    goto LABEL_150;
  }

  v27 = Length + 7;
  if (__OFADD__(Length, 7))
  {
    goto LABEL_150;
  }

  v28 = v27;
  if (!CFStringGetCStringPtr(v20, 0x201u))
  {
    if (v27 <= 0x7FFFFFEF)
    {
      v7 = WTF::tryFastCompactMalloc((2 * v27 + 20));
      v29 = v95[0];
      if (v95[0])
      {
        *v95[0] = 2;
        *(v29 + 1) = v27;
        *(v29 + 1) = v29 + 20;
        *(v29 + 4) = 0;
        v32 = "http://";
        for (i = 20; i != 34; i += 2)
        {
          v34 = *v32++;
          *(v29 + i) = v34;
        }

        if (v27 <= 6)
        {
          goto LABEL_148;
        }

        v96.length = CFStringGetLength(v20);
        v96.location = 0;
        CFStringGetCharacters(v20, v96, v29 + 17);
        goto LABEL_52;
      }
    }

LABEL_150:
    v87 = 0;
    __break(0xC471u);
LABEL_151:
    JUMPOUT(0x19D5ACFC4);
  }

  WTF::tryFastCompactMalloc((v27 + 20));
  v29 = v95[0];
  if (!v95[0])
  {
    goto LABEL_150;
  }

  *v95[0] = 2;
  *(v29 + 1) = v27;
  *(v29 + 1) = v29 + 20;
  *(v29 + 2) = 0x7074746800000004;
  *(v29 + 23) = 791624304;
  CStringPtr = CFStringGetCStringPtr(v20, 0x201u);
  if (CStringPtr)
  {
    v31 = CFStringGetLength(v20);
    if (v28 - 7 < v31)
    {
      __break(0xC471u);
      goto LABEL_151;
    }
  }

  else
  {
    v31 = 0;
  }

  memcpy(v29 + 27, CStringPtr, v31);
LABEL_52:
  v87 = v29;
  MEMORY[0x19EB01E00](&v89, v88, &v87, 0);
  WTF::URL::operator=(&cf, &v89);
  v36 = v89;
  v89 = 0;
  if (v36 && atomic_fetch_add_explicit(v36, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v36, v35);
  }

  v37 = v87;
  v87 = 0;
  if (v37 && atomic_fetch_add_explicit(v37, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v37, v35);
  }

  v38 = v88[0];
  v88[0] = 0;
  if (v38 && atomic_fetch_add_explicit(v38, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v38, v35);
  }

  if ((v93 & 1) == 0)
  {
    v21 = 0;
    goto LABEL_64;
  }

LABEL_63:
  WebCore::RegistrableDomain::RegistrableDomain(&v89, &cf);
  v21 = v89;
LABEL_64:
  v39 = cf;
  cf = 0;
  if (v39 && atomic_fetch_add_explicit(v39, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v39, v35);
  }

LABEL_68:
  v40 = [v5 BOOLForKey:@"WebKitLogCookieInformation"];
  v41 = v40;
  v42 = *(this + 28);
  v43 = *(v42 + 344);
  v44 = v42;
  if (v43)
  {
    atomic_fetch_add_explicit(v43, 2u, memory_order_relaxed);
    v44 = *(this + 28);
  }

  cf = v43;
  v45 = *(v42 + 368);
  v93 = *(v42 + 352);
  v94 = v45;
  v46 = *(v44 + 384);
  if (v46)
  {
    atomic_fetch_add_explicit(v46, 2u, memory_order_relaxed);
  }

  v89 = v46;
  v47 = (v44 + 392);
  v48 = v47[1];
  v90 = *v47;
  v91 = v48;
  isMobileSafari = WTF::IOSApplication::isMobileSafari(v40);
  v50 = isMobileSafari;
  v51 = isMobileSafari | WTF::IOSApplication::isMiniBrowser(isMobileSafari);
  if (v93 & 1) == 0 && (v51)
  {
    MEMORY[0x19EB02040](v95, [v5 stringForKey:@"WebKit2HTTPProxy"]);
    MEMORY[0x19EB01DD0](v88, v95, 0);
    WTF::URL::operator=(&cf, v88);
    v53 = v88[0];
    v88[0] = 0;
    if (v53 && atomic_fetch_add_explicit(v53, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v53, v52);
    }

    v54 = v95[0];
    v95[0] = 0;
    if (v54 && atomic_fetch_add_explicit(v54, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v54, v52);
    }
  }

  if ((((v90 & 1) == 0) & v51) == 1)
  {
    MEMORY[0x19EB02040](v95, [v5 stringForKey:@"WebKit2HTTPSProxy"]);
    MEMORY[0x19EB01DD0](v88, v95, 0);
    WTF::URL::operator=(&v89, v88);
    v56 = v88[0];
    v88[0] = 0;
    if (v56 && atomic_fetch_add_explicit(v56, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v56, v55);
    }

    v57 = v95[0];
    v95[0] = 0;
    if (v57 && atomic_fetch_add_explicit(v57, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v57, v55);
    }
  }

  v58 = WebKit::WebsiteDataStore::resolvedDirectories(this);
  v95[0] = 0;
  v59 = *(v58 + 2);
  if (v59)
  {
    atomic_fetch_add_explicit(v59, 2u, memory_order_relaxed);
  }

  v87 = v59;
  WebKit::WebsiteDataStore::createHandleFromResolvedPathIfPossible(this, &v87, v95, 1);
  WTF::RetainPtr<void const*>::operator=(a2 + 10, *(*(this + 28) + 520));
  v61 = *(*(this + 28) + 312);
  if (v61)
  {
    atomic_fetch_add_explicit(v61, 2u, memory_order_relaxed);
  }

  v62 = *(a2 + 11);
  *(a2 + 11) = v61;
  if (v62 && atomic_fetch_add_explicit(v62, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v62, v60);
  }

  v63 = *(*(this + 28) + 320);
  if (v63)
  {
    atomic_fetch_add_explicit(v63, 2u, memory_order_relaxed);
  }

  v64 = *(a2 + 12);
  *(a2 + 12) = v63;
  if (v64 && atomic_fetch_add_explicit(v64, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v64, v60);
  }

  *(a2 + 104) = v41;
  WTF::URL::operator=(a2 + 112, &cf);
  WTF::URL::operator=(a2 + 152, &v89);
  v87 = 0;
  v66 = *(a2 + 24);
  *(a2 + 24) = v59;
  if (v66 && atomic_fetch_add_explicit(v66, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v66, v65);
  }

  v67 = v95[0];
  v95[0] = 0;
  std::unique_ptr<WebKit::SandboxExtensionImpl>::reset[abi:sn200100](a2 + 25, v67);
  *(a2 + 618) = v50;
  *(a2 + 621) = v9 & 1;
  *(a2 + 622) = v10;
  WebCore::RegistrableDomain::RegistrableDomain(v88, (*(this + 28) + 448));
  v69 = v88[0];
  v88[0] = 0;
  v70 = *(a2 + 78);
  *(a2 + 78) = v69;
  if (v70)
  {
    if (atomic_fetch_add_explicit(v70, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v70, v68);
    }

    v71 = v88[0];
    v88[0] = 0;
    if (v71 && atomic_fetch_add_explicit(v71, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v71, v68);
    }
  }

  v72 = *(a2 + 82);
  *(a2 + 82) = v21;
  if (v72 && atomic_fetch_add_explicit(v72, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v72, v68);
  }

  v73 = *(v58 + 4);
  if (v73)
  {
    atomic_fetch_add_explicit(v73, 2u, memory_order_relaxed);
  }

  v86 = v73;
  WTF::FileSystemImpl::parentPath(v88, &v86, v68);
  WebKit::WebsiteDataStore::createHandleFromResolvedPathIfPossible(this, v88, a2 + 2, 1);
  v75 = v88[0];
  v88[0] = 0;
  if (v75 && atomic_fetch_add_explicit(v75, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v75, v74);
  }

  if (*(this + 81))
  {
    goto LABEL_130;
  }

  WTF::String::utf8();
  if (v85)
  {
    v76 = v85 + 16;
  }

  else
  {
    v76 = 0;
  }

  if (v85)
  {
    v77 = *(v85 + 1);
  }

  else
  {
    v77 = 0;
  }

  v78 = CFURLCreateFromFileSystemRepresentation(*MEMORY[0x1E695E480], v76, v77, 1u);
  v79 = CFHTTPCookieStorageCreateFromFile();
  WebKit::identifyingDataFromCookieStorage(v88);
  v80 = *(this + 39);
  if (v80)
  {
    *(this + 39) = 0;
    *(this + 80) = 0;
    WTF::fastFree(v80, v8);
  }

  *(this + 39) = v88[0];
  *(this + 40) = v88[1];
  if (v79)
  {
    CFRelease(v79);
    if (!v78)
    {
      goto LABEL_127;
    }
  }

  else if (!v78)
  {
    goto LABEL_127;
  }

  CFRelease(v78);
LABEL_127:
  v7 = v85;
  if (v85)
  {
    if (*v85 == 1)
    {
      goto LABEL_149;
    }

    --*v85;
  }

  while (1)
  {
LABEL_130:
    WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::operator=(a2, this + 312);
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::privateClickMeasurementDebugModeEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::privateClickMeasurementDebugModeEnabledKey(void)::key = WebKit::WebPreferencesKey::privateClickMeasurementDebugModeEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    v7 = WebKit::optionalExperimentalFeatureEnabled(&WebKit::WebPreferencesKey::privateClickMeasurementDebugModeEnabledKey(void)::key, 0x100uLL);
    if ((v7 & 0x100) != 0)
    {
      break;
    }

LABEL_148:
    __break(1u);
LABEL_149:
    WTF::fastFree(v7, v8);
  }

  *(a2 + 392) = v7 & 1;
  v81 = v86;
  v86 = 0;
  if (v81 && atomic_fetch_add_explicit(v81, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v81, v8);
  }

  WebKit::SandboxExtensionHandle::~SandboxExtensionHandle(v95);
  v83 = v89;
  v89 = 0;
  if (v83 && atomic_fetch_add_explicit(v83, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v83, v82);
  }

  v84 = cf;
  cf = 0;
  if (!v84 || atomic_fetch_add_explicit(v84, 0xFFFFFFFE, memory_order_relaxed) != 2)
  {
    if (!v5)
    {
      return;
    }

    goto LABEL_142;
  }

  WTF::StringImpl::destroy(v84, v82);
  if (v5)
  {
LABEL_142:
  }
}

void sub_19D5AD6F0(_Unwind_Exception *a1, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF *a11, WTF::StringImpl *a12, uint64_t a13, WTF::StringImpl *a14, int a15, uint64_t a16, uint64_t a17, uint64_t a18, WTF::StringImpl *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, WTF::StringImpl *cf)
{
  if (a14)
  {
    WTF::fastFree(a14, a2);
    if (!v26)
    {
LABEL_3:
      if (!v25)
      {
        goto LABEL_8;
      }

LABEL_7:
      CFRelease(v25);
LABEL_8:
      if (a11)
      {
        if (*a11 == 1)
        {
          WTF::fastFree(a11, a2);
        }

        else
        {
          --*a11;
        }
      }

      if (a12 && atomic_fetch_add_explicit(a12, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(a12, a2);
      }

      WebKit::SandboxExtensionHandle::~SandboxExtensionHandle((v27 - 96));
      if (a19 && atomic_fetch_add_explicit(a19, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(a19, v29);
      }

      if (cf && atomic_fetch_add_explicit(cf, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(cf, v29);
      }

      if (v24)
      {
      }

      _Unwind_Resume(a1);
    }
  }

  else if (!v26)
  {
    goto LABEL_3;
  }

  CFRelease(v26);
  if (!v25)
  {
    goto LABEL_8;
  }

  goto LABEL_7;
}

WebCore::RegistrableDomain *WebCore::RegistrableDomain::RegistrableDomain(WebCore::RegistrableDomain *this, const WTF::URL *a2)
{
  WebCore::RegistrableDomain::registrableDomainFromHost(a2, v6);
  if (v6[0] && *(v6[0] + 4))
  {
    *this = v6[0];
  }

  else
  {
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    v5 = v6[0];
    *this = v6[1];
    v6[0] = 0;
    if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v5, v4);
    }
  }

  return this;
}

void sub_19D5ADA90(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9)
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

uint64_t *WebCore::RegistrableDomain::registrableDomainFromHost@<X0>(WebCore::RegistrableDomain *this@<X0>, uint64_t *a2@<X8>)
{
  WebCore::PublicSuffixStore::singleton(this);
  result = WebCore::PublicSuffixStore::topPrivatelyControlledDomain();
  if (*this && *(*this + 4))
  {
    if (!*a2 || !*(*a2 + 4))
    {
      return WTF::String::operator=(a2, this);
    }
  }

  else
  {
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    result = *a2;
    *a2 = v7;
    if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v6);
    }
  }

  return result;
}

void sub_19D5ADB8C(_Unwind_Exception *exception_object, WTF::StringImpl *a2)
{
  v4 = *v2;
  *v2 = 0;
  if (v4)
  {
    if (atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v4, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

void WebKit::identifyingDataFromCookieStorage(uint64_t a1@<X8>)
{
  IdentifyingData = CFHTTPCookieStorageCreateIdentifyingData();
  BytePtr = CFDataGetBytePtr(IdentifyingData);
  Length = CFDataGetLength(IdentifyingData);
  if (Length < 0)
  {
    __break(0xC471u);
  }

  else
  {
    WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector<unsigned char const,18446744073709551615ul>(a1, BytePtr, Length);
    if (IdentifyingData)
    {

      CFRelease(IdentifyingData);
    }
  }
}

void sub_19D5ADC54(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    CFRelease(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector<unsigned char const,18446744073709551615ul>(uint64_t result, char *a2, WTF *this)
{
  v3 = this;
  v4 = result;
  *result = 0;
  *(result + 8) = 0;
  *(result + 12) = this;
  if (!this)
  {
    return v4;
  }

  if (!(this >> 32))
  {
    v6 = WTF::fastMalloc(this);
    *(v4 + 8) = v3;
    *v4 = v6;
    do
    {
      v7 = *a2++;
      *v6++ = v7;
      v3 = (v3 - 1);
    }

    while (v3);
    return v4;
  }

  __break(0xC471u);
  return result;
}

WTF::RefCountedBase *WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::operator=(WTF::RefCountedBase *a1, uint64_t a2)
{
  if (a2 == a1)
  {
    return a1;
  }

  v3 = WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::size(a1);
  if (v3 <= WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::size(a2))
  {
    v5 = WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::size(a2);
    if (v5 > WTF::Vector<WTF::Ref<WebKit::AuthenticatorTransportService,WTF::RawPtrTraits<WebKit::AuthenticatorTransportService>,WTF::DefaultRefDerefTraits<WebKit::AuthenticatorTransportService>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::capacity(a1))
    {
      WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::clear(a1);
      v16 = WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::size(a2);
      WTF::Vector<WebCore::AuthenticatorTransport,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v16);
    }
  }

  else
  {
    v4 = WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::size(a2);
    WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrink(a1, v4);
  }

  WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::size(a2);
  WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::asanSetInitialBufferSizeTo();
  v6 = WTF::Vector<WTF::Ref<WebKit::AuthenticatorTransportService,WTF::RawPtrTraits<WebKit::AuthenticatorTransportService>,WTF::DefaultRefDerefTraits<WebKit::AuthenticatorTransportService>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::begin(a2);
  v7 = WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::size(a1);
  v8 = WTF::Vector<WTF::Ref<WebKit::AuthenticatorTransportService,WTF::RawPtrTraits<WebKit::AuthenticatorTransportService>,WTF::DefaultRefDerefTraits<WebKit::AuthenticatorTransportService>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::begin(a1);
  std::copy_n[abi:sn200100]<WebCore::AuthenticatorTransport const*,unsigned long,WebCore::AuthenticatorTransport*,0>(v6, v7, v8);
  v9 = WTF::Vector<WTF::Ref<WebKit::AuthenticatorTransportService,WTF::RawPtrTraits<WebKit::AuthenticatorTransportService>,WTF::DefaultRefDerefTraits<WebKit::AuthenticatorTransportService>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::begin(a2);
  v10 = (v9 + WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::size(a1));
  v11 = WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::end(a2);
  v12 = WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::end(a1);
  WTF::VectorTypeOperations<WTF::Ref<WebKit::AuthenticatorTransportService,WTF::RawPtrTraits<WebKit::AuthenticatorTransportService>,WTF::DefaultRefDerefTraits<WebKit::AuthenticatorTransportService>>>::move(v10, v11, v12);
  *(a1 + 3) = WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::size(a2);
  return a1;
}

char *___ZN3IPCL32shouldLogIncomingMessageHandlingEv_block_invoke()
{
  result = getenv("WEBKIT_LOG_INCOMING_MESSAGES");
  byte_1ED643233 = result != 0;
  return result;
}

void WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity(WTF::RefCountedBase *a1, void *a2)
{
  if (a2 < WTF::Vector<WTF::Ref<WebKit::AuthenticatorTransportService,WTF::RawPtrTraits<WebKit::AuthenticatorTransportService>,WTF::DefaultRefDerefTraits<WebKit::AuthenticatorTransportService>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::capacity(a1))
  {
    if (a2 < WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::size(a1))
    {
      WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrink(a1, a2);
    }

    WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::asanSetBufferSizeToFullCapacity(a1);
    v5 = WTF::Vector<WTF::Ref<WebKit::AuthenticatorTransportService,WTF::RawPtrTraits<WebKit::AuthenticatorTransportService>,WTF::DefaultRefDerefTraits<WebKit::AuthenticatorTransportService>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::begin(a1);
    if (a2)
    {
      if (WTF::VectorBufferBase<WTF::Ref<WebKit::AuthenticatorTransportService,WTF::RawPtrTraits<WebKit::AuthenticatorTransportService>,WTF::DefaultRefDerefTraits<WebKit::AuthenticatorTransportService>>,WTF::FastMalloc>::shouldReallocateBuffer(a1, a2))
      {
        WTF::VectorBufferBase<WebCore::AuthenticatorTransport,WTF::FastMalloc>::reallocateBuffer(a1, a2);
        WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::size(a1);
        WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::asanSetInitialBufferSizeTo();
        return;
      }

      v4 = WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::end(a1);
      WTF::VectorBufferBase<unsigned char,WTF::FastMalloc>::allocateBuffer<(WTF::FailureAction)0>(a1, a2);
      if (WTF::Vector<WTF::Ref<WebKit::AuthenticatorTransportService,WTF::RawPtrTraits<WebKit::AuthenticatorTransportService>,WTF::DefaultRefDerefTraits<WebKit::AuthenticatorTransportService>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::begin(a1) != v5)
      {
        v3 = WTF::Vector<WTF::Ref<WebKit::AuthenticatorTransportService,WTF::RawPtrTraits<WebKit::AuthenticatorTransportService>,WTF::DefaultRefDerefTraits<WebKit::AuthenticatorTransportService>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::begin(a1);
        WTF::VectorTypeOperations<WTF::Ref<WebKit::AuthenticatorTransportService,WTF::RawPtrTraits<WebKit::AuthenticatorTransportService>,WTF::DefaultRefDerefTraits<WebKit::AuthenticatorTransportService>>>::move(v5, v4, v3);
      }
    }

    WTF::VectorBufferBase<unsigned char,WTF::FastMalloc>::deallocateBuffer(a1, v5);
    WTF::RefCountedBase::applyRefDerefThreadingCheck(a1);
    WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::size(a1);
    WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::asanSetInitialBufferSizeTo();
  }
}

uint64_t WTF::Vector<WebCore::AuthenticatorTransport,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(uint64_t a1, WTF::FastMalloc *a2)
{
  if (a2 > WTF::Vector<WTF::Ref<WebKit::AuthenticatorTransportService,WTF::RawPtrTraits<WebKit::AuthenticatorTransportService>,WTF::DefaultRefDerefTraits<WebKit::AuthenticatorTransportService>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::capacity(a1))
  {
    v6 = WTF::Vector<WTF::Ref<WebKit::AuthenticatorTransportService,WTF::RawPtrTraits<WebKit::AuthenticatorTransportService>,WTF::DefaultRefDerefTraits<WebKit::AuthenticatorTransportService>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::begin(a1);
    v5 = WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::end(a1);
    WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::asanSetBufferSizeToFullCapacity(a1);
    WTF::VectorBufferBase<unsigned char,WTF::FastMalloc>::allocateBuffer<(WTF::FailureAction)0>(a1, a2);
    WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::size(a1);
    WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::asanSetInitialBufferSizeTo();
    v3 = WTF::Vector<WTF::Ref<WebKit::AuthenticatorTransportService,WTF::RawPtrTraits<WebKit::AuthenticatorTransportService>,WTF::DefaultRefDerefTraits<WebKit::AuthenticatorTransportService>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::begin(a1);
    WTF::VectorTypeOperations<WTF::Ref<WebKit::AuthenticatorTransportService,WTF::RawPtrTraits<WebKit::AuthenticatorTransportService>,WTF::DefaultRefDerefTraits<WebKit::AuthenticatorTransportService>>>::move(v6, v5, v3);
    WTF::VectorBufferBase<unsigned char,WTF::FastMalloc>::deallocateBuffer(a1, v6);
  }

  return 1;
}

uint64_t WTF::VectorBufferBase<unsigned char,WTF::FastMalloc>::allocateBuffer<(WTF::FailureAction)0>(uint64_t a1, WTF::FastMalloc *a2)
{
  if (!WTF::isValidCapacityForVector<unsigned char>(a2))
  {
    __break(0xC471u);
    JUMPOUT(0x19D5AE244);
  }

  v3 = WTF::FastMalloc::malloc(a2);
  *(a1 + 8) = a2;
  *a1 = v3;
  return 1;
}

uint64_t WTF::VectorBufferBase<unsigned char,WTF::FastMalloc>::deallocateBuffer(uint64_t result, WTF::FastMalloc *a2)
{
  if (a2)
  {
    if (*result == a2)
    {
      *result = 0;
      *(result + 8) = 0;
    }

    return WTF::FastMalloc::free(a2, a2);
  }

  return result;
}

uint64_t WTF::Detail::CallableWrapper<IPC::Connection::sendMessageImpl(WTF::UniqueRef<IPC::Encoder> &&,WTF::OptionSet<IPC::SendOption>,std::optional<WTF::Thread::QOS>)::$_0,void>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F1147408;
  *(this + 1) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t std::__copy_move_unwrap_iters[abi:sn200100]<std::__copy_impl,WebCore::AuthenticatorTransport const*,WebCore::AuthenticatorTransport const*,WebCore::AuthenticatorTransport*,0>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v20 = a1;
  v19 = a2;
  v18 = a3;
  v3 = std::__unwrap_range[abi:sn200100]<WebCore::PublicKeyCredentialDescriptor const*,WebCore::PublicKeyCredentialDescriptor const*>(a1, a2);
  v17 = v4;
  v16 = v3;
  v5 = v3;
  v6 = v4;
  std::__value_type<cbor::CBORValue,cbor::CBORValue>::__get_value[abi:sn200100]();
  v8 = std::__copy_impl::operator()[abi:sn200100]<WebCore::AuthenticatorTransport const,WebCore::AuthenticatorTransport,0>(&v13, v5, v6, v7);
  v15 = v9;
  v14 = v8;
  v12 = std::__rewrap_range[abi:sn200100]<WebCore::AuthenticatorTransport const*,WebCore::AuthenticatorTransport const*,WebCore::AuthenticatorTransport const*>(v20, v8);
  v11 = std::__rewrap_iter[abi:sn200100]<WebCore::AuthenticatorTransport *,WebCore::AuthenticatorTransport *,std::__unwrap_iter_impl<WebCore::AuthenticatorTransport *,true>>(v18, v15);
  return std::make_pair[abi:sn200100]<WebCore::PublicKeyCredentialDescriptor const*,WebCore::PublicKeyCredentialDescriptor*>(&v12, &v11);
}

uint64_t std::__unwrap_range_impl<WebCore::PublicKeyCredentialDescriptor const*,WebCore::PublicKeyCredentialDescriptor const*>::__unwrap[abi:sn200100](uint64_t a1, uint64_t a2)
{
  v6[2] = a1;
  v6[1] = a2;
  std::__value_type<cbor::CBORValue,cbor::CBORValue>::__get_value[abi:sn200100]();
  v6[0] = v2;
  std::__value_type<cbor::CBORValue,cbor::CBORValue>::__get_value[abi:sn200100]();
  v5 = v3;
  std::pair<WebCore::PublicKeyCredentialDescriptor const*,WebCore::PublicKeyCredentialDescriptor const*>::pair[abi:sn200100]<WebCore::PublicKeyCredentialDescriptor const*,WebCore::PublicKeyCredentialDescriptor const*,0>(&v7, v6, &v5);
  return v7;
}

void IPC::Connection::processIncomingMessage(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = **a2;
  v6 = *(*a2 + 50);
  if (!v5)
  {
    goto LABEL_31;
  }

  if (v6 != 3199 && v6 != 3194)
  {
    if (v6 >= 0x107F)
    {
      v7 = 4223;
    }

    else
    {
      v7 = v6;
    }

    v8 = LOBYTE((&IPC::Detail::messageDescriptions)[3 * v7 + 2]);
    if (v8)
    {
      if (v8 != 255)
      {
LABEL_9:
        v9 = 0;
        v10 = (a1 + 218);
        atomic_compare_exchange_strong_explicit((a1 + 218), &v9, 1u, memory_order_acquire, memory_order_acquire);
        if (v9)
        {
          MEMORY[0x19EB01E30](a1 + 218);
        }

        os_unfair_lock_lock((a1 + 100));
        if (!*(a1 + 16))
        {
          goto LABEL_25;
        }

        v11 = *a2;
        v12 = *(*a2 + 50);
        if (v12 >= 0x107F)
        {
          v12 = 4223;
        }

        if (LOBYTE((&IPC::Detail::messageDescriptions)[3 * v12 + 2]) != 214)
        {
          goto LABEL_15;
        }

        v21 = *(v11 + 7);
        if ((v21 - 1) < 0xFFFFFFFFFFFFFFFELL)
        {
          IPC::Connection::takeAsyncReplyHandlerWithDispatcherWithLockHeld(a1, v21, &v73);
          v22 = v73;
          if (v73)
          {
            v60 = *a2;
            *a2 = 0;
            v72 = v60;
            v73 = 0;
            (*(*v22 + 16))(v22, a1, &v72);
            (*(*v22 + 8))(v22);
            v61 = v72;
            v72 = 0;
            if (v61)
            {
              IPC::Decoder::~Decoder(v61);
              bmalloc::api::tzoneFree(v68, v69);
            }

            v62 = v73;
            v73 = 0;
            if (v62)
            {
              (*(*v62 + 8))(v62);
            }

            goto LABEL_25;
          }

          v11 = *a2;
LABEL_15:
          v13 = IPC::MessageReceiveQueueMap::get((a1 + 136), v11);
          if (v13)
          {
            (*(*v13 + 16))(v13, a1, a2);
            goto LABEL_25;
          }

          if (*(*a2 + 50) >= 0xF8Fu)
          {
            v49 = 0;
            atomic_compare_exchange_strong_explicit((a1 + 256), &v49, 1u, memory_order_acquire, memory_order_acquire);
            if (v49)
            {
              MEMORY[0x19EB01E30](a1 + 256);
            }

            v50 = *(a1 + 264);
            v51 = WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::Ref<WebKit::SimulatedInputSource,WTF::RawPtrTraits<WebKit::SimulatedInputSource>,WTF::DefaultRefDerefTraits<WebKit::SimulatedInputSource>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::Ref<WebKit::SimulatedInputSource,WTF::RawPtrTraits<WebKit::SimulatedInputSource>,WTF::DefaultRefDerefTraits<WebKit::SimulatedInputSource>>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::Ref<WebKit::SimulatedInputSource,WTF::RawPtrTraits<WebKit::SimulatedInputSource>,WTF::DefaultRefDerefTraits<WebKit::SimulatedInputSource>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WebKit::SimulatedInputSource,WTF::RawPtrTraits<WebKit::SimulatedInputSource>,WTF::DefaultRefDerefTraits<WebKit::SimulatedInputSource>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::begin(v50);
            v53 = v51;
            v54 = v52;
            if (v50)
            {
              v55 = &v50[2 * *(v50 - 1)];
            }

            else
            {
              v55 = 0;
            }

            if (v55 != v51)
            {
              do
              {
                v56 = *(a1 + 272);
                if (v56)
                {
                  (*(*v56 + 32))(*(a1 + 272));
                }

                (*(*v56 + 48))(v56, v53 + 1);
                (*(*v56 + 40))(v56);
                v53 += 2;
                if (v53 == v54)
                {
                  v57 = v55;
                }

                else
                {
                  v57 = v55;
                  do
                  {
                    if ((*v53 + 1) > 1)
                    {
                      break;
                    }

                    v53 += 2;
                  }

                  while (v53 != v54);
                }
              }

              while (v53 != v57);
              v50 = *(a1 + 264);
            }

            if (v50)
            {
              *(a1 + 264) = 0;
              WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::MessageBatchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::MessageBatchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::CompletionHandler<void ()(void)>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::MessageBatchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::CompletionHandler<void ()(void)>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::MessageBatchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::MessageBatchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::CompletionHandler<void ()(void)>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::MessageBatchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::MessageBatchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::CompletionHandler<void ()(void)>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::MessageBatchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::deallocateTable(v50, v52);
            }

            v58 = 1;
            atomic_compare_exchange_strong_explicit((a1 + 256), &v58, 0, memory_order_release, memory_order_relaxed);
            if (v58 != 1)
            {
              WTF::Lock::unlockSlow((a1 + 256));
            }
          }

          v14 = *(a1 + 224);
          if (!v14)
          {
            v15 = *a2;
LABEL_19:
            if ((v15[6] & 3) == 2 && ((v43 = *(v15 + 25), v43 >= 0x107F) ? (v59 = 4223) : (v59 = *(v15 + 25)), (*(&IPC::Detail::messageDescriptions + 24 * v59 + 17) & 2) == 0) || (v15[6] & 1) != 0 && ((v43 = *(v15 + 25), v43 >= 0x107F) ? (v44 = 4223) : (v44 = *(v15 + 25)), (*(&IPC::Detail::messageDescriptions + 24 * v44 + 17) & 1) == 0 && (*(v15 + 49) & 1) == 0))
            {
              IPC::Connection::dispatchDidReceiveInvalidMessage(a1, v43, (v15 + 9));
              goto LABEL_25;
            }

            if (IPC::Connection::SyncMessageState::processIncomingMessage(*(a1 + 16), a1, a2))
            {
              goto LABEL_25;
            }

            v16 = *a2;
            *a2 = 0;
            v70 = v16;
            IPC::Connection::enqueueIncomingMessage(a1, &v70);
            v17 = v70;
            v70 = 0;
            if (!v17)
            {
              goto LABEL_25;
            }

LABEL_23:
            IPC::Decoder::~Decoder(v17);
            bmalloc::api::tzoneFree(v18, v19);
            goto LABEL_25;
          }

          v15 = *a2;
          if (*(v14 + 3))
          {
            goto LABEL_19;
          }

          v45 = *(v15 + 25);
          if (*v14 == v45 && *(v14 + 1) == v15[7])
          {
            *a2 = 0;
            std::unique_ptr<IPC::Decoder>::reset[abi:sn200100](v14 + 3, v15);
LABEL_67:
            WTF::Condition::notifyOne((a1 + 217));
            goto LABEL_25;
          }

          v46 = *(v14 + 4);
          if (v45 >= 0xF8F && (*(v14 + 4) & 2) != 0)
          {
            v67 = IPC::Connection::SyncMessageState::processIncomingMessage(*(a1 + 16), a1, a2);
            if (v67)
            {
              goto LABEL_67;
            }

            v14 = *(a1 + 224);
            v46 = *(v14 + 4);
            v15 = *a2;
          }

          if ((v46 & 1) == 0 || *(v15 + 25) < 0xF8Fu)
          {
            goto LABEL_19;
          }

          *(v14 + 20) = 1;
          WTF::Condition::notifyOne((a1 + 217));
          v48 = *a2;
          *a2 = 0;
          v71 = v48;
          IPC::Connection::enqueueIncomingMessage(a1, &v71);
          v17 = v71;
          v71 = 0;
          if (v17)
          {
            goto LABEL_23;
          }

LABEL_25:
          os_unfair_lock_unlock((a1 + 100));
          v20 = 1;
          atomic_compare_exchange_strong_explicit(v10, &v20, 0, memory_order_release, memory_order_relaxed);
          if (v20 != 1)
          {
            WTF::Lock::unlockSlow((a1 + 218));
          }

          return;
        }

        __break(0xC471u);
LABEL_119:
        JUMPOUT(0x19D5AEDA4);
      }
    }

    else if (*(v4 + 7))
    {
      goto LABEL_9;
    }

LABEL_31:

    IPC::Connection::dispatchDidReceiveInvalidMessage(a1, v6, v4 + 72);
    return;
  }

  v23 = 0;
  *a2 = 0;
  v24 = (a1 + 232);
  atomic_compare_exchange_strong_explicit((a1 + 232), &v23, 1u, memory_order_acquire, memory_order_acquire);
  if (v23)
  {
    MEMORY[0x19EB01E30](a1 + 232);
  }

  v25 = *(a1 + 252);
  v26 = v25 + 1;
  v27 = (32 * v25) | 0x18;
  do
  {
    if (v27 == 24)
    {
      goto LABEL_51;
    }

    v28 = *(a1 + 240);
    v29 = *(v28 + v27 - 56);
    if (!v29)
    {
      __break(0xC471u);
      goto LABEL_118;
    }

    --v26;
    v27 -= 32;
  }

  while (v29 != *(v4 + 7));
  std::unique_ptr<IPC::Decoder>::reset[abi:sn200100]((v28 + v27 - 16), v4);
  v30 = 0;
  v31 = *(a1 + 16);
  v32 = (v31 + 3);
  atomic_compare_exchange_strong_explicit((v31 + 3), &v30, 1u, memory_order_acquire, memory_order_acquire);
  if (v30)
  {
    MEMORY[0x19EB01E30](v31 + 3);
  }

  v33 = *(v31 + 56);
  if (*(v31 + 48) != v33)
  {
    v63 = *(v31 + 72);
    if (v33)
    {
      v64 = v33 - 1;
      if (v64 < v63)
      {
        v65 = *(v31 + 64) + 24 * v64;
LABEL_109:
        v66 = *(v65 + 16);
        v36 = v66 & 0xFFFFFFFFFFFFFF00;
        v34 = v66;
        v35 = 1;
        goto LABEL_44;
      }
    }

    else if (v63)
    {
      v65 = *(v31 + 64) + 24 * v63 - 24;
      goto LABEL_109;
    }

LABEL_118:
    __break(1u);
    goto LABEL_119;
  }

  v34 = 0;
  v35 = 0;
  v36 = 0;
LABEL_44:
  v37 = 1;
  atomic_compare_exchange_strong_explicit(v32, &v37, 0, memory_order_release, memory_order_relaxed);
  if (v37 != 1)
  {
    WTF::Lock::unlockSlow(v32);
  }

  v38 = (v28 + v27);
  *(v38 - 1) = v36 | v34;
  *v38 = v35;
  if (*(a1 + 252) == v26)
  {
    os_unfair_lock_lock((a1 + 100));
    v39 = *(a1 + 16);
    if (v39)
    {
      WTF::BinarySemaphore::signal(v39);
    }

    os_unfair_lock_unlock((a1 + 100));
  }

  v4 = 0;
LABEL_51:
  v40 = 1;
  atomic_compare_exchange_strong_explicit(v24, &v40, 0, memory_order_release, memory_order_relaxed);
  if (v40 != 1)
  {
    WTF::Lock::unlockSlow((a1 + 232));
  }

  if (v4)
  {
    IPC::Decoder::~Decoder(v4);

    bmalloc::api::tzoneFree(v41, v42);
  }
}

uint64_t IPC::MessageReceiveQueueMap::get(IPC::MessageReceiveQueueMap *this, const IPC::Decoder *a2)
{
  v4 = *(a2 + 25);
  if (v4 >= 0x107F)
  {
    v4 = 4223;
  }

  v12 = (&IPC::Detail::messageDescriptions)[3 * v4 + 2];
  v5 = WTF::HashTable<unsigned char,WTF::KeyValuePair<unsigned char,mpark::variant<IPC::MessageReceiveQueue *,std::unique_ptr<IPC::MessageReceiveQueue>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<unsigned char,mpark::variant<IPC::MessageReceiveQueue *,std::unique_ptr<IPC::MessageReceiveQueue>>>>,WTF::DefaultHash<unsigned char>,WTF::HashMap<unsigned char,mpark::variant<IPC::MessageReceiveQueue *,std::unique_ptr<IPC::MessageReceiveQueue>>,WTF::DefaultHash<unsigned char>,WTF::HashTraits<unsigned char>,WTF::HashTraits<mpark::variant<IPC::MessageReceiveQueue *,std::unique_ptr<IPC::MessageReceiveQueue>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<unsigned char>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<unsigned char,mpark::variant<IPC::MessageReceiveQueue *,std::unique_ptr<IPC::MessageReceiveQueue>>,WTF::DefaultHash<unsigned char>,WTF::HashTraits<unsigned char>,WTF::HashTraits<mpark::variant<IPC::MessageReceiveQueue *,std::unique_ptr<IPC::MessageReceiveQueue>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<unsigned char>>,(WTF::ShouldValidateKey)1,unsigned char>(this + 1, &v12);
  v6 = *(this + 1);
  if (v6)
  {
    v6 += 24 * *(v6 - 1);
  }

  if (v6 != v5)
  {
    if (v5[16] != 255)
    {
      v10 = (v5 + 8);
      return *v10;
    }

    goto LABEL_18;
  }

  v7 = *(a2 + 7);
  v11[0] = v12;
  v11[1] = v7;
  v5 = WTF::HashTable<std::pair<unsigned char,unsigned long long>,WTF::KeyValuePair<std::pair<unsigned char,unsigned long long>,mpark::variant<IPC::MessageReceiveQueue *,std::unique_ptr<IPC::MessageReceiveQueue>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<std::pair<unsigned char,unsigned long long>,mpark::variant<IPC::MessageReceiveQueue *,std::unique_ptr<IPC::MessageReceiveQueue>>>>,WTF::DefaultHash<std::pair<unsigned char,unsigned long long>>,WTF::HashMap<std::pair<unsigned char,unsigned long long>,mpark::variant<IPC::MessageReceiveQueue *,std::unique_ptr<IPC::MessageReceiveQueue>>,WTF::DefaultHash<std::pair<unsigned char,unsigned long long>>,WTF::HashTraits<std::pair<unsigned char,unsigned long long>>,WTF::HashTraits<mpark::variant<IPC::MessageReceiveQueue *,std::unique_ptr<IPC::MessageReceiveQueue>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<std::pair<unsigned char,unsigned long long>>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<std::pair<unsigned char,unsigned long long>,mpark::variant<IPC::MessageReceiveQueue *,std::unique_ptr<IPC::MessageReceiveQueue>>,WTF::DefaultHash<std::pair<unsigned char,unsigned long long>>,WTF::HashTraits<std::pair<unsigned char,unsigned long long>>,WTF::HashTraits<mpark::variant<IPC::MessageReceiveQueue *,std::unique_ptr<IPC::MessageReceiveQueue>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<std::pair<unsigned char,unsigned long long>>>,(WTF::ShouldValidateKey)1,std::pair<unsigned char,unsigned long long>>(this, v11);
  v8 = *this;
  if (*this)
  {
    v8 += 32 * *(v8 - 4);
  }

  if (v8 != v5)
  {
    if (v5[24] != 255)
    {
      v10 = (v5 + 16);
      return *v10;
    }

LABEL_18:
    mpark::throw_bad_variant_access(v5);
  }

  if (*(this + 32) != 1)
  {
    return 0;
  }

  if (*(this + 24) == 255)
  {
    goto LABEL_18;
  }

  v10 = this + 16;
  return *v10;
}

void IPC::Connection::enqueueIncomingMessage(atomic_ullong a1, uint64_t *a2)
{
  os_unfair_lock_assert_owner((a1 + 100));
  v4 = atomic_load((a1 + 352));
  if (v4)
  {
    return;
  }

  if (*(a1 + 96) != 1)
  {
    goto LABEL_3;
  }

  v10 = *(a1 + 104);
  v11 = *(a1 + 112);
  if (v10 > v11)
  {
    v11 += *(a1 + 128);
  }

  if ((v11 - v10) >> 4 < 0xC35)
  {
LABEL_3:
    WTF::Deque<WTF::UniqueRef<IPC::Decoder>,0ul>::append(a1 + 104, a2);
    if (*(a1 + 96) == 1)
    {
      v13 = *(a1 + 104);
      v14 = *(a1 + 112);
      if (v13 > v14)
      {
        v14 += *(a1 + 128);
      }

      if (v14 - v13 != 1 || !*(a1 + 16))
      {
        return;
      }

      v5 = IPC::Connection::dispatcher(a1);
      while (1)
      {
        v15 = *a1;
        if ((*a1 & 1) == 0)
        {
          break;
        }

        v18 = *a1;
        atomic_compare_exchange_strong_explicit(a1, &v18, v15 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v18 == v15)
        {
          goto LABEL_27;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_27:
      v7 = WTF::fastMalloc(0x10);
      v8 = &unk_1F11474F8;
    }

    else
    {
      if (!*(a1 + 16))
      {
        return;
      }

      v5 = IPC::Connection::dispatcher(a1);
      while (1)
      {
        v6 = *a1;
        if ((*a1 & 1) == 0)
        {
          break;
        }

        v16 = *a1;
        atomic_compare_exchange_strong_explicit(a1, &v16, v6 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v16 == v6)
        {
          goto LABEL_8;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_8:
      v7 = WTF::fastMalloc(0x10);
      v8 = &unk_1F1147520;
    }

    *v7 = v8;
    v7[1] = a1;
    v19 = v7;
    (*(*v5 + 16))(v5, &v19);
    v9 = v19;
    v19 = 0;
    if (v9)
    {
      (*(*v9 + 8))(v9);
    }

    return;
  }

  atomic_store(1u, (a1 + 352));
  while (1)
  {
    v12 = *a1;
    if ((*a1 & 1) == 0)
    {
      break;
    }

    v17 = *a1;
    atomic_compare_exchange_strong_explicit(a1, &v17, v12 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v17 == v12)
    {
      goto LABEL_18;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_18:
  v19 = a1;
  IPC::Connection::dispatchToClientWithIncomingMessagesLock<IPC::Connection::enqueueIncomingMessage(WTF::UniqueRef<IPC::Decoder>)::$_0>(a1, &v19);
  if (v19)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v19);
  }
}

void *std::pair<WebCore::PublicKeyCredentialDescriptor const*,WebCore::PublicKeyCredentialDescriptor const*>::pair[abi:sn200100]<WebCore::PublicKeyCredentialDescriptor const*,WebCore::PublicKeyCredentialDescriptor const*,0>(void *result, void *a2, void *a3)
{
  *result = *a2;
  result[1] = *a3;
  return result;
}

uint64_t IPC::Connection::SyncMessageState::processIncomingMessage(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (*(*a3 + 48))
  {
    v3 = 1;
  }

  else
  {
    v3 = *(*a3 + 48) & 2;
  }

  if (!v3)
  {
    return 0;
  }

  if (v3 == 2 && !atomic_load(&IPC::UnboundedSynchronousIPCScope::unboundedSynchronousIPCCount))
  {
    return 0;
  }

  v8 = 0;
  v9 = (a1 + 3);
  atomic_compare_exchange_strong_explicit((a1 + 3), &v8, 1u, memory_order_acquire, memory_order_acquire);
  if (v8)
  {
    MEMORY[0x19EB01E30](a1 + 3);
  }

  while (1)
  {
    v10 = *a2;
    if ((*a2 & 1) == 0)
    {
      break;
    }

    v38 = *a2;
    atomic_compare_exchange_strong_explicit(a2, &v38, v10 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v38 == v10)
    {
      goto LABEL_11;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a2);
LABEL_11:
  v11 = *(a1 + 8);
  if (!v11)
  {
    WTF::HashTable<WTF::RefPtr<IPC::Connection,WTF::RawPtrTraits<IPC::Connection>,WTF::DefaultRefDerefTraits<IPC::Connection>>,WTF::RefPtr<IPC::Connection,WTF::RawPtrTraits<IPC::Connection>,WTF::DefaultRefDerefTraits<IPC::Connection>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::RefPtr<IPC::Connection,WTF::RawPtrTraits<IPC::Connection>,WTF::DefaultRefDerefTraits<IPC::Connection>>>,WTF::HashTraits<WTF::RefPtr<IPC::Connection,WTF::RawPtrTraits<IPC::Connection>,WTF::DefaultRefDerefTraits<IPC::Connection>>>,WTF::HashTraits<WTF::RefPtr<IPC::Connection,WTF::RawPtrTraits<IPC::Connection>,WTF::DefaultRefDerefTraits<IPC::Connection>>>,WTF::FastMalloc>::expand((a1 + 8));
    v11 = *(a1 + 8);
  }

  v12 = *(v11 - 8);
  v13 = (~(a2 << 32) + a2) ^ ((~(a2 << 32) + a2) >> 22);
  v14 = 9 * ((v13 + ~(v13 << 13)) ^ ((v13 + ~(v13 << 13)) >> 8));
  v15 = (v14 ^ (v14 >> 15)) + ~((v14 ^ (v14 >> 15)) << 27);
  v16 = v12 & ((v15 >> 31) ^ v15);
  v17 = (v11 + 8 * v16);
  v18 = *v17;
  if (*v17)
  {
    v19 = 0;
    v20 = 1;
    do
    {
      if (v18 == a2)
      {
        WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(a2);
        v25 = 0;
        goto LABEL_26;
      }

      if (v18 == -1)
      {
        v19 = v17;
      }

      v16 = (v16 + v20) & v12;
      v17 = (v11 + 8 * v16);
      v18 = *v17;
      ++v20;
    }

    while (*v17);
    if (v19)
    {
      *v19 = 0;
      --*(*(a1 + 8) - 16);
      v17 = v19;
    }
  }

  *v17 = a2;
  v21 = *(a1 + 8);
  if (v21)
  {
    v22 = *(v21 - 12) + 1;
  }

  else
  {
    v22 = 1;
  }

  *(v21 - 12) = v22;
  v23 = (*(v21 - 16) + v22);
  v24 = *(v21 - 4);
  if (v24 > 0x400)
  {
    if (v24 > 2 * v23)
    {
      goto LABEL_25;
    }

LABEL_46:
    WTF::HashTable<WTF::RefPtr<IPC::Connection,WTF::RawPtrTraits<IPC::Connection>,WTF::DefaultRefDerefTraits<IPC::Connection>>,WTF::RefPtr<IPC::Connection,WTF::RawPtrTraits<IPC::Connection>,WTF::DefaultRefDerefTraits<IPC::Connection>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::RefPtr<IPC::Connection,WTF::RawPtrTraits<IPC::Connection>,WTF::DefaultRefDerefTraits<IPC::Connection>>>,WTF::HashTraits<WTF::RefPtr<IPC::Connection,WTF::RawPtrTraits<IPC::Connection>,WTF::DefaultRefDerefTraits<IPC::Connection>>>,WTF::HashTraits<WTF::RefPtr<IPC::Connection,WTF::RawPtrTraits<IPC::Connection>,WTF::DefaultRefDerefTraits<IPC::Connection>>>,WTF::FastMalloc>::expand((a1 + 8));
    goto LABEL_25;
  }

  if (3 * v24 <= 4 * v23)
  {
    goto LABEL_46;
  }

LABEL_25:
  v25 = 1;
LABEL_26:
  os_unfair_lock_assert_owner((a2 + 100));
  if ((*(*a3 + 48) & 8) == 0)
  {
    goto LABEL_27;
  }

  while (1)
  {
    v47 = *(a2 + 104);
    if (v47 == *(a2 + 112))
    {
      break;
    }

LABEL_68:
    v48 = *a2;
    if ((*a2 & 1) == 0)
    {
      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a2);
      v47 = *(a2 + 104);
      goto LABEL_70;
    }

    while (1)
    {
      v49 = v48;
      atomic_compare_exchange_strong_explicit(a2, &v49, v48 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v49 != v48)
      {
        goto LABEL_68;
      }

LABEL_70:
      *&v51 = a2;
      v48 = *(a2 + 128);
      if (v47 < v48)
      {
        break;
      }

      __break(1u);
    }

    v41 = (*(a2 + 120) + 8 * v47);
    v42 = *v41;
    *v41 = 0;
    *(&v51 + 1) = v42;
    if (v47 == *(a2 + 112))
    {
      goto LABEL_74;
    }

    std::unique_ptr<IPC::Decoder>::reset[abi:sn200100](v41, 0);
    v43 = *(a2 + 104);
    if (v43 == *(a2 + 128) - 1)
    {
      v44 = 0;
    }

    else
    {
      v44 = v43 + 1;
    }

    *(a2 + 104) = v44;
    IdentifierInternal = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
    WTF::Deque<IPC::Connection::SyncMessageState::ConnectionAndIncomingMessage,0ul>::append(a1 + 48, &v51);
    if (*(&v51 + 1))
    {
      IPC::Decoder::~Decoder(*(&v51 + 1));
      bmalloc::api::tzoneFree(v45, v46);
    }

    if (v51)
    {
      WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v51);
    }
  }

LABEL_27:
  while (1)
  {
    v26 = *a2;
    if ((*a2 & 1) == 0)
    {
      break;
    }

    v39 = *a2;
    atomic_compare_exchange_strong_explicit(a2, &v39, v26 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v39 == v26)
    {
      goto LABEL_29;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a2);
LABEL_29:
  v27 = *a3;
  *a3 = 0;
  *&v51 = a2;
  *(&v51 + 1) = v27;
  IdentifierInternal = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
  WTF::Deque<IPC::Connection::SyncMessageState::ConnectionAndIncomingMessage,0ul>::append(a1 + 48, &v51);
  if (*(&v51 + 1))
  {
    IPC::Decoder::~Decoder(*(&v51 + 1));
    bmalloc::api::tzoneFree(v35, v36);
  }

  if (v51)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v51);
  }

  v28 = 1;
  atomic_compare_exchange_strong_explicit(v9, &v28, 0, memory_order_release, memory_order_relaxed);
  if (v28 != 1)
  {
    WTF::Lock::unlockSlow((a1 + 3));
  }

  if (!v25)
  {
    goto LABEL_44;
  }

  v29 = *(a1 + 88);
  if (!v29)
  {
    *&v51 = 0;
    goto LABEL_74;
  }

  WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::RemoteImageBufferProxy>(v29, *(a1 + 80), &v51);
  v30 = v51;
  if (!v51)
  {
LABEL_74:
    __break(0xC471u);
    JUMPOUT(0x19D5AF53CLL);
  }

  while (1)
  {
    v31 = *a2;
    if ((*a2 & 1) == 0)
    {
      break;
    }

    v40 = *a2;
    atomic_compare_exchange_strong_explicit(a2, &v40, v31 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v40 == v31)
    {
      goto LABEL_40;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a2);
LABEL_40:
  v32 = WTF::fastMalloc(0x10);
  *v32 = &unk_1F11473B8;
  v32[1] = a2;
  v50 = v32;
  (*(*v30 + 16))(v30, &v50);
  v33 = v50;
  v50 = 0;
  if (v33)
  {
    (*(*v33 + 8))(v33);
  }

  v34 = v51;
  *&v51 = 0;
  if (v34)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WTF::SerialFunctionDispatcher,(WTF::DestructionThread)0>::deref((v34 + 8));
  }

LABEL_44:
  WTF::BinarySemaphore::signal(a1);
  return 1;
}

uint64_t WTF::Deque<WTF::UniqueRef<IPC::Decoder>,0ul>::append(uint64_t result, uint64_t *a2)
{
  v3 = result;
  v4 = *(result + 8);
  if (*result)
  {
    if (v4 + 1 != *result)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v9 = *(result + 24);
    if (v4)
    {
      if (v4 != v9 - 1)
      {
        goto LABEL_3;
      }
    }

    else if (v9)
    {
      v4 = 0;
      goto LABEL_3;
    }
  }

  result = WTF::Deque<WTF::UniqueRef<IPC::Decoder>,0ul>::expandCapacity(result);
  v4 = *(v3 + 8);
LABEL_3:
  v5 = *(v3 + 24);
  if (v4 >= v5)
  {
    __break(1u);
  }

  else
  {
    v6 = *(v3 + 16);
    v7 = *a2;
    *a2 = 0;
    *(v6 + 8 * v4) = v7;
    if (v4 == v5 - 1)
    {
      v8 = 0;
    }

    else
    {
      v8 = v4 + 1;
    }

    *(v3 + 8) = v8;
  }

  return result;
}

uint64_t WTF::Deque<std::unique_ptr<WebKit::NetworkCache::Storage::WriteOperation>,0ul>::expandCapacity(uint64_t result)
{
  v1 = *(result + 24);
  v2 = v1 + (v1 >> 2);
  if (v2 >= 0x1FFFFFFF)
  {
    __break(0xC471u);
    goto LABEL_22;
  }

  v3 = result;
  v4 = *(result + 16);
  if (v2 <= 0xF)
  {
    v2 = 15;
  }

  v5 = v2 + 1;
  result = WTF::fastMalloc((8 * (v2 + 1)));
  *(v3 + 24) = v5;
  *(v3 + 16) = result;
  v6 = *v3;
  v7 = *(v3 + 8);
  v8 = v7 - *v3;
  if (v7 < *v3)
  {
    if (v7 <= v1)
    {
      result = memcpy(result, v4, 8 * v7);
      v9 = v1 - *v3;
      if (v1 >= *v3)
      {
        v10 = *(v3 + 24);
        if (v10 >= v9)
        {
          v11 = v10 - (v1 - *v3);
          result = memcpy((*(v3 + 16) + 8 * v11), &v4[8 * *v3], 8 * v9);
          *v3 = v11;
          goto LABEL_9;
        }
      }
    }

LABEL_22:
    __break(1u);
    return result;
  }

  if (v1 < v6)
  {
    goto LABEL_22;
  }

  if (v8 == -1)
  {
    v8 = v1 - v6;
  }

  else if (v1 - v6 < v8)
  {
    goto LABEL_22;
  }

  result = memcpy((result + 8 * v6), &v4[8 * v6], 8 * v8);
LABEL_9:
  if (v4)
  {
    if (*(v3 + 16) == v4)
    {
      *(v3 + 16) = 0;
      *(v3 + 24) = 0;
    }

    return WTF::fastFree(v4, v12);
  }

  return result;
}

uint64_t std::__copy_trivial_impl[abi:sn200100]<WebCore::AuthenticatorTransport const,WebCore::AuthenticatorTransport>(const void *a1, uint64_t a2, char *a3)
{
  v7[1] = a1;
  v7[0] = a2;
  v6 = a3;
  v5 = a2 - a1;
  std::__constexpr_memmove[abi:sn200100]<WebCore::AuthenticatorTransport,WebCore::AuthenticatorTransport const,0>(a3, a1, a2 - a1);
  v4 = &v6[v5];
  return std::make_pair[abi:sn200100]<WebCore::PublicKeyCredentialDescriptor const*,WebCore::PublicKeyCredentialDescriptor*>(v7, &v4);
}

uint64_t IPC::Connection::dispatcher(IPC::Connection *this)
{
  v1 = *(this + 2);
  if (!v1)
  {
    __break(0xC471u);
    goto LABEL_8;
  }

  v2 = *(v1 + 88);
  if (!v2)
  {
    v5 = 0;
    goto LABEL_7;
  }

  WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::RemoteImageBufferProxy>(v2, *(v1 + 80), &v5);
  v3 = v5;
  if (!v5)
  {
LABEL_7:
    __break(0xC471u);
LABEL_8:
    JUMPOUT(0x19D5AF914);
  }

  v5 = 0;
  WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WTF::SerialFunctionDispatcher,(WTF::DestructionThread)0>::deref((v3 + 8));
  return v3;
}

void WTF::Detail::CallableWrapper<IPC::Connection::enqueueIncomingMessage(WTF::UniqueRef<IPC::Decoder>)::$_2,void>::call(uint64_t a1)
{
  v1 = *(a1 + 8);
  os_unfair_lock_lock((v1 + 100));
  v2 = *(v1 + 104);
  if (v2 != *(v1 + 112))
  {
    if (v2 < *(v1 + 128))
    {
      v3 = (*(v1 + 120) + 8 * v2);
      v4 = *v3;
      *v3 = 0;
      std::unique_ptr<IPC::Decoder>::reset[abi:sn200100](v3, 0);
      v5 = *(v1 + 104);
      if (v5 == *(v1 + 128) - 1)
      {
        v6 = 0;
      }

      else
      {
        v6 = v5 + 1;
      }

      *(v1 + 104) = v6;
      os_unfair_lock_unlock((v1 + 100));
      v10 = v4;
      IPC::Connection::dispatchMessage(v1, &v10);
      v7 = v10;
      v10 = 0;
      if (v7)
      {
        IPC::Decoder::~Decoder(v7);
        bmalloc::api::tzoneFree(v8, v9);
      }

      return;
    }

    __break(1u);
  }

  os_unfair_lock_unlock((v1 + 100));
}

IPC::Decoder *std::unique_ptr<IPC::Decoder>::reset[abi:sn200100](IPC::Decoder **a1, IPC::Decoder *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    IPC::Decoder::~Decoder(result);

    return bmalloc::api::tzoneFree(v5, v6);
  }

  return result;
}

void IPC::Connection::dispatchMessage(uint64_t a1, const IPC::Decoder **a2)
{
  if (!*(a1 + 16))
  {
    return;
  }

  IPC::Connection::dispatcher(a1);
  os_unfair_lock_lock((a1 + 100));
  v4 = IPC::MessageReceiveQueueMap::get((a1 + 136), *a2);
  if (v4)
  {
    (*(*v4 + 16))(v4, a1, a2);

    os_unfair_lock_unlock((a1 + 100));
    return;
  }

  os_unfair_lock_unlock((a1 + 100));
  v5 = *a2;
  v6 = *(*a2 + 48);
  if ((v6 & 4) != 0)
  {
    if ((*(a1 + 92) & 1) == 0)
    {
      v19 = *(a1 + 8);
      if (!v19)
      {
        goto LABEL_41;
      }

LABEL_39:
      (**v19)(v19);
LABEL_40:
      v5 = *a2;
LABEL_41:
      (*(*v19 + 64))(v19, a1, *(v5 + 25), v5 + 72);
      v21 = *(*v19 + 8);

      v21(v19);
      return;
    }

    ++*(a1 + 88);
    v6 = *(v5 + 48);
  }

  v7 = v6 & 2;
  if (v6)
  {
    v7 = 1;
  }

  if (v7 == 1 || v7 == 2 && (v20 = atomic_load(&IPC::UnboundedSynchronousIPCScope::unboundedSynchronousIPCCount)) != 0)
  {
    ++*(a1 + 84);
    v8 = 1;
  }

  else
  {
    v8 = 0;
  }

  v9 = *(a1 + 94);
  *(a1 + 94) = 0;
  v10 = *a2;
  if (*(*a2 + 25) < 0xF8Fu)
  {
    IPC::Connection::dispatcher(a1);
    v11 = *(a1 + 8);
    if (v11)
    {
      (**v11)(*(a1 + 8));
      v12 = *(v10 + 25);
      if (v12 >= 0x107F)
      {
        v12 = 4223;
      }

      if (LOBYTE((&IPC::Detail::messageDescriptions)[3 * v12 + 2]) != 214)
      {
        (*(*v11 + 32))(v11, a1, v10);
LABEL_15:
        (*(*v11 + 8))(v11);
        goto LABEL_16;
      }

      v15 = *(v10 + 7);
      if ((v15 - 1) < 0xFFFFFFFFFFFFFFFELL)
      {
        IPC::Connection::takeAsyncReplyHandler(a1, v15, &v22);
        v16 = v22;
        if (v22)
        {
          v22 = 0;
          (*(*v16 + 16))(v16, a1, v10);
          (*(*v16 + 8))(v16);
          v17 = v22;
          v22 = 0;
          if (v17)
          {
            (*(*v17 + 8))(v17);
          }
        }

        else
        {
          *(a1 + 94) = 1;
        }

        goto LABEL_15;
      }
    }

    __break(0xC471u);
    JUMPOUT(0x19D5AFF30);
  }

  IPC::Connection::dispatchSyncMessage(a1, *a2);
LABEL_16:
  v13 = *a2;
  v14 = *(a1 + 94) | (**a2 == 0);
  *(a1 + 94) = v14;
  if (v8)
  {
    --*(a1 + 84);
  }

  if ((*(v13 + 48) & 4) != 0)
  {
    --*(a1 + 88);
  }

  *(a1 + 94) = v9;
  if (v14)
  {
    v18 = atomic_load((a1 + 33));
    if (v18)
    {
      v19 = *(a1 + 8);
      if (!v19)
      {
        goto LABEL_40;
      }

      goto LABEL_39;
    }
  }
}

void *std::__constexpr_memmove[abi:sn200100]<WebCore::AuthenticatorTransport,WebCore::AuthenticatorTransport const,0>(void *result, const void *a2, size_t a3)
{
  if (a3)
  {
    return memmove(result, a2, a3);
  }

  return result;
}

atomic_uchar *WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::GPUConnectionToWebProcess>@<X0>(atomic_uchar *this@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = this;
  v6 = 0;
  atomic_compare_exchange_strong_explicit(this, &v6, 1u, memory_order_acquire, memory_order_acquire);
  if (v6)
  {
    this = MEMORY[0x19EB01E30](this);
  }

  if (*(v4 + 3))
  {
    ++*(v4 + 1);
  }

  else
  {
    a2 = 0;
  }

  *a3 = a2;
  v7 = 1;
  atomic_compare_exchange_strong_explicit(v4, &v7, 0, memory_order_release, memory_order_relaxed);
  if (v7 != 1)
  {

    return WTF::Lock::unlockSlow(v4);
  }

  return this;
}

uint64_t WebKit::WebsiteDataStore::useNetworkLoader(WebKit::WebsiteDataStore *this)
{
  isMobileSafari = WTF::IOSApplication::isMobileSafari(this);
  if (isMobileSafari)
  {
    isSafariViewService = 1;
  }

  else
  {
    isSafariViewService = WTF::IOSApplication::isSafariViewService(isMobileSafari);
  }

  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::cFNetworkNetworkLoaderEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::cFNetworkNetworkLoaderEnabledKey(void)::key = WebKit::WebPreferencesKey::cFNetworkNetworkLoaderEnabledKey(void)::$_0::operator() const(void)::impl;
  }

  LODWORD(v3) = WebKit::optionalExperimentalFeatureEnabled(&WebKit::WebPreferencesKey::cFNetworkNetworkLoaderEnabledKey(void)::key, 0);
  if (((v3 >> 8) & 1) == 0)
  {
    v3 = WTF::linkedOnOrAfterSDKWithBehavior();
    if (!v3)
    {
      unified_http_enabled = 0;
      return v3 | (unified_http_enabled << 8);
    }

    WTF::applicationBundleIdentifier(&v10, v3);
    isRunningTest = WebKit::isRunningTest(&v10, v5);
    v8 = v10;
    v10 = 0;
    if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v8, v6);
      if (isRunningTest)
      {
        goto LABEL_12;
      }
    }

    else if (isRunningTest)
    {
LABEL_12:
      LOBYTE(v3) = 1;
      unified_http_enabled = 1;
      return v3 | (unified_http_enabled << 8);
    }

    unified_http_enabled = nw_settings_get_unified_http_enabled();
    LOBYTE(v3) = unified_http_enabled & isSafariViewService;
    return v3 | (unified_http_enabled << 8);
  }

  unified_http_enabled = BYTE1(v3);
  return v3 | (unified_http_enabled << 8);
}

void sub_19D5B0158(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
{
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

WTF::StringImpl *WebKit::WebsiteDataStore::cacheDirectoryInContainerOrHomeDirectory@<X0>(WebKit::WebsiteDataStore *this@<X0>, void *a2@<X8>)
{
  WebKit::pathForProcessContainer(&v14, this);
  v5 = v14;
  if (!v14 || !*(v14 + 1))
  {
    v6 = NSHomeDirectory();
    MEMORY[0x19EB02040](&v16, v6);
    v5 = v16;
    v16 = 0;
    v8 = v14;
    v14 = v5;
    if (v8)
    {
      if (atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v8, v7);
      }

      v10 = v16;
      v16 = 0;
      if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v10, v7);
      }

      v5 = v14;
      if (!v14)
      {
        goto LABEL_5;
      }
    }

    else if (!v5)
    {
LABEL_5:
      v9 = 1;
      goto LABEL_13;
    }
  }

  v9 = 0;
  atomic_fetch_add_explicit(v5, 2u, memory_order_relaxed);
LABEL_13:
  v11 = *this;
  if (v11)
  {
    atomic_fetch_add_explicit(v11, 2u, memory_order_relaxed);
  }

  v15 = v11;
  v16 = v5;
  result = WTF::tryMakeStringFromAdapters<WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>>(&v16, &v15, a2);
  if (!*a2)
  {
    __break(0xC471u);
    return result;
  }

  if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v11, v13);
    if ((v9 & 1) == 0)
    {
LABEL_19:
      if (atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v5, v13);
      }
    }
  }

  else if ((v9 & 1) == 0)
  {
    goto LABEL_19;
  }

  result = v14;
  v14 = 0;
  if (result)
  {
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v13);
    }
  }

  return result;
}

void sub_19D5B02DC(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
{
  if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v11, a2);
  }

  if ((v12 & 1) == 0 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v10, a2);
  }

  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WTF::SerialFunctionDispatcher,(WTF::DestructionThread)0>(void *a1)
{
  v8 = a1;
  v7 = 0;
  WTF::Locker<WTF::Lock,void>::Locker(v6, a1);
  v2 = a1[1] - 1;
  a1[1] = v2;
  if (v2)
  {
    v5 = 1;
  }

  else
  {
    v4[2] = 0;
    v7 = std::exchange[abi:sn200100]<WTF::StringImpl *,decltype(nullptr) &>(a1 + 3);
    ++a1[2];
    v5 = 0;
  }

  result = WTF::Locker<WTF::Lock,void>::~Locker(v6);
  if (!v5)
  {
    v4[0] = a1;
    v4[1] = v7;
    return WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WTF::SerialFunctionDispatcher,(WTF::DestructionThread)0>(void)const::{lambda(void)#1}::operator()(v4);
  }

  return result;
}

uint64_t *WebKit::WebsiteDataStore::resolvedCookieStorageDirectory@<X0>(uint64_t *this@<X0>, WTF::StringImpl *a2@<X1>, atomic_uint **a3@<X8>)
{
  v4 = this[35];
  if (!v4)
  {
    v5 = this;
    if (this[3] <= -2)
    {
      v4 = *MEMORY[0x1E696EBA8];
      if (!*MEMORY[0x1E696EBA8])
      {
        this[35] = 0;
        goto LABEL_22;
      }

      atomic_fetch_add_explicit(v4, 2u, memory_order_relaxed);
      this = this[35];
      v5[35] = v4;
      if (!this)
      {
        goto LABEL_2;
      }
    }

    else
    {
      WTF::StringImpl::createWithoutCopyingNonEmpty();
      v6 = v15;
      v13 = v15;
      WebKit::WebsiteDataStore::cacheDirectoryInContainerOrHomeDirectory(&v13, &v14);
      if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v6, v7);
      }

      if (v14)
      {
        v8 = v14[1];
        v9 = *(v14 + 1) | (((*(v14 + 4) >> 2) & 1) << 32);
      }

      else
      {
        v8 = 0;
        v9 = 0x100000000;
      }

      WebKit::resolveAndCreateReadWriteDirectoryForSandboxExtension(v8, v9, &v15);
      v10 = v15;
      v15 = 0;
      v11 = v5[35];
      v5[35] = v10;
      if (v11)
      {
        if (atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v11, a2);
        }

        v12 = v15;
        v15 = 0;
        if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v12, a2);
        }
      }

      this = v14;
      v14 = 0;
      if (!this)
      {
LABEL_21:
        v4 = v5[35];
        if (!v4)
        {
          goto LABEL_22;
        }

        goto LABEL_2;
      }
    }

    if (atomic_fetch_add_explicit(this, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      this = WTF::StringImpl::destroy(this, a2);
    }

    goto LABEL_21;
  }

LABEL_2:
  atomic_fetch_add_explicit(v4, 2u, memory_order_relaxed);
LABEL_22:
  *a3 = v4;
  return this;
}

void sub_19D5B055C(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11)
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

uint64_t WTF::tryMakeStringFromAdapters<WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>>@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v3 = *result;
  if (*result)
  {
    v4 = *(v3 + 4);
  }

  else
  {
    v4 = 0;
  }

  v5 = *a2;
  if (*a2)
  {
    v6 = *(v5 + 4);
  }

  else
  {
    v6 = 0;
  }

  if (((v6 | v4) & 0x80000000) == 0)
  {
    result = (v4 + v6);
    if (!__OFADD__(v4, v6))
    {
      if (v3)
      {
        v7 = *(v3 + 16);
        v8 = (v7 >> 2) & 1;
        if (!v5 || (v7 & 4) == 0)
        {
          return WTF::tryMakeStringImplFromAdaptersInternal<WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>>(result, v8, v3, v5, a3);
        }
      }

      else if (!v5)
      {
        v8 = 1;
        return WTF::tryMakeStringImplFromAdaptersInternal<WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>>(result, v8, v3, v5, a3);
      }

      v8 = (*(v5 + 16) >> 2) & 1;
      return WTF::tryMakeStringImplFromAdaptersInternal<WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>>(result, v8, v3, v5, a3);
    }
  }

  *a3 = 0;
  return result;
}

void WebKit::WebProcess::didReceiveMessage(WebKit::WebProcess *this, atomic_ullong *a2, IPC::Decoder *a3, double a4, __n128 a5)
{
  if (!v6 && v5)
  {
    if ((WebKit::WebProcess::dispatchMessage(this, a2, a3) & 1) == 0)
    {

      WebKit::AuxiliaryProcess::didReceiveMessage(this, a2, a3);
    }
  }

  else
  {
    switch(*(a3 + 25))
    {
      case 0xB6E:
        IPC::Decoder::decode<std::tuple<WebKit::AccessibilityPreferences>>(&v38, a3);
        if (v41 == 1)
        {
          WebKit::WebProcess::accessibilityPreferencesDidChange(this, &v38);
        }

        return;
      case 0xB6F:

        IPC::handleMessage<Messages::GPUProcess::AddMockMediaDevice,IPC::Connection,WebKit::GPUProcess,WebKit::GPUProcess,void ()(WebCore::MockMediaDevice const&)>(a3);
        return;
      case 0xB70:

        WebKit::WebProcess::backgroundResponsivenessPing(this);
        return;
      case 0xB71:
        v15 = *(a3 + 1);
        v16 = ((*(a3 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
        v17 = v16 - *a3;
        v5 = v15 >= v17;
        v18 = v15 - v17;
        if (!v5 || v18 <= 3)
        {
          IPC::Decoder::markInvalid(a3);
LABEL_333:
          IPC::Decoder::markInvalid(a3);

          IPC::Decoder::markInvalid(a3);
          return;
        }

        *(a3 + 2) = v16 + 1;
        if (!v16)
        {
          goto LABEL_333;
        }

        v20 = *v16;

        WebKit::WebProcess::backlightLevelDidChange(this, v20);
        break;
      case 0xB72:

        IPC::handleMessage<Messages::WebProcess::BindAccessibilityFrameWithData,IPC::Connection,WebKit::WebProcess,WebKit::WebProcess,void ()(WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::span<unsigned char const,18446744073709551615ul>)>(a3, this);
        return;
      case 0xB73:

        IPC::handleMessageAsync<Messages::WebProcess::ClearCachedPage,IPC::Connection,WebKit::WebProcess,WebKit::WebProcess,void ()(WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::BackForwardItemIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::CompletionHandler<void ()(void)> &&)>(a2, a3, this);
        return;
      case 0xB74:

        WebKit::WebProcess::clearCurrentModifierStateForTesting(this);
        return;
      case 0xB75:

        WebKit::GPUProcess::clearMockMediaDevices(this);
        return;
      case 0xB76:

        WebKit::WebProcess::clearResourceLoadStatistics(this);
        return;
      case 0xB77:
        v10 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a3);
        if ((v11 & 1) == 0)
        {
          goto LABEL_330;
        }

        v12 = v10;
        IPC::ArgumentCoder<WebKit::WebPageCreationParameters,void>::decode();
        if (v44)
        {
          v38 = v12;
          WebKit::WebPageCreationParameters::WebPageCreationParameters(&v39, v43);
          v42 = 1;
          if ((v44 & 1) == 0)
          {
            goto LABEL_12;
          }

          WebKit::WebPageCreationParameters::~WebPageCreationParameters(v43, v13);
          if (v42)
          {
            goto LABEL_12;
          }
        }

        else
        {
          IPC::Decoder::markInvalid(a3);
LABEL_330:
          LOBYTE(v38) = 0;
          v42 = 0;
        }

        IPC::Decoder::markInvalid(a3);
        if ((v42 & 1) == 0)
        {
          return;
        }

LABEL_12:
        WebKit::WebProcess::createWebPage(this, v38, &v39);
        if (v42)
        {
          WebKit::WebPageCreationParameters::~WebPageCreationParameters(&v39, v14);
        }

        return;
      case 0xB78:

        IPC::handleMessageAsync<Messages::WebProcess::DeleteAllCookies,IPC::Connection,WebKit::WebProcess,WebKit::WebProcess,void ()(WTF::CompletionHandler<void ()(void)> &&)>(a2, a3, this);
        return;
      case 0xB79:

        IPC::handleMessageAsync<Messages::WebProcess::DeleteWebsiteData,IPC::Connection,WebKit::WebProcess,WebKit::WebProcess,void ()(WTF::OptionSet<WebKit::WebsiteDataType>,WTF::WallTime,WTF::CompletionHandler<void ()(void)> &&)>(a2, a3, this);
        return;
      case 0xB7A:

        IPC::handleMessageAsync<Messages::WebProcess::DeleteWebsiteDataForOrigin,IPC::Connection,WebKit::WebProcess,WebKit::WebProcess,void ()(WTF::OptionSet<WebKit::WebsiteDataType>,WebCore::ClientOrigin const&,WTF::CompletionHandler<void ()(void)> &&)>(a2, a3, this);
        return;
      case 0xB7B:

        IPC::handleMessageAsync<Messages::WebProcess::DeleteWebsiteDataForOrigins,IPC::Connection,WebKit::WebProcess,WebKit::WebProcess,void ()(WTF::OptionSet<WebKit::WebsiteDataType>,WTF::Vector<WebCore::SecurityOriginData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&,WTF::CompletionHandler<void ()(void)> &&)>(a2, a3, this);
        return;
      case 0xB7C:

        WebKit::WebProcess::destroyAutomationSessionProxy(this);
        return;
      case 0xB7D:

        IPC::handleMessage<Messages::WebProcess::DidWriteToPasteboardAsynchronously,IPC::Connection,WebKit::WebProcess,WebKit::WebProcess,void ()(WTF::String const&)>(a3, this);
        return;
      case 0xB7E:

        WebKit::WebProcess::disableURLSchemeCheckInDataDetectors(this);
        return;
      case 0xB7F:

        WebKit::WebProcess::enableRemoteWebInspector(this);
        return;
      case 0xB80:

        IPC::handleMessage<Messages::WebProcess::EnsureAutomationSessionProxy,IPC::Connection,WebKit::WebProcess,WebKit::WebProcess,void ()(WTF::String const&)>(a3, this);
        return;
      case 0xB81:

        IPC::handleMessageAsync<Messages::WebProcess::EstablishRemoteWorkerContextConnectionToNetworkProcess,IPC::Connection,WebKit::WebProcess,WebKit::WebProcess,void ()(WebKit::RemoteWorkerType,WTF::ObjectIdentifierGeneric<WebKit::PageGroupIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::WebPreferencesStore const&,WebCore::Site &&,std::optional<WebCore::ProcessQualified<WTF::UUID>>,WebKit::RemoteWorkerInitializationData &&,WTF::CompletionHandler<void ()(void)> &&)>(a2, a3, this);
        return;
      case 0xB82:

        IPC::handleMessageAsync<Messages::WebProcess::FetchWebsiteData,IPC::Connection,WebKit::WebProcess,WebKit::WebProcess,void ()(WTF::OptionSet<WebKit::WebsiteDataType>,WTF::CompletionHandler<void ()(WebKit::WebsiteData &&)> &&)>(a2, a3, this);
        return;
      case 0xB83:
        v27 = IPC::Decoder::decode<std::tuple<BOOL>>(a3);
        if ((v27 & 0x100) != 0)
        {

          WebKit::WebProcess::fullKeyboardAccessModeChanged(this, v27 & 1);
        }

        return;
      case 0xB84:

        IPC::handleMessage<Messages::WebProcess::GamepadConnected,IPC::Connection,WebKit::WebProcess,WebKit::WebProcess,void ()(WebKit::GamepadData const&,WebCore::EventMakesGamepadsVisible)>(a3, this);
        return;
      case 0xB85:
        v36 = IPC::Decoder::decode<std::tuple<unsigned int>>(a3);
        if ((v36 & 0x100000000) != 0)
        {

          WebKit::WebProcess::gamepadDisconnected(this, v36);
        }

        return;
      case 0xB86:

        WebKit::WebProcess::garbageCollectJavaScriptObjects(this);
        return;
      case 0xB87:

        IPC::handleMessageAsync<Messages::WebProcess::GetActivePagesOriginsForTesting,IPC::Connection,WebKit::WebProcess,WebKit::WebProcess,void ()(WTF::CompletionHandler<void ()(WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)> &&)>(a2, a3, this);
        return;
      case 0xB88:

        IPC::handleMessageAsync<Messages::WebProcess::GetNotifyStateForTesting,IPC::Connection,WebKit::WebProcess,WebKit::WebProcess,void ()(WTF::String const&,WTF::CompletionHandler<void ()(std::optional<unsigned long long>)> &&)>(a2, a3, this);
        return;
      case 0xB89:

        IPC::handleMessage<Messages::WebProcess::GrantAccessToAssetServices,IPC::Connection,WebKit::WebProcess,WebKit::WebProcess,void ()(WTF::Vector<WebKit::SandboxExtensionHandle,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>(a3, this);
        return;
      case 0xB8A:

        IPC::handleMessage<Messages::WebProcess::GrantUserMediaDeviceSandboxExtensions,IPC::Connection,WebKit::WebProcess,WebKit::WebProcess,void ()(WebKit::MediaDeviceSandboxExtensions &&)>(a3, this);
        return;
      case 0xB8B:

        IPC::handleMessage<Messages::WebProcess::HandleInjectedBundleMessage,IPC::Connection,WebKit::WebProcess,WebKit::WebProcess,void ()(WTF::String const&,WebKit::UserData const&)>(a3, this);
        return;
      case 0xB8C:

        IPC::handleMessageAsync<Messages::WebProcess::InitializeWebProcess,IPC::Connection,WebKit::WebProcess,WebKit::WebProcess,void ()(WebKit::WebProcessCreationParameters &&,WTF::CompletionHandler<void ()(WebCore::ProcessIdentity)> &&)>(a2, a3, this);
        return;
      case 0xB8D:

        IPC::handleMessageAsync<Messages::WebProcess::IsJITEnabled,IPC::Connection,WebKit::WebProcess,WebKit::WebProcess,void ()(WTF::CompletionHandler<void ()(BOOL)> &&)>(a2, a3, this);
        return;
      case 0xB8E:

        WebKit::WebProcess::markIsNoLongerPrewarmed(this);
        return;
      case 0xB8F:

        IPC::handleMessage<Messages::WebProcess::PostNotification,IPC::Connection,WebKit::WebProcess,WebKit::WebProcess,void ()(WTF::String const&,std::optional<unsigned long long>)>(a3, this);
        return;
      case 0xB90:

        IPC::handleMessage<Messages::WebProcess::PostObserverNotification,IPC::Connection,WebKit::WebProcess,WebKit::WebProcess,void ()(WTF::String const&)>(a3, this);
        return;
      case 0xB91:
        v22 = IPC::Decoder::decode<std::tuple<BOOL>>(a3);
        if ((v22 & 0x100) != 0)
        {

          WebKit::WebProcess::powerSourceDidChange(this, (v22 & 1));
        }

        return;
      case 0xB92:

        IPC::handleMessageAsync<Messages::WebProcess::PrepareToSuspend,IPC::Connection,WebKit::WebProcess,WebKit::WebProcess,void ()(BOOL,WTF::MonotonicTime,WTF::CompletionHandler<void ()(void)> &&)>(a2, a3, this);
        return;
      case 0xB93:

        IPC::handleMessage<Messages::WebProcess::PrewarmWithDomainInformation,IPC::Connection,WebKit::WebProcess,WebKit::WebProcess,void ()(WebCore::PrewarmInformation &&)>(a3, this);
        return;
      case 0xB94:

        WebKit::WebProcess::processDidResume(this);
        return;
      case 0xB95:

        IPC::handleMessage<Messages::WebProcess::RegisterAdditionalFonts,IPC::Connection,WebKit::WebProcess,WebKit::WebProcess,void ()(WebKit::AdditionalFonts &&)>(a3, this);
        return;
      case 0xB96:

        IPC::handleMessage<Messages::WebProcess::RegisterFontMap,IPC::Connection,WebKit::WebProcess,WebKit::WebProcess,void ()(WTF::HashMap<WTF::String,WTF::URL,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::URL>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc> &&,WTF::HashMap<WTF::String,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::CrashOnOverflow>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc> &&,WTF::HashMap<WTF::String,WTF::URL,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::URL>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc> &&<WebKit::SandboxExtensionHandle,0ul,WTF::Vector,16ul,WTF::FastMalloc> &&)>(a3, this);
        return;
      case 0xB97:

        IPC::handleMessageAsync<Messages::WebProcess::RegisterServiceWorkerClients,IPC::Connection,WebKit::WebProcess,WebKit::WebProcess,void ()(WTF::CompletionHandler<void ()(BOOL)> &&)>(a2, a3, this);
        return;
      case 0xB98:

        IPC::handleMessage<Messages::WebProcess::RegisterURLSchemeAsBypassingContentSecurityPolicy,IPC::Connection,WebKit::WebProcess,WebKit::WebProcess,void ()(WTF::String const&)const>(a3, this);
        return;
      case 0xB99:

        IPC::handleMessage<Messages::WebProcess::RegisterURLSchemeAsCORSEnabled,IPC::Connection,WebKit::WebProcess,WebKit::WebProcess,void ()(WTF::String const&)>(a3, this);
        return;
      case 0xB9A:

        IPC::handleMessage<Messages::WebProcess::RegisterURLSchemeAsCachePartitioned,IPC::Connection,WebKit::WebProcess,WebKit::WebProcess,void ()(WTF::String const&)const>(a3, this);
        return;
      case 0xB9B:

        IPC::handleMessage<Messages::WebProcess::RegisterURLSchemeAsCanDisplayOnlyIfCanRequest,IPC::Connection,WebKit::WebProcess,WebKit::WebProcess,void ()(WTF::String const&)const>(a3, this);
        return;
      case 0xB9C:

        IPC::handleMessage<Messages::WebProcess::RegisterURLSchemeAsDisplayIsolated,IPC::Connection,WebKit::WebProcess,WebKit::WebProcess,void ()(WTF::String const&)const>(a3, this);
        return;
      case 0xB9D:

        IPC::handleMessage<Messages::WebProcess::RegisterURLSchemeAsEmptyDocument,IPC::Connection,WebKit::WebProcess,WebKit::WebProcess,void ()(WTF::String const&)>(a3, this);
        return;
      case 0xB9E:

        IPC::handleMessage<Messages::NetworkProcess::RegisterURLSchemeAsLocal,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(WTF::String const&)const>(a3, this);
        return;
      case 0xB9F:

        IPC::handleMessage<Messages::WebProcess::RegisterURLSchemeAsSecure,IPC::Connection,WebKit::WebProcess,WebKit::WebProcess,void ()(WTF::String const&)const>(a3, this);
        return;
      case 0xBA0:

        IPC::handleMessage<Messages::WebProcess::RegisterURLSchemeAsWebExtension,IPC::Connection,WebKit::WebProcess,WebKit::WebProcess,void ()(WTF::String const&)const>(a3, this);
        return;
      case 0xBA1:

        IPC::handleMessageAsync<Messages::WebProcess::ReleaseMemory,IPC::Connection,WebKit::WebProcess,WebKit::WebProcess,void ()(WTF::CompletionHandler<void ()(void)> &&)>(a2, a3, this);
        return;
      case 0xBA2:

        IPC::handleMessageAsync<Messages::WebProcess::ReloadExecutionContextsForOrigin,IPC::Connection,WebKit::WebProcess,WebKit::WebProcess,void ()(WebCore::ClientOrigin const&,std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::CompletionHandler<void ()(void)> &&)>(a2, a3, this);
        return;
      case 0xBA3:

        IPC::handleMessage<Messages::GPUProcess::RemoveMockMediaDevice,IPC::Connection,WebKit::GPUProcess,WebKit::GPUProcess,void ()(WTF::String const&)>(a3, this);
        return;
      case 0xBA4:

        WebKit::GPUProcess::resetMockMediaDevices(this);
        return;
      case 0xBA5:

        WebKit::WebProcess::revokeAccessToAssetServices(this);
        return;
      case 0xBA6:

        IPC::handleMessage<Messages::WebProcess::RevokeUserMediaDeviceSandboxExtensions,IPC::Connection,WebKit::WebProcess,WebKit::WebProcess,void ()(WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&)>(a3, this);
        return;
      case 0xBA7:

        IPC::handleMessageAsync<Messages::WebProcess::SeedResourceLoadStatisticsForTesting,IPC::Connection,WebKit::WebProcess,WebKit::WebProcess,void ()(WebCore::RegistrableDomain const&,WebCore::RegistrableDomain const&,BOOL,WTF::CompletionHandler<void ()(void)> &&)>(a2, a3, this);
        return;
      case 0xBA8:

        IPC::handleMessageAsync<Messages::WebProcess::SendResourceLoadStatisticsDataImmediately,IPC::Connection,WebKit::WebProcess,WebKit::WebProcess,void ()(WTF::CompletionHandler<void ()(void)> &&)>(a2, a3, this);
        return;
      case 0xBA9:
        if ((IPC::Decoder::decode<std::tuple<BOOL>>(a3) & 0x100) != 0)
        {

          WebKit::WebProcess::setAlwaysUsesComplexTextCodePath(this);
        }

        return;
      case 0xBAA:
        if ((IPC::Decoder::decode<std::tuple<unsigned int>>(a3) & 0x100000000) != 0)
        {

          WebKit::WebProcess::setBackForwardCacheCapacity(this);
        }

        return;
      case 0xBAB:
        v23 = IPC::Decoder::decode<std::tuple<WebKit::CacheModel>>(a3);
        if ((v23 & 0x100) != 0)
        {

          WebKit::WebProcess::setCacheModel(this, v23);
        }

        return;
      case 0xBAC:
        v24 = IPC::Decoder::decode<std::tuple<double>>(a3);
        if (v25)
        {

          WebKit::NetworkProcess::setDefaultRequestTimeoutInterval(this, *&v24);
        }

        return;
      case 0xBAD:
        v31 = IPC::Decoder::decode<std::tuple<BOOL>>(a3);
        if ((v31 & 0x100) != 0)
        {

          WebKit::WebProcess::setDisableFontSubpixelAntialiasingForTesting(this, (v31 & 1));
        }

        return;
      case 0xBAE:

        IPC::handleMessage<Messages::WebProcess::SetDomainRelaxationForbiddenForURLScheme,IPC::Connection,WebKit::WebProcess,WebKit::WebProcess,void ()(WTF::String const&)const>(a3, this);
        return;
      case 0xBAF:

        IPC::handleMessageAsync<Messages::WebProcess::SetDomainsWithCrossPageStorageAccess,IPC::Connection,WebKit::WebProcess,WebKit::WebProcess,void ()(WTF::HashMap<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc> &&,WTF::CompletionHandler<void ()(void)> &&)>(a2, a3, this);
        return;
      case 0xBB0:

        IPC::handleMessage<Messages::WebProcess::SetDomainsWithUserInteraction,IPC::Connection,WebKit::WebProcess,WebKit::WebProcess,void ()(WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> &&)>(a3, this);
        return;
      case 0xBB1:
        v32 = IPC::Decoder::decode<std::tuple<BOOL>>(a3);
        if ((v32 & 0x100) != 0)
        {

          WebKit::WebProcess::setEnhancedAccessibility(this, v32 & 1);
        }

        return;
      case 0xBB2:
        v30 = IPC::Decoder::decode<std::tuple<BOOL>>(a3);
        if ((v30 & 0x100) != 0)
        {

          WebKit::WebProcess::setHasMouseDevice(this, v30 & 1);
        }

        return;
      case 0xBB3:
        v28 = IPC::Decoder::decode<std::tuple<BOOL>>(a3);
        if ((v28 & 0x100) != 0)
        {

          WebKit::WebProcess::setHasStylusDevice(this, v28 & 1);
        }

        return;
      case 0xBB4:
        v37 = IPC::Decoder::decode<std::tuple<BOOL>>(a3);
        if ((v37 & 0x100) != 0)
        {

          WebKit::WebProcess::setHasSuspendedPageProxy(this, v37 & 1);
        }

        return;
      case 0xBB5:
        IPC::Decoder::decode<std::tuple<WTF::Seconds>>(a3);
        if (v35)
        {

          WebKit::WebProcess::setHiddenPageDOMTimerThrottlingIncreaseLimit(this);
        }

        return;
      case 0xBB6:

        IPC::handleMessage<Messages::WebProcess::SetInitialGamepads,IPC::Connection,WebKit::WebProcess,WebKit::WebProcess,void ()(WTF::Vector<std::optional<WebKit::GamepadData>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&)>(a3, this, a4, a5);
        return;
      case 0xBB7:

        IPC::handleMessage<Messages::WebProcess::SetInjectedBundleParameter,IPC::Connection,WebKit::WebProcess,WebKit::WebProcess,void ()(WTF::String const&,std::span<unsigned char const,18446744073709551615ul>)>(a3, this);
        return;
      case 0xBB8:
        IPC::Decoder::decode<std::tuple<std::span<unsigned char const,18446744073709551615ul>>>(a3, &v38);
        if (v40 == 1)
        {
          WebKit::WebProcess::setInjectedBundleParameters(this, v38, v39);
        }

        return;
      case 0xBB9:

        IPC::handleMessageAsync<Messages::WebProcess::SetIsInProcessCache,IPC::Connection,WebKit::WebProcess,WebKit::WebProcess,void ()(BOOL,WTF::CompletionHandler<void ()(void)> &&)>(a2, a3, this);
        return;
      case 0xBBA:
        v33 = IPC::Decoder::decode<std::tuple<BOOL>>(a3);
        if ((v33 & 0x100) != 0)
        {

          WebKit::WebProcess::setJavaScriptGarbageCollectorTimerEnabled(this, v33 & 1);
        }

        return;
      case 0xBBB:

        IPC::handleMessage<Messages::WebProcess::SetMediaAccessibilityPreferences,IPC::Connection,WebKit::WebProcess,WebKit::WebProcess,void ()(WebCore::CaptionUserPreferencesDisplayMode,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&)>(a3, this);
        return;
      case 0xBBC:

        IPC::handleMessage<Messages::WebProcess::SetMediaMIMETypes,IPC::Connection,WebKit::WebProcess,WebKit::WebProcess,void ()(WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>)>(a3, this);
        return;
      case 0xBBD:
        v34 = IPC::Decoder::decode<std::tuple<BOOL>>(a3);
        if ((v34 & 0x100) != 0)
        {

          WebKit::WebProcess::setMemoryCacheDisabled(this, v34 & 1);
        }

        return;
      case 0xBBE:

        IPC::handleMessage<Messages::WebProcess::SetMockMediaDeviceIsEphemeral,IPC::Connection,WebKit::WebProcess,WebKit::WebProcess,void ()(WTF::String const&,BOOL)>(a3, this);
        return;
      case 0xBBF:
        v26 = IPC::Decoder::decode<std::tuple<BOOL>>(a3);
        if ((v26 & 0x100) != 0)
        {

          WebKit::WebProcess::setOptInCookiePartitioningEnabled(this, v26 & 1);
        }

        return;
      case 0xBC0:

        IPC::handleMessage<Messages::WebProcess::SetResourceMonitorContentRuleList,IPC::Connection,WebKit::WebProcess,WebKit::WebProcess,void ()(WebKit::WebCompiledContentRuleListData &&)>(a3, this);
        return;
      case 0xBC1:

        IPC::handleMessageAsync<Messages::WebProcess::SetResourceMonitorContentRuleListAsync,IPC::Connection,WebKit::WebProcess,WebKit::WebProcess,void ()(WebKit::WebCompiledContentRuleListData &&,WTF::CompletionHandler<void ()(void)> &&)>(a2, a3, this);
        return;
      case 0xBC2:

        IPC::handleMessage<Messages::WebProcess::SetScreenProperties,IPC::Connection,WebKit::WebProcess,WebKit::WebProcess,void ()(WebCore::ScreenProperties const&)>(a3, this);
        return;
      case 0xBC3:
        v21 = IPC::Decoder::decode<std::tuple<WTF::OptionSet<WebKit::TextCheckerState>>>(a3);
        if (v21 >= 0x100u)
        {

          WebKit::WebProcess::setTextCheckerState(this, v21);
        }

        return;
      case 0xBC4:

        IPC::handleMessageAsync<Messages::WebProcess::SetThirdPartyCookieBlockingMode,IPC::Connection,WebKit::WebProcess,WebKit::WebProcess,void ()(WebCore::ThirdPartyCookieBlockingMode,WTF::CompletionHandler<void ()(void)> &&)>(a2, a3, this);
        return;
      case 0xBC5:
        v29 = IPC::Decoder::decode<std::tuple<BOOL>>(a3);
        if ((v29 & 0x100) != 0)
        {

          WebKit::WebProcess::setTrackingPreventionEnabled(this, (v29 & 1));
        }

        return;
      case 0xBC6:

        IPC::handleMessage<Messages::WebProcess::SetWebsiteDataStoreParameters,IPC::Connection,WebKit::WebProcess,WebKit::WebProcess,void ()(WebKit::WebProcessDataStoreParameters &&)>(a3, this);
        return;
      case 0xBC7:

        IPC::handleMessage<Messages::WebProcess::StartMemorySampler,IPC::Connection,WebKit::WebProcess,WebKit::WebProcess,void ()(WebKit::SandboxExtensionHandle &&,WTF::String const&,double)>(a3, this);
        return;
      case 0xBC8:

        WebKit::WebProcess::stopMemorySampler(this);
        return;
      case 0xBC9:

        IPC::handleMessage<Messages::WebProcess::SwitchFromStaticFontRegistryToUserFontRegistry,IPC::Connection,WebKit::WebProcess,WebKit::WebProcess,void ()(WTF::Vector<WebKit::SandboxExtensionHandle,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>(a3, this);
        return;
      case 0xBCA:

        IPC::handleMessage<Messages::WebProcess::UnblockServicesRequiredByAccessibility,IPC::Connection,WebKit::WebProcess,WebKit::WebProcess,void ()(WTF::Vector<WebKit::SandboxExtensionHandle,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>(a3, this);
        return;
      case 0xBCB:

        IPC::handleMessage<Messages::WebProcess::UpdateDomainsWithStorageAccessQuirks,IPC::Connection,WebKit::WebProcess,WebKit::WebProcess,void ()(WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> &&)>(a3, this);
        return;
      case 0xBCC:

        IPC::handleMessage<Messages::WebProcess::UpdateScriptTrackingPrivacyFilter,IPC::Connection,WebKit::WebProcess,WebKit::WebProcess,void ()(WebKit::ScriptTrackingPrivacyRules &&)>(a3, this);
        return;
      case 0xBCD:

        IPC::handleMessage<Messages::WebProcess::UpdateStorageAccessUserAgentStringQuirks,IPC::Connection,WebKit::WebProcess,WebKit::WebProcess,void ()(WTF::HashMap<WebCore::RegistrableDomain,WTF::String,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc> &&)>(a3);
        return;
      case 0xBCE:
        if (IPC::Decoder::decode<std::tuple<WebCore::HTTPCookieAcceptPolicy>>(a3) >= 0x100u)
        {

          WebKit::WebProcess::userInterfaceIdiomDidChange();
        }

        return;
      case 0xBCF:

        IPC::handleMessage<Messages::GPUProcess::UserPreferredLanguagesChanged,IPC::Connection,WebKit::GPUProcess,WebKit::GPUProcess,void ()(WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>(a3);
        return;
      default:
        JUMPOUT(0);
    }
  }
}

uint64_t WTF::tryMakeStringImplFromAdaptersInternal<WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>>@<X0>(uint64_t result@<X0>, int a2@<W1>, uint64_t a3@<X2>, _DWORD *a4@<X3>, void *a5@<X8>)
{
  v7 = result;
  if (!a2)
  {
    if (result)
    {
      if (result <= 0x7FFFFFEF)
      {
        result = WTF::tryFastCompactMalloc((2 * result + 20));
        v9 = v13;
        if (!v13)
        {
          goto LABEL_16;
        }

        *v13 = 2;
        v9[1] = v7;
        *(v9 + 1) = v9 + 5;
        v9[4] = 0;
        v12 = a3;
        result = WTF::StringTypeAdapter<WTF::StringImpl *,void>::writeTo<char16_t>(&v12, v9 + 20);
        v11 = v12;
        if (!v12 || (v11 = *(v12 + 4), v11 <= v7))
        {
          v13 = a4;
          result = WTF::StringTypeAdapter<WTF::StringImpl *,void>::writeTo<char16_t>(&v13, v9 + 2 * v11 + 20);
          goto LABEL_16;
        }

        goto LABEL_17;
      }

LABEL_10:
      v9 = 0;
      goto LABEL_16;
    }

LABEL_11:
    v9 = MEMORY[0x1E696EB88];
    atomic_fetch_add_explicit(MEMORY[0x1E696EB88], 2u, memory_order_relaxed);
    goto LABEL_16;
  }

  if (!result)
  {
    goto LABEL_11;
  }

  if ((result & 0x80000000) != 0)
  {
    goto LABEL_10;
  }

  result = WTF::tryFastCompactMalloc((result + 20));
  v9 = v13;
  if (!v13)
  {
LABEL_16:
    *a5 = v9;
    return result;
  }

  *v13 = 2;
  v9[1] = v7;
  *(v9 + 1) = v9 + 5;
  v9[4] = 4;
  v12 = a3;
  result = WTF::StringTypeAdapter<WTF::StringImpl *,void>::writeTo<unsigned char>(&v12, v9 + 20);
  v10 = v12;
  if (!v12 || (v10 = *(v12 + 4), v10 <= v7))
  {
    v13 = a4;
    result = WTF::StringTypeAdapter<WTF::StringImpl *,void>::writeTo<unsigned char>(&v13, v9 + v10 + 20);
    goto LABEL_16;
  }

LABEL_17:
  __break(1u);
  return result;
}

IPC::Decoder *IPC::Decoder::decode<WTF::String>@<X0>(IPC::Decoder *a1@<X0>, _BYTE *a2@<X8>)
{
  result = IPC::ArgumentCoder<WTF::String,void>::decode<IPC::Decoder>(a1, a2);
  if ((a2[8] & 1) == 0)
  {
    return IPC::Decoder::markInvalid(a1);
  }

  return result;
}

uint64_t IPC::ArgumentCoder<WebKit::WebProcessCreationParameters,void>::decode@<X0>(IPC::Decoder *a1@<X0>, _BYTE *a2@<X8>)
{
  v2 = a1;
  v270 = *MEMORY[0x1E69E9840];
  IPC::Decoder::decode<WebKit::AuxiliaryProcessCreationParameters>(&v173, a1);
  v3 = v175;
  if ((v175 & 1) == 0)
  {
    goto LABEL_333;
  }

  while (1)
  {
    IPC::Decoder::decode<WTF::String>(v2, &v171);
    v4 = v3 ^ 1;
    if (((v3 ^ 1) & 1) == 0 && (v172 & 1) == 0)
    {
      v4 = 1;
      IPC::Decoder::addIndexOfDecodingFailure(v2, 1);
    }

    IPC::Decoder::decode<WebKit::SandboxExtensionHandle>(v2, &v169);
    if (((v4 | v170) & 1) == 0)
    {
      IPC::Decoder::addIndexOfDecodingFailure(v2, 2);
      v4 = 1;
    }

    IPC::Decoder::decode<WTF::Vector<WebKit::SandboxExtensionHandle,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(v2, v5, v167);
    if (((v4 | v168) & 1) == 0)
    {
      IPC::Decoder::addIndexOfDecodingFailure(v2, 3);
      v4 = 1;
    }

    IPC::Decoder::decode<WebKit::UserData>(&v165, v2, v6);
    if (((v4 | v166) & 1) == 0)
    {
      IPC::Decoder::addIndexOfDecodingFailure(v2, 4);
      v4 = 1;
    }

    IPC::Decoder::decode<WTF::Vector<WebKit::SandboxExtensionHandle,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(v2, v7, v163);
    if (((v4 | v164) & 1) == 0)
    {
      IPC::Decoder::addIndexOfDecodingFailure(v2, 5);
      v4 = 1;
    }

    IPC::Decoder::decode<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(v2, v161);
    if (((v4 | v162) & 1) == 0)
    {
      IPC::Decoder::addIndexOfDecodingFailure(v2, 6);
      v4 = 1;
    }

    IPC::Decoder::decode<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(v2, v159);
    if (((v4 | v160) & 1) == 0)
    {
      IPC::Decoder::addIndexOfDecodingFailure(v2, 7);
      v4 = 1;
    }

    IPC::Decoder::decode<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(v2, v157);
    if (((v4 | v158) & 1) == 0)
    {
      IPC::Decoder::addIndexOfDecodingFailure(v2, 8);
      v4 = 1;
    }

    IPC::Decoder::decode<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(v2, v155);
    if (((v156 | v4) & 1) == 0)
    {
      IPC::Decoder::addIndexOfDecodingFailure(v2, 9);
      v4 = 1;
    }

    IPC::Decoder::decode<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(v2, v153);
    if (((v154 | v4) & 1) == 0)
    {
      IPC::Decoder::addIndexOfDecodingFailure(v2, 10);
      v4 = 1;
    }

    IPC::Decoder::decode<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(v2, v151);
    if (((v152 | v4) & 1) == 0)
    {
      IPC::Decoder::addIndexOfDecodingFailure(v2, 12);
      v4 = 1;
    }

    IPC::Decoder::decode<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(v2, v149);
    if (((v150 | v4) & 1) == 0)
    {
      IPC::Decoder::addIndexOfDecodingFailure(v2, 13);
      v4 = 1;
    }

    IPC::Decoder::decode<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(v2, v147);
    if (((v148 | v4) & 1) == 0)
    {
      IPC::Decoder::addIndexOfDecodingFailure(v2, 14);
      v4 = 1;
    }

    IPC::Decoder::decode<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(v2, v145);
    if (((v146 | v4) & 1) == 0)
    {
      IPC::Decoder::addIndexOfDecodingFailure(v2, 15);
      v4 = 1;
    }

    IPC::Decoder::decode<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(v2, v143);
    if (((v144 | v4) & 1) == 0)
    {
      IPC::Decoder::addIndexOfDecodingFailure(v2, 16);
      v4 = 1;
    }

    IPC::Decoder::decode<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(v2, v141);
    if (((v142 | v4) & 1) == 0)
    {
      IPC::Decoder::addIndexOfDecodingFailure(v2, 17);
      v4 = 1;
    }

    IPC::Decoder::decode<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(v2, v139);
    if (((v140 | v4) & 1) == 0)
    {
      IPC::Decoder::addIndexOfDecodingFailure(v2, 18);
      v4 = 1;
    }

    IPC::Decoder::decode<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(v2, v137);
    if (((v138 | v4) & 1) == 0)
    {
      IPC::Decoder::addIndexOfDecodingFailure(v2, 19);
      v4 = 1;
    }

    v87 = IPC::Decoder::decode<WebKit::CacheModel>(v2);
    if (((v4 | ((v87 & 0x100) >> 8)) & 1) == 0)
    {
      IPC::Decoder::addIndexOfDecodingFailure(v2, 21);
      v4 = 1;
    }

    v85 = IPC::Decoder::decode<WTF::Markable<double,WTF::MarkableTraits<double>>>(v2);
    v86 = v8;
    if (((v8 | v4) & 1) == 0)
    {
      IPC::Decoder::addIndexOfDecodingFailure(v2, 22);
      v4 = 1;
    }

    v84 = IPC::Decoder::decode<float>(v2);
    if (!(BYTE4(v84) & 1 | v4 & 1))
    {
      IPC::Decoder::addIndexOfDecodingFailure(v2, 23);
      v4 = 1;
    }

    v83 = IPC::Decoder::decode<BOOL>(v2);
    if (((v4 | ((v83 & 0x100) >> 8)) & 1) == 0)
    {
      IPC::Decoder::addIndexOfDecodingFailure(v2, 24);
      v4 = 1;
    }

    v82 = IPC::Decoder::decode<BOOL>(v2);
    if (((v4 | ((v82 & 0x100) >> 8)) & 1) == 0)
    {
      IPC::Decoder::addIndexOfDecodingFailure(v2, 25);
      v4 = 1;
    }

    v81 = IPC::Decoder::decode<BOOL>(v2);
    if (((v4 | ((v81 & 0x100) >> 8)) & 1) == 0)
    {
      IPC::Decoder::addIndexOfDecodingFailure(v2, 26);
      v4 = 1;
    }

    v80 = IPC::Decoder::decode<BOOL>(v2);
    if (((v4 | ((v80 & 0x100) >> 8)) & 1) == 0)
    {
      IPC::Decoder::addIndexOfDecodingFailure(v2, 27);
      v4 = 1;
    }

    v79 = IPC::Decoder::decode<BOOL>(v2);
    if (((v4 | ((v79 & 0x100) >> 8)) & 1) == 0)
    {
      IPC::Decoder::addIndexOfDecodingFailure(v2, 28);
      v4 = 1;
    }

    v78 = IPC::Decoder::decode<BOOL>(v2);
    if (((v4 | ((v78 & 0x100) >> 8)) & 1) == 0)
    {
      IPC::Decoder::addIndexOfDecodingFailure(v2, 29);
      v4 = 1;
    }

    v77 = IPC::Decoder::decode<BOOL>(v2);
    if (((v4 | ((v77 & 0x100) >> 8)) & 1) == 0)
    {
      IPC::Decoder::addIndexOfDecodingFailure(v2, 30);
      v4 = 1;
    }

    v76 = IPC::Decoder::decode<BOOL>(v2);
    if (((v4 | ((v76 & 0x100) >> 8)) & 1) == 0)
    {
      IPC::Decoder::addIndexOfDecodingFailure(v2, 31);
      v4 = 1;
    }

    v75 = IPC::Decoder::decode<BOOL>(v2);
    if (((v4 | ((v75 & 0x100) >> 8)) & 1) == 0)
    {
      IPC::Decoder::addIndexOfDecodingFailure(v2, 32);
      v4 = 1;
    }

    v74 = IPC::Decoder::decode<BOOL>(v2);
    if (((v4 | ((v74 & 0x100) >> 8)) & 1) == 0)
    {
      IPC::Decoder::addIndexOfDecodingFailure(v2, 33);
      v4 = 1;
    }

    v73 = IPC::Decoder::decode<WebKit::AllowsCellularAccess>(v2);
    if (!((v73 > 0xFFu) | v4 & 1))
    {
      IPC::Decoder::addIndexOfDecodingFailure(v2, 34);
      v4 = 1;
    }

    v72 = IPC::Decoder::decode<WTF::OptionSet<WebKit::TextCheckerState>>(v2);
    if (((v4 | ((v72 & 0x100) >> 8)) & 1) == 0)
    {
      IPC::Decoder::addIndexOfDecodingFailure(v2, 38);
      v4 = 1;
    }

    IPC::Decoder::decode<WTF::String>(v2, &v135);
    if (((v136 | v4) & 1) == 0)
    {
      IPC::Decoder::addIndexOfDecodingFailure(v2, 39);
      v4 = 1;
    }

    v71 = IPC::Decoder::decode<float>(v2);
    if (!(BYTE4(v71) & 1 | v4 & 1))
    {
      IPC::Decoder::addIndexOfDecodingFailure(v2, 40);
      v4 = 1;
    }

    v70 = IPC::Decoder::decode<float>(v2);
    if (!(BYTE4(v70) & 1 | v4 & 1))
    {
      IPC::Decoder::addIndexOfDecodingFailure(v2, 41);
      v4 = 1;
    }

    v69 = IPC::Decoder::decode<float>(v2);
    if (!(BYTE4(v69) & 1 | v4 & 1))
    {
      IPC::Decoder::addIndexOfDecodingFailure(v2, 42);
      v4 = 1;
    }

    IPC::Decoder::decode<WTF::String>(v2, &v133);
    if (((v134 | v4) & 1) == 0)
    {
      IPC::Decoder::addIndexOfDecodingFailure(v2, 43);
      v4 = 1;
    }

    IPC::Decoder::decode<WebKit::SandboxExtensionHandle>(v2, &v131);
    if (((v132 | v4) & 1) == 0)
    {
      IPC::Decoder::addIndexOfDecodingFailure(v2, 44);
      v4 = 1;
    }

    v68 = IPC::Decoder::decode<BOOL>(v2);
    if (((v4 | ((v68 & 0x100) >> 8)) & 1) == 0)
    {
      IPC::Decoder::addIndexOfDecodingFailure(v2, 45);
      v4 = 1;
    }

    v67 = IPC::Decoder::decode<BOOL>(v2);
    if (((v4 | ((v67 & 0x100) >> 8)) & 1) == 0)
    {
      IPC::Decoder::addIndexOfDecodingFailure(v2, 46);
      v4 = 1;
    }

    v66 = IPC::Decoder::decode<BOOL>(v2);
    if (((v4 | ((v66 & 0x100) >> 8)) & 1) == 0)
    {
      IPC::Decoder::addIndexOfDecodingFailure(v2, 47);
      v4 = 1;
    }

    IPC::Decoder::decode<WTF::RefPtr<API::Data,WTF::RawPtrTraits<API::Data>,WTF::DefaultRefDerefTraits<API::Data>>>(&v129, v2);
    v65 = v130;
    if (((v130 | v4) & 1) == 0)
    {
      IPC::Decoder::addIndexOfDecodingFailure(v2, 48);
      v4 = 1;
    }

    IPC::Decoder::decode<WTF::HashMap<WTF::String,BOOL,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<BOOL>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>(&v127, v2);
    v64 = v128;
    if (((v128 | v4) & 1) == 0)
    {
      IPC::Decoder::addIndexOfDecodingFailure(v2, 49);
      v4 = 1;
    }

    IPC::Decoder::decode<WTF::RetainPtr<__CFData const*>>(&cf, v2);
    v63 = v126;
    if (((v126 | v4) & 1) == 0)
    {
      IPC::Decoder::addIndexOfDecodingFailure(v2, 50);
      v4 = 1;
    }

    IPC::Decoder::decode<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(v2, v123);
    if (((v124 | v4) & 1) == 0)
    {
      IPC::Decoder::addIndexOfDecodingFailure(v2, 52);
      v4 = 1;
    }

    IPC::Decoder::decode<WebCore::ScreenProperties>(v2, &v119);
    if (((v122 | v4) & 1) == 0)
    {
      IPC::Decoder::addIndexOfDecodingFailure(v2, 53);
      v4 = 1;
    }

    v62 = IPC::Decoder::decode<BOOL>(v2);
    if (((v4 | ((v62 & 0x100) >> 8)) & 1) == 0)
    {
      IPC::Decoder::addIndexOfDecodingFailure(v2, 54);
      v4 = 1;
    }

    IPC::Decoder::decode<std::optional<WebKit::WebProcessDataStoreParameters>>(&v259, v2);
    if (((v269 | v4) & 1) == 0)
    {
      IPC::Decoder::addIndexOfDecodingFailure(v2, 59);
      v4 = 1;
    }

    IPC::Decoder::decode<std::optional<WebKit::SandboxExtensionHandle>>(&v116, v2);
    if (((v118 | v4) & 1) == 0)
    {
      IPC::Decoder::addIndexOfDecodingFailure(v2, 60);
      v4 = 1;
    }

    IPC::Decoder::decode<std::optional<WebKit::SandboxExtensionHandle>>(&v113, v2);
    if (((v115 | v4) & 1) == 0)
    {
      IPC::Decoder::addIndexOfDecodingFailure(v2, 61);
      v4 = 1;
    }

    v61 = IPC::Decoder::decode<BOOL>(v2);
    if (((v4 | ((v61 & 0x100) >> 8)) & 1) == 0)
    {
      IPC::Decoder::addIndexOfDecodingFailure(v2, 63);
      v4 = 1;
    }

    v9 = IPC::Decoder::decode<BOOL>(v2);
    if (((v4 | ((v9 & 0x100) >> 8)) & 1) == 0)
    {
      IPC::Decoder::addIndexOfDecodingFailure(v2, 64);
      v4 = 1;
    }

    v10 = IPC::Decoder::decode<BOOL>(v2);
    if (((v4 | ((v10 & 0x100) >> 8)) & 1) == 0)
    {
      IPC::Decoder::addIndexOfDecodingFailure(v2, 66);
      v4 = 1;
    }

    v3 = IPC::Decoder::decode<BOOL>(v2);
    if (((v4 | ((v3 & 0x100) >> 8)) & 1) == 0)
    {
      IPC::Decoder::addIndexOfDecodingFailure(v2, 67);
      v4 = 1;
    }

    PartyWebsiteDataRemoval = IPC::Decoder::decode<WebCore::FirstPartyWebsiteDataRemovalMode>(v2);
    if (((v4 | ((PartyWebsiteDataRemoval & 0x100) >> 8)) & 1) == 0)
    {
      IPC::Decoder::addIndexOfDecodingFailure(v2, 68);
      v4 = 1;
    }

    v12 = IPC::Decoder::decode<BOOL>(v2);
    if (((v4 | ((v12 & 0x100) >> 8)) & 1) == 0)
    {
      IPC::Decoder::addIndexOfDecodingFailure(v2, 69);
      v4 = 1;
    }

    IPC::Decoder::decode<WTF::HashMap<WebCore::CSSValueKey,WebCore::Color,WTF::DefaultHash<WebCore::CSSValueKey>,WTF::HashTraits<WebCore::CSSValueKey>,WTF::HashTraits<WebCore::Color>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>(&v111, v2);
    v89 = v112;
    if (((v112 | v4) & 1) == 0)
    {
      IPC::Decoder::addIndexOfDecodingFailure(v2, 70);
      v4 = 1;
    }

    IPC::Decoder::decode<WebCore::Color>(v2, &v109);
    if (((v110 | v4) & 1) == 0)
    {
      IPC::Decoder::addIndexOfDecodingFailure(v2, 71);
      v4 = 1;
    }

    IPC::Decoder::decode<WTF::String>(v2, &v107);
    if (((v108 | v4) & 1) == 0)
    {
      IPC::Decoder::addIndexOfDecodingFailure(v2, 72);
      v4 = 1;
    }

    IPC::Decoder::decode<WTF::String>(v2, &v105);
    if (((v106 | v4) & 1) == 0)
    {
      IPC::Decoder::addIndexOfDecodingFailure(v2, 73);
      v4 = 1;
    }

    v59 = IPC::Decoder::decode<WebCore::IntSize>(v2);
    v60 = v13;
    if (((v13 | v4) & 1) == 0)
    {
      IPC::Decoder::addIndexOfDecodingFailure(v2, 82);
      v4 = 1;
    }

    v57 = IPC::Decoder::decode<unsigned long long>(v2);
    v58 = v14;
    if (((v14 | v4) & 1) == 0)
    {
      IPC::Decoder::addIndexOfDecodingFailure(v2, 83);
      v4 = 1;
    }

    IPC::Decoder::decode<WebKit::AccessibilityPreferences>(v2, v103);
    if (((v104 | v4) & 1) == 0)
    {
      IPC::Decoder::addIndexOfDecodingFailure(v2, 84);
      v4 = 1;
    }

    v15 = IPC::Decoder::decode<BOOL>(v2);
    if (((v4 | ((v15 & 0x100) >> 8)) & 1) == 0)
    {
      IPC::Decoder::addIndexOfDecodingFailure(v2, 85);
      v4 = 1;
    }

    IPC::Decoder::decode<WTF::String>(v2, &v101);
    if (((v102 | v4) & 1) == 0)
    {
      IPC::Decoder::addIndexOfDecodingFailure(v2, 91);
      v4 = 1;
    }

    IPC::Decoder::decode<WTF::HashMap<WebCore::RegistrableDomain,WTF::String,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>(v2, &v99);
    if (((v100 | v4) & 1) == 0)
    {
      IPC::Decoder::addIndexOfDecodingFailure(v2, 92);
      v4 = 1;
    }

    IPC::Decoder::decode<WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>(v2, &v97);
    if (((v98 | v4) & 1) == 0)
    {
      IPC::Decoder::addIndexOfDecodingFailure(v2, 93);
      v4 = 1;
    }

    IPC::Decoder::decode<WebKit::ScriptTrackingPrivacyRules>(v2, v95);
    if (((v96 | v4) & 1) == 0)
    {
      IPC::Decoder::addIndexOfDecodingFailure(v2, 94);
      v4 = 1;
    }

    v56 = IPC::Decoder::decode<WTF::Seconds>(v2);
    v17 = v16;
    if (((v16 | v4) & 1) == 0)
    {
      IPC::Decoder::addIndexOfDecodingFailure(v2, 95);
      v4 = 1;
    }

    IPC::Decoder::decode<WTF::Vector<unsigned long long,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(v2, &v92);
    if (((v94 | v4) & 1) == 0)
    {
      IPC::Decoder::addIndexOfDecodingFailure(v2, 96);
      v4 = 1;
    }

    IPC::Decoder::decode<WTF::Vector<std::pair<WTF::String,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(v90, v2);
    if (((v91 | v4) & 1) == 0)
    {
      IPC::Decoder::addIndexOfDecodingFailure(v2, 97);
      v4 = 1;
    }

    v19 = IPC::Decoder::decode<BOOL>(v2);
    if (((v4 | ((v19 & 0x100) >> 8)) & 1) == 0)
    {
      IPC::Decoder::addIndexOfDecodingFailure(v2, 99);
    }

    if (!*v2)
    {
      break;
    }

    if (v175)
    {
      v20 = v173;
      v21 = v174;
      v173 = 0u;
      v174 = 0u;
      v176[0] = v20;
      v176[1] = v21;
      if (v172)
      {
        v22 = v171;
        v171 = 0;
        v177 = v22;
        if (v170)
        {
          v23 = v169;
          v169 = 0;
          v178 = v23;
          if (v168)
          {
            WTF::Vector<WebKit::SandboxExtensionHandle,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(v179, v167);
            if (v166)
            {
              v2 = v165;
              if (v165)
              {
                CFRetain(*(v165 + 8));
              }

              v179[2] = v2;
              if (v164)
              {
                WTF::Vector<WebKit::SandboxExtensionHandle,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(&v180, v163);
                v2 = v87;
                if (v162)
                {
                  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(&v181, v161);
                  if (v160)
                  {
                    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(&v182, v159);
                    if (v158)
                    {
                      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(&v183, v157);
                      if (v156)
                      {
                        WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(&v184, v155);
                        if (v154)
                        {
                          WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(&v185, v153);
                          if (v152)
                          {
                            WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(&v186, v151);
                            if (v150)
                            {
                              WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(&v187, v149);
                              if (v148)
                              {
                                WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(&v188, v147);
                                if (v146)
                                {
                                  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(&v189, v145);
                                  if (v144)
                                  {
                                    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(&v190, v143);
                                    if (v142)
                                    {
                                      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(&v191, v141);
                                      if (v140)
                                      {
                                        WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(&v192, v139);
                                        if (v138)
                                        {
                                          WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(v193, v137);
                                          if ((v87 & 0x100) != 0)
                                          {
                                            v193[16] = v87;
                                            if (v86)
                                            {
                                              v194 = v85;
                                              if ((v84 & 0x100000000) != 0)
                                              {
                                                v195 = v84;
                                                if ((v83 & 0x100) != 0)
                                                {
                                                  v196 = v83;
                                                  if ((v82 & 0x100) != 0)
                                                  {
                                                    v197 = v82;
                                                    if ((v81 & 0x100) != 0)
                                                    {
                                                      v198 = v81;
                                                      if ((v80 & 0x100) != 0)
                                                      {
                                                        v199 = v80;
                                                        if ((v79 & 0x100) != 0)
                                                        {
                                                          v200 = v79;
                                                          if ((v78 & 0x100) != 0)
                                                          {
                                                            v201 = v78;
                                                            if ((v77 & 0x100) != 0)
                                                            {
                                                              v202 = v77;
                                                              if ((v76 & 0x100) != 0)
                                                              {
                                                                v203 = v76;
                                                                if ((v75 & 0x100) != 0)
                                                                {
                                                                  v204 = v75;
                                                                  if ((v74 & 0x100) != 0)
                                                                  {
                                                                    v205 = v74;
                                                                    if (v73 > 0xFFu)
                                                                    {
                                                                      v206 = v73;
                                                                      if ((v72 & 0x100) != 0)
                                                                      {
                                                                        v207 = v72;
                                                                        if (v136)
                                                                        {
                                                                          v24 = v135;
                                                                          v135 = 0;
                                                                          v208 = v24;
                                                                          if ((v71 & 0x100000000) != 0)
                                                                          {
                                                                            v209 = v71;
                                                                            if ((v70 & 0x100000000) != 0)
                                                                            {
                                                                              v210 = v70;
                                                                              if ((v69 & 0x100000000) != 0)
                                                                              {
                                                                                v211 = v69;
                                                                                if (v134)
                                                                                {
                                                                                  v25 = v133;
                                                                                  v133 = 0;
                                                                                  v212 = v25;
                                                                                  if (v132)
                                                                                  {
                                                                                    v26 = v131;
                                                                                    v131 = 0;
                                                                                    v213 = v26;
                                                                                    if ((v68 & 0x100) != 0)
                                                                                    {
                                                                                      v214 = v68;
                                                                                      if ((v67 & 0x100) != 0)
                                                                                      {
                                                                                        v215 = v67;
                                                                                        if ((v66 & 0x100) != 0)
                                                                                        {
                                                                                          v216 = v66;
                                                                                          if (v65)
                                                                                          {
                                                                                            v27 = v129;
                                                                                            v129 = 0;
                                                                                            v217 = v27;
                                                                                            if (v64)
                                                                                            {
                                                                                              v28 = v127;
                                                                                              v127 = 0;
                                                                                              v218 = v28;
                                                                                              if (v63)
                                                                                              {
                                                                                                v29 = cf;
                                                                                                cf = 0;
                                                                                                v219 = v29;
                                                                                                if (v124)
                                                                                                {
                                                                                                  v2 = v176;
                                                                                                  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(v220, v123);
                                                                                                  if (v122)
                                                                                                  {
                                                                                                    v220[4] = v119;
                                                                                                    v30 = v120;
                                                                                                    v120 = 0;
                                                                                                    v221 = v30;
                                                                                                    v222 = v121;
                                                                                                    if ((v62 & 0x100) != 0)
                                                                                                    {
                                                                                                      v223 = v62;
                                                                                                      if (v269)
                                                                                                      {
                                                                                                        LOBYTE(v224) = 0;
                                                                                                        v233 = 0;
                                                                                                        if (v268 == 1)
                                                                                                        {
                                                                                                          v31 = v260;
                                                                                                          v260 = 0u;
                                                                                                          v225 = v31;
                                                                                                          v32 = v261;
                                                                                                          v261 = 0;
                                                                                                          v224 = v259;
                                                                                                          v226 = v32;
                                                                                                          v227 = v262;
                                                                                                          v33 = v263;
                                                                                                          v263 = 0u;
                                                                                                          v228 = v33;
                                                                                                          v229 = v264;
                                                                                                          v34 = v265;
                                                                                                          v265 = 0u;
                                                                                                          v230 = v34;
                                                                                                          v35 = v266;
                                                                                                          v266 = 0;
                                                                                                          v231 = v35;
                                                                                                          v232 = v267;
                                                                                                          v233 = 1;
                                                                                                        }

                                                                                                        if (v118)
                                                                                                        {
                                                                                                          LOBYTE(v234) = 0;
                                                                                                          v235 = 0;
                                                                                                          if (v117 == 1)
                                                                                                          {
                                                                                                            v54 = v116;
                                                                                                            v116 = 0;
                                                                                                            v234 = v54;
                                                                                                            v235 = 1;
                                                                                                          }

                                                                                                          if (v115)
                                                                                                          {
                                                                                                            LOBYTE(v236) = 0;
                                                                                                            v237 = 0;
                                                                                                            if (v114 == 1)
                                                                                                            {
                                                                                                              v55 = v113;
                                                                                                              v113 = 0;
                                                                                                              v236 = v55;
                                                                                                              v237 = 1;
                                                                                                            }

                                                                                                            if ((v61 & 0x100) != 0)
                                                                                                            {
                                                                                                              v238 = v61;
                                                                                                              if ((v9 & 0x100) != 0)
                                                                                                              {
                                                                                                                v239 = v9;
                                                                                                                if ((v10 & 0x100) != 0)
                                                                                                                {
                                                                                                                  v240 = v10;
                                                                                                                  if ((v3 & 0x100) != 0)
                                                                                                                  {
                                                                                                                    v241 = v3;
                                                                                                                    if ((PartyWebsiteDataRemoval & 0x100) != 0)
                                                                                                                    {
                                                                                                                      v242 = PartyWebsiteDataRemoval;
                                                                                                                      if ((v12 & 0x100) != 0)
                                                                                                                      {
                                                                                                                        v243 = v12;
                                                                                                                        v3 = v89;
                                                                                                                        if (v89)
                                                                                                                        {
                                                                                                                          v36 = v111;
                                                                                                                          v111 = 0;
                                                                                                                          v244 = v36;
                                                                                                                          if (v110)
                                                                                                                          {
                                                                                                                            v37 = v109;
                                                                                                                            v109 = 0;
                                                                                                                            v245 = v37;
                                                                                                                            if (v108)
                                                                                                                            {
                                                                                                                              v38 = v107;
                                                                                                                              v107 = 0;
                                                                                                                              v246 = v38;
                                                                                                                              if (v106)
                                                                                                                              {
                                                                                                                                v39 = v105;
                                                                                                                                v105 = 0;
                                                                                                                                v247 = v39;
                                                                                                                                if (v60)
                                                                                                                                {
                                                                                                                                  v248 = v59;
                                                                                                                                  if (v58)
                                                                                                                                  {
                                                                                                                                    v249 = v57;
                                                                                                                                    if (v104)
                                                                                                                                    {
                                                                                                                                      *&v250[15] = *&v103[15];
                                                                                                                                      *v250 = *v103;
                                                                                                                                      if ((v15 & 0x100) != 0)
                                                                                                                                      {
                                                                                                                                        v251 = v15;
                                                                                                                                        if (v102)
                                                                                                                                        {
                                                                                                                                          v40 = v101;
                                                                                                                                          v101 = 0;
                                                                                                                                          v252 = v40;
                                                                                                                                          if (v100)
                                                                                                                                          {
                                                                                                                                            v41 = v99;
                                                                                                                                            v99 = 0;
                                                                                                                                            v253 = v41;
                                                                                                                                            if (v98)
                                                                                                                                            {
                                                                                                                                              v42 = v97;
                                                                                                                                              v97 = 0;
                                                                                                                                              v254 = v42;
                                                                                                                                              if (v96)
                                                                                                                                              {
                                                                                                                                                WebKit::ScriptTrackingPrivacyRules::ScriptTrackingPrivacyRules(v255, v95);
                                                                                                                                                if (v17)
                                                                                                                                                {
                                                                                                                                                  v255[8] = v56;
                                                                                                                                                  if (v94)
                                                                                                                                                  {
                                                                                                                                                    WTF::Vector<unsigned long long,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(&v256, &v92);
                                                                                                                                                    if (v91)
                                                                                                                                                    {
                                                                                                                                                      WTF::Vector<std::pair<WTF::String,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(&v257, v90);
                                                                                                                                                      if ((v19 & 0x100) != 0)
                                                                                                                                                      {
                                                                                                                                                        v258 = v19;
                                                                                                                                                        *(WebKit::WebProcessCreationParameters::WebProcessCreationParameters(a2, v176) + 808) = 1;
                                                                                                                                                        WebKit::WebProcessCreationParameters::~WebProcessCreationParameters(v176, v43);
                                                                                                                                                        goto LABEL_233;
                                                                                                                                                      }
                                                                                                                                                    }
                                                                                                                                                  }
                                                                                                                                                }
                                                                                                                                              }
                                                                                                                                            }
                                                                                                                                          }
                                                                                                                                        }
                                                                                                                                      }
                                                                                                                                    }
                                                                                                                                  }
                                                                                                                                }
                                                                                                                              }
                                                                                                                            }
                                                                                                                          }
                                                                                                                        }
                                                                                                                      }
                                                                                                                    }
                                                                                                                  }
                                                                                                                }
                                                                                                              }
                                                                                                            }
                                                                                                          }
                                                                                                        }
                                                                                                      }
                                                                                                    }
                                                                                                  }
                                                                                                }
                                                                                              }
                                                                                            }
                                                                                          }
                                                                                        }
                                                                                      }
                                                                                    }
                                                                                  }
                                                                                }
                                                                              }
                                                                            }
                                                                          }
                                                                        }
                                                                      }
                                                                    }
                                                                  }
                                                                }
                                                              }
                                                            }
                                                          }
                                                        }
                                                      }
                                                    }
                                                  }
                                                }
                                              }
                                            }
                                          }
                                        }
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }

    __break(1u);
LABEL_333:
    IPC::Decoder::addIndexOfDecodingFailure(v2, 0);
  }

  *a2 = 0;
  a2[808] = 0;
  v3 = v89;
LABEL_233:
  if (v91 == 1)
  {
    WTF::Vector<std::pair<WTF::String,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v90, v18);
  }

  if (v94 == 1)
  {
    v44 = v92;
    if (v92)
    {
      v92 = 0;
      v93 = 0;
      WTF::fastFree(v44, v18);
    }
  }

  std::optional<WebKit::ScriptTrackingPrivacyRules>::~optional(v95, v18);
  if (v98 == 1 && v97)
  {
    WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v97, v45);
  }

  if (v100 == 1 && v99)
  {
    WTF::HashTable<WebCore::RegistrableDomain,WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::String>>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashMap<WebCore::RegistrableDomain,WTF::String,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::deallocateTable(v99, v45);
  }

  if (v102 == 1)
  {
    v46 = v101;
    v101 = 0;
    if (v46)
    {
      if (atomic_fetch_add_explicit(v46, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v46, v45);
      }
    }
  }

  if (v106 == 1)
  {
    v47 = v105;
    v105 = 0;
    if (v47)
    {
      if (atomic_fetch_add_explicit(v47, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v47, v45);
      }
    }
  }

  if (v108 == 1)
  {
    v48 = v107;
    v107 = 0;
    if (v48)
    {
      if (atomic_fetch_add_explicit(v48, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v48, v45);
      }
    }
  }

  std::optional<WebCore::Color>::~optional(&v109, v45);
  if (v3 && v111)
  {
    WTF::HashTable<WebCore::CSSValueKey,WTF::KeyValuePair<WebCore::CSSValueKey,WebCore::Color>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::CSSValueKey,WebCore::Color>>,WTF::DefaultHash<WebCore::CSSValueKey>,WTF::HashMap<WebCore::CSSValueKey,WebCore::Color,WTF::DefaultHash<WebCore::CSSValueKey>,WTF::HashTraits<WebCore::CSSValueKey>,WTF::HashTraits<WebCore::Color>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::CSSValueKey>,WTF::FastMalloc>::deallocateTable(v111, v49);
  }

  if (v115 == 1 && v114 == 1)
  {
    WebKit::SandboxExtensionHandle::~SandboxExtensionHandle(&v113);
  }

  if (v118 == 1 && v117 == 1)
  {
    WebKit::SandboxExtensionHandle::~SandboxExtensionHandle(&v116);
  }

  if (v269 == 1 && v268 == 1)
  {
    WebKit::WebProcessDataStoreParameters::~WebProcessDataStoreParameters(&v259);
  }

  if (v122 == 1 && v120)
  {
    WTF::HashTable<unsigned int,WTF::KeyValuePair<unsigned int,WebCore::ScreenData>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<unsigned int,WebCore::ScreenData>>,WTF::DefaultHash<unsigned int>,WTF::HashMap<unsigned int,WebCore::ScreenData,WTF::DefaultHash<unsigned int>,WTF::HashTraits<unsigned int>,WTF::HashTraits<WebCore::ScreenData>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<unsigned int>,WTF::FastMalloc>::deallocateTable(v120, v49);
  }

  if (v124 == 1)
  {
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v123, v49);
  }

  if (v126 == 1 && cf)
  {
    CFRelease(cf);
  }

  if (v128 == 1 && v127)
  {
    WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,Inspector::SupplementalBackendDispatcher *>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,Inspector::SupplementalBackendDispatcher *>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,Inspector::SupplementalBackendDispatcher *,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<Inspector::SupplementalBackendDispatcher *>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v127, v49);
  }

  if (v130 == 1 && v129)
  {
    CFRelease(*(v129 + 8));
  }

  if (v132 == 1)
  {
    WebKit::SandboxExtensionHandle::~SandboxExtensionHandle(&v131);
  }

  if (v134 == 1)
  {
    v50 = v133;
    v133 = 0;
    if (v50)
    {
      if (atomic_fetch_add_explicit(v50, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v50, v49);
      }
    }
  }

  if (v136 == 1)
  {
    v51 = v135;
    v135 = 0;
    if (v51)
    {
      if (atomic_fetch_add_explicit(v51, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v51, v49);
      }
    }
  }

  if (v138 == 1)
  {
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v137, v49);
  }

  if (v140 == 1)
  {
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v139, v49);
  }

  if (v142 == 1)
  {
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v141, v49);
  }

  if (v144 == 1)
  {
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v143, v49);
  }

  if (v146 == 1)
  {
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v145, v49);
  }

  if (v148 == 1)
  {
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v147, v49);
  }

  if (v150 == 1)
  {
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v149, v49);
  }

  if (v152 == 1)
  {
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v151, v49);
  }

  if (v154 == 1)
  {
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v153, v49);
  }

  if (v156 == 1)
  {
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v155, v49);
  }

  if (v158 == 1)
  {
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v157, v49);
  }

  if (v160 == 1)
  {
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v159, v49);
  }

  if (v162 == 1)
  {
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v161, v49);
  }

  if (v164 == 1)
  {
    WTF::Vector<WebKit::SandboxExtensionHandle,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v163, v49);
  }

  if (v166 == 1 && v165)
  {
    CFRelease(*(v165 + 8));
  }

  if (v168 == 1)
  {
    WTF::Vector<WebKit::SandboxExtensionHandle,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v167, v49);
  }

  if (v170 == 1)
  {
    WebKit::SandboxExtensionHandle::~SandboxExtensionHandle(&v169);
  }

  if (v172 == 1)
  {
    v52 = v171;
    v171 = 0;
    if (v52)
    {
      if (atomic_fetch_add_explicit(v52, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v52, v49);
      }
    }
  }

  return std::optional<WebKit::AuxiliaryProcessCreationParameters>::~optional(&v173, v49);
}

void sub_19D5B3450(_Unwind_Exception *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34, uint64_t a35, char a36, WTF *a37, int a38, int a39, char a40, int a41, char a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, WTF::StringImpl **a51, char a52, WTF::StringImpl **a53, char a54, WTF::StringImpl *a55, char a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, WTF::StringImpl *a61, char a62, WTF::StringImpl *a63)
{
  WTF::Vector<WebKit::SandboxExtensionHandle,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&STACK[0x490], a2);
  WebKit::SandboxExtensionHandle::~SandboxExtensionHandle(&STACK[0x488]);
  v78 = STACK[0x480];
  STACK[0x480] = 0;
  if (v78 && atomic_fetch_add_explicit(v78, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v78, v77);
  }

  WebKit::AuxiliaryProcessCreationParameters::~AuxiliaryProcessCreationParameters(&STACK[0x460], v77);
  if (a36 == 1)
  {
    WTF::Vector<std::pair<WTF::String,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&a34, v79);
  }

  if (a40 == 1)
  {
    v80 = a37;
    if (a37)
    {
      a37 = 0;
      a38 = 0;
      WTF::fastFree(v80, v79);
    }
  }

  std::optional<WebKit::ScriptTrackingPrivacyRules>::~optional(&a42, v79);
  if (a52 == 1 && a51)
  {
    WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(a51, v81);
  }

  if (a54 == 1 && a53)
  {
    WTF::HashTable<WebCore::RegistrableDomain,WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::String>>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashMap<WebCore::RegistrableDomain,WTF::String,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::deallocateTable(a53, v81);
  }

  if (a56 == 1)
  {
    v82 = a55;
    a55 = 0;
    if (v82)
    {
      if (atomic_fetch_add_explicit(v82, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v82, v81);
      }
    }
  }

  if (a62 == 1)
  {
    v83 = a61;
    a61 = 0;
    if (v83)
    {
      if (atomic_fetch_add_explicit(v83, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v83, v81);
      }
    }
  }

  if (a64 == 1)
  {
    v84 = a63;
    a63 = 0;
    if (v84)
    {
      if (atomic_fetch_add_explicit(v84, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v84, v81);
      }
    }
  }

  v85 = a69;
  std::optional<WebCore::Color>::~optional(&a66, v81);
  if ((v85 & 1) != 0 && a68)
  {
    WTF::HashTable<WebCore::CSSValueKey,WTF::KeyValuePair<WebCore::CSSValueKey,WebCore::Color>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::CSSValueKey,WebCore::Color>>,WTF::DefaultHash<WebCore::CSSValueKey>,WTF::HashMap<WebCore::CSSValueKey,WebCore::Color,WTF::DefaultHash<WebCore::CSSValueKey>,WTF::HashTraits<WebCore::CSSValueKey>,WTF::HashTraits<WebCore::Color>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::CSSValueKey>,WTF::FastMalloc>::deallocateTable(a68, v86);
  }

  if (a72 == 1 && a71 == 1)
  {
    WebKit::SandboxExtensionHandle::~SandboxExtensionHandle(&a70);
  }

  if (a75 == 1 && a74 == 1)
  {
    WebKit::SandboxExtensionHandle::~SandboxExtensionHandle(&a73);
  }

  if (*(v75 - 112) == 1 && *(v75 - 120) == 1)
  {
    WebKit::WebProcessDataStoreParameters::~WebProcessDataStoreParameters((v75 - 216));
  }

  if (LOBYTE(STACK[0x218]) == 1 && STACK[0x208])
  {
    WTF::HashTable<unsigned int,WTF::KeyValuePair<unsigned int,WebCore::ScreenData>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<unsigned int,WebCore::ScreenData>>,WTF::DefaultHash<unsigned int>,WTF::HashMap<unsigned int,WebCore::ScreenData,WTF::DefaultHash<unsigned int>,WTF::HashTraits<unsigned int>,WTF::HashTraits<WebCore::ScreenData>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<unsigned int>,WTF::FastMalloc>::deallocateTable(STACK[0x208], v86);
  }

  if (LOBYTE(STACK[0x230]) == 1)
  {
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&STACK[0x220], v86);
  }

  if ((STACK[0x240] & 1) != 0 && STACK[0x238])
  {
    CFRelease(STACK[0x238]);
  }

  if ((STACK[0x250] & 1) != 0 && STACK[0x248])
  {
    WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,Inspector::SupplementalBackendDispatcher *>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,Inspector::SupplementalBackendDispatcher *>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,Inspector::SupplementalBackendDispatcher *,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<Inspector::SupplementalBackendDispatcher *>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(STACK[0x248], v86);
  }

  if ((STACK[0x260] & 1) != 0 && STACK[0x258])
  {
    CFRelease(*(STACK[0x258] + 8));
  }

  if (LOBYTE(STACK[0x270]) == 1)
  {
    WebKit::SandboxExtensionHandle::~SandboxExtensionHandle(&STACK[0x268]);
  }

  if (LOBYTE(STACK[0x280]) == 1)
  {
    v87 = STACK[0x278];
    STACK[0x278] = 0;
    if (v87)
    {
      if (atomic_fetch_add_explicit(v87, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v87, v86);
      }
    }
  }

  if (LOBYTE(STACK[0x290]) == 1)
  {
    v88 = STACK[0x288];
    STACK[0x288] = 0;
    if (v88)
    {
      if (atomic_fetch_add_explicit(v88, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v88, v86);
      }
    }
  }

  if (LOBYTE(STACK[0x2A8]) == 1)
  {
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&STACK[0x298], v86);
  }

  if (LOBYTE(STACK[0x2C0]) == 1)
  {
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&STACK[0x2B0], v86);
  }

  if (LOBYTE(STACK[0x2D8]) == 1)
  {
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&STACK[0x2C8], v86);
  }

  if (LOBYTE(STACK[0x2F0]) == 1)
  {
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&STACK[0x2E0], v86);
  }

  if (LOBYTE(STACK[0x308]) == 1)
  {
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&STACK[0x2F8], v86);
  }

  if (LOBYTE(STACK[0x320]) == 1)
  {
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&STACK[0x310], v86);
  }

  if (LOBYTE(STACK[0x338]) == 1)
  {
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&STACK[0x328], v86);
  }

  if (LOBYTE(STACK[0x350]) == 1)
  {
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&STACK[0x340], v86);
  }

  if (LOBYTE(STACK[0x368]) == 1)
  {
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&STACK[0x358], v86);
  }

  if (LOBYTE(STACK[0x380]) == 1)
  {
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&STACK[0x370], v86);
  }

  if (LOBYTE(STACK[0x398]) == 1)
  {
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&STACK[0x388], v86);
  }

  if (LOBYTE(STACK[0x3B0]) == 1)
  {
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&STACK[0x3A0], v86);
  }

  if (LOBYTE(STACK[0x3C8]) == 1)
  {
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&STACK[0x3B8], v86);
  }

  if (LOBYTE(STACK[0x3E0]) == 1)
  {
    WTF::Vector<WebKit::SandboxExtensionHandle,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&STACK[0x3D0], v86);
  }

  if ((STACK[0x3F0] & 1) != 0 && STACK[0x3E8])
  {
    CFRelease(*(STACK[0x3E8] + 8));
  }

  if (LOBYTE(STACK[0x408]) == 1)
  {
    WTF::Vector<WebKit::SandboxExtensionHandle,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&STACK[0x3F8], v86);
  }

  if (LOBYTE(STACK[0x418]) == 1)
  {
    WebKit::SandboxExtensionHandle::~SandboxExtensionHandle(&STACK[0x410]);
  }

  if (LOBYTE(STACK[0x428]) == 1)
  {
    v89 = STACK[0x420];
    STACK[0x420] = 0;
    if (v89)
    {
      if (atomic_fetch_add_explicit(v89, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v89, v86);
      }
    }
  }

  std::optional<WebKit::AuxiliaryProcessCreationParameters>::~optional(&STACK[0x430], v86);
  _Unwind_Resume(a1);
}

uint64_t *WebKit::WebsiteDataStore::resolvedContainerCachesNetworkingDirectory@<X0>(uint64_t *this@<X0>, WTF::StringImpl *a2@<X1>, atomic_uint **a3@<X8>)
{
  v4 = this[33];
  if (!v4)
  {
    v5 = this;
    if (this[3] <= -2)
    {
      v4 = *MEMORY[0x1E696EBA8];
      if (!*MEMORY[0x1E696EBA8])
      {
        this[33] = 0;
        goto LABEL_22;
      }

      atomic_fetch_add_explicit(v4, 2u, memory_order_relaxed);
      this = this[33];
      v5[33] = v4;
      if (!this)
      {
        goto LABEL_2;
      }
    }

    else
    {
      WTF::StringImpl::createWithoutCopyingNonEmpty();
      v6 = v15;
      v13 = v15;
      WebKit::WebsiteDataStore::cacheDirectoryInContainerOrHomeDirectory(&v13, &v14);
      if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v6, v7);
      }

      if (v14)
      {
        v8 = v14[1];
        v9 = *(v14 + 1) | (((*(v14 + 4) >> 2) & 1) << 32);
      }

      else
      {
        v8 = 0;
        v9 = 0x100000000;
      }

      WebKit::resolveAndCreateReadWriteDirectoryForSandboxExtension(v8, v9, &v15);
      v10 = v15;
      v15 = 0;
      v11 = v5[33];
      v5[33] = v10;
      if (v11)
      {
        if (atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v11, a2);
        }

        v12 = v15;
        v15 = 0;
        if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v12, a2);
        }
      }

      this = v14;
      v14 = 0;
      if (!this)
      {
LABEL_21:
        v4 = v5[33];
        if (!v4)
        {
          goto LABEL_22;
        }

        goto LABEL_2;
      }
    }

    if (atomic_fetch_add_explicit(this, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      this = WTF::StringImpl::destroy(this, a2);
    }

    goto LABEL_21;
  }

LABEL_2:
  atomic_fetch_add_explicit(v4, 2u, memory_order_relaxed);
LABEL_22:
  *a3 = v4;
  return this;
}

void sub_19D5B3FE0(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11)
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

uint64_t WebKit::WebsiteDataStore::parentBundleDirectory@<X0>(uint64_t this@<X0>, atomic_uint **a2@<X8>)
{
  if (*(this + 24) > -2)
  {
    [objc_msgSend(objc_msgSend(MEMORY[0x1E696AAE8] "mainBundle")];

    JUMPOUT(0x19EB02040);
  }

  v3 = *MEMORY[0x1E696EBA8];
  if (*MEMORY[0x1E696EBA8])
  {
    atomic_fetch_add_explicit(v3, 2u, memory_order_relaxed);
  }

  *a2 = v3;
  return this;
}

void IPC::handleMessageAsync<Messages::WebProcess::InitializeWebProcess,IPC::Connection,WebKit::WebProcess,WebKit::WebProcess,void ()(WebKit::WebProcessCreationParameters &&,WTF::CompletionHandler<void ()(WebCore::ProcessIdentity)> &&)>(WTF::ThreadSafeWeakPtrControlBlock **a1, IPC::Decoder *a2, uint64_t a3)
{
  v16 = *MEMORY[0x1E69E9840];
  IPC::Decoder::decode<std::tuple<WebKit::WebProcessCreationParameters>>(v14, a2);
  if (v15 == 1)
  {
    v7 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
    if (v6)
    {
      v8 = v7;
LABEL_4:
      v9 = *a1;
      if ((*a1 & 1) == 0)
      {
        WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
        goto LABEL_6;
      }

      while (1)
      {
        v12 = v9;
        atomic_compare_exchange_strong_explicit(a1, &v12, v9 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v12 != v9)
        {
          goto LABEL_4;
        }

LABEL_6:
        v10 = WTF::fastMalloc(0x18);
        *v10 = &unk_1F10F7B58;
        v10[1] = v8;
        v10[2] = a1;
        v13 = v10;
        v9 = v15;
        if (v15)
        {
          break;
        }

        __break(1u);
      }

      WebKit::WebProcess::initializeWebProcess(a3, v14, &v13);
      v11 = v13;
      v13 = 0;
      if (v11)
      {
        (*(*v11 + 8))(v11);
      }
    }
  }

  if (v15 == 1)
  {
    WebKit::WebProcessCreationParameters::~WebProcessCreationParameters(v14, v6);
  }
}

void WebKit::SandboxExtension::createHandleForTemporaryFile(WebKit::SandboxExtensionImpl *a1@<X0>, WebKit::SandboxExtensionImpl *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v33[1] = a1;
  v33[2] = a2;
  v33[0] = 0;
  v32 = 1024;
  v31 = 1024;
  v30 = WTF::fastMalloc(0x400);
  if (confstr(65537, v30, 0x400uLL))
  {
    v7 = 0;
    while (*(v30 + v7))
    {
      if (v32 == ++v7)
      {
        __break(1u);
        break;
      }
    }

    v32 = v7;
    WTF::StringView::utf8();
    v9 = v25[0];
    if (v25[0])
    {
      v10 = *(v25[0] + 1);
      if (v10)
      {
        v11 = v32;
        v12 = v10 + v32;
        if (v12 > v31)
        {
          v13 = v31 + (v31 >> 1);
          if (v13 <= v31 + 1)
          {
            v13 = v31 + 1;
          }

          if (v13 <= v12)
          {
            v13 = v10 + v32;
          }

          if (v13 <= 0x10)
          {
            v14 = 16;
          }

          else
          {
            v14 = v13;
          }

          WTF::Vector<WebCore::ContactProperty,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(&v30, v14);
          v11 = v32;
        }

        if (v12 < v11)
        {
          __break(0xC471u);
          return;
        }

        memcpy(v30 + v11, v25[0] + 16, v10);
        v32 = v12;
        v9 = v25[0];
        v25[0] = 0;
      }

      else
      {
        v25[0] = 0;
      }

      if (*v9 == 1)
      {
        WTF::fastFree(v9, v8);
      }

      else
      {
        --*v9;
      }
    }

    WTF::String::fromUTF8();
    if (v29)
    {
      WTF::FileSystemImpl::fileSystemRepresentation(&v27, &v29, v6);
      LOBYTE(v25[0]) = 0;
      v26 = 0;
      WebKit::SandboxExtensionImpl::create(a3, v25, &v28);
      v16 = v33[0];
      v33[0] = v28;
      if (v16)
      {
        WebKit::SandboxExtensionImpl::~SandboxExtensionImpl(v16);
        bmalloc::api::tzoneFree(v23, v24);
      }

      v17 = v27;
      v27 = 0;
      if (v17)
      {
        if (*v17 == 1)
        {
          WTF::fastFree(v17, v15);
        }

        else
        {
          --*v17;
        }
      }

      v18 = v33[0];
      if (v33[0])
      {
        v33[0] = 0;
        v19 = v29;
        v29 = 0;
        *a4 = v18;
        *(a4 + 8) = v19;
        *(a4 + 16) = 1;
        v25[0] = 0;
        v25[1] = 0;
        WebKit::SandboxExtensionHandle::~SandboxExtensionHandle(v25);
LABEL_35:
        v21 = v29;
        v29 = 0;
        if (v21 && atomic_fetch_add_explicit(v21, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v21, v6);
        }

        goto LABEL_38;
      }

      WTF::String::utf8();
      WTFLogAlways();
      v20 = v25[0];
      v25[0] = 0;
      if (v20)
      {
        if (*v20 == 1)
        {
          WTF::fastFree(v20, v6);
        }

        else
        {
          --*v20;
        }
      }
    }

    *a4 = 0;
    *(a4 + 16) = 0;
    goto LABEL_35;
  }

  *a4 = 0;
  *(a4 + 16) = 0;
LABEL_38:
  v22 = v30;
  if (v30)
  {
    v30 = 0;
    v31 = 0;
    WTF::fastFree(v22, v6);
  }

  WebKit::SandboxExtensionHandle::~SandboxExtensionHandle(v33);
}

void sub_19D5B44A0(_Unwind_Exception *a1, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, WTF *a17, uint64_t a18, WTF::StringImpl *a19, WTF *a20, int a21)
{
  if (a11)
  {
    if (*a11 == 1)
    {
      WTF::fastFree(a11, a2);
    }

    else
    {
      --*a11;
    }
  }

  if (a19 && atomic_fetch_add_explicit(a19, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a19, a2);
  }

  if (a20)
  {
    WTF::fastFree(a20, a2);
  }

  WebKit::SandboxExtensionHandle::~SandboxExtensionHandle((v21 - 72));
  _Unwind_Resume(a1);
}

WTF::StringImpl **IPC::Decoder::decode<WebKit::AuxiliaryProcessCreationParameters>(uint64_t a1, IPC::Decoder *a2)
{
  IPC::Decoder::decode<WTF::String>(a2, &v29);
  IPC::Decoder::decode<WTF::String>(a2, &v27);
  result = IPC::Decoder::decode<WTF::String>(a2, &v25);
  v6 = *(a2 + 2);
  v7 = *a2;
  if (*(a2 + 1) <= &v6[-*a2])
  {
    IPC::Decoder::markInvalid(a2);
    goto LABEL_46;
  }

  *(a2 + 2) = v6 + 1;
  if (!v6)
  {
LABEL_46:
    IPC::Decoder::markInvalid(a2);
    goto LABEL_47;
  }

  v8 = *v6;
  if (v8 >= 2)
  {
LABEL_47:
    IPC::Decoder::markInvalid(a2);
LABEL_48:
    LOBYTE(v23) = 0;
    v24 = 0;
    result = IPC::Decoder::markInvalid(a2);
    if (*a2)
    {
      v9 = 0;
      goto LABEL_8;
    }

    v17 = 0;
    *a1 = 0;
    *(a1 + 32) = 0;
    goto LABEL_17;
  }

  if (v8)
  {
    IPC::Decoder::decode<WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>(v21, a2);
    if (LOBYTE(v21[1]) == 1)
    {
      v18 = WTF::fastMalloc(8);
      *v18 = 0;
      v19 = v21[0];
      v21[0] = 0;
      *v18 = v19;
      v31 = 0;
      v23 = v18;
      v24 = 1;
      result = std::unique_ptr<WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>::~unique_ptr[abi:sn200100](&v31, v20);
      if (v21[1])
      {
        result = v21[0];
        if (v21[0])
        {
          goto LABEL_44;
        }
      }

      goto LABEL_41;
    }

    goto LABEL_48;
  }

  v23 = 0;
  v24 = 1;
  while (1)
  {
    if (!v7)
    {
      v17 = 0;
      *a1 = 0;
      *(a1 + 32) = 0;
      goto LABEL_16;
    }

    v9 = 1;
LABEL_8:
    if (v30)
    {
      v10 = v29;
      v29 = 0;
      if (v28)
      {
        v11 = v27;
        v27 = 0;
        if (v26)
        {
          v12 = v25;
          v25 = 0;
          if (v9)
          {
            break;
          }
        }
      }
    }

    __break(1u);
LABEL_44:
    result = WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(result, v5);
LABEL_41:
    v7 = *a2;
  }

  v13 = v23;
  v23 = 0;
  *a1 = v10;
  *(a1 + 8) = v11;
  *v21 = 0u;
  *v22 = 0u;
  *(a1 + 16) = v12;
  *(a1 + 24) = v13;
  *(a1 + 32) = 1;
  std::unique_ptr<WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>::~unique_ptr[abi:sn200100](&v22[1], v5);
  v14 = v22[0];
  v22[0] = 0;
  if (v14 && atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v14, v5);
  }

  v15 = v21[1];
  v21[1] = 0;
  if (v15 && atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v15, v5);
  }

  v16 = v21[0];
  v21[0] = 0;
  if (v16 && atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v16, v5);
  }

  v17 = 1;
LABEL_16:
  result = std::unique_ptr<WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>::~unique_ptr[abi:sn200100](&v23, v5);
LABEL_17:
  if (v26 == 1)
  {
    result = v25;
    v25 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        result = WTF::StringImpl::destroy(result, v5);
      }
    }
  }

  if (v28 == 1)
  {
    result = v27;
    v27 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        result = WTF::StringImpl::destroy(result, v5);
      }
    }
  }

  if (v30 == 1)
  {
    result = v29;
    v29 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        result = WTF::StringImpl::destroy(result, v5);
      }
    }
  }

  if ((v17 & 1) == 0)
  {
    return IPC::Decoder::markInvalid(a2);
  }

  return result;
}

void sub_19D5B4848(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl **a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, WTF::StringImpl *a16, char a17, WTF::StringImpl *a18, char a19)
{
  if (a10 == 1 && a9)
  {
    WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(a9, a2);
  }

  if ((a17 & 1) != 0 && a16 && atomic_fetch_add_explicit(a16, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a16, a2);
  }

  if (a19 == 1 && a18 && atomic_fetch_add_explicit(a18, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a18, a2);
  }

  if (*(v19 - 48) == 1)
  {
    v21 = *(v19 - 56);
    *(v19 - 56) = 0;
    if (v21)
    {
      if (atomic_fetch_add_explicit(v21, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v21, a2);
      }
    }
  }

  _Unwind_Resume(exception_object);
}

void IPC::ArgumentCoder<std::tuple<WebKit::WebProcessCreationParameters>,void>::decode<IPC::Decoder>(_BYTE *a1, IPC::Decoder *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  IPC::Decoder::decode<WebKit::WebProcessCreationParameters>(v5, a2);
  if (v6 == 1)
  {
    WebKit::WebProcessCreationParameters::WebProcessCreationParameters(a1, v5);
    v4 = v6;
    a1[808] = 1;
    if (v4)
    {
      WebKit::WebProcessCreationParameters::~WebProcessCreationParameters(v5, v3);
    }
  }

  else
  {
    *a1 = 0;
    a1[808] = 0;
  }
}

uint64_t WTF::String::fromUTF8(WTF::String *this, const char *a2)
{
  if (this)
  {
    strlen(this);
  }

  return WTF::String::fromUTF8();
}

void WebKit::NetworkSessionCreationParameters::~NetworkSessionCreationParameters(WebKit::SandboxExtensionImpl **this)
{
  WebKit::SandboxExtensionHandle::~SandboxExtensionHandle(this + 80);
  v3 = this[79];
  this[79] = 0;
  if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v3, v2);
  }

  WebKit::ResourceLoadStatisticsParameters::~ResourceLoadStatisticsParameters((this + 71), v2);
  if (*(this + 560) == 1)
  {
    WTF::Vector<std::pair<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,std::optional<WTF::UUID>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector((this + 68), v4);
  }

  WebKit::SandboxExtensionHandle::~SandboxExtensionHandle(this + 66);
  v6 = this[65];
  this[65] = 0;
  if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v6, v5);
  }

  WebKit::SandboxExtensionHandle::~SandboxExtensionHandle(this + 64);
  v8 = this[63];
  this[63] = 0;
  if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v8, v7);
  }

  WebKit::SandboxExtensionHandle::~SandboxExtensionHandle(this + 62);
  v10 = this[61];
  this[61] = 0;
  if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v10, v9);
  }

  WebKit::SandboxExtensionHandle::~SandboxExtensionHandle(this + 60);
  v12 = this[59];
  this[59] = 0;
  if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v12, v11);
  }

  WebKit::SandboxExtensionHandle::~SandboxExtensionHandle(this + 58);
  v14 = this[57];
  this[57] = 0;
  if (v14 && atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v14, v13);
  }

  v15 = this[44];
  this[44] = 0;
  if (v15 && atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v15, v13);
  }

  v16 = this[43];
  this[43] = 0;
  if (v16 && atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v16, v13);
  }

  v17 = this[42];
  this[42] = 0;
  if (v17 && atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v17, v13);
  }

  v18 = this[38];
  this[38] = 0;
  if (v18 && atomic_fetch_add_explicit(v18, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v18, v13);
  }

  WebKit::SandboxExtensionHandle::~SandboxExtensionHandle(this + 37);
  v20 = this[36];
  this[36] = 0;
  if (v20 && atomic_fetch_add_explicit(v20, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v20, v19);
  }

  v21 = this[29];
  this[29] = 0;
  if (v21 && atomic_fetch_add_explicit(v21, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v21, v19);
  }

  v22 = this[28];
  this[28] = 0;
  if (v22 && atomic_fetch_add_explicit(v22, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v22, v19);
  }

  v23 = this[26];
  if (v23)
  {
    this[26] = 0;
    *(this + 54) = 0;
    WTF::fastFree(v23, v19);
  }

  WebKit::SandboxExtensionHandle::~SandboxExtensionHandle(this + 23);
  v25 = this[22];
  this[22] = 0;
  if (v25 && atomic_fetch_add_explicit(v25, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v25, v24);
  }

  WebKit::SandboxExtensionHandle::~SandboxExtensionHandle(this + 21);
  v27 = this[20];
  this[20] = 0;
  if (v27 && atomic_fetch_add_explicit(v27, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v27, v26);
  }

  v28 = this[15];
  this[15] = 0;
  if (v28 && atomic_fetch_add_explicit(v28, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v28, v26);
  }

  v29 = this[10];
  this[10] = 0;
  if (v29 && atomic_fetch_add_explicit(v29, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v29, v26);
  }

  v30 = this[8];
  this[8] = 0;
  if (v30 && atomic_fetch_add_explicit(v30, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v30, v26);
  }

  v31 = this[7];
  this[7] = 0;
  if (v31 && atomic_fetch_add_explicit(v31, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v31, v26);
  }

  v32 = this[6];
  this[6] = 0;
  if (v32)
  {
    CFRelease(v32);
  }

  v33 = this[4];
  this[4] = 0;
  if (v33)
  {
    if (atomic_fetch_add_explicit(v33, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v33, v26);
    }
  }
}

uint64_t IPC::Decoder::decode<WebKit::WebProcessCreationParameters>(_BYTE *a1, IPC::Decoder *a2)
{
  result = IPC::ArgumentCoder<WebKit::WebProcessCreationParameters,void>::decode(a2, a1);
  if ((a1[808] & 1) == 0)
  {

    return IPC::Decoder::markInvalid(a2);
  }

  return result;
}

void IPC::Decoder::decode<std::tuple<WebKit::WebProcessCreationParameters>>(_BYTE *a1, IPC::Decoder *a2)
{
  IPC::ArgumentCoder<std::tuple<WebKit::WebProcessCreationParameters>,void>::decode<IPC::Decoder>(a1, a2);
  if ((a1[808] & 1) == 0)
  {

    IPC::Decoder::markInvalid(a2);
  }
}

void WebKit::ResourceLoadStatisticsParameters::~ResourceLoadStatisticsParameters(WebKit::ResourceLoadStatisticsParameters *this, WTF::StringImpl *a2)
{
  v3 = *(this + 7);
  *(this + 7) = 0;
  if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v3, a2);
  }

  v4 = *(this + 6);
  if (v4)
  {
    WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v4, a2);
  }

  v5 = *(this + 5);
  if (v5)
  {
    WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v5, a2);
  }

  v6 = *(this + 4);
  if (v6)
  {
    WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v6, a2);
  }

  v7 = *(this + 3);
  *(this + 3) = 0;
  if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v7, a2);
  }

  WebKit::SandboxExtensionHandle::~SandboxExtensionHandle(this + 1);
  v9 = *this;
  *this = 0;
  if (v9)
  {
    if (atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v9, v8);
    }
  }
}

IPC::Decoder *IPC::ArgumentCoder<WTF::String,void>::decode<IPC::Decoder>@<X0>(IPC::Decoder *result@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(result + 1);
  v4 = ((*(result + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
  v5 = *result;
  v6 = v4 - *result;
  v14 = v3 >= v6;
  v7 = v3 - v6;
  if (!v14 || v7 <= 3)
  {
    goto LABEL_25;
  }

  v9 = v4 + 1;
  *(result + 2) = v4 + 1;
  if (!v4)
  {
LABEL_26:
    result = IPC::Decoder::markInvalid(result);
    *a2 = 0;
    a2[8] = 0;
    return result;
  }

  v10 = *v4;
  if (v10 == -1)
  {
    *a2 = 0;
    goto LABEL_18;
  }

  if (v3 <= &v9[-v5])
  {
    v16 = result;
    IPC::Decoder::markInvalid(result);
    result = v16;
    goto LABEL_25;
  }

  v11 = v4 + 5;
  *(result + 2) = v4 + 5;
  if (v4 == -4)
  {
LABEL_25:
    v17 = result;
    IPC::Decoder::markInvalid(result);
    result = v17;
    goto LABEL_26;
  }

  if (*v9 >= 2u)
  {
    goto LABEL_26;
  }

  if (*v9)
  {
    v12 = &v11[-v5];
    v14 = v3 >= v12;
    v13 = v3 - v12;
    v14 = v14 && v13 >= v10;
    if (!v14)
    {
      result = IPC::Decoder::markInvalid(result);
      v15 = 0;
      *a2 = 0;
LABEL_19:
      a2[8] = v15;
      return result;
    }

    *(result + 2) = &v11[v10];
    result = WTF::String::String();
LABEL_18:
    v15 = 1;
    goto LABEL_19;
  }

  return IPC::decodeStringText<char16_t,IPC::Decoder>(result, v10, a2);
}

uint64_t WebKit::NetworkSessionCreationParameters::NetworkSessionCreationParameters(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;
  v5 = *(a2 + 32);
  *(a2 + 32) = 0;
  *(a1 + 32) = v5;
  *(a1 + 40) = *(a2 + 40);
  v6 = *(a2 + 48);
  *(a2 + 48) = 0;
  *(a1 + 48) = v6;
  v7 = *(a2 + 56);
  *(a2 + 56) = 0;
  *(a1 + 56) = v7;
  v8 = *(a2 + 64);
  *(a2 + 64) = 0;
  *(a1 + 64) = v8;
  *(a1 + 72) = *(a2 + 72);
  WTF::URL::URL(a1 + 80, (a2 + 80));
  WTF::URL::URL(a1 + 120, (a2 + 120));
  v9 = *(a2 + 160);
  *(a2 + 160) = 0u;
  *(a1 + 160) = v9;
  v10 = *(a2 + 176);
  *(a2 + 176) = 0u;
  *(a1 + 176) = v10;
  v11 = *(a2 + 192);
  *(a1 + 208) = 0u;
  *(a1 + 192) = v11;
  WTF::VectorBuffer<unsigned char,0ul,WTF::FastMalloc>::adopt(a1 + 208, (a2 + 208));
  v12 = *(a2 + 224);
  *(a2 + 224) = 0;
  *(a1 + 224) = v12;
  v13 = *(a2 + 232);
  *(a2 + 232) = 0;
  *(a1 + 232) = v13;
  v14 = *(a2 + 240);
  v15 = *(a2 + 256);
  *(a1 + 272) = *(a2 + 272);
  *(a1 + 240) = v14;
  *(a1 + 256) = v15;
  v16 = *(a2 + 288);
  *(a2 + 288) = 0u;
  *(a1 + 288) = v16;
  v17 = *(a2 + 304);
  *(a2 + 304) = 0;
  *(a1 + 304) = v17;
  v18 = *(a2 + 312);
  *(a1 + 328) = *(a2 + 328);
  *(a1 + 312) = v18;
  v19 = *(a2 + 336);
  *(a2 + 336) = 0;
  *(a1 + 336) = v19;
  v20 = *(a2 + 344);
  *(a2 + 344) = 0;
  *(a1 + 344) = v20;
  v21 = *(a2 + 352);
  *(a2 + 352) = 0;
  *(a1 + 352) = v21;
  v22 = *(a2 + 376);
  *(a1 + 360) = *(a2 + 360);
  *(a1 + 376) = v22;
  v23 = *(a2 + 392);
  v24 = *(a2 + 408);
  v25 = *(a2 + 424);
  *(a1 + 433) = *(a2 + 433);
  *(a1 + 408) = v24;
  *(a1 + 424) = v25;
  *(a1 + 392) = v23;
  v26 = *(a2 + 456);
  *(a2 + 456) = 0u;
  *(a1 + 456) = v26;
  v27 = *(a2 + 472);
  *(a2 + 472) = 0u;
  *(a1 + 472) = v27;
  v28 = *(a2 + 488);
  *(a2 + 488) = 0u;
  *(a1 + 488) = v28;
  v29 = *(a2 + 504);
  *(a2 + 504) = 0u;
  *(a1 + 504) = v29;
  v30 = *(a2 + 520);
  *(a2 + 520) = 0u;
  *(a1 + 520) = v30;
  *(a1 + 536) = *(a2 + 536);
  std::__optional_move_base<WTF::Vector<std::pair<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,std::optional<WTF::UUID>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,false>::__optional_move_base[abi:sn200100](a1 + 544, a2 + 544);
  v31 = *(a2 + 568);
  v32 = *(a2 + 576);
  *(a2 + 568) = 0u;
  *(a1 + 568) = v31;
  *(a1 + 576) = v32;
  v33 = *(a2 + 584);
  *(a1 + 587) = *(a2 + 587);
  *(a1 + 584) = v33;
  v34 = *(a2 + 592);
  *(a2 + 592) = 0;
  *(a1 + 592) = v34;
  *(a1 + 600) = 0;
  v35 = *(a2 + 600);
  *(a2 + 600) = 0;
  *(a1 + 600) = v35;
  *(a1 + 608) = 0;
  v36 = *(a2 + 608);
  *(a2 + 608) = 0;
  *(a1 + 608) = v36;
  *(a1 + 616) = 0;
  v37 = *(a2 + 616);
  *(a2 + 616) = 0;
  *(a1 + 616) = v37;
  v38 = *(a2 + 624);
  *(a2 + 624) = 0;
  *(a1 + 624) = v38;
  v39 = *(a2 + 632);
  v40 = *(a2 + 640);
  *(a2 + 632) = 0u;
  *(a1 + 632) = v39;
  *(a1 + 640) = v40;
  *(a1 + 648) = *(a2 + 648);
  return a1;
}

void sub_19D5B5214(_Unwind_Exception *a1)
{
  WebKit::SandboxExtensionHandle::~SandboxExtensionHandle((v1 + 528));
  v6 = *(v1 + 520);
  *(v1 + 520) = 0;
  if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v6, v5);
  }

  WebKit::SandboxExtensionHandle::~SandboxExtensionHandle((v1 + 512));
  v8 = v3[6];
  v3[6] = 0;
  if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v8, v7);
  }

  WebKit::SandboxExtensionHandle::~SandboxExtensionHandle((v1 + 496));
  v10 = v3[4];
  v3[4] = 0;
  if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v10, v9);
  }

  WebKit::SandboxExtensionHandle::~SandboxExtensionHandle((v1 + 480));
  v12 = v3[2];
  v3[2] = 0;
  if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v12, v11);
  }

  WebKit::SandboxExtensionHandle::~SandboxExtensionHandle((v1 + 464));
  v14 = *v3;
  *v3 = 0;
  if (v14 && atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v14, v13);
  }

  v15 = *(v1 + 352);
  *(v1 + 352) = 0;
  if (v15 && atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v15, v13);
  }

  v16 = *(v1 + 344);
  *(v1 + 344) = 0;
  if (v16 && atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v16, v13);
  }

  v17 = *(v1 + 336);
  *(v1 + 336) = 0;
  if (v17 && atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v17, v13);
  }

  v18 = *(v1 + 304);
  *(v1 + 304) = 0;
  if (v18 && atomic_fetch_add_explicit(v18, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v18, v13);
  }

  WebKit::SandboxExtensionHandle::~SandboxExtensionHandle((v1 + 296));
  v20 = *(v1 + 288);
  *(v1 + 288) = 0;
  if (v20 && atomic_fetch_add_explicit(v20, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v20, v19);
  }

  v21 = *(v1 + 232);
  *(v1 + 232) = 0;
  if (v21 && atomic_fetch_add_explicit(v21, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v21, v19);
  }

  v22 = *(v1 + 224);
  *(v1 + 224) = 0;
  if (v22 && atomic_fetch_add_explicit(v22, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v22, v19);
  }

  v23 = *v2;
  if (*v2)
  {
    *(v1 + 208) = 0;
    *(v1 + 216) = 0;
    WTF::fastFree(v23, v19);
  }

  WebKit::SandboxExtensionHandle::~SandboxExtensionHandle(v2 - 3);
  v25 = *(v1 + 176);
  *(v1 + 176) = 0;
  if (v25 && atomic_fetch_add_explicit(v25, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v25, v24);
  }

  WebKit::SandboxExtensionHandle::~SandboxExtensionHandle(v2 - 5);
  v27 = *(v1 + 160);
  *(v1 + 160) = 0;
  if (v27 && atomic_fetch_add_explicit(v27, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v27, v26);
  }

  v28 = *(v1 + 120);
  *(v1 + 120) = 0;
  if (v28 && atomic_fetch_add_explicit(v28, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v28, v26);
  }

  v29 = *(v1 + 80);
  *(v1 + 80) = 0;
  if (v29 && atomic_fetch_add_explicit(v29, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v29, v26);
  }

  v30 = *(v1 + 64);
  *(v1 + 64) = 0;
  if (v30 && atomic_fetch_add_explicit(v30, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v30, v26);
  }

  v31 = *(v1 + 56);
  *(v1 + 56) = 0;
  if (v31 && atomic_fetch_add_explicit(v31, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v31, v26);
  }

  v32 = *(v1 + 48);
  *(v1 + 48) = 0;
  if (v32)
  {
    CFRelease(v32);
  }

  v33 = *(v1 + 32);
  *(v1 + 32) = 0;
  if (v33)
  {
    if (atomic_fetch_add_explicit(v33, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v33, v26);
    }
  }

  _Unwind_Resume(a1);
}

uint64_t WTF::Vector<WebKit::WebsiteDataStoreParameters,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(uint64_t a1, void *a2)
{
  v3 = *(a1 + 12);
  if (v3)
  {
    v6 = *a1;
    v7 = 768 * v3;
    do
    {
      WebKit::WebsiteDataStoreParameters::~WebsiteDataStoreParameters(v6);
      v6 = (v8 + 768);
      v7 -= 768;
    }

    while (v7);
  }

  v4 = *a1;
  if (*a1)
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    WTF::fastFree(v4, a2);
  }

  return a1;
}

uint64_t IPC::Decoder::decode<BOOL>(IPC::Decoder *a1)
{
  v1 = *(a1 + 2);
  if (*(a1 + 1) <= &v1[-*a1])
  {
    v8 = a1;
    IPC::Decoder::markInvalid(a1);
    a1 = v8;
    goto LABEL_10;
  }

  *(a1 + 2) = v1 + 1;
  if (!v1)
  {
LABEL_10:
    v9 = a1;
    IPC::Decoder::markInvalid(a1);
    v7 = 0;
    IPC::Decoder::markInvalid(v9);
    goto LABEL_11;
  }

  v2 = *v1;
  if (v2 < 2)
  {
    v3 = 256;
    v4 = 1;
    goto LABEL_5;
  }

  v7 = v2;
  IPC::Decoder::markInvalid(a1);
LABEL_11:
  v4 = 0;
  v3 = 0;
  v2 = v7;
LABEL_5:
  if (v2)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  return v3 | v5;
}

void WebKit::WebsiteDataStore::forEachWebsiteDataStore(WebKit *a1)
{
  WebKit::allDataStores(a1);
  v2 = WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::WallTime>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::WallTime>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::WallTime,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::WallTime>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::begin(&WebKit::allDataStores(void)::map);
  v3 = v2;
  v5 = v4;
  if (WebKit::allDataStores(void)::map)
  {
    v6 = WebKit::allDataStores(void)::map + 16 * *(WebKit::allDataStores(void)::map - 4);
  }

  else
  {
    v6 = 0;
  }

  if (v6 != v2)
  {
    while (1)
    {
      v7 = *(v3[1] + 8);
      if (!v7)
      {
        break;
      }

      CFRetain(*(v7 + 8));
      (*(**a1 + 16))(*a1, v7);
      CFRelease(*(v7 + 8));
      do
      {
        v3 += 2;
      }

      while (v3 != v5 && (*v3 + 1) <= 1);
      if (v3 == v6)
      {
        return;
      }
    }

    __break(0xC471u);
  }
}

WTF *WTF::Detail::CallableWrapper<WebKit::NetworkProcessProxy::sendCreationParametersToNewProcess(void)::$_1,void,WebKit::WebsiteDataStore &>::call(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  result = WebKit::NetworkProcessProxy::addSession(v3, a2, 0);
  atomic_fetch_add((v3 + 16), 1u);
  v5 = *(a2 + 432);
  *(a2 + 432) = v3;
  if (v5)
  {

    return WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v5 + 16));
  }

  return result;
}

void WebKit::AuxiliaryProcessCreationParameters::~AuxiliaryProcessCreationParameters(WTF::StringImpl ****this, WTF::StringImpl *a2)
{
  std::unique_ptr<WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>::~unique_ptr[abi:sn200100](this + 3, a2);
  v4 = this[2];
  this[2] = 0;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, v3);
  }

  v5 = this[1];
  this[1] = 0;
  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, v3);
  }

  v6 = *this;
  *this = 0;
  if (v6)
  {
    if (atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v6, v3);
    }
  }
}

WTF *WebKit::NetworkProcessProxy::addSession(uint64_t a1, unsigned int *a2, int a3)
{
  v25 = *MEMORY[0x1E69E9840];
  result = WTF::WeakHashSet<WebKit::WebsiteDataStore,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::add<WebKit::WebsiteDataStore>(a1 + 528, a2, v10);
  if (v10[16] == 1 && ((v7 = *(a1 + 80)) != 0 && (*(v7 + 104) & 1) != 0 || *(a1 + 88)))
  {
    if (a3)
    {
      WebKit::WebsiteDataStore::parameters(a2, &v11);
      v9 = &v11;
      WebKit::AuxiliaryProcessProxy::send<Messages::NetworkProcess::AddWebsiteDataStore>(a1, &v9, 0, 1);
      if (v24 == 1)
      {
        WebKit::SandboxExtensionHandle::~SandboxExtensionHandle(&v23);
      }

      if (v22 == 1)
      {
        WebKit::SandboxExtensionHandle::~SandboxExtensionHandle(&v21);
      }

      if (v20 == 1)
      {
        WebKit::SandboxExtensionHandle::~SandboxExtensionHandle(&v19);
      }

      if (v18 == 1)
      {
        WebKit::SandboxExtensionHandle::~SandboxExtensionHandle(&v17);
      }

      if (v16 == 1)
      {
        WebKit::SandboxExtensionHandle::~SandboxExtensionHandle(&v15);
      }

      WebKit::NetworkSessionCreationParameters::~NetworkSessionCreationParameters(&v14);
      WebKit::SandboxExtensionHandle::~SandboxExtensionHandle(&v13);
      result = v11;
      if (v11)
      {
        v11 = 0;
        v12 = 0;
        return WTF::fastFree(result, v8);
      }
    }
  }

  return result;
}

IPC::Decoder *IPC::Decoder::decode<std::span<unsigned char const,18446744073709551615ul>>@<X0>(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  result = IPC::ArgumentCoder<std::span<unsigned char const,18446744073709551615ul>,void>::decode<IPC::Decoder>(a1, a2);
  if ((*(a2 + 16) & 1) == 0)
  {

    return IPC::Decoder::markInvalid(a1);
  }

  return result;
}

void IPC::ArgumentCoder<std::unique_ptr<WebKit::SandboxExtensionImpl>,void>::decode<IPC::Decoder>(IPC::Decoder *this@<X0>, _BYTE *a2@<X8>)
{
  v4 = *(this + 2);
  if (*(this + 1) <= &v4[-*this])
  {
    IPC::Decoder::markInvalid(this);
    goto LABEL_14;
  }

  *(this + 2) = v4 + 1;
  if (!v4)
  {
LABEL_14:
    IPC::Decoder::markInvalid(this);
    goto LABEL_15;
  }

  v5 = *v4;
  if (v5 >= 2)
  {
LABEL_15:
    IPC::Decoder::markInvalid(this);
    *a2 = 0;
    a2[8] = 0;
    return;
  }

  if (v5)
  {
    IPC::ArgumentCoder<std::span<unsigned char const,18446744073709551615ul>,void>::decode<IPC::Decoder>(this, &v12);
    if ((v13 & 1) == 0)
    {
      goto LABEL_12;
    }

    while (*this)
    {
      if (v13)
      {
        WTF::CString::CString();
        v6 = v11[0];
        v11[0] = 0;
        v11[1] = 0;
        v9[0] = v6;
        v10 = 1;
        WebKit::SandboxExtensionImpl::~SandboxExtensionImpl(v11);
        v8 = WebKit::SandboxExtensionImpl::operator new(0x10, v7);
        *v8 = v9[0];
        v9[0] = 0;
        v9[1] = 0;
        v8[1] = 0;
        *a2 = v8;
        a2[8] = 1;
        WebKit::SandboxExtensionImpl::~SandboxExtensionImpl(v9);
        return;
      }

      __break(1u);
LABEL_12:
      IPC::Decoder::markInvalid(this);
    }

    goto LABEL_15;
  }

  *a2 = 0;
  a2[8] = 1;
}

uint64_t WebKit::WebProcessProxy::allowedFirstPartiesForCookies@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  WebKit::WebProcessProxy::globalPages(&v26);
  if (v27)
  {
    v4 = v26;
    v5 = 8 * v27;
    do
    {
      v6 = *v4;
      CFRetain(*(*v4 + 8));
      v7 = *(*(v6 + 352) + 120);
      WebKit::WebPageProxy::currentURL(v6, &v21);
      MEMORY[0x19EB01DD0](v22, &v21, 0);
      WebCore::RegistrableDomain::RegistrableDomain(&v23, v22);
      v9 = v23;
      v23 = 0;
      v24 = v7;
      v25 = v9;
      v10 = *(a1 + 12);
      if (v10 == *(a1 + 8))
      {
        v11 = WTF::Vector<std::pair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::RegistrableDomain>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(a1, v10 + 1, &v24);
        v12 = (*a1 + 16 * *(a1 + 12));
        v14 = *v11;
        v13 = (v11 + 1);
        *v12 = v14;
      }

      else
      {
        v12 = (*a1 + 16 * v10);
        *v12 = v7;
        v13 = &v25;
      }

      v15 = *v13;
      *v13 = 0;
      v12[1] = v15;
      ++*(a1 + 12);
      v16 = v25;
      v25 = 0;
      if (v16 && atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v16, v8);
      }

      v17 = v23;
      v23 = 0;
      if (v17 && atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v17, v8);
      }

      v18 = v22[0];
      v22[0] = 0;
      if (v18 && atomic_fetch_add_explicit(v18, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v18, v8);
      }

      v19 = v21;
      v21 = 0;
      if (v19 && atomic_fetch_add_explicit(v19, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v19, v8);
      }

      CFRelease(*(v6 + 8));
      ++v4;
      v5 -= 8;
    }

    while (v5);
  }

  return WTF::Vector<WTF::Ref<WebKit::WebPageProxy,WTF::RawPtrTraits<WebKit::WebPageProxy>,WTF::DefaultRefDerefTraits<WebKit::WebPageProxy>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v26, v3);
}

void IPC::Decoder::decode<std::unique_ptr<WebKit::SandboxExtensionImpl>>(IPC::Decoder *a1@<X0>, _BYTE *a2@<X8>)
{
  IPC::ArgumentCoder<std::unique_ptr<WebKit::SandboxExtensionImpl>,void>::decode<IPC::Decoder>(a1, a2);
  if ((a2[8] & 1) == 0)
  {
    IPC::Decoder::markInvalid(a1);
  }
}

void sub_19D5B5CBC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 8) == 1)
  {
    std::unique_ptr<WebKit::SandboxExtensionImpl>::reset[abi:sn200100](v1, 0);
  }

  _Unwind_Resume(exception_object);
}

void *WebKit::WebProcessProxy::globalPages@<X0>(uint64_t a1@<X8>)
{
  {
    v3 = WebKit::WebProcessProxy::globalPageMap(void)::pageMap;
    *a1 = 0;
    *(a1 + 8) = 0;
    if (v3 && (v4 = *(v3 - 12), v4))
    {
      if (v4 >> 29)
      {
        __break(0xC471u);
        goto LABEL_22;
      }

      v5 = WTF::fastMalloc((8 * v4));
      *(a1 + 8) = v4;
      *a1 = v5;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
    WebKit::WebProcessProxy::globalPageMap(void)::pageMap = 0;
    *a1 = 0;
    *(a1 + 8) = 0;
  }

  result = WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::WallTime>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::WallTime>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::WallTime,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::WallTime>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::begin(&WebKit::WebProcessProxy::globalPageMap(void)::pageMap);
  v7 = result;
  v9 = v8;
  if (WebKit::WebProcessProxy::globalPageMap(void)::pageMap)
  {
    v10 = WebKit::WebProcessProxy::globalPageMap(void)::pageMap + 16 * *(WebKit::WebProcessProxy::globalPageMap(void)::pageMap - 4);
  }

  else
  {
    v10 = 0;
  }

  if (v10 != result)
  {
    v11 = 0;
    while (1)
    {
      v12 = *(v7[1] + 8);
      if (!v12)
      {
        break;
      }

      v13 = v12 - 16;
      result = CFRetain(*(v12 - 8));
      *(v5 + 8 * v11) = v13;
      do
      {
        v7 += 2;
      }

      while (v7 != v9 && (*v7 + 1) <= 1);
      ++v11;
      if (v7 == v10)
      {
        *(a1 + 12) = v11;
        return result;
      }
    }

    *(a1 + 12) = v11;
    __break(0xC471u);
LABEL_22:
    JUMPOUT(0x19D5B5E20);
  }

  return result;
}

uint64_t WTF::Vector<WebCore::HTTPHeaderMap::CommonHeader,0ul,WTF::CrashOnOverflow,6ul,WTF::FastMalloc>::~Vector(uint64_t a1, void *a2)
{
  v3 = *(a1 + 12);
  if (v3)
  {
    WTF::VectorDestructor<true,WebCore::HTTPHeaderMap::CommonHeader>::destruct(*a1, (*a1 + 16 * v3));
  }

  v4 = *a1;
  if (*a1)
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    WTF::fastFree(v4, a2);
  }

  return a1;
}

{
  WTF::Vector<WebCore::HTTPHeaderMap::CommonHeader,0ul,WTF::CrashOnOverflow,6ul,WTF::FastMalloc>::~Vector(a1, a2);
  return a1;
}

void IPC::ArgumentCoder<WebKit::SandboxExtensionHandle,void>::decode(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  IPC::Decoder::decode<std::unique_ptr<WebKit::SandboxExtensionImpl>>(a1, &v9);
  if (*a1)
  {
    if ((v10 & 1) == 0)
    {
      __break(1u);
      return;
    }

    v4 = v9;
    v8 = 0;
    v9 = 0;
    *a2 = v4;
    *(a2 + 8) = 1;
    WebKit::SandboxExtensionHandle::~SandboxExtensionHandle(&v8);
  }

  else
  {
    *a2 = 0;
    *(a2 + 8) = 0;
  }

  if (v10 == 1)
  {
    v5 = v9;
    v9 = 0;
    if (v5)
    {
      WebKit::SandboxExtensionImpl::~SandboxExtensionImpl(v5);
      bmalloc::api::tzoneFree(v6, v7);
    }
  }
}

void IPC::Decoder::decode<WebKit::SandboxExtensionHandle>(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  IPC::ArgumentCoder<WebKit::SandboxExtensionHandle,void>::decode(a1, a2);
  if ((*(a2 + 8) & 1) == 0)
  {

    IPC::Decoder::markInvalid(a1);
  }
}

unsigned int *WTF::Vector<WebCore::OrganizationStorageAccessPromptQuirk,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::operator=(unsigned int *a1, uint64_t a2)
{
  if (a2 != a1)
  {
    v4 = *(a2 + 12);
    if (a1[3] <= v4)
    {
      if (v4 > a1[2])
      {
        WTF::Vector<WebCore::OrganizationStorageAccessPromptQuirk,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity(a1, 0);
        WTF::Vector<WebCore::OrganizationStorageAccessPromptQuirk,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, *(a2 + 12));
      }
    }

    else
    {
      WTF::Vector<WebCore::OrganizationStorageAccessPromptQuirk,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrink(a1, v4);
    }

    std::__copy_impl::operator()[abi:sn200100]<WebCore::OrganizationStorageAccessPromptQuirk const*,WebCore::OrganizationStorageAccessPromptQuirk const*,WebCore::OrganizationStorageAccessPromptQuirk*>(&v13, *a2, *a2 + 32 * a1[3], *a1);
    v5 = a1[3];
    v6 = *(a2 + 12);
    if (v5 != v6)
    {
      v7 = *a2;
      v8 = *a1;
      v9 = 32 * v5;
      v10 = 32 * v6;
      do
      {
        v11 = *(v7 + 32 * v5);
        if (v11)
        {
          atomic_fetch_add_explicit(v11, 2u, memory_order_relaxed);
        }

        *(v8 + 32 * v5) = v11;
        WTF::HashTable<WebCore::RegistrableDomain,WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashMap<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::HashTable((v8 + v9 + 8), (v7 + v9 + 8));
        WTF::Vector<WTF::URL,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(v8 + v9 + 16, (v7 + v9 + 16));
        v7 += 32;
        v8 += 32;
        v10 -= 32;
      }

      while (v9 != v10);
      LODWORD(v5) = *(a2 + 12);
    }

    a1[3] = v5;
  }

  return a1;
}

void sub_19D5B6084(_Unwind_Exception *exception_object, WTF::StringImpl *a2)
{
  v5 = *(v2 + v3);
  *(v2 + v3) = 0;
  if (v5)
  {
    if (atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v5, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

IPC::Decoder *IPC::ArgumentCoder<std::span<unsigned char const,18446744073709551615ul>,void>::decode<IPC::Decoder>@<X0>(IPC::Decoder *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(result + 1);
  v3 = ((*(result + 2) + 7) & 0xFFFFFFFFFFFFFFF8);
  v4 = *result;
  v5 = v3 - *result;
  v12 = v2 >= v5;
  v6 = v2 - v5;
  if (!v12 || v6 <= 7)
  {
    v16 = result;
    v17 = a2;
    IPC::Decoder::markInvalid(result);
    result = v16;
    a2 = v17;
LABEL_25:
    v18 = a2;
    result = IPC::Decoder::markInvalid(result);
    a2 = v18;
LABEL_26:
    v15 = 0;
    *a2 = 0;
    goto LABEL_23;
  }

  v8 = v3 + 1;
  *(result + 2) = v3 + 1;
  if (!v3)
  {
    goto LABEL_25;
  }

  v9 = *v3;
  if (v9)
  {
    v10 = v8 - v4;
    v12 = v2 >= v10;
    v11 = v2 - v10;
    v12 = v12 && v11 >= v9;
    if (!v12)
    {
      goto LABEL_25;
    }

    *(result + 2) = v8 + v9;
    v14 = v11 == -1 || v9 != -1;
    if (!v8 || !v14)
    {
      goto LABEL_26;
    }

    *a2 = v8;
    *(a2 + 8) = v9;
  }

  else
  {
    *a2 = 0;
    *(a2 + 8) = 0;
  }

  v15 = 1;
LABEL_23:
  *(a2 + 16) = v15;
  return result;
}

uint64_t IPC::VectorArgumentCoder<false,WebKit::SandboxExtensionHandle,0ul,WTF::CrashOnOverflow,16ul>::decode<IPC::Decoder>@<X0>(IPC::Decoder *this@<X0>, void *a2@<X1>, char *a3@<X8>)
{
  v5 = *(this + 1);
  v6 = ((*(this + 2) + 7) & 0xFFFFFFFFFFFFFFF8);
  v7 = v6 - *this;
  v8 = v5 >= v7;
  v9 = v5 - v7;
  if (!v8 || v9 <= 7)
  {
    IPC::Decoder::markInvalid(this);
LABEL_31:
    result = IPC::Decoder::markInvalid(this);
    *a3 = 0;
    a3[16] = 0;
    return result;
  }

  *(this + 2) = v6 + 1;
  if (!v6)
  {
    goto LABEL_31;
  }

  v11 = *v6;
  v22 = 0;
  v23 = 0;
  if (v11 < 0x20000)
  {
    if (!v11)
    {
LABEL_9:
      *a3 = v22;
      v12 = v23;
      v22 = 0;
      v23 = 0;
      *(a3 + 1) = v12;
      a3[16] = 1;
      return WTF::Vector<WebKit::SandboxExtensionHandle,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v22, a2);
    }

    LODWORD(v23) = v11;
    v22 = WTF::fastMalloc((8 * v11));
    while (1)
    {
      IPC::Decoder::decode<WebKit::SandboxExtensionHandle>(this, &v20);
      if ((v21 & 1) == 0)
      {
        goto LABEL_30;
      }

      v14 = HIDWORD(v23);
      if (HIDWORD(v23) != v23)
      {
        break;
      }

      WTF::Vector<WebKit::SandboxExtensionHandle,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebKit::SandboxExtensionHandle>(&v22, &v20);
      if (v21)
      {
        goto LABEL_18;
      }

LABEL_19:
      if (!--v11)
      {
        goto LABEL_9;
      }
    }

    v15 = v20;
    v20 = 0;
    *(v22 + 8 * HIDWORD(v23)) = v15;
    HIDWORD(v23) = v14 + 1;
LABEL_18:
    WebKit::SandboxExtensionHandle::~SandboxExtensionHandle(&v20);
    goto LABEL_19;
  }

  v16 = *a3;
  v17 = a3[16];
  while (1)
  {
    IPC::Decoder::decode<WebKit::SandboxExtensionHandle>(this, &v20);
    if ((v21 & 1) == 0)
    {
      break;
    }

    v18 = HIDWORD(v23);
    if (HIDWORD(v23) != v23)
    {
      v19 = v20;
      v20 = 0;
      *(v22 + 8 * HIDWORD(v23)) = v19;
      HIDWORD(v23) = v18 + 1;
LABEL_27:
      WebKit::SandboxExtensionHandle::~SandboxExtensionHandle(&v20);
      goto LABEL_28;
    }

    WTF::Vector<WebKit::SandboxExtensionHandle,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebKit::SandboxExtensionHandle>(&v22, &v20);
    if (v21)
    {
      goto LABEL_27;
    }

LABEL_28:
    if (!--v11)
    {
      *a3 = v16;
      a3[16] = v17;
      WTF::Vector<WebKit::SandboxExtensionHandle,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity(&v22, HIDWORD(v23));
      goto LABEL_9;
    }
  }

LABEL_30:
  *a3 = 0;
  a3[16] = 0;
  return WTF::Vector<WebKit::SandboxExtensionHandle,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v22, a2);
}

void sub_19D5B6344(_Unwind_Exception *a1, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, int a11, __int16 a12, char a13, char a14)
{
  *v14 = v15;
  v14[16] = v16;
  if (a10 == 1)
  {
    WebKit::SandboxExtensionHandle::~SandboxExtensionHandle(&a9);
  }

  WTF::Vector<WebKit::SandboxExtensionHandle,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&a12, a2);
  _Unwind_Resume(a1);
}

uint64_t std::__copy_impl::operator()[abi:sn200100]<WebCore::OrganizationStorageAccessPromptQuirk const*,WebCore::OrganizationStorageAccessPromptQuirk const*,WebCore::OrganizationStorageAccessPromptQuirk*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a2;
  if (a2 == a3)
  {
    return a2;
  }

  v6 = a3;
  do
  {
    WTF::String::operator=(a4, v5);
    WTF::HashTable<WebCore::RegistrableDomain,WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashMap<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::operator=((a4 + 8), (v5 + 8));
    WTF::Vector<WTF::URL,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::operator=((a4 + 16), (v5 + 16));
    a4 += 32;
    v5 += 32;
  }

  while (v5 != v6);
  return v6;
}

uint64_t IPC::Decoder::decode<WTF::Vector<WebKit::SandboxExtensionHandle,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>@<X0>(IPC::Decoder *a1@<X0>, void *a2@<X1>, char *a3@<X8>)
{
  result = IPC::VectorArgumentCoder<false,WebKit::SandboxExtensionHandle,0ul,WTF::CrashOnOverflow,16ul>::decode<IPC::Decoder>(a1, a2, a3);
  if ((a3[16] & 1) == 0)
  {
    return IPC::Decoder::markInvalid(a1);
  }

  return result;
}

void sub_19D5B6464(_Unwind_Exception *exception_object, void *a2)
{
  if (*(v2 + 16) == 1)
  {
    WTF::Vector<WebKit::SandboxExtensionHandle,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v2, a2);
  }

  _Unwind_Resume(exception_object);
}

void IPC::ArgumentCoder<WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>,void>::decode<IPC::Decoder,API::Object>(IPC::Decoder *this@<X0>, _BYTE *a2@<X8>, __n128 a3@<Q0>)
{
  v7 = *(this + 1);
  v6 = *(this + 2);
  v8 = *this;
  if (v7 <= &v6[-*this])
  {
    IPC::Decoder::markInvalid(this);
    goto LABEL_101;
  }

  v9 = v6 + 1;
  *(this + 2) = v6 + 1;
  if (!v6)
  {
LABEL_101:
    IPC::Decoder::markInvalid(this);
    goto LABEL_102;
  }

  if (*v6 >= 2u)
  {
LABEL_102:
    IPC::Decoder::markInvalid(this);
    goto LABEL_76;
  }

  if (*v6)
  {
    if (v7 <= &v9[-v8])
    {
      IPC::Decoder::markInvalid(this);
    }

    else
    {
      *(this + 2) = v6 + 2;
      if (v6 != -1)
      {
        v10 = *v9;
        if (v10 < 0x13)
        {
          v11 = v10 | 0x100;
          goto LABEL_9;
        }

LABEL_105:
        IPC::Decoder::markInvalid(this);
        v11 = 0;
        v8 = *this;
LABEL_9:
        if (!v8)
        {
LABEL_76:
          *a2 = 0;
          a2[8] = 0;
          return;
        }

        if (v11 >= 0x100 && v11 == 0)
        {
          IPC::Decoder::decode<WTF::Ref<API::Array,WTF::RawPtrTraits<API::Array>,WTF::DefaultRefDerefTraits<API::Array>>>(&v20, this);
        }

        else if (v11 >= 0x100 && v11 == 1)
        {
          IPC::Decoder::decode<WTF::Ref<API::Boolean,WTF::RawPtrTraits<API::Boolean>,WTF::DefaultRefDerefTraits<API::Boolean>>>(&v20, this);
        }

        else if (v11 >= 0x100 && v11 == 2)
        {
          IPC::Decoder::decode<WTF::Ref<API::Data,WTF::RawPtrTraits<API::Data>,WTF::DefaultRefDerefTraits<API::Data>>>(&v20, this);
        }

        else
        {
          if (v11 >= 0x100 && v11 == 3)
          {
            IPC::Decoder::decode<WTF::Ref<API::Dictionary,WTF::RawPtrTraits<API::Dictionary>,WTF::DefaultRefDerefTraits<API::Dictionary>>>(&v20, this);
            goto LABEL_23;
          }

          if (v11 >= 0x100 && v11 == 4)
          {
            IPC::Decoder::decode<WTF::Ref<API::Double,WTF::RawPtrTraits<API::Double>,WTF::DefaultRefDerefTraits<API::Double>>>(&v20, this);
          }

          else if (v11 >= 0x100 && v11 == 5)
          {
            IPC::Decoder::decode<WTF::Ref<API::Error,WTF::RawPtrTraits<API::Error>,WTF::DefaultRefDerefTraits<API::Error>>>(&v20, this);
          }

          else if (v11 >= 0x100 && v11 == 6)
          {
            IPC::Decoder::decode<WTF::Ref<API::FrameHandle,WTF::RawPtrTraits<API::FrameHandle>,WTF::DefaultRefDerefTraits<API::FrameHandle>>>(&v20, this);
          }

          else
          {
            if (v11 < 0x100 || v11 != 7)
            {
              if (v11 >= 0x100 && v11 == 8)
              {
                IPC::Decoder::decode<WTF::Ref<API::PageHandle,WTF::RawPtrTraits<API::PageHandle>,WTF::DefaultRefDerefTraits<API::PageHandle>>>(&v20, this);
              }

              else if (v11 >= 0x100 && v11 == 9)
              {
                IPC::Decoder::decode<WTF::Ref<API::Point,WTF::RawPtrTraits<API::Point>,WTF::DefaultRefDerefTraits<API::Point>>>(&v20, this);
              }

              else if (v11 >= 0x100 && v11 == 10)
              {
                IPC::Decoder::decode<WTF::Ref<API::Rect,WTF::RawPtrTraits<API::Rect>,WTF::DefaultRefDerefTraits<API::Rect>>>(&v20, this);
              }

              else if (v11 >= 0x100 && v11 == 11)
              {
                IPC::Decoder::decode<WTF::Ref<API::Size,WTF::RawPtrTraits<API::Size>,WTF::DefaultRefDerefTraits<API::Size>>>(&v20, this);
              }

              else
              {
                if (v11 >= 0x100 && v11 == 12)
                {
                  IPC::Decoder::decode<WTF::String>(this, &v20);
                  v16 = *this;
                  if (!*this)
                  {
                    v3 = 0;
LABEL_48:
                    if (v21 == 1)
                    {
                      v17 = v20;
                      v20 = 0;
                      if (v17)
                      {
                        if (atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
                        {
                          WTF::StringImpl::destroy(v17, v15);
                        }
                      }
                    }

                    if (!v16)
                    {
                      IPC::Decoder::markInvalid(this);
                      if (!*this)
                      {
                        goto LABEL_76;
                      }

                      goto LABEL_82;
                    }

                    if (!*this)
                    {
LABEL_83:
                      if (!v3)
                      {
                        goto LABEL_76;
                      }

                      v18 = *(v3 + 1);
                      goto LABEL_75;
                    }

LABEL_52:
                    *a2 = 0;
                    goto LABEL_53;
                  }

                  if (v21)
                  {
                    API::String::create(&v20, &v19);
                    v3 = v19;
                    goto LABEL_48;
                  }

LABEL_82:
                  __break(1u);
                  goto LABEL_83;
                }

                if (v11 >= 0x100 && v11 == 13)
                {
                  IPC::Decoder::decode<WTF::Ref<API::URL,WTF::RawPtrTraits<API::URL>,WTF::DefaultRefDerefTraits<API::URL>>>(&v20, this);
                }

                else if (v11 >= 0x100 && v11 == 14)
                {
                  IPC::Decoder::decode<WTF::Ref<API::URLRequest,WTF::RawPtrTraits<API::URLRequest>,WTF::DefaultRefDerefTraits<API::URLRequest>>>(&v20, this);
                }

                else if (v11 >= 0x100 && v11 == 15)
                {
                  IPC::Decoder::decode<WTF::Ref<API::URLResponse,WTF::RawPtrTraits<API::URLResponse>,WTF::DefaultRefDerefTraits<API::URLResponse>>>(&v20, this);
                }

                else if (v11 >= 0x100 && v11 == 16)
                {
                  IPC::Decoder::decode<WTF::Ref<API::UInt64,WTF::RawPtrTraits<API::UInt64>,WTF::DefaultRefDerefTraits<API::UInt64>>>(&v20, this);
                }

                else if (v11 >= 0x100 && v11 == 17)
                {
                  IPC::Decoder::decode<WTF::Ref<API::Int64,WTF::RawPtrTraits<API::Int64>,WTF::DefaultRefDerefTraits<API::Int64>>>(&v20, this);
                }

                else
                {
                  if (v11 < 0x100 || v11 != 18)
                  {
                    goto LABEL_76;
                  }

                  IPC::Decoder::decode<WTF::Ref<API::UserContentURLPattern,WTF::RawPtrTraits<API::UserContentURLPattern>,WTF::DefaultRefDerefTraits<API::UserContentURLPattern>>>(&v20, this);
                }
              }

              v14 = v21;
              if (!*this)
              {
                goto LABEL_72;
              }

              if (v21)
              {
                v3 = v20;
                goto LABEL_52;
              }

              goto LABEL_82;
            }

            IPC::Decoder::decode<WTF::Ref<WebKit::WebImage,WTF::RawPtrTraits<WebKit::WebImage>,WTF::DefaultRefDerefTraits<WebKit::WebImage>>>(&v20, this, a3);
          }
        }

LABEL_23:
        v14 = v21;
        if (*this)
        {
          if (v21)
          {
            v3 = v20;
LABEL_53:
            *a2 = v3;
            goto LABEL_54;
          }

          goto LABEL_82;
        }

LABEL_72:
        if ((v14 & 1) == 0 || !v20)
        {
          goto LABEL_76;
        }

        v18 = *(v20 + 1);
LABEL_75:
        CFRelease(v18);
        goto LABEL_76;
      }
    }

    IPC::Decoder::markInvalid(this);
    goto LABEL_105;
  }

  *a2 = 0;
LABEL_54:
  a2[8] = 1;
}

void sub_19D5B68D4(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11, char a12)
{
  if (a12 == 1 && a11 && atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a11, a2);
  }

  _Unwind_Resume(exception_object);
}

void IPC::Decoder::decode<WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>>(IPC::Decoder *a1@<X0>, _BYTE *a2@<X8>, __n128 a3@<Q0>)
{
  IPC::ArgumentCoder<WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>,void>::decode<IPC::Decoder,API::Object>(a1, a2, a3);
  if ((a2[8] & 1) == 0)
  {
    IPC::Decoder::markInvalid(a1);
  }
}

void sub_19D5B694C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 8) == 1)
  {
    v3 = *v1;
    *v1 = 0;
    if (v3)
    {
      CFRelease(*(v3 + 8));
    }
  }

  _Unwind_Resume(exception_object);
}

void IPC::ArgumentCoder<WebKit::UserData,void>::decode(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>, __n128 a3@<Q0>)
{
  v3 = a1;
  IPC::Decoder::decode<WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>>(a1, &v6, a3);
  if (*v3)
  {
    if (v7)
    {
      v3 = v6;
      v6 = 0;
      if (!v3)
      {
        *a2 = 0;
        *(a2 + 8) = 1;
        goto LABEL_5;
      }
    }

    else
    {
      __break(1u);
    }

    CFRetain(*(v3 + 1));
    *a2 = v3;
    *(a2 + 8) = 1;
    CFRelease(*(v3 + 1));
  }

  else
  {
    *a2 = 0;
    *(a2 + 8) = 0;
  }

LABEL_5:
  if (v7 == 1)
  {
    v5 = v6;
    v6 = 0;
    if (v5)
    {
      CFRelease(*(v5 + 1));
    }
  }
}

void sub_19D5B6A2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10)
{
  CFRelease(*(v10 + 8));
  if (a10 == 1)
  {
    if (a9)
    {
      CFRelease(*(a9 + 8));
    }
  }

  _Unwind_Resume(a1);
}

uint64_t IPC::Decoder::decode<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>@<X0>(IPC::Decoder *a1@<X0>, _BYTE *a2@<X8>)
{
  result = IPC::VectorArgumentCoder<false,WTF::String,0ul,WTF::CrashOnOverflow,16ul>::decode<IPC::Decoder>(a1, a2);
  if ((a2[16] & 1) == 0)
  {
    return IPC::Decoder::markInvalid(a1);
  }

  return result;
}

void sub_19D5B6AA0(_Unwind_Exception *exception_object, void *a2)
{
  if (*(v2 + 16) == 1)
  {
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v2, a2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t IPC::VectorArgumentCoder<false,WTF::String,0ul,WTF::CrashOnOverflow,16ul>::decode<IPC::Decoder>@<X0>(IPC::Decoder *this@<X0>, _BYTE *a2@<X8>)
{
  v4 = *(this + 1);
  v5 = ((*(this + 2) + 7) & 0xFFFFFFFFFFFFFFF8);
  v6 = v5 - *this;
  v7 = v4 >= v6;
  v8 = v4 - v6;
  if (!v7 || v8 <= 7)
  {
    IPC::Decoder::markInvalid(this);
LABEL_34:
    result = IPC::Decoder::markInvalid(this);
    *a2 = 0;
    a2[16] = 0;
    return result;
  }

  *(this + 2) = v5 + 1;
  if (!v5)
  {
    goto LABEL_34;
  }

  v10 = *v5;
  v26 = 0;
  v27 = 0;
  if (v10 >= 0x20000)
  {
    while (1)
    {
      IPC::Decoder::decode<WTF::String>(this, &v24);
      if ((v25 & 1) == 0)
      {
LABEL_28:
        *a2 = 0;
        a2[16] = 0;
        return WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v26, v11);
      }

      v20 = HIDWORD(v27);
      if (HIDWORD(v27) != v27)
      {
        break;
      }

      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::String>(&v26, &v24);
      if (v25)
      {
        goto LABEL_23;
      }

LABEL_24:
      if (!--v10)
      {
        WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity(&v26, HIDWORD(v27));
        goto LABEL_29;
      }
    }

    v21 = v24;
    v24 = 0;
    *(v26 + 8 * HIDWORD(v27)) = v21;
    HIDWORD(v27) = v20 + 1;
LABEL_23:
    v22 = v24;
    v24 = 0;
    if (v22 && atomic_fetch_add_explicit(v22, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v22, v11);
    }

    goto LABEL_24;
  }

  if (v10)
  {
    LODWORD(v27) = v10;
    v26 = WTF::fastMalloc((8 * v10));
    while (1)
    {
      IPC::Decoder::decode<WTF::String>(this, &v24);
      if ((v25 & 1) == 0)
      {
        goto LABEL_28;
      }

      v12 = HIDWORD(v27);
      if (HIDWORD(v27) != v27)
      {
        break;
      }

      v15 = WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(&v26, HIDWORD(v27) + 1, &v24);
      v16 = HIDWORD(v27);
      v17 = HIDWORD(v27) + 1;
      v18 = v26;
      v19 = *v15;
      *v15 = 0;
      *(v18 + 8 * v16) = v19;
      HIDWORD(v27) = v17;
      if (v25)
      {
        goto LABEL_13;
      }

LABEL_14:
      if (!--v10)
      {
        goto LABEL_29;
      }
    }

    v13 = v24;
    v24 = 0;
    *(v26 + 8 * HIDWORD(v27)) = v13;
    HIDWORD(v27) = v12 + 1;
LABEL_13:
    v14 = v24;
    v24 = 0;
    if (v14)
    {
      if (atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v14, v11);
      }
    }

    goto LABEL_14;
  }

LABEL_29:
  std::optional<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>::optional[abi:sn200100]<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,0>(a2, &v26);
  return WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v26, v11);
}

void sub_19D5B6CAC(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, char a10, int a11, __int16 a12, char a13, char a14)
{
  if (a10 == 1 && a9 && atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a9, a2);
  }

  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&a12, a2);
  _Unwind_Resume(a1);
}

void WebKit::WebProcessPool::platformInitializeNetworkProcess(uint64_t a1)
{
  WTF::applicationBundleIdentifier(&v27, a1);
  v3 = v27;
  v27 = 0;
  v4 = *(a1 + 56);
  *(a1 + 56) = v3;
  if (v4)
  {
    if (atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v4, v2);
    }

    v5 = v27;
    v27 = 0;
    if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v5, v2);
    }
  }

  v6 = [MEMORY[0x1E695E000] standardUserDefaults];
  v7 = v6;
  if (v6)
  {
    v6 = v6;
  }

  v8 = MEMORY[0x19EB000C0](v6);
  v9 = *(a1 + 64);
  *(a1 + 64) = v8;
  if (v9)
  {
    CFRelease(v9);
  }

  *(a1 + 33) = [v7 BOOLForKey:@"WebKitSuppressMemoryPressureHandler"];
  {
    v10 = WebKit::WebPreferencesKey::privateClickMeasurementEnabledKey(void)::key;
    if (!WebKit::WebPreferencesKey::privateClickMeasurementEnabledKey(void)::key)
    {
      v27 = &stru_1F1147748;
      v12 = &stru_1F1147748;
      goto LABEL_16;
    }
  }

  else
  {
    v10 = WebKit::WebPreferencesKey::privateClickMeasurementEnabledKey(void)::$_0::operator() const(void)::impl;
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::privateClickMeasurementEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::privateClickMeasurementEnabledKey(void)::key = WebKit::WebPreferencesKey::privateClickMeasurementEnabledKey(void)::$_0::operator() const(void)::impl;
  }

  atomic_fetch_add_explicit(v10, 2u, memory_order_relaxed);
  MEMORY[0x19EB00B70](&v27, v10);
  if (atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v10, v11);
  }

LABEL_16:
  if (![v7 objectForKey:v27])
  {
    *(a1 + 144) = 1;
    goto LABEL_25;
  }

  {
    v13 = WebKit::WebPreferencesKey::privateClickMeasurementEnabledKey(void)::$_0::operator() const(void)::impl;
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::privateClickMeasurementEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::privateClickMeasurementEnabledKey(void)::key = WebKit::WebPreferencesKey::privateClickMeasurementEnabledKey(void)::$_0::operator() const(void)::impl;
LABEL_19:
    atomic_fetch_add_explicit(v13, 2u, memory_order_relaxed);
    MEMORY[0x19EB00B70](&v26, v13);
    if (atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v13, v14);
    }

    goto LABEL_23;
  }

  v13 = WebKit::WebPreferencesKey::privateClickMeasurementEnabledKey(void)::key;
  if (WebKit::WebPreferencesKey::privateClickMeasurementEnabledKey(void)::key)
  {
    goto LABEL_19;
  }

  v26 = &stru_1F1147748;
  v15 = &stru_1F1147748;
LABEL_23:
  *(a1 + 144) = [v7 BOOLForKey:{v26, v26}];
  v16 = v26;
  v26 = 0;
  if (v16)
  {
  }

LABEL_25:
  v17 = v27;
  v27 = 0;
  if (v17)
  {
  }

  {
    v18 = WebKit::WebPreferencesKey::ftpEnabledKey(void)::key;
    if (!WebKit::WebPreferencesKey::ftpEnabledKey(void)::key)
    {
      v27 = &stru_1F1147748;
      v20 = &stru_1F1147748;
      goto LABEL_32;
    }
  }

  else
  {
    v18 = WebKit::WebPreferencesKey::ftpEnabledKey(void)::$_0::operator() const(void)::impl;
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::ftpEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::ftpEnabledKey(void)::key = WebKit::WebPreferencesKey::ftpEnabledKey(void)::$_0::operator() const(void)::impl;
  }

  atomic_fetch_add_explicit(v18, 2u, memory_order_relaxed);
  MEMORY[0x19EB00B70](&v27, v18);
  if (atomic_fetch_add_explicit(v18, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v18, v19);
  }

LABEL_32:
  if (![v7 objectForKey:{v27, v26}])
  {
    *(a1 + 145) = 0;
    goto LABEL_41;
  }

  {
    v21 = WebKit::WebPreferencesKey::ftpEnabledKey(void)::$_0::operator() const(void)::impl;
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::ftpEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::ftpEnabledKey(void)::key = WebKit::WebPreferencesKey::ftpEnabledKey(void)::$_0::operator() const(void)::impl;
LABEL_35:
    atomic_fetch_add_explicit(v21, 2u, memory_order_relaxed);
    MEMORY[0x19EB00B70](&v26, v21);
    if (atomic_fetch_add_explicit(v21, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v21, v22);
    }

    goto LABEL_39;
  }

  v21 = WebKit::WebPreferencesKey::ftpEnabledKey(void)::key;
  if (WebKit::WebPreferencesKey::ftpEnabledKey(void)::key)
  {
    goto LABEL_35;
  }

  v26 = &stru_1F1147748;
  v23 = &stru_1F1147748;
LABEL_39:
  *(a1 + 145) = [v7 BOOLForKey:v26];
  v24 = v26;
  v26 = 0;
  if (v24)
  {
  }

LABEL_41:
  v25 = v27;
  v27 = 0;
  if (v25)
  {
  }

  {
    *algn_1ED63B6A8 = 0u;
    *&qword_1ED63B6C8 = 0u;
    dword_1ED63B6B0 = 1;
    qword_1ED63B6B8 = 0;
    unk_1ED63B6C0 = 0;
    qword_1ED63B6C8 = 0;
    byte_1ED63B6D0 = 0;
    off_1ED63B6D8 = 0;
    *&dword_1ED63B6E0 = 0;
    WebKit::ListDataController<WebKit::StorageAccessPromptQuirkController,WTF::Vector<WebCore::OrganizationStorageAccessPromptQuirk,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>::sharedSingleton(void)::sharedInstance = &unk_1F10EE4C0;
  }

  WTF::Vector<WebCore::OrganizationStorageAccessPromptQuirk,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::operator=((a1 + 192), &off_1ED63B6D8);
  if (v7)
  {
  }
}

void sub_19D5B70B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  if (a10)
  {
  }

  if (v10)
  {
  }

  _Unwind_Resume(exception_object);
}

uint64_t IPC::Decoder::decode<WebKit::CacheModel>(IPC::Decoder *a1)
{
  v2 = IPC::ArgumentCoder<WebKit::CacheModel,void>::decode<IPC::Decoder>(a1);
  if ((v2 & 0x100) == 0)
  {
    IPC::Decoder::markInvalid(a1);
  }

  return v2;
}

uint64_t WTF::Vector<WTF::URL,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(uint64_t result, uint64_t *a2)
{
  v2 = result;
  v3 = *(a2 + 3);
  *result = 0;
  *(result + 8) = 0;
  *(result + 12) = v3;
  if (!v3)
  {
    return v2;
  }

  if (v3 < 0x6666667)
  {
    v5 = 40 * v3;
    v6 = WTF::fastMalloc((40 * v3));
    *(v2 + 8) = v5 / 0x28;
    *v2 = v6;
    v7 = *(a2 + 3);
    if (v7)
    {
      v8 = *a2;
      v9 = *a2 + 40 * v7;
      do
      {
        v10 = *v8;
        if (*v8)
        {
          atomic_fetch_add_explicit(v10, 2u, memory_order_relaxed);
        }

        *v6 = v10;
        v11 = *(v8 + 8);
        *(v6 + 24) = *(v8 + 24);
        *(v6 + 8) = v11;
        v6 += 40;
        v8 += 40;
      }

      while (v8 != v9);
    }

    return v2;
  }

  __break(0xC471u);
  return result;
}

uint64_t IPC::ArgumentCoder<WebKit::CacheModel,void>::decode<IPC::Decoder>(IPC::Decoder *a1)
{
  v1 = *(a1 + 2);
  if (*(a1 + 1) <= &v1[-*a1])
  {
    v7 = a1;
    IPC::Decoder::markInvalid(a1);
    a1 = v7;
  }

  else
  {
    *(a1 + 2) = v1 + 1;
    if (v1)
    {
      v2 = *v1;
      v3 = 1;
      goto LABEL_4;
    }
  }

  IPC::Decoder::markInvalid(a1);
  v2 = 0;
  v3 = 0;
LABEL_4:
  v4 = v2 < 3;
  v5 = v2 | 0x100;
  if ((v3 & v4) != 0)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t IPC::Decoder::decode<unsigned long long>(IPC::Decoder *a1)
{
  v1 = *(a1 + 1);
  v2 = (*(a1 + 2) + 7) & 0xFFFFFFFFFFFFFFF8;
  v3 = v2 - *a1;
  v4 = v1 >= v3;
  v5 = v1 - v3;
  if (!v4 || v5 <= 7)
  {
    v8 = a1;
    IPC::Decoder::markInvalid(a1);
    a1 = v8;
LABEL_9:
    IPC::Decoder::markInvalid(a1);
    return 0;
  }

  *(a1 + 2) = v2 + 8;
  if (!v2)
  {
    goto LABEL_9;
  }

  return *v2;
}

unsigned int *WTF::Vector<WTF::URL,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::operator=(unsigned int *a1, unsigned int *a2)
{
  if (a2 != a1)
  {
    v4 = a1[3];
    v5 = a2[3];
    if (v4 <= v5)
    {
      if (v5 > a1[2])
      {
        WTF::Vector<WTF::URL,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity(a1, 0);
        WTF::Vector<WTF::URL,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, a2[3]);
        v4 = a1[3];
      }
    }

    else
    {
      WTF::VectorDestructor<true,WTF::URL>::destruct((*a1 + 40 * v5), (*a1 + 40 * v4));
      a1[3] = v5;
      v4 = v5;
    }

    v6 = *a2;
    v7 = *a1;
    if (v4)
    {
      v8 = v6 + 40 * v4;
      do
      {
        WTF::String::operator=(v7, v6);
        v9 = *(v6 + 24);
        *(v7 + 8) = *(v6 + 8);
        *(v7 + 24) = v9;
        v6 += 40;
        v7 += 40;
      }

      while (v6 != v8);
      v6 = *a2;
      v4 = a1[3];
      v7 = *a1;
    }

    v10 = a2[3];
    if (v4 != v10)
    {
      v11 = v6 + 40 * v10;
      v12 = v7 + 40 * v4;
      v13 = v6 + 40 * v4;
      do
      {
        v14 = *v13;
        if (*v13)
        {
          atomic_fetch_add_explicit(v14, 2u, memory_order_relaxed);
        }

        *v12 = v14;
        v15 = *(v13 + 8);
        *(v12 + 24) = *(v13 + 24);
        *(v12 + 8) = v15;
        v12 += 40;
        v13 += 40;
      }

      while (v13 != v11);
      v4 = a2[3];
    }

    a1[3] = v4;
  }

  return a1;
}

uint64_t IPC::Decoder::decode<WebKit::AllowsCellularAccess>(IPC::Decoder *a1)
{
  v2 = IPC::Decoder::decode<BOOL>(a1);
  v3 = v2;
  v4 = v2 & 0x100;
  if ((v2 & 0x100) == 0)
  {
    IPC::Decoder::markInvalid(a1);
  }

  v5 = v3;
  if (!v4)
  {
    v5 = 0;
  }

  return v5 | v4;
}

uint64_t IPC::ArgumentCoder<WebKit::NetworkProcessCreationParameters,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  IPC::ArgumentCoder<WebKit::AuxiliaryProcessCreationParameters,void>::encode(a1, a2);
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, *(a2 + 32));
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 33));
  IPC::VectorArgumentCoder<false,WTF::String,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(a1, a2 + 40);
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 56));
  IPC::ArgumentCoder<__CFData const*,void>::encode(a1, *(a2 + 64));
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 72));
  IPC::VectorArgumentCoder<false,WTF::String,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(a1, a2 + 80);
  IPC::VectorArgumentCoder<false,WTF::String,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(a1, a2 + 96);
  IPC::VectorArgumentCoder<false,WTF::String,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(a1, a2 + 112);
  IPC::VectorArgumentCoder<false,WTF::String,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(a1, a2 + 128);
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 144));
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 145));
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 146));
  IPC::VectorArgumentCoder<false,WebKit::WebsiteDataStoreParameters,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WebKit::WebsiteDataStoreParameters,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(a1, a2 + 152);
  IPC::VectorArgumentCoder<false,std::pair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::RegistrableDomain>,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<std::pair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::RegistrableDomain>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(a1, a2 + 168);
  IPC::ArgumentCoder<WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>,void>::encode<IPC::Encoder>(a1, (a2 + 184));
  IPC::VectorArgumentCoder<false,WebCore::OrganizationStorageAccessPromptQuirk,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WebCore::OrganizationStorageAccessPromptQuirk,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(a1, a2 + 192);

  return IPC::ArgumentCoder<WTF::Markable<double,WTF::MarkableTraits<double>>,void>::encode<IPC::Encoder,WTF::Markable<double,WTF::MarkableTraits<double>>>(a1, (a2 + 208));
}

uint64_t IPC::Decoder::decode<WTF::OptionSet<WebKit::TextCheckerState>>(IPC::Decoder *a1)
{
  v2 = IPC::ArgumentCoder<WTF::OptionSet<WebKit::TextCheckerState>,void>::decode<IPC::Decoder>(a1);
  if ((v2 & 0x100) == 0)
  {
    IPC::Decoder::markInvalid(a1);
  }

  return v2;
}

WebKit::SandboxExtensionImpl *IPC::ArgumentCoder<WebKit::WebsiteDataStoreParameters,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  IPC::ArgumentCoder<std::span<unsigned char const,18446744073709551615ul>,void>::encode<IPC::Encoder>(a1, *a2, *(a2 + 12));
  IPC::ArgumentCoder<WebKit::SandboxExtensionHandle,void>::encode(a1, (a2 + 16));
  IPC::ArgumentCoder<WebKit::NetworkSessionCreationParameters,void>::encode(a1, a2 + 32);
  IPC::ArgumentCoder<std::optional<WebKit::SandboxExtensionHandle>,void>::encode<IPC::Encoder,std::optional<WebKit::SandboxExtensionHandle>>(a1, a2 + 688);
  IPC::ArgumentCoder<std::optional<WebKit::SandboxExtensionHandle>,void>::encode<IPC::Encoder,std::optional<WebKit::SandboxExtensionHandle>>(a1, a2 + 704);
  IPC::ArgumentCoder<std::optional<WebKit::SandboxExtensionHandle>,void>::encode<IPC::Encoder,std::optional<WebKit::SandboxExtensionHandle>>(a1, a2 + 720);
  IPC::ArgumentCoder<std::optional<WebKit::SandboxExtensionHandle>,void>::encode<IPC::Encoder,std::optional<WebKit::SandboxExtensionHandle>>(a1, a2 + 736);

  return IPC::ArgumentCoder<std::optional<WebKit::SandboxExtensionHandle>,void>::encode<IPC::Encoder,std::optional<WebKit::SandboxExtensionHandle>>(a1, a2 + 752);
}

uint64_t IPC::Decoder::decode<unsigned char>(IPC::Decoder *a1)
{
  v1 = *(a1 + 2);
  if (*(a1 + 1) <= &v1[-*a1])
  {
    v5 = a1;
    IPC::Decoder::markInvalid(a1);
    a1 = v5;
    goto LABEL_6;
  }

  *(a1 + 2) = v1 + 1;
  if (!v1)
  {
LABEL_6:
    IPC::Decoder::markInvalid(a1);
    v2 = 0;
    v3 = 0;
    return v3 | v2;
  }

  v2 = *v1;
  v3 = 256;
  return v3 | v2;
}

uint64_t IPC::VectorArgumentCoder<false,WebKit::WebsiteDataStoreParameters,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WebKit::WebsiteDataStoreParameters,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(IPC::Encoder *a1, uint64_t a2)
{
  result = IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *(a2 + 12));
  v5 = *(a2 + 12);
  if (v5)
  {
    v6 = *a2;
    v7 = 768 * v5;
    do
    {
      result = IPC::ArgumentCoder<WebKit::WebsiteDataStoreParameters,void>::encode(a1, v6);
      v6 += 768;
      v7 -= 768;
    }

    while (v7);
  }

  return result;
}

uint64_t IPC::Decoder::decode<float>(IPC::Decoder *a1)
{
  v1 = *(a1 + 1);
  v2 = ((*(a1 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
  v3 = v2 - *a1;
  v4 = v1 >= v3;
  v5 = v1 - v3;
  if (!v4 || v5 <= 3)
  {
    v8 = a1;
    IPC::Decoder::markInvalid(a1);
    a1 = v8;
LABEL_9:
    IPC::Decoder::markInvalid(a1);
    return 0;
  }

  *(a1 + 2) = v2 + 1;
  if (!v2)
  {
    goto LABEL_9;
  }

  return *v2 | 0x100000000;
}

uint64_t IPC::ArgumentCoder<WebKit::NetworkSessionCreationParameters,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *a2);
  v4 = *(a2 + 16) | *(a2 + 24);
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, *(a2 + 16) == 0);
  if (v4)
  {
    if (*(a2 + 16) == 0)
    {
      goto LABEL_17;
    }

    IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *(a2 + 24));
    IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *(a2 + 16));
  }

  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 32));
  v9 = *(a2 + 40);
  IPC::Encoder::operator<<<BOOL>(a1, &v9);
  IPC::ArgumentCoder<__CFDictionary const*,void>::encode(a1, *(a2 + 48));
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 56));
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 64));
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 72));
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 80));
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 120));
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 160));
  IPC::ArgumentCoder<WebKit::SandboxExtensionHandle,void>::encode(a1, (a2 + 168));
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 176));
  IPC::ArgumentCoder<WebKit::SandboxExtensionHandle,void>::encode(a1, (a2 + 184));
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 192));
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 193));
  IPC::ArgumentCoder<WebKit::WebPushD::WebPushDaemonConnectionConfiguration,void>::encode(a1, a2 + 208);
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 288));
  IPC::ArgumentCoder<WebKit::SandboxExtensionHandle,void>::encode(a1, (a2 + 296));
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 304));
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 312));
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 313));
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 314));
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 315));
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a1, *(a2 + 316));
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 320));
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 321));
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 322));
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 323));
  IPC::ArgumentCoder<std::optional<unsigned int>,void>::encode<IPC::Encoder,std::optional<unsigned int>>(a1, a2 + 324);
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 332));
  IPC::ArgumentCoder<std::optional<BOOL>,void>::encode<IPC::Encoder,std::optional<BOOL>>(a1, (a2 + 333));
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 335));
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 336));
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 344));
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 352));
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 360));
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 361));
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 362));
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *(a2 + 368));
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, *(a2 + 376));
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *(a2 + 384));
  IPC::ArgumentCoder<std::optional<double>,void>::encode<IPC::Encoder,std::optional<double>>(a1, a2 + 392);
  IPC::ArgumentCoder<std::optional<double>,void>::encode<IPC::Encoder,std::optional<double>>(a1, a2 + 408);
  IPC::ArgumentCoder<std::optional<unsigned long long>,void>::encode<IPC::Encoder,std::optional<unsigned long long>>(a1, a2 + 424);
  IPC::ArgumentCoder<std::optional<unsigned long long>,void>::encode<IPC::Encoder,std::optional<unsigned long long>>(a1, a2 + 440);
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 456));
  IPC::ArgumentCoder<WebKit::SandboxExtensionHandle,void>::encode(a1, (a2 + 464));
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 472));
  IPC::ArgumentCoder<WebKit::SandboxExtensionHandle,void>::encode(a1, (a2 + 480));
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 488));
  IPC::ArgumentCoder<WebKit::SandboxExtensionHandle,void>::encode(a1, (a2 + 496));
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 504));
  IPC::ArgumentCoder<WebKit::SandboxExtensionHandle,void>::encode(a1, (a2 + 512));
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 520));
  IPC::ArgumentCoder<WebKit::SandboxExtensionHandle,void>::encode(a1, (a2 + 528));
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 536));
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 537));
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 538));
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 539));
  if ((*(a2 + 560) & 1) == 0)
  {
    v11 = 0;
    IPC::Encoder::operator<<<BOOL>(a1, &v11);
LABEL_15:
    IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 568));
    IPC::ArgumentCoder<WebKit::SandboxExtensionHandle,void>::encode(a1, (a2 + 576));
    IPC::Encoder::operator<<<BOOL>(a1, (a2 + 584));
    IPC::Encoder::operator<<<BOOL>(a1, (a2 + 585));
    IPC::Encoder::operator<<<BOOL>(a1, (a2 + 586));
    IPC::Encoder::operator<<<BOOL>(a1, (a2 + 587));
    IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, *(a2 + 588));
    v14 = *(a2 + 589);
    IPC::Encoder::operator<<<BOOL>(a1, &v14);
    IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, *(a2 + 590));
    IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 592));
    IPC::ArgumentCoder<WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>,void>::encode<IPC::Encoder>(a1, (a2 + 600));
    IPC::ArgumentCoder<WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>,void>::encode<IPC::Encoder>(a1, (a2 + 608));
    IPC::ArgumentCoder<WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>,void>::encode<IPC::Encoder>(a1, (a2 + 616));
    IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 624));
    IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 632));
    IPC::ArgumentCoder<WebKit::SandboxExtensionHandle,void>::encode(a1, (a2 + 640));
    return IPC::Encoder::operator<<<BOOL>(a1, (a2 + 648));
  }

  v10 = 1;
  IPC::Encoder::operator<<<BOOL>(a1, &v10);
  if (*(a2 + 560))
  {
    IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *(a2 + 556));
    v5 = *(a2 + 556);
    if (v5)
    {
      v6 = 48 * v5;
      v7 = *(a2 + 544) + 16;
      do
      {
        IPC::ArgumentCoder<std::span<unsigned char const,18446744073709551615ul>,void>::encode<IPC::Encoder>(a1, *(v7 - 16), *(v7 - 4));
        if (*(v7 + 16))
        {
          v12 = 1;
          IPC::Encoder::operator<<<BOOL>(a1, &v12);
          if ((*(v7 + 16) & 1) == 0)
          {
            goto LABEL_16;
          }

          IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *(v7 + 8));
          IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *v7);
        }

        else
        {
          v13 = 0;
          IPC::Encoder::operator<<<BOOL>(a1, &v13);
        }

        v7 += 48;
        v6 -= 48;
      }

      while (v6);
    }

    goto LABEL_15;
  }

LABEL_16:
  std::__throw_bad_optional_access[abi:sn200100]();
LABEL_17:
  result = 158;
  __break(0xC471u);
  return result;
}

uint64_t IPC::ArgumentCoder<API::Data,void>::decode(uint64_t a1, IPC::Decoder *a2)
{
  result = IPC::Decoder::decode<std::span<unsigned char const,18446744073709551615ul>>(a2, v6);
  if (*a2)
  {
    if (v7)
    {
      result = API::Data::create(v6[1], v6[0], &v5);
      *a1 = v5;
      *(a1 + 8) = 1;
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    *a1 = 0;
    *(a1 + 8) = 0;
  }

  return result;
}

uint64_t IPC::ArgumentCoder<WTF::RefPtr<API::Data,WTF::RawPtrTraits<API::Data>,WTF::DefaultRefDerefTraits<API::Data>>,void>::decode<IPC::Decoder,API::Data>(_BYTE *a1, IPC::Decoder *a2)
{
  result = IPC::Decoder::decode<BOOL>(a2);
  if ((result & 0x100) == 0)
  {
    *a1 = 0;
    a1[8] = 0;
    return result;
  }

  if ((result & 1) == 0)
  {
    *a1 = 0;
LABEL_4:
    a1[8] = 1;
    return result;
  }

  result = IPC::ArgumentCoder<API::Data,void>::decode(&v5, a2);
  *a1 = 0;
  a1[8] = 0;
  if (v6 == 1)
  {
    *a1 = v5;
    goto LABEL_4;
  }

  return result;
}

uint64_t *IPC::ArgumentCoder<__CFDictionary const*,void>::encode(IPC::Encoder *a1, const __CFDictionary *a2)
{
  WebKit::CoreIPCCFDictionary::CoreIPCCFDictionary(&v7, a2);
  IPC::ArgumentCoder<std::unique_ptr<WTF::Vector<WTF::KeyValuePair<mpark::variant<WebKit::CoreIPCCFArray,WebKit::CoreIPCBoolean,WebKit::CoreIPCCFCharacterSet,WebKit::CoreIPCData,WebKit::CoreIPCDate,WebKit::CoreIPCCFDictionary,WebKit::CoreIPCNull,WebKit::CoreIPCNumber,WebKit::CoreIPCString,WebKit::CoreIPCCFURL>,WebKit::CoreIPCCFType>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,void>::encode<IPC::Encoder,std::unique_ptr<WTF::Vector<WTF::KeyValuePair<mpark::variant<WebKit::CoreIPCCFArray,WebKit::CoreIPCBoolean,WebKit::CoreIPCCFCharacterSet,WebKit::CoreIPCData,WebKit::CoreIPCDate,WebKit::CoreIPCCFDictionary,WebKit::CoreIPCNull,WebKit::CoreIPCNumber,WebKit::CoreIPCString,WebKit::CoreIPCCFURL>,WebKit::CoreIPCCFType>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>> const&>(a1, &v7);
  result = v7;
  v7 = 0;
  if (result)
  {
    v5 = WTF::Vector<WTF::KeyValuePair<mpark::variant<WebKit::CoreIPCCFArray,WebKit::CoreIPCBoolean,WebKit::CoreIPCCFCharacterSet,WebKit::CoreIPCData,WebKit::CoreIPCDate,WebKit::CoreIPCCFDictionary,WebKit::CoreIPCNull,WebKit::CoreIPCNumber,WebKit::CoreIPCString,WebKit::CoreIPCCFURL>,WebKit::CoreIPCCFType>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(result, v3);
    return WTF::fastFree(v5, v6);
  }

  return result;
}

void sub_19D5B7E20(_Unwind_Exception *a1, WebKit::CoreIPCCFDictionary *a2, uint64_t a3, ...)
{
  va_start(va, a3);
  WebKit::CoreIPCCFDictionary::~CoreIPCCFDictionary(va, a2);
  _Unwind_Resume(a1);
}

uint64_t IPC::Decoder::decode<WTF::RefPtr<API::Data,WTF::RawPtrTraits<API::Data>,WTF::DefaultRefDerefTraits<API::Data>>>(_BYTE *a1, IPC::Decoder *a2)
{
  result = IPC::ArgumentCoder<WTF::RefPtr<API::Data,WTF::RawPtrTraits<API::Data>,WTF::DefaultRefDerefTraits<API::Data>>,void>::decode<IPC::Decoder,API::Data>(a1, a2);
  if ((a1[8] & 1) == 0)
  {

    return IPC::Decoder::markInvalid(a2);
  }

  return result;
}

unint64_t WebKit::CoreIPCCFDictionary::CoreIPCCFDictionary(WebKit::CoreIPCCFDictionary *this, const __CFDictionary *a2)
{
  *this = 0;
  if (!a2)
  {
    return this;
  }

  v4 = WTF::fastMalloc(0x10);
  *v4 = 0;
  *(v4 + 1) = 0;
  std::unique_ptr<WTF::Vector<WTF::KeyValuePair<mpark::variant<WebKit::CoreIPCCFArray,WebKit::CoreIPCBoolean,WebKit::CoreIPCCFCharacterSet,WebKit::CoreIPCData,WebKit::CoreIPCDate,WebKit::CoreIPCCFDictionary,WebKit::CoreIPCNull,WebKit::CoreIPCNumber,WebKit::CoreIPCString,WebKit::CoreIPCCFURL>,WebKit::CoreIPCCFType>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>::reset[abi:sn200100](this, v4);
  v5 = *this;
  result = CFDictionaryGetCount(a2);
  v7 = result;
  if (!result)
  {
LABEL_5:
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = ___ZN6WebKit19CoreIPCCFDictionaryC2EPK14__CFDictionary_block_invoke;
    v9[3] = &__block_descriptor_40_e15_v32__0_8_16_B24l;
    v9[4] = this;
    [(__CFDictionary *)a2 enumerateKeysAndObjectsUsingBlock:v9];
    return this;
  }

  if (!(result >> 27))
  {
    v8 = WTF::fastMalloc((32 * result));
    *(v5 + 8) = v7;
    *v5 = v8;
    goto LABEL_5;
  }

  __break(0xC471u);
  return result;
}

uint64_t IPC::ArgumentCoder<WebKit::WebPushD::WebPushDaemonConnectionConfiguration,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  IPC::ArgumentCoder<std::span<unsigned char const,18446744073709551615ul>,void>::encode<IPC::Encoder>(a1, *a2, *(a2 + 12));
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 16));
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 24));
  IPC::ArgumentCoder<std::optional<WTF::UUID>,void>::encode<IPC::Encoder,std::optional<WTF::UUID> const&>(a1, a2 + 32);

  return IPC::Encoder::operator<<<BOOL>(a1, (a2 + 64));
}

uint64_t API::Data::create@<X0>(WTF *this@<X1>, const void *a2@<X0>, API::Object **a3@<X8>)
{
  if (this)
  {
    v6 = WTF::fastMalloc(this);
    WTF::fastFree(0, v7);
    WTF::fastFree(0, v8);
    memcpy(v6, a2, this);
  }

  else
  {
    v6 = 0;
  }

  v9 = WTF::fastMalloc(0x18);
  *v9 = &unk_1F10E8428;
  v9[1] = v6;
  v9[2] = this;
  v14 = v9;
  API::Data::createWithoutCopying(v6, this, &v14, a3);
  v11 = v14;
  v14 = 0;
  if (v11)
  {
    (*(*v11 + 8))(v11);
  }

  WTF::fastFree(0, v10);
  return WTF::fastFree(0, v12);
}

uint64_t IPC::ArgumentCoder<WTF::HashMap<WTF::String,BOOL,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<BOOL>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,void>::decode<IPC::Decoder>(_BYTE *a1, IPC::Decoder *a2)
{
  result = IPC::Decoder::decode<float>(a2);
  if ((result & 0x100000000) != 0)
  {
    v5 = result;
    v6 = 0;
    v14 = 0;
    if (result)
    {
      while (1)
      {
        IPC::Decoder::decode<WTF::String>(a2, &v12);
        if ((v13 & 1) == 0)
        {
          *a1 = 0;
          a1[8] = 0;
          goto LABEL_20;
        }

        result = IPC::Decoder::decode<BOOL>(a2);
        v11 = result;
        v8 = v13;
        if ((result & 0x100) == 0)
        {
          break;
        }

        if ((v13 & 1) == 0)
        {
          __break(1u);
          return result;
        }

        if (v12 + 1 < 2)
        {
          *a1 = 0;
          a1[8] = 0;
          goto LABEL_19;
        }

        result = WTF::HashMap<WTF::String,BOOL,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<BOOL>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<BOOL>(v10, &v14, &v12, &v11);
        v8 = v13;
        if ((v10[16] & 1) == 0)
        {
          break;
        }

        if (v13)
        {
          result = v12;
          v12 = 0;
          if (result)
          {
            if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              result = WTF::StringImpl::destroy(result, v7);
            }
          }
        }

        if (!--v5)
        {
          v6 = v14;
          goto LABEL_3;
        }
      }

      *a1 = 0;
      a1[8] = 0;
      if ((v8 & 1) == 0)
      {
        goto LABEL_20;
      }

LABEL_19:
      v9 = v12;
      v12 = 0;
      if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v9, v7);
      }

LABEL_20:
      result = v14;
      if (v14)
      {
        return WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,Inspector::SupplementalBackendDispatcher *>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,Inspector::SupplementalBackendDispatcher *>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,Inspector::SupplementalBackendDispatcher *,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<Inspector::SupplementalBackendDispatcher *>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v14, v7);
      }
    }

    else
    {
LABEL_3:
      *a1 = v6;
      a1[8] = 1;
    }
  }

  else
  {
    *a1 = 0;
    a1[8] = 0;
  }

  return result;
}

void sub_19D5B829C(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, WTF::StringImpl *a14, char a15)
{
  if (a15 == 1 && a14 && atomic_fetch_add_explicit(a14, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a14, a2);
  }

  v17 = *(v15 - 40);
  if (v17)
  {
    WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,Inspector::SupplementalBackendDispatcher *>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,Inspector::SupplementalBackendDispatcher *>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,Inspector::SupplementalBackendDispatcher *,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<Inspector::SupplementalBackendDispatcher *>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v17, a2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t IPC::ArgumentCoder<std::optional<WTF::UUID>,void>::encode<IPC::Encoder,std::optional<WTF::UUID> const&>(IPC::Encoder *a1, uint64_t a2)
{
  if (*(a2 + 16))
  {
    v6 = 1;
    IPC::Encoder::operator<<<BOOL>(a1, &v6);
    if (*(a2 + 16))
    {
      return IPC::ArgumentCoder<WTF::UUID,void>::encode(a1, a2);
    }

    else
    {
      v5 = std::__throw_bad_optional_access[abi:sn200100]();
      return IPC::Decoder::decode<WTF::HashMap<WTF::String,BOOL,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<BOOL>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>(v5);
    }
  }

  else
  {
    v7 = 0;
    return IPC::Encoder::operator<<<BOOL>(a1, &v7);
  }
}

uint64_t IPC::Decoder::decode<WTF::HashMap<WTF::String,BOOL,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<BOOL>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>(_BYTE *a1, IPC::Decoder *a2)
{
  result = IPC::ArgumentCoder<WTF::HashMap<WTF::String,BOOL,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<BOOL>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,void>::decode<IPC::Decoder>(a1, a2);
  if ((a1[8] & 1) == 0)
  {

    return IPC::Decoder::markInvalid(a2);
  }

  return result;
}

uint64_t IPC::ArgumentCoder<std::optional<BOOL>,void>::encode<IPC::Encoder,std::optional<BOOL>>(IPC::Encoder *a1, char *a2)
{
  v2 = a1;
  if ((a2[1] & 1) == 0)
  {
    v8 = 0;
    v4 = &v8;
    return IPC::Encoder::operator<<<BOOL>(a1, v4);
  }

  v7 = 1;
  IPC::Encoder::operator<<<BOOL>(a1, &v7);
  if (a2[1])
  {
    a1 = v2;
    v4 = a2;
    return IPC::Encoder::operator<<<BOOL>(a1, v4);
  }

  v6 = std::__throw_bad_optional_access[abi:sn200100]();
  return IPC::ArgumentCoder<std::optional<std::span<unsigned char const,18446744073709551615ul>>,void>::decode<IPC::Decoder>(v6);
}

IPC::Decoder *IPC::ArgumentCoder<std::optional<std::span<unsigned char const,18446744073709551615ul>>,void>::decode<IPC::Decoder>@<X0>(IPC::Decoder *this@<X0>, _BYTE *a2@<X8>)
{
  v2 = this;
  v4 = *(this + 2);
  if (*(this + 1) <= &v4[-*this])
  {
    IPC::Decoder::markInvalid(this);
    goto LABEL_13;
  }

  *(this + 2) = v4 + 1;
  if (!v4)
  {
LABEL_13:
    IPC::Decoder::markInvalid(v2);
    goto LABEL_14;
  }

  v5 = *v4;
  if (v5 >= 2)
  {
LABEL_14:
    this = IPC::Decoder::markInvalid(v2);
    *a2 = 0;
    a2[24] = 0;
    return this;
  }

  if (v5)
  {
    this = IPC::ArgumentCoder<std::span<unsigned char const,18446744073709551615ul>,void>::decode<IPC::Decoder>(this, &v7);
    if (v8 & 1) != 0 || (this = IPC::Decoder::markInvalid(v2), (v8))
    {
      *a2 = v7;
      v6 = 1;
      a2[16] = 1;
    }

    else
    {
      v6 = 0;
      *a2 = 0;
    }
  }

  else
  {
    *a2 = 0;
    a2[16] = 0;
    v6 = 1;
  }

  a2[24] = v6;
  return this;
}

uint64_t IPC::ArgumentCoder<std::optional<unsigned int>,void>::encode<IPC::Encoder,std::optional<unsigned int>>(IPC::Encoder *a1, uint64_t a2)
{
  if (*(a2 + 4))
  {
    v6 = 1;
    IPC::Encoder::operator<<<BOOL>(a1, &v6);
    if (*(a2 + 4))
    {
      return IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a1, *a2);
    }

    else
    {
      v5 = std::__throw_bad_optional_access[abi:sn200100]();
      return IPC::ArgumentCoder<std::optional<double>,void>::encode<IPC::Encoder,std::optional<double>>(v5);
    }
  }

  else
  {
    v7 = 0;
    return IPC::Encoder::operator<<<BOOL>(a1, &v7);
  }
}

uint64_t IPC::ArgumentCoder<std::optional<double>,void>::encode<IPC::Encoder,std::optional<double>>(IPC::Encoder *a1, uint64_t a2)
{
  if (*(a2 + 8))
  {
    v6 = 1;
    IPC::Encoder::operator<<<BOOL>(a1, &v6);
    if (*(a2 + 8))
    {
      return IPC::ArgumentCoder<double,void>::encode<IPC::Encoder>(a1, *a2);
    }

    else
    {
      v5 = std::__throw_bad_optional_access[abi:sn200100]();
      return IPC::ArgumentCoder<WebKit::CoreIPCData,void>::decode(v5);
    }
  }

  else
  {
    v7 = 0;
    return IPC::Encoder::operator<<<BOOL>(a1, &v7);
  }
}

IPC::Decoder *IPC::ArgumentCoder<WebKit::CoreIPCData,void>::decode@<X0>(IPC::Decoder *a1@<X0>, _BYTE *a2@<X8>)
{
  result = IPC::ArgumentCoder<std::optional<std::span<unsigned char const,18446744073709551615ul>>,void>::decode<IPC::Decoder>(a1, v6);
  if ((v8 & 1) == 0)
  {
    result = IPC::Decoder::markInvalid(a1);
  }

  v5 = *a1;
  if (!*a1)
  {
    *a2 = 0;
LABEL_8:
    a2[8] = v5;
    return result;
  }

  if (v8)
  {
    if (v7)
    {
      result = CFDataCreate(*MEMORY[0x1E695E480], v6[0], v6[1]);
    }

    else
    {
      result = 0;
    }

    *a2 = result;
    LOBYTE(v5) = 1;
    goto LABEL_8;
  }

  __break(1u);
  return result;
}

void IPC::ArgumentCoder<WTF::RetainPtr<__CFData const*>,void>::decode(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  IPC::ArgumentCoder<WebKit::CoreIPCData,void>::decode(a1, &cf);
  if (v7 == 1)
  {
    v4 = *a1;
    if (*a1)
    {
      v5 = cf;
      if (cf)
      {
        CFRetain(cf);
      }

      *a2 = v5;
      LOBYTE(v4) = 1;
    }

    else
    {
      *a2 = 0;
      v5 = cf;
    }

    *(a2 + 8) = v4;
    if (v5)
    {

      CFRelease(v5);
    }
  }

  else
  {
    IPC::Decoder::markInvalid(a1);
    if (*a1)
    {
      __break(1u);
    }

    *a2 = 0;
    *(a2 + 8) = 0;
  }
}

uint64_t IPC::ArgumentCoder<std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,void>::encode<IPC::Encoder,std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(IPC::Encoder *a1, uint64_t a2)
{
  if (*(a2 + 8))
  {
    v6 = 1;
    IPC::Encoder::operator<<<BOOL>(a1, &v6);
    if (*(a2 + 8))
    {
      return IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *a2);
    }

    else
    {
      v5 = std::__throw_bad_optional_access[abi:sn200100]();
      return IPC::Decoder::decode<WTF::RetainPtr<__CFData const*>>(v5);
    }
  }

  else
  {
    v7 = 0;
    return IPC::Encoder::operator<<<BOOL>(a1, &v7);
  }
}

void IPC::Decoder::decode<WTF::RetainPtr<__CFData const*>>(uint64_t a1, IPC::Decoder *a2)
{
  IPC::ArgumentCoder<WTF::RetainPtr<__CFData const*>,void>::decode(a2, a1);
  if ((*(a1 + 8) & 1) == 0)
  {

    IPC::Decoder::markInvalid(a2);
  }
}

uint64_t IPC::VectorArgumentCoder<false,std::pair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::RegistrableDomain>,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<std::pair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::RegistrableDomain>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(IPC::Encoder *a1, uint64_t a2)
{
  result = IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *(a2 + 12));
  v5 = *(a2 + 12);
  if (v5)
  {
    v6 = *a2;
    v7 = *a2 + 16 * v5;
    v8 = v6;
    do
    {
      v9 = *v8;
      v8 += 2;
      IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, v9);
      result = IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, v6 + 1);
      v6 = v8;
    }

    while (v8 != v7);
  }

  return result;
}

uint64_t *IPC::ArgumentCoder<WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>,void>::encode<IPC::Encoder>(IPC::Encoder *a1, void **a2)
{
  if (*a2)
  {
    v4 = *(*a2 - 3);
  }

  else
  {
    v4 = 0;
  }

  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a1, v4);
  result = WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::begin(a2);
  v6 = result;
  v8 = v7;
  if (*a2)
  {
    v9 = &(*a2)[*(*a2 - 1)];
  }

  else
  {
    v9 = 0;
  }

  if (v9 != result)
  {
    do
    {
      result = IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, v6);
      do
      {
        ++v6;
      }

      while (v6 != v8 && (*v6 + 1) <= 1);
    }

    while (v6 != v9);
  }

  return result;
}

IPC::Decoder *IPC::Decoder::decode<WebKit::CoreIPCData>@<X0>(IPC::Decoder *a1@<X0>, _BYTE *a2@<X8>)
{
  result = IPC::ArgumentCoder<WebKit::CoreIPCData,void>::decode(a1, a2);
  if ((a2[8] & 1) == 0)
  {

    return IPC::Decoder::markInvalid(a1);
  }

  return result;
}

uint64_t IPC::ArgumentCoder<WebCore::ScreenProperties,void>::decode@<X0>(IPC::Decoder *this@<X0>, uint64_t a2@<X8>)
{
  v4 = *(this + 1);
  v5 = ((*(this + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
  v6 = v5 - *this;
  v7 = v4 >= v6;
  v8 = v4 - v6;
  if (v7 && v8 > 3)
  {
    *(this + 2) = v5 + 1;
    if (!v5)
    {
      goto LABEL_19;
    }

    v10 = *v5 | 0x100000000;
    goto LABEL_8;
  }

  while (1)
  {
    IPC::Decoder::markInvalid(this);
LABEL_19:
    IPC::Decoder::markInvalid(this);
    v10 = 0;
LABEL_8:
    IPC::Decoder::decode<WTF::HashMap<unsigned int,WebCore::ScreenData,WTF::DefaultHash<unsigned int>,WTF::HashTraits<unsigned int>,WTF::HashTraits<WebCore::ScreenData>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>(this, &v14);
    result = IPC::Decoder::decode<WTF::OptionSet<WebCore::ContentsFormat>>(this);
    if (!*this)
    {
      break;
    }

    if ((v10 & 0x100000000) != 0 && (v15 & 1) != 0 && (result & 0x100) != 0)
    {
      v13 = v14;
      *a2 = v10;
      *(a2 + 8) = v13;
      *(a2 + 16) = result;
      *(a2 + 24) = 1;
      return result;
    }

    __break(1u);
  }

  *a2 = 0;
  *(a2 + 24) = 0;
  if (v15)
  {
    result = v14;
    if (v14)
    {
      return WTF::HashTable<unsigned int,WTF::KeyValuePair<unsigned int,WebCore::ScreenData>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<unsigned int,WebCore::ScreenData>>,WTF::DefaultHash<unsigned int>,WTF::HashMap<unsigned int,WebCore::ScreenData,WTF::DefaultHash<unsigned int>,WTF::HashTraits<unsigned int>,WTF::HashTraits<WebCore::ScreenData>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<unsigned int>,WTF::FastMalloc>::deallocateTable(v14, v12);
    }
  }

  return result;
}

void sub_19D5B8A58(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  if (a10)
  {
    if (a9)
    {
      WTF::HashTable<unsigned int,WTF::KeyValuePair<unsigned int,WebCore::ScreenData>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<unsigned int,WebCore::ScreenData>>,WTF::DefaultHash<unsigned int>,WTF::HashMap<unsigned int,WebCore::ScreenData,WTF::DefaultHash<unsigned int>,WTF::HashTraits<unsigned int>,WTF::HashTraits<WebCore::ScreenData>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<unsigned int>,WTF::FastMalloc>::deallocateTable(a9, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t IPC::ArgumentCoder<WebCore::OrganizationStorageAccessPromptQuirk,void>::encode(IPC::Encoder *a1, uint64_t *a2)
{
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, a2);
  IPC::ArgumentCoder<WTF::HashMap<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,void>::encode<IPC::Encoder,WTF::HashMap<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc> const&>(a1, a2 + 1);

  return IPC::VectorArgumentCoder<false,WTF::URL,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WTF::URL,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(a1, (a2 + 2));
}

uint64_t IPC::VectorArgumentCoder<false,WebCore::OrganizationStorageAccessPromptQuirk,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WebCore::OrganizationStorageAccessPromptQuirk,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(IPC::Encoder *a1, uint64_t a2)
{
  result = IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *(a2 + 12));
  v5 = *(a2 + 12);
  if (v5)
  {
    v6 = *a2;
    v7 = 32 * v5;
    do
    {
      result = IPC::ArgumentCoder<WebCore::OrganizationStorageAccessPromptQuirk,void>::encode(a1, v6);
      v6 += 4;
      v7 -= 32;
    }

    while (v7);
  }

  return result;
}

uint64_t IPC::Decoder::decode<WebCore::ScreenProperties>@<X0>(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  result = IPC::ArgumentCoder<WebCore::ScreenProperties,void>::decode(a1, a2);
  if ((*(a2 + 24) & 1) == 0)
  {

    return IPC::Decoder::markInvalid(a1);
  }

  return result;
}

uint64_t IPC::ArgumentCoder<WTF::HashMap<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,void>::encode<IPC::Encoder,WTF::HashMap<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc> const&>(IPC::Encoder *a1, uint64_t *a2)
{
  if (*a2)
  {
    v4 = *(*a2 - 12);
  }

  else
  {
    v4 = 0;
  }

  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a1, v4);
  result = WTF::HashTable<WebCore::RegistrableDomain,WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashMap<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::begin(a2, v5, v6);
  v8 = result;
  v13[0] = result;
  v13[1] = v9;
  if (*a2)
  {
    v10 = *a2 + 24 * *(*a2 - 4);
  }

  else
  {
    v10 = 0;
  }

  if (v10 != result)
  {
    do
    {
      IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, v8);
      IPC::VectorArgumentCoder<false,WTF::String,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(a1, (v8 + 1));
      v13[0] += 24;
      result = WTF::HashTableConstIterator<WTF::HashTable<WebCore::RegistrableDomain,WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashMap<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>,WebCore::RegistrableDomain,WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashMap<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::RegistrableDomain>>::skipEmptyBuckets(v13, v11, v12);
      v8 = v13[0];
    }

    while (v13[0] != v10);
  }

  return result;
}

void IPC::Decoder::decode<WTF::HashMap<unsigned int,WebCore::ScreenData,WTF::DefaultHash<unsigned int>,WTF::HashTraits<unsigned int>,WTF::HashTraits<WebCore::ScreenData>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>(IPC::Decoder *a1@<X0>, _BYTE *a2@<X8>)
{
  IPC::ArgumentCoder<WTF::HashMap<unsigned int,WebCore::ScreenData,WTF::DefaultHash<unsigned int>,WTF::HashTraits<unsigned int>,WTF::HashTraits<WebCore::ScreenData>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,void>::decode<IPC::Decoder>(a1, a2);
  if ((a2[8] & 1) == 0)
  {
    IPC::Decoder::markInvalid(a1);
  }
}

void sub_19D5B8C6C(_Unwind_Exception *exception_object, void *a2)
{
  if (*(v2 + 8) == 1)
  {
    if (*v2)
    {
      WTF::HashTable<unsigned int,WTF::KeyValuePair<unsigned int,WebCore::ScreenData>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<unsigned int,WebCore::ScreenData>>,WTF::DefaultHash<unsigned int>,WTF::HashMap<unsigned int,WebCore::ScreenData,WTF::DefaultHash<unsigned int>,WTF::HashTraits<unsigned int>,WTF::HashTraits<WebCore::ScreenData>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<unsigned int>,WTF::FastMalloc>::deallocateTable(*v2, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

void IPC::ArgumentCoder<WTF::HashMap<unsigned int,WebCore::ScreenData,WTF::DefaultHash<unsigned int>,WTF::HashTraits<unsigned int>,WTF::HashTraits<WebCore::ScreenData>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,void>::decode<IPC::Decoder>(IPC::Decoder *this@<X0>, _BYTE *a2@<X8>)
{
  v4 = *(this + 1);
  v5 = ((*(this + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
  v6 = v5 - *this;
  v7 = v4 >= v6;
  v8 = v4 - v6;
  if (!v7 || v8 <= 3)
  {
    IPC::Decoder::markInvalid(this);
LABEL_120:
    IPC::Decoder::markInvalid(this);
    *a2 = 0;
    a2[8] = 0;
    return;
  }

  *(this + 2) = v5 + 1;
  if (!v5)
  {
    goto LABEL_120;
  }

  v10 = *v5;
  v93 = 0;
  if (!v10)
  {
LABEL_117:
    v73 = 0;
LABEL_98:
    *a2 = v73;
    a2[8] = 1;
    return;
  }

  v89 = a2;
  v11 = 0;
  v76 = v10;
  while (1)
  {
    v12 = *(this + 1);
    v13 = ((*(this + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
    v14 = v13 - *this;
    v7 = v12 >= v14;
    v15 = v12 - v14;
    if (!v7 || v15 <= 3)
    {
      IPC::Decoder::markInvalid(this);
LABEL_104:
      IPC::Decoder::markInvalid(this);
      *v89 = 0;
      v89[8] = 0;
      goto LABEL_105;
    }

    *(this + 2) = v13 + 1;
    if (!v13)
    {
      goto LABEL_104;
    }

    a2 = *v13;
    v17 = IPC::ArgumentCoder<WebCore::FloatPoint,void>::decode(this);
    v19 = v18;
    if ((v18 & 1) == 0)
    {
      IPC::Decoder::markInvalid(this);
    }

    v20 = IPC::ArgumentCoder<WebCore::FloatPoint,void>::decode(this);
    v22 = v21;
    if ((v21 & 1) == 0)
    {
      IPC::Decoder::markInvalid(this);
    }

    v88 = *this;
    if (*this)
    {
      if ((v19 & 1) == 0 || (v22 & 1) == 0)
      {
LABEL_116:
        __break(1u);
        goto LABEL_117;
      }

      v23 = v17 & 0xFFFFFFFFFFFFFF00;
      v17 = v17;
    }

    else
    {
      IPC::Decoder::markInvalid(this);
      v17 = 0;
      v23 = 0;
    }

    v24 = IPC::ArgumentCoder<WebCore::FloatPoint,void>::decode(this);
    v26 = v25;
    if ((v25 & 1) == 0)
    {
      IPC::Decoder::markInvalid(this);
    }

    v27 = IPC::ArgumentCoder<WebCore::FloatPoint,void>::decode(this);
    v29 = v28;
    if ((v28 & 1) == 0)
    {
      IPC::Decoder::markInvalid(this);
    }

    v87 = *this;
    if (*this)
    {
      if ((v26 & 1) == 0 || (v29 & 1) == 0)
      {
        goto LABEL_116;
      }

      v30 = v24 & 0xFFFFFFFFFFFFFF00;
      v24 = v24;
    }

    else
    {
      IPC::Decoder::markInvalid(this);
      v24 = 0;
      v30 = 0;
    }

    IPC::ArgumentCoder<WebCore::DestinationColorSpace,void>::decode(this, &v94);
    v90 = v95;
    if ((v95 & 1) == 0)
    {
      IPC::Decoder::markInvalid(this);
    }

    v92 = IPC::Decoder::decode<float>(this);
    v91 = IPC::Decoder::decode<float>(this);
    v32 = *(this + 1);
    v33 = *(this + 2);
    v34 = *this;
    v84 = v23;
    v85 = v20;
    v82 = v27;
    v83 = v17;
    v80 = v24;
    v81 = v30;
    if (v32 <= &v33[-*this])
    {
      IPC::Decoder::markInvalid(this);
LABEL_123:
      IPC::Decoder::markInvalid(this);
      v36 = 0;
      goto LABEL_124;
    }

    v35 = v33 + 1;
    *(this + 2) = v33 + 1;
    if (!v33)
    {
      goto LABEL_123;
    }

    v36 = *v33;
    if (v36 < 2)
    {
      v37 = 1;
      goto LABEL_37;
    }

LABEL_124:
    IPC::Decoder::markInvalid(this);
    v37 = 0;
    v32 = *(this + 1);
    v35 = *(this + 2);
    v34 = *this;
LABEL_37:
    v86 = v37;
    if (!v36)
    {
      v37 = 0;
    }

    v79 = v37;
    if (v32 <= &v35[-v34])
    {
      IPC::Decoder::markInvalid(this);
LABEL_126:
      IPC::Decoder::markInvalid(this);
      v39 = 0;
      goto LABEL_127;
    }

    v38 = v35 + 1;
    *(this + 2) = v35 + 1;
    if (!v35)
    {
      goto LABEL_126;
    }

    v39 = *v35;
    if (v39 < 2)
    {
      v40 = 1;
      goto LABEL_43;
    }

LABEL_127:
    IPC::Decoder::markInvalid(this);
    v40 = 0;
    v32 = *(this + 1);
    v38 = *(this + 2);
    v34 = *this;
LABEL_43:
    if (v39)
    {
      v41 = v40;
    }

    else
    {
      v41 = 0;
    }

    v78 = v41;
    if (v32 <= &v38[-v34])
    {
      IPC::Decoder::markInvalid(this);
LABEL_129:
      IPC::Decoder::markInvalid(this);
      v43 = 0;
      goto LABEL_130;
    }

    v42 = v38 + 1;
    *(this + 2) = v38 + 1;
    if (!v38)
    {
      goto LABEL_129;
    }

    v43 = *v38;
    if (v43 < 2)
    {
      v44 = 1;
      goto LABEL_50;
    }

LABEL_130:
    IPC::Decoder::markInvalid(this);
    v44 = 0;
    v32 = *(this + 1);
    v42 = *(this + 2);
    v34 = *this;
LABEL_50:
    if (v43)
    {
      v45 = v44;
    }

    else
    {
      v45 = 0;
    }

    v77 = v45;
    if (v32 <= &v42[-v34])
    {
      IPC::Decoder::markInvalid(this);
LABEL_132:
      IPC::Decoder::markInvalid(this);
      v47 = 0;
      goto LABEL_133;
    }

    v46 = v42 + 1;
    *(this + 2) = v42 + 1;
    if (!v42)
    {
      goto LABEL_132;
    }

    v47 = *v42;
    if (v47 < 2)
    {
      v48 = 1;
      goto LABEL_57;
    }

LABEL_133:
    IPC::Decoder::markInvalid(this);
    v48 = 0;
    v32 = *(this + 1);
    v46 = *(this + 2);
    v34 = *this;
LABEL_57:
    if (v47)
    {
      v49 = v48;
    }

    else
    {
      v49 = 0;
    }

    v50 = ((v46 + 3) & 0xFFFFFFFFFFFFFFFCLL);
    if (v32 < v50 - v34 || v32 - (v50 - v34) <= 3)
    {
      IPC::Decoder::markInvalid(this);
LABEL_135:
      IPC::Decoder::markInvalid(this);
      v52 = 0;
      v32 = *(this + 1);
      v51 = *(this + 2);
      v34 = *this;
      goto LABEL_64;
    }

    v51 = v50 + 1;
    *(this + 2) = v50 + 1;
    if (!v50)
    {
      goto LABEL_135;
    }

    v52 = *v50 | 0x100000000;
LABEL_64:
    v53 = ((v51 + 3) & 0xFFFFFFFFFFFFFFFCLL);
    if (v32 < v53 - v34 || v32 - (v53 - v34) <= 3)
    {
      IPC::Decoder::markInvalid(this);
LABEL_137:
      IPC::Decoder::markInvalid(this);
      v55 = 0;
      v32 = *(this + 1);
      v54 = *(this + 2);
      v34 = *this;
      goto LABEL_68;
    }

    v54 = v53 + 1;
    *(this + 2) = v53 + 1;
    if (!v53)
    {
      goto LABEL_137;
    }

    v55 = *v53 | 0x100000000;
LABEL_68:
    v56 = ((v54 + 3) & 0xFFFFFFFFFFFFFFFCLL);
    v7 = v32 >= v56 - v34;
    v57 = v32 - (v56 - v34);
    if (v7 && v57 > 3)
    {
      *(this + 2) = v56 + 1;
      if (v56)
      {
        v58 = *v56 | 0x100000000;
        goto LABEL_73;
      }
    }

    else
    {
      IPC::Decoder::markInvalid(this);
    }

    IPC::Decoder::markInvalid(this);
    v58 = 0;
    v34 = *this;
LABEL_73:
    if (!v34)
    {
      if (v90 && v94)
      {
        CFRelease(v94);
      }

      goto LABEL_104;
    }

    if (!v88 || !v87 || (v90 & 1) == 0 || (v92 & 0x100000000) == 0 || (v91 & 0x100000000) == 0 || (v86 & 1) == 0 || (v40 & 1) == 0 || (v44 & 1) == 0 || (v48 & 1) == 0 || (v52 & 0x100000000) == 0 || (v55 & 0x100000000) == 0 || (v58 & 0x100000000) == 0)
    {
      goto LABEL_116;
    }

    v59 = v94;
    if ((a2 - 1) > 0xFFFFFFFD)
    {
      goto LABEL_114;
    }

    v60 = v93;
    if (!v93)
    {
      WTF::HashTable<unsigned int,WTF::KeyValuePair<unsigned int,WebCore::ScreenData>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<unsigned int,WebCore::ScreenData>>,WTF::DefaultHash<unsigned int>,WTF::HashMap<unsigned int,WebCore::ScreenData,WTF::DefaultHash<unsigned int>,WTF::HashTraits<unsigned int>,WTF::HashTraits<WebCore::ScreenData>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<unsigned int>,WTF::FastMalloc>::expand(&v93);
      v60 = v93;
    }

    v61 = *(v60 - 8);
    v62 = 9 * ((a2 + ~(a2 << 15)) ^ ((a2 + ~(a2 << 15)) >> 10));
    v63 = (v62 ^ (v62 >> 6)) + ~((v62 ^ (v62 >> 6)) << 11);
    v64 = v61 & (v63 ^ HIWORD(v63));
    v65 = v60 + 72 * v64;
    v66 = *v65;
    if (*v65)
    {
      break;
    }

LABEL_90:
    *v65 = a2;
    *(v65 + 8) = v84 | v83;
    *(v65 + 16) = v85;
    *(v65 + 24) = v81 | v80;
    v67 = *(v65 + 40);
    *(v65 + 32) = v82;
    *(v65 + 40) = v59;
    if (v67)
    {
      CFRelease(v67);
    }

    *(v65 + 48) = v92;
    *(v65 + 52) = v91;
    *(v65 + 56) = v79;
    *(v65 + 57) = v78;
    *(v65 + 58) = v77;
    *(v65 + 59) = v49;
    *(v65 + 60) = v52;
    *(v65 + 64) = v55;
    *(v65 + 68) = v58;
    v68 = *(v60 - 16);
    v69 = *(v60 - 12) + 1;
    *(v60 - 12) = v69;
    v70 = (v68 + v69);
    v71 = *(v60 - 4);
    if (v71 > 0x400)
    {
      v72 = v71 > 2 * v70;
    }

    else
    {
      v72 = 3 * v71 > 4 * v70;
    }

    if (!v72)
    {
      WTF::HashTable<unsigned int,WTF::KeyValuePair<unsigned int,WebCore::ScreenData>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<unsigned int,WebCore::ScreenData>>,WTF::DefaultHash<unsigned int>,WTF::HashMap<unsigned int,WebCore::ScreenData,WTF::DefaultHash<unsigned int>,WTF::HashTraits<unsigned int>,WTF::HashTraits<WebCore::ScreenData>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<unsigned int>,WTF::FastMalloc>::expand(&v93);
    }

    if (++v11 == v76)
    {
      v73 = v93;
      a2 = v89;
      goto LABEL_98;
    }
  }

  v74 = 0;
  v75 = 1;
  while (v66 != a2)
  {
    if (v66 == -1)
    {
      v74 = v65;
    }

    v64 = (v64 + v75) & v61;
    v65 = v60 + 72 * v64;
    v66 = *v65;
    ++v75;
    if (!*v65)
    {
      if (v74)
      {
        v65 = v74;
        WTF::HashTable<unsigned int,WTF::KeyValuePair<unsigned int,WebCore::ScreenData>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<unsigned int,WebCore::ScreenData>>,WTF::DefaultHash<unsigned int>,WTF::HashMap<unsigned int,WebCore::ScreenData,WTF::DefaultHash<unsigned int>,WTF::HashTraits<unsigned int>,WTF::HashTraits<WebCore::ScreenData>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<unsigned int>,WTF::FastMalloc>::initializeBucket(v74);
        v60 = v93;
        --*(v93 - 16);
      }

      goto LABEL_90;
    }
  }

LABEL_114:
  *v89 = 0;
  v89[8] = 0;
  if (v59)
  {
    CFRelease(v59);
  }

LABEL_105:
  if (v93)
  {
    WTF::HashTable<unsigned int,WTF::KeyValuePair<unsigned int,WebCore::ScreenData>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<unsigned int,WebCore::ScreenData>>,WTF::DefaultHash<unsigned int>,WTF::HashMap<unsigned int,WebCore::ScreenData,WTF::DefaultHash<unsigned int>,WTF::HashTraits<unsigned int>,WTF::HashTraits<WebCore::ScreenData>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<unsigned int>,WTF::FastMalloc>::deallocateTable(v93, v31);
  }
}

void sub_19D5B934C(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, int a21, int a22)
{
  v24 = *(v22 - 104);
  if (v24)
  {
    WTF::HashTable<unsigned int,WTF::KeyValuePair<unsigned int,WebCore::ScreenData>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<unsigned int,WebCore::ScreenData>>,WTF::DefaultHash<unsigned int>,WTF::HashMap<unsigned int,WebCore::ScreenData,WTF::DefaultHash<unsigned int>,WTF::HashTraits<unsigned int>,WTF::HashTraits<WebCore::ScreenData>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<unsigned int>,WTF::FastMalloc>::deallocateTable(v24, a2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t IPC::VectorArgumentCoder<false,WTF::URL,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WTF::URL,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(IPC::Encoder *a1, uint64_t a2)
{
  result = IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *(a2 + 12));
  v5 = *(a2 + 12);
  if (v5)
  {
    v6 = *a2;
    v7 = 40 * v5;
    do
    {
      result = IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, v6);
      v6 += 5;
      v7 -= 40;
    }

    while (v7);
  }

  return result;
}

void WebKit::NetworkProcessCreationParameters::~NetworkProcessCreationParameters(WebKit::NetworkProcessCreationParameters *this, void *a2)
{
  WTF::Vector<WebCore::OrganizationStorageAccessPromptQuirk,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(this + 192, a2);
  v4 = *(this + 23);
  if (v4)
  {
    WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v4, v3);
  }

  WTF::Vector<std::pair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::RegistrableDomain>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(this + 168, v3);
  WTF::Vector<WebKit::WebsiteDataStoreParameters,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(this + 152, v5);
  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(this + 128, v6);
  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(this + 112, v7);
  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(this + 96, v8);
  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(this + 80, v9);
  v11 = *(this + 8);
  *(this + 8) = 0;
  if (v11)
  {
    CFRelease(v11);
  }

  v12 = *(this + 7);
  *(this + 7) = 0;
  if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v12, v10);
  }

  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(this + 40, v10);
  std::unique_ptr<WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>::~unique_ptr[abi:sn200100](this + 3, v13);
  v15 = *(this + 2);
  *(this + 2) = 0;
  if (v15 && atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v15, v14);
  }

  v16 = *(this + 1);
  *(this + 1) = 0;
  if (v16 && atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v16, v14);
  }

  v17 = *this;
  *this = 0;
  if (v17)
  {
    if (atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v17, v14);
    }
  }
}

WTF::StringImpl *WTF::VectorDestructor<true,WTF::URL>::destruct(WTF::StringImpl *result, WTF::StringImpl *a2)
{
  if (result != a2)
  {
    v3 = result;
    do
    {
      result = *v3;
      *v3 = 0;
      if (result)
      {
        if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          result = WTF::StringImpl::destroy(result, a2);
        }
      }

      v3 += 5;
    }

    while (v3 != a2);
  }

  return result;
}

uint64_t IPC::Decoder::decode<WebCore::FloatRect>@<X0>(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = IPC::ArgumentCoder<WebCore::FloatPoint,void>::decode(a1);
  v6 = v5;
  if ((v5 & 1) == 0)
  {
    IPC::Decoder::markInvalid(a1);
  }

  result = IPC::ArgumentCoder<WebCore::FloatPoint,void>::decode(a1);
  if ((v8 & 1) == 0)
  {
    v9 = v8;
    v10 = result;
    IPC::Decoder::markInvalid(a1);
    v8 = v9;
    result = v10;
  }

  if (*a1)
  {
    if (v6 & 1) != 0 && (v8)
    {
      *a2 = v4;
      *(a2 + 8) = result;
      *(a2 + 16) = 1;
      return result;
    }

    __break(1u);
  }

  *a2 = 0;
  *(a2 + 16) = 0;

  return IPC::Decoder::markInvalid(a1);
}

uint64_t IPC::ArgumentCoder<WebCore::FloatPoint,void>::decode(IPC::Decoder *a1)
{
  v1 = *(a1 + 1);
  v2 = ((*(a1 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
  v3 = *a1;
  v4 = v2 - *a1;
  v5 = v1 >= v4;
  v6 = v1 - v4;
  if (v5 && v6 > 3)
  {
    v8 = v2 + 1;
    *(a1 + 2) = v2 + 1;
    if (v2)
    {
      v9 = *v2 | 0x100000000;
      goto LABEL_8;
    }
  }

  else
  {
    v17 = a1;
    IPC::Decoder::markInvalid(a1);
    a1 = v17;
  }

  v18 = a1;
  IPC::Decoder::markInvalid(a1);
  a1 = v18;
  v9 = 0;
  v1 = *(v18 + 1);
  v8 = *(v18 + 2);
  v3 = *v18;
LABEL_8:
  v10 = ((v8 + 3) & 0xFFFFFFFFFFFFFFFCLL);
  v5 = v1 >= v10 - v3;
  v11 = v1 - (v10 - v3);
  if (v5 && v11 > 3)
  {
    *(a1 + 2) = v10 + 1;
    if (v10)
    {
      v13 = *v10 | 0x100000000;
      goto LABEL_15;
    }
  }

  else
  {
    v19 = a1;
    IPC::Decoder::markInvalid(a1);
    a1 = v19;
  }

  v16 = v9;
  v15 = a1;
  IPC::Decoder::markInvalid(a1);
  v13 = 0;
  v3 = *v15;
  v9 = v16;
LABEL_15:
  if (v3)
  {
    if ((v9 & 0x100000000) != 0 && (v13 & 0x100000000) != 0)
    {
      v3 = v9;
    }

    else
    {
      __break(1u);
    }
  }

  return v3 | (v13 << 32);
}

void IPC::ArgumentCoder<WebCore::DestinationColorSpace,void>::decode(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  IPC::ArgumentCoder<WTF::RetainPtr<CGColorSpace *>,void>::decode(a1, &cf);
  if (v6 == 1)
  {
    if (*a1)
    {
      *a2 = cf;
      *(a2 + 8) = 1;
      return;
    }
  }

  else
  {
    IPC::Decoder::markInvalid(a1);
    if (!*a1)
    {
      *a2 = 0;
      *(a2 + 8) = 0;
      return;
    }

    __break(1u);
  }

  *a2 = 0;
  *(a2 + 8) = 0;
  v4 = cf;
  if (cf)
  {

    CFRelease(v4);
  }
}