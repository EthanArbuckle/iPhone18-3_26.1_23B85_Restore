uint64_t WebKit::RemoteWebInspectorUI::windowObjectCleared(WebKit::RemoteWebInspectorUI *this)
{
  v2 = *(this + 7);
  if (v2)
  {
    ++*v2;
    WebCore::InspectorFrontendHost::disconnectClient(v2);
    WTF::RefCounted<WebCore::InspectorFrontendHost>::deref(v2);
  }

  v3 = *(*(this + 5) + 8);
  if (v3)
  {
    CFRetain(*(v3 - 8));
    v4 = *(v3 + 40);
    if (v4)
    {
      ++*(v4 + 8);
    }

    v5 = WTF::fastMalloc(0x18);
    WebCore::InspectorFrontendHost::InspectorFrontendHost();
    v6 = *(this + 7);
    *(this + 7) = v5;
    if (v6)
    {
      WTF::RefCounted<WebCore::InspectorFrontendHost>::deref(v6);
    }

    if (v4)
    {
      WTF::RefCounted<WebCore::Page>::deref((v4 + 8));
    }

    CFRelease(*(v3 - 8));
    v8 = *(this + 7);
    if (v8)
    {
      ++*v8;
      v9 = WebCore::mainThreadNormalWorldSingleton(v7);
      WebCore::InspectorFrontendHost::addSelfToGlobalObjectInWorld(v8, v9);

      return WTF::RefCounted<WebCore::InspectorFrontendHost>::deref(v8);
    }

    else
    {
      v11 = WebCore::mainThreadNormalWorldSingleton(v7);

      return WebCore::InspectorFrontendHost::addSelfToGlobalObjectInWorld(0, v11);
    }
  }

  else
  {
    result = 103;
    __break(0xC471u);
  }

  return result;
}

uint64_t WebKit::RemoteWebInspectorUI::frontendLoaded(WebCore::InspectorFrontendAPIDispatcher **this)
{
  v21[1] = *MEMORY[0x1E69E9840];
  WebCore::InspectorFrontendAPIDispatcher::frontendLoaded(this[6]);
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  WTF::JSONImpl::Value::create(1);
  WTF::Vector<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(v19, v21, 1uLL);
  WebCore::InspectorFrontendAPIDispatcher::dispatchCommandWithResultAsync();
  WTF::Vector<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v19, v2);
  v4 = v21[0];
  v21[0] = 0;
  if (v4)
  {
    if (*v4 == 1)
    {
      WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*v4;
    }
  }

  v5 = v20;
  v20 = 0;
  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, v3);
  }

  {
    v6 = WebKit::WebProcess::singleton(void)::process;
  }

  else
  {
    v18 = WebKit::WebProcess::operator new(0x370, v3);
    v6 = WebKit::WebProcess::WebProcess(v18);
    WebKit::WebProcess::singleton(void)::process = v6;
  }

  WebKit::AuxiliaryProcess::protectedParentProcessConnection(v6, &v20);
  v8 = *(this[5] + 1);
  if (v8)
  {
    v9 = v20;
    v10 = *(v8 + 32);
    v11 = IPC::Encoder::operator new(0x238, v7);
    *v11 = 1682;
    *(v11 + 2) = 0;
    *(v11 + 3) = 0;
    *(v11 + 1) = v10;
    *(v11 + 68) = 0;
    *(v11 + 70) = 0;
    *(v11 + 69) = 0;
    IPC::Encoder::encodeHeader(v11);
    v19[0] = v11;
    IPC::Connection::sendMessageImpl(v9, v19, 0, 0);
    v13 = v19[0];
    v19[0] = 0;
    if (v13)
    {
      IPC::Encoder::~Encoder(v13, v12);
      bmalloc::api::tzoneFree(v16, v17);
    }

    v14 = v20;
    v20 = 0;
    if (v14)
    {
      WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v14);
    }

    return WebKit::RemoteWebInspectorUI::bringToFront(this, v12);
  }

  else
  {
    result = 92;
    __break(0xC471u);
  }

  return result;
}

uint64_t WebKit::RemoteWebInspectorUI::bringToFront(WebKit::RemoteWebInspectorUI *this, void *a2)
{
  {
    v3 = WebKit::WebProcess::singleton(void)::process;
  }

  else
  {
    v14 = WebKit::WebProcess::operator new(0x370, a2);
    v3 = WebKit::WebProcess::WebProcess(v14);
    WebKit::WebProcess::singleton(void)::process = v3;
  }

  WebKit::AuxiliaryProcess::protectedParentProcessConnection(v3, &v15);
  v5 = *(*(this + 5) + 8);
  if (v5)
  {
    v6 = v15;
    v7 = *(v5 + 32);
    v8 = IPC::Encoder::operator new(0x238, v4);
    *v8 = 1680;
    *(v8 + 2) = 0;
    *(v8 + 3) = 0;
    *(v8 + 1) = v7;
    *(v8 + 68) = 0;
    *(v8 + 70) = 0;
    *(v8 + 69) = 0;
    IPC::Encoder::encodeHeader(v8);
    v16 = v8;
    IPC::Connection::sendMessageImpl(v6, &v16, 0, 0);
    v10 = v16;
    v16 = 0;
    if (v10)
    {
      IPC::Encoder::~Encoder(v10, v9);
      bmalloc::api::tzoneFree(v12, v13);
    }

    result = v15;
    v15 = 0;
    if (result)
    {
      return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(result);
    }
  }

  else
  {
    result = 92;
    __break(0xC471u);
  }

  return result;
}

uint64_t WebKit::RemoteWebInspectorUI::changeSheetRect(WebKit::RemoteWebInspectorUI *this, const WebCore::FloatRect *a2)
{
  {
    v4 = WebKit::WebProcess::singleton(void)::process;
  }

  else
  {
    v15 = WebKit::WebProcess::operator new(0x370, a2);
    v4 = WebKit::WebProcess::WebProcess(v15);
    WebKit::WebProcess::singleton(void)::process = v4;
  }

  WebKit::AuxiliaryProcess::protectedParentProcessConnection(v4, &v16);
  v6 = *(*(this + 5) + 8);
  if (v6)
  {
    v7 = v16;
    v8 = *(v6 + 32);
    v9 = IPC::Encoder::operator new(0x238, v5);
    *v9 = 1693;
    *(v9 + 2) = 0;
    *(v9 + 3) = 0;
    *(v9 + 1) = v8;
    *(v9 + 68) = 0;
    *(v9 + 70) = 0;
    *(v9 + 69) = 0;
    IPC::Encoder::encodeHeader(v9);
    v17 = v9;
    IPC::ArgumentCoder<WebCore::FloatRect,void>::encode(v9, a2);
    IPC::Connection::sendMessageImpl(v7, &v17, 0, 0);
    v11 = v17;
    v17 = 0;
    if (v11)
    {
      IPC::Encoder::~Encoder(v11, v10);
      bmalloc::api::tzoneFree(v13, v14);
    }

    result = v16;
    v16 = 0;
    if (result)
    {
      return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(result);
    }
  }

  else
  {
    result = 92;
    __break(0xC471u);
  }

  return result;
}

atomic_ullong *WebKit::RemoteWebInspectorUI::setForcedAppearance(uint64_t a1, void *a2)
{
  v2 = a2;
  {
    v4 = WebKit::WebProcess::singleton(void)::process;
  }

  else
  {
    v15 = WebKit::WebProcess::operator new(0x370, a2);
    v4 = WebKit::WebProcess::WebProcess(v15);
    WebKit::WebProcess::singleton(void)::process = v4;
  }

  WebKit::AuxiliaryProcess::protectedParentProcessConnection(v4, &v16);
  v6 = *(*(a1 + 40) + 8);
  if (v6)
  {
    v7 = v16;
    v8 = *(v6 + 32);
    v9 = IPC::Encoder::operator new(0x238, v5);
    *v9 = 1691;
    *(v9 + 2) = 0;
    *(v9 + 3) = 0;
    *(v9 + 1) = v8;
    *(v9 + 68) = 0;
    *(v9 + 70) = 0;
    *(v9 + 69) = 0;
    IPC::Encoder::encodeHeader(v9);
    v17 = v9;
    IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(v9, v2);
    IPC::Connection::sendMessageImpl(v7, &v17, 0, 0);
    v11 = v17;
    v17 = 0;
    if (v11)
    {
      IPC::Encoder::~Encoder(v11, v10);
      bmalloc::api::tzoneFree(v13, v14);
    }

    result = v16;
    v16 = 0;
    if (result)
    {
      return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(result);
    }
  }

  else
  {
    result = 92;
    __break(0xC471u);
  }

  return result;
}

uint64_t WebKit::RemoteWebInspectorUI::startWindowDrag(WebKit::RemoteWebInspectorUI *this, void *a2)
{
  {
    v3 = WebKit::WebProcess::singleton(void)::process;
  }

  else
  {
    v14 = WebKit::WebProcess::operator new(0x370, a2);
    v3 = WebKit::WebProcess::WebProcess(v14);
    WebKit::WebProcess::singleton(void)::process = v3;
  }

  WebKit::AuxiliaryProcess::protectedParentProcessConnection(v3, &v15);
  v5 = *(*(this + 5) + 8);
  if (v5)
  {
    v6 = v15;
    v7 = *(v5 + 32);
    v8 = IPC::Encoder::operator new(0x238, v4);
    *v8 = 1695;
    *(v8 + 2) = 0;
    *(v8 + 3) = 0;
    *(v8 + 1) = v7;
    *(v8 + 68) = 0;
    *(v8 + 70) = 0;
    *(v8 + 69) = 0;
    IPC::Encoder::encodeHeader(v8);
    v16 = v8;
    IPC::Connection::sendMessageImpl(v6, &v16, 0, 0);
    v10 = v16;
    v16 = 0;
    if (v10)
    {
      IPC::Encoder::~Encoder(v10, v9);
      bmalloc::api::tzoneFree(v12, v13);
    }

    result = v15;
    v15 = 0;
    if (result)
    {
      return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(result);
    }
  }

  else
  {
    result = 92;
    __break(0xC471u);
  }

  return result;
}

uint64_t WebKit::RemoteWebInspectorUI::moveWindowBy(WebKit::RemoteWebInspectorUI *this, float a2, float a3)
{
  v3 = *(*(this + 5) + 8);
  if (!v3 || (WebCore::Chrome::windowRect(*(*(v3 + 40) + 56)), v13.m_size.m_width = v7, v13.m_size.m_height = v8, v13.m_location.m_x = v9 + a2, v13.m_location.m_y = v10 + a3, (v11 = *(*(this + 5) + 8)) == 0))
  {
    __break(0xC471u);
    JUMPOUT(0x19E2ECB48);
  }

  return WebCore::Chrome::setWindowRect(*(*(v11 + 40) + 56), &v13);
}

uint64_t WebKit::RemoteWebInspectorUI::userInterfaceLayoutDirection(WebKit::RemoteWebInspectorUI *this)
{
  v1 = *(*(this + 5) + 8);
  if (v1)
  {
    return *(*(v1 + 40) + 1052);
  }

  result = 92;
  __break(0xC471u);
  return result;
}

uint64_t non-virtual thunk toWebKit::RemoteWebInspectorUI::userInterfaceLayoutDirection(WebKit::RemoteWebInspectorUI *this)
{
  v1 = *(*(this + 2) + 8);
  if (v1)
  {
    return *(*(v1 + 40) + 1052);
  }

  result = 92;
  __break(0xC471u);
  return result;
}

atomic_ullong *WebKit::RemoteWebInspectorUI::closeWindow(WebKit::RemoteWebInspectorUI *this)
{
  v1 = *(*(this + 5) + 8);
  if (!v1)
  {
    __break(0xC471u);
    goto LABEL_15;
  }

  CFRetain(*(v1 - 8));
  v3 = *(v1 + 40);
  if (v3)
  {
    ++*(v3 + 8);
  }

  WebCore::InspectorController::setInspectorFrontendClient();
  WTF::RefCounted<WebCore::Page>::deref((v3 + 8));
  CFRelease(*(v1 - 8));
  {
    v5 = WebKit::WebProcess::singleton(void)::process;
  }

  else
  {
    v16 = WebKit::WebProcess::operator new(0x370, v4);
    v5 = WebKit::WebProcess::WebProcess(v16);
    WebKit::WebProcess::singleton(void)::process = v5;
  }

  WebKit::AuxiliaryProcess::protectedParentProcessConnection(v5, &v17);
  v7 = *(*(this + 5) + 8);
  if (!v7)
  {
    __break(0xC471u);
LABEL_15:
    JUMPOUT(0x19E2ECD74);
  }

  v8 = v17;
  v9 = *(v7 + 32);
  v10 = IPC::Encoder::operator new(0x238, v6);
  *v10 = 1681;
  *(v10 + 2) = 0;
  *(v10 + 3) = 0;
  *(v10 + 1) = v9;
  *(v10 + 68) = 0;
  *(v10 + 70) = 0;
  *(v10 + 69) = 0;
  IPC::Encoder::encodeHeader(v10);
  v18 = v10;
  IPC::Connection::sendMessageImpl(v8, &v18, 0, 0);
  v12 = v18;
  v18 = 0;
  if (v12)
  {
    IPC::Encoder::~Encoder(v12, v11);
    bmalloc::api::tzoneFree(v14, v15);
  }

  result = v17;
  v17 = 0;
  if (result)
  {
    return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(result);
  }

  return result;
}

uint64_t WebKit::RemoteWebInspectorUI::reopen(WebKit::RemoteWebInspectorUI *this, void *a2)
{
  {
    v3 = WebKit::WebProcess::singleton(void)::process;
  }

  else
  {
    v14 = WebKit::WebProcess::operator new(0x370, a2);
    v3 = WebKit::WebProcess::WebProcess(v14);
    WebKit::WebProcess::singleton(void)::process = v3;
  }

  WebKit::AuxiliaryProcess::protectedParentProcessConnection(v3, &v15);
  v5 = *(*(this + 5) + 8);
  if (v5)
  {
    v6 = v15;
    v7 = *(v5 + 32);
    v8 = IPC::Encoder::operator new(0x238, v4);
    *v8 = 1686;
    *(v8 + 2) = 0;
    *(v8 + 3) = 0;
    *(v8 + 1) = v7;
    *(v8 + 68) = 0;
    *(v8 + 70) = 0;
    *(v8 + 69) = 0;
    IPC::Encoder::encodeHeader(v8);
    v16 = v8;
    IPC::Connection::sendMessageImpl(v6, &v16, 0, 0);
    v10 = v16;
    v16 = 0;
    if (v10)
    {
      IPC::Encoder::~Encoder(v10, v9);
      bmalloc::api::tzoneFree(v12, v13);
    }

    result = v15;
    v15 = 0;
    if (result)
    {
      return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(result);
    }
  }

  else
  {
    result = 92;
    __break(0xC471u);
  }

  return result;
}

uint64_t WebKit::RemoteWebInspectorUI::resetState(WebKit::RemoteWebInspectorUI *this, void *a2)
{
  {
    v3 = WebKit::WebProcess::singleton(void)::process;
  }

  else
  {
    v14 = WebKit::WebProcess::operator new(0x370, a2);
    v3 = WebKit::WebProcess::WebProcess(v14);
    WebKit::WebProcess::singleton(void)::process = v3;
  }

  WebKit::AuxiliaryProcess::protectedParentProcessConnection(v3, &v15);
  v5 = *(*(this + 5) + 8);
  if (v5)
  {
    v6 = v15;
    v7 = *(v5 + 32);
    v8 = IPC::Encoder::operator new(0x238, v4);
    *v8 = 1687;
    *(v8 + 2) = 0;
    *(v8 + 3) = 0;
    *(v8 + 1) = v7;
    *(v8 + 68) = 0;
    *(v8 + 70) = 0;
    *(v8 + 69) = 0;
    IPC::Encoder::encodeHeader(v8);
    v16 = v8;
    IPC::Connection::sendMessageImpl(v6, &v16, 0, 0);
    v10 = v16;
    v16 = 0;
    if (v10)
    {
      IPC::Encoder::~Encoder(v10, v9);
      bmalloc::api::tzoneFree(v12, v13);
    }

    result = v15;
    v15 = 0;
    if (result)
    {
      return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(result);
    }
  }

  else
  {
    result = 92;
    __break(0xC471u);
  }

  return result;
}

WTF::StringImpl *WebKit::RemoteWebInspectorUI::showConsole(WebKit::RemoteWebInspectorUI *this)
{
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v4[0] = 0;
  v4[1] = 0;
  WebCore::InspectorFrontendAPIDispatcher::dispatchCommandWithResultAsync();
  WTF::Vector<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v4, v1);
  result = v5;
  v5 = 0;
  if (result)
  {
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v2);
    }
  }

  return result;
}

WTF::StringImpl *WebKit::RemoteWebInspectorUI::showResources(WebKit::RemoteWebInspectorUI *this)
{
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v4[0] = 0;
  v4[1] = 0;
  WebCore::InspectorFrontendAPIDispatcher::dispatchCommandWithResultAsync();
  WTF::Vector<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v4, v1);
  result = v5;
  v5 = 0;
  if (result)
  {
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v2);
    }
  }

  return result;
}

uint64_t WebKit::RemoteWebInspectorUI::openURLExternally(WebKit::RemoteWebInspectorUI *this, const WTF::String *a2)
{
  {
    v4 = WebKit::WebProcess::singleton(void)::process;
  }

  else
  {
    v15 = WebKit::WebProcess::operator new(0x370, a2);
    v4 = WebKit::WebProcess::WebProcess(v15);
    WebKit::WebProcess::singleton(void)::process = v4;
  }

  WebKit::AuxiliaryProcess::protectedParentProcessConnection(v4, &v16);
  v6 = *(*(this + 5) + 8);
  if (v6)
  {
    v7 = v16;
    v8 = *(v6 + 32);
    v9 = IPC::Encoder::operator new(0x238, v5);
    *v9 = 1684;
    *(v9 + 2) = 0;
    *(v9 + 3) = 0;
    *(v9 + 1) = v8;
    *(v9 + 68) = 0;
    *(v9 + 70) = 0;
    *(v9 + 69) = 0;
    IPC::Encoder::encodeHeader(v9);
    v17 = v9;
    IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v9, a2);
    IPC::Connection::sendMessageImpl(v7, &v17, 0, 0);
    v11 = v17;
    v17 = 0;
    if (v11)
    {
      IPC::Encoder::~Encoder(v11, v10);
      bmalloc::api::tzoneFree(v13, v14);
    }

    result = v16;
    v16 = 0;
    if (result)
    {
      return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(result);
    }
  }

  else
  {
    result = 92;
    __break(0xC471u);
  }

  return result;
}

uint64_t WebKit::RemoteWebInspectorUI::revealFileExternally(WebKit::RemoteWebInspectorUI *this, const WTF::String *a2)
{
  {
    v4 = WebKit::WebProcess::singleton(void)::process;
  }

  else
  {
    v15 = WebKit::WebProcess::operator new(0x370, a2);
    v4 = WebKit::WebProcess::WebProcess(v15);
    WebKit::WebProcess::singleton(void)::process = v4;
  }

  WebKit::AuxiliaryProcess::protectedParentProcessConnection(v4, &v16);
  v6 = *(*(this + 5) + 8);
  if (v6)
  {
    v7 = v16;
    v8 = *(v6 + 32);
    v9 = IPC::Encoder::operator new(0x238, v5);
    *v9 = 1688;
    *(v9 + 2) = 0;
    *(v9 + 3) = 0;
    *(v9 + 1) = v8;
    *(v9 + 68) = 0;
    *(v9 + 70) = 0;
    *(v9 + 69) = 0;
    IPC::Encoder::encodeHeader(v9);
    v17 = v9;
    IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v9, a2);
    IPC::Connection::sendMessageImpl(v7, &v17, 0, 0);
    v11 = v17;
    v17 = 0;
    if (v11)
    {
      IPC::Encoder::~Encoder(v11, v10);
      bmalloc::api::tzoneFree(v13, v14);
    }

    result = v16;
    v16 = 0;
    if (result)
    {
      return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(result);
    }
  }

  else
  {
    result = 92;
    __break(0xC471u);
  }

  return result;
}

atomic_ullong *WebKit::RemoteWebInspectorUI::save(uint64_t a1, void *a2, char a3)
{
  {
    v6 = WebKit::WebProcess::singleton(void)::process;
  }

  else
  {
    v17 = WebKit::WebProcess::operator new(0x370, a2);
    v6 = WebKit::WebProcess::WebProcess(v17);
    WebKit::WebProcess::singleton(void)::process = v6;
  }

  WebKit::AuxiliaryProcess::protectedParentProcessConnection(v6, &v19);
  v8 = v19;
  v18[0] = a3;
  v9 = *(*(a1 + 40) + 8);
  if (v9)
  {
    v10 = *(v9 + 32);
    v11 = IPC::Encoder::operator new(0x238, v7);
    *v11 = 1689;
    *(v11 + 2) = 0;
    *(v11 + 3) = 0;
    *(v11 + 1) = v10;
    *(v11 + 68) = 0;
    *(v11 + 70) = 0;
    *(v11 + 69) = 0;
    IPC::Encoder::encodeHeader(v11);
    v20 = v11;
    IPC::VectorArgumentCoder<false,WebCore::InspectorFrontendClientSaveData,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WebCore::InspectorFrontendClientSaveData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(v11, a2);
    IPC::Encoder::operator<<<BOOL &>(v11, v18);
    IPC::Connection::sendMessageImpl(v8, &v20, 0, 0);
    v13 = v20;
    v20 = 0;
    if (v13)
    {
      IPC::Encoder::~Encoder(v13, v12);
      bmalloc::api::tzoneFree(v15, v16);
    }

    result = v19;
    v19 = 0;
    if (result)
    {
      return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(result);
    }
  }

  else
  {
    result = 92;
    __break(0xC471u);
  }

  return result;
}

atomic_ullong *WebKit::RemoteWebInspectorUI::load(uint64_t a1, void *a2, uint64_t *a3)
{
  {
    v6 = WebKit::WebProcess::singleton(void)::process;
  }

  else
  {
    v22 = WebKit::WebProcess::operator new(0x370, a2);
    v6 = WebKit::WebProcess::WebProcess(v22);
    WebKit::WebProcess::singleton(void)::process = v6;
  }

  WebKit::AuxiliaryProcess::protectedParentProcessConnection(v6, &v23);
  v7 = *(*(a1 + 40) + 8);
  if (!v7 || (v8 = v23, v9 = *(v7 + 32), v10 = *a3, *a3 = 0, v11 = WTF::fastMalloc(0x10), *v11 = &unk_1F112C2A8, v11[1] = v10, WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1))
  {
    __break(0xC471u);
    JUMPOUT(0x19E2ED678);
  }

  v12 = v11;
  IdentifierInternal = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
  v15 = IPC::Encoder::operator new(0x238, v14);
  *v15 = 1683;
  *(v15 + 2) = 0;
  *(v15 + 3) = 0;
  *(v15 + 1) = v9;
  *(v15 + 68) = 0;
  *(v15 + 70) = 0;
  *(v15 + 69) = 0;
  IPC::Encoder::encodeHeader(v15);
  v25 = v15;
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v15, a2);
  v24[0] = v12;
  v24[1] = IdentifierInternal;
  IPC::Connection::sendMessageWithAsyncReply(v8, &v25, v24, 0, 0);
  v17 = v24[0];
  v24[0] = 0;
  if (v17)
  {
    (*(*v17 + 8))(v17);
  }

  v18 = v25;
  v25 = 0;
  if (v18)
  {
    IPC::Encoder::~Encoder(v18, v16);
    bmalloc::api::tzoneFree(v20, v21);
  }

  result = v23;
  v23 = 0;
  if (result)
  {
    return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(result);
  }

  return result;
}

atomic_ullong *WebKit::RemoteWebInspectorUI::pickColorFromScreen(uint64_t a1, uint64_t *a2)
{
  {
    v4 = WebKit::WebProcess::singleton(void)::process;
  }

  else
  {
    v20 = WebKit::WebProcess::operator new(0x370, a2);
    v4 = WebKit::WebProcess::WebProcess(v20);
    WebKit::WebProcess::singleton(void)::process = v4;
  }

  WebKit::AuxiliaryProcess::protectedParentProcessConnection(v4, &v21);
  v5 = *(*(a1 + 40) + 8);
  if (!v5 || (v6 = v21, v7 = *(v5 + 32), v8 = *a2, *a2 = 0, v9 = WTF::fastMalloc(0x10), *v9 = &unk_1F112C2D0, v9[1] = v8, WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1))
  {
    __break(0xC471u);
    JUMPOUT(0x19E2ED840);
  }

  v10 = v9;
  IdentifierInternal = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
  v13 = IPC::Encoder::operator new(0x238, v12);
  *v13 = 1685;
  *(v13 + 2) = 0;
  *(v13 + 3) = 0;
  *(v13 + 1) = v7;
  *(v13 + 68) = 0;
  *(v13 + 70) = 0;
  *(v13 + 69) = 0;
  IPC::Encoder::encodeHeader(v13);
  v22[1] = IdentifierInternal;
  v23 = v13;
  v22[0] = v10;
  IPC::Connection::sendMessageWithAsyncReply(v6, &v23, v22, 0, 0);
  v15 = v22[0];
  v22[0] = 0;
  if (v15)
  {
    (*(*v15 + 8))(v15);
  }

  v16 = v23;
  v23 = 0;
  if (v16)
  {
    IPC::Encoder::~Encoder(v16, v14);
    bmalloc::api::tzoneFree(v18, v19);
  }

  result = v21;
  v21 = 0;
  if (result)
  {
    return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(result);
  }

  return result;
}

uint64_t WebKit::RemoteWebInspectorUI::showCertificate(WebKit::RemoteWebInspectorUI *this, __SecTrust **a2)
{
  {
    v4 = WebKit::WebProcess::singleton(void)::process;
  }

  else
  {
    v15 = WebKit::WebProcess::operator new(0x370, a2);
    v4 = WebKit::WebProcess::WebProcess(v15);
    WebKit::WebProcess::singleton(void)::process = v4;
  }

  WebKit::AuxiliaryProcess::protectedParentProcessConnection(v4, &v16);
  v6 = *(*(this + 5) + 8);
  if (v6)
  {
    v7 = v16;
    v8 = *(v6 + 32);
    v9 = IPC::Encoder::operator new(0x238, v5);
    *v9 = 1694;
    *(v9 + 2) = 0;
    *(v9 + 3) = 0;
    *(v9 + 1) = v8;
    *(v9 + 68) = 0;
    *(v9 + 70) = 0;
    *(v9 + 69) = 0;
    IPC::Encoder::encodeHeader(v9);
    v17 = v9;
    IPC::ArgumentCoder<__SecTrust *,void>::encode(v9, *a2);
    IPC::Connection::sendMessageImpl(v7, &v17, 0, 0);
    v11 = v17;
    v17 = 0;
    if (v11)
    {
      IPC::Encoder::~Encoder(v11, v10);
      bmalloc::api::tzoneFree(v13, v14);
    }

    result = v16;
    v16 = 0;
    if (result)
    {
      return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(result);
    }
  }

  else
  {
    result = 92;
    __break(0xC471u);
  }

  return result;
}

uint64_t WebKit::RemoteWebInspectorUI::setInspectorPageDeveloperExtrasEnabled(WebKit::RemoteWebInspectorUI *this, void *a2)
{
  v2 = a2;
  {
    v4 = WebKit::WebProcess::singleton(void)::process;
  }

  else
  {
    v15 = WebKit::WebProcess::operator new(0x370, a2);
    v4 = WebKit::WebProcess::WebProcess(v15);
    WebKit::WebProcess::singleton(void)::process = v4;
  }

  WebKit::AuxiliaryProcess::protectedParentProcessConnection(v4, &v17);
  v6 = v17;
  v16 = v2;
  v7 = *(*(this + 5) + 8);
  if (v7)
  {
    v8 = *(v7 + 32);
    v9 = IPC::Encoder::operator new(0x238, v5);
    *v9 = 1692;
    *(v9 + 2) = 0;
    *(v9 + 3) = 0;
    *(v9 + 1) = v8;
    *(v9 + 68) = 0;
    *(v9 + 70) = 0;
    *(v9 + 69) = 0;
    IPC::Encoder::encodeHeader(v9);
    v18 = v9;
    IPC::Encoder::operator<<<BOOL &>(v9, &v16);
    IPC::Connection::sendMessageImpl(v6, &v18, 0, 0);
    v11 = v18;
    v18 = 0;
    if (v11)
    {
      IPC::Encoder::~Encoder(v11, v10);
      bmalloc::api::tzoneFree(v13, v14);
    }

    result = v17;
    v17 = 0;
    if (result)
    {
      return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(result);
    }
  }

  else
  {
    result = 92;
    __break(0xC471u);
  }

  return result;
}

uint64_t WebKit::RemoteWebInspectorUI::targetPlatformName@<X0>(uint64_t this@<X0>, atomic_uint **a2@<X8>)
{
  v2 = *(this + 72);
  if (v2)
  {
    atomic_fetch_add_explicit(v2, 2u, memory_order_relaxed);
  }

  *a2 = v2;
  return this;
}

uint64_t non-virtual thunk toWebKit::RemoteWebInspectorUI::targetPlatformName@<X0>(uint64_t this@<X0>, atomic_uint **a2@<X8>)
{
  v2 = *(this + 48);
  if (v2)
  {
    atomic_fetch_add_explicit(v2, 2u, memory_order_relaxed);
  }

  *a2 = v2;
  return this;
}

uint64_t WebKit::RemoteWebInspectorUI::targetBuildVersion@<X0>(uint64_t this@<X0>, atomic_uint **a2@<X8>)
{
  v2 = *(this + 80);
  if (v2)
  {
    atomic_fetch_add_explicit(v2, 2u, memory_order_relaxed);
  }

  *a2 = v2;
  return this;
}

uint64_t non-virtual thunk toWebKit::RemoteWebInspectorUI::targetBuildVersion@<X0>(uint64_t this@<X0>, atomic_uint **a2@<X8>)
{
  v2 = *(this + 56);
  if (v2)
  {
    atomic_fetch_add_explicit(v2, 2u, memory_order_relaxed);
  }

  *a2 = v2;
  return this;
}

uint64_t WebKit::RemoteWebInspectorUI::targetProductVersion@<X0>(uint64_t this@<X0>, atomic_uint **a2@<X8>)
{
  v2 = *(this + 88);
  if (v2)
  {
    atomic_fetch_add_explicit(v2, 2u, memory_order_relaxed);
  }

  *a2 = v2;
  return this;
}

uint64_t non-virtual thunk toWebKit::RemoteWebInspectorUI::targetProductVersion@<X0>(uint64_t this@<X0>, atomic_uint **a2@<X8>)
{
  v2 = *(this + 64);
  if (v2)
  {
    atomic_fetch_add_explicit(v2, 2u, memory_order_relaxed);
  }

  *a2 = v2;
  return this;
}

uint64_t WebKit::RemoteWebInspectorUI::supportsDiagnosticLogging(WebKit::RemoteWebInspectorUI *this)
{
  v1 = *(*(this + 5) + 8);
  if (v1)
  {
    return (*(*(*(v1 + 40) + 120) + 694) >> 6) & 1;
  }

  result = 92;
  __break(0xC471u);
  return result;
}

uint64_t non-virtual thunk toWebKit::RemoteWebInspectorUI::supportsDiagnosticLogging(WebKit::RemoteWebInspectorUI *this)
{
  v1 = *(*(this + 2) + 8);
  if (v1)
  {
    return (*(*(*(v1 + 40) + 120) + 694) >> 6) & 1;
  }

  result = 92;
  __break(0xC471u);
  return result;
}

void WebKit::RemoteWebInspectorUI::logDiagnosticEvent(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(*(a1 + 40) + 8);
  if (!v3)
  {
    __break(0xC471u);
    goto LABEL_17;
  }

  CFRetain(*(v3 - 8));
  v6 = *(v3 + 40);
  if (v6)
  {
    ++*(v6 + 2);
  }

  WebCore::Page::checkedDiagnosticLoggingClient(&v13, v6);
  v7 = v13;
  if (!v13)
  {
    __break(0xC471u);
    JUMPOUT(0x19E2EDD48);
  }

  WTF::StringImpl::createWithoutCopyingNonEmpty();
  (*(*v7 + 32))(v7, a2, &v12, a3, 0);
  v9 = v12;
  v12 = 0;
  if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v9, v8);
  }

  v10 = v13;
  v13 = 0;
  if (v10)
  {
    v11 = *(v10 + 8);
    if (v11)
    {
      *(v10 + 8) = v11 - 1;
      goto LABEL_11;
    }

    __break(0xC471u);
LABEL_17:
    JUMPOUT(0x19E2EDD28);
  }

LABEL_11:
  if (v6)
  {
    WTF::RefCounted<WebCore::Page>::deref(v6 + 2);
  }

  CFRelease(*(v3 - 8));
}

WTF::StringImpl *WebKit::RemoteWebInspectorUI::setDiagnosticLoggingAvailable(WebKit::RemoteWebInspectorUI *this, char a2)
{
  v9[1] = *MEMORY[0x1E69E9840];
  *(this + 112) = a2;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  WTF::JSONImpl::Value::create(*(this + 112));
  WTF::Vector<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(v7, v9, 1uLL);
  WebCore::InspectorFrontendAPIDispatcher::dispatchCommandWithResultAsync();
  WTF::Vector<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v7, v3);
  v5 = v9[0];
  v9[0] = 0;
  if (v5)
  {
    if (*v5 == 1)
    {
      WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*v5;
    }
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

uint64_t WebKit::RemoteWebInspectorUI::frontendPage(WebKit::RemoteWebInspectorUI *this)
{
  v1 = *(*(this + 5) + 8);
  if (v1)
  {
    return *(v1 + 40);
  }

  result = 92;
  __break(0xC471u);
  return result;
}

uint64_t non-virtual thunk toWebKit::RemoteWebInspectorUI::frontendPage(WebKit::RemoteWebInspectorUI *this)
{
  v1 = *(*(this + 2) + 8);
  if (v1)
  {
    return *(v1 + 40);
  }

  result = 92;
  __break(0xC471u);
  return result;
}

void WebKit::RemoteWebInspectorUI::localizedStringsURL(atomic_uint **a1@<X8>)
{
  v2 = *MEMORY[0x1E696EBA8];
  if (*MEMORY[0x1E696EBA8])
  {
    atomic_fetch_add_explicit(v2, 2u, memory_order_relaxed);
  }

  *a1 = v2;
}

void non-virtual thunk toWebKit::RemoteWebInspectorUI::localizedStringsURL(atomic_uint **a1@<X8>)
{
  v2 = *MEMORY[0x1E696EBA8];
  if (*MEMORY[0x1E696EBA8])
  {
    atomic_fetch_add_explicit(v2, 2u, memory_order_relaxed);
  }

  *a1 = v2;
}

WebKit::WebInspectorBackendClient *WebKit::WebInspectorBackendClient::WebInspectorBackendClient(WebKit::WebInspectorBackendClient *this, WebKit::WebPage *a2)
{
  *this = &unk_1F112BC20;
  *(this + 1) = &unk_1F112BCF0;
  if (a2)
  {
    WTF::WeakPtrFactory<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(a2 + 6, a2 + 16);
    v3 = *(a2 + 3);
    if (v3)
    {
      atomic_fetch_add(v3, 1u);
    }
  }

  else
  {
    v3 = 0;
  }

  *(this + 2) = v3;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  return this;
}

void WebKit::WebInspectorBackendClient::~WebInspectorBackendClient(WebKit::WebInspectorBackendClient *this)
{
  *this = &unk_1F112BC20;
  *(this + 1) = &unk_1F112BCF0;
  v2 = *(this + 6);
  v3 = WTF::HashTable<WTF::Ref<WebKit::NetworkResourceLoader,WTF::RawPtrTraits<WebKit::NetworkResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::NetworkResourceLoader>>,WTF::Ref<WebKit::NetworkResourceLoader,WTF::RawPtrTraits<WebKit::NetworkResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::NetworkResourceLoader>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::Ref<WebKit::NetworkResourceLoader,WTF::RawPtrTraits<WebKit::NetworkResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::NetworkResourceLoader>>>,WTF::HashTraits<WTF::Ref<WebKit::NetworkResourceLoader,WTF::RawPtrTraits<WebKit::NetworkResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::NetworkResourceLoader>>>,WTF::HashTraits<WTF::Ref<WebKit::NetworkResourceLoader,WTF::RawPtrTraits<WebKit::NetworkResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::NetworkResourceLoader>>>,WTF::FastMalloc>::begin(v2);
  v5 = v3;
  v6 = v4;
  if (v2)
  {
    v7 = &v2[*(v2 - 1)];
  }

  else
  {
    v7 = 0;
  }

  if (v7 != v3)
  {
    do
    {
      v14 = *v5++;
      WebCore::GraphicsLayer::removeFromParent(v14);
      while (v5 != v6 && *v5 + 1 <= 1)
      {
        ++v5;
      }
    }

    while (v5 != v7);
    v2 = *(this + 6);
  }

  if (v2)
  {
    *(this + 6) = 0;
    WTF::HashTable<WTF::Ref<WebCore::GraphicsLayer,WTF::RawPtrTraits<WebCore::GraphicsLayer>,WTF::DefaultRefDerefTraits<WebCore::GraphicsLayer>>,WTF::Ref<WebCore::GraphicsLayer,WTF::RawPtrTraits<WebCore::GraphicsLayer>,WTF::DefaultRefDerefTraits<WebCore::GraphicsLayer>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::Ref<WebCore::GraphicsLayer,WTF::RawPtrTraits<WebCore::GraphicsLayer>,WTF::DefaultRefDerefTraits<WebCore::GraphicsLayer>>>,WTF::HashTraits<WTF::Ref<WebCore::GraphicsLayer,WTF::RawPtrTraits<WebCore::GraphicsLayer>,WTF::DefaultRefDerefTraits<WebCore::GraphicsLayer>>>,WTF::HashTraits<WTF::Ref<WebCore::GraphicsLayer,WTF::RawPtrTraits<WebCore::GraphicsLayer>,WTF::DefaultRefDerefTraits<WebCore::GraphicsLayer>>>,WTF::FastMalloc>::deallocateTable(v2, v4);
  }

  v8 = *(this + 4);
  if (v8)
  {
    ++*(v8 + 16);
    v15 = *(this + 2);
    if (v15)
    {
      v16 = *(v15 + 8);
      if (v16)
      {
        CFRetain(*(v16 - 8));
        if (*(v16 + 40))
        {
          WebCore::PageOverlayController::uninstallPageOverlay();
        }

        CFRelease(*(v16 - 8));
      }
    }

    WTF::RefCounted<WebCore::PageOverlay>::deref((v8 + 16));
  }

  v9 = *(this + 6);
  if (v9)
  {
    WTF::HashTable<WTF::Ref<WebCore::GraphicsLayer,WTF::RawPtrTraits<WebCore::GraphicsLayer>,WTF::DefaultRefDerefTraits<WebCore::GraphicsLayer>>,WTF::Ref<WebCore::GraphicsLayer,WTF::RawPtrTraits<WebCore::GraphicsLayer>,WTF::DefaultRefDerefTraits<WebCore::GraphicsLayer>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::Ref<WebCore::GraphicsLayer,WTF::RawPtrTraits<WebCore::GraphicsLayer>,WTF::DefaultRefDerefTraits<WebCore::GraphicsLayer>>>,WTF::HashTraits<WTF::Ref<WebCore::GraphicsLayer,WTF::RawPtrTraits<WebCore::GraphicsLayer>,WTF::DefaultRefDerefTraits<WebCore::GraphicsLayer>>>,WTF::HashTraits<WTF::Ref<WebCore::GraphicsLayer,WTF::RawPtrTraits<WebCore::GraphicsLayer>,WTF::DefaultRefDerefTraits<WebCore::GraphicsLayer>>>,WTF::FastMalloc>::deallocateTable(v9, v4);
  }

  v10 = *(this + 5);
  *(this + 5) = 0;
  if (v10)
  {
    bmalloc::api::tzoneFree(v10, v4);
  }

  v11 = *(this + 4);
  *(this + 4) = 0;
  if (v11)
  {
    WTF::RefCounted<WebCore::PageOverlay>::deref((v11 + 16));
  }

  v12 = *(this + 3);
  *(this + 3) = 0;
  if (v12 && atomic_fetch_add(v12, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v12);
    WTF::fastFree(v12, v4);
  }

  v13 = *(this + 2);
  *(this + 2) = 0;
  if (v13)
  {
    if (atomic_fetch_add(v13, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v13);
      WTF::fastFree(v13, v4);
    }
  }
}

{
  WebKit::WebInspectorBackendClient::~WebInspectorBackendClient(this);

  bmalloc::api::tzoneFree(v1, v2);
}

void non-virtual thunk toWebKit::WebInspectorBackendClient::~WebInspectorBackendClient(WebKit::WebInspectorBackendClient *this)
{
  WebKit::WebInspectorBackendClient::~WebInspectorBackendClient((this - 8));
}

{
  WebKit::WebInspectorBackendClient::~WebInspectorBackendClient((this - 8));

  bmalloc::api::tzoneFree(v1, v2);
}

void WebKit::WebInspectorBackendClient::inspectedPageDestroyed(WebKit::WebInspectorBackendClient *this)
{
  v1 = *(this + 2);
  if (v1)
  {
    v2 = *(v1 + 8);
    if (v2)
    {
      CFRetain(*(v2 - 8));
      if ((*(v2 + 186) & 1) == 0)
      {
        v5 = *(v2 + 408);
        if (v5)
        {
          atomic_fetch_add(v5 + 5, 1u);
          WebKit::WebInspector::close(v5, v3);
          if (atomic_fetch_add(v5 + 5, 0xFFFFFFFF) == 1)
          {
            atomic_store(1u, v5 + 5);
            (*(*v5 + 24))(v5);
          }
        }
      }

      v4 = *(v2 - 8);

      CFRelease(v4);
    }
  }
}

uint64_t WebKit::WebInspector::close(uint64_t this, void *a2)
{
  v2 = *(this + 24);
  if (v2 && (v3 = *(v2 + 8)) != 0)
  {
    if (*(v3 + 40))
    {
      if (*(this + 32))
      {
        return WebKit::WebInspector::closeFrontendConnection(this, a2);
      }
    }
  }

  else
  {
    this = 121;
    __break(0xC471u);
  }

  return this;
}

void WebKit::WebInspectorBackendClient::frontendCountChanged(WebKit::WebInspectorBackendClient *this, int a2)
{
  v2 = *(this + 2);
  if (v2)
  {
    v3 = *(v2 + 8);
    if (v3)
    {
      CFRetain(*(v3 - 8));
      WebKit::WebPage::inspectorFrontendCountChanged((v3 - 16), a2);
      v5 = *(v3 - 8);

      CFRelease(v5);
    }
  }
}

uint64_t WebKit::WebInspectorBackendClient::openLocalFrontend(WebKit::WebInspectorBackendClient *this, WebCore::InspectorController *a2)
{
  v2 = *(this + 2);
  if (!v2)
  {
    return 0;
  }

  v3 = *(v2 + 8);
  if (!v3)
  {
    return 0;
  }

  CFRetain(*(v3 - 8));
  v4 = WebKit::WebPage::inspector((v3 - 16), 1);
  v6 = v4;
  if (v4)
  {
    atomic_fetch_add((v4 + 20), 1u);
  }

  {
    v7 = WebKit::WebProcess::singleton(void)::process;
  }

  else
  {
    v20 = WebKit::WebProcess::operator new(0x370, v5);
    v7 = WebKit::WebProcess::WebProcess(v20);
    WebKit::WebProcess::singleton(void)::process = v7;
  }

  WebKit::AuxiliaryProcess::protectedParentProcessConnection(v7, &v21);
  v9 = *(v6 + 24);
  if (v9)
  {
    v10 = *(v9 + 8);
    if (v10)
    {
      v11 = v21;
      v12 = *(v10 + 32);
      v13 = IPC::Encoder::operator new(0x238, v8);
      *v13 = 2089;
      *(v13 + 2) = 0;
      *(v13 + 3) = 0;
      *(v13 + 1) = v12;
      *(v13 + 68) = 0;
      *(v13 + 70) = 0;
      *(v13 + 69) = 0;
      IPC::Encoder::encodeHeader(v13);
      v22 = v13;
      IPC::Connection::sendMessageImpl(v11, &v22, 0, 0);
      v15 = v22;
      v22 = 0;
      if (v15)
      {
        IPC::Encoder::~Encoder(v15, v14);
        bmalloc::api::tzoneFree(v18, v19);
      }

      v16 = v21;
      v21 = 0;
      if (v16)
      {
        WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v16);
      }

      if (atomic_fetch_add((v6 + 20), 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, (v6 + 20));
        (*(*v6 + 24))(v6);
      }

      CFRelease(*(v3 - 8));
      return 0;
    }
  }

  result = 121;
  __break(0xC471u);
  return result;
}

void WebKit::WebInspectorBackendClient::bringFrontendToFront(WebKit::WebInspectorBackendClient *this)
{
  v1 = *(this + 2);
  if (v1)
  {
    v2 = *(v1 + 8);
    if (v2)
    {
      CFRetain(*(v2 - 8));
      v3 = WebKit::WebPage::inspector((v2 - 16), 1);
      if (v3)
      {
        v6 = v3;
        atomic_fetch_add((v3 + 20), 1u);
        {
          v7 = WebKit::WebProcess::singleton(void)::process;
        }

        else
        {
          v11 = WebKit::WebProcess::operator new(0x370, v4);
          v7 = WebKit::WebProcess::WebProcess(v11);
          WebKit::WebProcess::singleton(void)::process = v7;
        }

        WebKit::AuxiliaryProcess::protectedParentProcessConnection(v7, &v12);
        v8 = *(v6 + 24);
        if (!v8 || (v9 = *(v8 + 8)) == 0)
        {
          __break(0xC471u);
          return;
        }

        IPC::Connection::send<Messages::WebInspectorUIProxy::BringToFront>(v12, *(v9 + 32));
        v10 = v12;
        v12 = 0;
        if (v10)
        {
          WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v10);
        }

        if (atomic_fetch_add((v6 + 20), 0xFFFFFFFF) == 1)
        {
          atomic_store(1u, (v6 + 20));
          (*(*v6 + 24))(v6);
        }
      }

      v5 = *(v2 - 8);

      CFRelease(v5);
    }
  }
}

void WebKit::WebInspectorBackendClient::didResizeMainFrame(WebKit::WebInspectorBackendClient *this, WebCore::LocalFrame *a2)
{
  v2 = *(this + 2);
  if (!v2)
  {
    return;
  }

  v3 = *(v2 + 8);
  if (!v3)
  {
    return;
  }

  CFRetain(*(v3 - 8));
  v4 = WebKit::WebPage::inspector((v3 - 16), 1);
  if (v4)
  {
    v7 = v4;
    v8 = (v4 + 20);
    atomic_fetch_add((v4 + 20), 1u);
    if ((*(v4 + 56) & 1) == 0)
    {
      v9 = *(v4 + 24);
      if (v9 && (v10 = *(v9 + 8)) != 0)
      {
        if (!v10[5] || v10[52] || v10[53] || (CFRetain(*(v10 - 1)), WebKit::WebPage::localMainFrame((v10 - 2), &v36), CFRelease(*(v10 - 1)), !v36))
        {
          v11 = 0;
        }

        else
        {
          v22 = *(v36 + 27);
          if (v22)
          {
            ++*(v22 + 8);
          }

          v23 = (*(*(v22 + 64) + 488))(v22 + 64);
          if (*(v22 + 8) == 1)
          {
            v31 = v23;
            (*(*v22 + 8))(v22);
            v23 = v31;
          }

          else
          {
            --*(v22 + 8);
          }

          v24 = HIDWORD(v23);
          v25 = *(v36 + 27);
          if (v25)
          {
            ++*(v25 + 8);
          }

          v26 = (*(*(v25 + 64) + 488))(v25 + 64);
          if (*(v25 + 8) == 1)
          {
            v32 = v26;
            (*(*v25 + 8))(v25);
            v26 = v32;
          }

          else
          {
            --*(v25 + 8);
          }

          v11 = (v24 * 0.75) > 0xF9 && v26 > 0x1F3;
          v28 = v36;
          v36 = 0;
          if (v28)
          {
            if (*(v28 + 4) == 1)
            {
              (*(*v28 + 8))(v28);
            }

            else
            {
              --*(v28 + 4);
            }
          }
        }

        if (*(v7 + 57) == v11)
        {
          goto LABEL_24;
        }

        *(v7 + 57) = v11;
        {
          v12 = WebKit::WebProcess::singleton(void)::process;
        }

        else
        {
          v33 = WebKit::WebProcess::operator new(0x370, v5);
          v12 = WebKit::WebProcess::WebProcess(v33);
          WebKit::WebProcess::singleton(void)::process = v12;
        }

        WebKit::AuxiliaryProcess::protectedParentProcessConnection(v12, &v35);
        v14 = v35;
        v34 = v11;
        v15 = *(v7 + 24);
        if (v15)
        {
          v16 = *(v15 + 8);
          if (v16)
          {
            v17 = *(v16 + 32);
            v18 = IPC::Encoder::operator new(0x238, v13);
            *v18 = 2074;
            *(v18 + 2) = 0;
            *(v18 + 3) = 0;
            *(v18 + 1) = v17;
            *(v18 + 68) = 0;
            *(v18 + 70) = 0;
            *(v18 + 69) = 0;
            IPC::Encoder::encodeHeader(v18);
            v36 = v18;
            IPC::Encoder::operator<<<BOOL &>(v18, &v34);
            IPC::Connection::sendMessageImpl(v14, &v36, 0, 0);
            v20 = v36;
            v36 = 0;
            if (v20)
            {
              IPC::Encoder::~Encoder(v20, v19);
              bmalloc::api::tzoneFree(v29, v30);
            }

            v21 = v35;
            v35 = 0;
            if (v21)
            {
              WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v21);
            }

            goto LABEL_24;
          }
        }

        __break(0xC471u);
      }

      else
      {
        __break(0xC471u);
      }

      JUMPOUT(0x19E2EEA9CLL);
    }

LABEL_24:
    if (atomic_fetch_add(v8, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, (v7 + 20));
      (*(*v7 + 24))(v7);
    }
  }

  v6 = *(v3 - 8);

  CFRelease(v6);
}

void WebKit::WebInspectorBackendClient::highlight(WebKit::WebInspectorBackendClient *this)
{
  v1 = *(this + 2);
  if (v1)
  {
    v2 = *(v1 + 8);
    if (v2)
    {
      CFRetain(*(v2 - 8));
      if (*(*(*(v2 + 40) + 120) + 680))
      {
        v5 = 0;
        memset(v4, 0, sizeof(v4));
        v6 = 1;
        v8 = 0u;
        v9 = 0u;
        v7 = 0u;
        v10 = 1;
        WebCore::InspectorController::getHighlight();
        v11 = v4;
        IPC::MessageSender::send<Messages::WebPageProxy::ShowInspectorHighlight>(v2 + 16, &v11);
        WebCore::InspectorOverlayHighlight::~InspectorOverlayHighlight(v4, v3);
      }

      CFRelease(*(v2 - 8));
    }
  }
}

void WebKit::WebInspectorBackendClient::hideHighlight(WebKit::WebInspectorBackendClient *this)
{
  v1 = *(this + 2);
  if (v1)
  {
    v2 = *(v1 + 8);
    if (v2)
    {
      CFRetain(*(v2 - 8));
      WebKit::WebPage::hideInspectorHighlight((v2 - 16));
      v3 = *(v2 - 8);

      CFRelease(v3);
    }
  }
}

void WebKit::WebInspectorBackendClient::showPaintRect(WebKit::WebInspectorBackendClient *this, WTF::StringImpl **a2)
{
  v2 = *(this + 2);
  if (!v2)
  {
    return;
  }

  v3 = *(v2 + 8);
  if (!v3)
  {
    return;
  }

  CFRetain(*(v3 - 8));
  if ((*(*(*(v3 + 40) + 120) + 680) & 1) == 0)
  {
    goto LABEL_62;
  }

  v7 = *(this + 4);
  if (!v7)
  {
    WebCore::PageOverlay::create();
    v7 = v55;
    v55 = 0;
    v8 = *(this + 4);
    *(this + 4) = v7;
    if (v8)
    {
      WTF::RefCounted<WebCore::PageOverlay>::deref((v8 + 16));
      v49 = v55;
      v55 = 0;
      if (v49)
      {
        WTF::RefCounted<WebCore::PageOverlay>::deref(v49 + 4);
      }

      v7 = *(this + 4);
      if (!v7)
      {
        goto LABEL_7;
      }
    }

    else if (!v7)
    {
LABEL_7:
      WebCore::PageOverlayController::installPageOverlay();
      goto LABEL_8;
    }

    ++*(v7 + 4);
    goto LABEL_7;
  }

  ++*(v7 + 4);
LABEL_8:
  if (!*(this + 5))
  {
    v9 = (WebKit::RepaintIndicatorLayerClient::operator new(unsigned long)::s_heapRef ? bmalloc::api::tzoneAllocateNonCompact(WebKit::RepaintIndicatorLayerClient::operator new(unsigned long)::s_heapRef, v6) : bmalloc::api::tzoneAllocateNonCompactSlow());
    *v9 = &unk_1F112C188;
    v9[1] = this;
    v11 = *(this + 5);
    *(this + 5) = v9;
    if (v11)
    {
      bmalloc::api::tzoneFree(v11, v10);
    }
  }

  v12 = *(v3 + 56);
  if (v12)
  {
    ++v12[4];
  }

  (*(*v12 + 248))(v12);
  WebCore::GraphicsLayer::create();
  if (v12[4] == 1)
  {
    (*(*v12 + 24))(v12);
  }

  else
  {
    --v12[4];
  }

  v13 = v58;
  atomic_fetch_add_explicit(WebKit::WebInspectorBackendClient::showPaintRect(WebCore::FloatRect const&)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
  v55 = WebKit::WebInspectorBackendClient::showPaintRect(WebCore::FloatRect const&)::$_0::operator() const(void)::impl;
  (*(*v13 + 48))(v13, &v55);
  v15 = v55;
  v55 = 0;
  if (v15 && atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v15, v14);
  }

  LODWORD(v56) = 0;
  v55 = 0;
  (*(*v58 + 160))(v58, &v55);
  v55 = *a2;
  (*(*v58 + 136))(v58, &v55);
  v55 = a2[1];
  (*(*v58 + 168))(v58, &v55);
  v55 = 0x11040000FF000033;
  (*(*v58 + 296))();
  if ((v55 & 0x8000000000000) != 0)
  {
    v50 = (v55 & 0xFFFFFFFFFFFFLL);
    if (atomic_fetch_add((v55 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v50);
      WTF::fastFree(v50, v16);
    }
  }

  v55 = 0;
  v56 = 0;
  v57 = 5;
  v17 = WebCore::FloatAnimationValue::operator new(0x20, v16);
  *(v17 + 8) = 0;
  *(v17 + 16) = 0;
  *v17 = &unk_1F11117D0;
  *(v17 + 24) = 1065353216;
  v54 = v17;
  WebCore::KeyframeValueList::insert();
  v19 = v54;
  v54 = 0;
  if (v19)
  {
    (*(*v19 + 8))(v19);
  }

  v20 = WebCore::FloatAnimationValue::operator new(0x20, v18);
  *(v20 + 8) = 0x3FD0000000000000;
  *(v20 + 16) = 0;
  *v20 = &unk_1F11117D0;
  *(v20 + 24) = 0;
  v53 = v20;
  WebCore::KeyframeValueList::insert();
  v21 = v53;
  v53 = 0;
  if (v21)
  {
    (*(*v21 + 8))(v21);
  }

  v22 = WTF::fastMalloc(0xA8);
  v23 = WebCore::Animation::Animation(v22);
  *(v23 + 64) = 0x3FD0000000000000;
  *(v23 + 160) |= 0x800u;
  v24 = v58;
  v52 = 0;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  (*(*v24 + 456))(v24, &v55, &v52, v22, &v51, 0.0);
  v26 = v51;
  v51 = 0;
  if (v26 && atomic_fetch_add_explicit(v26, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v26, v25);
  }

  v27 = v58;
  ++v58[2];
  if (v27 == -1 || !v27)
  {
    __break(0xC471u);
    JUMPOUT(0x19E2EF3A8);
  }

  v28 = *(this + 6);
  if (v28 || (WTF::HashTable<WTF::Ref<WebCore::GraphicsLayer,WTF::RawPtrTraits<WebCore::GraphicsLayer>,WTF::DefaultRefDerefTraits<WebCore::GraphicsLayer>>,WTF::Ref<WebCore::GraphicsLayer,WTF::RawPtrTraits<WebCore::GraphicsLayer>,WTF::DefaultRefDerefTraits<WebCore::GraphicsLayer>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::Ref<WebCore::GraphicsLayer,WTF::RawPtrTraits<WebCore::GraphicsLayer>,WTF::DefaultRefDerefTraits<WebCore::GraphicsLayer>>>,WTF::HashTraits<WTF::Ref<WebCore::GraphicsLayer,WTF::RawPtrTraits<WebCore::GraphicsLayer>,WTF::DefaultRefDerefTraits<WebCore::GraphicsLayer>>>,WTF::HashTraits<WTF::Ref<WebCore::GraphicsLayer,WTF::RawPtrTraits<WebCore::GraphicsLayer>,WTF::DefaultRefDerefTraits<WebCore::GraphicsLayer>>>,WTF::FastMalloc>::expand(this + 6), (v28 = *(this + 6)) != 0))
  {
    v29 = *(v28 - 8);
  }

  else
  {
    v29 = 0;
  }

  v30 = 0;
  v31 = v58;
  v32 = (v58 + ~(v58 << 32)) ^ ((v58 + ~(v58 << 32)) >> 22);
  v33 = 9 * ((v32 + ~(v32 << 13)) ^ ((v32 + ~(v32 << 13)) >> 8));
  v34 = (v33 ^ (v33 >> 15)) + ~((v33 ^ (v33 >> 15)) << 27);
  v35 = (v34 >> 31) ^ v34;
  for (i = 1; ; ++i)
  {
    v37 = v35 & v29;
    v38 = (v28 + 8 * v37);
    v39 = *v38;
    if (*v38 == -1)
    {
      v30 = (v28 + 8 * v37);
      goto LABEL_40;
    }

    if (!v39)
    {
      break;
    }

    if (v39 == v58)
    {
      goto LABEL_51;
    }

LABEL_40:
    v35 = i + v37;
  }

  if (v30)
  {
    *v30 = 0;
    --*(*(this + 6) - 16);
    v31 = v58;
    v38 = v30;
  }

  v58 = 0;
  v40 = *v38;
  *v38 = v31;
  if (v40)
  {
    if (v40[2] == 1)
    {
      (*(*v40 + 16))(v40);
    }

    else
    {
      --v40[2];
    }
  }

  v41 = *(this + 6);
  if (v41)
  {
    v42 = *(v41 - 12) + 1;
  }

  else
  {
    v42 = 1;
  }

  *(v41 - 12) = v42;
  v43 = (*(v41 - 16) + v42);
  v44 = *(v41 - 4);
  if (v44 > 0x400)
  {
    if (v44 <= 2 * v43)
    {
LABEL_50:
      WTF::HashTable<WTF::Ref<WebCore::GraphicsLayer,WTF::RawPtrTraits<WebCore::GraphicsLayer>,WTF::DefaultRefDerefTraits<WebCore::GraphicsLayer>>,WTF::Ref<WebCore::GraphicsLayer,WTF::RawPtrTraits<WebCore::GraphicsLayer>,WTF::DefaultRefDerefTraits<WebCore::GraphicsLayer>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::Ref<WebCore::GraphicsLayer,WTF::RawPtrTraits<WebCore::GraphicsLayer>,WTF::DefaultRefDerefTraits<WebCore::GraphicsLayer>>>,WTF::HashTraits<WTF::Ref<WebCore::GraphicsLayer,WTF::RawPtrTraits<WebCore::GraphicsLayer>,WTF::DefaultRefDerefTraits<WebCore::GraphicsLayer>>>,WTF::HashTraits<WTF::Ref<WebCore::GraphicsLayer,WTF::RawPtrTraits<WebCore::GraphicsLayer>,WTF::DefaultRefDerefTraits<WebCore::GraphicsLayer>>>,WTF::FastMalloc>::expand(this + 6);
    }
  }

  else if (3 * v44 <= 4 * v43)
  {
    goto LABEL_50;
  }

LABEL_51:
  v45 = WebCore::PageOverlay::layer(v7);
  ++v45[2];
  ++v27[2];
  v52 = v27;
  (*(*v45 + 72))(v45, &v52);
  v46 = v52;
  v52 = 0;
  if (v46)
  {
    if (v46[2] == 1)
    {
      (*(*v46 + 16))(v46);
    }

    else
    {
      --v46[2];
    }
  }

  if (v45[2] == 1)
  {
    (*(*v45 + 16))(v45);
  }

  else
  {
    --v45[2];
  }

  if (v27[2] == 1)
  {
    (*(*v27 + 16))(v27);
  }

  else
  {
    --v27[2];
  }

  WTF::RefCounted<WebCore::Animation>::deref(v22);
  WTF::Vector<std::unique_ptr<WebCore::AnimationValue const>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v55, v47);
  v48 = v58;
  v58 = 0;
  if (v48)
  {
    if (v48[2] == 1)
    {
      (*(*v48 + 16))(v48);
    }

    else
    {
      --v48[2];
    }
  }

  WTF::RefCounted<WebCore::PageOverlay>::deref(v7 + 4);
LABEL_62:
  CFRelease(*(v3 - 8));
}

void WebKit::WebInspectorBackendClient::showInspectorIndication(WebKit::WebInspectorBackendClient *this)
{
  v1 = *(this + 2);
  if (v1)
  {
    v2 = *(v1 + 8);
    if (v2)
    {
      CFRetain(*(v2 - 8));
      WebKit::WebPage::showInspectorIndication((v2 - 16));
      v3 = *(v2 - 8);

      CFRelease(v3);
    }
  }
}

void WebKit::WebInspectorBackendClient::hideInspectorIndication(WebKit::WebInspectorBackendClient *this)
{
  v1 = *(this + 2);
  if (v1)
  {
    v2 = *(v1 + 8);
    if (v2)
    {
      CFRetain(*(v2 - 8));
      WebKit::WebPage::hideInspectorIndication((v2 - 16));
      v3 = *(v2 - 8);

      CFRelease(v3);
    }
  }
}

void WebKit::WebInspectorBackendClient::didSetSearchingForNode(WebKit::WebInspectorBackendClient *this, int a2)
{
  v2 = *(this + 2);
  if (v2)
  {
    v3 = *(v2 + 8);
    if (v3)
    {
      CFRetain(*(v3 - 8));
      v5 = (v3 - 16);
      if (a2)
      {
        WebKit::WebPage::enableInspectorNodeSearch(v5);
      }

      else
      {
        WebKit::WebPage::disableInspectorNodeSearch(v5);
      }

      v6 = *(v3 - 8);

      CFRelease(v6);
    }
  }
}

void WebKit::WebInspectorBackendClient::elementSelectionChanged(WebKit::WebInspectorBackendClient *this, char a2)
{
  v2 = *(this + 2);
  if (v2)
  {
    v3 = *(v2 + 8);
    if (v3)
    {
      CFRetain(*(v3 - 8));
      v5 = WebKit::WebPage::inspector((v3 - 16), 1);
      if (v5)
      {
        v8 = v5;
        atomic_fetch_add((v5 + 20), 1u);
        {
          v9 = WebKit::WebProcess::singleton(void)::process;
        }

        else
        {
          v21 = WebKit::WebProcess::operator new(0x370, v6);
          v9 = WebKit::WebProcess::WebProcess(v21);
          WebKit::WebProcess::singleton(void)::process = v9;
        }

        WebKit::AuxiliaryProcess::protectedParentProcessConnection(v9, &v23);
        v11 = v23;
        v22 = a2;
        v12 = *(v8 + 24);
        if (!v12 || (v13 = *(v12 + 8)) == 0)
        {
          __break(0xC471u);
          return;
        }

        v14 = *(v13 + 32);
        v15 = IPC::Encoder::operator new(0x238, v10);
        *v15 = 2082;
        *(v15 + 2) = 0;
        *(v15 + 3) = 0;
        *(v15 + 1) = v14;
        *(v15 + 68) = 0;
        *(v15 + 70) = 0;
        *(v15 + 69) = 0;
        IPC::Encoder::encodeHeader(v15);
        v24 = v15;
        IPC::Encoder::operator<<<BOOL &>(v15, &v22);
        IPC::Connection::sendMessageImpl(v11, &v24, 0, 0);
        v17 = v24;
        v24 = 0;
        if (v17)
        {
          IPC::Encoder::~Encoder(v17, v16);
          bmalloc::api::tzoneFree(v19, v20);
        }

        v18 = v23;
        v23 = 0;
        if (v18)
        {
          WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v18);
        }

        if (atomic_fetch_add((v8 + 20), 0xFFFFFFFF) == 1)
        {
          atomic_store(1u, (v8 + 20));
          (*(*v8 + 24))(v8);
        }
      }

      v7 = *(v3 - 8);

      CFRelease(v7);
    }
  }
}

void WebKit::WebInspectorBackendClient::timelineRecordingChanged(WebKit::WebInspectorBackendClient *this, char a2)
{
  v2 = *(this + 2);
  if (v2)
  {
    v3 = *(v2 + 8);
    if (v3)
    {
      CFRetain(*(v3 - 8));
      v5 = WebKit::WebPage::inspector((v3 - 16), 1);
      if (v5)
      {
        v8 = v5;
        atomic_fetch_add((v5 + 20), 1u);
        {
          v9 = WebKit::WebProcess::singleton(void)::process;
        }

        else
        {
          v21 = WebKit::WebProcess::operator new(0x370, v6);
          v9 = WebKit::WebProcess::WebProcess(v21);
          WebKit::WebProcess::singleton(void)::process = v9;
        }

        WebKit::AuxiliaryProcess::protectedParentProcessConnection(v9, &v23);
        v11 = v23;
        v22 = a2;
        v12 = *(v8 + 24);
        if (!v12 || (v13 = *(v12 + 8)) == 0)
        {
          __break(0xC471u);
          return;
        }

        v14 = *(v13 + 32);
        v15 = IPC::Encoder::operator new(0x238, v10);
        *v15 = 2103;
        *(v15 + 2) = 0;
        *(v15 + 3) = 0;
        *(v15 + 1) = v14;
        *(v15 + 68) = 0;
        *(v15 + 70) = 0;
        *(v15 + 69) = 0;
        IPC::Encoder::encodeHeader(v15);
        v24 = v15;
        IPC::Encoder::operator<<<BOOL &>(v15, &v22);
        IPC::Connection::sendMessageImpl(v11, &v24, 0, 0);
        v17 = v24;
        v24 = 0;
        if (v17)
        {
          IPC::Encoder::~Encoder(v17, v16);
          bmalloc::api::tzoneFree(v19, v20);
        }

        v18 = v23;
        v23 = 0;
        if (v18)
        {
          WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v18);
        }

        if (atomic_fetch_add((v8 + 20), 0xFFFFFFFF) == 1)
        {
          atomic_store(1u, (v8 + 20));
          (*(*v8 + 24))(v8);
        }
      }

      v7 = *(v3 - 8);

      CFRelease(v7);
    }
  }
}

void WebKit::WebInspectorBackendClient::setDeveloperPreferenceOverride(uint64_t a1, char a2, __int16 a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = *(v3 + 8);
    if (v4)
    {
      CFRetain(*(v4 - 8));
      v7 = WebKit::WebPage::inspector((v4 - 16), 1);
      if (v7)
      {
        v10 = v7;
        atomic_fetch_add((v7 + 20), 1u);
        v25 = a3;
        {
          v11 = WebKit::WebProcess::singleton(void)::process;
        }

        else
        {
          v23 = WebKit::WebProcess::operator new(0x370, v8);
          v11 = WebKit::WebProcess::WebProcess(v23);
          WebKit::WebProcess::singleton(void)::process = v11;
        }

        WebKit::AuxiliaryProcess::protectedParentProcessConnection(v11, &v24);
        v13 = *(v10 + 24);
        if (!v13 || (v14 = *(v13 + 8)) == 0)
        {
          __break(0xC471u);
          return;
        }

        v15 = v24;
        v16 = *(v14 + 32);
        v17 = IPC::Encoder::operator new(0x238, v12);
        *v17 = 2096;
        *(v17 + 2) = 0;
        *(v17 + 3) = 0;
        *(v17 + 1) = v16;
        *(v17 + 68) = 0;
        *(v17 + 70) = 0;
        *(v17 + 69) = 0;
        IPC::Encoder::encodeHeader(v17);
        v26 = v17;
        IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(v17, a2);
        IPC::ArgumentCoder<std::optional<BOOL>,void>::encode<IPC::Encoder,std::optional<BOOL> const&>(v17, &v25);
        IPC::Connection::sendMessageImpl(v15, &v26, 0, 0);
        v19 = v26;
        v26 = 0;
        if (v19)
        {
          IPC::Encoder::~Encoder(v19, v18);
          bmalloc::api::tzoneFree(v21, v22);
        }

        v20 = v24;
        v24 = 0;
        if (v20)
        {
          WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v20);
        }

        if (atomic_fetch_add((v10 + 20), 0xFFFFFFFF) == 1)
        {
          atomic_store(1u, (v10 + 20));
          (*(*v10 + 24))(v10);
        }
      }

      v9 = *(v4 - 8);

      CFRelease(v9);
    }
  }
}

uint64_t WebKit::WebInspectorBackendClient::willMoveToPage(uint64_t this, WebCore::PageOverlay *a2, WebCore::Page *a3)
{
  if (!a3)
  {
    v3 = this;
    this = *(this + 24);
    *(v3 + 24) = 0;
    if (this)
    {
      if (atomic_fetch_add(this, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, this);
        return WTF::fastFree(this, a2);
      }
    }
  }

  return this;
}

uint64_t non-virtual thunk toWebKit::WebInspectorBackendClient::willMoveToPage(uint64_t this, WebCore::PageOverlay *a2, WebCore::Page *a3)
{
  if (!a3)
  {
    v3 = this;
    this = *(this + 16);
    *(v3 + 16) = 0;
    if (this)
    {
      if (atomic_fetch_add(this, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, this);
        return WTF::fastFree(this, a2);
      }
    }
  }

  return this;
}

void WebKit::WebInspectorBackendClient::drawRect(WebKit::WebInspectorBackendClient *this, WebCore::PageOverlay *a2, WebCore::GraphicsContext *a3, const WebCore::IntRect *a4)
{
  v4 = *(this + 2);
  if (v4)
  {
    v5 = *(v4 + 8);
    if (v5)
    {
      CFRetain(*(v5 - 8));
      WebCore::InspectorController::drawHighlight(*(*(v5 + 40) + 88), a3);
      v7 = *(v5 - 8);

      CFRelease(v7);
    }
  }
}

unsigned int *WebKit::WebInspector::create@<X0>(WebKit::WebInspector *this@<X0>, uint64_t *a2@<X8>)
{
  v5 = WTF::fastMalloc(0x40);
  *(v5 + 16) = 0x100000000;
  *v5 = &unk_1F112BD50;
  *(v5 + 8) = 0;
  result = WTF::WeakPtrFactory<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(this + 6, this + 16);
  v7 = *(this + 3);
  atomic_fetch_add(v7, 1u);
  *(v5 + 24) = v7;
  *(v5 + 32) = 0;
  *(v5 + 40) = 0;
  *(v5 + 48) = 0;
  *(v5 + 56) = 0;
  *a2 = v5;
  return result;
}

void WebKit::WebInspector::~WebInspector(WebKit::WebInspector *this, void *a2)
{
  *this = &unk_1F112BD50;
  v3 = *(this + 4);
  if (v3)
  {
    while (1)
    {
      v4 = *v3;
      if ((*v3 & 1) == 0)
      {
        break;
      }

      v5 = *v3;
      atomic_compare_exchange_strong_explicit(v3, &v5, v4 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v5 == v4)
      {
        goto LABEL_6;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v3);
LABEL_6:
    IPC::Connection::invalidate(v3);
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  v6 = *(this + 13);
  v7 = *(this + 5);
  if (v6)
  {
    v8 = 8 * v6;
    do
    {
      v9 = *v7;
      *v7 = 0;
      if (v9)
      {
        (*(*v9 + 8))(v9);
      }

      v7 = (v7 + 8);
      v8 -= 8;
    }

    while (v8);
    v7 = *(this + 5);
  }

  if (v7)
  {
    *(this + 5) = 0;
    *(this + 12) = 0;
    WTF::fastFree(v7, a2);
  }

  v10 = *(this + 4);
  *(this + 4) = 0;
  if (v10)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v10);
  }

  v11 = *(this + 3);
  *(this + 3) = 0;
  if (v11 && atomic_fetch_add(v11, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v11);
    WTF::fastFree(v11, a2);
  }

  *this = &unk_1F10EA5E0;
  WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::~WeakPtrFactory(this + 1, a2);
}

{
  WebKit::WebInspector::~WebInspector(this, a2);
  if (atomic_load((v2 + 16)))
  {
    *(v2 + 32) = 0u;
    *(v2 + 48) = 0u;
    *v2 = 0u;
    *(v2 + 16) = 0u;
  }

  else
  {

    WTF::fastFree(v2, v3);
  }
}

atomic_ullong *WebKit::WebInspector::setFrontendConnection(atomic_ullong *result, WTF::MachSendRight *this)
{
  v3 = result;
  v4 = result[4];
  result[4] = 0;
  if (v4)
  {
    IPC::Connection::invalidate(v4);
    result = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v4);
  }

  if ((*this - 1) <= 0xFFFFFFFD)
  {
    v16 = WTF::MachSendRight::leakSendRight(this);
    object = 0;
    v5 = WTF::fastMalloc(0x188);
    IPC::Connection::Connection(v5, &v16, 0);
    if (object)
    {
      os_release(object);
    }

    while (1)
    {
      v6 = *v5;
      if ((*v5 & 1) == 0)
      {
        break;
      }

      v7 = *v5;
      atomic_compare_exchange_strong_explicit(v5, &v7, v6 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v7 == v6)
      {
        goto LABEL_10;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v5);
LABEL_10:
    v8 = *(v3 + 32);
    *(v3 + 32) = v5;
    if (v8)
    {
      v8 = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v8);
    }

    v9 = WTF::RunLoop::currentSingleton(v8);
    IPC::Connection::open(v5, v3, v9);
    v12 = *(v3 + 40);
    v10 = (v3 + 40);
    v11 = v12;
    v13 = v10[3];
    if (v13)
    {
      v14 = 8 * v13;
      do
      {
        v15 = *v11++;
        (*(*v15 + 16))(v15, v5);
        v14 -= 8;
      }

      while (v14);
    }

    WTF::Vector<WTF::Function<void ()(IPC::Connection &)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity(v10, 0);
    return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v5);
  }

  return result;
}

uint64_t WebKit::WebInspector::closeFrontendConnection(WebKit::WebInspector *this, void *a2)
{
  {
    v3 = WebKit::WebProcess::singleton(void)::process;
  }

  else
  {
    v12 = WebKit::WebProcess::operator new(0x370, a2);
    v3 = WebKit::WebProcess::WebProcess(v12);
    WebKit::WebProcess::singleton(void)::process = v3;
  }

  WebKit::AuxiliaryProcess::protectedParentProcessConnection(v3, &v14);
  v4 = *(this + 3);
  if (v4 && (v5 = *(v4 + 8)) != 0)
  {
    IPC::Connection::send<Messages::WebInspectorUIProxy::DidClose>(v14, &v13, *(v5 + 32), 0, 0);
    v6 = v14;
    v14 = 0;
    if (v6)
    {
      WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v6);
    }

    v7 = *(this + 4);
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
          goto LABEL_12;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v7);
LABEL_12:
      IPC::Connection::invalidate(v7);
      v10 = *(this + 4);
      *(this + 4) = 0;
      if (v10)
      {
        WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v10);
      }

      WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v7);
    }

    result = WTF::Vector<WTF::Function<void ()(IPC::Connection &)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity(this + 10, 0);
    *(this + 28) = 0;
  }

  else
  {
    result = 121;
    __break(0xC471u);
  }

  return result;
}

atomic_ullong *WebKit::WebInspector::whenFrontendConnectionEstablished(atomic_ullong *result, void *a2)
{
  v3 = result[4];
  if (v3)
  {
    while (1)
    {
      v4 = *v3;
      if ((*v3 & 1) == 0)
      {
        break;
      }

      v5 = *v3;
      atomic_compare_exchange_strong_explicit(v3, &v5, v4 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v5 == v4)
      {
        goto LABEL_6;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v3);
LABEL_6:
    (*(**a2 + 16))(*a2, v3);

    return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  else
  {
    v6 = *(result + 13);
    if (v6 == *(result + 12))
    {
      v7 = result;
      result = WTF::Vector<WTF::Function<void ()(IPC::Connection &)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(result + 10, v6 + 1, a2);
      v8 = *(v7 + 13);
      v9 = v7[5];
      v10 = *result;
      *result = 0;
      *(v9 + 8 * v8) = v10;
      *(v7 + 13) = v8 + 1;
    }

    else
    {
      v11 = result[5];
      v12 = *a2;
      *a2 = 0;
      *(v11 + 8 * v6) = v12;
      *(result + 13) = v6 + 1;
    }
  }

  return result;
}

uint64_t WebKit::WebInspector::show(uint64_t result, uint64_t *a2)
{
  v2 = *(result + 24);
  if (v2 && (v3 = *(v2 + 8)) != 0)
  {
    v4 = *(v3 + 40);
    if (v4)
    {
      WebCore::InspectorController::show(*(v4 + 88));
      v6 = *a2;
      *a2 = 0;
      (*(*v6 + 16))(v6);
      v7 = *(*v6 + 8);

      return v7(v6);
    }
  }

  else
  {
    result = 121;
    __break(0xC471u);
  }

  return result;
}

uint64_t WebKit::WebInspector::evaluateScriptForTest(uint64_t this, const WTF::String *a2)
{
  v2 = *(this + 24);
  if (!v2 || (v3 = *(v2 + 8)) == 0)
  {
    a2 = "/AppleInternal/Library/BuildRoots/4~CAtBugAdX2ypK3woS13W0YBGfMX4uuy1xhucdh4/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/local/include/wtf/WeakPtr.h";
    v5 = 121;
    __break(0xC471u);
    return MEMORY[0x1EEE57470](v5, a2);
  }

  v4 = *(v3 + 40);
  if (v4)
  {
    v5 = *(v4 + 88);
    return MEMORY[0x1EEE57470](v5, a2);
  }

  return this;
}

uint64_t WebKit::WebInspector::showConsole(uint64_t this)
{
  v1 = *(this + 24);
  if (v1 && (v2 = *(v1 + 8)) != 0)
  {
    if (*(v2 + 40))
    {
      v3 = this;
      v4 = WTF::fastMalloc(0x10);
      *v4 = &unk_1F112C2F8;
      v5 = v4;
      WebKit::WebInspector::whenFrontendConnectionEstablished(v3, &v5);
      this = v5;
      v5 = 0;
      if (this)
      {
        return (*(*this + 8))(this);
      }
    }
  }

  else
  {
    this = 121;
    __break(0xC471u);
  }

  return this;
}

uint64_t WebKit::WebInspector::showResources(uint64_t this)
{
  v1 = *(this + 24);
  if (v1 && (v2 = *(v1 + 8)) != 0)
  {
    if (*(v2 + 40))
    {
      v3 = this;
      v4 = WTF::fastMalloc(0x10);
      *v4 = &unk_1F112C320;
      v5 = v4;
      WebKit::WebInspector::whenFrontendConnectionEstablished(v3, &v5);
      this = v5;
      v5 = 0;
      if (this)
      {
        return (*(*this + 8))(this);
      }
    }
  }

  else
  {
    this = 121;
    __break(0xC471u);
  }

  return this;
}

void WebKit::WebInspector::showMainResourceForFrame(atomic_ullong *a1, void *a2)
{
  {
    v4 = WebKit::WebProcess::singleton(void)::process;
  }

  else
  {
    v17 = WebKit::WebProcess::operator new(0x370, a2);
    v4 = WebKit::WebProcess::WebProcess(v17);
    WebKit::WebProcess::singleton(void)::process = v4;
  }

  v5 = WebKit::WebProcess::webFrame(v4, a2, 1);
  if (v5)
  {
    v6 = v5;
    CFRetain(*(v5 + 8));
    v7 = a1[3];
    if (v7 && (v8 = *(v7 + 8)) != 0)
    {
      v9 = *(v8 + 40);
      if (v9)
      {
        WebCore::InspectorController::ensurePageAgent(*(v9 + 88));
        v10 = *(v6 + 40);
        if (v10 && (v11 = *(v10 + 8)) != 0 && *(v11 + 136) != 1)
        {
          ++*(v11 + 16);
          WebCore::InspectorPageAgent::frameId();
          if (*(v11 + 16) == 1)
          {
            (*(*v11 + 8))(v11);
          }

          else
          {
            --*(v11 + 16);
          }
        }

        else
        {
          WebCore::InspectorPageAgent::frameId();
        }

        v12 = v19;
        if (v19)
        {
          atomic_fetch_add_explicit(v19, 2u, memory_order_relaxed);
        }

        v13 = WTF::fastMalloc(0x10);
        *v13 = &unk_1F112C348;
        v13[1] = v12;
        v18 = v13;
        WebKit::WebInspector::whenFrontendConnectionEstablished(a1, &v18);
        v15 = v18;
        v18 = 0;
        if (v15)
        {
          (*(*v15 + 8))(v15);
        }

        v16 = v19;
        v19 = 0;
        if (v16)
        {
          if (atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v16, v14);
          }
        }
      }

      CFRelease(*(v6 + 8));
    }

    else
    {
      __break(0xC471u);
    }
  }
}

uint64_t WebKit::WebInspector::startPageProfiling(uint64_t this)
{
  v1 = *(this + 24);
  if (v1 && (v2 = *(v1 + 8)) != 0)
  {
    if (*(v2 + 40))
    {
      v3 = this;
      v4 = WTF::fastMalloc(0x10);
      *v4 = &unk_1F112C370;
      v5 = v4;
      WebKit::WebInspector::whenFrontendConnectionEstablished(v3, &v5);
      this = v5;
      v5 = 0;
      if (this)
      {
        return (*(*this + 8))(this);
      }
    }
  }

  else
  {
    this = 121;
    __break(0xC471u);
  }

  return this;
}

uint64_t WebKit::WebInspector::stopPageProfiling(uint64_t this)
{
  v1 = *(this + 24);
  if (v1 && (v2 = *(v1 + 8)) != 0)
  {
    if (*(v2 + 40))
    {
      v3 = this;
      v4 = WTF::fastMalloc(0x10);
      *v4 = &unk_1F112C398;
      v5 = v4;
      WebKit::WebInspector::whenFrontendConnectionEstablished(v3, &v5);
      this = v5;
      v5 = 0;
      if (this)
      {
        return (*(*this + 8))(this);
      }
    }
  }

  else
  {
    this = 121;
    __break(0xC471u);
  }

  return this;
}

uint64_t WebKit::WebInspector::startElementSelection(uint64_t this)
{
  v1 = *(this + 24);
  if (v1 && (v2 = *(v1 + 8)) != 0)
  {
    if (*(v2 + 40))
    {
      v3 = this;
      v4 = WTF::fastMalloc(0x10);
      *v4 = &unk_1F112C3C0;
      v5 = v4;
      WebKit::WebInspector::whenFrontendConnectionEstablished(v3, &v5);
      this = v5;
      v5 = 0;
      if (this)
      {
        return (*(*this + 8))(this);
      }
    }
  }

  else
  {
    this = 121;
    __break(0xC471u);
  }

  return this;
}

uint64_t WebKit::WebInspector::stopElementSelection(uint64_t this)
{
  v1 = *(this + 24);
  if (v1 && (v2 = *(v1 + 8)) != 0)
  {
    if (*(v2 + 40))
    {
      v3 = this;
      v4 = WTF::fastMalloc(0x10);
      *v4 = &unk_1F112C3E8;
      v5 = v4;
      WebKit::WebInspector::whenFrontendConnectionEstablished(v3, &v5);
      this = v5;
      v5 = 0;
      if (this)
      {
        return (*(*this + 8))(this);
      }
    }
  }

  else
  {
    this = 121;
    __break(0xC471u);
  }

  return this;
}

void WebKit::WebInspectorInterruptDispatcher::~WebInspectorInterruptDispatcher(WebKit::WebInspectorInterruptDispatcher *this, void *a2)
{
  v3 = *(this + 3);
  *(this + 3) = 0;
  if (v3)
  {
    (*(*v3 + 40))(v3);
  }

  v4 = *(this + 2);
  *(this + 2) = 0;
  if (!v4)
  {
    goto LABEL_6;
  }

  v5 = (v4 + 16);
  if (atomic_load(v5))
  {
    atomic_fetch_add(v5, 0xFFFFFFFF);
LABEL_6:
    *this = &unk_1F10EA5E0;
    WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::~WeakPtrFactory(this + 1, a2);
    return;
  }

  __break(0xC471u);
}

{
  WebKit::WebInspectorInterruptDispatcher::~WebInspectorInterruptDispatcher(this, a2);

  JUMPOUT(0x19EB14CF0);
}

void WebKit::WebInspectorInterruptDispatcher::notifyNeedDebuggerBreak(WebKit::WebInspectorInterruptDispatcher *this)
{
  v1 = *MEMORY[0x1E69E25C0];
  if (*MEMORY[0x1E69E25C0])
  {
    atomic_fetch_add(v1, 1u);
    JSC::VMTraps::fireTrap((v1 + 16));

    WTF::ThreadSafeRefCountedWithSuppressingSaferCPPChecking<JSC::VM,(WTF::DestructionThread)0>::derefSuppressingSaferCPPChecking(v1);
  }
}

WebKit::WebInspectorUI *WebKit::WebInspectorUI::WebInspectorUI(WebKit::WebInspectorUI *this, WebKit::WebPage *a2)
{
  *(this + 2) = 0x100000000;
  *this = &unk_1F112BDF8;
  *(this + 1) = 0;
  *(this + 3) = &unk_1F112BFB8;
  *(this + 4) = 0;
  WTF::WeakPtrFactory<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(a2 + 6, a2 + 16);
  v4 = *(a2 + 3);
  atomic_fetch_add(v4, 1u);
  *(this + 5) = v4;
  WTF::fastMalloc(0x38);
  *(this + 6) = WebCore::InspectorFrontendAPIDispatcher::InspectorFrontendAPIDispatcher();
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0;
  WebKit::DebuggableInfoData::empty(this + 96);
  *(this + 68) = 0;
  *(this + 138) = 0;
  *(this + 140) = 0x100000000;
  return this;
}

void WebKit::WebInspectorUI::~WebInspectorUI(WebKit::WebInspectorUI *this, WTF::StringImpl *a2)
{
  v3 = *(this + 15);
  *(this + 15) = 0;
  if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v3, a2);
  }

  v4 = *(this + 14);
  *(this + 14) = 0;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, a2);
  }

  v5 = *(this + 13);
  *(this + 13) = 0;
  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, a2);
  }

  v6 = *(this + 9);
  *(this + 9) = 0;
  if (v6)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v6);
  }

  v7 = *(this + 8);
  *(this + 8) = 0;
  if (v7 && atomic_fetch_add(v7, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v7);
    WTF::fastFree(v7, a2);
  }

  v8 = *(this + 7);
  *(this + 7) = 0;
  if (v8)
  {
    WTF::RefCounted<WebCore::InspectorFrontendHost>::deref(v8);
  }

  v9 = *(this + 6);
  *(this + 6) = 0;
  if (v9)
  {
    WTF::RefCounted<WebCore::InspectorFrontendAPIDispatcher>::deref(v9);
  }

  v10 = *(this + 5);
  *(this + 5) = 0;
  if (v10 && atomic_fetch_add(v10, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v10);
    WTF::fastFree(v10, a2);
  }

  WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::~WeakPtrFactory(this + 4, a2);
  *this = &unk_1F10EA5E0;
  WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::~WeakPtrFactory(this + 1, v11);
  if (*(this + 5) != 1)
  {
    __break(0xC471u);
  }
}

void non-virtual thunk toWebKit::WebInspectorUI::~WebInspectorUI(WebKit::WebInspectorUI *this, WTF::StringImpl *a2)
{
  WebKit::WebInspectorUI::~WebInspectorUI((this - 24), a2);
}

{
  WebKit::WebInspectorUI::operator delete((this - 24), a2);
}

double WebKit::WebInspectorUI::operator delete(WebKit::WebInspectorUI *a1, WTF::StringImpl *a2)
{
  WebKit::WebInspectorUI::~WebInspectorUI(a1, a2);
  if (atomic_load((v2 + 16)))
  {
    *(v2 + 144) = 0;
    result = 0.0;
    *(v2 + 112) = 0u;
    *(v2 + 128) = 0u;
    *(v2 + 80) = 0u;
    *(v2 + 96) = 0u;
    *(v2 + 48) = 0u;
    *(v2 + 64) = 0u;
    *(v2 + 16) = 0u;
    *(v2 + 32) = 0u;
    *v2 = 0u;
  }

  else
  {

    WTF::fastFree(v2, v3);
  }

  return result;
}

void WebKit::WebInspectorUI::establishConnection(uint64_t a1, uint64_t a2, uint64_t a3, char a4, int a5)
{
  *(a1 + 80) = a2;
  *(a1 + 96) = *a3;
  WTF::String::operator=((a1 + 104), (a3 + 8));
  WTF::String::operator=((a1 + 112), (a3 + 16));
  WTF::String::operator=((a1 + 120), (a3 + 24));
  *(a1 + 128) = *(a3 + 32);
  *(a1 + 88) = a4;
  *(a1 + 144) = a5;
  WebCore::InspectorFrontendAPIDispatcher::reset(*(a1 + 48));
  v10 = *(*(a1 + 40) + 8);
  if (!v10)
  {
    goto LABEL_15;
  }

  v11 = *(*(v10 + 40) + 88);
  if (!*(v11 + 8))
  {
    v12 = WTF::fastCompactMalloc(0x10);
    *v12 = 1;
    *(v12 + 8) = v11;
    v13 = *(v11 + 8);
    *(v11 + 8) = v12;
    if (v13)
    {
      if (atomic_fetch_add(v13, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v13);
        WTF::fastFree(v13, v9);
      }
    }
  }

  v14 = *(v11 + 8);
  atomic_fetch_add(v14, 1u);
  v15 = *(a1 + 64);
  *(a1 + 64) = v14;
  if (v15)
  {
    if (atomic_fetch_add(v15, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v15);
      WTF::fastFree(v15, v9);
    }

    v14 = *(a1 + 64);
  }

  if (!v14 || (v16 = *(v14 + 8)) == 0)
  {
LABEL_15:
    __break(0xC471u);
    JUMPOUT(0x19E2F0DF0);
  }

  WebCore::InspectorController::ref(*(v14 + 8));
  WebCore::InspectorController::setInspectorFrontendClient();
  WebCore::InspectorController::deref(v16);

  WebKit::WebInspectorUI::updateConnection(a1);
}

void WebKit::WebInspectorUI::updateConnection(WebKit::WebInspectorUI *this)
{
  v2 = *(this + 9);
  if (v2)
  {
    IPC::Connection::invalidate(v2);
    v3 = *(this + 9);
    *(this + 9) = 0;
    if (v3)
    {
      WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
    }
  }

  IPC::Connection::createConnectionIdentifierPair(v8);
  if (v11 == 1)
  {
    v4 = WTF::fastMalloc(0x188);
    IPC::Connection::Connection(v4, v8, 1);
    v5 = *(this + 9);
    *(this + 9) = v4;
    if (v5)
    {
      v5 = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v5);
      v4 = *(this + 9);
    }

    v6 = WTF::RunLoop::currentSingleton(v5);
    IPC::Connection::open(v4, this, v6);
    if (v11)
    {
      v7 = &v10;
      WebKit::WebInspectorUI::sendToParentProcess<Messages::WebInspectorUIProxy::SetFrontendConnection>(this, &v7);
      if (v11)
      {
        WTF::MachSendRight::~MachSendRight(&v10);
        if (object)
        {
          os_release(object);
        }
      }
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t WebKit::WebInspectorUI::sendToParentProcess<Messages::WebInspectorUIProxy::SetFrontendConnection>(uint64_t a1, void *a2)
{
  {
    v4 = WebKit::WebProcess::singleton(void)::process;
  }

  else
  {
    v8 = WebKit::WebProcess::operator new(0x370, a2);
    v4 = WebKit::WebProcess::WebProcess(v8);
    WebKit::WebProcess::singleton(void)::process = v4;
  }

  WebKit::AuxiliaryProcess::protectedParentProcessConnection(v4, &v9);
  v5 = IPC::Connection::send<Messages::WebInspectorUIProxy::SetFrontendConnection>(v9, a2, *(a1 + 80), 0, 0);
  v6 = v9;
  v9 = 0;
  if (v6)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v6);
  }

  return v5;
}

uint64_t WebKit::WebInspectorUI::windowObjectCleared(WebKit::WebInspectorUI *this)
{
  v2 = *(this + 7);
  if (v2)
  {
    WebCore::InspectorFrontendHost::disconnectClient(v2);
  }

  if (*(*(this + 5) + 8))
  {
    v3 = WTF::fastMalloc(0x18);
    WebCore::InspectorFrontendHost::InspectorFrontendHost();
    v4 = *(this + 7);
    *(this + 7) = v3;
    if (v4)
    {
      v4 = WTF::RefCounted<WebCore::InspectorFrontendHost>::deref(v4);
      v3 = *(this + 7);
    }

    v5 = WebCore::mainThreadNormalWorldSingleton(v4);

    return WebCore::InspectorFrontendHost::addSelfToGlobalObjectInWorld(v3, v5);
  }

  else
  {
    result = 92;
    __break(0xC471u);
  }

  return result;
}

atomic_ullong *WebKit::WebInspectorUI::frontendLoaded(WebKit::WebInspectorUI *this)
{
  WebCore::InspectorFrontendAPIDispatcher::frontendLoaded(*(this + 6));
  WebKit::WebInspectorUI::setDockingUnavailable(this, *(this + 136));
  WebKit::WebInspectorUI::setDockSide(this, *(this + 35));
  WebKit::WebInspectorUI::setIsVisible(this, *(this + 137));
  {
    v3 = WebKit::WebProcess::singleton(void)::process;
  }

  else
  {
    v14 = WebKit::WebProcess::operator new(0x370, v2);
    v3 = WebKit::WebProcess::WebProcess(v14);
    WebKit::WebProcess::singleton(void)::process = v3;
  }

  WebKit::AuxiliaryProcess::protectedParentProcessConnection(v3, &v15);
  v4 = v15;
  v5 = *(this + 10);
  v7 = IPC::Encoder::operator new(0x238, v6);
  *v7 = 2083;
  *(v7 + 2) = 0;
  *(v7 + 3) = 0;
  *(v7 + 1) = v5;
  *(v7 + 68) = 0;
  *(v7 + 70) = 0;
  *(v7 + 69) = 0;
  IPC::Encoder::encodeHeader(v7);
  v16 = v7;
  IPC::Connection::sendMessageImpl(v4, &v16, 0, 0);
  v9 = v16;
  v16 = 0;
  if (v9)
  {
    IPC::Encoder::~Encoder(v9, v8);
    bmalloc::api::tzoneFree(v12, v13);
  }

  v10 = v15;
  v15 = 0;
  if (v10)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v10);
  }

  return WebKit::WebInspectorUI::sendToParentProcess<Messages::WebInspectorUIProxy::BringToFront>(this, v8);
}

WTF::StringImpl *WebKit::WebInspectorUI::setDockingUnavailable(WebKit::WebInspectorUI *this, WTF::JSONImpl::Value *a2)
{
  v9[1] = *MEMORY[0x1E69E9840];
  *(this + 136) = a2;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  WTF::JSONImpl::Value::create(a2);
  WTF::Vector<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(v7, v9, 1uLL);
  WebCore::InspectorFrontendAPIDispatcher::dispatchCommandWithResultAsync();
  WTF::Vector<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v7, v3);
  v5 = v9[0];
  v9[0] = 0;
  if (v5)
  {
    if (*v5 == 1)
    {
      WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*v5;
    }
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

WTF::StringImpl *WebKit::WebInspectorUI::setDockSide(uint64_t a1, int a2)
{
  v14[1] = *MEMORY[0x1E69E9840];
  if (a2 > 1)
  {
    if (a2 == 2 || a2 == 3)
    {
      goto LABEL_7;
    }

LABEL_6:
    *(a1 + 140) = a2;
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    v3 = 0;
    goto LABEL_8;
  }

  if (a2 > 1)
  {
    goto LABEL_6;
  }

LABEL_7:
  *(a1 + 140) = a2;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v3 = v13;
LABEL_8:
  v10 = v3;
  WTF::JSONImpl::Value::create(v14, &v10, v2);
  WTF::Vector<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(v11, v14, 1uLL);
  v13 = 0;
  WebCore::InspectorFrontendAPIDispatcher::dispatchCommandWithResultAsync();
  v5 = v13;
  v13 = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  WTF::Vector<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v11, v4);
  v7 = v14[0];
  v14[0] = 0;
  if (v7)
  {
    if (*v7 == 1)
    {
      WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*v7;
    }
  }

  v8 = v10;
  v10 = 0;
  if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v8, v6);
  }

  result = v12;
  v12 = 0;
  if (result)
  {
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v6);
    }
  }

  return result;
}

WTF::StringImpl *WebKit::WebInspectorUI::setIsVisible(WebKit::WebInspectorUI *this, WTF::JSONImpl::Value *a2)
{
  v9[1] = *MEMORY[0x1E69E9840];
  *(this + 137) = a2;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  WTF::JSONImpl::Value::create(a2);
  WTF::Vector<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(v7, v9, 1uLL);
  WebCore::InspectorFrontendAPIDispatcher::dispatchCommandWithResultAsync();
  WTF::Vector<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v7, v3);
  v5 = v9[0];
  v9[0] = 0;
  if (v5)
  {
    if (*v5 == 1)
    {
      WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*v5;
    }
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

atomic_ullong *WebKit::WebInspectorUI::sendToParentProcess<Messages::WebInspectorUIProxy::StartWindowDrag>(uint64_t a1, void *a2)
{
  {
    v3 = WebKit::WebProcess::singleton(void)::process;
  }

  else
  {
    v13 = WebKit::WebProcess::operator new(0x370, a2);
    v3 = WebKit::WebProcess::WebProcess(v13);
    WebKit::WebProcess::singleton(void)::process = v3;
  }

  WebKit::AuxiliaryProcess::protectedParentProcessConnection(v3, &v14);
  v4 = v14;
  v5 = *(a1 + 80);
  v7 = IPC::Encoder::operator new(0x238, v6);
  *v7 = 2102;
  *(v7 + 2) = 0;
  *(v7 + 3) = 0;
  *(v7 + 1) = v5;
  *(v7 + 68) = 0;
  *(v7 + 70) = 0;
  *(v7 + 69) = 0;
  IPC::Encoder::encodeHeader(v7);
  v15 = v7;
  IPC::Connection::sendMessageImpl(v4, &v15, 0, 0);
  v9 = v15;
  v15 = 0;
  if (v9)
  {
    IPC::Encoder::~Encoder(v9, v8);
    bmalloc::api::tzoneFree(v11, v12);
  }

  result = v14;
  v14 = 0;
  if (result)
  {
    return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(result);
  }

  return result;
}

uint64_t WebKit::WebInspectorUI::moveWindowBy(WebKit::WebInspectorUI *this, float a2, float a3)
{
  v3 = *(*(this + 5) + 8);
  if (!v3 || (WebCore::Chrome::windowRect(*(*(v3 + 40) + 56)), v13.m_size.m_width = v7, v13.m_size.m_height = v8, v13.m_location.m_x = v9 + a2, v13.m_location.m_y = v10 + a3, (v11 = *(*(this + 5) + 8)) == 0))
  {
    __break(0xC471u);
    JUMPOUT(0x19E2F171CLL);
  }

  return WebCore::Chrome::setWindowRect(*(*(v11 + 40) + 56), &v13);
}

atomic_ullong *WebKit::WebInspectorUI::sendToParentProcess<Messages::WebInspectorUIProxy::BringToFront>(uint64_t a1, void *a2)
{
  {
    v3 = WebKit::WebProcess::singleton(void)::process;
  }

  else
  {
    v5 = WebKit::WebProcess::operator new(0x370, a2);
    v3 = WebKit::WebProcess::WebProcess(v5);
    WebKit::WebProcess::singleton(void)::process = v3;
  }

  WebKit::AuxiliaryProcess::protectedParentProcessConnection(v3, &v6);
  IPC::Connection::send<Messages::WebInspectorUIProxy::BringToFront>(v6, *(a1 + 80));
  result = v6;
  v6 = 0;
  if (result)
  {
    return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(result);
  }

  return result;
}

WebCore::InspectorFrontendHost *WebKit::WebInspectorUI::closeWindow(WebKit::WebInspectorUI *this, void *a2)
{
  {
    v3 = WebKit::WebProcess::singleton(void)::process;
  }

  else
  {
    v11 = WebKit::WebProcess::operator new(0x370, a2);
    v3 = WebKit::WebProcess::WebProcess(v11);
    WebKit::WebProcess::singleton(void)::process = v3;
  }

  WebKit::AuxiliaryProcess::protectedParentProcessConnection(v3, &v13);
  IPC::Connection::send<Messages::WebInspectorUIProxy::DidClose>(v13, &v12, *(this + 10), 0, 0);
  v5 = v13;
  v13 = 0;
  if (v5)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v5);
  }

  v6 = *(this + 9);
  if (v6)
  {
    IPC::Connection::invalidate(v6);
    v7 = *(this + 9);
    *(this + 9) = 0;
    if (v7)
    {
      WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v7);
    }
  }

  v8 = *(this + 8);
  *(this + 8) = 0;
  if (v8)
  {
    v9 = *(v8 + 8);
    if (v9)
    {
      WebCore::InspectorController::ref(*(v8 + 8));
    }

    if (atomic_fetch_add(v8, 0xFFFFFFFF) != 1)
    {
      if (!v9)
      {
        goto LABEL_14;
      }

      goto LABEL_13;
    }

    atomic_store(1u, v8);
    WTF::fastFree(v8, v4);
    if (v9)
    {
LABEL_13:
      WebCore::InspectorController::setInspectorFrontendClient();
      WebCore::InspectorController::deref(v9);
    }
  }

LABEL_14:
  result = *(this + 7);
  if (result)
  {
    result = WebCore::InspectorFrontendHost::disconnectClient(result);
  }

  *(this + 10) = 0;
  *(this + 88) = 0;
  return result;
}

atomic_ullong *WebKit::WebInspectorUI::sendToParentProcess<Messages::WebInspectorUIProxy::Reopen>(uint64_t a1, void *a2)
{
  {
    v3 = WebKit::WebProcess::singleton(void)::process;
  }

  else
  {
    v13 = WebKit::WebProcess::operator new(0x370, a2);
    v3 = WebKit::WebProcess::WebProcess(v13);
    WebKit::WebProcess::singleton(void)::process = v3;
  }

  WebKit::AuxiliaryProcess::protectedParentProcessConnection(v3, &v14);
  v4 = v14;
  v5 = *(a1 + 80);
  v7 = IPC::Encoder::operator new(0x238, v6);
  *v7 = 2088;
  *(v7 + 2) = 0;
  *(v7 + 3) = 0;
  *(v7 + 1) = v5;
  *(v7 + 68) = 0;
  *(v7 + 70) = 0;
  *(v7 + 69) = 0;
  IPC::Encoder::encodeHeader(v7);
  v15 = v7;
  IPC::Connection::sendMessageImpl(v4, &v15, 0, 0);
  v9 = v15;
  v15 = 0;
  if (v9)
  {
    IPC::Encoder::~Encoder(v9, v8);
    bmalloc::api::tzoneFree(v11, v12);
  }

  result = v14;
  v14 = 0;
  if (result)
  {
    return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(result);
  }

  return result;
}

atomic_ullong *WebKit::WebInspectorUI::sendToParentProcess<Messages::WebInspectorUIProxy::ResetState>(uint64_t a1, void *a2)
{
  {
    v3 = WebKit::WebProcess::singleton(void)::process;
  }

  else
  {
    v13 = WebKit::WebProcess::operator new(0x370, a2);
    v3 = WebKit::WebProcess::WebProcess(v13);
    WebKit::WebProcess::singleton(void)::process = v3;
  }

  WebKit::AuxiliaryProcess::protectedParentProcessConnection(v3, &v14);
  v4 = v14;
  v5 = *(a1 + 80);
  v7 = IPC::Encoder::operator new(0x238, v6);
  *v7 = 2090;
  *(v7 + 2) = 0;
  *(v7 + 3) = 0;
  *(v7 + 1) = v5;
  *(v7 + 68) = 0;
  *(v7 + 70) = 0;
  *(v7 + 69) = 0;
  IPC::Encoder::encodeHeader(v7);
  v15 = v7;
  IPC::Connection::sendMessageImpl(v4, &v15, 0, 0);
  v9 = v15;
  v15 = 0;
  if (v9)
  {
    IPC::Encoder::~Encoder(v9, v8);
    bmalloc::api::tzoneFree(v11, v12);
  }

  result = v14;
  v14 = 0;
  if (result)
  {
    return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(result);
  }

  return result;
}

atomic_ullong *WebKit::WebInspectorUI::sendToParentProcess<Messages::WebInspectorUIProxy::SetForcedAppearance>(uint64_t a1, _BYTE *a2)
{
  {
    v4 = WebKit::WebProcess::singleton(void)::process;
  }

  else
  {
    v14 = WebKit::WebProcess::operator new(0x370, a2);
    v4 = WebKit::WebProcess::WebProcess(v14);
    WebKit::WebProcess::singleton(void)::process = v4;
  }

  WebKit::AuxiliaryProcess::protectedParentProcessConnection(v4, &v15);
  v5 = v15;
  v6 = *(a1 + 80);
  v8 = IPC::Encoder::operator new(0x238, v7);
  *v8 = 2097;
  *(v8 + 2) = 0;
  *(v8 + 3) = 0;
  *(v8 + 1) = v6;
  *(v8 + 68) = 0;
  *(v8 + 70) = 0;
  *(v8 + 69) = 0;
  IPC::Encoder::encodeHeader(v8);
  v16 = v8;
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(v8, *a2);
  IPC::Connection::sendMessageImpl(v5, &v16, 0, 0);
  v10 = v16;
  v16 = 0;
  if (v10)
  {
    IPC::Encoder::~Encoder(v10, v9);
    bmalloc::api::tzoneFree(v12, v13);
  }

  result = v15;
  v15 = 0;
  if (result)
  {
    return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(result);
  }

  return result;
}

atomic_ullong *WebKit::WebInspectorUI::effectiveAppearanceDidChange(uint64_t a1, void *a2)
{
  v2 = a2;
  {
    v4 = WebKit::WebProcess::singleton(void)::process;
  }

  else
  {
    v14 = WebKit::WebProcess::operator new(0x370, a2);
    v4 = WebKit::WebProcess::WebProcess(v14);
    WebKit::WebProcess::singleton(void)::process = v4;
  }

  WebKit::AuxiliaryProcess::protectedParentProcessConnection(v4, &v15);
  v5 = v15;
  v6 = *(a1 + 80);
  v8 = IPC::Encoder::operator new(0x238, v7);
  *v8 = 2081;
  *(v8 + 2) = 0;
  *(v8 + 3) = 0;
  *(v8 + 1) = v6;
  *(v8 + 68) = 0;
  *(v8 + 70) = 0;
  *(v8 + 69) = 0;
  IPC::Encoder::encodeHeader(v8);
  v16 = v8;
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(v8, v2);
  IPC::Connection::sendMessageImpl(v5, &v16, 0, 0);
  v10 = v16;
  v16 = 0;
  if (v10)
  {
    IPC::Encoder::~Encoder(v10, v9);
    bmalloc::api::tzoneFree(v12, v13);
  }

  result = v15;
  v15 = 0;
  if (result)
  {
    return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(result);
  }

  return result;
}

uint64_t WebKit::WebInspectorUI::userInterfaceLayoutDirection(WebKit::WebInspectorUI *this)
{
  v1 = *(*(this + 5) + 8);
  if (v1)
  {
    return *(*(v1 + 40) + 1052);
  }

  result = 92;
  __break(0xC471u);
  return result;
}

uint64_t non-virtual thunk toWebKit::WebInspectorUI::userInterfaceLayoutDirection(WebKit::WebInspectorUI *this)
{
  v1 = *(*(this + 2) + 8);
  if (v1)
  {
    return *(*(v1 + 40) + 1052);
  }

  result = 92;
  __break(0xC471u);
  return result;
}

atomic_ullong *WebKit::WebInspectorUI::requestSetDockSide(atomic_ullong *result, void *a2)
{
  v2 = result;
  if (a2 > 1)
  {
    if (a2 == 2)
    {
      {
        v14 = WebKit::WebProcess::singleton(void)::process;
      }

      else
      {
        v23 = WebKit::WebProcess::operator new(0x370, a2);
        v14 = WebKit::WebProcess::WebProcess(v23);
        WebKit::WebProcess::singleton(void)::process = v14;
      }

      WebKit::AuxiliaryProcess::protectedParentProcessConnection(v14, &v24);
      v4 = v24;
      v5 = v2[10];
      v7 = IPC::Encoder::operator new(0x238, v15);
      v8 = v7;
      v9 = 2076;
    }

    else
    {
      if (a2 != 3)
      {
        return result;
      }

      {
        v10 = WebKit::WebProcess::singleton(void)::process;
      }

      else
      {
        v21 = WebKit::WebProcess::operator new(0x370, a2);
        v10 = WebKit::WebProcess::WebProcess(v21);
        WebKit::WebProcess::singleton(void)::process = v10;
      }

      WebKit::AuxiliaryProcess::protectedParentProcessConnection(v10, &v24);
      v4 = v24;
      v5 = v2[10];
      v7 = IPC::Encoder::operator new(0x238, v11);
      v8 = v7;
      v9 = 2075;
    }
  }

  else if (a2)
  {
    if (a2 != 1)
    {
      return result;
    }

    {
      v3 = WebKit::WebProcess::singleton(void)::process;
    }

    else
    {
      v20 = WebKit::WebProcess::operator new(0x370, a2);
      v3 = WebKit::WebProcess::WebProcess(v20);
      WebKit::WebProcess::singleton(void)::process = v3;
    }

    WebKit::AuxiliaryProcess::protectedParentProcessConnection(v3, &v24);
    v4 = v24;
    v5 = v2[10];
    v7 = IPC::Encoder::operator new(0x238, v6);
    v8 = v7;
    v9 = 2077;
  }

  else
  {
    {
      v12 = WebKit::WebProcess::singleton(void)::process;
    }

    else
    {
      v22 = WebKit::WebProcess::operator new(0x370, a2);
      v12 = WebKit::WebProcess::WebProcess(v22);
      WebKit::WebProcess::singleton(void)::process = v12;
    }

    WebKit::AuxiliaryProcess::protectedParentProcessConnection(v12, &v24);
    v4 = v24;
    v5 = v2[10];
    v7 = IPC::Encoder::operator new(0x238, v13);
    v8 = v7;
    v9 = 2079;
  }

  *v7 = v9;
  *(v7 + 2) = 0;
  *(v7 + 3) = 0;
  *(v7 + 1) = v5;
  *(v7 + 68) = 0;
  *(v7 + 70) = 0;
  *(v7 + 69) = 0;
  IPC::Encoder::encodeHeader(v7);
  v25 = v8;
  IPC::Connection::sendMessageImpl(v4, &v25, 0, 0);
  v17 = v25;
  v25 = 0;
  if (v17)
  {
    IPC::Encoder::~Encoder(v17, v16);
    bmalloc::api::tzoneFree(v18, v19);
  }

  result = v24;
  v24 = 0;
  if (result)
  {
    return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(result);
  }

  return result;
}

atomic_ullong *WebKit::WebInspectorUI::changeAttachedWindowHeight(WebKit::WebInspectorUI *this, int a2)
{
  v4 = a2;
  v3 = &v4;
  return WebKit::WebInspectorUI::sendToParentProcess<Messages::WebInspectorUIProxy::SetAttachedWindowHeight>(this, &v3);
}

atomic_ullong *WebKit::WebInspectorUI::sendToParentProcess<Messages::WebInspectorUIProxy::SetAttachedWindowHeight>(uint64_t a1, _DWORD **a2)
{
  {
    v4 = WebKit::WebProcess::singleton(void)::process;
  }

  else
  {
    v14 = WebKit::WebProcess::operator new(0x370, a2);
    v4 = WebKit::WebProcess::WebProcess(v14);
    WebKit::WebProcess::singleton(void)::process = v4;
  }

  WebKit::AuxiliaryProcess::protectedParentProcessConnection(v4, &v15);
  v5 = v15;
  v6 = *(a1 + 80);
  v8 = IPC::Encoder::operator new(0x238, v7);
  *v8 = 2094;
  *(v8 + 2) = 0;
  *(v8 + 3) = 0;
  *(v8 + 1) = v6;
  *(v8 + 68) = 0;
  *(v8 + 70) = 0;
  *(v8 + 69) = 0;
  IPC::Encoder::encodeHeader(v8);
  v16 = v8;
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v8, **a2);
  IPC::Connection::sendMessageImpl(v5, &v16, 0, 0);
  v10 = v16;
  v16 = 0;
  if (v10)
  {
    IPC::Encoder::~Encoder(v10, v9);
    bmalloc::api::tzoneFree(v12, v13);
  }

  result = v15;
  v15 = 0;
  if (result)
  {
    return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(result);
  }

  return result;
}

atomic_ullong *non-virtual thunk toWebKit::WebInspectorUI::changeAttachedWindowHeight(WebKit::WebInspectorUI *this, int a2)
{
  v4 = a2;
  v3 = &v4;
  return WebKit::WebInspectorUI::sendToParentProcess<Messages::WebInspectorUIProxy::SetAttachedWindowHeight>(this - 24, &v3);
}

atomic_ullong *WebKit::WebInspectorUI::changeAttachedWindowWidth(WebKit::WebInspectorUI *this, int a2)
{
  v4 = a2;
  v3 = &v4;
  return WebKit::WebInspectorUI::sendToParentProcess<Messages::WebInspectorUIProxy::SetAttachedWindowWidth>(this, &v3);
}

atomic_ullong *WebKit::WebInspectorUI::sendToParentProcess<Messages::WebInspectorUIProxy::SetAttachedWindowWidth>(uint64_t a1, _DWORD **a2)
{
  {
    v4 = WebKit::WebProcess::singleton(void)::process;
  }

  else
  {
    v14 = WebKit::WebProcess::operator new(0x370, a2);
    v4 = WebKit::WebProcess::WebProcess(v14);
    WebKit::WebProcess::singleton(void)::process = v4;
  }

  WebKit::AuxiliaryProcess::protectedParentProcessConnection(v4, &v15);
  v5 = v15;
  v6 = *(a1 + 80);
  v8 = IPC::Encoder::operator new(0x238, v7);
  *v8 = 2095;
  *(v8 + 2) = 0;
  *(v8 + 3) = 0;
  *(v8 + 1) = v6;
  *(v8 + 68) = 0;
  *(v8 + 70) = 0;
  *(v8 + 69) = 0;
  IPC::Encoder::encodeHeader(v8);
  v16 = v8;
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v8, **a2);
  IPC::Connection::sendMessageImpl(v5, &v16, 0, 0);
  v10 = v16;
  v16 = 0;
  if (v10)
  {
    IPC::Encoder::~Encoder(v10, v9);
    bmalloc::api::tzoneFree(v12, v13);
  }

  result = v15;
  v15 = 0;
  if (result)
  {
    return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(result);
  }

  return result;
}

atomic_ullong *non-virtual thunk toWebKit::WebInspectorUI::changeAttachedWindowWidth(WebKit::WebInspectorUI *this, int a2)
{
  v4 = a2;
  v3 = &v4;
  return WebKit::WebInspectorUI::sendToParentProcess<Messages::WebInspectorUIProxy::SetAttachedWindowWidth>(this - 24, &v3);
}

atomic_ullong *WebKit::WebInspectorUI::sendToParentProcess<Messages::WebInspectorUIProxy::SetSheetRect>(uint64_t a1, float **a2)
{
  {
    v4 = WebKit::WebProcess::singleton(void)::process;
  }

  else
  {
    v14 = WebKit::WebProcess::operator new(0x370, a2);
    v4 = WebKit::WebProcess::WebProcess(v14);
    WebKit::WebProcess::singleton(void)::process = v4;
  }

  WebKit::AuxiliaryProcess::protectedParentProcessConnection(v4, &v15);
  v5 = v15;
  v6 = *(a1 + 80);
  v8 = IPC::Encoder::operator new(0x238, v7);
  *v8 = 2100;
  *(v8 + 2) = 0;
  *(v8 + 3) = 0;
  *(v8 + 1) = v6;
  *(v8 + 68) = 0;
  *(v8 + 70) = 0;
  *(v8 + 69) = 0;
  IPC::Encoder::encodeHeader(v8);
  v16 = v8;
  IPC::ArgumentCoder<WebCore::FloatRect,void>::encode(v8, *a2);
  IPC::Connection::sendMessageImpl(v5, &v16, 0, 0);
  v10 = v16;
  v16 = 0;
  if (v10)
  {
    IPC::Encoder::~Encoder(v10, v9);
    bmalloc::api::tzoneFree(v12, v13);
  }

  result = v15;
  v15 = 0;
  if (result)
  {
    return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(result);
  }

  return result;
}

atomic_ullong *WebKit::WebInspectorUI::sendToParentProcess<Messages::WebInspectorUIProxy::OpenURLExternally>(uint64_t a1, uint64_t **a2)
{
  {
    v4 = WebKit::WebProcess::singleton(void)::process;
  }

  else
  {
    v14 = WebKit::WebProcess::operator new(0x370, a2);
    v4 = WebKit::WebProcess::WebProcess(v14);
    WebKit::WebProcess::singleton(void)::process = v4;
  }

  WebKit::AuxiliaryProcess::protectedParentProcessConnection(v4, &v15);
  v5 = v15;
  v6 = *(a1 + 80);
  v8 = IPC::Encoder::operator new(0x238, v7);
  *v8 = 2086;
  *(v8 + 2) = 0;
  *(v8 + 3) = 0;
  *(v8 + 1) = v6;
  *(v8 + 68) = 0;
  *(v8 + 70) = 0;
  *(v8 + 69) = 0;
  IPC::Encoder::encodeHeader(v8);
  v16 = v8;
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v8, *a2);
  IPC::Connection::sendMessageImpl(v5, &v16, 0, 0);
  v10 = v16;
  v16 = 0;
  if (v10)
  {
    IPC::Encoder::~Encoder(v10, v9);
    bmalloc::api::tzoneFree(v12, v13);
  }

  result = v15;
  v15 = 0;
  if (result)
  {
    return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(result);
  }

  return result;
}

atomic_ullong *WebKit::WebInspectorUI::sendToParentProcess<Messages::WebInspectorUIProxy::RevealFileExternally>(uint64_t a1, uint64_t **a2)
{
  {
    v4 = WebKit::WebProcess::singleton(void)::process;
  }

  else
  {
    v14 = WebKit::WebProcess::operator new(0x370, a2);
    v4 = WebKit::WebProcess::WebProcess(v14);
    WebKit::WebProcess::singleton(void)::process = v4;
  }

  WebKit::AuxiliaryProcess::protectedParentProcessConnection(v4, &v15);
  v5 = v15;
  v6 = *(a1 + 80);
  v8 = IPC::Encoder::operator new(0x238, v7);
  *v8 = 2091;
  *(v8 + 2) = 0;
  *(v8 + 3) = 0;
  *(v8 + 1) = v6;
  *(v8 + 68) = 0;
  *(v8 + 70) = 0;
  *(v8 + 69) = 0;
  IPC::Encoder::encodeHeader(v8);
  v16 = v8;
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v8, *a2);
  IPC::Connection::sendMessageImpl(v5, &v16, 0, 0);
  v10 = v16;
  v16 = 0;
  if (v10)
  {
    IPC::Encoder::~Encoder(v10, v9);
    bmalloc::api::tzoneFree(v12, v13);
  }

  result = v15;
  v15 = 0;
  if (result)
  {
    return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(result);
  }

  return result;
}

atomic_ullong *WebKit::WebInspectorUI::save(uint64_t a1, uint64_t a2, char a3)
{
  v4 = a2;
  v5 = a3;
  return WebKit::WebInspectorUI::sendToParentProcess<Messages::WebInspectorUIProxy::Save>(a1, &v4);
}

atomic_ullong *WebKit::WebInspectorUI::sendToParentProcess<Messages::WebInspectorUIProxy::Save>(uint64_t a1, char *a2)
{
  {
    v4 = WebKit::WebProcess::singleton(void)::process;
  }

  else
  {
    v14 = WebKit::WebProcess::operator new(0x370, a2);
    v4 = WebKit::WebProcess::WebProcess(v14);
    WebKit::WebProcess::singleton(void)::process = v4;
  }

  WebKit::AuxiliaryProcess::protectedParentProcessConnection(v4, &v15);
  v5 = v15;
  v6 = *(a1 + 80);
  v8 = IPC::Encoder::operator new(0x238, v7);
  *v8 = 2092;
  *(v8 + 2) = 0;
  *(v8 + 3) = 0;
  *(v8 + 1) = v6;
  *(v8 + 68) = 0;
  *(v8 + 70) = 0;
  *(v8 + 69) = 0;
  IPC::Encoder::encodeHeader(v8);
  v16 = v8;
  IPC::VectorArgumentCoder<false,WebCore::InspectorFrontendClientSaveData,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WebCore::InspectorFrontendClientSaveData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(v8, *a2);
  IPC::Encoder::operator<<<BOOL &>(v8, a2 + 8);
  IPC::Connection::sendMessageImpl(v5, &v16, 0, 0);
  v10 = v16;
  v16 = 0;
  if (v10)
  {
    IPC::Encoder::~Encoder(v10, v9);
    bmalloc::api::tzoneFree(v12, v13);
  }

  result = v15;
  v15 = 0;
  if (result)
  {
    return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(result);
  }

  return result;
}

atomic_ullong *non-virtual thunk toWebKit::WebInspectorUI::save(uint64_t a1, uint64_t a2, char a3)
{
  v4 = a2;
  v5 = a3;
  return WebKit::WebInspectorUI::sendToParentProcess<Messages::WebInspectorUIProxy::Save>(a1 - 24, &v4);
}

atomic_ullong *WebKit::WebInspectorUI::sendToParentProcessWithAsyncReply<Messages::WebInspectorUIProxy::Load,WTF::CompletionHandler<void ()(WTF::String const&)>>(uint64_t a1, uint64_t **a2, uint64_t *a3)
{
  {
    v6 = WebKit::WebProcess::singleton(void)::process;
  }

  else
  {
    v21 = WebKit::WebProcess::operator new(0x370, a2);
    v6 = WebKit::WebProcess::WebProcess(v21);
    WebKit::WebProcess::singleton(void)::process = v6;
  }

  WebKit::AuxiliaryProcess::protectedParentProcessConnection(v6, &v22);
  v7 = v22;
  v8 = *(a1 + 80);
  v9 = *a3;
  *a3 = 0;
  v10 = WTF::fastMalloc(0x10);
  *v10 = &unk_1F112C410;
  v10[1] = v9;
  if (WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1)
  {
    result = 141;
    __break(0xC471u);
  }

  else
  {
    v11 = v10;
    IdentifierInternal = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
    v14 = IPC::Encoder::operator new(0x238, v13);
    *v14 = 2085;
    *(v14 + 2) = 0;
    *(v14 + 3) = 0;
    *(v14 + 1) = v8;
    *(v14 + 68) = 0;
    *(v14 + 70) = 0;
    *(v14 + 69) = 0;
    IPC::Encoder::encodeHeader(v14);
    v24 = v14;
    IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v14, *a2);
    v23[0] = v11;
    v23[1] = IdentifierInternal;
    IPC::Connection::sendMessageWithAsyncReply(v7, &v24, v23, 0, 0);
    v16 = v23[0];
    v23[0] = 0;
    if (v16)
    {
      (*(*v16 + 8))(v16);
    }

    v17 = v24;
    v24 = 0;
    if (v17)
    {
      IPC::Encoder::~Encoder(v17, v15);
      bmalloc::api::tzoneFree(v19, v20);
    }

    result = v22;
    v22 = 0;
    if (result)
    {
      return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(result);
    }
  }

  return result;
}

atomic_ullong *WebKit::WebInspectorUI::sendToParentProcessWithAsyncReply<Messages::WebInspectorUIProxy::PickColorFromScreen,WTF::CompletionHandler<void ()(std::optional<WebCore::Color> const&)>>(uint64_t a1, uint64_t *a2)
{
  {
    v4 = WebKit::WebProcess::singleton(void)::process;
  }

  else
  {
    v19 = WebKit::WebProcess::operator new(0x370, a2);
    v4 = WebKit::WebProcess::WebProcess(v19);
    WebKit::WebProcess::singleton(void)::process = v4;
  }

  WebKit::AuxiliaryProcess::protectedParentProcessConnection(v4, &v20);
  v5 = v20;
  v6 = *(a1 + 80);
  v7 = *a2;
  *a2 = 0;
  v8 = WTF::fastMalloc(0x10);
  *v8 = &unk_1F112C438;
  v8[1] = v7;
  if (WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1)
  {
    result = 141;
    __break(0xC471u);
  }

  else
  {
    v9 = v8;
    IdentifierInternal = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
    v12 = IPC::Encoder::operator new(0x238, v11);
    *v12 = 2087;
    *(v12 + 2) = 0;
    *(v12 + 3) = 0;
    *(v12 + 1) = v6;
    *(v12 + 68) = 0;
    *(v12 + 70) = 0;
    *(v12 + 69) = 0;
    IPC::Encoder::encodeHeader(v12);
    v21[1] = IdentifierInternal;
    v22 = v12;
    v21[0] = v9;
    IPC::Connection::sendMessageWithAsyncReply(v5, &v22, v21, 0, 0);
    v14 = v21[0];
    v21[0] = 0;
    if (v14)
    {
      (*(*v14 + 8))(v14);
    }

    v15 = v22;
    v22 = 0;
    if (v15)
    {
      IPC::Encoder::~Encoder(v15, v13);
      bmalloc::api::tzoneFree(v17, v18);
    }

    result = v20;
    v20 = 0;
    if (result)
    {
      return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(result);
    }
  }

  return result;
}

atomic_ullong *WebKit::WebInspectorUI::sendToParentProcess<Messages::WebInspectorUIProxy::InspectedURLChanged>(uint64_t a1, uint64_t **a2)
{
  {
    v4 = WebKit::WebProcess::singleton(void)::process;
  }

  else
  {
    v14 = WebKit::WebProcess::operator new(0x370, a2);
    v4 = WebKit::WebProcess::WebProcess(v14);
    WebKit::WebProcess::singleton(void)::process = v4;
  }

  WebKit::AuxiliaryProcess::protectedParentProcessConnection(v4, &v15);
  v5 = v15;
  v6 = *(a1 + 80);
  v8 = IPC::Encoder::operator new(0x238, v7);
  *v8 = 2084;
  *(v8 + 2) = 0;
  *(v8 + 3) = 0;
  *(v8 + 1) = v6;
  *(v8 + 68) = 0;
  *(v8 + 70) = 0;
  *(v8 + 69) = 0;
  IPC::Encoder::encodeHeader(v8);
  v16 = v8;
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v8, *a2);
  IPC::Connection::sendMessageImpl(v5, &v16, 0, 0);
  v10 = v16;
  v16 = 0;
  if (v10)
  {
    IPC::Encoder::~Encoder(v10, v9);
    bmalloc::api::tzoneFree(v12, v13);
  }

  result = v15;
  v15 = 0;
  if (result)
  {
    return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(result);
  }

  return result;
}

atomic_ullong *WebKit::WebInspectorUI::sendToParentProcess<Messages::WebInspectorUIProxy::ShowCertificate>(uint64_t a1, __SecTrust ***a2)
{
  {
    v4 = WebKit::WebProcess::singleton(void)::process;
  }

  else
  {
    v14 = WebKit::WebProcess::operator new(0x370, a2);
    v4 = WebKit::WebProcess::WebProcess(v14);
    WebKit::WebProcess::singleton(void)::process = v4;
  }

  WebKit::AuxiliaryProcess::protectedParentProcessConnection(v4, &v15);
  v5 = v15;
  v6 = *(a1 + 80);
  v8 = IPC::Encoder::operator new(0x238, v7);
  *v8 = 2101;
  *(v8 + 2) = 0;
  *(v8 + 3) = 0;
  *(v8 + 1) = v6;
  *(v8 + 68) = 0;
  *(v8 + 70) = 0;
  *(v8 + 69) = 0;
  IPC::Encoder::encodeHeader(v8);
  v16 = v8;
  IPC::ArgumentCoder<__SecTrust *,void>::encode(v8, **a2);
  IPC::Connection::sendMessageImpl(v5, &v16, 0, 0);
  v10 = v16;
  v16 = 0;
  if (v10)
  {
    IPC::Encoder::~Encoder(v10, v9);
    bmalloc::api::tzoneFree(v12, v13);
  }

  result = v15;
  v15 = 0;
  if (result)
  {
    return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(result);
  }

  return result;
}

atomic_ullong *WebKit::WebInspectorUI::sendToParentProcess<Messages::WebInspectorUIProxy::SetInspectorPageDeveloperExtrasEnabled>(uint64_t a1, void *a2)
{
  {
    v4 = WebKit::WebProcess::singleton(void)::process;
  }

  else
  {
    v14 = WebKit::WebProcess::operator new(0x370, a2);
    v4 = WebKit::WebProcess::WebProcess(v14);
    WebKit::WebProcess::singleton(void)::process = v4;
  }

  WebKit::AuxiliaryProcess::protectedParentProcessConnection(v4, &v15);
  v5 = v15;
  v6 = *(a1 + 80);
  v8 = IPC::Encoder::operator new(0x238, v7);
  *v8 = 2099;
  *(v8 + 2) = 0;
  *(v8 + 3) = 0;
  *(v8 + 1) = v6;
  *(v8 + 68) = 0;
  *(v8 + 70) = 0;
  *(v8 + 69) = 0;
  IPC::Encoder::encodeHeader(v8);
  v16 = v8;
  IPC::Encoder::operator<<<BOOL &>(v8, a2);
  IPC::Connection::sendMessageImpl(v5, &v16, 0, 0);
  v10 = v16;
  v16 = 0;
  if (v10)
  {
    IPC::Encoder::~Encoder(v10, v9);
    bmalloc::api::tzoneFree(v12, v13);
  }

  result = v15;
  v15 = 0;
  if (result)
  {
    return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(result);
  }

  return result;
}

uint64_t WebKit::WebInspectorUI::supportsDiagnosticLogging(WebKit::WebInspectorUI *this)
{
  v1 = *(*(this + 5) + 8);
  if (v1)
  {
    return (*(*(*(v1 + 40) + 120) + 694) >> 6) & 1;
  }

  result = 92;
  __break(0xC471u);
  return result;
}

uint64_t non-virtual thunk toWebKit::WebInspectorUI::supportsDiagnosticLogging(WebKit::WebInspectorUI *this)
{
  v1 = *(*(this + 2) + 8);
  if (v1)
  {
    return (*(*(*(v1 + 40) + 120) + 694) >> 6) & 1;
  }

  result = 92;
  __break(0xC471u);
  return result;
}

WTF::StringImpl *WebKit::WebInspectorUI::logDiagnosticEvent(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(*(a1 + 40) + 8);
  if (!v3)
  {
    __break(0xC471u);
    goto LABEL_13;
  }

  WebCore::Page::checkedDiagnosticLoggingClient(&v12, *(v3 + 40));
  v6 = v12;
  if (!v12)
  {
    __break(0xC471u);
    JUMPOUT(0x19E2F30C0);
  }

  WTF::StringImpl::createWithoutCopyingNonEmpty();
  (*(*v6 + 32))(v6, a2, &v11, a3, 0);
  result = v11;
  v11 = 0;
  if (result)
  {
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      result = WTF::StringImpl::destroy(result, v7);
    }
  }

  v9 = v12;
  v12 = 0;
  if (v9)
  {
    v10 = *(v9 + 8);
    if (v10)
    {
      *(v9 + 8) = v10 - 1;
      return result;
    }

    __break(0xC471u);
LABEL_13:
    JUMPOUT(0x19E2F30A0);
  }

  return result;
}

WTF::StringImpl *WebKit::WebInspectorUI::setDiagnosticLoggingAvailable(WebKit::WebInspectorUI *this, char a2)
{
  v9[1] = *MEMORY[0x1E69E9840];
  *(this + 138) = a2;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  WTF::JSONImpl::Value::create(*(this + 138));
  WTF::Vector<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(v7, v9, 1uLL);
  WebCore::InspectorFrontendAPIDispatcher::dispatchCommandWithResultAsync();
  WTF::Vector<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v7, v3);
  v5 = v9[0];
  v9[0] = 0;
  if (v5)
  {
    if (*v5 == 1)
    {
      WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*v5;
    }
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

WTF::StringImpl *WebKit::WebInspectorUI::showMainResourceForFrame(WebKit::WebInspectorUI *this, const WTF::String *a2)
{
  v10[1] = *MEMORY[0x1E69E9840];
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  WTF::JSONImpl::Value::create(v10, a2, v3);
  WTF::Vector<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(v8, v10, 1uLL);
  WebCore::InspectorFrontendAPIDispatcher::dispatchCommandWithResultAsync();
  WTF::Vector<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v8, v4);
  v6 = v10[0];
  v10[0] = 0;
  if (v6)
  {
    if (*v6 == 1)
    {
      WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*v6;
    }
  }

  result = v9;
  v9 = 0;
  if (result)
  {
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v5);
    }
  }

  return result;
}

WTF::StringImpl *WebKit::WebInspectorUI::startPageProfiling(WebKit::WebInspectorUI *this)
{
  v7[1] = *MEMORY[0x1E69E9840];
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  WTF::JSONImpl::Value::create(1);
  WTF::Vector<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(v5, v7, 1uLL);
  WebCore::InspectorFrontendAPIDispatcher::dispatchCommandWithResultAsync();
  WTF::Vector<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v5, v1);
  v3 = v7[0];
  v7[0] = 0;
  if (v3)
  {
    if (*v3 == 1)
    {
      WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*v3;
    }
  }

  result = v6;
  v6 = 0;
  if (result)
  {
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v2);
    }
  }

  return result;
}

WTF::StringImpl *WebKit::WebInspectorUI::stopPageProfiling(WebKit::WebInspectorUI *this)
{
  v7[1] = *MEMORY[0x1E69E9840];
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  WTF::JSONImpl::Value::create(0);
  WTF::Vector<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(v5, v7, 1uLL);
  WebCore::InspectorFrontendAPIDispatcher::dispatchCommandWithResultAsync();
  WTF::Vector<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v5, v1);
  v3 = v7[0];
  v7[0] = 0;
  if (v3)
  {
    if (*v3 == 1)
    {
      WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*v3;
    }
  }

  result = v6;
  v6 = 0;
  if (result)
  {
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v2);
    }
  }

  return result;
}

WTF::StringImpl *WebKit::WebInspectorUI::startElementSelection(WebKit::WebInspectorUI *this)
{
  v7[1] = *MEMORY[0x1E69E9840];
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  WTF::JSONImpl::Value::create(1);
  WTF::Vector<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(v5, v7, 1uLL);
  WebCore::InspectorFrontendAPIDispatcher::dispatchCommandWithResultAsync();
  WTF::Vector<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v5, v1);
  v3 = v7[0];
  v7[0] = 0;
  if (v3)
  {
    if (*v3 == 1)
    {
      WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*v3;
    }
  }

  result = v6;
  v6 = 0;
  if (result)
  {
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v2);
    }
  }

  return result;
}

WTF::StringImpl *WebKit::WebInspectorUI::stopElementSelection(WebKit::WebInspectorUI *this)
{
  v7[1] = *MEMORY[0x1E69E9840];
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  WTF::JSONImpl::Value::create(0);
  WTF::Vector<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(v5, v7, 1uLL);
  WebCore::InspectorFrontendAPIDispatcher::dispatchCommandWithResultAsync();
  WTF::Vector<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v5, v1);
  v3 = v7[0];
  v7[0] = 0;
  if (v3)
  {
    if (*v3 == 1)
    {
      WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*v3;
    }
  }

  result = v6;
  v6 = 0;
  if (result)
  {
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v2);
    }
  }

  return result;
}

atomic_ullong *WebKit::WebInspectorUI::sendToParentProcess<Messages::WebInspectorUIProxy::SendMessageToBackend>(uint64_t a1, uint64_t **a2)
{
  {
    v4 = WebKit::WebProcess::singleton(void)::process;
  }

  else
  {
    v14 = WebKit::WebProcess::operator new(0x370, a2);
    v4 = WebKit::WebProcess::WebProcess(v14);
    WebKit::WebProcess::singleton(void)::process = v4;
  }

  WebKit::AuxiliaryProcess::protectedParentProcessConnection(v4, &v15);
  v5 = v15;
  v6 = *(a1 + 80);
  v8 = IPC::Encoder::operator new(0x238, v7);
  *v8 = 2093;
  *(v8 + 2) = 0;
  *(v8 + 3) = 0;
  *(v8 + 1) = v6;
  *(v8 + 68) = 0;
  *(v8 + 70) = 0;
  *(v8 + 69) = 0;
  IPC::Encoder::encodeHeader(v8);
  v16 = v8;
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v8, *a2);
  IPC::Connection::sendMessageImpl(v5, &v16, 0, 0);
  v10 = v16;
  v16 = 0;
  if (v10)
  {
    IPC::Encoder::~Encoder(v10, v9);
    bmalloc::api::tzoneFree(v12, v13);
  }

  result = v15;
  v15 = 0;
  if (result)
  {
    return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(result);
  }

  return result;
}

uint64_t WebKit::WebInspectorUI::targetPlatformName@<X0>(uint64_t this@<X0>, atomic_uint **a2@<X8>)
{
  v2 = *(this + 104);
  if (v2)
  {
    atomic_fetch_add_explicit(v2, 2u, memory_order_relaxed);
  }

  *a2 = v2;
  return this;
}

uint64_t non-virtual thunk toWebKit::WebInspectorUI::targetPlatformName@<X0>(uint64_t this@<X0>, atomic_uint **a2@<X8>)
{
  v2 = *(this + 80);
  if (v2)
  {
    atomic_fetch_add_explicit(v2, 2u, memory_order_relaxed);
  }

  *a2 = v2;
  return this;
}

uint64_t WebKit::WebInspectorUI::targetBuildVersion@<X0>(uint64_t this@<X0>, atomic_uint **a2@<X8>)
{
  v2 = *(this + 112);
  if (v2)
  {
    atomic_fetch_add_explicit(v2, 2u, memory_order_relaxed);
  }

  *a2 = v2;
  return this;
}

uint64_t non-virtual thunk toWebKit::WebInspectorUI::targetBuildVersion@<X0>(uint64_t this@<X0>, atomic_uint **a2@<X8>)
{
  v2 = *(this + 88);
  if (v2)
  {
    atomic_fetch_add_explicit(v2, 2u, memory_order_relaxed);
  }

  *a2 = v2;
  return this;
}

uint64_t WebKit::WebInspectorUI::targetProductVersion@<X0>(uint64_t this@<X0>, atomic_uint **a2@<X8>)
{
  v2 = *(this + 120);
  if (v2)
  {
    atomic_fetch_add_explicit(v2, 2u, memory_order_relaxed);
  }

  *a2 = v2;
  return this;
}

uint64_t non-virtual thunk toWebKit::WebInspectorUI::targetProductVersion@<X0>(uint64_t this@<X0>, atomic_uint **a2@<X8>)
{
  v2 = *(this + 96);
  if (v2)
  {
    atomic_fetch_add_explicit(v2, 2u, memory_order_relaxed);
  }

  *a2 = v2;
  return this;
}

uint64_t WebKit::WebInspectorUI::frontendPage(WebKit::WebInspectorUI *this)
{
  v1 = *(*(this + 5) + 8);
  if (v1)
  {
    return *(v1 + 40);
  }

  result = 92;
  __break(0xC471u);
  return result;
}

uint64_t non-virtual thunk toWebKit::WebInspectorUI::frontendPage(WebKit::WebInspectorUI *this)
{
  v1 = *(*(this + 2) + 8);
  if (v1)
  {
    return *(v1 + 40);
  }

  result = 92;
  __break(0xC471u);
  return result;
}

void WebKit::WebInspectorUI::localizedStringsURL(atomic_uint **a1@<X8>)
{
  v2 = *MEMORY[0x1E696EBA8];
  if (*MEMORY[0x1E696EBA8])
  {
    atomic_fetch_add_explicit(v2, 2u, memory_order_relaxed);
  }

  *a1 = v2;
}

void non-virtual thunk toWebKit::WebInspectorUI::localizedStringsURL(atomic_uint **a1@<X8>)
{
  v2 = *MEMORY[0x1E696EBA8];
  if (*MEMORY[0x1E696EBA8])
  {
    atomic_fetch_add_explicit(v2, 2u, memory_order_relaxed);
  }

  *a1 = v2;
}

void WebKit::WebPageInspectorTarget::~WebPageInspectorTarget(WebKit::WebPageInspectorTargetFrontendChannel **this)
{
  std::unique_ptr<WebKit::WebPageInspectorTargetFrontendChannel>::reset[abi:sn200100](this + 5, 0);
  v3 = this[4];
  this[4] = 0;
  if (v3 && atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3);
    WTF::fastFree(v3, v2);
  }

  Inspector::InspectorTarget::~InspectorTarget(this, v2);
}

{
  WebKit::WebPageInspectorTarget::~WebPageInspectorTarget(this);

  bmalloc::api::tzoneFree(v1, v2);
}

uint64_t WebKit::WebPageInspectorTarget::identifier@<X0>(WebKit::WebPageInspectorTarget *this@<X0>, void *a2@<X8>)
{
  v2 = *(*(this + 4) + 8);
  if (v2)
  {
    return WebKit::WebPageInspectorTarget::toTargetID(*(v2 + 32), a2);
  }

  result = 92;
  __break(0xC471u);
  return result;
}

uint64_t WebKit::WebPageInspectorTarget::toTargetID@<X0>(unint64_t a1@<X0>, void *a2@<X8>)
{
  v5[0] = "page-";
  v5[1] = 6;
  v4 = a1;
  result = WTF::tryMakeString<WTF::ASCIILiteral,unsigned long long>(v5, &v4, a2);
  if (!*a2)
  {
    __break(0xC471u);
  }

  return result;
}

void WebKit::WebPageInspectorTarget::connect(WebKit::WebPageInspectorTargetFrontendChannel **a1, char a2)
{
  v2 = a1 + 5;
  if (!a1[5])
  {
    v4 = *(a1[4] + 1);
    if (v4)
    {
      CFRetain(*(v4 - 8));
      WebKit::WebPageInspectorTarget::identifier(a1, &v14);
      if (WebKit::WebPageInspectorTargetFrontendChannel::s_heapRef)
      {
        NonCompact = bmalloc::api::tzoneAllocateNonCompact(WebKit::WebPageInspectorTargetFrontendChannel::s_heapRef, v6);
      }

      else
      {
        NonCompact = WebKit::WebPageInspectorTargetFrontendChannel::operatorNewSlow(0x20);
      }

      v8 = NonCompact;
      WebKit::WebPageInspectorTargetFrontendChannel::WebPageInspectorTargetFrontendChannel(NonCompact, v4 - 16, &v14, a2);
      std::unique_ptr<WebKit::WebPageInspectorTargetFrontendChannel>::reset[abi:sn200100](v2, v8);
      v10 = v14;
      v14 = 0;
      if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v10, v9);
      }

      v11 = *(v4 + 40);
      if (v11)
      {
        v12 = v11 + 2;
        ++v11[2];
        WebCore::Page::protectedInspectorController(&v14, v11);
        WebCore::InspectorController::connectFrontend();
        v13 = v14;
        v14 = 0;
        if (v13)
        {
          WebCore::InspectorController::deref(v13);
        }

        WTF::RefCounted<WebCore::Page>::deref(v12);
      }

      CFRelease(*(v4 - 8));
    }

    else
    {
      __break(0xC471u);
    }
  }
}

uint64_t WebKit::WebPageInspectorTarget::disconnect(uint64_t this)
{
  v1 = (this + 40);
  if (*(this + 40))
  {
    v2 = *(*(this + 32) + 8);
    if (v2)
    {
      v3 = *(v2 + 40);
      if (v3)
      {
        v4 = v3 + 2;
        ++v3[2];
        WebCore::Page::protectedInspectorController(&v6, v3);
        WebCore::InspectorController::disconnectFrontend();
        v5 = v6;
        v6 = 0;
        if (v5)
        {
          WebCore::InspectorController::deref(v5);
        }

        WTF::RefCounted<WebCore::Page>::deref(v4);
      }

      return std::unique_ptr<WebKit::WebPageInspectorTargetFrontendChannel>::reset[abi:sn200100](v1, 0);
    }

    else
    {
      this = 92;
      __break(0xC471u);
    }
  }

  return this;
}

WebKit::WebPageInspectorTargetFrontendChannel *std::unique_ptr<WebKit::WebPageInspectorTargetFrontendChannel>::reset[abi:sn200100](WebKit::WebPageInspectorTargetFrontendChannel **a1, WTF::StringImpl *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    WebKit::WebPageInspectorTargetFrontendChannel::~WebPageInspectorTargetFrontendChannel(result, a2);

    return bmalloc::api::tzoneFree(v5, v6);
  }

  return result;
}

uint64_t WebKit::WebPageInspectorTarget::sendMessageToTargetBackend(WebKit::WebPageInspectorTarget *this, const WTF::String *a2)
{
  v2 = *(*(this + 4) + 8);
  if (v2)
  {
    result = *(v2 + 40);
    if (result)
    {
      v5 = (result + 8);
      ++*(result + 8);
      WebCore::Page::protectedInspectorController(&v7, result);
      WebCore::InspectorController::dispatchMessageFromFrontend(v7, a2);
      v6 = v7;
      v7 = 0;
      if (v6)
      {
        WebCore::InspectorController::deref(v6);
      }

      return WTF::RefCounted<WebCore::Page>::deref(v5);
    }
  }

  else
  {
    result = 92;
    __break(0xC471u);
  }

  return result;
}

uint64_t WebKit::RemoteWebInspectorUI::backendCommandsURL@<X0>(uint64_t this@<X0>, atomic_uint **a2@<X8>)
{
  v2 = *(this + 104);
  if (v2)
  {
    atomic_fetch_add_explicit(v2, 2u, memory_order_relaxed);
  }

  *a2 = v2;
  return this;
}

uint64_t non-virtual thunk toWebKit::RemoteWebInspectorUI::backendCommandsURL@<X0>(uint64_t this@<X0>, atomic_uint **a2@<X8>)
{
  v2 = *(this + 80);
  if (v2)
  {
    atomic_fetch_add_explicit(v2, 2u, memory_order_relaxed);
  }

  *a2 = v2;
  return this;
}

uint64_t WebKit::WebInspectorBackendClient::paintRectCount(WebKit::WebInspectorBackendClient *this)
{
  v1 = *(this + 6);
  if (v1)
  {
    return *(v1 - 12);
  }

  else
  {
    return 0;
  }
}

unsigned int *WebKit::WebInspector::deref(unsigned int *this)
{
  if (atomic_fetch_add(this + 5, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, this + 5);
    return (*(*this + 24))();
  }

  return this;
}

_DWORD *WebKit::WebInspectorUI::deref(_DWORD *this)
{
  if (this[5] == 1)
  {
    return (*(*this + 24))();
  }

  --this[5];
  return this;
}

uint64_t WTF::HashTable<WTF::Ref<WebCore::GraphicsLayer,WTF::RawPtrTraits<WebCore::GraphicsLayer>,WTF::DefaultRefDerefTraits<WebCore::GraphicsLayer>>,WTF::Ref<WebCore::GraphicsLayer,WTF::RawPtrTraits<WebCore::GraphicsLayer>,WTF::DefaultRefDerefTraits<WebCore::GraphicsLayer>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::Ref<WebCore::GraphicsLayer,WTF::RawPtrTraits<WebCore::GraphicsLayer>,WTF::DefaultRefDerefTraits<WebCore::GraphicsLayer>>>,WTF::HashTraits<WTF::Ref<WebCore::GraphicsLayer,WTF::RawPtrTraits<WebCore::GraphicsLayer>,WTF::DefaultRefDerefTraits<WebCore::GraphicsLayer>>>,WTF::HashTraits<WTF::Ref<WebCore::GraphicsLayer,WTF::RawPtrTraits<WebCore::GraphicsLayer>,WTF::DefaultRefDerefTraits<WebCore::GraphicsLayer>>>,WTF::FastMalloc>::deallocateTable(_DWORD **a1, void *a2)
{
  v3 = *(a1 - 1);
  if (v3)
  {
    v4 = a1;
    do
    {
      v5 = *v4;
      if (*v4 != -1)
      {
        *v4 = 0;
        if (v5)
        {
          if (v5[2] == 1)
          {
            (*(*v5 + 16))(v5);
          }

          else
          {
            --v5[2];
          }
        }
      }

      ++v4;
      --v3;
    }

    while (v3);
  }

  return WTF::fastFree((a1 - 2), a2);
}

const WebCore::GraphicsLayer *WebKit::RepaintIndicatorLayerClient::notifyAnimationEnded(WebKit::RepaintIndicatorLayerClient *this, const WebCore::GraphicsLayer *a2, const WTF::String *a3)
{
  v4 = *(this + 1);
  result = WebCore::GraphicsLayer::removeFromParent(a2);
  v8 = *(v4 + 48);
  v6 = (v4 + 48);
  v7 = v8;
  if (v8)
  {
    v9 = *(v7 - 8);
    v10 = (a2 + ~(a2 << 32)) ^ ((a2 + ~(a2 << 32)) >> 22);
    v11 = 9 * ((v10 + ~(v10 << 13)) ^ ((v10 + ~(v10 << 13)) >> 8));
    v12 = (v11 ^ (v11 >> 15)) + ~((v11 ^ (v11 >> 15)) << 27);
    v13 = v9 & ((v12 >> 31) ^ v12);
    for (i = 1; ; ++i)
    {
      v15 = v13;
      result = *(v7 + 8 * v13);
      if (result != -1)
      {
        if (!result)
        {
          return result;
        }

        if (result == a2)
        {
          break;
        }
      }

      v13 = (v13 + i) & v9;
    }

    if (v13 != *(v7 - 4))
    {
      *(v7 + 8 * v13) = 0;
      if (a2)
      {
        if (*(result + 2) == 1)
        {
          result = (*(*result + 16))(result);
        }

        else
        {
          --*(result + 2);
        }
      }

      *(v7 + 8 * v15) = -1;
      v16 = *v6;
      v17 = vadd_s32(*(*v6 - 16), 0xFFFFFFFF00000001);
      *(v16 - 16) = v17;
      v18 = *(v16 - 4);
      if (6 * v17.i32[1] < v18 && v18 >= 9)
      {

        return WTF::HashTable<WTF::Ref<WebCore::GraphicsLayer,WTF::RawPtrTraits<WebCore::GraphicsLayer>,WTF::DefaultRefDerefTraits<WebCore::GraphicsLayer>>,WTF::Ref<WebCore::GraphicsLayer,WTF::RawPtrTraits<WebCore::GraphicsLayer>,WTF::DefaultRefDerefTraits<WebCore::GraphicsLayer>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::Ref<WebCore::GraphicsLayer,WTF::RawPtrTraits<WebCore::GraphicsLayer>,WTF::DefaultRefDerefTraits<WebCore::GraphicsLayer>>>,WTF::HashTraits<WTF::Ref<WebCore::GraphicsLayer,WTF::RawPtrTraits<WebCore::GraphicsLayer>,WTF::DefaultRefDerefTraits<WebCore::GraphicsLayer>>>,WTF::HashTraits<WTF::Ref<WebCore::GraphicsLayer,WTF::RawPtrTraits<WebCore::GraphicsLayer>,WTF::DefaultRefDerefTraits<WebCore::GraphicsLayer>>>,WTF::FastMalloc>::rehash(v6, v18 >> 1);
      }
    }
  }

  return result;
}

void WebKit::WebPageInspectorTargetFrontendChannel::~WebPageInspectorTargetFrontendChannel(WebKit::WebPageInspectorTargetFrontendChannel *this, WTF::StringImpl *a2)
{
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v3, a2);
  }

  v4 = *(this + 1);
  *(this + 1) = 0;
  if (v4)
  {
    if (atomic_fetch_add(v4, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v4);
      WTF::fastFree(v4, a2);
    }
  }
}

{
  WebKit::WebPageInspectorTargetFrontendChannel::~WebPageInspectorTargetFrontendChannel(this, a2);

  bmalloc::api::tzoneFree(v2, v3);
}

_DWORD *WTF::HashTable<WTF::WeakRef<WebCore::CSSStyleDeclaration,WTF::SingleThreadWeakPtrImpl>,WTF::KeyValuePair<WTF::WeakRef<WebCore::CSSStyleDeclaration,WTF::SingleThreadWeakPtrImpl>,WTF::WeakRef<WebKit::InjectedBundleCSSStyleDeclarationHandle,WTF::DefaultWeakPtrImpl>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::WeakRef<WebCore::CSSStyleDeclaration,WTF::SingleThreadWeakPtrImpl>,WTF::WeakRef<WebKit::InjectedBundleCSSStyleDeclarationHandle,WTF::DefaultWeakPtrImpl>>>,WTF::DefaultHash<WTF::WeakRef<WebCore::CSSStyleDeclaration,WTF::SingleThreadWeakPtrImpl>>,WTF::HashMap<WTF::WeakRef<WebCore::CSSStyleDeclaration,WTF::SingleThreadWeakPtrImpl>,WTF::WeakRef<WebKit::InjectedBundleCSSStyleDeclarationHandle,WTF::DefaultWeakPtrImpl>,WTF::DefaultHash<WTF::WeakRef<WebCore::CSSStyleDeclaration,WTF::SingleThreadWeakPtrImpl>>,WTF::HashTraits<WTF::WeakRef<WebCore::CSSStyleDeclaration,WTF::SingleThreadWeakPtrImpl>>,WTF::HashTraits<WTF::WeakRef<WebKit::InjectedBundleCSSStyleDeclarationHandle,WTF::DefaultWeakPtrImpl>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::WeakRef<WebCore::CSSStyleDeclaration,WTF::SingleThreadWeakPtrImpl>>,WTF::FastMalloc>::expand()
{
  if (qword_1ED642C40 && (v0 = *(qword_1ED642C40 - 4)) != 0)
  {
    return WTF::HashTable<WTF::WeakRef<WebCore::CSSStyleDeclaration,WTF::SingleThreadWeakPtrImpl>,WTF::KeyValuePair<WTF::WeakRef<WebCore::CSSStyleDeclaration,WTF::SingleThreadWeakPtrImpl>,WTF::WeakRef<WebKit::InjectedBundleCSSStyleDeclarationHandle,WTF::DefaultWeakPtrImpl>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::WeakRef<WebCore::CSSStyleDeclaration,WTF::SingleThreadWeakPtrImpl>,WTF::WeakRef<WebKit::InjectedBundleCSSStyleDeclarationHandle,WTF::DefaultWeakPtrImpl>>>,WTF::DefaultHash<WTF::WeakRef<WebCore::CSSStyleDeclaration,WTF::SingleThreadWeakPtrImpl>>,WTF::HashMap<WTF::WeakRef<WebCore::CSSStyleDeclaration,WTF::SingleThreadWeakPtrImpl>,WTF::WeakRef<WebKit::InjectedBundleCSSStyleDeclarationHandle,WTF::DefaultWeakPtrImpl>,WTF::DefaultHash<WTF::WeakRef<WebCore::CSSStyleDeclaration,WTF::SingleThreadWeakPtrImpl>>,WTF::HashTraits<WTF::WeakRef<WebCore::CSSStyleDeclaration,WTF::SingleThreadWeakPtrImpl>>,WTF::HashTraits<WTF::WeakRef<WebKit::InjectedBundleCSSStyleDeclarationHandle,WTF::DefaultWeakPtrImpl>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::WeakRef<WebCore::CSSStyleDeclaration,WTF::SingleThreadWeakPtrImpl>>,WTF::FastMalloc>::rehash(v0 << (6 * *(qword_1ED642C40 - 12) >= (2 * v0)));
  }

  else
  {
    return WTF::HashTable<WTF::WeakRef<WebCore::CSSStyleDeclaration,WTF::SingleThreadWeakPtrImpl>,WTF::KeyValuePair<WTF::WeakRef<WebCore::CSSStyleDeclaration,WTF::SingleThreadWeakPtrImpl>,WTF::WeakRef<WebKit::InjectedBundleCSSStyleDeclarationHandle,WTF::DefaultWeakPtrImpl>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::WeakRef<WebCore::CSSStyleDeclaration,WTF::SingleThreadWeakPtrImpl>,WTF::WeakRef<WebKit::InjectedBundleCSSStyleDeclarationHandle,WTF::DefaultWeakPtrImpl>>>,WTF::DefaultHash<WTF::WeakRef<WebCore::CSSStyleDeclaration,WTF::SingleThreadWeakPtrImpl>>,WTF::HashMap<WTF::WeakRef<WebCore::CSSStyleDeclaration,WTF::SingleThreadWeakPtrImpl>,WTF::WeakRef<WebKit::InjectedBundleCSSStyleDeclarationHandle,WTF::DefaultWeakPtrImpl>,WTF::DefaultHash<WTF::WeakRef<WebCore::CSSStyleDeclaration,WTF::SingleThreadWeakPtrImpl>>,WTF::HashTraits<WTF::WeakRef<WebCore::CSSStyleDeclaration,WTF::SingleThreadWeakPtrImpl>>,WTF::HashTraits<WTF::WeakRef<WebKit::InjectedBundleCSSStyleDeclarationHandle,WTF::DefaultWeakPtrImpl>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::WeakRef<WebCore::CSSStyleDeclaration,WTF::SingleThreadWeakPtrImpl>>,WTF::FastMalloc>::rehash(8u);
  }
}

_DWORD *WTF::HashTable<WTF::WeakRef<WebCore::CSSStyleDeclaration,WTF::SingleThreadWeakPtrImpl>,WTF::KeyValuePair<WTF::WeakRef<WebCore::CSSStyleDeclaration,WTF::SingleThreadWeakPtrImpl>,WTF::WeakRef<WebKit::InjectedBundleCSSStyleDeclarationHandle,WTF::DefaultWeakPtrImpl>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::WeakRef<WebCore::CSSStyleDeclaration,WTF::SingleThreadWeakPtrImpl>,WTF::WeakRef<WebKit::InjectedBundleCSSStyleDeclarationHandle,WTF::DefaultWeakPtrImpl>>>,WTF::DefaultHash<WTF::WeakRef<WebCore::CSSStyleDeclaration,WTF::SingleThreadWeakPtrImpl>>,WTF::HashMap<WTF::WeakRef<WebCore::CSSStyleDeclaration,WTF::SingleThreadWeakPtrImpl>,WTF::WeakRef<WebKit::InjectedBundleCSSStyleDeclarationHandle,WTF::DefaultWeakPtrImpl>,WTF::DefaultHash<WTF::WeakRef<WebCore::CSSStyleDeclaration,WTF::SingleThreadWeakPtrImpl>>,WTF::HashTraits<WTF::WeakRef<WebCore::CSSStyleDeclaration,WTF::SingleThreadWeakPtrImpl>>,WTF::HashTraits<WTF::WeakRef<WebKit::InjectedBundleCSSStyleDeclarationHandle,WTF::DefaultWeakPtrImpl>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::WeakRef<WebCore::CSSStyleDeclaration,WTF::SingleThreadWeakPtrImpl>>,WTF::FastMalloc>::rehash(unsigned int a1)
{
  v2 = qword_1ED642C40;
  if (qword_1ED642C40)
  {
    v3 = *(qword_1ED642C40 - 4);
    v4 = *(qword_1ED642C40 - 12);
  }

  else
  {
    v3 = 0;
    v4 = 0;
  }

  result = WTF::fastZeroedMalloc((16 * a1 + 16));
  qword_1ED642C40 = (result + 4);
  result[2] = a1 - 1;
  result[3] = a1;
  *result = 0;
  result[1] = v4;
  if (v3)
  {
    v7 = 0;
    while (1)
    {
      v8 = (v2 + 16 * v7);
      v9 = *v8;
      if (*v8 != -1)
      {
        if (v9)
        {
          v12 = qword_1ED642C40;
          if (qword_1ED642C40)
          {
            v13 = *(qword_1ED642C40 - 8);
          }

          else
          {
            v13 = 0;
          }

          v14 = WTF::PtrHashBase<WTF::WeakRef<WebCore::CSSStyleDeclaration,WTF::SingleThreadWeakPtrImpl>,true>::hash(*(v9 + 1));
          v15 = 0;
          do
          {
            v16 = v14 & v13;
            v14 = ++v15 + v16;
          }

          while (*(v12 + 16 * v16));
          v17 = v12 + 16 * v16;
          v18 = *(v17 + 8);
          *(v17 + 8) = 0;
          if (v18 && atomic_fetch_add(v18, 0xFFFFFFFF) == 1)
          {
            atomic_store(1u, v18);
            WTF::fastFree(v18, v6);
          }

          v19 = *v17;
          *v17 = 0;
          if (v19)
          {
            if (*v19 == 1)
            {
              WTF::fastFree(v19, v6);
            }

            else
            {
              --*v19;
            }
          }

          v20 = *v8;
          *v8 = 0;
          *v17 = v20;
          v21 = v8[1];
          v8[1] = 0;
          *(v17 + 8) = v21;
          v22 = v8[1];
          v8[1] = 0;
          if (v22 && atomic_fetch_add(v22, 0xFFFFFFFF) == 1)
          {
            atomic_store(1u, v22);
            WTF::fastFree(v22, v6);
          }

          v11 = *v8;
          *v8 = 0;
          if (!v11)
          {
            goto LABEL_21;
          }

          if (*v11 == 1)
          {
            goto LABEL_33;
          }

          --*v11;
        }

        else
        {
          v10 = v8[1];
          v8[1] = 0;
          if (v10 && atomic_fetch_add(v10, 0xFFFFFFFF) == 1)
          {
            atomic_store(1u, v10);
            WTF::fastFree(v10, v6);
          }

          v11 = *v8;
          *v8 = 0;
          if (!v11)
          {
            goto LABEL_21;
          }

          if (*v11 == 1)
          {
LABEL_33:
            WTF::fastFree(v11, v6);
            goto LABEL_21;
          }

          --*v11;
        }
      }

LABEL_21:
      if (++v7 == v3)
      {
        goto LABEL_37;
      }
    }
  }

  if (v2)
  {
LABEL_37:

    return WTF::fastFree((v2 - 16), v6);
  }

  return result;
}

uint64_t WTF::PtrHashBase<WTF::WeakRef<WebCore::CSSStyleDeclaration,WTF::SingleThreadWeakPtrImpl>,true>::hash(uint64_t a1)
{
  if (a1)
  {
    v1 = (~(a1 << 32) + a1) ^ ((~(a1 << 32) + a1) >> 22);
    v2 = 9 * ((v1 + ~(v1 << 13)) ^ ((v1 + ~(v1 << 13)) >> 8));
    v3 = (v2 ^ (v2 >> 15)) + ~((v2 ^ (v2 >> 15)) << 27);
    return (v3 >> 31) ^ v3;
  }

  else
  {
    result = 92;
    __break(0xC471u);
  }

  return result;
}

_DWORD *WTF::RefCounted<WebCore::InspectorFrontendAPIDispatcher>::deref(_DWORD *result)
{
  if (*result == 1)
  {
    v2 = MEMORY[0x19EB0CF10](result);

    return WTF::fastFree(v2, v3);
  }

  else
  {
    --*result;
  }

  return result;
}

WebCore::InspectorFrontendHost *WTF::RefCounted<WebCore::InspectorFrontendHost>::deref(WebCore::InspectorFrontendHost *result)
{
  if (*result == 1)
  {
    WebCore::InspectorFrontendHost::~InspectorFrontendHost(result);

    return WTF::fastFree(v2, v3);
  }

  else
  {
    --*result;
  }

  return result;
}

uint64_t *WTF::Vector<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(uint64_t *result, _DWORD **a2, unint64_t a3)
{
  v3 = result;
  *result = 0;
  result[1] = 0;
  if (!a3)
  {
    return v3;
  }

  v4 = a3;
  if (!(a3 >> 29))
  {
    v6 = 8 * a3;
    v7 = WTF::fastMalloc((8 * a3));
    *(v3 + 2) = v4;
    *v3 = v7;
    v8 = *(v3 + 3);
    do
    {
      v9 = *a2++;
      *(v7 + 8 * v8++) = v9;
      ++*v9;
      v6 -= 8;
    }

    while (v6);
    *(v3 + 3) = v8;
    return v3;
  }

  __break(0xC471u);
  return result;
}

uint64_t WTF::Vector<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(uint64_t a1, void *a2)
{
  v3 = *(a1 + 12);
  if (v3)
  {
    WTF::VectorDestructor<true,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>::destruct(*a1, (*a1 + 8 * v3));
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

_DWORD *WTF::VectorDestructor<true,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>::destruct(_DWORD *result, _DWORD **a2)
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
        if (*result == 1)
        {
          result = WTF::JSONImpl::Value::operator delete();
        }

        else
        {
          --*result;
        }
      }

      ++v3;
    }

    while (v3 != a2);
  }

  return result;
}

uint64_t IPC::VectorArgumentCoder<false,WebCore::InspectorFrontendClientSaveData,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WebCore::InspectorFrontendClientSaveData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(IPC::Encoder *a1, uint64_t a2)
{
  result = IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *(a2 + 12));
  v5 = *(a2 + 12);
  if (v5)
  {
    v6 = *a2;
    v7 = 32 * v5;
    do
    {
      result = IPC::ArgumentCoder<WebCore::InspectorFrontendClientSaveData,void>::encode(a1, v6);
      v6 += 32;
      v7 -= 32;
    }

    while (v7);
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::RemoteWebInspectorUIProxy::Load,WTF::CompletionHandler<void ()(WTF::String const&)>>(WTF::CompletionHandler<void ()(WTF::String const&)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F112C2A8;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::RemoteWebInspectorUIProxy::Load,WTF::CompletionHandler<void ()(WTF::String const&)>>(WTF::CompletionHandler<void ()(WTF::String const&)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F112C2A8;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

WTF::StringImpl *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::RemoteWebInspectorUIProxy::Load,WTF::CompletionHandler<void ()(WTF::String const&)>>(WTF::CompletionHandler<void ()(WTF::String const&)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::call(uint64_t a1, uint64_t a2, IPC::Decoder *a3)
{
  if (a3 && *a3)
  {
    IPC::ArgumentCoder<std::tuple<WTF::String>,void>::decode<IPC::Decoder>(a3, &v12);
    if (v13 & 1) != 0 || (v9 = *a3, v10 = *(a3 + 1), *a3 = 0, *(a3 + 1) = 0, (v11 = *(a3 + 3)) != 0) && v10 && ((*(*v11 + 16))(v11, v9), (v13))
    {
      v5 = *(a1 + 8);
      *(a1 + 8) = 0;
      (*(*v5 + 16))(v5, &v12);
      result = (*(*v5 + 8))(v5);
      if (v13)
      {
        result = v12;
        v12 = 0;
        if (result)
        {
          if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            return WTF::StringImpl::destroy(result, v7);
          }
        }
      }
    }

    else
    {
      return IPC::Connection::cancelReply<Messages::WebPage::GetRenderTreeExternalRepresentation,WTF::CompletionHandler<void ()(WTF::String const&)>>((a1 + 8));
    }
  }

  else
  {
    v8 = (a1 + 8);

    return IPC::Connection::cancelReply<Messages::WebPage::GetRenderTreeExternalRepresentation,WTF::CompletionHandler<void ()(WTF::String const&)>>(v8);
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::RemoteWebInspectorUIProxy::PickColorFromScreen,WTF::CompletionHandler<void ()(std::optional<WebCore::Color> const&)>>(WTF::CompletionHandler<void ()(std::optional<WebCore::Color> const&)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F112C2D0;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::RemoteWebInspectorUIProxy::PickColorFromScreen,WTF::CompletionHandler<void ()(std::optional<WebCore::Color> const&)>>(WTF::CompletionHandler<void ()(std::optional<WebCore::Color> const&)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F112C2D0;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

unsigned int *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::RemoteWebInspectorUIProxy::PickColorFromScreen,WTF::CompletionHandler<void ()(std::optional<WebCore::Color> const&)>>(WTF::CompletionHandler<void ()(std::optional<WebCore::Color> const&)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::call(uint64_t a1, uint64_t a2, IPC::Decoder *a3)
{
  if (a3 && *a3)
  {
    IPC::Decoder::decode<std::tuple<std::optional<WebCore::Color>>>(&v8, a3);
    if (v10 == 1)
    {
      v4 = *(a1 + 8);
      *(a1 + 8) = 0;
      (*(*v4 + 16))(v4, &v8);
      result = (*(*v4 + 8))(v4);
      if ((v10 & 1) != 0 && v9 == 1 && (v8 & 0x8000000000000) != 0)
      {
        result = (v8 & 0xFFFFFFFFFFFFLL);
        if (atomic_fetch_add((v8 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
        {
          atomic_store(1u, result);
          return WTF::fastFree(result, v6);
        }
      }
    }

    else
    {
      return IPC::Connection::cancelReply<Messages::RemoteWebInspectorUIProxy::PickColorFromScreen,WTF::CompletionHandler<void ()(std::optional<WebCore::Color> const&)>>((a1 + 8));
    }
  }

  else
  {
    v7 = (a1 + 8);

    return IPC::Connection::cancelReply<Messages::RemoteWebInspectorUIProxy::PickColorFromScreen,WTF::CompletionHandler<void ()(std::optional<WebCore::Color> const&)>>(v7);
  }

  return result;
}

unsigned int *IPC::Connection::cancelReply<Messages::RemoteWebInspectorUIProxy::PickColorFromScreen,WTF::CompletionHandler<void ()(std::optional<WebCore::Color> const&)>>(uint64_t *a1)
{
  LOBYTE(v4) = 0;
  v5 = 0;
  v1 = *a1;
  *a1 = 0;
  (*(*v1 + 16))(v1, &v4);
  result = (*(*v1 + 8))(v1);
  if (v5 == 1 && (v4 & 0x8000000000000) != 0)
  {
    result = (v4 & 0xFFFFFFFFFFFFLL);
    if (atomic_fetch_add((v4 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, result);
      return WTF::fastFree(result, v3);
    }
  }

  return result;
}

unsigned int *IPC::Decoder::decode<std::tuple<std::optional<WebCore::Color>>>(uint64_t a1, IPC::Decoder *a2)
{
  result = IPC::ArgumentCoder<std::tuple<std::optional<WebCore::Color>>,void>::decode<IPC::Decoder>(a2, a1);
  if ((*(a1 + 16) & 1) == 0)
  {
    v5 = *(a2 + 1);
    *a2 = 0;
    *(a2 + 1) = 0;
    result = *(a2 + 3);
    if (result && v5 != 0)
    {
      v7 = *(*result + 16);

      return v7();
    }
  }

  return result;
}

_DWORD *WTF::HashTable<WTF::Ref<WebCore::GraphicsLayer,WTF::RawPtrTraits<WebCore::GraphicsLayer>,WTF::DefaultRefDerefTraits<WebCore::GraphicsLayer>>,WTF::Ref<WebCore::GraphicsLayer,WTF::RawPtrTraits<WebCore::GraphicsLayer>,WTF::DefaultRefDerefTraits<WebCore::GraphicsLayer>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::Ref<WebCore::GraphicsLayer,WTF::RawPtrTraits<WebCore::GraphicsLayer>,WTF::DefaultRefDerefTraits<WebCore::GraphicsLayer>>>,WTF::HashTraits<WTF::Ref<WebCore::GraphicsLayer,WTF::RawPtrTraits<WebCore::GraphicsLayer>,WTF::DefaultRefDerefTraits<WebCore::GraphicsLayer>>>,WTF::HashTraits<WTF::Ref<WebCore::GraphicsLayer,WTF::RawPtrTraits<WebCore::GraphicsLayer>,WTF::DefaultRefDerefTraits<WebCore::GraphicsLayer>>>,WTF::FastMalloc>::expand(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 && (v3 = *(v1 - 4)) != 0)
  {
    v2 = v3 << (6 * *(v1 - 12) >= (2 * v3));
  }

  else
  {
    v2 = 8;
  }

  return WTF::HashTable<WTF::Ref<WebCore::GraphicsLayer,WTF::RawPtrTraits<WebCore::GraphicsLayer>,WTF::DefaultRefDerefTraits<WebCore::GraphicsLayer>>,WTF::Ref<WebCore::GraphicsLayer,WTF::RawPtrTraits<WebCore::GraphicsLayer>,WTF::DefaultRefDerefTraits<WebCore::GraphicsLayer>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::Ref<WebCore::GraphicsLayer,WTF::RawPtrTraits<WebCore::GraphicsLayer>,WTF::DefaultRefDerefTraits<WebCore::GraphicsLayer>>>,WTF::HashTraits<WTF::Ref<WebCore::GraphicsLayer,WTF::RawPtrTraits<WebCore::GraphicsLayer>,WTF::DefaultRefDerefTraits<WebCore::GraphicsLayer>>>,WTF::HashTraits<WTF::Ref<WebCore::GraphicsLayer,WTF::RawPtrTraits<WebCore::GraphicsLayer>,WTF::DefaultRefDerefTraits<WebCore::GraphicsLayer>>>,WTF::FastMalloc>::rehash(a1, v2);
}

_DWORD *WTF::HashTable<WTF::Ref<WebCore::GraphicsLayer,WTF::RawPtrTraits<WebCore::GraphicsLayer>,WTF::DefaultRefDerefTraits<WebCore::GraphicsLayer>>,WTF::Ref<WebCore::GraphicsLayer,WTF::RawPtrTraits<WebCore::GraphicsLayer>,WTF::DefaultRefDerefTraits<WebCore::GraphicsLayer>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::Ref<WebCore::GraphicsLayer,WTF::RawPtrTraits<WebCore::GraphicsLayer>,WTF::DefaultRefDerefTraits<WebCore::GraphicsLayer>>>,WTF::HashTraits<WTF::Ref<WebCore::GraphicsLayer,WTF::RawPtrTraits<WebCore::GraphicsLayer>,WTF::DefaultRefDerefTraits<WebCore::GraphicsLayer>>>,WTF::HashTraits<WTF::Ref<WebCore::GraphicsLayer,WTF::RawPtrTraits<WebCore::GraphicsLayer>,WTF::DefaultRefDerefTraits<WebCore::GraphicsLayer>>>,WTF::FastMalloc>::rehash(uint64_t *a1, unsigned int a2)
{
  v4 = *a1;
  if (*a1)
  {
    v5 = *(v4 - 4);
    v6 = *(v4 - 12);
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  result = WTF::fastZeroedMalloc((8 * a2 + 16));
  *a1 = (result + 4);
  result[2] = a2 - 1;
  result[3] = a2;
  *result = 0;
  result[1] = v6;
  if (v5)
  {
    for (i = 0; i != v5; ++i)
    {
      v10 = (v4 + 8 * i);
      v11 = *v10;
      if (*v10 != -1)
      {
        if (v11)
        {
          v12 = *a1;
          if (*a1)
          {
            v13 = *(v12 - 8);
          }

          else
          {
            v13 = 0;
          }

          v14 = (v11 + ~(v11 << 32)) ^ ((v11 + ~(v11 << 32)) >> 22);
          v15 = 9 * ((v14 + ~(v14 << 13)) ^ ((v14 + ~(v14 << 13)) >> 8));
          v16 = (v15 ^ (v15 >> 15)) + ~((v15 ^ (v15 >> 15)) << 27);
          v17 = v13 & ((v16 >> 31) ^ v16);
          v18 = 1;
          do
          {
            v19 = v17;
            v20 = *(v12 + 8 * v17);
            v17 = (v17 + v18++) & v13;
          }

          while (v20);
          *v10 = 0;
          *(v12 + 8 * v19) = v11;
          v21 = *v10;
          *v10 = 0;
          if (v21)
          {
            if (v21[2] == 1)
            {
              (*(*v21 + 16))(v21);
            }

            else
            {
              --v21[2];
            }
          }
        }

        else
        {
          *v10 = 0;
        }
      }
    }
  }

  else if (!v4)
  {
    return result;
  }

  return WTF::fastFree((v4 - 16), v8);
}

unsigned int *WTF::Vector<WTF::Function<void ()(IPC::Connection &)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity(unsigned int *result, unint64_t a2)
{
  if (result[2] > a2)
  {
    v3 = result;
    v4 = result[3];
    v5 = *result;
    if (v4 > a2)
    {
      v6 = (v5 + 8 * a2);
      v7 = 8 * v4 - 8 * a2;
      do
      {
        result = *v6;
        *v6 = 0;
        if (result)
        {
          result = (*(*result + 8))(result);
        }

        ++v6;
        v7 -= 8;
      }

      while (v7);
      v3[3] = a2;
      v5 = *v3;
      LODWORD(v4) = a2;
    }

    if (a2)
    {
      if (a2 >> 29)
      {
        __break(0xC471u);
        return result;
      }

      result = WTF::fastMalloc((8 * a2));
      v3[2] = a2;
      *v3 = result;
      if (result != v5 && v4)
      {
        v8 = result;
        v9 = 8 * v4;
        v10 = v5;
        do
        {
          v11 = *v10;
          *v10 = 0;
          *v8 = v11;
          result = *v10;
          *v10 = 0;
          if (result)
          {
            result = (*(*result + 8))(result);
          }

          v8 += 2;
          ++v10;
          v9 -= 8;
        }

        while (v9);
      }
    }

    if (v5)
    {
      if (*v3 == v5)
      {
        *v3 = 0;
        v3[2] = 0;
      }

      return WTF::fastFree(v5, a2);
    }
  }

  return result;
}

uint64_t IPC::Connection::send<Messages::WebInspectorUIProxy::DidClose>(uint64_t *a1, void *a2, uint64_t a3, char a4, uint64_t a5)
{
  v9 = IPC::Encoder::operator new(0x238, a2);
  *v9 = 2080;
  *(v9 + 2) = 0;
  *(v9 + 3) = 0;
  *(v9 + 1) = a3;
  *(v9 + 68) = 0;
  *(v9 + 70) = 0;
  *(v9 + 69) = 0;
  IPC::Encoder::encodeHeader(v9);
  v16 = v9;
  v11 = IPC::Connection::sendMessageImpl(a1, &v16, a4, a5);
  v12 = v16;
  v16 = 0;
  if (v12)
  {
    IPC::Encoder::~Encoder(v12, v10);
    bmalloc::api::tzoneFree(v14, v15);
  }

  return v11;
}

IPC::Encoder *IPC::Connection::send<Messages::WebInspectorUIProxy::BringToFront>(uint64_t *a1, void *a2)
{
  v4 = IPC::Encoder::operator new(0x238, a2);
  *v4 = 2078;
  *(v4 + 2) = 0;
  *(v4 + 3) = 0;
  *(v4 + 1) = a2;
  *(v4 + 68) = 0;
  *(v4 + 70) = 0;
  *(v4 + 69) = 0;
  IPC::Encoder::encodeHeader(v4);
  v9 = v4;
  IPC::Connection::sendMessageImpl(a1, &v9, 0, 0);
  result = v9;
  v9 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v5);
    return bmalloc::api::tzoneFree(v7, v8);
  }

  return result;
}

unint64_t WTF::Vector<WTF::Function<void ()(IPC::Connection &)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(unsigned int *a1, unint64_t a2, unint64_t a3)
{
  v3 = a3;
  v5 = *a1;
  if (*a1 > a3 || v5 + 8 * a1[3] <= a3)
  {
    v10 = a1[2];
    if (v10 + (v10 >> 1) <= v10 + 1)
    {
      v11 = v10 + 1;
    }

    else
    {
      v11 = v10 + (v10 >> 1);
    }

    if (v11 <= a2)
    {
      v11 = a2;
    }

    if (v11 <= 0x10)
    {
      v12 = 16;
    }

    else
    {
      v12 = v11;
    }

    WTF::Vector<WTF::Function<void ()(IPC::Connection &)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v12);
  }

  else
  {
    v6 = a3 - v5;
    v7 = a1[2];
    if (v7 + (v7 >> 1) <= v7 + 1)
    {
      v8 = v7 + 1;
    }

    else
    {
      v8 = v7 + (v7 >> 1);
    }

    if (v8 <= a2)
    {
      v8 = a2;
    }

    if (v8 <= 0x10)
    {
      v9 = 16;
    }

    else
    {
      v9 = v8;
    }

    WTF::Vector<WTF::Function<void ()(IPC::Connection &)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v9);
    return *a1 + v6;
  }

  return v3;
}

unsigned int *WTF::Vector<WTF::Function<void ()(IPC::Connection &)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(unsigned int *result, unint64_t a2)
{
  if (result[2] < a2)
  {
    v2 = a2;
    if (a2 >> 29)
    {
      __break(0xC471u);
    }

    else
    {
      v3 = result;
      v4 = *result;
      v5 = result[3];
      result = WTF::fastMalloc((8 * a2));
      v3[2] = v2;
      *v3 = result;
      if (v5)
      {
        v7 = result;
        v8 = 8 * v5;
        v9 = v4;
        do
        {
          v10 = *v9;
          *v9 = 0;
          *v7 = v10;
          result = *v9;
          *v9 = 0;
          if (result)
          {
            result = (*(*result + 8))(result);
          }

          v7 += 2;
          ++v9;
          v8 -= 8;
        }

        while (v8);
      }

      if (v4)
      {
        if (*v3 == v4)
        {
          *v3 = 0;
          v3[2] = 0;
        }

        return WTF::fastFree(v4, v6);
      }
    }
  }

  return result;
}

IPC::Encoder *WTF::Detail::CallableWrapper<WebKit::WebInspector::showConsole(void)::$_0,void,IPC::Connection &>::call(uint64_t a1, void *a2)
{
  v3 = IPC::Encoder::operator new(0x238, a2);
  *v3 = 2114;
  *(v3 + 68) = 0;
  *(v3 + 70) = 0;
  *(v3 + 69) = 0;
  *(v3 + 2) = 0;
  *(v3 + 3) = 0;
  *(v3 + 1) = 0;
  IPC::Encoder::encodeHeader(v3);
  v8 = v3;
  IPC::Connection::sendMessageImpl(a2, &v8, 0, 0);
  result = v8;
  v8 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v4);
    return bmalloc::api::tzoneFree(v6, v7);
  }

  return result;
}

IPC::Encoder *WTF::Detail::CallableWrapper<WebKit::WebInspector::showResources(void)::$_0,void,IPC::Connection &>::call(uint64_t a1, void *a2)
{
  v3 = IPC::Encoder::operator new(0x238, a2);
  *v3 = 2116;
  *(v3 + 68) = 0;
  *(v3 + 70) = 0;
  *(v3 + 69) = 0;
  *(v3 + 2) = 0;
  *(v3 + 3) = 0;
  *(v3 + 1) = 0;
  IPC::Encoder::encodeHeader(v3);
  v8 = v3;
  IPC::Connection::sendMessageImpl(a2, &v8, 0, 0);
  result = v8;
  v8 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v4);
    return bmalloc::api::tzoneFree(v6, v7);
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WebKit::WebInspector::showMainResourceForFrame(WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>)::$_0,void,IPC::Connection &>::~CallableWrapper(void *a1, WTF::StringImpl *a2)
{
  v3 = a1[1];
  *a1 = &unk_1F112C348;
  a1[1] = 0;
  if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v3, a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebInspector::showMainResourceForFrame(WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>)::$_0,void,IPC::Connection &>::~CallableWrapper(WTF *this, WTF::StringImpl *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F112C348;
  *(this + 1) = 0;
  if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *WTF::Detail::CallableWrapper<WebKit::WebInspector::showMainResourceForFrame(WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>)::$_0,void,IPC::Connection &>::call(uint64_t a1, void *a2)
{
  v4 = IPC::Encoder::operator new(0x238, a2);
  *v4 = 2115;
  *(v4 + 68) = 0;
  *(v4 + 70) = 0;
  *(v4 + 69) = 0;
  *(v4 + 2) = 0;
  *(v4 + 3) = 0;
  *(v4 + 1) = 0;
  IPC::Encoder::encodeHeader(v4);
  v9 = v4;
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v4, (a1 + 8));
  IPC::Connection::sendMessageImpl(a2, &v9, 0, 0);
  result = v9;
  v9 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v5);
    return bmalloc::api::tzoneFree(v7, v8);
  }

  return result;
}

IPC::Encoder *WTF::Detail::CallableWrapper<WebKit::WebInspector::startPageProfiling(void)::$_0,void,IPC::Connection &>::call(uint64_t a1, void *a2)
{
  v3 = IPC::Encoder::operator new(0x238, a2);
  *v3 = 2118;
  *(v3 + 68) = 0;
  *(v3 + 70) = 0;
  *(v3 + 69) = 0;
  *(v3 + 2) = 0;
  *(v3 + 3) = 0;
  *(v3 + 1) = 0;
  IPC::Encoder::encodeHeader(v3);
  v8 = v3;
  IPC::Connection::sendMessageImpl(a2, &v8, 0, 0);
  result = v8;
  v8 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v4);
    return bmalloc::api::tzoneFree(v6, v7);
  }

  return result;
}

IPC::Encoder *WTF::Detail::CallableWrapper<WebKit::WebInspector::stopPageProfiling(void)::$_0,void,IPC::Connection &>::call(uint64_t a1, void *a2)
{
  v3 = IPC::Encoder::operator new(0x238, a2);
  *v3 = 2120;
  *(v3 + 68) = 0;
  *(v3 + 70) = 0;
  *(v3 + 69) = 0;
  *(v3 + 2) = 0;
  *(v3 + 3) = 0;
  *(v3 + 1) = 0;
  IPC::Encoder::encodeHeader(v3);
  v8 = v3;
  IPC::Connection::sendMessageImpl(a2, &v8, 0, 0);
  result = v8;
  v8 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v4);
    return bmalloc::api::tzoneFree(v6, v7);
  }

  return result;
}

IPC::Encoder *WTF::Detail::CallableWrapper<WebKit::WebInspector::startElementSelection(void)::$_0,void,IPC::Connection &>::call(uint64_t a1, void *a2)
{
  v3 = IPC::Encoder::operator new(0x238, a2);
  *v3 = 2117;
  *(v3 + 68) = 0;
  *(v3 + 70) = 0;
  *(v3 + 69) = 0;
  *(v3 + 2) = 0;
  *(v3 + 3) = 0;
  *(v3 + 1) = 0;
  IPC::Encoder::encodeHeader(v3);
  v8 = v3;
  IPC::Connection::sendMessageImpl(a2, &v8, 0, 0);
  result = v8;
  v8 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v4);
    return bmalloc::api::tzoneFree(v6, v7);
  }

  return result;
}

IPC::Encoder *WTF::Detail::CallableWrapper<WebKit::WebInspector::stopElementSelection(void)::$_0,void,IPC::Connection &>::call(uint64_t a1, void *a2)
{
  v3 = IPC::Encoder::operator new(0x238, a2);
  *v3 = 2119;
  *(v3 + 68) = 0;
  *(v3 + 70) = 0;
  *(v3 + 69) = 0;
  *(v3 + 2) = 0;
  *(v3 + 3) = 0;
  *(v3 + 1) = 0;
  IPC::Encoder::encodeHeader(v3);
  v8 = v3;
  IPC::Connection::sendMessageImpl(a2, &v8, 0, 0);
  result = v8;
  v8 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v4);
    return bmalloc::api::tzoneFree(v6, v7);
  }

  return result;
}

atomic_uint *WTF::ThreadSafeRefCountedWithSuppressingSaferCPPChecking<JSC::VM,(WTF::DestructionThread)0>::derefSuppressingSaferCPPChecking(atomic_uint *result)
{
  add = atomic_fetch_add(result, 0xFFFFFFFF);
  if (add == 1)
  {
    v5 = v1;
    atomic_store(add, result);
    v3 = MEMORY[0x19EB003F0](result);

    return WTF::fastFree(v3, v4);
  }

  return result;
}

uint64_t IPC::Connection::send<Messages::WebInspectorUIProxy::SetFrontendConnection>(uint64_t *a1, void *a2, uint64_t a3, char a4, uint64_t a5)
{
  v10 = IPC::Encoder::operator new(0x238, a2);
  *v10 = 2098;
  *(v10 + 2) = 0;
  *(v10 + 3) = 0;
  *(v10 + 1) = a3;
  *(v10 + 68) = 0;
  *(v10 + 70) = 0;
  *(v10 + 69) = 0;
  IPC::Encoder::encodeHeader(v10);
  v17 = v10;
  IPC::Encoder::addAttachment(v10, *a2);
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

void *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebInspectorUIProxy::Load,WTF::CompletionHandler<void ()(WTF::String const&)>>(WTF::CompletionHandler<void ()(WTF::String const&)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F112C410;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebInspectorUIProxy::Load,WTF::CompletionHandler<void ()(WTF::String const&)>>(WTF::CompletionHandler<void ()(WTF::String const&)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F112C410;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

WTF::StringImpl *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebInspectorUIProxy::Load,WTF::CompletionHandler<void ()(WTF::String const&)>>(WTF::CompletionHandler<void ()(WTF::String const&)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::call(uint64_t a1, uint64_t a2, IPC::Decoder *a3)
{
  if (a3 && *a3)
  {
    IPC::ArgumentCoder<std::tuple<WTF::String>,void>::decode<IPC::Decoder>(a3, &v12);
    if (v13 & 1) != 0 || (v9 = *a3, v10 = *(a3 + 1), *a3 = 0, *(a3 + 1) = 0, (v11 = *(a3 + 3)) != 0) && v10 && ((*(*v11 + 16))(v11, v9), (v13))
    {
      v5 = *(a1 + 8);
      *(a1 + 8) = 0;
      (*(*v5 + 16))(v5, &v12);
      result = (*(*v5 + 8))(v5);
      if (v13)
      {
        result = v12;
        v12 = 0;
        if (result)
        {
          if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            return WTF::StringImpl::destroy(result, v7);
          }
        }
      }
    }

    else
    {
      return IPC::Connection::cancelReply<Messages::WebPage::GetRenderTreeExternalRepresentation,WTF::CompletionHandler<void ()(WTF::String const&)>>((a1 + 8));
    }
  }

  else
  {
    v8 = (a1 + 8);

    return IPC::Connection::cancelReply<Messages::WebPage::GetRenderTreeExternalRepresentation,WTF::CompletionHandler<void ()(WTF::String const&)>>(v8);
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebInspectorUIProxy::PickColorFromScreen,WTF::CompletionHandler<void ()(std::optional<WebCore::Color> const&)>>(WTF::CompletionHandler<void ()(std::optional<WebCore::Color> const&)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F112C438;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebInspectorUIProxy::PickColorFromScreen,WTF::CompletionHandler<void ()(std::optional<WebCore::Color> const&)>>(WTF::CompletionHandler<void ()(std::optional<WebCore::Color> const&)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F112C438;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

unsigned int *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebInspectorUIProxy::PickColorFromScreen,WTF::CompletionHandler<void ()(std::optional<WebCore::Color> const&)>>(WTF::CompletionHandler<void ()(std::optional<WebCore::Color> const&)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::call(uint64_t a1, uint64_t a2, IPC::Decoder *a3)
{
  if (a3 && *a3)
  {
    IPC::Decoder::decode<std::tuple<std::optional<WebCore::Color>>>(&v8, a3);
    if (v10 == 1)
    {
      v4 = *(a1 + 8);
      *(a1 + 8) = 0;
      (*(*v4 + 16))(v4, &v8);
      result = (*(*v4 + 8))(v4);
      if ((v10 & 1) != 0 && v9 == 1 && (v8 & 0x8000000000000) != 0)
      {
        result = (v8 & 0xFFFFFFFFFFFFLL);
        if (atomic_fetch_add((v8 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
        {
          atomic_store(1u, result);
          return WTF::fastFree(result, v6);
        }
      }
    }

    else
    {
      return IPC::Connection::cancelReply<Messages::RemoteWebInspectorUIProxy::PickColorFromScreen,WTF::CompletionHandler<void ()(std::optional<WebCore::Color> const&)>>((a1 + 8));
    }
  }

  else
  {
    v7 = (a1 + 8);

    return IPC::Connection::cancelReply<Messages::RemoteWebInspectorUIProxy::PickColorFromScreen,WTF::CompletionHandler<void ()(std::optional<WebCore::Color> const&)>>(v7);
  }

  return result;
}

WebKit::WebPageInspectorTargetController *WebKit::WebPageInspectorTargetController::WebPageInspectorTargetController(WebKit::WebPageInspectorTargetController *this, WebKit::WebPage *a2)
{
  WTF::WeakPtrFactory<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(a2 + 6, a2 + 16);
  v4 = *(a2 + 3);
  atomic_fetch_add(v4, 1u);
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 32) = 0;
  *this = v4;
  *(this + 1) = &unk_1F112C138;
  WTF::WeakPtrFactory<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(a2 + 6, a2 + 16);
  v5 = *(a2 + 3);
  atomic_fetch_add(v5, 1u);
  *(this + 7) = 0;
  *(this + 5) = v5;
  *(this + 6) = 0;
  WebKit::WebPageInspectorTarget::identifier((this + 8), &v11);
  v10 = this + 8;
  WTF::HashMap<WTF::String,WTF::WeakPtr<Inspector::InspectorTarget,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::WeakPtr<Inspector::InspectorTarget,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::inlineSet<WTF::String,WebKit::WebPageInspectorTarget *>(this + 7, &v11, &v10, v9);
  v7 = v11;
  v11 = 0;
  if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v7, v6);
  }

  return this;
}

void WebKit::WebPageInspectorTargetController::~WebPageInspectorTargetController(WebKit::WebPageInspectorTargetController *this, void *a2)
{
  v3 = *(this + 7);
  if (v3)
  {
    WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::WeakPtr<Inspector::InspectorTarget,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::WeakPtr<Inspector::InspectorTarget,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::WeakPtr<Inspector::InspectorTarget,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::WeakPtr<Inspector::InspectorTarget,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v3, a2);
  }

  WebKit::WebPageInspectorTarget::~WebPageInspectorTarget((this + 8));
  v5 = *this;
  *this = 0;
  if (v5)
  {
    if (atomic_fetch_add(v5, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v5);
      WTF::fastFree(v5, v4);
    }
  }
}

unsigned int *WebKit::WebPageInspectorTargetController::connectInspector(uint64_t a1, const WTF::StringImpl **a2, const WTF::StringImpl *a3)
{
  WTF::HashMap<WTF::String,WTF::WeakPtr<Inspector::InspectorTarget,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::WeakPtr<Inspector::InspectorTarget,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WTF::String,WTF::WeakPtr<Inspector::InspectorTarget,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::WeakPtr<Inspector::InspectorTarget,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::String>>,WTF::String>((a1 + 56), a2, a3, &v7);
  result = v7;
  if (v7)
  {
    v6 = *(v7 + 1);
    if (v6)
    {
      (*(*v6 + 40))(*(v7 + 1), a3);
      result = v7;
      v7 = 0;
      if (!result)
      {
        return result;
      }
    }

    else
    {
      v7 = 0;
    }

    if (atomic_fetch_add(result, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, result);
      return WTF::fastFree(result, v4);
    }
  }

  return result;
}

unsigned int *WebKit::WebPageInspectorTargetController::disconnectInspector(WebKit::WebPageInspectorTargetController *this, const WTF::StringImpl **a2, const WTF::StringImpl *a3)
{
  WTF::HashMap<WTF::String,WTF::WeakPtr<Inspector::InspectorTarget,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::WeakPtr<Inspector::InspectorTarget,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WTF::String,WTF::WeakPtr<Inspector::InspectorTarget,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::WeakPtr<Inspector::InspectorTarget,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::String>>,WTF::String>(this + 7, a2, a3, &v6);
  result = v6;
  if (v6)
  {
    v5 = *(v6 + 1);
    if (v5)
    {
      (*(*v5 + 48))(*(v6 + 1));
      result = v6;
      v6 = 0;
      if (!result)
      {
        return result;
      }
    }

    else
    {
      v6 = 0;
    }

    if (atomic_fetch_add(result, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, result);
      return WTF::fastFree(result, v3);
    }
  }

  return result;
}

unsigned int *WebKit::WebPageInspectorTargetController::sendMessageToTargetBackend(WebKit::WebPageInspectorTargetController *this, const WTF::StringImpl **a2, const WTF::String *a3)
{
  WTF::HashMap<WTF::String,WTF::WeakPtr<Inspector::InspectorTarget,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::WeakPtr<Inspector::InspectorTarget,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WTF::String,WTF::WeakPtr<Inspector::InspectorTarget,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::WeakPtr<Inspector::InspectorTarget,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::String>>,WTF::String>(this + 7, a2, a3, &v7);
  result = v7;
  if (v7)
  {
    v6 = *(v7 + 1);
    if (v6)
    {
      (*(*v6 + 56))(*(v7 + 1), a3);
      result = v7;
      v7 = 0;
      if (!result)
      {
        return result;
      }
    }

    else
    {
      v7 = 0;
    }

    if (atomic_fetch_add(result, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, result);
      return WTF::fastFree(result, v4);
    }
  }

  return result;
}

uint64_t WebKit::WebPageInspectorTargetFrontendChannel::WebPageInspectorTargetFrontendChannel(uint64_t a1, uint64_t a2, atomic_uint **a3, char a4)
{
  *a1 = &unk_1F112C460;
  WTF::WeakPtrFactory<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl>::initializeIfNeeded((a2 + 24), a2 + 16);
  v8 = *(a2 + 24);
  atomic_fetch_add(v8, 1u);
  *(a1 + 8) = v8;
  v9 = *a3;
  if (*a3)
  {
    atomic_fetch_add_explicit(v9, 2u, memory_order_relaxed);
  }

  *(a1 + 16) = v9;
  *(a1 + 24) = a4;
  return a1;
}

void WebKit::WebPageInspectorTargetFrontendChannel::sendMessageToFrontend(WebKit::WebPageInspectorTargetFrontendChannel *this, const WTF::String *a2)
{
  v2 = *(*(this + 1) + 8);
  if (v2)
  {
    CFRetain(*(v2 - 8));
    v5 = (*(*(v2 + 16) + 56))(v2 + 16);
    v7 = IPC::Encoder::operator new(0x238, v6);
    *v7 = 2348;
    *(v7 + 2) = 0;
    *(v7 + 3) = 0;
    *(v7 + 1) = v5;
    *(v7 + 68) = 0;
    *(v7 + 70) = 0;
    *(v7 + 69) = 0;
    IPC::Encoder::encodeHeader(v7);
    v12 = v7;
    IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v7, this + 2);
    IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v7, a2);
    (*(*(v2 + 16) + 32))(v2 + 16, &v12, 0);
    v9 = v12;
    v12 = 0;
    if (v9)
    {
      IPC::Encoder::~Encoder(v9, v8);
      bmalloc::api::tzoneFree(v10, v11);
    }

    CFRelease(*(v2 - 8));
  }

  else
  {
    __break(0xC471u);
  }
}

uint64_t WebKit::MediaDeviceSandboxExtensions::MediaDeviceSandboxExtensions(uint64_t a1, uint64_t a2, _DWORD *a3, uint64_t *a4)
{
  v7 = WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(a1, a2);
  *(v7 + 16) = 0;
  *(v7 + 24) = 0;
  v8 = v7 + 16;
  WTF::VectorBuffer<WTF::String,0ul,WTF::FastMalloc>::adopt(v7 + 16, a3);
  v9 = *a4;
  *a4 = 0;
  *(v8 + 16) = v9;
  if (*(v8 - 4) == *(v8 + 12))
  {
    return a1;
  }

  result = 39;
  __break(0xC471u);
  return result;
}

uint64_t WebKit::MediaDeviceSandboxExtensions::operator[]@<X0>(uint64_t *a1@<X0>, unint64_t a2@<X1>, atomic_uint **a3@<X8>)
{
  v4 = *(a1 + 3);
  if (v4 != *(a1 + 7) || v4 <= a2)
  {
    __break(0xC471u);
    JUMPOUT(0x19E2F6350);
  }

  v6 = *a1;
  v7 = a1[2];
  if (*(v7 + 8 * a2))
  {
    result = WTF::fastMalloc(0x18);
    *result = 1;
    v9 = *(v7 + 8 * a2);
    *(v7 + 8 * a2) = 0;
    *(result + 8) = v9;
    *(result + 16) = 0;
  }

  else
  {
    result = 0;
  }

  v10 = *(v6 + 8 * a2);
  if (v10)
  {
    atomic_fetch_add_explicit(v10, 2u, memory_order_relaxed);
  }

  *a3 = v10;
  a3[1] = result;
  return result;
}

uint64_t WebKit::UserMediaPermissionRequestManager::ref(WebKit::UserMediaPermissionRequestManager *this)
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

void WebKit::UserMediaPermissionRequestManager::deref(WebKit::UserMediaPermissionRequestManager *this)
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

WebCore::Node *WebKit::UserMediaPermissionRequestManager::startUserMediaRequest(WebKit::UserMediaPermissionRequestManager *this, WebCore::UserMediaRequest *a2)
{
  v4 = WebCore::UserMediaRequest::document(a2);
  if (!v4)
  {
    v44 = 0;
LABEL_57:
    WebCore::UserMediaRequest::deny();
    goto LABEL_48;
  }

  v6 = v4;
  *(v4 + 28) += 2;
  v44 = v4;
  v7 = *(v4 + 552);
  if (!v7)
  {
    goto LABEL_57;
  }

  v8 = *(v7 + 8);
  if (!v8)
  {
    goto LABEL_57;
  }

  ++*(v8 + 16);
  v9 = *(v8 + 24);
  if (!v9 || (v10 = *(v9 + 8)) == 0)
  {
    WebCore::UserMediaRequest::deny();
    goto LABEL_46;
  }

  if (*(v10 + 520) == 1)
  {
    WebKit::UserMediaPermissionRequestManager::sendUserMediaRequest(this, a2);
    goto LABEL_46;
  }

  v42 = 0;
  v43 = 0;
  if (v4 == -1)
  {
    __break(0xC471u);
    goto LABEL_60;
  }

  v11 = *(this + 4);
  if (!v11)
  {
    WTF::HashTable<WTF::RefPtr<WebCore::Document,WTF::RawPtrTraits<WebCore::Document>,WTF::DefaultRefDerefTraits<WebCore::Document>>,WTF::KeyValuePair<WTF::RefPtr<WebCore::Document,WTF::RawPtrTraits<WebCore::Document>,WTF::DefaultRefDerefTraits<WebCore::Document>>,WTF::Vector<WTF::Ref<WebCore::MediaKeySystemRequest,WTF::RawPtrTraits<WebCore::MediaKeySystemRequest>,WTF::DefaultRefDerefTraits<WebCore::MediaKeySystemRequest>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::RefPtr<WebCore::Document,WTF::RawPtrTraits<WebCore::Document>,WTF::DefaultRefDerefTraits<WebCore::Document>>,WTF::Vector<WTF::Ref<WebCore::MediaKeySystemRequest,WTF::RawPtrTraits<WebCore::MediaKeySystemRequest>,WTF::DefaultRefDerefTraits<WebCore::MediaKeySystemRequest>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WTF::RefPtr<WebCore::Document,WTF::RawPtrTraits<WebCore::Document>,WTF::DefaultRefDerefTraits<WebCore::Document>>>,WTF::HashMap<WTF::RefPtr<WebCore::Document,WTF::RawPtrTraits<WebCore::Document>,WTF::DefaultRefDerefTraits<WebCore::Document>>,WTF::Vector<WTF::Ref<WebCore::MediaKeySystemRequest,WTF::RawPtrTraits<WebCore::MediaKeySystemRequest>,WTF::DefaultRefDerefTraits<WebCore::MediaKeySystemRequest>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::RefPtr<WebCore::Document,WTF::RawPtrTraits<WebCore::Document>,WTF::DefaultRefDerefTraits<WebCore::Document>>>,WTF::HashTraits<WTF::RefPtr<WebCore::Document,WTF::RawPtrTraits<WebCore::Document>,WTF::DefaultRefDerefTraits<WebCore::Document>>>,WTF::HashTraits<WTF::Vector<WTF::Ref<WebCore::MediaKeySystemRequest,WTF::RawPtrTraits<WebCore::MediaKeySystemRequest>,WTF::DefaultRefDerefTraits<WebCore::MediaKeySystemRequest>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::RefPtr<WebCore::Document,WTF::RawPtrTraits<WebCore::Document>,WTF::DefaultRefDerefTraits<WebCore::Document>>>,WTF::FastMalloc>::expand(this + 4, 0);
    v11 = *(this + 4);
  }

  v12 = *(v11 - 8);
  v13 = (v6 + ~(v6 << 32)) ^ ((v6 + ~(v6 << 32)) >> 22);
  v14 = 9 * ((v13 + ~(v13 << 13)) ^ ((v13 + ~(v13 << 13)) >> 8));
  v15 = (v14 ^ (v14 >> 15)) + ~((v14 ^ (v14 >> 15)) << 27);
  v16 = v12 & ((v15 >> 31) ^ v15);
  v17 = (v11 + 24 * v16);
  v18 = *v17;
  if (*v17)
  {
    v19 = 0;
    v20 = 1;
    while (v18 != v6)
    {
      if (v18 == -1)
      {
        v19 = v17;
      }

      v16 = (v16 + v20) & v12;
      v17 = (v11 + 24 * v16);
      v18 = *v17;
      ++v20;
      if (!*v17)
      {
        if (v19)
        {
          *v19 = 0;
          v19[1] = 0;
          v19[2] = 0;
          --*(*(this + 4) - 16);
          v17 = v19;
        }

        goto LABEL_20;
      }
    }

    goto LABEL_30;
  }

LABEL_20:
  WTF::GenericHashTraits<WTF::RefPtr<WebCore::Document,WTF::RawPtrTraits<WebCore::Document>,WTF::DefaultRefDerefTraits<WebCore::Document>>>::assignToEmpty<WTF::RefPtr<WebCore::Document,WTF::RawPtrTraits<WebCore::Document>,WTF::DefaultRefDerefTraits<WebCore::Document>>,WTF::RefPtr<WebCore::Document,WTF::RawPtrTraits<WebCore::Document>,WTF::DefaultRefDerefTraits<WebCore::Document>> const&>(v17, &v44);
  v23 = v42;
  v24 = v43;
  v42 = 0;
  v43 = 0;
  v25 = *(v17 + 5);
  if (v25)
  {
    WTF::VectorDestructor<true,WTF::Ref<WebCore::MediaKeySystemRequest,WTF::RawPtrTraits<WebCore::MediaKeySystemRequest>,WTF::DefaultRefDerefTraits<WebCore::MediaKeySystemRequest>>>::destruct(v17[1], v17[1] + v25);
  }

  v26 = v17[1];
  if (v26)
  {
    v17[1] = 0;
    *(v17 + 4) = 0;
    WTF::fastFree(v26, v21);
  }

  *&v22 = 0;
  v45 = v22;
  v17[1] = v23;
  v17[2] = v24;
  WTF::Vector<WTF::Ref<WebCore::MediaKeySystemRequest,WTF::RawPtrTraits<WebCore::MediaKeySystemRequest>,WTF::DefaultRefDerefTraits<WebCore::MediaKeySystemRequest>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v45, v21);
  v27 = *(this + 4);
  if (v27)
  {
    v28 = *(v27 - 12) + 1;
  }

  else
  {
    v28 = 1;
  }

  *(v27 - 12) = v28;
  v29 = (*(v27 - 16) + v28);
  v30 = *(v27 - 4);
  if (v30 > 0x400)
  {
    if (v30 > 2 * v29)
    {
      goto LABEL_30;
    }

    goto LABEL_29;
  }

  if (3 * v30 <= 4 * v29)
  {
LABEL_29:
    v17 = WTF::HashTable<WTF::RefPtr<WebCore::Document,WTF::RawPtrTraits<WebCore::Document>,WTF::DefaultRefDerefTraits<WebCore::Document>>,WTF::KeyValuePair<WTF::RefPtr<WebCore::Document,WTF::RawPtrTraits<WebCore::Document>,WTF::DefaultRefDerefTraits<WebCore::Document>>,WTF::Vector<WTF::Ref<WebCore::MediaKeySystemRequest,WTF::RawPtrTraits<WebCore::MediaKeySystemRequest>,WTF::DefaultRefDerefTraits<WebCore::MediaKeySystemRequest>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::RefPtr<WebCore::Document,WTF::RawPtrTraits<WebCore::Document>,WTF::DefaultRefDerefTraits<WebCore::Document>>,WTF::Vector<WTF::Ref<WebCore::MediaKeySystemRequest,WTF::RawPtrTraits<WebCore::MediaKeySystemRequest>,WTF::DefaultRefDerefTraits<WebCore::MediaKeySystemRequest>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WTF::RefPtr<WebCore::Document,WTF::RawPtrTraits<WebCore::Document>,WTF::DefaultRefDerefTraits<WebCore::Document>>>,WTF::HashMap<WTF::RefPtr<WebCore::Document,WTF::RawPtrTraits<WebCore::Document>,WTF::DefaultRefDerefTraits<WebCore::Document>>,WTF::Vector<WTF::Ref<WebCore::MediaKeySystemRequest,WTF::RawPtrTraits<WebCore::MediaKeySystemRequest>,WTF::DefaultRefDerefTraits<WebCore::MediaKeySystemRequest>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::RefPtr<WebCore::Document,WTF::RawPtrTraits<WebCore::Document>,WTF::DefaultRefDerefTraits<WebCore::Document>>>,WTF::HashTraits<WTF::RefPtr<WebCore::Document,WTF::RawPtrTraits<WebCore::Document>,WTF::DefaultRefDerefTraits<WebCore::Document>>>,WTF::HashTraits<WTF::Vector<WTF::Ref<WebCore::MediaKeySystemRequest,WTF::RawPtrTraits<WebCore::MediaKeySystemRequest>,WTF::DefaultRefDerefTraits<WebCore::MediaKeySystemRequest>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::RefPtr<WebCore::Document,WTF::RawPtrTraits<WebCore::Document>,WTF::DefaultRefDerefTraits<WebCore::Document>>>,WTF::FastMalloc>::expand(this + 4, v17);
  }

LABEL_30:
  WTF::Vector<WTF::Ref<WebCore::MediaKeySystemRequest,WTF::RawPtrTraits<WebCore::MediaKeySystemRequest>,WTF::DefaultRefDerefTraits<WebCore::MediaKeySystemRequest>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v42, v5);
  v31 = *(v17 + 5);
  if (!v31)
  {
    WebCore::Document::addMediaCanStartListener();
    v31 = *(v17 + 5);
  }

  v32 = v31;
  if (v31 == *(v17 + 4))
  {
    if (v31 + (v31 >> 1) <= v31 + 1)
    {
      v33 = v31 + 1;
    }

    else
    {
      v33 = v31 + (v31 >> 1);
    }

    if (!(v33 >> 29))
    {
      v34 = v17[1];
      if (v33 <= 0x10)
      {
        v35 = 16;
      }

      else
      {
        v35 = v33;
      }

      v36 = WTF::fastMalloc((8 * v35));
      *(v17 + 4) = v35;
      v17[1] = v36;
      memcpy(v36, v34, 8 * v32);
      if (v34)
      {
        if (v17[1] == v34)
        {
          v17[1] = 0;
          *(v17 + 4) = 0;
        }

        WTF::fastFree(v34, v37);
      }

      v38 = *(v17 + 5);
      v39 = v17[1];
      ++*(a2 + 8);
      *(v39 + v38) = a2;
      *(v17 + 5) = v38 + 1;
      goto LABEL_46;
    }

    __break(0xC471u);
LABEL_60:
    JUMPOUT(0x19E2F6798);
  }

  v40 = v17[1];
  ++*(a2 + 8);
  *(v40 + v31) = a2;
  *(v17 + 5) = v31 + 1;
LABEL_46:
  if (*(v8 + 16) == 1)
  {
    (*(*v8 + 8))(v8);
  }

  else
  {
    --*(v8 + 16);
  }

LABEL_48:
  result = v44;
  v44 = 0;
  if (result)
  {
    if (*(result + 7) == 2)
    {
      return WebCore::Node::removedLastRef(result);
    }

    else
    {
      *(result + 7) -= 2;
    }
  }

  return result;
}

void WebKit::UserMediaPermissionRequestManager::sendUserMediaRequest(WebKit::UserMediaPermissionRequestManager *this, WebCore::UserMediaRequest *a2)
{
  v39 = *MEMORY[0x1E69E9840];
  if (WebCore::UserMediaRequest::document(a2))
  {
    v4 = *(WebCore::UserMediaRequest::document(a2) + 552);
    if (v4)
    {
      v5 = *(v4 + 8);
      if (v5)
      {
        ++v5[4];
        v6 = *(a2 + 5);
        if (v6 == -1)
        {
          __break(0xC471u);
          goto LABEL_47;
        }

        if (!v6)
        {
          __break(0xC471u);
          JUMPOUT(0x19E2F6C14);
        }

        v7 = *(this + 3);
        if (!v7)
        {
          WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteCDMInstanceProxy,WTF::RawPtrTraits<WebKit::RemoteCDMInstanceProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteCDMInstanceProxy>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteCDMInstanceProxy,WTF::RawPtrTraits<WebKit::RemoteCDMInstanceProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteCDMInstanceProxy>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteCDMInstanceProxy,WTF::RawPtrTraits<WebKit::RemoteCDMInstanceProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteCDMInstanceProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::RemoteCDMInstanceProxy,WTF::RawPtrTraits<WebKit::RemoteCDMInstanceProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteCDMInstanceProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand(this + 3, 0);
          v7 = *(this + 3);
        }

        v8 = *(v7 - 8);
        v9 = (v6 + ~(v6 << 32)) ^ ((v6 + ~(v6 << 32)) >> 22);
        v10 = 9 * ((v9 + ~(v9 << 13)) ^ ((v9 + ~(v9 << 13)) >> 8));
        v11 = (v10 ^ (v10 >> 15)) + ~((v10 ^ (v10 >> 15)) << 27);
        v12 = v8 & ((v11 >> 31) ^ v11);
        v13 = (v7 + 16 * v12);
        v14 = *v13;
        if (*v13)
        {
          v15 = 0;
          v16 = 1;
          while (v14 != v6)
          {
            if (v14 == -1)
            {
              v15 = v13;
            }

            v12 = (v12 + v16) & v8;
            v13 = (v7 + 16 * v12);
            v14 = *v13;
            ++v16;
            if (!*v13)
            {
              if (v15)
              {
                *v15 = 0;
                v15[1] = 0;
                --*(*(this + 3) - 16);
                v13 = v15;
              }

              goto LABEL_16;
            }
          }

          goto LABEL_28;
        }

LABEL_16:
        v17 = v13[1];
        *v13 = v6;
        ++*(a2 + 8);
        v13[1] = a2;
        if (v17)
        {
          if (v17[8] == 1)
          {
            (*(*v17 + 24))(v17);
          }

          else
          {
            --v17[8];
          }
        }

        v18 = *(this + 3);
        if (v18)
        {
          v19 = *(v18 - 12) + 1;
        }

        else
        {
          v19 = 1;
        }

        *(v18 - 12) = v19;
        v20 = (*(v18 - 16) + v19);
        v21 = *(v18 - 4);
        if (v21 > 0x400)
        {
          if (v21 > 2 * v20)
          {
            goto LABEL_28;
          }
        }

        else if (3 * v21 > 4 * v20)
        {
LABEL_28:
          WebKit::WebFrame::fromCoreFrame(v5, &v36);
          v22 = WebCore::UserMediaRequest::topLevelDocumentOrigin(a2);
          v23 = v22;
          if (v22)
          {
            atomic_fetch_add(v22, 1u);
          }

          v24 = *(*(this + 2) + 8);
          if (v24)
          {
            CFRetain(*(v24 - 8));
            v25 = *(a2 + 5);
            v26 = v36;
            WebKit::WebFrame::info(v36, 0, v38);
            v27 = WebCore::UserMediaRequest::userMediaDocumentOrigin(a2);
            v28 = (*(*(v24 + 16) + 56))(v24 + 16);
            v30 = IPC::Encoder::operator new(0x238, v29);
            *v30 = 2335;
            *(v30 + 2) = 0;
            *(v30 + 3) = 0;
            *(v30 + 1) = v28;
            *(v30 + 68) = 0;
            *(v30 + 70) = 0;
            *(v30 + 69) = 0;
            IPC::Encoder::encodeHeader(v30);
            v37 = v30;
            IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v30, v25);
            IPC::ArgumentCoder<WebKit::FrameInfoData,void>::encode(v30, v38);
            IPC::ArgumentCoder<WebCore::SecurityOriginData,void>::encode(v30, v27 + 8);
            IPC::ArgumentCoder<WebCore::SecurityOriginData,void>::encode(v30, v23 + 8);
            IPC::ArgumentCoder<WebCore::MediaStreamRequest,void>::encode(v30, a2 + 96);
            (*(*(v24 + 16) + 32))(v24 + 16, &v37, 0);
            v32 = v37;
            v37 = 0;
            if (v32)
            {
              IPC::Encoder::~Encoder(v32, v31);
              bmalloc::api::tzoneFree(v34, v35);
            }

            WebKit::FrameInfoData::~FrameInfoData(v38);
            CFRelease(*(v24 - 8));
            if (v23)
            {
              WTF::ThreadSafeRefCounted<WebCore::SecurityOrigin,(WTF::DestructionThread)0>::deref(v23, v33);
              if (!v26)
              {
LABEL_36:
                if (v5[4] == 1)
                {
                  (*(*v5 + 8))(v5);
                }

                else
                {
                  --v5[4];
                }

                return;
              }
            }

            else if (!v26)
            {
              goto LABEL_36;
            }

            CFRelease(*(v26 + 1));
            goto LABEL_36;
          }

          __break(0xC471u);
LABEL_47:
          JUMPOUT(0x19E2F6BF4);
        }

        WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteCDMInstanceProxy,WTF::RawPtrTraits<WebKit::RemoteCDMInstanceProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteCDMInstanceProxy>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteCDMInstanceProxy,WTF::RawPtrTraits<WebKit::RemoteCDMInstanceProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteCDMInstanceProxy>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteCDMInstanceProxy,WTF::RawPtrTraits<WebKit::RemoteCDMInstanceProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteCDMInstanceProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::RemoteCDMInstanceProxy,WTF::RawPtrTraits<WebKit::RemoteCDMInstanceProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteCDMInstanceProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand(this + 3, v13);
        goto LABEL_28;
      }
    }
  }

  WebCore::UserMediaRequest::deny();
}

uint64_t WebKit::UserMediaPermissionRequestManager::cancelUserMediaRequest(WebKit::UserMediaPermissionRequestManager *this, WebCore::UserMediaRequest *a2)
{
  v23 = *(a2 + 5);
  v4 = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::UserMediaRequestIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::UserMediaRequestIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebCore::UserMediaRequest,WTF::RawPtrTraits<WebCore::UserMediaRequest>,WTF::DefaultRefDerefTraits<WebCore::UserMediaRequest>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::UserMediaRequestIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebCore::UserMediaRequest,WTF::RawPtrTraits<WebCore::UserMediaRequest>,WTF::DefaultRefDerefTraits<WebCore::UserMediaRequest>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::UserMediaRequestIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::UserMediaRequestIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebCore::UserMediaRequest,WTF::RawPtrTraits<WebCore::UserMediaRequest>,WTF::DefaultRefDerefTraits<WebCore::UserMediaRequest>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::UserMediaRequestIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::UserMediaRequestIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebCore::UserMediaRequest,WTF::RawPtrTraits<WebCore::UserMediaRequest>,WTF::DefaultRefDerefTraits<WebCore::UserMediaRequest>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::UserMediaRequestIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::UserMediaRequestIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebCore::UserMediaRequest,WTF::RawPtrTraits<WebCore::UserMediaRequest>,WTF::DefaultRefDerefTraits<WebCore::UserMediaRequest>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::UserMediaRequestIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::UserMediaRequestIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebCore::UserMediaRequest,WTF::RawPtrTraits<WebCore::UserMediaRequest>,WTF::DefaultRefDerefTraits<WebCore::UserMediaRequest>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::UserMediaRequestIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<WebCore::UserMediaRequestIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>( this + 3,  &v23);
  WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::MediaKeySystemRequestIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebCore::MediaKeySystemRequest,WTF::RawPtrTraits<WebCore::MediaKeySystemRequest>,WTF::DefaultRefDerefTraits<WebCore::MediaKeySystemRequest>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::MediaKeySystemRequestIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::MediaKeySystemRequestIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebCore::MediaKeySystemRequest,WTF::RawPtrTraits<WebCore::MediaKeySystemRequest>,WTF::DefaultRefDerefTraits<WebCore::MediaKeySystemRequest>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::take(this + 3, v4, &v24);
  result = v24;
  v24 = 0;
  if (result)
  {
    if (*(result + 32) == 1)
    {
      return (*(*result + 24))(result);
    }

    else
    {
      --*(result + 32);
    }
  }

  else
  {
    result = WebCore::UserMediaRequest::document(a2);
    if (result)
    {
      v6 = result;
      *(result + 28) += 2;
      v7 = *(this + 4);
      if (v7)
      {
        if (result == -1)
        {
          __break(0xC471u);
          JUMPOUT(0x19E2F6E9CLL);
        }

        v8 = *(v7 - 8);
        v9 = (~(result << 32) + result) ^ ((~(result << 32) + result) >> 22);
        v10 = 9 * ((v9 + ~(v9 << 13)) ^ ((v9 + ~(v9 << 13)) >> 8));
        v11 = (v10 ^ (v10 >> 15)) + ~((v10 ^ (v10 >> 15)) << 27);
        v12 = v8 & ((v11 >> 31) ^ v11);
        v13 = v7 + 24 * v12;
        v14 = *v13;
        if (*v13 != result)
        {
          v15 = 1;
          while (v14)
          {
            v12 = (v12 + v15) & v8;
            v13 = v7 + 24 * v12;
            v14 = *v13;
            ++v15;
            if (*v13 == result)
            {
              goto LABEL_15;
            }
          }

          v13 = v7 + 24 * *(v7 - 4);
        }

LABEL_15:
        if (v7 + 24 * *(v7 - 4) != v13)
        {
          v16 = *(v13 + 20);
          if (!v16)
          {
            goto LABEL_22;
          }

          v17 = *(v13 + 8);
          v18 = v17 + 8;
          while (*v17 != a2)
          {
            v17 += 8;
            v18 += 8;
            if (!--v16)
            {
              goto LABEL_26;
            }
          }

          v19 = v17;
          v20 = v18;
          WTF::VectorDestructor<true,WTF::Ref<WebCore::MediaKeySystemRequest,WTF::RawPtrTraits<WebCore::MediaKeySystemRequest>,WTF::DefaultRefDerefTraits<WebCore::MediaKeySystemRequest>>>::destruct(v17, (v17 + 8));
          result = memmove(v19, (v19 + 8), *(v13 + 8) + 8 * *(v13 + 20) - v20);
          v21 = *(v13 + 20) - 1;
          *(v13 + 20) = v21;
          if (!v21)
          {
LABEL_22:
            result = WebCore::Document::removeMediaCanStartListener();
            v22 = *(this + 4);
            if (!v22 || (v22 += 24 * *(v22 - 4), v22 != v13))
            {
              if (v22 != v13)
              {
                result = WTF::HashTable<WTF::RefPtr<WebCore::Document,WTF::RawPtrTraits<WebCore::Document>,WTF::DefaultRefDerefTraits<WebCore::Document>>,WTF::KeyValuePair<WTF::RefPtr<WebCore::Document,WTF::RawPtrTraits<WebCore::Document>,WTF::DefaultRefDerefTraits<WebCore::Document>>,WTF::Vector<WTF::Ref<WebCore::MediaKeySystemRequest,WTF::RawPtrTraits<WebCore::MediaKeySystemRequest>,WTF::DefaultRefDerefTraits<WebCore::MediaKeySystemRequest>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::RefPtr<WebCore::Document,WTF::RawPtrTraits<WebCore::Document>,WTF::DefaultRefDerefTraits<WebCore::Document>>,WTF::Vector<WTF::Ref<WebCore::MediaKeySystemRequest,WTF::RawPtrTraits<WebCore::MediaKeySystemRequest>,WTF::DefaultRefDerefTraits<WebCore::MediaKeySystemRequest>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WTF::RefPtr<WebCore::Document,WTF::RawPtrTraits<WebCore::Document>,WTF::DefaultRefDerefTraits<WebCore::Document>>>,WTF::HashMap<WTF::RefPtr<WebCore::Document,WTF::RawPtrTraits<WebCore::Document>,WTF::DefaultRefDerefTraits<WebCore::Document>>,WTF::Vector<WTF::Ref<WebCore::MediaKeySystemRequest,WTF::RawPtrTraits<WebCore::MediaKeySystemRequest>,WTF::DefaultRefDerefTraits<WebCore::MediaKeySystemRequest>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::RefPtr<WebCore::Document,WTF::RawPtrTraits<WebCore::Document>,WTF::DefaultRefDerefTraits<WebCore::Document>>>,WTF::HashTraits<WTF::RefPtr<WebCore::Document,WTF::RawPtrTraits<WebCore::Document>,WTF::DefaultRefDerefTraits<WebCore::Document>>>,WTF::HashTraits<WTF::Vector<WTF::Ref<WebCore::MediaKeySystemRequest,WTF::RawPtrTraits<WebCore::MediaKeySystemRequest>,WTF::DefaultRefDerefTraits<WebCore::MediaKeySystemRequest>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::RefPtr<WebCore::Document,WTF::RawPtrTraits<WebCore::Document>,WTF::DefaultRefDerefTraits<WebCore::Document>>>,WTF::FastMalloc>::remove(this + 4, v13);
              }
            }
          }
        }
      }

LABEL_26:
      if (*(v6 + 7) == 2)
      {
        return WebCore::Node::removedLastRef(v6);
      }

      else
      {
        *(v6 + 7) -= 2;
      }
    }
  }

  return result;
}

uint64_t WebKit::UserMediaPermissionRequestManager::mediaCanStart(WebKit::UserMediaPermissionRequestManager *this, WebCore::Document *a2, __n128 a3)
{
  v6 = *(this + 4);
  v4 = (this + 32);
  v5 = v6;
  if (!v6)
  {
    goto LABEL_17;
  }

  v7 = a2;
  v8 = *(v5 - 8);
  v9 = (a2 + ~(a2 << 32)) ^ ((a2 + ~(a2 << 32)) >> 22);
  v10 = 9 * ((v9 + ~(v9 << 13)) ^ ((v9 + ~(v9 << 13)) >> 8));
  v11 = (v10 ^ (v10 >> 15)) + ~((v10 ^ (v10 >> 15)) << 27);
  v12 = v8 & ((v11 >> 31) ^ v11);
  a2 = (v5 + 24 * v12);
  v13 = *a2;
  if (*a2 != v7)
  {
    v14 = 1;
    while (v13)
    {
      v12 = (v12 + v14) & v8;
      a2 = (v5 + 24 * v12);
      v13 = *a2;
      ++v14;
      if (*a2 == v7)
      {
        goto LABEL_8;
      }
    }

    a2 = (v5 + 24 * *(v5 - 4));
  }

LABEL_8:
  if ((v5 + 24 * *(v5 - 4)) == a2)
  {
LABEL_17:
    a3.n128_u64[0] = 0;
    v22 = a3;
    v23 = a3;
    WTF::Vector<WTF::Ref<WebCore::MediaKeySystemRequest,WTF::RawPtrTraits<WebCore::MediaKeySystemRequest>,WTF::DefaultRefDerefTraits<WebCore::MediaKeySystemRequest>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v23, a2);
  }

  else
  {
    v15 = *(a2 + 1);
    v22.n128_u64[0] = v15;
    v16 = *(a2 + 4);
    v17 = *(a2 + 5);
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
    v22.n128_u64[1] = __PAIR64__(v17, v16);
    v18 = *v4;
    if (!*v4 || (v18 = (v18 + 24 * *(v18 - 1)), v18 != a2))
    {
      if (v18 != a2)
      {
        WTF::HashTable<WTF::RefPtr<WebCore::Document,WTF::RawPtrTraits<WebCore::Document>,WTF::DefaultRefDerefTraits<WebCore::Document>>,WTF::KeyValuePair<WTF::RefPtr<WebCore::Document,WTF::RawPtrTraits<WebCore::Document>,WTF::DefaultRefDerefTraits<WebCore::Document>>,WTF::Vector<WTF::Ref<WebCore::MediaKeySystemRequest,WTF::RawPtrTraits<WebCore::MediaKeySystemRequest>,WTF::DefaultRefDerefTraits<WebCore::MediaKeySystemRequest>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::RefPtr<WebCore::Document,WTF::RawPtrTraits<WebCore::Document>,WTF::DefaultRefDerefTraits<WebCore::Document>>,WTF::Vector<WTF::Ref<WebCore::MediaKeySystemRequest,WTF::RawPtrTraits<WebCore::MediaKeySystemRequest>,WTF::DefaultRefDerefTraits<WebCore::MediaKeySystemRequest>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WTF::RefPtr<WebCore::Document,WTF::RawPtrTraits<WebCore::Document>,WTF::DefaultRefDerefTraits<WebCore::Document>>>,WTF::HashMap<WTF::RefPtr<WebCore::Document,WTF::RawPtrTraits<WebCore::Document>,WTF::DefaultRefDerefTraits<WebCore::Document>>,WTF::Vector<WTF::Ref<WebCore::MediaKeySystemRequest,WTF::RawPtrTraits<WebCore::MediaKeySystemRequest>,WTF::DefaultRefDerefTraits<WebCore::MediaKeySystemRequest>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::RefPtr<WebCore::Document,WTF::RawPtrTraits<WebCore::Document>,WTF::DefaultRefDerefTraits<WebCore::Document>>>,WTF::HashTraits<WTF::RefPtr<WebCore::Document,WTF::RawPtrTraits<WebCore::Document>,WTF::DefaultRefDerefTraits<WebCore::Document>>>,WTF::HashTraits<WTF::Vector<WTF::Ref<WebCore::MediaKeySystemRequest,WTF::RawPtrTraits<WebCore::MediaKeySystemRequest>,WTF::DefaultRefDerefTraits<WebCore::MediaKeySystemRequest>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::RefPtr<WebCore::Document,WTF::RawPtrTraits<WebCore::Document>,WTF::DefaultRefDerefTraits<WebCore::Document>>>,WTF::FastMalloc>::remove(v4, a2);
      }
    }

    if (v17)
    {
      v19 = 8 * v17;
      do
      {
        v20 = *v15++;
        WebKit::UserMediaPermissionRequestManager::sendUserMediaRequest(this, v20);
        v19 -= 8;
      }

      while (v19);
    }
  }

  return WTF::Vector<WTF::Ref<WebCore::MediaKeySystemRequest,WTF::RawPtrTraits<WebCore::MediaKeySystemRequest>,WTF::DefaultRefDerefTraits<WebCore::MediaKeySystemRequest>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v22, a2);
}

_DWORD *WebKit::UserMediaPermissionRequestManager::userMediaAccessWasGranted(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  v12 = a2;
  v8 = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::UserMediaRequestIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::UserMediaRequestIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebCore::UserMediaRequest,WTF::RawPtrTraits<WebCore::UserMediaRequest>,WTF::DefaultRefDerefTraits<WebCore::UserMediaRequest>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::UserMediaRequestIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebCore::UserMediaRequest,WTF::RawPtrTraits<WebCore::UserMediaRequest>,WTF::DefaultRefDerefTraits<WebCore::UserMediaRequest>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::UserMediaRequestIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::UserMediaRequestIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebCore::UserMediaRequest,WTF::RawPtrTraits<WebCore::UserMediaRequest>,WTF::DefaultRefDerefTraits<WebCore::UserMediaRequest>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::UserMediaRequestIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::UserMediaRequestIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebCore::UserMediaRequest,WTF::RawPtrTraits<WebCore::UserMediaRequest>,WTF::DefaultRefDerefTraits<WebCore::UserMediaRequest>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::UserMediaRequestIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::UserMediaRequestIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebCore::UserMediaRequest,WTF::RawPtrTraits<WebCore::UserMediaRequest>,WTF::DefaultRefDerefTraits<WebCore::UserMediaRequest>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::UserMediaRequestIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::UserMediaRequestIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebCore::UserMediaRequest,WTF::RawPtrTraits<WebCore::UserMediaRequest>,WTF::DefaultRefDerefTraits<WebCore::UserMediaRequest>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::UserMediaRequestIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<WebCore::UserMediaRequestIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>( (a1 + 24),  &v12);
  WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::MediaKeySystemRequestIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebCore::MediaKeySystemRequest,WTF::RawPtrTraits<WebCore::MediaKeySystemRequest>,WTF::DefaultRefDerefTraits<WebCore::MediaKeySystemRequest>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::MediaKeySystemRequestIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::MediaKeySystemRequestIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebCore::MediaKeySystemRequest,WTF::RawPtrTraits<WebCore::MediaKeySystemRequest>,WTF::DefaultRefDerefTraits<WebCore::MediaKeySystemRequest>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::take((a1 + 24), v8, &v11);
  if (v11)
  {
    WebCore::UserMediaRequest::allow();
  }

  else
  {
    v9 = *a6;
    *a6 = 0;
    (*(*v9 + 16))(v9);
    (*(*v9 + 8))(v9);
  }

  result = v11;
  v11 = 0;
  if (result)
  {
    if (result[8] == 1)
    {
      return (*(*result + 24))(result);
    }

    else
    {
      --result[8];
    }
  }

  return result;
}

_DWORD *WebKit::UserMediaPermissionRequestManager::userMediaAccessWasDenied(uint64_t a1, uint64_t a2)
{
  v6 = a2;
  v3 = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::UserMediaRequestIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::UserMediaRequestIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebCore::UserMediaRequest,WTF::RawPtrTraits<WebCore::UserMediaRequest>,WTF::DefaultRefDerefTraits<WebCore::UserMediaRequest>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::UserMediaRequestIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebCore::UserMediaRequest,WTF::RawPtrTraits<WebCore::UserMediaRequest>,WTF::DefaultRefDerefTraits<WebCore::UserMediaRequest>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::UserMediaRequestIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::UserMediaRequestIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebCore::UserMediaRequest,WTF::RawPtrTraits<WebCore::UserMediaRequest>,WTF::DefaultRefDerefTraits<WebCore::UserMediaRequest>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::UserMediaRequestIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::UserMediaRequestIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebCore::UserMediaRequest,WTF::RawPtrTraits<WebCore::UserMediaRequest>,WTF::DefaultRefDerefTraits<WebCore::UserMediaRequest>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::UserMediaRequestIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::UserMediaRequestIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebCore::UserMediaRequest,WTF::RawPtrTraits<WebCore::UserMediaRequest>,WTF::DefaultRefDerefTraits<WebCore::UserMediaRequest>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::UserMediaRequestIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::UserMediaRequestIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebCore::UserMediaRequest,WTF::RawPtrTraits<WebCore::UserMediaRequest>,WTF::DefaultRefDerefTraits<WebCore::UserMediaRequest>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::UserMediaRequestIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<WebCore::UserMediaRequestIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>( (a1 + 24),  &v6);
  WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::MediaKeySystemRequestIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebCore::MediaKeySystemRequest,WTF::RawPtrTraits<WebCore::MediaKeySystemRequest>,WTF::DefaultRefDerefTraits<WebCore::MediaKeySystemRequest>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::MediaKeySystemRequestIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::MediaKeySystemRequestIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebCore::MediaKeySystemRequest,WTF::RawPtrTraits<WebCore::MediaKeySystemRequest>,WTF::DefaultRefDerefTraits<WebCore::MediaKeySystemRequest>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::take((a1 + 24), v3, &v5);
  result = v5;
  if (v5)
  {
    WebCore::UserMediaRequest::deny();
    result = v5;
    v5 = 0;
    if (result)
    {
      if (result[8] == 1)
      {
        return (*(*result + 24))(result);
      }

      else
      {
        --result[8];
      }
    }
  }

  return result;
}

void WebKit::UserMediaPermissionRequestManager::enumerateMediaDevices(uint64_t a1, void *a2, uint64_t *a3)
{
  v4 = a2[69];
  if (v4)
  {
    v5 = *(v4 + 8);
    if (v5)
    {
      ++v5[4];
      v6 = *(*(a1 + 16) + 8);
      if (v6)
      {
        CFRetain(*(v6 - 8));
        WebKit::WebFrame::fromCoreFrame(v5, &v28);
        v8 = v28;
        v9 = *(v28 + 88);
        v10 = WebCore::SecurityContext::securityOrigin((a2 + 26));
        v11 = WebCore::Document::topOrigin(a2);
        v12 = (*(*(v6 + 16) + 56))(v6 + 16);
        v14 = IPC::Encoder::operator new(0x238, v13);
        *v14 = 2252;
        *(v14 + 2) = 0;
        *(v14 + 3) = 0;
        *(v14 + 1) = v12;
        *(v14 + 68) = 0;
        *(v14 + 70) = 0;
        *(v14 + 69) = 0;
        IPC::Encoder::encodeHeader(v14);
        v29 = v14;
        IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v14, v9);
        IPC::ArgumentCoder<WebCore::SecurityOriginData,void>::encode(v14, v10 + 8);
        IPC::ArgumentCoder<WebCore::SecurityOriginData,void>::encode(v14, v11 + 8);
        v15 = *a3;
        *a3 = 0;
        v16 = WTF::fastMalloc(0x10);
        *v16 = &unk_1F112C500;
        v16[1] = v15;
        if (WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected != 1)
        {
          v17 = v16;
          IdentifierInternal = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
          v31 = v17;
          v32 = IdentifierInternal;
          (*(*(v6 + 16) + 40))(v6 + 16, &v29, &v31, 0);
          v20 = v31;
          v31 = 0;
          if (v20)
          {
            (*(*v20 + 8))(v20);
          }

          v21 = v29;
          v29 = 0;
          if (v21)
          {
            IPC::Encoder::~Encoder(v21, v19);
            bmalloc::api::tzoneFree(v22, v23);
          }

          CFRelease(*(v8 + 8));
          CFRelease(*(v6 - 8));
          if (v5[4] == 1)
          {
            (*(*v5 + 8))(v5);
          }

          else
          {
            --v5[4];
          }

          return;
        }

        __break(0xC471u);
      }

      else
      {
        __break(0xC471u);
      }

      JUMPOUT(0x19E2F7510);
    }
  }

  v31 = 0;
  v32 = 0;
  v29 = 0;
  v30 = 0;
  v24 = *a3;
  *a3 = 0;
  (*(*v24 + 16))(v24, &v31, &v29);
  (*(*v24 + 8))(v24);
  v26 = v30;
  v30 = 0;
  if (v26 && atomic_fetch_add_explicit(v26, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v26, v25);
  }

  v27 = v29;
  v29 = 0;
  if (v27 && atomic_fetch_add_explicit(v27, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v27, v25);
  }

  WTF::Vector<WebCore::CaptureDeviceWithCapabilities,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v31, v25);
}

uint64_t WebKit::UserMediaPermissionRequestManager::addDeviceChangeObserver(uint64_t a1, uint64_t *a2)
{
  IdentifierInternal = WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>::generateIdentifierInternal();
  WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::UserMediaClient::DeviceChangeObserverTokenType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Function<void ()(void)>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::UserMediaClient::DeviceChangeObserverTokenType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::UserMediaClient::DeviceChangeObserverTokenType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Function<void ()(void)>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<WTF::Function<void ()(void)>>((a1 + 40), &IdentifierInternal, a2, v13);
  if (*(a1 + 48))
  {
    return IdentifierInternal;
  }

  *(a1 + 48) = 1;
  v4 = *(*(a1 + 16) + 8);
  if (v4)
  {
    CFRetain(*(v4 - 8));
    v5 = (*(*(v4 + 16) + 56))(v4 + 16);
    v7 = IPC::Encoder::operator new(0x238, v6);
    *v7 = 2153;
    *(v7 + 2) = 0;
    *(v7 + 3) = 0;
    *(v7 + 1) = v5;
    *(v7 + 68) = 0;
    *(v7 + 70) = 0;
    *(v7 + 69) = 0;
    IPC::Encoder::encodeHeader(v7);
    v13[0] = v7;
    (*(*(v4 + 16) + 32))(v4 + 16, v13, 0);
    v9 = v13[0];
    v13[0] = 0;
    if (v9)
    {
      IPC::Encoder::~Encoder(v9, v8);
      bmalloc::api::tzoneFree(v11, v12);
    }

    CFRelease(*(v4 - 8));
    return IdentifierInternal;
  }

  result = 103;
  __break(0xC471u);
  return result;
}

uint64_t *WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::UserMediaClient::DeviceChangeObserverTokenType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Function<void ()(void)>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::UserMediaClient::DeviceChangeObserverTokenType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::UserMediaClient::DeviceChangeObserverTokenType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Function<void ()(void)>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<WTF::Function<void ()(void)>>@<X0>(uint64_t *result@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *a2;
  if (*a2 == -1 || !v5)
  {
    __break(0xC471u);
    JUMPOUT(0x19E2F7864);
  }

  v8 = result;
  v9 = *result;
  if (!*result)
  {
    result = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::UserMediaClient::DeviceChangeObserverTokenType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::UserMediaClient::DeviceChangeObserverTokenType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Function<void ()(void)>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::UserMediaClient::DeviceChangeObserverTokenType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Function<void ()(void)>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::UserMediaClient::DeviceChangeObserverTokenType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::UserMediaClient::DeviceChangeObserverTokenType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Function<void ()(void)>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::UserMediaClient::DeviceChangeObserverTokenType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::UserMediaClient::DeviceChangeObserverTokenType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Function<void ()(void)>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::UserMediaClient::DeviceChangeObserverTokenType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand(result, 0);
    v9 = *v8;
    v5 = *a2;
  }

  v10 = *(v9 - 8);
  v11 = (v5 + ~(v5 << 32)) ^ ((v5 + ~(v5 << 32)) >> 22);
  v12 = 9 * ((v11 + ~(v11 << 13)) ^ ((v11 + ~(v11 << 13)) >> 8));
  v13 = (v12 ^ (v12 >> 15)) + ~((v12 ^ (v12 >> 15)) << 27);
  v14 = v10 & ((v13 >> 31) ^ v13);
  v15 = (v9 + 16 * v14);
  v16 = *v15;
  if (*v15)
  {
    v17 = 0;
    v18 = 1;
    do
    {
      if (v16 == v5)
      {
        v22 = 0;
        v23 = v9 + 16 * *(v9 - 4);
        goto LABEL_25;
      }

      if (v16 == -1)
      {
        v17 = v15;
      }

      v14 = (v14 + v18) & v10;
      v15 = (v9 + 16 * v14);
      v16 = *v15;
      ++v18;
    }

    while (*v15);
    if (v17)
    {
      *v17 = 0;
      v17[1] = 0;
      --*(*v8 - 16);
      v5 = *a2;
      v15 = v17;
    }
  }

  *v15 = v5;
  v19 = *a3;
  *a3 = 0;
  result = v15[1];
  v15[1] = v19;
  if (result)
  {
    result = (*(*result + 8))(result);
  }

  v20 = *v8;
  if (*v8)
  {
    v21 = *(v20 - 12) + 1;
  }

  else
  {
    v21 = 1;
  }

  *(v20 - 12) = v21;
  v24 = (*(v20 - 16) + v21);
  v25 = *(v20 - 4);
  if (v25 > 0x400)
  {
    if (v25 <= 2 * v24)
    {
LABEL_21:
      result = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::UserMediaClient::DeviceChangeObserverTokenType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::UserMediaClient::DeviceChangeObserverTokenType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Function<void ()(void)>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::UserMediaClient::DeviceChangeObserverTokenType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Function<void ()(void)>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::UserMediaClient::DeviceChangeObserverTokenType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::UserMediaClient::DeviceChangeObserverTokenType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Function<void ()(void)>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::UserMediaClient::DeviceChangeObserverTokenType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::UserMediaClient::DeviceChangeObserverTokenType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Function<void ()(void)>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::UserMediaClient::DeviceChangeObserverTokenType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand(v8, v15);
      v15 = result;
      v20 = *v8;
      if (*v8)
      {
        v25 = *(v20 - 4);
      }

      else
      {
        v25 = 0;
      }
    }
  }

  else if (3 * v25 <= 4 * v24)
  {
    goto LABEL_21;
  }

  v23 = v20 + 16 * v25;
  v22 = 1;
LABEL_25:
  *a4 = v15;
  *(a4 + 8) = v23;
  *(a4 + 16) = v22;
  return result;
}

uint64_t *WebKit::UserMediaPermissionRequestManager::removeDeviceChangeObserver(uint64_t a1, uint64_t a2)
{
  v6 = a2;
  result = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::UserMediaClient::DeviceChangeObserverTokenType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::UserMediaClient::DeviceChangeObserverTokenType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Function<void ()(void)>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::UserMediaClient::DeviceChangeObserverTokenType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Function<void ()(void)>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::UserMediaClient::DeviceChangeObserverTokenType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::UserMediaClient::DeviceChangeObserverTokenType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Function<void ()(void)>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::UserMediaClient::DeviceChangeObserverTokenType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::UserMediaClient::DeviceChangeObserverTokenType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Function<void ()(void)>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::UserMediaClient::DeviceChangeObserverTokenType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::UserMediaClient::DeviceChangeObserverTokenType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Function<void ()(void)>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::UserMediaClient::DeviceChangeObserverTokenType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::UserMediaClient::DeviceChangeObserverTokenType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Function<void ()(void)>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::UserMediaClient::DeviceChangeObserverTokenType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<WebCore::UserMediaClient::DeviceChangeObserverTokenType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>((a1 + 40), &v6);
  v4 = *(a1 + 40);
  if (v4)
  {
    v5 = (v4 + 16 * *(v4 - 4));
    if (v5 == result)
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

    v5 = 0;
  }

  if (v5 != result)
  {
    return WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::UserMediaClient::DeviceChangeObserverTokenType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::UserMediaClient::DeviceChangeObserverTokenType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Function<void ()(void)>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::UserMediaClient::DeviceChangeObserverTokenType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Function<void ()(void)>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::UserMediaClient::DeviceChangeObserverTokenType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::UserMediaClient::DeviceChangeObserverTokenType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Function<void ()(void)>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::UserMediaClient::DeviceChangeObserverTokenType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::UserMediaClient::DeviceChangeObserverTokenType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Function<void ()(void)>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::UserMediaClient::DeviceChangeObserverTokenType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::remove((a1 + 40), result);
  }

  return result;
}

void WebKit::UserMediaPermissionRequestManager::updateCaptureState(uint64_t a1, void *a2, __int16 a3, __int16 a4, uint64_t *a5)
{
  v5 = *(*(a1 + 16) + 8);
  if (v5)
  {
    CFRetain(*(v5 - 8));
    WebKit::WebPage::updateCaptureState(v5 - 16, a2, a3, a4, a5);
    v10 = *(v5 - 8);

    CFRelease(v10);
  }

  else
  {
    __break(0xC471u);
  }
}

uint64_t WebKit::UserMediaPermissionRequestManager::captureDevicesChanged(WebKit::UserMediaPermissionRequestManager *this)
{
  result = WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::WallTime>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::WallTime>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::WallTime,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::WallTime>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::begin(this + 5);
  v3 = result;
  v5 = v4;
  v6 = *(this + 5);
  if (v6)
  {
    v7 = (v6 + 16 * *(v6 - 4));
  }

  else
  {
    v7 = 0;
  }

  if (v7 != result)
  {
    do
    {
      result = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::UserMediaClient::DeviceChangeObserverTokenType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::UserMediaClient::DeviceChangeObserverTokenType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Function<void ()(void)>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::UserMediaClient::DeviceChangeObserverTokenType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Function<void ()(void)>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::UserMediaClient::DeviceChangeObserverTokenType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::UserMediaClient::DeviceChangeObserverTokenType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Function<void ()(void)>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::UserMediaClient::DeviceChangeObserverTokenType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::UserMediaClient::DeviceChangeObserverTokenType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Function<void ()(void)>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::UserMediaClient::DeviceChangeObserverTokenType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::UserMediaClient::DeviceChangeObserverTokenType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Function<void ()(void)>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::UserMediaClient::DeviceChangeObserverTokenType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::UserMediaClient::DeviceChangeObserverTokenType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Function<void ()(void)>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::UserMediaClient::DeviceChangeObserverTokenType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<WebCore::UserMediaClient::DeviceChangeObserverTokenType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(this + 5, v3);
      v8 = *(this + 5);
      if (v8)
      {
        v8 += 16 * *(v8 - 4);
      }

      if (v8 != result)
      {
        result = (*(**(result + 8) + 16))(*(result + 8));
      }

      do
      {
        v3 += 2;
      }

      while (v3 != v5 && (*v3 + 1) <= 1);
    }

    while (v3 != v7);
  }

  return result;
}

void WebKit::WebMediaKeyStorageManager::~WebMediaKeyStorageManager(WebKit::WebMediaKeyStorageManager *this, WTF::StringImpl *a2)
{
  WebKit::WebMediaKeyStorageManager::~WebMediaKeyStorageManager(this, a2);

  bmalloc::api::tzoneFree(v2, v3);
}

{
  v3 = *(this + 1);
  *this = &unk_1F112C4C8;
  *(this + 1) = 0;
  if (v3)
  {
    if (atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v3, a2);
    }
  }
}

void WebKit::UserMediaPermissionRequestManager::~UserMediaPermissionRequestManager(WebKit::UserMediaPermissionRequestManager *this, void *a2)
{
  WebKit::UserMediaPermissionRequestManager::~UserMediaPermissionRequestManager(this, a2);

  bmalloc::api::tzoneFree(v2, v3);
}

{
  *this = &unk_1F112C490;
  v3 = *(this + 5);
  if (v3)
  {
    WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::MessageBatchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::MessageBatchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::CompletionHandler<void ()(void)>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::MessageBatchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::CompletionHandler<void ()(void)>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::MessageBatchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::MessageBatchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::CompletionHandler<void ()(void)>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::MessageBatchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::MessageBatchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::CompletionHandler<void ()(void)>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::MessageBatchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::deallocateTable(v3, a2);
  }

  v4 = *(this + 4);
  if (v4)
  {
    WTF::HashTable<WTF::RefPtr<WebCore::Document,WTF::RawPtrTraits<WebCore::Document>,WTF::DefaultRefDerefTraits<WebCore::Document>>,WTF::KeyValuePair<WTF::RefPtr<WebCore::Document,WTF::RawPtrTraits<WebCore::Document>,WTF::DefaultRefDerefTraits<WebCore::Document>>,WTF::Vector<WTF::Ref<WebCore::MediaKeySystemRequest,WTF::RawPtrTraits<WebCore::MediaKeySystemRequest>,WTF::DefaultRefDerefTraits<WebCore::MediaKeySystemRequest>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::RefPtr<WebCore::Document,WTF::RawPtrTraits<WebCore::Document>,WTF::DefaultRefDerefTraits<WebCore::Document>>,WTF::Vector<WTF::Ref<WebCore::MediaKeySystemRequest,WTF::RawPtrTraits<WebCore::MediaKeySystemRequest>,WTF::DefaultRefDerefTraits<WebCore::MediaKeySystemRequest>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WTF::RefPtr<WebCore::Document,WTF::RawPtrTraits<WebCore::Document>,WTF::DefaultRefDerefTraits<WebCore::Document>>>,WTF::HashMap<WTF::RefPtr<WebCore::Document,WTF::RawPtrTraits<WebCore::Document>,WTF::DefaultRefDerefTraits<WebCore::Document>>,WTF::Vector<WTF::Ref<WebCore::MediaKeySystemRequest,WTF::RawPtrTraits<WebCore::MediaKeySystemRequest>,WTF::DefaultRefDerefTraits<WebCore::MediaKeySystemRequest>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::RefPtr<WebCore::Document,WTF::RawPtrTraits<WebCore::Document>,WTF::DefaultRefDerefTraits<WebCore::Document>>>,WTF::HashTraits<WTF::RefPtr<WebCore::Document,WTF::RawPtrTraits<WebCore::Document>,WTF::DefaultRefDerefTraits<WebCore::Document>>>,WTF::HashTraits<WTF::Vector<WTF::Ref<WebCore::MediaKeySystemRequest,WTF::RawPtrTraits<WebCore::MediaKeySystemRequest>,WTF::DefaultRefDerefTraits<WebCore::MediaKeySystemRequest>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::RefPtr<WebCore::Document,WTF::RawPtrTraits<WebCore::Document>,WTF::DefaultRefDerefTraits<WebCore::Document>>>,WTF::FastMalloc>::deallocateTable(v4, a2);
  }

  v5 = *(this + 3);
  if (v5)
  {
    WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteCDMInstanceProxy,WTF::RawPtrTraits<WebKit::RemoteCDMInstanceProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteCDMInstanceProxy>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteCDMInstanceProxy,WTF::RawPtrTraits<WebKit::RemoteCDMInstanceProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteCDMInstanceProxy>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteCDMInstanceProxy,WTF::RawPtrTraits<WebKit::RemoteCDMInstanceProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteCDMInstanceProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::RemoteCDMInstanceProxy,WTF::RawPtrTraits<WebKit::RemoteCDMInstanceProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteCDMInstanceProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::deallocateTable(v5, a2);
  }

  v6 = *(this + 2);
  *(this + 2) = 0;
  if (v6 && atomic_fetch_add(v6, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v6);
    WTF::fastFree(v6, a2);
  }

  WTF::WeakPtrFactory<WebKit::SessionSet,WTF::DefaultWeakPtrImpl>::~WeakPtrFactory(this + 1, a2);
}

uint64_t WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::WeakPtr<Inspector::InspectorTarget,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::WeakPtr<Inspector::InspectorTarget,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::WeakPtr<Inspector::InspectorTarget,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::WeakPtr<Inspector::InspectorTarget,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(uint64_t a1, void *a2)
{
  v3 = *(a1 - 4);
  if (v3)
  {
    v4 = a1;
    do
    {
      if (*v4 != -1)
      {
        v5 = *(v4 + 8);
        *(v4 + 8) = 0;
        if (v5 && atomic_fetch_add(v5, 0xFFFFFFFF) == 1)
        {
          atomic_store(1u, v5);
          WTF::fastFree(v5, a2);
        }

        v6 = *v4;
        *v4 = 0;
        if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v6, a2);
        }
      }

      v4 += 16;
      --v3;
    }

    while (v3);
  }

  return WTF::fastFree((a1 - 16), a2);
}

uint64_t WTF::KeyValuePair<WTF::String,WTF::WeakPtr<Inspector::InspectorTarget,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>::~KeyValuePair(uint64_t a1, void *a2)
{
  v3 = *(a1 + 8);
  *(a1 + 8) = 0;
  if (v3 && atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3);
    WTF::fastFree(v3, a2);
  }

  v4 = *a1;
  *a1 = 0;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, a2);
  }

  return a1;
}

unsigned int *WTF::HashMap<WTF::String,WTF::WeakPtr<Inspector::InspectorTarget,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::WeakPtr<Inspector::InspectorTarget,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::inlineSet<WTF::String,WebKit::WebPageInspectorTarget *>@<X0>(uint64_t *a1@<X0>, WTF::StringImpl **a2@<X1>, const WTF::StringImpl *a3@<X2>, uint64_t a4@<X8>)
{
  if (*a2 == -1)
  {
    __break(0xC471u);
    JUMPOUT(0x19E2F7FBCLL);
  }

  if (!*a2)
  {
    __break(0xC471u);
    JUMPOUT(0x19E2F7FDCLL);
  }

  v8 = *a1;
  if (*a1 || (WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::WeakPtr<Inspector::InspectorTarget,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::WeakPtr<Inspector::InspectorTarget,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::WeakPtr<Inspector::InspectorTarget,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::WeakPtr<Inspector::InspectorTarget,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::expand(a1, 0), (v8 = *a1) != 0))
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
    if (!*v15)
    {
      if (v12)
      {
        *v12 = 0;
        *(v12 + 1) = 0;
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
      if (v19)
      {
        WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::initializeIfNeeded((v19 + 8), v19);
        v20 = *(v19 + 8);
        if (v20)
        {
          atomic_fetch_add(v20, 1u);
        }
      }

      else
      {
        v20 = 0;
      }

      result = *(v15 + 1);
      *(v15 + 1) = v20;
      if (result && atomic_fetch_add(result, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, result);
        result = WTF::fastFree(result, a2);
      }

      v22 = *a1;
      if (*a1)
      {
        v23 = *(v22 - 12) + 1;
      }

      else
      {
        v23 = 1;
      }

      *(v22 - 12) = v23;
      v24 = (*(v22 - 16) + v23);
      v25 = *(v22 - 4);
      if (v25 > 0x400)
      {
        if (v25 > 2 * v24)
        {
          goto LABEL_22;
        }
      }

      else if (3 * v25 > 4 * v24)
      {
LABEL_22:
        *a4 = v15;
        *(a4 + 8) = v22 + 16 * v25;
        *(a4 + 16) = 1;
        return result;
      }

      result = WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::WeakPtr<Inspector::InspectorTarget,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::WeakPtr<Inspector::InspectorTarget,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::WeakPtr<Inspector::InspectorTarget,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::WeakPtr<Inspector::InspectorTarget,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::expand(a1, v15);
      v15 = result;
      v22 = *a1;
      if (*a1)
      {
        v25 = *(v22 - 4);
      }

      else
      {
        v25 = 0;
      }

      goto LABEL_22;
    }

    if (v16 == -1)
    {
      v12 = (v8 + 16 * v14);
      goto LABEL_37;
    }

    if (WTF::equal(v16, *a2, a3))
    {
      break;
    }

LABEL_37:
    v11 = i + v14;
  }

  v26 = *a1;
  if (*a1)
  {
    v27 = *(v26 - 4);
  }

  else
  {
    v27 = 0;
  }

  *a4 = v15;
  *(a4 + 8) = v26 + 16 * v27;
  *(a4 + 16) = 0;
  v28 = *a3;
  if (*a3)
  {
    WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::initializeIfNeeded((v28 + 8), *a3);
    v29 = *(v28 + 8);
    if (v29)
    {
      atomic_fetch_add(v29, 1u);
      v15 = *a4;
    }
  }

  else
  {
    v29 = 0;
  }

  result = *(v15 + 1);
  *(v15 + 1) = v29;
  if (result && atomic_fetch_add(result, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, result);

    return WTF::fastFree(result, a2);
  }

  return result;
}

uint64_t WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::WeakPtr<Inspector::InspectorTarget,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::WeakPtr<Inspector::InspectorTarget,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::WeakPtr<Inspector::InspectorTarget,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::WeakPtr<Inspector::InspectorTarget,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::expand(uint64_t *a1, WTF::StringImpl **a2)
{
  v4 = *a1;
  if (!*a1)
  {
    LODWORD(v5) = 0;
    v6 = 0;
LABEL_3:
    v7 = 8;
    goto LABEL_4;
  }

  LODWORD(v5) = *(v4 - 4);
  v6 = *(v4 - 12);
  if (!v5)
  {
    goto LABEL_3;
  }

  v7 = v5 << (6 * v6 >= (2 * v5));
LABEL_4:
  v8 = WTF::fastMalloc((16 * v7 + 16));
  v10 = v8;
  v11 = v8 + 16;
  if (v7)
  {
    bzero((v8 + 16), 16 * v7);
  }

  *a1 = v11;
  v10[2] = v7 - 1;
  v10[3] = v7;
  *v10 = 0;
  v10[1] = v6;
  v12 = 0;
  if (v5)
  {
    v5 = v5;
    v14 = v4;
    do
    {
      if (*v14 != -1)
      {
        if (*v14)
        {
          v15 = WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::WeakPtr<Inspector::InspectorTarget,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::WeakPtr<Inspector::InspectorTarget,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::WeakPtr<Inspector::InspectorTarget,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::WeakPtr<Inspector::InspectorTarget,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::reinsert(*a1, v14);
          WTF::KeyValuePair<WTF::String,WTF::WeakPtr<Inspector::InspectorTarget,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>::~KeyValuePair(v14, v16);
          if (v14 == a2)
          {
            v12 = v15;
          }
        }

        else
        {
          WTF::KeyValuePair<WTF::String,WTF::WeakPtr<Inspector::InspectorTarget,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>::~KeyValuePair(v14, v9);
        }
      }

      v14 += 2;
      --v5;
    }

    while (v5);
    goto LABEL_18;
  }

  result = 0;
  if (v4)
  {
LABEL_18:
    WTF::fastFree((v4 - 16), v9);
    return v12;
  }

  return result;
}

uint64_t WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::WeakPtr<Inspector::InspectorTarget,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::WeakPtr<Inspector::InspectorTarget,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::WeakPtr<Inspector::InspectorTarget,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::WeakPtr<Inspector::InspectorTarget,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::reinsert(uint64_t a1, WTF::StringImpl **a2)
{
  v4 = *a2;
  if (a1)
  {
    v5 = *(a1 - 8);
  }

  else
  {
    v5 = 0;
  }

  v6 = *(v4 + 4);
  if (v6 < 0x100)
  {
    v7 = WTF::StringImpl::hashSlowCase(v4);
  }

  else
  {
    v7 = v6 >> 8;
  }

  v8 = 0;
  do
  {
    v9 = v7 & v5;
    v7 = ++v8 + v9;
  }

  while (*(a1 + 16 * v9));
  v10 = a1 + 16 * v9;
  v11 = *(v10 + 8);
  *(v10 + 8) = 0;
  if (v11 && atomic_fetch_add(v11, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v11);
    WTF::fastFree(v11, a2);
  }

  v12 = *v10;
  *v10 = 0;
  if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v12, a2);
  }

  v13 = *a2;
  *a2 = 0;
  *v10 = v13;
  v14 = a2[1];
  a2[1] = 0;
  *(v10 + 8) = v14;
  return v10;
}

const WTF::StringImpl *WTF::HashMap<WTF::String,WTF::WeakPtr<Inspector::InspectorTarget,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::WeakPtr<Inspector::InspectorTarget,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WTF::String,WTF::WeakPtr<Inspector::InspectorTarget,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::WeakPtr<Inspector::InspectorTarget,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::String>>,WTF::String>@<X0>(uint64_t *a1@<X0>, const WTF::StringImpl **a2@<X1>, const WTF::StringImpl *a3@<X2>, atomic_uint **a4@<X8>)
{
  result = *a2;
  if (*a2 == -1 || !result)
  {
    __break(0xC471u);
    JUMPOUT(0x19E2F82C0);
  }

  v7 = *a1;
  if (*a1)
  {
    v9 = *(v7 - 8);
    v10 = *(result + 4);
    if (v10 < 0x100)
    {
      v11 = WTF::StringImpl::hashSlowCase(result);
    }

    else
    {
      v11 = v10 >> 8;
    }

    for (i = 0; ; v11 = i + v13)
    {
      v13 = v11 & v9;
      result = *(v7 + 16 * v13);
      if (result != -1)
      {
        if (!result)
        {
          goto LABEL_11;
        }

        result = WTF::equal(result, *a2, a3);
        if (result)
        {
          break;
        }
      }

      ++i;
    }

    v14 = *(v7 + 16 * v13 + 8);
    if (v14)
    {
      atomic_fetch_add(v14, 1u);
    }
  }

  else
  {
LABEL_11:
    v14 = 0;
  }

  *a4 = v14;
  return result;
}

uint64_t WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::UserMediaRequestIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::UserMediaRequestIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebCore::UserMediaRequest,WTF::RawPtrTraits<WebCore::UserMediaRequest>,WTF::DefaultRefDerefTraits<WebCore::UserMediaRequest>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::UserMediaRequestIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebCore::UserMediaRequest,WTF::RawPtrTraits<WebCore::UserMediaRequest>,WTF::DefaultRefDerefTraits<WebCore::UserMediaRequest>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::UserMediaRequestIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::UserMediaRequestIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebCore::UserMediaRequest,WTF::RawPtrTraits<WebCore::UserMediaRequest>,WTF::DefaultRefDerefTraits<WebCore::UserMediaRequest>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::UserMediaRequestIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::UserMediaRequestIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebCore::UserMediaRequest,WTF::RawPtrTraits<WebCore::UserMediaRequest>,WTF::DefaultRefDerefTraits<WebCore::UserMediaRequest>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::UserMediaRequestIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::UserMediaRequestIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebCore::UserMediaRequest,WTF::RawPtrTraits<WebCore::UserMediaRequest>,WTF::DefaultRefDerefTraits<WebCore::UserMediaRequest>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::UserMediaRequestIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::UserMediaRequestIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebCore::UserMediaRequest,WTF::RawPtrTraits<WebCore::UserMediaRequest>,WTF::DefaultRefDerefTraits<WebCore::UserMediaRequest>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::UserMediaRequestIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<WebCore::UserMediaRequestIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(uint64_t *a1, uint64_t *a2)
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
    JUMPOUT(0x19E2F83B4);
  }

  v4 = *(v2 - 8);
  v5 = (v3 + ~(v3 << 32)) ^ ((v3 + ~(v3 << 32)) >> 22);
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

void *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebPageProxy::EnumerateMediaDevicesForFrame,WTF::CompletionHandler<void ()(WTF::Vector<WebCore::CaptureDeviceWithCapabilities,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WebCore::MediaDeviceHashSalts &&)>>(WTF::CompletionHandler<void ()(WTF::Vector<WebCore::CaptureDeviceWithCapabilities,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WebCore::MediaDeviceHashSalts &&)> &&,WTF::ThreadLikeAssertion)::{lambda(void ()(WTF::Vector<WebCore::CaptureDeviceWithCapabilities,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WebCore::MediaDeviceHashSalts &&),IPC::Connection*)#1},void,void ()(WTF::Vector<WebCore::CaptureDeviceWithCapabilities,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WebCore::MediaDeviceHashSalts &&),IPC::Connection*>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F112C500;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebPageProxy::EnumerateMediaDevicesForFrame,WTF::CompletionHandler<void ()(WTF::Vector<WebCore::CaptureDeviceWithCapabilities,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WebCore::MediaDeviceHashSalts &&)>>(WTF::CompletionHandler<void ()(WTF::Vector<WebCore::CaptureDeviceWithCapabilities,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WebCore::MediaDeviceHashSalts &&)> &&,WTF::ThreadLikeAssertion)::{lambda(void ()(WTF::Vector<WebCore::CaptureDeviceWithCapabilities,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WebCore::MediaDeviceHashSalts &&),IPC::Connection*)#1},void,void ()(WTF::Vector<WebCore::CaptureDeviceWithCapabilities,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WebCore::MediaDeviceHashSalts &&),IPC::Connection*>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F112C500;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebPageProxy::EnumerateMediaDevicesForFrame,WTF::CompletionHandler<void ()(WTF::Vector<WebCore::CaptureDeviceWithCapabilities,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WebCore::MediaDeviceHashSalts &&)>>(WTF::CompletionHandler<void ()(WTF::Vector<WebCore::CaptureDeviceWithCapabilities,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WebCore::MediaDeviceHashSalts &&)> &&,WTF::ThreadLikeAssertion)::{lambda(void ()(WTF::Vector<WebCore::CaptureDeviceWithCapabilities,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WebCore::MediaDeviceHashSalts &&),IPC::Connection*)#1},void,void ()(WTF::Vector<WebCore::CaptureDeviceWithCapabilities,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WebCore::MediaDeviceHashSalts &&),IPC::Connection*>::call(uint64_t a1, _BYTE *a2, IPC::Decoder *a3, __n128 a4)
{
  if (a3 && (a2 = *a3) != 0)
  {
    v6 = *(a3 + 1);
    v7 = ((*(a3 + 2) + 7) & 0xFFFFFFFFFFFFFFF8);
    if (v6 < v7 - a2 || v6 - (v7 - a2) <= 7)
    {
      *a3 = 0;
      *(a3 + 1) = 0;
      v68 = *(a3 + 3);
      if (v68)
      {
        if (v6)
        {
          (*(*v68 + 16))(v68);
          a2 = *a3;
          v6 = *(a3 + 1);
          goto LABEL_92;
        }
      }

      else
      {
        v6 = 0;
      }

      a2 = 0;
LABEL_92:
      *a3 = 0;
      *(a3 + 1) = 0;
      v69 = *(a3 + 3);
      if (v69 && v6)
      {
        (*(*v69 + 16))(v69, a2);
      }

      goto LABEL_78;
    }

    *(a3 + 2) = v7 + 8;
    if (!v7)
    {
      goto LABEL_92;
    }

    v9 = *v7;
    v95 = 0uLL;
    if (v9 >= 0x11A7)
    {
      while (1)
      {
        IPC::Decoder::decode<WebCore::CaptureDeviceWithCapabilities>(v77, a3);
        v39 = v94;
        if (v94 == 1)
        {
          if (v95.n128_u32[3] == v95.n128_u32[2])
          {
            WTF::Vector<WebCore::CaptureDeviceWithCapabilities,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebCore::CaptureDeviceWithCapabilities>(&v95, v77);
          }

          else
          {
            v40 = v95.n128_u64[0] + 232 * v95.n128_u32[3];
            v41 = v77[0];
            v77[0] = 0;
            *v40 = v41;
            *(v40 + 8) = v77[1];
            v42 = v78;
            v78 = 0;
            *(v40 + 16) = v42;
            v43 = v79;
            v79 = 0;
            *(v40 + 24) = v43;
            *(v40 + 32) = v80;
            v44 = v81;
            v45 = v82;
            *(v40 + 72) = v83;
            *(v40 + 56) = v45;
            *(v40 + 40) = v44;
            v46 = __n[0];
            *(v40 + 88) = 0;
            *(v40 + 96) = 0;
            *(v40 + 100) = v46;
            if (v46)
            {
              v47 = WTF::fastMalloc(v46);
              *(v40 + 96) = v46;
              *(v40 + 88) = v47;
              memcpy(v47, __src, __n[0]);
            }

            v48 = *&__n[1];
            v49 = v86;
            *(v40 + 136) = v87;
            *(v40 + 120) = v49;
            *(v40 + 104) = v48;
            v50 = v88;
            if (v88)
            {
              atomic_fetch_add_explicit(v88, 2u, memory_order_relaxed);
            }

            *(v40 + 144) = v50;
            v51 = v89;
            if (v89)
            {
              atomic_fetch_add_explicit(v89, 2u, memory_order_relaxed);
            }

            *(v40 + 152) = v51;
            *(v40 + 160) = v90;
            v52 = v92[0];
            *(v40 + 176) = 0;
            *(v40 + 184) = 0;
            *(v40 + 188) = v52;
            if (v52)
            {
              v53 = WTF::fastMalloc(v52);
              *(v40 + 184) = v52;
              *(v40 + 176) = v53;
              memcpy(v53, v91, v92[0]);
            }

            v55 = *&v92[1];
            v54 = *v93;
            *(v40 + 222) = *&v93[14];
            *(v40 + 192) = v55;
            *(v40 + 208) = v54;
            ++v95.n128_u32[3];
          }
        }

        if (v94 == 1)
        {
          WebCore::RealtimeMediaSourceCapabilities::~RealtimeMediaSourceCapabilities(&v81, a2);
          v56 = v79;
          v79 = 0;
          if (v56 && atomic_fetch_add_explicit(v56, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v56, a2);
          }

          v57 = v78;
          v78 = 0;
          if (v57 && atomic_fetch_add_explicit(v57, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v57, a2);
          }

          v58 = v77[0];
          v77[0] = 0;
          if (v58 && atomic_fetch_add_explicit(v58, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v58, a2);
          }
        }

        if ((v39 & 1) == 0)
        {
          goto LABEL_77;
        }

        if (!--v9)
        {
          WTF::Vector<WebCore::CaptureDeviceWithCapabilities,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity(&v95, v95.n128_u32[3]);
          v29 = v95.n128_u64[0];
          *&v75 = v95.n128_u64[0];
          LODWORD(v9) = v95.n128_u32[2];
          v30 = v95.n128_u32[3];
          v95 = 0uLL;
          goto LABEL_42;
        }
      }
    }

    if (v9)
    {
      v95.n128_u32[2] = 232 * v9 / 0xE8u;
      v95.n128_u64[0] = WTF::fastMalloc((232 * v9));
      while (1)
      {
        IPC::Decoder::decode<WebCore::CaptureDeviceWithCapabilities>(v77, a3);
        v10 = v94;
        if (v94 == 1)
        {
          if (v95.n128_u32[3] == v95.n128_u32[2])
          {
            WTF::Vector<WebCore::CaptureDeviceWithCapabilities,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebCore::CaptureDeviceWithCapabilities>(&v95, v77);
          }

          else
          {
            v11 = v95.n128_u64[0] + 232 * v95.n128_u32[3];
            v12 = v77[0];
            v77[0] = 0;
            *v11 = v12;
            *(v11 + 8) = v77[1];
            v13 = v78;
            v78 = 0;
            *(v11 + 16) = v13;
            v14 = v79;
            v79 = 0;
            *(v11 + 24) = v14;
            *(v11 + 32) = v80;
            v15 = v81;
            v16 = v82;
            *(v11 + 72) = v83;
            *(v11 + 56) = v16;
            *(v11 + 40) = v15;
            v17 = __n[0];
            *(v11 + 88) = 0;
            *(v11 + 96) = 0;
            *(v11 + 100) = v17;
            if (v17)
            {
              v18 = WTF::fastMalloc(v17);
              *(v11 + 96) = v17;
              *(v11 + 88) = v18;
              memcpy(v18, __src, __n[0]);
            }

            v19 = *&__n[1];
            v20 = v86;
            *(v11 + 136) = v87;
            *(v11 + 120) = v20;
            *(v11 + 104) = v19;
            v21 = v88;
            if (v88)
            {
              atomic_fetch_add_explicit(v88, 2u, memory_order_relaxed);
            }

            *(v11 + 144) = v21;
            v22 = v89;
            if (v89)
            {
              atomic_fetch_add_explicit(v89, 2u, memory_order_relaxed);
            }

            *(v11 + 152) = v22;
            *(v11 + 160) = v90;
            v23 = v92[0];
            *(v11 + 176) = 0;
            *(v11 + 184) = 0;
            *(v11 + 188) = v23;
            if (v23)
            {
              v24 = WTF::fastMalloc(v23);
              *(v11 + 184) = v23;
              *(v11 + 176) = v24;
              memcpy(v24, v91, v92[0]);
            }

            v25 = *&v92[1];
            a4 = *v93;
            *(v11 + 222) = *&v93[14];
            *(v11 + 192) = v25;
            *(v11 + 208) = a4;
            ++v95.n128_u32[3];
          }
        }

        if (v94 == 1)
        {
          WebCore::RealtimeMediaSourceCapabilities::~RealtimeMediaSourceCapabilities(&v81, a2);
          v26 = v79;
          v79 = 0;
          if (v26 && atomic_fetch_add_explicit(v26, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v26, a2);
          }

          v27 = v78;
          v78 = 0;
          if (v27 && atomic_fetch_add_explicit(v27, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v27, a2);
          }

          v28 = v77[0];
          v77[0] = 0;
          if (v28 && atomic_fetch_add_explicit(v28, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v28, a2);
          }
        }

        if ((v10 & 1) == 0)
        {
          break;
        }

        if (!--v9)
        {
          v29 = v95.n128_u64[0];
          LODWORD(v9) = v95.n128_u32[2];
          v30 = v95.n128_u32[3];
          goto LABEL_41;
        }
      }

LABEL_77:
      WTF::Vector<WebCore::CaptureDeviceWithCapabilities,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v95, a2);
LABEL_78:
      v59 = *a3;
      v60 = *(a3 + 1);
      *a3 = 0;
      *(a3 + 1) = 0;
      v61 = *(a3 + 3);
      if (v61 && v60)
      {
        (*(*v61 + 16))(v61, v59);
      }

LABEL_79:
      v62 = *a3;
      v63 = *(a3 + 1);
      *a3 = 0;
      *(a3 + 1) = 0;
      v64 = *(a3 + 3);
      if (v64)
      {
        if (v63)
        {
          (*(*v64 + 16))(v64, v62);
        }
      }

      return IPC::Connection::cancelReply<Messages::WebPageProxy::EnumerateMediaDevicesForFrame,WTF::CompletionHandler<void ()(WTF::Vector<WebCore::CaptureDeviceWithCapabilities,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WebCore::MediaDeviceHashSalts &&)>>((a1 + 8), v62, a4);
    }

    v30 = 0;
    v29 = 0;
LABEL_41:
    a4.n128_u64[0] = 0;
    v95 = a4;
    *&v75 = v29;
LABEL_42:
    *(&v75 + 1) = __PAIR64__(v30, v9);
    v76 = 1;
    WTF::Vector<WebCore::CaptureDeviceWithCapabilities,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v95, a2);
    IPC::ArgumentCoder<WebCore::MediaDeviceHashSalts,void>::decode(a3, v77);
    if ((v78 & 1) == 0)
    {
      v65 = *a3;
      v66 = *(a3 + 1);
      *a3 = 0;
      *(a3 + 1) = 0;
      v67 = *(a3 + 3);
      if (v67 && v66)
      {
        (*(*v67 + 16))(v67, v65);
      }

      WTF::Vector<WebCore::CaptureDeviceWithCapabilities,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v75, v65);
      goto LABEL_79;
    }

    *&v34 = 0;
    v75 = v34;
    v70 = v29;
    v71 = v9;
    v72 = v30;
    *v73 = *v77;
    v74 = 1;
    WTF::Vector<WebCore::CaptureDeviceWithCapabilities,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v75, v33);
    v35 = *(a1 + 8);
    *(a1 + 8) = 0;
    (*(*v35 + 16))(v35, &v70, v73);
    result = (*(*v35 + 8))(v35);
    if (v74)
    {
      v37 = v73[1];
      v73[1] = 0;
      if (v37 && atomic_fetch_add_explicit(v37, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v37, v36);
      }

      v38 = v73[0];
      v73[0] = 0;
      if (v38 && atomic_fetch_add_explicit(v38, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v38, v36);
      }

      return WTF::Vector<WebCore::CaptureDeviceWithCapabilities,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v70, v36);
    }
  }

  else
  {
    v31 = (a1 + 8);

    return IPC::Connection::cancelReply<Messages::WebPageProxy::EnumerateMediaDevicesForFrame,WTF::CompletionHandler<void ()(WTF::Vector<WebCore::CaptureDeviceWithCapabilities,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WebCore::MediaDeviceHashSalts &&)>>(v31, a2, a4);
  }

  return result;
}

uint64_t IPC::Connection::cancelReply<Messages::WebPageProxy::EnumerateMediaDevicesForFrame,WTF::CompletionHandler<void ()(WTF::Vector<WebCore::CaptureDeviceWithCapabilities,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WebCore::MediaDeviceHashSalts &&)>>(uint64_t *a1, void *a2, __n128 a3)
{
  a3.n128_u64[0] = 0;
  v12 = a3;
  v9 = 0;
  v10 = 0;
  memset(v11, 0, sizeof(v11));
  WTF::Vector<WebCore::CaptureDeviceWithCapabilities,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v12, a2);
  v4 = *a1;
  *a1 = 0;
  (*(*v4 + 16))(v4, &v9, &v11[4]);
  (*(*v4 + 8))(v4);
  v6 = *&v11[12];
  *&v11[12] = 0;
  if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v6, v5);
  }

  v7 = *&v11[4];
  *&v11[4] = 0;
  if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v7, v5);
  }

  return WTF::Vector<WebCore::CaptureDeviceWithCapabilities,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v9, v5);
}

void IPC::Decoder::decode<WebCore::CaptureDeviceWithCapabilities>(uint64_t a1, IPC::Decoder *a2)
{
  IPC::ArgumentCoder<WebCore::CaptureDeviceWithCapabilities,void>::decode(a2, a1);
  if ((*(a1 + 232) & 1) == 0)
  {
    v4 = *(a2 + 1);
    *a2 = 0;
    *(a2 + 1) = 0;
    v5 = *(a2 + 3);
    if (v5 && v4 != 0)
    {
      v7 = *(*v5 + 16);

      v7();
    }
  }
}

uint64_t *WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::UserMediaClient::DeviceChangeObserverTokenType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::UserMediaClient::DeviceChangeObserverTokenType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Function<void ()(void)>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::UserMediaClient::DeviceChangeObserverTokenType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Function<void ()(void)>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::UserMediaClient::DeviceChangeObserverTokenType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::UserMediaClient::DeviceChangeObserverTokenType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Function<void ()(void)>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::UserMediaClient::DeviceChangeObserverTokenType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::UserMediaClient::DeviceChangeObserverTokenType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Function<void ()(void)>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::UserMediaClient::DeviceChangeObserverTokenType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand(uint64_t *a1, uint64_t *a2)
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

  return WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::UserMediaClient::DeviceChangeObserverTokenType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::UserMediaClient::DeviceChangeObserverTokenType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Function<void ()(void)>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::UserMediaClient::DeviceChangeObserverTokenType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Function<void ()(void)>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::UserMediaClient::DeviceChangeObserverTokenType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::UserMediaClient::DeviceChangeObserverTokenType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Function<void ()(void)>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::UserMediaClient::DeviceChangeObserverTokenType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::UserMediaClient::DeviceChangeObserverTokenType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Function<void ()(void)>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::UserMediaClient::DeviceChangeObserverTokenType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash(a1, v5, a2);
}

uint64_t *WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::UserMediaClient::DeviceChangeObserverTokenType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::UserMediaClient::DeviceChangeObserverTokenType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Function<void ()(void)>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::UserMediaClient::DeviceChangeObserverTokenType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Function<void ()(void)>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::UserMediaClient::DeviceChangeObserverTokenType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::UserMediaClient::DeviceChangeObserverTokenType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Function<void ()(void)>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::UserMediaClient::DeviceChangeObserverTokenType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::UserMediaClient::DeviceChangeObserverTokenType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Function<void ()(void)>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::UserMediaClient::DeviceChangeObserverTokenType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash(uint64_t *a1, unsigned int a2, uint64_t *a3)
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

  v9 = WTF::fastMalloc((16 * a2 + 16));
  v11 = v9;
  v12 = v9 + 16;
  if (a2)
  {
    bzero((v9 + 16), 16 * a2);
  }

  *a1 = v12;
  v11[2] = a2 - 1;
  v11[3] = a2;
  *v11 = 0;
  v11[1] = v8;
  if (v7)
  {
    v13 = 0;
    v14 = 0;
    v15 = v7;
    do
    {
      v16 = (v6 + 16 * v13);
      v17 = *v16;
      if (*v16 != -1)
      {
        if (v17)
        {
          v19 = *a1;
          if (*a1)
          {
            v20 = *(v19 - 8);
          }

          else
          {
            v20 = 0;
          }

          v21 = (v17 + ~(v17 << 32)) ^ ((v17 + ~(v17 << 32)) >> 22);
          v22 = 9 * ((v21 + ~(v21 << 13)) ^ ((v21 + ~(v21 << 13)) >> 8));
          v23 = (v22 ^ (v22 >> 15)) + ~((v22 ^ (v22 >> 15)) << 27);
          v24 = v20 & ((v23 >> 31) ^ v23);
          v25 = 1;
          do
          {
            v26 = v24;
            v27 = *(v19 + 16 * v24);
            v24 = (v24 + v25++) & v20;
          }

          while (v27);
          v28 = (v19 + 16 * v26);
          v29 = v28[1];
          v28[1] = 0;
          if (v29)
          {
            (*(*v29 + 8))(v29);
          }

          *v28 = *v16;
          v30 = v16[1];
          v16[1] = 0;
          v28[1] = v30;
          v31 = v16[1];
          v16[1] = 0;
          if (v31)
          {
            (*(*v31 + 8))(v31);
          }

          if (v16 == a3)
          {
            v14 = v28;
          }
        }

        else
        {
          v18 = v16[1];
          v16[1] = 0;
          if (v18)
          {
            (*(*v18 + 8))(v18);
          }
        }
      }

      ++v13;
    }

    while (v13 != v15);
  }

  else
  {
    v14 = 0;
    result = 0;
    if (!v6)
    {
      return result;
    }
  }

  WTF::fastFree((v6 - 16), v10);
  return v14;
}

uint64_t *WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::UserMediaClient::DeviceChangeObserverTokenType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::UserMediaClient::DeviceChangeObserverTokenType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Function<void ()(void)>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::UserMediaClient::DeviceChangeObserverTokenType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Function<void ()(void)>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::UserMediaClient::DeviceChangeObserverTokenType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::UserMediaClient::DeviceChangeObserverTokenType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Function<void ()(void)>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::UserMediaClient::DeviceChangeObserverTokenType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::UserMediaClient::DeviceChangeObserverTokenType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Function<void ()(void)>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::UserMediaClient::DeviceChangeObserverTokenType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::remove(uint64_t *a1, void *a2)
{
  result = a2[1];
  *a2 = -1;
  a2[1] = 0;
  if (result)
  {
    result = (*(*result + 8))(result);
  }

  v4 = *a1;
  v5 = vadd_s32(*(*a1 - 16), 0xFFFFFFFF00000001);
  *(v4 - 16) = v5;
  v6 = *(v4 - 4);
  if (6 * v5.i32[1] < v6 && v6 >= 9)
  {

    return WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::UserMediaClient::DeviceChangeObserverTokenType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::UserMediaClient::DeviceChangeObserverTokenType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Function<void ()(void)>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::UserMediaClient::DeviceChangeObserverTokenType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Function<void ()(void)>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::UserMediaClient::DeviceChangeObserverTokenType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::UserMediaClient::DeviceChangeObserverTokenType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Function<void ()(void)>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::UserMediaClient::DeviceChangeObserverTokenType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::UserMediaClient::DeviceChangeObserverTokenType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Function<void ()(void)>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::UserMediaClient::DeviceChangeObserverTokenType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash(a1, v6 >> 1, 0);
  }

  return result;
}

uint64_t WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::UserMediaClient::DeviceChangeObserverTokenType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::UserMediaClient::DeviceChangeObserverTokenType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Function<void ()(void)>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::UserMediaClient::DeviceChangeObserverTokenType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Function<void ()(void)>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::UserMediaClient::DeviceChangeObserverTokenType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::UserMediaClient::DeviceChangeObserverTokenType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Function<void ()(void)>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::UserMediaClient::DeviceChangeObserverTokenType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::UserMediaClient::DeviceChangeObserverTokenType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Function<void ()(void)>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::UserMediaClient::DeviceChangeObserverTokenType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::UserMediaClient::DeviceChangeObserverTokenType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Function<void ()(void)>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::UserMediaClient::DeviceChangeObserverTokenType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::UserMediaClient::DeviceChangeObserverTokenType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Function<void ()(void)>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::UserMediaClient::DeviceChangeObserverTokenType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<WebCore::UserMediaClient::DeviceChangeObserverTokenType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(uint64_t *a1, uint64_t *a2)
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
    JUMPOUT(0x19E2F9120);
  }

  v4 = *(v2 - 8);
  v5 = (v3 + ~(v3 << 32)) ^ ((v3 + ~(v3 << 32)) >> 22);
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

unsigned int *WebKit::WebModelPlayerProvider::create@<X0>(WebKit::WebModelPlayerProvider *this@<X0>, WebKit::WebPage *a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = WebKit::WebModelPlayerProvider::operator new(0x20, a2);
  *(v5 + 16) = 1;
  *v5 = &unk_1F112C528;
  *(v5 + 8) = 0;
  result = WTF::WeakPtrFactory<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(this + 6, this + 16);
  v7 = *(this + 3);
  atomic_fetch_add(v7, 1u);
  *(v5 + 24) = v7;
  *a3 = v5;
  return result;
}

uint64_t WebKit::WebModelPlayerProvider::operator new(WebKit::WebModelPlayerProvider *this, void *a2)
{
  if (this == 32 && WebKit::WebModelPlayerProvider::s_heapRef)
  {
    return bmalloc::api::tzoneAllocateNonCompact(WebKit::WebModelPlayerProvider::s_heapRef, a2);
  }

  else
  {
    return WebKit::WebModelPlayerProvider::operatorNewSlow(this);
  }
}

void WebKit::WebModelPlayerProvider::~WebModelPlayerProvider(WebKit::WebModelPlayerProvider *this, void *a2)
{
  v3 = *(this + 3);
  *(this + 3) = 0;
  if (v3 && atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3);
    WTF::fastFree(v3, a2);
  }

  MEMORY[0x1EEE574B8](this);
}

{
  WebKit::WebModelPlayerProvider::~WebModelPlayerProvider(this, a2);

  bmalloc::api::tzoneFree(v2, v3);
}

void WebKit::WebModelPlayerProvider::createModelPlayer(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = *(*(a1 + 24) + 8);
  if (v4)
  {
    CFRetain(*(v4 - 8));
    WebKit::ARKitInlinePreviewModelPlayerIOS::create(v4 - 16, a2, a3);
    v6 = *(v4 - 8);

    CFRelease(v6);
  }

  else
  {
    __break(0xC471u);
  }
}

uint64_t WebKit::NetworkProcessConnection::NetworkProcessConnection(uint64_t a1, uint64_t a2, char a3)
{
  *(a1 + 16) = 0x100000000;
  *a1 = &unk_1F112C558;
  *(a1 + 8) = 0;
  ClientConnection = IPC::Connection::createClientConnection(a2, (a1 + 24));
  *(a1 + 32) = 0;
  *(a1 + 64) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 72) = 0;
  *(a1 + 96) = a3;
  v6 = *(a1 + 24);
  v7 = WTF::RunLoop::currentSingleton(ClientConnection);
  v8 = IPC::Connection::open(v6, a1, v7);
  v9 = WebCore::WebRTCProvider::webRTCAvailable(v8);
  if (v9)
  {
    v11 = WebKit::WebProcess::singleton(v9, v10);
    WebKit::WebProcess::protectedLibWebRTCNetwork(v11, v12, &v21);
    v13 = v21;
    v14 = *(a1 + 24);
    while (1)
    {
      v15 = *v14;
      if ((*v14 & 1) == 0)
      {
        break;
      }

      v19 = *v14;
      atomic_compare_exchange_strong_explicit(v14, &v19, v15 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v19 == v15)
      {
        goto LABEL_5;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v14);
LABEL_5:
    v20 = v14;
    WebKit::LibWebRTCNetwork::setConnection(v13, &v20);
    v16 = v20;
    v20 = 0;
    if (v16)
    {
      WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v16);
    }

    v17 = v21;
    v21 = 0;
    if (v17)
    {
      WebKit::LibWebRTCNetwork::deref(v17);
    }
  }

  return a1;
}

void WebKit::NetworkProcessConnection::~NetworkProcessConnection(WebKit::NetworkProcessConnection *this)
{
  IPC::Connection::invalidate(*(this + 3));
  v3 = *(this + 11);
  *(this + 11) = 0;
  if (v3)
  {
    if (v3[2] == 1)
    {
      (*(*v3 + 8))(v3);
    }

    else
    {
      --v3[2];
    }
  }

  v4 = *(this + 10);
  *(this + 10) = 0;
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

  v5 = *(this + 9);
  *(this + 9) = 0;
  if (v5)
  {
    WTF::RefCounted<WebKit::WebIDBConnectionToServer>::deref((v5 + 24), v2);
  }

  v6 = *(this + 3);
  *(this + 3) = 0;
  if (v6)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v6);
  }

  *this = &unk_1F10EA5E0;
  WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::~WeakPtrFactory(this + 1, v2);
  if (*(this + 5) != 1)
  {
    __break(0xC471u);
  }
}

{
  WebKit::NetworkProcessConnection::~NetworkProcessConnection(this);
  if (atomic_load((v1 + 16)))
  {
    *(v1 + 96) = 0;
    *(v1 + 64) = 0u;
    *(v1 + 80) = 0u;
    *(v1 + 32) = 0u;
    *(v1 + 48) = 0u;
    *v1 = 0u;
    *(v1 + 16) = 0u;
  }

  else
  {

    WTF::fastFree(v1, v2);
  }
}

uint64_t WebKit::NetworkProcessConnection::dispatchMessage(WebKit::NetworkProcessConnection *this, IPC::Connection *a2, IPC::Decoder *a3)
{
  v5 = *(a3 + 25);
  if (v5 >= 0x107F)
  {
    v5 = 4223;
  }

  v6 = LOBYTE((&IPC::Detail::messageDescriptions)[3 * v5 + 2]);
  if (v6 == 197)
  {
    {
      v7 = WebKit::WebProcess::singleton(void)::process;
    }

    else
    {
      v65 = WebKit::WebProcess::operator new(0x370, a2);
      v7 = WebKit::WebProcess::WebProcess(v65);
      WebKit::WebProcess::singleton(void)::process = v7;
    }

    v8 = *(v7 + 43);
    if (*(*(v8 + 8) + 8))
    {
      v9 = *(a3 + 7);
      if ((v9 - 1) >= 0xFFFFFFFFFFFFFFFELL)
      {
        __break(0xC471u);
        JUMPOUT(0x19E2F9D48);
      }

      v10 = *(v8 + 72);
      if (!v10)
      {
        return 1;
      }

      v11 = *(v10 - 8);
      v12 = (v9 + ~(v9 << 32)) ^ ((v9 + ~(v9 << 32)) >> 22);
      v13 = 9 * ((v12 + ~(v12 << 13)) ^ ((v12 + ~(v12 << 13)) >> 8));
      v14 = (v13 ^ (v13 >> 15)) + ~((v13 ^ (v13 >> 15)) << 27);
      v15 = v11 & ((v14 >> 31) ^ v14);
      v16 = *(v10 + 16 * v15);
      if (v16 != v9)
      {
        v20 = 1;
        while (v16)
        {
          v15 = (v15 + v20) & v11;
          v16 = *(v10 + 16 * v15);
          ++v20;
          if (v16 == v9)
          {
            goto LABEL_10;
          }
        }

        return 1;
      }

LABEL_10:
      v17 = *(v10 + 16 * v15 + 8);
      if (!v17)
      {
        return 1;
      }

      ++*(v17 + 2);
      WebKit::WebResourceLoader::didReceiveMessage(v17, a2, a3);
      v18 = *(v17 + 2) - 1;
      if (*(v17 + 2) != 1)
      {
LABEL_12:
        *(v17 + 2) = v18;
        return 1;
      }

LABEL_76:
      (*(*v17 + 8))(v17);
      return 1;
    }

LABEL_102:
    __break(0xC471u);
    JUMPOUT(0x19E2F9D28);
  }

  v21 = this;
  if (v6 <= 183)
  {
    switch(v6)
    {
      case 160:
        v39 = WebKit::WebProcess::singleton(this, a2);
        WebKit::WebBroadcastChannelRegistry::didReceiveMessage(*(v39 + 53), a2, a3);
        return 1;
      case 146:
        v41 = WebKit::WebProcess::singleton(this, a2);
        v42 = *(a3 + 7);
        if ((v42 - 1) >= 0xFFFFFFFFFFFFFFFELL)
        {
          __break(0xC471u);
          JUMPOUT(0x19E2F9D88);
        }

        WebKit::WebProcess::storageAreaMap(v41, v42, buf);
        v44 = *buf;
        if (!*buf)
        {
          return 1;
        }

        if (*(*buf + 8))
        {
          WebKit::StorageAreaMap::didReceiveMessage(*(*buf + 8), a2, a3);
          v44 = *buf;
          *buf = 0;
          if (!v44)
          {
            return 1;
          }
        }

        else
        {
          *buf = 0;
        }

        if (atomic_fetch_add(v44, 0xFFFFFFFF) == 1)
        {
          atomic_store(1u, v44);
          WTF::fastFree(v44, v43);
        }

        return 1;
      case 168:
        v45 = WebKit::WebProcess::singleton(this, a2);
        WebKit::WebProcess::protectedFileSystemStorageConnection(v45, buf);
        WebKit::WebFileSystemStorageConnection::didReceiveMessage(*buf, a2, a3);
        v46 = *buf;
        *buf = 0;
        if (v46 && atomic_fetch_add(v46 + 2, 0xFFFFFFFF) == 1)
        {
          atomic_store(1u, v46 + 2);
          (*(*v46 + 8))(v46);
        }

        return 1;
    }
  }

  else
  {
    switch(v6)
    {
      case 184:
        v29 = WebKit::WebProcess::singleton(this, a2);
        if ((*(a3 + 7) - 1) >= 0xFFFFFFFFFFFFFFFELL)
        {
          __break(0xC471u);
          JUMPOUT(0x19E2F9D68);
        }

        *buf = *(a3 + 7);
        v30 = WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::WebPage,WTF::RawPtrTraits<WebKit::WebPage>,WTF::DefaultRefDerefTraits<WebKit::WebPage>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RefPtr<WebKit::WebPage,WTF::RawPtrTraits<WebKit::WebPage>,WTF::DefaultRefDerefTraits<WebKit::WebPage>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::WebPage,WTF::RawPtrTraits<WebKit::WebPage>,WTF::DefaultRefDerefTraits<WebKit::WebPage>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RefPtr<WebKit::WebPage,WTF::RawPtrTraits<WebKit::WebPage>,WTF::DefaultRefDerefTraits<WebKit::WebPage>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(v29 + 17, buf);
        if (v30)
        {
          v31 = v30;
          CFRetain(*(v30 + 8));
          WebKit::WebPage::didReceiveMessage(v31, a2, a3);
          CFRelease(v31[1]);
        }

        return 1;
      case 208:
        v40 = WebKit::WebProcess::singleton(this, a2);
        WebKit::WebSocketChannelManager::didReceiveMessage((v40 + 440), a2, a3);
        return 1;
      case 210:
        v22 = WebKit::WebProcess::singleton(this, a2);
        if (*(v22 + 820))
        {
          v23 = WebKit::WebProcess::singleton(v22, a2);
          v24 = *(a3 + 7);
          if ((v24 - 1) >= 0xFFFFFFFFFFFFFFFELL)
          {
            __break(0xC471u);
            JUMPOUT(0x19E2F9DA8);
          }

          WebKit::WebProcess::webTransportSession(v23, v24, buf);
          if (*buf)
          {
            WebKit::WebTransportSession::didReceiveMessage(*buf, a2, a3);
            v25 = *buf;
            *buf = 0;
            if (v25)
            {
              WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::WebTransportSession,(WTF::DestructionThread)2>::deref(v25 + 4);
            }
          }

          return 1;
        }

        v53 = *(a3 + 25);
        if (v53 >= 0x107F)
        {
          v53 = 4223;
        }

        v6 = LOBYTE((&IPC::Detail::messageDescriptions)[3 * v53 + 2]);
        v21 = this;
        break;
    }
  }

  if (v6 == 198)
  {
    v17 = WebKit::NetworkProcessConnection::serviceWorkerConnection(v21);
    ++*(v17 + 2);
    WebKit::WebSWClientConnection::didReceiveMessage(v17, a2, a3);
    v18 = *(v17 + 2) - 1;
    if (*(v17 + 2) != 1)
    {
      goto LABEL_12;
    }

    goto LABEL_76;
  }

  result = 0;
  if (v6 > 195)
  {
    if (v6 > 198)
    {
      switch(v6)
      {
        case 199:
          v49 = WebCore::SWContextManager::singleton(0);
          v50 = WebCore::SWContextManager::connection(v49);
          if (!v50)
          {
            return 1;
          }

          v17 = v50;
          (**v50)(v50);
          if (((*(*v17 + 216))(v17) & 1) == 0)
          {
            __break(0xC471u);
            JUMPOUT(0x19E2F9DE8);
          }

          WebKit::WebSWContextManagerConnection::didReceiveMessage(v17, a2, a3, v51, v52);
          goto LABEL_76;
        case 205:
          v17 = WebKit::NetworkProcessConnection::sharedWorkerConnection(v21);
          ++*(v17 + 2);
          WebKit::WebSharedWorkerObjectConnection::didReceiveMessage(v17, a2, a3);
          v18 = *(v17 + 2) - 1;
          if (*(v17 + 2) != 1)
          {
            goto LABEL_12;
          }

          goto LABEL_76;
        case 204:
          v56 = WebCore::SharedWorkerContextManager::singleton(0);
          v57 = WebCore::SharedWorkerContextManager::connection(v56);
          if (!v57)
          {
            return 1;
          }

          v17 = v57;
          (**v57)(v57);
          if (((*(*v17 + 56))(v17) & 1) == 0)
          {
            __break(0xC471u);
            JUMPOUT(0x19E2F9E08);
          }

          WebKit::WebSharedWorkerContextManagerConnection::didReceiveMessage(v17, a2, a3, v58, v59);
          goto LABEL_76;
      }

      return result;
    }

    if (v6 != 196)
    {
      return result;
    }

    v32 = WebKit::WebProcess::singleton(0, a2);
    v34 = WebKit::WebProcess::libWebRTCNetwork(v32, v33);
    WebKit::LibWebRTCNetwork::ref(v34);
    if (*(v34 + 224) == 1)
    {
      v35 = *(a3 + 7);
      if ((v35 - 1) >= 0xFFFFFFFFFFFFFFFELL)
      {
        __break(0xC471u);
        JUMPOUT(0x19E2F9DC8);
      }

      WebKit::WebRTCResolver::create((v34 + 32), v35, buf);
      WebKit::WebRTCResolver::didReceiveMessage(*buf, a2, a3, v36, v37);
      v38 = *buf;
      *buf = 0;
      if (v38)
      {
        WTF::RefCounted<WebKit::WebRTCResolver>::deref(v38);
      }

      goto LABEL_61;
    }

    v54 = qword_1ED641580;
    if (!os_log_type_enabled(qword_1ED641580, OS_LOG_TYPE_ERROR))
    {
LABEL_61:
      WebKit::LibWebRTCNetwork::deref(v34);
      return 1;
    }

    *buf = 0;
    v55 = "Received WebRTCResolver message while libWebRTCNetwork is not active";
LABEL_73:
    _os_log_error_impl(&dword_19D52D000, v54, OS_LOG_TYPE_ERROR, v55, buf, 2u);
    goto LABEL_61;
  }

  switch(v6)
  {
    case 195:
      v47 = WebKit::WebProcess::singleton(0, a2);
      v34 = WebKit::WebProcess::libWebRTCNetwork(v47, v48);
      WebKit::LibWebRTCNetwork::ref(v34);
      if (*(v34 + 224) == 1)
      {
        WebKit::WebRTCMonitor::ref(v34 + 104);
        WebKit::WebRTCMonitor::didReceiveMessage((v34 + 104), a2, a3);
        WebKit::WebRTCMonitor::ref(v34 + 104);
        goto LABEL_61;
      }

      v54 = qword_1ED641580;
      if (!os_log_type_enabled(qword_1ED641580, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_61;
      }

      *buf = 0;
      v55 = "Received WebRTCMonitor message while libWebRTCNetwork is not active";
      goto LABEL_73;
    case 175:
      v26 = *(v21 + 9);
      if (v26)
      {
        v27 = v26 + 6;
        ++v26[6];
        WebKit::WebIDBConnectionToServer::didReceiveMessage(v26, a2, a3);
        WTF::RefCounted<WebKit::WebIDBConnectionToServer>::deref(v27, v28);
      }

      return 1;
    case 188:
      v60 = WebKit::WebProcess::singleton(0, a2);
      if ((*(a3 + 7) - 1) < 0xFFFFFFFFFFFFFFFELL)
      {
        *buf = *(a3 + 7);
        v61 = WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::WebPage,WTF::RawPtrTraits<WebKit::WebPage>,WTF::DefaultRefDerefTraits<WebKit::WebPage>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RefPtr<WebKit::WebPage,WTF::RawPtrTraits<WebKit::WebPage>,WTF::DefaultRefDerefTraits<WebKit::WebPage>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::WebPage,WTF::RawPtrTraits<WebKit::WebPage>,WTF::DefaultRefDerefTraits<WebKit::WebPage>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RefPtr<WebKit::WebPage,WTF::RawPtrTraits<WebKit::WebPage>,WTF::DefaultRefDerefTraits<WebKit::WebPage>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(v60 + 17, buf);
        if (v61)
        {
          v62 = *(v61 + 56);
          if (v62)
          {
            v63 = *(*(v62 + 1160) + 16);
            if ((*(*v63 + 144))(v63))
            {
              v64 = v63;
            }

            else
            {
              v64 = 0;
            }
          }

          else
          {
            v64 = 0;
          }

          WebKit::WebPaymentCoordinator::didReceiveMessage(v64, a2, a3);
        }

        return 1;
      }

      goto LABEL_102;
  }

  return result;
}