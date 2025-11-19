uint64_t WebKit::NetworkProcess::allowsFirstPartyForCookies(uint64_t a1, uint64_t a2, WTF::URL *a3)
{
  WebCore::RegistrableDomain::RegistrableDomain(&v11, a3);
  v7 = WebKit::NetworkProcess::allowsFirstPartyForCookies(a1, a2, &v11);
  v8 = v11;
  v11 = 0;
  if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v8, v6);
  }

  if (v7 != 2)
  {
    return v7;
  }

  isAboutBlank = WTF::URL::isAboutBlank(a3);
  result = 0;
  if ((isAboutBlank & 1) == 0)
  {
    if (*a3)
    {
      return v7;
    }
  }

  return result;
}

uint64_t WebKit::NetworkProcess::allowsFirstPartyForCookies(uint64_t a1, uint64_t a2, WTF **a3)
{
  v21 = a2;
  if (*a3 && *(*a3 + 1) && !MEMORY[0x19EB01EF0]())
  {
    v6 = 2;
  }

  else
  {
    v6 = 0;
  }

  if ((a2 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v7 = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::pair<WebKit::LoadedWebArchive,WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::pair<WebKit::LoadedWebArchive,WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::pair<WebKit::LoadedWebArchive,WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<std::pair<WebKit::LoadedWebArchive,WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::pair<WebKit::LoadedWebArchive,WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<std::pair<WebKit::LoadedWebArchive,WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>( (a1 + 256),  &v21);
    v9 = v7;
    v10 = *(a1 + 256);
    if (v10)
    {
      v10 += 3 * *(v10 - 1);
    }

    if (v10 != v7)
    {
      if (v7[1])
      {
        return 1;
      }

      if (*a3 != -1 && (WTF::equal(*a3, 0, v8) & 1) == 0 && v9[2])
      {
        if (WTF::equal(*a3, 0, v11) || *a3 == -1)
        {
          __break(0xC471u);
          JUMPOUT(0x19DC65930);
        }

        v13 = v9[2];
        if (v13)
        {
          v14 = *(v13 - 8);
          v15 = WTF::ASCIICaseInsensitiveHash::hash(*a3, v12) & v14;
          v16 = (v13 + 8 * v15);
          if ((WTF::equal(*v16, 0, v17) & 1) == 0)
          {
            v19 = 1;
            while (*v16 == -1 || (WTF::equalIgnoringASCIICase(*v16, *a3, v18) & 1) == 0)
            {
              v15 = (v15 + v19) & v14;
              v16 = (v13 + 8 * v15);
              ++v19;
              if (WTF::equal(*v16, 0, v18))
              {
                return v6;
              }
            }

            return 1;
          }
        }
      }
    }
  }

  return v6;
}

double WebKit::NetworkProcess::addStorageSession(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v31 = a2;
  WTF::HashMap<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebCore::NetworkStorageSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<decltype(nullptr)>(&v29, a1 + 31, &v31);
  if (v30 != 1)
  {
    return result;
  }

  if (*(a3 + 346) != 1)
  {
    cf = 0;
    v7 = 1;
    if (a2 >= -1)
    {
      if (*(a3 + 12))
      {
        WebKit::SandboxExtension::consumePermanently((a3 + 16));
        if (a2 != 1)
        {
          WebKit::cookieStorageFromIdentifyingData(a3, v33);
          cf = v33[0];
          v7 = v33[0] == 0;
        }
      }
    }

    v8 = *WebKit::NetworkProcess::uiProcessBundleIdentifier(a1);
    if (v8)
    {
      atomic_fetch_add_explicit(v8, 2u, memory_order_relaxed);
      WTF::tryMakeStringFromAdapters<WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<char,void>,WTF::StringTypeAdapter<unsigned long long,void>>(&v27, v8, 46, a2);
      v10 = v27;
      if (v27)
      {
        if (atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v8, v9);
        }

LABEL_12:
        v26 = 0;
        atomic_fetch_add_explicit(v10, 2u, memory_order_relaxed);
        WTF::UUID::UUID(v32);
        v33[0] = ".PrivateBrowsing.";
        v33[1] = 17;
        v34 = v10;
        WTF::tryMakeStringFromAdapters<WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::UUID,void>>(&v25, &v34, v33, v32);
        if (!v25)
        {
          __break(0xC471u);
          JUMPOUT(0x19DC65C6CLL);
        }

        WTF::String::createCFString(v33, &v25);
        v12 = v25;
        v25 = 0;
        if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          v12 = WTF::StringImpl::destroy(v12, v11);
        }

        if (atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          v12 = WTF::StringImpl::destroy(v10, v11);
        }

        if (a2 > -2)
        {
          if (a2 == 1)
          {
            WebCore::NetworkStorageSession::processMayUseCookieAPI(v12);
LABEL_21:
            v16 = WebCore::NetworkStorageSession::operator new(0x170, v15);
            MEMORY[0x19EB09A50](v16, a2, &v26, &cf, 0);
            v17 = v29;
            v18 = *(v29 + 8);
            *(v29 + 8) = v16;
            if (v18)
            {
              WebCore::NetworkStorageSession::operator delete();
              v16 = *(v17 + 8);
            }

            if (!v16)
            {
              __break(0xC471u);
              JUMPOUT(0x19DC65C8CLL);
            }

            ++*(v16 + 2);
            WebCore::NetworkStorageSession::setCookiesVersion(v16);
            v20 = *(v16 + 2);
            if (v20)
            {
              *(v16 + 2) = v20 - 1;
              v21 = v33[0];
              v33[0] = 0;
              if (v21)
              {
                CFRelease(v21);
              }

              v22 = v26;
              v26 = 0;
              if (v22)
              {
                CFRelease(v22);
              }

              if (atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v10, v19);
              }

              v23 = cf;
              cf = 0;
              if (v23)
              {
                CFRelease(v23);
              }

              return result;
            }

            __break(0xC471u);
LABEL_45:
            JUMPOUT(0x19DC65C64);
          }

          CFStorageSessionForIdentifier = WebCore::NetworkStorageSession::createCFStorageSessionForIdentifier();
        }

        else
        {
          CFStorageSessionForIdentifier = WebCore::createPrivateStorageSession();
        }

        v14 = v32[0];
        v26 = v32[0];
        if ((WebCore::NetworkStorageSession::processMayUseCookieAPI(CFStorageSessionForIdentifier) & v7) == 1 && v14)
        {
          cf = _CFURLStorageSessionCopyCookieStorage();
        }

        goto LABEL_21;
      }
    }

    else
    {
      WTF::tryMakeStringFromAdapters<WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<char,void>,WTF::StringTypeAdapter<unsigned long long,void>>(&v27, 0, 46, a2);
      v10 = v27;
      if (v27)
      {
        goto LABEL_12;
      }
    }

    __break(0xC471u);
    goto LABEL_45;
  }

  WebKit::NetworkProcess::newTestingSession(v33, a2);
  v24 = *(v29 + 8);
  *(v29 + 8) = v33[0];
  if (v24)
  {
    return WebCore::NetworkStorageSession::operator delete();
  }

  return result;
}

void WTF::HashMap<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebCore::NetworkStorageSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<decltype(nullptr)>(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  WTF::checkHashTableKey<PAL::SessionID,WTF::KeyValuePair<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>>>,WTF::DefaultHash<PAL::SessionID>,WTF::HashMap<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebCore::NetworkStorageSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<PAL::SessionID>,WTF::HashMapTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebCore::NetworkStorageSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,(WTF::ShouldValidateKey)1,PAL::SessionID>(*a3);
  v6 = *a2;
  if (!*a2)
  {
    WTF::HashTable<PAL::SessionID,WTF::KeyValuePair<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>>>,WTF::DefaultHash<PAL::SessionID>,WTF::HashMap<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebCore::NetworkStorageSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<PAL::SessionID>,WTF::FastMalloc>::expand(a2, 0);
    v6 = *a2;
  }

  v7 = *(v6 - 8);
  v8 = *a3;
  v9 = WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::SessionSet,WTF::RawPtrTraits<WebKit::SessionSet>,WTF::DefaultRefDerefTraits<WebKit::SessionSet>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::SessionSet,WTF::RawPtrTraits<WebKit::SessionSet>,WTF::DefaultRefDerefTraits<WebKit::SessionSet>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>::hash<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(*a3) & v7;
  v10 = (v6 + 16 * v9);
  v11 = *v10;
  if (*v10)
  {
    v19 = 0;
    v20 = 1;
    do
    {
      if (v11 == v8)
      {
        v18 = 0;
        v17 = v6 + 16 * *(v6 - 4);
        goto LABEL_9;
      }

      if (v11 == -1)
      {
        v19 = v10;
      }

      v9 = (v9 + v20) & v7;
      v10 = (v6 + 16 * v9);
      v11 = *v10;
      ++v20;
    }

    while (*v10);
    if (v19)
    {
      *v19 = 0;
      v19[1] = 0;
      v6 = *a2;
      --*(*a2 - 16);
      v8 = *a3;
      v10 = v19;
    }
  }

  v12 = v10[1];
  *v10 = v8;
  v10[1] = 0;
  if (v12)
  {
    WebCore::NetworkStorageSession::operator delete();
    v6 = *a2;
  }

  v13 = *(v6 - 16);
  v14 = *(v6 - 12) + 1;
  *(v6 - 12) = v14;
  v15 = (v13 + v14);
  v16 = *(v6 - 4);
  if (v16 > 0x400)
  {
    if (v16 > 2 * v15)
    {
      goto LABEL_8;
    }

LABEL_18:
    v10 = WTF::HashTable<PAL::SessionID,WTF::KeyValuePair<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>>>,WTF::DefaultHash<PAL::SessionID>,WTF::HashMap<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebCore::NetworkStorageSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<PAL::SessionID>,WTF::FastMalloc>::expand(a2, v10);
    v6 = *a2;
    if (*a2)
    {
      v16 = *(v6 - 4);
    }

    else
    {
      v16 = 0;
    }

    goto LABEL_8;
  }

  if (3 * v16 <= 4 * v15)
  {
    goto LABEL_18;
  }

LABEL_8:
  v17 = v6 + 16 * v16;
  v18 = 1;
LABEL_9:
  *a1 = v10;
  *(a1 + 8) = v17;
  *(a1 + 16) = v18;
}

void WebKit::NetworkProcess::newTestingSession(uint64_t *a1, uint64_t a2)
{
  v10 = a2;
  v11[0] = "WebKit Test-";
  v11[1] = 13;
  LODWORD(cf) = getpid();
  WTF::tryMakeString<WTF::ASCIILiteral,int>(v11, &cf, &v8);
  if (v8)
  {
    WTF::String::createCFString(&cf, &v8);
    WebCore::createPrivateStorageSession();
    v4 = cf;
    cf = 0;
    if (v4)
    {
      CFRelease(v4);
    }

    v5 = v8;
    v8 = 0;
    if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      v5 = WTF::StringImpl::destroy(v5, v3);
    }

    cf = 0;
    if (WebCore::NetworkStorageSession::processMayUseCookieAPI(v5) && v11[0])
    {
      cf = _CFURLStorageSessionCopyCookieStorage();
    }

    std::make_unique[abi:sn200100]<WebCore::NetworkStorageSession,PAL::SessionID &,WTF::RetainPtr<__CFURLStorageSession const*>,WTF::RetainPtr<OpaqueCFHTTPCookieStorage *>,0>(a1, &v10, v11, &cf);
    v6 = cf;
    cf = 0;
    if (v6)
    {
      CFRelease(v6);
    }

    v7 = v11[0];
    v11[0] = 0;
    if (v7)
    {
      CFRelease(v7);
    }
  }

  else
  {
    __break(0xC471u);
  }
}

uint64_t WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::ensure<WebKit::NetworkProcess::addWebsiteDataStore(WebKit::WebsiteDataStoreParameters &&)::$_0>(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  WTF::checkHashTableKey<PAL::SessionID,WTF::KeyValuePair<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>>>,WTF::DefaultHash<PAL::SessionID>,WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<PAL::SessionID>,WTF::HashMapEnsureTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,(WTF::ShouldValidateKey)1,PAL::SessionID>(*a3);
  v8 = *a2;
  if (!*a2)
  {
    WTF::HashTable<PAL::SessionID,WTF::KeyValuePair<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>>>,WTF::DefaultHash<PAL::SessionID>,WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<PAL::SessionID>,WTF::FastMalloc>::expand(a2, 0);
    v8 = *a2;
  }

  v9 = *(v8 - 8);
  v10 = *a3;
  result = WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::SessionSet,WTF::RawPtrTraits<WebKit::SessionSet>,WTF::DefaultRefDerefTraits<WebKit::SessionSet>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::SessionSet,WTF::RawPtrTraits<WebKit::SessionSet>,WTF::DefaultRefDerefTraits<WebKit::SessionSet>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>::hash<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(*a3);
  v12 = result & v9;
  v13 = (v8 + 16 * (result & v9));
  v14 = *v13;
  if (*v13)
  {
    v21 = 0;
    v22 = 1;
    do
    {
      if (v14 == v10)
      {
        v20 = 0;
        v19 = v8 + 16 * *(v8 - 4);
        goto LABEL_9;
      }

      if (v14 == -1)
      {
        v21 = v13;
      }

      v12 = (v12 + v22) & v9;
      v13 = (v8 + 16 * v12);
      v14 = *v13;
      ++v22;
    }

    while (*v13);
    if (v21)
    {
      *v21 = 0;
      v21[1] = 0;
      --*(*a2 - 16);
      v10 = *a3;
      v13 = v21;
    }
  }

  result = WTF::HashMapEnsureTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>::translate<PAL::SessionID const&,WTF::KeyValuePair<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>>,WebKit::NetworkProcess::addWebsiteDataStore(WebKit::WebsiteDataStoreParameters &&)::$_0>(v13, v10, *a4, *(a4 + 8));
  v15 = *a2;
  if (*a2)
  {
    v16 = *(v15 - 12) + 1;
  }

  else
  {
    v16 = 1;
  }

  *(v15 - 12) = v16;
  v17 = (*(v15 - 16) + v16);
  v18 = *(v15 - 4);
  if (v18 > 0x400)
  {
    if (v18 > 2 * v17)
    {
      goto LABEL_8;
    }

LABEL_19:
    result = WTF::HashTable<PAL::SessionID,WTF::KeyValuePair<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>>>,WTF::DefaultHash<PAL::SessionID>,WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<PAL::SessionID>,WTF::FastMalloc>::expand(a2, v13);
    v13 = result;
    v15 = *a2;
    if (*a2)
    {
      v18 = *(v15 - 4);
    }

    else
    {
      v18 = 0;
    }

    goto LABEL_8;
  }

  if (3 * v18 <= 4 * v17)
  {
    goto LABEL_19;
  }

LABEL_8:
  v19 = v15 + 16 * v18;
  v20 = 1;
LABEL_9:
  *a1 = v13;
  *(a1 + 8) = v19;
  *(a1 + 16) = v20;
  return result;
}

uint64_t WebKit::NetworkProcess::cookieAcceptPolicyChanged(uint64_t a1, char a2)
{
  result = WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::begin((a1 + 152));
  v5 = result;
  v7 = v6;
  v8 = *(a1 + 152);
  if (v8)
  {
    v9 = (v8 + 16 * *(v8 - 4));
  }

  else
  {
    v9 = 0;
  }

  if (v9 != result)
  {
    do
    {
      v10 = *(v5[1] + 80);
      v11 = a2;
      result = IPC::Connection::send<Messages::NetworkProcessConnection::CookieAcceptPolicyChanged>(v10, &v11, 0, 0, 0);
      do
      {
        v5 += 2;
      }

      while (v5 != v7 && (*v5 + 1) <= 1);
    }

    while (v5 != v9);
  }

  return result;
}

uint64_t WebKit::NetworkProcess::destroySession(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v37 = *MEMORY[0x1E69E9840];
  v32 = a2;
  WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::take(&v31, (a1 + 240), &v32);
  v6 = v31;
  if (v31)
  {
    if (v31[70] == 0)
    {
      v7 = 0;
      LOBYTE(v35) = 0;
    }

    else
    {
      v35 = v31[70];
      v7 = 1;
    }

    v36 = v7;
    v8 = qword_1ED641350;
    if (os_log_type_enabled(qword_1ED641350, OS_LOG_TYPE_DEFAULT))
    {
      if (v7)
      {
        WTF::UUID::toString(&v29, &v35);
        WTF::String::utf8();
        v9 = v30 ? v30 + 16 : 0;
      }

      else
      {
        v9 = "null";
      }

      *buf = 134218498;
      *&buf[4] = a1;
      *&buf[12] = 2048;
      *&buf[14] = a2;
      *&buf[22] = 2082;
      v34 = v9;
      _os_log_impl(&dword_19D52D000, v8, OS_LOG_TYPE_DEFAULT, "%p - NetworkProcess::destroySession sessionID=%llu identifier=%{public}s", buf, 0x20u);
      if (v7)
      {
        v11 = v30;
        v30 = 0;
        if (v11)
        {
          if (*v11 == 1)
          {
            WTF::fastFree(v11, v10);
          }

          else
          {
            --*v11;
          }
        }

        v12 = v29;
        v29 = 0;
        if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v12, v10);
        }
      }
    }

    (*(*v6 + 80))(v6);
    v13 = v6[131];
    v14 = (v13 + 8);
    do
    {
      v15 = *v14;
      if ((*v14 & 1) == 0)
      {
        WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v14);
        break;
      }

      v25 = *v14;
      atomic_compare_exchange_strong_explicit(v14, &v25, v15 + 2, memory_order_relaxed, memory_order_relaxed);
    }

    while (v25 != v15);
    while (1)
    {
      v16 = *v14;
      if ((*v14 & 1) == 0)
      {
        break;
      }

      v26 = *v14;
      atomic_compare_exchange_strong_explicit(v14, &v26, v16 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v26 == v16)
      {
        goto LABEL_17;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v14);
LABEL_17:
    v28 = v13;
    WTF::HashTable<WTF::Ref<WebKit::NetworkStorageManager,WTF::RawPtrTraits<WebKit::NetworkStorageManager>,WTF::DefaultRefDerefTraits<WebKit::NetworkStorageManager>>,WTF::Ref<WebKit::NetworkStorageManager,WTF::RawPtrTraits<WebKit::NetworkStorageManager>,WTF::DefaultRefDerefTraits<WebKit::NetworkStorageManager>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::Ref<WebKit::NetworkStorageManager,WTF::RawPtrTraits<WebKit::NetworkStorageManager>,WTF::DefaultRefDerefTraits<WebKit::NetworkStorageManager>>>,WTF::HashTraits<WTF::Ref<WebKit::NetworkStorageManager,WTF::RawPtrTraits<WebKit::NetworkStorageManager>,WTF::DefaultRefDerefTraits<WebKit::NetworkStorageManager>>>,WTF::HashTraits<WTF::Ref<WebKit::NetworkStorageManager,WTF::RawPtrTraits<WebKit::NetworkStorageManager>,WTF::DefaultRefDerefTraits<WebKit::NetworkStorageManager>>>,WTF::FastMalloc>::add<(WTF::ShouldValidateKey)1>(buf, (a1 + 368), &v28);
    if (v28)
    {
      WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)2>,(WTF::DestructionThread)2>::deref(v28 + 1);
    }

    *buf = a1;
    *&buf[8] = a1;
    atomic_fetch_add((a1 + 144), 1u);
    while (1)
    {
      v17 = *v14;
      if ((*v14 & 1) == 0)
      {
        break;
      }

      v27 = *v14;
      atomic_compare_exchange_strong_explicit(v14, &v27, v17 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v27 == v17)
      {
        goto LABEL_22;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v14);
LABEL_22:
    v18 = *a3;
    *a3 = 0;
    v19 = WTF::fastMalloc(0x28);
    *v19 = &unk_1F11014F0;
    v19[1] = *buf;
    v19[2] = a1;
    *&buf[8] = 0uLL;
    v19[3] = v13;
    v19[4] = v18;
    v34 = 0;
    v28 = v19;
    WebKit::NetworkStorageManager::close(v13, &v28);
    v20 = v28;
    v28 = 0;
    if (v20)
    {
      (*(*v20 + 8))(v20);
    }

    WebKit::NetworkProcess::destroySession(PAL::SessionID,WTF::CompletionHandler<void ()(void)> &&)::$_0::~$_0(buf);
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)2>,(WTF::DestructionThread)2>::deref((v13 + 8));
    if (v31)
    {
      (*(*v31 + 8))(v31);
    }
  }

  v21 = WTF::HashTable<PAL::SessionID,WTF::KeyValuePair<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>>>,WTF::DefaultHash<PAL::SessionID>,WTF::HashMap<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebCore::NetworkStorageSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<PAL::SessionID>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebCore::NetworkStorageSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,(WTF::ShouldValidateKey)1,PAL::SessionID>((a1 + 248), &v32);
  WTF::HashMap<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebCore::NetworkStorageSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::remove((a1 + 248), v21);
  v22 = WTF::HashTable<PAL::SessionID,PAL::SessionID,WTF::IdentityExtractor,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashTraits<PAL::SessionID>,WTF::DefaultHash<PAL::SessionID>>,(WTF::ShouldValidateKey)1,PAL::SessionID>((a1 + 232), &v32);
  result = WTF::HashSet<PAL::SessionID,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>::remove((a1 + 232), v22);
  v24 = *a3;
  if (*a3)
  {
    *a3 = 0;
    (*(*v24 + 16))(v24);
    return (*(*v24 + 8))(v24);
  }

  return result;
}

void *WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::take(void *a1, uint64_t *a2, uint64_t *a3)
{
  result = WTF::HashTable<PAL::SessionID,WTF::KeyValuePair<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>>>,WTF::DefaultHash<PAL::SessionID>,WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<PAL::SessionID>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,(WTF::ShouldValidateKey)1,PAL::SessionID>(a2, a3);
  v6 = *a2;
  if (*a2)
  {
    v6 += 16 * *(v6 - 4);
  }

  if (v6 == result)
  {
    v7 = 0;
  }

  else
  {
    v7 = result[1];
    result[1] = 0;
    result = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::remove(a2, result);
  }

  *a1 = v7;
  return result;
}

void *WebKit::NetworkProcess::destroySession(PAL::SessionID,WTF::CompletionHandler<void ()(void)> &&)::$_0::~$_0(void *a1)
{
  v2 = a1[3];
  a1[3] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = a1[2];
  a1[2] = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)2>,(WTF::DestructionThread)2>::deref((v3 + 8));
  }

  v4 = a1[1];
  a1[1] = 0;
  if (v4 && atomic_fetch_add(v4 + 36, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v4 + 36);
    (*(*v4 + 24))(v4);
  }

  return a1;
}

uint64_t WebKit::NetworkProcess::ensureSessionWithDataStoreIdentifierRemoved(char *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v36 = *MEMORY[0x1E69E9840];
  v30 = a2;
  v31 = a3;
  v6 = qword_1ED641350;
  if (os_log_type_enabled(qword_1ED641350, OS_LOG_TYPE_DEFAULT))
  {
    WTF::UUID::toString(&v28, &v30);
    WTF::String::utf8();
    if (v29)
    {
      v7 = v29 + 16;
    }

    else
    {
      v7 = 0;
    }

    *buf = 134218242;
    v33 = a1;
    v34 = 2082;
    v35 = v7;
    _os_log_impl(&dword_19D52D000, v6, OS_LOG_TYPE_DEFAULT, "%p - NetworkProcess::ensureSessionWithDataStoreIdentifierRemoved identifier=%{public}s", buf, 0x16u);
    v9 = v29;
    v29 = 0;
    if (v9)
    {
      if (*v9 == 1)
      {
        WTF::fastFree(v9, v8);
      }

      else
      {
        --*v9;
      }
    }

    v10 = v28;
    v28 = 0;
    if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v10, v8);
    }
  }

  v11 = *(a1 + 30);
  v12 = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::GPUConnectionToWebProcess,WTF::RawPtrTraits<WebKit::GPUConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::GPUConnectionToWebProcess>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::GPUConnectionToWebProcess,WTF::RawPtrTraits<WebKit::GPUConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::GPUConnectionToWebProcess>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::GPUConnectionToWebProcess,WTF::RawPtrTraits<WebKit::GPUConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::GPUConnectionToWebProcess>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::GPUConnectionToWebProcess,WTF::RawPtrTraits<WebKit::GPUConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::GPUConnectionToWebProcess>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::begin(v11);
  v13 = v12;
  v15 = v14;
  if (v11)
  {
    v16 = &v11[2 * *(v11 - 1)];
  }

  else
  {
    v16 = 0;
  }

  if (v16 != v12)
  {
    do
    {
      v17 = v13[1];
      v18 = *(v17 + 1128);
      v19 = *(v17 + 1120);
      if (v19 | v18)
      {
        if (v18 == v31 && v19 == v30)
        {
          v21 = qword_1ED641350;
          if (os_log_type_enabled(qword_1ED641350, OS_LOG_TYPE_ERROR))
          {
            WTF::UUID::toString(&v28, &v30);
            WTF::String::utf8();
            if (v29)
            {
              v22 = v29 + 16;
            }

            else
            {
              v22 = 0;
            }

            *buf = 136446210;
            v33 = v22;
            _os_log_error_impl(&dword_19D52D000, v21, OS_LOG_TYPE_ERROR, "NetworkProcess::ensureSessionWithDataStoreIdentifierRemoved session still exists for identifier %{public}s", buf, 0xCu);
            v24 = v29;
            v29 = 0;
            if (v24)
            {
              if (*v24 == 1)
              {
                WTF::fastFree(v24, v23);
              }

              else
              {
                --*v24;
              }
            }

            v25 = v28;
            v28 = 0;
            if (v25 && atomic_fetch_add_explicit(v25, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v25, v23);
            }
          }
        }
      }

      do
      {
        v13 += 2;
      }

      while (v13 != v15 && (*v13 + 1) <= 1);
    }

    while (v13 != v16);
  }

  v26 = *a4;
  *a4 = 0;
  (*(*v26 + 16))(v26);
  return (*(*v26 + 8))(v26);
}

uint64_t WebKit::NetworkProcess::registrableDomainsWithLastAccessedTime(uint64_t a1, WTF::StringImpl **a2, uint64_t *a3)
{
  v14 = a2;
  v4 = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((a1 + 240), &v14);
  if (v4)
  {
    v5 = v4;
    v6 = *(v4 + 16);
    *(v4 + 16) = v6 + 1;
    v7 = *(v4 + 72);
    if (v7)
    {
      while (1)
      {
        v8 = *v7;
        if ((*v7 & 1) == 0)
        {
          break;
        }

        v9 = *v7;
        atomic_compare_exchange_strong_explicit(v7, &v9, v8 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v9 == v8)
        {
          goto LABEL_5;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v7);
LABEL_5:
      WebKit::WebResourceLoadStatisticsStore::registrableDomainsWithLastAccessedTime(v7, a3);
      result = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::WebResourceLoadStatisticsStore,(WTF::DestructionThread)1>::deref(v7);
      v11 = *(v5 + 16);
      if (v11)
      {
        *(v5 + 16) = v11 - 1;
        return result;
      }

LABEL_14:
      result = 290;
      __break(0xC471u);
      return result;
    }

    if (v6 == -1)
    {
      goto LABEL_14;
    }

    *(v4 + 16) = v6;
  }

  LOBYTE(v14) = 0;
  v15 = 0;
  v12 = *a3;
  *a3 = 0;
  (*(*v12 + 16))(v12, &v14);
  result = (*(*v12 + 8))(v12);
  if (v15 == 1)
  {
    result = v14;
    if (v14)
    {
      return WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,Inspector::SupplementalBackendDispatcher *>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,Inspector::SupplementalBackendDispatcher *>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,Inspector::SupplementalBackendDispatcher *,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<Inspector::SupplementalBackendDispatcher *>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v14, v13);
    }
  }

  return result;
}

uint64_t WebKit::NetworkProcess::registrableDomainsExemptFromWebsiteDataDeletion(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v16 = a2;
  v4 = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((a1 + 240), &v16);
  if (v4)
  {
    v5 = v4;
    v6 = *(v4 + 16);
    *(v4 + 16) = v6 + 1;
    v7 = *(v4 + 72);
    if (v7)
    {
      while (1)
      {
        v8 = *v7;
        if ((*v7 & 1) == 0)
        {
          break;
        }

        v9 = *v7;
        atomic_compare_exchange_strong_explicit(v7, &v9, v8 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v9 == v8)
        {
          goto LABEL_5;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v7);
LABEL_5:
      v10 = WTF::fastMalloc(0x10);
      *v10 = &unk_1F1101518;
      v11 = *a3;
      *a3 = 0;
      v10[1] = v11;
      v16 = v10;
      WebKit::WebResourceLoadStatisticsStore::registrableDomainsExemptFromWebsiteDataDeletion(v7, &v16);
      if (v16)
      {
        (*(*v16 + 8))(v16);
      }

      result = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::WebResourceLoadStatisticsStore,(WTF::DestructionThread)1>::deref(v7);
      v13 = *(v5 + 16);
      if (v13)
      {
        *(v5 + 16) = v13 - 1;
        return result;
      }

LABEL_15:
      result = 290;
      __break(0xC471u);
      return result;
    }

    if (v6 == -1)
    {
      goto LABEL_15;
    }

    *(v4 + 16) = v6;
  }

  v15 = 0;
  WTF::CompletionHandler<void ()(WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>)>::operator()(a3, &v15);
  result = v15;
  if (v15)
  {
    return WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v15, v14);
  }

  return result;
}

uint64_t WTF::CompletionHandler<void ()(WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>)>::operator()(uint64_t *a1, WTF::StringImpl ***a2)
{
  v2 = *a1;
  *a1 = 0;
  v3 = *a2;
  *a2 = 0;
  v6 = v3;
  v7 = v2;
  WTF::Function<void ()(WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>)>::operator()(&v7, &v6);
  if (v6)
  {
    WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v6, v4);
  }

  result = v7;
  v7 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t WebKit::NetworkProcess::dumpResourceLoadStatistics(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v17 = a2;
  v4 = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((a1 + 240), &v17);
  if (v4)
  {
    v5 = v4;
    ++*(v4 + 16);
    v6 = *(v4 + 72);
    if (v6)
    {
      while (1)
      {
        v7 = *v6;
        if ((*v6 & 1) == 0)
        {
          break;
        }

        v8 = *v6;
        atomic_compare_exchange_strong_explicit(v6, &v8, v7 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v8 == v7)
        {
          goto LABEL_5;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v6);
LABEL_5:
      v9 = WTF::fastMalloc(0x10);
      *v9 = &unk_1F1102268;
      v10 = *a3;
      *a3 = 0;
      v9[1] = v10;
      v17 = v9;
      WebKit::WebResourceLoadStatisticsStore::dumpResourceLoadStatistics(v6, &v17);
      if (v17)
      {
        (*(*v17 + 8))(v17);
      }

      result = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::WebResourceLoadStatisticsStore,(WTF::DestructionThread)1>::deref(v6);
    }

    else
    {
      v16 = 0;
      WTF::CompletionHandler<void ()(WTF::String)>::operator()(a3, &v16);
      result = v16;
      v16 = 0;
      if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        result = WTF::StringImpl::destroy(result, v14);
      }
    }

    v12 = *(v5 + 16);
    if (v12)
    {
      *(v5 + 16) = v12 - 1;
    }

    else
    {
      result = 290;
      __break(0xC471u);
    }
  }

  else
  {
    v15 = 0;
    WTF::CompletionHandler<void ()(WTF::String)>::operator()(a3, &v15);
    result = v15;
    v15 = 0;
    if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v13);
    }
  }

  return result;
}

uint64_t WebKit::NetworkProcess::updatePrevalentDomainsToBlockCookiesFor(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v10 = a2;
  v5 = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebCore::NetworkStorageSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebCore::NetworkStorageSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((a1 + 248), &v10);
  if (!v5)
  {
    goto LABEL_4;
  }

  v6 = v5;
  ++*(v5 + 8);
  WebCore::NetworkStorageSession::setPrevalentDomainsToBlockAndDeleteCookiesFor();
  v7 = *(v6 + 8);
  if (v7)
  {
    *(v6 + 8) = v7 - 1;
LABEL_4:
    v8 = *a4;
    *a4 = 0;
    (*(*v8 + 16))(v8);
    return (*(*v8 + 8))(v8);
  }

  result = 290;
  __break(0xC471u);
  return result;
}

uint64_t WebKit::NetworkProcess::isGrandfathered(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v15 = a2;
  v6 = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((a1 + 240), &v15);
  if (v6)
  {
    v7 = v6;
    ++*(v6 + 16);
    v8 = *(v6 + 72);
    if (v8)
    {
      while (1)
      {
        v9 = *v8;
        if ((*v8 & 1) == 0)
        {
          break;
        }

        v10 = *v8;
        atomic_compare_exchange_strong_explicit(v8, &v10, v9 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v10 == v9)
        {
          goto LABEL_5;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v8);
LABEL_5:
      WebKit::WebResourceLoadStatisticsStore::isGrandfathered(v8, a3, a4);
      result = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::WebResourceLoadStatisticsStore,(WTF::DestructionThread)1>::deref(v8);
    }

    else
    {
      v14 = *a4;
      *a4 = 0;
      (*(*v14 + 16))(v14, 0);
      result = (*(*v14 + 8))(v14);
    }

    v12 = *(v7 + 16);
    if (v12)
    {
      *(v7 + 16) = v12 - 1;
    }

    else
    {
      result = 290;
      __break(0xC471u);
    }
  }

  else
  {
    v13 = *a4;
    *a4 = 0;
    (*(*v13 + 16))(v13, 0);
    return (*(*v13 + 8))(v13);
  }

  return result;
}

uint64_t WebKit::NetworkProcess::isPrevalentResource(uint64_t a1, uint64_t a2, uint64_t a3, WTF::StringImpl **a4)
{
  v15 = a2;
  v6 = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((a1 + 240), &v15);
  if (v6)
  {
    v7 = v6;
    ++*(v6 + 16);
    v8 = *(v6 + 72);
    if (v8)
    {
      while (1)
      {
        v9 = *v8;
        if ((*v8 & 1) == 0)
        {
          break;
        }

        v10 = *v8;
        atomic_compare_exchange_strong_explicit(v8, &v10, v9 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v10 == v9)
        {
          goto LABEL_5;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v8);
LABEL_5:
      WebKit::WebResourceLoadStatisticsStore::isPrevalentResource(v8, a3, a4);
      result = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::WebResourceLoadStatisticsStore,(WTF::DestructionThread)1>::deref(v8);
    }

    else
    {
      v14 = *a4;
      *a4 = 0;
      (*(*v14 + 16))(v14, 0);
      result = (*(*v14 + 8))(v14);
    }

    v12 = *(v7 + 16);
    if (v12)
    {
      *(v7 + 16) = v12 - 1;
    }

    else
    {
      result = 290;
      __break(0xC471u);
    }
  }

  else
  {
    v13 = *a4;
    *a4 = 0;
    (*(*v13 + 16))(v13, 0);
    return (*(*v13 + 8))(v13);
  }

  return result;
}

uint64_t WebKit::NetworkProcess::isVeryPrevalentResource(uint64_t a1, uint64_t a2, uint64_t a3, WTF::StringImpl **a4)
{
  v15 = a2;
  v6 = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((a1 + 240), &v15);
  if (v6)
  {
    v7 = v6;
    ++*(v6 + 16);
    v8 = *(v6 + 72);
    if (v8)
    {
      while (1)
      {
        v9 = *v8;
        if ((*v8 & 1) == 0)
        {
          break;
        }

        v10 = *v8;
        atomic_compare_exchange_strong_explicit(v8, &v10, v9 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v10 == v9)
        {
          goto LABEL_5;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v8);
LABEL_5:
      WebKit::WebResourceLoadStatisticsStore::isVeryPrevalentResource(v8, a3, a4);
      result = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::WebResourceLoadStatisticsStore,(WTF::DestructionThread)1>::deref(v8);
    }

    else
    {
      v14 = *a4;
      *a4 = 0;
      (*(*v14 + 16))(v14, 0);
      result = (*(*v14 + 8))(v14);
    }

    v12 = *(v7 + 16);
    if (v12)
    {
      *(v7 + 16) = v12 - 1;
    }

    else
    {
      result = 290;
      __break(0xC471u);
    }
  }

  else
  {
    v13 = *a4;
    *a4 = 0;
    (*(*v13 + 16))(v13, 0);
    return (*(*v13 + 8))(v13);
  }

  return result;
}

uint64_t WebKit::NetworkProcess::setGrandfathered(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5)
{
  v17 = a2;
  v8 = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((a1 + 240), &v17);
  if (v8)
  {
    v9 = v8;
    ++*(v8 + 16);
    v10 = *(v8 + 72);
    if (v10)
    {
      while (1)
      {
        v11 = *v10;
        if ((*v10 & 1) == 0)
        {
          break;
        }

        v12 = *v10;
        atomic_compare_exchange_strong_explicit(v10, &v12, v11 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v12 == v11)
        {
          goto LABEL_5;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v10);
LABEL_5:
      WebKit::WebResourceLoadStatisticsStore::setGrandfathered(v10, a3, a4, a5);
      result = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::WebResourceLoadStatisticsStore,(WTF::DestructionThread)1>::deref(v10);
    }

    else
    {
      v16 = *a5;
      *a5 = 0;
      (*(*v16 + 16))(v16);
      result = (*(*v16 + 8))(v16);
    }

    v14 = *(v9 + 16);
    if (v14)
    {
      *(v9 + 16) = v14 - 1;
    }

    else
    {
      result = 290;
      __break(0xC471u);
    }
  }

  else
  {
    v15 = *a5;
    *a5 = 0;
    (*(*v15 + 16))(v15);
    return (*(*v15 + 8))(v15);
  }

  return result;
}

uint64_t WebKit::NetworkProcess::setPrevalentResource(uint64_t a1, uint64_t a2, uint64_t a3, WTF::StringImpl **a4)
{
  v15 = a2;
  v6 = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((a1 + 240), &v15);
  if (v6)
  {
    v7 = v6;
    ++*(v6 + 16);
    v8 = *(v6 + 72);
    if (v8)
    {
      while (1)
      {
        v9 = *v8;
        if ((*v8 & 1) == 0)
        {
          break;
        }

        v10 = *v8;
        atomic_compare_exchange_strong_explicit(v8, &v10, v9 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v10 == v9)
        {
          goto LABEL_5;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v8);
LABEL_5:
      WebKit::WebResourceLoadStatisticsStore::setPrevalentResource(v8, a3, a4);
      result = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::WebResourceLoadStatisticsStore,(WTF::DestructionThread)1>::deref(v8);
    }

    else
    {
      v14 = *a4;
      *a4 = 0;
      (*(*v14 + 16))(v14);
      result = (*(*v14 + 8))(v14);
    }

    v12 = *(v7 + 16);
    if (v12)
    {
      *(v7 + 16) = v12 - 1;
    }

    else
    {
      result = 290;
      __break(0xC471u);
    }
  }

  else
  {
    v13 = *a4;
    *a4 = 0;
    (*(*v13 + 16))(v13);
    return (*(*v13 + 8))(v13);
  }

  return result;
}

uint64_t WebKit::NetworkProcess::setPrevalentResourceForDebugMode(uint64_t a1, uint64_t a2, uint64_t a3, WTF::StringImpl **a4)
{
  v15 = a2;
  v6 = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((a1 + 240), &v15);
  if (v6)
  {
    v7 = v6;
    ++*(v6 + 16);
    v8 = *(v6 + 72);
    if (v8)
    {
      while (1)
      {
        v9 = *v8;
        if ((*v8 & 1) == 0)
        {
          break;
        }

        v10 = *v8;
        atomic_compare_exchange_strong_explicit(v8, &v10, v9 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v10 == v9)
        {
          goto LABEL_5;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v8);
LABEL_5:
      WebKit::WebResourceLoadStatisticsStore::setPrevalentResourceForDebugMode(v8, a3, a4);
      result = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::WebResourceLoadStatisticsStore,(WTF::DestructionThread)1>::deref(v8);
    }

    else
    {
      v14 = *a4;
      *a4 = 0;
      (*(*v14 + 16))(v14);
      result = (*(*v14 + 8))(v14);
    }

    v12 = *(v7 + 16);
    if (v12)
    {
      *(v7 + 16) = v12 - 1;
    }

    else
    {
      result = 290;
      __break(0xC471u);
    }
  }

  else
  {
    v13 = *a4;
    *a4 = 0;
    (*(*v13 + 16))(v13);
    return (*(*v13 + 8))(v13);
  }

  return result;
}

uint64_t WebKit::NetworkProcess::setVeryPrevalentResource(uint64_t a1, uint64_t a2, uint64_t a3, WTF::StringImpl **a4)
{
  v15 = a2;
  v6 = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((a1 + 240), &v15);
  if (v6)
  {
    v7 = v6;
    ++*(v6 + 16);
    v8 = *(v6 + 72);
    if (v8)
    {
      while (1)
      {
        v9 = *v8;
        if ((*v8 & 1) == 0)
        {
          break;
        }

        v10 = *v8;
        atomic_compare_exchange_strong_explicit(v8, &v10, v9 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v10 == v9)
        {
          goto LABEL_5;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v8);
LABEL_5:
      WebKit::WebResourceLoadStatisticsStore::setVeryPrevalentResource(v8, a3, a4);
      result = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::WebResourceLoadStatisticsStore,(WTF::DestructionThread)1>::deref(v8);
    }

    else
    {
      v14 = *a4;
      *a4 = 0;
      (*(*v14 + 16))(v14);
      result = (*(*v14 + 8))(v14);
    }

    v12 = *(v7 + 16);
    if (v12)
    {
      *(v7 + 16) = v12 - 1;
    }

    else
    {
      result = 290;
      __break(0xC471u);
    }
  }

  else
  {
    v13 = *a4;
    *a4 = 0;
    (*(*v13 + 16))(v13);
    return (*(*v13 + 8))(v13);
  }

  return result;
}

uint64_t WebKit::NetworkProcess::clearPrevalentResource(uint64_t a1, uint64_t a2, uint64_t a3, WTF::StringImpl **a4)
{
  v15 = a2;
  v6 = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((a1 + 240), &v15);
  if (v6)
  {
    v7 = v6;
    ++*(v6 + 16);
    v8 = *(v6 + 72);
    if (v8)
    {
      while (1)
      {
        v9 = *v8;
        if ((*v8 & 1) == 0)
        {
          break;
        }

        v10 = *v8;
        atomic_compare_exchange_strong_explicit(v8, &v10, v9 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v10 == v9)
        {
          goto LABEL_5;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v8);
LABEL_5:
      WebKit::WebResourceLoadStatisticsStore::clearPrevalentResource(v8, a3, a4);
      result = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::WebResourceLoadStatisticsStore,(WTF::DestructionThread)1>::deref(v8);
    }

    else
    {
      v14 = *a4;
      *a4 = 0;
      (*(*v14 + 16))(v14);
      result = (*(*v14 + 8))(v14);
    }

    v12 = *(v7 + 16);
    if (v12)
    {
      *(v7 + 16) = v12 - 1;
    }

    else
    {
      result = 290;
      __break(0xC471u);
    }
  }

  else
  {
    v13 = *a4;
    *a4 = 0;
    (*(*v13 + 16))(v13);
    return (*(*v13 + 8))(v13);
  }

  return result;
}

uint64_t WebKit::NetworkProcess::scheduleCookieBlockingUpdate(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v13 = a2;
  v4 = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((a1 + 240), &v13);
  if (v4)
  {
    v5 = v4;
    ++*(v4 + 16);
    v6 = *(v4 + 72);
    if (v6)
    {
      while (1)
      {
        v7 = *v6;
        if ((*v6 & 1) == 0)
        {
          break;
        }

        v8 = *v6;
        atomic_compare_exchange_strong_explicit(v6, &v8, v7 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v8 == v7)
        {
          goto LABEL_5;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v6);
LABEL_5:
      WebKit::WebResourceLoadStatisticsStore::scheduleCookieBlockingUpdate(v6, a3);
      result = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::WebResourceLoadStatisticsStore,(WTF::DestructionThread)1>::deref(v6);
    }

    else
    {
      v12 = *a3;
      *a3 = 0;
      (*(*v12 + 16))(v12);
      result = (*(*v12 + 8))(v12);
    }

    v10 = *(v5 + 16);
    if (v10)
    {
      *(v5 + 16) = v10 - 1;
    }

    else
    {
      result = 290;
      __break(0xC471u);
    }
  }

  else
  {
    v11 = *a3;
    *a3 = 0;
    (*(*v11 + 16))(v11);
    return (*(*v11 + 8))(v11);
  }

  return result;
}

uint64_t WebKit::NetworkProcess::scheduleClearInMemoryAndPersistent(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, WTF::StringImpl *a6)
{
  v17 = a2;
  v8 = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((a1 + 240), &v17);
  if (v8)
  {
    v9 = v8;
    ++v8[4];
    (*(*v8 + 160))(v8);
    v10 = *(v9 + 9);
    if (v10)
    {
      while (1)
      {
        v11 = *v10;
        if ((*v10 & 1) == 0)
        {
          break;
        }

        v12 = *v10;
        atomic_compare_exchange_strong_explicit(v10, &v12, v11 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v12 == v11)
        {
          goto LABEL_5;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v10);
LABEL_5:
      WebKit::WebResourceLoadStatisticsStore::scheduleClearInMemoryAndPersistent(v10, a5, a6);
      result = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::WebResourceLoadStatisticsStore,(WTF::DestructionThread)1>::deref(v10);
    }

    else
    {
      v16 = *a6;
      *a6 = 0;
      (*(*v16 + 16))(v16);
      result = (*(*v16 + 8))(v16);
    }

    v14 = v9[4];
    if (v14)
    {
      v9[4] = v14 - 1;
    }

    else
    {
      result = 290;
      __break(0xC471u);
    }
  }

  else
  {
    v15 = *a6;
    *a6 = 0;
    (*(*v15 + 16))(v15);
    return (*(*v15 + 8))(v15);
  }

  return result;
}

uint64_t WebKit::NetworkProcess::getResourceLoadStatisticsDataSummary(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v15 = a2;
  v4 = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((a1 + 240), &v15);
  if (v4)
  {
    v5 = v4;
    ++*(v4 + 16);
    v6 = *(v4 + 72);
    if (v6)
    {
      while (1)
      {
        v7 = *v6;
        if ((*v6 & 1) == 0)
        {
          break;
        }

        v8 = *v6;
        atomic_compare_exchange_strong_explicit(v6, &v8, v7 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v8 == v7)
        {
          goto LABEL_5;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v6);
LABEL_5:
      WebKit::WebResourceLoadStatisticsStore::aggregatedThirdPartyData(v6, a3);
      result = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::WebResourceLoadStatisticsStore,(WTF::DestructionThread)1>::deref(v6);
    }

    else
    {
      v15 = 0;
      v16 = 0;
      v13 = *a3;
      *a3 = 0;
      (*(*v13 + 16))(v13, &v15);
      (*(*v13 + 8))(v13);
      result = WTF::Vector<WebKit::ITPThirdPartyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v15, v14);
    }

    v10 = *(v5 + 16);
    if (v10)
    {
      *(v5 + 16) = v10 - 1;
    }

    else
    {
      result = 290;
      __break(0xC471u);
    }
  }

  else
  {
    v15 = 0;
    v16 = 0;
    v11 = *a3;
    *a3 = 0;
    (*(*v11 + 16))(v11, &v15);
    (*(*v11 + 8))(v11);
    return WTF::Vector<WebKit::ITPThirdPartyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v15, v12);
  }

  return result;
}

uint64_t WebKit::NetworkProcess::resetParametersToDefaultValues(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v14 = a2;
  v4 = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((a1 + 240), &v14);
  if (v4)
  {
    v6 = v4;
    ++*(v4 + 4);
    WebKit::NetworkSession::resetFirstPartyDNSData(v4, v5);
    v7 = *(v6 + 9);
    if (v7)
    {
      while (1)
      {
        v8 = *v7;
        if ((*v7 & 1) == 0)
        {
          break;
        }

        v9 = *v7;
        atomic_compare_exchange_strong_explicit(v7, &v9, v8 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v9 == v8)
        {
          goto LABEL_5;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v7);
LABEL_5:
      WebKit::WebResourceLoadStatisticsStore::resetParametersToDefaultValues(v7, a3);
      result = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::WebResourceLoadStatisticsStore,(WTF::DestructionThread)1>::deref(v7);
    }

    else
    {
      v13 = *a3;
      *a3 = 0;
      (*(*v13 + 16))(v13);
      result = (*(*v13 + 8))(v13);
    }

    v11 = *(v6 + 4);
    if (v11)
    {
      *(v6 + 4) = v11 - 1;
    }

    else
    {
      result = 290;
      __break(0xC471u);
    }
  }

  else
  {
    v12 = *a3;
    *a3 = 0;
    (*(*v12 + 16))(v12);
    return (*(*v12 + 8))(v12);
  }

  return result;
}

uint64_t WebKit::NetworkProcess::scheduleStatisticsAndDataRecordsProcessing(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v13 = a2;
  v4 = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((a1 + 240), &v13);
  if (v4)
  {
    v5 = v4;
    ++*(v4 + 16);
    v6 = *(v4 + 72);
    if (v6)
    {
      while (1)
      {
        v7 = *v6;
        if ((*v6 & 1) == 0)
        {
          break;
        }

        v8 = *v6;
        atomic_compare_exchange_strong_explicit(v6, &v8, v7 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v8 == v7)
        {
          goto LABEL_5;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v6);
LABEL_5:
      WebKit::WebResourceLoadStatisticsStore::scheduleStatisticsAndDataRecordsProcessing(v6, a3);
      result = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::WebResourceLoadStatisticsStore,(WTF::DestructionThread)1>::deref(v6);
    }

    else
    {
      v12 = *a3;
      *a3 = 0;
      (*(*v12 + 16))(v12);
      result = (*(*v12 + 8))(v12);
    }

    v10 = *(v5 + 16);
    if (v10)
    {
      *(v5 + 16) = v10 - 1;
    }

    else
    {
      result = 290;
      __break(0xC471u);
    }
  }

  else
  {
    v11 = *a3;
    *a3 = 0;
    (*(*v11 + 16))(v11);
    return (*(*v11 + 8))(v11);
  }

  return result;
}

uint64_t WebKit::NetworkProcess::statisticsDatabaseHasAllTables(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v13 = a2;
  v4 = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((a1 + 240), &v13);
  if (v4)
  {
    v5 = v4;
    ++*(v4 + 16);
    v6 = *(v4 + 72);
    if (v6)
    {
      while (1)
      {
        v7 = *v6;
        if ((*v6 & 1) == 0)
        {
          break;
        }

        v8 = *v6;
        atomic_compare_exchange_strong_explicit(v6, &v8, v7 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v8 == v7)
        {
          goto LABEL_5;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v6);
LABEL_5:
      WebKit::WebResourceLoadStatisticsStore::statisticsDatabaseHasAllTables(v6, a3);
      result = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::WebResourceLoadStatisticsStore,(WTF::DestructionThread)1>::deref(v6);
    }

    else
    {
      v12 = *a3;
      *a3 = 0;
      (*(*v12 + 16))(v12, 0);
      result = (*(*v12 + 8))(v12);
    }

    v10 = *(v5 + 16);
    if (v10)
    {
      *(v5 + 16) = v10 - 1;
    }

    else
    {
      result = 290;
      __break(0xC471u);
    }
  }

  else
  {
    v11 = *a3;
    *a3 = 0;
    (*(*v11 + 16))(v11, 0);
    return (*(*v11 + 8))(v11);
  }

  return result;
}

uint64_t WebKit::NetworkProcess::setResourceLoadStatisticsTimeAdvanceForTesting(uint64_t a1, uint64_t a2, uint64_t *a3, double a4)
{
  v15 = a2;
  v6 = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((a1 + 240), &v15);
  if (!v6)
  {
    goto LABEL_10;
  }

  v7 = v6;
  v8 = *(v6 + 16);
  *(v6 + 16) = v8 + 1;
  v9 = *(v6 + 72);
  if (v9)
  {
    while (1)
    {
      v10 = *v9;
      if ((*v9 & 1) == 0)
      {
        break;
      }

      v11 = *v9;
      atomic_compare_exchange_strong_explicit(v9, &v11, v10 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v11 == v10)
      {
        goto LABEL_5;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v9);
LABEL_5:
    WebKit::WebResourceLoadStatisticsStore::setTimeAdvanceForTesting(v9, a3, a4);
    result = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::WebResourceLoadStatisticsStore,(WTF::DestructionThread)1>::deref(v9);
    v13 = *(v7 + 16);
    if (v13)
    {
      *(v7 + 16) = v13 - 1;
      return result;
    }

    goto LABEL_11;
  }

  if (v8 != -1)
  {
    *(v6 + 16) = v8;
LABEL_10:
    v14 = *a3;
    *a3 = 0;
    (*(*v14 + 16))(v14);
    return (*(*v14 + 8))(v14);
  }

LABEL_11:
  result = 290;
  __break(0xC471u);
  return result;
}

uint64_t WebKit::NetworkProcess::setIsRunningResourceLoadStatisticsTest(uint64_t a1, uint64_t a2, char a3, uint64_t *a4)
{
  v15 = a2;
  v6 = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((a1 + 240), &v15);
  if (v6)
  {
    v7 = v6;
    ++*(v6 + 16);
    v8 = *(v6 + 72);
    if (v8)
    {
      while (1)
      {
        v9 = *v8;
        if ((*v8 & 1) == 0)
        {
          break;
        }

        v10 = *v8;
        atomic_compare_exchange_strong_explicit(v8, &v10, v9 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v10 == v9)
        {
          goto LABEL_5;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v8);
LABEL_5:
      WebKit::WebResourceLoadStatisticsStore::setIsRunningTest(v8, a3, a4);
      result = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::WebResourceLoadStatisticsStore,(WTF::DestructionThread)1>::deref(v8);
    }

    else
    {
      v14 = *a4;
      *a4 = 0;
      (*(*v14 + 16))(v14);
      result = (*(*v14 + 8))(v14);
    }

    v12 = *(v7 + 16);
    if (v12)
    {
      *(v7 + 16) = v12 - 1;
    }

    else
    {
      result = 290;
      __break(0xC471u);
    }
  }

  else
  {
    v13 = *a4;
    *a4 = 0;
    (*(*v13 + 16))(v13);
    return (*(*v13 + 8))(v13);
  }

  return result;
}

uint64_t WebKit::NetworkProcess::setSubframeUnderTopFrameDomain(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v17 = a2;
  v8 = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((a1 + 240), &v17);
  if (v8)
  {
    v9 = v8;
    ++*(v8 + 16);
    v10 = *(v8 + 72);
    if (v10)
    {
      while (1)
      {
        v11 = *v10;
        if ((*v10 & 1) == 0)
        {
          break;
        }

        v12 = *v10;
        atomic_compare_exchange_strong_explicit(v10, &v12, v11 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v12 == v11)
        {
          goto LABEL_5;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v10);
LABEL_5:
      WebKit::WebResourceLoadStatisticsStore::setSubframeUnderTopFrameDomain(v10, a3, a4, a5);
      result = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::WebResourceLoadStatisticsStore,(WTF::DestructionThread)1>::deref(v10);
    }

    else
    {
      v16 = *a5;
      *a5 = 0;
      (*(*v16 + 16))(v16);
      result = (*(*v16 + 8))(v16);
    }

    v14 = *(v9 + 16);
    if (v14)
    {
      *(v9 + 16) = v14 - 1;
    }

    else
    {
      result = 290;
      __break(0xC471u);
    }
  }

  else
  {
    v15 = *a5;
    *a5 = 0;
    (*(*v15 + 16))(v15);
    return (*(*v15 + 8))(v15);
  }

  return result;
}

uint64_t WebKit::NetworkProcess::isRegisteredAsRedirectingTo(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, WTF::StringImpl **a5)
{
  v17 = a2;
  v8 = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((a1 + 240), &v17);
  if (v8)
  {
    v9 = v8;
    ++*(v8 + 16);
    v10 = *(v8 + 72);
    if (v10)
    {
      while (1)
      {
        v11 = *v10;
        if ((*v10 & 1) == 0)
        {
          break;
        }

        v12 = *v10;
        atomic_compare_exchange_strong_explicit(v10, &v12, v11 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v12 == v11)
        {
          goto LABEL_5;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v10);
LABEL_5:
      WebKit::WebResourceLoadStatisticsStore::isRegisteredAsRedirectingTo(v10, a3, a4, a5);
      result = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::WebResourceLoadStatisticsStore,(WTF::DestructionThread)1>::deref(v10);
    }

    else
    {
      v16 = *a5;
      *a5 = 0;
      (*(*v16 + 16))(v16, 0);
      result = (*(*v16 + 8))(v16);
    }

    v14 = *(v9 + 16);
    if (v14)
    {
      *(v9 + 16) = v14 - 1;
    }

    else
    {
      result = 290;
      __break(0xC471u);
    }
  }

  else
  {
    v15 = *a5;
    *a5 = 0;
    (*(*v15 + 16))(v15, 0);
    return (*(*v15 + 8))(v15);
  }

  return result;
}

uint64_t WebKit::NetworkProcess::isRegisteredAsSubFrameUnder(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, WTF::StringImpl **a5)
{
  v17 = a2;
  v8 = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((a1 + 240), &v17);
  if (v8)
  {
    v9 = v8;
    ++*(v8 + 16);
    v10 = *(v8 + 72);
    if (v10)
    {
      while (1)
      {
        v11 = *v10;
        if ((*v10 & 1) == 0)
        {
          break;
        }

        v12 = *v10;
        atomic_compare_exchange_strong_explicit(v10, &v12, v11 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v12 == v11)
        {
          goto LABEL_5;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v10);
LABEL_5:
      WebKit::WebResourceLoadStatisticsStore::isRegisteredAsSubFrameUnder(v10, a3, a4, a5);
      result = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::WebResourceLoadStatisticsStore,(WTF::DestructionThread)1>::deref(v10);
    }

    else
    {
      v16 = *a5;
      *a5 = 0;
      (*(*v16 + 16))(v16, 0);
      result = (*(*v16 + 8))(v16);
    }

    v14 = *(v9 + 16);
    if (v14)
    {
      *(v9 + 16) = v14 - 1;
    }

    else
    {
      result = 290;
      __break(0xC471u);
    }
  }

  else
  {
    v15 = *a5;
    *a5 = 0;
    (*(*v15 + 16))(v15, 0);
    return (*(*v15 + 8))(v15);
  }

  return result;
}

uint64_t WebKit::NetworkProcess::setSubresourceUnderTopFrameDomain(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v17 = a2;
  v8 = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((a1 + 240), &v17);
  if (v8)
  {
    v9 = v8;
    ++*(v8 + 16);
    v10 = *(v8 + 72);
    if (v10)
    {
      while (1)
      {
        v11 = *v10;
        if ((*v10 & 1) == 0)
        {
          break;
        }

        v12 = *v10;
        atomic_compare_exchange_strong_explicit(v10, &v12, v11 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v12 == v11)
        {
          goto LABEL_5;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v10);
LABEL_5:
      WebKit::WebResourceLoadStatisticsStore::setSubresourceUnderTopFrameDomain(v10, a3, a4, a5);
      result = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::WebResourceLoadStatisticsStore,(WTF::DestructionThread)1>::deref(v10);
    }

    else
    {
      v16 = *a5;
      *a5 = 0;
      (*(*v16 + 16))(v16);
      result = (*(*v16 + 8))(v16);
    }

    v14 = *(v9 + 16);
    if (v14)
    {
      *(v9 + 16) = v14 - 1;
    }

    else
    {
      result = 290;
      __break(0xC471u);
    }
  }

  else
  {
    v15 = *a5;
    *a5 = 0;
    (*(*v15 + 16))(v15);
    return (*(*v15 + 8))(v15);
  }

  return result;
}

uint64_t WebKit::NetworkProcess::setSubresourceUniqueRedirectTo(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v17 = a2;
  v8 = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((a1 + 240), &v17);
  if (v8)
  {
    v9 = v8;
    ++*(v8 + 16);
    v10 = *(v8 + 72);
    if (v10)
    {
      while (1)
      {
        v11 = *v10;
        if ((*v10 & 1) == 0)
        {
          break;
        }

        v12 = *v10;
        atomic_compare_exchange_strong_explicit(v10, &v12, v11 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v12 == v11)
        {
          goto LABEL_5;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v10);
LABEL_5:
      WebKit::WebResourceLoadStatisticsStore::setSubresourceUniqueRedirectTo(v10, a3, a4, a5);
      result = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::WebResourceLoadStatisticsStore,(WTF::DestructionThread)1>::deref(v10);
    }

    else
    {
      v16 = *a5;
      *a5 = 0;
      (*(*v16 + 16))(v16);
      result = (*(*v16 + 8))(v16);
    }

    v14 = *(v9 + 16);
    if (v14)
    {
      *(v9 + 16) = v14 - 1;
    }

    else
    {
      result = 290;
      __break(0xC471u);
    }
  }

  else
  {
    v15 = *a5;
    *a5 = 0;
    (*(*v15 + 16))(v15);
    return (*(*v15 + 8))(v15);
  }

  return result;
}

uint64_t WebKit::NetworkProcess::setSubresourceUniqueRedirectFrom(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v17 = a2;
  v8 = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((a1 + 240), &v17);
  if (v8)
  {
    v9 = v8;
    ++*(v8 + 16);
    v10 = *(v8 + 72);
    if (v10)
    {
      while (1)
      {
        v11 = *v10;
        if ((*v10 & 1) == 0)
        {
          break;
        }

        v12 = *v10;
        atomic_compare_exchange_strong_explicit(v10, &v12, v11 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v12 == v11)
        {
          goto LABEL_5;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v10);
LABEL_5:
      WebKit::WebResourceLoadStatisticsStore::setSubresourceUniqueRedirectFrom(v10, a3, a4, a5);
      result = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::WebResourceLoadStatisticsStore,(WTF::DestructionThread)1>::deref(v10);
    }

    else
    {
      v16 = *a5;
      *a5 = 0;
      (*(*v16 + 16))(v16);
      result = (*(*v16 + 8))(v16);
    }

    v14 = *(v9 + 16);
    if (v14)
    {
      *(v9 + 16) = v14 - 1;
    }

    else
    {
      result = 290;
      __break(0xC471u);
    }
  }

  else
  {
    v15 = *a5;
    *a5 = 0;
    (*(*v15 + 16))(v15);
    return (*(*v15 + 8))(v15);
  }

  return result;
}

uint64_t WebKit::NetworkProcess::isRegisteredAsSubresourceUnder(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, WTF::StringImpl **a5)
{
  v17 = a2;
  v8 = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((a1 + 240), &v17);
  if (v8)
  {
    v9 = v8;
    ++*(v8 + 16);
    v10 = *(v8 + 72);
    if (v10)
    {
      while (1)
      {
        v11 = *v10;
        if ((*v10 & 1) == 0)
        {
          break;
        }

        v12 = *v10;
        atomic_compare_exchange_strong_explicit(v10, &v12, v11 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v12 == v11)
        {
          goto LABEL_5;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v10);
LABEL_5:
      WebKit::WebResourceLoadStatisticsStore::isRegisteredAsSubresourceUnder(v10, a3, a4, a5);
      result = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::WebResourceLoadStatisticsStore,(WTF::DestructionThread)1>::deref(v10);
    }

    else
    {
      v16 = *a5;
      *a5 = 0;
      (*(*v16 + 16))(v16, 0);
      result = (*(*v16 + 8))(v16);
    }

    v14 = *(v9 + 16);
    if (v14)
    {
      *(v9 + 16) = v14 - 1;
    }

    else
    {
      result = 290;
      __break(0xC471u);
    }
  }

  else
  {
    v15 = *a5;
    *a5 = 0;
    (*(*v15 + 16))(v15, 0);
    return (*(*v15 + 8))(v15);
  }

  return result;
}

uint64_t WebKit::NetworkProcess::setTopFrameUniqueRedirectTo(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v17 = a2;
  v8 = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((a1 + 240), &v17);
  if (v8)
  {
    v9 = v8;
    ++*(v8 + 16);
    v10 = *(v8 + 72);
    if (v10)
    {
      while (1)
      {
        v11 = *v10;
        if ((*v10 & 1) == 0)
        {
          break;
        }

        v12 = *v10;
        atomic_compare_exchange_strong_explicit(v10, &v12, v11 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v12 == v11)
        {
          goto LABEL_5;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v10);
LABEL_5:
      WebKit::WebResourceLoadStatisticsStore::setTopFrameUniqueRedirectTo(v10, a3, a4, a5);
      result = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::WebResourceLoadStatisticsStore,(WTF::DestructionThread)1>::deref(v10);
    }

    else
    {
      v16 = *a5;
      *a5 = 0;
      (*(*v16 + 16))(v16);
      result = (*(*v16 + 8))(v16);
    }

    v14 = *(v9 + 16);
    if (v14)
    {
      *(v9 + 16) = v14 - 1;
    }

    else
    {
      result = 290;
      __break(0xC471u);
    }
  }

  else
  {
    v15 = *a5;
    *a5 = 0;
    (*(*v15 + 16))(v15);
    return (*(*v15 + 8))(v15);
  }

  return result;
}

uint64_t WebKit::NetworkProcess::setTopFrameUniqueRedirectFrom(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v17 = a2;
  v8 = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((a1 + 240), &v17);
  if (v8)
  {
    v9 = v8;
    ++*(v8 + 16);
    v10 = *(v8 + 72);
    if (v10)
    {
      while (1)
      {
        v11 = *v10;
        if ((*v10 & 1) == 0)
        {
          break;
        }

        v12 = *v10;
        atomic_compare_exchange_strong_explicit(v10, &v12, v11 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v12 == v11)
        {
          goto LABEL_5;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v10);
LABEL_5:
      WebKit::WebResourceLoadStatisticsStore::setTopFrameUniqueRedirectFrom(v10, a3, a4, a5);
      result = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::WebResourceLoadStatisticsStore,(WTF::DestructionThread)1>::deref(v10);
    }

    else
    {
      v16 = *a5;
      *a5 = 0;
      (*(*v16 + 16))(v16);
      result = (*(*v16 + 8))(v16);
    }

    v14 = *(v9 + 16);
    if (v14)
    {
      *(v9 + 16) = v14 - 1;
    }

    else
    {
      result = 290;
      __break(0xC471u);
    }
  }

  else
  {
    v15 = *a5;
    *a5 = 0;
    (*(*v15 + 16))(v15);
    return (*(*v15 + 8))(v15);
  }

  return result;
}

uint64_t WebKit::NetworkProcess::setLastSeen(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, double a5)
{
  v17 = a2;
  v8 = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((a1 + 240), &v17);
  if (v8)
  {
    v9 = v8;
    ++*(v8 + 16);
    v10 = *(v8 + 72);
    if (v10)
    {
      while (1)
      {
        v11 = *v10;
        if ((*v10 & 1) == 0)
        {
          break;
        }

        v12 = *v10;
        atomic_compare_exchange_strong_explicit(v10, &v12, v11 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v12 == v11)
        {
          goto LABEL_5;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v10);
LABEL_5:
      WebKit::WebResourceLoadStatisticsStore::setLastSeen(v10, a5, a3, a4);
      result = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::WebResourceLoadStatisticsStore,(WTF::DestructionThread)1>::deref(v10);
    }

    else
    {
      v16 = *a4;
      *a4 = 0;
      (*(*v16 + 16))(v16);
      result = (*(*v16 + 8))(v16);
    }

    v14 = *(v9 + 16);
    if (v14)
    {
      *(v9 + 16) = v14 - 1;
    }

    else
    {
      result = 290;
      __break(0xC471u);
    }
  }

  else
  {
    v15 = *a4;
    *a4 = 0;
    (*(*v15 + 16))(v15);
    return (*(*v15 + 8))(v15);
  }

  return result;
}

uint64_t WebKit::NetworkProcess::domainIDExistsInDatabase(uint64_t a1, uint64_t a2, int a3, uint64_t *a4)
{
  v15 = a2;
  v6 = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((a1 + 240), &v15);
  if (v6)
  {
    v7 = v6;
    ++*(v6 + 16);
    v8 = *(v6 + 72);
    if (v8)
    {
      while (1)
      {
        v9 = *v8;
        if ((*v8 & 1) == 0)
        {
          break;
        }

        v10 = *v8;
        atomic_compare_exchange_strong_explicit(v8, &v10, v9 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v10 == v9)
        {
          goto LABEL_5;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v8);
LABEL_5:
      WebKit::WebResourceLoadStatisticsStore::domainIDExistsInDatabase(v8, a3, a4);
      result = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::WebResourceLoadStatisticsStore,(WTF::DestructionThread)1>::deref(v8);
    }

    else
    {
      v14 = *a4;
      *a4 = 0;
      (*(*v14 + 16))(v14, 0);
      result = (*(*v14 + 8))(v14);
    }

    v12 = *(v7 + 16);
    if (v12)
    {
      *(v7 + 16) = v12 - 1;
    }

    else
    {
      result = 290;
      __break(0xC471u);
    }
  }

  else
  {
    v13 = *a4;
    *a4 = 0;
    (*(*v13 + 16))(v13, 0);
    return (*(*v13 + 8))(v13);
  }

  return result;
}

uint64_t WebKit::NetworkProcess::mergeStatisticForTesting(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, char a7, char a8, double a9, double a10, char a11, int a12, int a13, uint64_t *a14)
{
  v31 = a2;
  v22 = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((a1 + 240), &v31);
  if (v22)
  {
    v23 = v22;
    ++*(v22 + 16);
    v24 = *(v22 + 72);
    if (v24)
    {
      while (1)
      {
        v25 = *v24;
        if ((*v24 & 1) == 0)
        {
          break;
        }

        v26 = *v24;
        atomic_compare_exchange_strong_explicit(v24, &v26, v25 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v26 == v25)
        {
          goto LABEL_5;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v24);
LABEL_5:
      WebKit::WebResourceLoadStatisticsStore::mergeStatisticForTesting(v24, a9, a10, a3, a4, a5, a6, a7, a8, a11, a13, a14);
      result = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::WebResourceLoadStatisticsStore,(WTF::DestructionThread)1>::deref(v24);
    }

    else
    {
      v30 = *a14;
      *a14 = 0;
      (*(*v30 + 16))(v30);
      result = (*(*v30 + 8))(v30);
    }

    v28 = *(v23 + 16);
    if (v28)
    {
      *(v23 + 16) = v28 - 1;
    }

    else
    {
      result = 290;
      __break(0xC471u);
    }
  }

  else
  {
    v29 = *a14;
    *a14 = 0;
    (*(*v29 + 16))(v29);
    return (*(*v29 + 8))(v29);
  }

  return result;
}

uint64_t WebKit::NetworkProcess::insertExpiredStatisticForTesting(uint64_t a1, uint64_t a2, uint64_t a3, int a4, char a5, char a6, char a7, uint64_t *a8)
{
  v23 = a2;
  v14 = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((a1 + 240), &v23);
  if (v14)
  {
    v15 = v14;
    ++*(v14 + 16);
    v16 = *(v14 + 72);
    if (v16)
    {
      while (1)
      {
        v17 = *v16;
        if ((*v16 & 1) == 0)
        {
          break;
        }

        v18 = *v16;
        atomic_compare_exchange_strong_explicit(v16, &v18, v17 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v18 == v17)
        {
          goto LABEL_5;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v16);
LABEL_5:
      WebKit::WebResourceLoadStatisticsStore::insertExpiredStatisticForTesting(v16, a3, a4, a5, a6, a7, a8);
      result = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::WebResourceLoadStatisticsStore,(WTF::DestructionThread)1>::deref(v16);
    }

    else
    {
      v22 = *a8;
      *a8 = 0;
      (*(*v22 + 16))(v22);
      result = (*(*v22 + 8))(v22);
    }

    v20 = *(v15 + 16);
    if (v20)
    {
      *(v15 + 16) = v20 - 1;
    }

    else
    {
      result = 290;
      __break(0xC471u);
    }
  }

  else
  {
    v21 = *a8;
    *a8 = 0;
    (*(*v21 + 16))(v21);
    return (*(*v21 + 8))(v21);
  }

  return result;
}

uint64_t WebKit::NetworkProcess::getAllStorageAccessEntries(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v14 = a2;
  v4 = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebCore::NetworkStorageSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebCore::NetworkStorageSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((a1 + 248), &v14);
  if (v4)
  {
    v6 = v4;
    ++*(v4 + 2);
    WebCore::NetworkStorageSession::getAllStorageAccessEntries(v13, v4);
    WTF::CompletionHandler<void ()(WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>)>::operator()(a3, v13, v7);
    result = WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v13, v8);
    v10 = *(v6 + 2);
    if (v10)
    {
      *(v6 + 2) = v10 - 1;
    }

    else
    {
      result = 290;
      __break(0xC471u);
    }
  }

  else
  {
    v12[0] = 0;
    v12[1] = 0;
    WTF::CompletionHandler<void ()(WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>)>::operator()(a3, v12, v5);
    return WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v12, v11);
  }

  return result;
}

uint64_t WTF::CompletionHandler<void ()(WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>)>::operator()(uint64_t *a1, uint64_t *a2, __n128 a3)
{
  a3.n128_u64[0] = 0;
  v3 = *a1;
  *a1 = 0;
  v4 = *a2;
  *a2 = 0;
  v9 = a3;
  v10[0] = v4;
  v5 = a2[1];
  a2[1] = 0;
  v10[1] = v5;
  (*(*v3 + 16))(v3, v10);
  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v10, v6);
  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v9, v7);
  return (*(*v3 + 8))(v3);
}

uint64_t WebKit::NetworkProcess::logFrameNavigation(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, char a7, char a8, double a9)
{
  v22 = a2;
  result = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((a1 + 240), &v22);
  if (result)
  {
    v17 = result;
    v18 = *(result + 16) + 1;
    *(result + 16) = v18;
    v19 = *(result + 72);
    if (v19)
    {
      while (1)
      {
        v20 = *v19;
        if ((*v19 & 1) == 0)
        {
          break;
        }

        v21 = *v19;
        atomic_compare_exchange_strong_explicit(v19, &v21, v20 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v21 == v20)
        {
          goto LABEL_5;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v19);
LABEL_5:
      WebKit::WebResourceLoadStatisticsStore::logFrameNavigation(v19, a9, a3, a4, a5, a6, a7, a8);
      result = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::WebResourceLoadStatisticsStore,(WTF::DestructionThread)1>::deref(v19);
      v18 = *(v17 + 16);
    }

    if (v18)
    {
      *(v17 + 16) = v18 - 1;
    }

    else
    {
      result = 290;
      __break(0xC471u);
    }
  }

  return result;
}

uint64_t WebKit::NetworkProcess::logUserInteraction(uint64_t a1, uint64_t a2, WTF **a3, const WTF::StringImpl *a4)
{
  v15 = a2;
  v6 = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((a1 + 240), &v15);
  if (v6)
  {
    v7 = v6;
    ++*(v6 + 16);
    v8 = *(v6 + 72);
    if (v8)
    {
      while (1)
      {
        v9 = *v8;
        if ((*v8 & 1) == 0)
        {
          break;
        }

        v10 = *v8;
        atomic_compare_exchange_strong_explicit(v8, &v10, v9 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v10 == v9)
        {
          goto LABEL_5;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v8);
LABEL_5:
      WebKit::WebResourceLoadStatisticsStore::logUserInteraction(v8, a3, a4);
      result = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::WebResourceLoadStatisticsStore,(WTF::DestructionThread)1>::deref(v8);
    }

    else
    {
      v14 = *a4;
      *a4 = 0;
      (*(*v14 + 16))(v14);
      result = (*(*v14 + 8))(v14);
    }

    v12 = *(v7 + 16);
    if (v12)
    {
      *(v7 + 16) = v12 - 1;
    }

    else
    {
      result = 290;
      __break(0xC471u);
    }
  }

  else
  {
    v13 = *a4;
    *a4 = 0;
    (*(*v13 + 16))(v13);
    return (*(*v13 + 8))(v13);
  }

  return result;
}

uint64_t WebKit::NetworkProcess::hadUserInteraction(uint64_t a1, uint64_t a2, WTF **a3, const WTF::StringImpl *a4)
{
  v15 = a2;
  v6 = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((a1 + 240), &v15);
  if (v6)
  {
    v7 = v6;
    ++*(v6 + 16);
    v8 = *(v6 + 72);
    if (v8)
    {
      while (1)
      {
        v9 = *v8;
        if ((*v8 & 1) == 0)
        {
          break;
        }

        v10 = *v8;
        atomic_compare_exchange_strong_explicit(v8, &v10, v9 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v10 == v9)
        {
          goto LABEL_5;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v8);
LABEL_5:
      WebKit::WebResourceLoadStatisticsStore::hasHadUserInteraction(v8, a3, a4);
      result = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::WebResourceLoadStatisticsStore,(WTF::DestructionThread)1>::deref(v8);
    }

    else
    {
      v14 = *a4;
      *a4 = 0;
      (*(*v14 + 16))(v14, 0);
      result = (*(*v14 + 8))(v14);
    }

    v12 = *(v7 + 16);
    if (v12)
    {
      *(v7 + 16) = v12 - 1;
    }

    else
    {
      result = 290;
      __break(0xC471u);
    }
  }

  else
  {
    v13 = *a4;
    *a4 = 0;
    (*(*v13 + 16))(v13, 0);
    return (*(*v13 + 8))(v13);
  }

  return result;
}

uint64_t WebKit::NetworkProcess::isRelationshipOnlyInDatabaseOnce(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, WTF::StringImpl **a5)
{
  v17 = a2;
  v8 = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((a1 + 240), &v17);
  if (v8)
  {
    v9 = v8;
    ++*(v8 + 16);
    v10 = *(v8 + 72);
    if (v10)
    {
      while (1)
      {
        v11 = *v10;
        if ((*v10 & 1) == 0)
        {
          break;
        }

        v12 = *v10;
        atomic_compare_exchange_strong_explicit(v10, &v12, v11 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v12 == v11)
        {
          goto LABEL_5;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v10);
LABEL_5:
      WebKit::WebResourceLoadStatisticsStore::isRelationshipOnlyInDatabaseOnce(v10, a3, a4, a5);
      result = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::WebResourceLoadStatisticsStore,(WTF::DestructionThread)1>::deref(v10);
    }

    else
    {
      v16 = *a5;
      *a5 = 0;
      (*(*v16 + 16))(v16, 0);
      result = (*(*v16 + 8))(v16);
    }

    v14 = *(v9 + 16);
    if (v14)
    {
      *(v9 + 16) = v14 - 1;
    }

    else
    {
      result = 290;
      __break(0xC471u);
    }
  }

  else
  {
    v15 = *a5;
    *a5 = 0;
    (*(*v15 + 16))(v15, 0);
    return (*(*v15 + 8))(v15);
  }

  return result;
}

uint64_t WebKit::NetworkProcess::clearUserInteraction(uint64_t a1, uint64_t a2, WTF **a3, const WTF::StringImpl *a4)
{
  v15 = a2;
  v6 = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((a1 + 240), &v15);
  if (v6)
  {
    v7 = v6;
    ++*(v6 + 16);
    v8 = *(v6 + 72);
    if (v8)
    {
      while (1)
      {
        v9 = *v8;
        if ((*v8 & 1) == 0)
        {
          break;
        }

        v10 = *v8;
        atomic_compare_exchange_strong_explicit(v8, &v10, v9 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v10 == v9)
        {
          goto LABEL_5;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v8);
LABEL_5:
      WebKit::WebResourceLoadStatisticsStore::clearUserInteraction(v8, a3, a4);
      result = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::WebResourceLoadStatisticsStore,(WTF::DestructionThread)1>::deref(v8);
    }

    else
    {
      v14 = *a4;
      *a4 = 0;
      (*(*v14 + 16))(v14);
      result = (*(*v14 + 8))(v14);
    }

    v12 = *(v7 + 16);
    if (v12)
    {
      *(v7 + 16) = v12 - 1;
    }

    else
    {
      result = 290;
      __break(0xC471u);
    }
  }

  else
  {
    v13 = *a4;
    *a4 = 0;
    (*(*v13 + 16))(v13);
    return (*(*v13 + 8))(v13);
  }

  return result;
}

uint64_t WebKit::NetworkProcess::hasLocalStorage(uint64_t a1, uint64_t a2, atomic_uint **a3, uint64_t *a4)
{
  v16 = a2;
  v6 = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((a1 + 240), &v16);
  if (!v6)
  {
    v15 = *a4;
    *a4 = 0;
    (*(*v15 + 16))(v15, 0);
    return (*(*v15 + 8))(v15);
  }

  v7 = v6;
  ++*(v6 + 16);
  v8 = *(v6 + 1048);
  v9 = *a3;
  if (v9)
  {
    atomic_fetch_add_explicit(v9, 2u, memory_order_relaxed);
  }

  v10 = *a4;
  *a4 = 0;
  v11 = WTF::fastMalloc(0x18);
  *v11 = &unk_1F1101540;
  if (v9)
  {
    atomic_fetch_add_explicit(v9, 2u, memory_order_relaxed);
  }

  v11[1] = v9;
  v11[2] = v10;
  v16 = v11;
  WebKit::NetworkStorageManager::fetchData(v8, 32, 0, &v16);
  result = v16;
  if (v16)
  {
    result = (*(*v16 + 8))(v16);
    if (v9)
    {
LABEL_8:
      if (atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        result = WTF::StringImpl::destroy(v9, v12);
      }
    }
  }

  else if (v9)
  {
    goto LABEL_8;
  }

  v14 = *(v7 + 16);
  if (v14)
  {
    *(v7 + 16) = v14 - 1;
  }

  else
  {
    result = 290;
    __break(0xC471u);
  }

  return result;
}

uint64_t WebKit::NetworkProcess::setCacheMaxAgeCapForPrevalentResources(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v9 = a2;
  v4 = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebCore::NetworkStorageSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebCore::NetworkStorageSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((a1 + 248), &v9);
  if (!v4)
  {
    goto LABEL_4;
  }

  v5 = v4;
  ++*(v4 + 8);
  WebCore::NetworkStorageSession::setCacheMaxAgeCapForPrevalentResources();
  v6 = *(v5 + 8);
  if (v6)
  {
    *(v5 + 8) = v6 - 1;
LABEL_4:
    v7 = *a3;
    *a3 = 0;
    (*(*v7 + 16))(v7);
    return (*(*v7 + 8))(v7);
  }

  result = 290;
  __break(0xC471u);
  return result;
}

uint64_t WebKit::NetworkProcess::setGrandfatheringTime(uint64_t a1, uint64_t a2, uint64_t *a3, double a4)
{
  v15 = a2;
  v6 = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((a1 + 240), &v15);
  if (v6)
  {
    v7 = v6;
    ++*(v6 + 16);
    v8 = *(v6 + 72);
    if (v8)
    {
      while (1)
      {
        v9 = *v8;
        if ((*v8 & 1) == 0)
        {
          break;
        }

        v10 = *v8;
        atomic_compare_exchange_strong_explicit(v8, &v10, v9 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v10 == v9)
        {
          goto LABEL_5;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v8);
LABEL_5:
      WebKit::WebResourceLoadStatisticsStore::setGrandfatheringTime(v8, a3, a4);
      result = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::WebResourceLoadStatisticsStore,(WTF::DestructionThread)1>::deref(v8);
    }

    else
    {
      v14 = *a3;
      *a3 = 0;
      (*(*v14 + 16))(v14);
      result = (*(*v14 + 8))(v14);
    }

    v12 = *(v7 + 16);
    if (v12)
    {
      *(v7 + 16) = v12 - 1;
    }

    else
    {
      result = 290;
      __break(0xC471u);
    }
  }

  else
  {
    v13 = *a3;
    *a3 = 0;
    (*(*v13 + 16))(v13);
    return (*(*v13 + 8))(v13);
  }

  return result;
}

uint64_t WebKit::NetworkProcess::setMaxStatisticsEntries(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v15 = a2;
  v6 = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((a1 + 240), &v15);
  if (v6)
  {
    v7 = v6;
    ++*(v6 + 16);
    v8 = *(v6 + 72);
    if (v8)
    {
      while (1)
      {
        v9 = *v8;
        if ((*v8 & 1) == 0)
        {
          break;
        }

        v10 = *v8;
        atomic_compare_exchange_strong_explicit(v8, &v10, v9 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v10 == v9)
        {
          goto LABEL_5;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v8);
LABEL_5:
      WebKit::WebResourceLoadStatisticsStore::setMaxStatisticsEntries(v8, a3, a4);
      result = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::WebResourceLoadStatisticsStore,(WTF::DestructionThread)1>::deref(v8);
    }

    else
    {
      v14 = *a4;
      *a4 = 0;
      (*(*v14 + 16))(v14);
      result = (*(*v14 + 8))(v14);
    }

    v12 = *(v7 + 16);
    if (v12)
    {
      *(v7 + 16) = v12 - 1;
    }

    else
    {
      result = 290;
      __break(0xC471u);
    }
  }

  else
  {
    v13 = *a4;
    *a4 = 0;
    (*(*v13 + 16))(v13);
    return (*(*v13 + 8))(v13);
  }

  return result;
}

uint64_t WebKit::NetworkProcess::setMinimumTimeBetweenDataRecordsRemoval(uint64_t a1, uint64_t a2, uint64_t *a3, double a4)
{
  v15 = a2;
  v6 = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((a1 + 240), &v15);
  if (v6)
  {
    v7 = v6;
    ++*(v6 + 16);
    v8 = *(v6 + 72);
    if (v8)
    {
      while (1)
      {
        v9 = *v8;
        if ((*v8 & 1) == 0)
        {
          break;
        }

        v10 = *v8;
        atomic_compare_exchange_strong_explicit(v8, &v10, v9 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v10 == v9)
        {
          goto LABEL_5;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v8);
LABEL_5:
      WebKit::WebResourceLoadStatisticsStore::setMinimumTimeBetweenDataRecordsRemoval(v8, a3, a4);
      result = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::WebResourceLoadStatisticsStore,(WTF::DestructionThread)1>::deref(v8);
    }

    else
    {
      v14 = *a3;
      *a3 = 0;
      (*(*v14 + 16))(v14);
      result = (*(*v14 + 8))(v14);
    }

    v12 = *(v7 + 16);
    if (v12)
    {
      *(v7 + 16) = v12 - 1;
    }

    else
    {
      result = 290;
      __break(0xC471u);
    }
  }

  else
  {
    v13 = *a3;
    *a3 = 0;
    (*(*v13 + 16))(v13);
    return (*(*v13 + 8))(v13);
  }

  return result;
}

uint64_t WebKit::NetworkProcess::setPruneEntriesDownTo(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v15 = a2;
  v6 = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((a1 + 240), &v15);
  if (v6)
  {
    v7 = v6;
    ++*(v6 + 16);
    v8 = *(v6 + 72);
    if (v8)
    {
      while (1)
      {
        v9 = *v8;
        if ((*v8 & 1) == 0)
        {
          break;
        }

        v10 = *v8;
        atomic_compare_exchange_strong_explicit(v8, &v10, v9 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v10 == v9)
        {
          goto LABEL_5;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v8);
LABEL_5:
      WebKit::WebResourceLoadStatisticsStore::setPruneEntriesDownTo(v8, a3, a4);
      result = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::WebResourceLoadStatisticsStore,(WTF::DestructionThread)1>::deref(v8);
    }

    else
    {
      v14 = *a4;
      *a4 = 0;
      (*(*v14 + 16))(v14);
      result = (*(*v14 + 8))(v14);
    }

    v12 = *(v7 + 16);
    if (v12)
    {
      *(v7 + 16) = v12 - 1;
    }

    else
    {
      result = 290;
      __break(0xC471u);
    }
  }

  else
  {
    v13 = *a4;
    *a4 = 0;
    (*(*v13 + 16))(v13);
    return (*(*v13 + 8))(v13);
  }

  return result;
}

uint64_t WebKit::NetworkProcess::setTimeToLiveUserInteraction(uint64_t a1, uint64_t a2, uint64_t *a3, double a4)
{
  v15 = a2;
  v6 = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((a1 + 240), &v15);
  if (v6)
  {
    v7 = v6;
    ++*(v6 + 16);
    v8 = *(v6 + 72);
    if (v8)
    {
      while (1)
      {
        v9 = *v8;
        if ((*v8 & 1) == 0)
        {
          break;
        }

        v10 = *v8;
        atomic_compare_exchange_strong_explicit(v8, &v10, v9 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v10 == v9)
        {
          goto LABEL_5;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v8);
LABEL_5:
      WebKit::WebResourceLoadStatisticsStore::setTimeToLiveUserInteraction(v8, a3, a4);
      result = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::WebResourceLoadStatisticsStore,(WTF::DestructionThread)1>::deref(v8);
    }

    else
    {
      v14 = *a3;
      *a3 = 0;
      (*(*v14 + 16))(v14);
      result = (*(*v14 + 8))(v14);
    }

    v12 = *(v7 + 16);
    if (v12)
    {
      *(v7 + 16) = v12 - 1;
    }

    else
    {
      result = 290;
      __break(0xC471u);
    }
  }

  else
  {
    v13 = *a3;
    *a3 = 0;
    (*(*v13 + 16))(v13);
    return (*(*v13 + 8))(v13);
  }

  return result;
}

uint64_t WebKit::NetworkProcess::setShouldClassifyResourcesBeforeDataRecordsRemoval(uint64_t a1, uint64_t a2, char a3, uint64_t *a4)
{
  v15 = a2;
  v6 = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((a1 + 240), &v15);
  if (v6)
  {
    v7 = v6;
    ++*(v6 + 16);
    v8 = *(v6 + 72);
    if (v8)
    {
      while (1)
      {
        v9 = *v8;
        if ((*v8 & 1) == 0)
        {
          break;
        }

        v10 = *v8;
        atomic_compare_exchange_strong_explicit(v8, &v10, v9 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v10 == v9)
        {
          goto LABEL_5;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v8);
LABEL_5:
      WebKit::WebResourceLoadStatisticsStore::setShouldClassifyResourcesBeforeDataRecordsRemoval(v8, a3, a4);
      result = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::WebResourceLoadStatisticsStore,(WTF::DestructionThread)1>::deref(v8);
    }

    else
    {
      v14 = *a4;
      *a4 = 0;
      (*(*v14 + 16))(v14);
      result = (*(*v14 + 8))(v14);
    }

    v12 = *(v7 + 16);
    if (v12)
    {
      *(v7 + 16) = v12 - 1;
    }

    else
    {
      result = 290;
      __break(0xC471u);
    }
  }

  else
  {
    v13 = *a4;
    *a4 = 0;
    (*(*v13 + 16))(v13);
    return (*(*v13 + 8))(v13);
  }

  return result;
}

uint64_t WebKit::NetworkProcess::setTrackingPreventionEnabled(uint64_t a1, uint64_t a2, int a3)
{
  v7 = a2;
  result = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((a1 + 240), &v7);
  if (result)
  {
    v5 = result;
    ++*(result + 16);
    result = WebKit::NetworkSession::setTrackingPreventionEnabled(result, a3);
    v6 = *(v5 + 16);
    if (v6)
    {
      *(v5 + 16) = v6 - 1;
    }

    else
    {
      result = 290;
      __break(0xC471u);
    }
  }

  return result;
}

uint64_t WebKit::NetworkProcess::setResourceLoadStatisticsLogTestingEvent(WebKit::NetworkProcess *this, char a2)
{
  v4 = WTF::fastMalloc(0x10);
  *v4 = &unk_1F1101568;
  v4[8] = a2;
  v7 = v4;
  WebKit::NetworkProcess::forEachNetworkSession(this, &v7);
  v5 = *(*v4 + 8);

  return v5(v4);
}

uint64_t WebKit::NetworkProcess::setResourceLoadStatisticsDebugMode(uint64_t a1, uint64_t a2, char a3, uint64_t *a4)
{
  v15 = a2;
  v6 = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((a1 + 240), &v15);
  if (v6)
  {
    v7 = v6;
    ++*(v6 + 16);
    v8 = *(v6 + 72);
    if (v8)
    {
      while (1)
      {
        v9 = *v8;
        if ((*v8 & 1) == 0)
        {
          break;
        }

        v10 = *v8;
        atomic_compare_exchange_strong_explicit(v8, &v10, v9 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v10 == v9)
        {
          goto LABEL_5;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v8);
LABEL_5:
      WebKit::WebResourceLoadStatisticsStore::setResourceLoadStatisticsDebugMode(v8, a3, a4);
      result = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::WebResourceLoadStatisticsStore,(WTF::DestructionThread)1>::deref(v8);
    }

    else
    {
      v14 = *a4;
      *a4 = 0;
      (*(*v14 + 16))(v14);
      result = (*(*v14 + 8))(v14);
    }

    v12 = *(v7 + 16);
    if (v12)
    {
      *(v7 + 16) = v12 - 1;
    }

    else
    {
      result = 290;
      __break(0xC471u);
    }
  }

  else
  {
    v13 = *a4;
    *a4 = 0;
    (*(*v13 + 16))(v13);
    return (*(*v13 + 8))(v13);
  }

  return result;
}

uint64_t WebKit::NetworkProcess::isResourceLoadStatisticsEphemeral(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v15 = a2;
  v4 = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((a1 + 240), &v15);
  if (!v4)
  {
    goto LABEL_11;
  }

  v5 = v4;
  v6 = *(v4 + 16);
  *(v4 + 16) = v6 + 1;
  v7 = *(v4 + 72);
  if (!v7)
  {
    if (v6 == -1)
    {
LABEL_12:
      result = 290;
      __break(0xC471u);
      return result;
    }

    *(v4 + 16) = v6;
LABEL_11:
    v14 = *a3;
    *a3 = 0;
    (*(*v14 + 16))(v14, 0);
    return (*(*v14 + 8))(v14);
  }

  while (1)
  {
    v8 = *v7;
    if ((*v7 & 1) == 0)
    {
      break;
    }

    v9 = *v7;
    atomic_compare_exchange_strong_explicit(v7, &v9, v8 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v9 == v8)
    {
      goto LABEL_5;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v7);
LABEL_5:
  v10 = *(v7 + 88);
  v11 = *a3;
  *a3 = 0;
  (*(*v11 + 16))(v11, v10);
  (*(*v11 + 8))(v11);
  result = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::WebResourceLoadStatisticsStore,(WTF::DestructionThread)1>::deref(v7);
  v13 = *(v5 + 16);
  if (!v13)
  {
    goto LABEL_12;
  }

  *(v5 + 16) = v13 - 1;
  return result;
}

uint64_t WebKit::NetworkProcess::resetCacheMaxAgeCapForPrevalentResources(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v9 = a2;
  v4 = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebCore::NetworkStorageSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebCore::NetworkStorageSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((a1 + 248), &v9);
  if (!v4)
  {
    goto LABEL_4;
  }

  v5 = v4;
  ++*(v4 + 2);
  WebCore::NetworkStorageSession::resetCacheMaxAgeCapForPrevalentResources(v4);
  v6 = *(v5 + 2);
  if (v6)
  {
    *(v5 + 2) = v6 - 1;
LABEL_4:
    v7 = *a3;
    *a3 = 0;
    (*(*v7 + 16))(v7);
    return (*(*v7 + 8))(v7);
  }

  result = 290;
  __break(0xC471u);
  return result;
}

atomic_ullong *WebKit::NetworkProcess::didCommitCrossSiteLoadWithDataTransfer(uint64_t a1, IPC::Encoder *a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, char a8)
{
  v31 = a2;
  result = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebCore::NetworkStorageSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebCore::NetworkStorageSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((a1 + 248), &v31);
  if (result)
  {
    v16 = (result + 1);
    ++*(result + 2);
    result = WebCore::NetworkStorageSession::shouldBlockThirdPartyCookies();
    if (!result)
    {
      v22 = *v16;
      if (!*v16)
      {
        goto LABEL_27;
      }

LABEL_22:
      *v16 = v22 - 1;
      return result;
    }

    if ((a5 & 2) != 0)
    {
      result = WebCore::NetworkStorageSession::didCommitCrossSiteLoadWithDataTransferFromPrevalentResource();
    }

    if ((a5 & 4) != 0)
    {
      WebKit::AuxiliaryProcess::protectedParentProcessConnection(a1, &v30);
      v17 = v30;
      v19 = IPC::Encoder::operator new(0x238, v18);
      *v19 = 532;
      *(v19 + 68) = 0;
      *(v19 + 70) = 0;
      *(v19 + 69) = 0;
      *(v19 + 2) = 0;
      *(v19 + 3) = 0;
      *(v19 + 1) = 0;
      IPC::Encoder::encodeHeader(v19);
      v31 = v19;
      IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v19, a6);
      IPC::Connection::sendMessageImpl(v17, &v31, 0, 0);
      v21 = v31;
      v31 = 0;
      if (v21)
      {
        IPC::Encoder::~Encoder(v21, v20);
        bmalloc::api::tzoneFree(v28, v29);
      }

      result = v30;
      v30 = 0;
      if (result)
      {
        result = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(result);
      }
    }

    if (!*v16)
    {
      goto LABEL_27;
    }

    --*v16;
    if ((a5 & 2) != 0)
    {
LABEL_12:
      v31 = a2;
      result = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((a1 + 240), &v31);
      if (!result)
      {
        return result;
      }

      v16 = (result + 2);
      v22 = *(result + 4) + 1;
      *(result + 4) = v22;
      v23 = result[9];
      if (v23)
      {
        while (1)
        {
          v24 = *v23;
          if ((*v23 & 1) == 0)
          {
            break;
          }

          v25 = *v23;
          atomic_compare_exchange_strong_explicit(v23, &v25, v24 + 2, memory_order_relaxed, memory_order_relaxed);
          if (v25 == v24)
          {
            goto LABEL_16;
          }
        }

        WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v23);
LABEL_16:
        v26 = WTF::fastMalloc(0x10);
        *v26 = &unk_1F1101590;
        v31 = v26;
        WebKit::WebResourceLoadStatisticsStore::logCrossSiteLoadWithLinkDecoration(v23, a3, a4, a8, &v31);
        v27 = v31;
        v31 = 0;
        if (v27)
        {
          (*(*v27 + 8))(v27);
        }

        result = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::WebResourceLoadStatisticsStore,(WTF::DestructionThread)1>::deref(v23);
        v22 = *v16;
      }

      if (!v22)
      {
LABEL_27:
        __break(0xC471u);
        JUMPOUT(0x19DC6B860);
      }

      goto LABEL_22;
    }
  }

  else if ((a5 & 2) != 0)
  {
    goto LABEL_12;
  }

  return result;
}

uint64_t WebKit::NetworkProcess::setCrossSiteLoadWithLinkDecorationForTesting(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t *a6)
{
  v19 = a2;
  v10 = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((a1 + 240), &v19);
  if (!v10)
  {
    goto LABEL_11;
  }

  v11 = v10;
  v12 = *(v10 + 16);
  *(v10 + 16) = v12 + 1;
  v13 = *(v10 + 72);
  if (!v13)
  {
    if (v12 == -1)
    {
LABEL_12:
      result = 290;
      __break(0xC471u);
      return result;
    }

    *(v10 + 16) = v12;
LABEL_11:
    v18 = *a6;
    *a6 = 0;
    (*(*v18 + 16))(v18);
    return (*(*v18 + 8))(v18);
  }

  while (1)
  {
    v14 = *v13;
    if ((*v13 & 1) == 0)
    {
      break;
    }

    v15 = *v13;
    atomic_compare_exchange_strong_explicit(v13, &v15, v14 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v15 == v14)
    {
      goto LABEL_5;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v13);
LABEL_5:
  WebKit::WebResourceLoadStatisticsStore::logCrossSiteLoadWithLinkDecoration(v13, a3, a4, a5, a6);
  result = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::WebResourceLoadStatisticsStore,(WTF::DestructionThread)1>::deref(v13);
  v17 = *(v11 + 16);
  if (!v17)
  {
    goto LABEL_12;
  }

  *(v11 + 16) = v17 - 1;
  return result;
}

uint64_t WebKit::NetworkProcess::resetCrossSiteLoadsWithLinkDecorationForTesting(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v9 = a2;
  v4 = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebCore::NetworkStorageSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebCore::NetworkStorageSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((a1 + 248), &v9);
  if (!v4)
  {
    goto LABEL_4;
  }

  v5 = v4;
  ++*(v4 + 2);
  WebCore::NetworkStorageSession::resetCrossSiteLoadsWithLinkDecorationForTesting(v4);
  v6 = *(v5 + 2);
  if (v6)
  {
    *(v5 + 2) = v6 - 1;
LABEL_4:
    v7 = *a3;
    *a3 = 0;
    (*(*v7 + 16))(v7);
    return (*(*v7 + 8))(v7);
  }

  result = 290;
  __break(0xC471u);
  return result;
}

WTF::StringImpl **WebKit::NetworkProcess::grantStorageAccessForTesting(uint64_t a1, WTF::StringImpl *a2, uint64_t *a3, const WTF::StringImpl **a4, uint64_t *a5)
{
  v32[4] = *MEMORY[0x1E69E9840];
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v32[1] = v31;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v32[2] = v31;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v32[3] = v31;
  WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>::HashSet(&v31, v32, 4);
  for (i = 3; i != -1; --i)
  {
    v13 = v32[i];
    v32[i] = 0;
    if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v13, v10);
    }
  }

  v14 = v31;
  if (!v31)
  {
    goto LABEL_7;
  }

  v18 = *a4;
  if (*a4 == -1)
  {
LABEL_29:
    __break(0xC471u);
    JUMPOUT(0x19DC6BDA0);
  }

  if (!v18)
  {
    __break(0xC471u);
    JUMPOUT(0x19DC6BDC0);
  }

  v19 = *(v31 - 2);
  v20 = *(v18 + 4);
  if (v20 < 0x100)
  {
    v21 = WTF::StringImpl::hashSlowCase(v18);
  }

  else
  {
    v21 = v20 >> 8;
  }

  for (j = 0; ; v21 = j + v23)
  {
    v23 = v21 & v19;
    v24 = v14[v21 & v19];
    if (v24 != -1)
    {
      if (!v24)
      {
        goto LABEL_7;
      }

      if (WTF::equal(v24, *a4, v11))
      {
        break;
      }
    }

    ++j;
  }

  v32[0] = a2;
  v25 = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebCore::NetworkStorageSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebCore::NetworkStorageSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((a1 + 248), v32);
  if (v25)
  {
    v26 = v25;
    v27 = *(v25 + 8) + 1;
    *(v25 + 8) = v27;
    v28 = *(a3 + 3);
    if (v28)
    {
      v29 = *a3;
      v30 = 8 * v28;
      do
      {
        WebCore::NetworkStorageSession::grantCrossPageStorageAccess();
        v29 += 8;
        v30 -= 8;
      }

      while (v30);
      v27 = *(v26 + 8);
    }

    if (v27)
    {
      *(v26 + 8) = v27 - 1;
      goto LABEL_7;
    }

    goto LABEL_29;
  }

LABEL_7:
  v15 = *a5;
  *a5 = 0;
  (*(*v15 + 16))(v15);
  (*(*v15 + 8))(v15);
  result = v31;
  if (v31)
  {
    return WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v31, v16);
  }

  return result;
}

uint64_t WebKit::NetworkProcess::hasIsolatedSession(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v13 = a2;
  v6 = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((a1 + 240), &v13);
  if (!v6)
  {
    v10 = 0;
    goto LABEL_4;
  }

  v7 = v6;
  ++v6[4];
  v8 = (*(*v6 + 152))(v6, a3);
  v9 = v7[4];
  if (v9)
  {
    v10 = v8;
    v7[4] = v9 - 1;
LABEL_4:
    v11 = *a4;
    *a4 = 0;
    (*(*v11 + 16))(v11, v10);
    return (*(*v11 + 8))(v11);
  }

  result = 290;
  __break(0xC471u);
  return result;
}

uint64_t WebKit::NetworkProcess::setAppBoundDomainsForResourceLoadStatistics(uint64_t a1, uint64_t a2, uint64_t *a3, const WTF::StringImpl *a4)
{
  v15 = a2;
  v6 = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((a1 + 240), &v15);
  if (!v6)
  {
    goto LABEL_11;
  }

  v7 = v6;
  v8 = *(v6 + 16);
  *(v6 + 16) = v8 + 1;
  v9 = *(v6 + 72);
  if (!v9)
  {
    if (v8 == -1)
    {
LABEL_12:
      result = 290;
      __break(0xC471u);
      return result;
    }

    *(v6 + 16) = v8;
LABEL_11:
    v14 = *a4;
    *a4 = 0;
    (*(*v14 + 16))(v14);
    return (*(*v14 + 8))(v14);
  }

  while (1)
  {
    v10 = *v9;
    if ((*v9 & 1) == 0)
    {
      break;
    }

    v11 = *v9;
    atomic_compare_exchange_strong_explicit(v9, &v11, v10 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v11 == v10)
    {
      goto LABEL_5;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v9);
LABEL_5:
  WebKit::WebResourceLoadStatisticsStore::setAppBoundDomains(v9, a3, a4);
  result = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::WebResourceLoadStatisticsStore,(WTF::DestructionThread)1>::deref(v9);
  v13 = *(v7 + 16);
  if (!v13)
  {
    goto LABEL_12;
  }

  *(v7 + 16) = v13 - 1;
  return result;
}

uint64_t WebKit::NetworkProcess::setManagedDomainsForResourceLoadStatistics(uint64_t a1, void *a2, uint64_t *a3, uint64_t *a4)
{
  v20[0] = a2;
  v8 = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((a1 + 240), v20);
  if (v8)
  {
    v9 = v8;
    ++*(v8 + 16);
    v20[0] = "WebCookieManager";
    v20[1] = 17;
    v10 = WTF::HashMap<WTF::ASCIILiteral,std::unique_ptr<WebKit::NetworkProcessSupplement>,WTF::DefaultHash<WTF::ASCIILiteral>,WTF::HashTraits<WTF::ASCIILiteral>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkProcessSupplement>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ASCIILiteral,std::unique_ptr<WebKit::NetworkProcessSupplement>,WTF::DefaultHash<WTF::ASCIILiteral>,WTF::HashTraits<WTF::ASCIILiteral>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkProcessSupplement>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ASCIILiteral>>,WTF::ASCIILiteral>((a1 + 224), v20);
    v11 = v10;
    if (v10)
    {
      v12 = *(*(v10 + 24) + 8);
      if (!v12)
      {
        goto LABEL_13;
      }

      atomic_fetch_add((v12 + 144), 1u);
    }

    WTF::WeakPtrFactory<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl>::initializeIfNeeded((v9 + 8), v9);
    v13 = *(v9 + 8);
    atomic_fetch_add(v13, 1u);
    v14 = *a3;
    *a3 = 0;
    v15 = *a4;
    *a4 = 0;
    v16 = WTF::fastMalloc(0x20);
    *v16 = &unk_1F11015B8;
    v16[1] = v13;
    v16[2] = v14;
    v16[3] = v15;
    v20[0] = v16;
    WebKit::WebCookieManager::setHTTPCookieAcceptPolicy(v11, a2, 0, v20);
    result = v20[0];
    v20[0] = 0;
    if (result)
    {
      result = (*(*result + 8))(result);
      if (!v11)
      {
LABEL_8:
        v18 = *(v9 + 16);
        if (v18)
        {
          *(v9 + 16) = v18 - 1;
          return result;
        }

LABEL_13:
        __break(0xC471u);
        JUMPOUT(0x19DC6C20CLL);
      }
    }

    else if (!v11)
    {
      goto LABEL_8;
    }

    result = WebKit::WebCookieManager::deref(v11);
    goto LABEL_8;
  }

  v19 = *a4;
  *a4 = 0;
  (*(*v19 + 16))(v19);
  return (*(*v19 + 8))(v19);
}

uint64_t WebKit::NetworkProcess::setShouldDowngradeReferrerForTesting(uint64_t a1, char a2, uint64_t *a3)
{
  v6 = WTF::fastMalloc(0x10);
  *v6 = &unk_1F11015E0;
  v6[8] = a2;
  v10 = v6;
  WebKit::NetworkProcess::forEachNetworkSession(a1, &v10);
  (*(*v6 + 8))(v6);
  v7 = *a3;
  *a3 = 0;
  (*(*v7 + 16))(v7);
  v8 = *(*v7 + 8);

  return v8(v7);
}

uint64_t WebKit::NetworkProcess::setThirdPartyCookieBlockingMode(uint64_t a1, uint64_t a2, char a3, uint64_t *a4)
{
  v11 = a2;
  v6 = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((a1 + 240), &v11);
  if (!v6)
  {
    goto LABEL_4;
  }

  v7 = v6;
  ++*(v6 + 16);
  WebKit::NetworkSession::setThirdPartyCookieBlockingMode(v6, a3);
  v8 = *(v7 + 16);
  if (v8)
  {
    *(v7 + 16) = v8 - 1;
LABEL_4:
    v9 = *a4;
    *a4 = 0;
    (*(*v9 + 16))(v9);
    return (*(*v9 + 8))(v9);
  }

  result = 290;
  __break(0xC471u);
  return result;
}

uint64_t WebKit::NetworkProcess::setShouldEnbleSameSiteStrictEnforcementForTesting(uint64_t a1, uint64_t a2, char a3, uint64_t *a4)
{
  v11 = a2;
  v6 = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((a1 + 240), &v11);
  if (!v6)
  {
    goto LABEL_4;
  }

  v7 = v6;
  ++*(v6 + 16);
  WebKit::NetworkSession::setShouldEnbleSameSiteStrictEnforcement(v6, a3);
  v8 = *(v7 + 16);
  if (v8)
  {
    *(v7 + 16) = v8 - 1;
LABEL_4:
    v9 = *a4;
    *a4 = 0;
    (*(*v9 + 16))(v9);
    return (*(*v9 + 8))(v9);
  }

  result = 290;
  __break(0xC471u);
  return result;
}

uint64_t WebKit::NetworkProcess::setFirstPartyWebsiteDataRemovalModeForTesting(uint64_t a1, uint64_t a2, char a3, uint64_t *a4)
{
  v15 = a2;
  v6 = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((a1 + 240), &v15);
  if (v6)
  {
    v7 = v6;
    ++*(v6 + 16);
    v8 = *(v6 + 72);
    if (v8)
    {
      while (1)
      {
        v9 = *v8;
        if ((*v8 & 1) == 0)
        {
          break;
        }

        v10 = *v8;
        atomic_compare_exchange_strong_explicit(v8, &v10, v9 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v10 == v9)
        {
          goto LABEL_5;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v8);
LABEL_5:
      WebKit::WebResourceLoadStatisticsStore::setFirstPartyWebsiteDataRemovalMode(v8, a3, a4);
      result = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::WebResourceLoadStatisticsStore,(WTF::DestructionThread)1>::deref(v8);
    }

    else
    {
      v14 = *a4;
      *a4 = 0;
      (*(*v14 + 16))(v14);
      result = (*(*v14 + 8))(v14);
    }

    v12 = *(v7 + 16);
    if (v12)
    {
      *(v7 + 16) = v12 - 1;
    }

    else
    {
      result = 290;
      __break(0xC471u);
    }
  }

  else
  {
    v13 = *a4;
    *a4 = 0;
    (*(*v13 + 16))(v13);
    return (*(*v13 + 8))(v13);
  }

  return result;
}

uint64_t WebKit::NetworkProcess::setToSameSiteStrictCookiesForTesting(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v10 = a2;
  v5 = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebCore::NetworkStorageSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebCore::NetworkStorageSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((a1 + 248), &v10);
  if (v5)
  {
    v6 = v5;
    ++*(v5 + 8);
    result = WebCore::NetworkStorageSession::setAllCookiesToSameSiteStrict();
    v8 = *(v6 + 8);
    if (v8)
    {
      *(v6 + 8) = v8 - 1;
    }

    else
    {
      result = 290;
      __break(0xC471u);
    }
  }

  else
  {
    v9 = *a4;
    *a4 = 0;
    (*(*v9 + 16))(v9);
    return (*(*v9 + 8))(v9);
  }

  return result;
}

uint64_t WebKit::NetworkProcess::setFirstPartyHostCNAMEDomainForTesting(uint64_t a1, uint64_t a2, WTF **a3, const WTF::StringImpl **a4, uint64_t *a5)
{
  v13 = a2;
  v8 = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((a1 + 240), &v13);
  if (!v8)
  {
    goto LABEL_4;
  }

  v9 = v8;
  ++*(v8 + 16);
  WebKit::NetworkSession::setFirstPartyHostCNAMEDomain(v8, a3, a4);
  v10 = *(v9 + 16);
  if (v10)
  {
    *(v9 + 16) = v10 - 1;
LABEL_4:
    v11 = *a5;
    *a5 = 0;
    (*(*v11 + 16))(v11);
    return (*(*v11 + 8))(v11);
  }

  result = 290;
  __break(0xC471u);
  return result;
}

uint64_t WebKit::NetworkProcess::setThirdPartyCNAMEDomainForTesting(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v15 = a2;
  v6 = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((a1 + 240), &v15);
  if (!v6)
  {
    goto LABEL_9;
  }

  v8 = v6;
  ++*(v6 + 16);
  v9 = *(v6 + 144);
  v10 = *a3;
  *a3 = 0;
  if (v9 == 1)
  {
    v11 = *(v6 + 136);
    *(v8 + 136) = v10;
    if (v11)
    {
      if (atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v11, v7);
      }
    }
  }

  else
  {
    *(v6 + 136) = v10;
    *(v6 + 144) = 1;
  }

  v12 = *(v8 + 16);
  if (v12)
  {
    *(v8 + 16) = v12 - 1;
LABEL_9:
    v13 = *a4;
    *a4 = 0;
    (*(*v13 + 16))(v13);
    return (*(*v13 + 8))(v13);
  }

  result = 290;
  __break(0xC471u);
  return result;
}

void WebKit::NetworkProcess::notifyMediaStreamingActivity(WebKit::NetworkProcess *this, uint64_t state64)
{
  v2 = state64;
  v20 = *MEMORY[0x1E69E9840];
  v4 = *(this + 99);
  if (v4 != -1 || (v9 = (this + 396), (v10 = notify_register_check("com.apple.WebKit.mediaStreamingActivity", this + 99)) == 0) && (v4 = *v9, *v9 != -1))
  {
    v5 = notify_set_state(v4, v2);
    if (v5)
    {
      v6 = v5;
      v7 = qword_1ED6416C8;
      if (!os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
      {
        return;
      }

      v14 = 136315650;
      v15 = "com.apple.WebKit.mediaStreamingActivity";
      v16 = 1024;
      v17 = v6;
      v18 = 1024;
      v19 = v6;
      v8 = "notify_set_state() for %s failed with status (%d) 0x%X";
    }

    else
    {
      v12 = notify_post("com.apple.WebKit.mediaStreamingActivity");
      if (!v12)
      {
        return;
      }

      v13 = v12;
      v7 = qword_1ED6416C8;
      if (!os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
      {
        return;
      }

      v14 = 136315650;
      v15 = "com.apple.WebKit.mediaStreamingActivity";
      v16 = 1024;
      v17 = v13;
      v18 = 1024;
      v19 = v13;
      v8 = "notify_post() for %s failed with status (%d) 0x%X";
    }

    _os_log_error_impl(&dword_19D52D000, v7, OS_LOG_TYPE_ERROR, v8, &v14, 0x18u);
    return;
  }

  v11 = qword_1ED6416C8;
  if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
  {
    v14 = 136315650;
    v15 = "com.apple.WebKit.mediaStreamingActivity";
    v16 = 1024;
    v17 = v10;
    v18 = 1024;
    v19 = v10;
    _os_log_error_impl(&dword_19D52D000, v11, OS_LOG_TYPE_ERROR, "notify_register_check() for %s failed with status (%d) 0x%X", &v14, 0x18u);
  }

  *v9 = -1;
}

uint64_t WebKit::NetworkProcess::setPrivateClickMeasurementDebugMode(WebKit::NetworkProcess *this, SessionID a2, uint64_t a3)
{
  m_identifier = a2.m_identifier;
  result = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>(this + 30, &m_identifier);
  if (result)
  {
    v5 = result;
    v6 = *(result + 16) + 1;
    *(result + 16) = v6;
    if (*(result + 168) != a3)
    {
      *(result + 168) = a3;
      result = (*(**(result + 160) + 56))(*(result + 160), a3);
      v6 = *(v5 + 16);
    }

    if (v6)
    {
      *(v5 + 16) = v6 - 1;
    }

    else
    {
      result = 290;
      __break(0xC471u);
    }
  }

  return result;
}

uint64_t WebKit::NetworkProcess::setShouldSendPrivateTokenIPCForTesting(WebKit::NetworkProcess *this, SessionID a2, char a3)
{
  m_identifier = a2.m_identifier;
  result = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>(this + 30, &m_identifier);
  if (result)
  {
    v5 = *(result + 16);
    *(result + 726) = a3;
    *(result + 16) = v5 + 1;
    if (v5 == -1)
    {
      result = 290;
      __break(0xC471u);
    }

    else
    {
      *(result + 16) = v5;
    }
  }

  return result;
}

uint64_t WebKit::NetworkProcess::setOptInCookiePartitioningEnabled(uint64_t a1, uint64_t a2, int a3)
{
  v7 = a2;
  result = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((a1 + 240), &v7);
  if (result)
  {
    v5 = result;
    ++*(result + 16);
    result = WebKit::NetworkSession::setOptInCookiePartitioningEnabled(result, a3);
    v6 = *(v5 + 16);
    if (v6)
    {
      *(v5 + 16) = v6 - 1;
    }

    else
    {
      result = 290;
      __break(0xC471u);
    }
  }

  return result;
}

uint64_t WebKit::NetworkProcess::preconnectTo()
{
  v0 = MEMORY[0x1EEE9AC00]();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v15 = v0;
  v59 = *MEMORY[0x1E69E9840];
  v16 = WebCore::ResourceRequestBase::url(v7);
  v17 = *v16;
  if (*v16)
  {
    atomic_fetch_add_explicit(v17, 2u, memory_order_relaxed);
  }

  v45 = v17;
  v18 = *(v16 + 24);
  v46 = *(v16 + 8);
  v47 = v18;
  WebCore::ResourceRequestBase::httpUserAgent(&v44, v8);
  v48 = "LegacyCustomProtocolManager";
  v49 = 28;
  v19 = WTF::HashMap<WTF::ASCIILiteral,std::unique_ptr<WebKit::NetworkProcessSupplement>,WTF::DefaultHash<WTF::ASCIILiteral>,WTF::HashTraits<WTF::ASCIILiteral>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkProcessSupplement>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ASCIILiteral,std::unique_ptr<WebKit::NetworkProcessSupplement>,WTF::DefaultHash<WTF::ASCIILiteral>,WTF::HashTraits<WTF::ASCIILiteral>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkProcessSupplement>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ASCIILiteral>>,WTF::ASCIILiteral>((v15 + 224), &v48);
  v20 = v19;
  if (v19)
  {
    WebKit::LegacyCustomProtocolManager::ref(v19);
  }

  v48 = WTF::URL::protocol(&v45);
  LODWORD(v49) = v21;
  BYTE4(v49) = v22;
  WTF::StringView::toString(v55, &v48);
  v24 = WebKit::LegacyCustomProtocolManager::supportsScheme(v20, v55);
  v25 = v55[0];
  v55[0] = 0;
  if (v25 && atomic_fetch_add_explicit(v25, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v25, v23);
  }

  if (v20)
  {
    WebKit::LegacyCustomProtocolManager::deref(v20);
  }

  if ((v24 & 1) == 0)
  {
    v48 = v14;
    v26 = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((v15 + 240), &v48);
    if (v26)
    {
      v27 = v26;
      ++*(v26 + 16);
      WebKit::NetworkLoadParameters::NetworkLoadParameters(v55);
      WebCore::ResourceRequest::operator=(v56, v8);
      v55[0] = v12;
      v55[1] = v10;
      v57 = v4;
      v56[202] = v6;
      v56[3152] = 1;
      v58 = v2;
      WebKit::NetworkLoadParameters::NetworkLoadParameters(v54, v55);
      WebKit::NetworkSession::protectedNetworkLoadScheduler(v27, v28, &v48);
      WebKit::NetworkLoadScheduler::startedPreconnectForMainResource(v48, &v45, &v44);
      v29 = v48;
      v48 = 0;
      if (v29)
      {
        WTF::RefCounted<WebKit::NetworkLoadScheduler>::deref(v29 + 2);
      }

      WebKit::PreconnectTask::create(v27, v55, &v43);
      v30 = v43;
      WTF::WeakPtrFactory<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(v27 + 2, v27);
      v31 = *(v27 + 1);
      atomic_fetch_add(v31, 1u);
      v48 = v31;
      v32 = v45;
      if (v45)
      {
        atomic_fetch_add_explicit(v45, 2u, memory_order_relaxed);
      }

      v49 = v32;
      v50 = v46;
      v51 = v47;
      v33 = v44;
      if (v44)
      {
        atomic_fetch_add_explicit(v44, 2u, memory_order_relaxed);
      }

      v52 = v33;
      WebKit::NetworkLoadParameters::NetworkLoadParameters(&v53, v54);
      WTF::CompletionHandler<void ()(WebCore::ResourceError const&,WebCore::NetworkLoadMetrics const&)>::CompletionHandler<WebKit::NetworkProcess::preconnectTo(PAL::SessionID,WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::ResourceRequest &&,WebCore::StoredCredentialsPolicy,std::optional<WebKit::NavigatingToAppBoundDomain>,unsigned long long)::$_0,void>(&v42, &v48);
      WebKit::PreconnectTask::start(v30, &v42, 10.0);
      v35 = v42;
      v42 = 0;
      if (v35)
      {
        (*(*v35 + 8))(v35);
      }

      WebKit::NetworkProcess::preconnectTo(PAL::SessionID,WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::ResourceRequest &&,WebCore::StoredCredentialsPolicy,std::optional<WebKit::NavigatingToAppBoundDomain>,unsigned long long)::$_0::~$_0(&v48, v34);
      v37 = v43;
      v43 = 0;
      if (v37)
      {
        if (v37[5] == 1)
        {
          (*(*v37 + 24))(v37);
        }

        else
        {
          --v37[5];
        }
      }

      WebKit::NetworkLoadParameters::~NetworkLoadParameters(v54, v36);
      WebKit::NetworkLoadParameters::~NetworkLoadParameters(v55, v38);
      v39 = v27[4];
      if (!v39)
      {
        result = 290;
        __break(0xC471u);
        return result;
      }

      v27[4] = v39 - 1;
    }
  }

  v40 = v44;
  v44 = 0;
  if (v40 && atomic_fetch_add_explicit(v40, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v40, v23);
  }

  result = v45;
  v45 = 0;
  if (result)
  {
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v23);
    }
  }

  return result;
}

void *WTF::CompletionHandler<void ()(WebCore::ResourceError const&,WebCore::NetworkLoadMetrics const&)>::CompletionHandler<WebKit::NetworkProcess::preconnectTo(PAL::SessionID,WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::ResourceRequest &&,WebCore::StoredCredentialsPolicy,std::optional<WebKit::NavigatingToAppBoundDomain>,unsigned long long)::$_0,void>(void *a1, uint64_t *a2)
{
  v4 = WTF::fastMalloc(0xD10);
  *v4 = &unk_1F1101608;
  v5 = *a2;
  *a2 = 0;
  v4[2] = v5;
  WTF::URL::URL((v4 + 3), a2 + 1);
  v6 = a2[6];
  a2[6] = 0;
  v4[8] = v6;
  WebKit::NetworkLoadParameters::NetworkLoadParameters((v4 + 10), a2 + 4);
  *a1 = v4;
  return a1;
}

uint64_t WebKit::NetworkProcess::preconnectTo(PAL::SessionID,WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::ResourceRequest &&,WebCore::StoredCredentialsPolicy,std::optional<WebKit::NavigatingToAppBoundDomain>,unsigned long long)::$_0::~$_0(uint64_t a1, void *a2)
{
  if (*(a1 + 3296) == 1)
  {
    v11 = *(a1 + 3288);
    *(a1 + 3288) = 0;
    if (v11)
    {
    }
  }

  WTF::Vector<WTF::RefPtr<WebCore::BlobDataFileReference,WTF::RawPtrTraits<WebCore::BlobDataFileReference>,WTF::DefaultRefDerefTraits<WebCore::BlobDataFileReference>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(a1 + 3248, a2);
  if (*(a1 + 3232) == 1)
  {
    WebKit::NavigationActionData::~NavigationActionData((a1 + 320), v3);
  }

  WebCore::ResourceRequest::~ResourceRequest((a1 + 112));
  v5 = *(a1 + 96);
  *(a1 + 96) = 0;
  if (v5)
  {
    WTF::ThreadSafeRefCounted<WebCore::SecurityOrigin,(WTF::DestructionThread)0>::deref(v5, v4);
  }

  v6 = *(a1 + 88);
  *(a1 + 88) = 0;
  if (v6)
  {
    WTF::ThreadSafeRefCounted<WebCore::SecurityOrigin,(WTF::DestructionThread)0>::deref(v6, v4);
  }

  v7 = *(a1 + 48);
  *(a1 + 48) = 0;
  if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v7, v4);
  }

  v8 = *(a1 + 8);
  *(a1 + 8) = 0;
  if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v8, v4);
  }

  v9 = *a1;
  *a1 = 0;
  if (v9 && atomic_fetch_add(v9, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v9);
    WTF::fastFree(v9, v4);
  }

  return a1;
}

uint64_t WebKit::NetworkProcess::setSessionIsControlledByAutomation(uint64_t result, uint64_t a2, int a3)
{
  v3 = result;
  v21 = a2;
  if (!a3)
  {
    v18 = WTF::HashTable<PAL::SessionID,PAL::SessionID,WTF::IdentityExtractor,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashTraits<PAL::SessionID>,WTF::DefaultHash<PAL::SessionID>>,(WTF::ShouldValidateKey)1,PAL::SessionID>((result + 232), &v21);
    return WTF::HashSet<PAL::SessionID,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>::remove((v3 + 232), v18);
  }

  if (a2 == -1 || !a2)
  {
    __break(0xC471u);
    JUMPOUT(0x19DC6D410);
  }

  v5 = *(result + 232);
  if (!v5)
  {
    result = WTF::HashTable<PAL::SessionID,PAL::SessionID,WTF::IdentityExtractor,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::FastMalloc>::expand((result + 232), 0);
    v5 = *(v3 + 232);
  }

  v6 = *(v5 - 8);
  v7 = (~(a2 << 32) + a2) ^ ((~(a2 << 32) + a2) >> 22);
  v8 = 9 * ((v7 + ~(v7 << 13)) ^ ((v7 + ~(v7 << 13)) >> 8));
  v9 = (v8 ^ (v8 >> 15)) + ~((v8 ^ (v8 >> 15)) << 27);
  v10 = v6 & ((v9 >> 31) ^ v9);
  v11 = (v5 + 8 * v10);
  v12 = *v11;
  if (*v11)
  {
    v13 = 0;
    v14 = 1;
    while (v12 != a2)
    {
      if (v12 == -1)
      {
        v13 = v11;
      }

      v10 = (v10 + v14) & v6;
      v11 = (v5 + 8 * v10);
      v12 = *v11;
      ++v14;
      if (!*v11)
      {
        if (!v13)
        {
          goto LABEL_15;
        }

        *v13 = 0;
        v5 = *(v3 + 232);
        *v13 = a2;
        v15 = vadd_s32(*(v5 - 16), 0x1FFFFFFFFLL);
        *(v5 - 16) = v15;
        v16 = v15.i32[1];
        v17 = v15.i32[0];
        goto LABEL_16;
      }
    }
  }

  else
  {
LABEL_15:
    *v11 = a2;
    v17 = *(v5 - 16);
    v16 = *(v5 - 12) + 1;
    *(v5 - 12) = v16;
    v13 = v11;
LABEL_16:
    v19 = (v16 + v17);
    v20 = *(v5 - 4);
    if (v20 > 0x400)
    {
      if (v20 > 2 * v19)
      {
        return result;
      }
    }

    else if (3 * v20 > 4 * v19)
    {
      return result;
    }

    return WTF::HashTable<PAL::SessionID,PAL::SessionID,WTF::IdentityExtractor,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::FastMalloc>::expand((v3 + 232), v13);
  }

  return result;
}

WTF::RunLoop *WebKit::NetworkProcess::fetchWebsiteData(uint64_t a1, atomic_uint *a2, int a3, atomic_uint *a4, uint64_t *a5)
{
  v96 = *MEMORY[0x1E69E9840];
  v11 = qword_1ED641350;
  if (os_log_type_enabled(qword_1ED641350, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    *&buf[4] = a2;
    _os_log_impl(&dword_19D52D000, v11, OS_LOG_TYPE_DEFAULT, "NetworkProcess::fetchWebsiteData started to fetch data for session %llu", buf, 0xCu);
  }

  v12 = WTF::fastMalloc(0x38);
  *v12 = 1;
  v13 = *a5;
  *a5 = 0;
  *(v12 + 8) = v13;
  *(v12 + 16) = 0u;
  *(v12 + 32) = 0u;
  *(v12 + 48) = 0;
  v91 = v12;
  *buf = a2;
  v14 = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((a1 + 240), buf);
  v16 = v14;
  if (v14)
  {
    ++*(v14 + 16);
  }

  if (a3)
  {
    *buf = a2;
    v17 = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebCore::NetworkStorageSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebCore::NetworkStorageSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((a1 + 248), buf);
    if (v17)
    {
      v18 = v17;
      ++*(v17 + 8);
      WebCore::NetworkStorageSession::getHostnamesWithCookies();
      v19 = *(v18 + 8);
      if (!v19)
      {
        __break(0xC471u);
        goto LABEL_227;
      }

      *(v18 + 8) = v19 - 1;
    }
  }

  if ((a3 & 0x2000) != 0)
  {
    *buf = a2;
    v81 = a1;
    if (WTF::HashMap<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebCore::NetworkStorageSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebCore::NetworkStorageSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((a1 + 248), buf))
    {
      *buf = a2;
      v20 = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebCore::NetworkStorageSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebCore::NetworkStorageSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((a1 + 248), buf);
      WebCore::CredentialStorage::originsWithCredentials(&v89, (v20 + 112));
      v21 = WTF::HashTable<WebCore::SecurityOriginData,WebCore::SecurityOriginData,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::FastMalloc>::begin(&v89);
      v22 = v15;
      v23 = v89;
      if (v89)
      {
        v24 = (v89 + 32 * *(v89 - 1));
      }

      else
      {
        v24 = 0;
      }

      if (v24 != v21)
      {
        v82 = v16;
        while (1)
        {
          v25 = v91;
          v26 = *(v21 + 24);
          if (*(v21 + 24))
          {
            if (v26 == 255)
            {
              v5 = 0;
              v12 &= 0xFFFFFFFFFFFFFF00;
              buf[0] = 0;
              v94 = -1;
              goto LABEL_29;
            }

            v12 = *v21;
            v16 = *(v21 + 1);
          }

          else
          {
            v12 = *v21;
            if (*v21)
            {
              atomic_fetch_add_explicit(v12, 2u, memory_order_relaxed);
            }

            v16 = *(v21 + 1);
            if (v16)
            {
              atomic_fetch_add_explicit(v16, 2u, memory_order_relaxed);
            }

            LODWORD(a5) = *(v21 + 4);
            v26 = *(v21 + 24);
          }

          buf[0] = 0;
          v94 = -1;
          if (!v26)
          {
            if (v12)
            {
              atomic_fetch_add_explicit(v12, 2u, memory_order_relaxed);
            }

            *buf = v12;
            if (v16)
            {
              atomic_fetch_add_explicit(v16, 2u, memory_order_relaxed);
            }

            *&buf[8] = v16;
            v93 = a5;
            goto LABEL_28;
          }

          if (v26 != 255)
          {
            *buf = v12;
            *&buf[8] = v16;
LABEL_28:
            v94 = v26;
            v5 = v26 == 0;
            goto LABEL_29;
          }

          v5 = 0;
LABEL_29:
          LODWORD(v95) = 0x2000;
          *(&v95 + 1) = 0;
          v27 = v25[7];
          if (v27 == v25[6])
          {
            WTF::Vector<WebKit::WebsiteData::Entry,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebKit::WebsiteData::Entry>((v25 + 4), buf);
            goto LABEL_35;
          }

          v28 = *(v25 + 2) + 48 * v27;
          *v28 = 0;
          *(v28 + 24) = -1;
          if (v94)
          {
            if (v94 == 255)
            {
              goto LABEL_34;
            }

            *v28 = *buf;
          }

          else
          {
            v29 = *buf;
            *buf = 0;
            *v28 = v29;
            v30 = *&buf[8];
            *&buf[8] = 0;
            *(v28 + 8) = v30;
            *(v28 + 16) = v93;
          }

          *(v28 + 24) = v94;
LABEL_34:
          *(v28 + 32) = v95;
          ++v25[7];
LABEL_35:
          if (!v94)
          {
            v31 = *&buf[8];
            *&buf[8] = 0;
            if (v31 && atomic_fetch_add_explicit(v31, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v31, v15);
            }

            v32 = *buf;
            *buf = 0;
            if (v32 && atomic_fetch_add_explicit(v32, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v32, v15);
            }
          }

          v94 = -1;
          if (!v5)
          {
            goto LABEL_50;
          }

          if (v16 && atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v16, v15);
            if (v12)
            {
LABEL_46:
              if (atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v12, v15);
              }

              v12 = 0;
            }
          }

          else if (v12)
          {
            goto LABEL_46;
          }

          v16 = 0;
          do
          {
LABEL_50:
            v21 = (v21 + 32);
          }

          while (v21 != v22 && WTF::HashTable<WebCore::SecurityOriginData,WebCore::SecurityOriginData,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::FastMalloc>::isEmptyOrDeletedBucket(v21));
          if (v21 == v24)
          {
            v23 = v89;
            v16 = v82;
            break;
          }
        }
      }

      if (v23)
      {
        WTF::HashTable<WebCore::SecurityOriginData,WebCore::SecurityOriginData,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::FastMalloc>::deallocateTable(v23, v15);
      }

      a1 = v81;
    }

    if (v16)
    {
      (*(*v16 + 120))(&v89, v16);
      v33 = WTF::HashTable<WebCore::SecurityOriginData,WebCore::SecurityOriginData,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::FastMalloc>::begin(&v89);
      v34 = v15;
      v35 = v89;
      if (v89)
      {
        v36 = (v89 + 32 * *(v89 - 1));
      }

      else
      {
        v36 = 0;
      }

      if (v36 != v33)
      {
        v80 = a2;
        v83 = v16;
        v85 = a3;
        v87 = v36;
        while (1)
        {
          v37 = *(v33 + 24);
          if (*(v33 + 24))
          {
            if (v37 == 255)
            {
              v16 &= 0xFFFFFFFFFFFFFF00;
              v38 = v91 + 4;
              goto LABEL_134;
            }

            v16 = *v33;
            a2 = *(v33 + 1);
          }

          else
          {
            v16 = *v33;
            if (*v33)
            {
              atomic_fetch_add_explicit(v16, 2u, memory_order_relaxed);
            }

            a2 = *(v33 + 1);
            if (a2)
            {
              atomic_fetch_add_explicit(a2, 2u, memory_order_relaxed);
            }

            LODWORD(a5) = *(v33 + 4);
            v37 = *(v33 + 24);
          }

          v38 = v91 + 4;
          if (!v37)
          {
            if (v16)
            {
              atomic_fetch_add_explicit(v16, 2u, memory_order_relaxed);
            }

            if (a2)
            {
              atomic_fetch_add_explicit(a2, 2u, memory_order_relaxed);
            }

            buf[0] = 0;
            v94 = -1;
            if (v16)
            {
              atomic_fetch_add_explicit(v16, 2u, memory_order_relaxed);
            }

            *buf = v16;
            if (a2)
            {
              atomic_fetch_add_explicit(a2, 2u, memory_order_relaxed);
            }

            v37 = 0;
            *&buf[8] = a2;
            v93 = a5;
            v39 = 1;
            goto LABEL_89;
          }

          if (v37 != 255)
          {
            v39 = 0;
            *buf = v16;
            *&buf[8] = a2;
LABEL_89:
            v12 = a2;
            v5 = v16;
            goto LABEL_90;
          }

LABEL_134:
          v39 = 0;
          v5 &= 0xFFFFFFFFFFFFFF00;
          buf[0] = 0;
          v37 = 255;
LABEL_90:
          v94 = v37;
          LODWORD(v95) = 0x2000;
          *(&v95 + 1) = 0;
          v40 = v38[3];
          if (v40 == v38[2])
          {
            WTF::Vector<WebKit::WebsiteData::Entry,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebKit::WebsiteData::Entry>(v38, buf);
            goto LABEL_96;
          }

          v41 = *v38 + 48 * v40;
          *v41 = 0;
          *(v41 + 24) = -1;
          if (v94)
          {
            if (v94 == 255)
            {
              goto LABEL_95;
            }

            *v41 = *buf;
          }

          else
          {
            v42 = *buf;
            *buf = 0;
            *v41 = v42;
            v43 = *&buf[8];
            *&buf[8] = 0;
            *(v41 + 8) = v43;
            *(v41 + 16) = v93;
          }

          *(v41 + 24) = v94;
LABEL_95:
          *(v41 + 32) = v95;
          ++v38[3];
LABEL_96:
          if (!v94)
          {
            v44 = *&buf[8];
            *&buf[8] = 0;
            if (v44 && atomic_fetch_add_explicit(v44, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v44, v15);
            }

            v45 = *buf;
            *buf = 0;
            if (v45 && atomic_fetch_add_explicit(v45, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v45, v15);
            }
          }

          v94 = -1;
          if (!v37)
          {
            if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v12, v15);
              if (v5)
              {
LABEL_107:
                if (atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  WTF::StringImpl::destroy(v5, v15);
                }

                v5 = 0;
              }
            }

            else if (v5)
            {
              goto LABEL_107;
            }

            v12 = 0;
          }

          if (!v39)
          {
            goto LABEL_119;
          }

          if (a2 && atomic_fetch_add_explicit(a2, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(a2, v15);
            if (v16)
            {
LABEL_115:
              if (atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v16, v15);
              }

              v16 = 0;
            }
          }

          else if (v16)
          {
            goto LABEL_115;
          }

          a2 = 0;
          do
          {
LABEL_119:
            v33 = (v33 + 32);
          }

          while (v33 != v34 && WTF::HashTable<WebCore::SecurityOriginData,WebCore::SecurityOriginData,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::FastMalloc>::isEmptyOrDeletedBucket(v33));
          if (v33 == v87)
          {
            v35 = v89;
            v16 = v83;
            a3 = v85;
            a2 = v80;
            break;
          }
        }
      }

      if (v35)
      {
        WTF::HashTable<WebCore::SecurityOriginData,WebCore::SecurityOriginData,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::FastMalloc>::deallocateTable(v35, v15);
      }

      a1 = v81;
    }
  }

  if ((a3 & 0x200) != 0)
  {
    WebKit::NetworkProcess::hostNamesWithHSTSCache(a1, a2, buf);
    v46 = *buf;
    *buf = 0;
    v47 = *(v91 + 5);
    *(v91 + 5) = v46;
    if (v47)
    {
      WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v47, v15);
      if (*buf)
      {
        WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(*buf, v15);
      }
    }
  }

  v48 = a4;
  if ((a3 & 0x4000) != 0)
  {
    if (!v16)
    {
      goto LABEL_213;
    }

    if (*(v16 + 768) == 1)
    {
      v65 = *(v16 + 752);
      if (v65)
      {
        if (*(v65 + 4))
        {
          a4 = WebKit::NetworkSession::ensureSWServer(v16, v15);
          v12 = (a4 + 2);
          ++a4[2];
          v66 = v91;
          atomic_fetch_add(v91, 1u);
          v89 = v66;
          v67 = WTF::fastMalloc(0x10);
          *v67 = &unk_1F1101658;
          v68 = v89;
          v89 = 0;
          v67[1] = v68;
          *buf = v67;
          WebCore::SWServer::getOriginsWithRegistrations();
          v69 = *buf;
          *buf = 0;
          if (v69)
          {
            (*(*v69 + 8))(v69);
          }

          WTF::Ref<WebKit::NetworkProcess::fetchWebsiteData(PAL::SessionID,WTF::OptionSet<WebKit::WebsiteDataType>,WTF::OptionSet<WebKit::WebsiteDataFetchOption>,WTF::CompletionHandler<void ()(WebKit::WebsiteData &&)> &&)::CallbackAggregator,WTF::RawPtrTraits<WTF::CompletionHandler<void ()(WebKit::WebsiteData &&)> &>,WTF::DefaultRefDerefTraits<WTF::CompletionHandler<void ()(WebKit::WebsiteData &&)> &>>::~Ref(&v89);
          WTF::RefCounted<WebCore::SWServer>::deref(v12);
        }
      }
    }
  }

  if ((a3 & 2) != 0)
  {
    if (v16)
    {
      a4 = *(v16 + 624);
      if (a4)
      {
        v12 = (a4 + 2);
        ++a4[2];
        v49 = v91;
        atomic_fetch_add(v91, 1u);
        v89 = v49;
        v50 = WTF::fastMalloc(0x10);
        *v50 = &unk_1F1101680;
        v51 = v89;
        v89 = 0;
        v50[1] = v51;
        *buf = v50;
        WebKit::NetworkCache::Cache::fetchData(a4, v48 & 1, buf);
        if (*buf)
        {
          (*(**buf + 8))(*buf);
        }

        WTF::Ref<WebKit::NetworkProcess::fetchWebsiteData(PAL::SessionID,WTF::OptionSet<WebKit::WebsiteDataType>,WTF::OptionSet<WebKit::WebsiteDataFetchOption>,WTF::CompletionHandler<void ()(WebKit::WebsiteData &&)> &&)::CallbackAggregator,WTF::RawPtrTraits<WTF::CompletionHandler<void ()(WebKit::WebsiteData &&)> &>,WTF::DefaultRefDerefTraits<WTF::CompletionHandler<void ()(WebKit::WebsiteData &&)> &>>::~Ref(&v89);
        WTF::RefCounted<WebKit::NetworkCache::Cache>::deref(a4 + 2, v52);
      }
    }
  }

  if ((a3 & 0x40000) != 0)
  {
    if (!v16)
    {
      goto LABEL_213;
    }

    v88 = v48;
    v86 = a3;
    v84 = v16;
    (*(*v16 + 96))(&v89, v16);
    if (v90)
    {
      v54 = v89 + 24;
      v55 = 32 * v90;
      v56 = v91;
      do
      {
        v57 = *v54;
        if (*v54)
        {
          if (v57 == 255)
          {
            v58 = 0;
            v12 &= 0xFFFFFFFFFFFFFF00;
            buf[0] = 0;
            v94 = -1;
            goto LABEL_164;
          }

          v12 = *(v54 - 3);
          a4 = *(v54 - 2);
        }

        else
        {
          v12 = *(v54 - 3);
          if (v12)
          {
            atomic_fetch_add_explicit(v12, 2u, memory_order_relaxed);
          }

          a4 = *(v54 - 2);
          if (a4)
          {
            atomic_fetch_add_explicit(a4, 2u, memory_order_relaxed);
          }

          LODWORD(a1) = *(v54 - 2);
          v57 = *v54;
        }

        buf[0] = 0;
        v94 = -1;
        if (!v57)
        {
          if (v12)
          {
            atomic_fetch_add_explicit(v12, 2u, memory_order_relaxed);
          }

          *buf = v12;
          if (a4)
          {
            atomic_fetch_add_explicit(a4, 2u, memory_order_relaxed);
          }

          *&buf[8] = a4;
          v93 = a1;
          goto LABEL_163;
        }

        if (v57 != 255)
        {
          *buf = v12;
          *&buf[8] = a4;
LABEL_163:
          v94 = v57;
          v58 = v57 == 0;
          goto LABEL_164;
        }

        v58 = 0;
LABEL_164:
        LODWORD(v95) = 0x40000;
        *(&v95 + 1) = 0;
        v59 = v56[7];
        if (v59 == v56[6])
        {
          WTF::Vector<WebKit::WebsiteData::Entry,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebKit::WebsiteData::Entry>((v56 + 4), buf);
          goto LABEL_170;
        }

        v60 = *(v56 + 2) + 48 * v59;
        *v60 = 0;
        *(v60 + 24) = -1;
        if (v94)
        {
          if (v94 == 255)
          {
            goto LABEL_169;
          }

          *v60 = *buf;
        }

        else
        {
          v61 = *buf;
          *buf = 0;
          *v60 = v61;
          v62 = *&buf[8];
          *&buf[8] = 0;
          *(v60 + 8) = v62;
          *(v60 + 16) = v93;
        }

        *(v60 + 24) = v94;
LABEL_169:
        *(v60 + 32) = v95;
        ++v56[7];
LABEL_170:
        if (!v94)
        {
          v63 = *&buf[8];
          *&buf[8] = 0;
          if (v63 && atomic_fetch_add_explicit(v63, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v63, v53);
          }

          v64 = *buf;
          *buf = 0;
          if (v64 && atomic_fetch_add_explicit(v64, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v64, v53);
          }
        }

        v94 = -1;
        if (!v58)
        {
          goto LABEL_185;
        }

        if (a4 && atomic_fetch_add_explicit(a4, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(a4, v53);
          if (v12)
          {
LABEL_181:
            if (atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v12, v53);
            }

            v12 = 0;
          }
        }

        else if (v12)
        {
          goto LABEL_181;
        }

        a4 = 0;
LABEL_185:
        v54 += 32;
        v55 -= 32;
      }

      while (v55);
    }

    WTF::Vector<WebCore::SecurityOriginData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v89, v53);
    v16 = v84;
    a3 = v86;
    v48 = v88;
  }

  if ((a3 & 0x1000) != 0)
  {
    if (v16)
    {
      v70 = *(v16 + 72);
      if (v70)
      {
        while (1)
        {
          v71 = *v70;
          if ((*v70 & 1) == 0)
          {
            break;
          }

          v72 = *v70;
          atomic_compare_exchange_strong_explicit(v70, &v72, v71 + 2, memory_order_relaxed, memory_order_relaxed);
          if (v72 == v71)
          {
            goto LABEL_210;
          }
        }

        WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v70);
LABEL_210:
        v73 = v91;
        atomic_fetch_add(v91, 1u);
        v74 = WTF::fastMalloc(0x10);
        *v74 = &unk_1F11016A8;
        v74[1] = v73;
        v89 = 0;
        *buf = v74;
        WebKit::WebResourceLoadStatisticsStore::registrableDomains(v70, buf);
        if (*buf)
        {
          (*(**buf + 8))(*buf);
        }

        WTF::Ref<WebKit::NetworkProcess::fetchWebsiteData(PAL::SessionID,WTF::OptionSet<WebKit::WebsiteDataType>,WTF::OptionSet<WebKit::WebsiteDataFetchOption>,WTF::CompletionHandler<void ()(WebKit::WebsiteData &&)> &&)::CallbackAggregator,WTF::RawPtrTraits<WTF::CompletionHandler<void ()(WebKit::WebsiteData &&)> &>,WTF::DefaultRefDerefTraits<WTF::CompletionHandler<void ()(WebKit::WebsiteData &&)> &>>::~Ref(&v89);
        WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::WebResourceLoadStatisticsStore,(WTF::DestructionThread)1>::deref(v70);
      }
    }
  }

LABEL_213:
  if ((*&a3 & 0x8C0B0) != 0)
  {
    if (v16)
    {
      v75 = *(v16 + 1048);
      v76 = v91;
      atomic_fetch_add(v91, 1u);
      v77 = WTF::fastMalloc(0x10);
      *v77 = &unk_1F11016D0;
      v77[1] = v76;
      v89 = 0;
      *buf = v77;
      WebKit::NetworkStorageManager::fetchData(v75, a3, v48 & 1, buf);
      if (*buf)
      {
        (*(**buf + 8))(*buf);
      }

      WTF::Ref<WebKit::NetworkProcess::fetchWebsiteData(PAL::SessionID,WTF::OptionSet<WebKit::WebsiteDataType>,WTF::OptionSet<WebKit::WebsiteDataFetchOption>,WTF::CompletionHandler<void ()(WebKit::WebsiteData &&)> &&)::CallbackAggregator,WTF::RawPtrTraits<WTF::CompletionHandler<void ()(WebKit::WebsiteData &&)> &>,WTF::DefaultRefDerefTraits<WTF::CompletionHandler<void ()(WebKit::WebsiteData &&)> &>>::~Ref(&v89);
      goto LABEL_219;
    }
  }

  else if (v16)
  {
LABEL_219:
    v78 = *(v16 + 16);
    if (v78)
    {
      *(v16 + 16) = v78 - 1;
      return WTF::Ref<WebKit::NetworkProcess::fetchWebsiteData(PAL::SessionID,WTF::OptionSet<WebKit::WebsiteDataType>,WTF::OptionSet<WebKit::WebsiteDataFetchOption>,WTF::CompletionHandler<void ()(WebKit::WebsiteData &&)> &&)::CallbackAggregator,WTF::RawPtrTraits<WTF::CompletionHandler<void ()(WebKit::WebsiteData &&)> &>,WTF::DefaultRefDerefTraits<WTF::CompletionHandler<void ()(WebKit::WebsiteData &&)> &>>::~Ref(&v91);
    }

    __break(0xC471u);
LABEL_227:
    JUMPOUT(0x19DC6E0B0);
  }

  return WTF::Ref<WebKit::NetworkProcess::fetchWebsiteData(PAL::SessionID,WTF::OptionSet<WebKit::WebsiteDataType>,WTF::OptionSet<WebKit::WebsiteDataFetchOption>,WTF::CompletionHandler<void ()(WebKit::WebsiteData &&)> &&)::CallbackAggregator,WTF::RawPtrTraits<WTF::CompletionHandler<void ()(WebKit::WebsiteData &&)> &>,WTF::DefaultRefDerefTraits<WTF::CompletionHandler<void ()(WebKit::WebsiteData &&)> &>>::~Ref(&v91);
}

void WebKit::WebsiteData::Entry::~Entry(WebKit::WebsiteData::Entry *this, WTF::StringImpl *a2)
{
  if (!*(this + 24))
  {
    v3 = *(this + 1);
    *(this + 1) = 0;
    if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v3, a2);
    }

    v4 = *this;
    *this = 0;
    if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v4, a2);
    }
  }

  *(this + 24) = -1;
}

WTF::RunLoop *WTF::Ref<WebKit::NetworkProcess::fetchWebsiteData(PAL::SessionID,WTF::OptionSet<WebKit::WebsiteDataType>,WTF::OptionSet<WebKit::WebsiteDataFetchOption>,WTF::CompletionHandler<void ()(WebKit::WebsiteData &&)> &&)::CallbackAggregator,WTF::RawPtrTraits<WTF::CompletionHandler<void ()(WebKit::WebsiteData &&)> &>,WTF::DefaultRefDerefTraits<WTF::CompletionHandler<void ()(WebKit::WebsiteData &&)> &>>::~Ref(WTF::RunLoop *this)
{
  v2 = *this;
  *this = 0;
  if (v2 && atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v2);
    WTF::RunLoop::mainSingleton(this);
    v4 = *(v2 + 48);
    *(v2 + 48) = 0;
    v5 = *(v2 + 24);
    *(v2 + 24) = 0;
    v6 = *(v2 + 8);
    *(v2 + 8) = 0u;
    v16 = v6;
    v17 = *(v2 + 32);
    *(v2 + 32) = 0u;
    v7 = WTF::fastMalloc(0x38);
    *v7 = &unk_1F1101630;
    *(v7 + 8) = v16;
    v18 = 0u;
    v19 = 0;
    *(v7 + 24) = v5;
    *(v7 + 32) = v17;
    v20 = 0u;
    v21 = 0;
    *(v7 + 48) = v4;
    v22 = v7;
    WTF::RunLoop::dispatch();
    v9 = v22;
    v22 = 0;
    if (v9)
    {
      (*(*v9 + 8))(v9);
    }

    WTF::Vector<WebKit::WebsiteData::Entry,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v18 + 8, v8);
    if (v18)
    {
      (*(*v18 + 8))(v18);
    }

    v11 = *(v2 + 48);
    if (v11)
    {
      WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v11, v10);
    }

    v12 = *(v2 + 40);
    if (v12)
    {
      WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v12, v10);
    }

    v13 = *(v2 + 32);
    if (v13)
    {
      WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v13, v10);
    }

    WTF::Vector<WebKit::WebsiteData::Entry,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v2 + 16, v10);
    v15 = *(v2 + 8);
    *(v2 + 8) = 0;
    if (v15)
    {
      (*(*v15 + 8))(v15);
    }

    WTF::fastFree(v2, v14);
  }

  return this;
}

void WebKit::NetworkProcess::performDeleteWebsiteDataTask(uint64_t *a1, uint64_t a2, int a3)
{
  v68 = *MEMORY[0x1E69E9840];
  v3 = a1[51];
  if (v3)
  {
    if (a2 == -1)
    {
      __break(0xC471u);
      goto LABEL_110;
    }

    if (!a2)
    {
      __break(0xC471u);
      JUMPOUT(0x19DC6ED38);
    }

    v7 = *(v3 - 8);
    v8 = (~(a2 << 32) + a2) ^ ((~(a2 << 32) + a2) >> 22);
    v9 = 9 * ((v8 + ~(v8 << 13)) ^ ((v8 + ~(v8 << 13)) >> 8));
    v10 = (v9 ^ (v9 >> 15)) + ~((v9 ^ (v9 >> 15)) << 27);
    v11 = v7 & ((v10 >> 31) ^ v10);
    v12 = v3 + 48 * v11;
    v13 = *v12;
    if (*v12 != a2)
    {
      v14 = 1;
      while (v13)
      {
        v11 = (v11 + v14) & v7;
        v12 = v3 + 48 * v11;
        v13 = *v12;
        ++v14;
        if (*v12 == a2)
        {
          goto LABEL_10;
        }
      }

      v12 = v3 + 48 * *(v3 - 4);
    }

LABEL_10:
    v15 = *(v3 - 4);
    if (v3 + 48 * v15 != v12)
    {
      v16 = *(v12 + 8);
      v17 = *(v12 + 16);
      v18 = *(v12 + 24);
      v19 = *(v12 + 32);
      v20 = *(v12 + 40);
      *v12 = -1;
      *(v12 + 40) = 0;
      v21 = vadd_s32(*(v3 - 16), 0xFFFFFFFF00000001);
      *(v3 - 16) = v21;
      if (v15 >= 9 && 6 * v21.i32[1] < v15)
      {
        WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::NetworkProcess::TaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::NetworkProcess::TaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::NetworkProcess::DeleteWebsiteDataTask>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::NetworkProcess::TaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::NetworkProcess::DeleteWebsiteDataTask>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::NetworkProcess::TaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::NetworkProcess::TaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::NetworkProcess::DeleteWebsiteDataTask,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::NetworkProcess::TaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::NetworkProcess::TaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WebKit::NetworkProcess::DeleteWebsiteDataTask>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::NetworkProcess::TaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash(a1 + 51, v15 >> 1);
      }

      if (v17)
      {
        v22 = qword_1ED641350;
        if (os_log_type_enabled(qword_1ED641350, OS_LOG_TYPE_DEFAULT))
        {
          v23 = "timer is fired";
          if (a3)
          {
            v23 = "connections are closed";
          }

          *buf = 134218242;
          *&buf[4] = a2;
          v66 = 2082;
          v67 = v23;
          _os_log_impl(&dword_19D52D000, v22, OS_LOG_TYPE_DEFAULT, "NetworkProcess::performDeleteWebsiteDataTask started task (%llu) because %{public}s", buf, 0x16u);
        }

        v24 = WTF::fastMalloc(0x10);
        *v24 = &unk_1F1101798;
        v24[1] = v20;
        v25 = WTF::fastMalloc(0x10);
        *v25 = 1;
        *(v25 + 8) = v24;
        v26 = qword_1ED641350;
        if (os_log_type_enabled(qword_1ED641350, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134218240;
          *&buf[4] = v19;
          v66 = 2048;
          v67 = v16;
          _os_log_impl(&dword_19D52D000, v26, OS_LOG_TYPE_DEFAULT, "NetworkProcess::deleteWebsiteDataImpl starts deleting data modified since %f for session %llu", buf, 0x16u);
        }

        *buf = v16;
        v27 = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>(a1 + 30, buf);
        v29 = v27;
        if (v27)
        {
          ++v27[4];
        }

        if ((v18 & 0x200) != 0)
        {
          WebKit::NetworkProcess::clearHSTSCache(a1, v16);
        }

        if (v18)
        {
          *buf = v16;
          v27 = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebCore::NetworkStorageSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebCore::NetworkStorageSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>(a1 + 31, buf);
          if (v27)
          {
            v30 = v27;
            ++v27[2];
            atomic_fetch_add(v25, 1u);
            v31 = WTF::fastMalloc(0x10);
            *v31 = &unk_1F11017C0;
            v31[1] = v25;
            *buf = v31;
            WebCore::NetworkStorageSession::deleteAllCookiesModifiedSince();
            v27 = *buf;
            *buf = 0;
            if (v27)
            {
              v27 = (*(*v27 + 8))(v27);
            }

            v32 = v30[2];
            if (!v32)
            {
              __break(0xC471u);
              JUMPOUT(0x19DC6ED78);
            }

            v30[2] = v32 - 1;
          }
        }

        if ((v18 & 0x2000) == 0)
        {
          if ((v18 & 0xC000) == 0 || v16 < -1)
          {
            goto LABEL_50;
          }

          if (!v29)
          {
LABEL_68:
            v49 = 0;
            if ((v18 & 4) == 0)
            {
              goto LABEL_70;
            }

            goto LABEL_69;
          }

          goto LABEL_46;
        }

        *buf = v16;
        v27 = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebCore::NetworkStorageSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebCore::NetworkStorageSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>(a1 + 31, buf);
        if (!v27)
        {
LABEL_43:
          if (!v29)
          {
            goto LABEL_68;
          }

          v27 = (*(*v29 + 136))(v29, v19);
          if ((v18 & 0xC000) == 0 || v16 < -1)
          {
LABEL_50:
            if ((v18 & 0x1000) != 0)
            {
              if (!v29)
              {
                goto LABEL_68;
              }

              v41 = *(v29 + 9);
              if (!v41)
              {
                goto LABEL_61;
              }

              while (1)
              {
                v42 = *v41;
                if ((*v41 & 1) == 0)
                {
                  break;
                }

                v43 = *v41;
                atomic_compare_exchange_strong_explicit(v41, &v43, v42 + 2, memory_order_relaxed, memory_order_relaxed);
                if (v43 == v42)
                {
                  goto LABEL_55;
                }
              }

              WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v41);
LABEL_55:
              {
                v44 = WebKit::WebResourceLoadStatisticsStore::monitoredDataTypes(void)::dataTypes;
              }

              else
              {
                v44 = 2672057;
                WebKit::WebResourceLoadStatisticsStore::monitoredDataTypes(void)::dataTypes = 2672057;
              }

              v45 = (v44 & ~v18) != 0;
              atomic_fetch_add(v25, 1u);
              v46 = WTF::fastMalloc(0x10);
              *v46 = &unk_1F1101838;
              v46[1] = v25;
              *buf = v46;
              WebKit::WebResourceLoadStatisticsStore::scheduleClearInMemoryAndPersistent(v41, v45, buf);
              if (*buf)
              {
                (*(**buf + 8))(*buf);
              }

              v27 = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::WebResourceLoadStatisticsStore,(WTF::DestructionThread)1>::deref(v41);
            }

            if (!v29)
            {
              goto LABEL_68;
            }

LABEL_61:
            buf[0] = 0;
            buf[8] = 0;
            atomic_fetch_add(v25, 1u);
            v47 = WTF::fastMalloc(0x10);
            *v47 = &unk_1F1101860;
            v47[1] = v25;
            v64 = v47;
            (*(*v29 + 224))(v29, COERCE_DOUBLE(*&v19), 1, buf, &v64);
            v27 = v64;
            v64 = 0;
            if (v27)
            {
              v27 = (*(*v27 + 8))(v27);
            }

            if (buf[8] == 1)
            {
              v27 = *buf;
              if (*buf)
              {
                v27 = WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(*buf, v48);
              }
            }

            v49 = 1;
            if ((v18 & 4) == 0)
            {
LABEL_70:
              if ((v18 & 2) != 0)
              {
                if (!v49)
                {
                  goto LABEL_98;
                }

                v51 = *(v29 + 78);
                if (v51)
                {
                  ++*(v51 + 8);
                  atomic_fetch_add(v25, 1u);
                  v52 = WTF::fastMalloc(0x10);
                  *v52 = &unk_1F1101888;
                  v52[1] = v25;
                  *buf = v52;
                  WebKit::NetworkCache::Cache::clear(v51, buf, v19);
                  if (*buf)
                  {
                    (*(**buf + 8))(*buf);
                  }

                  WTF::RefCounted<WebKit::NetworkCache::Cache>::deref((v51 + 8), v53);
                }
              }

              v54 = v49 ^ 1;
              if ((v18 & 0x20000) == 0)
              {
                v54 = 1;
              }

              if (v54)
              {
                if ((v18 & 0x40000) == 0)
                {
                  goto LABEL_86;
                }

                if (!v49)
                {
                  goto LABEL_98;
                }
              }

              else
              {
                atomic_fetch_add(v25, 1u);
                v55 = WTF::fastMalloc(0x10);
                *v55 = &unk_1F11018B0;
                v55[1] = v25;
                *buf = v55;
                WebKit::NetworkSession::clearPrivateClickMeasurement(v29);
                v56 = *buf;
                *buf = 0;
                if (v56)
                {
                  (*(*v56 + 8))(v56);
                }

                if ((v18 & 0x40000) == 0)
                {
LABEL_86:
                  v57 = v49 ^ 1;
                  if ((v18 & 2) == 0)
                  {
                    v57 = 1;
                  }

                  if (v57)
                  {
                    if ((*&v18 & 0x8C0B0) != 0)
                    {
                      v62 = v49;
                    }

                    else
                    {
                      v62 = 0;
                    }

                    if (v62)
                    {
LABEL_92:
                      v60 = *(v29 + 131);
                      atomic_fetch_add(v25, 1u);
                      v61 = WTF::fastMalloc(0x10);
                      *v61 = &unk_1F1101900;
                      v61[1] = v25;
                      *buf = v61;
                      WebKit::NetworkStorageManager::deleteDataModifiedSince(v60, v18, buf, v19);
                      if (*buf)
                      {
                        (*(**buf + 8))(*buf);
                      }

                      goto LABEL_99;
                    }
                  }

                  else
                  {
                    atomic_fetch_add(v25, 1u);
                    v58 = WTF::fastMalloc(0x10);
                    *v58 = &unk_1F11018D8;
                    v58[1] = v25;
                    *buf = v58;
                    WebKit::NetworkSession::clearResourceMonitorThrottlerData(v29);
                    v59 = *buf;
                    *buf = 0;
                    if (v59)
                    {
                      (*(*v59 + 8))(v59);
                    }

                    if ((*&v18 & 0x8C0B0) != 0)
                    {
                      goto LABEL_92;
                    }
                  }

LABEL_98:
                  if (!v29)
                  {
LABEL_101:
                    WTF::ThreadSafeRefCounted<WTF::CallbackAggregatorOnThread<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref(v25);
                    return;
                  }

LABEL_99:
                  v63 = *(v29 + 4);
                  if (!v63)
                  {
                    __break(0xC471u);
                    JUMPOUT(0x19DC6ED58);
                  }

                  *(v29 + 4) = v63 - 1;
                  goto LABEL_101;
                }
              }

              (*(*v29 + 112))(v29, v19);
              goto LABEL_86;
            }

LABEL_69:
            v50 = WebCore::CrossOriginPreflightResultCache::singleton(v27);
            WebCore::CrossOriginPreflightResultCache::clear(v50);
            goto LABEL_70;
          }

LABEL_46:
          v36 = (WebKit::NetworkSession::ensureSWServer(v29, v28) + 8);
          ++*v36;
          atomic_fetch_add(v25, 1u);
          v37 = WTF::fastMalloc(0x10);
          *v37 = &unk_1F11017E8;
          v37[1] = v25;
          *buf = v37;
          WebCore::SWServer::clearAll();
          v38 = *buf;
          *buf = 0;
          if (v38)
          {
            (*(*v38 + 8))(v38);
          }

          WTF::RefCounted<WebCore::SWServer>::deref(v36);
          v39 = *(v29 + 135);
          atomic_fetch_add(v25, 1u);
          v40 = WTF::fastMalloc(0x10);
          *v40 = &unk_1F1101810;
          v40[1] = v25;
          *buf = v40;
          WebKit::NetworkNotificationManager::removeAllPushSubscriptions(v39, buf);
          v27 = *buf;
          *buf = 0;
          if (v27)
          {
            v27 = (*(*v27 + 8))(v27);
          }

          goto LABEL_50;
        }

        v34 = v27;
        ++v27[2];
        v27 = WebCore::CredentialStorage::clearCredentials((v27 + 28));
        v35 = v34[2];
        if (v35)
        {
          v34[2] = v35 - 1;
          goto LABEL_43;
        }

        __break(0xC471u);
LABEL_110:
        JUMPOUT(0x19DC6ED18);
      }

      if (v20)
      {
        v33 = *(*v20 + 8);

        v33(v20);
      }
    }
  }
}

atomic_uint *WebKit::NetworkProcess::deleteWebsiteData(uint64_t a1, uint64_t a2, int a3, uint64_t *a4, uint64_t *a5, double a6)
{
  v105 = *MEMORY[0x1E69E9840];
  IdentifierInternal = WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>::generateIdentifierInternal();
  v12 = *a5;
  *a5 = 0;
  if (IdentifierInternal == -1)
  {
    __break(0xC471u);
    JUMPOUT(0x19DC6F6E0);
  }

  v13 = IdentifierInternal;
  if (!IdentifierInternal)
  {
    __break(0xC471u);
    JUMPOUT(0x19DC6F700);
  }

  v14 = *(a1 + 408);
  if (!v14)
  {
    WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::NetworkProcess::TaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::NetworkProcess::TaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::NetworkProcess::DeleteWebsiteDataTask>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::NetworkProcess::TaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::NetworkProcess::DeleteWebsiteDataTask>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::NetworkProcess::TaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::NetworkProcess::TaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::NetworkProcess::DeleteWebsiteDataTask,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::NetworkProcess::TaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::NetworkProcess::TaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WebKit::NetworkProcess::DeleteWebsiteDataTask>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::NetworkProcess::TaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand((a1 + 408));
    v14 = *(a1 + 408);
  }

  v15 = *(v14 - 8);
  v16 = (v13 + ~(v13 << 32)) ^ ((v13 + ~(v13 << 32)) >> 22);
  v17 = 9 * ((v16 + ~(v16 << 13)) ^ ((v16 + ~(v16 << 13)) >> 8));
  v18 = (v17 ^ (v17 >> 15)) + ~((v17 ^ (v17 >> 15)) << 27);
  v19 = v15 & ((v18 >> 31) ^ v18);
  v20 = (v14 + 48 * v19);
  v21 = *v20;
  if (*v20)
  {
    v22 = 0;
    v23 = 1;
    while (v21 != v13)
    {
      if (v21 == -1)
      {
        v22 = v20;
      }

      v19 = (v19 + v23) & v15;
      v20 = (v14 + 48 * v19);
      v21 = *v20;
      ++v23;
      if (!*v20)
      {
        if (v22)
        {
          v22[1] = 0u;
          v22[2] = 0u;
          *v22 = 0u;
          --*(*(a1 + 408) - 16);
          v20 = v22;
        }

        goto LABEL_13;
      }
    }

    if (v12)
    {
      (*(*v12 + 8))(v12);
    }

    goto LABEL_23;
  }

LABEL_13:
  *v20 = v13;
  *(v20 + 1) = a2;
  *(v20 + 16) = 1;
  *(v20 + 6) = a3;
  *(v20 + 4) = a6;
  v24 = *(v20 + 5);
  *(v20 + 5) = v12;
  if (v24)
  {
    (*(*v24 + 8))(v24);
  }

  v25 = *(a1 + 408);
  if (v25)
  {
    v26 = *(v25 - 12) + 1;
  }

  else
  {
    v26 = 1;
  }

  *(v25 - 12) = v26;
  v27 = (*(v25 - 16) + v26);
  v28 = *(v25 - 4);
  if (v28 > 0x400)
  {
    if (v28 > 2 * v27)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

  if (3 * v28 <= 4 * v27)
  {
LABEL_22:
    WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::NetworkProcess::TaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::NetworkProcess::TaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::NetworkProcess::DeleteWebsiteDataTask>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::NetworkProcess::TaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::NetworkProcess::DeleteWebsiteDataTask>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::NetworkProcess::TaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::NetworkProcess::TaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::NetworkProcess::DeleteWebsiteDataTask,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::NetworkProcess::TaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::NetworkProcess::TaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WebKit::NetworkProcess::DeleteWebsiteDataTask>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::NetworkProcess::TaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand((a1 + 408));
  }

LABEL_23:
  v29 = qword_1ED641350;
  if (os_log_type_enabled(qword_1ED641350, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218496;
    *&buf[4] = v13;
    *&buf[12] = 2048;
    *&buf[14] = a6;
    v103 = 2048;
    v104 = a2;
    _os_log_impl(&dword_19D52D000, v29, OS_LOG_TYPE_DEFAULT, "NetworkProcess::deleteWebsiteData scheduled task (%llu) to delete data modified since %f for session %llu", buf, 0x20u);
  }

  WTF::WeakPtrFactory<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl>::initializeIfNeeded((a1 + 8), a1);
  v100 = a1;
  v30 = *(a1 + 8);
  atomic_fetch_add(v30, 1u);
  v31 = WTF::fastMalloc(0x18);
  *v31 = &unk_1F11016F8;
  v31[1] = v30;
  v32 = v100;
  v31[2] = v13;
  v33 = WTF::fastMalloc(0x10);
  *v33 = 1;
  v99 = v33;
  *(v33 + 8) = v31;
  v34 = WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::begin((v100 + 152));
  v35 = v34;
  v37 = v36;
  v38 = *(v100 + 152);
  if (v38)
  {
    v39 = (v38 + 16 * *(v38 - 4));
  }

  else
  {
    v39 = 0;
  }

  v40 = a4;
  if (v39 == v34)
  {
    if ((a3 & 0x4000) == 0)
    {
      return WTF::ThreadSafeRefCounted<WTF::CallbackAggregatorOnThread<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref(v99);
    }

    *buf = a2;
    v34 = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((v100 + 240), buf);
    if (!v34)
    {
      return WTF::ThreadSafeRefCounted<WTF::CallbackAggregatorOnThread<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref(v99);
    }

    v86 = v34;
    v87 = 0;
    goto LABEL_98;
  }

  v97 = 0;
  do
  {
    v41 = *(v35 + 1);
    if (*(v41 + 96) == a2)
    {
      v42 = *v40;
      if (!*v40)
      {
        goto LABEL_38;
      }

      v43 = *v35;
      if (*v35 == -1)
      {
        goto LABEL_119;
      }

      if (!v43)
      {
        __break(0xC471u);
        JUMPOUT(0x19DC6F680);
      }

      v44 = *(v42 - 8);
      v45 = (v43 + ~(v43 << 32)) ^ ((v43 + ~(v43 << 32)) >> 22);
      v46 = 9 * ((v45 + ~(v45 << 13)) ^ ((v45 + ~(v45 << 13)) >> 8));
      v47 = (v46 ^ (v46 >> 15)) + ~((v46 ^ (v46 >> 15)) << 27);
      v48 = v44 & ((v47 >> 31) ^ v47);
      v49 = *(v42 + 8 * v48);
      if (v49 != v43)
      {
        v50 = 1;
        while (v49)
        {
          v48 = (v48 + v50) & v44;
          v49 = *(v42 + 8 * v48);
          ++v50;
          if (v49 == v43)
          {
            goto LABEL_45;
          }
        }

LABEL_38:
        v51 = *(v41 + 80);
        while (1)
        {
          v52 = *v51;
          if ((*v51 & 1) == 0)
          {
            break;
          }

          v53 = *v51;
          atomic_compare_exchange_strong_explicit(v51, &v53, v52 + 2, memory_order_relaxed, memory_order_relaxed);
          if (v53 == v52)
          {
            goto LABEL_43;
          }
        }

        WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v51);
LABEL_43:
        v54 = v51[43];
        if (!v54 || (pid = xpc_connection_get_pid(v54)) == 0)
        {
LABEL_44:
          v34 = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v51);
          goto LABEL_45;
        }

        v56 = pid;
        v57 = qword_1ED641350;
        if (os_log_type_enabled(qword_1ED641350, OS_LOG_TYPE_DEFAULT))
        {
          v60 = *v35;
          *buf = 134218496;
          *&buf[4] = v13;
          *&buf[12] = 2048;
          *&buf[14] = v60;
          v103 = 1024;
          LODWORD(v104) = v56;
          _os_log_impl(&dword_19D52D000, v57, OS_LOG_TYPE_DEFAULT, "NetworkProcess::deleteWebsiteData task (%llu) will start after process %llu (pid=%d) exits", buf, 0x1Cu);
        }

        v61 = *v35;
        if (*v35 == -1)
        {
          __break(0xC471u);
          JUMPOUT(0x19DC6F6A0);
        }

        if (!v61)
        {
          __break(0xC471u);
          JUMPOUT(0x19DC6F6C0);
        }

        v62 = *(v32 + 160);
        if (!v62)
        {
          WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Vector<WTF::CompletionHandler<void ()(void)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Vector<WTF::CompletionHandler<void ()(void)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Vector<WTF::CompletionHandler<void ()(void)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Vector<WTF::CompletionHandler<void ()(void)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand((v32 + 160), 0);
          v62 = *(v32 + 160);
          v61 = *v35;
        }

        v63 = *(v62 - 8);
        v64 = (v61 + ~(v61 << 32)) ^ ((v61 + ~(v61 << 32)) >> 22);
        v65 = 9 * ((v64 + ~(v64 << 13)) ^ ((v64 + ~(v64 << 13)) >> 8));
        v66 = (v65 ^ (v65 >> 15)) + ~((v65 ^ (v65 >> 15)) << 27);
        v67 = v63 & ((v66 >> 31) ^ v66);
        v68 = (v62 + 24 * v67);
        v69 = *v68;
        if (*v68)
        {
          v70 = 0;
          v71 = 1;
          while (v69 != v61)
          {
            if (v69 == -1)
            {
              v70 = v68;
            }

            v67 = (v67 + v71) & v63;
            v68 = (v62 + 24 * v67);
            v69 = *v68;
            ++v71;
            if (!*v68)
            {
              if (v70)
              {
                *v70 = 0;
                v70[1] = 0;
                v70[2] = 0;
                --*(*(v32 + 160) - 16);
                v61 = *v35;
                v68 = v70;
              }

              goto LABEL_64;
            }
          }

          goto LABEL_78;
        }

LABEL_64:
        *v68 = v61;
        v72 = *(v68 + 5);
        v73 = v68[1];
        if (v72)
        {
          v74 = 8 * v72;
          do
          {
            v75 = *v73;
            *v73 = 0;
            if (v75)
            {
              (*(*v75 + 8))(v75);
            }

            v73 = (v73 + 8);
            v74 -= 8;
          }

          while (v74);
          v73 = v68[1];
          v32 = v100;
        }

        if (v73)
        {
          v68[1] = 0;
          *(v68 + 4) = 0;
          WTF::fastFree(v73, v58);
        }

        *&v59 = 0;
        *buf = v59;
        v68[1] = 0;
        v68[2] = 0;
        WTF::Vector<WTF::CompletionHandler<void ()(void)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(buf, v58);
        v76 = *(v32 + 160);
        if (v76)
        {
          v77 = *(v76 - 12) + 1;
        }

        else
        {
          v77 = 1;
        }

        *(v76 - 12) = v77;
        v78 = (*(v76 - 16) + v77);
        v79 = *(v76 - 4);
        if (v79 > 0x400)
        {
          if (v79 > 2 * v78)
          {
            goto LABEL_78;
          }
        }

        else if (3 * v79 > 4 * v78)
        {
LABEL_78:
          atomic_fetch_add(v99, 1u);
          v80 = *(v68 + 5);
          if (v80 == *(v68 + 4))
          {
            if (v80 + (v80 >> 1) <= v80 + 1)
            {
              v81 = v80 + 1;
            }

            else
            {
              v81 = v80 + (v80 >> 1);
            }

            if (v81 <= 0x10)
            {
              v82 = 16;
            }

            else
            {
              v82 = v81;
            }

            WTF::Vector<WTF::CompletionHandler<void ()(void)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>((v68 + 1), v82);
            v80 = *(v68 + 5);
            v83 = v68[1];
          }

          else
          {
            v83 = v68[1];
          }

          v84 = (v83 + 8 * v80);
          v85 = WTF::fastMalloc(0x10);
          *v85 = &unk_1F1101720;
          v85[1] = v99;
          *v84 = v85;
          ++*(v68 + 5);
          v97 = 1;
          v40 = a4;
          goto LABEL_44;
        }

        v68 = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Vector<WTF::CompletionHandler<void ()(void)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Vector<WTF::CompletionHandler<void ()(void)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Vector<WTF::CompletionHandler<void ()(void)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Vector<WTF::CompletionHandler<void ()(void)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand((v32 + 160), v68);
        goto LABEL_78;
      }
    }

    do
    {
LABEL_45:
      v35 = (v35 + 16);
    }

    while (v35 != v37 && (*v35 + 1) <= 1);
  }

  while (v35 != v39);
  if ((a3 & 0x4000) != 0)
  {
    *buf = a2;
    v34 = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((v32 + 240), buf);
    v87 = v97;
    if (!v34)
    {
      goto LABEL_104;
    }

    v86 = v34;
LABEL_98:
    v88 = *(v86 + 4) + 1;
    *(v86 + 4) = v88;
    v89 = *(v86 + 97);
    if (v89)
    {
      v90 = (v89 + 8);
      ++*(v89 + 8);
      atomic_fetch_add(v99, 1u);
      v91 = WTF::fastMalloc(0x10);
      *v91 = &unk_1F1101748;
      v91[1] = v99;
      *buf = v91;
      HasControlledClients = WebCore::SWServer::addHandlerIfHasControlledClients();
      v93 = *buf;
      *buf = 0;
      if (v93)
      {
        (*(*v93 + 8))(v93);
      }

      v87 |= HasControlledClients;
      v34 = WTF::RefCounted<WebCore::SWServer>::deref(v90);
      v88 = *(v86 + 4);
    }

    v32 = v100;
    if (!v88)
    {
LABEL_119:
      __break(0xC471u);
      JUMPOUT(0x19DC6F660);
    }

    *(v86 + 4) = v88 - 1;
LABEL_104:
    if (v87)
    {
      goto LABEL_105;
    }

    return WTF::ThreadSafeRefCounted<WTF::CallbackAggregatorOnThread<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref(v99);
  }

  if ((v97 & 1) == 0)
  {
    return WTF::ThreadSafeRefCounted<WTF::CallbackAggregatorOnThread<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref(v99);
  }

LABEL_105:
  WTF::RunLoop::currentSingleton(v34);
  atomic_fetch_add((v32 + 144), 1u);
  v94 = WTF::fastMalloc(0x18);
  *v94 = &unk_1F1101770;
  v94[1] = v32;
  v94[2] = v13;
  *buf = v94;
  WTF::RunLoop::dispatchAfter();
  if (v101)
  {
    WTF::ThreadSafeRefCounted<WTF::RunLoop::DispatchTimer,(WTF::DestructionThread)0>::deref((v101 + 40));
  }

  v95 = *buf;
  *buf = 0;
  if (v95)
  {
    (*(*v95 + 8))(v95);
  }

  return WTF::ThreadSafeRefCounted<WTF::CallbackAggregatorOnThread<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref(v99);
}

atomic_uint *WebKit::NetworkProcess::deleteWebsiteDataForOrigin(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t *a5)
{
  v59 = *MEMORY[0x1E69E9840];
  v9 = *a5;
  *a5 = 0;
  v10 = WTF::fastMalloc(0x10);
  *v10 = &unk_1F1101928;
  v10[1] = v9;
  v11 = WTF::fastMalloc(0x10);
  *v11 = 1;
  *(v11 + 8) = v10;
  v12 = qword_1ED641350;
  if (os_log_type_enabled(qword_1ED641350, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    *&buf[4] = a2;
    _os_log_impl(&dword_19D52D000, v12, OS_LOG_TYPE_DEFAULT, "NetworkProcess::deleteWebsiteDataForOrigin started to delete data for session %llu", buf, 0xCu);
  }

  *buf = a2;
  v13 = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((a1 + 240), buf);
  v15 = v13;
  if (v13)
  {
    ++*(v13 + 16);
  }

  if (a3)
  {
    *buf = a2;
    v16 = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebCore::NetworkStorageSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebCore::NetworkStorageSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((a1 + 248), buf);
    if (v16)
    {
      v17 = v16;
      ++*(v16 + 8);
      atomic_fetch_add(v11, 1u);
      v18 = WTF::fastMalloc(0x10);
      *v18 = &unk_1F1101950;
      v18[1] = v11;
      *buf = v18;
      WebCore::NetworkStorageSession::deleteCookies();
      v19 = *buf;
      *buf = 0;
      if (v19)
      {
        (*(*v19 + 8))(v19);
      }

      v20 = *(v17 + 8);
      if (!v20)
      {
        __break(0xC471u);
        goto LABEL_64;
      }

      *(v17 + 8) = v20 - 1;
    }
  }

  if ((a3 & 2) != 0 && a2 >= -1)
  {
    if (!v15)
    {
      __break(0xC471u);
      JUMPOUT(0x19DC6FCF4);
    }

    v21 = *(v15 + 624);
    if (v21)
    {
      ++*(v21 + 8);
      v50 = 0;
      v51 = 0;
      v22 = WebCore::operator==();
      v47 = a2;
      if (v22)
      {
        v24 = *MEMORY[0x1E696EBA8];
        if (*MEMORY[0x1E696EBA8])
        {
          atomic_fetch_add_explicit(v24, 2u, memory_order_relaxed);
        }

        v49 = v24;
      }

      else
      {
        if (*(a4 + 24))
        {
          if (*(a4 + 24) != 1)
          {
            mpark::throw_bad_variant_access(v22);
          }

          v25 = MEMORY[0x1E696EBA8];
        }

        else
        {
          v25 = (a4 + 8);
        }

        WebCore::ResourceRequestBase::partitionName(&v49, v25, v23);
      }

      v26 = WebCore::operator==();
      ++*(v21 + 8);
      *buf = v21;
      atomic_fetch_add(v11, 1u);
      buf[16] = v26;
      LOBYTE(v53) = 0;
      v55 = -1;
      v27 = *(a4 + 56);
      if (*(a4 + 56))
      {
        if (v27 == 255)
        {
LABEL_29:
          v30 = v49;
          if (v49)
          {
            atomic_fetch_add_explicit(v49, 2u, memory_order_relaxed);
          }

          v31 = v50;
          v32 = v51;
          v50 = 0;
          v51 = 0;
          v33 = WTF::fastMalloc(0x58);
          *v33 = &unk_1F1101978;
          *(v33 + 8) = *buf;
          *(v33 + 16) = v11;
          *buf = 0uLL;
          *(v33 + 24) = v26;
          *(v33 + 32) = 0;
          *(v33 + 56) = -1;
          if (v27)
          {
            a2 = v47;
            if (v27 == 255)
            {
              goto LABEL_34;
            }

            *(v33 + 32) = v53;
          }

          else
          {
            *(v33 + 32) = v53;
            v34 = *(&v53 + 1);
            v53 = 0uLL;
            *(v33 + 40) = v34;
            *(v33 + 48) = v54;
            a2 = v47;
          }

          *(v33 + 56) = v27;
LABEL_34:
          *(v33 + 64) = v30;
          *(v33 + 72) = v31;
          v56 = 0;
          v57 = 0;
          v58 = 0;
          *(v33 + 80) = v32;
          v48 = v33;
          WebKit::NetworkCache::Cache::traverse(v21, &v49, &v48);
          if (v48)
          {
            (*(*v48 + 8))(v48);
          }

          WebKit::NetworkProcess::deleteWebsiteDataForOrigin(PAL::SessionID,WTF::OptionSet<WebKit::WebsiteDataType>,WebCore::ClientOrigin const&,WTF::CompletionHandler<void ()(void)> &&)::$_2::~$_2(buf, v35);
          v37 = v49;
          v49 = 0;
          if (v37 && atomic_fetch_add_explicit(v37, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v37, v36);
          }

          WTF::Vector<WebKit::NetworkCache::Key,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v50, v36);
          WTF::RefCounted<WebKit::NetworkCache::Cache>::deref((v21 + 8), v38);
          goto LABEL_40;
        }

        v53 = *(a4 + 32);
      }

      else
      {
        v28 = *(a4 + 32);
        if (v28)
        {
          atomic_fetch_add_explicit(v28, 2u, memory_order_relaxed);
        }

        *&v53 = v28;
        v29 = *(a4 + 40);
        if (v29)
        {
          atomic_fetch_add_explicit(v29, 2u, memory_order_relaxed);
        }

        *(&v53 + 1) = v29;
        v54 = *(a4 + 48);
        v27 = *(a4 + 56);
      }

      v55 = v27;
      goto LABEL_29;
    }
  }

LABEL_40:
  if ((*&a3 & 0x8C0B0) != 0)
  {
    if (v15)
    {
      v39 = *(v15 + 1048);
      atomic_fetch_add(v11, 1u);
      v40 = WTF::fastMalloc(0x10);
      *v40 = &unk_1F11019C8;
      v40[1] = v11;
      *buf = v40;
      WebKit::NetworkStorageManager::deleteData(v39, a3, a4, buf);
      v41 = *buf;
      *buf = 0;
      if (v41)
      {
        (*(*v41 + 8))(v41);
      }
    }
  }

  if ((a3 & 0xC000) != 0 && a2 >= -1)
  {
    if (v15)
    {
      v42 = (WebKit::NetworkSession::ensureSWServer(v15, v14) + 8);
      ++*v42;
      atomic_fetch_add(v11, 1u);
      v43 = WTF::fastMalloc(0x10);
      *v43 = &unk_1F11019F0;
      v43[1] = v11;
      *buf = v43;
      WebCore::SWServer::clear();
      v44 = *buf;
      *buf = 0;
      if (v44)
      {
        (*(*v44 + 8))(v44);
      }

      WTF::RefCounted<WebCore::SWServer>::deref(v42);
      goto LABEL_51;
    }
  }

  else if (v15)
  {
LABEL_51:
    v45 = *(v15 + 16);
    if (v45)
    {
      *(v15 + 16) = v45 - 1;
      return WTF::ThreadSafeRefCounted<WTF::CallbackAggregatorOnThread<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref(v11);
    }

    __break(0xC471u);
LABEL_64:
    JUMPOUT(0x19DC6FCD4);
  }

  return WTF::ThreadSafeRefCounted<WTF::CallbackAggregatorOnThread<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref(v11);
}

uint64_t *WebKit::NetworkProcess::deleteWebsiteDataForOrigin(PAL::SessionID,WTF::OptionSet<WebKit::WebsiteDataType>,WebCore::ClientOrigin const&,WTF::CompletionHandler<void ()(void)> &&)::$_2::~$_2(uint64_t *a1, WTF::StringImpl *a2)
{
  WTF::Vector<WebKit::NetworkCache::Key,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector((a1 + 8), a2);
  v4 = a1[7];
  a1[7] = 0;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, v3);
  }

  if (!*(a1 + 48))
  {
    v5 = a1[4];
    a1[4] = 0;
    if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v5, v3);
    }

    v6 = a1[3];
    a1[3] = 0;
    if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v6, v3);
    }
  }

  *(a1 + 48) = -1;
  v7 = a1[1];
  a1[1] = 0;
  if (v7)
  {
    WTF::ThreadSafeRefCounted<WTF::CallbackAggregatorOnThread<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref(v7);
  }

  v8 = *a1;
  *a1 = 0;
  if (v8)
  {
    WTF::RefCounted<WebKit::NetworkCache::Cache>::deref((v8 + 8), v3);
  }

  return a1;
}

atomic_uint *WebKit::NetworkProcess::deleteWebsiteDataForOrigins(uint64_t a1, __CFString *a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t *a8)
{
  v121 = *MEMORY[0x1E69E9840];
  v15 = *a8;
  *a8 = 0;
  v16 = WTF::fastMalloc(0x10);
  *v16 = &unk_1F1101A18;
  v16[1] = v15;
  v17 = WTF::fastMalloc(0x10);
  *v17 = 1;
  *(v17 + 8) = v16;
  v18 = qword_1ED641350;
  if (os_log_type_enabled(qword_1ED641350, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    *&buf[4] = a2;
    _os_log_impl(&dword_19D52D000, v18, OS_LOG_TYPE_DEFAULT, "NetworkProcess::deleteWebsiteDataForOrigins started to delete data for session %llu", buf, 0xCu);
  }

  *buf = a2;
  v19 = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((a1 + 240), buf);
  v22 = v19;
  if (v19)
  {
    ++*(v19 + 4);
  }

  if (a3)
  {
    *buf = a2;
    v19 = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebCore::NetworkStorageSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebCore::NetworkStorageSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((a1 + 248), buf);
    if (v19)
    {
      v23 = v19;
      ++*(v19 + 2);
      atomic_fetch_add(v17, 1u);
      v24 = WTF::fastMalloc(0x10);
      *v24 = &unk_1F1101A40;
      v24[1] = v17;
      *buf = v24;
      WebCore::NetworkStorageSession::deleteCookiesForHostnames();
      v19 = *buf;
      *buf = 0;
      if (v19)
      {
        v19 = (*(*v19 + 8))(v19);
      }

      v25 = *(v23 + 2);
      if (!v25)
      {
        __break(0xC471u);
        JUMPOUT(0x19DC70960);
      }

      *(v23 + 2) = v25 - 1;
    }
  }

  if ((a3 & 0x200) != 0)
  {
    WebKit::NetworkProcess::deleteHSTSCacheForHostNames(a1, a2, a6);
  }

  v114 = a3;
  v111 = a5;
  v112 = a6;
  if ((a3 & 0x40000) != 0)
  {
    if (!v22)
    {
      v36 = 0;
      goto LABEL_74;
    }

    memset(buf, 0, sizeof(buf));
    v26 = *(a4 + 12);
    if (v26)
    {
      if (v26 >> 29)
      {
        __break(0xC471u);
        goto LABEL_159;
      }

      v27 = WTF::fastMalloc((8 * v26));
      *&buf[8] = v26;
      *buf = v27;
      v28 = *(a4 + 12);
      if (v28)
      {
        v29 = 0;
        v30 = 24;
        v31 = MEMORY[0x1E696EBA8];
        do
        {
          if (*(*a4 + v30))
          {
            v32 = v31;
            if (*(*a4 + v30) != 1)
            {
LABEL_127:
              mpark::throw_bad_variant_access(v27);
            }
          }

          else
          {
            v32 = (*a4 + v30 - 16);
          }

          v33 = *v32;
          if (v33)
          {
            atomic_fetch_add_explicit(v33, 2u, memory_order_relaxed);
            v28 = *(a4 + 12);
          }

          v34 = v29 + 1;
          *(v27 + v29) = v33;
          v30 += 32;
          v29 = v34;
        }

        while (v34 < v28);
        *&buf[12] = v34;
      }
    }

    (*(*v22 + 104))(v22, buf);
    v19 = WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(buf, v35);
  }

  v113 = a1;
  v36 = v22 != 0;
  if ((a3 & 0x20000) != 0)
  {
    if (v22)
    {
      v37 = *(a4 + 12);
      if (v37)
      {
        v38 = 32 * v37;
        v39 = (*a4 + 24);
        v40 = MEMORY[0x1E696EBA8];
        do
        {
          if (*v39)
          {
            v27 = v40;
            if (*v39 != 1)
            {
              goto LABEL_127;
            }
          }

          else
          {
            v27 = (v39 - 16);
          }

          WebCore::RegistrableDomain::uncheckedCreateFromHost(v27, buf);
          atomic_fetch_add(v17, 1u);
          v41 = WTF::fastMalloc(0x10);
          *v41 = &unk_1F1101A68;
          *(v41 + 8) = v17;
          v117 = v41;
          (*(**(v22 + 20) + 40))(*(v22 + 20), buf, &v117);
          v42 = v117;
          v117 = 0;
          if (v42)
          {
            (*(*v42 + 1))(v42);
          }

          v19 = *buf;
          *buf = 0;
          if (v19 && atomic_fetch_add_explicit(v19, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            v19 = WTF::StringImpl::destroy(v19, v20);
          }

          v39 += 32;
          v38 -= 32;
        }

        while (v38);
      }
    }
  }

  if ((a3 & 0xC000) == 0)
  {
    goto LABEL_71;
  }

  if (a2 >= -1)
  {
    a1 = v113;
    if (v22)
    {
      v110 = (WebKit::NetworkSession::ensureSWServer(v22, v20) + 8);
      ++*v110;
      v43 = *(a4 + 12);
      if (v43)
      {
        v44 = 32 * v43;
        v45 = *a4;
        do
        {
          atomic_fetch_add(v17, 1u);
          v46 = WTF::fastMalloc(0x10);
          *v46 = &unk_1F1101A90;
          v46[1] = v17;
          *buf = v46;
          WebCore::SWServer::clear();
          v47 = *buf;
          *buf = 0;
          if (v47)
          {
            (*(*v47 + 8))(v47);
          }

          v48 = *(v22 + 135);
          buf[0] = 0;
          v120 = -1;
          LODWORD(v49) = *(v45 + 24);
          if (*(v45 + 24))
          {
            if (v49 == 255)
            {
              goto LABEL_57;
            }

            *buf = *v45;
          }

          else
          {
            v50 = *v45;
            if (*v45)
            {
              atomic_fetch_add_explicit(v50, 2u, memory_order_relaxed);
            }

            *buf = v50;
            v49 = *(v45 + 8);
            if (v49)
            {
              atomic_fetch_add_explicit(v49, 2u, memory_order_relaxed);
            }

            *&buf[8] = v49;
            v119 = *(v45 + 16);
            LOBYTE(v49) = *(v45 + 24);
          }

          v120 = v49;
LABEL_57:
          atomic_fetch_add(v17, 1u);
          v51 = WTF::fastMalloc(0x10);
          *v51 = &unk_1F1101AB8;
          *(v51 + 8) = v17;
          v117 = v51;
          WebKit::NetworkNotificationManager::removePushSubscriptionsForOrigin(v48, buf, &v117);
          v53 = v117;
          v117 = 0;
          if (v53)
          {
            (*(*v53 + 1))(v53);
          }

          if (!v120)
          {
            v54 = *&buf[8];
            *&buf[8] = 0;
            if (v54 && atomic_fetch_add_explicit(v54, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v54, v52);
            }

            v55 = *buf;
            *buf = 0;
            if (v55 && atomic_fetch_add_explicit(v55, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v55, v52);
            }
          }

          v45 += 32;
          v44 -= 32;
        }

        while (v44);
      }

      v19 = WTF::RefCounted<WebCore::SWServer>::deref(v110);
      v36 = 1;
      LOWORD(a3) = v114;
LABEL_71:
      a1 = v113;
      if ((a3 & 4) == 0)
      {
        goto LABEL_76;
      }

LABEL_75:
      v56 = WebCore::CrossOriginPreflightResultCache::singleton(v19);
      WebCore::CrossOriginPreflightResultCache::clear(v56);
      goto LABEL_76;
    }

LABEL_74:
    if ((a3 & 4) == 0)
    {
      goto LABEL_76;
    }

    goto LABEL_75;
  }

  a1 = v113;
  if ((a3 & 4) != 0)
  {
    goto LABEL_75;
  }

LABEL_76:
  v57 = !v36;
  if ((a3 & 2) == 0)
  {
    v57 = 1;
  }

  if ((v57 & 1) == 0)
  {
    v58 = *(v22 + 78);
    if (v58)
    {
      ++*(v58 + 8);
      atomic_fetch_add(v17, 1u);
      v59 = WTF::fastMalloc(0x10);
      *v59 = &unk_1F1101AE0;
      v59[1] = v17;
      *buf = v59;
      WebKit::NetworkCache::Cache::deleteData(v58, a4, buf);
      v61 = *buf;
      *buf = 0;
      if (v61)
      {
        (*(*v61 + 8))(v61);
      }

      WTF::RefCounted<WebKit::NetworkCache::Cache>::deref((v58 + 8), v60);
    }
  }

  if ((a3 & 0x2000) != 0)
  {
    *buf = a2;
    v62 = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebCore::NetworkStorageSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebCore::NetworkStorageSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((a1 + 248), buf);
    if (v62)
    {
      v63 = v62;
      v64 = *(v62 + 8) + 1;
      *(v62 + 8) = v64;
      v65 = *(a4 + 12);
      if (v65)
      {
        v66 = *a4;
        v67 = 32 * v65;
        do
        {
          WebCore::CredentialStorage::removeCredentialsWithOrigin((v63 + 112), v66);
          v66 = (v66 + 32);
          v67 -= 32;
        }

        while (v67);
        v64 = *(v63 + 8);
      }

      if (!v64)
      {
        __break(0xC471u);
        JUMPOUT(0x19DC70980);
      }

      *(v63 + 8) = v64 - 1;
    }

    if (!v22)
    {
      return WTF::ThreadSafeRefCounted<WTF::CallbackAggregatorOnThread<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref(v17);
    }

    (*(*v22 + 128))(v22, a4);
  }

  v68 = !v36;
  if ((a3 & 0x1000) == 0)
  {
    v68 = 1;
  }

  if ((v68 & 1) == 0)
  {
    v69 = *(a7 + 12);
    if (v69)
    {
      v70 = *a7;
      v71 = *a7 + 8 * v69;
      do
      {
        v72 = *(v22 + 9);
        if (v72)
        {
          while (1)
          {
            v73 = *v72;
            if ((*v72 & 1) == 0)
            {
              break;
            }

            v74 = *v72;
            atomic_compare_exchange_strong_explicit(v72, &v74, v73 + 2, memory_order_relaxed, memory_order_relaxed);
            if (v74 == v73)
            {
              goto LABEL_101;
            }
          }

          WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v72);
LABEL_101:
          v75 = *v70;
          if (*v70)
          {
            atomic_fetch_add_explicit(v75, 2u, memory_order_relaxed);
          }

          v116 = v75;
          atomic_fetch_add(v17, 1u);
          v76 = WTF::fastMalloc(0x10);
          *v76 = &unk_1F1101B08;
          v76[1] = v17;
          *buf = v76;
          WebKit::WebResourceLoadStatisticsStore::removeDataForDomain(v72, &v116, buf);
          if (*buf)
          {
            (*(**buf + 8))(*buf);
          }

          v78 = v116;
          v116 = 0;
          if (v78 && atomic_fetch_add_explicit(v78, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v78, v77);
          }

          WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::WebResourceLoadStatisticsStore,(WTF::DestructionThread)1>::deref(v72);
        }

        ++v70;
      }

      while (v70 != v71);
    }
  }

  if ((*&v114 & 0x8C0B0) != 0)
  {
    if (v22)
    {
      v79 = *(v22 + 131);
      atomic_fetch_add(v17, 1u);
      v80 = WTF::fastMalloc(0x10);
      *v80 = &unk_1F1101B30;
      v80[1] = v17;
      *buf = v80;
      WebKit::NetworkStorageManager::deleteData(v79, v114, a4, buf);
      v81 = *buf;
      *buf = 0;
      if (v81)
      {
        (*(*v81 + 8))(v81);
      }

      goto LABEL_117;
    }
  }

  else if (v22)
  {
LABEL_117:
    v117 = 0;
    v82 = *(a4 + 12);
    if (v82)
    {
      v83 = 32 * v82;
      v84 = (*a4 + 24);
      v85 = MEMORY[0x1E696EBA8];
      do
      {
        if (*v84)
        {
          v27 = v85;
          if (*v84 != 1)
          {
            goto LABEL_127;
          }
        }

        else
        {
          v27 = (v84 - 16);
        }

        WebCore::RegistrableDomain::uncheckedCreateFromHost(v27, &v115);
        WTF::HashTable<WebCore::RegistrableDomain,WebCore::RegistrableDomain,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::add<(WTF::ShouldValidateKey)1>(&v117, &v115, v86, buf);
        v88 = v115;
        v115 = 0;
        if (v88 && atomic_fetch_add_explicit(v88, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v88, v87);
        }

        v84 += 32;
        v83 -= 32;
      }

      while (v83);
    }

    v89 = *(v111 + 12);
    if (v89)
    {
      v90 = *v111;
      v91 = 8 * v89;
      do
      {
        WebCore::RegistrableDomain::uncheckedCreateFromHost(v90, &v115);
        WTF::HashTable<WebCore::RegistrableDomain,WebCore::RegistrableDomain,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::add<(WTF::ShouldValidateKey)1>(&v117, &v115, v92, buf);
        v94 = v115;
        v115 = 0;
        if (v94 && atomic_fetch_add_explicit(v94, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v94, v93);
        }

        v90 = (v90 + 8);
        v91 -= 8;
      }

      while (v91);
    }

    v95 = *(v112 + 12);
    if (v95)
    {
      v96 = *v112;
      v97 = 8 * v95;
      do
      {
        WebCore::RegistrableDomain::uncheckedCreateFromHost(v96, &v115);
        WTF::HashTable<WebCore::RegistrableDomain,WebCore::RegistrableDomain,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::add<(WTF::ShouldValidateKey)1>(&v117, &v115, v98, buf);
        v100 = v115;
        v115 = 0;
        if (v100 && atomic_fetch_add_explicit(v100, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v100, v99);
        }

        v96 = (v96 + 8);
        v97 -= 8;
      }

      while (v97);
    }

    v101 = *(a7 + 12);
    if (v101)
    {
      v102 = *a7;
      v103 = 8 * v101;
      do
      {
        WTF::HashTable<WebCore::RegistrableDomain,WebCore::RegistrableDomain,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::add<(WTF::ShouldValidateKey)1>(&v117, v102++, v21, buf);
        v103 -= 8;
      }

      while (v103);
    }

    v104 = v117;
    v117 = 0;
    *buf = v104;
    buf[8] = 1;
    atomic_fetch_add(v17, 1u);
    v105 = WTF::fastMalloc(0x10);
    *v105 = &unk_1F1101B58;
    *(v105 + 1) = v17;
    v115 = v105;
    (*(*v22 + 224))(v22, 0, 0, buf, &v115);
    v107 = v115;
    v115 = 0;
    if (v107)
    {
      (*(*v107 + 8))(v107);
    }

    if (buf[8] == 1 && *buf)
    {
      WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(*buf, v106);
    }

    if (v117)
    {
      WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v117, v106);
    }

    v108 = *(v22 + 4);
    if (v108)
    {
      *(v22 + 4) = v108 - 1;
      return WTF::ThreadSafeRefCounted<WTF::CallbackAggregatorOnThread<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref(v17);
    }

    __break(0xC471u);
LABEL_159:
    JUMPOUT(0x19DC70940);
  }

  return WTF::ThreadSafeRefCounted<WTF::CallbackAggregatorOnThread<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref(v17);
}

WTF::RunLoop *WebKit::NetworkProcess::deleteAndRestrictWebsiteDataForRegistrableDomains(uint64_t a1, __CFString *a2, int a3, unsigned int *a4, uint64_t *a5)
{
  v143 = *MEMORY[0x1E69E9840];
  v10 = qword_1ED641350;
  if (os_log_type_enabled(qword_1ED641350, OS_LOG_TYPE_DEFAULT))
  {
    v11 = a4[3];
    v12 = a4[7];
    v13 = a4[11];
    *buf = 134218752;
    *&buf[4] = a2;
    *&buf[12] = 2048;
    *&buf[14] = v11;
    *&buf[22] = 2048;
    v140 = v12;
    v141 = 2048;
    v142 = v13;
    _os_log_impl(&dword_19D52D000, v10, OS_LOG_TYPE_DEFAULT, "NetworkProcess::deleteAndRestrictWebsiteDataForRegistrableDomains started to delete and restrict data for session %llu with candidate domains - %zu domainsToDeleteAllCookiesFor, %zu domainsToDeleteAllButHttpOnlyCookiesFor, %zu domainsToDeleteAllScriptWrittenStorageFor", buf, 0x2Au);
  }

  *buf = a2;
  v14 = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((a1 + 240), buf);
  v15 = v14;
  if (v14)
  {
    ++*(v14 + 16);
  }

  v16 = WTF::fastMalloc(0x18);
  v17 = *a5;
  *a5 = 0;
  v18 = WTF::fastMalloc(0x10);
  *v18 = &unk_1F1101B80;
  v18[1] = v17;
  *v16 = 1;
  *(v16 + 8) = v18;
  *(v16 + 16) = 0;
  v137 = 0;
  v138 = v16;
  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(&v135, (a4 + 8));
  if (a3)
  {
    *buf = a2;
    v20 = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebCore::NetworkStorageSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebCore::NetworkStorageSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((a1 + 248), buf);
    if (v20)
    {
      v21 = v20;
      ++*(v20 + 8);
      v134 = 0;
      v131 = 0;
      v129 = 0;
      v130 = 0;
      v128 = 0;
      WebCore::NetworkStorageSession::getHostnamesWithCookies();
      WebKit::filterForRegistrableDomains(buf, a4, &v134);
      v132 = *buf;
      v22 = *&buf[8];
      *buf = 0;
      *&buf[8] = 0;
      v133 = v22;
      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(buf, v23);
      atomic_fetch_add(v16, 1u);
      v127 = v16;
      v24 = WTF::fastMalloc(0x10);
      *v24 = &unk_1F1101BF8;
      v25 = v127;
      v127 = 0;
      v24[1] = v25;
      *buf = v24;
      WebCore::NetworkStorageSession::deleteCookiesForHostnames();
      v26 = *buf;
      *buf = 0;
      if (v26)
      {
        (*(*v26 + 8))(v26);
      }

      WTF::Ref<WebKit::NetworkProcess::deleteAndRestrictWebsiteDataForRegistrableDomains(PAL::SessionID,WTF::OptionSet<WebKit::WebsiteDataType>,WebKit::RegistrableDomainsToDeleteOrRestrictWebsiteDataFor &&,WTF::CompletionHandler<void ()(WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore>,WTF::HashTraits<WebCore>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> &&)> &&)::CallbackAggregator,WTF::RawPtrTraits<WTF::CompletionHandler<void ()(WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore>,WTF::HashTraits<WebCore>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> &&)>>,WTF::DefaultRefDerefTraits<WTF::CompletionHandler<void ()(WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore>,WTF::HashTraits<WebCore>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> &&)>>>::~Ref(&v127);
      WebKit::filterForRegistrableDomains(buf, (a4 + 8), &v134);
      if (HIDWORD(v129))
      {
        WTF::VectorDestructor<true,WTF::String>::destruct(v128, (v128 + 8 * HIDWORD(v129)));
      }

      v28 = v128;
      if (v128)
      {
        v128 = 0;
        LODWORD(v129) = 0;
        WTF::fastFree(v28, v27);
      }

      v128 = *buf;
      v29 = *&buf[8];
      *buf = 0;
      *&buf[8] = 0;
      v129 = v29;
      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(buf, v27);
      v30 = v138;
      atomic_fetch_add(v138, 1u);
      v127 = v30;
      v31 = WTF::fastMalloc(0x10);
      *v31 = &unk_1F1101C20;
      v32 = v127;
      v127 = 0;
      v31[1] = v32;
      *buf = v31;
      WebCore::NetworkStorageSession::deleteCookiesForHostnames();
      v33 = *buf;
      *buf = 0;
      if (v33)
      {
        (*(*v33 + 8))(v33);
      }

      WTF::Ref<WebKit::NetworkProcess::deleteAndRestrictWebsiteDataForRegistrableDomains(PAL::SessionID,WTF::OptionSet<WebKit::WebsiteDataType>,WebKit::RegistrableDomainsToDeleteOrRestrictWebsiteDataFor &&,WTF::CompletionHandler<void ()(WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore>,WTF::HashTraits<WebCore>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> &&)> &&)::CallbackAggregator,WTF::RawPtrTraits<WTF::CompletionHandler<void ()(WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore>,WTF::HashTraits<WebCore>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> &&)>>,WTF::DefaultRefDerefTraits<WTF::CompletionHandler<void ()(WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore>,WTF::HashTraits<WebCore>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> &&)>>>::~Ref(&v127);
      if (HIDWORD(v133))
      {
        v34 = v132;
        v35 = v138;
        v36 = 8 * HIDWORD(v133);
        do
        {
          WebCore::RegistrableDomain::uncheckedCreateFromHost(v34, &v127);
          WTF::HashTable<WebCore::RegistrableDomain,WebCore::RegistrableDomain,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::add<(WTF::ShouldValidateKey)1>(v35 + 2, &v127, v37, buf);
          v39 = v127;
          v127 = 0;
          if (v39 && atomic_fetch_add_explicit(v39, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v39, v38);
          }

          v34 = (v34 + 8);
          v36 -= 8;
        }

        while (v36);
      }

      WebKit::filterForRegistrableDomains(buf, (a4 + 4), &v134);
      if (HIDWORD(v131))
      {
        WTF::VectorDestructor<true,WTF::String>::destruct(v130, (v130 + 8 * HIDWORD(v131)));
      }

      v41 = v130;
      if (v130)
      {
        v130 = 0;
        LODWORD(v131) = 0;
        WTF::fastFree(v41, v40);
      }

      v130 = *buf;
      v42 = *&buf[8];
      *buf = 0;
      *&buf[8] = 0;
      v131 = v42;
      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(buf, v40);
      v43 = v138;
      atomic_fetch_add(v138, 1u);
      v127 = v43;
      v44 = WTF::fastMalloc(0x10);
      *v44 = &unk_1F1101C48;
      v45 = v127;
      v127 = 0;
      v44[1] = v45;
      *buf = v44;
      WebCore::NetworkStorageSession::deleteCookiesForHostnames();
      v46 = *buf;
      *buf = 0;
      if (v46)
      {
        (*(*v46 + 8))(v46);
      }

      WTF::Ref<WebKit::NetworkProcess::deleteAndRestrictWebsiteDataForRegistrableDomains(PAL::SessionID,WTF::OptionSet<WebKit::WebsiteDataType>,WebKit::RegistrableDomainsToDeleteOrRestrictWebsiteDataFor &&,WTF::CompletionHandler<void ()(WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore>,WTF::HashTraits<WebCore>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> &&)> &&)::CallbackAggregator,WTF::RawPtrTraits<WTF::CompletionHandler<void ()(WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore>,WTF::HashTraits<WebCore>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> &&)>>,WTF::DefaultRefDerefTraits<WTF::CompletionHandler<void ()(WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore>,WTF::HashTraits<WebCore>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> &&)>>>::~Ref(&v127);
      if (HIDWORD(v131))
      {
        v47 = v130;
        v48 = v138;
        v49 = 8 * HIDWORD(v131);
        do
        {
          WebCore::RegistrableDomain::uncheckedCreateFromHost(v47, &v127);
          WTF::HashTable<WebCore::RegistrableDomain,WebCore::RegistrableDomain,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::add<(WTF::ShouldValidateKey)1>(v48 + 2, &v127, v50, buf);
          v52 = v127;
          v127 = 0;
          if (v52 && atomic_fetch_add_explicit(v52, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v52, v51);
          }

          v47 = (v47 + 8);
          v49 -= 8;
        }

        while (v49);
      }

      v53 = qword_1ED641350;
      if (os_log_type_enabled(qword_1ED641350, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218752;
        *&buf[4] = a2;
        *&buf[12] = 2048;
        *&buf[14] = HIDWORD(v133);
        *&buf[22] = 2048;
        v140 = HIDWORD(v129);
        v141 = 2048;
        v142 = HIDWORD(v131);
        _os_log_impl(&dword_19D52D000, v53, OS_LOG_TYPE_DEFAULT, "NetworkProcess::deleteAndRestrictWebsiteDataForRegistrableDomains deleted cookies for session %llu - %zu domainsToDeleteAllCookiesFor, %zu domainsToDeleteAllButHttpOnlyCookiesFor, %zu domainsToDeleteAllScriptWrittenStorageFor", buf, 0x2Au);
      }

      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v128, v54);
      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v130, v55);
      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v132, v56);
      if (v134)
      {
        WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v134, v19);
      }

      v57 = *(v21 + 8);
      if (!v57)
      {
        __break(0xC471u);
        JUMPOUT(0x19DC716F8);
      }

      *(v21 + 8) = v57 - 1;
    }
  }

  v132 = 0;
  v133 = 0;
  if ((a3 & 0x200) != 0)
  {
    WebKit::NetworkProcess::hostNamesWithHSTSCache(a1, a2, buf);
    v59 = *buf;
    *buf = 0;
    v60 = v137;
    v137 = v59;
    if (v60)
    {
      WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v60, v58);
      if (*buf)
      {
        WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(*buf, v126);
      }
    }

    WebKit::filterForRegistrableDomains(buf, &v135, &v137);
    if (HIDWORD(v133))
    {
      WTF::VectorDestructor<true,WTF::String>::destruct(v132, (v132 + 8 * HIDWORD(v133)));
    }

    v62 = v132;
    if (v132)
    {
      v132 = 0;
      LODWORD(v133) = 0;
      WTF::fastFree(v62, v61);
    }

    v132 = *buf;
    v63 = *&buf[8];
    *buf = 0;
    *&buf[8] = 0;
    v133 = v63;
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(buf, v61);
    if (HIDWORD(v133))
    {
      v64 = v132;
      v65 = v138;
      v66 = 8 * HIDWORD(v133);
      do
      {
        WebCore::RegistrableDomain::uncheckedCreateFromHost(v64, &v130);
        WTF::HashTable<WebCore::RegistrableDomain,WebCore::RegistrableDomain,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::add<(WTF::ShouldValidateKey)1>(v65 + 2, &v130, v67, buf);
        v69 = v130;
        v130 = 0;
        if (v69 && atomic_fetch_add_explicit(v69, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v69, v68);
        }

        v64 = (v64 + 8);
        v66 -= 8;
      }

      while (v66);
    }

    WebKit::NetworkProcess::deleteHSTSCacheForHostNames(a1, a2, &v132);
  }

  if ((a3 & 0x40000) != 0 && v15)
  {
    *buf = 0;
    *&buf[8] = 0;
    v70 = v136;
    if (v136)
    {
      if (v136 >> 29)
      {
        goto LABEL_121;
      }

      v71 = WTF::fastMalloc((8 * v136));
      *&buf[8] = v70;
      *buf = v71;
      v72 = v136;
      if (v136)
      {
        v73 = 0;
        do
        {
          v74 = *(v135 + 8 * v73);
          if (v74)
          {
            atomic_fetch_add_explicit(v74, 2u, memory_order_relaxed);
            v72 = v136;
          }

          v75 = v73 + 1;
          *(v71 + 8 * v73) = v74;
          v73 = v75;
        }

        while (v75 < v72);
        *&buf[12] = v75;
      }
    }

    (*(*v15 + 104))(v15, buf);
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(buf, v76);
  }

  if ((a3 & 0x2000) != 0)
  {
    *buf = a2;
    v77 = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebCore::NetworkStorageSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebCore::NetworkStorageSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((a1 + 248), buf);
    if (v77)
    {
      v78 = v77;
      ++*(v77 + 8);
      WebCore::CredentialStorage::originsWithCredentials(&v130, (v77 + 112));
      WebKit::filterForRegistrableDomains(buf, &v130, &v135, v138 + 2);
      if (*&buf[12])
      {
        v80 = *buf;
        v81 = 32 * *&buf[12];
        do
        {
          WebCore::CredentialStorage::removeCredentialsWithOrigin((v78 + 112), v80);
          v80 = (v80 + 32);
          v81 -= 32;
        }

        while (v81);
      }

      WTF::Vector<WebCore::SecurityOriginData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(buf, v79);
      if (v130)
      {
        WTF::HashTable<WebCore::SecurityOriginData,WebCore::SecurityOriginData,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::FastMalloc>::deallocateTable(v130, v82);
      }

      v83 = *(v78 + 8);
      if (!v83)
      {
        __break(0xC471u);
        JUMPOUT(0x19DC71718);
      }

      *(v78 + 8) = v83 - 1;
    }

    if (!v15)
    {
      goto LABEL_99;
    }

    (*(*v15 + 120))(&v130, v15);
    WebKit::filterForRegistrableDomains(buf, &v130, &v135, v138 + 2);
    (*(*v15 + 128))(v15, buf);
    WTF::Vector<WebCore::SecurityOriginData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(buf, v84);
    if (v130)
    {
      WTF::HashTable<WebCore::SecurityOriginData,WebCore::SecurityOriginData,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::FastMalloc>::deallocateTable(v130, v19);
    }

    if ((a3 & 0xC000) != 0)
    {
      goto LABEL_79;
    }
  }

  else if ((a3 & 0xC000) != 0)
  {
    if (!v15)
    {
LABEL_99:
      v101 = a3;
      goto LABEL_100;
    }

LABEL_79:
    if (*(v15 + 768) == 1)
    {
      v85 = *(v15 + 94);
      if (v85)
      {
        if (*(v85 + 4))
        {
          v86 = (WebKit::NetworkSession::ensureSWServer(v15, v19) + 8);
          ++*v86;
          WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(buf, &v135);
          v87 = v138;
          atomic_fetch_add(v138, 1u);
          *&buf[16] = v87;
          WTF::WeakPtrFactory<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(v15 + 2, v15);
          v88 = *(v15 + 1);
          atomic_fetch_add(v88, 1u);
          v140 = v88;
          v89 = WTF::fastMalloc(0x28);
          *v89 = &unk_1F1101C70;
          *(v89 + 1) = *buf;
          v90 = *&buf[8];
          *buf = 0;
          *&buf[8] = 0;
          *(v89 + 2) = v90;
          *(v89 + 3) = *&buf[16];
          v91 = v140;
          *&buf[16] = 0;
          v140 = 0;
          *(v89 + 4) = v91;
          v130 = v89;
          WebCore::SWServer::getOriginsWithRegistrations();
          v93 = v130;
          v130 = 0;
          if (v93)
          {
            (*(*v93 + 8))(v93);
          }

          v94 = v140;
          v140 = 0;
          if (v94 && atomic_fetch_add(v94, 0xFFFFFFFF) == 1)
          {
            atomic_store(1u, v94);
            WTF::fastFree(v94, v92);
          }

          WTF::Ref<WebKit::NetworkProcess::deleteAndRestrictWebsiteDataForRegistrableDomains(PAL::SessionID,WTF::OptionSet<WebKit::WebsiteDataType>,WebKit::RegistrableDomainsToDeleteOrRestrictWebsiteDataFor &&,WTF::CompletionHandler<void ()(WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore>,WTF::HashTraits<WebCore>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> &&)> &&)::CallbackAggregator,WTF::RawPtrTraits<WTF::CompletionHandler<void ()(WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore>,WTF::HashTraits<WebCore>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> &&)>>,WTF::DefaultRefDerefTraits<WTF::CompletionHandler<void ()(WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore>,WTF::HashTraits<WebCore>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> &&)>>>::~Ref(&buf[16]);
          WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(buf, v95);
          WTF::RefCounted<WebCore::SWServer>::deref(v86);
        }
      }
    }
  }

  if ((a3 & 2) != 0)
  {
    if (v15)
    {
      v96 = *(v15 + 78);
      if (v96)
      {
        ++*(v96 + 8);
        v97 = v138;
        atomic_fetch_add(v138, 1u);
        v98 = WTF::fastMalloc(0x10);
        *v98 = &unk_1F1101CE8;
        v98[1] = v97;
        v130 = 0;
        *buf = v98;
        WebKit::NetworkCache::Cache::deleteDataForRegistrableDomains(v96, &v135, buf);
        v99 = *buf;
        *buf = 0;
        if (v99)
        {
          (*(*v99 + 8))(v99);
        }

        WTF::Ref<WebKit::NetworkProcess::deleteAndRestrictWebsiteDataForRegistrableDomains(PAL::SessionID,WTF::OptionSet<WebKit::WebsiteDataType>,WebKit::RegistrableDomainsToDeleteOrRestrictWebsiteDataFor &&,WTF::CompletionHandler<void ()(WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore>,WTF::HashTraits<WebCore>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> &&)> &&)::CallbackAggregator,WTF::RawPtrTraits<WTF::CompletionHandler<void ()(WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore>,WTF::HashTraits<WebCore>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> &&)>>,WTF::DefaultRefDerefTraits<WTF::CompletionHandler<void ()(WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore>,WTF::HashTraits<WebCore>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> &&)>>>::~Ref(&v130);
        WTF::RefCounted<WebKit::NetworkCache::Cache>::deref((v96 + 8), v100);
      }
    }
  }

  v101 = a3;
  if ((*&a3 & 0x8C0B0) != 0 && v15)
  {
    v102 = *(v15 + 131);
    v103 = v138;
    atomic_fetch_add(v138, 1u);
    v104 = WTF::fastMalloc(0x10);
    *v104 = &unk_1F1101D10;
    v104[1] = v103;
    v130 = 0;
    *buf = v104;
    WebKit::NetworkStorageManager::deleteDataForRegistrableDomains(v102, v101, &v135, buf);
    v105 = *buf;
    *buf = 0;
    if (v105)
    {
      (*(*v105 + 8))(v105);
    }

    WTF::Ref<WebKit::NetworkProcess::deleteAndRestrictWebsiteDataForRegistrableDomains(PAL::SessionID,WTF::OptionSet<WebKit::WebsiteDataType>,WebKit::RegistrableDomainsToDeleteOrRestrictWebsiteDataFor &&,WTF::CompletionHandler<void ()(WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore>,WTF::HashTraits<WebCore>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> &&)> &&)::CallbackAggregator,WTF::RawPtrTraits<WTF::CompletionHandler<void ()(WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore>,WTF::HashTraits<WebCore>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> &&)>>,WTF::DefaultRefDerefTraits<WTF::CompletionHandler<void ()(WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore>,WTF::HashTraits<WebCore>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> &&)>>>::~Ref(&v130);
  }

LABEL_100:
  v106 = WebKit::WebsiteData::filter(v101, 1);
  if (v106 && v136)
  {
    v108 = v106;
    v109 = v138;
    atomic_fetch_add(v138, 1u);
    v110 = WTF::fastMalloc(0x10);
    *v110 = &unk_1F1101D38;
    v110[1] = v109;
    *buf = 0;
    WTF::Ref<WebKit::NetworkProcess::deleteAndRestrictWebsiteDataForRegistrableDomains(PAL::SessionID,WTF::OptionSet<WebKit::WebsiteDataType>,WebKit::RegistrableDomainsToDeleteOrRestrictWebsiteDataFor &&,WTF::CompletionHandler<void ()(WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore>,WTF::HashTraits<WebCore>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> &&)> &&)::CallbackAggregator,WTF::RawPtrTraits<WTF::CompletionHandler<void ()(WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore>,WTF::HashTraits<WebCore>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> &&)>>,WTF::DefaultRefDerefTraits<WTF::CompletionHandler<void ()(WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore>,WTF::HashTraits<WebCore>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> &&)>>>::~Ref(buf);
    WebKit::AuxiliaryProcess::protectedParentProcessConnection(a1, &v128);
    v111 = v128;
    v112 = WTF::fastMalloc(0x10);
    *v112 = &unk_1F1101D60;
    v112[1] = v110;
    if (WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1)
    {
      __break(0xC471u);
      JUMPOUT(0x19DC716D8);
    }

    v113 = v112;
    IdentifierInternal = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
    v116 = IPC::Encoder::operator new(0x238, v115);
    *v116 = 528;
    *(v116 + 68) = 0;
    *(v116 + 70) = 0;
    *(v116 + 69) = 0;
    *(v116 + 2) = 0;
    *(v116 + 3) = 0;
    *(v116 + 1) = 0;
    IPC::Encoder::encodeHeader(v116);
    v130 = v116;
    IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v116, a2);
    IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v116, v108);
    buf[0] = 2;
    IPC::Encoder::operator<<<unsigned char>(v116, buf);
    IPC::VectorArgumentCoder<false,WTF::String,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(v116, &v135);
    *buf = v113;
    *&buf[8] = IdentifierInternal;
    IPC::Connection::sendMessageWithAsyncReply(v111, &v130, buf, 0, 0);
    v117 = *buf;
    *buf = 0;
    if (v117)
    {
      (*(*v117 + 8))(v117);
    }

    v118 = v130;
    v130 = 0;
    if (v118)
    {
      IPC::Encoder::~Encoder(v118, v107);
      bmalloc::api::tzoneFree(v124, v125);
    }

    v119 = v128;
    v128 = 0;
    if (v119)
    {
      WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v119);
    }
  }

  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v132, v107);
  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v135, v120);
  if (v137)
  {
    WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v137, v121);
  }

  result = WTF::Ref<WebKit::NetworkProcess::deleteAndRestrictWebsiteDataForRegistrableDomains(PAL::SessionID,WTF::OptionSet<WebKit::WebsiteDataType>,WebKit::RegistrableDomainsToDeleteOrRestrictWebsiteDataFor &&,WTF::CompletionHandler<void ()(WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore>,WTF::HashTraits<WebCore>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> &&)> &&)::CallbackAggregator,WTF::RawPtrTraits<WTF::CompletionHandler<void ()(WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore>,WTF::HashTraits<WebCore>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> &&)>>,WTF::DefaultRefDerefTraits<WTF::CompletionHandler<void ()(WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore>,WTF::HashTraits<WebCore>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> &&)>>>::~Ref(&v138);
  if (v15)
  {
    v123 = v15[4];
    if (v123)
    {
      v15[4] = v123 - 1;
      return result;
    }

LABEL_121:
    __break(0xC471u);
    JUMPOUT(0x19DC716B8);
  }

  return result;
}

WTF::StringImpl *WebKit::filterForRegistrableDomains(uint64_t a1, uint64_t a2, void **a3)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  result = WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::begin(a3);
  v7 = result;
  v9 = v8;
  if (*a3)
  {
    v10 = &(*a3)[*(*a3 - 1)];
  }

  else
  {
    v10 = 0;
  }

  if (v10 != result)
  {
    do
    {
      WebCore::RegistrableDomain::uncheckedCreateFromHost(v7, &v18);
      v19 = &v18;
      v13 = WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::findIf<unsigned long WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::find<WebCore::RegistrableDomain>(WebCore::RegistrableDomain const&)::{lambda(WebCore::RegistrableDomain&)#1}>(a2, &v19, v11);
      result = v18;
      v18 = 0;
      if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        result = WTF::StringImpl::destroy(result, v12);
      }

      if (v13 != -1)
      {
        v14 = *(a1 + 12);
        if (v14 == *(a1 + 8))
        {
          result = WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::String const&>(a1, v7);
        }

        else
        {
          v15 = *a1;
          v16 = *v7;
          if (*v7)
          {
            atomic_fetch_add_explicit(v16, 2u, memory_order_relaxed);
          }

          v17 = *(a1 + 12);
          *(v15 + 8 * v14) = v16;
          *(a1 + 12) = v17 + 1;
        }
      }

      do
      {
        v7 = (v7 + 8);
      }

      while (v7 != v9 && (*v7 + 1) <= 1);
    }

    while (v7 != v10);
  }

  return result;
}

WTF::StringImpl *WebKit::filterForRegistrableDomains(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  result = WTF::HashTable<WebCore::SecurityOriginData,WebCore::SecurityOriginData,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::FastMalloc>::begin(a2);
  v9 = result;
  v11 = v10;
  if (*a2)
  {
    v12 = *a2 + 32 * *(*a2 - 4);
  }

  else
  {
    v12 = 0;
  }

  if (v12 != result)
  {
    v13 = MEMORY[0x1E696EBA8];
    do
    {
      if (v9[24])
      {
        v14 = v13;
        if (v9[24] != 1)
        {
          mpark::throw_bad_variant_access(v13);
        }
      }

      else
      {
        v14 = (v9 + 8);
      }

      WebCore::RegistrableDomain::uncheckedCreateFromHost(v14, &v20);
      v19[0] = &v20;
      if (WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::findIf<unsigned long WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::find<WebCore::RegistrableDomain>(WebCore::RegistrableDomain const&)::{lambda(WebCore::RegistrableDomain&)#1}>(a3, v19, v15) != -1)
      {
        v17 = *(a1 + 12);
        if (v17 == *(a1 + 8))
        {
          WTF::Vector<WebCore::SecurityOriginData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebCore::SecurityOriginData const&>(a1, v9);
        }

        else
        {
          mpark::detail::move_assignment<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::move_assignment((*a1 + 32 * v17), v9);
          ++*(a1 + 12);
        }

        WTF::HashTable<WebCore::RegistrableDomain,WebCore::RegistrableDomain,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::add<(WTF::ShouldValidateKey)1>(a4, &v20, v18, v19);
      }

      result = v20;
      v20 = 0;
      if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        result = WTF::StringImpl::destroy(result, v16);
      }

      do
      {
        v9 += 32;
        if (v9 == v11)
        {
          break;
        }

        result = WTF::HashTable<WebCore::SecurityOriginData,WebCore::SecurityOriginData,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::FastMalloc>::isEmptyOrDeletedBucket(v9);
      }

      while (result);
    }

    while (v9 != v12);
  }

  return result;
}

WTF::RunLoop *WTF::Ref<WebKit::NetworkProcess::deleteAndRestrictWebsiteDataForRegistrableDomains(PAL::SessionID,WTF::OptionSet<WebKit::WebsiteDataType>,WebKit::RegistrableDomainsToDeleteOrRestrictWebsiteDataFor &&,WTF::CompletionHandler<void ()(WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore>,WTF::HashTraits<WebCore>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> &&)> &&)::CallbackAggregator,WTF::RawPtrTraits<WTF::CompletionHandler<void ()(WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore>,WTF::HashTraits<WebCore>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> &&)>>,WTF::DefaultRefDerefTraits<WTF::CompletionHandler<void ()(WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore>,WTF::HashTraits<WebCore>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> &&)>>>::~Ref(WTF::RunLoop *this)
{
  v2 = *this;
  *this = 0;
  if (v2 && atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v2);
    WTF::RunLoop::mainSingleton(this);
    v8 = *(v2 + 8);
    *(v2 + 8) = 0;
    *(v2 + 16) = 0;
    v4 = WTF::fastMalloc(0x18);
    *v4 = &unk_1F1101BD0;
    *(v4 + 8) = v8;
    v9 = v4;
    WTF::RunLoop::dispatch();
    if (v9)
    {
      (*(*v9 + 8))(v9);
    }

    v6 = *(v2 + 16);
    if (v6)
    {
      WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v6, v5);
    }

    v7 = *(v2 + 8);
    *(v2 + 8) = 0;
    if (v7)
    {
      (*(*v7 + 8))(v7);
    }

    WTF::fastFree(v2, v5);
  }

  return this;
}

uint64_t WebKit::NetworkProcess::deleteCookiesForTesting(uint64_t a1, __CFString *a2, unint64_t a3, int a4, uint64_t *a5)
{
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  if (a4)
  {
    v8 = &v17;
  }

  else
  {
    v8 = &v18;
  }

  WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebCore::RegistrableDomain&>(v8, a3);
  v9 = *a5;
  *a5 = 0;
  v10 = WTF::fastMalloc(0x10);
  *v10 = &unk_1F1101D88;
  v10[1] = v9;
  v16 = v10;
  WebKit::NetworkProcess::deleteAndRestrictWebsiteDataForRegistrableDomains(a1, a2, 1, &v17, &v16);
  if (v16)
  {
    (*(*v16 + 8))(v16);
  }

  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v20, v11);
  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v19, v12);
  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v18, v13);
  return WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v17, v14);
}

atomic_uint *WebKit::NetworkProcess::registrableDomainsWithWebsiteData(uint64_t a1, uint64_t a2, int a3, uint64_t *a4)
{
  v73 = *MEMORY[0x1E69E9840];
  *&v69 = a2;
  v8 = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((a1 + 240), &v69);
  v9 = v8;
  if (v8)
  {
    ++*(v8 + 16);
  }

  v10 = WTF::fastMalloc(0x38);
  v11 = *a4;
  *a4 = 0;
  v12 = WTF::fastMalloc(0x10);
  *v12 = &unk_1F1101DB0;
  v12[1] = v11;
  *v10 = 1;
  *(v10 + 8) = v12;
  *(v10 + 16) = 0u;
  v14 = (v10 + 16);
  *(v10 + 48) = 0;
  *(v10 + 32) = 0u;
  if (a3)
  {
    *&v69 = a2;
    v15 = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebCore::NetworkStorageSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebCore::NetworkStorageSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((a1 + 248), &v69);
    if (v15)
    {
      v16 = v15;
      ++*(v15 + 8);
      WebCore::NetworkStorageSession::getHostnamesWithCookies();
      v17 = *(v16 + 8);
      if (!v17)
      {
        __break(0xC471u);
        goto LABEL_104;
      }

      *(v16 + 8) = v17 - 1;
    }
  }

  if ((a3 & 0x200) != 0)
  {
    WebKit::NetworkProcess::hostNamesWithHSTSCache(a1, a2, &v69);
    v26 = v69;
    *&v69 = 0;
    v27 = *(v10 + 40);
    *(v10 + 40) = v26;
    if (v27)
    {
      WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v27, v13);
      if (v69)
      {
        WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v69, v13);
      }
    }
  }

  if ((a3 & 0x2000) == 0)
  {
    goto LABEL_9;
  }

  *&v69 = a2;
  v28 = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebCore::NetworkStorageSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebCore::NetworkStorageSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((a1 + 248), &v69);
  if (!v28)
  {
    goto LABEL_59;
  }

  v29 = v28;
  ++*(v28 + 8);
  WebCore::CredentialStorage::originsWithCredentials(v63, (v28 + 112));
  v31 = WTF::HashTable<WebCore::SecurityOriginData,WebCore::SecurityOriginData,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::FastMalloc>::begin(v63);
  v32 = v30;
  v33 = v63[0];
  if (v63[0])
  {
    v34 = (v63[0] + 32 * *(v63[0] - 1));
  }

  else
  {
    v34 = 0;
  }

  if (v34 != v31)
  {
    while (1)
    {
      mpark::detail::move_assignment<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::move_assignment(&v66, v31);
      LOBYTE(v69) = 0;
      v71 = -1;
      v36 = v68;
      if (!v68)
      {
        break;
      }

      if (v68 != 255)
      {
        v69 = v66;
LABEL_36:
        v71 = v36;
      }

      LODWORD(v72) = 0x2000;
      *(&v72 + 1) = 0;
      v39 = *(v10 + 28);
      if (v39 == *(v10 + 24))
      {
        WTF::Vector<WebKit::WebsiteData::Entry,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebKit::WebsiteData::Entry>(v10 + 16, &v69);
        goto LABEL_43;
      }

      v40 = *v14 + 48 * v39;
      *v40 = 0;
      *(v40 + 24) = -1;
      if (v71)
      {
        if (v71 == 255)
        {
          goto LABEL_42;
        }

        *v40 = v69;
      }

      else
      {
        v41 = v69;
        *&v69 = 0;
        *v40 = v41;
        v42 = *(&v69 + 1);
        *(&v69 + 1) = 0;
        *(v40 + 8) = v42;
        *(v40 + 16) = v70;
      }

      *(v40 + 24) = v71;
LABEL_42:
      *(v40 + 32) = v72;
      ++*(v10 + 28);
LABEL_43:
      WebKit::WebsiteData::Entry::~Entry(&v69, v35);
      WebCore::SecurityOriginData::~SecurityOriginData(&v66);
      do
      {
        v31 = (v31 + 32);
      }

      while (v31 != v32 && WTF::HashTable<WebCore::SecurityOriginData,WebCore::SecurityOriginData,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::FastMalloc>::isEmptyOrDeletedBucket(v31));
      if (v31 == v34)
      {
        v33 = v63[0];
        goto LABEL_55;
      }
    }

    v37 = v66;
    if (v66)
    {
      atomic_fetch_add_explicit(v66, 2u, memory_order_relaxed);
    }

    *&v69 = v37;
    v38 = *(&v66 + 1);
    if (*(&v66 + 1))
    {
      atomic_fetch_add_explicit(*(&v66 + 1), 2u, memory_order_relaxed);
    }

    *(&v69 + 1) = v38;
    v70 = v67;
    v36 = v68;
    goto LABEL_36;
  }

LABEL_55:
  if (v33)
  {
    WTF::HashTable<WebCore::SecurityOriginData,WebCore::SecurityOriginData,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::FastMalloc>::deallocateTable(v33, v30);
  }

  v46 = *(v29 + 8);
  if (!v46)
  {
    __break(0xC471u);
LABEL_104:
    JUMPOUT(0x19DC72328);
  }

  *(v29 + 8) = v46 - 1;
LABEL_59:
  if (!v9)
  {
    return WTF::ThreadSafeRefCounted<WebKit::NetworkProcess::registrableDomainsWithWebsiteData(PAL::SessionID,WTF::OptionSet<WebKit::WebsiteDataType>,WTF::CompletionHandler<void ()(WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> &&)> &&)::CallbackAggregator,(WTF::DestructionThread)0>::deref(v10);
  }

  (*(*v9 + 120))(&v59, v9);
  v47 = WTF::HashTable<WebCore::SecurityOriginData,WebCore::SecurityOriginData,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::FastMalloc>::begin(&v59);
  v48 = v13;
  v49 = v59;
  if (v59)
  {
    v50 = (v59 + 32 * *(v59 - 1));
  }

  else
  {
    v50 = 0;
  }

  if (v50 == v47)
  {
    goto LABEL_92;
  }

  do
  {
    mpark::detail::move_assignment<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::move_assignment(v63, v47);
    LOBYTE(v60) = 0;
    v62 = -1;
    LODWORD(v52) = v65;
    if (v65)
    {
      if (v65 == 255)
      {
        LOBYTE(v69) = 0;
        goto LABEL_75;
      }

      v60 = *v63;
    }

    else
    {
      v53 = v63[0];
      if (v63[0])
      {
        atomic_fetch_add_explicit(v63[0], 2u, memory_order_relaxed);
      }

      *&v60 = v53;
      v52 = v63[1];
      if (v63[1])
      {
        atomic_fetch_add_explicit(v63[1], 2u, memory_order_relaxed);
      }

      *(&v60 + 1) = v52;
      v61 = v64;
      LODWORD(v52) = v65;
    }

    v62 = v52;
    LOBYTE(v69) = 0;
    v71 = -1;
    if (!v52)
    {
      v54 = v60;
      if (v60)
      {
        atomic_fetch_add_explicit(v60, 2u, memory_order_relaxed);
      }

      *&v69 = v54;
      v52 = *(&v60 + 1);
      if (*(&v60 + 1))
      {
        atomic_fetch_add_explicit(*(&v60 + 1), 2u, memory_order_relaxed);
      }

      *(&v69 + 1) = v52;
      v70 = v61;
      LOBYTE(v52) = v62;
      goto LABEL_75;
    }

    if (v52 != 255)
    {
      v69 = v60;
LABEL_75:
      v71 = v52;
    }

    LODWORD(v72) = 0x2000;
    *(&v72 + 1) = 0;
    v55 = *(v10 + 28);
    if (v55 != *(v10 + 24))
    {
      v56 = *v14 + 48 * v55;
      *v56 = 0;
      *(v56 + 24) = -1;
      if (v71)
      {
        if (v71 == 255)
        {
          goto LABEL_81;
        }

        *v56 = v69;
      }

      else
      {
        v57 = v69;
        *&v69 = 0;
        *v56 = v57;
        v58 = *(&v69 + 1);
        *(&v69 + 1) = 0;
        *(v56 + 8) = v58;
        *(v56 + 16) = v70;
      }

      *(v56 + 24) = v71;
LABEL_81:
      *(v56 + 32) = v72;
      ++*(v10 + 28);
      goto LABEL_82;
    }

    WTF::Vector<WebKit::WebsiteData::Entry,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebKit::WebsiteData::Entry>(v10 + 16, &v69);
LABEL_82:
    WebKit::WebsiteData::Entry::~Entry(&v69, v51);
    WebCore::SecurityOriginData::~SecurityOriginData(&v60);
    WebCore::SecurityOriginData::~SecurityOriginData(v63);
    do
    {
      v47 = (v47 + 32);
    }

    while (v47 != v48 && WTF::HashTable<WebCore::SecurityOriginData,WebCore::SecurityOriginData,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::FastMalloc>::isEmptyOrDeletedBucket(v47));
  }

  while (v47 != v50);
  v49 = v59;
LABEL_92:
  if (v49)
  {
    WTF::HashTable<WebCore::SecurityOriginData,WebCore::SecurityOriginData,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::FastMalloc>::deallocateTable(v49, v13);
  }

LABEL_9:
  if ((a3 & 0x4000) != 0)
  {
    if (v9)
    {
      if (*(v9 + 768) == 1)
      {
        v18 = *(v9 + 94);
        if (v18)
        {
          if (*(v18 + 4))
          {
            v19 = (WebKit::NetworkSession::ensureSWServer(v9, v13) + 8);
            ++*v19;
            atomic_fetch_add(v10, 1u);
            v20 = WTF::fastMalloc(0x10);
            *v20 = &unk_1F1101E28;
            v20[1] = v10;
            *&v69 = v20;
            WebCore::SWServer::getOriginsWithRegistrations();
            v21 = v69;
            *&v69 = 0;
            if (v21)
            {
              (*(*v21 + 8))(v21);
            }

            WTF::RefCounted<WebCore::SWServer>::deref(v19);
          }
        }
      }
    }
  }

  if ((a3 & 2) != 0)
  {
    if (!v9)
    {
      return WTF::ThreadSafeRefCounted<WebKit::NetworkProcess::registrableDomainsWithWebsiteData(PAL::SessionID,WTF::OptionSet<WebKit::WebsiteDataType>,WTF::CompletionHandler<void ()(WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> &&)> &&)::CallbackAggregator,(WTF::DestructionThread)0>::deref(v10);
    }

    v43 = *(v9 + 78);
    if (v43)
    {
      ++*(v43 + 8);
      atomic_fetch_add(v10, 1u);
      v44 = WTF::fastMalloc(0x10);
      *v44 = &unk_1F1101E50;
      v44[1] = v10;
      *&v69 = v44;
      WebKit::NetworkCache::Cache::fetchData(v43, 0, &v69);
      if (v69)
      {
        (*(*v69 + 8))(v69);
      }

      WTF::RefCounted<WebKit::NetworkCache::Cache>::deref((v43 + 8), v45);
    }

LABEL_19:
    v22 = *(v9 + 131);
    atomic_fetch_add(v10, 1u);
    v23 = WTF::fastMalloc(0x10);
    *v23 = &unk_1F1101E78;
    v23[1] = v10;
    *&v69 = v23;
    WebKit::NetworkStorageManager::fetchData(v22, a3, 0, &v69);
    if (v69)
    {
      (*(*v69 + 8))(v69);
    }

    result = WTF::ThreadSafeRefCounted<WebKit::NetworkProcess::registrableDomainsWithWebsiteData(PAL::SessionID,WTF::OptionSet<WebKit::WebsiteDataType>,WTF::CompletionHandler<void ()(WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> &&)> &&)::CallbackAggregator,(WTF::DestructionThread)0>::deref(v10);
    v25 = *(v9 + 4);
    if (!v25)
    {
      __break(0xC471u);
      JUMPOUT(0x19DC72348);
    }

    *(v9 + 4) = v25 - 1;
  }

  else
  {
    if (v9)
    {
      goto LABEL_19;
    }

    return WTF::ThreadSafeRefCounted<WebKit::NetworkProcess::registrableDomainsWithWebsiteData(PAL::SessionID,WTF::OptionSet<WebKit::WebsiteDataType>,WTF::CompletionHandler<void ()(WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> &&)> &&)::CallbackAggregator,(WTF::DestructionThread)0>::deref(v10);
  }

  return result;
}

uint64_t WebKit::NetworkProcess::closeITPDatabase(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v9 = a2;
  v4 = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((a1 + 240), &v9);
  if (v4)
  {
    v5 = v4;
    ++*(v4 + 16);
    result = WebKit::NetworkSession::destroyResourceLoadStatistics(v4, a3);
    v7 = *(v5 + 16);
    if (v7)
    {
      *(v5 + 16) = v7 - 1;
    }

    else
    {
      result = 290;
      __break(0xC471u);
    }
  }

  else
  {
    v8 = *a3;
    *a3 = 0;
    (*(*v8 + 16))(v8);
    return (*(*v8 + 8))(v8);
  }

  return result;
}

uint64_t WebKit::NetworkProcess::downloadRequest(uint64_t a1, uint64_t a2, uint64_t a3, CFTypeRef *a4, WebCore::SecurityOriginData *a5, __int16 a6, atomic_uint **a7)
{
  v7 = (a1 + 184);
  ++*(a1 + 184);
  result = WebKit::DownloadManager::startDownload(a1 + 184, a2, a3, a4, a5, a6, a7, 0, 0, 0, 0, 0, 0, 0);
  if (*v7)
  {
    --*v7;
  }

  else
  {
    result = 290;
    __break(0xC471u);
  }

  return result;
}

uint64_t WebKit::NetworkProcess::resumeDownload(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, WTF::FileSystemImpl *a6, uint64_t *a7, int a8, uint64_t a9, uint64_t a10)
{
  v10 = (a1 + 184);
  ++*(a1 + 184);
  result = WebKit::DownloadManager::resumeDownload((a1 + 184), a2, a3, a4, a5, a6, a7, a8, a9, a10);
  if (*v10)
  {
    --*v10;
  }

  else
  {
    result = 290;
    __break(0xC471u);
  }

  return result;
}

uint64_t WebKit::NetworkProcess::cancelDownload(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = (a1 + 184);
  ++*(a1 + 184);
  result = WebKit::DownloadManager::cancelDownload(a1 + 184, a2, a3);
  if (*v3)
  {
    --*v3;
  }

  else
  {
    result = 290;
    __break(0xC471u);
  }

  return result;
}

uint64_t WebKit::NetworkProcess::dataTaskWithRequest(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t *a7)
{
  v13 = *a6;
  *a6 = 0;
  v21 = v13;
  WebCore::ResourceRequestBase::setHTTPBody();
  v14 = v21;
  v21 = 0;
  if (v14)
  {
    WTF::RefCounted<WebCore::FormData>::deref(v14);
  }

  v21 = a3;
  v15 = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((a1 + 240), &v21);
  if (!v15)
  {
    goto LABEL_8;
  }

  v16 = v15;
  ++*(v15 + 16);
  v17 = *a7;
  *a7 = 0;
  v18 = WTF::fastMalloc(0x10);
  *v18 = &unk_1F1101EC8;
  *(v18 + 1) = v17;
  v21 = v18;
  (*(*v16 + 232))(v16, a2, a4, a5, &v21);
  result = v21;
  v21 = 0;
  if (result)
  {
    result = (*(*result + 8))(result);
  }

  v20 = v16[4];
  if (!v20)
  {
LABEL_8:
    __break(0xC471u);
    JUMPOUT(0x19DC7270CLL);
  }

  v16[4] = v20 - 1;
  return result;
}

uint64_t WebKit::NetworkProcess::cancelDataTask(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v11 = a3;
  v6 = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((a1 + 240), &v11);
  if (!v6)
  {
    goto LABEL_4;
  }

  v7 = v6;
  ++v6[4];
  (*(*v6 + 240))(v6, a2);
  v8 = v7[4];
  if (v8)
  {
    v7[4] = v8 - 1;
LABEL_4:
    v9 = *a4;
    *a4 = 0;
    (*(*v9 + 16))(v9);
    return (*(*v9 + 8))(v9);
  }

  result = 290;
  __break(0xC471u);
  return result;
}

uint64_t WebKit::NetworkProcess::setCacheModelSynchronouslyForTesting(uint64_t a1, int a2, uint64_t *a3)
{
  WebKit::NetworkProcess::setCacheModel(a1, a2);
  v4 = *a3;
  *a3 = 0;
  (*(*v4 + 16))(v4);
  v5 = *(*v4 + 8);

  return v5(v4);
}

uint64_t WebKit::NetworkProcess::allowTLSCertificateChainForLocalPCMTesting(WebKit::NetworkProcess *this, SessionID a2, const CertificateInfo *a3)
{
  m_identifier = a2.m_identifier;
  result = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>(this + 30, &m_identifier);
  if (result)
  {
    v5 = result;
    ++*(result + 16);
    result = (*(**(result + 160) + 152))(*(result + 160), a3);
    v6 = *(v5 + 16);
    if (v6)
    {
      *(v5 + 16) = v6 - 1;
    }

    else
    {
      result = 290;
      __break(0xC471u);
    }
  }

  return result;
}

atomic_ullong *WebKit::NetworkProcess::logDiagnosticMessage(WebKit::AuxiliaryProcess *this, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v13 = a2;
  if (!a5 || (result = WTF::cryptographicallyRandomUnitInterval(this), v9 <= 0.05))
  {
    WebKit::AuxiliaryProcess::protectedParentProcessConnection(this, &v12);
    v10[0] = &v13;
    v10[1] = a3;
    v10[2] = a4;
    v11 = 0;
    IPC::Connection::send<Messages::NetworkProcessProxy::LogDiagnosticMessage>(v12, v10, 0, 0, 0);
    result = v12;
    v12 = 0;
    if (result)
    {
      return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(result);
    }
  }

  return result;
}

uint64_t IPC::Connection::send<Messages::NetworkProcessProxy::LogDiagnosticMessage>(uint64_t *a1, void *a2, uint64_t a3, char a4, uint64_t a5)
{
  v10 = IPC::Encoder::operator new(0x238, a2);
  *v10 = 540;
  *(v10 + 2) = 0;
  *(v10 + 3) = 0;
  *(v10 + 1) = a3;
  *(v10 + 68) = 0;
  *(v10 + 70) = 0;
  *(v10 + 69) = 0;
  IPC::Encoder::encodeHeader(v10);
  v17 = v10;
  Messages::NetworkProcessProxy::LogDiagnosticMessage::encode<IPC::Encoder>(a2, v10);
  v12 = IPC::Connection::sendMessageImpl(a1, &v17, a4, a5);
  v13 = v17;
  v17 = 0;
  if (v13)
  {
    IPC::Encoder::~Encoder(v13, v11);
    bmalloc::api::tzoneFree(v15, v16);
  }

  return v12;
}