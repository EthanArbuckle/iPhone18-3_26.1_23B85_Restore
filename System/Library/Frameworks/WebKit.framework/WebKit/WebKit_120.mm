void sub_19DC47CB0(_Unwind_Exception *a1, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, IPC::Encoder *a14)
{
  if (a12 == 1 && a10)
  {
    (*(*a10 + 8))(a10);
  }

  if (a14)
  {
    IPC::Encoder::~Encoder(a14, a2);
    bmalloc::api::tzoneFree(v18, v19);
  }

  WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref(v15);
  CFRelease(*(v16 - 8));
  if (v14[4] == 1)
  {
    (*(*v14 + 24))(v14);
  }

  else
  {
    --v14[4];
  }

  _Unwind_Resume(a1);
}

void WebKit::PlaybackSessionModelContext::exitFullscreen(WebKit::PlaybackSessionModelContext *this)
{
  v1 = *(this + 3);
  if (v1)
  {
    v3 = *(v1 + 8);
    if (v3)
    {
      v4 = *(v3 + 80);
      if (v4)
      {
        atomic_fetch_add(v4 + 2, 1u);
        v5 = *(this + 42);
        v23[0] = "PlaybackSessionModelContext";
        v23[1] = 28;
        v24 = "exitFullscreen";
        v25 = v5;
        if (WTF::Logger::willLog<WTF::Logger::LogSiteIdentifier>(v4, &WebKit2LogMedia, 0, v23))
        {
          WTF::Logger::log<WTF::Logger::LogSiteIdentifier>(&WebKit2LogMedia, 0, v23);
        }

        if (atomic_fetch_add(v4 + 2, 0xFFFFFFFF) == 1)
        {
          atomic_store(1u, v4 + 2);
          (*(*v4 + 8))(v4);
        }
      }
    }

    v6 = *(this + 3);
    if (v6)
    {
      v7 = *(v6 + 8);
      if (v7)
      {
        v8 = *(v7 + 16);
        *(v7 + 16) = v8 + 1;
        v9 = *(v7 + 32);
        if (v9)
        {
          v10 = *(v9 + 8);
          if (v10)
          {
            v12 = *(this + 4);
            v11 = *(this + 5);
            CFRetain(*(v10 - 8));
            v23[0] = v11;
            {
              WebKit::WebProcessProxy::allProcessMap(void)::map = 0;
            }

            v13 = WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::CheckedRef<WebKit::WebProcessProxy,WTF::RawPtrTraits<WebKit::WebProcessProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::CheckedRef<WebKit::WebProcessProxy,WTF::RawPtrTraits<WebKit::WebProcessProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::CheckedRef<WebKit::WebProcessProxy,WTF::RawPtrTraits<WebKit::WebProcessProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::CheckedRef<WebKit::WebProcessProxy,WTF::RawPtrTraits<WebKit::WebProcessProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(&WebKit::WebProcessProxy::allProcessMap(void)::map, v23);
            if (v13)
            {
              v14 = v13;
              atomic_fetch_add(v13 + 4, 1u);
              v15 = WebKit::WebPageProxy::webPageIDInProcess((v10 - 16), v13);
              v17 = IPC::Encoder::operator new(0x238, v16);
              *v17 = 870;
              *(v17 + 2) = 0;
              *(v17 + 3) = 0;
              *(v17 + 1) = v15;
              *(v17 + 68) = 0;
              *(v17 + 70) = 0;
              *(v17 + 69) = 0;
              IPC::Encoder::encodeHeader(v17);
              v26 = v17;
              IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v17, v12);
              LOBYTE(v23[0]) = 0;
              LOBYTE(v24) = 0;
              WebKit::AuxiliaryProcessProxy::sendMessage(v14, &v26, 0, v23, 1);
              if (v24 == 1)
              {
                v19 = v23[0];
                v23[0] = 0;
                if (v19)
                {
                  (*(*v19 + 8))(v19);
                }
              }

              v20 = v26;
              v26 = 0;
              if (v20)
              {
                IPC::Encoder::~Encoder(v20, v18);
                bmalloc::api::tzoneFree(v21, v22);
              }

              WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v14 + 16));
            }

            CFRelease(*(v10 - 8));
            v8 = *(v7 + 16) - 1;
          }
        }

        if (v8)
        {
          *(v7 + 16) = v8;
        }

        else
        {
          (*(*v7 + 24))(v7);
        }
      }
    }
  }
}

void sub_19DC48048(_Unwind_Exception *a1, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, IPC::Encoder *a14)
{
  if (a12 == 1 && a10)
  {
    (*(*a10 + 8))(a10);
  }

  if (a14)
  {
    IPC::Encoder::~Encoder(a14, a2);
    bmalloc::api::tzoneFree(v18, v19);
  }

  WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref(v15);
  CFRelease(*(v16 - 8));
  if (v14[4] == 1)
  {
    (*(*v14 + 24))(v14);
  }

  else
  {
    --v14[4];
  }

  _Unwind_Resume(a1);
}

void WebKit::PlaybackSessionModelContext::enterInWindowFullscreen(WebKit::PlaybackSessionModelContext *this)
{
  v1 = *(this + 3);
  if (v1)
  {
    v3 = *(v1 + 8);
    if (v3)
    {
      v4 = *(v3 + 80);
      if (v4)
      {
        atomic_fetch_add(v4 + 2, 1u);
        v5 = *(this + 42);
        v23[0] = "PlaybackSessionModelContext";
        v23[1] = 28;
        v24 = "enterInWindowFullscreen";
        v25 = v5;
        if (WTF::Logger::willLog<WTF::Logger::LogSiteIdentifier>(v4, &WebKit2LogMedia, 0, v23))
        {
          WTF::Logger::log<WTF::Logger::LogSiteIdentifier>(&WebKit2LogMedia, 0, v23);
        }

        if (atomic_fetch_add(v4 + 2, 0xFFFFFFFF) == 1)
        {
          atomic_store(1u, v4 + 2);
          (*(*v4 + 8))(v4);
        }
      }
    }

    v6 = *(this + 3);
    if (v6)
    {
      v7 = *(v6 + 8);
      if (v7)
      {
        v8 = *(v7 + 16);
        *(v7 + 16) = v8 + 1;
        v9 = *(v7 + 32);
        if (v9)
        {
          v10 = *(v9 + 8);
          if (v10)
          {
            v12 = *(this + 4);
            v11 = *(this + 5);
            CFRetain(*(v10 - 8));
            v23[0] = v11;
            {
              WebKit::WebProcessProxy::allProcessMap(void)::map = 0;
            }

            v13 = WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::CheckedRef<WebKit::WebProcessProxy,WTF::RawPtrTraits<WebKit::WebProcessProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::CheckedRef<WebKit::WebProcessProxy,WTF::RawPtrTraits<WebKit::WebProcessProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::CheckedRef<WebKit::WebProcessProxy,WTF::RawPtrTraits<WebKit::WebProcessProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::CheckedRef<WebKit::WebProcessProxy,WTF::RawPtrTraits<WebKit::WebProcessProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(&WebKit::WebProcessProxy::allProcessMap(void)::map, v23);
            if (v13)
            {
              v14 = v13;
              atomic_fetch_add(v13 + 4, 1u);
              v15 = WebKit::WebPageProxy::webPageIDInProcess((v10 - 16), v13);
              v17 = IPC::Encoder::operator new(0x238, v16);
              *v17 = 869;
              *(v17 + 2) = 0;
              *(v17 + 3) = 0;
              *(v17 + 1) = v15;
              *(v17 + 68) = 0;
              *(v17 + 70) = 0;
              *(v17 + 69) = 0;
              IPC::Encoder::encodeHeader(v17);
              v26 = v17;
              IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v17, v12);
              LOBYTE(v23[0]) = 0;
              LOBYTE(v24) = 0;
              WebKit::AuxiliaryProcessProxy::sendMessage(v14, &v26, 0, v23, 1);
              if (v24 == 1)
              {
                v19 = v23[0];
                v23[0] = 0;
                if (v19)
                {
                  (*(*v19 + 8))(v19);
                }
              }

              v20 = v26;
              v26 = 0;
              if (v20)
              {
                IPC::Encoder::~Encoder(v20, v18);
                bmalloc::api::tzoneFree(v21, v22);
              }

              WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v14 + 16));
            }

            CFRelease(*(v10 - 8));
            v8 = *(v7 + 16) - 1;
          }
        }

        if (v8)
        {
          *(v7 + 16) = v8;
        }

        else
        {
          (*(*v7 + 24))(v7);
        }
      }
    }
  }
}

void sub_19DC483E0(_Unwind_Exception *a1, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, IPC::Encoder *a14)
{
  if (a12 == 1 && a10)
  {
    (*(*a10 + 8))(a10);
  }

  if (a14)
  {
    IPC::Encoder::~Encoder(a14, a2);
    bmalloc::api::tzoneFree(v18, v19);
  }

  WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref(v15);
  CFRelease(*(v16 - 8));
  if (v14[4] == 1)
  {
    (*(*v14 + 24))(v14);
  }

  else
  {
    --v14[4];
  }

  _Unwind_Resume(a1);
}

void WebKit::PlaybackSessionModelContext::exitInWindowFullscreen(WebKit::PlaybackSessionModelContext *this)
{
  v1 = *(this + 3);
  if (v1)
  {
    v3 = *(v1 + 8);
    if (v3)
    {
      v4 = *(v3 + 80);
      if (v4)
      {
        atomic_fetch_add(v4 + 2, 1u);
        v5 = *(this + 42);
        v23[0] = "PlaybackSessionModelContext";
        v23[1] = 28;
        v24 = "exitInWindowFullscreen";
        v25 = v5;
        if (WTF::Logger::willLog<WTF::Logger::LogSiteIdentifier>(v4, &WebKit2LogMedia, 0, v23))
        {
          WTF::Logger::log<WTF::Logger::LogSiteIdentifier>(&WebKit2LogMedia, 0, v23);
        }

        if (atomic_fetch_add(v4 + 2, 0xFFFFFFFF) == 1)
        {
          atomic_store(1u, v4 + 2);
          (*(*v4 + 8))(v4);
        }
      }
    }

    v6 = *(this + 3);
    if (v6)
    {
      v7 = *(v6 + 8);
      if (v7)
      {
        v8 = *(v7 + 16);
        *(v7 + 16) = v8 + 1;
        v9 = *(v7 + 32);
        if (v9)
        {
          v10 = *(v9 + 8);
          if (v10)
          {
            v12 = *(this + 4);
            v11 = *(this + 5);
            CFRetain(*(v10 - 8));
            v23[0] = v11;
            {
              WebKit::WebProcessProxy::allProcessMap(void)::map = 0;
            }

            v13 = WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::CheckedRef<WebKit::WebProcessProxy,WTF::RawPtrTraits<WebKit::WebProcessProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::CheckedRef<WebKit::WebProcessProxy,WTF::RawPtrTraits<WebKit::WebProcessProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::CheckedRef<WebKit::WebProcessProxy,WTF::RawPtrTraits<WebKit::WebProcessProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::CheckedRef<WebKit::WebProcessProxy,WTF::RawPtrTraits<WebKit::WebProcessProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(&WebKit::WebProcessProxy::allProcessMap(void)::map, v23);
            if (v13)
            {
              v14 = v13;
              atomic_fetch_add(v13 + 4, 1u);
              v15 = WebKit::WebPageProxy::webPageIDInProcess((v10 - 16), v13);
              v17 = IPC::Encoder::operator new(0x238, v16);
              *v17 = 871;
              *(v17 + 2) = 0;
              *(v17 + 3) = 0;
              *(v17 + 1) = v15;
              *(v17 + 68) = 0;
              *(v17 + 70) = 0;
              *(v17 + 69) = 0;
              IPC::Encoder::encodeHeader(v17);
              v26 = v17;
              IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v17, v12);
              LOBYTE(v23[0]) = 0;
              LOBYTE(v24) = 0;
              WebKit::AuxiliaryProcessProxy::sendMessage(v14, &v26, 0, v23, 1);
              if (v24 == 1)
              {
                v19 = v23[0];
                v23[0] = 0;
                if (v19)
                {
                  (*(*v19 + 8))(v19);
                }
              }

              v20 = v26;
              v26 = 0;
              if (v20)
              {
                IPC::Encoder::~Encoder(v20, v18);
                bmalloc::api::tzoneFree(v21, v22);
              }

              WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v14 + 16));
            }

            CFRelease(*(v10 - 8));
            v8 = *(v7 + 16) - 1;
          }
        }

        if (v8)
        {
          *(v7 + 16) = v8;
        }

        else
        {
          (*(*v7 + 24))(v7);
        }
      }
    }
  }
}

void sub_19DC48778(_Unwind_Exception *a1, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, IPC::Encoder *a14)
{
  if (a12 == 1 && a10)
  {
    (*(*a10 + 8))(a10);
  }

  if (a14)
  {
    IPC::Encoder::~Encoder(a14, a2);
    bmalloc::api::tzoneFree(v18, v19);
  }

  WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref(v15);
  CFRelease(*(v16 - 8));
  if (v14[4] == 1)
  {
    (*(*v14 + 24))(v14);
  }

  else
  {
    --v14[4];
  }

  _Unwind_Resume(a1);
}

void WebKit::PlaybackSessionModelContext::toggleMuted(WebKit::PlaybackSessionModelContext *this)
{
  v1 = *(this + 3);
  if (v1)
  {
    v3 = *(v1 + 8);
    if (v3)
    {
      v4 = *(v3 + 80);
      if (v4)
      {
        atomic_fetch_add(v4 + 2, 1u);
        v5 = *(this + 42);
        v23[0] = "PlaybackSessionModelContext";
        v23[1] = 28;
        v24 = "toggleMuted";
        v25 = v5;
        if (WTF::Logger::willLog<WTF::Logger::LogSiteIdentifier>(v4, &WebKit2LogMedia, 0, v23))
        {
          WTF::Logger::log<WTF::Logger::LogSiteIdentifier>(&WebKit2LogMedia, 0, v23);
        }

        if (atomic_fetch_add(v4 + 2, 0xFFFFFFFF) == 1)
        {
          atomic_store(1u, v4 + 2);
          (*(*v4 + 8))(v4);
        }
      }
    }

    v6 = *(this + 3);
    if (v6)
    {
      v7 = *(v6 + 8);
      if (v7)
      {
        v8 = *(v7 + 16);
        *(v7 + 16) = v8 + 1;
        v9 = *(v7 + 32);
        if (v9)
        {
          v10 = *(v9 + 8);
          if (v10)
          {
            v12 = *(this + 4);
            v11 = *(this + 5);
            CFRetain(*(v10 - 8));
            v23[0] = v11;
            {
              WebKit::WebProcessProxy::allProcessMap(void)::map = 0;
            }

            v13 = WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::CheckedRef<WebKit::WebProcessProxy,WTF::RawPtrTraits<WebKit::WebProcessProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::CheckedRef<WebKit::WebProcessProxy,WTF::RawPtrTraits<WebKit::WebProcessProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::CheckedRef<WebKit::WebProcessProxy,WTF::RawPtrTraits<WebKit::WebProcessProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::CheckedRef<WebKit::WebProcessProxy,WTF::RawPtrTraits<WebKit::WebProcessProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(&WebKit::WebProcessProxy::allProcessMap(void)::map, v23);
            if (v13)
            {
              v14 = v13;
              atomic_fetch_add(v13 + 4, 1u);
              v15 = WebKit::WebPageProxy::webPageIDInProcess((v10 - 16), v13);
              v17 = IPC::Encoder::operator new(0x238, v16);
              *v17 = 887;
              *(v17 + 2) = 0;
              *(v17 + 3) = 0;
              *(v17 + 1) = v15;
              *(v17 + 68) = 0;
              *(v17 + 70) = 0;
              *(v17 + 69) = 0;
              IPC::Encoder::encodeHeader(v17);
              v26 = v17;
              IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v17, v12);
              LOBYTE(v23[0]) = 0;
              LOBYTE(v24) = 0;
              WebKit::AuxiliaryProcessProxy::sendMessage(v14, &v26, 0, v23, 1);
              if (v24 == 1)
              {
                v19 = v23[0];
                v23[0] = 0;
                if (v19)
                {
                  (*(*v19 + 8))(v19);
                }
              }

              v20 = v26;
              v26 = 0;
              if (v20)
              {
                IPC::Encoder::~Encoder(v20, v18);
                bmalloc::api::tzoneFree(v21, v22);
              }

              WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v14 + 16));
            }

            CFRelease(*(v10 - 8));
            v8 = *(v7 + 16) - 1;
          }
        }

        if (v8)
        {
          *(v7 + 16) = v8;
        }

        else
        {
          (*(*v7 + 24))(v7);
        }
      }
    }
  }
}

void sub_19DC48B10(_Unwind_Exception *a1, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, IPC::Encoder *a14)
{
  if (a12 == 1 && a10)
  {
    (*(*a10 + 8))(a10);
  }

  if (a14)
  {
    IPC::Encoder::~Encoder(a14, a2);
    bmalloc::api::tzoneFree(v18, v19);
  }

  WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref(v15);
  CFRelease(*(v16 - 8));
  if (v14[4] == 1)
  {
    (*(*v14 + 24))(v14);
  }

  else
  {
    --v14[4];
  }

  _Unwind_Resume(a1);
}

void WebKit::PlaybackSessionModelContext::setMuted(WebKit::PlaybackSessionModelContext *this, int a2)
{
  v27 = a2;
  if (*(this + 233) != a2)
  {
    v3 = *(this + 3);
    if (v3)
    {
      v4 = *(v3 + 8);
      if (v4)
      {
        v5 = *(v4 + 80);
        if (v5)
        {
          atomic_fetch_add(v5 + 2, 1u);
          v6 = *(this + 42);
          v24[0] = "PlaybackSessionModelContext";
          v24[1] = 28;
          v25 = "setMuted";
          v26 = v6;
          if (WTF::Logger::willLog<WTF::Logger::LogSiteIdentifier,BOOL>(v5, &WebKit2LogMedia, 0, v24))
          {
            WTF::Logger::log<WTF::Logger::LogSiteIdentifier,BOOL>(&WebKit2LogMedia, 0, v24);
          }

          if (atomic_fetch_add(v5 + 2, 0xFFFFFFFF) == 1)
          {
            atomic_store(1u, v5 + 2);
            (*(*v5 + 8))(v5);
          }
        }
      }

      v7 = *(this + 3);
      if (v7)
      {
        v8 = *(v7 + 8);
        if (v8)
        {
          v9 = *(v8 + 16);
          *(v8 + 16) = v9 + 1;
          v10 = *(this + 4);
          v11 = *(this + 5);
          v30[0] = v10;
          v30[1] = v11;
          v28 = v30;
          v29[0] = v27;
          v12 = *(v8 + 32);
          if (v12)
          {
            v13 = *(v12 + 8);
            if (v13)
            {
              CFRetain(*(v13 - 8));
              v24[0] = v11;
              {
                WebKit::WebProcessProxy::allProcessMap(void)::map = 0;
              }

              v14 = WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::CheckedRef<WebKit::WebProcessProxy,WTF::RawPtrTraits<WebKit::WebProcessProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::CheckedRef<WebKit::WebProcessProxy,WTF::RawPtrTraits<WebKit::WebProcessProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::CheckedRef<WebKit::WebProcessProxy,WTF::RawPtrTraits<WebKit::WebProcessProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::CheckedRef<WebKit::WebProcessProxy,WTF::RawPtrTraits<WebKit::WebProcessProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(&WebKit::WebProcessProxy::allProcessMap(void)::map, v24);
              if (v14)
              {
                v15 = v14;
                atomic_fetch_add(v14 + 4, 1u);
                v16 = WebKit::WebPageProxy::webPageIDInProcess((v13 - 16), v14);
                v18 = IPC::Encoder::operator new(0x238, v17);
                *v18 = 881;
                *(v18 + 2) = 0;
                *(v18 + 3) = 0;
                *(v18 + 1) = v16;
                *(v18 + 68) = 0;
                *(v18 + 70) = 0;
                *(v18 + 69) = 0;
                IPC::Encoder::encodeHeader(v18);
                v31 = v18;
                IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v18, *v28);
                IPC::Encoder::operator<<<BOOL &>(v18, v29);
                LOBYTE(v24[0]) = 0;
                LOBYTE(v25) = 0;
                WebKit::AuxiliaryProcessProxy::sendMessage(v15, &v31, 0, v24, 1);
                if (v25 == 1)
                {
                  v20 = v24[0];
                  v24[0] = 0;
                  if (v20)
                  {
                    (*(*v20 + 8))(v20);
                  }
                }

                v21 = v31;
                v31 = 0;
                if (v21)
                {
                  IPC::Encoder::~Encoder(v21, v19);
                  bmalloc::api::tzoneFree(v22, v23);
                }

                WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v15 + 16));
              }

              CFRelease(*(v13 - 8));
              v9 = *(v8 + 16) - 1;
            }
          }

          if (v9)
          {
            *(v8 + 16) = v9;
          }

          else
          {
            (*(*v8 + 24))(v8);
          }
        }
      }
    }
  }
}

void sub_19DC48EE0(_Unwind_Exception *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11)
{
  if (a11 == 1 && a9)
  {
    (*(*a9 + 8))(a9);
  }

  v16 = *(v14 - 56);
  *(v14 - 56) = 0;
  if (v16)
  {
    IPC::Encoder::~Encoder(v16, a2);
    bmalloc::api::tzoneFree(v17, v18);
  }

  WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref(v12);
  CFRelease(*(v13 - 8));
  if (v11[4] == 1)
  {
    (*(*v11 + 24))(v11);
  }

  else
  {
    --v11[4];
  }

  _Unwind_Resume(a1);
}

void WebKit::PlaybackSessionModelContext::setVolume(WebKit::PlaybackSessionModelContext *this, double a2)
{
  v28 = a2;
  if (*(this + 30) != a2)
  {
    v3 = *(this + 3);
    if (v3)
    {
      v4 = *(v3 + 8);
      if (v4)
      {
        v5 = *(v4 + 80);
        if (v5)
        {
          atomic_fetch_add(v5 + 2, 1u);
          v6 = *(this + 42);
          v25[0] = "PlaybackSessionModelContext";
          v25[1] = 28;
          v26 = "setVolume";
          v27 = v6;
          if (WTF::Logger::willLog<WTF::Logger::LogSiteIdentifier,double>(v5, &WebKit2LogMedia, 0, v25, &v28))
          {
            WTF::Logger::log<WTF::Logger::LogSiteIdentifier,double>(&WebKit2LogMedia, 0, v25, &v28);
          }

          if (atomic_fetch_add(v5 + 2, 0xFFFFFFFF) == 1)
          {
            atomic_store(1u, v5 + 2);
            (*(*v5 + 8))(v5);
          }
        }
      }

      v7 = *(this + 3);
      if (v7)
      {
        v8 = *(v7 + 8);
        if (v8)
        {
          v9 = *(v8 + 16);
          *(v8 + 16) = v9 + 1;
          v10 = *(v8 + 32);
          if (v10)
          {
            v11 = *(v10 + 8);
            if (v11)
            {
              v13 = *(this + 4);
              v12 = *(this + 5);
              v14 = v28;
              CFRetain(*(v11 - 8));
              v25[0] = v12;
              {
                WebKit::WebProcessProxy::allProcessMap(void)::map = 0;
              }

              v15 = WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::CheckedRef<WebKit::WebProcessProxy,WTF::RawPtrTraits<WebKit::WebProcessProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::CheckedRef<WebKit::WebProcessProxy,WTF::RawPtrTraits<WebKit::WebProcessProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::CheckedRef<WebKit::WebProcessProxy,WTF::RawPtrTraits<WebKit::WebProcessProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::CheckedRef<WebKit::WebProcessProxy,WTF::RawPtrTraits<WebKit::WebProcessProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(&WebKit::WebProcessProxy::allProcessMap(void)::map, v25);
              if (v15)
              {
                v16 = v15;
                atomic_fetch_add(v15 + 4, 1u);
                v17 = WebKit::WebPageProxy::webPageIDInProcess((v11 - 16), v15);
                v19 = IPC::Encoder::operator new(0x238, v18);
                *v19 = 886;
                *(v19 + 2) = 0;
                *(v19 + 3) = 0;
                *(v19 + 1) = v17;
                *(v19 + 68) = 0;
                *(v19 + 70) = 0;
                *(v19 + 69) = 0;
                IPC::Encoder::encodeHeader(v19);
                v29 = v19;
                IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v19, v13);
                IPC::ArgumentCoder<double,void>::encode<IPC::Encoder>(v19, v14);
                LOBYTE(v25[0]) = 0;
                LOBYTE(v26) = 0;
                WebKit::AuxiliaryProcessProxy::sendMessage(v16, &v29, 0, v25, 1);
                if (v26 == 1)
                {
                  v21 = v25[0];
                  v25[0] = 0;
                  if (v21)
                  {
                    (*(*v21 + 8))(v21);
                  }
                }

                v22 = v29;
                v29 = 0;
                if (v22)
                {
                  IPC::Encoder::~Encoder(v22, v20);
                  bmalloc::api::tzoneFree(v23, v24);
                }

                WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v16 + 16));
              }

              CFRelease(*(v11 - 8));
              v9 = *(v8 + 16) - 1;
            }
          }

          if (v9)
          {
            *(v8 + 16) = v9;
          }

          else
          {
            (*(*v8 + 24))(v8);
          }
        }
      }
    }
  }
}

void sub_19DC492B0(_Unwind_Exception *a1, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, IPC::Encoder *a14)
{
  if (a11 == 1 && a9)
  {
    (*(*a9 + 8))(a9);
  }

  if (a14)
  {
    IPC::Encoder::~Encoder(a14, a2);
    bmalloc::api::tzoneFree(v18, v19);
  }

  WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref(v15);
  CFRelease(*(v16 - 8));
  if (v14[4] == 1)
  {
    (*(*v14 + 24))(v14);
  }

  else
  {
    --v14[4];
  }

  _Unwind_Resume(a1);
}

void WebKit::PlaybackSessionModelContext::setPlayingOnSecondScreen(WebKit::PlaybackSessionModelContext *this, char a2)
{
  v27 = a2;
  v2 = *(this + 3);
  if (v2)
  {
    v4 = *(v2 + 8);
    if (v4)
    {
      v5 = *(v4 + 80);
      if (v5)
      {
        atomic_fetch_add(v5 + 2, 1u);
        v6 = *(this + 42);
        v24[0] = "PlaybackSessionModelContext";
        v24[1] = 28;
        v25 = "setPlayingOnSecondScreen";
        v26 = v6;
        if (WTF::Logger::willLog<WTF::Logger::LogSiteIdentifier,BOOL>(v5, &WebKit2LogMedia, 0, v24))
        {
          WTF::Logger::log<WTF::Logger::LogSiteIdentifier,BOOL>(&WebKit2LogMedia, 0, v24);
        }

        if (atomic_fetch_add(v5 + 2, 0xFFFFFFFF) == 1)
        {
          atomic_store(1u, v5 + 2);
          (*(*v5 + 8))(v5);
        }
      }
    }

    v7 = *(this + 3);
    if (v7)
    {
      v8 = *(v7 + 8);
      if (v8)
      {
        v9 = *(v8 + 16);
        *(v8 + 16) = v9 + 1;
        v10 = *(this + 4);
        v11 = *(this + 5);
        v30[0] = v10;
        v30[1] = v11;
        v28 = v30;
        v29[0] = v27;
        v12 = *(v8 + 32);
        if (v12)
        {
          v13 = *(v12 + 8);
          if (v13)
          {
            CFRetain(*(v13 - 8));
            v24[0] = v11;
            {
              WebKit::WebProcessProxy::allProcessMap(void)::map = 0;
            }

            v14 = WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::CheckedRef<WebKit::WebProcessProxy,WTF::RawPtrTraits<WebKit::WebProcessProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::CheckedRef<WebKit::WebProcessProxy,WTF::RawPtrTraits<WebKit::WebProcessProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::CheckedRef<WebKit::WebProcessProxy,WTF::RawPtrTraits<WebKit::WebProcessProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::CheckedRef<WebKit::WebProcessProxy,WTF::RawPtrTraits<WebKit::WebProcessProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(&WebKit::WebProcessProxy::allProcessMap(void)::map, v24);
            if (v14)
            {
              v15 = v14;
              atomic_fetch_add(v14 + 4, 1u);
              v16 = WebKit::WebPageProxy::webPageIDInProcess((v13 - 16), v14);
              v18 = IPC::Encoder::operator new(0x238, v17);
              *v18 = 884;
              *(v18 + 2) = 0;
              *(v18 + 3) = 0;
              *(v18 + 1) = v16;
              *(v18 + 68) = 0;
              *(v18 + 70) = 0;
              *(v18 + 69) = 0;
              IPC::Encoder::encodeHeader(v18);
              v31 = v18;
              IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v18, *v28);
              IPC::Encoder::operator<<<BOOL &>(v18, v29);
              LOBYTE(v24[0]) = 0;
              LOBYTE(v25) = 0;
              WebKit::AuxiliaryProcessProxy::sendMessage(v15, &v31, 0, v24, 1);
              if (v25 == 1)
              {
                v20 = v24[0];
                v24[0] = 0;
                if (v20)
                {
                  (*(*v20 + 8))(v20);
                }
              }

              v21 = v31;
              v31 = 0;
              if (v21)
              {
                IPC::Encoder::~Encoder(v21, v19);
                bmalloc::api::tzoneFree(v22, v23);
              }

              WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v15 + 16));
            }

            CFRelease(*(v13 - 8));
            v9 = *(v8 + 16) - 1;
          }
        }

        if (v9)
        {
          *(v8 + 16) = v9;
        }

        else
        {
          (*(*v8 + 24))(v8);
        }
      }
    }
  }
}

void sub_19DC49678(_Unwind_Exception *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11)
{
  if (a11 == 1 && a9)
  {
    (*(*a9 + 8))(a9);
  }

  v16 = *(v14 - 56);
  *(v14 - 56) = 0;
  if (v16)
  {
    IPC::Encoder::~Encoder(v16, a2);
    bmalloc::api::tzoneFree(v17, v18);
  }

  WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref(v12);
  CFRelease(*(v13 - 8));
  if (v11[4] == 1)
  {
    (*(*v11 + 24))(v11);
  }

  else
  {
    --v11[4];
  }

  _Unwind_Resume(a1);
}

double WebKit::PlaybackSessionModelContext::playbackStartedTimeChanged(WebKit::PlaybackSessionModelContext *this, double a2)
{
  v9 = a2;
  v3 = *(this + 3);
  if (v3)
  {
    v4 = *(v3 + 8);
    if (v4)
    {
      v5 = *(v4 + 80);
      if (v5)
      {
        atomic_fetch_add(v5 + 2, 1u);
        v6 = *(this + 42);
        v8[0] = "PlaybackSessionModelContext";
        v8[1] = 28;
        v8[2] = "playbackStartedTimeChanged";
        v8[3] = v6;
        if (WTF::Logger::willLog<WTF::Logger::LogSiteIdentifier,double>(v5, &WebKit2LogMedia, 0, v8, &v9))
        {
          WTF::Logger::log<WTF::Logger::LogSiteIdentifier,double>(&WebKit2LogMedia, 0, v8, &v9);
        }

        if (atomic_fetch_add(v5 + 2, 0xFFFFFFFF) == 1)
        {
          atomic_store(1u, v5 + 2);
          (*(*v5 + 8))(v5);
        }
      }
    }
  }

  result = v9;
  *(this + 8) = v9;
  *(this + 72) = 0;
  return result;
}

void sub_19DC4988C(_Unwind_Exception *exception_object)
{
  if (atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v1 + 2);
    (*(*v1 + 8))(v1);
  }

  _Unwind_Resume(exception_object);
}

unsigned int *WTF::Vector<WebCore::MediaSelectionOption,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::operator=(unsigned int *a1, unsigned int *a2)
{
  if (a2 != a1)
  {
    v4 = a1[3];
    v5 = a2[3];
    if (v4 <= v5)
    {
      if (v5 > a1[2])
      {
        WTF::Vector<WebCore::MediaSelectionOption,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity(a1, 0);
        WTF::Vector<WebCore::MediaSelectionOption,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, a2[3]);
        v4 = a1[3];
      }
    }

    else
    {
      WTF::VectorDestructor<true,WebCore::TextList>::destruct((*a1 + 24 * v5), (*a1 + 24 * v4));
      a1[3] = v5;
      v4 = v5;
    }

    v6 = *a2;
    v7 = *a1;
    if (v4)
    {
      v8 = v6 + 24 * v4;
      do
      {
        *v7 = *v6;
        WTF::String::operator=((v7 + 8), (v6 + 8));
        *(v7 + 16) = *(v6 + 16);
        v6 += 24;
        v7 += 24;
      }

      while (v6 != v8);
      v6 = *a2;
      v4 = a1[3];
      v7 = *a1;
    }

    v9 = a2[3];
    if (v4 != v9)
    {
      v10 = v6 + 24 * v9;
      v11 = v7 + 24 * v4;
      v12 = v6 + 24 * v4;
      do
      {
        *v11 = *v12;
        v13 = *(v12 + 8);
        if (v13)
        {
          atomic_fetch_add_explicit(v13, 2u, memory_order_relaxed);
        }

        *(v11 + 8) = v13;
        *(v11 + 16) = *(v12 + 16);
        v11 += 24;
        v12 += 24;
      }

      while (v12 != v10);
      v4 = a2[3];
    }

    a1[3] = v4;
  }

  return a1;
}

void WebKit::PlaybackSessionManagerProxy::~PlaybackSessionManagerProxy(WebKit::PlaybackSessionManagerProxy *this)
{
  *this = &unk_1F11007D0;
  v2 = *(this + 10);
  atomic_fetch_add(v2 + 2, 1u);
  v3 = *(this + 11);
  v11[0] = "PlaybackSessionManagerProxy";
  v11[1] = 28;
  v11[2] = "~PlaybackSessionManagerProxy";
  v11[3] = v3;
  if (WTF::Logger::willLog<WTF::Logger::LogSiteIdentifier>(v2, &WebKit2LogMedia, 0, v11))
  {
    WTF::Logger::log<WTF::Logger::LogSiteIdentifier>(&WebKit2LogMedia, 0, v11);
  }

  if (v2 && atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v2 + 2);
    (*(*v2 + 8))(v2);
  }

  v5 = *(this + 4);
  if (v5 && *(v5 + 8))
  {
    WebKit::PlaybackSessionManagerProxy::invalidate(this);
  }

  v6 = *(this + 10);
  *(this + 10) = 0;
  if (v6 && atomic_fetch_add(v6 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v6 + 2);
    (*(*v6 + 8))(v6);
  }

  v7 = *(this + 9);
  if (v7)
  {
    WTF::fastFree((v7 - 16), v4);
  }

  v8 = *(this + 5);
  if (v8)
  {
    WTF::HashTable<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::tuple<WTF::Ref<WebKit::PlaybackSessionModelContext,WTF::RawPtrTraits<WebKit::PlaybackSessionModelContext>,WTF::DefaultRefDerefTraits<WebKit::PlaybackSessionModelContext>>,WTF::Ref<WebCore::PlaybackSessionInterfaceIOS,WTF::RawPtrTraits<WebCore::PlaybackSessionInterfaceIOS>,WTF::DefaultRefDerefTraits<WebCore::PlaybackSessionInterfaceIOS>>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::tuple<WTF::Ref<WebKit::PlaybackSessionModelContext,WTF::RawPtrTraits<WebKit::PlaybackSessionModelContext>,WTF::DefaultRefDerefTraits<WebKit::PlaybackSessionModelContext>>,WTF::Ref<WebCore::PlaybackSessionInterfaceIOS,WTF::RawPtrTraits<WebCore::PlaybackSessionInterfaceIOS>,WTF::DefaultRefDerefTraits<WebCore::PlaybackSessionInterfaceIOS>>>>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashMap<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::tuple<WTF::Ref<WebKit::PlaybackSessionModelContext,WTF::RawPtrTraits<WebKit::PlaybackSessionModelContext>,WTF::DefaultRefDerefTraits<WebKit::PlaybackSessionModelContext>>,WTF::Ref<WebCore::PlaybackSessionInterfaceIOS,WTF::RawPtrTraits<WebCore::PlaybackSessionInterfaceIOS>,WTF::DefaultRefDerefTraits<WebCore::PlaybackSessionInterfaceIOS>>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<std::tuple<WTF::Ref<WebKit::PlaybackSessionModelContext,WTF::RawPtrTraits<WebKit::PlaybackSessionModelContext>,WTF::DefaultRefDerefTraits<WebKit::PlaybackSessionModelContext>>,WTF::Ref<WebCore::PlaybackSessionInterfaceIOS,WTF::RawPtrTraits<WebCore::PlaybackSessionInterfaceIOS>,WTF::DefaultRefDerefTraits<WebCore::PlaybackSessionInterfaceIOS>>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::FastMalloc>::deallocateTable(v8, v4);
  }

  v9 = *(this + 4);
  *(this + 4) = 0;
  if (v9 && atomic_fetch_add(v9, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v9);
    WTF::fastFree(v9, v4);
  }

  *this = &unk_1F10EA5E0;
  WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::~WeakPtrFactory(this + 1, v4);
  WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::~WeakPtrFactory(this + 3, v10);
  if (*(this + 4) != 1)
  {
    __break(0xC471u);
  }
}

{
  WebKit::PlaybackSessionManagerProxy::~PlaybackSessionManagerProxy(this);

  WTF::fastFree(v1, v2);
}

void sub_19DC49C0C(_Unwind_Exception *a1, void *a2)
{
  v4 = *(v2 + 80);
  *(v2 + 80) = 0;
  if (v4 && atomic_fetch_add(v4 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v4 + 2);
    (*(*v4 + 8))(v4);
  }

  v5 = *(v2 + 72);
  if (v5)
  {
    WTF::fastFree((v5 - 16), a2);
  }

  v6 = *(v2 + 40);
  if (v6)
  {
    WTF::HashTable<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::tuple<WTF::Ref<WebKit::PlaybackSessionModelContext,WTF::RawPtrTraits<WebKit::PlaybackSessionModelContext>,WTF::DefaultRefDerefTraits<WebKit::PlaybackSessionModelContext>>,WTF::Ref<WebCore::PlaybackSessionInterfaceIOS,WTF::RawPtrTraits<WebCore::PlaybackSessionInterfaceIOS>,WTF::DefaultRefDerefTraits<WebCore::PlaybackSessionInterfaceIOS>>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::tuple<WTF::Ref<WebKit::PlaybackSessionModelContext,WTF::RawPtrTraits<WebKit::PlaybackSessionModelContext>,WTF::DefaultRefDerefTraits<WebKit::PlaybackSessionModelContext>>,WTF::Ref<WebCore::PlaybackSessionInterfaceIOS,WTF::RawPtrTraits<WebCore::PlaybackSessionInterfaceIOS>,WTF::DefaultRefDerefTraits<WebCore::PlaybackSessionInterfaceIOS>>>>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashMap<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::tuple<WTF::Ref<WebKit::PlaybackSessionModelContext,WTF::RawPtrTraits<WebKit::PlaybackSessionModelContext>,WTF::DefaultRefDerefTraits<WebKit::PlaybackSessionModelContext>>,WTF::Ref<WebCore::PlaybackSessionInterfaceIOS,WTF::RawPtrTraits<WebCore::PlaybackSessionInterfaceIOS>,WTF::DefaultRefDerefTraits<WebCore::PlaybackSessionInterfaceIOS>>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<std::tuple<WTF::Ref<WebKit::PlaybackSessionModelContext,WTF::RawPtrTraits<WebKit::PlaybackSessionModelContext>,WTF::DefaultRefDerefTraits<WebKit::PlaybackSessionModelContext>>,WTF::Ref<WebCore::PlaybackSessionInterfaceIOS,WTF::RawPtrTraits<WebCore::PlaybackSessionInterfaceIOS>,WTF::DefaultRefDerefTraits<WebCore::PlaybackSessionInterfaceIOS>>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::FastMalloc>::deallocateTable(v6, a2);
  }

  v7 = *(v2 + 32);
  *(v2 + 32) = 0;
  if (v7 && atomic_fetch_add(v7, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v7);
    WTF::fastFree(v7, a2);
  }

  *v2 = &unk_1F10EA5E0;
  WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::~WeakPtrFactory((v2 + 8), a2);
  WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::~WeakPtrFactory((v2 + 24), v8);
  if (*(v2 + 16) == 1)
  {
    _Unwind_Resume(a1);
  }

  __break(0xC471u);
}

void WebKit::PlaybackSessionManagerProxy::invalidate(WebKit::PlaybackSessionManagerProxy *this)
{
  v2 = *(this + 10);
  atomic_fetch_add(v2 + 2, 1u);
  v3 = *(this + 11);
  v19[0] = "PlaybackSessionManagerProxy";
  v19[1] = 28;
  v19[2] = "invalidate";
  v19[3] = v3;
  if (WTF::Logger::willLog<WTF::Logger::LogSiteIdentifier>(v2, &WebKit2LogMedia, 0, v19))
  {
    WTF::Logger::log<WTF::Logger::LogSiteIdentifier>(&WebKit2LogMedia, 0, v19);
  }

  if (v2 && atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v2 + 2);
    (*(*v2 + 8))(v2);
  }

  v5 = *(this + 4);
  if (v5)
  {
    v6 = *(v5 + 8);
    if (v6)
    {
      CFRetain(*(v6 - 8));
      v7 = *(v6 + 336);
      atomic_fetch_add((v7 + 16), 1u);
      IPC::MessageReceiverMap::removeMessageReceiver(v7 + 96, 0x32u, *(v6 + 32));
      if (v7)
      {
        WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v7 + 16));
      }

      v9 = *(this + 4);
      *(this + 4) = 0;
      if (v9 && atomic_fetch_add(v9, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v9);
        WTF::fastFree(v9, v8);
      }

      CFRelease(*(v6 - 8));
    }
  }

  v10 = *(this + 5);
  *(this + 5) = 0;
  v11 = *(this + 9);
  if (v11)
  {
    *(this + 9) = 0;
    WTF::fastFree((v11 - 16), v4);
  }

  if (v10)
  {
    v12 = *(v10 - 4);
    v13 = v10 + 32 * v12;
    if (*(v10 - 12))
    {
      if (v12)
      {
        v14 = 32 * v12;
        v15 = v10;
        while (*v15 == 0 || *(v15 + 8) == -1)
        {
          v15 += 32;
          v14 -= 32;
          if (!v14)
          {
            v15 = v13;
            goto LABEL_31;
          }
        }
      }

      else
      {
        v15 = v10;
      }

      goto LABEL_31;
    }
  }

  else
  {
    v13 = 0;
    v12 = 0;
  }

  v15 = v13;
  v13 = v10 + 32 * v12;
  if (!v10)
  {
    v17 = 0;
    goto LABEL_32;
  }

LABEL_31:
  v17 = v10 + 32 * *(v10 - 4);
LABEL_32:
  while (v15 != v17)
  {
    (*(**(v15 + 24) + 224))(*(v15 + 24));
    do
    {
      v15 += 32;
      if (v15 == v13)
      {
        break;
      }
    }

    while (*v15 == 0 || *(v15 + 8) == -1);
  }

  if (v10)
  {
    WTF::HashTable<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::tuple<WTF::Ref<WebKit::PlaybackSessionModelContext,WTF::RawPtrTraits<WebKit::PlaybackSessionModelContext>,WTF::DefaultRefDerefTraits<WebKit::PlaybackSessionModelContext>>,WTF::Ref<WebCore::PlaybackSessionInterfaceIOS,WTF::RawPtrTraits<WebCore::PlaybackSessionInterfaceIOS>,WTF::DefaultRefDerefTraits<WebCore::PlaybackSessionInterfaceIOS>>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::tuple<WTF::Ref<WebKit::PlaybackSessionModelContext,WTF::RawPtrTraits<WebKit::PlaybackSessionModelContext>,WTF::DefaultRefDerefTraits<WebKit::PlaybackSessionModelContext>>,WTF::Ref<WebCore::PlaybackSessionInterfaceIOS,WTF::RawPtrTraits<WebCore::PlaybackSessionInterfaceIOS>,WTF::DefaultRefDerefTraits<WebCore::PlaybackSessionInterfaceIOS>>>>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashMap<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::tuple<WTF::Ref<WebKit::PlaybackSessionModelContext,WTF::RawPtrTraits<WebKit::PlaybackSessionModelContext>,WTF::DefaultRefDerefTraits<WebKit::PlaybackSessionModelContext>>,WTF::Ref<WebCore::PlaybackSessionInterfaceIOS,WTF::RawPtrTraits<WebCore::PlaybackSessionInterfaceIOS>,WTF::DefaultRefDerefTraits<WebCore::PlaybackSessionInterfaceIOS>>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<std::tuple<WTF::Ref<WebKit::PlaybackSessionModelContext,WTF::RawPtrTraits<WebKit::PlaybackSessionModelContext>,WTF::DefaultRefDerefTraits<WebKit::PlaybackSessionModelContext>>,WTF::Ref<WebCore::PlaybackSessionInterfaceIOS,WTF::RawPtrTraits<WebCore::PlaybackSessionInterfaceIOS>,WTF::DefaultRefDerefTraits<WebCore::PlaybackSessionInterfaceIOS>>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::FastMalloc>::deallocateTable(v10, v4);
  }
}

void sub_19DC49F94(_Unwind_Exception *exception_object, void *a2)
{
  if (v2)
  {
    WTF::HashTable<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::tuple<WTF::Ref<WebKit::PlaybackSessionModelContext,WTF::RawPtrTraits<WebKit::PlaybackSessionModelContext>,WTF::DefaultRefDerefTraits<WebKit::PlaybackSessionModelContext>>,WTF::Ref<WebCore::PlaybackSessionInterfaceIOS,WTF::RawPtrTraits<WebCore::PlaybackSessionInterfaceIOS>,WTF::DefaultRefDerefTraits<WebCore::PlaybackSessionInterfaceIOS>>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::tuple<WTF::Ref<WebKit::PlaybackSessionModelContext,WTF::RawPtrTraits<WebKit::PlaybackSessionModelContext>,WTF::DefaultRefDerefTraits<WebKit::PlaybackSessionModelContext>>,WTF::Ref<WebCore::PlaybackSessionInterfaceIOS,WTF::RawPtrTraits<WebCore::PlaybackSessionInterfaceIOS>,WTF::DefaultRefDerefTraits<WebCore::PlaybackSessionInterfaceIOS>>>>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashMap<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::tuple<WTF::Ref<WebKit::PlaybackSessionModelContext,WTF::RawPtrTraits<WebKit::PlaybackSessionModelContext>,WTF::DefaultRefDerefTraits<WebKit::PlaybackSessionModelContext>>,WTF::Ref<WebCore::PlaybackSessionInterfaceIOS,WTF::RawPtrTraits<WebCore::PlaybackSessionInterfaceIOS>,WTF::DefaultRefDerefTraits<WebCore::PlaybackSessionInterfaceIOS>>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<std::tuple<WTF::Ref<WebKit::PlaybackSessionModelContext,WTF::RawPtrTraits<WebKit::PlaybackSessionModelContext>,WTF::DefaultRefDerefTraits<WebKit::PlaybackSessionModelContext>>,WTF::Ref<WebCore::PlaybackSessionInterfaceIOS,WTF::RawPtrTraits<WebCore::PlaybackSessionInterfaceIOS>,WTF::DefaultRefDerefTraits<WebCore::PlaybackSessionInterfaceIOS>>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::FastMalloc>::deallocateTable(v2, a2);
  }

  _Unwind_Resume(exception_object);
}

unint64_t *WebKit::PlaybackSessionManagerProxy::ensureModelAndInterface(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *&v27 = a2;
  *(&v27 + 1) = a3;
  if (!(a2 | a3))
  {
    __break(0xC471u);
    JUMPOUT(0x19DC4A35CLL);
  }

  if (a3 == -1)
  {
    __break(0xC471u);
LABEL_40:
    JUMPOUT(0x19DC4A33CLL);
  }

  v4 = *(a1 + 40);
  if (v4 || (WTF::HashTable<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::tuple<WTF::Ref<WebKit::PlaybackSessionModelContext,WTF::RawPtrTraits<WebKit::PlaybackSessionModelContext>,WTF::DefaultRefDerefTraits<WebKit::PlaybackSessionModelContext>>,WTF::Ref<WebCore::PlaybackSessionInterfaceIOS,WTF::RawPtrTraits<WebCore::PlaybackSessionInterfaceIOS>,WTF::DefaultRefDerefTraits<WebCore::PlaybackSessionInterfaceIOS>>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::tuple<WTF::Ref<WebKit::PlaybackSessionModelContext,WTF::RawPtrTraits<WebKit::PlaybackSessionModelContext>,WTF::DefaultRefDerefTraits<WebKit::PlaybackSessionModelContext>>,WTF::Ref<WebCore::PlaybackSessionInterfaceIOS,WTF::RawPtrTraits<WebCore::PlaybackSessionInterfaceIOS>,WTF::DefaultRefDerefTraits<WebCore::PlaybackSessionInterfaceIOS>>>>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashMap<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::tuple<WTF::Ref<WebKit::PlaybackSessionModelContext,WTF::RawPtrTraits<WebKit::PlaybackSessionModelContext>,WTF::DefaultRefDerefTraits<WebKit::PlaybackSessionModelContext>>,WTF::Ref<WebCore::PlaybackSessionInterfaceIOS,WTF::RawPtrTraits<WebCore::PlaybackSessionInterfaceIOS>,WTF::DefaultRefDerefTraits<WebCore::PlaybackSessionInterfaceIOS>>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<std::tuple<WTF::Ref<WebKit::PlaybackSessionModelContext,WTF::RawPtrTraits<WebKit::PlaybackSessionModelContext>,WTF::DefaultRefDerefTraits<WebKit::PlaybackSessionModelContext>>,WTF::Ref<WebCore::PlaybackSessionInterfaceIOS,WTF::RawPtrTraits<WebCore::PlaybackSessionInterfaceIOS>,WTF::DefaultRefDerefTraits<WebCore::PlaybackSessionInterfaceIOS>>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::FastMalloc>::expand((a1 + 40), 0), (v4 = *(a1 + 40)) != 0))
  {
    v5 = *(v4 - 8);
  }

  else
  {
    v5 = 0;
  }

  v6 = WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>::hash(&v27) & v5;
  v7 = (v4 + 32 * v6);
  v9 = *v7;
  v8 = v7[1];
  if (*v7 != 0)
  {
    v10 = 0;
    v11 = 1;
    do
    {
      if (__PAIR128__(v8, v9) == v27)
      {
        return v7 + 2;
      }

      if (v8 == -1)
      {
        v10 = v7;
      }

      v6 = (v6 + v11) & v5;
      v7 = (v4 + 32 * v6);
      v9 = *v7;
      v8 = v7[1];
      ++v11;
    }

    while (*v7 != 0);
    if (v10)
    {
      *v10 = 0u;
      *(v10 + 1) = 0u;
      --*(*(a1 + 40) - 16);
      v7 = v10;
    }
  }

  *v7 = v27;
  v12 = *(a1 + 32);
  if (!v12 || (v13 = *(v12 + 8)) == 0)
  {
    __break(0xC471u);
    goto LABEL_40;
  }

  v26 = v27;
  CFRetain(*(v13 - 8));
  if (WebKit::PlaybackSessionModelContext::s_heapRef)
  {
    NonCompact = bmalloc::api::tzoneAllocateNonCompact(WebKit::PlaybackSessionModelContext::s_heapRef, v14);
  }

  else
  {
    NonCompact = WebKit::PlaybackSessionModelContext::operatorNewSlow(0);
  }

  v16 = NonCompact;
  NonCompact[1] = 0;
  NonCompact[2] = 1;
  *NonCompact = &unk_1F11005A8;
  WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::initializeIfNeeded((a1 + 24), a1);
  v17 = *(a1 + 24);
  atomic_fetch_add(v17, 1u);
  v16[6] = 0;
  v16[3] = v17;
  *(v16 + 2) = v26;
  v16[7] = 0;
  v16[8] = 0;
  *(v16 + 72) = 0;
  v16[11] = 0;
  v16[12] = 0;
  v16[10] = 0;
  *(v16 + 52) = 0;
  v16[14] = 0;
  v16[15] = 0;
  WebCore::PlatformTimeRanges::PlatformTimeRanges((v16 + 16));
  v16[28] = 0;
  *(v16 + 116) = 0;
  *(v16 + 264) = 0;
  *(v16 + 272) = 0;
  *(v16 + 280) = 0;
  *(v16 + 284) = 0;
  *(v16 + 304) = 0;
  *(v16 + 312) = 0;
  *(v16 + 328) = 0;
  v16[42] = 0;
  v16[18] = 0;
  v16[19] = 0;
  *(v16 + 160) = 0;
  *(v16 + 21) = 0u;
  *(v16 + 23) = 0u;
  *(v16 + 25) = 0u;
  *(v16 + 108) = 0;
  *(v16 + 247) = 0;
  v16[30] = 0;
  WebCore::PlaybackSessionInterfaceAVKitLegacy::create();
  v18 = v28;
  CFRelease(*(v13 - 8));
  v19 = v7[2];
  v7[2] = v16;
  if (v19)
  {
    if (v19[4] == 1)
    {
      (*(*v19 + 8))(v19);
    }

    else
    {
      --v19[4];
    }
  }

  v20 = v7[3];
  v7[3] = v18;
  if (v20)
  {
    if (v20[4] == 1)
    {
      (*(*v20 + 8))(v20);
    }

    else
    {
      --v20[4];
    }
  }

  v21 = *(a1 + 40);
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
      return v7 + 2;
    }

    goto LABEL_29;
  }

  if (3 * v24 <= 4 * v23)
  {
LABEL_29:
    v7 = WTF::HashTable<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::tuple<WTF::Ref<WebKit::PlaybackSessionModelContext,WTF::RawPtrTraits<WebKit::PlaybackSessionModelContext>,WTF::DefaultRefDerefTraits<WebKit::PlaybackSessionModelContext>>,WTF::Ref<WebCore::PlaybackSessionInterfaceIOS,WTF::RawPtrTraits<WebCore::PlaybackSessionInterfaceIOS>,WTF::DefaultRefDerefTraits<WebCore::PlaybackSessionInterfaceIOS>>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::tuple<WTF::Ref<WebKit::PlaybackSessionModelContext,WTF::RawPtrTraits<WebKit::PlaybackSessionModelContext>,WTF::DefaultRefDerefTraits<WebKit::PlaybackSessionModelContext>>,WTF::Ref<WebCore::PlaybackSessionInterfaceIOS,WTF::RawPtrTraits<WebCore::PlaybackSessionInterfaceIOS>,WTF::DefaultRefDerefTraits<WebCore::PlaybackSessionInterfaceIOS>>>>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashMap<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::tuple<WTF::Ref<WebKit::PlaybackSessionModelContext,WTF::RawPtrTraits<WebKit::PlaybackSessionModelContext>,WTF::DefaultRefDerefTraits<WebKit::PlaybackSessionModelContext>>,WTF::Ref<WebCore::PlaybackSessionInterfaceIOS,WTF::RawPtrTraits<WebCore::PlaybackSessionInterfaceIOS>,WTF::DefaultRefDerefTraits<WebCore::PlaybackSessionInterfaceIOS>>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<std::tuple<WTF::Ref<WebKit::PlaybackSessionModelContext,WTF::RawPtrTraits<WebKit::PlaybackSessionModelContext>,WTF::DefaultRefDerefTraits<WebKit::PlaybackSessionModelContext>>,WTF::Ref<WebCore::PlaybackSessionInterfaceIOS,WTF::RawPtrTraits<WebCore::PlaybackSessionInterfaceIOS>,WTF::DefaultRefDerefTraits<WebCore::PlaybackSessionInterfaceIOS>>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::FastMalloc>::expand((a1 + 40), v7);
  }

  return v7 + 2;
}

void sub_19DC4A380(_Unwind_Exception *a1)
{
  if (v1[4] == 1)
  {
    (*(*v1 + 8))(v1);
  }

  else
  {
    --v1[4];
  }

  CFRelease(*(v2 - 8));
  _Unwind_Resume(a1);
}

uint64_t WebKit::PlaybackSessionManagerProxy::removeClientForContext(uint64_t result, uint64_t a2, uint64_t a3)
{
  v31 = a2;
  v32 = a3;
  v3 = (result + 72);
  v4 = *(result + 72);
  if (!v4)
  {
    return result;
  }

  if (!(a2 | a3) || a3 == -1)
  {
    __break(0xC471u);
    JUMPOUT(0x19DC4A774);
  }

  v5 = result;
  v6 = *(v4 - 8);
  result = WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>::hash(&v31);
  v7 = result & v6;
  v8 = v4 + 24 * (result & v6);
  v9 = *v8;
  v10 = *(v8 + 8);
  if (*v8 == v31 && v10 == v32)
  {
LABEL_15:
    v14 = *v3;
    if (!*v3)
    {
      v15 = 0;
      v16 = 1;
      goto LABEL_20;
    }
  }

  else
  {
    v12 = 1;
    while (v9 | v10)
    {
      v7 = (v7 + v12) & v6;
      v8 = v4 + 24 * v7;
      v9 = *v8;
      v10 = *(v8 + 8);
      ++v12;
      if (*v8 == v31 && v10 == v32)
      {
        goto LABEL_15;
      }
    }

    v14 = *v3;
    if (!*v3)
    {
      return result;
    }

    v8 = v14 + 24 * *(v14 - 4);
  }

  v16 = 0;
  v15 = v14 + 24 * *(v14 - 4);
LABEL_20:
  if (v15 == v8)
  {
    return result;
  }

  if (*(v8 + 16) != 1)
  {
    --*(v8 + 16);
    return result;
  }

  if (v16)
  {
    v17 = 0;
LABEL_27:
    if (v17 != v8)
    {
      *v8 = -1;
      *(v8 + 8) = -1;
      v18 = *v3;
      v19 = vadd_s32(*(*v3 - 16), 0xFFFFFFFF00000001);
      *(v18 - 16) = v19;
      v20 = *(v18 - 4);
      if (6 * v19.i32[1] < v20 && v20 >= 9)
      {
        WTF::HashTable<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,unsigned int>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,unsigned int>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashMap<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,unsigned int,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::FastMalloc>::rehash(v3, v20 >> 1, 0);
      }
    }

    goto LABEL_34;
  }

  v17 = v14 + 24 * *(v14 - 4);
  if (v17 != v8)
  {
    goto LABEL_27;
  }

LABEL_34:
  v22 = WebKit::PlaybackSessionManagerProxy::ensureModelAndInterface(v5, v31, v32)[1];
  ++v22[4];
  (*(*v22 + 224))(v22);
  if (v22[4] == 1)
  {
    (*(*v22 + 8))(v22);
  }

  else
  {
    --v22[4];
  }

  result = WTF::HashTable<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::tuple<WTF::Ref<WebKit::PlaybackSessionModelContext,WTF::RawPtrTraits<WebKit::PlaybackSessionModelContext>,WTF::DefaultRefDerefTraits<WebKit::PlaybackSessionModelContext>>,WTF::Ref<WebCore::PlaybackSessionInterfaceIOS,WTF::RawPtrTraits<WebCore::PlaybackSessionInterfaceIOS>,WTF::DefaultRefDerefTraits<WebCore::PlaybackSessionInterfaceIOS>>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::tuple<WTF::Ref<WebKit::PlaybackSessionModelContext,WTF::RawPtrTraits<WebKit::PlaybackSessionModelContext>,WTF::DefaultRefDerefTraits<WebKit::PlaybackSessionModelContext>>,WTF::Ref<WebCore::PlaybackSessionInterfaceIOS,WTF::RawPtrTraits<WebCore::PlaybackSessionInterfaceIOS>,WTF::DefaultRefDerefTraits<WebCore::PlaybackSessionInterfaceIOS>>>>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashMap<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::tuple<WTF::Ref<WebKit::PlaybackSessionModelContext,WTF::RawPtrTraits<WebKit::PlaybackSessionModelContext>,WTF::DefaultRefDerefTraits<WebKit::PlaybackSessionModelContext>>,WTF::Ref<WebCore::PlaybackSessionInterfaceIOS,WTF::RawPtrTraits<WebCore::PlaybackSessionInterfaceIOS>,WTF::DefaultRefDerefTraits<WebCore::PlaybackSessionInterfaceIOS>>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<std::tuple<WTF::Ref<WebKit::PlaybackSessionModelContext,WTF::RawPtrTraits<WebKit::PlaybackSessionModelContext>,WTF::DefaultRefDerefTraits<WebKit::PlaybackSessionModelContext>>,WTF::Ref<WebCore::PlaybackSessionInterfaceIOS,WTF::RawPtrTraits<WebCore::PlaybackSessionInterfaceIOS>,WTF::DefaultRefDerefTraits<WebCore::PlaybackSessionInterfaceIOS>>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::tuple<WTF::Ref<WebKit::PlaybackSessionModelContext,WTF::RawPtrTraits<WebKit::PlaybackSessionModelContext>,WTF::DefaultRefDerefTraits<WebKit::PlaybackSessionModelContext>>,WTF::Ref<WebCore::PlaybackSessionInterfaceIOS,WTF::RawPtrTraits<WebCore::PlaybackSessionInterfaceIOS>,WTF::DefaultRefDerefTraits<WebCore::PlaybackSessionInterfaceIOS>>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<std::tuple<WTF::Ref<WebKit::PlaybackSessionModelContext,WTF::RawPtrTraits<WebKit::PlaybackSessionModelContext>,WTF::DefaultRefDerefTraits<WebKit::PlaybackSessionModelContext>>,WTF::Ref<WebCore::PlaybackSessionInterfaceIOS,WTF::RawPtrTraits<WebCore::PlaybackSessionInterfaceIOS>,WTF::DefaultRefDerefTraits<WebCore::PlaybackSessionInterfaceIOS>>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>,(WTF::ShouldValidateKey)1,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>( (v5 + 40),  &v31);
  v23 = result;
  v24 = *(v5 + 40);
  if (v24)
  {
    v25 = v24 + 32 * *(v24 - 4);
    if (v25 == result)
    {
      return result;
    }
  }

  else
  {
    if (!result)
    {
      return result;
    }

    v25 = 0;
  }

  if (v25 != result)
  {
    *result = -1;
    *(result + 8) = -1;
    v26 = *(result + 24);
    *(v23 + 24) = 0;
    if (v26)
    {
      if (v26[4] == 1)
      {
        (*(*v26 + 8))(v26);
      }

      else
      {
        --v26[4];
      }
    }

    result = *(v23 + 16);
    *(v23 + 16) = 0;
    if (result)
    {
      if (*(result + 16) == 1)
      {
        result = (*(*result + 8))(result);
      }

      else
      {
        --*(result + 16);
      }
    }

    v27 = *(v5 + 40);
    v28 = vadd_s32(*(v27 - 16), 0xFFFFFFFF00000001);
    *(v27 - 16) = v28;
    v29 = *(v27 - 4);
    if (6 * v28.i32[1] < v29 && v29 >= 9)
    {
      return WTF::HashTable<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::tuple<WTF::Ref<WebKit::PlaybackSessionModelContext,WTF::RawPtrTraits<WebKit::PlaybackSessionModelContext>,WTF::DefaultRefDerefTraits<WebKit::PlaybackSessionModelContext>>,WTF::Ref<WebCore::PlaybackSessionInterfaceIOS,WTF::RawPtrTraits<WebCore::PlaybackSessionInterfaceIOS>,WTF::DefaultRefDerefTraits<WebCore::PlaybackSessionInterfaceIOS>>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::tuple<WTF::Ref<WebKit::PlaybackSessionModelContext,WTF::RawPtrTraits<WebKit::PlaybackSessionModelContext>,WTF::DefaultRefDerefTraits<WebKit::PlaybackSessionModelContext>>,WTF::Ref<WebCore::PlaybackSessionInterfaceIOS,WTF::RawPtrTraits<WebCore::PlaybackSessionInterfaceIOS>,WTF::DefaultRefDerefTraits<WebCore::PlaybackSessionInterfaceIOS>>>>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashMap<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::tuple<WTF::Ref<WebKit::PlaybackSessionModelContext,WTF::RawPtrTraits<WebKit::PlaybackSessionModelContext>,WTF::DefaultRefDerefTraits<WebKit::PlaybackSessionModelContext>>,WTF::Ref<WebCore::PlaybackSessionInterfaceIOS,WTF::RawPtrTraits<WebCore::PlaybackSessionInterfaceIOS>,WTF::DefaultRefDerefTraits<WebCore::PlaybackSessionInterfaceIOS>>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<std::tuple<WTF::Ref<WebKit::PlaybackSessionModelContext,WTF::RawPtrTraits<WebKit::PlaybackSessionModelContext>,WTF::DefaultRefDerefTraits<WebKit::PlaybackSessionModelContext>>,WTF::Ref<WebCore::PlaybackSessionInterfaceIOS,WTF::RawPtrTraits<WebCore::PlaybackSessionInterfaceIOS>,WTF::DefaultRefDerefTraits<WebCore::PlaybackSessionInterfaceIOS>>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::FastMalloc>::rehash((v5 + 40), v29 >> 1, 0);
    }
  }

  return result;
}

void sub_19DC4A798(_Unwind_Exception *exception_object)
{
  if (v1[4] == 1)
  {
    (*(*v1 + 8))(v1);
  }

  else
  {
    --v1[4];
  }

  _Unwind_Resume(exception_object);
}

void WebKit::PlaybackSessionManagerProxy::setUpPlaybackControlsManagerWithID(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v8 = *(a1 + 48);
  if (v8)
  {
    v9 = *(a1 + 56);
    if (v8 == a2 && v9 == a3)
    {
      return;
    }

    WebKit::PlaybackSessionManagerProxy::removeClientForContext(a1, v8, v9);
  }

  *(a1 + 48) = a2;
  *(a1 + 56) = a3;
  *(a1 + 64) = a4;
  if (!a2)
  {
    goto LABEL_16;
  }

  v11 = WebKit::PlaybackSessionManagerProxy::ensureModelAndInterface(a1, a2, a3)[1];
  ++v11[4];
  (*(*v11 + 208))(v11);
  if (v11[4] == 1)
  {
    (*(*v11 + 8))(v11);
  }

  else
  {
    --v11[4];
  }

  if (!*(a1 + 48))
  {
LABEL_16:
    __break(0xC471u);
    JUMPOUT(0x19DC4A94CLL);
  }

  v12 = *(a1 + 56);
  v16[0] = *(a1 + 48);
  v16[1] = v12;
  v17 = 0;
  WTF::HashMap<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,unsigned int,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<int>((a1 + 72), v16, &v17, v15);
  ++*(v15[0] + 16);
  v13 = *(a1 + 32);
  if (v13)
  {
    v14 = *(v13 + 8);
    if (v14)
    {
      CFRetain(*(v14 - 8));
      WebKit::WebPageProxy::videoControlsManagerDidChange(v14 - 16);
      CFRelease(*(v14 - 8));
    }
  }
}

void sub_19DC4A970(_Unwind_Exception *exception_object)
{
  if (v1[4] == 1)
  {
    (*(*v1 + 8))(v1);
  }

  else
  {
    --v1[4];
  }

  _Unwind_Resume(exception_object);
}

void WebKit::PlaybackSessionManagerProxy::clearPlaybackControlsManager(WebKit::PlaybackSessionManagerProxy *this)
{
  v2 = this + 48;
  v1 = *(this + 6);
  if (v1)
  {
    WebKit::PlaybackSessionManagerProxy::removeClientForContext(this, v1, *(this + 7));
    *v2 = 0;
    *(v2 + 1) = 0;
    v2[16] = 0;
    v4 = *(this + 4);
    if (v4)
    {
      v5 = *(v4 + 8);
      if (v5)
      {
        CFRetain(*(v5 - 8));
        WebKit::WebPageProxy::videoControlsManagerDidChange(v5 - 16);
        v6 = *(v5 - 8);

        CFRelease(v6);
      }
    }
  }
}

void WebKit::PlaybackSessionManagerProxy::swapFullscreenModes(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v7 = a3;
  v91 = *MEMORY[0x1E69E9840];
  v10 = WebKit::PlaybackSessionManagerProxy::ensureModelAndInterface(a1, a2, a3);
  v11 = *v10;
  ++*(*v10 + 16);
  v12 = v10[1];
  ++v12[4];
  v13 = WebKit::PlaybackSessionManagerProxy::ensureModelAndInterface(a1, a4, a5);
  v14 = *v13;
  ++*(*v13 + 16);
  v15 = v13[1];
  ++v15[4];
  v16 = *(a1 + 80);
  atomic_fetch_add(v16 + 2, 1u);
  v17 = *(a1 + 88);
  v73[0] = "PlaybackSessionManagerProxy";
  v73[1] = 28;
  v73[2] = "swapFullscreenModes";
  v73[3] = v17;
  WTF::makeString<unsigned long long,char,unsigned long long>(v7, 45, a2, &v72);
  v69 = a1;
  v70 = a2;
  v18 = WTF::makeString<unsigned long long,char,unsigned long long>(a5, 45, a4, &v71);
  v20 = MEMORY[0x1E696EBD0];
  while (1)
  {
    v21 = *v20;
    if (v21)
    {
      break;
    }

    v22 = *v20;
    atomic_compare_exchange_strong_explicit(v20, &v22, v21 | 1, memory_order_acquire, memory_order_acquire);
    if (v22 == v21)
    {
      v67 = v11;
      v68 = v7;
      v65 = v16;
      v66 = v15;
      v23 = WTF::Logger::messageHandlerObservers(v18);
      v24 = *(v23 + 12);
      if (v24)
      {
        v25 = *v23;
        v26 = *v23 + 8 * v24;
        do
        {
          v27 = *v25;
          *buf = 0;
          WTF::Logger::LogSiteIdentifier::toString(&buf[8], v73);
          v83 = 0;
          WTF::String::String(&v84, "swapping from media element ");
          v85 = 0;
          v28 = v72;
          if (v72)
          {
            atomic_fetch_add_explicit(v72, 2u, memory_order_relaxed);
          }

          v86 = v28;
          v87 = 0;
          WTF::String::String(&v88, " to media element ");
          v89 = 0;
          v29 = v71;
          if (v71)
          {
            atomic_fetch_add_explicit(v71, 2u, memory_order_relaxed);
          }

          v90 = v29;
          WTF::Vector<WTF::JSONLogValue,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(v74, buf, 5uLL);
          (*(*v27 + 16))(v27, &WebKit2LogMedia, 0, v74);
          WTF::Vector<std::tuple<Inspector::BackendDispatcher::CommonErrorCode,WTF::String>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v74, v30);
          for (i = 72; i != -8; i -= 16)
          {
            v32 = *&buf[i];
            *&buf[i] = 0;
            if (v32 && atomic_fetch_add_explicit(v32, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v32, v19);
            }
          }

          ++v25;
        }

        while (v25 != v26);
      }

      v33 = 1;
      atomic_compare_exchange_strong_explicit(v20, &v33, 0, memory_order_release, memory_order_relaxed);
      if (v33 != 1)
      {
        WTF::Lock::unlockSlow(MEMORY[0x1E696EBD0]);
      }

      v16 = v65;
      v15 = v66;
      v11 = v67;
      if (*(v65 + 12) != 1)
      {
        break;
      }

      WTF::Logger::LogSiteIdentifier::toString(&v77, v73);
      WTF::String::String(&v76, "swapping from media element ");
      v34 = v72;
      if (v72)
      {
        atomic_fetch_add_explicit(v72, 2u, memory_order_relaxed);
      }

      WTF::String::String(&v75, " to media element ");
      v35 = v71;
      if (v71)
      {
        atomic_fetch_add_explicit(v71, 2u, memory_order_relaxed);
      }

      v81 = v34;
      *buf = v77;
      v74[0] = v76;
      v79 = v35;
      v80 = v75;
      WTF::tryMakeStringFromAdapters<WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>>(buf, v74, &v81, &v80, &v79, &v78);
      if (!v78)
      {
        __break(0xC471u);
        return;
      }

      if (v35 && atomic_fetch_add_explicit(v35, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v35, v36);
      }

      v37 = v75;
      v75 = 0;
      if (v37 && atomic_fetch_add_explicit(v37, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v37, v36);
        if (v34)
        {
          goto LABEL_30;
        }
      }

      else if (v34)
      {
LABEL_30:
        if (atomic_fetch_add_explicit(v34, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v34, v36);
        }
      }

      v38 = v76;
      v76 = 0;
      if (v38 && atomic_fetch_add_explicit(v38, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v38, v36);
      }

      v39 = v77;
      v77 = 0;
      v7 = v68;
      if (v39 && atomic_fetch_add_explicit(v39, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v39, v36);
      }

      v40 = qword_1ED640D38;
      v41 = os_log_type_enabled(qword_1ED640D38, OS_LOG_TYPE_DEFAULT);
      if (v41)
      {
        WTF::String::utf8();
        v42 = v74[0] ? v74[0] + 16 : 0;
        *buf = 136446210;
        *&buf[4] = v42;
        _os_log_impl(&dword_19D52D000, v40, OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
        v41 = v74[0];
        v74[0] = 0;
        if (v41)
        {
          if (*v41 == 1)
          {
            v41 = WTF::fastFree(v41, v19);
          }

          else
          {
            --*v41;
          }
        }
      }

      if (WebKit2LogMedia)
      {
        v43 = MEMORY[0x1E696EBC0];
        while (1)
        {
          v44 = *v43;
          if (v44)
          {
            break;
          }

          v45 = *v43;
          atomic_compare_exchange_strong_explicit(v43, &v45, v44 | 1, memory_order_acquire, memory_order_acquire);
          if (v45 == v44)
          {
            v46 = WTF::Logger::observers(v41);
            v47 = *(v46 + 12);
            if (v47)
            {
              v48 = *v46;
              v49 = *v46 + 8 * v47;
              do
              {
                v50 = *v48;
                *buf = 0;
                WTF::Logger::LogSiteIdentifier::toString(&buf[8], v73);
                v83 = 0;
                WTF::String::String(&v84, "swapping from media element ");
                v85 = 0;
                v51 = v72;
                if (v72)
                {
                  atomic_fetch_add_explicit(v72, 2u, memory_order_relaxed);
                }

                v86 = v51;
                v87 = 0;
                WTF::String::String(&v88, " to media element ");
                v89 = 0;
                v52 = v71;
                if (v71)
                {
                  atomic_fetch_add_explicit(v71, 2u, memory_order_relaxed);
                }

                v90 = v52;
                WTF::Vector<WTF::JSONLogValue,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(v74, buf, 5uLL);
                (*(*v50 + 16))(v50, &WebKit2LogMedia, 0, v74);
                WTF::Vector<std::tuple<Inspector::BackendDispatcher::CommonErrorCode,WTF::String>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v74, v53);
                for (j = 72; j != -8; j -= 16)
                {
                  v55 = *&buf[j];
                  *&buf[j] = 0;
                  if (v55 && atomic_fetch_add_explicit(v55, 0xFFFFFFFE, memory_order_relaxed) == 2)
                  {
                    WTF::StringImpl::destroy(v55, v19);
                  }
                }

                ++v48;
              }

              while (v48 != v49);
            }

            v56 = 1;
            atomic_compare_exchange_strong_explicit(v43, &v56, 0, memory_order_release, memory_order_relaxed);
            v11 = v67;
            v15 = v66;
            v16 = v65;
            v7 = v68;
            if (v56 != 1)
            {
              WTF::Lock::unlockSlow(MEMORY[0x1E696EBC0]);
            }

            break;
          }
        }
      }

      v57 = v78;
      v78 = 0;
      if (v57 && atomic_fetch_add_explicit(v57, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v57, v19);
      }

      break;
    }
  }

  v58 = v71;
  v71 = 0;
  if (v58 && atomic_fetch_add_explicit(v58, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v58, v19);
  }

  v59 = v72;
  v72 = 0;
  if (v59 && atomic_fetch_add_explicit(v59, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v59, v19);
    if (v16)
    {
LABEL_73:
      if (atomic_fetch_add(v16 + 2, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v16 + 2);
        (*(*v16 + 8))(v16);
      }
    }
  }

  else if (v16)
  {
    goto LABEL_73;
  }

  (*(*v12 + 272))(v12, v15);
  v60 = *(v11 + 256);
  *(v11 + 256) = *(v14 + 256);
  *(v14 + 256) = v60;
  if (*(v11 + 272) == *(v14 + 272))
  {
    if (*(v11 + 272))
    {
      v61 = *(v11 + 264);
      *(v11 + 264) = *(v14 + 264);
      *(v14 + 264) = v61;
    }
  }

  else if (*(v11 + 272))
  {
    *(v14 + 264) = *(v11 + 264);
    *(v14 + 272) = 1;
    if (*(v11 + 272) == 1)
    {
      *(v11 + 272) = 0;
    }
  }

  else
  {
    *(v11 + 264) = *(v14 + 264);
    *(v11 + 272) = 1;
    if (*(v14 + 272) == 1)
    {
      *(v14 + 272) = 0;
    }
  }

  v62 = *(v69 + 32);
  if (v62)
  {
    v63 = *(v62 + 8);
    if (v63)
    {
      CFRetain(*(v63 - 8));
      v64 = *(v63 + 512);
      if (v64)
      {
        ++*(v64 + 16);
        WebKit::VideoPresentationManagerProxy::swapFullscreenModes(v64, v70, v7, a4, a5);
        if (*(v64 + 16) == 1)
        {
          (*(*v64 + 24))(v64);
        }

        else
        {
          --*(v64 + 16);
        }
      }

      CFRelease(*(v63 - 8));
    }
  }

  if (*(v14 + 16) == 1)
  {
    (*(*v14 + 8))(v14);
  }

  else
  {
    --*(v14 + 16);
  }

  if (*(v11 + 16) == 1)
  {
    (*(*v11 + 8))(v11);
  }

  else
  {
    --*(v11 + 16);
  }

  if (v15[4] == 1)
  {
    (*(*v15 + 8))(v15);
  }

  else
  {
    --v15[4];
  }

  if (v12[4] == 1)
  {
    (*(*v12 + 8))(v12);
  }

  else
  {
    --v12[4];
  }
}

void sub_19DC4B328(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, unsigned int *a12, _DWORD *a13, _DWORD *a14, _DWORD *a15, _DWORD *a16, uint64_t a17, uint64_t a18, uint64_t a19, WTF::StringImpl *a20, WTF::StringImpl *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, WTF::StringImpl *a28, WTF::StringImpl *a29, uint64_t a30, WTF::StringImpl *a31)
{
  v33 = 1;
  atomic_compare_exchange_strong_explicit(v31, &v33, 0, memory_order_release, memory_order_relaxed);
  if (v33 != 1)
  {
    WTF::Lock::unlockSlow(MEMORY[0x1E696EBC0]);
  }

  if (a31 && atomic_fetch_add_explicit(a31, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a31, a2);
  }

  if (a20 && atomic_fetch_add_explicit(a20, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a20, a2);
  }

  if (a21 && atomic_fetch_add_explicit(a21, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a21, a2);
  }

  if (a12 && atomic_fetch_add(a12 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, a12 + 2);
    (*(*a12 + 8))(a12);
  }

  if (a13[4] == 1)
  {
    (*(*a13 + 8))(a13);
  }

  else
  {
    --a13[4];
  }

  if (a15[4] == 1)
  {
    (*(*a15 + 8))(a15);
  }

  else
  {
    --a15[4];
  }

  if (a14)
  {
    if (a14[4] == 1)
    {
      (*(*a14 + 8))(a14);
    }

    else
    {
      --a14[4];
    }
  }

  if (a16)
  {
    if (a16[4] == 1)
    {
      (*(*a16 + 8))(a16);
    }

    else
    {
      --a16[4];
    }
  }

  _Unwind_Resume(exception_object);
}

void WebKit::PlaybackSessionManagerProxy::currentTimeChanged(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v8 = WebKit::PlaybackSessionManagerProxy::ensureModelAndInterface(a1, a2, a3);
  v9 = *v8;
  *(v9 + 16) = *(*v8 + 16) + 1;
  v38 = a4;
  v10 = *(v9 + 24);
  if (v10)
  {
    v11 = *(v10 + 8);
    if (v11)
    {
      v12 = *(v11 + 80);
      if (v12)
      {
        atomic_fetch_add(v12 + 2, 1u);
        v13 = *(v9 + 336);
        v34 = "PlaybackSessionModelContext";
        v35 = 28;
        v36 = "currentTimeChanged";
        v37 = v13;
        if (WTF::Logger::willLog<WTF::Logger::LogSiteIdentifier,double>(v12, &WebKit2LogMedia, 3, &v34, &v38))
        {
          WTF::Logger::log<WTF::Logger::LogSiteIdentifier,double>(&WebKit2LogMedia, 3, &v34, &v38);
        }

        if (atomic_fetch_add(v12 + 2, 0xFFFFFFFF) == 1)
        {
          atomic_store(1u, v12 + 2);
          (*(*v12 + 8))(v12);
        }
      }
    }
  }

  *(v9 + 88) = v38;
  [objc_msgSend(MEMORY[0x1E696AE30] "processInfo")];
  v15 = v14;
  if (*(v9 + 72) == 1)
  {
    WebKit::PlaybackSessionModelContext::playbackStartedTimeChanged(v9, v38);
  }

  WTF::WeakHashSet<WebKit::RemoteAudioSessionProxy,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::begin(&v34, (v9 + 48));
  v16 = *(v9 + 48);
  if (v16)
  {
    v17 = *(v16 - 4);
    v18 = v16 + 8 * v17;
  }

  else
  {
    v18 = 0;
    v17 = 0;
  }

  v29 = v9 + 48;
  v30 = v18;
  v31 = v18;
  v32 = v18;
  v33 = v16 + 8 * v17;
  WTF::WeakHashSet<WebKit::RemoteLayerBackingStore,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::WeakHashSetConstIterator::skipEmptyBuckets(&v29);
  v19 = v35;
  v20 = v30;
  while (v19 != v20)
  {
    v21 = *(*v19 + 8);
    (*(*v21 + 32))(v21);
    (*(*v21 + 56))(v21, v38, v15);
    (*(*v21 + 40))(v21);
    WTF::WeakHashSet<WebKit::RemoteLayerBackingStore,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::WeakHashSetConstIterator::operator++(&v34);
    v19 = v35;
  }

  if (*(v9 + 16) == 1)
  {
    (*(*v9 + 8))(v9);
  }

  else
  {
    --*(v9 + 16);
  }

  v22 = *(a1 + 32);
  if (v22)
  {
    v23 = *(v22 + 8);
    if (v23)
    {
      CFRetain(*(v23 - 8));
      v24 = *(v23 + 16);
      if (*(v24 + 2864) == 1)
      {
        v25 = *(v24 + 2848);
        v26 = *(v24 + 2856);
        if (v25 == a2 && v26 == a3)
        {
          WebKit::WebPageProxy::updateFullscreenVideoTextRecognition((v23 - 16));
        }
      }

      v28 = *(v23 - 8);

      CFRelease(v28);
    }
  }
}

void *WebKit::PlaybackSessionManagerProxy::bufferedTimeChanged(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v5 = WebKit::PlaybackSessionManagerProxy::ensureModelAndInterface(a1, a2, a3);
  v6 = *v5;
  *(v6 + 16) = *(*v5 + 16) + 1;
  v28 = a4;
  v7 = *(v6 + 24);
  if (v7)
  {
    v8 = *(v7 + 8);
    if (v8)
    {
      v9 = *(v8 + 80);
      if (v9)
      {
        atomic_fetch_add(v9 + 2, 1u);
        v10 = *(v6 + 336);
        v24 = "PlaybackSessionModelContext";
        v25 = 28;
        v26 = "bufferedTimeChanged";
        v27 = v10;
        if (WTF::Logger::willLog<WTF::Logger::LogSiteIdentifier,double>(v9, &WebKit2LogMedia, 3, &v24, &v28))
        {
          WTF::Logger::log<WTF::Logger::LogSiteIdentifier,double>(&WebKit2LogMedia, 3, &v24, &v28);
        }

        if (atomic_fetch_add(v9 + 2, 0xFFFFFFFF) == 1)
        {
          atomic_store(1u, v9 + 2);
          (*(*v9 + 8))(v9);
        }
      }
    }
  }

  *(v6 + 96) = v28;
  WTF::WeakHashSet<WebKit::RemoteAudioSessionProxy,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::begin(&v24, (v6 + 48));
  v11 = *(v6 + 48);
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

  v19 = v6 + 48;
  v20 = v13;
  v21 = v13;
  v22 = v13;
  v23 = v11 + 8 * v12;
  result = WTF::WeakHashSet<WebKit::RemoteLayerBackingStore,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::WeakHashSetConstIterator::skipEmptyBuckets(&v19);
  v15 = v25;
  v16 = v20;
  while (v15 != v16)
  {
    v17 = *(*v15 + 8);
    (*(*v17 + 32))(v17);
    (*(*v17 + 64))(v17, v28);
    (*(*v17 + 40))(v17);
    result = WTF::WeakHashSet<WebKit::RemoteLayerBackingStore,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::WeakHashSetConstIterator::operator++(&v24);
    v15 = v25;
  }

  if (*(v6 + 16) == 1)
  {
    v18 = *(*v6 + 8);

    return v18(v6);
  }

  else
  {
    --*(v6 + 16);
  }

  return result;
}

void sub_19DC4BEEC(_Unwind_Exception *exception_object)
{
  v4 = v3;
  if (atomic_fetch_add(v4, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v2 + 2);
    (*(*v2 + 8))(v2);
  }

  if (v1[4] == 1)
  {
    (*(*v1 + 8))(v1);
  }

  else
  {
    --v1[4];
  }

  _Unwind_Resume(exception_object);
}

uint64_t WebKit::PlaybackSessionManagerProxy::seekableRangesVectorChanged(uint64_t a1, uint64_t a2, uint64_t a3, WebCore::PlatformTimeRanges *a4, double a5, double a6)
{
  v67[3] = *MEMORY[0x1E69E9840];
  v9 = WebKit::PlaybackSessionManagerProxy::ensureModelAndInterface(a1, a2, a3);
  v10 = *v9;
  *(v10 + 16) = *(*v9 + 16) + 1;
  v11 = *(v10 + 24);
  if (v11)
  {
    v12 = *(v11 + 8);
    if (v12)
    {
      v13 = *(v12 + 80);
      if (v13)
      {
        atomic_fetch_add((v13 + 8), 1u);
        v14 = *(v10 + 336);
        v56 = "PlaybackSessionModelContext";
        v57 = 28;
        v58 = "seekableRangesChanged";
        v59 = v14;
        v15 = MEMORY[0x1E696EBD0];
        while (1)
        {
          v16 = *v15;
          if (v16)
          {
            break;
          }

          v17 = *v15;
          atomic_compare_exchange_strong_explicit(v15, &v17, v16 | 1, memory_order_acquire, memory_order_acquire);
          if (v17 == v16)
          {
            v18 = WTF::Logger::messageHandlerObservers(v9);
            v19 = *(v18 + 12);
            if (v19)
            {
              v20 = *v18;
              v21 = *v18 + 8 * v19;
              do
              {
                v22 = *v20;
                LODWORD(buf) = 0;
                WTF::Logger::LogSiteIdentifier::toString(&buf + 1, &v56);
                v66 = 0;
                WebCore::PlatformTimeRanges::toString(v67, a4);
                WTF::Vector<WTF::JSONLogValue,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(v61, &buf, 2uLL);
                (*(*v22 + 16))(v22, &WebKit2LogMedia, 3, v61);
                WTF::Vector<std::tuple<Inspector::BackendDispatcher::CommonErrorCode,WTF::String>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v61, v23);
                for (i = 24; i != -8; i -= 16)
                {
                  v26 = *(&buf + i);
                  *(&buf + i) = 0;
                  if (v26 && atomic_fetch_add_explicit(v26, 0xFFFFFFFE, memory_order_relaxed) == 2)
                  {
                    WTF::StringImpl::destroy(v26, v24);
                  }
                }

                ++v20;
              }

              while (v20 != v21);
            }

            v27 = 1;
            atomic_compare_exchange_strong_explicit(v15, &v27, 0, memory_order_release, memory_order_relaxed);
            if (v27 != 1)
            {
              WTF::Lock::unlockSlow(MEMORY[0x1E696EBD0]);
            }

            if ((*(v13 + 12) & 1) != 0 && WebKit2LogMedia && byte_1ED640D28 >= 3u)
            {
              WTF::Logger::LogSiteIdentifier::toString(&v63, &v56);
              WebCore::PlatformTimeRanges::toString(&v62, a4);
              *&buf = v63;
              v61[0] = v62;
              result = WTF::tryMakeStringFromAdapters<WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>>(&buf, v61, &v64);
              if (!v64)
              {
                __break(0xC471u);
                return result;
              }

              v30 = v62;
              v62 = 0;
              if (v30 && atomic_fetch_add_explicit(v30, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v30, v29);
              }

              v31 = v63;
              v63 = 0;
              if (v31 && atomic_fetch_add_explicit(v31, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v31, v29);
              }

              v32 = qword_1ED640D38;
              v33 = os_log_type_enabled(qword_1ED640D38, OS_LOG_TYPE_DEFAULT);
              if (v33)
              {
                WTF::String::utf8();
                v35 = v61[0] ? v61[0] + 16 : 0;
                LODWORD(buf) = 136446210;
                *(&buf + 4) = v35;
                _os_log_impl(&dword_19D52D000, v32, OS_LOG_TYPE_DEFAULT, "%{public}s", &buf, 0xCu);
                v33 = v61[0];
                v61[0] = 0;
                if (v33)
                {
                  if (*v33 == 1)
                  {
                    v33 = WTF::fastFree(v33, v34);
                  }

                  else
                  {
                    --*v33;
                  }
                }
              }

              if (WebKit2LogMedia && byte_1ED640D28 >= 3u)
              {
                v36 = MEMORY[0x1E696EBC0];
                while (1)
                {
                  v37 = *v36;
                  if (v37)
                  {
                    break;
                  }

                  v38 = *v36;
                  atomic_compare_exchange_strong_explicit(v36, &v38, v37 | 1, memory_order_acquire, memory_order_acquire);
                  if (v38 == v37)
                  {
                    v39 = WTF::Logger::observers(v33);
                    v40 = *(v39 + 12);
                    if (v40)
                    {
                      v41 = *v39;
                      v42 = *v39 + 8 * v40;
                      do
                      {
                        v43 = *v41;
                        LODWORD(buf) = 0;
                        WTF::Logger::LogSiteIdentifier::toString(&buf + 1, &v56);
                        v66 = 0;
                        WebCore::PlatformTimeRanges::toString(v67, a4);
                        WTF::Vector<WTF::JSONLogValue,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(v61, &buf, 2uLL);
                        (*(*v43 + 16))(v43, &WebKit2LogMedia, 3, v61);
                        WTF::Vector<std::tuple<Inspector::BackendDispatcher::CommonErrorCode,WTF::String>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v61, v44);
                        for (j = 24; j != -8; j -= 16)
                        {
                          v46 = *(&buf + j);
                          *(&buf + j) = 0;
                          if (v46 && atomic_fetch_add_explicit(v46, 0xFFFFFFFE, memory_order_relaxed) == 2)
                          {
                            WTF::StringImpl::destroy(v46, v34);
                          }
                        }

                        ++v41;
                      }

                      while (v41 != v42);
                    }

                    v47 = 1;
                    atomic_compare_exchange_strong_explicit(v36, &v47, 0, memory_order_release, memory_order_relaxed);
                    if (v47 != 1)
                    {
                      WTF::Lock::unlockSlow(MEMORY[0x1E696EBC0]);
                    }

                    break;
                  }
                }
              }

              v48 = v64;
              v64 = 0;
              if (v48 && atomic_fetch_add_explicit(v48, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v48, v34);
              }
            }

            break;
          }
        }

        if (atomic_fetch_add((v13 + 8), 0xFFFFFFFF) == 1)
        {
          atomic_store(1u, (v13 + 8));
          (*(*v13 + 8))(v13);
        }
      }
    }
  }

  WTF::Vector<WebCore::PlatformTimeRanges::Range,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::operator=(v10 + 128, a4);
  *(v10 + 144) = a5;
  *(v10 + 152) = a6;
  WTF::WeakHashSet<WebKit::RemoteAudioSessionProxy,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::begin(&buf, (v10 + 48));
  v49 = *(v10 + 48);
  if (v49)
  {
    v50 = *(v49 - 4);
    v51 = (v49 + 8 * v50);
  }

  else
  {
    v51 = 0;
    v50 = 0;
  }

  v56 = (v10 + 48);
  v57 = v51;
  v58 = v51;
  v59 = v51;
  v60 = v49 + 8 * v50;
  result = WTF::WeakHashSet<WebKit::RemoteLayerBackingStore,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::WeakHashSetConstIterator::skipEmptyBuckets(&v56);
  v52 = *(&buf + 1);
  v53 = v57;
  while (v52 != v53)
  {
    v54 = *(*v52 + 8);
    (*(*v54 + 32))(v54);
    (*(*v54 + 88))(v54, a4, a5, a6);
    (*(*v54 + 40))(v54);
    result = WTF::WeakHashSet<WebKit::RemoteLayerBackingStore,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::WeakHashSetConstIterator::operator++(&buf);
    v52 = *(&buf + 1);
  }

  if (*(v10 + 16) == 1)
  {
    v55 = *(*v10 + 8);

    return v55(v10);
  }

  else
  {
    --*(v10 + 16);
  }

  return result;
}

void sub_19DC4C5E4(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, WTF::StringImpl *a16, uint64_t a17, WTF::StringImpl *a18, char a19, WTF::StringImpl *a20)
{
  v24 = 1;
  atomic_compare_exchange_strong_explicit(v22, &v24, 0, memory_order_release, memory_order_relaxed);
  if (v24 != 1)
  {
    WTF::Lock::unlockSlow(MEMORY[0x1E696EBC0]);
  }

  if (a18 && atomic_fetch_add_explicit(a18, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a18, a2);
  }

  if (atomic_fetch_add(v21 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v21 + 2);
    (*(*v21 + 8))(v21);
  }

  if (v20[4] == 1)
  {
    (*(*v20 + 8))(v20);
  }

  else
  {
    --v20[4];
  }

  _Unwind_Resume(exception_object);
}

void *WebKit::PlaybackSessionManagerProxy::canPlayFastReverseChanged(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = WebKit::PlaybackSessionManagerProxy::ensureModelAndInterface(a1, a2, a3);
  v6 = *v5;
  *(v6 + 16) = *(*v5 + 16) + 1;
  *(v6 + 160) = a4;
  WTF::WeakHashSet<WebKit::RemoteAudioSessionProxy,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::begin(&v20, (v6 + 48));
  v7 = *(v6 + 48);
  if (v7)
  {
    v8 = *(v7 - 4);
    v9 = v7 + 8 * v8;
  }

  else
  {
    v9 = 0;
    v8 = 0;
  }

  v15 = v6 + 48;
  v16 = v9;
  v17 = v9;
  v18 = v9;
  v19 = v7 + 8 * v8;
  result = WTF::WeakHashSet<WebKit::RemoteLayerBackingStore,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::WeakHashSetConstIterator::skipEmptyBuckets(&v15);
  v11 = v21;
  v12 = v16;
  while (v11 != v12)
  {
    v13 = *(*v11 + 8);
    (*(*v13 + 32))(v13);
    (*(*v13 + 96))(v13, a4);
    (*(*v13 + 40))(v13);
    result = WTF::WeakHashSet<WebKit::RemoteLayerBackingStore,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::WeakHashSetConstIterator::operator++(&v20);
    v11 = v21;
  }

  if (*(v6 + 16) == 1)
  {
    v14 = *(*v6 + 8);

    return v14(v6);
  }

  else
  {
    --*(v6 + 16);
  }

  return result;
}

void sub_19DC4C9D4(_Unwind_Exception *exception_object)
{
  if (v1[4] == 1)
  {
    (*(*v1 + 8))(v1);
  }

  else
  {
    --v1[4];
  }

  _Unwind_Resume(exception_object);
}

void *WebKit::PlaybackSessionManagerProxy::audioMediaSelectionOptionsChanged(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int *a4, uint64_t a5)
{
  v7 = WebKit::PlaybackSessionManagerProxy::ensureModelAndInterface(a1, a2, a3);
  v8 = *v7;
  *(v8 + 16) = *(*v7 + 16) + 1;
  WTF::Vector<WebCore::MediaSelectionOption,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::operator=((v8 + 168), a4);
  *(v8 + 184) = a5;
  WTF::WeakHashSet<WebKit::RemoteAudioSessionProxy,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::begin(&v22, (v8 + 48));
  v9 = *(v8 + 48);
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

  v17 = v8 + 48;
  v18 = v11;
  v19 = v11;
  v20 = v11;
  v21 = v9 + 8 * v10;
  result = WTF::WeakHashSet<WebKit::RemoteLayerBackingStore,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::WeakHashSetConstIterator::skipEmptyBuckets(&v17);
  v13 = v23;
  v14 = v18;
  while (v13 != v14)
  {
    v15 = *(*v13 + 8);
    (*(*v15 + 32))(v15);
    (*(*v15 + 104))(v15, a4, a5);
    (*(*v15 + 40))(v15);
    result = WTF::WeakHashSet<WebKit::RemoteLayerBackingStore,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::WeakHashSetConstIterator::operator++(&v22);
    v13 = v23;
  }

  if (*(v8 + 16) == 1)
  {
    v16 = *(*v8 + 8);

    return v16(v8);
  }

  else
  {
    --*(v8 + 16);
  }

  return result;
}

void sub_19DC4CBF8(_Unwind_Exception *exception_object)
{
  if (v1[4] == 1)
  {
    (*(*v1 + 8))(v1);
  }

  else
  {
    --v1[4];
  }

  _Unwind_Resume(exception_object);
}

void *WebKit::PlaybackSessionManagerProxy::legibleMediaSelectionOptionsChanged(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int *a4, uint64_t a5)
{
  v7 = WebKit::PlaybackSessionManagerProxy::ensureModelAndInterface(a1, a2, a3);
  v8 = *v7;
  *(v8 + 16) = *(*v7 + 16) + 1;
  WTF::Vector<WebCore::MediaSelectionOption,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::operator=((v8 + 192), a4);
  *(v8 + 208) = a5;
  WTF::WeakHashSet<WebKit::RemoteAudioSessionProxy,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::begin(&v22, (v8 + 48));
  v9 = *(v8 + 48);
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

  v17 = v8 + 48;
  v18 = v11;
  v19 = v11;
  v20 = v11;
  v21 = v9 + 8 * v10;
  result = WTF::WeakHashSet<WebKit::RemoteLayerBackingStore,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::WeakHashSetConstIterator::skipEmptyBuckets(&v17);
  v13 = v23;
  v14 = v18;
  while (v13 != v14)
  {
    v15 = *(*v13 + 8);
    (*(*v15 + 32))(v15);
    (*(*v15 + 112))(v15, a4, a5);
    (*(*v15 + 40))(v15);
    result = WTF::WeakHashSet<WebKit::RemoteLayerBackingStore,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::WeakHashSetConstIterator::operator++(&v22);
    v13 = v23;
  }

  if (*(v8 + 16) == 1)
  {
    v16 = *(*v8 + 8);

    return v16(v8);
  }

  else
  {
    --*(v8 + 16);
  }

  return result;
}

void sub_19DC4CE1C(_Unwind_Exception *exception_object)
{
  if (v1[4] == 1)
  {
    (*(*v1 + 8))(v1);
  }

  else
  {
    --v1[4];
  }

  _Unwind_Resume(exception_object);
}

void *WebKit::PlaybackSessionManagerProxy::audioMediaSelectionIndexChanged(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = WebKit::PlaybackSessionManagerProxy::ensureModelAndInterface(a1, a2, a3);
  v6 = *v5;
  *(v6 + 16) = *(*v5 + 16) + 1;
  *(v6 + 184) = a4;
  WTF::WeakHashSet<WebKit::RemoteAudioSessionProxy,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::begin(&v20, (v6 + 48));
  v7 = *(v6 + 48);
  if (v7)
  {
    v8 = *(v7 - 4);
    v9 = v7 + 8 * v8;
  }

  else
  {
    v9 = 0;
    v8 = 0;
  }

  v15 = v6 + 48;
  v16 = v9;
  v17 = v9;
  v18 = v9;
  v19 = v7 + 8 * v8;
  result = WTF::WeakHashSet<WebKit::RemoteLayerBackingStore,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::WeakHashSetConstIterator::skipEmptyBuckets(&v15);
  v11 = v21;
  v12 = v16;
  while (v11 != v12)
  {
    v13 = *(*v11 + 8);
    (*(*v13 + 32))(v13);
    (*(*v13 + 120))(v13, a4);
    (*(*v13 + 40))(v13);
    result = WTF::WeakHashSet<WebKit::RemoteLayerBackingStore,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::WeakHashSetConstIterator::operator++(&v20);
    v11 = v21;
  }

  if (*(v6 + 16) == 1)
  {
    v14 = *(*v6 + 8);

    return v14(v6);
  }

  else
  {
    --*(v6 + 16);
  }

  return result;
}

void sub_19DC4D020(_Unwind_Exception *exception_object)
{
  if (v1[4] == 1)
  {
    (*(*v1 + 8))(v1);
  }

  else
  {
    --v1[4];
  }

  _Unwind_Resume(exception_object);
}

void *WebKit::PlaybackSessionManagerProxy::legibleMediaSelectionIndexChanged(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = WebKit::PlaybackSessionManagerProxy::ensureModelAndInterface(a1, a2, a3);
  v6 = *v5;
  *(v6 + 16) = *(*v5 + 16) + 1;
  *(v6 + 208) = a4;
  WTF::WeakHashSet<WebKit::RemoteAudioSessionProxy,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::begin(&v20, (v6 + 48));
  v7 = *(v6 + 48);
  if (v7)
  {
    v8 = *(v7 - 4);
    v9 = v7 + 8 * v8;
  }

  else
  {
    v9 = 0;
    v8 = 0;
  }

  v15 = v6 + 48;
  v16 = v9;
  v17 = v9;
  v18 = v9;
  v19 = v7 + 8 * v8;
  result = WTF::WeakHashSet<WebKit::RemoteLayerBackingStore,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::WeakHashSetConstIterator::skipEmptyBuckets(&v15);
  v11 = v21;
  v12 = v16;
  while (v11 != v12)
  {
    v13 = *(*v11 + 8);
    (*(*v13 + 32))(v13);
    (*(*v13 + 128))(v13, a4);
    (*(*v13 + 40))(v13);
    result = WTF::WeakHashSet<WebKit::RemoteLayerBackingStore,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::WeakHashSetConstIterator::operator++(&v20);
    v11 = v21;
  }

  if (*(v6 + 16) == 1)
  {
    v14 = *(*v6 + 8);

    return v14(v6);
  }

  else
  {
    --*(v6 + 16);
  }

  return result;
}

void sub_19DC4D224(_Unwind_Exception *exception_object)
{
  if (v1[4] == 1)
  {
    (*(*v1 + 8))(v1);
  }

  else
  {
    --v1[4];
  }

  _Unwind_Resume(exception_object);
}

void *WebKit::PlaybackSessionManagerProxy::externalPlaybackPropertiesChanged(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, atomic_uint **a6)
{
  v9 = WebKit::PlaybackSessionManagerProxy::ensureModelAndInterface(a1, a2, a3);
  v10 = *v9;
  *(v10 + 16) = *(*v9 + 16) + 1;
  *(v10 + 216) = a4;
  *(v10 + 217) = a5;
  WTF::String::operator=((v10 + 224), a6);
  WTF::WeakHashSet<WebKit::RemoteAudioSessionProxy,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::begin(&v24, (v10 + 48));
  v11 = *(v10 + 48);
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

  v19 = v10 + 48;
  v20 = v13;
  v21 = v13;
  v22 = v13;
  v23 = v11 + 8 * v12;
  result = WTF::WeakHashSet<WebKit::RemoteLayerBackingStore,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::WeakHashSetConstIterator::skipEmptyBuckets(&v19);
  v15 = v25;
  v16 = v20;
  while (v15 != v16)
  {
    v17 = *(*v15 + 8);
    (*(*v17 + 32))(v17);
    (*(*v17 + 136))(v17, a4, a5, a6);
    (*(*v17 + 40))(v17);
    result = WTF::WeakHashSet<WebKit::RemoteLayerBackingStore,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::WeakHashSetConstIterator::operator++(&v24);
    v15 = v25;
  }

  if (*(v10 + 16) == 1)
  {
    v18 = *(*v10 + 8);

    return v18(v10);
  }

  else
  {
    --*(v10 + 16);
  }

  return result;
}

void sub_19DC4D454(_Unwind_Exception *exception_object)
{
  if (v1[4] == 1)
  {
    (*(*v1 + 8))(v1);
  }

  else
  {
    --v1[4];
  }

  _Unwind_Resume(exception_object);
}

void *WebKit::PlaybackSessionManagerProxy::wirelessVideoPlaybackDisabledChanged(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = WebKit::PlaybackSessionManagerProxy::ensureModelAndInterface(a1, a2, a3);
  v6 = *v5;
  *(v6 + 16) = *(*v5 + 16) + 1;
  *(v6 + 232) = a4;
  WTF::WeakHashSet<WebKit::RemoteAudioSessionProxy,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::begin(&v20, (v6 + 48));
  v7 = *(v6 + 48);
  if (v7)
  {
    v8 = *(v7 - 4);
    v9 = v7 + 8 * v8;
  }

  else
  {
    v9 = 0;
    v8 = 0;
  }

  v15 = v6 + 48;
  v16 = v9;
  v17 = v9;
  v18 = v9;
  v19 = v7 + 8 * v8;
  result = WTF::WeakHashSet<WebKit::RemoteLayerBackingStore,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::WeakHashSetConstIterator::skipEmptyBuckets(&v15);
  v11 = v21;
  v12 = v16;
  while (v11 != v12)
  {
    v13 = *(*v11 + 8);
    (*(*v13 + 32))(v13);
    (*(*v13 + 144))(v13, a4);
    (*(*v13 + 40))(v13);
    result = WTF::WeakHashSet<WebKit::RemoteLayerBackingStore,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::WeakHashSetConstIterator::operator++(&v20);
    v11 = v21;
  }

  if (*(v6 + 16) == 1)
  {
    v14 = *(*v6 + 8);

    return v14(v6);
  }

  else
  {
    --*(v6 + 16);
  }

  return result;
}

void sub_19DC4D658(_Unwind_Exception *exception_object)
{
  if (v1[4] == 1)
  {
    (*(*v1 + 8))(v1);
  }

  else
  {
    --v1[4];
  }

  _Unwind_Resume(exception_object);
}

void *WebKit::PlaybackSessionManagerProxy::mutedChanged(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = WebKit::PlaybackSessionManagerProxy::ensureModelAndInterface(a1, a2, a3);
  v6 = *v5;
  *(v6 + 16) = *(*v5 + 16) + 1;
  *(v6 + 233) = a4;
  WTF::WeakHashSet<WebKit::RemoteAudioSessionProxy,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::begin(&v20, (v6 + 48));
  v7 = *(v6 + 48);
  if (v7)
  {
    v8 = *(v7 - 4);
    v9 = v7 + 8 * v8;
  }

  else
  {
    v9 = 0;
    v8 = 0;
  }

  v15 = v6 + 48;
  v16 = v9;
  v17 = v9;
  v18 = v9;
  v19 = v7 + 8 * v8;
  result = WTF::WeakHashSet<WebKit::RemoteLayerBackingStore,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::WeakHashSetConstIterator::skipEmptyBuckets(&v15);
  v11 = v21;
  v12 = v16;
  while (v11 != v12)
  {
    v13 = *(*v11 + 8);
    (*(*v13 + 32))(v13);
    (*(*v13 + 152))(v13, a4);
    (*(*v13 + 40))(v13);
    result = WTF::WeakHashSet<WebKit::RemoteLayerBackingStore,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::WeakHashSetConstIterator::operator++(&v20);
    v11 = v21;
  }

  if (*(v6 + 16) == 1)
  {
    v14 = *(*v6 + 8);

    return v14(v6);
  }

  else
  {
    --*(v6 + 16);
  }

  return result;
}

void sub_19DC4D85C(_Unwind_Exception *exception_object)
{
  if (v1[4] == 1)
  {
    (*(*v1 + 8))(v1);
  }

  else
  {
    --v1[4];
  }

  _Unwind_Resume(exception_object);
}

void *WebKit::PlaybackSessionManagerProxy::volumeChanged(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v5 = WebKit::PlaybackSessionManagerProxy::ensureModelAndInterface(a1, a2, a3);
  v6 = *v5;
  *(v6 + 16) = *(*v5 + 16) + 1;
  *(v6 + 240) = a4;
  WTF::WeakHashSet<WebKit::RemoteAudioSessionProxy,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::begin(&v20, (v6 + 48));
  v7 = *(v6 + 48);
  if (v7)
  {
    v8 = *(v7 - 4);
    v9 = v7 + 8 * v8;
  }

  else
  {
    v9 = 0;
    v8 = 0;
  }

  v15 = v6 + 48;
  v16 = v9;
  v17 = v9;
  v18 = v9;
  v19 = v7 + 8 * v8;
  result = WTF::WeakHashSet<WebKit::RemoteLayerBackingStore,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::WeakHashSetConstIterator::skipEmptyBuckets(&v15);
  v11 = v21;
  v12 = v16;
  while (v11 != v12)
  {
    v13 = *(*v11 + 8);
    (*(*v13 + 32))(v13);
    (*(*v13 + 160))(v13, a4);
    (*(*v13 + 40))(v13);
    result = WTF::WeakHashSet<WebKit::RemoteLayerBackingStore,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::WeakHashSetConstIterator::operator++(&v20);
    v11 = v21;
  }

  if (*(v6 + 16) == 1)
  {
    v14 = *(*v6 + 8);

    return v14(v6);
  }

  else
  {
    --*(v6 + 16);
  }

  return result;
}

void sub_19DC4DA6C(_Unwind_Exception *exception_object)
{
  if (v1[4] == 1)
  {
    (*(*v1 + 8))(v1);
  }

  else
  {
    --v1[4];
  }

  _Unwind_Resume(exception_object);
}

void *WebKit::PlaybackSessionManagerProxy::durationChanged(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v5 = WebKit::PlaybackSessionManagerProxy::ensureModelAndInterface(a1, a2, a3);
  v6 = *v5;
  *(v6 + 16) = *(*v5 + 16) + 1;
  v28 = a4;
  v7 = *(v6 + 24);
  if (v7)
  {
    v8 = *(v7 + 8);
    if (v8)
    {
      v9 = *(v8 + 80);
      if (v9)
      {
        atomic_fetch_add(v9 + 2, 1u);
        v10 = *(v6 + 336);
        v24 = "PlaybackSessionModelContext";
        v25 = 28;
        v26 = "durationChanged";
        v27 = v10;
        if (WTF::Logger::willLog<WTF::Logger::LogSiteIdentifier,double>(v9, &WebKit2LogMedia, 0, &v24, &v28))
        {
          WTF::Logger::log<WTF::Logger::LogSiteIdentifier,double>(&WebKit2LogMedia, 0, &v24, &v28);
        }

        if (atomic_fetch_add(v9 + 2, 0xFFFFFFFF) == 1)
        {
          atomic_store(1u, v9 + 2);
          (*(*v9 + 8))(v9);
        }
      }
    }
  }

  *(v6 + 80) = v28;
  WTF::WeakHashSet<WebKit::RemoteAudioSessionProxy,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::begin(&v24, (v6 + 48));
  v11 = *(v6 + 48);
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

  v19 = v6 + 48;
  v20 = v13;
  v21 = v13;
  v22 = v13;
  v23 = v11 + 8 * v12;
  result = WTF::WeakHashSet<WebKit::RemoteLayerBackingStore,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::WeakHashSetConstIterator::skipEmptyBuckets(&v19);
  v15 = v25;
  v16 = v20;
  while (v15 != v16)
  {
    v17 = *(*v15 + 8);
    (*(*v17 + 32))(v17);
    (*(*v17 + 48))(v17, v28);
    (*(*v17 + 40))(v17);
    result = WTF::WeakHashSet<WebKit::RemoteLayerBackingStore,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::WeakHashSetConstIterator::operator++(&v24);
    v15 = v25;
  }

  if (*(v6 + 16) == 1)
  {
    v18 = *(*v6 + 8);

    return v18(v6);
  }

  else
  {
    --*(v6 + 16);
  }

  return result;
}

void sub_19DC4DD44(_Unwind_Exception *exception_object)
{
  v4 = v3;
  if (atomic_fetch_add(v4, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v2 + 2);
    (*(*v2 + 8))(v2);
  }

  if (v1[4] == 1)
  {
    (*(*v1 + 8))(v1);
  }

  else
  {
    --v1[4];
  }

  _Unwind_Resume(exception_object);
}

void WebKit::PlaybackSessionManagerProxy::playbackStartedTimeChanged(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v5 = WebKit::PlaybackSessionManagerProxy::ensureModelAndInterface(a1, a2, a3);
  v6 = *v5;
  *(v6 + 4) = *(*v5 + 16) + 1;
  v7.n128_f64[0] = WebKit::PlaybackSessionModelContext::playbackStartedTimeChanged(v6, a4);
  if (*(v6 + 4) == 1)
  {
    v8 = *(*v6 + 8);

    v8(v6, v7);
  }

  else
  {
    --*(v6 + 4);
  }
}

void sub_19DC4DEAC(_Unwind_Exception *exception_object)
{
  if (v1[4] == 1)
  {
    (*(*v1 + 8))(v1);
  }

  else
  {
    --v1[4];
  }

  _Unwind_Resume(exception_object);
}

void WebKit::PlaybackSessionManagerProxy::rateChanged(uint64_t a1, uint64_t a2, uint64_t a3, char a4, double a5, double a6)
{
  v11 = a1;
  v92[1] = *MEMORY[0x1E69E9840];
  v12 = WebKit::PlaybackSessionManagerProxy::ensureModelAndInterface(a1, a2, a3);
  v13 = *v12;
  *(v13 + 16) = *(*v12 + 16) + 1;
  v14 = *(v13 + 24);
  if (v14)
  {
    v15 = *(v14 + 8);
    if (v15)
    {
      v16 = *(v15 + 80);
      if (v16)
      {
        atomic_fetch_add((v16 + 8), 1u);
        v17 = *(v13 + 336);
        v74 = "PlaybackSessionModelContext";
        v75 = 28;
        v76 = "rateChanged";
        v77 = v17;
        v18 = MEMORY[0x1E696EBD0];
        while (1)
        {
          v19 = *v18;
          if (v19)
          {
            break;
          }

          v20 = *v18;
          atomic_compare_exchange_strong_explicit(v18, &v20, v19 | 1, memory_order_acquire, memory_order_acquire);
          if (v20 == v19)
          {
            v72 = a4;
            v73 = v11;
            v21 = WTF::Logger::messageHandlerObservers(v12);
            v22 = *(v21 + 12);
            if (v22)
            {
              v23 = *v21;
              v24 = *v21 + 8 * v22;
              do
              {
                v25 = *v23;
                *buf = 0;
                v26 = WTF::Logger::LogSiteIdentifier::toString(&v86[4], &v74);
                v87 = 0;
                WTF::String::number(&v88, v26, a5);
                v89 = 0;
                v27 = WTF::String::String(&v90, ", defaultPlaybackRate");
                v91 = 0;
                WTF::String::number(v92, v27, a6);
                WTF::Vector<WTF::JSONLogValue,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(v79, buf, 4uLL);
                (*(*v25 + 16))(v25, &WebKit2LogMedia, 0, v79);
                WTF::Vector<std::tuple<Inspector::BackendDispatcher::CommonErrorCode,WTF::String>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v79, v28);
                for (i = 56; i != -8; i -= 16)
                {
                  v31 = *&buf[i];
                  *&buf[i] = 0;
                  if (v31 && atomic_fetch_add_explicit(v31, 0xFFFFFFFE, memory_order_relaxed) == 2)
                  {
                    WTF::StringImpl::destroy(v31, v29);
                  }
                }

                ++v23;
              }

              while (v23 != v24);
            }

            v32 = 1;
            atomic_compare_exchange_strong_explicit(v18, &v32, 0, memory_order_release, memory_order_relaxed);
            if (v32 != 1)
            {
              WTF::Lock::unlockSlow(MEMORY[0x1E696EBD0]);
            }

            v11 = v73;
            a4 = v72;
            if (*(v16 + 12) == 1)
            {
              v33 = WTF::Logger::LogSiteIdentifier::toString(&v83, &v74);
              WTF::String::number(&v82, v33, a5);
              v34 = WTF::String::String(&v81, ", defaultPlaybackRate");
              WTF::String::number(&v80, v34, a6);
              WTF::makeString<WTF::String,WTF::String,WTF::String,WTF::String>(&v83, &v82, &v81, &v80, &v84);
              v36 = v80;
              v80 = 0;
              if (v36 && atomic_fetch_add_explicit(v36, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v36, v35);
              }

              v37 = v81;
              v81 = 0;
              if (v37 && atomic_fetch_add_explicit(v37, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v37, v35);
              }

              v38 = v82;
              v82 = 0;
              if (v38 && atomic_fetch_add_explicit(v38, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v38, v35);
              }

              v39 = v83;
              v83 = 0;
              if (v39 && atomic_fetch_add_explicit(v39, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v39, v35);
              }

              v40 = qword_1ED640D38;
              v41 = os_log_type_enabled(qword_1ED640D38, OS_LOG_TYPE_DEFAULT);
              if (v41)
              {
                WTF::String::utf8();
                v43 = v79[0] ? v79[0] + 16 : 0;
                *buf = 136446210;
                *v86 = v43;
                _os_log_impl(&dword_19D52D000, v40, OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
                v41 = v79[0];
                v79[0] = 0;
                if (v41)
                {
                  if (*v41 == 1)
                  {
                    v41 = WTF::fastFree(v41, v42);
                  }

                  else
                  {
                    --*v41;
                  }
                }
              }

              if (WebKit2LogMedia)
              {
                v44 = MEMORY[0x1E696EBC0];
                while (1)
                {
                  v45 = *v44;
                  if (v45)
                  {
                    break;
                  }

                  v46 = *v44;
                  atomic_compare_exchange_strong_explicit(v44, &v46, v45 | 1, memory_order_acquire, memory_order_acquire);
                  if (v46 == v45)
                  {
                    v47 = WTF::Logger::observers(v41);
                    v48 = *(v47 + 12);
                    if (v48)
                    {
                      v49 = *v47;
                      v50 = *v47 + 8 * v48;
                      do
                      {
                        v51 = *v49;
                        *buf = 0;
                        v52 = WTF::Logger::LogSiteIdentifier::toString(&v86[4], &v74);
                        v87 = 0;
                        WTF::String::number(&v88, v52, a5);
                        v89 = 0;
                        v53 = WTF::String::String(&v90, ", defaultPlaybackRate");
                        v91 = 0;
                        WTF::String::number(v92, v53, a6);
                        WTF::Vector<WTF::JSONLogValue,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(v79, buf, 4uLL);
                        (*(*v51 + 16))(v51, &WebKit2LogMedia, 0, v79);
                        WTF::Vector<std::tuple<Inspector::BackendDispatcher::CommonErrorCode,WTF::String>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v79, v54);
                        for (j = 56; j != -8; j -= 16)
                        {
                          v56 = *&buf[j];
                          *&buf[j] = 0;
                          if (v56 && atomic_fetch_add_explicit(v56, 0xFFFFFFFE, memory_order_relaxed) == 2)
                          {
                            WTF::StringImpl::destroy(v56, v42);
                          }
                        }

                        ++v49;
                      }

                      while (v49 != v50);
                    }

                    v57 = 1;
                    atomic_compare_exchange_strong_explicit(v44, &v57, 0, memory_order_release, memory_order_relaxed);
                    v11 = v73;
                    a4 = v72;
                    if (v57 != 1)
                    {
                      WTF::Lock::unlockSlow(MEMORY[0x1E696EBC0]);
                    }

                    break;
                  }
                }
              }

              v58 = v84;
              v84 = 0;
              if (v58 && atomic_fetch_add_explicit(v58, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v58, v42);
              }
            }

            break;
          }
        }

        if (atomic_fetch_add((v16 + 8), 0xFFFFFFFF) == 1)
        {
          atomic_store(1u, (v16 + 8));
          (*(*v16 + 8))(v16);
        }
      }
    }
  }

  *(v13 + 104) = a4;
  *(v13 + 112) = a6;
  *(v13 + 120) = a5;
  WTF::WeakHashSet<WebKit::RemoteAudioSessionProxy,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::begin(buf, (v13 + 48));
  v59 = *(v13 + 48);
  if (v59)
  {
    v60 = *(v59 - 4);
    v61 = (v59 + 8 * v60);
  }

  else
  {
    v61 = 0;
    v60 = 0;
  }

  v74 = (v13 + 48);
  v75 = v61;
  v76 = v61;
  v77 = v61;
  v78 = v59 + 8 * v60;
  WTF::WeakHashSet<WebKit::RemoteLayerBackingStore,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::WeakHashSetConstIterator::skipEmptyBuckets(&v74);
  v62 = *&v86[4];
  v63 = v75;
  while (v62 != v63)
  {
    v64 = *(*v62 + 8);
    (*(*v64 + 32))(v64);
    (*(*v64 + 80))(v64, *(v13 + 104), *(v13 + 120), *(v13 + 112));
    (*(*v64 + 40))(v64);
    WTF::WeakHashSet<WebKit::RemoteLayerBackingStore,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::WeakHashSetConstIterator::operator++(buf);
    v62 = *&v86[4];
  }

  if (*(v13 + 16) == 1)
  {
    (*(*v13 + 8))(v13);
  }

  else
  {
    --*(v13 + 16);
  }

  v65 = *(v11 + 32);
  if (v65)
  {
    v66 = *(v65 + 8);
    if (v66)
    {
      CFRetain(*(v66 - 8));
      v67 = *(v66 + 16);
      if (*(v67 + 2864) == 1)
      {
        v68 = *(v67 + 2848);
        v69 = *(v67 + 2856);
        if (v68 == a2 && v69 == a3)
        {
          WebKit::WebPageProxy::updateFullscreenVideoTextRecognition((v66 - 16));
        }
      }

      v71 = *(v66 - 8);

      CFRelease(v71);
    }
  }
}

void sub_19DC4E62C(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, unsigned int *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, WTF::StringImpl *a24, WTF::StringImpl *a25, WTF::StringImpl *a26, uint64_t a27, WTF::StringImpl *a28, char a29)
{
  v32 = 1;
  atomic_compare_exchange_strong_explicit(v30, &v32, 0, memory_order_release, memory_order_relaxed);
  if (v32 != 1)
  {
    WTF::Lock::unlockSlow(MEMORY[0x1E696EBC0]);
  }

  if (a28 && atomic_fetch_add_explicit(a28, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a28, a2);
  }

  if (atomic_fetch_add(a16 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, a16 + 2);
    (*(*a16 + 8))(a16);
  }

  if (v29[4] == 1)
  {
    (*(*v29 + 8))(v29);
  }

  else
  {
    --v29[4];
  }

  _Unwind_Resume(exception_object);
}

void *WebKit::PlaybackSessionManagerProxy::pictureInPictureSupportedChanged(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = WebKit::PlaybackSessionManagerProxy::ensureModelAndInterface(a1, a2, a3);
  v6 = *v5;
  *(v6 + 16) = *(*v5 + 16) + 1;
  *(v6 + 248) = a4;
  WTF::WeakHashSet<WebKit::RemoteAudioSessionProxy,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::begin(&v20, (v6 + 48));
  v7 = *(v6 + 48);
  if (v7)
  {
    v8 = *(v7 - 4);
    v9 = v7 + 8 * v8;
  }

  else
  {
    v9 = 0;
    v8 = 0;
  }

  v15 = v6 + 48;
  v16 = v9;
  v17 = v9;
  v18 = v9;
  v19 = v7 + 8 * v8;
  result = WTF::WeakHashSet<WebKit::RemoteLayerBackingStore,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::WeakHashSetConstIterator::skipEmptyBuckets(&v15);
  v11 = v21;
  v12 = v16;
  while (v11 != v12)
  {
    v13 = *(*v11 + 8);
    (*(*v13 + 32))(v13);
    (*(*v13 + 168))(v13, a4);
    (*(*v13 + 40))(v13);
    result = WTF::WeakHashSet<WebKit::RemoteLayerBackingStore,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::WeakHashSetConstIterator::operator++(&v20);
    v11 = v21;
  }

  if (*(v6 + 16) == 1)
  {
    v14 = *(*v6 + 8);

    return v14(v6);
  }

  else
  {
    --*(v6 + 16);
  }

  return result;
}

void sub_19DC4EAD0(_Unwind_Exception *exception_object)
{
  if (v1[4] == 1)
  {
    (*(*v1 + 8))(v1);
  }

  else
  {
    --v1[4];
  }

  _Unwind_Resume(exception_object);
}

void *WebKit::PlaybackSessionManagerProxy::isInWindowFullscreenActiveChanged(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = WebKit::PlaybackSessionManagerProxy::ensureModelAndInterface(a1, a2, a3);
  v6 = *v5;
  *(v6 + 16) = *(*v5 + 16) + 1;
  *(v6 + 250) = a4;
  WTF::WeakHashSet<WebKit::RemoteAudioSessionProxy,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::begin(&v20, (v6 + 48));
  v7 = *(v6 + 48);
  if (v7)
  {
    v8 = *(v7 - 4);
    v9 = v7 + 8 * v8;
  }

  else
  {
    v9 = 0;
    v8 = 0;
  }

  v15 = v6 + 48;
  v16 = v9;
  v17 = v9;
  v18 = v9;
  v19 = v7 + 8 * v8;
  result = WTF::WeakHashSet<WebKit::RemoteLayerBackingStore,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::WeakHashSetConstIterator::skipEmptyBuckets(&v15);
  v11 = v21;
  v12 = v16;
  while (v11 != v12)
  {
    v13 = *(*v11 + 8);
    (*(*v13 + 32))(v13);
    (*(*v13 + 184))(v13, a4);
    (*(*v13 + 40))(v13);
    result = WTF::WeakHashSet<WebKit::RemoteLayerBackingStore,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::WeakHashSetConstIterator::operator++(&v20);
    v11 = v21;
  }

  if (*(v6 + 16) == 1)
  {
    v14 = *(*v6 + 8);

    return v14(v6);
  }

  else
  {
    --*(v6 + 16);
  }

  return result;
}

void sub_19DC4ECD4(_Unwind_Exception *exception_object)
{
  if (v1[4] == 1)
  {
    (*(*v1 + 8))(v1);
  }

  else
  {
    --v1[4];
  }

  _Unwind_Resume(exception_object);
}

uint64_t WebKit::PlaybackSessionManagerProxy::spatialVideoMetadataChanged(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v66[2] = *MEMORY[0x1E69E9840];
  result = WebKit::PlaybackSessionManagerProxy::ensureModelAndInterface(a1, a2, a3);
  v6 = *result;
  *(v6 + 16) = *(*result + 16) + 1;
  v7 = *(v6 + 304);
  v8 = *(a4 + 20);
  if (v7 != 1 || v8 == 0)
  {
    if (v7 == v8)
    {
      goto LABEL_9;
    }
  }

  else
  {
    result = WebCore::operator==(v6 + 284, a4);
    if (result)
    {
      goto LABEL_9;
    }
  }

  v10 = *(v6 + 24);
  if (v10)
  {
    v11 = *(v10 + 8);
    if (v11)
    {
      v12 = *(v11 + 80);
      if (v12)
      {
        atomic_fetch_add((v12 + 8), 1u);
        v13 = *(v6 + 336);
        v55 = "PlaybackSessionModelContext";
        v56 = 28;
        v57 = "spatialVideoMetadataChanged";
        v58 = v13;
        v14 = MEMORY[0x1E696EBD0];
        while (1)
        {
          v15 = *v14;
          if (v15)
          {
            break;
          }

          v16 = *v14;
          atomic_compare_exchange_strong_explicit(v14, &v16, v15 | 1, memory_order_acquire, memory_order_acquire);
          if (v16 == v15)
          {
            v17 = WTF::Logger::messageHandlerObservers(result);
            v18 = *(v17 + 12);
            if (v18)
            {
              v19 = *v17;
              v20 = *v17 + 8 * v18;
              do
              {
                v21 = *v19;
                LODWORD(buf) = 0;
                WTF::Logger::LogSiteIdentifier::toString(&buf + 1, &v55);
                v65 = 0;
                WTF::LogArgument<std::optional<WebCore::SpatialVideoMetadata>>::toString(v66, a4);
                WTF::Vector<WTF::JSONLogValue,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(v60, &buf, 2uLL);
                (*(*v21 + 16))(v21, &WebKit2LogMedia, 0, v60);
                WTF::Vector<std::tuple<Inspector::BackendDispatcher::CommonErrorCode,WTF::String>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v60, v22);
                for (i = 24; i != -8; i -= 16)
                {
                  v25 = *(&buf + i);
                  *(&buf + i) = 0;
                  if (v25 && atomic_fetch_add_explicit(v25, 0xFFFFFFFE, memory_order_relaxed) == 2)
                  {
                    WTF::StringImpl::destroy(v25, v23);
                  }
                }

                ++v19;
              }

              while (v19 != v20);
            }

            v26 = 1;
            atomic_compare_exchange_strong_explicit(v14, &v26, 0, memory_order_release, memory_order_relaxed);
            if (v26 != 1)
            {
              WTF::Lock::unlockSlow(MEMORY[0x1E696EBD0]);
            }

            if (*(v12 + 12) == 1)
            {
              WTF::Logger::LogSiteIdentifier::toString(&v62, &v55);
              WTF::LogArgument<std::optional<WebCore::SpatialVideoMetadata>>::toString(&v61, a4);
              *&buf = v62;
              v60[0] = v61;
              result = WTF::tryMakeStringFromAdapters<WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>>(&buf, v60, &v63);
              if (!v63)
              {
                __break(0xC471u);
                return result;
              }

              v28 = v61;
              v61 = 0;
              if (v28 && atomic_fetch_add_explicit(v28, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v28, v27);
              }

              v29 = v62;
              v62 = 0;
              if (v29 && atomic_fetch_add_explicit(v29, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v29, v27);
              }

              v30 = qword_1ED640D38;
              v31 = os_log_type_enabled(qword_1ED640D38, OS_LOG_TYPE_DEFAULT);
              if (v31)
              {
                WTF::String::utf8();
                v33 = v60[0] ? v60[0] + 16 : 0;
                LODWORD(buf) = 136446210;
                *(&buf + 4) = v33;
                _os_log_impl(&dword_19D52D000, v30, OS_LOG_TYPE_DEFAULT, "%{public}s", &buf, 0xCu);
                v31 = v60[0];
                v60[0] = 0;
                if (v31)
                {
                  if (*v31 == 1)
                  {
                    v31 = WTF::fastFree(v31, v32);
                  }

                  else
                  {
                    --*v31;
                  }
                }
              }

              if (WebKit2LogMedia)
              {
                v34 = MEMORY[0x1E696EBC0];
                while (1)
                {
                  v35 = *v34;
                  if (v35)
                  {
                    break;
                  }

                  v36 = *v34;
                  atomic_compare_exchange_strong_explicit(v34, &v36, v35 | 1, memory_order_acquire, memory_order_acquire);
                  if (v36 == v35)
                  {
                    v37 = WTF::Logger::observers(v31);
                    v38 = *(v37 + 12);
                    if (v38)
                    {
                      v39 = *v37;
                      v40 = *v37 + 8 * v38;
                      do
                      {
                        v41 = *v39;
                        LODWORD(buf) = 0;
                        WTF::Logger::LogSiteIdentifier::toString(&buf + 1, &v55);
                        v65 = 0;
                        WTF::LogArgument<std::optional<WebCore::SpatialVideoMetadata>>::toString(v66, a4);
                        WTF::Vector<WTF::JSONLogValue,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(v60, &buf, 2uLL);
                        (*(*v41 + 16))(v41, &WebKit2LogMedia, 0, v60);
                        WTF::Vector<std::tuple<Inspector::BackendDispatcher::CommonErrorCode,WTF::String>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v60, v42);
                        for (j = 24; j != -8; j -= 16)
                        {
                          v44 = *(&buf + j);
                          *(&buf + j) = 0;
                          if (v44 && atomic_fetch_add_explicit(v44, 0xFFFFFFFE, memory_order_relaxed) == 2)
                          {
                            WTF::StringImpl::destroy(v44, v32);
                          }
                        }

                        ++v39;
                      }

                      while (v39 != v40);
                    }

                    v45 = 1;
                    atomic_compare_exchange_strong_explicit(v34, &v45, 0, memory_order_release, memory_order_relaxed);
                    if (v45 != 1)
                    {
                      WTF::Lock::unlockSlow(MEMORY[0x1E696EBC0]);
                    }

                    break;
                  }
                }
              }

              v46 = v63;
              v63 = 0;
              if (v46 && atomic_fetch_add_explicit(v46, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v46, v32);
              }
            }

            break;
          }
        }

        if (atomic_fetch_add((v12 + 8), 0xFFFFFFFF) == 1)
        {
          atomic_store(1u, (v12 + 8));
          (*(*v12 + 8))(v12);
        }
      }
    }
  }

  v47 = *a4;
  *(v6 + 297) = *(a4 + 13);
  *(v6 + 284) = v47;
  WTF::WeakHashSet<WebKit::RemoteAudioSessionProxy,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::begin(&buf, (v6 + 48));
  v48 = *(v6 + 48);
  if (v48)
  {
    v49 = *(v48 - 4);
    v50 = (v48 + 8 * v49);
  }

  else
  {
    v50 = 0;
    v49 = 0;
  }

  v55 = (v6 + 48);
  v56 = v50;
  v57 = v50;
  v58 = v50;
  v59 = v48 + 8 * v49;
  result = WTF::WeakHashSet<WebKit::RemoteLayerBackingStore,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::WeakHashSetConstIterator::skipEmptyBuckets(&v55);
  v51 = *(&buf + 1);
  v52 = v56;
  while (v51 != v52)
  {
    v53 = *(*v51 + 8);
    (*(*v53 + 32))(v53);
    (*(*v53 + 192))(v53, v6 + 284);
    (*(*v53 + 40))(v53);
    result = WTF::WeakHashSet<WebKit::RemoteLayerBackingStore,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::WeakHashSetConstIterator::operator++(&buf);
    v51 = *(&buf + 1);
  }

LABEL_9:
  if (*(v6 + 16) == 1)
  {
    v54 = *(*v6 + 8);

    return v54(v6);
  }

  else
  {
    --*(v6 + 16);
  }

  return result;
}

void sub_19DC4F380(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, unsigned int *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, WTF::StringImpl *a18, uint64_t a19, WTF::StringImpl *a20, char a21, WTF::StringImpl *a22)
{
  v25 = 1;
  atomic_compare_exchange_strong_explicit(v23, &v25, 0, memory_order_release, memory_order_relaxed);
  if (v25 != 1)
  {
    WTF::Lock::unlockSlow(MEMORY[0x1E696EBC0]);
  }

  if (a20 && atomic_fetch_add_explicit(a20, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a20, a2);
  }

  if (atomic_fetch_add(a10 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, a10 + 2);
    (*(*a10 + 8))(a10);
  }

  if (v22[4] == 1)
  {
    (*(*v22 + 8))(v22);
  }

  else
  {
    --v22[4];
  }

  _Unwind_Resume(exception_object);
}

WTF::Logger *WebKit::PlaybackSessionManagerProxy::videoProjectionMetadataChanged(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 *a4)
{
  v71[2] = *MEMORY[0x1E69E9840];
  result = WebKit::PlaybackSessionManagerProxy::ensureModelAndInterface(a1, a2, a3);
  v6 = *result;
  v7 = *(*result + 16);
  *(v6 + 16) = v7 + 1;
  v8 = *(v6 + 328);
  v9 = a4[16];
  if (v8 != 1 || v9 == 0)
  {
    if (v8 == v9)
    {
      goto LABEL_84;
    }
  }

  else if (*(v6 + 312) == *a4 && *(v6 + 320) == *(a4 + 1))
  {
    goto LABEL_84;
  }

  v12 = *(v6 + 24);
  if (v12)
  {
    v13 = *(v12 + 8);
    if (v13)
    {
      v14 = *(v13 + 80);
      if (v14)
      {
        atomic_fetch_add((v14 + 8), 1u);
        v15 = *(v6 + 336);
        v60 = "PlaybackSessionModelContext";
        v61 = 28;
        v62 = "videoProjectionMetadataChanged";
        v63 = v15;
        v16 = MEMORY[0x1E696EBD0];
        while (1)
        {
          v17 = *v16;
          if (v17)
          {
            break;
          }

          v18 = *v16;
          atomic_compare_exchange_strong_explicit(v16, &v18, v17 | 1, memory_order_acquire, memory_order_acquire);
          if (v18 == v17)
          {
            v19 = WTF::Logger::messageHandlerObservers(result);
            v20 = *(v19 + 12);
            if (v20)
            {
              v21 = *v19;
              v22 = *v19 + 8 * v20;
              do
              {
                v23 = *v21;
                LODWORD(buf) = 0;
                WTF::Logger::LogSiteIdentifier::toString(&buf + 1, &v60);
                v70 = 0;
                WTF::LogArgument<std::optional<WebCore::VideoProjectionMetadata>>::toString(v71, a4);
                WTF::Vector<WTF::JSONLogValue,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(v65, &buf, 2uLL);
                (*(*v23 + 16))(v23, &WebKit2LogMedia, 0, v65);
                WTF::Vector<std::tuple<Inspector::BackendDispatcher::CommonErrorCode,WTF::String>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v65, v24);
                for (i = 24; i != -8; i -= 16)
                {
                  v27 = *(&buf + i);
                  *(&buf + i) = 0;
                  if (v27 && atomic_fetch_add_explicit(v27, 0xFFFFFFFE, memory_order_relaxed) == 2)
                  {
                    WTF::StringImpl::destroy(v27, v25);
                  }
                }

                ++v21;
              }

              while (v21 != v22);
            }

            v28 = 1;
            atomic_compare_exchange_strong_explicit(v16, &v28, 0, memory_order_release, memory_order_relaxed);
            if (v28 != 1)
            {
              WTF::Lock::unlockSlow(MEMORY[0x1E696EBD0]);
            }

            if (*(v14 + 12) == 1)
            {
              WTF::Logger::LogSiteIdentifier::toString(&v67, &v60);
              WTF::LogArgument<std::optional<WebCore::VideoProjectionMetadata>>::toString(&v66, a4);
              *&buf = v67;
              v65[0] = v66;
              result = WTF::tryMakeStringFromAdapters<WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>>(&buf, v65, &v68);
              if (!v68)
              {
                __break(0xC471u);
                return result;
              }

              v30 = v66;
              v66 = 0;
              if (v30 && atomic_fetch_add_explicit(v30, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v30, v29);
              }

              v31 = v67;
              v67 = 0;
              if (v31 && atomic_fetch_add_explicit(v31, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v31, v29);
              }

              v32 = qword_1ED640D38;
              v33 = os_log_type_enabled(qword_1ED640D38, OS_LOG_TYPE_DEFAULT);
              if (v33)
              {
                WTF::String::utf8();
                v35 = v65[0] ? v65[0] + 16 : 0;
                LODWORD(buf) = 136446210;
                *(&buf + 4) = v35;
                _os_log_impl(&dword_19D52D000, v32, OS_LOG_TYPE_DEFAULT, "%{public}s", &buf, 0xCu);
                v33 = v65[0];
                v65[0] = 0;
                if (v33)
                {
                  if (*v33 == 1)
                  {
                    v33 = WTF::fastFree(v33, v34);
                  }

                  else
                  {
                    --*v33;
                  }
                }
              }

              if (WebKit2LogMedia)
              {
                v36 = MEMORY[0x1E696EBC0];
                while (1)
                {
                  v37 = *v36;
                  if (v37)
                  {
                    break;
                  }

                  v38 = *v36;
                  atomic_compare_exchange_strong_explicit(v36, &v38, v37 | 1, memory_order_acquire, memory_order_acquire);
                  if (v38 == v37)
                  {
                    v39 = WTF::Logger::observers(v33);
                    v40 = *(v39 + 12);
                    if (v40)
                    {
                      v41 = *v39;
                      v42 = *v39 + 8 * v40;
                      do
                      {
                        v43 = *v41;
                        LODWORD(buf) = 0;
                        WTF::Logger::LogSiteIdentifier::toString(&buf + 1, &v60);
                        v70 = 0;
                        WTF::LogArgument<std::optional<WebCore::VideoProjectionMetadata>>::toString(v71, a4);
                        WTF::Vector<WTF::JSONLogValue,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(v65, &buf, 2uLL);
                        (*(*v43 + 16))(v43, &WebKit2LogMedia, 0, v65);
                        WTF::Vector<std::tuple<Inspector::BackendDispatcher::CommonErrorCode,WTF::String>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v65, v44);
                        for (j = 24; j != -8; j -= 16)
                        {
                          v46 = *(&buf + j);
                          *(&buf + j) = 0;
                          if (v46 && atomic_fetch_add_explicit(v46, 0xFFFFFFFE, memory_order_relaxed) == 2)
                          {
                            WTF::StringImpl::destroy(v46, v34);
                          }
                        }

                        ++v41;
                      }

                      while (v41 != v42);
                    }

                    v47 = 1;
                    atomic_compare_exchange_strong_explicit(v36, &v47, 0, memory_order_release, memory_order_relaxed);
                    if (v47 != 1)
                    {
                      WTF::Lock::unlockSlow(MEMORY[0x1E696EBC0]);
                    }

                    break;
                  }
                }
              }

              v48 = v68;
              v68 = 0;
              if (v48 && atomic_fetch_add_explicit(v48, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v48, v34);
              }
            }

            break;
          }
        }

        if (atomic_fetch_add((v14 + 8), 0xFFFFFFFF) == 1)
        {
          atomic_store(1u, (v14 + 8));
          (*(*v14 + 8))(v14);
        }
      }
    }
  }

  if (*(v6 + 328) == a4[16])
  {
    if (*(v6 + 328))
    {
      *(v6 + 312) = *a4;
      v49 = *(a4 + 1);
      if (v49)
      {
        ++*v49;
      }

      v50 = *(v6 + 320);
      *(v6 + 320) = v49;
      if (v50)
      {
        if (*v50 == 1)
        {
          WTF::JSONImpl::Value::operator delete();
        }

        else
        {
          --*v50;
        }
      }
    }
  }

  else if (*(v6 + 328))
  {
    v51 = *(v6 + 320);
    *(v6 + 320) = 0;
    if (v51)
    {
      if (*v51 == 1)
      {
        WTF::JSONImpl::Value::operator delete();
      }

      else
      {
        --*v51;
      }
    }

    *(v6 + 328) = 0;
  }

  else
  {
    *(v6 + 312) = *a4;
    v52 = *(a4 + 1);
    if (v52)
    {
      ++*v52;
    }

    *(v6 + 320) = v52;
    *(v6 + 328) = 1;
  }

  WTF::WeakHashSet<WebKit::RemoteAudioSessionProxy,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::begin(&buf, (v6 + 48));
  v53 = *(v6 + 48);
  if (v53)
  {
    v54 = *(v53 - 4);
    v55 = (v53 + 8 * v54);
  }

  else
  {
    v55 = 0;
    v54 = 0;
  }

  v60 = (v6 + 48);
  v61 = v55;
  v62 = v55;
  v63 = v55;
  v64 = v53 + 8 * v54;
  result = WTF::WeakHashSet<WebKit::RemoteLayerBackingStore,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::WeakHashSetConstIterator::skipEmptyBuckets(&v60);
  v56 = *(&buf + 1);
  v57 = v61;
  while (v56 != v57)
  {
    v58 = *(*v56 + 8);
    (*(*v58 + 32))(v58);
    (*(*v58 + 200))(v58, v6 + 312);
    (*(*v58 + 40))(v58);
    result = WTF::WeakHashSet<WebKit::RemoteLayerBackingStore,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::WeakHashSetConstIterator::operator++(&buf);
    v56 = *(&buf + 1);
  }

  v7 = *(v6 + 16) - 1;
LABEL_84:
  if (v7)
  {
    *(v6 + 16) = v7;
  }

  else
  {
    v59 = *(*v6 + 8);

    return v59(v6);
  }

  return result;
}

void sub_19DC4FCB8(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, WTF::StringImpl *a16, uint64_t a17, WTF::StringImpl *a18, char a19, WTF::StringImpl *a20)
{
  v24 = 1;
  atomic_compare_exchange_strong_explicit(v22, &v24, 0, memory_order_release, memory_order_relaxed);
  if (v24 != 1)
  {
    WTF::Lock::unlockSlow(MEMORY[0x1E696EBC0]);
  }

  if (a18 && atomic_fetch_add_explicit(a18, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a18, a2);
  }

  if (atomic_fetch_add(v21 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v21 + 2);
    (*(*v21 + 8))(v21);
  }

  if (v20[4] == 1)
  {
    (*(*v20 + 8))(v20);
  }

  else
  {
    --v20[4];
  }

  _Unwind_Resume(exception_object);
}

uint64_t WebKit::PlaybackSessionManagerProxy::wirelessVideoPlaybackDisabled(WebKit::PlaybackSessionManagerProxy *this)
{
  if (*(this + 6))
  {
    v2 = WTF::HashTable<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::tuple<WTF::Ref<WebKit::PlaybackSessionModelContext,WTF::RawPtrTraits<WebKit::PlaybackSessionModelContext>,WTF::DefaultRefDerefTraits<WebKit::PlaybackSessionModelContext>>,WTF::Ref<WebCore::PlaybackSessionInterfaceIOS,WTF::RawPtrTraits<WebCore::PlaybackSessionInterfaceIOS>,WTF::DefaultRefDerefTraits<WebCore::PlaybackSessionInterfaceIOS>>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::tuple<WTF::Ref<WebKit::PlaybackSessionModelContext,WTF::RawPtrTraits<WebKit::PlaybackSessionModelContext>,WTF::DefaultRefDerefTraits<WebKit::PlaybackSessionModelContext>>,WTF::Ref<WebCore::PlaybackSessionInterfaceIOS,WTF::RawPtrTraits<WebCore::PlaybackSessionInterfaceIOS>,WTF::DefaultRefDerefTraits<WebCore::PlaybackSessionInterfaceIOS>>>>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashMap<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::tuple<WTF::Ref<WebKit::PlaybackSessionModelContext,WTF::RawPtrTraits<WebKit::PlaybackSessionModelContext>,WTF::DefaultRefDerefTraits<WebKit::PlaybackSessionModelContext>>,WTF::Ref<WebCore::PlaybackSessionInterfaceIOS,WTF::RawPtrTraits<WebCore::PlaybackSessionInterfaceIOS>,WTF::DefaultRefDerefTraits<WebCore::PlaybackSessionInterfaceIOS>>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<std::tuple<WTF::Ref<WebKit::PlaybackSessionModelContext,WTF::RawPtrTraits<WebKit::PlaybackSessionModelContext>,WTF::DefaultRefDerefTraits<WebKit::PlaybackSessionModelContext>>,WTF::Ref<WebCore::PlaybackSessionInterfaceIOS,WTF::RawPtrTraits<WebCore::PlaybackSessionInterfaceIOS>,WTF::DefaultRefDerefTraits<WebCore::PlaybackSessionInterfaceIOS>>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::tuple<WTF::Ref<WebKit::PlaybackSessionModelContext,WTF::RawPtrTraits<WebKit::PlaybackSessionModelContext>,WTF::DefaultRefDerefTraits<WebKit::PlaybackSessionModelContext>>,WTF::Ref<WebCore::PlaybackSessionInterfaceIOS,WTF::RawPtrTraits<WebCore::PlaybackSessionInterfaceIOS>,WTF::DefaultRefDerefTraits<WebCore::PlaybackSessionInterfaceIOS>>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<std::tuple<WTF::Ref<WebKit::PlaybackSessionModelContext,WTF::RawPtrTraits<WebKit::PlaybackSessionModelContext>,WTF::DefaultRefDerefTraits<WebKit::PlaybackSessionModelContext>>,WTF::Ref<WebCore::PlaybackSessionInterfaceIOS,WTF::RawPtrTraits<WebCore::PlaybackSessionInterfaceIOS>,WTF::DefaultRefDerefTraits<WebCore::PlaybackSessionInterfaceIOS>>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>,(WTF::ShouldValidateKey)1,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>( this + 5,  this + 6);
    v3 = *(this + 5);
    if (v3)
    {
      v3 += 4 * *(v3 - 1);
    }

    if (v3 == v2)
    {
      v4 = 1;
    }

    else
    {
      v4 = *(v2[2] + 232);
    }
  }

  else
  {
    v4 = 1;
  }

  return v4 & 1;
}

unint64_t *WebKit::PlaybackSessionManagerProxy::controlsManagerInterface@<X0>(unint64_t *this@<X0>, unint64_t *a2@<X8>)
{
  v3 = this[6];
  if (v3)
  {
    this = WebKit::PlaybackSessionManagerProxy::ensureModelAndInterface(this, v3, this[7]);
    v4 = this[1];
    ++*(v4 + 16);
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
  return this;
}

BOOL WebKit::PlaybackSessionManagerProxy::isPaused(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10[0] = a2;
  v10[1] = a3;
  v4 = WTF::HashTable<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::tuple<WTF::Ref<WebKit::PlaybackSessionModelContext,WTF::RawPtrTraits<WebKit::PlaybackSessionModelContext>,WTF::DefaultRefDerefTraits<WebKit::PlaybackSessionModelContext>>,WTF::Ref<WebCore::PlaybackSessionInterfaceIOS,WTF::RawPtrTraits<WebCore::PlaybackSessionInterfaceIOS>,WTF::DefaultRefDerefTraits<WebCore::PlaybackSessionInterfaceIOS>>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::tuple<WTF::Ref<WebKit::PlaybackSessionModelContext,WTF::RawPtrTraits<WebKit::PlaybackSessionModelContext>,WTF::DefaultRefDerefTraits<WebKit::PlaybackSessionModelContext>>,WTF::Ref<WebCore::PlaybackSessionInterfaceIOS,WTF::RawPtrTraits<WebCore::PlaybackSessionInterfaceIOS>,WTF::DefaultRefDerefTraits<WebCore::PlaybackSessionInterfaceIOS>>>>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashMap<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::tuple<WTF::Ref<WebKit::PlaybackSessionModelContext,WTF::RawPtrTraits<WebKit::PlaybackSessionModelContext>,WTF::DefaultRefDerefTraits<WebKit::PlaybackSessionModelContext>>,WTF::Ref<WebCore::PlaybackSessionInterfaceIOS,WTF::RawPtrTraits<WebCore::PlaybackSessionInterfaceIOS>,WTF::DefaultRefDerefTraits<WebCore::PlaybackSessionInterfaceIOS>>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<std::tuple<WTF::Ref<WebKit::PlaybackSessionModelContext,WTF::RawPtrTraits<WebKit::PlaybackSessionModelContext>,WTF::DefaultRefDerefTraits<WebKit::PlaybackSessionModelContext>>,WTF::Ref<WebCore::PlaybackSessionInterfaceIOS,WTF::RawPtrTraits<WebCore::PlaybackSessionInterfaceIOS>,WTF::DefaultRefDerefTraits<WebCore::PlaybackSessionInterfaceIOS>>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::tuple<WTF::Ref<WebKit::PlaybackSessionModelContext,WTF::RawPtrTraits<WebKit::PlaybackSessionModelContext>,WTF::DefaultRefDerefTraits<WebKit::PlaybackSessionModelContext>>,WTF::Ref<WebCore::PlaybackSessionInterfaceIOS,WTF::RawPtrTraits<WebCore::PlaybackSessionInterfaceIOS>,WTF::DefaultRefDerefTraits<WebCore::PlaybackSessionInterfaceIOS>>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<std::tuple<WTF::Ref<WebKit::PlaybackSessionModelContext,WTF::RawPtrTraits<WebKit::PlaybackSessionModelContext>,WTF::DefaultRefDerefTraits<WebKit::PlaybackSessionModelContext>>,WTF::Ref<WebCore::PlaybackSessionInterfaceIOS,WTF::RawPtrTraits<WebCore::PlaybackSessionInterfaceIOS>,WTF::DefaultRefDerefTraits<WebCore::PlaybackSessionInterfaceIOS>>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>,(WTF::ShouldValidateKey)1,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>( (a1 + 40),  v10);
  v5 = *(a1 + 40);
  if (v5)
  {
    v5 += 4 * *(v5 - 1);
  }

  if (v5 == v4)
  {
    return 0;
  }

  v6 = v4[2];
  v7 = *(v6 + 16);
  *(v6 + 16) = v7 + 1;
  v8 = (*(v6 + 104) & 3) == 0;
  if (v7)
  {
    *(v6 + 16) = v7;
  }

  else
  {
    (*(*v6 + 8))(v6);
  }

  return v8;
}

unint64_t WebKit::PlaybackSessionManagerProxy::setLogIdentifier(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = *WebKit::PlaybackSessionManagerProxy::ensureModelAndInterface(a1, a2, a3);
  v6 = *(result + 16);
  *(result + 16) = v6 + 1;
  *(result + 336) = a4;
  if (v6)
  {
    *(result + 16) = v6;
  }

  else
  {
    v7 = *(*result + 8);

    return v7();
  }

  return result;
}

void sub_19DC5049C(_Unwind_Exception *exception_object, void *a2)
{
  if (v3)
  {
    WTF::ThreadSafeWeakPtrControlBlock::weakDeref(v3, a2);
  }

  v5 = 1;
  atomic_compare_exchange_strong_explicit(v2, &v5, 0, memory_order_release, memory_order_relaxed);
  if (v5 != 1)
  {
    WTF::Lock::unlockSlow(v2);
  }

  _Unwind_Resume(exception_object);
}

void sub_19DC507D8(_Unwind_Exception *exception_object)
{
  v3 = 1;
  atomic_compare_exchange_strong_explicit(v1, &v3, 0, memory_order_release, memory_order_relaxed);
  if (v3 != 1)
  {
    WTF::Lock::unlockSlow(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_19DC50D90(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  if (a9)
  {
    (*(*a9 + 8))(a9);
  }

  _Unwind_Resume(exception_object);
}

void sub_19DC51094(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  if (a9)
  {
    (*(*a9 + 8))(a9);
  }

  _Unwind_Resume(exception_object);
}

void sub_19DC5123C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  if (a9)
  {
    (*(*a9 + 8))(a9);
  }

  _Unwind_Resume(exception_object);
}

void sub_19DC514CC(_Unwind_Exception *a1, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  bmalloc::api::tzoneFree(v10, a2);
  if (a10)
  {
    (*(*a10 + 8))(a10);
  }

  _Unwind_Resume(a1);
}

void sub_19DC5174C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id location, uint64_t a11)
{
  v12 = a11;
  a11 = 0;
  if (v12)
  {
    (*(*v12 + 8))(v12);
  }

  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_19DC51904(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id location, uint64_t a11)
{
  v12 = a11;
  a11 = 0;
  if (v12)
  {
    (*(*v12 + 8))(v12);
  }

  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t std::optional<WebKit::AssertionCapability>::operator=[abi:sn200100]<WebKit::AssertionCapability,void>(uint64_t a1, WTF::StringImpl *a2)
{
  if (*(a1 + 56) == 1)
  {
    v4 = *(a2 + 1);
    if (v4)
    {
      v5 = v4;
    }

    v6 = *(a1 + 8);
    *(a1 + 8) = v4;
    if (v6)
    {
    }

    v7 = *(a2 + 2);
    *(a2 + 2) = 0;
    v8 = *(a1 + 16);
    *(a1 + 16) = v7;
    if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v8, a2);
    }

    v9 = *(a2 + 3);
    *(a2 + 3) = 0;
    v10 = *(a1 + 24);
    *(a1 + 24) = v9;
    if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v10, a2);
    }

    v11 = *(a2 + 4);
    *(a2 + 4) = 0;
    v12 = *(a1 + 32);
    *(a1 + 32) = v11;
    if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v12, a2);
    }

    _Block_release(*(a1 + 40));
    v13 = *(a2 + 5);
    *(a2 + 5) = 0;
    *(a1 + 40) = v13;
    _Block_release(*(a1 + 48));
    v14 = *(a2 + 6);
    *(a2 + 6) = 0;
    *(a1 + 48) = v14;
  }

  else
  {
    v15 = *(a2 + 1);
    *a1 = &unk_1F10E6398;
    *(a1 + 8) = v15;
    if (v15)
    {
      v16 = v15;
    }

    *a1 = &unk_1F10E6370;
    v17 = *(a2 + 2);
    *(a2 + 2) = 0;
    *(a1 + 16) = v17;
    v18 = *(a2 + 3);
    *(a2 + 3) = 0;
    *(a1 + 24) = v18;
    v19 = *(a2 + 4);
    *(a2 + 4) = 0;
    *(a1 + 32) = v19;
    v20 = *(a2 + 5);
    *(a2 + 5) = 0;
    *(a1 + 40) = v20;
    v21 = *(a2 + 6);
    *(a2 + 6) = 0;
    *(a1 + 48) = v21;
    *(a1 + 56) = 1;
  }

  return a1;
}

uint64_t ___ZN6WebKit16ProcessAssertion4initERKN3WTF6StringE_block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = qword_1ED641030;
  if (os_log_type_enabled(qword_1ED641030, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 40);
    v5 = v2[5];
    v7 = 134218498;
    v8 = v2;
    v9 = 2082;
    v10 = v4;
    v11 = 1024;
    v12 = v5;
    _os_log_impl(&dword_19D52D000, v3, OS_LOG_TYPE_DEFAULT, "%p - ProcessAssertion: RBS %{public}s assertion for process with PID=%d was invalidated", &v7, 0x1Cu);
  }

  return (*(*v2 + 16))(v2);
}

uint64_t ___ZN6WebKit16ProcessAssertion4initERKN3WTF6StringE_block_invoke_328(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = qword_1ED641030;
  if (os_log_type_enabled(qword_1ED641030, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 40);
    v5 = *(v2 + 5);
    v7 = 134218498;
    v8 = v2;
    v9 = 2082;
    v10 = v4;
    v11 = 1024;
    v12 = v5;
    _os_log_impl(&dword_19D52D000, v3, OS_LOG_TYPE_DEFAULT, "%p - ProcessAssertion() RBS %{public}s assertion for process with PID=%d will be invalidated", &v7, 0x1Cu);
  }

  return WebKit::ProcessAssertion::processAssertionWillBeInvalidated(v2);
}

uint64_t WebKit::ProcessAssertion::processAssertionWillBeInvalidated(WebKit::ProcessAssertion *this)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = qword_1ED641030;
  if (os_log_type_enabled(qword_1ED641030, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(this + 5);
    v5 = 134218240;
    v6 = this;
    v7 = 1024;
    v8 = v3;
    _os_log_impl(&dword_19D52D000, v2, OS_LOG_TYPE_DEFAULT, "%p - ProcessAssertion::processAssertionWillBeInvalidated() PID=%d", &v5, 0x12u);
  }

  result = *(this + 7);
  if (result)
  {
    return (*(*result + 16))(result);
  }

  return result;
}

void WebKit::ProcessAssertion::~ProcessAssertion(WebKit::ProcessAssertion *this)
{
  v22 = *MEMORY[0x1E69E9840];
  *this = &unk_1F1100818;
  v2 = qword_1ED641030;
  if (os_log_type_enabled(qword_1ED641030, OS_LOG_TYPE_DEFAULT))
  {
    WTF::String::utf8();
    v3 = v15 ? v15 + 16 : 0;
    v4 = *(this + 5);
    *buf = 134218498;
    v17 = this;
    v18 = 2082;
    v19 = v3;
    v20 = 1024;
    v21 = v4;
    _os_log_impl(&dword_19D52D000, v2, OS_LOG_TYPE_DEFAULT, "%p - ~ProcessAssertion: Releasing process assertion '%{public}s' for process with PID=%d", buf, 0x1Cu);
    if (v15)
    {
      if (*v15 == 1)
      {
        WTF::fastFree(v15, v5);
      }

      else
      {
        --*v15;
      }
    }
  }

  if (*(this + 4))
  {
    [*(this + 5) setInvalidationCallback:0];
    [*(this + 5) setPrepareForInvalidationCallback:0];
    [*(this + 4) removeObserver:*(this + 5)];
    v6 = *(this + 5);
    *(this + 5) = 0;
    if (v6)
    {
    }

    [*(this + 4) invalidate];
  }

  v7 = 0;
  atomic_compare_exchange_strong_explicit(WebKit::ProcessAssertion::s_capabilityLock, &v7, 1u, memory_order_acquire, memory_order_acquire);
  if (v7)
  {
    MEMORY[0x19EB01E30](WebKit::ProcessAssertion::s_capabilityLock);
  }

  WebKit::ExtensionCapabilityGrant::invalidate((this + 136));
  v8 = 1;
  atomic_compare_exchange_strong_explicit(WebKit::ProcessAssertion::s_capabilityLock, &v8, 0, memory_order_release, memory_order_relaxed);
  if (v8 != 1)
  {
    WTF::Lock::unlockSlow(WebKit::ProcessAssertion::s_capabilityLock);
  }

  std::__optional_destruct_base<WebKit::ExtensionProcess,false>::~__optional_destruct_base[abi:sn200100](this + 152);
  WebKit::ExtensionCapabilityGrant::~ExtensionCapabilityGrant((this + 136));
  if (*(this + 128) == 1)
  {
    WebKit::AssertionCapability::~AssertionCapability(this + 9);
  }

  v10 = *(this + 8);
  *(this + 8) = 0;
  if (v10)
  {
    (*(*v10 + 8))(v10);
  }

  v11 = *(this + 7);
  *(this + 7) = 0;
  if (v11)
  {
    (*(*v11 + 8))(v11);
  }

  v12 = *(this + 5);
  *(this + 5) = 0;
  if (v12)
  {
  }

  v13 = *(this + 4);
  *(this + 4) = 0;
  if (v13)
  {
  }

  v14 = *(this + 3);
  *(this + 3) = 0;
  if (v14)
  {
    if (atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v14, v9);
    }
  }
}

{
  WebKit::ProcessAssertion::~ProcessAssertion(this);

  bmalloc::api::tzoneFree(v1, v2);
}

void sub_19DC5204C(_Unwind_Exception *a1)
{
  std::__optional_destruct_base<WebKit::ExtensionProcess,false>::~__optional_destruct_base[abi:sn200100](v1 + 152);
  WebKit::ExtensionCapabilityGrant::~ExtensionCapabilityGrant((v1 + 136));
  if (*(v1 + 128) == 1)
  {
    WebKit::AssertionCapability::~AssertionCapability((v1 + 72));
  }

  v4 = *(v1 + 64);
  *(v1 + 64) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = *(v1 + 56);
  *(v1 + 56) = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  v6 = *(v1 + 40);
  *(v1 + 40) = 0;
  if (v6)
  {
  }

  v7 = *(v1 + 32);
  *(v1 + 32) = 0;
  if (v7)
  {
  }

  v8 = *(v1 + 24);
  *(v1 + 24) = 0;
  if (v8)
  {
    if (atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v8, v3);
    }
  }

  _Unwind_Resume(a1);
}

uint64_t WebKit::ProcessAssertion::processAssertionWasInvalidated(WebKit::ProcessAssertion *this)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = qword_1ED641030;
  if (os_log_type_enabled(qword_1ED641030, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(this + 5);
    v5 = 134218240;
    v6 = this;
    v7 = 1024;
    v8 = v3;
    _os_log_impl(&dword_19D52D000, v2, OS_LOG_TYPE_DEFAULT, "%p - ProcessAssertion::processAssertionWasInvalidated() PID=%d", &v5, 0x12u);
  }

  *(this + 48) = 1;
  result = *(this + 8);
  if (result)
  {
    return (*(*result + 16))(result);
  }

  return result;
}

void WebKit::ProcessAndUIAssertion::~ProcessAndUIAssertion(WebKit::ProcessAndUIAssertion *this)
{
  if (*(this + 184) == 1)
  {
    [+[WKProcessAssertionBackgroundTaskManager shared](WKProcessAssertionBackgroundTaskManager "shared")];
  }

  v2 = *(this + 22);
  *(this + 22) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  WebKit::ProcessAssertion::~ProcessAssertion(this);
}

{
  WebKit::ProcessAndUIAssertion::~ProcessAndUIAssertion(this);

  bmalloc::api::tzoneFree(v1, v2);
}

void sub_19DC52304(_Unwind_Exception *a1)
{
  v3 = *(v1 + 22);
  *(v1 + 22) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  WebKit::ProcessAssertion::~ProcessAssertion(v1);
  _Unwind_Resume(a1);
}

uint64_t WebKit::ProcessAndUIAssertion::setProcessStateMonitorEnabled(WebKit::ProcessAndUIAssertion *this)
{
  v2 = +[WKProcessAssertionBackgroundTaskManager shared];

  return [v2 setProcessStateMonitorEnabled:this];
}

atomic_uchar *WebKit::ProcessAndUIAssertion::processAssertionWasInvalidated(atomic_ullong *this)
{
  v2 = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::NetworkDataTask,(WTF::DestructionThread)1>::controlBlock(this + 1);
  v3 = WTF::ThreadSafeWeakPtrControlBlock::weakRef(v2);
  result = WebKit::ProcessAssertion::processAssertionWasInvalidated(this);
  if (v3)
  {
    WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::LibWebRTCCodecsProxy>(&v8, v3, this);
    v6 = v8;
    if (v8)
    {
      WebKit::ProcessAndUIAssertion::updateRunInBackgroundCount(this);
      WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::ProcessAssertion,(WTF::DestructionThread)0>::deref((v6 + 8), v7);
    }

    return WTF::ThreadSafeWeakPtrControlBlock::weakDeref(v3, v5);
  }

  return result;
}

void sub_19DC52454(_Unwind_Exception *a1, void *a2)
{
  WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::ProcessAssertion,(WTF::DestructionThread)0>::deref((v3 + 8), a2);
  WTF::ThreadSafeWeakPtrControlBlock::weakDeref(v2, v5);
  _Unwind_Resume(a1);
}

void WebKit::ResourceLoadDelegate::ResourceLoadClient::~ResourceLoadClient(WebKit::ResourceLoadDelegate::ResourceLoadClient *this)
{
  v1 = *(this + 1);
  *this = &unk_1F1100868;
  *(this + 1) = 0;
  if (v1)
  {
    if (*v1)
    {
      --*v1;
    }

    else
    {
      __break(0xC471u);
    }
  }
}

{
  WebKit::ResourceLoadDelegate::ResourceLoadClient::~ResourceLoadClient(this);

  bmalloc::api::tzoneFree(v1, v2);
}

void WebKit::ResourceLoadDelegate::ResourceLoadClient::didSendRequest(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
    __break(0xC471u);
    goto LABEL_16;
  }

  if ((*(v2 + 24) & 1) == 0)
  {
    return;
  }

  WeakRetained = objc_loadWeakRetained((v2 + 16));
  if (!WeakRetained)
  {
    return;
  }

  v5 = *(a1 + 8);
  if (!v5)
  {
    __break(0xC471u);
    JUMPOUT(0x19DC52648);
  }

  v6 = objc_loadWeakRetained((v5 + 8));
  API::ResourceLoadInfo::create(&v10, a2);
  v7 = v10;
  v8 = *(v10 + 8);
  if (v8)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      __break(0xC471u);
LABEL_16:
      JUMPOUT(0x19DC52628);
    }
  }

  [WeakRetained webView:v6 resourceLoad:v8 didSendRequest:WebCore::ResourceRequest::nsURLRequest()];
  CFRelease(*(v7 + 8));
  if (v6)
  {
  }
}

void sub_19DC5266C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, id a9)
{
  if (v9)
  {
  }

  _Unwind_Resume(a1);
}

uint64_t API::ResourceLoadInfo::create(uint64_t *a1, uint64_t *a2)
{
  v4 = API::Object::newObject(0x90uLL, 17);
  result = API::ResourceLoadInfo::ResourceLoadInfo(v4, a2);
  *a1 = v4;
  return result;
}

void WebKit::ResourceLoadDelegate::ResourceLoadClient::didPerformHTTPRedirection(uint64_t a1, uint64_t *a2, WebCore::ResourceResponse *a3)
{
  v3 = *(a1 + 8);
  if (!v3)
  {
    __break(0xC471u);
    goto LABEL_16;
  }

  if ((*(v3 + 24) & 2) == 0)
  {
    return;
  }

  WeakRetained = objc_loadWeakRetained((v3 + 16));
  if (!WeakRetained)
  {
    return;
  }

  v7 = *(a1 + 8);
  if (!v7)
  {
    __break(0xC471u);
    JUMPOUT(0x19DC52850);
  }

  v8 = objc_loadWeakRetained((v7 + 8));
  API::ResourceLoadInfo::create(&v13, a2);
  v9 = v13;
  v10 = *(v13 + 8);
  if (v10)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      __break(0xC471u);
LABEL_16:
      JUMPOUT(0x19DC52830);
    }
  }

  v11 = WebCore::ResourceResponse::nsURLResponse(a3);
  [WeakRetained webView:v8 resourceLoad:v10 didPerformHTTPRedirection:v11 newRequest:WebCore::ResourceRequest::nsURLRequest()];
  CFRelease(*(v9 + 8));
  if (v8)
  {
  }
}

void sub_19DC52874(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, id a9)
{
  if (v9)
  {
  }

  _Unwind_Resume(a1);
}

void WebKit::ResourceLoadDelegate::ResourceLoadClient::didReceiveChallenge(uint64_t a1, uint64_t *a2, WebCore *a3)
{
  v3 = *(a1 + 8);
  if (!v3)
  {
    __break(0xC471u);
    goto LABEL_16;
  }

  if ((*(v3 + 24) & 4) == 0)
  {
    return;
  }

  WeakRetained = objc_loadWeakRetained((v3 + 16));
  if (!WeakRetained)
  {
    return;
  }

  v7 = *(a1 + 8);
  if (!v7)
  {
    __break(0xC471u);
    JUMPOUT(0x19DC529D8);
  }

  v8 = objc_loadWeakRetained((v7 + 8));
  API::ResourceLoadInfo::create(&v13, a2);
  v10 = v13;
  v11 = *(v13 + 8);
  if (v11)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      __break(0xC471u);
LABEL_16:
      JUMPOUT(0x19DC529B8);
    }
  }

  [WeakRetained webView:v8 resourceLoad:v11 didReceiveChallenge:{WebCore::mac(a3, v9)}];
  CFRelease(*(v10 + 8));
  if (v8)
  {
  }
}

void sub_19DC529FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, id a9)
{
  if (v9)
  {
  }

  _Unwind_Resume(a1);
}

void WebKit::ResourceLoadDelegate::ResourceLoadClient::didReceiveResponse(uint64_t a1, uint64_t *a2, WebCore::ResourceResponse *a3)
{
  v3 = *(a1 + 8);
  if (!v3)
  {
    __break(0xC471u);
    goto LABEL_16;
  }

  if ((*(v3 + 24) & 8) == 0)
  {
    return;
  }

  WeakRetained = objc_loadWeakRetained((v3 + 16));
  if (!WeakRetained)
  {
    return;
  }

  v7 = *(a1 + 8);
  if (!v7)
  {
    __break(0xC471u);
    JUMPOUT(0x19DC52B60);
  }

  v8 = objc_loadWeakRetained((v7 + 8));
  API::ResourceLoadInfo::create(&v12, a2);
  v9 = v12;
  v10 = *(v12 + 8);
  if (v10)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      __break(0xC471u);
LABEL_16:
      JUMPOUT(0x19DC52B40);
    }
  }

  [WeakRetained webView:v8 resourceLoad:v10 didReceiveResponse:WebCore::ResourceResponse::nsURLResponse(a3)];
  CFRelease(*(v9 + 8));
  if (v8)
  {
  }
}

void sub_19DC52B84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, id a9)
{
  if (v9)
  {
  }

  _Unwind_Resume(a1);
}

void WebKit::ResourceLoadDelegate::ResourceLoadClient::didCompleteWithError(uint64_t a1, uint64_t *a2, WebCore::ResourceResponse *a3, WebCore::ResourceError *a4)
{
  v4 = *(a1 + 8);
  if (!v4)
  {
    __break(0xC471u);
    goto LABEL_16;
  }

  if ((*(v4 + 24) & 0x10) == 0)
  {
    return;
  }

  WeakRetained = objc_loadWeakRetained((v4 + 16));
  if (!WeakRetained)
  {
    return;
  }

  v9 = *(a1 + 8);
  if (!v9)
  {
    __break(0xC471u);
    JUMPOUT(0x19DC52D08);
  }

  v10 = objc_loadWeakRetained((v9 + 8));
  API::ResourceLoadInfo::create(&v15, a2);
  v11 = v15;
  v12 = *(v15 + 8);
  if (v12)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      __break(0xC471u);
LABEL_16:
      JUMPOUT(0x19DC52CE8);
    }
  }

  v13 = WebCore::ResourceError::nsError(a4);
  [WeakRetained webView:v10 resourceLoad:v12 didCompleteWithError:v13 response:WebCore::ResourceResponse::nsURLResponse(a3)];
  CFRelease(*(v11 + 8));
  if (v10)
  {
  }
}

void sub_19DC52D2C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, id a9)
{
  if (v9)
  {
  }

  _Unwind_Resume(a1);
}

void WebKit::encodeSessionState(std::once_flag::_State_type *this@<X0>, void *a2@<X8>)
{
  WebKit::encodeLegacySessionState(this, &v9);
  v4 = v9;
  if (!v9)
  {
    *a2 = 0;
    return;
  }

  v9 = 0;
  info = v4->info;
  if (info)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      __break(0xC471u);
      return;
    }

    *a2 = info;
    v6 = info;
    v7 = v4->info;
  }

  else
  {
    v7 = 0;
    *a2 = 0;
  }

  CFRelease(v7);
  v8 = v9;
  v9 = 0;
  if (v8)
  {
    CFRelease(v8->info);
  }
}

void sub_19DC52E20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  CFRelease(*(v10 + 8));
  if (a10)
  {
    CFRelease(*(a10 + 8));
  }

  _Unwind_Resume(a1);
}

uint64_t WebKit::decodeSessionState(WebKit *this, NSData *a2, SessionState *a3)
{
  if (this)
  {
    v5 = [(WebKit *)this bytes];
    v6 = [(WebKit *)this length];
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  return WebKit::decodeLegacySessionState(v5, v6, a2);
}

void sub_19DC52FD8(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, char a12)
{
  if (a12 == 1)
  {
    WTF::Vector<WebCore::ContactInfo,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&a10, a2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t WebKit::PageClient::showDigitalCredentialsPicker(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v6[0] = 6;
  v6[16] = 1;
  WTF::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<WebCore::DigitalCredentialsResponseData,WebCore::ExceptionData> &&)>::operator()(a3);
  return std::experimental::fundamentals_v3::expected<WebCore::DigitalCredentialsResponseData,WebCore::ExceptionData>::~expected(v6, v4);
}

void sub_19DC5305C(_Unwind_Exception *a1, WTF::StringImpl *a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::experimental::fundamentals_v3::expected<WebCore::DigitalCredentialsResponseData,WebCore::ExceptionData>::~expected(va, a2);
  _Unwind_Resume(a1);
}

uint64_t WebKit::PageClient::showBrowsingWarning(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5[0] = 1;
  v5[40] = 0;
  WTF::CompletionHandler<void ()(mpark::variant<WebKit::ContinueUnsafeLoad,WTF::URL> &&)>::operator()(a3);
  return mpark::detail::move_constructor<mpark::detail::traits<WebKit::ContinueUnsafeLoad,WTF::URL>,(mpark::detail::Trait)1>::~move_constructor(v5, v3);
}

uint64_t WebKit::PageClient::requestTextRecognition(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  v11 = 0u;
  v12 = 0u;
  v10 = 0u;
  WTF::CompletionHandler<void ()(WebCore::TextRecognitionResult &&)>::operator()(a6);
  v13 = 0;
  WTF::Vector<WebCore::TextRecognitionBlockData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v12, v6);
  WTF::Vector<WebCore::TextRecognitionDataDetector,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v11, v7);
  return WTF::Vector<WebCore::TextRecognitionLineData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v10, v8);
}

void sub_19DC531FC(_Unwind_Exception *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15)
{
  v17 = a15;
  a15 = 0;
  if (v17)
  {
  }

  WTF::Vector<WebCore::TextRecognitionBlockData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v15 + 32, a2);
  WTF::Vector<WebCore::TextRecognitionDataDetector,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v15 + 16, v18);
  WTF::Vector<WebCore::TextRecognitionLineData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&a9, v19);
  _Unwind_Resume(a1);
}

uint64_t WebKit::PlaybackSessionModelContext::decrementCheckedPtrCount(uint64_t this)
{
  v1 = *(this + 20);
  if (v1)
  {
    *(this + 20) = v1 - 1;
  }

  else
  {
    this = 290;
    __break(0xC471u);
  }

  return this;
}

uint64_t WebKit::PlaybackSessionModelContext::externalPlaybackLocalizedDeviceName@<X0>(uint64_t this@<X0>, atomic_uint **a2@<X8>)
{
  v2 = *(this + 224);
  if (v2)
  {
    atomic_fetch_add_explicit(v2, 2u, memory_order_relaxed);
  }

  *a2 = v2;
  return this;
}

_DWORD *WebKit::PlaybackSessionManagerProxy::deref(_DWORD *this)
{
  if (this[4] == 1)
  {
    return (*(*this + 24))();
  }

  --this[4];
  return this;
}

uint64_t WTF::BlockPtr<void ()(BOOL)>::fromCallable<WebKit::NavigationState::NavigationClient::shouldGoToBackForwardListItem(WebKit::WebPageProxy &,WebKit::WebBackForwardListItem &,BOOL,WTF::CompletionHandler<void ()(BOOL)> &&)::$_0>(WebKit::NavigationState::NavigationClient::shouldGoToBackForwardListItem(WebKit::WebPageProxy &,WebKit::WebBackForwardListItem &,BOOL,WTF::CompletionHandler<void ()(BOOL)> &&)::$_0)::{lambda(void const*)#1}::__invoke(uint64_t a1)
{
  result = *(a1 + 32);
  *(a1 + 32) = 0;
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t WTF::BlockPtr<void ()(BOOL)>::fromCallable<WebKit::NavigationState::NavigationClient::shouldGoToBackForwardListItem(WebKit::WebPageProxy &,WebKit::WebBackForwardListItem &,BOOL,WTF::CompletionHandler<void ()(BOOL)> &&)::$_1>(WebKit::NavigationState::NavigationClient::shouldGoToBackForwardListItem(WebKit::WebPageProxy &,WebKit::WebBackForwardListItem &,BOOL,WTF::CompletionHandler<void ()(BOOL)> &&)::$_1)::{lambda(void const*)#1}::__invoke(uint64_t a1)
{
  result = *(a1 + 32);
  *(a1 + 32) = 0;
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t WebKit::isMarketplaceKitURL(WebKit *this, const WTF::URL *a2)
{
  if (WTF::URL::protocolIs())
  {
    return 1;
  }

  return WTF::URL::protocolIs();
}

WTF::StringImpl *WebKit::interceptMarketplaceKitNavigation(uint64_t *a1, uint64_t a2)
{
  v50 = *MEMORY[0x1E69E9840];
  v4 = *a1;
  v5 = *(*a1 + 16);
  if (v5)
  {
    API::FrameHandle::create(*(v5 + 264), 1, buf);
    v6 = *(*buf + 8);
    v7 = *(*buf + 16);
    v8 = v7 != 0;
    *buf = 0;
    CFRelease(v6);
    v4 = *a1;
  }

  else
  {
    v8 = 0;
    v7 = 0;
  }

  *&v41 = v7;
  BYTE8(v41) = v8;
  v9 = WebCore::ResourceRequestBase::url((v4 + 40));
  v10 = *v9;
  if (*v9)
  {
    atomic_fetch_add_explicit(v10, 2u, memory_order_relaxed);
  }

  v42 = v10;
  v43 = *(v9 + 8);
  v44 = *(v9 + 24);
  WTF::WeakPtrFactory<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl>::initializeIfNeeded((a2 + 24), a2 + 16);
  v11 = *(a2 + 24);
  atomic_fetch_add(v11, 1u);
  v45 = v11;
  v12 = *a1;
  if (*(*a1 + 369) - 1 <= 1 && *(v12 + 288) && (*(v12 + 530) & 1) != 0 && (v13 = WebCore::SecurityOriginData::isNull((v12 + 704)), v12 = *a1, !v13))
  {
    WebCore::SecurityOriginData::toURL(buf, (v12 + 704));
    WTF::URL::createCFURL(&v40, buf);
    v18 = *buf;
    *buf = 0;
    if (v18 && atomic_fetch_add_explicit(v18, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v18, v17);
    }

    v19 = WebCore::ResourceRequestBase::url((*a1 + 40));
    CFURL = WTF::URL::createCFURL(&v39, v19);
    v21 = v39;
    v22 = v40;
    if (v40 && v39)
    {
      WKMarketplaceKitClass = WebKit::getWKMarketplaceKitClass(CFURL);
      v25 = v39;
      v24 = v40;
      *buf = v41;
      v26 = v42;
      v42 = 0;
      v45 = 0;
      *v47 = v26;
      *&v47[8] = v43;
      LODWORD(v43) = v43 & 0xFFFFFFFE;
      v48 = v44;
      v49 = v11;
      v27 = malloc_type_malloc(0x60uLL, 0x10E0040F5086B7EuLL);
      *v27 = MEMORY[0x1E69E9818];
      v27[1] = 50331650;
      v27[2] = WTF::BlockPtr<void ()(NSError *)>::fromCallable<WebKit::interceptMarketplaceKitNavigation(WTF::Ref<API::NavigationAction,WTF::RawPtrTraits<API::NavigationAction>,WTF::DefaultRefDerefTraits<API::NavigationAction>> &&,WebKit::WebPageProxy &)::$_0>(WebKit::interceptMarketplaceKitNavigation(WTF::Ref<API::NavigationAction,WTF::RawPtrTraits<API::NavigationAction>,WTF::DefaultRefDerefTraits<API::NavigationAction>> &&,WebKit::WebPageProxy &)::$_0)::{lambda(void *,NSError *)#1}::__invoke;
      v27[3] = &WTF::BlockPtr<void ()(NSError *)>::fromCallable<WebKit::interceptMarketplaceKitNavigation(WTF::Ref<API::NavigationAction,WTF::RawPtrTraits<API::NavigationAction>,WTF::DefaultRefDerefTraits<API::NavigationAction>> &&,WebKit::WebPageProxy &)::$_0>(WebKit::interceptMarketplaceKitNavigation(WTF::Ref<API::NavigationAction,WTF::RawPtrTraits<API::NavigationAction>,WTF::DefaultRefDerefTraits<API::NavigationAction>> &&,WebKit::WebPageProxy &)::$_0)::descriptor;
      *(v27 + 2) = *buf;
      v29 = WTF::URL::URL((v27 + 6), v47);
      v30 = *v47;
      v27[11] = v49;
      v49 = 0;
      *v47 = 0;
      if (v30 && atomic_fetch_add_explicit(v30, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v30, v28);
      }

      [WKMarketplaceKitClass requestAppInstallationWithTopOrigin:v24 url:v25 completionHandler:{v27, v29}];
      _Block_release(v27);
      v11 = 0;
    }

    else
    {
      v35 = qword_1ED640D10;
      if (os_log_type_enabled(qword_1ED640D10, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109376;
        *&buf[4] = v22 != 0;
        *&buf[8] = 1024;
        *&buf[10] = v21 != 0;
        _os_log_error_impl(&dword_19D52D000, v35, OS_LOG_TYPE_ERROR, "NavigationState: can't handle MarketplaceKit navigation with requesterTopOriginURL: %d url: %d", buf, 0xEu);
      }
    }

    v36 = v39;
    v39 = 0;
    if (v36)
    {
    }

    v37 = v40;
    v40 = 0;
    if (v37)
    {
    }
  }

  else
  {
    v14 = qword_1ED640D10;
    if (os_log_type_enabled(qword_1ED640D10, OS_LOG_TYPE_ERROR))
    {
      v31 = *(v12 + 369);
      v32 = *(v12 + 288);
      v33 = *(v12 + 530);
      isNull = WebCore::SecurityOriginData::isNull((v12 + 704));
      *buf = 67109888;
      *&buf[4] = (v31 - 1) < 2;
      *&buf[8] = 1024;
      *&buf[10] = v32 != 0;
      *&buf[14] = 1024;
      *v47 = (v33 & 1) == 0;
      *&v47[4] = 1024;
      *&v47[6] = isNull;
      _os_log_error_impl(&dword_19D52D000, v14, OS_LOG_TYPE_ERROR, "NavigationState: can't handle MarketplaceKit navigation with shouldOpenExternalSchemes: %d, isProcessingUserGesture: %d, isRedirect: %d, requesterTopOriginIsNull: %d", buf, 0x1Au);
      v12 = *a1;
    }

    if (!*(v12 + 288) || (*(v12 + 530) & 1) == 0)
    {
      WTF::StringImpl::createWithoutCopyingNonEmpty();
      v16 = *buf;
      v40 = *buf;
      WebKit::interceptMarketplaceKitNavigation(WTF::Ref<API::NavigationAction,WTF::RawPtrTraits<API::NavigationAction>,WTF::DefaultRefDerefTraits<API::NavigationAction>> &&,WebKit::WebPageProxy &)::$_1::operator()(&v41, &v40);
      if (v16)
      {
        if (atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v16, v15);
        }
      }
    }
  }

  v45 = 0;
  if (v11 && atomic_fetch_add(v11, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v11);
    WTF::fastFree(v11, v15);
  }

  result = v42;
  if (v42)
  {
    if (atomic_fetch_add_explicit(v42, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v15);
    }
  }

  return result;
}

void sub_19DC53980(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, uint64_t a11, uint64_t a12, WTF::StringImpl *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, WTF *a18, WTF::StringImpl *a19, uint64_t a20, WTF::StringImpl *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, WTF *a26)
{
  _Block_release(v26);
  if (a9)
  {
  }

  if (a10)
  {
  }

  if (a18 && atomic_fetch_add(a18, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, a18);
    WTF::fastFree(a18, v28);
  }

  if (a13)
  {
    if (atomic_fetch_add_explicit(a13, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a13, v28);
    }
  }

  _Unwind_Resume(a1);
}

uint64_t ___ZN6WebKitL22tryInterceptNavigationEON3WTF3RefIN3API16NavigationActionENS0_12RawPtrTraitsIS3_EENS0_21DefaultRefDerefTraitsIS3_EEEERNS_12WebPageProxyEONS0_8FunctionIFvbEEE_block_invoke(WTF::RunLoop *a1, char a2)
{
  WTF::RunLoop::mainSingleton(a1);
  v4 = *(a1 + 4);
  v5 = WTF::fastMalloc(0x18);
  *v5 = &unk_1F1100968;
  *(v5 + 8) = v4;
  *(v5 + 16) = a2;
  v7 = v5;
  WTF::RunLoop::dispatch();
  result = v7;
  if (v7)
  {
    return (*(*v7 + 8))(v7);
  }

  return result;
}

void sub_19DC53B8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    (*(*a10 + 8))(a10);
  }

  _Unwind_Resume(exception_object);
}

void WebKit::trySOAuthorization(uint64_t *a1, const WebKit::WebPageProxy *a2, uint64_t *a3)
{
  if (*(*a1 + 281))
  {
    v6 = *(a2 + 51);
    CFRetain(v6[1]);
    v7 = WebKit::WebsiteDataStore::soAuthorizationCoordinator(v6, a2);
    WebKit::SOAuthorizationCoordinator::tryAuthorize(v7, a1, a2, a3);
    v8 = v6[1];

    CFRelease(v8);
  }

  else
  {
    v9 = *(**a3 + 16);

    v9();
  }
}

WTF::StringImpl *WebKit::interceptMarketplaceKitNavigation(WTF::Ref<API::NavigationAction,WTF::RawPtrTraits<API::NavigationAction>,WTF::DefaultRefDerefTraits<API::NavigationAction>> &&,WebKit::WebPageProxy &)::$_1::operator()(WTF::StringImpl *result, atomic_uint **a2)
{
  if (*(result + 8) == 1)
  {
    v2 = *(result + 7);
    if (v2)
    {
      v3 = *(v2 + 8);
      if (v3)
      {
        v4 = *result;
        v5 = *(result + 2);
        if (v5)
        {
          atomic_fetch_add_explicit(v5, 2u, memory_order_relaxed);
        }

        v11 = v5;
        v6 = *a2;
        if (*a2)
        {
          atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed);
        }

        v10 = v6;
        WTF::makeString<WTF::ASCIILiteral,WTF::String,WTF::ASCIILiteral,WTF::String>("Can't handle MarketplaceKit link ", 34, &v11, " due to error: ", 16, &v10, &v12);
        v18 = v4;
        v17[0] = 0;
        v17[1] = 0;
        v13 = &v18;
        v14 = 514;
        v15 = &v12;
        v16 = v17;
        WebKit::WebPageProxy::send<Messages::WebPage::AddConsoleMessage>(v3 - 16, &v13);
        v8 = v12;
        v12 = 0;
        if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v8, v7);
        }

        v9 = v10;
        v10 = 0;
        if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v9, v7);
        }

        result = v11;
        v11 = 0;
        if (result)
        {
          if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            return WTF::StringImpl::destroy(result, v7);
          }
        }
      }
    }
  }

  return result;
}

void sub_19DC53DDC(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, WTF::StringImpl *a10)
{
  if (a9 && atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a9, a2);
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

WTF::StringImpl *WTF::BlockPtr<void ()(NSError *)>::fromCallable<WebKit::interceptMarketplaceKitNavigation(WTF::Ref<API::NavigationAction,WTF::RawPtrTraits<API::NavigationAction>,WTF::DefaultRefDerefTraits<API::NavigationAction>> &&,WebKit::WebPageProxy &)::$_0>(WebKit::interceptMarketplaceKitNavigation(WTF::Ref<API::NavigationAction,WTF::RawPtrTraits<API::NavigationAction>,WTF::DefaultRefDerefTraits<API::NavigationAction>> &&,WebKit::WebPageProxy &)::$_0)::{lambda(void const*)#1}::__invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 88);
  *(a1 + 88) = 0;
  if (v3 && atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3);
    WTF::fastFree(v3, a2);
  }

  result = *(a1 + 48);
  *(a1 + 48) = 0;
  if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {

    return WTF::StringImpl::destroy(result, a2);
  }

  return result;
}

WTF::StringImpl *WTF::BlockPtr<void ()(NSError *)>::fromCallable<WebKit::interceptMarketplaceKitNavigation(WTF::Ref<API::NavigationAction,WTF::RawPtrTraits<API::NavigationAction>,WTF::DefaultRefDerefTraits<API::NavigationAction>> &&,WebKit::WebPageProxy &)::$_0>(WebKit::interceptMarketplaceKitNavigation(WTF::Ref<API::NavigationAction,WTF::RawPtrTraits<API::NavigationAction>,WTF::DefaultRefDerefTraits<API::NavigationAction>> &&,WebKit::WebPageProxy &)::$_0)::{lambda(void *,NSError *)#1}::__invoke(WTF::StringImpl *result, void *a2)
{
  if (a2)
  {
    v2 = result;
    MEMORY[0x19EB02040](&v4, [a2 description]);
    WebKit::interceptMarketplaceKitNavigation(WTF::Ref<API::NavigationAction,WTF::RawPtrTraits<API::NavigationAction>,WTF::DefaultRefDerefTraits<API::NavigationAction>> &&,WebKit::WebPageProxy &)::$_1::operator()((v2 + 32), &v4);
    result = v4;
    v4 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        return WTF::StringImpl::destroy(result, v3);
      }
    }
  }

  return result;
}

void sub_19DC53F14(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
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

void *WTF::Detail::CallableWrapper<WebKit::tryInterceptNavigation(WTF::Ref<API::NavigationAction,WTF::RawPtrTraits<API::NavigationAction>,WTF::DefaultRefDerefTraits<API::NavigationAction>> &&,WebKit::WebPageProxy &,WTF::Function<void ()(BOOL)> &&)::$_0,void,BOOL>::~CallableWrapper(void *a1, void *a2)
{
  *a1 = &unk_1F1100940;
  v3 = a1[3];
  a1[3] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = a1[2];
  a1[2] = 0;
  if (v4 && atomic_fetch_add(v4, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v4);
    WTF::fastFree(v4, a2);
  }

  v5 = a1[1];
  a1[1] = 0;
  if (v5)
  {
    CFRelease(*(v5 + 8));
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::tryInterceptNavigation(WTF::Ref<API::NavigationAction,WTF::RawPtrTraits<API::NavigationAction>,WTF::DefaultRefDerefTraits<API::NavigationAction>> &&,WebKit::WebPageProxy &,WTF::Function<void ()(BOOL)> &&)::$_0,void,BOOL>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F1100940;
  v3 = *(this + 3);
  *(this + 3) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 2);
  *(this + 2) = 0;
  if (v4 && atomic_fetch_add(v4, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v4);
    WTF::fastFree(v4, a2);
  }

  v5 = *(this + 1);
  *(this + 1) = 0;
  if (v5)
  {
    CFRelease(*(v5 + 8));
  }

  return WTF::fastFree(this, a2);
}

void WTF::Detail::CallableWrapper<WebKit::tryInterceptNavigation(WTF::Ref<API::NavigationAction,WTF::RawPtrTraits<API::NavigationAction>,WTF::DefaultRefDerefTraits<API::NavigationAction>> &&,WebKit::WebPageProxy &,WTF::Function<void ()(BOOL)> &&)::$_0,void,BOOL>::call(uint64_t *a1, char a2)
{
  v3 = a1[2];
  if (a2)
  {
    if (v3)
    {
      v4 = *(v3 + 8);
      if (v4)
      {
        WebKit::WebPageProxy::willOpenAppLink((v4 - 16));
      }
    }

    goto LABEL_10;
  }

  if (!v3 || (v5 = *(v3 + 8)) == 0)
  {
LABEL_10:
    v7 = *(*a1[3] + 16);

    v7();
    return;
  }

  v6 = a1 + 1;

  WebKit::trySOAuthorization(v6, (v5 - 16), a1 + 3);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::tryInterceptNavigation(WTF::Ref<API::NavigationAction,WTF::RawPtrTraits<API::NavigationAction>,WTF::DefaultRefDerefTraits<API::NavigationAction>> &&,WebKit::WebPageProxy &,WTF::Function<void ()(BOOL)> &&)::$_1::operator() const(BOOL,NSError *)::{lambda(void)#1},void>::call(uint64_t a1)
{
  result = (*(***(a1 + 8) + 16))(**(a1 + 8), *(a1 + 16));
  v4 = *(a1 + 8);
  if (v4)
  {
    v5 = *v4;
    *v4 = 0;
    if (v5)
    {
      (*(*v5 + 8))(v5);
    }

    return WTF::fastFree(v4, v3);
  }

  return result;
}

uint64_t WebKit::NavigationState::NavigationClient::decidePolicyForNavigationAction(WebKit::WebPageProxy &,WTF::Ref<API::NavigationAction,WTF::RawPtrTraits<API::NavigationAction>,WTF::DefaultRefDerefTraits<API::NavigationAction>> &&,WTF::Ref<WebKit::WebFramePolicyListenerProxy,WTF::RawPtrTraits<WTF::Ref<API::NavigationAction,WTF::RawPtrTraits<API::NavigationAction>,WTF::DefaultRefDerefTraits<API::NavigationAction>> &&>,WTF::DefaultRefDerefTraits<WTF::Ref<API::NavigationAction,WTF::RawPtrTraits<API::NavigationAction>,WTF::DefaultRefDerefTraits<API::NavigationAction>> &&>> &&)::$_0::operator()(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = WebKit::CompletionHandlerCallChecker::completionHandlerHasBeenCalled(a1[2]);
  if ((result & 1) == 0)
  {
    *(a1[2] + 24) = 1;
    if (a3)
    {
      v7 = a3 + 8;
    }

    else
    {
      v7 = a1[5];
      if (!v7)
      {
LABEL_17:
        v8 = a1[3];
        a1[3] = 0;
        v10 = *a1;
        v9 = a1[1];
        *a1 = 0;
        a1[1] = 0;
        v11 = WTF::fastMalloc(0x30);
        *v11 = &unk_1F11009B0;
        v11[1] = v9;
        v11[2] = v8;
        v11[3] = a2;
        v11[4] = v10;
        v11[5] = v7;
        v12 = v11;
        WTF::ensureOnMainRunLoop();
        result = v12;
        if (v12)
        {
          return (*(*v12 + 8))(v12);
        }

        return result;
      }
    }

    CFRetain(*(v7 + 8));
    if (*(v7 + 144) && *(a1 + 32) == 1)
    {
      [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"WKWebpagePreferences._websiteDataStore must be nil for subframe navigations."];
    }

    if (*(v7 + 152) && *(a1 + 32) == 1)
    {
      [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"WKWebpagePreferences._userContentController must be nil for subframe navigations."];
    }

    if (*(v7 + 64) && *(a1 + 32) == 1)
    {
      [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"WKWebpagePreferences._customUserAgent must be nil for subframe navigations."];
    }

    if (*(v7 + 80) && *(a1 + 32) == 1)
    {
      [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"WKWebpagePreferences._customNavigatorPlatform must be nil for subframe navigations."];
    }

    goto LABEL_17;
  }

  return result;
}

void sub_19DC543C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    (*(*a10 + 8))(a10);
  }

  _Unwind_Resume(exception_object);
}

void WTF::BlockPtr<void ()(WKNavigationActionPolicy,WKWebpagePreferences *)>::fromCallable<WebKit::NavigationState::NavigationClient::decidePolicyForNavigationAction(WebKit::WebPageProxy &,WTF::Ref<API::NavigationAction,WTF::RawPtrTraits<API::NavigationAction>,WTF::DefaultRefDerefTraits<API::NavigationAction>> &&,WTF::Ref<WebKit::WebFramePolicyListenerProxy,WTF::RawPtrTraits<WTF::Ref<API::NavigationAction,WTF::RawPtrTraits<API::NavigationAction>,WTF::DefaultRefDerefTraits<API::NavigationAction>> &&>,WTF::DefaultRefDerefTraits<WTF::Ref<API::NavigationAction,WTF::RawPtrTraits<API::NavigationAction>,WTF::DefaultRefDerefTraits<API::NavigationAction>> &&>> &&)::$_0>(WebKit::NavigationState::NavigationClient::decidePolicyForNavigationAction(WebKit::WebPageProxy &,WTF::Ref<API::NavigationAction,WTF::RawPtrTraits<API::NavigationAction>,WTF::DefaultRefDerefTraits<API::NavigationAction>> &&,WTF::Ref<WebKit::WebFramePolicyListenerProxy,WTF::RawPtrTraits<WTF::Ref<API::NavigationAction,WTF::RawPtrTraits<API::NavigationAction>,WTF::DefaultRefDerefTraits<API::NavigationAction>> &&>,WTF::DefaultRefDerefTraits<WTF::Ref<API::NavigationAction,WTF::RawPtrTraits<API::NavigationAction>,WTF::DefaultRefDerefTraits<API::NavigationAction>> &&>> &&)::$_0)::{lambda(void const*)#1}::__invoke(void *a1)
{
  v2 = a1[9];
  a1[9] = 0;
  if (v2)
  {
    CFRelease(*(v2 + 8));
  }

  v3 = a1[7];
  a1[7] = 0;
  if (v3)
  {
    CFRelease(*(v3 + 8));
  }

  v4 = a1[6];
  a1[6] = 0;
  if (v4)
  {
    WTF::ThreadSafeRefCounted<WebKit::CompletionHandlerCallChecker,(WTF::DestructionThread)0>::deref(v4);
  }

  v5 = a1[5];
  a1[5] = 0;
  if (v5)
  {
    CFRelease(*(v5 + 8));
  }

  v6 = a1[4];
  a1[4] = 0;
  if (v6)
  {
    v7 = *(v6 + 8);

    CFRelease(v7);
  }
}

void *WTF::Detail::CallableWrapper<WebKit::NavigationState::NavigationClient::decidePolicyForNavigationAction(WebKit::WebPageProxy &,WTF::Ref<API::NavigationAction,WTF::RawPtrTraits<API::NavigationAction>,WTF::DefaultRefDerefTraits<API::NavigationAction>> &&,WTF::Ref<WebKit::WebFramePolicyListenerProxy,WTF::RawPtrTraits<WTF::Ref<API::NavigationAction,WTF::RawPtrTraits<API::NavigationAction>,WTF::DefaultRefDerefTraits<API::NavigationAction>> &&>,WTF::DefaultRefDerefTraits<WTF::Ref<API::NavigationAction,WTF::RawPtrTraits<API::NavigationAction>,WTF::DefaultRefDerefTraits<API::NavigationAction>> &&>> &&)::$_0::operator()(WKNavigationActionPolicy,WKWebpagePreferences *)::{lambda(void)#1},void>::~CallableWrapper(void *a1)
{
  *a1 = &unk_1F11009B0;
  v2 = a1[5];
  a1[5] = 0;
  if (v2)
  {
    CFRelease(*(v2 + 8));
  }

  v3 = a1[4];
  a1[4] = 0;
  if (v3)
  {
    CFRelease(*(v3 + 8));
  }

  v4 = a1[2];
  a1[2] = 0;
  if (v4)
  {
    CFRelease(*(v4 + 8));
  }

  v5 = a1[1];
  a1[1] = 0;
  if (v5)
  {
    CFRelease(*(v5 + 8));
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::NavigationState::NavigationClient::decidePolicyForNavigationAction(WebKit::WebPageProxy &,WTF::Ref<API::NavigationAction,WTF::RawPtrTraits<API::NavigationAction>,WTF::DefaultRefDerefTraits<API::NavigationAction>> &&,WTF::Ref<WebKit::WebFramePolicyListenerProxy,WTF::RawPtrTraits<WTF::Ref<API::NavigationAction,WTF::RawPtrTraits<API::NavigationAction>,WTF::DefaultRefDerefTraits<API::NavigationAction>> &&>,WTF::DefaultRefDerefTraits<WTF::Ref<API::NavigationAction,WTF::RawPtrTraits<API::NavigationAction>,WTF::DefaultRefDerefTraits<API::NavigationAction>> &&>> &&)::$_0::operator()(WKNavigationActionPolicy,WKWebpagePreferences *)::{lambda(void)#1},void>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F11009B0;
  v3 = *(this + 5);
  *(this + 5) = 0;
  if (v3)
  {
    CFRelease(*(v3 + 8));
  }

  v4 = *(this + 4);
  *(this + 4) = 0;
  if (v4)
  {
    CFRelease(*(v4 + 8));
  }

  v5 = *(this + 2);
  *(this + 2) = 0;
  if (v5)
  {
    CFRelease(*(v5 + 8));
  }

  v6 = *(this + 1);
  *(this + 1) = 0;
  if (v6)
  {
    CFRelease(*(v6 + 8));
  }

  return WTF::fastFree(this, a2);
}

void WTF::Detail::CallableWrapper<WebKit::NavigationState::NavigationClient::decidePolicyForNavigationAction(WebKit::WebPageProxy &,WTF::Ref<API::NavigationAction,WTF::RawPtrTraits<API::NavigationAction>,WTF::DefaultRefDerefTraits<API::NavigationAction>> &&,WTF::Ref<WebKit::WebFramePolicyListenerProxy,WTF::RawPtrTraits<WTF::Ref<API::NavigationAction,WTF::RawPtrTraits<API::NavigationAction>,WTF::DefaultRefDerefTraits<API::NavigationAction>> &&>,WTF::DefaultRefDerefTraits<WTF::Ref<API::NavigationAction,WTF::RawPtrTraits<API::NavigationAction>,WTF::DefaultRefDerefTraits<API::NavigationAction>> &&>> &&)::$_0::operator()(WKNavigationActionPolicy,WKWebpagePreferences *)::{lambda(void)#1},void>::call(uint64_t a1)
{
  if (*(a1 + 24) && WebKit::isUnsupportedWebExtensionNavigation(*(a1 + 8), *(a1 + 16)))
  {
    v2 = qword_1ED640AB8;
    if (os_log_type_enabled(qword_1ED640AB8, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v22[0]) = 0;
      _os_log_debug_impl(&dword_19D52D000, v2, OS_LOG_TYPE_DEBUG, "Ignoring unsupported web extension navigation", v22, 2u);
    }

    WebKit::WebFramePolicyListenerProxy::ignore(*(a1 + 32), 0);
    return;
  }

  v3 = *(a1 + 16);
  v4 = *(v3 + 384);
  if (v4)
  {
    goto LABEL_7;
  }

  v11 = *(v3 + 392);
  if (v11)
  {
    v12 = *(v11 + 8);
    if (v12)
    {
      v4 = (v12 - 16);
LABEL_7:
      CFRetain(v4[1]);
      WebKit::WebExtensionController::updateWebsitePoliciesForNavigation(v4, *(a1 + 40), *(a1 + 8));
      CFRelease(v4[1]);
    }
  }

  v5 = *(a1 + 24);
  if (v5 <= 1)
  {
    if (v5)
    {
      if (v5 != 1)
      {
        return;
      }

      goto LABEL_15;
    }

    goto LABEL_27;
  }

  if (v5 != 2)
  {
    if (v5 != 3)
    {
      if (v5 != 4)
      {
        return;
      }

LABEL_15:
      v6 = *(a1 + 16);
      v7 = *(a1 + 32);
      v8 = *(a1 + 40);
      *(a1 + 32) = 0;
      *(a1 + 40) = 0;
      v9 = WTF::fastMalloc(0x20);
      *v9 = &unk_1F11009D8;
      v9[1] = v5;
      v9[2] = v7;
      v9[3] = v8;
      v22[0] = v9;
      WebKit::tryInterceptNavigation((a1 + 8), v6, v22);
      goto LABEL_16;
    }

    v14 = WebCore::ResourceRequestBase::url((*(a1 + 8) + 40));
    isMarketplaceKitURL = WebKit::isMarketplaceKitURL(v14, v15);
    v17 = *(a1 + 16);
    if (!isMarketplaceKitURL)
    {
      v19 = *(a1 + 32);
      v20 = *(a1 + 40);
      *(a1 + 32) = 0;
      *(a1 + 40) = 0;
      v21 = WTF::fastMalloc(0x18);
      *v21 = &unk_1F1100A00;
      v21[1] = v19;
      v21[2] = v20;
      v22[0] = v21;
      WebKit::trySOAuthorization((a1 + 8), v17, v22);
LABEL_16:
      v10 = v22[0];
      v22[0] = 0;
      if (v10)
      {
        (*(*v10 + 8))(v10);
      }

      return;
    }

    WebKit::interceptMarketplaceKitNavigation((a1 + 8), *(a1 + 16));
LABEL_27:
    v18 = *(a1 + 32);

    WebKit::WebFramePolicyListenerProxy::ignore(v18, 0);
    return;
  }

  v13 = *(a1 + 32);

  WebKit::WebFramePolicyListenerProxy::download(v13);
}

void sub_19DC5487C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  if (a9)
  {
    (*(*a9 + 8))(a9);
  }

  _Unwind_Resume(exception_object);
}

uint64_t WebKit::isUnsupportedWebExtensionNavigation(void *a1, void *a2)
{
  v4 = a1[3];
  if (!v4 || *(v4 + 16) == 1)
  {
    WeakRetained = objc_loadWeakRetained((a2[4] + 2248));
    v6 = [WeakRetained _requiredWebExtensionBaseURL];
    v7 = v6;
    if (v6)
    {
      v8 = v6;
    }

    if (WeakRetained)
    {
    }

    if (v7)
    {
      if (a1[47])
      {
LABEL_9:
        v9 = 0;
LABEL_28:

        return v9;
      }

      v10 = a2[48];
      if (!v10)
      {
        v16 = a2[49];
        if (!v16)
        {
          goto LABEL_9;
        }

        v17 = *(v16 + 8);
        if (!v17)
        {
          goto LABEL_9;
        }

        v10 = (v17 - 16);
      }

      CFRetain(v10[1]);
      v11 = (a1 + 30);
      if (!a1[30])
      {
        v11 = WebCore::ResourceRequestBase::url((a1 + 5));
      }

      WebKit::WebExtensionController::extensionContext(v10, v11, &v21);
      v12 = v21;
      if (!v21)
      {
        goto LABEL_26;
      }

      MEMORY[0x19EB01DE0](&v20, v7);
      v15 = (*(&v20 + 8) & 1) != 0 ? WTF::protocolHostAndPortAreEqual((v12 + 88), &v20, v14) : 0;
      m_ptr = v20.m_string.m_impl.m_ptr;
      v20.m_string.m_impl.m_ptr = 0;
      if (m_ptr && atomic_fetch_add_explicit(m_ptr, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(m_ptr, v13);
      }

      CFRelease(*(v12 + 1));
      if (v15)
      {
        v9 = 0;
      }

      else
      {
LABEL_26:
        v9 = 1;
      }

      CFRelease(v10[1]);
      goto LABEL_28;
    }
  }

  return 0;
}

void sub_19DC54A58(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9)
{
  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, a2);
    }
  }

  CFRelease(*(v11 + 8));
  CFRelease(*(v10 + 8));

  _Unwind_Resume(a1);
}

void *WTF::Detail::CallableWrapper<WebKit::NavigationState::NavigationClient::decidePolicyForNavigationAction(WebKit::WebPageProxy &,WTF::Ref<API::NavigationAction,WTF::RawPtrTraits<API::NavigationAction>,WTF::DefaultRefDerefTraits<API::NavigationAction>> &&,WTF::Ref<WebKit::WebFramePolicyListenerProxy,WTF::RawPtrTraits<WTF::Ref<API::NavigationAction,WTF::RawPtrTraits<API::NavigationAction>,WTF::DefaultRefDerefTraits<API::NavigationAction>> &&>,WTF::DefaultRefDerefTraits<WTF::Ref<API::NavigationAction,WTF::RawPtrTraits<API::NavigationAction>,WTF::DefaultRefDerefTraits<API::NavigationAction>> &&>> &&)::$_0::operator()(WKNavigationActionPolicy,WKWebpagePreferences *)::{lambda(void)#1}::operator()(void)::{lambda(BOOL)#1},void,BOOL>::~CallableWrapper(void *a1)
{
  *a1 = &unk_1F11009D8;
  v2 = a1[3];
  a1[3] = 0;
  if (v2)
  {
    CFRelease(*(v2 + 8));
  }

  v3 = a1[2];
  a1[2] = 0;
  if (v3)
  {
    CFRelease(*(v3 + 8));
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::NavigationState::NavigationClient::decidePolicyForNavigationAction(WebKit::WebPageProxy &,WTF::Ref<API::NavigationAction,WTF::RawPtrTraits<API::NavigationAction>,WTF::DefaultRefDerefTraits<API::NavigationAction>> &&,WTF::Ref<WebKit::WebFramePolicyListenerProxy,WTF::RawPtrTraits<WTF::Ref<API::NavigationAction,WTF::RawPtrTraits<API::NavigationAction>,WTF::DefaultRefDerefTraits<API::NavigationAction>> &&>,WTF::DefaultRefDerefTraits<WTF::Ref<API::NavigationAction,WTF::RawPtrTraits<API::NavigationAction>,WTF::DefaultRefDerefTraits<API::NavigationAction>> &&>> &&)::$_0::operator()(WKNavigationActionPolicy,WKWebpagePreferences *)::{lambda(void)#1}::operator()(void)::{lambda(BOOL)#1},void,BOOL>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F11009D8;
  v3 = *(this + 3);
  *(this + 3) = 0;
  if (v3)
  {
    CFRelease(*(v3 + 8));
  }

  v4 = *(this + 2);
  *(this + 2) = 0;
  if (v4)
  {
    CFRelease(*(v4 + 8));
  }

  return WTF::fastFree(this, a2);
}

void WTF::Detail::CallableWrapper<WebKit::NavigationState::NavigationClient::decidePolicyForNavigationAction(WebKit::WebPageProxy &,WTF::Ref<API::NavigationAction,WTF::RawPtrTraits<API::NavigationAction>,WTF::DefaultRefDerefTraits<API::NavigationAction>> &&,WTF::Ref<WebKit::WebFramePolicyListenerProxy,WTF::RawPtrTraits<WTF::Ref<API::NavigationAction,WTF::RawPtrTraits<API::NavigationAction>,WTF::DefaultRefDerefTraits<API::NavigationAction>> &&>,WTF::DefaultRefDerefTraits<WTF::Ref<API::NavigationAction,WTF::RawPtrTraits<API::NavigationAction>,WTF::DefaultRefDerefTraits<API::NavigationAction>> &&>> &&)::$_0::operator()(WKNavigationActionPolicy,WKWebpagePreferences *)::{lambda(void)#1}::operator()(void)::{lambda(BOOL)#1},void,BOOL>::call(void *a1, int a2)
{
  v3 = a1[2];
  if (a2)
  {
    WebKit::WebFramePolicyListenerProxy::ignore(v3, 1);
  }

  else
  {
    WebKit::WebFramePolicyListenerProxy::use(v3, a1[3], a1[1] == 4);
  }
}

void *WTF::Detail::CallableWrapper<WebKit::NavigationState::NavigationClient::decidePolicyForNavigationAction(WebKit::WebPageProxy &,WTF::Ref<API::NavigationAction,WTF::RawPtrTraits<API::NavigationAction>,WTF::DefaultRefDerefTraits<API::NavigationAction>> &&,WTF::Ref<WebKit::WebFramePolicyListenerProxy,WTF::RawPtrTraits<WTF::Ref<API::NavigationAction,WTF::RawPtrTraits<API::NavigationAction>,WTF::DefaultRefDerefTraits<API::NavigationAction>> &&>,WTF::DefaultRefDerefTraits<WTF::Ref<API::NavigationAction,WTF::RawPtrTraits<API::NavigationAction>,WTF::DefaultRefDerefTraits<API::NavigationAction>> &&>> &&)::$_0::operator()(WKNavigationActionPolicy,WKWebpagePreferences *)::{lambda(void)#1}::operator()(void)::{lambda(BOOL)#2},void,BOOL>::~CallableWrapper(void *a1)
{
  *a1 = &unk_1F1100A00;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    CFRelease(*(v2 + 8));
  }

  v3 = a1[1];
  a1[1] = 0;
  if (v3)
  {
    CFRelease(*(v3 + 8));
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::NavigationState::NavigationClient::decidePolicyForNavigationAction(WebKit::WebPageProxy &,WTF::Ref<API::NavigationAction,WTF::RawPtrTraits<API::NavigationAction>,WTF::DefaultRefDerefTraits<API::NavigationAction>> &&,WTF::Ref<WebKit::WebFramePolicyListenerProxy,WTF::RawPtrTraits<WTF::Ref<API::NavigationAction,WTF::RawPtrTraits<API::NavigationAction>,WTF::DefaultRefDerefTraits<API::NavigationAction>> &&>,WTF::DefaultRefDerefTraits<WTF::Ref<API::NavigationAction,WTF::RawPtrTraits<API::NavigationAction>,WTF::DefaultRefDerefTraits<API::NavigationAction>> &&>> &&)::$_0::operator()(WKNavigationActionPolicy,WKWebpagePreferences *)::{lambda(void)#1}::operator()(void)::{lambda(BOOL)#2},void,BOOL>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F1100A00;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    CFRelease(*(v3 + 8));
  }

  v4 = *(this + 1);
  *(this + 1) = 0;
  if (v4)
  {
    CFRelease(*(v4 + 8));
  }

  return WTF::fastFree(this, a2);
}

void WTF::Detail::CallableWrapper<WebKit::NavigationState::NavigationClient::decidePolicyForNavigationAction(WebKit::WebPageProxy &,WTF::Ref<API::NavigationAction,WTF::RawPtrTraits<API::NavigationAction>,WTF::DefaultRefDerefTraits<API::NavigationAction>> &&,WTF::Ref<WebKit::WebFramePolicyListenerProxy,WTF::RawPtrTraits<WTF::Ref<API::NavigationAction,WTF::RawPtrTraits<API::NavigationAction>,WTF::DefaultRefDerefTraits<API::NavigationAction>> &&>,WTF::DefaultRefDerefTraits<WTF::Ref<API::NavigationAction,WTF::RawPtrTraits<API::NavigationAction>,WTF::DefaultRefDerefTraits<API::NavigationAction>> &&>> &&)::$_0::operator()(WKNavigationActionPolicy,WKWebpagePreferences *)::{lambda(void)#1}::operator()(void)::{lambda(BOOL)#2},void,BOOL>::call(uint64_t a1, int a2)
{
  v3 = *(a1 + 8);
  if (a2)
  {
    WebKit::WebFramePolicyListenerProxy::ignore(v3, 1);
  }

  else
  {
    WebKit::WebFramePolicyListenerProxy::use(v3, *(a1 + 16), 0);
  }
}

void WTF::BlockPtr<void ()(WKNavigationActionPolicy)>::fromCallable<WebKit::NavigationState::NavigationClient::decidePolicyForNavigationAction(WebKit::WebPageProxy &,WTF::Ref<API::NavigationAction,WTF::RawPtrTraits<API::NavigationAction>,WTF::DefaultRefDerefTraits<API::NavigationAction>> &&,WTF::Ref<WebKit::WebFramePolicyListenerProxy,WTF::RawPtrTraits<WTF::Ref<API::NavigationAction,WTF::RawPtrTraits<API::NavigationAction>,WTF::DefaultRefDerefTraits<API::NavigationAction>> &&>,WTF::DefaultRefDerefTraits<WTF::Ref<API::NavigationAction,WTF::RawPtrTraits<API::NavigationAction>,WTF::DefaultRefDerefTraits<API::NavigationAction>> &&>> &&)::$_1>(WebKit::NavigationState::NavigationClient::decidePolicyForNavigationAction(WebKit::WebPageProxy &,WTF::Ref<API::NavigationAction,WTF::RawPtrTraits<API::NavigationAction>,WTF::DefaultRefDerefTraits<API::NavigationAction>> &&,WTF::Ref<WebKit::WebFramePolicyListenerProxy,WTF::RawPtrTraits<WTF::Ref<API::NavigationAction,WTF::RawPtrTraits<API::NavigationAction>,WTF::DefaultRefDerefTraits<API::NavigationAction>> &&>,WTF::DefaultRefDerefTraits<WTF::Ref<API::NavigationAction,WTF::RawPtrTraits<API::NavigationAction>,WTF::DefaultRefDerefTraits<API::NavigationAction>> &&>> &&)::$_1)::{lambda(void const*)#1}::__invoke(void *a1)
{
  v2 = a1[9];
  a1[9] = 0;
  if (v2)
  {
    CFRelease(*(v2 + 8));
  }

  v3 = a1[7];
  a1[7] = 0;
  if (v3)
  {
    CFRelease(*(v3 + 8));
  }

  v4 = a1[6];
  a1[6] = 0;
  if (v4)
  {
    WTF::ThreadSafeRefCounted<WebKit::CompletionHandlerCallChecker,(WTF::DestructionThread)0>::deref(v4);
  }

  v5 = a1[5];
  a1[5] = 0;
  if (v5)
  {
    CFRelease(*(v5 + 8));
  }

  v6 = a1[4];
  a1[4] = 0;
  if (v6)
  {
    v7 = *(v6 + 8);

    CFRelease(v7);
  }
}

void WTF::BlockPtr<void ()(WKNavigationResponsePolicy)>::fromCallable<WebKit::NavigationState::NavigationClient::decidePolicyForNavigationResponse(WebKit::WebPageProxy &,WTF::Ref<API::NavigationResponse,WTF::RawPtrTraits<API::NavigationResponse>,WTF::DefaultRefDerefTraits<API::NavigationResponse>> &&,WTF::Ref<WebKit::WebFramePolicyListenerProxy,WTF::RawPtrTraits<WTF::Ref<API::NavigationResponse,WTF::RawPtrTraits<API::NavigationResponse>,WTF::DefaultRefDerefTraits<API::NavigationResponse>> &&>,WTF::DefaultRefDerefTraits<WTF::Ref<API::NavigationResponse,WTF::RawPtrTraits<API::NavigationResponse>,WTF::DefaultRefDerefTraits<API::NavigationResponse>> &&>> &&)::$_0>(WebKit::NavigationState::NavigationClient::decidePolicyForNavigationResponse(WebKit::WebPageProxy &,WTF::Ref<API::NavigationResponse,WTF::RawPtrTraits<API::NavigationResponse>,WTF::DefaultRefDerefTraits<API::NavigationResponse>> &&,WTF::Ref<WebKit::WebFramePolicyListenerProxy,WTF::RawPtrTraits<WTF::Ref<API::NavigationResponse,WTF::RawPtrTraits<API::NavigationResponse>,WTF::DefaultRefDerefTraits<API::NavigationResponse>> &&>,WTF::DefaultRefDerefTraits<WTF::Ref<API::NavigationResponse,WTF::RawPtrTraits<API::NavigationResponse>,WTF::DefaultRefDerefTraits<API::NavigationResponse>> &&>> &&)::$_0)::{lambda(void const*)#1}::__invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  *(a1 + 40) = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCounted<WebKit::CompletionHandlerCallChecker,(WTF::DestructionThread)0>::deref(v2);
  }

  v3 = *(a1 + 32);
  *(a1 + 32) = 0;
  if (v3)
  {
    v4 = *(v3 + 8);

    CFRelease(v4);
  }
}

uint64_t WTF::BlockPtr<void ()(WKNavigationResponsePolicy)>::fromCallable<WebKit::NavigationState::NavigationClient::decidePolicyForNavigationResponse(WebKit::WebPageProxy &,WTF::Ref<API::NavigationResponse,WTF::RawPtrTraits<API::NavigationResponse>,WTF::DefaultRefDerefTraits<API::NavigationResponse>> &&,WTF::Ref<WebKit::WebFramePolicyListenerProxy,WTF::RawPtrTraits<WTF::Ref<API::NavigationResponse,WTF::RawPtrTraits<API::NavigationResponse>,WTF::DefaultRefDerefTraits<API::NavigationResponse>> &&>,WTF::DefaultRefDerefTraits<WTF::Ref<API::NavigationResponse,WTF::RawPtrTraits<API::NavigationResponse>,WTF::DefaultRefDerefTraits<API::NavigationResponse>> &&>> &&)::$_0>(WebKit::NavigationState::NavigationClient::decidePolicyForNavigationResponse(WebKit::WebPageProxy &,WTF::Ref<API::NavigationResponse,WTF::RawPtrTraits<API::NavigationResponse>,WTF::DefaultRefDerefTraits<API::NavigationResponse>> &&,WTF::Ref<WebKit::WebFramePolicyListenerProxy,WTF::RawPtrTraits<WTF::Ref<API::NavigationResponse,WTF::RawPtrTraits<API::NavigationResponse>,WTF::DefaultRefDerefTraits<API::NavigationResponse>> &&>,WTF::DefaultRefDerefTraits<WTF::Ref<API::NavigationResponse,WTF::RawPtrTraits<API::NavigationResponse>,WTF::DefaultRefDerefTraits<API::NavigationResponse>> &&>> &&)::$_0)::{lambda(void *,WKNavigationResponsePolicy)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = WebKit::CompletionHandlerCallChecker::completionHandlerHasBeenCalled(*(a1 + 40));
  if ((result & 1) == 0)
  {
    v5 = *(a1 + 32);
    *(*(a1 + 40) + 24) = 1;
    *(a1 + 32) = 0;
    v6 = WTF::fastMalloc(0x18);
    *v6 = &unk_1F1100A68;
    v6[1] = a2;
    v6[2] = v5;
    v7 = v6;
    WTF::ensureOnMainRunLoop();
    result = v7;
    if (v7)
    {
      return (*(*v7 + 8))(v7);
    }
  }

  return result;
}

void sub_19DC54E80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    (*(*a10 + 8))(a10);
  }

  _Unwind_Resume(exception_object);
}

void *WTF::Detail::CallableWrapper<WebKit::NavigationState::NavigationClient::decidePolicyForNavigationResponse(WebKit::WebPageProxy &,WTF::Ref<API::NavigationResponse,WTF::RawPtrTraits<API::NavigationResponse>,WTF::DefaultRefDerefTraits<API::NavigationResponse>> &&,WTF::Ref<WebKit::WebFramePolicyListenerProxy,WTF::RawPtrTraits<WTF::Ref<API::NavigationResponse,WTF::RawPtrTraits<API::NavigationResponse>,WTF::DefaultRefDerefTraits<API::NavigationResponse>> &&>,WTF::DefaultRefDerefTraits<WTF::Ref<API::NavigationResponse,WTF::RawPtrTraits<API::NavigationResponse>,WTF::DefaultRefDerefTraits<API::NavigationResponse>> &&>> &&)::$_0::operator()(WKNavigationResponsePolicy)::{lambda(void)#1},void>::~CallableWrapper(void *a1)
{
  *a1 = &unk_1F1100A68;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    CFRelease(*(v2 + 8));
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::NavigationState::NavigationClient::decidePolicyForNavigationResponse(WebKit::WebPageProxy &,WTF::Ref<API::NavigationResponse,WTF::RawPtrTraits<API::NavigationResponse>,WTF::DefaultRefDerefTraits<API::NavigationResponse>> &&,WTF::Ref<WebKit::WebFramePolicyListenerProxy,WTF::RawPtrTraits<WTF::Ref<API::NavigationResponse,WTF::RawPtrTraits<API::NavigationResponse>,WTF::DefaultRefDerefTraits<API::NavigationResponse>> &&>,WTF::DefaultRefDerefTraits<WTF::Ref<API::NavigationResponse,WTF::RawPtrTraits<API::NavigationResponse>,WTF::DefaultRefDerefTraits<API::NavigationResponse>> &&>> &&)::$_0::operator()(WKNavigationResponsePolicy)::{lambda(void)#1},void>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F1100A68;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    CFRelease(*(v3 + 8));
  }

  return WTF::fastFree(this, a2);
}

void WTF::Detail::CallableWrapper<WebKit::NavigationState::NavigationClient::decidePolicyForNavigationResponse(WebKit::WebPageProxy &,WTF::Ref<API::NavigationResponse,WTF::RawPtrTraits<API::NavigationResponse>,WTF::DefaultRefDerefTraits<API::NavigationResponse>> &&,WTF::Ref<WebKit::WebFramePolicyListenerProxy,WTF::RawPtrTraits<WTF::Ref<API::NavigationResponse,WTF::RawPtrTraits<API::NavigationResponse>,WTF::DefaultRefDerefTraits<API::NavigationResponse>> &&>,WTF::DefaultRefDerefTraits<WTF::Ref<API::NavigationResponse,WTF::RawPtrTraits<API::NavigationResponse>,WTF::DefaultRefDerefTraits<API::NavigationResponse>> &&>> &&)::$_0::operator()(WKNavigationResponsePolicy)::{lambda(void)#1},void>::call(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1)
  {
    if (v1 == 2)
    {
      WebKit::WebFramePolicyListenerProxy::download(*(a1 + 16));
    }

    else if (v1 == 1)
    {
      WebKit::WebFramePolicyListenerProxy::use(*(a1 + 16), 0, 0);
    }
  }

  else
  {
    WebKit::WebFramePolicyListenerProxy::ignore(*(a1 + 16), 0);
  }
}

void WTF::BlockPtr<void ()(NSURLSessionAuthChallengeDisposition,NSURLCredential *)>::fromCallable<WebKit::NavigationState::NavigationClient::didReceiveAuthenticationChallenge(WebKit::WebPageProxy &,WebKit::AuthenticationChallengeProxy &)::$_0>(WebKit::NavigationState::NavigationClient::didReceiveAuthenticationChallenge(WebKit::WebPageProxy &,WebKit::AuthenticationChallengeProxy &)::$_0)::{lambda(void const*)#1}::__invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  *(a1 + 40) = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCounted<WebKit::CompletionHandlerCallChecker,(WTF::DestructionThread)0>::deref(v2);
  }

  v3 = *(a1 + 32);
  *(a1 + 32) = 0;
  if (v3)
  {
    v4 = *(v3 + 8);

    CFRelease(v4);
  }
}

uint64_t WTF::BlockPtr<void ()(NSURLSessionAuthChallengeDisposition,NSURLCredential *)>::fromCallable<WebKit::NavigationState::NavigationClient::didReceiveAuthenticationChallenge(WebKit::WebPageProxy &,WebKit::AuthenticationChallengeProxy &)::$_0>(WebKit::NavigationState::NavigationClient::didReceiveAuthenticationChallenge(WebKit::WebPageProxy &,WebKit::AuthenticationChallengeProxy &)::$_0)::{lambda(void *,NSURLSessionAuthChallengeDisposition,NSURLCredential *)#1}::__invoke(uint64_t a1, unint64_t a2, uint64_t a3)
{
  result = WebKit::CompletionHandlerCallChecker::completionHandlerHasBeenCalled(*(a1 + 40));
  if ((result & 1) == 0)
  {
    v8 = *(a1 + 32);
    *(*(a1 + 40) + 24) = 1;
    v9 = *(v8 + 472);
    WebKit::toAuthenticationChallengeDisposition(a2, v7);
    MEMORY[0x19EB02B50](&v13, a3);
    WebKit::AuthenticationDecisionListener::completeChallenge(v9);
    v11 = v15;
    v15 = 0;
    if (v11)
    {
    }

    v12 = v14;
    v14 = 0;
    if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v12, v10);
    }

    result = v13;
    v13 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        return WTF::StringImpl::destroy(result, v10);
      }
    }
  }

  return result;
}

atomic_uint *WTF::BlockPtr<void ()(BOOL)>::fromCallable<WebKit::NavigationState::NavigationClient::shouldAllowLegacyTLS(WebKit::WebPageProxy &,WebKit::AuthenticationChallengeProxy &,WTF::CompletionHandler<void ()(BOOL)> &&)::$_0>(WebKit::NavigationState::NavigationClient::shouldAllowLegacyTLS(WebKit::WebPageProxy &,WebKit::AuthenticationChallengeProxy &,WTF::CompletionHandler<void ()(BOOL)> &&)::$_0)::{lambda(void const*)#1}::__invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  *(a1 + 40) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  result = *(a1 + 32);
  *(a1 + 32) = 0;
  if (result)
  {

    return WTF::ThreadSafeRefCounted<WebKit::CompletionHandlerCallChecker,(WTF::DestructionThread)0>::deref(result);
  }

  return result;
}

uint64_t WTF::BlockPtr<void ()(BOOL)>::fromCallable<WebKit::NavigationState::NavigationClient::shouldAllowLegacyTLS(WebKit::WebPageProxy &,WebKit::AuthenticationChallengeProxy &,WTF::CompletionHandler<void ()(BOOL)> &&)::$_0>(WebKit::NavigationState::NavigationClient::shouldAllowLegacyTLS(WebKit::WebPageProxy &,WebKit::AuthenticationChallengeProxy &,WTF::CompletionHandler<void ()(BOOL)> &&)::$_0)::{lambda(void *,BOOL)#1}::__invoke(uint64_t a1, char a2)
{
  result = WebKit::CompletionHandlerCallChecker::completionHandlerHasBeenCalled(*(a1 + 32));
  if ((result & 1) == 0)
  {
    *(*(a1 + 32) + 24) = 1;

    return WTF::CompletionHandler<void ()(BOOL)>::operator()((a1 + 40), a2);
  }

  return result;
}

atomic_uint *WTF::BlockPtr<void ()(BOOL)>::fromCallable<WebKit::NavigationState::NavigationClient::shouldAllowLegacyTLS(WebKit::WebPageProxy &,WebKit::AuthenticationChallengeProxy &,WTF::CompletionHandler<void ()(BOOL)> &&)::$_1>(WebKit::NavigationState::NavigationClient::shouldAllowLegacyTLS(WebKit::WebPageProxy &,WebKit::AuthenticationChallengeProxy &,WTF::CompletionHandler<void ()(BOOL)> &&)::$_1)::{lambda(void const*)#1}::__invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  *(a1 + 40) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  result = *(a1 + 32);
  *(a1 + 32) = 0;
  if (result)
  {

    return WTF::ThreadSafeRefCounted<WebKit::CompletionHandlerCallChecker,(WTF::DestructionThread)0>::deref(result);
  }

  return result;
}

uint64_t WTF::BlockPtr<void ()(BOOL)>::fromCallable<WebKit::NavigationState::NavigationClient::shouldAllowLegacyTLS(WebKit::WebPageProxy &,WebKit::AuthenticationChallengeProxy &,WTF::CompletionHandler<void ()(BOOL)> &&)::$_1>(WebKit::NavigationState::NavigationClient::shouldAllowLegacyTLS(WebKit::WebPageProxy &,WebKit::AuthenticationChallengeProxy &,WTF::CompletionHandler<void ()(BOOL)> &&)::$_1)::{lambda(void *,BOOL)#1}::__invoke(uint64_t a1, char a2)
{
  result = WebKit::CompletionHandlerCallChecker::completionHandlerHasBeenCalled(*(a1 + 32));
  if ((result & 1) == 0)
  {
    *(*(a1 + 32) + 24) = 1;

    return WTF::CompletionHandler<void ()(BOOL)>::operator()((a1 + 40), a2);
  }

  return result;
}

uint64_t WTF::BlockPtr<void ()(NSData *)>::fromCallable<WebKit::NavigationState::NavigationClient::legacyWebCryptoMasterKey(WebKit::WebPageProxy &,WTF::CompletionHandler<void ()(std::optional<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>> &&)> &&)::$_0>(WebKit::NavigationState::NavigationClient::legacyWebCryptoMasterKey(WebKit::WebPageProxy &,WTF::CompletionHandler<void ()(std::optional<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>> &&)> &&)::$_0)::{lambda(void const*)#1}::__invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  *(a1 + 40) = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCounted<WebKit::CompletionHandlerCallChecker,(WTF::DestructionThread)0>::deref(v2);
  }

  result = *(a1 + 32);
  *(a1 + 32) = 0;
  if (result)
  {
    v4 = *(*result + 8);

    return v4();
  }

  return result;
}

unint64_t WTF::BlockPtr<void ()(NSData *)>::fromCallable<WebKit::NavigationState::NavigationClient::legacyWebCryptoMasterKey(WebKit::WebPageProxy &,WTF::CompletionHandler<void ()(std::optional<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>> &&)> &&)::$_0>(WebKit::NavigationState::NavigationClient::legacyWebCryptoMasterKey(WebKit::WebPageProxy &,WTF::CompletionHandler<void ()(std::optional<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>> &&)> &&)::$_0)::{lambda(void *,NSData *)#1}::__invoke(uint64_t a1, void *a2)
{
  result = WebKit::CompletionHandlerCallChecker::completionHandlerHasBeenCalled(*(a1 + 40));
  if ((result & 1) == 0)
  {
    *(*(a1 + 40) + 24) = 1;
    if (a2)
    {
      v5 = [a2 bytes];
      result = [a2 length];
      v6 = result;
      v11 = 0;
      v12 = 0;
      v13 = result;
      if (result)
      {
        if (HIDWORD(result))
        {
          __break(0xC471u);
          return result;
        }

        v7 = WTF::fastMalloc(result);
        v12 = v6;
        v11 = v7;
        do
        {
          v8 = *v5++;
          *v7 = v8;
          v7 = (v7 + 1);
          --v6;
        }

        while (v6);
      }

      std::optional<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>::optional[abi:sn200100]<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,0>(&v14, &v11);
      WTF::CompletionHandler<void ()(std::optional<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>> &&)>::operator()((a1 + 32));
      if (v16 == 1)
      {
        v10 = v14;
        if (v14)
        {
          v14 = 0;
          v15 = 0;
          WTF::fastFree(v10, v9);
        }
      }

      result = v11;
      if (v11)
      {
        v11 = 0;
        v12 = 0;
        return WTF::fastFree(result, v9);
      }
    }

    else
    {
      LOBYTE(v14) = 0;
      v16 = 0;
      return WTF::CompletionHandler<void ()(std::optional<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>> &&)>::operator()((a1 + 32));
    }
  }

  return result;
}

void sub_19DC55448(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF *a10, int a11, WTF *a12, int a13, int a14, char a15)
{
  if (a15 == 1)
  {
    if (a12)
    {
      WTF::fastFree(a12, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t WTF::BlockPtr<void ()(_WKSOAuthorizationLoadPolicy)>::fromCallable<WebKit::NavigationState::NavigationClient::decidePolicyForSOAuthorizationLoad(WebKit::WebPageProxy &,WebKit::SOAuthorizationLoadPolicy,WTF::String const&,WTF::CompletionHandler<void ()(WebKit::SOAuthorizationLoadPolicy)> &&)::$_0>(WebKit::NavigationState::NavigationClient::decidePolicyForSOAuthorizationLoad(WebKit::WebPageProxy &,WebKit::SOAuthorizationLoadPolicy,WTF::String const&,WTF::CompletionHandler<void ()(WebKit::SOAuthorizationLoadPolicy)> &&)::$_0)::{lambda(void const*)#1}::__invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  *(a1 + 40) = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCounted<WebKit::CompletionHandlerCallChecker,(WTF::DestructionThread)0>::deref(v2);
  }

  result = *(a1 + 32);
  *(a1 + 32) = 0;
  if (result)
  {
    v4 = *(*result + 8);

    return v4();
  }

  return result;
}

uint64_t WTF::BlockPtr<void ()(_WKSOAuthorizationLoadPolicy)>::fromCallable<WebKit::NavigationState::NavigationClient::decidePolicyForSOAuthorizationLoad(WebKit::WebPageProxy &,WebKit::SOAuthorizationLoadPolicy,WTF::String const&,WTF::CompletionHandler<void ()(WebKit::SOAuthorizationLoadPolicy)> &&)::$_0>(WebKit::NavigationState::NavigationClient::decidePolicyForSOAuthorizationLoad(WebKit::WebPageProxy &,WebKit::SOAuthorizationLoadPolicy,WTF::String const&,WTF::CompletionHandler<void ()(WebKit::SOAuthorizationLoadPolicy)> &&)::$_0)::{lambda(void *,_WKSOAuthorizationLoadPolicy)#1}::__invoke(uint64_t a1)
{
  result = WebKit::CompletionHandlerCallChecker::completionHandlerHasBeenCalled(*(a1 + 40));
  if ((result & 1) == 0)
  {
    *(*(a1 + 40) + 24) = 1;

    return WTF::CompletionHandler<void ()(WebKit::SOAuthorizationLoadPolicy)>::operator()((a1 + 32));
  }

  return result;
}

uint64_t WTF::HashTable<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::tuple<WTF::Ref<WebKit::PlaybackSessionModelContext,WTF::RawPtrTraits<WebKit::PlaybackSessionModelContext>,WTF::DefaultRefDerefTraits<WebKit::PlaybackSessionModelContext>>,WTF::Ref<WebCore::PlaybackSessionInterfaceIOS,WTF::RawPtrTraits<WebCore::PlaybackSessionInterfaceIOS>,WTF::DefaultRefDerefTraits<WebCore::PlaybackSessionInterfaceIOS>>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::tuple<WTF::Ref<WebKit::PlaybackSessionModelContext,WTF::RawPtrTraits<WebKit::PlaybackSessionModelContext>,WTF::DefaultRefDerefTraits<WebKit::PlaybackSessionModelContext>>,WTF::Ref<WebCore::PlaybackSessionInterfaceIOS,WTF::RawPtrTraits<WebCore::PlaybackSessionInterfaceIOS>,WTF::DefaultRefDerefTraits<WebCore::PlaybackSessionInterfaceIOS>>>>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashMap<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::tuple<WTF::Ref<WebKit::PlaybackSessionModelContext,WTF::RawPtrTraits<WebKit::PlaybackSessionModelContext>,WTF::DefaultRefDerefTraits<WebKit::PlaybackSessionModelContext>>,WTF::Ref<WebCore::PlaybackSessionInterfaceIOS,WTF::RawPtrTraits<WebCore::PlaybackSessionInterfaceIOS>,WTF::DefaultRefDerefTraits<WebCore::PlaybackSessionInterfaceIOS>>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<std::tuple<WTF::Ref<WebKit::PlaybackSessionModelContext,WTF::RawPtrTraits<WebKit::PlaybackSessionModelContext>,WTF::DefaultRefDerefTraits<WebKit::PlaybackSessionModelContext>>,WTF::Ref<WebCore::PlaybackSessionInterfaceIOS,WTF::RawPtrTraits<WebCore::PlaybackSessionInterfaceIOS>,WTF::DefaultRefDerefTraits<WebCore::PlaybackSessionInterfaceIOS>>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::FastMalloc>::deallocateTable(uint64_t a1, void *a2)
{
  v3 = *(a1 - 4);
  if (v3)
  {
    v4 = (a1 + 24);
    do
    {
      if (*(v4 - 2) != -1)
      {
        v5 = *v4;
        *v4 = 0;
        if (v5)
        {
          if (v5[4] == 1)
          {
            (*(*v5 + 8))(v5);
          }

          else
          {
            --v5[4];
          }
        }

        v6 = *(v4 - 1);
        *(v4 - 1) = 0;
        if (v6)
        {
          if (v6[4] == 1)
          {
            (*(*v6 + 8))(v6);
          }

          else
          {
            --v6[4];
          }
        }
      }

      v4 += 4;
      --v3;
    }

    while (v3);
  }

  return WTF::fastFree((a1 - 16), a2);
}

void std::__optional_storage_base<WebKit::ExtensionProcess,false>::__assign_from[abi:sn200100]<std::__optional_move_assign_base<WebKit::ExtensionProcess,false>>(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) == *(a2 + 16))
  {
    if (!*(a1 + 16))
    {
      return;
    }

    v3 = *(a1 + 8);
    v4 = *(a2 + 8);
    if (v3 == 255)
    {
      if (v4 == 255)
      {
        return;
      }
    }

    else if (v4 == 255)
    {
      v5 = *a1;
      *a1 = 0;
      if (v5)
      {
      }

      *(a1 + 8) = -1;
      return;
    }

    v8 = a1;
    _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_10assignmentINS0_6traitsIJN3WTF9RetainPtrI19BEWebContentProcessEENS7_I19BENetworkingProcessEENS7_I18BERenderingProcessEEEEEE14generic_assignINS0_15move_assignmentISE_LNS0_5TraitE1EEEEEvOT_EUlRSK_OT0_E_JRSF_SJ_EEEDcmSL_DpOT0_(v4, &v8, a1, a2);
    return;
  }

  if (*(a1 + 16))
  {
    if (*(a1 + 8) != 255)
    {
      v6 = *a1;
      *a1 = 0;
      if (v6)
      {
      }
    }

    *(a1 + 8) = -1;
    *(a1 + 16) = 0;
  }

  else
  {
    *a1 = 0;
    *(a1 + 8) = -1;
    if (*(a2 + 8) != 255)
    {
      v7 = *a2;
      *a2 = 0;
      *a1 = v7;
      *(a1 + 8) = *(a2 + 8);
    }

    *(a1 + 16) = 1;
  }
}

void _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_10assignmentINS0_6traitsIJN3WTF9RetainPtrI19BEWebContentProcessEENS7_I19BENetworkingProcessEENS7_I18BERenderingProcessEEEEEE14generic_assignINS0_15move_assignmentISE_LNS0_5TraitE1EEEEEvOT_EUlRSK_OT0_E_JRSF_SJ_EEEDcmSL_DpOT0_(uint64_t a1, uint64_t *a2, void **a3, void **a4)
{
  v4 = *(*a2 + 8);
  if (a1 == 2)
  {
    if (v4 != 2)
    {
      v7 = *a2;
      v8 = a4;
      mpark::detail::assignment<mpark::detail::traits<WTF::RetainPtr<BEWebContentProcess>,WTF::RetainPtr<BENetworkingProcess>,WTF::RetainPtr<BERenderingProcess>>>::assign_alt<2ul,WTF::RetainPtr<BERenderingProcess>,WTF::RetainPtr<BERenderingProcess>>(mpark::detail::alt<2ul,WTF::RetainPtr<BERenderingProcess>> &,WTF::RetainPtr<BERenderingProcess> &&)::{unnamed type#1}::operator()(&v7);
      return;
    }
  }

  else if (a1 == 1)
  {
    if (v4 != 1)
    {
      v7 = *a2;
      v8 = a4;
      mpark::detail::assignment<mpark::detail::traits<WTF::RetainPtr<BEWebContentProcess>,WTF::RetainPtr<BENetworkingProcess>,WTF::RetainPtr<BERenderingProcess>>>::assign_alt<1ul,WTF::RetainPtr<BENetworkingProcess>,WTF::RetainPtr<BENetworkingProcess>>(mpark::detail::alt<1ul,WTF::RetainPtr<BENetworkingProcess>> &,WTF::RetainPtr<BENetworkingProcess> &&)::{unnamed type#1}::operator()(&v7);
      return;
    }
  }

  else if (*(*a2 + 8))
  {
    v7 = *a2;
    v8 = a4;
    mpark::detail::assignment<mpark::detail::traits<WTF::RetainPtr<BEWebContentProcess>,WTF::RetainPtr<BENetworkingProcess>,WTF::RetainPtr<BERenderingProcess>>>::assign_alt<0ul,WTF::RetainPtr<BEWebContentProcess>,WTF::RetainPtr<BEWebContentProcess>>(mpark::detail::alt<0ul,WTF::RetainPtr<BEWebContentProcess>> &,WTF::RetainPtr<BEWebContentProcess> &&)::{unnamed type#1}::operator()(&v7);
    return;
  }

  v5 = *a4;
  *a4 = 0;
  v6 = *a3;
  *a3 = v5;
  if (v6)
  {
  }
}

void mpark::detail::assignment<mpark::detail::traits<WTF::RetainPtr<BEWebContentProcess>,WTF::RetainPtr<BENetworkingProcess>,WTF::RetainPtr<BERenderingProcess>>>::assign_alt<0ul,WTF::RetainPtr<BEWebContentProcess>,WTF::RetainPtr<BEWebContentProcess>>(mpark::detail::alt<0ul,WTF::RetainPtr<BEWebContentProcess>> &,WTF::RetainPtr<BEWebContentProcess> &&)::{unnamed type#1}::operator()(void *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*(*a1 + 8) != 255)
  {
    v3 = *v1;
    *v1 = 0;
    if (v3)
    {
    }
  }

  *(v1 + 8) = -1;
  v4 = *v2;
  *v2 = 0;
  *v1 = v4;
  *(v1 + 8) = 0;
}

void mpark::detail::assignment<mpark::detail::traits<WTF::RetainPtr<BEWebContentProcess>,WTF::RetainPtr<BENetworkingProcess>,WTF::RetainPtr<BERenderingProcess>>>::assign_alt<1ul,WTF::RetainPtr<BENetworkingProcess>,WTF::RetainPtr<BENetworkingProcess>>(mpark::detail::alt<1ul,WTF::RetainPtr<BENetworkingProcess>> &,WTF::RetainPtr<BENetworkingProcess> &&)::{unnamed type#1}::operator()(void *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*(*a1 + 8) != 255)
  {
    v3 = *v1;
    *v1 = 0;
    if (v3)
    {
    }
  }

  *(v1 + 8) = -1;
  v4 = *v2;
  *v2 = 0;
  *v1 = v4;
  *(v1 + 8) = 1;
}

void mpark::detail::assignment<mpark::detail::traits<WTF::RetainPtr<BEWebContentProcess>,WTF::RetainPtr<BENetworkingProcess>,WTF::RetainPtr<BERenderingProcess>>>::assign_alt<2ul,WTF::RetainPtr<BERenderingProcess>,WTF::RetainPtr<BERenderingProcess>>(mpark::detail::alt<2ul,WTF::RetainPtr<BERenderingProcess>> &,WTF::RetainPtr<BERenderingProcess> &&)::{unnamed type#1}::operator()(void *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*(*a1 + 8) != 255)
  {
    v3 = *v1;
    *v1 = 0;
    if (v3)
    {
    }
  }

  *(v1 + 8) = -1;
  v4 = *v2;
  *v2 = 0;
  *v1 = v4;
  *(v1 + 8) = 2;
}

uint64_t WebKit::ResourceLoadDelegate::ResourceLoadClient::operator new(WebKit::ResourceLoadDelegate::ResourceLoadClient *this, void *a2)
{
  if (this == 16 && WebKit::ResourceLoadDelegate::ResourceLoadClient::s_heapRef)
  {
    return bmalloc::api::tzoneAllocateNonCompact(WebKit::ResourceLoadDelegate::ResourceLoadClient::s_heapRef, a2);
  }

  else
  {
    return WebKit::ResourceLoadDelegate::ResourceLoadClient::operatorNewSlow(this);
  }
}

uint64_t WTF::CompletionHandler<void ()(std::optional<WTF::Vector<WebCore::ContactInfo,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>> &&)>::operator()(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  (*(*v1 + 16))(v1);
  v2 = *(*v1 + 8);

  return v2(v1);
}

uint64_t WTF::Vector<WebCore::ContactInfo,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(uint64_t a1, void *a2)
{
  v3 = *(a1 + 12);
  if (v3)
  {
    v4 = *a1;
    v5 = 48 * v3;
    do
    {
      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v4 + 32, a2);
      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v4 + 16, v6);
      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v4, v7);
      v4 += 48;
      v5 -= 48;
    }

    while (v5);
  }

  v8 = *a1;
  if (*a1)
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    WTF::fastFree(v8, a2);
  }

  return a1;
}

uint64_t WTF::CompletionHandler<void ()(WebCore::TextRecognitionResult &&)>::operator()(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  (*(*v1 + 16))(v1);
  v2 = *(*v1 + 8);

  return v2(v1);
}

uint64_t WTF::CompletionHandler<void ()(unsigned long long)>::operator()(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  (*(*v1 + 16))(v1);
  v2 = *(*v1 + 8);

  return v2(v1);
}

uint64_t WTF::Vector<WebCore::MediaSelectionOption,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(uint64_t result, uint64_t *a2)
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

  if (v3 < 0xAAAAAAB)
  {
    v5 = 24 * v3;
    v6 = WTF::fastMalloc((24 * v3));
    *(v2 + 8) = v5 / 0x18;
    *v2 = v6;
    v7 = *(a2 + 3);
    if (v7)
    {
      v8 = *a2;
      v9 = *a2 + 24 * v7;
      do
      {
        *v6 = *v8;
        v10 = *(v8 + 8);
        if (v10)
        {
          atomic_fetch_add_explicit(v10, 2u, memory_order_relaxed);
        }

        *(v6 + 8) = v10;
        *(v6 + 16) = *(v8 + 16);
        v6 += 24;
        v8 += 24;
      }

      while (v8 != v9);
    }

    return v2;
  }

  __break(0xC471u);
  return result;
}

void WTF::Detail::CallableWrapper<WTF::RunLoop::Timer::Timer<WebKit::NavigationState>(WTF::Ref<WTF::RunLoop,WTF::RawPtrTraits<WTF::RunLoop>,WTF::DefaultRefDerefTraits<WTF::RunLoop>> &&,WTF::ASCIILiteral,WebKit::NavigationState *,void (WTF::ASCIILiteral::*)(void))::{lambda(void)#1},void>::call(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    WebKit::NavigationState::ref(*(a1 + 8));
    v3 = *(a1 + 8);
  }

  else
  {
    v3 = 0;
  }

  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = (v3 + (v5 >> 1));
  if (v5)
  {
    v4 = *(*v6 + v4);
  }

  v4(v6);
  if (v2)
  {

    WebKit::NavigationState::deref(v2);
  }
}

void sub_19DC55D48(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    WebKit::NavigationState::deref(v1);
  }

  _Unwind_Resume(exception_object);
}

void WTF::WeakHashMap<WebKit::WebPageProxy,WTF::WeakPtr<WebKit::NavigationState,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultWeakPtrImpl>::removeNullReferences(uint64_t a1, void *a2)
{
  v2 = WebKit::navigationStates(void)::navigationStates;
  if (!WebKit::navigationStates(void)::navigationStates)
  {
    goto LABEL_16;
  }

  v3 = *(WebKit::navigationStates(void)::navigationStates - 4);
  if (!v3)
  {
    goto LABEL_11;
  }

  v4 = 0;
  v5 = (WebKit::navigationStates(void)::navigationStates + 16 * v3 - 16);
  do
  {
    if (*v5 + 1 >= 2 && !*(*v5 + 1))
    {
      WTF::KeyValuePairHashTraits<WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::WeakPtr<WebKit::NavigationState,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>>::customDeleteBucket(v5, a2);
      ++v4;
    }

    v5 -= 2;
    --v3;
  }

  while (v3);
  v2 = WebKit::navigationStates(void)::navigationStates;
  if (v4)
  {
    v6 = *(WebKit::navigationStates(void)::navigationStates - 12) - v4;
    *(WebKit::navigationStates(void)::navigationStates - 16) += v4;
    *(v2 - 12) = v6;
    goto LABEL_11;
  }

  if (!WebKit::navigationStates(void)::navigationStates)
  {
LABEL_16:
    LODWORD(v2) = 0;
    dword_1ED6433F8 = 0;
    goto LABEL_33;
  }

LABEL_11:
  v7 = *(v2 - 12);
  v8 = *(v2 - 4);
  if (6 * v7 >= v8 || v8 <= 8)
  {
    dword_1ED6433F8 = 0;
LABEL_32:
    LODWORD(v2) = *(v2 - 12);
    if (v2 > 0x7FFFFFFE)
    {
      v14 = -2;
      goto LABEL_35;
    }

LABEL_33:
    v14 = 2 * v2;
LABEL_35:
    dword_1ED6433FC = v14;
    return;
  }

  if (v7 <= 1)
  {
    v10 = 1;
    goto LABEL_21;
  }

  v11 = __clz(v7 - 1);
  if (v11)
  {
    v10 = (1 << -v11);
    if (v7 > 0x400)
    {
      if (v10 > 2 * v7)
      {
LABEL_23:
        if (v10 > 0x400)
        {
          v12 = 0.416666667;
        }

        else
        {
          v12 = 0.604166667;
        }

        if (v10 * v12 <= v7)
        {
          LODWORD(v10) = 2 * v10;
        }

        if (v10 <= 8)
        {
          v13 = 8;
        }

        else
        {
          v13 = v10;
        }

        WTF::HashTable<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::KeyValuePair<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::WeakPtr<WebKit::NavigationState,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::WeakPtr<WebKit::NavigationState,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>>,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashMap<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::WeakPtr<WebKit::NavigationState,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::WeakPtr<WebKit::NavigationState,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::FastMalloc>::rehash(v13);
        v2 = WebKit::navigationStates(void)::navigationStates;
        dword_1ED6433F8 = 0;
        if (!WebKit::navigationStates(void)::navigationStates)
        {
          goto LABEL_33;
        }

        goto LABEL_32;
      }

LABEL_22:
      LODWORD(v10) = 2 * v10;
      goto LABEL_23;
    }

LABEL_21:
    if (3 * v10 > 4 * v7)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

  __break(1u);
}

unsigned int *WTF::KeyValuePairHashTraits<WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::WeakPtr<WebKit::NavigationState,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>>::customDeleteBucket(unsigned int **a1, void *a2)
{
  WTF::hashTraitsDeleteBucket<WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>(a1, a2);
  result = a1[1];
  a1[1] = 0;
  if (result && atomic_fetch_add(result, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, result);

    return WTF::fastFree(result, v3);
  }

  return result;
}

unsigned int *WTF::hashTraitsDeleteBucket<WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>(unsigned int **a1, void *a2)
{
  result = *a1;
  *a1 = 0;
  if (result && atomic_fetch_add(result, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, result);
    result = WTF::fastFree(result, a2);
  }

  *a1 = -1;
  return result;
}

void WTF::HashTable<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::KeyValuePair<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::WeakPtr<WebKit::NavigationState,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::WeakPtr<WebKit::NavigationState,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>>,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashMap<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::WeakPtr<WebKit::NavigationState,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::WeakPtr<WebKit::NavigationState,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::FastMalloc>::rehash(unsigned int a1)
{
  v2 = WebKit::navigationStates(void)::navigationStates;
  if (WebKit::navigationStates(void)::navigationStates)
  {
    v3 = *(WebKit::navigationStates(void)::navigationStates - 4);
    v4 = *(WebKit::navigationStates(void)::navigationStates - 12);
  }

  else
  {
    v3 = 0;
    v4 = 0;
  }

  v5 = WTF::fastMalloc((16 * a1 + 16));
  v7 = v5;
  v8 = v5 + 16;
  if (a1)
  {
    bzero((v5 + 16), 16 * a1);
  }

  WebKit::navigationStates(void)::navigationStates = v8;
  v7[2] = a1 - 1;
  v7[3] = a1;
  *v7 = 0;
  v7[1] = v4;
  if (v3)
  {
    v9 = 0;
    while (1)
    {
      v10 = (v2 + 16 * v9);
      v11 = *v10;
      if (*v10 != -1)
      {
        if (v11)
        {
          if (WebKit::navigationStates(void)::navigationStates)
          {
            v14 = *(WebKit::navigationStates(void)::navigationStates - 8);
          }

          else
          {
            v14 = 0;
          }

          v15 = (v11 + ~(v11 << 32)) ^ ((v11 + ~(v11 << 32)) >> 22);
          v16 = 9 * ((v15 + ~(v15 << 13)) ^ ((v15 + ~(v15 << 13)) >> 8));
          v17 = (v16 ^ (v16 >> 15)) + ~((v16 ^ (v16 >> 15)) << 27);
          v18 = v14 & ((v17 >> 31) ^ v17);
          v19 = 1;
          do
          {
            v20 = v18;
            v21 = *(WebKit::navigationStates(void)::navigationStates + 16 * v18);
            v18 = (v18 + v19++) & v14;
          }

          while (v21);
          v22 = WebKit::navigationStates(void)::navigationStates + 16 * v20;
          v23 = *(v22 + 8);
          *(v22 + 8) = 0;
          if (v23 && atomic_fetch_add(v23, 0xFFFFFFFF) == 1)
          {
            atomic_store(1u, v23);
            WTF::fastFree(v23, v6);
          }

          v24 = *v22;
          *v22 = 0;
          if (v24 && atomic_fetch_add(v24, 0xFFFFFFFF) == 1)
          {
            atomic_store(1u, v24);
            WTF::fastFree(v24, v6);
          }

          v25 = *v10;
          *v10 = 0;
          *v22 = v25;
          v26 = v10[1];
          v10[1] = 0;
          *(v22 + 8) = v26;
          v27 = v10[1];
          v10[1] = 0;
          if (v27 && atomic_fetch_add(v27, 0xFFFFFFFF) == 1)
          {
            atomic_store(1u, v27);
            WTF::fastFree(v27, v6);
          }

          v13 = *v10;
          *v10 = 0;
          if (!v13 || atomic_fetch_add(v13, 0xFFFFFFFF) != 1)
          {
            goto LABEL_29;
          }
        }

        else
        {
          v12 = v10[1];
          v10[1] = 0;
          if (v12 && atomic_fetch_add(v12, 0xFFFFFFFF) == 1)
          {
            atomic_store(1u, v12);
            WTF::fastFree(v12, v6);
          }

          v13 = *v10;
          *v10 = 0;
          if (!v13 || atomic_fetch_add(v13, 0xFFFFFFFF) != 1)
          {
            goto LABEL_29;
          }
        }

        atomic_store(1u, v13);
        WTF::fastFree(v13, v6);
      }

LABEL_29:
      if (++v9 == v3)
      {
        goto LABEL_36;
      }
    }
  }

  if (v2)
  {
LABEL_36:

    WTF::fastFree((v2 - 16), v6);
  }
}

void WTF::HashTable<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::KeyValuePair<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::WeakPtr<WebKit::NavigationState,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::WeakPtr<WebKit::NavigationState,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>>,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashMap<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::WeakPtr<WebKit::NavigationState,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::WeakPtr<WebKit::NavigationState,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::FastMalloc>::expand()
{
  if (WebKit::navigationStates(void)::navigationStates && (v0 = *(WebKit::navigationStates(void)::navigationStates - 4)) != 0)
  {
    WTF::HashTable<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::KeyValuePair<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::WeakPtr<WebKit::NavigationState,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::WeakPtr<WebKit::NavigationState,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>>,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashMap<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::WeakPtr<WebKit::NavigationState,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::WeakPtr<WebKit::NavigationState,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::FastMalloc>::rehash(v0 << (6 * *(WebKit::navigationStates(void)::navigationStates - 12) >= (2 * v0)));
  }

  else
  {
    WTF::HashTable<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::KeyValuePair<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::WeakPtr<WebKit::NavigationState,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::WeakPtr<WebKit::NavigationState,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>>,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashMap<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::WeakPtr<WebKit::NavigationState,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::WeakPtr<WebKit::NavigationState,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::FastMalloc>::rehash(8u);
  }
}

void *WTF::Detail::CallableWrapper<WebKit::NavigationState::NavigationClient::decidePolicyForNavigationAction(WebKit::WebPageProxy &,WTF::Ref<API::NavigationAction,WTF::RawPtrTraits<API::NavigationAction>,WTF::DefaultRefDerefTraits<API::NavigationAction>> &&,WTF::Ref<WebKit::WebFramePolicyListenerProxy,WTF::RawPtrTraits<WTF::Ref<API::NavigationAction,WTF::RawPtrTraits<API::NavigationAction>,WTF::DefaultRefDerefTraits<API::NavigationAction>> &&>,WTF::DefaultRefDerefTraits<WTF::Ref<API::NavigationAction,WTF::RawPtrTraits<API::NavigationAction>,WTF::DefaultRefDerefTraits<API::NavigationAction>> &&>> &&)::$_2,void,BOOL>::~CallableWrapper(void *a1)
{
  *a1 = &unk_1F1100B58;
  v2 = a1[4];
  a1[4] = 0;
  if (v2)
  {
    CFRelease(*(v2 + 8));
  }

  v3 = a1[3];
  a1[3] = 0;
  if (v3)
  {
    CFRelease(*(v3 + 8));
  }

  v4 = a1[2];
  a1[2] = 0;
  if (v4)
  {
    CFRelease(*(v4 + 8));
  }

  v5 = a1[1];
  a1[1] = 0;
  if (v5)
  {
    CFRelease(*(v5 + 8));
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::NavigationState::NavigationClient::decidePolicyForNavigationAction(WebKit::WebPageProxy &,WTF::Ref<API::NavigationAction,WTF::RawPtrTraits<API::NavigationAction>,WTF::DefaultRefDerefTraits<API::NavigationAction>> &&,WTF::Ref<WebKit::WebFramePolicyListenerProxy,WTF::RawPtrTraits<WTF::Ref<API::NavigationAction,WTF::RawPtrTraits<API::NavigationAction>,WTF::DefaultRefDerefTraits<API::NavigationAction>> &&>,WTF::DefaultRefDerefTraits<WTF::Ref<API::NavigationAction,WTF::RawPtrTraits<API::NavigationAction>,WTF::DefaultRefDerefTraits<API::NavigationAction>> &&>> &&)::$_2,void,BOOL>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F1100B58;
  v3 = *(this + 4);
  *(this + 4) = 0;
  if (v3)
  {
    CFRelease(*(v3 + 8));
  }

  v4 = *(this + 3);
  *(this + 3) = 0;
  if (v4)
  {
    CFRelease(*(v4 + 8));
  }

  v5 = *(this + 2);
  *(this + 2) = 0;
  if (v5)
  {
    CFRelease(*(v5 + 8));
  }

  v6 = *(this + 1);
  *(this + 1) = 0;
  if (v6)
  {
    CFRelease(*(v6 + 8));
  }

  return WTF::fastFree(this, a2);
}

void WTF::Detail::CallableWrapper<WebKit::NavigationState::NavigationClient::decidePolicyForNavigationAction(WebKit::WebPageProxy &,WTF::Ref<API::NavigationAction,WTF::RawPtrTraits<API::NavigationAction>,WTF::DefaultRefDerefTraits<API::NavigationAction>> &&,WTF::Ref<WebKit::WebFramePolicyListenerProxy,WTF::RawPtrTraits<WTF::Ref<API::NavigationAction,WTF::RawPtrTraits<API::NavigationAction>,WTF::DefaultRefDerefTraits<API::NavigationAction>> &&>,WTF::DefaultRefDerefTraits<WTF::Ref<API::NavigationAction,WTF::RawPtrTraits<API::NavigationAction>,WTF::DefaultRefDerefTraits<API::NavigationAction>> &&>> &&)::$_2,void,BOOL>::call(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = *(a1 + 16);

    WebKit::WebFramePolicyListenerProxy::ignore(v3, 1);
    return;
  }

  if (WebKit::isUnsupportedWebExtensionNavigation(*(a1 + 24), *(a1 + 8)))
  {
    v4 = qword_1ED640AB8;
    if (os_log_type_enabled(qword_1ED640AB8, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v22[0]) = 0;
      _os_log_debug_impl(&dword_19D52D000, v4, OS_LOG_TYPE_DEBUG, "Ignoring unsupported web extension navigation", v22, 2u);
    }

    WebKit::WebFramePolicyListenerProxy::ignore(*(a1 + 16), 0);
    return;
  }

  v5 = *(a1 + 8);
  v6 = *(v5 + 384);
  if (v6)
  {
    goto LABEL_11;
  }

  v15 = *(v5 + 392);
  if (v15)
  {
    v16 = *(v15 + 8);
    if (v16)
    {
      v6 = (v16 - 16);
LABEL_11:
      CFRetain(v6[1]);
      WebKit::WebExtensionController::updateWebsitePoliciesForNavigation(v6, *(a1 + 32), *(a1 + 24));
      CFRelease(v6[1]);
    }
  }

  v7 = *(a1 + 24);
  if (*(v7 + 24))
  {
    API::URLRequest::create((v7 + 40), v22);
    v8 = *(v22[0] + 1);
    if (v8)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        __break(0xC471u);
        JUMPOUT(0x19DC56614);
      }

      v9 = v8;
      v10 = v22[0];
      v22[0] = 0;
      if (!v10)
      {
LABEL_16:
        if ([v8 URL] && (objc_msgSend(MEMORY[0x1E695AC40], "canHandleRequest:", v8) & 1) != 0)
        {
          goto LABEL_32;
        }

        v11 = *(a1 + 8);
        MEMORY[0x19EB02040](v22, [objc_msgSend(v8 "URL")]);
        if (v22[0] && WTF::HashMap<WTF::String,WTF::Ref<WebKit::WebURLSchemeHandler,WTF::RawPtrTraits<WebKit::WebURLSchemeHandler>,WTF::DefaultRefDerefTraits<WebKit::WebURLSchemeHandler>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WebKit::WebURLSchemeHandler,WTF::RawPtrTraits<WebKit::WebURLSchemeHandler>,WTF::DefaultRefDerefTraits<WebKit::WebURLSchemeHandler>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WTF::String,WTF::Ref<WebKit::WebURLSchemeHandler,WTF::RawPtrTraits<WebKit::WebURLSchemeHandler>,WTF::DefaultRefDerefTraits<WebKit::WebURLSchemeHandler>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WebKit::WebURLSchemeHandler,WTF::RawPtrTraits<WebKit::WebURLSchemeHandler>,WTF::DefaultRefDerefTraits<WebKit::WebURLSchemeHandler>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::String>>,WTF::String>((v11 + 1192), v22, v12))
        {
          v14 = 1;
        }

        else
        {
          v14 = [objc_msgSend(objc_msgSend(v8 "URL")];
        }

        v19 = v22[0];
        v22[0] = 0;
        if (v19 && atomic_fetch_add_explicit(v19, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v19, v13);
        }

        if (v14)
        {
LABEL_32:
          v20 = *(a1 + 16);
          if (*(*(a1 + 24) + 376))
          {
            WebKit::WebFramePolicyListenerProxy::download(v20);
            if (!v8)
            {
              return;
            }
          }

          else
          {
            WebKit::WebFramePolicyListenerProxy::use(v20, *(a1 + 32), 0);
            if (!v8)
            {
              return;
            }
          }
        }

        else
        {
          WebKit::WebFramePolicyListenerProxy::ignore(*(a1 + 16), 0);
          if (!v8)
          {
            return;
          }
        }

        return;
      }

      v21 = *(v10 + 1);
    }

    else
    {
      v21 = 0;
      v22[0] = 0;
    }

    CFRelease(v21);
    goto LABEL_16;
  }

  v17 = *(a1 + 16);
  v18 = *(a1 + 32);

  WebKit::WebFramePolicyListenerProxy::use(v17, v18, 0);
}

uint64_t WTF::tryMakeStringFromAdapters<WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>>@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, unint64_t *a4@<X3>, uint64_t *a5@<X4>, uint64_t *a6@<X5>, void *a7@<X8>)
{
  v11 = *result;
  if (*result)
  {
    v12 = *(v11 + 4);
  }

  else
  {
    v12 = 0;
  }

  v13 = *a2;
  if (*a2)
  {
    v14 = *(v13 + 4);
  }

  else
  {
    v14 = 0;
  }

  v15 = *a3;
  if (*a3)
  {
    v16 = *(v15 + 4);
  }

  else
  {
    v16 = 0;
  }

  v17 = *a4;
  if (*a4)
  {
    v18 = *(v17 + 4);
  }

  else
  {
    v18 = 0;
  }

  v19 = *a5;
  if (*a5)
  {
    v20 = *(v19 + 4);
  }

  else
  {
    v20 = 0;
  }

  v21 = *a6;
  if (*a6)
  {
    v22 = *(v21 + 4);
  }

  else
  {
    v22 = 0;
  }

  if (((v22 | v20) & 0x80000000) == 0)
  {
    v23 = __OFADD__(v20, v22);
    v24 = v20 + v22;
    v25 = v23;
    if ((v18 & 0x80000000) == 0 && !v25)
    {
      v23 = __OFADD__(v18, v24);
      v26 = v18 + v24;
      v27 = v23;
      if ((v16 & 0x80000000) == 0 && !v27)
      {
        v23 = __OFADD__(v16, v26);
        v28 = v16 + v26;
        v29 = v23;
        if ((v14 & 0x80000000) == 0 && !v29)
        {
          v23 = __OFADD__(v14, v28);
          v30 = v14 + v28;
          v31 = v23;
          if ((v12 & 0x80000000) == 0 && !v31)
          {
            result = (v12 + v30);
            if (!__OFADD__(v12, v30))
            {
              if ((!v11 || (*(v11 + 16) & 4) != 0) && (!v13 || (*(v13 + 16) & 4) != 0) && (!v15 || (*(v15 + 16) & 4) != 0) && (!v17 || (*(v17 + 16) & 4) != 0))
              {
                if (v19)
                {
                  v33 = *(v19 + 16);
                  v32 = (v33 >> 2) & 1;
                  if (!v21 || (v33 & 4) == 0)
                  {
                    return WTF::tryMakeStringImplFromAdaptersInternal<WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>>(result, v32, v11, v13, v15, v17, v19, v21, a7);
                  }
                }

                else if (!v21)
                {
                  v32 = 1;
                  return WTF::tryMakeStringImplFromAdaptersInternal<WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>>(result, v32, v11, v13, v15, v17, v19, v21, a7);
                }

                v32 = (*(v21 + 16) >> 2) & 1;
              }

              else
              {
                v32 = 0;
              }

              return WTF::tryMakeStringImplFromAdaptersInternal<WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>>(result, v32, v11, v13, v15, v17, v19, v21, a7);
            }
          }
        }
      }
    }
  }

  *a7 = 0;
  return result;
}

uint64_t WTF::tryMakeStringImplFromAdaptersInternal<WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>>@<X0>(uint64_t result@<X0>, int a2@<W1>, _DWORD *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>)
{
  v15 = result;
  v17 = result;
  if (!a2)
  {
    if (result)
    {
      if (result <= 0x7FFFFFEF)
      {
        result = WTF::tryFastCompactMalloc((2 * result + 20));
        v18 = v27;
        if (!v27)
        {
          goto LABEL_19;
        }

        v24 = a8;
        v25 = a9;
        v23 = a7;
        a7 = (v27 + 5);
        *v27 = 2;
        v18[1] = v15;
        *(v18 + 1) = v18 + 5;
        v18[4] = 0;
        v26 = a3;
        WTF::StringTypeAdapter<WTF::StringImpl *,void>::writeTo<char16_t>(&v26, v18 + 20);
        if (!v26)
        {
          goto LABEL_21;
        }

        v20 = v26[1];
        if (v20 <= v15)
        {
          goto LABEL_16;
        }

        goto LABEL_20;
      }

LABEL_11:
      v18 = 0;
      goto LABEL_19;
    }

LABEL_12:
    v18 = MEMORY[0x1E696EB88];
    atomic_fetch_add_explicit(MEMORY[0x1E696EB88], 2u, memory_order_relaxed);
    goto LABEL_19;
  }

  if (!result)
  {
    goto LABEL_12;
  }

  if ((result & 0x80000000) != 0)
  {
    goto LABEL_11;
  }

  result = WTF::tryFastCompactMalloc((result + 20));
  v18 = v27;
  if (v27)
  {
    v25 = a9;
    *v27 = 2;
    v18[1] = v15;
    *(v18 + 1) = v18 + 5;
    v18[4] = 4;
    v27 = a3;
    WTF::StringTypeAdapter<WTF::StringImpl *,void>::writeTo<unsigned char>(&v27, v18 + 20);
    v19 = v27;
    if (!v27 || (v19 = v27[1], v19 <= v15))
    {
      result = WTF::stringTypeAdapterAccumulator<unsigned char,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>>(v18 + v19 + 20, v17 - v19, a4, a5, a6, a7, a8);
LABEL_8:
      a9 = v25;
      goto LABEL_19;
    }

    do
    {
LABEL_20:
      __break(1u);
LABEL_21:
      v20 = 0;
LABEL_16:
      v21 = v17 - v20;
      v27 = a4;
      WTF::StringTypeAdapter<WTF::StringImpl *,void>::writeTo<char16_t>(&v27, (a7 + 2 * v20));
      v22 = v27;
      if (!v27)
      {
        break;
      }

      v22 = v27[1];
    }

    while (v21 < v22);
    result = WTF::stringTypeAdapterAccumulator<char16_t,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>>((a7 + 2 * (v22 + v20)), v21 - v22, a5, a6, v23, v24);
    goto LABEL_8;
  }

LABEL_19:
  *a9 = v18;
  return result;
}

void sub_19DC569AC(_Unwind_Exception *exception_object, WTF::StringImpl *a2)
{
  if (atomic_fetch_add_explicit(v2, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v2, a2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *WTF::stringTypeAdapterAccumulator<char16_t,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>>(char *__dst, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  v15 = a3;
  WTF::StringTypeAdapter<WTF::StringImpl *,void>::writeTo<char16_t>(&v15, __dst);
  if (!v15)
  {
    goto LABEL_9;
  }

  v11 = *(v15 + 4);
  if (a2 < v11)
  {
    goto LABEL_8;
  }

  while (1)
  {
    a2 -= v11;
    v16 = a4;
    WTF::StringTypeAdapter<WTF::StringImpl *,void>::writeTo<char16_t>(&v16, &__dst[2 * v11]);
    v12 = v16;
    if (!v16 || (v12 = *(v16 + 4), a2 >= v12))
    {
      a4 = a2 - v12;
      a2 = v12 + v11;
      v17 = a5;
      WTF::StringTypeAdapter<WTF::StringImpl *,void>::writeTo<char16_t>(&v17, &__dst[2 * v12 + 2 * v11]);
      v13 = v17;
      if (!v17)
      {
        break;
      }

      v13 = *(v17 + 4);
      if (a4 >= v13)
      {
        break;
      }
    }

LABEL_8:
    __break(1u);
LABEL_9:
    v11 = 0;
  }

  v18 = a6;
  return WTF::StringTypeAdapter<WTF::StringImpl *,void>::writeTo<char16_t>(&v18, &__dst[2 * a2 + 2 * v13]);
}

BOOL WTF::Logger::willLog<WTF::Logger::LogSiteIdentifier,unsigned long long>(WTF::Logger *a1, _BYTE *a2, uint64_t a3, WTF::Logger::LogSiteIdentifier *a4, WTF::String **a5)
{
  v30 = *MEMORY[0x1E69E9840];
  v9 = MEMORY[0x1E696EBD0];
  do
  {
    v10 = *v9;
    if (v10)
    {
      return 0;
    }

    v11 = *v9;
    atomic_compare_exchange_strong_explicit(v9, &v11, v10 | 1, memory_order_acquire, memory_order_acquire);
  }

  while (v11 != v10);
  v12 = WTF::Logger::messageHandlerObservers(a1);
  v13 = *(v12 + 12);
  if (v13)
  {
    v14 = *v12;
    v15 = *v12 + 8 * v13;
    do
    {
      v16 = *v14;
      v27[0] = 0;
      WTF::Logger::LogSiteIdentifier::toString(&v28, a4);
      v17 = *a5;
      v29 = 0;
      WTF::String::number(v17);
      WTF::Vector<WTF::JSONLogValue,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(v26, v27, 2uLL);
      (*(*v16 + 16))(v16, a2, a3, v26);
      WTF::Vector<std::tuple<Inspector::BackendDispatcher::CommonErrorCode,WTF::String>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v26, v18);
      for (i = 6; i != -2; i -= 4)
      {
        v21 = *&v27[i];
        *&v27[i] = 0;
        if (v21 && atomic_fetch_add_explicit(v21, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v21, v19);
        }
      }

      ++v14;
    }

    while (v14 != v15);
  }

  v22 = 1;
  atomic_compare_exchange_strong_explicit(v9, &v22, 0, memory_order_release, memory_order_relaxed);
  if (v22 != 1)
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

void sub_19DC56C90(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, char a12, WTF::StringImpl *a13)
{
  v15 = 1;
  atomic_compare_exchange_strong_explicit(v13, &v15, 0, memory_order_release, memory_order_relaxed);
  if (v15 != 1)
  {
    WTF::Lock::unlockSlow(MEMORY[0x1E696EBD0]);
  }

  _Unwind_Resume(exception_object);
}

WTF::StringImpl *WTF::Logger::log<WTF::Logger::LogSiteIdentifier,unsigned long long>(uint64_t a1, uint64_t a2, WTF::Logger::LogSiteIdentifier *this, WTF::String **a4)
{
  v35 = *MEMORY[0x1E69E9840];
  WTF::Logger::LogSiteIdentifier::toString(&v31, this);
  WTF::String::number(*a4);
  *buf = v31;
  v29[0] = v30;
  result = WTF::tryMakeStringFromAdapters<WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>>(buf, v29, &v32);
  if (v32)
  {
    v10 = v30;
    v30 = 0;
    if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v10, v9);
    }

    v11 = v31;
    v31 = 0;
    if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v11, v9);
    }

    v12 = *(a1 + 32);
    v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
    if (v13)
    {
      WTF::String::utf8();
      v15 = v29[0] ? v29[0] + 16 : 0;
      *buf = 136446210;
      *&buf[4] = v15;
      _os_log_impl(&dword_19D52D000, v12, OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
      v13 = v29[0];
      v29[0] = 0;
      if (v13)
      {
        if (*v13 == 1)
        {
          v13 = WTF::fastFree(v13, v14);
        }

        else
        {
          --*v13;
        }
      }
    }

    if (*a1 && *(a1 + 16) >= a2)
    {
      v16 = MEMORY[0x1E696EBC0];
      while (1)
      {
        v17 = *v16;
        if (v17)
        {
          break;
        }

        v18 = *v16;
        atomic_compare_exchange_strong_explicit(v16, &v18, v17 | 1, memory_order_acquire, memory_order_acquire);
        if (v18 == v17)
        {
          v19 = WTF::Logger::observers(v13);
          v20 = *(v19 + 12);
          if (v20)
          {
            v21 = *v19;
            v22 = *v19 + 8 * v20;
            do
            {
              v23 = *v21;
              *buf = 0;
              WTF::Logger::LogSiteIdentifier::toString(&buf[8], this);
              v24 = *a4;
              v34 = 0;
              WTF::String::number(v24);
              WTF::Vector<WTF::JSONLogValue,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(v29, buf, 2uLL);
              (*(*v23 + 16))(v23, a1, a2, v29);
              WTF::Vector<std::tuple<Inspector::BackendDispatcher::CommonErrorCode,WTF::String>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v29, v25);
              for (i = 24; i != -8; i -= 16)
              {
                v27 = *&buf[i];
                *&buf[i] = 0;
                if (v27 && atomic_fetch_add_explicit(v27, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  WTF::StringImpl::destroy(v27, v14);
                }
              }

              ++v21;
            }

            while (v21 != v22);
          }

          v28 = 1;
          atomic_compare_exchange_strong_explicit(v16, &v28, 0, memory_order_release, memory_order_relaxed);
          if (v28 != 1)
          {
            WTF::Lock::unlockSlow(MEMORY[0x1E696EBC0]);
          }

          break;
        }
      }
    }

    result = v32;
    v32 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        return WTF::StringImpl::destroy(result, v14);
      }
    }
  }

  else
  {
    __break(0xC471u);
  }

  return result;
}

void sub_19DC57000(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, WTF::StringImpl *a12, uint64_t a13, WTF::StringImpl *a14, char a15, WTF::StringImpl *a16)
{
  v18 = 1;
  atomic_compare_exchange_strong_explicit(v16, &v18, 0, memory_order_release, memory_order_relaxed);
  if (v18 != 1)
  {
    WTF::Lock::unlockSlow(MEMORY[0x1E696EBC0]);
  }

  if (a14)
  {
    if (atomic_fetch_add_explicit(a14, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a14, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t WTF::LogArgument<std::optional<WebCore::SpatialVideoMetadata>>::toString(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 20) == 1)
  {
    return MEMORY[0x1EEE5A208](a2);
  }

  else
  {
    return WTF::StringImpl::createWithoutCopyingNonEmpty();
  }
}

uint64_t WTF::LogArgument<std::optional<WebCore::VideoProjectionMetadata>>::toString(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16) == 1)
  {
    return MEMORY[0x1EEE5A318](a2);
  }

  else
  {
    return WTF::StringImpl::createWithoutCopyingNonEmpty();
  }
}

uint64_t WTF::HashTable<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::tuple<WTF::Ref<WebKit::PlaybackSessionModelContext,WTF::RawPtrTraits<WebKit::PlaybackSessionModelContext>,WTF::DefaultRefDerefTraits<WebKit::PlaybackSessionModelContext>>,WTF::Ref<WebCore::PlaybackSessionInterfaceIOS,WTF::RawPtrTraits<WebCore::PlaybackSessionInterfaceIOS>,WTF::DefaultRefDerefTraits<WebCore::PlaybackSessionInterfaceIOS>>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::tuple<WTF::Ref<WebKit::PlaybackSessionModelContext,WTF::RawPtrTraits<WebKit::PlaybackSessionModelContext>,WTF::DefaultRefDerefTraits<WebKit::PlaybackSessionModelContext>>,WTF::Ref<WebCore::PlaybackSessionInterfaceIOS,WTF::RawPtrTraits<WebCore::PlaybackSessionInterfaceIOS>,WTF::DefaultRefDerefTraits<WebCore::PlaybackSessionInterfaceIOS>>>>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashMap<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::tuple<WTF::Ref<WebKit::PlaybackSessionModelContext,WTF::RawPtrTraits<WebKit::PlaybackSessionModelContext>,WTF::DefaultRefDerefTraits<WebKit::PlaybackSessionModelContext>>,WTF::Ref<WebCore::PlaybackSessionInterfaceIOS,WTF::RawPtrTraits<WebCore::PlaybackSessionInterfaceIOS>,WTF::DefaultRefDerefTraits<WebCore::PlaybackSessionInterfaceIOS>>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<std::tuple<WTF::Ref<WebKit::PlaybackSessionModelContext,WTF::RawPtrTraits<WebKit::PlaybackSessionModelContext>,WTF::DefaultRefDerefTraits<WebKit::PlaybackSessionModelContext>>,WTF::Ref<WebCore::PlaybackSessionInterfaceIOS,WTF::RawPtrTraits<WebCore::PlaybackSessionInterfaceIOS>,WTF::DefaultRefDerefTraits<WebCore::PlaybackSessionInterfaceIOS>>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::FastMalloc>::expand(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  if (*a1 && (v4 = *(v3 - 4)) != 0)
  {
    v5 = v4 << (6 * *(v3 - 12) >= (2 * v4));
  }

  else
  {
    v5 = 8;
  }

  return WTF::HashTable<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::tuple<WTF::Ref<WebKit::PlaybackSessionModelContext,WTF::RawPtrTraits<WebKit::PlaybackSessionModelContext>,WTF::DefaultRefDerefTraits<WebKit::PlaybackSessionModelContext>>,WTF::Ref<WebCore::PlaybackSessionInterfaceIOS,WTF::RawPtrTraits<WebCore::PlaybackSessionInterfaceIOS>,WTF::DefaultRefDerefTraits<WebCore::PlaybackSessionInterfaceIOS>>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::tuple<WTF::Ref<WebKit::PlaybackSessionModelContext,WTF::RawPtrTraits<WebKit::PlaybackSessionModelContext>,WTF::DefaultRefDerefTraits<WebKit::PlaybackSessionModelContext>>,WTF::Ref<WebCore::PlaybackSessionInterfaceIOS,WTF::RawPtrTraits<WebCore::PlaybackSessionInterfaceIOS>,WTF::DefaultRefDerefTraits<WebCore::PlaybackSessionInterfaceIOS>>>>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashMap<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::tuple<WTF::Ref<WebKit::PlaybackSessionModelContext,WTF::RawPtrTraits<WebKit::PlaybackSessionModelContext>,WTF::DefaultRefDerefTraits<WebKit::PlaybackSessionModelContext>>,WTF::Ref<WebCore::PlaybackSessionInterfaceIOS,WTF::RawPtrTraits<WebCore::PlaybackSessionInterfaceIOS>,WTF::DefaultRefDerefTraits<WebCore::PlaybackSessionInterfaceIOS>>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<std::tuple<WTF::Ref<WebKit::PlaybackSessionModelContext,WTF::RawPtrTraits<WebKit::PlaybackSessionModelContext>,WTF::DefaultRefDerefTraits<WebKit::PlaybackSessionModelContext>>,WTF::Ref<WebCore::PlaybackSessionInterfaceIOS,WTF::RawPtrTraits<WebCore::PlaybackSessionInterfaceIOS>,WTF::DefaultRefDerefTraits<WebCore::PlaybackSessionInterfaceIOS>>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::FastMalloc>::rehash(a1, v5, a2);
}

uint64_t WTF::HashTable<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::tuple<WTF::Ref<WebKit::PlaybackSessionModelContext,WTF::RawPtrTraits<WebKit::PlaybackSessionModelContext>,WTF::DefaultRefDerefTraits<WebKit::PlaybackSessionModelContext>>,WTF::Ref<WebCore::PlaybackSessionInterfaceIOS,WTF::RawPtrTraits<WebCore::PlaybackSessionInterfaceIOS>,WTF::DefaultRefDerefTraits<WebCore::PlaybackSessionInterfaceIOS>>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::tuple<WTF::Ref<WebKit::PlaybackSessionModelContext,WTF::RawPtrTraits<WebKit::PlaybackSessionModelContext>,WTF::DefaultRefDerefTraits<WebKit::PlaybackSessionModelContext>>,WTF::Ref<WebCore::PlaybackSessionInterfaceIOS,WTF::RawPtrTraits<WebCore::PlaybackSessionInterfaceIOS>,WTF::DefaultRefDerefTraits<WebCore::PlaybackSessionInterfaceIOS>>>>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashMap<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::tuple<WTF::Ref<WebKit::PlaybackSessionModelContext,WTF::RawPtrTraits<WebKit::PlaybackSessionModelContext>,WTF::DefaultRefDerefTraits<WebKit::PlaybackSessionModelContext>>,WTF::Ref<WebCore::PlaybackSessionInterfaceIOS,WTF::RawPtrTraits<WebCore::PlaybackSessionInterfaceIOS>,WTF::DefaultRefDerefTraits<WebCore::PlaybackSessionInterfaceIOS>>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<std::tuple<WTF::Ref<WebKit::PlaybackSessionModelContext,WTF::RawPtrTraits<WebKit::PlaybackSessionModelContext>,WTF::DefaultRefDerefTraits<WebKit::PlaybackSessionModelContext>>,WTF::Ref<WebCore::PlaybackSessionInterfaceIOS,WTF::RawPtrTraits<WebCore::PlaybackSessionInterfaceIOS>,WTF::DefaultRefDerefTraits<WebCore::PlaybackSessionInterfaceIOS>>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::FastMalloc>::rehash(uint64_t *a1, unsigned int a2, uint64_t a3)
{
  v6 = *a1;
  if (*a1)
  {
    v7 = *(v6 - 4);
    v8 = *(v6 - 12);
  }

  else
  {
    v7 = 0;
    v8 = 0;
  }

  v9 = WTF::fastZeroedMalloc(((32 * a2) | 0x10));
  *a1 = (v9 + 4);
  v9[2] = a2 - 1;
  v9[3] = a2;
  *v9 = 0;
  v9[1] = v8;
  if (v7)
  {
    v11 = 0;
    v12 = 0;
    do
    {
      v13 = v6 + 32 * v11;
      if (*(v13 + 8) != -1)
      {
        if (*v13 == 0)
        {
          v16 = *(v13 + 24);
          *(v13 + 24) = 0;
          if (v16)
          {
            if (v16[4] == 1)
            {
              (*(*v16 + 8))(v16);
            }

            else
            {
              --v16[4];
            }
          }

          v17 = *(v13 + 16);
          *(v13 + 16) = 0;
          if (v17)
          {
            if (v17[4] == 1)
            {
              (*(*v17 + 8))(v17);
            }

            else
            {
              --v17[4];
            }
          }
        }

        else
        {
          v14 = *a1;
          if (*a1)
          {
            v15 = *(v14 - 8);
          }

          else
          {
            v15 = 0;
          }

          v18 = WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>::hash((v6 + 32 * v11));
          v19 = 0;
          do
          {
            v20 = v18 & v15;
            v21 = v14 + 32 * v20;
            v18 = ++v19 + v20;
          }

          while (*v21 != 0);
          v22 = *(v21 + 24);
          *(v21 + 24) = 0;
          if (v22)
          {
            if (v22[4] == 1)
            {
              (*(*v22 + 8))(v22);
            }

            else
            {
              --v22[4];
            }
          }

          v23 = *(v21 + 16);
          *(v21 + 16) = 0;
          if (v23)
          {
            if (v23[4] == 1)
            {
              (*(*v23 + 8))(v23);
            }

            else
            {
              --v23[4];
            }
          }

          *v21 = *v13;
          v24 = *(v13 + 16);
          *(v13 + 16) = 0;
          *(v21 + 16) = v24;
          v25 = *(v13 + 24);
          *(v13 + 24) = 0;
          *(v21 + 24) = v25;
          v26 = *(v13 + 24);
          *(v13 + 24) = 0;
          if (v26)
          {
            if (v26[4] == 1)
            {
              (*(*v26 + 8))(v26);
            }

            else
            {
              --v26[4];
            }
          }

          v27 = *(v13 + 16);
          *(v13 + 16) = 0;
          if (v27)
          {
            if (v27[4] == 1)
            {
              (*(*v27 + 8))(v27);
            }

            else
            {
              --v27[4];
            }
          }

          if (v13 == a3)
          {
            v12 = v21;
          }
        }
      }

      ++v11;
    }

    while (v11 != v7);
  }

  else
  {
    v12 = 0;
    result = 0;
    if (!v6)
    {
      return result;
    }
  }

  WTF::fastFree((v6 - 16), v10);
  return v12;
}

uint64_t WTF::HashMap<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,unsigned int,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<int>@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, _DWORD *a3@<X2>, uint64_t a4@<X8>)
{
  if (*a2 == 0 || a2[1] == -1)
  {
    __break(0xC471u);
    JUMPOUT(0x19DC57648);
  }

  v8 = *a1;
  if (*a1 || (WTF::HashTable<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,unsigned int>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,unsigned int>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashMap<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,unsigned int,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::FastMalloc>::expand(a1, 0), (v8 = *a1) != 0))
  {
    v9 = *(v8 - 8);
  }

  else
  {
    v9 = 0;
  }

  result = WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>::hash(a2);
  v11 = result & v9;
  v12 = (v8 + 24 * (result & v9));
  v14 = *v12;
  v13 = v12[1];
  if (*v12 != 0)
  {
    v15 = 0;
    v16 = 1;
    do
    {
      if (v14 == *a2 && v13 == a2[1])
      {
        v21 = *a1;
        if (*a1)
        {
          v22 = *(v21 - 4);
        }

        else
        {
          v22 = 0;
        }

        v24 = 0;
        v23 = v21 + 24 * v22;
        goto LABEL_29;
      }

      if (v13 == -1)
      {
        v15 = v12;
      }

      v11 = (v11 + v16) & v9;
      v12 = (v8 + 24 * v11);
      v14 = *v12;
      v13 = v12[1];
      ++v16;
    }

    while (*v12 != 0);
    if (v15)
    {
      *v15 = 0;
      v15[1] = 0;
      v15[2] = 0;
      --*(*a1 - 16);
      v12 = v15;
    }
  }

  *v12 = *a2;
  *(v12 + 4) = *a3;
  v17 = *a1;
  if (*a1)
  {
    v18 = *(v17 - 12) + 1;
  }

  else
  {
    v18 = 1;
  }

  *(v17 - 12) = v18;
  v19 = (*(v17 - 16) + v18);
  v20 = *(v17 - 4);
  if (v20 > 0x400)
  {
    if (v20 <= 2 * v19)
    {
LABEL_20:
      result = WTF::HashTable<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,unsigned int>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,unsigned int>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashMap<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,unsigned int,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::FastMalloc>::expand(a1, v12);
      v12 = result;
      v17 = *a1;
      if (*a1)
      {
        LODWORD(v20) = *(v17 - 4);
      }

      else
      {
        LODWORD(v20) = 0;
      }
    }
  }

  else if (3 * v20 <= 4 * v19)
  {
    goto LABEL_20;
  }

  v23 = v17 + 24 * v20;
  v24 = 1;
LABEL_29:
  *a4 = v12;
  *(a4 + 8) = v23;
  *(a4 + 16) = v24;
  return result;
}

uint64_t WTF::HashTable<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,unsigned int>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,unsigned int>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashMap<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,unsigned int,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::FastMalloc>::expand(uint64_t *a1, __int128 *a2)
{
  v3 = *a1;
  if (*a1 && (v4 = *(v3 - 4)) != 0)
  {
    v5 = v4 << (6 * *(v3 - 12) >= (2 * v4));
  }

  else
  {
    v5 = 8;
  }

  return WTF::HashTable<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,unsigned int>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,unsigned int>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashMap<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,unsigned int,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::FastMalloc>::rehash(a1, v5, a2);
}

uint64_t WTF::HashTable<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,unsigned int>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,unsigned int>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashMap<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,unsigned int,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::FastMalloc>::rehash(uint64_t *a1, unsigned int a2, __int128 *a3)
{
  v6 = *a1;
  if (*a1)
  {
    v7 = *(v6 - 4);
    v8 = *(v6 - 12);
  }

  else
  {
    v7 = 0;
    v8 = 0;
  }

  v9 = WTF::fastZeroedMalloc((24 * a2 + 16));
  *a1 = (v9 + 4);
  v9[2] = a2 - 1;
  v9[3] = a2;
  *v9 = 0;
  v9[1] = v8;
  if (v7)
  {
    v11 = 0;
    v12 = 0;
    do
    {
      v13 = (v6 + 24 * v11);
      if (*(v13 + 1) != -1 && *v13 != 0)
      {
        v14 = *a1;
        if (*a1)
        {
          v15 = *(v14 - 8);
        }

        else
        {
          v15 = 0;
        }

        v16 = WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>::hash((v6 + 24 * v11));
        v17 = 0;
        do
        {
          v18 = v14 + 24 * (v16 & v15);
          v16 = ++v17 + (v16 & v15);
        }

        while (*v18 != 0);
        v19 = *v13;
        *(v18 + 16) = *(v13 + 2);
        *v18 = v19;
        if (v13 == a3)
        {
          v12 = v18;
        }
      }

      ++v11;
    }

    while (v11 != v7);
  }

  else
  {
    v12 = 0;
    result = 0;
    if (!v6)
    {
      return result;
    }
  }

  WTF::fastFree((v6 - 16), v10);
  return v12;
}

uint64_t WTF::tryMakeStringFromAdapters<WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>>@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, unint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t *a5@<X4>, void *a6@<X8>)
{
  v9 = *result;
  if (*result)
  {
    v10 = *(v9 + 4);
  }

  else
  {
    v10 = 0;
  }

  v11 = *a2;
  if (*a2)
  {
    v12 = *(v11 + 4);
  }

  else
  {
    v12 = 0;
  }

  v13 = *a3;
  if (*a3)
  {
    v14 = *(v13 + 4);
  }

  else
  {
    v14 = 0;
  }

  v15 = *a4;
  if (*a4)
  {
    v16 = *(v15 + 4);
  }

  else
  {
    v16 = 0;
  }

  v17 = *a5;
  if (*a5)
  {
    v18 = *(v17 + 4);
  }

  else
  {
    v18 = 0;
  }

  if (((v18 | v16) & 0x80000000) == 0)
  {
    v19 = __OFADD__(v16, v18);
    v20 = v16 + v18;
    v21 = v19;
    if ((v14 & 0x80000000) == 0 && !v21)
    {
      v19 = __OFADD__(v14, v20);
      v22 = v14 + v20;
      v23 = v19;
      if ((v12 & 0x80000000) == 0 && !v23)
      {
        v19 = __OFADD__(v12, v22);
        v24 = v12 + v22;
        v25 = v19;
        if ((v10 & 0x80000000) == 0 && !v25)
        {
          result = (v10 + v24);
          if (!__OFADD__(v10, v24))
          {
            if ((!v9 || (*(v9 + 16) & 4) != 0) && (!v11 || (*(v11 + 16) & 4) != 0) && (!v13 || (*(v13 + 16) & 4) != 0))
            {
              if (v15)
              {
                v27 = *(v15 + 16);
                v26 = (v27 >> 2) & 1;
                if (!v17 || (v27 & 4) == 0)
                {
                  return WTF::tryMakeStringImplFromAdaptersInternal<WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>>(result, v26, v9, v11, v13, v15, v17, a6);
                }
              }

              else if (!v17)
              {
                v26 = 1;
                return WTF::tryMakeStringImplFromAdaptersInternal<WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>>(result, v26, v9, v11, v13, v15, v17, a6);
              }

              v26 = (*(v17 + 16) >> 2) & 1;
            }

            else
            {
              v26 = 0;
            }

            return WTF::tryMakeStringImplFromAdaptersInternal<WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>>(result, v26, v9, v11, v13, v15, v17, a6);
          }
        }
      }
    }
  }

  *a6 = 0;
  return result;
}

uint64_t WTF::tryMakeStringImplFromAdaptersInternal<WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>>@<X0>(uint64_t result@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X8>)
{
  v13 = result;
  v15 = result;
  if (a2)
  {
    if (result)
    {
      if ((result & 0x80000000) == 0)
      {
        result = WTF::tryFastCompactMalloc((result + 20));
        v16 = v19;
        if (v19)
        {
          v17 = (v19 + 5);
          *v19 = 2;
          v16[1] = v13;
          *(v16 + 1) = v16 + 5;
          v16[4] = 4;
          result = WTF::stringTypeAdapterAccumulator<unsigned char,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>>(v17, v15, a3, a4, a5, a6, a7);
        }

        goto LABEL_14;
      }

      goto LABEL_8;
    }

LABEL_9:
    v16 = MEMORY[0x1E696EB88];
    atomic_fetch_add_explicit(MEMORY[0x1E696EB88], 2u, memory_order_relaxed);
    goto LABEL_14;
  }

  if (!result)
  {
    goto LABEL_9;
  }

  if (result > 0x7FFFFFEF)
  {
LABEL_8:
    v16 = 0;
LABEL_14:
    *a8 = v16;
    return result;
  }

  result = WTF::tryFastCompactMalloc((2 * result + 20));
  v16 = v19;
  if (!v19)
  {
    goto LABEL_14;
  }

  *v19 = 2;
  v16[1] = v13;
  *(v16 + 1) = v16 + 5;
  v16[4] = 0;
  v19 = a3;
  result = WTF::StringTypeAdapter<WTF::StringImpl *,void>::writeTo<char16_t>(&v19, v16 + 20);
  v18 = v19;
  if (!v19 || (v18 = v19[1], v18 <= v13))
  {
    result = WTF::stringTypeAdapterAccumulator<char16_t,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>>(v16 + 2 * v18 + 20, v15 - v18, a4, a5, a6, a7);
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

void sub_19DC57A48(_Unwind_Exception *exception_object, WTF::StringImpl *a2)
{
  if (atomic_fetch_add_explicit(v2, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v2, a2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *WTF::HashTable<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::tuple<WTF::Ref<WebKit::PlaybackSessionModelContext,WTF::RawPtrTraits<WebKit::PlaybackSessionModelContext>,WTF::DefaultRefDerefTraits<WebKit::PlaybackSessionModelContext>>,WTF::Ref<WebCore::PlaybackSessionInterfaceIOS,WTF::RawPtrTraits<WebCore::PlaybackSessionInterfaceIOS>,WTF::DefaultRefDerefTraits<WebCore::PlaybackSessionInterfaceIOS>>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::tuple<WTF::Ref<WebKit::PlaybackSessionModelContext,WTF::RawPtrTraits<WebKit::PlaybackSessionModelContext>,WTF::DefaultRefDerefTraits<WebKit::PlaybackSessionModelContext>>,WTF::Ref<WebCore::PlaybackSessionInterfaceIOS,WTF::RawPtrTraits<WebCore::PlaybackSessionInterfaceIOS>,WTF::DefaultRefDerefTraits<WebCore::PlaybackSessionInterfaceIOS>>>>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashMap<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::tuple<WTF::Ref<WebKit::PlaybackSessionModelContext,WTF::RawPtrTraits<WebKit::PlaybackSessionModelContext>,WTF::DefaultRefDerefTraits<WebKit::PlaybackSessionModelContext>>,WTF::Ref<WebCore::PlaybackSessionInterfaceIOS,WTF::RawPtrTraits<WebCore::PlaybackSessionInterfaceIOS>,WTF::DefaultRefDerefTraits<WebCore::PlaybackSessionInterfaceIOS>>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<std::tuple<WTF::Ref<WebKit::PlaybackSessionModelContext,WTF::RawPtrTraits<WebKit::PlaybackSessionModelContext>,WTF::DefaultRefDerefTraits<WebKit::PlaybackSessionModelContext>>,WTF::Ref<WebCore::PlaybackSessionInterfaceIOS,WTF::RawPtrTraits<WebCore::PlaybackSessionInterfaceIOS>,WTF::DefaultRefDerefTraits<WebCore::PlaybackSessionInterfaceIOS>>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::tuple<WTF::Ref<WebKit::PlaybackSessionModelContext,WTF::RawPtrTraits<WebKit::PlaybackSessionModelContext>,WTF::DefaultRefDerefTraits<WebKit::PlaybackSessionModelContext>>,WTF::Ref<WebCore::PlaybackSessionInterfaceIOS,WTF::RawPtrTraits<WebCore::PlaybackSessionInterfaceIOS>,WTF::DefaultRefDerefTraits<WebCore::PlaybackSessionInterfaceIOS>>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<std::tuple<WTF::Ref<WebKit::PlaybackSessionModelContext,WTF::RawPtrTraits<WebKit::PlaybackSessionModelContext>,WTF::DefaultRefDerefTraits<WebKit::PlaybackSessionModelContext>>,WTF::Ref<WebCore::PlaybackSessionInterfaceIOS,WTF::RawPtrTraits<WebCore::PlaybackSessionInterfaceIOS>,WTF::DefaultRefDerefTraits<WebCore::PlaybackSessionInterfaceIOS>>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>,(WTF::ShouldValidateKey)1,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(uint64_t *a1, void *a2)
{
  v2 = *a1;
  if (!*a1)
  {
    return 0;
  }

  if (*a2 == 0 || a2[1] == -1)
  {
    __break(0xC471u);
    JUMPOUT(0x19DC57B64);
  }

  v5 = *(v2 - 8);
  v6 = WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>::hash(a2);
  v7 = a2[1];
  v8 = v6 & v5;
  result = (v2 + 32 * v8);
  v10 = *result;
  v11 = result[1];
  if (*result != *a2 || v11 != v7)
  {
    v13 = 1;
    while (v10 | v11)
    {
      v8 = (v8 + v13) & v5;
      result = (v2 + 32 * v8);
      v10 = *result;
      v11 = result[1];
      ++v13;
      if (*result == *a2 && v11 == v7)
      {
        return result;
      }
    }

    if (*a1)
    {
      return (*a1 + 32 * *(*a1 - 4));
    }

    else
    {
      return 0;
    }
  }

  return result;
}

id *WTF::RefCounted<WebKit::ProcessStateMonitor>::deref(id *result)
{
  if (*result == 1)
  {
    WebKit::ProcessStateMonitor::~ProcessStateMonitor(result - 1);

    return bmalloc::api::tzoneFree(v2, v3);
  }

  else
  {
    --*result;
  }

  return result;
}

void *WTF::HashTable<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebKit::ProcessAndUIAssertion const*>,std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebKit::ProcessAndUIAssertion const*>,WTF::IdentityExtractor,WTF::DefaultHash<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebKit::ProcessAndUIAssertion const*>>,WTF::HashTraits<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebKit::ProcessAndUIAssertion const*>>,WTF::HashTraits<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebKit::ProcessAndUIAssertion const*>>,WTF::FastMalloc>::begin(void *result)
{
  if (!result)
  {
    return 0;
  }

  v1 = *(result - 1);
  v2 = &result[2 * v1];
  if (!*(result - 3))
  {
    return &result[2 * v1];
  }

  if (v1)
  {
    v3 = 16 * v1;
    while (*result == -1 || *result == 0)
    {
      result += 2;
      v3 -= 16;
      if (!v3)
      {
        return v2;
      }
    }
  }

  return result;
}

uint64_t WTF::Vector<WTF::Ref<WebKit::ProcessAndUIAssertion,WTF::RawPtrTraits<WebKit::ProcessAndUIAssertion>,WTF::DefaultRefDerefTraits<WebKit::ProcessAndUIAssertion>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(uint64_t a1, void *a2)
{
  v3 = *(a1 + 12);
  if (v3)
  {
    v4 = *a1;
    v5 = 8 * v3;
    do
    {
      v6 = *v4;
      *v4 = 0;
      if (v6)
      {
        WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::ProcessAssertion,(WTF::DestructionThread)0>::deref((v6 + 8), a2);
      }

      v4 = (v4 + 8);
      v5 -= 8;
    }

    while (v5);
  }

  v7 = *a1;
  if (*a1)
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    WTF::fastFree(v7, a2);
  }

  return a1;
}

void *WTF::Detail::CallableWrapper<WebKit::ProcessAssertion::ProcessAssertion(int,WTF::String const&,WebKit::ProcessAssertionType,WTF::String const&,std::optional<WebKit::ExtensionProcess> &&)::$_1,void>::~CallableWrapper(void *a1, void *a2)
{
  *a1 = &unk_1F1100C98;
  v3 = a1[2];
  a1[2] = 0;
  if (v3)
  {
    WTF::ThreadSafeWeakPtrControlBlock::weakDeref(v3, a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::ProcessAssertion::ProcessAssertion(int,WTF::String const&,WebKit::ProcessAssertionType,WTF::String const&,std::optional<WebKit::ExtensionProcess> &&)::$_1,void>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F1100C98;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeWeakPtrControlBlock::weakDeref(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::ProcessAssertion::ProcessAssertion(int,WTF::String const&,WebKit::ProcessAssertionType,WTF::String const&,std::optional<WebKit::ExtensionProcess> &&)::$_1,void>::call(uint64_t a1)
{
  WTF::RunLoop::mainSingleton(a1);
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2)
  {
    v4 = WTF::ThreadSafeWeakPtrControlBlock::weakRef(v2);
  }

  else
  {
    v4 = 0;
  }

  v7 = *(a1 + 24);
  v5 = WTF::fastMalloc(0x28);
  *v5 = &unk_1F1100CC0;
  *(v5 + 8) = v3;
  *(v5 + 16) = v4;
  *(v5 + 24) = v7;
  v8 = v5;
  WTF::RunLoop::dispatch();
  result = v8;
  if (v8)
  {
    return (*(*v8 + 8))(v8);
  }

  return result;
}

void sub_19DC58368(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (a12)
  {
    (*(*a12 + 8))(a12);
  }

  _Unwind_Resume(exception_object);
}

void *WTF::Detail::CallableWrapper<WebKit::ProcessAssertion::ProcessAssertion(int,WTF::String const&,WebKit::ProcessAssertionType,WTF::String const&,std::optional<WebKit::ExtensionProcess> &&)::$_1::operator() const(void)::{lambda(void)#1},void>::~CallableWrapper(void *a1, void *a2)
{
  *a1 = &unk_1F1100CC0;
  v3 = a1[2];
  a1[2] = 0;
  if (v3)
  {
    WTF::ThreadSafeWeakPtrControlBlock::weakDeref(v3, a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::ProcessAssertion::ProcessAssertion(int,WTF::String const&,WebKit::ProcessAssertionType,WTF::String const&,std::optional<WebKit::ExtensionProcess> &&)::$_1::operator() const(void)::{lambda(void)#1},void>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F1100CC0;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeWeakPtrControlBlock::weakDeref(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

void WTF::Detail::CallableWrapper<WebKit::ProcessAssertion::ProcessAssertion(int,WTF::String const&,WebKit::ProcessAssertionType,WTF::String const&,std::optional<WebKit::ExtensionProcess> &&)::$_1::operator() const(void)::{lambda(void)#1},void>::call(uint64_t *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = a1[2];
  if (v2)
  {
    WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::LibWebRTCCodecsProxy>(&v8, v2, a1[1]);
    v3 = v8;
  }

  else
  {
    v3 = 0;
    v8 = 0;
  }

  v4 = qword_1ED641030;
  if (os_log_type_enabled(qword_1ED641030, OS_LOG_TYPE_DEFAULT))
  {
    v5 = a1[3];
    if (v3)
    {
      v6 = *(v3 + 20);
    }

    else
    {
      v6 = 0;
    }

    *buf = 134218498;
    v10 = v3;
    v11 = 2082;
    v12 = v5;
    v13 = 1024;
    v14 = v6;
    _os_log_impl(&dword_19D52D000, v4, OS_LOG_TYPE_DEFAULT, "%p - ProcessAssertion() RBS %{public}s assertion for process with PID=%d will be invalidated", buf, 0x1Cu);
  }

  if (v3)
  {
    WebKit::ProcessAssertion::processAssertionWillBeInvalidated(v3);
    v8 = 0;
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::ProcessAssertion,(WTF::DestructionThread)0>::deref((v3 + 8), v7);
  }
}