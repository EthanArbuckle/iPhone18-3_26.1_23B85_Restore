void WebKit::WebInspectorUIProxy::reset(WebKit::WebInspectorUIProxy *this)
{
  v1 = *(this + 5);
  if (v1)
  {
    v2 = *(v1 + 8);
    if (v2)
    {
      CFRetain(*(v2 - 8));
      v4 = *(v2 + 336);
      atomic_fetch_add((v4 + 16), 1u);
      IPC::MessageReceiverMap::removeMessageReceiver(v4 + 96, 0xB5u, *(v2 + 32));
      if (v4)
      {
        WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v4 + 16));
      }

      v6 = *(this + 5);
      *(this + 5) = 0;
      if (v6 && atomic_fetch_add(v6, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v6);
        WTF::fastFree(v6, v5);
      }

      v7 = *(v2 - 8);

      CFRelease(v7);
    }
  }
}

void WebKit::WebInspectorUIProxy::sendMessageToFrontend(WebKit::WebInspectorUIProxy *this, const WTF::String *a2)
{
  v2 = *(this + 6);
  if (v2)
  {
    v3 = *(v2 + 8);
    if (v3)
    {
      CFRetain(*(v3 - 8));
      v7 = *(v3 + 336);
      atomic_fetch_add((v7 + 16), 1u);
      v8 = *(this + 6);
      if (!v8 || (v9 = *(v8 + 8)) == 0)
      {
        __break(0xC471u);
        return;
      }

      v10 = *(v9 + 32);
      v11 = IPC::Encoder::operator new(0x238, v6);
      *v11 = 2110;
      *(v11 + 2) = 0;
      *(v11 + 3) = 0;
      *(v11 + 1) = v10;
      *(v11 + 68) = 0;
      *(v11 + 70) = 0;
      *(v11 + 69) = 0;
      IPC::Encoder::encodeHeader(v11);
      v19 = v11;
      IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v11, a2);
      LOBYTE(v17) = 0;
      v18 = 0;
      WebKit::AuxiliaryProcessProxy::sendMessage(v7, &v19, 0, &v17, 1);
      if (v18 == 1)
      {
        v13 = v17;
        v17 = 0;
        if (v13)
        {
          (*(*v13 + 8))(v13);
        }
      }

      v14 = v19;
      v19 = 0;
      if (v14)
      {
        IPC::Encoder::~Encoder(v14, v12);
        bmalloc::api::tzoneFree(v15, v16);
        if (!v7)
        {
          goto LABEL_11;
        }
      }

      else if (!v7)
      {
LABEL_11:
        CFRelease(*(v3 - 8));
        return;
      }

      WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v7 + 16));
      goto LABEL_11;
    }
  }
}

void WebKit::WebInspectorUIProxy::connect(WebKit::WebInspectorUIProxy *this)
{
  v1 = *(this + 5);
  if (v1)
  {
    v2 = *(v1 + 8);
    if (v2)
    {
      CFRetain(*(v2 - 8));
      v4 = *(v2 + 352);
      CFRetain(*(v4 + 8));
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::developerExtrasEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::developerExtrasEnabledKey(void)::key = WebKit::WebPreferencesKey::developerExtrasEnabledKey(void)::$_0::operator() const(void)::impl;
      }

      BoolValueForKey = WebKit::WebPreferencesStore::getBoolValueForKey((v4 + 40), &WebKit::WebPreferencesKey::developerExtrasEnabledKey(void)::key, v5);
      CFRelease(*(v4 + 8));
      if (!BoolValueForKey || (*(this + 77) & 1) != 0)
      {
        goto LABEL_21;
      }

      *(this + 77) = 257;
      WebKit::WebInspectorUIProxy::createFrontendPage(this, v7);
      v8 = *(v2 + 336);
      atomic_fetch_add((v8 + 16), 1u);
      v10 = IPC::Encoder::operator new(0x238, v9);
      *v10 = 2061;
      *(v10 + 68) = 0;
      *(v10 + 70) = 0;
      *(v10 + 69) = 0;
      *(v10 + 2) = 0;
      *(v10 + 3) = 0;
      *(v10 + 1) = 0;
      IPC::Encoder::encodeHeader(v10);
      v31 = v10;
      LOBYTE(v29[0]) = 0;
      v30 = 0;
      WebKit::AuxiliaryProcessProxy::sendMessage(v8, &v31, 0, v29, 1);
      if (v30 == 1)
      {
        v12 = v29[0];
        v29[0] = 0;
        if (v12)
        {
          (*(*v12 + 8))(v12);
        }
      }

      v13 = v31;
      v31 = 0;
      if (v13)
      {
        IPC::Encoder::~Encoder(v13, v11);
        bmalloc::api::tzoneFree(v25, v26);
      }

      CFRetain(*(this + 1));
      v15 = *(this + 5);
      if (!v15 || (v16 = *(v15 + 8)) == 0 || (v17 = *(v16 + 32), v18 = IPC::Encoder::operator new(0x238, v14), *v18 = 2126, *(v18 + 2) = 0, *(v18 + 3) = 0, *(v18 + 1) = v17, *(v18 + 68) = 0, *(v18 + 70) = 0, *(v18 + 69) = 0, IPC::Encoder::encodeHeader(v18), v31 = v18, v19 = WTF::fastMalloc(0x18), *v19 = &unk_1F111EE40, v19[1] = this, v19[2] = this, WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1))
      {
        __break(0xC471u);
        JUMPOUT(0x19E111724);
      }

      v20 = v19;
      IdentifierInternal = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
      v29[0] = v20;
      v29[1] = IdentifierInternal;
      v30 = 1;
      WebKit::AuxiliaryProcessProxy::sendMessage(v8, &v31, 0, v29, 1);
      if (v30 == 1)
      {
        v23 = v29[0];
        v29[0] = 0;
        if (v23)
        {
          (*(*v23 + 8))(v23);
        }
      }

      v24 = v31;
      v31 = 0;
      if (v24)
      {
        IPC::Encoder::~Encoder(v24, v22);
        bmalloc::api::tzoneFree(v27, v28);
        if (!v8)
        {
          goto LABEL_21;
        }
      }

      else if (!v8)
      {
LABEL_21:
        CFRelease(*(v2 - 8));
        return;
      }

      WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v8 + 16));
      goto LABEL_21;
    }
  }
}

uint64_t WebKit::WebInspectorUIProxy::createFrontendPage(WebKit::WebInspectorUIProxy *this, void *a2)
{
  result = *(this + 6);
  if (result && !*(result + 8))
  {
    *(this + 6) = 0;
    if (atomic_fetch_add(result, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, result);
      return WTF::fastFree(result, a2);
    }
  }

  return result;
}

void WebKit::WebInspectorUIProxy::show(WebKit::WebInspectorUIProxy *this)
{
  v1 = *(this + 5);
  if (!v1 || !*(v1 + 8))
  {
    return;
  }

  v3 = *(this + 6);
  if (!v3 || !*(v3 + 8))
  {
    WebKit::WebInspectorUIProxy::connect(this);
    goto LABEL_11;
  }

  if (*(this + 78) == 1)
  {
LABEL_11:
    *(this + 78) = 0;
    return;
  }

  if ((*(this + 73) & 1) == 0)
  {

    WebKit::WebInspectorUIProxy::open(this);
  }
}

void WebKit::WebInspectorUIProxy::close(WebKit::WebInspectorUIProxy *this)
{
  v1 = *(this + 5);
  if (v1)
  {
    v2 = *(v1 + 8);
    if (v2)
    {
      CFRetain(*(v2 - 8));
      v4 = *(v2 + 336);
      atomic_fetch_add((v4 + 16), 1u);
      v5 = *(this + 5);
      if (v5 && (v6 = *(v5 + 8)) != 0)
      {
        WebKit::AuxiliaryProcessProxy::send<Messages::WebInspector::Close>(v4, &v7, *(v6 + 32), 0);
        if (v4)
        {
          WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v4 + 16));
        }

        WebKit::WebInspectorUIProxy::closeFrontendPageAndWindow(this);
        CFRelease(*(v2 - 8));
      }

      else
      {
        __break(0xC471u);
      }
    }
  }
}

void WebKit::WebInspectorUIProxy::reopen(WebKit::WebInspectorUIProxy *this)
{
  v1 = *(this + 5);
  if (v1 && *(v1 + 8))
  {
    WebKit::WebInspectorUIProxy::close(this);

    WebKit::WebInspectorUIProxy::show(this);
  }
}

void WebKit::WebInspectorUIProxy::resetState(WebKit::WebInspectorUIProxy *this)
{
  v1 = *(this + 5);
  if (v1)
  {
    if (*(v1 + 8))
    {
      v2 = *(this + 6);
      if (v2)
      {
        v3 = *(v2 + 8);
        if (v3)
        {
          CFRetain(*(v3 - 8));
          v4 = *(*(v3 + 344) + 40);
          CFRelease(*(v3 - 8));
          CFRetain(*(v4 + 8));
          {
            atomic_fetch_add_explicit(WebKit::WebPreferencesKey::inspectorAttachedHeightKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
            WebKit::WebPreferencesKey::inspectorAttachedHeightKey(void)::key = WebKit::WebPreferencesKey::inspectorAttachedHeightKey(void)::$_0::operator() const(void)::impl;
          }

          WebKit::WebPreferences::deleteKey(v4, &WebKit::WebPreferencesKey::inspectorAttachedHeightKey(void)::key, v5);
          {
            atomic_fetch_add_explicit(WebKit::WebPreferencesKey::inspectorAttachedWidthKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
            WebKit::WebPreferencesKey::inspectorAttachedWidthKey(void)::key = WebKit::WebPreferencesKey::inspectorAttachedWidthKey(void)::$_0::operator() const(void)::impl;
          }

          WebKit::WebPreferences::deleteKey(v4, &WebKit::WebPreferencesKey::inspectorAttachedWidthKey(void)::key, v6);
          {
            atomic_fetch_add_explicit(WebKit::WebPreferencesKey::inspectorAttachmentSideKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
            WebKit::WebPreferencesKey::inspectorAttachmentSideKey(void)::key = WebKit::WebPreferencesKey::inspectorAttachmentSideKey(void)::$_0::operator() const(void)::impl;
          }

          WebKit::WebPreferences::deleteKey(v4, &WebKit::WebPreferencesKey::inspectorAttachmentSideKey(void)::key, v7);
          {
            atomic_fetch_add_explicit(WebKit::WebPreferencesKey::inspectorStartsAttachedKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
            WebKit::WebPreferencesKey::inspectorStartsAttachedKey(void)::key = WebKit::WebPreferencesKey::inspectorStartsAttachedKey(void)::$_0::operator() const(void)::impl;
          }

          WebKit::WebPreferences::deleteKey(v4, &WebKit::WebPreferencesKey::inspectorStartsAttachedKey(void)::key, v8);
          {
            atomic_fetch_add_explicit(WebKit::WebPreferencesKey::inspectorWindowFrameKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
            WebKit::WebPreferencesKey::inspectorWindowFrameKey(void)::key = WebKit::WebPreferencesKey::inspectorWindowFrameKey(void)::$_0::operator() const(void)::impl;
          }

          WebKit::WebPreferences::deleteKey(v4, &WebKit::WebPreferencesKey::inspectorWindowFrameKey(void)::key, v9);
          v10 = *(v4 + 8);

          CFRelease(v10);
        }
      }
    }
  }
}

void WebKit::WebInspectorUIProxy::updateForNewPageProcess(WebKit::WebInspectorUIProxy *this, WebKit::WebPageProxy *a2)
{
  WTF::WeakPtrFactory<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(a2 + 6, a2 + 16);
  v5 = *(a2 + 3);
  atomic_fetch_add(v5, 1u);
  v6 = *(this + 5);
  *(this + 5) = v5;
  if (v6)
  {
    if (atomic_fetch_add(v6, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v6);
      WTF::fastFree(v6, v4);
    }

    v5 = *(this + 5);
  }

  *(this + 8) = *(a2 + 5);
  if (v5 && (v7 = *(v5 + 8)) != 0)
  {
    v8 = v7 - 16;
    CFRetain(*(v7 - 8));
  }

  else
  {
    v8 = 0;
  }

  v9 = *(v8 + 352);
  atomic_fetch_add((v9 + 16), 1u);
  v10 = *(this + 5);
  if (!v10 || (v11 = *(v10 + 8)) == 0)
  {
    __break(0xC471u);
    goto LABEL_29;
  }

  v12 = *(v11 + 32);
  v26[0] = 181;
  v26[1] = v12;
  WTF::HashMap<std::pair<IPC::ReceiverName,unsigned long long>,WTF::WeakPtr<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<std::pair<IPC::ReceiverName,unsigned long long>>,WTF::PairHashTraits<WTF::StrongEnumHashTraits<IPC::ReceiverName>,WTF::HashTraits<unsigned long long>>,WTF::HashTraits<WTF::WeakPtr<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::inlineSet<std::pair<IPC::ReceiverName,unsigned long long>,IPC::MessageReceiver&>((v9 + 104), v26, this + 16, v27);
  if (v9)
  {
    WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v9 + 16));
  }

  CFRelease(*(v8 + 8));
  v13 = *(this + 6);
  if (v13)
  {
    v14 = *(v13 + 8);
    if (v14)
    {
      CFRetain(*(v14 - 8));
      v16 = *(v14 + 336);
      atomic_fetch_add((v16 + 16), 1u);
      v17 = *(this + 6);
      if (v17)
      {
        v18 = *(v17 + 8);
        if (v18)
        {
          v19 = *(v18 + 32);
          v20 = IPC::Encoder::operator new(0x238, v15);
          *v20 = 2121;
          *(v20 + 2) = 0;
          *(v20 + 3) = 0;
          *(v20 + 1) = v19;
          *(v20 + 68) = 0;
          *(v20 + 70) = 0;
          *(v20 + 69) = 0;
          IPC::Encoder::encodeHeader(v20);
          v26[0] = v20;
          LOBYTE(v27[0]) = 0;
          v28 = 0;
          WebKit::AuxiliaryProcessProxy::sendMessage(v16, v26, 0, v27, 1);
          if (v28 == 1)
          {
            v22 = v27[0];
            v27[0] = 0;
            if (v22)
            {
              (*(*v22 + 8))(v22);
            }
          }

          v23 = v26[0];
          v26[0] = 0;
          if (v23)
          {
            IPC::Encoder::~Encoder(v23, v21);
            bmalloc::api::tzoneFree(v24, v25);
            if (!v16)
            {
              goto LABEL_23;
            }
          }

          else if (!v16)
          {
LABEL_23:
            CFRelease(*(v14 - 8));
            return;
          }

          WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v16 + 16));
          goto LABEL_23;
        }
      }

      __break(0xC471u);
LABEL_29:
      JUMPOUT(0x19E111CD0);
    }
  }
}

void WebKit::WebInspectorUIProxy::setFrontendConnection(uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    v3 = *(v2 + 8);
    if (v3)
    {
      CFRetain(*(v3 - 8));
      v7 = *(a1 + 40);
      if (!v7 || !*(v7 + 8))
      {
        goto LABEL_11;
      }

      v8 = *(v3 + 336);
      atomic_fetch_add((v8 + 16), 1u);
      v9 = *(v3 + 32);
      v10 = IPC::Encoder::operator new(0x238, v6);
      *v10 = 2125;
      *(v10 + 2) = 0;
      *(v10 + 3) = 0;
      *(v10 + 1) = v9;
      *(v10 + 68) = 0;
      *(v10 + 70) = 0;
      *(v10 + 69) = 0;
      IPC::Encoder::encodeHeader(v10);
      v18 = v10;
      IPC::Encoder::addAttachment(v10, a2);
      LOBYTE(v16) = 0;
      v17 = 0;
      WebKit::AuxiliaryProcessProxy::sendMessage(v8, &v18, 0, &v16, 1);
      if (v17 == 1)
      {
        v12 = v16;
        v16 = 0;
        if (v12)
        {
          (*(*v12 + 8))(v12);
        }
      }

      v13 = v18;
      v18 = 0;
      if (v13)
      {
        IPC::Encoder::~Encoder(v13, v11);
        bmalloc::api::tzoneFree(v14, v15);
        if (!v8)
        {
          goto LABEL_11;
        }
      }

      else if (!v8)
      {
LABEL_11:
        CFRelease(*(v3 - 8));
        return;
      }

      WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v8 + 16));
      goto LABEL_11;
    }
  }
}

void WebKit::WebInspectorUIProxy::showConsole(WebKit::WebInspectorUIProxy *this)
{
  v1 = *(this + 5);
  if (v1)
  {
    v2 = *(v1 + 8);
    if (v2)
    {
      CFRetain(*(v2 - 8));
      WebKit::WebInspectorUIProxy::show(this);
      v4 = *(v2 + 336);
      atomic_fetch_add((v4 + 16), 1u);
      WebKit::AuxiliaryProcessProxy::send<Messages::WebInspector::ShowConsole>(v4, &v5, *(v2 + 32), 0);
      if (v4)
      {
        WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v4 + 16));
      }

      CFRelease(*(v2 - 8));
    }
  }
}

void WebKit::WebInspectorUIProxy::showResources(WebKit::WebInspectorUIProxy *this)
{
  v1 = *(this + 5);
  if (v1)
  {
    v2 = *(v1 + 8);
    if (v2)
    {
      CFRetain(*(v2 - 8));
      WebKit::WebInspectorUIProxy::show(this);
      v4 = *(v2 + 336);
      atomic_fetch_add((v4 + 16), 1u);
      WebKit::AuxiliaryProcessProxy::send<Messages::WebInspector::ShowResources>(v4, &v5, *(v2 + 32), 0);
      if (v4)
      {
        WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v4 + 16));
      }

      CFRelease(*(v2 - 8));
    }
  }
}

void WebKit::WebInspectorUIProxy::showMainResourceForFrame(WebKit::WebInspectorUIProxy *a1, uint64_t a2)
{
  v7 = a2;
  v2 = *(a1 + 5);
  if (v2)
  {
    v3 = *(v2 + 8);
    if (v3)
    {
      CFRetain(*(v3 - 8));
      WebKit::WebInspectorUIProxy::show(a1);
      v6 = &v7;
      v8 = &v6;
      v9 = 0;
      WebKit::WebPageProxy::sendToWebPage<void WebKit::WebPageProxy::sendToProcessContainingFrame<Messages::WebInspector::ShowMainResourceForFrame>(std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,Messages::WebInspector::ShowMainResourceForFrame &&,WTF::OptionSet<IPC::SendOption>)::{lambda(Messages::WebInspector::ShowMainResourceForFrame&)#1}>((v3 - 16), a2, 1, &v8);
      CFRelease(*(v3 - 8));
    }
  }
}

void WebKit::WebInspectorUIProxy::attach(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    if (*(v2 + 8))
    {
      v4 = *(a1 + 48);
      if (v4)
      {
        v5 = *(v4 + 8);
        if (v5)
        {
          if ((*(a1 + 74) & 1) != 0 || *(a1 + 75) == 1)
          {
            *(a1 + 74) = 1;
            *(a1 + 84) = a2;
            CFRetain(*(v5 - 8));
            v7 = *(*(v5 + 344) + 40);
            CFRelease(*(v5 - 8));
            CFRetain(*(v7 + 8));
            v31 = a2;
            WebKit::WebPreferences::setInspectorAttachmentSide(v7, &v31);
            if (*(a1 + 73) == 1)
            {
              v30 = 1;
              WebKit::WebPreferences::setInspectorStartsAttached(v7, &v30);
            }

            v8 = *(a1 + 40);
            if (v8 && (v9 = *(v8 + 8)) != 0)
            {
              v10 = v9 - 16;
              CFRetain(*(v9 - 8));
            }

            else
            {
              v10 = 0;
            }

            v11 = *(v10 + 352);
            atomic_fetch_add((v11 + 16), 1u);
            v29 = 1;
            v12 = *(a1 + 40);
            if (v12 && (v13 = *(v12 + 8)) != 0)
            {
              WebKit::AuxiliaryProcessProxy::send<Messages::WebInspector::SetAttached>(v11, &v29, *(v13 + 32));
              if (v11)
              {
                WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v11 + 16));
              }

              CFRelease(*(v10 + 8));
              v14 = *(a1 + 84);
              if (v14 != 2)
              {
                if (v14 == 1)
                {
                  v21 = *(*(a1 + 48) + 8);
                  CFRetain(*(v21 - 8));
                  v22 = *(v21 + 336);
                  v17 = (v22 + 16);
                  atomic_fetch_add((v22 + 16), 1u);
                  v23 = *(a1 + 48);
                  if (!v23 || (v24 = *(v23 + 8)) == 0)
                  {
                    __break(0xC471u);
                    JUMPOUT(0x19E11227CLL);
                  }

                  v20 = v21 - 16;
                  WebKit::AuxiliaryProcessProxy::send<Messages::WebInspectorUI::AttachedRight>(v22, *(v24 + 32));
                  if (!v22)
                  {
                    goto LABEL_28;
                  }
                }

                else
                {
                  if (*(a1 + 84))
                  {
LABEL_29:
                    WebKit::WebInspectorUIProxy::dispatchDidChangeLocalInspectorAttachment(a1);
                    CFRelease(*(v7 + 8));
                    return;
                  }

                  v15 = *(*(a1 + 48) + 8);
                  CFRetain(*(v15 - 8));
                  v16 = *(v15 + 336);
                  v17 = (v16 + 16);
                  atomic_fetch_add((v16 + 16), 1u);
                  v18 = *(a1 + 48);
                  if (!v18 || (v19 = *(v18 + 8)) == 0)
                  {
                    __break(0xC471u);
                    JUMPOUT(0x19E11225CLL);
                  }

                  v20 = v15 - 16;
                  WebKit::AuxiliaryProcessProxy::send<Messages::WebInspectorUI::AttachedBottom>(v16, *(v19 + 32));
                  if (!v16)
                  {
LABEL_28:
                    CFRelease(*(v20 + 8));
                    goto LABEL_29;
                  }
                }

LABEL_27:
                WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref(v17);
                goto LABEL_28;
              }

              v25 = *(*(a1 + 48) + 8);
              CFRetain(*(v25 - 8));
              v26 = *(v25 + 336);
              v17 = (v26 + 16);
              atomic_fetch_add((v26 + 16), 1u);
              v27 = *(a1 + 48);
              if (v27)
              {
                v28 = *(v27 + 8);
                if (v28)
                {
                  v20 = v25 - 16;
                  WebKit::AuxiliaryProcessProxy::send<Messages::WebInspectorUI::AttachedLeft>(v26, *(v28 + 32));
                  if (!v26)
                  {
                    goto LABEL_28;
                  }

                  goto LABEL_27;
                }
              }

              __break(0xC471u);
            }

            else
            {
              __break(0xC471u);
            }

            JUMPOUT(0x19E11223CLL);
          }
        }
      }
    }
  }
}

void WebKit::WebInspectorUIProxy::dispatchDidChangeLocalInspectorAttachment(WebKit::WebInspectorUIProxy *this)
{
  v1 = *(this + 5);
  if (v1)
  {
    v2 = *(v1 + 8);
    if (v2)
    {
      CFRetain(*(v2 - 8));
      v3 = *(v2 + 40);
      if (v3)
      {
        v4 = *(v3 + 8);
        if (v4)
        {
          (*(*v4 + 1712))(v4);
          (*(*v4 + 1768))(v4);
          (*(*v4 + 1720))(v4);
        }
      }

      v5 = *(v2 - 8);

      CFRelease(v5);
    }
  }
}

void WebKit::WebInspectorUIProxy::detach(WebKit::WebInspectorUIProxy *this)
{
  v1 = *(this + 5);
  if (!v1)
  {
    return;
  }

  if (!*(v1 + 8))
  {
    return;
  }

  v3 = *(this + 6);
  if (!v3 || !*(v3 + 8))
  {
    return;
  }

  v4 = *(this + 73);
  if (*(this + 74) == 1)
  {
    *(this + 74) = 0;
    if (v4)
    {
      WebKit::WebInspectorUIProxy::protectedInspectorPagePreferences(this, &v19);
      v5 = v19;
      v18 = 0;
      WebKit::WebPreferences::setInspectorStartsAttached(v19, &v18);
      if (v5)
      {
        CFRelease(*(v5 + 1));
      }

      v1 = *(this + 5);
      if (!v1)
      {
        goto LABEL_15;
      }
    }
  }

  else
  {
    if (*(this + 73))
    {
      return;
    }

    *(this + 74) = 0;
  }

  v6 = *(v1 + 8);
  if (!v6)
  {
LABEL_15:
    v7 = 0;
    goto LABEL_16;
  }

  v7 = v6 - 16;
  CFRetain(*(v6 - 8));
LABEL_16:
  v8 = *(v7 + 352);
  atomic_fetch_add((v8 + 16), 1u);
  v17 = 0;
  v9 = *(this + 5);
  if (!v9 || (v10 = *(v9 + 8)) == 0)
  {
    __break(0xC471u);
    goto LABEL_32;
  }

  WebKit::AuxiliaryProcessProxy::send<Messages::WebInspector::SetAttached>(v8, &v17, *(v10 + 32));
  if (v8)
  {
    WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v8 + 16));
  }

  CFRelease(*(v7 + 8));
  v11 = *(this + 6);
  if (v11 && (v12 = *(v11 + 8)) != 0)
  {
    v13 = v12 - 16;
    CFRetain(*(v12 - 8));
  }

  else
  {
    v13 = 0;
  }

  v14 = *(v13 + 352);
  atomic_fetch_add((v14 + 16), 1u);
  v15 = *(this + 6);
  if (!v15 || (v16 = *(v15 + 8)) == 0)
  {
    __break(0xC471u);
LABEL_32:
    JUMPOUT(0x19E112534);
  }

  WebKit::AuxiliaryProcessProxy::send<Messages::WebInspectorUI::Detached>(v14, *(v16 + 32));
  if (v14)
  {
    WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v14 + 16));
  }

  CFRelease(*(v13 + 8));
  WebKit::WebInspectorUIProxy::dispatchDidChangeLocalInspectorAttachment(this);
}

void WebKit::WebInspectorUIProxy::setAttachedWindowHeight(WebKit::WebInspectorUIProxy *this, unsigned int a2)
{
  v5 = a2;
  v2 = *(this + 6);
  if (v2 && *(v2 + 8))
  {
    WebKit::WebInspectorUIProxy::protectedInspectorPagePreferences(this, &v4);
    v3 = v4;
    WebKit::WebPreferences::setInspectorAttachedHeight(v4, &v5);
    if (v3)
    {
      CFRelease(*(v3 + 1));
    }
  }
}

void WebKit::WebInspectorUIProxy::setAttachedWindowWidth(WebKit::WebInspectorUIProxy *this, unsigned int a2)
{
  v5 = a2;
  v2 = *(this + 6);
  if (v2 && *(v2 + 8))
  {
    WebKit::WebInspectorUIProxy::protectedInspectorPagePreferences(this, &v4);
    v3 = v4;
    WebKit::WebPreferences::setInspectorAttachedWidth(v4, &v5);
    if (v3)
    {
      CFRelease(*(v3 + 1));
    }
  }
}

void WebKit::WebInspectorUIProxy::togglePageProfiling(WebKit::WebInspectorUIProxy *this)
{
  v1 = *(this + 5);
  if (v1 && *(v1 + 8))
  {
    WebKit::WebInspectorUIProxy::show(this);
    v3 = *(this + 5);
    if (v3 && (v4 = *(v3 + 8)) != 0)
    {
      v5 = v4 - 16;
      CFRetain(*(v4 - 8));
      v6 = 0;
    }

    else
    {
      v5 = 0;
      v6 = 1;
    }

    v7 = *(this + 76);
    v8 = *(v5 + 352);
    atomic_fetch_add((v8 + 16), 1u);
    if (v7 == 1)
    {
      WebKit::AuxiliaryProcessProxy::send<Messages::WebInspector::StopPageProfiling>(v8, &v10, *(v5 + 48), 0);
      if (!v8)
      {
LABEL_12:
        if ((v6 & 1) == 0)
        {
          CFRelease(*(v5 + 8));
        }

        return;
      }
    }

    else
    {
      WebKit::AuxiliaryProcessProxy::send<Messages::WebInspector::StartPageProfiling>(v8, &v9, *(v5 + 48), 0);
      if (!v8)
      {
        goto LABEL_12;
      }
    }

    WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v8 + 16));
    goto LABEL_12;
  }
}

void WebKit::WebInspectorUIProxy::toggleElementSelection(WebKit::WebInspectorUIProxy *this)
{
  v1 = *(this + 5);
  if (v1)
  {
    v2 = *(v1 + 8);
    if (v2)
    {
      CFRetain(*(v2 - 8));
      if (*(this + 79) == 1)
      {
        *(this + 80) = 1;
        v4 = *(v2 + 336);
        v5 = (v4 + 16);
        atomic_fetch_add((v4 + 16), 1u);
        WebKit::AuxiliaryProcessProxy::send<Messages::WebInspector::StopElementSelection>(v4, &v8, *(v2 + 32), 0);
        if (!v4)
        {
          goto LABEL_8;
        }
      }

      else
      {
        WebKit::WebInspectorUIProxy::connect(this);
        v6 = *(v2 + 336);
        v5 = (v6 + 16);
        atomic_fetch_add((v6 + 16), 1u);
        WebKit::AuxiliaryProcessProxy::send<Messages::WebInspector::StartElementSelection>(v6, &v7, *(v2 + 32), 0);
        if (!v6)
        {
LABEL_8:
          CFRelease(*(v2 - 8));
          return;
        }
      }

      WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref(v5);
      goto LABEL_8;
    }
  }
}

void WebKit::WebInspectorUIProxy::requestOpenLocalInspectorFrontend(WebKit::WebInspectorUIProxy *this)
{
  if ((*(this + 72) & 1) != 0 || WebKit::WebInspectorUIProxy::inspectionLevel(this) >= 2)
  {

    WebKit::WebInspectorUIProxy::openLocalInspectorFrontend(this);
  }
}

void WebKit::WebInspectorUIProxy::openLocalInspectorFrontend(WebKit::WebInspectorUIProxy *this)
{
  v1 = *(this + 5);
  if (v1)
  {
    v2 = *(v1 + 8);
    if (v2)
    {
      CFRetain(*(v2 - 8));
      v4 = *(v2 + 352);
      CFRetain(*(v4 + 8));
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::developerExtrasEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::developerExtrasEnabledKey(void)::key = WebKit::WebPreferencesKey::developerExtrasEnabledKey(void)::$_0::operator() const(void)::impl;
      }

      BoolValueForKey = WebKit::WebPreferencesStore::getBoolValueForKey((v4 + 40), &WebKit::WebPreferencesKey::developerExtrasEnabledKey(void)::key, v5);
      CFRelease(*(v4 + 8));
      if (BoolValueForKey)
      {
        if (Inspector::FrontendRouter::hasLocalFrontend(**(v2 + 1192)))
        {
          WebKit::WebInspectorUIProxy::show(this);
        }

        else
        {
          WebKit::WebInspectorUIProxy::createFrontendPage(this, v7);
          v8 = *(this + 6);
          if (v8)
          {
            v9 = *(v8 + 8);
            if (v9)
            {
              CFRetain(*(v9 - 8));
              v10 = *(v9 + 336);
              atomic_fetch_add((v10 + 16), 1u);
              WebKit::DebuggableInfoData::empty(&v49);
              v11 = *(this + 72);
              v63 = WebKit::WebInspectorUIProxy::inspectionLevel(this);
              v45 = (this + 64);
              v46 = &v49;
              v47[0] = v11;
              v48 = &v63;
              v13 = *(this + 6);
              if (!v13 || (v14 = *(v13 + 8)) == 0)
              {
                __break(0xC471u);
                return;
              }

              v15 = *(v14 + 32);
              v16 = IPC::Encoder::operator new(0x238, v12);
              *v16 = 2108;
              *(v16 + 2) = 0;
              *(v16 + 3) = 0;
              *(v16 + 1) = v15;
              *(v16 + 68) = 0;
              *(v16 + 70) = 0;
              *(v16 + 69) = 0;
              IPC::Encoder::encodeHeader(v16);
              v66 = v16;
              IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v16, *v45);
              IPC::ArgumentCoder<WebKit::DebuggableInfoData,void>::encode(v16, v46);
              IPC::Encoder::operator<<<BOOL &>(v16, v47);
              IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v16, *v48);
              LOBYTE(v64[0]) = 0;
              v65 = 0;
              WebKit::AuxiliaryProcessProxy::sendMessage(v10, &v66, 0, v64, 1);
              if (v65 == 1)
              {
                v18 = v64[0];
                v64[0] = 0;
                if (v18)
                {
                  (*(*v18 + 8))(v18);
                }
              }

              v19 = v66;
              v66 = 0;
              if (v19)
              {
                IPC::Encoder::~Encoder(v19, v17);
                bmalloc::api::tzoneFree(v43, v44);
              }

              v20 = v52;
              v52 = 0;
              if (v20 && atomic_fetch_add_explicit(v20, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v20, v17);
              }

              v21 = v51;
              v51 = 0;
              if (v21 && atomic_fetch_add_explicit(v21, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v21, v17);
              }

              v22 = v50;
              v50 = 0;
              if (v22 && atomic_fetch_add_explicit(v22, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v22, v17);
              }

              if (v10)
              {
                WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v10 + 16));
              }

              *(this + 81) = 1;
              WebKit::WebPageInspectorController::connectFrontend(*(v2 + 1192), this + 32);
              if ((*(this + 72) & 1) == 0)
              {
                *(this + 75) = 0;
                WebKit::WebInspectorUIProxy::protectedInspectorPagePreferences(this, &v49);
                v24 = v49;
                {
                  atomic_fetch_add_explicit(WebKit::WebPreferencesKey::inspectorStartsAttachedKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
                  WebKit::WebPreferencesKey::inspectorStartsAttachedKey(void)::key = WebKit::WebPreferencesKey::inspectorStartsAttachedKey(void)::$_0::operator() const(void)::impl;
                }

                if (WebKit::WebPreferencesStore::getBoolValueForKey((v24 + 40), &WebKit::WebPreferencesKey::inspectorStartsAttachedKey(void)::key, v23))
                {
                  v25 = *(this + 75);
                }

                else
                {
                  v25 = 0;
                }

                if (v24)
                {
                  CFRelease(*(v24 + 1));
                }

                *(this + 74) = v25 & 1;
                WebKit::WebInspectorUIProxy::protectedInspectorPagePreferences(this, &v49);
                v26 = v49;
                {
                  atomic_fetch_add_explicit(WebKit::WebPreferencesKey::inspectorAttachmentSideKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
                  WebKit::WebPreferencesKey::inspectorAttachmentSideKey(void)::key = WebKit::WebPreferencesKey::inspectorAttachmentSideKey(void)::$_0::operator() const(void)::impl;
                }

                *(this + 84) = WebKit::valueForKey<unsigned int>(v26 + 40, v26 + 64, &WebKit::WebPreferencesKey::inspectorAttachmentSideKey(void)::key);
                if (v26)
                {
                  CFRelease(*(v26 + 1));
                }

                v27 = *(v2 + 336);
                atomic_fetch_add((v27 + 16), 1u);
                LOBYTE(v49) = *(this + 74);
                WebKit::AuxiliaryProcessProxy::send<Messages::WebInspector::SetAttached>(v27, &v49, *(v2 + 32));
                if (v27)
                {
                  WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v27 + 16));
                }

                v28 = *(v9 + 336);
                atomic_fetch_add((v28 + 16), 1u);
                if (*(this + 74) == 1)
                {
                  v29 = *(this + 84);
                  if (v29 == 2)
                  {
                    WebKit::AuxiliaryProcessProxy::send<Messages::WebInspectorUI::AttachedLeft>(v28, *(v9 + 32));
                  }

                  else if (v29 == 1)
                  {
                    WebKit::AuxiliaryProcessProxy::send<Messages::WebInspectorUI::AttachedRight>(v28, *(v9 + 32));
                  }

                  else if (!*(this + 84))
                  {
                    WebKit::AuxiliaryProcessProxy::send<Messages::WebInspectorUI::AttachedBottom>(v28, *(v9 + 32));
                  }
                }

                else
                {
                  WebKit::AuxiliaryProcessProxy::send<Messages::WebInspectorUI::Detached>(v28, *(v9 + 32));
                }

                LOBYTE(v49) = *(this + 75) ^ 1;
                WebKit::AuxiliaryProcessProxy::send<Messages::WebInspectorUI::SetDockingUnavailable>(v28, &v49, *(v9 + 32), 0);
                WebKit::WebInspectorUIProxy::dispatchDidChangeLocalInspectorAttachment(this);
                if (v28)
                {
                  WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v28 + 16));
                }
              }

              (*(**(v2 + 104) + 584))(*(v2 + 104), v2 - 16, this);
              v66 = 0;
              MEMORY[0x19EB01DD0](&v45, &v66, 0);
              WebCore::ResourceRequestBase::ResourceRequestBase(&v49, &v45, 0);
              cf = 0;
              v64[0] = 0;
              WebKit::WebPageProxy::loadRequest(v9 - 16, &v49, 1, 0, v64, 0, 1, &v62);
              if (v62)
              {
                CFRelease(*(v62 + 8));
              }

              v31 = cf;
              cf = 0;
              if (v31)
              {
                CFRelease(v31);
              }

              v32 = v60;
              v60 = 0;
              if (v32)
              {
                WTF::RefCounted<WebCore::FormData>::deref(v32);
              }

              v33 = v59;
              v59 = 0;
              if (v33 && atomic_fetch_add_explicit(v33, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v33, v30);
              }

              v34 = v58;
              v58 = 0;
              if (v34 && atomic_fetch_add_explicit(v34, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v34, v30);
              }

              WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v57, v30);
              WTF::Vector<WebCore::HTTPHeaderMap::UncommonHeader,0ul,WTF::CrashOnOverflow,0ul,WTF::FastMalloc>::~Vector(v56, v35);
              WTF::Vector<WebCore::HTTPHeaderMap::CommonHeader,0ul,WTF::CrashOnOverflow,6ul,WTF::FastMalloc>::~Vector(&v55, v36);
              v38 = v54;
              v54 = 0;
              if (v38 && atomic_fetch_add_explicit(v38, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v38, v37);
              }

              v39 = v53;
              v53 = 0;
              if (v39 && atomic_fetch_add_explicit(v39, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v39, v37);
              }

              v40 = v49;
              v49 = 0;
              if (v40 && atomic_fetch_add_explicit(v40, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v40, v37);
              }

              v41 = v45;
              v45 = 0;
              if (v41 && atomic_fetch_add_explicit(v41, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v41, v37);
              }

              v42 = v66;
              v66 = 0;
              if (v42)
              {
                if (atomic_fetch_add_explicit(v42, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  WTF::StringImpl::destroy(v42, v37);
                }
              }

              CFRelease(*(v9 - 8));
            }
          }
        }
      }

      CFRelease(*(v2 - 8));
    }
  }
}

void WebKit::WebPageInspectorController::connectFrontend(Inspector::FrontendRouter **a1, void *a2)
{
  if ((a1[8] & 1) == 0)
  {
    *(a1 + 64) = 1;
    v3 = *a1;
    ++**a1;
    v4 = a1[1];
    ++*v4;
    v5 = a1[4];
    atomic_fetch_add(v5, 1u);
    if (WebKit::InspectorBrowserAgent::s_heapRef)
    {
      NonCompact = bmalloc::api::tzoneAllocateNonCompact(WebKit::InspectorBrowserAgent::s_heapRef, a2);
    }

    else
    {
      NonCompact = WebKit::InspectorBrowserAgent::operatorNewSlow(0);
    }

    v7 = NonCompact;
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    *v7 = &unk_1F111EE00;
    if (v16)
    {
      atomic_fetch_add_explicit(v16, 2u, memory_order_relaxed);
      *v7 = &unk_1F111EDC0;
      *(v7 + 8) = v16;
      if (atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v16, v8);
      }
    }

    else
    {
      *(v7 + 8) = 0;
    }

    *(v7 + 24) = 0;
    *v7 = &unk_1F111ED10;
    *(v7 + 16) = &unk_1F111ED60;
    v9 = WTF::fastMalloc(8);
    *v9 = v3;
    *(v7 + 32) = v9;
    Inspector::BrowserBackendDispatcher::create();
    atomic_fetch_add(v5, 1u);
    *(v7 + 48) = v5;
    Inspector::AgentRegistry::append();
    if (v7)
    {
      (*(*v7 + 8))(v7);
    }

    if (v5 && atomic_fetch_add(v5, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v5);
      WTF::fastFree(v5, v10);
    }

    WTF::RefCounted<Inspector::BackendDispatcher>::deref(v4, v10);
    WTF::RefCounted<Inspector::FrontendRouter>::deref(v3, v11);
  }

  v12 = *(*a1 + 5);
  Inspector::FrontendRouter::connectFrontend();
  if (!v12)
  {
    Inspector::AgentRegistry::didCreateFrontendAndBackend((a1 + 2));
  }

  v13 = *(a1[4] + 1);
  if (v13)
  {
    CFRetain(*(v13 - 8));
    v14 = *a1;
    *(v13 + 948) = *(*a1 + 5);
    if (Inspector::FrontendRouter::hasLocalFrontend(v14))
    {
      WebKit::WebPageProxy::remoteInspectorInformationDidChange((v13 - 16));
    }

    v15 = *(v13 - 8);

    CFRelease(v15);
  }

  else
  {
    __break(0xC471u);
  }
}

void WebKit::WebInspectorUIProxy::open(WebKit::WebInspectorUIProxy *this)
{
  if ((*(this + 72) & 1) == 0)
  {
    v2 = *(this + 6);
    if (v2)
    {
      v3 = *(v2 + 8);
      if (v3)
      {
        v4 = *(this + 82);
        *(this + 82) = 1;
        *(this + 73) = 1;
        CFRetain(*(v3 - 8));
        v5 = *(v3 + 336);
        atomic_fetch_add((v5 + 16), 1u);
        v8 = *(this + 73);
        v6 = *(this + 6);
        if (v6 && (v7 = *(v6 + 8)) != 0)
        {
          WebKit::AuxiliaryProcessProxy::send<Messages::WebInspectorUI::SetIsVisible>(v5, &v8, *(v7 + 32), 0);
          if (v5)
          {
            WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v5 + 16));
          }

          CFRelease(*(v3 - 8));
          if (*(this + 74) != 1 || (*(this + 75) & 1) == 0)
          {
            *(this + 74) = 0;
          }

          WebKit::WebInspectorUIProxy::dispatchDidChangeLocalInspectorAttachment(this);
          *(this + 82) = v4;
        }

        else
        {
          __break(0xC471u);
        }
      }
    }
  }
}

uint64_t *WebKit::untrackInspectorPage(WebKit *this, WebKit::WebPageProxy *a2)
{
  v4 = this;
  {
    WebKit::pageLevelMap(void)::map = 0;
  }

  result = WTF::HashTable<WebKit::WebPageProxy *,WTF::KeyValuePair<WebKit::WebPageProxy *,unsigned int>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebKit::WebPageProxy *,unsigned int>>,WTF::DefaultHash<WebKit::WebPageProxy *>,WTF::HashMap<WebKit::WebPageProxy *,unsigned int,WTF::DefaultHash<WebKit::WebPageProxy *>,WTF::HashTraits<WebKit::WebPageProxy *>,WTF::HashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebKit::WebPageProxy *>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WebKit::WebPageProxy *,unsigned int,WTF::DefaultHash<WebKit::WebPageProxy *>,WTF::HashTraits<WebKit::WebPageProxy *>,WTF::HashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WebKit::WebPageProxy *>>,(WTF::ShouldValidateKey)1,WebKit::WebPageProxy *>(&WebKit::pageLevelMap(void)::map, &v4);
  if (WebKit::pageLevelMap(void)::map)
  {
    v3 = WebKit::pageLevelMap(void)::map + 16 * *(WebKit::pageLevelMap(void)::map - 4);
    if (v3 == result)
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

    v3 = 0;
  }

  if (v3 != result)
  {
    return WTF::HashTable<WebKit::WebPageProxy *,WTF::KeyValuePair<WebKit::WebPageProxy *,unsigned int>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebKit::WebPageProxy *,unsigned int>>,WTF::DefaultHash<WebKit::WebPageProxy *>,WTF::HashMap<WebKit::WebPageProxy *,unsigned int,WTF::DefaultHash<WebKit::WebPageProxy *>,WTF::HashTraits<WebKit::WebPageProxy *>,WTF::HashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebKit::WebPageProxy *>,WTF::FastMalloc>::remove(&WebKit::pageLevelMap(void)::map, result);
  }

  return result;
}

void WebKit::WebPageInspectorController::disconnectFrontend(void *a1)
{
  Inspector::FrontendRouter::disconnectFrontend();
  if (*(*a1 + 20))
  {
    v2 = *(a1[4] + 8);
    if (v2)
    {
      CFRetain(*(v2 - 8));
      *(v2 + 948) = *(*a1 + 20);
      goto LABEL_6;
    }

LABEL_9:
    __break(0xC471u);
    JUMPOUT(0x19E11332CLL);
  }

  Inspector::AgentRegistry::willDestroyFrontendAndBackend();
  v2 = *(a1[4] + 8);
  if (!v2)
  {
    goto LABEL_9;
  }

  CFRetain(*(v2 - 8));
  *(v2 + 948) = *(*a1 + 20);
  WebKit::WebPageProxy::remoteInspectorInformationDidChange((v2 - 16));
LABEL_6:
  v3 = *(v2 - 8);

  CFRelease(v3);
}

void WebKit::WebInspectorUIProxy::sendMessageToBackend(WebKit::WebInspectorUIProxy *this, const WTF::String *a2)
{
  v2 = *(this + 5);
  if (v2)
  {
    v3 = *(v2 + 8);
    if (v3)
    {
      CFRetain(*(v3 - 8));
      Inspector::BackendDispatcher::dispatch(*(*(v3 + 1192) + 8), a2);
      v5 = *(v3 - 8);

      CFRelease(v5);
    }
  }
}

void WebKit::WebInspectorUIProxy::frontendLoaded(WebKit::WebInspectorUIProxy *this)
{
  v1 = *(this + 5);
  if (v1)
  {
    v2 = *(v1 + 8);
    if (v2)
    {
      CFRetain(*(v2 - 8));
      v4 = *(API::PageConfiguration::Data::LazyInitializedRef<WebKit::WebProcessPool,&API::PageConfiguration::Data::createWebProcessPool>::get((*(v2 + 48) + 16)) + 320);
      if (v4)
      {
        CFRetain(v4[1]);
        WebKit::WebAutomationSession::inspectorFrontendLoaded(v4, (v2 - 16));
        CFRelease(v4[1]);
      }

      v5 = *(this + 7);
      if (v5)
      {
        (*(*v5 + 24))(v5, this);
      }

      v6 = *(v2 - 8);

      CFRelease(v6);
    }
  }
}

void WebKit::WebInspectorUIProxy::attachAvailabilityChanged(WebKit::WebInspectorUIProxy *this, int a2)
{
  v4 = *(this + 75);
  v5 = (*(this + 74) | a2) & 1;
  *(this + 75) = *(this + 74) | a2;
  if (v4 != v5)
  {
    v11 = v2;
    v12 = v3;
    v7 = *(this + 6);
    if (v7)
    {
      v8 = *(v7 + 8);
      if (v8)
      {
        CFRetain(*(v8 - 8));
        if ((*(this + 72) & 1) == 0)
        {
          v9 = *(v8 + 336);
          atomic_fetch_add((v9 + 16), 1u);
          v10 = *(this + 75) ^ 1;
          WebKit::AuxiliaryProcessProxy::send<Messages::WebInspectorUI::SetDockingUnavailable>(v9, &v10, *(v8 + 32), 0);
          if (v9)
          {
            WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v9 + 16));
          }
        }

        CFRelease(*(v8 - 8));
      }
    }
  }
}

uint64_t WebKit::WebInspectorUIProxy::openURLExternally(WebKit::WebInspectorUIProxy *this, const WTF::String *a2)
{
  result = *(this + 7);
  if (result)
  {
    return (*(*result + 16))(result, this, a2);
  }

  return result;
}

void WebKit::WebInspectorUIProxy::setInspectorPageDeveloperExtrasEnabled(WebKit::WebInspectorUIProxy *this, BOOL a2)
{
  v6 = a2;
  v2 = *(this + 6);
  if (v2)
  {
    v3 = *(v2 + 8);
    if (v3)
    {
      CFRetain(*(v3 - 8));
      v4 = *(v3 + 352);
      CFRetain(*(v4 + 8));
      WebKit::WebPreferences::setDeveloperExtrasEnabled(v4, &v6);
      CFRelease(*(v4 + 8));
      v5 = *(v3 - 8);

      CFRelease(v5);
    }
  }
}

void WebKit::WebInspectorUIProxy::elementSelectionChanged(WebKit::WebInspectorUIProxy *this, char a2)
{
  *(this + 79) = a2;
  if (*(this + 80) == 1)
  {
    *(this + 80) = 0;
    if ((*(this + 73) & 1) == 0)
    {
      WebKit::WebInspectorUIProxy::close(this);
    }
  }

  else if ((a2 & 1) == 0)
  {
    v2 = *(this + 6);
    if (v2)
    {
      if (*(v2 + 8))
      {
        if (*(this + 78) == 1)
        {
          *(this + 78) = 0;
        }

        else if ((*(this + 73) & 1) == 0)
        {
          WebKit::WebInspectorUIProxy::open(this);
        }
      }
    }
  }
}

void WebKit::WebInspectorUIProxy::setDeveloperPreferenceOverride(uint64_t a1, int a2, unint64_t a3)
{
  v3 = a3;
  if (a2 <= 1)
  {
    v4 = a3 >> 8;
    if (a2)
    {
      if (a2 != 1)
      {
        return;
      }

      v5 = *(a1 + 40);
      if (!v5)
      {
        return;
      }

      v6 = *(v5 + 8);
      if (!v6)
      {
        return;
      }

      v8 = *(v6 - 8);
      v7 = v6 - 8;
      CFRetain(v8);
      v9 = *(v7 + 400);
      CFRetain(v9[1]);
      WebKit::WebsiteDataStore::setResourceLoadStatisticsDebugMode(v9, (v4 & v3 & 1));
    }

    else
    {
      v13 = *(a1 + 40);
      if (!v13)
      {
        return;
      }

      v14 = *(v13 + 8);
      if (!v14)
      {
        return;
      }

      v15 = *(v14 - 8);
      v7 = v14 - 8;
      CFRetain(v15);
      v9 = *(v7 + 400);
      CFRetain(v9[1]);
      WebKit::WebsiteDataStore::setPrivateClickMeasurementDebugMode(v9, (v4 & v3 & 1));
    }

LABEL_15:
    CFRelease(v9[1]);
    goto LABEL_19;
  }

  if (a2 != 2)
  {
    if (a2 != 3)
    {
      return;
    }

    v10 = *(a1 + 40);
    if (!v10)
    {
      return;
    }

    v11 = *(v10 + 8);
    if (!v11)
    {
      return;
    }

    v12 = *(v11 - 8);
    v7 = v11 - 8;
    CFRetain(v12);
    v9 = *(v7 + 360);
    CFRetain(v9[1]);
    WebKit::WebPreferences::setNeedsSiteSpecificQuirksInspectorOverride(v9, v3);
    goto LABEL_15;
  }

  v16 = *(a1 + 40);
  if (!v16)
  {
    return;
  }

  v17 = *(v16 + 8);
  if (!v17)
  {
    return;
  }

  v18 = *(v17 - 8);
  v7 = v17 - 8;
  CFRetain(v18);
  WebKit::WebPageProxy::setMockCaptureDevicesEnabledOverride((v7 - 8), v3);
LABEL_19:
  v19 = *v7;

  CFRelease(v19);
}

void WebKit::WebInspectorUIProxy::setDiagnosticLoggingAvailable(WebKit::WebInspectorUIProxy *this, char a2)
{
  v4 = *(this + 6);
  if (v4 && (v5 = *(v4 + 8)) != 0)
  {
    v6 = v5 - 16;
    CFRetain(*(v5 - 8));
  }

  else
  {
    v6 = 0;
  }

  v7 = *(v6 + 352);
  atomic_fetch_add((v7 + 16), 1u);
  v10 = a2;
  v8 = *(this + 6);
  if (v8 && (v9 = *(v8 + 8)) != 0)
  {
    WebKit::AuxiliaryProcessProxy::send<Messages::WebInspectorUI::SetDiagnosticLoggingAvailable>(v7, &v10, *(v9 + 32), 0);
    if (v7)
    {
      WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v7 + 16));
    }

    CFRelease(*(v6 + 8));
  }

  else
  {
    __break(0xC471u);
  }
}

void WebKit::WebInspectorUIProxy::save(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1 && (v2 = *(v1 + 8)) != 0)
  {
    v3 = v2 - 16;
    CFRetain(*(v2 - 8));
  }

  else
  {
    v3 = 0;
  }

  v4 = *(v3 + 368);
  CFRetain(*(v4 + 8));
  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::developerExtrasEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::developerExtrasEnabledKey(void)::key = WebKit::WebPreferencesKey::developerExtrasEnabledKey(void)::$_0::operator() const(void)::impl;
  }

  WebKit::WebPreferencesStore::getBoolValueForKey((v4 + 40), &WebKit::WebPreferencesKey::developerExtrasEnabledKey(void)::key, v5);
  CFRelease(*(v4 + 8));
  v6 = *(v3 + 8);

  CFRelease(v6);
}

void WebKit::WebInspectorUIProxy::load(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = *(a1 + 40);
  if (v5 && (v6 = *(v5 + 8)) != 0)
  {
    v7 = v6 - 16;
    CFRetain(*(v6 - 8));
  }

  else
  {
    v7 = 0;
  }

  v8 = *(v7 + 368);
  CFRetain(*(v8 + 8));
  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::developerExtrasEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::developerExtrasEnabledKey(void)::key = WebKit::WebPreferencesKey::developerExtrasEnabledKey(void)::$_0::operator() const(void)::impl;
  }

  BoolValueForKey = WebKit::WebPreferencesStore::getBoolValueForKey((v8 + 40), &WebKit::WebPreferencesKey::developerExtrasEnabledKey(void)::key, v9);
  CFRelease(*(v8 + 8));
  CFRelease(*(v7 + 8));
  if (BoolValueForKey && *a2 && *(*a2 + 4))
  {
    v11 = *a3;
    *a3 = 0;
    (*(*v11 + 16))(v11, MEMORY[0x1E696EBA0]);
    v12 = *(*v11 + 8);

    v12(v11);
  }
}

unsigned int *WebKit::WebInspectorUIProxy::pickColorFromScreen(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 40);
  if (v3 && (v4 = *(v3 + 8)) != 0)
  {
    v5 = v4 - 16;
    CFRetain(*(v4 - 8));
  }

  else
  {
    v5 = 0;
  }

  v6 = *(v5 + 368);
  CFRetain(*(v6 + 8));
  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::developerExtrasEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::developerExtrasEnabledKey(void)::key = WebKit::WebPreferencesKey::developerExtrasEnabledKey(void)::$_0::operator() const(void)::impl;
  }

  WebKit::WebPreferencesStore::getBoolValueForKey((v6 + 40), &WebKit::WebPreferencesKey::developerExtrasEnabledKey(void)::key, v7);
  CFRelease(*(v6 + 8));
  CFRelease(*(v5 + 8));
  LOBYTE(v11) = 0;
  v12 = 0;
  v8 = *a2;
  *a2 = 0;
  (*(*v8 + 16))(v8, &v11);
  result = (*(*v8 + 8))(v8);
  if (v12 == 1 && (v11 & 0x8000000000000) != 0)
  {
    result = (v11 & 0xFFFFFFFFFFFFLL);
    if (atomic_fetch_add((v11 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, result);
      return WTF::fastFree(result, v10);
    }
  }

  return result;
}

void WebKit::WebInspectorUIProxy::evaluateInFrontendForTesting(WebKit::WebInspectorUIProxy *this, const WTF::String *a2)
{
  v2 = *(this + 6);
  if (v2)
  {
    v3 = *(v2 + 8);
    if (v3)
    {
      CFRetain(*(v3 - 8));
      v5 = *(v3 + 336);
      atomic_fetch_add((v5 + 16), 1u);
      v6 = a2;
      WebKit::AuxiliaryProcessProxy::send<Messages::WebInspectorUI::EvaluateInFrontendForTesting>(v5, &v6, *(v3 + 32), 0);
      if (v5)
      {
        WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v5 + 16));
      }

      CFRelease(*(v3 - 8));
    }
  }
}

BOOL WebKit::isInspectorPage(WebKit *this, WebKit::WebPageProxy *a2)
{
  {
    if (WebKit::pageLevelMap(void)::map)
    {
      v2 = *(WebKit::pageLevelMap(void)::map - 8);
      v3 = (this + ~(this << 32)) ^ ((this + ~(this << 32)) >> 22);
      v4 = 9 * ((v3 + ~(v3 << 13)) ^ ((v3 + ~(v3 << 13)) >> 8));
      v5 = (v4 ^ (v4 >> 15)) + ~((v4 ^ (v4 >> 15)) << 27);
      v6 = v2 & ((v5 >> 31) ^ v5);
      v7 = *(WebKit::pageLevelMap(void)::map + 16 * v6);
      if (v7 == this)
      {
        return 1;
      }

      else
      {
        v8 = 1;
        do
        {
          v9 = v7 != 0;
          if (!v7)
          {
            break;
          }

          v6 = (v6 + v8) & v2;
          v7 = *(WebKit::pageLevelMap(void)::map + 16 * v6);
          ++v8;
        }

        while (v7 != this);
      }
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v9 = 0;
    WebKit::pageLevelMap(void)::map = 0;
  }

  return v9;
}

__CFString *WebKit::bundleIdentifierForSandboxBroker(WebKit *this)
{
  WTF::applicationBundleIdentifier(&v8, this);
  v2 = MEMORY[0x19EB01EF0](v8, "com.apple.SafariTechnologyPreview", 33);
  v3 = v8;
  v8 = 0;
  if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    v3 = WTF::StringImpl::destroy(v3, v1);
    if (v2)
    {
      return @"com.apple.SafariTechnologyPreview.SandboxBroker";
    }
  }

  else if (v2)
  {
    return @"com.apple.SafariTechnologyPreview.SandboxBroker";
  }

  WTF::applicationBundleIdentifier(&v8, v3);
  v6 = MEMORY[0x19EB01EF0](v8, "com.apple.Safari.automation", 27);
  v7 = v8;
  v8 = 0;
  if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v7, v5);
  }

  if (v6)
  {
    return @"com.apple.Safari.automation.SandboxBroker";
  }

  else
  {
    return @"com.apple.Safari.SandboxBroker";
  }
}

void WebKit::WebPageDebuggable::~WebPageDebuggable(WebKit::WebPageDebuggable *this, WTF::StringImpl *a2)
{
  v3 = *(this + 6);
  *(this + 6) = 0;
  if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v3, a2);
  }

  v4 = *(this + 5);
  *(this + 5) = 0;
  if (v4 && atomic_fetch_add(v4, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v4);
    WTF::fastFree(v4, a2);
  }

  MEMORY[0x1EEDCBEA8](this);
}

{
  WebKit::WebPageDebuggable::~WebPageDebuggable(this, a2);

  bmalloc::api::tzoneFree(v2, v3);
}

uint64_t WebKit::WebPageDebuggable::connect(uint64_t a1, uint64_t a2, char a3, char a4)
{
  while (1)
  {
    v8 = *(a1 + 8);
    if ((v8 & 1) == 0)
    {
      break;
    }

    v9 = *(a1 + 8);
    atomic_compare_exchange_strong_explicit((a1 + 8), &v9, v8 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v9 == v8)
    {
      goto LABEL_5;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*(a1 + 8));
LABEL_5:
  v10 = WTF::fastMalloc(0x28);
  *v10 = &unk_1F111EEE0;
  *(v10 + 8) = a1;
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  *(v10 + 32) = a3;
  *(v10 + 33) = a4;
  v13 = v10;
  WTF::callOnMainRunLoopAndWait();
  result = v13;
  if (v13)
  {
    v12 = *(*v13 + 8);

    return v12();
  }

  return result;
}

uint64_t WebKit::WebPageDebuggable::disconnect(uint64_t a1, uint64_t a2)
{
  while (1)
  {
    v4 = *(a1 + 8);
    if ((v4 & 1) == 0)
    {
      break;
    }

    v5 = *(a1 + 8);
    atomic_compare_exchange_strong_explicit((a1 + 8), &v5, v4 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v5 == v4)
    {
      goto LABEL_5;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*(a1 + 8));
LABEL_5:
  v6 = WTF::fastMalloc(0x20);
  *v6 = &unk_1F111EF08;
  v6[1] = a1;
  v6[2] = a1;
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

uint64_t WebKit::WebPageDebuggable::dispatchMessageFromRemote(uint64_t a1)
{
  while (1)
  {
    v2 = *(a1 + 8);
    if ((v2 & 1) == 0)
    {
      break;
    }

    v3 = *(a1 + 8);
    atomic_compare_exchange_strong_explicit((a1 + 8), &v3, v2 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v3 == v2)
    {
      goto LABEL_5;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*(a1 + 8));
LABEL_5:
  WTF::String::isolatedCopy();
  v4 = WTF::fastMalloc(0x20);
  *v4 = &unk_1F111EF30;
  v4[1] = a1;
  v4[2] = a1;
  v4[3] = v7;
  v8 = v4;
  WTF::callOnMainRunLoopAndWait();
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  return 0;
}

uint64_t WebKit::WebPageDebuggable::setIndicating(WebKit::WebPageDebuggable *this, char a2)
{
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
      goto LABEL_5;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*(this + 1));
LABEL_5:
  v6 = WTF::fastMalloc(0x20);
  *v6 = &unk_1F111EF58;
  *(v6 + 8) = this;
  *(v6 + 16) = this;
  *(v6 + 24) = a2;
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

void WebKit::WebPageInspectorController::disconnectAllFrontends(Inspector::FrontendRouter **this)
{
  if (*(*this + 5))
  {
    Inspector::AgentRegistry::willDestroyFrontendAndBackend();
    Inspector::FrontendRouter::disconnectAllFrontends(*this);
    v2 = *(this[4] + 1);
    if (v2)
    {
      CFRetain(*(v2 - 8));
      *(v2 + 948) = *(*this + 5);
      WebKit::WebPageProxy::remoteInspectorInformationDidChange((v2 - 16));
      v3 = *(v2 - 8);

      CFRelease(v3);
    }

    else
    {
      __break(0xC471u);
    }
  }
}

WTF::StringImpl **WebKit::WebPageInspectorController::destroyInspectorTarget(WebKit::WebPageInspectorController *this, const WTF::StringImpl **a2, const WTF::StringImpl *a3)
{
  result = WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,std::unique_ptr<WebKit::InspectorTargetProxy>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,std::unique_ptr<WebKit::InspectorTargetProxy>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,std::unique_ptr<WebKit::InspectorTargetProxy>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<std::unique_ptr<WebKit::InspectorTargetProxy>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WTF::String,std::unique_ptr<WebKit::InspectorTargetProxy>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<std::unique_ptr<WebKit::InspectorTargetProxy>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::String>>,(WTF::ShouldValidateKey)1,WTF::String>(this + 6, a2, a3);
  v5 = result;
  v6 = *(this + 6);
  if (v6)
  {
    v6 += 2 * *(v6 - 1);
  }

  if (v6 != result)
  {
    v7 = *(this + 5);
    if (!v7 || (++*(v7 + 6), result = Inspector::InspectorTargetAgent::targetDestroyed(v7, result[1]), (v8 = *(v7 + 6)) == 0))
    {
      __break(0xC471u);
      JUMPOUT(0x19E1143B4);
    }

    *(v7 + 6) = v8 - 1;
    v9 = *(this + 6);
    if (v9)
    {
      v10 = (v9 + 16 * *(v9 - 4));
      if (v10 == v5)
      {
        return result;
      }
    }

    else
    {
      if (!v5)
      {
        return result;
      }

      v10 = 0;
    }

    if (v10 != v5)
    {

      return WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,std::unique_ptr<WebKit::InspectorTargetProxy>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,std::unique_ptr<WebKit::InspectorTargetProxy>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,std::unique_ptr<WebKit::InspectorTargetProxy>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<std::unique_ptr<WebKit::InspectorTargetProxy>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::remove(this + 6, v5);
    }
  }

  return result;
}

uint64_t WebKit::WebPageInspectorController::sendMessageToInspectorFrontend(WebKit::WebPageInspectorController *this, const WTF::String *a2, const WTF::String *a3)
{
  v3 = *(this + 5);
  if (!v3 || (++*(v3 + 6), result = Inspector::InspectorTargetAgent::sendMessageFromTargetToFrontend(v3, a2, a3), (v5 = *(v3 + 6)) == 0))
  {
    __break(0xC471u);
    JUMPOUT(0x19E11443CLL);
  }

  *(v3 + 6) = v5 - 1;
  return result;
}

uint64_t WebKit::WebPageInspectorController::shouldPauseLoading(WebKit::WebPageInspectorController *this, const WebKit::ProvisionalPageProxy *a2)
{
  v2 = *(*this + 20);
  if (v2)
  {
    WebKit::WebPageInspectorTarget::toTargetID(*(a2 + 5), &v9);
    v6 = WTF::HashMap<WTF::String,std::unique_ptr<WebKit::InspectorTargetProxy>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<std::unique_ptr<WebKit::InspectorTargetProxy>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WTF::String,std::unique_ptr<WebKit::InspectorTargetProxy>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<std::unique_ptr<WebKit::InspectorTargetProxy>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::String>>,WTF::String>(this + 6, &v9, v4);
    v7 = v9;
    v9 = 0;
    if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v7, v5);
    }

    LOBYTE(v2) = *(v6 + 24);
  }

  return v2 & 1;
}

uint64_t WebKit::WebPageInspectorController::setContinueLoadingCallback(uint64_t a1, uint64_t a2)
{
  WebKit::WebPageInspectorTarget::toTargetID(*(a2 + 40), &v7);
  WTF::HashMap<WTF::String,std::unique_ptr<WebKit::InspectorTargetProxy>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<std::unique_ptr<WebKit::InspectorTargetProxy>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WTF::String,std::unique_ptr<WebKit::InspectorTargetProxy>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<std::unique_ptr<WebKit::InspectorTargetProxy>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::String>>,WTF::String>((a1 + 48), &v7, v3);
  v5 = v7;
  v7 = 0;
  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, v4);
  }

  return Inspector::InspectorTarget::setResumeCallback();
}

WTF::StringImpl *WebKit::WebPageInspectorController::didCreateProvisionalPage(WebKit::WebPageInspectorController *this, WebKit::ProvisionalPageProxy *a2)
{
  WebKit::WebPageInspectorTarget::toTargetID(*(a2 + 5), &v9);
  WebKit::InspectorTargetProxy::create(a2, &v9, 0, &v10);
  WebKit::WebPageInspectorController::addTarget(this, &v10);
  v5 = v10;
  v10 = 0;
  if (v5)
  {
    WebKit::InspectorTargetProxy::~InspectorTargetProxy(v5, v4);
    bmalloc::api::tzoneFree(v6, v7);
  }

  result = v9;
  v9 = 0;
  if (result)
  {
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v4);
    }
  }

  return result;
}

WTF::StringImpl *WebKit::WebPageInspectorController::willDestroyProvisionalPage(WebKit::WebPageInspectorController *this, const WebKit::ProvisionalPageProxy *a2)
{
  WebKit::WebPageInspectorTarget::toTargetID(*(a2 + 5), &v6);
  WebKit::WebPageInspectorController::destroyInspectorTarget(this, &v6, v3);
  result = v6;
  v6 = 0;
  if (result)
  {
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v4);
    }
  }

  return result;
}

WTF::StringImpl *WebKit::WebPageInspectorController::didCommitProvisionalPage(uint64_t a1, unint64_t a2, unint64_t a3)
{
  WebKit::WebPageInspectorTarget::toTargetID(a2, &v32);
  WebKit::WebPageInspectorTarget::toTargetID(a3, &v31);
  v6 = WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,std::unique_ptr<WebKit::InspectorTargetProxy>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,std::unique_ptr<WebKit::InspectorTargetProxy>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,std::unique_ptr<WebKit::InspectorTargetProxy>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<std::unique_ptr<WebKit::InspectorTargetProxy>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WTF::String,std::unique_ptr<WebKit::InspectorTargetProxy>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<std::unique_ptr<WebKit::InspectorTargetProxy>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::String>>,(WTF::ShouldValidateKey)1,WTF::String>((a1 + 48), &v31, v5);
  v7 = v6;
  v8 = *(a1 + 48);
  if (v8)
  {
    if (v8 + 16 * *(v8 - 4) != v6)
    {
LABEL_3:
      v9 = *(v6 + 8);
      *(v6 + 8) = 0;
      v30 = v9;
      WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,std::unique_ptr<WebKit::InspectorTargetProxy>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,std::unique_ptr<WebKit::InspectorTargetProxy>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,std::unique_ptr<WebKit::InspectorTargetProxy>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<std::unique_ptr<WebKit::InspectorTargetProxy>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::remove((a1 + 48), v6);
      goto LABEL_6;
    }
  }

  else if (v6)
  {
    goto LABEL_3;
  }

  v9 = 0;
  v30 = 0;
LABEL_6:
  v10 = *(a1 + 40);
  if (!v10)
  {
    WebKit::InspectorTargetProxy::didCommitProvisionalTarget(v9, v7);
    __break(0xC471u);
    goto LABEL_48;
  }

  ++*(v10 + 6);
  v11 = *(v9 + 7);
  *(v9 + 7) = 0;
  if (v11 && atomic_fetch_add(v11, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v11);
    WTF::fastFree(v11, v7);
  }

  Inspector::InspectorTargetAgent::didCommitProvisionalTarget(v10, &v32, &v31);
  v13 = *(a1 + 48);
  if (v13)
  {
    v14 = *(v13 - 4);
    v15 = v13 + 16 * v14;
    if (*(v13 - 12))
    {
      if (v14)
      {
        v16 = 16 * v14;
        v17 = *(a1 + 48);
        while ((*v17 + 1) <= 1)
        {
          v17 += 16;
          v16 -= 16;
          if (!v16)
          {
            v17 = v15;
            goto LABEL_22;
          }
        }
      }

      else
      {
        v17 = *(a1 + 48);
      }

      goto LABEL_22;
    }
  }

  else
  {
    v15 = 0;
    v14 = 0;
  }

  v17 = v15;
  v15 = v13 + 16 * v14;
  if (!v13)
  {
    v18 = 0;
    goto LABEL_23;
  }

LABEL_22:
  v18 = v13 + 16 * *(v13 - 4);
LABEL_23:
  if (v18 != v17)
  {
    do
    {
      Inspector::InspectorTargetAgent::targetDestroyed(v10, *(v17 + 8));
      do
      {
        v17 += 16;
      }

      while (v17 != v15 && (*v17 + 1) <= 1);
    }

    while (v17 != v18);
    v13 = *(a1 + 48);
  }

  if (v13)
  {
    *(a1 + 48) = 0;
    WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,std::unique_ptr<WebKit::InspectorTargetProxy>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,std::unique_ptr<WebKit::InspectorTargetProxy>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,std::unique_ptr<WebKit::InspectorTargetProxy>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<std::unique_ptr<WebKit::InspectorTargetProxy>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v13, v12);
  }

  v19 = *(v9 + 5);
  if (v19)
  {
    atomic_fetch_add_explicit(v19, 2u, memory_order_relaxed);
  }

  v29 = v19;
  WTF::HashMap<WTF::String,std::unique_ptr<WebKit::InspectorTargetProxy>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<std::unique_ptr<WebKit::InspectorTargetProxy>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::inlineSet<WTF::String,std::unique_ptr<WebKit::InspectorTargetProxy>>((a1 + 48), &v29, &v30, v28);
  v21 = v29;
  v29 = 0;
  if (v21 && atomic_fetch_add_explicit(v21, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v21, v20);
  }

  v22 = *(v10 + 6);
  if (!v22)
  {
    __break(0xC471u);
LABEL_48:
    JUMPOUT(0x19E1148B4);
  }

  *(v10 + 6) = v22 - 1;
  v23 = v30;
  v30 = 0;
  if (v23)
  {
    WebKit::InspectorTargetProxy::~InspectorTargetProxy(v23, v20);
    bmalloc::api::tzoneFree(v24, v25);
  }

  v26 = v31;
  v31 = 0;
  if (v26 && atomic_fetch_add_explicit(v26, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v26, v20);
  }

  result = v32;
  v32 = 0;
  if (result)
  {
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v20);
    }
  }

  return result;
}

void WebKit::WebPageInspectorController::setEnabledBrowserAgent(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 56);
  if (v2 == a2)
  {
    return;
  }

  if (a2)
  {
    ++*(a2 + 24);
  }

  *(a1 + 56) = a2;
  if (v2)
  {
    v4 = *(v2 + 24);
    if (!v4)
    {
LABEL_15:
      __break(0xC471u);
      JUMPOUT(0x19E1149F0);
    }

    *(v2 + 24) = v4 - 1;
  }

  v5 = *(*(a1 + 32) + 8);
  if (!v5)
  {
    goto LABEL_15;
  }

  CFRetain(*(v5 - 8));
  v6 = **(v5 + 104);
  if (*(a1 + 56))
  {
    (*(v6 + 608))();
  }

  else
  {
    (*(v6 + 616))();
  }

  v7 = *(v5 - 8);

  CFRelease(v7);
}

uint64_t WebKit::WebPageInspectorController::browserExtensionsEnabled(uint64_t result, void **a2)
{
  v2 = *(result + 56);
  if (v2)
  {
    ++*(v2 + 24);
    result = WebKit::InspectorBrowserAgent::extensionsEnabled(v2, a2);
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

uint64_t WebKit::InspectorBrowserAgent::extensionsEnabled(uint64_t a1, void **a2)
{
  v3 = WTF::fastMalloc(0x20);
  v30 = WTF::JSONImpl::ArrayBase::ArrayBase(v3);
  v4 = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::begin(a2);
  v5 = v4;
  v7 = v6;
  if (*a2)
  {
    v8 = &(*a2)[2 * *(*a2 - 1)];
  }

  else
  {
    v8 = 0;
  }

  if (v8 != v4)
  {
    do
    {
      WTF::JSONImpl::Object::create(v33, v4);
      v9 = v33[0];
      WTF::StringImpl::createWithoutCopyingNonEmpty();
      WTF::JSONImpl::Value::create(&v32, v5, v10);
      WTF::HashMap<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::inlineSet<WTF::String const&,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>((v9 + 16), &v31, &v32, v33);
      if (v34 == 1)
      {
        v12 = *(v9 + 36);
        if (v12 == *(v9 + 32))
        {
          WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::String const&>(v9 + 24, &v31);
        }

        else
        {
          v13 = *(v9 + 24);
          v14 = v31;
          if (v31)
          {
            atomic_fetch_add_explicit(v31, 2u, memory_order_relaxed);
          }

          v15 = *(v9 + 36);
          *(v13 + 8 * v12) = v14;
          *(v9 + 36) = v15 + 1;
        }
      }

      v16 = v32;
      v32 = 0;
      if (v16)
      {
        if (*v16 == 1)
        {
          WTF::JSONImpl::Value::operator delete();
        }

        else
        {
          --*v16;
        }
      }

      v17 = v31;
      v31 = 0;
      if (v17 && atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v17, v11);
      }

      WTF::StringImpl::createWithoutCopyingNonEmpty();
      WTF::JSONImpl::Value::create(&v32, (v5 + 8), v18);
      WTF::HashMap<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::inlineSet<WTF::String const&,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>((v9 + 16), &v31, &v32, v33);
      if (v34 == 1)
      {
        v20 = *(v9 + 36);
        if (v20 == *(v9 + 32))
        {
          WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::String const&>(v9 + 24, &v31);
        }

        else
        {
          v21 = *(v9 + 24);
          v22 = v31;
          if (v31)
          {
            atomic_fetch_add_explicit(v31, 2u, memory_order_relaxed);
          }

          v23 = *(v9 + 36);
          *(v21 + 8 * v20) = v22;
          *(v9 + 36) = v23 + 1;
        }
      }

      v24 = v32;
      v32 = 0;
      if (v24)
      {
        if (*v24 == 1)
        {
          WTF::JSONImpl::Value::operator delete();
        }

        else
        {
          --*v24;
        }
      }

      v4 = v31;
      v31 = 0;
      if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        v4 = WTF::StringImpl::destroy(v4, v19);
      }

      v25 = *(v30 + 28);
      if (v25 == *(v30 + 24))
      {
        if (v25 + (v25 >> 1) <= v25 + 1)
        {
          v26 = v25 + 1;
        }

        else
        {
          v26 = v25 + (v25 >> 1);
        }

        if (v26 <= 0x10)
        {
          v27 = 16;
        }

        else
        {
          v27 = v26;
        }

        v4 = WTF::Vector<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(v30 + 16, v27);
        v25 = *(v30 + 28);
        v28 = (*(v30 + 16) + 8 * v25);
      }

      else
      {
        v28 = (*(v30 + 16) + 8 * v25);
      }

      *v28 = v9;
      *(v30 + 28) = v25 + 1;
      do
      {
        v5 = (v5 + 16);
      }

      while (v5 != v7 && (*v5 + 1) <= 1);
    }

    while (v5 != v8);
  }

  Inspector::BrowserFrontendDispatcher::extensionsEnabled();
  result = v30;
  if (v30)
  {
    if (*v30 == 1)
    {
      return WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*v30;
    }
  }

  return result;
}

uint64_t WebKit::WebPageInspectorController::browserExtensionsDisabled(uint64_t result, void **a2)
{
  v2 = *(result + 56);
  if (v2)
  {
    ++*(v2 + 24);
    result = WebKit::InspectorBrowserAgent::extensionsDisabled(v2, a2);
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

uint64_t WebKit::InspectorBrowserAgent::extensionsDisabled(uint64_t a1, void **a2)
{
  v3 = WTF::fastMalloc(0x20);
  v15 = WTF::JSONImpl::ArrayBase::ArrayBase(v3);
  v4 = WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::begin(a2);
  v6 = v4;
  v7 = v5;
  if (*a2)
  {
    v8 = &(*a2)[*(*a2 - 1)];
  }

  else
  {
    v8 = 0;
  }

  if (v8 != v4)
  {
    do
    {
      WTF::JSONImpl::Value::create(&v16, v6, v5);
      v9 = *(v15 + 28);
      if (v9 == *(v15 + 24))
      {
        v10 = WTF::Vector<WTF::Ref<WebKit::WebPageProxy,WTF::RawPtrTraits<WebKit::WebPageProxy>,WTF::DefaultRefDerefTraits<WebKit::WebPageProxy>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(v15 + 16, v9 + 1, &v16);
        v9 = *(v15 + 28);
        v11 = *(v15 + 16);
        v12 = *v10;
        *v10 = 0;
      }

      else
      {
        v11 = *(v15 + 16);
        v12 = v16;
        v16 = 0;
      }

      *(v11 + 8 * v9) = v12;
      *(v15 + 28) = v9 + 1;
      v13 = v16;
      v16 = 0;
      if (v13)
      {
        if (*v13 == 1)
        {
          WTF::JSONImpl::Value::operator delete();
        }

        else
        {
          --*v13;
        }
      }

      do
      {
        v6 = (v6 + 8);
      }

      while (v6 != v7 && (*v6 + 1) <= 1);
    }

    while (v6 != v8);
  }

  Inspector::BrowserFrontendDispatcher::extensionsDisabled();
  result = v15;
  if (v15)
  {
    if (*v15 == 1)
    {
      return WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*v15;
    }
  }

  return result;
}

void WebKit::InspectorBrowserAgent::~InspectorBrowserAgent(WebKit::InspectorBrowserAgent *this, void *a2)
{
  v3 = *(this + 6);
  *(this + 6) = 0;
  if (v3 && atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3);
    WTF::fastFree(v3, a2);
  }

  v4 = *(this + 5);
  *(this + 5) = 0;
  if (v4)
  {
    if (v4[2] == 1)
    {
      (*(*v4 + 8))(v4);
    }

    else
    {
      --v4[2];
    }
  }

  v5 = *(this + 4);
  *(this + 4) = 0;
  if (v5)
  {
    WTF::fastFree(v5, a2);
  }

  Inspector::BrowserBackendDispatcherHandler::~BrowserBackendDispatcherHandler((this + 16));
  v7 = *(this + 1);
  *this = &unk_1F111EE00;
  *(this + 1) = 0;
  if (v7)
  {
    if (atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v7, v6);
    }
  }
}

void non-virtual thunk toWebKit::InspectorBrowserAgent::~InspectorBrowserAgent(WebKit::InspectorBrowserAgent *this, void *a2)
{
  WebKit::InspectorBrowserAgent::~InspectorBrowserAgent((this - 16), a2);
}

{
  WebKit::InspectorBrowserAgent::operator delete((this - 16), a2);
}

double WebKit::InspectorBrowserAgent::operator delete(WebKit::InspectorBrowserAgent *a1, void *a2)
{
  WebKit::InspectorBrowserAgent::~InspectorBrowserAgent(a1, a2);
  if (*(v2 + 24))
  {
    *(v2 + 48) = 0;
    result = 0.0;
    *(v2 + 16) = 0u;
    *(v2 + 32) = 0u;
    *v2 = 0u;
  }

  else
  {

    bmalloc::api::tzoneFree(v2, v3);
  }

  return result;
}

void WebKit::InspectorBrowserAgent::willDestroyFrontendAndBackend(WebKit::InspectorBrowserAgent *a1)
{
  WebKit::InspectorBrowserAgent::disable(a1, &v3);
  if (v4 == 1)
  {
    v2 = v3;
    v3 = 0;
    if (v2)
    {
      if (atomic_fetch_add_explicit(v2, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v2, v1);
      }
    }
  }
}

void WebKit::InspectorBrowserAgent::disable(WebKit::InspectorBrowserAgent *this@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(*(this + 6) + 8);
  if (v3)
  {
    v4 = *(v3 + 1192);
    if (*(v4 + 56) == this)
    {
      WebKit::WebPageInspectorController::setEnabledBrowserAgent(v4, 0);
      *a2 = 0;
      a2[8] = 0;
    }

    else
    {

      std::experimental::fundamentals_v3::expected<void,WTF::String>::expected<WTF::ASCIILiteral>(a2, "Browser domain already disabled", 32);
    }
  }

  else
  {
    __break(0xC471u);
  }
}

void WebKit::InspectorBrowserAgent::enable(WebKit::InspectorBrowserAgent *this@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(*(this + 6) + 8);
  if (v3)
  {
    v5 = *(v3 + 1192);
    if (*(v5 + 56) == this)
    {

      std::experimental::fundamentals_v3::expected<void,WTF::String>::expected<WTF::ASCIILiteral>(a2, "Browser domain already enabled", 31);
    }

    else
    {
      WebKit::WebPageInspectorController::setEnabledBrowserAgent(v5, this);
      *a2 = 0;
      a2[8] = 0;
    }
  }

  else
  {
    __break(0xC471u);
  }
}

uint64_t WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,std::unique_ptr<WebKit::InspectorTargetProxy>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,std::unique_ptr<WebKit::InspectorTargetProxy>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,std::unique_ptr<WebKit::InspectorTargetProxy>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<std::unique_ptr<WebKit::InspectorTargetProxy>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(uint64_t a1, WTF::StringImpl *a2)
{
  v3 = *(a1 - 4);
  if (v3)
  {
    v4 = (a1 + 8);
    do
    {
      if (*(v4 - 1) != -1)
      {
        std::unique_ptr<WebKit::InspectorTargetProxy>::reset[abi:sn200100](v4, 0);
        v5 = *(v4 - 1);
        *(v4 - 1) = 0;
        if (v5)
        {
          if (atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v5, a2);
          }
        }
      }

      v4 += 2;
      --v3;
    }

    while (v3);
  }

  return WTF::fastFree((a1 - 16), a2);
}

uint64_t std::experimental::fundamentals_v3::expected<void,WTF::String>::expected<WTF::ASCIILiteral>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    if (a3 == 1)
    {
      v4 = MEMORY[0x1E696EB88];
      atomic_fetch_add_explicit(MEMORY[0x1E696EB88], 2u, memory_order_relaxed);
    }

    else
    {
      WTF::StringImpl::createWithoutCopyingNonEmpty();
      v4 = v6;
    }
  }

  else
  {
    v4 = 0;
  }

  *a1 = v4;
  *(a1 + 8) = 1;
  return a1;
}

void *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebInspector::Show,WebKit::WebInspectorUIProxy::connect(void)::$_0>(WebKit::WebInspectorUIProxy::connect(void)::$_0 &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(void *a1)
{
  *a1 = &unk_1F111EE40;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    CFRelease(*(v2 + 8));
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebInspector::Show,WebKit::WebInspectorUIProxy::connect(void)::$_0>(WebKit::WebInspectorUIProxy::connect(void)::$_0 &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F111EE40;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    CFRelease(*(v3 + 8));
  }

  return WTF::fastFree(this, a2);
}

uint64_t WebKit::AuxiliaryProcessProxy::send<Messages::WebInspector::Close>(uint64_t a1, void *a2, uint64_t a3, char a4)
{
  v7 = IPC::Encoder::operator new(0x238, a2);
  *v7 = 2123;
  *(v7 + 2) = 0;
  *(v7 + 3) = 0;
  *(v7 + 1) = a3;
  *(v7 + 68) = 0;
  *(v7 + 70) = 0;
  *(v7 + 69) = 0;
  IPC::Encoder::encodeHeader(v7);
  v17 = v7;
  LOBYTE(v15) = 0;
  v16 = 0;
  v9 = WebKit::AuxiliaryProcessProxy::sendMessage(a1, &v17, a4, &v15, 1);
  if (v16 == 1)
  {
    v10 = v15;
    v15 = 0;
    if (v10)
    {
      (*(*v10 + 8))(v10);
    }
  }

  v11 = v17;
  v17 = 0;
  if (v11)
  {
    IPC::Encoder::~Encoder(v11, v8);
    bmalloc::api::tzoneFree(v13, v14);
  }

  return v9;
}

uint64_t WebKit::AuxiliaryProcessProxy::send<Messages::WebInspector::ShowConsole>(uint64_t a1, void *a2, uint64_t a3, char a4)
{
  v7 = IPC::Encoder::operator new(0x238, a2);
  *v7 = 2127;
  *(v7 + 2) = 0;
  *(v7 + 3) = 0;
  *(v7 + 1) = a3;
  *(v7 + 68) = 0;
  *(v7 + 70) = 0;
  *(v7 + 69) = 0;
  IPC::Encoder::encodeHeader(v7);
  v17 = v7;
  LOBYTE(v15) = 0;
  v16 = 0;
  v9 = WebKit::AuxiliaryProcessProxy::sendMessage(a1, &v17, a4, &v15, 1);
  if (v16 == 1)
  {
    v10 = v15;
    v15 = 0;
    if (v10)
    {
      (*(*v10 + 8))(v10);
    }
  }

  v11 = v17;
  v17 = 0;
  if (v11)
  {
    IPC::Encoder::~Encoder(v11, v8);
    bmalloc::api::tzoneFree(v13, v14);
  }

  return v9;
}

uint64_t WebKit::AuxiliaryProcessProxy::send<Messages::WebInspector::ShowResources>(uint64_t a1, void *a2, uint64_t a3, char a4)
{
  v7 = IPC::Encoder::operator new(0x238, a2);
  *v7 = 2129;
  *(v7 + 2) = 0;
  *(v7 + 3) = 0;
  *(v7 + 1) = a3;
  *(v7 + 68) = 0;
  *(v7 + 70) = 0;
  *(v7 + 69) = 0;
  IPC::Encoder::encodeHeader(v7);
  v17 = v7;
  LOBYTE(v15) = 0;
  v16 = 0;
  v9 = WebKit::AuxiliaryProcessProxy::sendMessage(a1, &v17, a4, &v15, 1);
  if (v16 == 1)
  {
    v10 = v15;
    v15 = 0;
    if (v10)
    {
      (*(*v10 + 8))(v10);
    }
  }

  v11 = v17;
  v17 = 0;
  if (v11)
  {
    IPC::Encoder::~Encoder(v11, v8);
    bmalloc::api::tzoneFree(v13, v14);
  }

  return v9;
}

IPC::Encoder *WebKit::AuxiliaryProcessProxy::send<Messages::WebInspector::SetAttached>(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = IPC::Encoder::operator new(0x238, a2);
  *v6 = 2124;
  *(v6 + 2) = 0;
  *(v6 + 3) = 0;
  *(v6 + 1) = a3;
  *(v6 + 68) = 0;
  *(v6 + 70) = 0;
  *(v6 + 69) = 0;
  IPC::Encoder::encodeHeader(v6);
  v14 = v6;
  IPC::Encoder::operator<<<BOOL &>(v6, a2);
  LOBYTE(v12) = 0;
  v13 = 0;
  WebKit::AuxiliaryProcessProxy::sendMessage(a1, &v14, 0, &v12, 1);
  if (v13 == 1)
  {
    v8 = v12;
    v12 = 0;
    if (v8)
    {
      (*(*v8 + 8))(v8);
    }
  }

  result = v14;
  v14 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v7);
    return bmalloc::api::tzoneFree(v10, v11);
  }

  return result;
}

IPC::Encoder *WebKit::AuxiliaryProcessProxy::send<Messages::WebInspectorUI::AttachedBottom>(uint64_t a1, void *a2)
{
  v4 = IPC::Encoder::operator new(0x238, a2);
  *v4 = 2104;
  *(v4 + 2) = 0;
  *(v4 + 3) = 0;
  *(v4 + 1) = a2;
  *(v4 + 68) = 0;
  *(v4 + 70) = 0;
  *(v4 + 69) = 0;
  IPC::Encoder::encodeHeader(v4);
  v12 = v4;
  LOBYTE(v10) = 0;
  v11 = 0;
  WebKit::AuxiliaryProcessProxy::sendMessage(a1, &v12, 0, &v10, 1);
  if (v11 == 1)
  {
    v6 = v10;
    v10 = 0;
    if (v6)
    {
      (*(*v6 + 8))(v6);
    }
  }

  result = v12;
  v12 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v5);
    return bmalloc::api::tzoneFree(v8, v9);
  }

  return result;
}

IPC::Encoder *WebKit::AuxiliaryProcessProxy::send<Messages::WebInspectorUI::AttachedRight>(uint64_t a1, void *a2)
{
  v4 = IPC::Encoder::operator new(0x238, a2);
  *v4 = 2106;
  *(v4 + 2) = 0;
  *(v4 + 3) = 0;
  *(v4 + 1) = a2;
  *(v4 + 68) = 0;
  *(v4 + 70) = 0;
  *(v4 + 69) = 0;
  IPC::Encoder::encodeHeader(v4);
  v12 = v4;
  LOBYTE(v10) = 0;
  v11 = 0;
  WebKit::AuxiliaryProcessProxy::sendMessage(a1, &v12, 0, &v10, 1);
  if (v11 == 1)
  {
    v6 = v10;
    v10 = 0;
    if (v6)
    {
      (*(*v6 + 8))(v6);
    }
  }

  result = v12;
  v12 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v5);
    return bmalloc::api::tzoneFree(v8, v9);
  }

  return result;
}

IPC::Encoder *WebKit::AuxiliaryProcessProxy::send<Messages::WebInspectorUI::AttachedLeft>(uint64_t a1, void *a2)
{
  v4 = IPC::Encoder::operator new(0x238, a2);
  *v4 = 2105;
  *(v4 + 2) = 0;
  *(v4 + 3) = 0;
  *(v4 + 1) = a2;
  *(v4 + 68) = 0;
  *(v4 + 70) = 0;
  *(v4 + 69) = 0;
  IPC::Encoder::encodeHeader(v4);
  v12 = v4;
  LOBYTE(v10) = 0;
  v11 = 0;
  WebKit::AuxiliaryProcessProxy::sendMessage(a1, &v12, 0, &v10, 1);
  if (v11 == 1)
  {
    v6 = v10;
    v10 = 0;
    if (v6)
    {
      (*(*v6 + 8))(v6);
    }
  }

  result = v12;
  v12 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v5);
    return bmalloc::api::tzoneFree(v8, v9);
  }

  return result;
}

IPC::Encoder *WebKit::AuxiliaryProcessProxy::send<Messages::WebInspectorUI::Detached>(uint64_t a1, void *a2)
{
  v4 = IPC::Encoder::operator new(0x238, a2);
  *v4 = 2107;
  *(v4 + 2) = 0;
  *(v4 + 3) = 0;
  *(v4 + 1) = a2;
  *(v4 + 68) = 0;
  *(v4 + 70) = 0;
  *(v4 + 69) = 0;
  IPC::Encoder::encodeHeader(v4);
  v12 = v4;
  LOBYTE(v10) = 0;
  v11 = 0;
  WebKit::AuxiliaryProcessProxy::sendMessage(a1, &v12, 0, &v10, 1);
  if (v11 == 1)
  {
    v6 = v10;
    v10 = 0;
    if (v6)
    {
      (*(*v6 + 8))(v6);
    }
  }

  result = v12;
  v12 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v5);
    return bmalloc::api::tzoneFree(v8, v9);
  }

  return result;
}

uint64_t WebKit::AuxiliaryProcessProxy::send<Messages::WebInspector::StopPageProfiling>(uint64_t a1, void *a2, uint64_t a3, char a4)
{
  v7 = IPC::Encoder::operator new(0x238, a2);
  *v7 = 2133;
  *(v7 + 2) = 0;
  *(v7 + 3) = 0;
  *(v7 + 1) = a3;
  *(v7 + 68) = 0;
  *(v7 + 70) = 0;
  *(v7 + 69) = 0;
  IPC::Encoder::encodeHeader(v7);
  v17 = v7;
  LOBYTE(v15) = 0;
  v16 = 0;
  v9 = WebKit::AuxiliaryProcessProxy::sendMessage(a1, &v17, a4, &v15, 1);
  if (v16 == 1)
  {
    v10 = v15;
    v15 = 0;
    if (v10)
    {
      (*(*v10 + 8))(v10);
    }
  }

  v11 = v17;
  v17 = 0;
  if (v11)
  {
    IPC::Encoder::~Encoder(v11, v8);
    bmalloc::api::tzoneFree(v13, v14);
  }

  return v9;
}

uint64_t WebKit::AuxiliaryProcessProxy::send<Messages::WebInspector::StartPageProfiling>(uint64_t a1, void *a2, uint64_t a3, char a4)
{
  v7 = IPC::Encoder::operator new(0x238, a2);
  *v7 = 2131;
  *(v7 + 2) = 0;
  *(v7 + 3) = 0;
  *(v7 + 1) = a3;
  *(v7 + 68) = 0;
  *(v7 + 70) = 0;
  *(v7 + 69) = 0;
  IPC::Encoder::encodeHeader(v7);
  v17 = v7;
  LOBYTE(v15) = 0;
  v16 = 0;
  v9 = WebKit::AuxiliaryProcessProxy::sendMessage(a1, &v17, a4, &v15, 1);
  if (v16 == 1)
  {
    v10 = v15;
    v15 = 0;
    if (v10)
    {
      (*(*v10 + 8))(v10);
    }
  }

  v11 = v17;
  v17 = 0;
  if (v11)
  {
    IPC::Encoder::~Encoder(v11, v8);
    bmalloc::api::tzoneFree(v13, v14);
  }

  return v9;
}

uint64_t WebKit::AuxiliaryProcessProxy::send<Messages::WebInspector::StopElementSelection>(uint64_t a1, void *a2, uint64_t a3, char a4)
{
  v7 = IPC::Encoder::operator new(0x238, a2);
  *v7 = 2132;
  *(v7 + 2) = 0;
  *(v7 + 3) = 0;
  *(v7 + 1) = a3;
  *(v7 + 68) = 0;
  *(v7 + 70) = 0;
  *(v7 + 69) = 0;
  IPC::Encoder::encodeHeader(v7);
  v17 = v7;
  LOBYTE(v15) = 0;
  v16 = 0;
  v9 = WebKit::AuxiliaryProcessProxy::sendMessage(a1, &v17, a4, &v15, 1);
  if (v16 == 1)
  {
    v10 = v15;
    v15 = 0;
    if (v10)
    {
      (*(*v10 + 8))(v10);
    }
  }

  v11 = v17;
  v17 = 0;
  if (v11)
  {
    IPC::Encoder::~Encoder(v11, v8);
    bmalloc::api::tzoneFree(v13, v14);
  }

  return v9;
}

uint64_t WebKit::AuxiliaryProcessProxy::send<Messages::WebInspector::StartElementSelection>(uint64_t a1, void *a2, uint64_t a3, char a4)
{
  v7 = IPC::Encoder::operator new(0x238, a2);
  *v7 = 2130;
  *(v7 + 2) = 0;
  *(v7 + 3) = 0;
  *(v7 + 1) = a3;
  *(v7 + 68) = 0;
  *(v7 + 70) = 0;
  *(v7 + 69) = 0;
  IPC::Encoder::encodeHeader(v7);
  v17 = v7;
  LOBYTE(v15) = 0;
  v16 = 0;
  v9 = WebKit::AuxiliaryProcessProxy::sendMessage(a1, &v17, a4, &v15, 1);
  if (v16 == 1)
  {
    v10 = v15;
    v15 = 0;
    if (v10)
    {
      (*(*v10 + 8))(v10);
    }
  }

  v11 = v17;
  v17 = 0;
  if (v11)
  {
    IPC::Encoder::~Encoder(v11, v8);
    bmalloc::api::tzoneFree(v13, v14);
  }

  return v9;
}

uint64_t WebKit::AuxiliaryProcessProxy::send<Messages::WebInspectorUI::SetDockingUnavailable>(uint64_t a1, void *a2, uint64_t a3, char a4)
{
  v8 = IPC::Encoder::operator new(0x238, a2);
  *v8 = 2112;
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

uint64_t WebKit::AuxiliaryProcessProxy::send<Messages::WebInspectorUI::SetIsVisible>(uint64_t a1, void *a2, uint64_t a3, char a4)
{
  v8 = IPC::Encoder::operator new(0x238, a2);
  *v8 = 2113;
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

uint64_t WebKit::AuxiliaryProcessProxy::send<Messages::WebInspectorUI::SetDiagnosticLoggingAvailable>(uint64_t a1, void *a2, uint64_t a3, char a4)
{
  v8 = IPC::Encoder::operator new(0x238, a2);
  *v8 = 2111;
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

uint64_t WebKit::AuxiliaryProcessProxy::send<Messages::WebInspectorUI::EvaluateInFrontendForTesting>(uint64_t a1, uint64_t **a2, uint64_t a3, char a4)
{
  v8 = IPC::Encoder::operator new(0x238, a2);
  *v8 = 2109;
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

uint64_t WTF::HashTable<WebKit::WebPageProxy *,WTF::KeyValuePair<WebKit::WebPageProxy *,unsigned int>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebKit::WebPageProxy *,unsigned int>>,WTF::DefaultHash<WebKit::WebPageProxy *>,WTF::HashMap<WebKit::WebPageProxy *,unsigned int,WTF::DefaultHash<WebKit::WebPageProxy *>,WTF::HashTraits<WebKit::WebPageProxy *>,WTF::HashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebKit::WebPageProxy *>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WebKit::WebPageProxy *,unsigned int,WTF::DefaultHash<WebKit::WebPageProxy *>,WTF::HashTraits<WebKit::WebPageProxy *>,WTF::HashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WebKit::WebPageProxy *>>,(WTF::ShouldValidateKey)1,WebKit::WebPageProxy *>(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  if (!*a1)
  {
    return 0;
  }

  v3 = *a2;
  if (*a2 == -1 || !v3)
  {
    __break(0xC471u);
    JUMPOUT(0x19E1163B0);
  }

  v4 = *(v2 - 8);
  v5 = (~(v3 << 32) + v3) ^ ((~(v3 << 32) + v3) >> 22);
  v6 = 9 * ((v5 + ~(v5 << 13)) ^ ((v5 + ~(v5 << 13)) >> 8));
  v7 = (v6 ^ (v6 >> 15)) + ~((v6 ^ (v6 >> 15)) << 27);
  v8 = v4 & ((v7 >> 31) ^ v7);
  v9 = *(v2 + 16 * v8);
  if (v9 == v3)
  {
    return v2 + 16 * v8;
  }

  v10 = 1;
  while (v9)
  {
    v8 = (v8 + v10) & v4;
    v9 = *(v2 + 16 * v8);
    ++v10;
    if (v9 == v3)
    {
      return v2 + 16 * v8;
    }
  }

  return v2 + 16 * *(v2 - 4);
}

_OWORD *WTF::HashTable<WebKit::WebPageProxy *,WTF::KeyValuePair<WebKit::WebPageProxy *,unsigned int>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebKit::WebPageProxy *,unsigned int>>,WTF::DefaultHash<WebKit::WebPageProxy *>,WTF::HashMap<WebKit::WebPageProxy *,unsigned int,WTF::DefaultHash<WebKit::WebPageProxy *>,WTF::HashTraits<WebKit::WebPageProxy *>,WTF::HashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebKit::WebPageProxy *>,WTF::FastMalloc>::rehash(uint64_t *a1, unsigned int a2, void *a3)
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

  v9 = WTF::fastZeroedMalloc((16 * a2 + 16));
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
      v13 = (v6 + 16 * v11);
      if ((*v13 + 1) >= 2)
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

        v16 = (~(*v13 << 32) + *v13) ^ ((~(*v13 << 32) + *v13) >> 22);
        v17 = 9 * ((v16 + ~(v16 << 13)) ^ ((v16 + ~(v16 << 13)) >> 8));
        v18 = (v17 ^ (v17 >> 15)) + ~((v17 ^ (v17 >> 15)) << 27);
        v19 = v15 & ((v18 >> 31) ^ v18);
        v20 = 1;
        do
        {
          v21 = v19;
          v22 = *(v14 + 16 * v19);
          v19 = (v19 + v20++) & v15;
        }

        while (v22);
        v23 = (v14 + 16 * v21);
        *v23 = *v13;
        if (v13 == a3)
        {
          v12 = v23;
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

uint64_t *WTF::HashTable<WebKit::WebPageProxy *,WTF::KeyValuePair<WebKit::WebPageProxy *,unsigned int>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebKit::WebPageProxy *,unsigned int>>,WTF::DefaultHash<WebKit::WebPageProxy *>,WTF::HashMap<WebKit::WebPageProxy *,unsigned int,WTF::DefaultHash<WebKit::WebPageProxy *>,WTF::HashTraits<WebKit::WebPageProxy *>,WTF::HashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebKit::WebPageProxy *>,WTF::FastMalloc>::remove(uint64_t *result, void *a2)
{
  *a2 = -1;
  v2 = *result;
  v3 = vadd_s32(*(*result - 16), 0xFFFFFFFF00000001);
  *(v2 - 16) = v3;
  v4 = *(v2 - 4);
  if (6 * v3.i32[1] < v4 && v4 >= 9)
  {
    return WTF::HashTable<WebKit::WebPageProxy *,WTF::KeyValuePair<WebKit::WebPageProxy *,unsigned int>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebKit::WebPageProxy *,unsigned int>>,WTF::DefaultHash<WebKit::WebPageProxy *>,WTF::HashMap<WebKit::WebPageProxy *,unsigned int,WTF::DefaultHash<WebKit::WebPageProxy *>,WTF::HashTraits<WebKit::WebPageProxy *>,WTF::HashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebKit::WebPageProxy *>,WTF::FastMalloc>::rehash(result, v4 >> 1, 0);
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WebKit::WebPageDebuggable::name(void)::$_0,void>::~CallableWrapper(void *a1, void *a2)
{
  *a1 = &unk_1F111EE68;
  v3 = a1[2];
  a1[2] = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<Inspector::RemoteControllableTarget,(WTF::DestructionThread)0>::deref((v3 + 8), a2);
  }

  return a1;
}

void *WTF::Detail::CallableWrapper<WebKit::WebPageDebuggable::url(void)::$_0,void>::~CallableWrapper(void *a1, void *a2)
{
  *a1 = &unk_1F111EE90;
  v3 = a1[2];
  a1[2] = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<Inspector::RemoteControllableTarget,(WTF::DestructionThread)0>::deref((v3 + 8), a2);
  }

  return a1;
}

void *WTF::Detail::CallableWrapper<WebKit::WebPageDebuggable::hasLocalDebugger(void)::$_0,void>::~CallableWrapper(void *a1, void *a2)
{
  *a1 = &unk_1F111EEB8;
  v3 = a1[2];
  a1[2] = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<Inspector::RemoteControllableTarget,(WTF::DestructionThread)0>::deref((v3 + 8), a2);
  }

  return a1;
}

void *WTF::Detail::CallableWrapper<WebKit::WebPageDebuggable::connect(Inspector::FrontendChannel &,BOOL,BOOL)::$_0,void>::~CallableWrapper(void *a1, void *a2)
{
  *a1 = &unk_1F111EEE0;
  v3 = a1[2];
  a1[2] = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<Inspector::RemoteControllableTarget,(WTF::DestructionThread)0>::deref((v3 + 8), a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebPageDebuggable::connect(Inspector::FrontendChannel &,BOOL,BOOL)::$_0,void>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F111EEE0;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<Inspector::RemoteControllableTarget,(WTF::DestructionThread)0>::deref((v3 + 8), a2);
  }

  return WTF::fastFree(this, a2);
}

void WTF::Detail::CallableWrapper<WebKit::WebPageDebuggable::connect(Inspector::FrontendChannel &,BOOL,BOOL)::$_0,void>::call(uint64_t a1)
{
  v1 = *(*(a1 + 8) + 40);
  if (v1)
  {
    v2 = *(v1 + 8);
    if (v2)
    {
      CFRetain(*(v2 - 8));
      WebKit::WebPageInspectorController::connectFrontend(*(v2 + 1192), *(a1 + 24));
      v4 = *(v2 - 8);

      CFRelease(v4);
    }
  }
}

void *WTF::Detail::CallableWrapper<WebKit::WebPageDebuggable::disconnect(Inspector::FrontendChannel &)::$_0,void>::~CallableWrapper(void *a1, void *a2)
{
  *a1 = &unk_1F111EF08;
  v3 = a1[2];
  a1[2] = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<Inspector::RemoteControllableTarget,(WTF::DestructionThread)0>::deref((v3 + 8), a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebPageDebuggable::disconnect(Inspector::FrontendChannel &)::$_0,void>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F111EF08;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<Inspector::RemoteControllableTarget,(WTF::DestructionThread)0>::deref((v3 + 8), a2);
  }

  return WTF::fastFree(this, a2);
}

void WTF::Detail::CallableWrapper<WebKit::WebPageDebuggable::disconnect(Inspector::FrontendChannel &)::$_0,void>::call(uint64_t a1)
{
  v1 = *(*(a1 + 8) + 40);
  if (v1)
  {
    v2 = *(v1 + 8);
    if (v2)
    {
      CFRetain(*(v2 - 8));
      WebKit::WebPageInspectorController::disconnectFrontend(*(v2 + 1192));
      v3 = *(v2 - 8);

      CFRelease(v3);
    }
  }
}

void *WTF::Detail::CallableWrapper<WebKit::WebPageDebuggable::dispatchMessageFromRemote(WTF::String &&)::$_0,void>::~CallableWrapper(void *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F111EF30;
  v3 = a1[3];
  a1[3] = 0;
  if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v3, a2);
  }

  v4 = a1[2];
  a1[2] = 0;
  if (v4)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<Inspector::RemoteControllableTarget,(WTF::DestructionThread)0>::deref((v4 + 8), a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebPageDebuggable::dispatchMessageFromRemote(WTF::String &&)::$_0,void>::~CallableWrapper(WTF *this, WTF::StringImpl *a2)
{
  *this = &unk_1F111EF30;
  v3 = *(this + 3);
  *(this + 3) = 0;
  if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v3, a2);
  }

  v4 = *(this + 2);
  *(this + 2) = 0;
  if (v4)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<Inspector::RemoteControllableTarget,(WTF::DestructionThread)0>::deref((v4 + 8), a2);
  }

  return WTF::fastFree(this, a2);
}

void WTF::Detail::CallableWrapper<WebKit::WebPageDebuggable::dispatchMessageFromRemote(WTF::String &&)::$_0,void>::call(uint64_t a1)
{
  v1 = *(*(a1 + 8) + 40);
  if (v1)
  {
    v2 = *(v1 + 8);
    if (v2)
    {
      CFRetain(*(v2 - 8));
      Inspector::BackendDispatcher::dispatch(*(*(v2 + 1192) + 8), (a1 + 24));
      v4 = *(v2 - 8);

      CFRelease(v4);
    }
  }
}

void *WTF::Detail::CallableWrapper<WebKit::WebPageDebuggable::setIndicating(BOOL)::$_0,void>::~CallableWrapper(void *a1, void *a2)
{
  *a1 = &unk_1F111EF58;
  v3 = a1[2];
  a1[2] = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<Inspector::RemoteControllableTarget,(WTF::DestructionThread)0>::deref((v3 + 8), a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebPageDebuggable::setIndicating(BOOL)::$_0,void>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F111EF58;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<Inspector::RemoteControllableTarget,(WTF::DestructionThread)0>::deref((v3 + 8), a2);
  }

  return WTF::fastFree(this, a2);
}

void WTF::Detail::CallableWrapper<WebKit::WebPageDebuggable::setIndicating(BOOL)::$_0,void>::call(uint64_t a1)
{
  v1 = *(*(a1 + 8) + 40);
  if (v1)
  {
    v2 = *(v1 + 8);
    if (v2)
    {
      CFRetain(*(v2 - 8));
      v4 = *(*(*(v2 + 1192) + 32) + 8);
      if (v4)
      {
        v5 = *(a1 + 24);
        CFRetain(*(v4 - 8));
        v6 = v4 - 16;
        if (v5 == 1)
        {
          WebKit::WebPageProxy::showInspectorIndication(v6);
        }

        else
        {
          WebKit::WebPageProxy::hideInspectorIndication(v6);
        }

        CFRelease(*(v4 - 8));
        v7 = *(v2 - 8);

        CFRelease(v7);
      }

      else
      {
        __break(0xC471u);
      }
    }
  }
}

uint64_t WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,std::unique_ptr<WebKit::InspectorTargetProxy>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,std::unique_ptr<WebKit::InspectorTargetProxy>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,std::unique_ptr<WebKit::InspectorTargetProxy>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<std::unique_ptr<WebKit::InspectorTargetProxy>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WTF::String,std::unique_ptr<WebKit::InspectorTargetProxy>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<std::unique_ptr<WebKit::InspectorTargetProxy>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::String>>,(WTF::ShouldValidateKey)1,WTF::String>(uint64_t *a1, const WTF::StringImpl **a2, const WTF::StringImpl *a3)
{
  v3 = *a1;
  if (!*a1)
  {
    return 0;
  }

  v6 = *a2;
  if (*a2 == -1 || !v6)
  {
    __break(0xC471u);
    JUMPOUT(0x19E116C7CLL);
  }

  v7 = *(v3 - 8);
  v8 = *(v6 + 4);
  if (v8 < 0x100)
  {
    v9 = WTF::StringImpl::hashSlowCase(v6);
  }

  else
  {
    v9 = v8 >> 8;
  }

  for (i = 0; ; v9 = i + v11)
  {
    v11 = v9 & v7;
    v12 = *(v3 + 16 * v11);
    if (v12 == -1)
    {
      goto LABEL_10;
    }

    if (!v12)
    {
      break;
    }

    if (WTF::equal(v12, *a2, a3))
    {
      return v3 + 16 * v11;
    }

LABEL_10:
    ++i;
  }

  if (*a1)
  {
    return *a1 + 16 * *(*a1 - 4);
  }

  else
  {
    return 0;
  }
}

WTF::StringImpl **WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,std::unique_ptr<WebKit::InspectorTargetProxy>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,std::unique_ptr<WebKit::InspectorTargetProxy>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,std::unique_ptr<WebKit::InspectorTargetProxy>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<std::unique_ptr<WebKit::InspectorTargetProxy>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::remove(uint64_t *a1, WTF::StringImpl **a2)
{
  result = WTF::KeyValuePairHashTraits<WTF::HashTraits<WTF::String>,WTF::HashTraits<std::unique_ptr<WebKit::InspectorTargetProxy>>>::customDeleteBucket(a2, a2);
  v4 = *a1;
  v5 = vadd_s32(*(*a1 - 16), 0xFFFFFFFF00000001);
  *(v4 - 16) = v5;
  v6 = *(v4 - 4);
  if (6 * v5.i32[1] < v6 && v6 >= 9)
  {

    return WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,std::unique_ptr<WebKit::InspectorTargetProxy>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,std::unique_ptr<WebKit::InspectorTargetProxy>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,std::unique_ptr<WebKit::InspectorTargetProxy>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<std::unique_ptr<WebKit::InspectorTargetProxy>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::rehash(a1, v6 >> 1, 0);
  }

  return result;
}

WebKit::InspectorTargetProxy *WTF::KeyValuePairHashTraits<WTF::HashTraits<WTF::String>,WTF::HashTraits<std::unique_ptr<WebKit::InspectorTargetProxy>>>::customDeleteBucket(WTF::StringImpl **a1, WTF::StringImpl *a2)
{
  v3 = *a1;
  *a1 = -1;
  if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v3, a2);
  }

  return std::unique_ptr<WebKit::InspectorTargetProxy>::reset[abi:sn200100](a1 + 1, 0);
}

WTF::StringImpl **WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,std::unique_ptr<WebKit::InspectorTargetProxy>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,std::unique_ptr<WebKit::InspectorTargetProxy>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,std::unique_ptr<WebKit::InspectorTargetProxy>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<std::unique_ptr<WebKit::InspectorTargetProxy>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::rehash(uint64_t *a1, unsigned int a2, WTF::StringImpl **a3)
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

  v9 = WTF::fastZeroedMalloc((16 * a2 + 16));
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
      v13 = (v6 + 16 * v11);
      v14 = *v13;
      if (*v13 != -1)
      {
        if (v14)
        {
          v16 = *a1;
          if (*a1)
          {
            v17 = *(v16 - 8);
          }

          else
          {
            v17 = 0;
          }

          v18 = *(v14 + 4);
          if (v18 < 0x100)
          {
            v19 = WTF::StringImpl::hashSlowCase(v14);
          }

          else
          {
            v19 = v18 >> 8;
          }

          v20 = 0;
          do
          {
            v21 = v19 & v17;
            v19 = ++v20 + v21;
          }

          while (*(v16 + 16 * v21));
          v22 = (v16 + 16 * v21);
          std::unique_ptr<WebKit::InspectorTargetProxy>::reset[abi:sn200100](v22 + 1, 0);
          v24 = *v22;
          *v22 = 0;
          if (v24 && atomic_fetch_add_explicit(v24, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v24, v23);
          }

          v25 = *v13;
          *v13 = 0;
          v13[1] = 0;
          *v22 = v25;
          std::unique_ptr<WebKit::InspectorTargetProxy>::reset[abi:sn200100](v13 + 1, 0);
          v26 = *v13;
          *v13 = 0;
          if (v26 && atomic_fetch_add_explicit(v26, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v26, v10);
          }

          if (v13 == a3)
          {
            v12 = v22;
          }
        }

        else
        {
          std::unique_ptr<WebKit::InspectorTargetProxy>::reset[abi:sn200100](v13 + 1, 0);
          v15 = *v13;
          *v13 = 0;
          if (v15)
          {
            if (atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v15, v10);
            }
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

WTF *WTF::HashMap<WTF::String,std::unique_ptr<WebKit::InspectorTargetProxy>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<std::unique_ptr<WebKit::InspectorTargetProxy>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WTF::String,std::unique_ptr<WebKit::InspectorTargetProxy>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<std::unique_ptr<WebKit::InspectorTargetProxy>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::String>>,WTF::String>(uint64_t *a1, const WTF::StringImpl **a2, const WTF::StringImpl *a3)
{
  v4 = *a2;
  if (*a2 == -1 || !v4)
  {
    __break(0xC471u);
    JUMPOUT(0x19E116FFCLL);
  }

  v5 = *a1;
  if (!*a1)
  {
    return 0;
  }

  v7 = *(v5 - 8);
  v8 = *(v4 + 4);
  if (v8 < 0x100)
  {
    v9 = WTF::StringImpl::hashSlowCase(v4);
  }

  else
  {
    v9 = v8 >> 8;
  }

  for (i = 0; ; v9 = i + v11)
  {
    v11 = v9 & v7;
    result = *(v5 + 16 * v11);
    if (result != -1)
    {
      if (!result)
      {
        return result;
      }

      if (WTF::equal(result, *a2, a3))
      {
        break;
      }
    }

    ++i;
  }

  return *(v5 + 16 * v11 + 8);
}

WebKit::InspectorTargetProxy *WTF::HashMap<WTF::String,std::unique_ptr<WebKit::InspectorTargetProxy>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<std::unique_ptr<WebKit::InspectorTargetProxy>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::inlineSet<WTF::String,std::unique_ptr<WebKit::InspectorTargetProxy>>@<X0>(uint64_t *a1@<X0>, WTF::StringImpl **a2@<X1>, const WTF::StringImpl *a3@<X2>, uint64_t a4@<X8>)
{
  if (*a2 == -1 || !*a2)
  {
    __break(0xC471u);
    JUMPOUT(0x19E117244);
  }

  v8 = *a1;
  if (*a1 || (WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,std::unique_ptr<WebKit::InspectorTargetProxy>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,std::unique_ptr<WebKit::InspectorTargetProxy>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,std::unique_ptr<WebKit::InspectorTargetProxy>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<std::unique_ptr<WebKit::InspectorTargetProxy>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::expand(a1, 0), (v8 = *a1) != 0))
  {
    v9 = *(v8 - 8);
  }

  else
  {
    v9 = 0;
  }

  v10 = *(*a2 + 4);
  if (v10 < 0x100)
  {
    v11 = WTF::StringImpl::hashSlowCase(*a2);
  }

  else
  {
    v11 = v10 >> 8;
  }

  v12 = 0;
  for (i = 1; ; ++i)
  {
    v14 = v11 & v9;
    v15 = (v8 + 16 * (v11 & v9));
    v16 = *v15;
    if (*v15 != -1)
    {
      break;
    }

    v12 = (v8 + 16 * v14);
LABEL_14:
    v11 = i + v14;
  }

  if (!v16)
  {
    if (v12)
    {
      *v12 = 0;
      v12[1] = 0;
      --*(*a1 - 16);
      v15 = v12;
    }

    v17 = *a2;
    *a2 = 0;
    v18 = *v15;
    *v15 = v17;
    if (v18 && atomic_fetch_add_explicit(v18, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v18, a2);
    }

    v19 = *a3;
    *a3 = 0;
    result = std::unique_ptr<WebKit::InspectorTargetProxy>::reset[abi:sn200100](v15 + 1, v19);
    v21 = *a1;
    if (*a1)
    {
      v22 = *(v21 - 12) + 1;
    }

    else
    {
      v22 = 1;
    }

    *(v21 - 12) = v22;
    v25 = (*(v21 - 16) + v22);
    v26 = *(v21 - 4);
    if (v26 > 0x400)
    {
      if (v26 <= 2 * v25)
      {
LABEL_27:
        result = WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,std::unique_ptr<WebKit::InspectorTargetProxy>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,std::unique_ptr<WebKit::InspectorTargetProxy>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,std::unique_ptr<WebKit::InspectorTargetProxy>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<std::unique_ptr<WebKit::InspectorTargetProxy>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::expand(a1, v15);
        v15 = result;
        v21 = *a1;
        if (*a1)
        {
          v26 = *(v21 - 4);
        }

        else
        {
          v26 = 0;
        }
      }
    }

    else if (3 * v26 <= 4 * v25)
    {
      goto LABEL_27;
    }

    *a4 = v15;
    *(a4 + 8) = v21 + 16 * v26;
    *(a4 + 16) = 1;
    return result;
  }

  if (!WTF::equal(v16, *a2, a3))
  {
    goto LABEL_14;
  }

  v23 = *a1;
  if (*a1)
  {
    v24 = *(v23 - 4);
  }

  else
  {
    v24 = 0;
  }

  *a4 = v15;
  *(a4 + 8) = v23 + 16 * v24;
  *(a4 + 16) = 0;
  v27 = *a3;
  *a3 = 0;

  return std::unique_ptr<WebKit::InspectorTargetProxy>::reset[abi:sn200100](v15 + 1, v27);
}

WTF::StringImpl **WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,std::unique_ptr<WebKit::InspectorTargetProxy>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,std::unique_ptr<WebKit::InspectorTargetProxy>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,std::unique_ptr<WebKit::InspectorTargetProxy>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<std::unique_ptr<WebKit::InspectorTargetProxy>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::expand(uint64_t *a1, WTF::StringImpl **a2)
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

  return WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,std::unique_ptr<WebKit::InspectorTargetProxy>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,std::unique_ptr<WebKit::InspectorTargetProxy>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,std::unique_ptr<WebKit::InspectorTargetProxy>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<std::unique_ptr<WebKit::InspectorTargetProxy>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::rehash(a1, v5, a2);
}

void WebKit::NetworkProcessProxy::terminate(WebKit::NetworkProcessProxy *this)
{
  WebKit::AuxiliaryProcessProxy::terminate(this);
  if (*(this + 11))
  {
    WebKit::AuxiliaryProcessProxy::protectedConnection(this, &v3);
    IPC::Connection::invalidate(v3);
    v2 = v3;
    v3 = 0;
    if (v2)
    {
      WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
    }
  }
}

atomic_uint *WebKit::NetworkProcessProxy::networkProcessDidTerminate(uint64_t a1, void *a2)
{
  v2 = a2;
  v4 = (a1 + 16);
  atomic_fetch_add((a1 + 16), 1u);
  v5 = *(a1 + 416);
  if (v5)
  {
    v6 = *(*(v5 + 1) + 8);
    if (!v6)
    {
      __break(0xC471u);
      JUMPOUT(0x19E117740);
    }

    atomic_fetch_add((v6 + 16), 1u);
    WebKit::DownloadProxyMap::invalidate(v5, a2);
    WebKit::DownloadProxyMap::deref(v5);
  }

  v7 = *(*(a1 + 448) + 8);
  if (!v7)
  {
    __break(0xC471u);
    JUMPOUT(0x19E117720);
  }

  atomic_fetch_add((v7 + 16), 1u);
  WebKit::LegacyCustomProtocolManagerProxy::invalidate((a1 + 432));
  WebKit::LegacyCustomProtocolManagerProxy::deref((a1 + 432));
  std::optional<WebKit::NetworkProcessProxy::UploadActivity>::operator=[abi:sn200100]((a1 + 488), v8);
  {
    v10 = WebKit::NetworkProcessProxy::defaultNetworkProcess(void)::networkProcess;
    if (WebKit::NetworkProcessProxy::defaultNetworkProcess(void)::networkProcess)
    {
      v11 = *(WebKit::NetworkProcessProxy::defaultNetworkProcess(void)::networkProcess + 8);
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v10 = 0;
    v11 = 0;
    WebKit::NetworkProcessProxy::defaultNetworkProcess(void)::networkProcess = 0;
  }

  if (v11 == a1)
  {
    WebKit::NetworkProcessProxy::defaultNetworkProcess(void)::networkProcess = 0;
    if (v10)
    {
      if (atomic_fetch_add(v10, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v10);
        WTF::fastFree(v10, v9);
      }
    }
  }

  WebKit::WebProcessPool::allProcessPools(&v57);
  if (HIDWORD(v58))
  {
    v13 = v57;
    v14 = 8 * HIDWORD(v58);
    do
    {
      v15 = *v13++;
      WebKit::WebProcessPool::networkProcessDidTerminate(v15, a1, v2);
      v14 -= 8;
    }

    while (v14);
  }

  WTF::Vector<WTF::Ref<WebKit::WebProcessPool,WTF::RawPtrTraits<WebKit::WebProcessPool>,WTF::DefaultRefDerefTraits<WebKit::WebProcessPool>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v57, v12);
  v17 = (a1 + 528);
  v18 = *(a1 + 528);
  if (!v18)
  {
    goto LABEL_28;
  }

  v19 = *(v18 - 4);
  if (!v19)
  {
    goto LABEL_29;
  }

  v20 = 0;
  v21 = 8 * v19;
  v22 = v18 - 8;
  do
  {
    v23 = *(v22 + v21);
    if ((v23 + 1) >= 2 && !*(v23 + 8))
    {
      *(v22 + v21) = 0;
      if (atomic_fetch_add(v23, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v23);
        WTF::fastFree(v23, v16);
      }

      *(v22 + v21) = -1;
      ++v20;
    }

    v21 -= 8;
  }

  while (v21);
  v18 = *v17;
  if (v20)
  {
    v24 = *(v18 - 12) - v20;
    *(v18 - 16) += v20;
    *(v18 - 12) = v24;
    goto LABEL_29;
  }

  if (!v18)
  {
LABEL_28:
    v25 = 0;
    *(a1 + 536) = 0;
    goto LABEL_42;
  }

LABEL_29:
  v26 = *(v18 - 4);
  if (6 * *(v18 - 12) < v26 && v26 > 8)
  {
    WTF::HashTable<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::FastMalloc>::shrinkToBestSize((a1 + 528));
    v18 = *(a1 + 528);
    *(a1 + 536) = 0;
    if (!v18)
    {
      v25 = 0;
      *(a1 + 540) = 0;
      goto LABEL_42;
    }
  }

  else
  {
    *(a1 + 536) = 0;
  }

  v28 = *(v18 - 12);
  if (v28 >= 0x7FFFFFFF)
  {
    v29 = -2;
  }

  else
  {
    v29 = 2 * v28;
  }

  *(a1 + 540) = v29;
  v30 = *(v18 - 12);
  if (v30)
  {
    if (v30 >> 29)
    {
      __break(0xC471u);
      JUMPOUT(0x19E117748);
    }

    v25 = WTF::fastMalloc((8 * v30));
  }

  else
  {
    v25 = 0;
  }

LABEL_42:
  WTF::WeakHashSet<WebKit::ApplicationStateTracker,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::begin((a1 + 528), &v57);
  v31 = *v17;
  if (*v17)
  {
    v32 = *(v31 - 4);
    v33 = v31 + 8 * v32;
  }

  else
  {
    v33 = 0;
    v32 = 0;
  }

  v52 = a1 + 528;
  v53 = v33;
  v54 = v33;
  v55 = v33;
  v56 = v31 + 8 * v32;
  WTF::WeakHashSet<WebKit::RemoteLayerBackingStore,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::WeakHashSetConstIterator::skipEmptyBuckets(&v52);
  v35 = v58;
  if (v58 == v53)
  {
    goto LABEL_55;
  }

  v36 = 0;
  do
  {
    v37 = v36;
    v38 = *(*v35 + 8);
    CFRetain(*(v38 + 8));
    ++v36;
    *(v25 + v37) = v38;
    WTF::WeakHashSet<WebKit::RemoteLayerBackingStore,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::WeakHashSetConstIterator::operator++(&v57);
    v35 = v58;
  }

  while (v58 != v53);
  if (v36)
  {
    v39 = 8 * v36;
    v40 = v25;
    do
    {
      v41 = *v40;
      v40 = (v40 + 8);
      WebKit::WebsiteDataStore::networkProcessDidTerminate(v41, a1);
      v39 -= 8;
    }

    while (v39);
    v42 = 8 * v36;
    v43 = v25;
    do
    {
      v44 = *v43;
      *v43 = 0;
      if (v44)
      {
        CFRelease(*(v44 + 8));
      }

      v43 = (v43 + 8);
      v42 -= 8;
    }

    while (v42);
LABEL_55:
    if (!v25)
    {
      goto LABEL_57;
    }
  }

  WTF::fastFree(v25, v34);
LABEL_57:
  v45 = *(a1 + 560);
  if (v45)
  {
    v46 = *(v45 - 4);
    v47 = v45 + 16 * v46;
    if (*(v45 - 12))
    {
      if (v46)
      {
        v48 = 16 * v46;
        v49 = *(a1 + 560);
        while ((*v49 + 1) <= 1)
        {
          v49 += 16;
          v48 -= 16;
          if (!v48)
          {
            v49 = v47;
            goto LABEL_69;
          }
        }
      }

      else
      {
        v49 = *(a1 + 560);
      }

      goto LABEL_69;
    }
  }

  else
  {
    v47 = 0;
    v46 = 0;
  }

  v49 = v47;
  v47 = v45 + 16 * v46;
  if (!v45)
  {
    v50 = 0;
    goto LABEL_70;
  }

LABEL_69:
  v50 = v45 + 16 * *(v45 - 4);
LABEL_70:
  if (v50 != v49)
  {
    do
    {
      API::DataTask::networkProcessCrashed(*(v49 + 8), v34);
      do
      {
        v49 += 16;
      }

      while (v49 != v47 && (*v49 + 1) <= 1);
    }

    while (v49 != v50);
    v45 = *(a1 + 560);
  }

  if (v45)
  {
    *(a1 + 560) = 0;
    WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionPortChannelIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionPortChannelIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::WebExtensionMessagePort,WTF::RawPtrTraits<WebKit::WebExtensionMessagePort>,WTF::DefaultRefDerefTraits<WebKit::WebExtensionMessagePort>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionPortChannelIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::WebExtensionMessagePort,WTF::RawPtrTraits<WebKit::WebExtensionMessagePort>,WTF::DefaultRefDerefTraits<WebKit::WebExtensionMessagePort>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionPortChannelIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionPortChannelIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::WebExtensionMessagePort,WTF::RawPtrTraits<WebKit::WebExtensionMessagePort>,WTF::DefaultRefDerefTraits<WebKit::WebExtensionMessagePort>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionPortChannelIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionPortChannelIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::WebExtensionMessagePort,WTF::RawPtrTraits<WebKit::WebExtensionMessagePort>,WTF::DefaultRefDerefTraits<WebKit::WebExtensionMessagePort>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionPortChannelIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::deallocateTable(v45, v34);
  }

  return WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref(v4);
}

atomic_uint *WebKit::NetworkProcessProxy::didBecomeUnresponsive(WebKit::NetworkProcessProxy *this)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = qword_1ED6416A0;
  if (os_log_type_enabled(qword_1ED6416A0, OS_LOG_TYPE_ERROR))
  {
    v4 = *(this + 10);
    if (v4)
    {
      LODWORD(v4) = *(v4 + 108);
    }

    v5[0] = 67109120;
    v5[1] = v4;
    _os_log_error_impl(&dword_19D52D000, v2, OS_LOG_TYPE_ERROR, "NetworkProcessProxy::didBecomeUnresponsive: NetworkProcess with PID %d became unresponsive, terminating it", v5, 8u);
  }

  WebKit::NetworkProcessProxy::terminate(this);
  return WebKit::NetworkProcessProxy::networkProcessDidTerminate(this, 4);
}

void WebKit::NetworkProcessProxy::~NetworkProcessProxy(WebKit::NetworkProcessProxy *this)
{
  v2 = (this + 464);
  WTF::WeakHashSet<WebKit::ApplicationStateTracker,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::begin(this + 58, &v32);
  v3 = *(this + 58);
  if (v3)
  {
    v4 = *(v3 - 4);
    v5 = v3 + 8 * v4;
  }

  else
  {
    v5 = 0;
    v4 = 0;
  }

  v27 = v2;
  v28 = v5;
  v29 = v5;
  v30 = v5;
  v31 = v3 + 8 * v4;
  WTF::WeakHashSet<WebKit::RemoteLayerBackingStore,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::WeakHashSetConstIterator::skipEmptyBuckets(&v27);
  while (v33 != v28)
  {
    v7 = *(*v33 + 8);
    if (v7)
    {
      v8 = v7 - 16;
    }

    else
    {
      v8 = 0;
    }

    CFRetain(*(v8 + 8));
    WTF::WeakHashSet<WebKit::RemoteAudioSessionProxy,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::remove<WebKit::RemoteAudioSessionProxy>(v8 + 88, this);
    if (v7)
    {
      CFRelease(*(v7 - 8));
    }

    WTF::WeakHashSet<WebKit::RemoteLayerBackingStore,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::WeakHashSetConstIterator::operator++(&v32);
  }

  v9 = *(this + 52);
  if (v9)
  {
    v10 = *(*(v9 + 1) + 8);
    if (!v10)
    {
      __break(0xC471u);
      return;
    }

    atomic_fetch_add((v10 + 16), 1u);
    WebKit::DownloadProxyMap::invalidate(v9, v6);
    WebKit::DownloadProxyMap::deref(v9);
  }

  {
    WebKit::networkProcessesSet(void)::set = 0;
    *algn_1ED643778 = 0;
  }

  WTF::WeakHashSet<WebKit::RemoteAudioSessionProxy,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::remove<WebKit::RemoteAudioSessionProxy>(&WebKit::networkProcessesSet(void)::set, this);
  WebKit::NetworkProcessProxy::removeBackgroundStateObservers(this);
  v12 = *(this + 72);
  *(this + 72) = 0;
  if (v12)
  {
    CFRelease(v12);
  }

  v13 = *(this + 71);
  *(this + 71) = 0;
  if (v13)
  {
    CFRelease(v13);
  }

  v14 = *(this + 70);
  if (v14)
  {
    WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionPortChannelIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionPortChannelIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::WebExtensionMessagePort,WTF::RawPtrTraits<WebKit::WebExtensionMessagePort>,WTF::DefaultRefDerefTraits<WebKit::WebExtensionMessagePort>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionPortChannelIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::WebExtensionMessagePort,WTF::RawPtrTraits<WebKit::WebExtensionMessagePort>,WTF::DefaultRefDerefTraits<WebKit::WebExtensionMessagePort>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionPortChannelIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionPortChannelIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::WebExtensionMessagePort,WTF::RawPtrTraits<WebKit::WebExtensionMessagePort>,WTF::DefaultRefDerefTraits<WebKit::WebExtensionMessagePort>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionPortChannelIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionPortChannelIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::WebExtensionMessagePort,WTF::RawPtrTraits<WebKit::WebExtensionMessagePort>,WTF::DefaultRefDerefTraits<WebKit::WebExtensionMessagePort>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionPortChannelIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::deallocateTable(v14, v11);
  }

  v15 = *(this + 68);
  if (v15)
  {
    v16 = *(v15 - 4);
    if (v16)
    {
      v17 = *(this + 68);
      do
      {
        v18 = *v17;
        if (*v17 != -1)
        {
          if (*(v17 + 16))
          {
            WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(*(v17 + 16), v11);
            v18 = *v17;
          }

          *v17 = 0;
          if (v18 && atomic_fetch_add(v18, 0xFFFFFFFF) == 1)
          {
            atomic_store(1u, v18);
            WTF::fastFree(v18, v11);
          }
        }

        v17 += 24;
        --v16;
      }

      while (v16);
    }

    WTF::fastFree((v15 - 16), v11);
  }

  v19 = *(this + 66);
  if (v19)
  {
    WTF::HashTable<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::FastMalloc>::deallocateTable(v19, v11);
  }

  v20 = *(this + 65);
  if (v20)
  {
    os_release(v20);
  }

  if (*(this + 512) == 1)
  {
    v21 = *(this + 63);
    if (v21)
    {
      WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::ProcessAssertion,WTF::RawPtrTraits<WebKit::ProcessAssertion>,WTF::DefaultRefDerefTraits<WebKit::ProcessAssertion>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::ProcessAssertion,WTF::RawPtrTraits<WebKit::ProcessAssertion>,WTF::DefaultRefDerefTraits<WebKit::ProcessAssertion>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::ProcessAssertion,WTF::RawPtrTraits<WebKit::ProcessAssertion>,WTF::DefaultRefDerefTraits<WebKit::ProcessAssertion>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RefPtr<WebKit::ProcessAssertion,WTF::RawPtrTraits<WebKit::ProcessAssertion>,WTF::DefaultRefDerefTraits<WebKit::ProcessAssertion>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::deallocateTable(v21, v11);
    }

    v22 = *(this + 62);
    *(this + 62) = 0;
    if (v22)
    {
      WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::ProcessAssertion,(WTF::DestructionThread)0>::deref((v22 + 8), v11);
    }

    v23 = *(this + 61);
    *(this + 61) = 0;
    if (v23)
    {
      WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::ProcessAssertion,(WTF::DestructionThread)0>::deref((v23 + 8), v11);
    }
  }

  v24 = *(this + 60);
  *(this + 60) = 0;
  if (v24)
  {
    WTF::RefCounted<WebKit::ListDataObserver>::deref((v24 + 8), v11);
  }

  if (*v2)
  {
    WTF::HashTable<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::FastMalloc>::deallocateTable(*v2, v11);
  }

  v25 = *(this + 57);
  *(this + 57) = 0;
  if (v25)
  {
    WTF::RefCounted<WebKit::ProcessThrottlerActivity>::deref((v25 + 8), v11);
  }

  WebKit::LegacyCustomProtocolManagerProxy::~LegacyCustomProtocolManagerProxy((this + 432));
  v26 = *(this + 53);
  *(this + 53) = 0;
  if (v26)
  {
    (*(*v26 + 8))(v26);
  }

  std::unique_ptr<WebKit::DownloadProxyMap>::reset[abi:sn200100](this + 52, 0);
  WebKit::AuxiliaryProcessProxy::~AuxiliaryProcessProxy(this);
}

void non-virtual thunk toWebKit::NetworkProcessProxy::~NetworkProcessProxy(WebKit::NetworkProcessProxy *this)
{
  WebKit::NetworkProcessProxy::~NetworkProcessProxy((this - 24));
}

{
  WebKit::NetworkProcessProxy::~NetworkProcessProxy((this - 32));
}

{
  WebKit::NetworkProcessProxy::operator delete((this - 24));
}

{
  WebKit::NetworkProcessProxy::operator delete((this - 32));
}

void WebKit::NetworkProcessProxy::operator delete(WebKit::NetworkProcessProxy *a1)
{
  WebKit::NetworkProcessProxy::~NetworkProcessProxy(a1);
  if (atomic_load(v1 + 12))
  {

    bzero(v1, 0x248uLL);
  }

  else
  {

    bmalloc::api::tzoneFree(v1, v2);
  }
}

bmalloc::api *WebKit::NetworkProcessProxy::connectionWillOpen(WebKit::NetworkProcessProxy *this, IPC::Connection *a2)
{
  if (WebKit::SecItemShimProxy::singleton(void)::once != -1)
  {
    dispatch_once(&WebKit::SecItemShimProxy::singleton(void)::once, &__block_literal_global_27);
  }

  v3 = WebKit::SecItemShimProxy::singleton(void)::proxy;
  v4 = (*(WebKit::SecItemShimProxy::singleton(void)::proxy + 16) + 24);

  return IPC::Connection::addMessageReceiver(a2, v4, v3, 138, 0);
}

uint64_t WebKit::NetworkProcessProxy::getNetworkProcessConnection(unsigned int *a1, uint64_t a2, uint64_t *a3)
{
  v37 = *MEMORY[0x1E69E9840];
  v6 = qword_1ED641030;
  if (os_log_type_enabled(qword_1ED641030, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a2 + 80);
    if (v7)
    {
      LODWORD(v7) = *(v7 + 108);
    }

    v8 = *(a2 + 120);
    *buf = 134218496;
    *&buf[4] = a1;
    *&buf[12] = 1024;
    *&buf[14] = v7;
    *&buf[18] = 2048;
    *v35 = v8;
    _os_log_impl(&dword_19D52D000, v6, OS_LOG_TYPE_DEFAULT, "%p - NetworkProcessProxy::getNetworkProcessConnection: Taking a background assertion because web process pid %i (core identifier %llu) is requesting a connection", buf, 0x1Cu);
  }

  WebKit::AuxiliaryProcessProxy::startResponsivenessTimer(a1, 0);
  *&v35[4] = 0;
  v36 = 0;
  *buf = *(a2 + 1096);
  *&buf[15] = *(a2 + 1111);
  WebKit::WebProcessProxy::mainPages(a2, &v30);
  if (HIDWORD(v31))
  {
    v10 = v30;
    v11 = 8 * HIDWORD(v31);
    do
    {
      v12 = *v10;
      CFRetain(*(*v10 + 8));
      if (*(*(v12 + 64) + 590) == 1)
      {
        v13 = *(v12 + 40);
        v33 = v13;
        if (HIDWORD(v36) == v36)
        {
          v14 = WTF::Vector<WTF::ObjectIdentifierGeneric<WebCore::DictationContextType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(&v35[4], HIDWORD(v36) + 1, &v33);
          *(*&v35[4] + 8 * HIDWORD(v36)) = *v14;
        }

        else
        {
          *(*&v35[4] + 8 * HIDWORD(v36)) = v13;
        }

        ++HIDWORD(v36);
      }

      CFRelease(*(v12 + 8));
      ++v10;
      v11 -= 8;
    }

    while (v11);
  }

  WTF::Vector<WTF::Ref<WebKit::WebPageProxy,WTF::RawPtrTraits<WebKit::WebPageProxy>,WTF::DefaultRefDerefTraits<WebKit::WebPageProxy>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v30, v9);
  v15 = *(a2 + 120);
  v16 = *(*(a2 + 800) + 24);
  WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(a1 + 2, a1);
  v17 = *(a1 + 1);
  atomic_fetch_add(v17, 1u);
  v18 = *a3;
  *a3 = 0;
  v20 = IPC::Encoder::operator new(0x238, v19);
  *v20 = 594;
  *(v20 + 68) = 0;
  *(v20 + 70) = 0;
  *(v20 + 69) = 0;
  *(v20 + 2) = 0;
  *(v20 + 3) = 0;
  *(v20 + 1) = 0;
  IPC::Encoder::encodeHeader(v20);
  v33 = v20;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v20, v15);
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v20, v16);
  IPC::ArgumentCoder<WebKit::SharedPreferencesForWebProcess,void>::encode(v20, buf);
  IPC::VectorArgumentCoder<false,WTF::ObjectIdentifierGeneric<WebKit::WebExtensionFrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionFrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(v20, &v35[4]);
  v21 = WTF::fastMalloc(0x18);
  *v21 = &unk_1F111F608;
  v21[1] = v17;
  v21[2] = v18;
  if (WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1)
  {
    result = 141;
    __break(0xC471u);
  }

  else
  {
    v22 = v21;
    IdentifierInternal = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
    v30 = v22;
    v31 = IdentifierInternal;
    v32 = 1;
    WebKit::AuxiliaryProcessProxy::sendMessage(a1, &v33, 1, &v30, 1);
    if (v32 == 1)
    {
      v25 = v30;
      v30 = 0;
      if (v25)
      {
        (*(*v25 + 8))(v25);
      }
    }

    v26 = v33;
    v33 = 0;
    if (v26)
    {
      IPC::Encoder::~Encoder(v26, v24);
      bmalloc::api::tzoneFree(v28, v29);
    }

    result = *&v35[4];
    if (*&v35[4])
    {
      *&v35[4] = 0;
      LODWORD(v36) = 0;
      return WTF::fastFree(result, v24);
    }
  }

  return result;
}

uint64_t WebKit::NetworkProcessProxy::synthesizeAppIsBackground(WebKit::NetworkProcessProxy *this, int a2)
{
  if (a2)
  {
    return WebKit::AuxiliaryProcessProxy::send<Messages::NetworkProcess::ApplicationDidEnterBackground>(this, &v3, 0, 0);
  }

  else
  {
    return WebKit::AuxiliaryProcessProxy::send<Messages::NetworkProcess::ApplicationWillEnterForeground>(this, &v4, 0, 0);
  }
}

uint64_t WebKit::NetworkProcessProxy::createDownloadProxy@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X2>, const WebCore::ResourceRequest *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  v13 = *(a1 + 416);
  if (!v13)
  {
    v15 = WebKit::DownloadProxyMap::operator new(0x28, a2);
    *v15 = 0;
    WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::initializeIfNeeded((a1 + 8), a1);
    v16 = *(a1 + 8);
    atomic_fetch_add(v16, 1u);
    *(v15 + 8) = v16;
    *(v15 + 16) = 0;
    *(v15 + 24) = 0;
    *(v15 + 32) = 0;
    if (*(a1 + 416))
    {
LABEL_8:
      __break(0xC471u);
      JUMPOUT(0x19E118070);
    }

    std::unique_ptr<WebKit::DownloadProxyMap>::reset[abi:sn200100]((a1 + 416), v15);
    v13 = *(a1 + 416);
  }

  v17 = *(*(v13 + 1) + 8);
  if (!v17)
  {
    goto LABEL_8;
  }

  atomic_fetch_add((v17 + 16), 1u);
  WebKit::DownloadProxyMap::createDownloadProxy(v13, a2, a3, a4, a5, a6, a7);

  return WebKit::DownloadProxyMap::deref(v13);
}

WTF::RefCountedBase *WebKit::NetworkProcessProxy::dataTaskWithRequest(uint64_t a1, uint64_t a2, uint64_t a3, WebCore::ResourceRequestBase *a4, uint64_t a5, int a6, uint64_t *a7)
{
  v7 = *(*(a1 + 160) + 8);
  if (!v7)
  {
    __break(0xC471u);
    goto LABEL_29;
  }

  atomic_fetch_add((v7 + 16), 1u);
  v14 = WebKit::ProcessThrottlerActivity::operator new(0x30, a2);
  WebKit::ProcessThrottlerActivity::ProcessThrottlerActivity(v14, a1 + 144, "WKDataTask initialization", 26, a6, 0);
  WebKit::ProcessThrottler::deref((a1 + 144));
  v15 = *(a2 + 40);
  WebCore::ResourceRequestBase::httpBody(&v42, a4);
  v16 = v42;
  v42 = 0;
  v43 = v16;
  atomic_fetch_add((a1 + 16), 1u);
  WTF::WeakPtrFactory<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl>::initializeIfNeeded((a2 + 24), a2 + 16);
  v17 = *(a2 + 24);
  atomic_fetch_add(v17, 1u);
  v18 = *a7;
  *a7 = 0;
  v19 = WebCore::ResourceRequestBase::url(a4);
  v21 = *v19;
  if (*v19)
  {
    atomic_fetch_add_explicit(v21, 2u, memory_order_relaxed);
  }

  v40 = *(v19 + 8);
  v22 = *(v19 + 24);
  v23 = *(v19 + 32);
  v24 = IPC::Encoder::operator new(0x238, v20);
  *v24 = 595;
  *(v24 + 68) = 0;
  *(v24 + 70) = 0;
  *(v24 + 69) = 0;
  *(v24 + 2) = 0;
  *(v24 + 3) = 0;
  *(v24 + 1) = 0;
  IPC::Encoder::encodeHeader(v24);
  v44 = v24;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v24, v15);
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v24, a3);
  IPC::ArgumentCoder<WebCore::ResourceRequest,void>::encode(v24, a4);
  IPC::ArgumentCoder<std::optional<WebCore::SecurityOriginData>,void>::encode<IPC::Encoder,std::optional<WebCore::SecurityOriginData> const&>(v24, a5);
  IPC::ArgumentCoder<IPC::FormDataReference,void>::encode(v24, &v43);
  v45 = a1;
  v49 = a6;
  v51 = v21;
  v52 = v40;
  v53 = v22;
  v54 = v23;
  v25 = WTF::fastMalloc(0x60);
  *v25 = &unk_1F111F658;
  *(v25 + 8) = a1;
  *(v25 + 16) = a1;
  *(v25 + 24) = v17;
  v46 = 0;
  v47 = 0;
  *(v25 + 32) = v14;
  *(v25 + 40) = a6;
  v48 = 0;
  v50 = 0;
  *(v25 + 48) = v18;
  v27.n128_f64[0] = WTF::URL::URL(v25 + 56, &v51);
  v28 = v51;
  v51 = 0;
  if (v28 && atomic_fetch_add_explicit(v28, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v28, v26);
  }

  v29 = v50;
  v50 = 0;
  if (v29)
  {
    (*(*v29 + 8))(v29, v27);
  }

  v30 = v48;
  v48 = 0;
  if (v30)
  {
    WTF::RefCounted<WebKit::ProcessThrottlerActivity>::deref((v30 + 8), v26);
  }

  v31 = v47;
  v47 = 0;
  if (v31 && atomic_fetch_add(v31, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v31);
    WTF::fastFree(v31, v26);
  }

  v32 = v46;
  v46 = 0;
  if (v32)
  {
    WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v32 + 16));
  }

  if (WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1)
  {
    __break(0xC471u);
LABEL_29:
    JUMPOUT(0x19E1183ECLL);
  }

  IdentifierInternal = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
  v45 = v25;
  v46 = IdentifierInternal;
  LOBYTE(v47) = 1;
  WebKit::AuxiliaryProcessProxy::sendMessage(a1, &v44, 0, &v45, 0);
  if (v47 == 1)
  {
    v35 = v45;
    v45 = 0;
    if (v35)
    {
      (*(*v35 + 8))(v35);
    }
  }

  v36 = v44;
  v44 = 0;
  if (v36)
  {
    IPC::Encoder::~Encoder(v36, v34);
    bmalloc::api::tzoneFree(v38, v39);
  }

  if (v43)
  {
    WTF::RefCounted<WebCore::FormData>::deref(v43);
  }

  result = v42;
  v42 = 0;
  if (result)
  {
    return WTF::RefCounted<WebCore::FormData>::deref(result);
  }

  return result;
}

void WebKit::NetworkProcessProxy::dataTaskReceivedChallenge(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v20 = *MEMORY[0x1E69E9840];
  if ((a2 - 1) >= 0xFFFFFFFFFFFFFFFELL)
  {
    v11 = qword_1ED6416C8;
    if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_FAULT))
    {
      LODWORD(v18) = 136446210;
      *(&v18 + 4) = "void WebKit::NetworkProcessProxy::dataTaskReceivedChallenge(DataTaskIdentifier, WebCore::AuthenticationChallenge &&, CompletionHandler<void (AuthenticationChallengeDisposition, WebCore::Credential &&)> &&)";
      _os_log_fault_impl(&dword_19D52D000, v11, OS_LOG_TYPE_FAULT, "/Library/Caches/com.apple.xbs/Sources/WebKit/Source/WebKit/UIProcess/Network/NetworkProcessProxy.cpp 399: Invalid message dispatched %{public}s", &v18, 0xCu);
    }

    v12 = *(a1 + 88);
    if (!v12 || (*(v12 + 94) = 1, IPC::s_shouldCrashOnMessageCheckFailure == 1))
    {
      __break(0xC471u);
      JUMPOUT(0x19E1186E8);
    }

    WebCore::CredentialBase::CredentialBase(&v18);
    cf = 0;
    v13 = *a4;
    *a4 = 0;
    (*(*v13 + 16))(v13, 0, &v18);
  }

  else
  {
    v7 = WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<API::DataTask,WTF::RawPtrTraits<API::DataTask>,WTF::DefaultRefDerefTraits<API::DataTask>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<API::DataTask,WTF::RawPtrTraits<API::DataTask>,WTF::DefaultRefDerefTraits<API::DataTask>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<API::DataTask,WTF::RawPtrTraits<API::DataTask>,WTF::DefaultRefDerefTraits<API::DataTask>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<API::DataTask,WTF::RawPtrTraits<API::DataTask>,WTF::DefaultRefDerefTraits<API::DataTask>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>((a1 + 560), a2);
    if (v7)
    {
      v8 = v7;
      CFRetain(*(v7 + 8));
      v9 = *(v8 + 96);
      ++v9[2];
      (*(*v9 + 16))(v9, v8, a3, a4);
      if (v9[2] == 1)
      {
        (*(*v9 + 8))(v9);
      }

      else
      {
        --v9[2];
      }

      v10 = *(v8 + 8);

      CFRelease(v10);
      return;
    }

    WebCore::CredentialBase::CredentialBase(&v18);
    cf = 0;
    v13 = *a4;
    *a4 = 0;
    (*(*v13 + 16))(v13, 3, &v18);
  }

  (*(*v13 + 8))(v13);
  v15 = cf;
  cf = 0;
  if (v15)
  {
    CFRelease(v15);
  }

  v16 = *(&v18 + 1);
  *(&v18 + 1) = 0;
  if (v16 && atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v16, v14);
  }

  v17 = v18;
  *&v18 = 0;
  if (v17 && atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v17, v14);
  }
}

void WebKit::NetworkProcessProxy::dataTaskWillPerformHTTPRedirection(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v18 = *MEMORY[0x1E69E9840];
  if ((a2 - 1) >= 0xFFFFFFFFFFFFFFFELL)
  {
    v13 = qword_1ED6416C8;
    if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_FAULT))
    {
      v16 = 136446210;
      v17 = "void WebKit::NetworkProcessProxy::dataTaskWillPerformHTTPRedirection(DataTaskIdentifier, WebCore::ResourceResponse &&, WebCore::ResourceRequest &&, CompletionHandler<void (BOOL)> &&)";
      _os_log_fault_impl(&dword_19D52D000, v13, OS_LOG_TYPE_FAULT, "/Library/Caches/com.apple.xbs/Sources/WebKit/Source/WebKit/UIProcess/Network/NetworkProcessProxy.cpp 408: Invalid message dispatched %{public}s", &v16, 0xCu);
    }

    v14 = *(a1 + 88);
    if (!v14 || (*(v14 + 94) = 1, IPC::s_shouldCrashOnMessageCheckFailure == 1))
    {
      __break(0xC471u);
      JUMPOUT(0x19E118940);
    }

    v15 = *a5;
    *a5 = 0;
    (*(*v15 + 16))(v15, 0);
    (*(*v15 + 8))(v15);
  }

  else
  {
    v9 = WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<API::DataTask,WTF::RawPtrTraits<API::DataTask>,WTF::DefaultRefDerefTraits<API::DataTask>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<API::DataTask,WTF::RawPtrTraits<API::DataTask>,WTF::DefaultRefDerefTraits<API::DataTask>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<API::DataTask,WTF::RawPtrTraits<API::DataTask>,WTF::DefaultRefDerefTraits<API::DataTask>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<API::DataTask,WTF::RawPtrTraits<API::DataTask>,WTF::DefaultRefDerefTraits<API::DataTask>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>((a1 + 560), a2);
    if (v9)
    {
      v10 = v9;
      CFRetain(*(v9 + 8));
      v11 = *(v10 + 96);
      ++v11[2];
      (*(*v11 + 24))(v11, v10, a3, a4, a5);
      if (v11[2] == 1)
      {
        (*(*v11 + 8))(v11);
      }

      else
      {
        --v11[2];
      }

      v12 = *(v10 + 8);

      CFRelease(v12);
    }
  }
}

void WebKit::NetworkProcessProxy::dataTaskDidReceiveResponse(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v18 = *MEMORY[0x1E69E9840];
  if ((a2 - 1) >= 0xFFFFFFFFFFFFFFFELL)
  {
    v11 = qword_1ED6416C8;
    if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_FAULT))
    {
      v16 = 136446210;
      v17 = "void WebKit::NetworkProcessProxy::dataTaskDidReceiveResponse(DataTaskIdentifier, WebCore::ResourceResponse &&, CompletionHandler<void (BOOL)> &&)";
      _os_log_fault_impl(&dword_19D52D000, v11, OS_LOG_TYPE_FAULT, "/Library/Caches/com.apple.xbs/Sources/WebKit/Source/WebKit/UIProcess/Network/NetworkProcessProxy.cpp 415: Invalid message dispatched %{public}s", &v16, 0xCu);
    }

    v12 = *(a1 + 88);
    if (!v12 || (*(v12 + 94) = 1, IPC::s_shouldCrashOnMessageCheckFailure == 1))
    {
      __break(0xC471u);
      JUMPOUT(0x19E118C18);
    }

    v13 = *a4;
    *a4 = 0;
    (*(*v13 + 16))(v13, 0);
    (*(*v13 + 8))(v13);
  }

  else
  {
    v7 = WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<API::DataTask,WTF::RawPtrTraits<API::DataTask>,WTF::DefaultRefDerefTraits<API::DataTask>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<API::DataTask,WTF::RawPtrTraits<API::DataTask>,WTF::DefaultRefDerefTraits<API::DataTask>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<API::DataTask,WTF::RawPtrTraits<API::DataTask>,WTF::DefaultRefDerefTraits<API::DataTask>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<API::DataTask,WTF::RawPtrTraits<API::DataTask>,WTF::DefaultRefDerefTraits<API::DataTask>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>((a1 + 560), a2);
    if (v7)
    {
      v8 = v7;
      CFRetain(*(v7 + 8));
      v9 = *(v8 + 96);
      ++v9[2];
      (*(*v9 + 32))(v9, v8, a3, a4);
      if (v9[2] == 1)
      {
        (*(*v9 + 8))(v9);
      }

      else
      {
        --v9[2];
      }

      v10 = *(v8 + 8);

      CFRelease(v10);
    }

    else
    {
      v14 = *a4;
      *a4 = 0;
      (*(*v14 + 16))(v14, 0);
      v15 = *(*v14 + 8);

      v15(v14);
    }
  }
}

void WebKit::NetworkProcessProxy::dataTaskDidReceiveData(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15 = *MEMORY[0x1E69E9840];
  if ((a2 - 1) >= 0xFFFFFFFFFFFFFFFELL)
  {
    v11 = qword_1ED6416C8;
    if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_FAULT))
    {
      v13 = 136446210;
      v14 = "void WebKit::NetworkProcessProxy::dataTaskDidReceiveData(DataTaskIdentifier, std::span<const uint8_t>)";
      _os_log_fault_impl(&dword_19D52D000, v11, OS_LOG_TYPE_FAULT, "/Library/Caches/com.apple.xbs/Sources/WebKit/Source/WebKit/UIProcess/Network/NetworkProcessProxy.cpp 424: Invalid message dispatched %{public}s", &v13, 0xCu);
    }

    v12 = *(a1 + 88);
    if (!v12 || (*(v12 + 94) = 1, IPC::s_shouldCrashOnMessageCheckFailure == 1))
    {
      __break(0xC471u);
      JUMPOUT(0x19E118E00);
    }
  }

  else
  {
    v7 = WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<API::DataTask,WTF::RawPtrTraits<API::DataTask>,WTF::DefaultRefDerefTraits<API::DataTask>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<API::DataTask,WTF::RawPtrTraits<API::DataTask>,WTF::DefaultRefDerefTraits<API::DataTask>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<API::DataTask,WTF::RawPtrTraits<API::DataTask>,WTF::DefaultRefDerefTraits<API::DataTask>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<API::DataTask,WTF::RawPtrTraits<API::DataTask>,WTF::DefaultRefDerefTraits<API::DataTask>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>((a1 + 560), a2);
    if (v7)
    {
      v8 = v7;
      CFRetain(*(v7 + 8));
      v9 = *(v8 + 96);
      ++v9[2];
      (*(*v9 + 40))(v9, v8, a3, a4);
      if (v9[2] == 1)
      {
        (*(*v9 + 8))(v9);
      }

      else
      {
        --v9[2];
      }

      v10 = *(v8 + 8);

      CFRelease(v10);
    }
  }
}

void WebKit::NetworkProcessProxy::dataTaskDidCompleteWithError(uint64_t a1, uint64_t a2, void *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v13 = a2;
  if ((a2 - 1) >= 0xFFFFFFFFFFFFFFFELL)
  {
    v11 = qword_1ED6416C8;
    if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_FAULT))
    {
      *buf = 136446210;
      v15 = "void WebKit::NetworkProcessProxy::dataTaskDidCompleteWithError(DataTaskIdentifier, WebCore::ResourceError &&)";
      _os_log_fault_impl(&dword_19D52D000, v11, OS_LOG_TYPE_FAULT, "/Library/Caches/com.apple.xbs/Sources/WebKit/Source/WebKit/UIProcess/Network/NetworkProcessProxy.cpp 431: Invalid message dispatched %{public}s", buf, 0xCu);
    }

    v12 = *(a1 + 88);
    if (!v12 || (*(v12 + 94) = 1, IPC::s_shouldCrashOnMessageCheckFailure == 1))
    {
      __break(0xC471u);
      JUMPOUT(0x19E118F40);
    }
  }

  else
  {
    v5 = (a1 + 560);
    v6 = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<API::DataTask,WTF::RawPtrTraits<API::DataTask>,WTF::DefaultRefDerefTraits<API::DataTask>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<API::DataTask,WTF::RawPtrTraits<API::DataTask>,WTF::DefaultRefDerefTraits<API::DataTask>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<API::DataTask,WTF::RawPtrTraits<API::DataTask>,WTF::DefaultRefDerefTraits<API::DataTask>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<API::DataTask,WTF::RawPtrTraits<API::DataTask>,WTF::DefaultRefDerefTraits<API::DataTask>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<API::DataTask,WTF::RawPtrTraits<API::DataTask>,WTF::DefaultRefDerefTraits<API::DataTask>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<API::DataTask,WTF::RawPtrTraits<API::DataTask>,WTF::DefaultRefDerefTraits<API::DataTask>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>((a1 + 560), &v13);
    v7 = *(a1 + 560);
    if (v7)
    {
      v8 = (v7 + 16 * *(v7 - 4));
    }

    else
    {
      v8 = 0;
    }

    if (v8 != v6)
    {
      v9 = v6[1];
      if (v9)
      {
        v6[1] = 0;
        v7 = *v5;
      }

      if (v7)
      {
        v10 = (v7 + 16 * *(v7 - 4));
        if (v10 == v6)
        {
LABEL_15:
          if (v9)
          {
            API::DataTask::didCompleteWithError(v9, a3);
            CFRelease(*(v9 + 8));
          }

          return;
        }
      }

      else
      {
        if (!v6)
        {
          goto LABEL_15;
        }

        v10 = 0;
      }

      if (v10 != v6)
      {
        WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::NavigationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::NavigationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<API::Navigation,WTF::RawPtrTraits<API::Navigation>,WTF::DefaultRefDerefTraits<API::Navigation>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::NavigationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<API::Navigation,WTF::RawPtrTraits<API::Navigation>,WTF::DefaultRefDerefTraits<API::Navigation>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::NavigationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::NavigationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<API::Navigation,WTF::RawPtrTraits<API::Navigation>,WTF::DefaultRefDerefTraits<API::Navigation>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::NavigationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::NavigationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RefPtr<API::Navigation,WTF::RawPtrTraits<API::Navigation>,WTF::DefaultRefDerefTraits<API::Navigation>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::NavigationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::remove(v5, v6);
      }

      goto LABEL_15;
    }
  }
}

uint64_t WebKit::NetworkProcessProxy::cancelDataTask(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v18 = a2;
  v5 = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<API::DataTask,WTF::RawPtrTraits<API::DataTask>,WTF::DefaultRefDerefTraits<API::DataTask>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<API::DataTask,WTF::RawPtrTraits<API::DataTask>,WTF::DefaultRefDerefTraits<API::DataTask>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<API::DataTask,WTF::RawPtrTraits<API::DataTask>,WTF::DefaultRefDerefTraits<API::DataTask>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<API::DataTask,WTF::RawPtrTraits<API::DataTask>,WTF::DefaultRefDerefTraits<API::DataTask>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<API::DataTask,WTF::RawPtrTraits<API::DataTask>,WTF::DefaultRefDerefTraits<API::DataTask>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<API::DataTask,WTF::RawPtrTraits<API::DataTask>,WTF::DefaultRefDerefTraits<API::DataTask>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>((a1 + 560), &v18);
  v6 = v5;
  v7 = *(a1 + 560);
  if (v7)
  {
    v8 = (v7 + 16 * *(v7 - 4));
    if (v8 == v5)
    {
      goto LABEL_8;
    }
  }

  else
  {
    if (!v5)
    {
      goto LABEL_8;
    }

    v8 = 0;
  }

  if (v8 != v5)
  {
    WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::NavigationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::NavigationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<API::Navigation,WTF::RawPtrTraits<API::Navigation>,WTF::DefaultRefDerefTraits<API::Navigation>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::NavigationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<API::Navigation,WTF::RawPtrTraits<API::Navigation>,WTF::DefaultRefDerefTraits<API::Navigation>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::NavigationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::NavigationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<API::Navigation,WTF::RawPtrTraits<API::Navigation>,WTF::DefaultRefDerefTraits<API::Navigation>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::NavigationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::NavigationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RefPtr<API::Navigation,WTF::RawPtrTraits<API::Navigation>,WTF::DefaultRefDerefTraits<API::Navigation>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::NavigationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::remove((a1 + 560), v5);
  }

LABEL_8:
  v9 = IPC::Encoder::operator new(0x238, v6);
  *v9 = 579;
  *(v9 + 68) = 0;
  *(v9 + 70) = 0;
  *(v9 + 69) = 0;
  *(v9 + 2) = 0;
  *(v9 + 3) = 0;
  *(v9 + 1) = 0;
  IPC::Encoder::encodeHeader(v9);
  v21 = v9;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v9, v18);
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v9, a3);
  v10 = WTF::fastMalloc(0x10);
  *v10 = &unk_1F111F680;
  if (WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1)
  {
    result = 141;
    __break(0xC471u);
  }

  else
  {
    v11 = v10;
    IdentifierInternal = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
    v19[0] = v11;
    v19[1] = IdentifierInternal;
    v20 = 1;
    WebKit::AuxiliaryProcessProxy::sendMessage(a1, &v21, 0, v19, 1);
    if (v20 == 1)
    {
      v14 = v19[0];
      v19[0] = 0;
      if (v14)
      {
        (*(*v14 + 8))(v14);
      }
    }

    result = v21;
    v21 = 0;
    if (result)
    {
      IPC::Encoder::~Encoder(result, v13);
      return bmalloc::api::tzoneFree(v16, v17);
    }
  }

  return result;
}

uint64_t WebKit::AuxiliaryProcessProxy::sendWithAsyncReply<Messages::NetworkProcess::FetchWebsiteData,WTF::CompletionHandler<void ()(WebKit::WebsiteData)>>(uint64_t a1, void **a2, uint64_t *a3, uint64_t a4, char a5, int a6)
{
  v12 = IPC::Encoder::operator new(0x238, a2);
  *v12 = 610;
  *(v12 + 2) = 0;
  *(v12 + 3) = 0;
  *(v12 + 1) = a4;
  *(v12 + 68) = 0;
  *(v12 + 70) = 0;
  *(v12 + 69) = 0;
  IPC::Encoder::encodeHeader(v12);
  v26 = v12;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v12, **a2);
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v12, *a2[1]);
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(v12, *a2[2]);
  v13 = *a3;
  *a3 = 0;
  v14 = WTF::fastMalloc(0x10);
  *v14 = &unk_1F111F6A8;
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

uint64_t WebKit::AuxiliaryProcessProxy::sendWithAsyncReply<Messages::NetworkProcess::DeleteWebsiteData,WTF::CompletionHandler<void ()(void)>>(uint64_t a1, void **a2, uint64_t *a3, uint64_t a4, char a5, int a6)
{
  v12 = IPC::Encoder::operator new(0x238, a2);
  *v12 = 597;
  *(v12 + 2) = 0;
  *(v12 + 3) = 0;
  *(v12 + 1) = a4;
  *(v12 + 68) = 0;
  *(v12 + 70) = 0;
  *(v12 + 69) = 0;
  IPC::Encoder::encodeHeader(v12);
  v36 = v12;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v12, **a2);
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v12, *a2[1]);
  IPC::ArgumentCoder<double,void>::encode<IPC::Encoder>(v12, *a2[2]);
  v13 = a2[3];
  if (*v13)
  {
    v14 = *(*v13 - 12);
  }

  else
  {
    v14 = 0;
  }

  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v12, v14);
  v15 = *v13;
  if (!*v13)
  {
    v17 = 0;
    v16 = 0;
LABEL_14:
    v19 = v17;
    v17 = &v15[v16];
    if (v15)
    {
      goto LABEL_12;
    }

LABEL_15:
    v21 = 0;
    goto LABEL_18;
  }

  v16 = *(v15 - 1);
  v17 = &v15[v16];
  if (!*(v15 - 3))
  {
    goto LABEL_14;
  }

  if (!v16)
  {
    v20 = 0;
    v19 = v15;
    goto LABEL_17;
  }

  v18 = 8 * v16;
  v19 = v15;
  while ((*v19 + 1) <= 1)
  {
    ++v19;
    v18 -= 8;
    if (!v18)
    {
      v19 = v17;
      break;
    }
  }

  if (!v15)
  {
    goto LABEL_15;
  }

LABEL_12:
  v20 = *(v15 - 1);
LABEL_17:
  v21 = &v15[v20];
LABEL_18:
  while (v19 != v21)
  {
    v22 = *v19++;
    IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v12, v22);
    while (v19 != v17 && (*v19 + 1) <= 1)
    {
      ++v19;
    }
  }

  v23 = *a3;
  *a3 = 0;
  v24 = WTF::fastMalloc(0x10);
  *v24 = &unk_1F111F6D0;
  v24[1] = v23;
  if (WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1)
  {
    result = 141;
    __break(0xC471u);
  }

  else
  {
    v25 = v24;
    IdentifierInternal = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
    v34[0] = v25;
    v34[1] = IdentifierInternal;
    v35 = 1;
    v28 = WebKit::AuxiliaryProcessProxy::sendMessage(a1, &v36, a5, v34, a6);
    if (v35 == 1)
    {
      v29 = v34[0];
      v34[0] = 0;
      if (v29)
      {
        (*(*v29 + 8))(v29);
      }
    }

    v30 = v36;
    v36 = 0;
    if (v30)
    {
      IPC::Encoder::~Encoder(v30, v27);
      bmalloc::api::tzoneFree(v32, v33);
    }

    if (v28)
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

uint64_t WebKit::AuxiliaryProcessProxy::sendWithAsyncReply<Messages::NetworkProcess::DeleteWebsiteDataForOrigins,WTF::CompletionHandler<void ()(void)>>(uint64_t a1, void **a2, uint64_t *a3, uint64_t a4, char a5, int a6)
{
  v12 = IPC::Encoder::operator new(0x238, a2);
  *v12 = 598;
  *(v12 + 2) = 0;
  *(v12 + 3) = 0;
  *(v12 + 1) = a4;
  *(v12 + 68) = 0;
  *(v12 + 70) = 0;
  *(v12 + 69) = 0;
  IPC::Encoder::encodeHeader(v12);
  v26 = v12;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v12, **a2);
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v12, *a2[1]);
  IPC::VectorArgumentCoder<false,WebCore::SecurityOriginData,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WebCore::SecurityOriginData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(v12, a2[2]);
  IPC::VectorArgumentCoder<false,WTF::String,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(v12, a2[3]);
  IPC::VectorArgumentCoder<false,WTF::String,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(v12, a2[4]);
  IPC::VectorArgumentCoder<false,WTF::String,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(v12, a2[5]);
  v13 = *a3;
  *a3 = 0;
  v14 = WTF::fastMalloc(0x10);
  *v14 = &unk_1F111F6F8;
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

uint64_t WebKit::AuxiliaryProcessProxy::sendWithAsyncReply<Messages::NetworkProcess::RenameOriginInWebsiteData,WTF::CompletionHandler<void ()(void)>>(uint64_t a1, void **a2, uint64_t *a3, uint64_t a4, char a5, int a6)
{
  v12 = IPC::Encoder::operator new(0x238, a2);
  *v12 = 653;
  *(v12 + 2) = 0;
  *(v12 + 3) = 0;
  *(v12 + 1) = a4;
  *(v12 + 68) = 0;
  *(v12 + 70) = 0;
  *(v12 + 69) = 0;
  IPC::Encoder::encodeHeader(v12);
  v26 = v12;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v12, **a2);
  IPC::ArgumentCoder<WebCore::SecurityOriginData,void>::encode(v12, a2[1]);
  IPC::ArgumentCoder<WebCore::SecurityOriginData,void>::encode(v12, a2[2]);
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v12, *a2[3]);
  v13 = *a3;
  *a3 = 0;
  v14 = WTF::fastMalloc(0x10);
  *v14 = &unk_1F111F720;
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

uint64_t WebKit::AuxiliaryProcessProxy::sendWithAsyncReply<Messages::NetworkProcess::WebsiteDataOriginDirectoryForTesting,WTF::CompletionHandler<void ()(WTF::String const&)>>(uint64_t a1, void **a2, uint64_t *a3, uint64_t a4, char a5, int a6)
{
  v12 = IPC::Encoder::operator new(0x238, a2);
  *v12 = 733;
  *(v12 + 2) = 0;
  *(v12 + 3) = 0;
  *(v12 + 1) = a4;
  *(v12 + 68) = 0;
  *(v12 + 70) = 0;
  *(v12 + 69) = 0;
  IPC::Encoder::encodeHeader(v12);
  v26 = v12;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v12, **a2);
  IPC::ArgumentCoder<WebCore::ClientOrigin,void>::encode(v12, a2[1]);
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v12, *a2[2]);
  v13 = *a3;
  *a3 = 0;
  v14 = WTF::fastMalloc(0x10);
  *v14 = &unk_1F111F748;
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

uint64_t WebKit::LegacyCustomProtocolManagerProxy::invalidate(WebKit::LegacyCustomProtocolManagerProxy *this)
{
  v1 = *(*(this + 2) + 8);
  if (v1)
  {
    v2 = (v1 + 16);
    atomic_fetch_add((v1 + 16), 1u);
    (*(**(v1 + 424) + 32))(*(v1 + 424), this);

    return WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref(v2);
  }

  else
  {
    result = 103;
    __break(0xC471u);
  }

  return result;
}

uint64_t *std::optional<WebKit::NetworkProcessProxy::UploadActivity>::operator=[abi:sn200100](uint64_t *a1, void *a2)
{
  if (*(a1 + 24) == 1)
  {
    v3 = a1[2];
    if (v3)
    {
      WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::ProcessAssertion,WTF::RawPtrTraits<WebKit::ProcessAssertion>,WTF::DefaultRefDerefTraits<WebKit::ProcessAssertion>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::ProcessAssertion,WTF::RawPtrTraits<WebKit::ProcessAssertion>,WTF::DefaultRefDerefTraits<WebKit::ProcessAssertion>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::ProcessAssertion,WTF::RawPtrTraits<WebKit::ProcessAssertion>,WTF::DefaultRefDerefTraits<WebKit::ProcessAssertion>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RefPtr<WebKit::ProcessAssertion,WTF::RawPtrTraits<WebKit::ProcessAssertion>,WTF::DefaultRefDerefTraits<WebKit::ProcessAssertion>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::deallocateTable(v3, a2);
    }

    v4 = a1[1];
    a1[1] = 0;
    if (v4)
    {
      WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::ProcessAssertion,(WTF::DestructionThread)0>::deref((v4 + 8), a2);
    }

    v5 = *a1;
    *a1 = 0;
    if (v5)
    {
      WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::ProcessAssertion,(WTF::DestructionThread)0>::deref((v5 + 8), a2);
    }

    *(a1 + 24) = 0;
  }

  return a1;
}

atomic_uint *WebKit::NetworkProcessProxy::didClose(WebKit::NetworkProcessProxy *this, IPC::Connection *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = qword_1ED6416A0;
  if (os_log_type_enabled(qword_1ED6416A0, OS_LOG_TYPE_ERROR))
  {
    v6 = *(a2 + 43);
    if (v6)
    {
      LODWORD(v6) = xpc_connection_get_pid(v6);
    }

    v7 = 134218240;
    v8 = this;
    v9 = 1024;
    v10 = v6;
    _os_log_error_impl(&dword_19D52D000, v4, OS_LOG_TYPE_ERROR, "%p - NetworkProcessProxy::didClose (Network Process %d crash)", &v7, 0x12u);
  }

  return WebKit::NetworkProcessProxy::networkProcessDidTerminate(this, 5);
}

atomic_uint *WebKit::NetworkProcessProxy::didReceiveInvalidMessage(WebKit::NetworkProcessProxy *a1, uint64_t a2, unsigned int a3)
{
  WebKit::AuxiliaryProcessProxy::logInvalidMessage(a1, a2, a3);
  WebKit::NetworkProcessProxy::terminate(a1);

  return WebKit::NetworkProcessProxy::networkProcessDidTerminate(a1, 5);
}

atomic_uint *non-virtual thunk toWebKit::NetworkProcessProxy::didReceiveInvalidMessage(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v3 = (a1 - 32);
  WebKit::AuxiliaryProcessProxy::logInvalidMessage((a1 - 32), a2, a3);
  WebKit::NetworkProcessProxy::terminate(v3);

  return WebKit::NetworkProcessProxy::networkProcessDidTerminate(v3, 5);
}

uint64_t WebKit::NetworkProcessProxy::didReceiveAuthenticationChallenge(uint64_t a1, WTF::StringImpl *a2, uint64_t a3, uint64_t a4, WebCore::AuthenticationChallengeBase *this, int a6, uint64_t a7)
{
  v45 = 0;
  v14 = WebCore::AuthenticationChallengeBase::protectionSpace(this);
  if (*(v14 + 21) == 7)
  {
    v41 = a2;
    v15 = WebKit::allDataStores(v14);
    v16 = WTF::HashMap<PAL::SessionID,WTF::WeakRef<WebKit::WebsiteDataStore,WTF::DefaultWeakPtrImpl>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<WTF::WeakRef<WebKit::WebsiteDataStore,WTF::DefaultWeakPtrImpl>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,WTF::WeakRef<WebKit::WebsiteDataStore,WTF::DefaultWeakPtrImpl>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<WTF::WeakRef<WebKit::WebsiteDataStore,WTF::DefaultWeakPtrImpl>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>(v15, &v41);
    if (v16)
    {
      v17 = v16;
      CFRetain(*(v16 + 8));
      v18 = WTF::fastMalloc(0x18);
      *v18 = 0;
      v18[1] = 0;
      v18[2] = 0;
      *(v18 + 2) = 1;
      v41 = v18;
      v20 = WTF::fastCompactMalloc(0x10);
      *v20 = 1;
      *(v20 + 8) = v18;
      v21 = *v18;
      *v18 = v20;
      if (v21 && atomic_fetch_add(v21, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v21);
        WTF::fastFree(v21, v19);
      }

      v22 = *v18;
      atomic_fetch_add(*v18, 1u);
      v23 = v45;
      v45 = v22;
      if (v23 && atomic_fetch_add(v23, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v23);
        WTF::fastFree(v23, v19);
      }

      WebKit::WebsiteDataStore::addSecKeyProxyStore(v17, &v41);
      v25 = v41;
      v41 = 0;
      if (v25)
      {
        WTF::RefCounted<WebKit::SecKeyProxyStore>::deref(v25 + 8, v24);
      }

      CFRelease(*(v17 + 8));
    }
  }

  v26 = *(a1 + 88);
  if (!v26)
  {
    result = 139;
    __break(0xC471u);
    return result;
  }

  while (1)
  {
    v27 = *v26;
    if ((*v26 & 1) == 0)
    {
      break;
    }

    v28 = *v26;
    atomic_compare_exchange_strong_explicit(v26, &v28, v27 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v28 == v27)
    {
      goto LABEL_17;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v26);
LABEL_17:
  v41 = v26;
  v29 = API::Object::newObject(0x1E0uLL, 2);
  v44 = WebKit::AuthenticationChallengeProxy::AuthenticationChallengeProxy(v29, this, a7, &v41, &v45);
  if (v41)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v41);
  }

  WebKit::WebProcessProxy::webPage(a3, &v41);
  v30 = v41;
  if (!v41)
  {
    if (*(a4 + 32))
    {
      WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::initializeIfNeeded((a1 + 8), a1);
      v32 = *(a1 + 8);
      atomic_fetch_add(v32, 1u);
      v33 = v44;
      v34 = WTF::fastMalloc(0x28);
      *v34 = &unk_1F111F770;
      *(v34 + 8) = v32;
      *(v34 + 16) = a2;
      *(v34 + 24) = v33;
      *(v34 + 32) = a6;
      v41 = v34;
      WebKit::WebPageProxy::forMostVisibleWebPageIfAny(a2, a4, &v41);
      if (v41)
      {
        (*(*v41 + 8))(v41);
      }

      goto LABEL_35;
    }

    v35 = *(v29 + 472);
    WebCore::CredentialBase::CredentialBase(&v41);
    cf = 0;
    WebKit::AuthenticationDecisionListener::completeChallenge(v35);
    v37 = cf;
    cf = 0;
    if (v37)
    {
      CFRelease(v37);
    }

    v38 = v42;
    v42 = 0;
    if (v38 && atomic_fetch_add_explicit(v38, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v38, v36);
    }

    v39 = v41;
    v41 = 0;
    if (v39 && atomic_fetch_add_explicit(v39, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v39, v36);
    }

    v44 = 0;
    goto LABEL_34;
  }

  WebKit::WebPageProxy::didReceiveAuthenticationChallengeProxy(v41, &v44, a6);
  CFRelease(*(v30 + 1));
  if (v29)
  {
LABEL_34:
    CFRelease(*(v29 + 8));
  }

LABEL_35:
  result = v45;
  v45 = 0;
  if (result)
  {
    if (atomic_fetch_add(result, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, result);
      return WTF::fastFree(result, v31);
    }
  }

  return result;
}

void WebKit::NetworkProcessProxy::negotiatedLegacyTLS(uint64_t a1, uint64_t a2)
{
  WebKit::WebProcessProxy::webPage(a2, &v4);
  v2 = v4;
  if (v4)
  {
    WebKit::WebPageProxy::negotiatedLegacyTLS(v4);
    v3 = *(v2 + 1);

    CFRelease(v3);
  }
}

void WebKit::NetworkProcessProxy::didNegotiateModernTLS(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WebKit::WebProcessProxy::webPage(a2, &v6);
  v4 = v6;
  if (v6)
  {
    (*(**(v6 + 88) + 232))(*(v6 + 88), a3);
    v5 = *(v4 + 8);

    CFRelease(v5);
  }
}

void WebKit::NetworkProcessProxy::didBlockLoadToKnownTracker(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WebKit::WebProcessProxy::webPage(a2, &v6);
  v4 = v6;
  if (v6)
  {
    (*(**(v6 + 88) + 120))(*(v6 + 88), v6, a3);
    v5 = *(v4 + 8);

    CFRelease(v5);
  }
}

void WebKit::NetworkProcessProxy::triggerBrowsingContextGroupSwitchForNavigation(uint64_t a1, uint64_t a2, uint64_t a3, int a4, atomic_uint **a5, uint64_t a6, uint64_t *a7)
{
  v26 = *MEMORY[0x1E69E9840];
  v14 = qword_1ED641058;
  if (os_log_type_enabled(qword_1ED641058, OS_LOG_TYPE_DEFAULT))
  {
    *v17 = 134219008;
    *&v17[4] = a1;
    v18 = 2048;
    v19 = a2;
    v20 = 2048;
    v21 = a3;
    v22 = 1024;
    v23 = a4;
    v24 = 2048;
    v25 = a6;
    _os_log_impl(&dword_19D52D000, v14, OS_LOG_TYPE_DEFAULT, "%p - NetworkProcessProxy::triggerBrowsingContextGroupSwitchForNavigation: pageID=%llu, navigationID=%llu, browsingContextGroupSwitchDecision=%u, existingNetworkResourceLoadIdentifierToResume=%llu", v17, 0x30u);
  }

  WebKit::WebProcessProxy::webPage(a2, v17);
  v15 = *v17;
  if (*v17)
  {
    WebKit::WebPageProxy::triggerBrowsingContextGroupSwitchForNavigation(*v17, a3, a4, a5, a6, a7);
    CFRelease(*(v15 + 8));
  }

  else
  {
    v16 = *a7;
    *a7 = 0;
    (*(*v16 + 16))(v16, 0);
    (*(*v16 + 8))(v16);
  }
}

void WebKit::NetworkProcessProxy::didFinishLaunching(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v6 = qword_1ED6416A0;
  if (os_log_type_enabled(qword_1ED6416A0, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 134217984;
    v9 = a1;
    _os_log_impl(&dword_19D52D000, v6, OS_LOG_TYPE_DEFAULT, "%p - NetworkProcessProxy::didFinishLaunching", &v8, 0xCu);
  }

  v7 = *a3 - 1;
  WebKit::AuxiliaryProcessProxy::didFinishLaunching(a1, a2, a3);
  if (v7 >= 0xFFFFFFFE)
  {
    WebKit::NetworkProcessProxy::networkProcessDidTerminate(a1, 5);
  }
}

void WebKit::NetworkProcessProxy::logDiagnosticMessage(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  WebKit::WebProcessProxy::webPage(a2, &v10);
  v8 = v10;
  if (v10)
  {
    WebKit::WebPageProxy::logDiagnosticMessage(v10, a3, a4, a5);
    v9 = *(v8 + 1);

    CFRelease(v9);
  }
}

atomic_uint *WebKit::NetworkProcessProxy::terminateWebProcess(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  {
    WebKit::WebProcessProxy::allProcessMap(void)::map = 0;
  }

  result = WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::CheckedRef<WebKit::WebProcessProxy,WTF::RawPtrTraits<WebKit::WebProcessProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::CheckedRef<WebKit::WebProcessProxy,WTF::RawPtrTraits<WebKit::WebProcessProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::CheckedRef<WebKit::WebProcessProxy,WTF::RawPtrTraits<WebKit::WebProcessProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::CheckedRef<WebKit::WebProcessProxy,WTF::RawPtrTraits<WebKit::WebProcessProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(&WebKit::WebProcessProxy::allProcessMap(void)::map, &v4);
  if (result)
  {
    v3 = result + 4;
    atomic_fetch_add(result + 4, 1u);
    WebKit::WebProcessProxy::requestTermination(result, 8);
    return WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref(v3);
  }

  return result;
}

atomic_uint *WebKit::NetworkProcessProxy::processHasUnresponseServiceWorker(uint64_t a1, uint64_t a2)
{
  v5 = a2;
  {
    WebKit::WebProcessProxy::allProcessMap(void)::map = 0;
  }

  result = WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::CheckedRef<WebKit::WebProcessProxy,WTF::RawPtrTraits<WebKit::WebProcessProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::CheckedRef<WebKit::WebProcessProxy,WTF::RawPtrTraits<WebKit::WebProcessProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::CheckedRef<WebKit::WebProcessProxy,WTF::RawPtrTraits<WebKit::WebProcessProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::CheckedRef<WebKit::WebProcessProxy,WTF::RawPtrTraits<WebKit::WebProcessProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(&WebKit::WebProcessProxy::allProcessMap(void)::map, &v5);
  if (result)
  {
    v3 = result;
    v4 = result + 4;
    atomic_fetch_add(result + 4, 1u);
    WebKit::WebProcessProxy::endServiceWorkerBackgroundProcessing(result);
    WebKit::WebProcessProxy::disableRemoteWorkers(v3, 1);
    return WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref(v4);
  }

  return result;
}

uint64_t WebKit::AuxiliaryProcessProxy::sendWithAsyncReply<Messages::NetworkProcess::TerminateIdleServiceWorkers,WTF::CompletionHandler<void ()(void)>>(uint64_t a1, void **a2, uint64_t *a3, uint64_t a4, char a5, int a6)
{
  v12 = IPC::Encoder::operator new(0x238, a2);
  *v12 = 728;
  *(v12 + 2) = 0;
  *(v12 + 3) = 0;
  *(v12 + 1) = a4;
  *(v12 + 68) = 0;
  *(v12 + 70) = 0;
  *(v12 + 69) = 0;
  IPC::Encoder::encodeHeader(v12);
  v26 = v12;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v12, **a2);
  v13 = *a3;
  *a3 = 0;
  v14 = WTF::fastMalloc(0x10);
  *v14 = &unk_1F111F798;
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

void WebKit::NetworkProcessProxy::logDiagnosticMessageWithResult(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  WebKit::WebProcessProxy::webPage(a2, &v12);
  v10 = v12;
  if (v12)
  {
    WebKit::WebPageProxy::logDiagnosticMessageWithResult(v12, a3, a4, a5, a6);
    v11 = *(v10 + 1);

    CFRelease(v11);
  }
}

void WebKit::NetworkProcessProxy::logDiagnosticMessageWithValue(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  WebKit::WebProcessProxy::webPage(a2, &v12);
  v10 = v12;
  if (v12)
  {
    WebKit::WebPageProxy::logDiagnosticMessageWithValue(v12, a3, a4, a5, a6);
    v11 = *(v10 + 1);

    CFRelease(v11);
  }
}

void WebKit::NetworkProcessProxy::resourceLoadDidSendRequest(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4, uint64_t a5)
{
  WebKit::WebProcessProxy::webPage(a2, &v11);
  v8 = v11;
  if (v11)
  {
    if (*(a5 + 8) == 1)
    {
      v9 = *a5;
      *a5 = 0;
      v10 = v9;
      WebCore::ResourceRequestBase::setHTTPBody();
      if (v10)
      {
        WTF::RefCounted<WebCore::FormData>::deref(v10);
      }
    }

    WebKit::WebPageProxy::resourceLoadDidSendRequest(v8, a3, a4);
    CFRelease(*(v8 + 8));
  }
}

void WebKit::NetworkProcessProxy::resourceLoadDidPerformHTTPRedirection(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4, uint64_t a5)
{
  WebKit::WebProcessProxy::webPage(a2, &v10);
  v8 = v10;
  if (v10)
  {
    WebKit::WebPageProxy::resourceLoadDidPerformHTTPRedirection(v10, a3, a4, a5);
    v9 = v8[1];

    CFRelease(v9);
  }
}

void WebKit::NetworkProcessProxy::resourceLoadDidReceiveChallenge(uint64_t a1, uint64_t a2, __int128 *a3, id *a4)
{
  WebKit::WebProcessProxy::webPage(a2, &v8);
  v6 = v8;
  if (v8)
  {
    WebKit::WebPageProxy::resourceLoadDidReceiveChallenge(v8, a3, a4);
    v7 = v6[1];

    CFRelease(v7);
  }
}

void WebKit::NetworkProcessProxy::resourceLoadDidReceiveResponse(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4)
{
  WebKit::WebProcessProxy::webPage(a2, &v8);
  v6 = v8;
  if (v8)
  {
    WebKit::WebPageProxy::resourceLoadDidReceiveResponse(v8, a3, a4);
    v7 = v6[1];

    CFRelease(v7);
  }
}

void WebKit::NetworkProcessProxy::resourceLoadDidCompleteWithError(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4, uint64_t a5)
{
  WebKit::WebProcessProxy::webPage(a2, &v10);
  v8 = v10;
  if (v10)
  {
    WebKit::WebPageProxy::resourceLoadDidCompleteWithError(v10, a3, a4, a5);
    v9 = v8[1];

    CFRelease(v9);
  }
}

void WebKit::NetworkProcessProxy::didAllowPrivateTokenUsageByThirdPartyForTesting(WebKit *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = a2;
  v6 = WebKit::allDataStores(a1);
  v7 = WTF::HashMap<PAL::SessionID,WTF::WeakRef<WebKit::WebsiteDataStore,WTF::DefaultWeakPtrImpl>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<WTF::WeakRef<WebKit::WebsiteDataStore,WTF::DefaultWeakPtrImpl>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,WTF::WeakRef<WebKit::WebsiteDataStore,WTF::DefaultWeakPtrImpl>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<WTF::WeakRef<WebKit::WebsiteDataStore,WTF::DefaultWeakPtrImpl>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>(v6, &v10);
  if (v7)
  {
    v8 = v7;
    CFRetain(*(v7 + 8));
    (*(**(v8 + 416) + 120))(*(v8 + 416), a3, a4);
    v9 = *(v8 + 8);

    CFRelease(v9);
  }
}

WTF::StringImpl *WebKit::NetworkProcessProxy::dumpResourceLoadStatistics(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v8 = a2;
  v3 = *(a1 + 80);
  if (v3 && (*(v3 + 104) & 1) != 0 || *(a1 + 88))
  {
    v6 = &v8;
    return WebKit::AuxiliaryProcessProxy::sendWithAsyncReply<Messages::NetworkProcess::DumpResourceLoadStatistics,WTF::CompletionHandler<void ()(WTF::String)>>(a1, &v6, a3, 0, 0, 1);
  }

  else
  {
    v7 = 0;
    WTF::CompletionHandler<void ()(WTF::String)>::operator()(a3, &v7);
    result = v7;
    v7 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        return WTF::StringImpl::destroy(result, v5);
      }
    }
  }

  return result;
}

uint64_t WebKit::AuxiliaryProcessProxy::sendWithAsyncReply<Messages::NetworkProcess::DumpResourceLoadStatistics,WTF::CompletionHandler<void ()(WTF::String)>>(uint64_t a1, void **a2, uint64_t *a3, uint64_t a4, char a5, int a6)
{
  v12 = IPC::Encoder::operator new(0x238, a2);
  *v12 = 606;
  *(v12 + 2) = 0;
  *(v12 + 3) = 0;
  *(v12 + 1) = a4;
  *(v12 + 68) = 0;
  *(v12 + 70) = 0;
  *(v12 + 69) = 0;
  IPC::Encoder::encodeHeader(v12);
  v26 = v12;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v12, **a2);
  v13 = *a3;
  *a3 = 0;
  v14 = WTF::fastMalloc(0x10);
  *v14 = &unk_1F111F7C0;
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

uint64_t WebKit::NetworkProcessProxy::isPrevalentResource(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v9 = a2;
  v4 = *(a1 + 80);
  if (v4 && (*(v4 + 104) & 1) != 0 || *(a1 + 88))
  {
    v8[0] = &v9;
    v8[1] = a3;
    return WebKit::AuxiliaryProcessProxy::sendWithAsyncReply<Messages::NetworkProcess::IsPrevalentResource,WTF::CompletionHandler<void ()(BOOL)>>(a1, v8, a4, 0, 0, 1);
  }

  else
  {
    v6 = *a4;
    *a4 = 0;
    (*(*v6 + 16))(v6, 0);
    v7 = *(*v6 + 8);

    return v7(v6);
  }
}

uint64_t WebKit::AuxiliaryProcessProxy::sendWithAsyncReply<Messages::NetworkProcess::IsPrevalentResource,WTF::CompletionHandler<void ()(BOOL)>>(uint64_t a1, uint64_t **a2, uint64_t *a3, uint64_t a4, char a5, int a6)
{
  v12 = IPC::Encoder::operator new(0x238, a2);
  *v12 = 628;
  *(v12 + 2) = 0;
  *(v12 + 3) = 0;
  *(v12 + 1) = a4;
  *(v12 + 68) = 0;
  *(v12 + 70) = 0;
  *(v12 + 69) = 0;
  IPC::Encoder::encodeHeader(v12);
  v26 = v12;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v12, **a2);
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v12, a2[1]);
  v13 = *a3;
  *a3 = 0;
  v14 = WTF::fastMalloc(0x10);
  *v14 = &unk_1F111F7E8;
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

uint64_t WebKit::NetworkProcessProxy::isVeryPrevalentResource(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v9 = a2;
  v4 = *(a1 + 80);
  if (v4 && (*(v4 + 104) & 1) != 0 || *(a1 + 88))
  {
    v8[0] = &v9;
    v8[1] = a3;
    return WebKit::AuxiliaryProcessProxy::sendWithAsyncReply<Messages::NetworkProcess::IsVeryPrevalentResource,WTF::CompletionHandler<void ()(BOOL)>>(a1, v8, a4, 0, 0, 1);
  }

  else
  {
    v6 = *a4;
    *a4 = 0;
    (*(*v6 + 16))(v6, 0);
    v7 = *(*v6 + 8);

    return v7(v6);
  }
}

uint64_t WebKit::AuxiliaryProcessProxy::sendWithAsyncReply<Messages::NetworkProcess::IsVeryPrevalentResource,WTF::CompletionHandler<void ()(BOOL)>>(uint64_t a1, uint64_t **a2, uint64_t *a3, uint64_t a4, char a5, int a6)
{
  v12 = IPC::Encoder::operator new(0x238, a2);
  *v12 = 634;
  *(v12 + 2) = 0;
  *(v12 + 3) = 0;
  *(v12 + 1) = a4;
  *(v12 + 68) = 0;
  *(v12 + 70) = 0;
  *(v12 + 69) = 0;
  IPC::Encoder::encodeHeader(v12);
  v26 = v12;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v12, **a2);
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v12, a2[1]);
  v13 = *a3;
  *a3 = 0;
  v14 = WTF::fastMalloc(0x10);
  *v14 = &unk_1F111F810;
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

uint64_t WebKit::NetworkProcessProxy::setPrevalentResource(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v9 = a2;
  v4 = *(a1 + 80);
  if (v4 && (*(v4 + 104) & 1) != 0 || *(a1 + 88))
  {
    v8[0] = &v9;
    v8[1] = a3;
    return WebKit::AuxiliaryProcessProxy::sendWithAsyncReply<Messages::NetworkProcess::SetPrevalentResource,WTF::CompletionHandler<void ()(void)>>(a1, v8, a4, 0, 0, 1);
  }

  else
  {
    v6 = *a4;
    *a4 = 0;
    (*(*v6 + 16))(v6);
    v7 = *(*v6 + 8);

    return v7(v6);
  }
}

uint64_t WebKit::AuxiliaryProcessProxy::sendWithAsyncReply<Messages::NetworkProcess::SetPrevalentResource,WTF::CompletionHandler<void ()(void)>>(uint64_t a1, uint64_t **a2, uint64_t *a3, uint64_t a4, char a5, int a6)
{
  v12 = IPC::Encoder::operator new(0x238, a2);
  *v12 = 688;
  *(v12 + 2) = 0;
  *(v12 + 3) = 0;
  *(v12 + 1) = a4;
  *(v12 + 68) = 0;
  *(v12 + 70) = 0;
  *(v12 + 69) = 0;
  IPC::Encoder::encodeHeader(v12);
  v26 = v12;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v12, **a2);
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v12, a2[1]);
  v13 = *a3;
  *a3 = 0;
  v14 = WTF::fastMalloc(0x10);
  *v14 = &unk_1F111F838;
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

uint64_t WebKit::NetworkProcessProxy::setPrevalentResourceForDebugMode(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v9 = a2;
  v4 = *(a1 + 80);
  if (v4 && (*(v4 + 104) & 1) != 0 || *(a1 + 88))
  {
    v8[0] = &v9;
    v8[1] = a3;
    return WebKit::AuxiliaryProcessProxy::sendWithAsyncReply<Messages::NetworkProcess::SetPrevalentResourceForDebugMode,WTF::CompletionHandler<void ()(void)>>(a1, v8, a4, 0, 0, 1);
  }

  else
  {
    v6 = *a4;
    *a4 = 0;
    (*(*v6 + 16))(v6);
    v7 = *(*v6 + 8);

    return v7(v6);
  }
}

uint64_t WebKit::AuxiliaryProcessProxy::sendWithAsyncReply<Messages::NetworkProcess::SetPrevalentResourceForDebugMode,WTF::CompletionHandler<void ()(void)>>(uint64_t a1, uint64_t **a2, uint64_t *a3, uint64_t a4, char a5, int a6)
{
  v12 = IPC::Encoder::operator new(0x238, a2);
  *v12 = 689;
  *(v12 + 2) = 0;
  *(v12 + 3) = 0;
  *(v12 + 1) = a4;
  *(v12 + 68) = 0;
  *(v12 + 70) = 0;
  *(v12 + 69) = 0;
  IPC::Encoder::encodeHeader(v12);
  v26 = v12;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v12, **a2);
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v12, a2[1]);
  v13 = *a3;
  *a3 = 0;
  v14 = WTF::fastMalloc(0x10);
  *v14 = &unk_1F111F860;
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

uint64_t WebKit::NetworkProcessProxy::setVeryPrevalentResource(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v9 = a2;
  v4 = *(a1 + 80);
  if (v4 && (*(v4 + 104) & 1) != 0 || *(a1 + 88))
  {
    v8[0] = &v9;
    v8[1] = a3;
    return WebKit::AuxiliaryProcessProxy::sendWithAsyncReply<Messages::NetworkProcess::SetVeryPrevalentResource,WTF::CompletionHandler<void ()(void)>>(a1, v8, a4, 0, 0, 1);
  }

  else
  {
    v6 = *a4;
    *a4 = 0;
    (*(*v6 + 16))(v6);
    v7 = *(*v6 + 8);

    return v7(v6);
  }
}

uint64_t WebKit::AuxiliaryProcessProxy::sendWithAsyncReply<Messages::NetworkProcess::SetVeryPrevalentResource,WTF::CompletionHandler<void ()(void)>>(uint64_t a1, uint64_t **a2, uint64_t *a3, uint64_t a4, char a5, int a6)
{
  v12 = IPC::Encoder::operator new(0x238, a2);
  *v12 = 721;
  *(v12 + 2) = 0;
  *(v12 + 3) = 0;
  *(v12 + 1) = a4;
  *(v12 + 68) = 0;
  *(v12 + 70) = 0;
  *(v12 + 69) = 0;
  IPC::Encoder::encodeHeader(v12);
  v26 = v12;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v12, **a2);
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v12, a2[1]);
  v13 = *a3;
  *a3 = 0;
  v14 = WTF::fastMalloc(0x10);
  *v14 = &unk_1F111F888;
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

uint64_t WebKit::NetworkProcessProxy::setLastSeen(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, double a5)
{
  v11 = a2;
  v10 = a5;
  v5 = *(a1 + 80);
  if (v5 && (*(v5 + 104) & 1) != 0 || *(a1 + 88))
  {
    v9[0] = &v11;
    v9[1] = a3;
    v9[2] = &v10;
    return WebKit::AuxiliaryProcessProxy::sendWithAsyncReply<Messages::NetworkProcess::SetLastSeen,WTF::CompletionHandler<void ()(void)>>(a1, v9, a4, 0, 0, 1);
  }

  else
  {
    v7 = *a4;
    *a4 = 0;
    (*(*v7 + 16))(v7);
    v8 = *(*v7 + 8);

    return v8(v7);
  }
}

uint64_t WebKit::AuxiliaryProcessProxy::sendWithAsyncReply<Messages::NetworkProcess::SetLastSeen,WTF::CompletionHandler<void ()(void)>>(uint64_t a1, void **a2, uint64_t *a3, uint64_t a4, char a5, int a6)
{
  v12 = IPC::Encoder::operator new(0x238, a2);
  *v12 = 680;
  *(v12 + 2) = 0;
  *(v12 + 3) = 0;
  *(v12 + 1) = a4;
  *(v12 + 68) = 0;
  *(v12 + 70) = 0;
  *(v12 + 69) = 0;
  IPC::Encoder::encodeHeader(v12);
  v26 = v12;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v12, **a2);
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v12, a2[1]);
  IPC::ArgumentCoder<double,void>::encode<IPC::Encoder>(v12, *a2[2]);
  v13 = *a3;
  *a3 = 0;
  v14 = WTF::fastMalloc(0x10);
  *v14 = &unk_1F111F8B0;
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

uint64_t WebKit::NetworkProcessProxy::domainIDExistsInDatabase(uint64_t a1, uint64_t a2, int a3, uint64_t *a4)
{
  v10 = a2;
  v9 = a3;
  v4 = *(a1 + 80);
  if (v4 && (*(v4 + 104) & 1) != 0 || *(a1 + 88))
  {
    v8[0] = &v10;
    v8[1] = &v9;
    return WebKit::AuxiliaryProcessProxy::sendWithAsyncReply<Messages::NetworkProcess::DomainIDExistsInDatabase,WTF::CompletionHandler<void ()(BOOL)>>(a1, v8, a4, 0, 0, 1);
  }

  else
  {
    v6 = *a4;
    *a4 = 0;
    (*(*v6 + 16))(v6, 0);
    v7 = *(*v6 + 8);

    return v7(v6);
  }
}

uint64_t WebKit::AuxiliaryProcessProxy::sendWithAsyncReply<Messages::NetworkProcess::DomainIDExistsInDatabase,WTF::CompletionHandler<void ()(BOOL)>>(uint64_t a1, int **a2, uint64_t *a3, uint64_t a4, char a5, int a6)
{
  v12 = IPC::Encoder::operator new(0x238, a2);
  *v12 = 603;
  *(v12 + 2) = 0;
  *(v12 + 3) = 0;
  *(v12 + 1) = a4;
  *(v12 + 68) = 0;
  *(v12 + 70) = 0;
  *(v12 + 69) = 0;
  IPC::Encoder::encodeHeader(v12);
  v26 = v12;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v12, **a2);
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v12, *a2[1]);
  v13 = *a3;
  *a3 = 0;
  v14 = WTF::fastMalloc(0x10);
  *v14 = &unk_1F111F8D8;
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

uint64_t WebKit::NetworkProcessProxy::mergeStatisticForTesting(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, char a7, char a8, double a9, double a10, char a11, unsigned int a12, uint64_t *a13)
{
  v23 = a2;
  v21 = a10;
  v22 = a9;
  v14[0] = &v23;
  v14[1] = a3;
  v14[2] = a4;
  v14[3] = a5;
  v14[4] = &v22;
  v15 = a6;
  v16 = &v21;
  v17 = a7;
  v18 = a8;
  v19 = a11;
  v20 = a12;
  return WebKit::AuxiliaryProcessProxy::sendWithAsyncReply<Messages::NetworkProcess::MergeStatisticForTesting,WTF::CompletionHandler<void ()(void)>>(a1, v14, a13, 0, 0, 1);
}

uint64_t WebKit::AuxiliaryProcessProxy::sendWithAsyncReply<Messages::NetworkProcess::MergeStatisticForTesting,WTF::CompletionHandler<void ()(void)>>(uint64_t a1, char *a2, uint64_t *a3, uint64_t a4, char a5, int a6)
{
  v12 = IPC::Encoder::operator new(0x238, a2);
  *v12 = 639;
  *(v12 + 2) = 0;
  *(v12 + 3) = 0;
  *(v12 + 1) = a4;
  *(v12 + 68) = 0;
  *(v12 + 70) = 0;
  *(v12 + 69) = 0;
  IPC::Encoder::encodeHeader(v12);
  v26 = v12;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v12, **a2);
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v12, *(a2 + 1));
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v12, *(a2 + 2));
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v12, *(a2 + 3));
  IPC::ArgumentCoder<double,void>::encode<IPC::Encoder>(v12, **(a2 + 4));
  IPC::Encoder::operator<<<BOOL &>(v12, a2 + 40);
  IPC::ArgumentCoder<double,void>::encode<IPC::Encoder>(v12, **(a2 + 6));
  IPC::Encoder::operator<<<BOOL &>(v12, a2 + 56);
  IPC::Encoder::operator<<<BOOL &>(v12, a2 + 57);
  IPC::Encoder::operator<<<BOOL &>(v12, a2 + 58);
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v12, *(a2 + 8));
  v13 = *a3;
  *a3 = 0;
  v14 = WTF::fastMalloc(0x10);
  *v14 = &unk_1F111F900;
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

uint64_t WebKit::AuxiliaryProcessProxy::sendWithAsyncReply<Messages::NetworkProcess::InsertExpiredStatisticForTesting,WTF::CompletionHandler<void ()(void)>>(uint64_t a1, char *a2, uint64_t *a3, uint64_t a4, char a5, int a6)
{
  v12 = IPC::Encoder::operator new(0x238, a2);
  *v12 = 626;
  *(v12 + 2) = 0;
  *(v12 + 3) = 0;
  *(v12 + 1) = a4;
  *(v12 + 68) = 0;
  *(v12 + 70) = 0;
  *(v12 + 69) = 0;
  IPC::Encoder::encodeHeader(v12);
  v26 = v12;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v12, **a2);
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v12, *(a2 + 1));
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v12, *(a2 + 2));
  IPC::Encoder::operator<<<BOOL &>(v12, a2 + 24);
  IPC::Encoder::operator<<<BOOL &>(v12, a2 + 25);
  IPC::Encoder::operator<<<BOOL &>(v12, a2 + 26);
  v13 = *a3;
  *a3 = 0;
  v14 = WTF::fastMalloc(0x10);
  *v14 = &unk_1F111F928;
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

uint64_t WebKit::NetworkProcessProxy::clearPrevalentResource(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v9 = a2;
  v4 = *(a1 + 80);
  if (v4 && (*(v4 + 104) & 1) != 0 || *(a1 + 88))
  {
    v8[0] = &v9;
    v8[1] = a3;
    return WebKit::AuxiliaryProcessProxy::sendWithAsyncReply<Messages::NetworkProcess::ClearPrevalentResource,WTF::CompletionHandler<void ()(void)>>(a1, v8, a4, 0, 0, 1);
  }

  else
  {
    v6 = *a4;
    *a4 = 0;
    (*(*v6 + 16))(v6);
    v7 = *(*v6 + 8);

    return v7(v6);
  }
}

uint64_t WebKit::AuxiliaryProcessProxy::sendWithAsyncReply<Messages::NetworkProcess::ClearPrevalentResource,WTF::CompletionHandler<void ()(void)>>(uint64_t a1, uint64_t **a2, uint64_t *a3, uint64_t a4, char a5, int a6)
{
  v12 = IPC::Encoder::operator new(0x238, a2);
  *v12 = 584;
  *(v12 + 2) = 0;
  *(v12 + 3) = 0;
  *(v12 + 1) = a4;
  *(v12 + 68) = 0;
  *(v12 + 70) = 0;
  *(v12 + 69) = 0;
  IPC::Encoder::encodeHeader(v12);
  v26 = v12;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v12, **a2);
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v12, a2[1]);
  v13 = *a3;
  *a3 = 0;
  v14 = WTF::fastMalloc(0x10);
  *v14 = &unk_1F111F950;
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

uint64_t WebKit::NetworkProcessProxy::scheduleCookieBlockingUpdate(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v8 = a2;
  v3 = *(a1 + 80);
  if (v3 && (*(v3 + 104) & 1) != 0 || *(a1 + 88))
  {
    v7 = &v8;
    return WebKit::AuxiliaryProcessProxy::sendWithAsyncReply<Messages::NetworkProcess::ScheduleCookieBlockingUpdate,WTF::CompletionHandler<void ()(void)>>(a1, &v7, a3, 0, 0, 1);
  }

  else
  {
    v5 = *a3;
    *a3 = 0;
    (*(*v5 + 16))(v5);
    v6 = *(*v5 + 8);

    return v6(v5);
  }
}

uint64_t WebKit::AuxiliaryProcessProxy::sendWithAsyncReply<Messages::NetworkProcess::ScheduleCookieBlockingUpdate,WTF::CompletionHandler<void ()(void)>>(uint64_t a1, void **a2, uint64_t *a3, uint64_t a4, char a5, int a6)
{
  v12 = IPC::Encoder::operator new(0x238, a2);
  *v12 = 666;
  *(v12 + 2) = 0;
  *(v12 + 3) = 0;
  *(v12 + 1) = a4;
  *(v12 + 68) = 0;
  *(v12 + 70) = 0;
  *(v12 + 69) = 0;
  IPC::Encoder::encodeHeader(v12);
  v26 = v12;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v12, **a2);
  v13 = *a3;
  *a3 = 0;
  v14 = WTF::fastMalloc(0x10);
  *v14 = &unk_1F111F978;
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

uint64_t WebKit::NetworkProcessProxy::scheduleClearInMemoryAndPersistent(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t *a6)
{
  v13 = a2;
  v12[0] = a3;
  v12[1] = a4;
  v6 = *(a1 + 80);
  if (v6 && (*(v6 + 104) & 1) != 0 || *(a1 + 88))
  {
    v10[0] = &v13;
    v10[1] = v12;
    v11 = a5;
    return WebKit::AuxiliaryProcessProxy::sendWithAsyncReply<Messages::NetworkProcess::ScheduleClearInMemoryAndPersistent,WTF::CompletionHandler<void ()(void)>>(a1, v10, a6, 0, 0, 1);
  }

  else
  {
    v8 = *a6;
    *a6 = 0;
    (*(*v8 + 16))(v8);
    v9 = *(*v8 + 8);

    return v9(v8);
  }
}

uint64_t WebKit::AuxiliaryProcessProxy::sendWithAsyncReply<Messages::NetworkProcess::ScheduleClearInMemoryAndPersistent,WTF::CompletionHandler<void ()(void)>>(uint64_t a1, char *a2, uint64_t *a3, uint64_t a4, char a5, int a6)
{
  v12 = IPC::Encoder::operator new(0x238, a2);
  *v12 = 665;
  *(v12 + 2) = 0;
  *(v12 + 3) = 0;
  *(v12 + 1) = a4;
  *(v12 + 68) = 0;
  *(v12 + 70) = 0;
  *(v12 + 69) = 0;
  IPC::Encoder::encodeHeader(v12);
  v29 = v12;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v12, **a2);
  IPC::ArgumentCoder<std::optional<double>,void>::encode<IPC::Encoder,std::optional<double>>(v12, *(a2 + 1));
  v13 = a2[16];
  v14 = IPC::Encoder::grow(v12, 1uLL, 1);
  if (!v15 || (*v14 = v13, v16 = *a3, *a3 = 0, v17 = WTF::fastMalloc(0x10), *v17 = &unk_1F111F9A0, v17[1] = v16, WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1))
  {
    __break(0xC471u);
    JUMPOUT(0x19E11CACCLL);
  }

  v18 = v17;
  IdentifierInternal = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
  v27[0] = v18;
  v27[1] = IdentifierInternal;
  v28 = 1;
  v21 = WebKit::AuxiliaryProcessProxy::sendMessage(a1, &v29, a5, v27, a6);
  if (v28 == 1)
  {
    v22 = v27[0];
    v27[0] = 0;
    if (v22)
    {
      (*(*v22 + 8))(v22);
    }
  }

  v23 = v29;
  v29 = 0;
  if (v23)
  {
    IPC::Encoder::~Encoder(v23, v20);
    bmalloc::api::tzoneFree(v25, v26);
  }

  if (v21)
  {
    return IdentifierInternal;
  }

  else
  {
    return 0;
  }
}

uint64_t WebKit::NetworkProcessProxy::scheduleStatisticsAndDataRecordsProcessing(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v8 = a2;
  v3 = *(a1 + 80);
  if (v3 && (*(v3 + 104) & 1) != 0 || *(a1 + 88))
  {
    v7 = &v8;
    return WebKit::AuxiliaryProcessProxy::sendWithAsyncReply<Messages::NetworkProcess::ScheduleStatisticsAndDataRecordsProcessing,WTF::CompletionHandler<void ()(void)>>(a1, &v7, a3, 0, 0, 1);
  }

  else
  {
    v5 = *a3;
    *a3 = 0;
    (*(*v5 + 16))(v5);
    v6 = *(*v5 + 8);

    return v6(v5);
  }
}

uint64_t WebKit::AuxiliaryProcessProxy::sendWithAsyncReply<Messages::NetworkProcess::ScheduleStatisticsAndDataRecordsProcessing,WTF::CompletionHandler<void ()(void)>>(uint64_t a1, void **a2, uint64_t *a3, uint64_t a4, char a5, int a6)
{
  v12 = IPC::Encoder::operator new(0x238, a2);
  *v12 = 667;
  *(v12 + 2) = 0;
  *(v12 + 3) = 0;
  *(v12 + 1) = a4;
  *(v12 + 68) = 0;
  *(v12 + 70) = 0;
  *(v12 + 69) = 0;
  IPC::Encoder::encodeHeader(v12);
  v26 = v12;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v12, **a2);
  v13 = *a3;
  *a3 = 0;
  v14 = WTF::fastMalloc(0x10);
  *v14 = &unk_1F111F9C8;
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

uint64_t WebKit::NetworkProcessProxy::statisticsDatabaseHasAllTables(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v8 = a2;
  v3 = *(a1 + 80);
  if (v3 && (*(v3 + 104) & 1) != 0 || *(a1 + 88))
  {
    v7 = &v8;
    return WebKit::AuxiliaryProcessProxy::sendWithAsyncReply<Messages::NetworkProcess::StatisticsDatabaseHasAllTables,WTF::CompletionHandler<void ()(BOOL)>>(a1, &v7, a3, 0, 0, 1);
  }

  else
  {
    v5 = *a3;
    *a3 = 0;
    (*(*v5 + 16))(v5, 0);
    v6 = *(*v5 + 8);

    return v6(v5);
  }
}

uint64_t WebKit::AuxiliaryProcessProxy::sendWithAsyncReply<Messages::NetworkProcess::StatisticsDatabaseHasAllTables,WTF::CompletionHandler<void ()(BOOL)>>(uint64_t a1, void **a2, uint64_t *a3, uint64_t a4, char a5, int a6)
{
  v12 = IPC::Encoder::operator new(0x238, a2);
  *v12 = 724;
  *(v12 + 2) = 0;
  *(v12 + 3) = 0;
  *(v12 + 1) = a4;
  *(v12 + 68) = 0;
  *(v12 + 70) = 0;
  *(v12 + 69) = 0;
  IPC::Encoder::encodeHeader(v12);
  v26 = v12;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v12, **a2);
  v13 = *a3;
  *a3 = 0;
  v14 = WTF::fastMalloc(0x10);
  *v14 = &unk_1F111F9F0;
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

uint64_t WebKit::NetworkProcessProxy::logUserInteraction(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v9 = a2;
  v4 = *(a1 + 80);
  if (v4 && (*(v4 + 104) & 1) != 0 || *(a1 + 88))
  {
    v8[0] = &v9;
    v8[1] = a3;
    return WebKit::AuxiliaryProcessProxy::sendWithAsyncReply<Messages::NetworkProcess::LogUserInteraction,WTF::CompletionHandler<void ()(void)>>(a1, v8, a4, 0, 0, 1);
  }

  else
  {
    v6 = *a4;
    *a4 = 0;
    (*(*v6 + 16))(v6);
    v7 = *(*v6 + 8);

    return v7(v6);
  }
}

uint64_t WebKit::AuxiliaryProcessProxy::sendWithAsyncReply<Messages::NetworkProcess::LogUserInteraction,WTF::CompletionHandler<void ()(void)>>(uint64_t a1, uint64_t **a2, uint64_t *a3, uint64_t a4, char a5, int a6)
{
  v12 = IPC::Encoder::operator new(0x238, a2);
  *v12 = 636;
  *(v12 + 2) = 0;
  *(v12 + 3) = 0;
  *(v12 + 1) = a4;
  *(v12 + 68) = 0;
  *(v12 + 70) = 0;
  *(v12 + 69) = 0;
  IPC::Encoder::encodeHeader(v12);
  v26 = v12;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v12, **a2);
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v12, a2[1]);
  v13 = *a3;
  *a3 = 0;
  v14 = WTF::fastMalloc(0x10);
  *v14 = &unk_1F111FA18;
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

uint64_t WebKit::NetworkProcessProxy::hasHadUserInteraction(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v9 = a2;
  v4 = *(a1 + 80);
  if (v4 && (*(v4 + 104) & 1) != 0 || *(a1 + 88))
  {
    v8[0] = &v9;
    v8[1] = a3;
    return WebKit::AuxiliaryProcessProxy::sendWithAsyncReply<Messages::NetworkProcess::HadUserInteraction,WTF::CompletionHandler<void ()(BOOL)>>(a1, v8, a4, 0, 0, 1);
  }

  else
  {
    v6 = *a4;
    *a4 = 0;
    (*(*v6 + 16))(v6, 0);
    v7 = *(*v6 + 8);

    return v7(v6);
  }
}

uint64_t WebKit::AuxiliaryProcessProxy::sendWithAsyncReply<Messages::NetworkProcess::HadUserInteraction,WTF::CompletionHandler<void ()(BOOL)>>(uint64_t a1, uint64_t **a2, uint64_t *a3, uint64_t a4, char a5, int a6)
{
  v12 = IPC::Encoder::operator new(0x238, a2);
  *v12 = 620;
  *(v12 + 2) = 0;
  *(v12 + 3) = 0;
  *(v12 + 1) = a4;
  *(v12 + 68) = 0;
  *(v12 + 70) = 0;
  *(v12 + 69) = 0;
  IPC::Encoder::encodeHeader(v12);
  v26 = v12;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v12, **a2);
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v12, a2[1]);
  v13 = *a3;
  *a3 = 0;
  v14 = WTF::fastMalloc(0x10);
  *v14 = &unk_1F111FA40;
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

uint64_t WebKit::AuxiliaryProcessProxy::sendWithAsyncReply<Messages::NetworkProcess::IsRelationshipOnlyInDatabaseOnce,WTF::CompletionHandler<void ()(BOOL)>>(uint64_t a1, uint64_t **a2, uint64_t *a3, uint64_t a4, char a5, int a6)
{
  v12 = IPC::Encoder::operator new(0x238, a2);
  *v12 = 632;
  *(v12 + 2) = 0;
  *(v12 + 3) = 0;
  *(v12 + 1) = a4;
  *(v12 + 68) = 0;
  *(v12 + 70) = 0;
  *(v12 + 69) = 0;
  IPC::Encoder::encodeHeader(v12);
  v26 = v12;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v12, **a2);
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v12, a2[1]);
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v12, a2[2]);
  v13 = *a3;
  *a3 = 0;
  v14 = WTF::fastMalloc(0x10);
  *v14 = &unk_1F111FA68;
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

uint64_t WebKit::NetworkProcessProxy::clearUserInteraction(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v9 = a2;
  v4 = *(a1 + 80);
  if (v4 && (*(v4 + 104) & 1) != 0 || *(a1 + 88))
  {
    v8[0] = &v9;
    v8[1] = a3;
    return WebKit::AuxiliaryProcessProxy::sendWithAsyncReply<Messages::NetworkProcess::ClearUserInteraction,WTF::CompletionHandler<void ()(void)>>(a1, v8, a4, 0, 0, 1);
  }

  else
  {
    v6 = *a4;
    *a4 = 0;
    (*(*v6 + 16))(v6);
    v7 = *(*v6 + 8);

    return v7(v6);
  }
}

uint64_t WebKit::AuxiliaryProcessProxy::sendWithAsyncReply<Messages::NetworkProcess::ClearUserInteraction,WTF::CompletionHandler<void ()(void)>>(uint64_t a1, uint64_t **a2, uint64_t *a3, uint64_t a4, char a5, int a6)
{
  v12 = IPC::Encoder::operator new(0x238, a2);
  *v12 = 588;
  *(v12 + 2) = 0;
  *(v12 + 3) = 0;
  *(v12 + 1) = a4;
  *(v12 + 68) = 0;
  *(v12 + 70) = 0;
  *(v12 + 69) = 0;
  IPC::Encoder::encodeHeader(v12);
  v26 = v12;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v12, **a2);
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v12, a2[1]);
  v13 = *a3;
  *a3 = 0;
  v14 = WTF::fastMalloc(0x10);
  *v14 = &unk_1F111FA90;
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

uint64_t WebKit::NetworkProcessProxy::hasLocalStorage(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v9 = a2;
  v4 = *(a1 + 80);
  if (v4 && (*(v4 + 104) & 1) != 0 || *(a1 + 88))
  {
    v8[0] = &v9;
    v8[1] = a3;
    return WebKit::AuxiliaryProcessProxy::sendWithAsyncReply<Messages::NetworkProcess::HasLocalStorage,WTF::CompletionHandler<void ()(BOOL)>>(a1, v8, a4, 0, 0, 1);
  }

  else
  {
    v6 = *a4;
    *a4 = 0;
    (*(*v6 + 16))(v6, 0);
    v7 = *(*v6 + 8);

    return v7(v6);
  }
}

uint64_t WebKit::AuxiliaryProcessProxy::sendWithAsyncReply<Messages::NetworkProcess::HasLocalStorage,WTF::CompletionHandler<void ()(BOOL)>>(uint64_t a1, uint64_t **a2, uint64_t *a3, uint64_t a4, char a5, int a6)
{
  v12 = IPC::Encoder::operator new(0x238, a2);
  *v12 = 623;
  *(v12 + 2) = 0;
  *(v12 + 3) = 0;
  *(v12 + 1) = a4;
  *(v12 + 68) = 0;
  *(v12 + 70) = 0;
  *(v12 + 69) = 0;
  IPC::Encoder::encodeHeader(v12);
  v26 = v12;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v12, **a2);
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v12, a2[1]);
  v13 = *a3;
  *a3 = 0;
  v14 = WTF::fastMalloc(0x10);
  *v14 = &unk_1F111FAB8;
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

uint64_t WebKit::NetworkProcessProxy::setTimeToLiveUserInteraction(uint64_t a1, uint64_t a2, uint64_t *a3, double a4)
{
  v10 = a2;
  v9 = a4;
  v4 = *(a1 + 80);
  if (v4 && (*(v4 + 104) & 1) != 0 || *(a1 + 88))
  {
    v8[0] = &v10;
    v8[1] = &v9;
    return WebKit::AuxiliaryProcessProxy::sendWithAsyncReply<Messages::NetworkProcess::SetTimeToLiveUserInteraction,WTF::CompletionHandler<void ()(void)>>(a1, v8, a3, 0, 0, 1);
  }

  else
  {
    v6 = *a3;
    *a3 = 0;
    (*(*v6 + 16))(v6);
    v7 = *(*v6 + 8);

    return v7(v6);
  }
}

uint64_t WebKit::AuxiliaryProcessProxy::sendWithAsyncReply<Messages::NetworkProcess::SetTimeToLiveUserInteraction,WTF::CompletionHandler<void ()(void)>>(uint64_t a1, double **a2, uint64_t *a3, uint64_t a4, char a5, int a6)
{
  v12 = IPC::Encoder::operator new(0x238, a2);
  *v12 = 716;
  *(v12 + 2) = 0;
  *(v12 + 3) = 0;
  *(v12 + 1) = a4;
  *(v12 + 68) = 0;
  *(v12 + 70) = 0;
  *(v12 + 69) = 0;
  IPC::Encoder::encodeHeader(v12);
  v26 = v12;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v12, **a2);
  IPC::ArgumentCoder<double,void>::encode<IPC::Encoder>(v12, *a2[1]);
  v13 = *a3;
  *a3 = 0;
  v14 = WTF::fastMalloc(0x10);
  *v14 = &unk_1F111FAE0;
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

uint64_t WebKit::NetworkProcessProxy::setResourceLoadStatisticsTimeAdvanceForTesting(uint64_t a1, uint64_t a2, uint64_t *a3, double a4)
{
  v10 = a2;
  v9 = a4;
  v4 = *(a1 + 80);
  if (v4 && (*(v4 + 104) & 1) != 0 || *(a1 + 88))
  {
    v8[0] = &v10;
    v8[1] = &v9;
    return WebKit::AuxiliaryProcessProxy::sendWithAsyncReply<Messages::NetworkProcess::SetResourceLoadStatisticsTimeAdvanceForTesting,WTF::CompletionHandler<void ()(void)>>(a1, v8, a3, 0, 0, 1);
  }

  else
  {
    v6 = *a3;
    *a3 = 0;
    (*(*v6 + 16))(v6);
    v7 = *(*v6 + 8);

    return v7(v6);
  }
}

uint64_t WebKit::AuxiliaryProcessProxy::sendWithAsyncReply<Messages::NetworkProcess::SetResourceLoadStatisticsTimeAdvanceForTesting,WTF::CompletionHandler<void ()(void)>>(uint64_t a1, double **a2, uint64_t *a3, uint64_t a4, char a5, int a6)
{
  v12 = IPC::Encoder::operator new(0x238, a2);
  *v12 = 702;
  *(v12 + 2) = 0;
  *(v12 + 3) = 0;
  *(v12 + 1) = a4;
  *(v12 + 68) = 0;
  *(v12 + 70) = 0;
  *(v12 + 69) = 0;
  IPC::Encoder::encodeHeader(v12);
  v26 = v12;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v12, **a2);
  IPC::ArgumentCoder<double,void>::encode<IPC::Encoder>(v12, *a2[1]);
  v13 = *a3;
  *a3 = 0;
  v14 = WTF::fastMalloc(0x10);
  *v14 = &unk_1F111FB08;
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

uint64_t WebKit::NetworkProcessProxy::setIsRunningResourceLoadStatisticsTest(uint64_t a1, uint64_t a2, char a3, uint64_t *a4)
{
  v10 = a2;
  v4 = *(a1 + 80);
  if (v4 && (*(v4 + 104) & 1) != 0 || *(a1 + 88))
  {
    v8 = &v10;
    v9 = a3;
    return WebKit::AuxiliaryProcessProxy::sendWithAsyncReply<Messages::NetworkProcess::SetIsRunningResourceLoadStatisticsTest,WTF::CompletionHandler<void ()(void)>>(a1, &v8, a4, 0, 0, 1);
  }

  else
  {
    v6 = *a4;
    *a4 = 0;
    (*(*v6 + 16))(v6);
    v7 = *(*v6 + 8);

    return v7(v6);
  }
}

uint64_t WebKit::AuxiliaryProcessProxy::sendWithAsyncReply<Messages::NetworkProcess::SetIsRunningResourceLoadStatisticsTest,WTF::CompletionHandler<void ()(void)>>(uint64_t a1, char *a2, uint64_t *a3, uint64_t a4, char a5, int a6)
{
  v12 = IPC::Encoder::operator new(0x238, a2);
  *v12 = 679;
  *(v12 + 2) = 0;
  *(v12 + 3) = 0;
  *(v12 + 1) = a4;
  *(v12 + 68) = 0;
  *(v12 + 70) = 0;
  *(v12 + 69) = 0;
  IPC::Encoder::encodeHeader(v12);
  v26 = v12;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v12, **a2);
  IPC::Encoder::operator<<<BOOL &>(v12, a2 + 8);
  v13 = *a3;
  *a3 = 0;
  v14 = WTF::fastMalloc(0x10);
  *v14 = &unk_1F111FB30;
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

uint64_t WebKit::NetworkProcessProxy::setSubframeUnderTopFrameDomain(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v10 = a2;
  v5 = *(a1 + 80);
  if (v5 && (*(v5 + 104) & 1) != 0 || *(a1 + 88))
  {
    v9[0] = &v10;
    v9[1] = a3;
    v9[2] = a4;
    return WebKit::AuxiliaryProcessProxy::sendWithAsyncReply<Messages::NetworkProcess::SetSubframeUnderTopFrameDomain,WTF::CompletionHandler<void ()(void)>>(a1, v9, a5, 0, 0, 1);
  }

  else
  {
    v7 = *a5;
    *a5 = 0;
    (*(*v7 + 16))(v7);
    v8 = *(*v7 + 8);

    return v8(v7);
  }
}

uint64_t WebKit::AuxiliaryProcessProxy::sendWithAsyncReply<Messages::NetworkProcess::SetSubframeUnderTopFrameDomain,WTF::CompletionHandler<void ()(void)>>(uint64_t a1, uint64_t **a2, uint64_t *a3, uint64_t a4, char a5, int a6)
{
  v12 = IPC::Encoder::operator new(0x238, a2);
  *v12 = 710;
  *(v12 + 2) = 0;
  *(v12 + 3) = 0;
  *(v12 + 1) = a4;
  *(v12 + 68) = 0;
  *(v12 + 70) = 0;
  *(v12 + 69) = 0;
  IPC::Encoder::encodeHeader(v12);
  v26 = v12;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v12, **a2);
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v12, a2[1]);
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v12, a2[2]);
  v13 = *a3;
  *a3 = 0;
  v14 = WTF::fastMalloc(0x10);
  *v14 = &unk_1F111FB58;
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

uint64_t WebKit::NetworkProcessProxy::isRegisteredAsRedirectingTo(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v10 = a2;
  v5 = *(a1 + 80);
  if (v5 && (*(v5 + 104) & 1) != 0 || *(a1 + 88))
  {
    v9[0] = &v10;
    v9[1] = a3;
    v9[2] = a4;
    return WebKit::AuxiliaryProcessProxy::sendWithAsyncReply<Messages::NetworkProcess::IsRegisteredAsRedirectingTo,WTF::CompletionHandler<void ()(BOOL)>>(a1, v9, a5, 0, 0, 1);
  }

  else
  {
    v7 = *a5;
    *a5 = 0;
    (*(*v7 + 16))(v7, 0);
    v8 = *(*v7 + 8);

    return v8(v7);
  }
}

uint64_t WebKit::AuxiliaryProcessProxy::sendWithAsyncReply<Messages::NetworkProcess::IsRegisteredAsRedirectingTo,WTF::CompletionHandler<void ()(BOOL)>>(uint64_t a1, uint64_t **a2, uint64_t *a3, uint64_t a4, char a5, int a6)
{
  v12 = IPC::Encoder::operator new(0x238, a2);
  *v12 = 629;
  *(v12 + 2) = 0;
  *(v12 + 3) = 0;
  *(v12 + 1) = a4;
  *(v12 + 68) = 0;
  *(v12 + 70) = 0;
  *(v12 + 69) = 0;
  IPC::Encoder::encodeHeader(v12);
  v26 = v12;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v12, **a2);
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v12, a2[1]);
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v12, a2[2]);
  v13 = *a3;
  *a3 = 0;
  v14 = WTF::fastMalloc(0x10);
  *v14 = &unk_1F111FB80;
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

uint64_t WebKit::NetworkProcessProxy::isRegisteredAsSubFrameUnder(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v10 = a2;
  v5 = *(a1 + 80);
  if (v5 && (*(v5 + 104) & 1) != 0 || *(a1 + 88))
  {
    v9[0] = &v10;
    v9[1] = a3;
    v9[2] = a4;
    return WebKit::AuxiliaryProcessProxy::sendWithAsyncReply<Messages::NetworkProcess::IsRegisteredAsSubFrameUnder,WTF::CompletionHandler<void ()(BOOL)>>(a1, v9, a5, 0, 0, 1);
  }

  else
  {
    v7 = *a5;
    *a5 = 0;
    (*(*v7 + 16))(v7, 0);
    v8 = *(*v7 + 8);

    return v8(v7);
  }
}

uint64_t WebKit::AuxiliaryProcessProxy::sendWithAsyncReply<Messages::NetworkProcess::IsRegisteredAsSubFrameUnder,WTF::CompletionHandler<void ()(BOOL)>>(uint64_t a1, uint64_t **a2, uint64_t *a3, uint64_t a4, char a5, int a6)
{
  v12 = IPC::Encoder::operator new(0x238, a2);
  *v12 = 630;
  *(v12 + 2) = 0;
  *(v12 + 3) = 0;
  *(v12 + 1) = a4;
  *(v12 + 68) = 0;
  *(v12 + 70) = 0;
  *(v12 + 69) = 0;
  IPC::Encoder::encodeHeader(v12);
  v26 = v12;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v12, **a2);
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v12, a2[1]);
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v12, a2[2]);
  v13 = *a3;
  *a3 = 0;
  v14 = WTF::fastMalloc(0x10);
  *v14 = &unk_1F111FBA8;
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

uint64_t WebKit::NetworkProcessProxy::setSubresourceUnderTopFrameDomain(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v10 = a2;
  v5 = *(a1 + 80);
  if (v5 && (*(v5 + 104) & 1) != 0 || *(a1 + 88))
  {
    v9[0] = &v10;
    v9[1] = a3;
    v9[2] = a4;
    return WebKit::AuxiliaryProcessProxy::sendWithAsyncReply<Messages::NetworkProcess::SetSubresourceUnderTopFrameDomain,WTF::CompletionHandler<void ()(void)>>(a1, v9, a5, 0, 0, 1);
  }

  else
  {
    v7 = *a5;
    *a5 = 0;
    (*(*v7 + 16))(v7);
    v8 = *(*v7 + 8);

    return v8(v7);
  }
}

uint64_t WebKit::AuxiliaryProcessProxy::sendWithAsyncReply<Messages::NetworkProcess::SetSubresourceUnderTopFrameDomain,WTF::CompletionHandler<void ()(void)>>(uint64_t a1, uint64_t **a2, uint64_t *a3, uint64_t a4, char a5, int a6)
{
  v12 = IPC::Encoder::operator new(0x238, a2);
  *v12 = 711;
  *(v12 + 2) = 0;
  *(v12 + 3) = 0;
  *(v12 + 1) = a4;
  *(v12 + 68) = 0;
  *(v12 + 70) = 0;
  *(v12 + 69) = 0;
  IPC::Encoder::encodeHeader(v12);
  v26 = v12;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v12, **a2);
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v12, a2[1]);
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v12, a2[2]);
  v13 = *a3;
  *a3 = 0;
  v14 = WTF::fastMalloc(0x10);
  *v14 = &unk_1F111FBD0;
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

uint64_t WebKit::NetworkProcessProxy::isRegisteredAsSubresourceUnder(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v10 = a2;
  v5 = *(a1 + 80);
  if (v5 && (*(v5 + 104) & 1) != 0 || *(a1 + 88))
  {
    v9[0] = &v10;
    v9[1] = a3;
    v9[2] = a4;
    return WebKit::AuxiliaryProcessProxy::sendWithAsyncReply<Messages::NetworkProcess::IsRegisteredAsSubresourceUnder,WTF::CompletionHandler<void ()(BOOL)>>(a1, v9, a5, 0, 0, 1);
  }

  else
  {
    v7 = *a5;
    *a5 = 0;
    (*(*v7 + 16))(v7, 0);
    v8 = *(*v7 + 8);

    return v8(v7);
  }
}

uint64_t WebKit::AuxiliaryProcessProxy::sendWithAsyncReply<Messages::NetworkProcess::IsRegisteredAsSubresourceUnder,WTF::CompletionHandler<void ()(BOOL)>>(uint64_t a1, uint64_t **a2, uint64_t *a3, uint64_t a4, char a5, int a6)
{
  v12 = IPC::Encoder::operator new(0x238, a2);
  *v12 = 631;
  *(v12 + 2) = 0;
  *(v12 + 3) = 0;
  *(v12 + 1) = a4;
  *(v12 + 68) = 0;
  *(v12 + 70) = 0;
  *(v12 + 69) = 0;
  IPC::Encoder::encodeHeader(v12);
  v26 = v12;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v12, **a2);
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v12, a2[1]);
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v12, a2[2]);
  v13 = *a3;
  *a3 = 0;
  v14 = WTF::fastMalloc(0x10);
  *v14 = &unk_1F111FBF8;
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

uint64_t WebKit::NetworkProcessProxy::setSubresourceUniqueRedirectTo(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v10 = a2;
  v5 = *(a1 + 80);
  if (v5 && (*(v5 + 104) & 1) != 0 || *(a1 + 88))
  {
    v9[0] = &v10;
    v9[1] = a3;
    v9[2] = a4;
    return WebKit::AuxiliaryProcessProxy::sendWithAsyncReply<Messages::NetworkProcess::SetSubresourceUniqueRedirectTo,WTF::CompletionHandler<void ()(void)>>(a1, v9, a5, 0, 0, 1);
  }

  else
  {
    v7 = *a5;
    *a5 = 0;
    (*(*v7 + 16))(v7);
    v8 = *(*v7 + 8);

    return v8(v7);
  }
}

uint64_t WebKit::AuxiliaryProcessProxy::sendWithAsyncReply<Messages::NetworkProcess::SetSubresourceUniqueRedirectTo,WTF::CompletionHandler<void ()(void)>>(uint64_t a1, uint64_t **a2, uint64_t *a3, uint64_t a4, char a5, int a6)
{
  v12 = IPC::Encoder::operator new(0x238, a2);
  *v12 = 713;
  *(v12 + 2) = 0;
  *(v12 + 3) = 0;
  *(v12 + 1) = a4;
  *(v12 + 68) = 0;
  *(v12 + 70) = 0;
  *(v12 + 69) = 0;
  IPC::Encoder::encodeHeader(v12);
  v26 = v12;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v12, **a2);
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v12, a2[1]);
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v12, a2[2]);
  v13 = *a3;
  *a3 = 0;
  v14 = WTF::fastMalloc(0x10);
  *v14 = &unk_1F111FC20;
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

uint64_t WebKit::NetworkProcessProxy::setSubresourceUniqueRedirectFrom(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v10 = a2;
  v5 = *(a1 + 80);
  if (v5 && (*(v5 + 104) & 1) != 0 || *(a1 + 88))
  {
    v9[0] = &v10;
    v9[1] = a3;
    v9[2] = a4;
    return WebKit::AuxiliaryProcessProxy::sendWithAsyncReply<Messages::NetworkProcess::SetSubresourceUniqueRedirectFrom,WTF::CompletionHandler<void ()(void)>>(a1, v9, a5, 0, 0, 1);
  }

  else
  {
    v7 = *a5;
    *a5 = 0;
    (*(*v7 + 16))(v7);
    v8 = *(*v7 + 8);

    return v8(v7);
  }
}

uint64_t WebKit::AuxiliaryProcessProxy::sendWithAsyncReply<Messages::NetworkProcess::SetSubresourceUniqueRedirectFrom,WTF::CompletionHandler<void ()(void)>>(uint64_t a1, uint64_t **a2, uint64_t *a3, uint64_t a4, char a5, int a6)
{
  v12 = IPC::Encoder::operator new(0x238, a2);
  *v12 = 712;
  *(v12 + 2) = 0;
  *(v12 + 3) = 0;
  *(v12 + 1) = a4;
  *(v12 + 68) = 0;
  *(v12 + 70) = 0;
  *(v12 + 69) = 0;
  IPC::Encoder::encodeHeader(v12);
  v26 = v12;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v12, **a2);
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v12, a2[1]);
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v12, a2[2]);
  v13 = *a3;
  *a3 = 0;
  v14 = WTF::fastMalloc(0x10);
  *v14 = &unk_1F111FC48;
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

uint64_t WebKit::NetworkProcessProxy::setTopFrameUniqueRedirectTo(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v10 = a2;
  v5 = *(a1 + 80);
  if (v5 && (*(v5 + 104) & 1) != 0 || *(a1 + 88))
  {
    v9[0] = &v10;
    v9[1] = a3;
    v9[2] = a4;
    return WebKit::AuxiliaryProcessProxy::sendWithAsyncReply<Messages::NetworkProcess::SetTopFrameUniqueRedirectTo,WTF::CompletionHandler<void ()(void)>>(a1, v9, a5, 0, 0, 1);
  }

  else
  {
    v7 = *a5;
    *a5 = 0;
    (*(*v7 + 16))(v7);
    v8 = *(*v7 + 8);

    return v8(v7);
  }
}

uint64_t WebKit::AuxiliaryProcessProxy::sendWithAsyncReply<Messages::NetworkProcess::SetTopFrameUniqueRedirectTo,WTF::CompletionHandler<void ()(void)>>(uint64_t a1, uint64_t **a2, uint64_t *a3, uint64_t a4, char a5, int a6)
{
  v12 = IPC::Encoder::operator new(0x238, a2);
  *v12 = 719;
  *(v12 + 2) = 0;
  *(v12 + 3) = 0;
  *(v12 + 1) = a4;
  *(v12 + 68) = 0;
  *(v12 + 70) = 0;
  *(v12 + 69) = 0;
  IPC::Encoder::encodeHeader(v12);
  v26 = v12;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v12, **a2);
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v12, a2[1]);
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v12, a2[2]);
  v13 = *a3;
  *a3 = 0;
  v14 = WTF::fastMalloc(0x10);
  *v14 = &unk_1F111FC70;
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

uint64_t WebKit::NetworkProcessProxy::setTopFrameUniqueRedirectFrom(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v10 = a2;
  v5 = *(a1 + 80);
  if (v5 && (*(v5 + 104) & 1) != 0 || *(a1 + 88))
  {
    v9[0] = &v10;
    v9[1] = a3;
    v9[2] = a4;
    return WebKit::AuxiliaryProcessProxy::sendWithAsyncReply<Messages::NetworkProcess::SetTopFrameUniqueRedirectFrom,WTF::CompletionHandler<void ()(void)>>(a1, v9, a5, 0, 0, 1);
  }

  else
  {
    v7 = *a5;
    *a5 = 0;
    (*(*v7 + 16))(v7);
    v8 = *(*v7 + 8);

    return v8(v7);
  }
}

uint64_t WebKit::AuxiliaryProcessProxy::sendWithAsyncReply<Messages::NetworkProcess::SetTopFrameUniqueRedirectFrom,WTF::CompletionHandler<void ()(void)>>(uint64_t a1, uint64_t **a2, uint64_t *a3, uint64_t a4, char a5, int a6)
{
  v12 = IPC::Encoder::operator new(0x238, a2);
  *v12 = 718;
  *(v12 + 2) = 0;
  *(v12 + 3) = 0;
  *(v12 + 1) = a4;
  *(v12 + 68) = 0;
  *(v12 + 70) = 0;
  *(v12 + 69) = 0;
  IPC::Encoder::encodeHeader(v12);
  v26 = v12;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v12, **a2);
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v12, a2[1]);
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v12, a2[2]);
  v13 = *a3;
  *a3 = 0;
  v14 = WTF::fastMalloc(0x10);
  *v14 = &unk_1F111FC98;
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

uint64_t WebKit::NetworkProcessProxy::isGrandfathered(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v9 = a2;
  v4 = *(a1 + 80);
  if (v4 && (*(v4 + 104) & 1) != 0 || *(a1 + 88))
  {
    v8[0] = &v9;
    v8[1] = a3;
    return WebKit::AuxiliaryProcessProxy::sendWithAsyncReply<Messages::NetworkProcess::IsGrandfathered,WTF::CompletionHandler<void ()(BOOL)>>(a1, v8, a4, 0, 0, 1);
  }

  else
  {
    v6 = *a4;
    *a4 = 0;
    (*(*v6 + 16))(v6, 0);
    v7 = *(*v6 + 8);

    return v7(v6);
  }
}

uint64_t WebKit::AuxiliaryProcessProxy::sendWithAsyncReply<Messages::NetworkProcess::IsGrandfathered,WTF::CompletionHandler<void ()(BOOL)>>(uint64_t a1, uint64_t **a2, uint64_t *a3, uint64_t a4, char a5, int a6)
{
  v12 = IPC::Encoder::operator new(0x238, a2);
  *v12 = 627;
  *(v12 + 2) = 0;
  *(v12 + 3) = 0;
  *(v12 + 1) = a4;
  *(v12 + 68) = 0;
  *(v12 + 70) = 0;
  *(v12 + 69) = 0;
  IPC::Encoder::encodeHeader(v12);
  v26 = v12;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v12, **a2);
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v12, a2[1]);
  v13 = *a3;
  *a3 = 0;
  v14 = WTF::fastMalloc(0x10);
  *v14 = &unk_1F111FCC0;
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