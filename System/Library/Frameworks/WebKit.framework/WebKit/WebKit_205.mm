uint64_t WebKit::sendMessage(WebCore::DeprecatedGlobalSettings *a1, uint64_t a2)
{
  v4 = WebCore::DeprecatedGlobalSettings::builtInNotificationsEnabled(a1);
  if (!v4)
  {
    if (!a1)
    {
      v12 = WebCore::SWContextManager::singleton(v4);
      v13 = WebCore::SWContextManager::connection(v12);
      if (!v13)
      {
        goto LABEL_29;
      }

      v14 = v13;
      (**v13)(v13);
      (*v14)[23](v14);
      (*v14)[1](v14);
    }

    v15 = 1;
    goto LABEL_18;
  }

  {
    v6 = WebKit::WebProcess::singleton(void)::process;
  }

  else
  {
    v21 = WebKit::WebProcess::operator new(0x370, v5);
    v6 = WebKit::WebProcess::WebProcess(v21);
    WebKit::WebProcess::singleton(void)::process = v6;
  }

  v7 = *(WebKit::WebProcess::ensureNetworkProcessConnection(v6) + 24);
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
      goto LABEL_11;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v7);
LABEL_11:
  {
    v10 = WebKit::WebProcess::singleton(void)::process;
  }

  else
  {
    v22 = WebKit::WebProcess::operator new(0x370, v5);
    v10 = WebKit::WebProcess::WebProcess(v22);
    WebKit::WebProcess::singleton(void)::process = v10;
  }

  if (*(v10 + 712))
  {
    v11 = *(**a2 + 16);
  }

  else
  {
    do
    {
      __break(1u);
LABEL_29:
      v15 = 0;
LABEL_18:
      {
        v16 = WebKit::WebProcess::singleton(void)::process;
      }

      else
      {
        v23 = WebKit::WebProcess::operator new(0x370, v5);
        v16 = WebKit::WebProcess::WebProcess(v23);
        WebKit::WebProcess::singleton(void)::process = v16;
      }

      v7 = *(v16 + 5);
      while (1)
      {
        v17 = *v7;
        if ((*v7 & 1) == 0)
        {
          break;
        }

        v18 = *v7;
        atomic_compare_exchange_strong_explicit(v7, &v18, v17 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v18 == v17)
        {
          goto LABEL_25;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v7);
LABEL_25:
      ;
    }

    while ((v15 & 1) == 0);
    v11 = *(**a2 + 16);
  }

  v19 = v11();
  WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v7);
  return v19;
}

BOOL _ZN3WTF6Detail15CallableWrapperIZN6WebKitL23sendNotificationMessageIN8Messages33NotificationManagerMessageHandler39PageWasNotifiedOfNotificationPermissionEEEbOT_PNS2_7WebPageEEUlRS7_T0_E_bJRN3IPC10ConnectionEyEE4callESG_y(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = IPC::Encoder::operator new(0x238, a2);
  *v5 = 826;
  *(v5 + 2) = 0;
  *(v5 + 3) = 0;
  *(v5 + 1) = a3;
  *(v5 + 68) = 0;
  *(v5 + 70) = 0;
  *(v5 + 69) = 0;
  IPC::Encoder::encodeHeader(v5);
  v12 = v5;
  v7 = IPC::Connection::sendMessageImpl(a2, &v12, 0, 0);
  v8 = v12;
  v12 = 0;
  if (v8)
  {
    IPC::Encoder::~Encoder(v8, v6);
    bmalloc::api::tzoneFree(v10, v11);
  }

  return v7 == 0;
}

uint64_t WTF::Detail::CallableWrapper<BOOL WebKit::sendNotificationMessageWithAsyncReply<Messages::NotificationManagerMessageHandler::ShowNotification,WTF::CompletionHandler<void ()(void)>>(Messages::NotificationManagerMessageHandler::ShowNotification &&,WebKit::WebPage *,WTF::CompletionHandler<void ()(void)> &&)::{lambda(Messages::NotificationManagerMessageHandler::ShowNotification&,WebKit::WebPage *)#1},BOOL,IPC::Connection &,unsigned long long>::call(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v6 = *(a1 + 8);
  v5 = *(a1 + 16);
  v7 = *v5;
  *v5 = 0;
  v8 = WTF::fastMalloc(0x10);
  *v8 = &unk_1F112DFC0;
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
    *v12 = 829;
    *(v12 + 2) = 0;
    *(v12 + 3) = 0;
    *(v12 + 1) = a3;
    *(v12 + 68) = 0;
    *(v12 + 70) = 0;
    *(v12 + 69) = 0;
    IPC::Encoder::encodeHeader(v12);
    v22 = v12;
    IPC::ArgumentCoder<WebCore::NotificationData,void>::encode(v12, *v6);
    IPC::ArgumentCoder<WTF::RefPtr<WebCore::NotificationResources,WTF::RawPtrTraits<WebCore::NotificationResources>,WTF::DefaultRefDerefTraits<WebCore::NotificationResources>>,void>::encode<IPC::Encoder,WebCore::NotificationResources>(v12, *(v6 + 8));
    v21[0] = v9;
    v21[1] = IdentifierInternal;
    v14 = IPC::Connection::sendMessageWithAsyncReply(a2, &v22, v21, 0, 0);
    v15 = v21[0];
    v21[0] = 0;
    if (v15)
    {
      (*(*v15 + 8))(v15);
    }

    v16 = v22;
    v22 = 0;
    if (v16)
    {
      IPC::Encoder::~Encoder(v16, v13);
      bmalloc::api::tzoneFree(v19, v20);
    }

    if (v14)
    {
      v17 = 1;
    }

    else
    {
      v17 = IdentifierInternal == 0;
    }

    return !v17;
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NotificationManagerMessageHandler::ShowNotification,WTF::CompletionHandler<void ()(void)>>(WTF::CompletionHandler<void ()(void)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F112DFC0;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NotificationManagerMessageHandler::ShowNotification,WTF::CompletionHandler<void ()(void)>>(WTF::CompletionHandler<void ()(void)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F112DFC0;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NotificationManagerMessageHandler::ShowNotification,WTF::CompletionHandler<void ()(void)>>(WTF::CompletionHandler<void ()(void)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::call(uint64_t a1)
{
  v1 = *(a1 + 8);
  *(a1 + 8) = 0;
  (*(*v1 + 16))(v1);
  v2 = *(*v1 + 8);

  return v2(v1);
}

_OWORD *WTF::HashTable<WTF::UUID,WTF::KeyValuePair<WTF::UUID,WebCore::ProcessQualified<WTF::UUID>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::UUID,WebCore::ProcessQualified<WTF::UUID>>>,WTF::DefaultHash<WTF::UUID>,WTF::HashMap<WTF::UUID,WebCore::ProcessQualified<WTF::UUID>,WTF::DefaultHash<WTF::UUID>,WTF::HashTraits<WTF::UUID>,WTF::HashTraits<WebCore::ProcessQualified<WTF::UUID>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::UUID>,WTF::FastMalloc>::expand(uint64_t *a1, __int128 *a2)
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

  return WTF::HashTable<WTF::UUID,WTF::KeyValuePair<WTF::UUID,WebCore::ProcessQualified<WTF::UUID>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::UUID,WebCore::ProcessQualified<WTF::UUID>>>,WTF::DefaultHash<WTF::UUID>,WTF::HashMap<WTF::UUID,WebCore::ProcessQualified<WTF::UUID>,WTF::DefaultHash<WTF::UUID>,WTF::HashTraits<WTF::UUID>,WTF::HashTraits<WebCore::ProcessQualified<WTF::UUID>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::UUID>,WTF::FastMalloc>::rehash(a1, v5, a2);
}

_OWORD *WTF::HashTable<WTF::UUID,WTF::KeyValuePair<WTF::UUID,WebCore::ProcessQualified<WTF::UUID>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::UUID,WebCore::ProcessQualified<WTF::UUID>>>,WTF::DefaultHash<WTF::UUID>,WTF::HashMap<WTF::UUID,WebCore::ProcessQualified<WTF::UUID>,WTF::DefaultHash<WTF::UUID>,WTF::HashTraits<WTF::UUID>,WTF::HashTraits<WebCore::ProcessQualified<WTF::UUID>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::UUID>,WTF::FastMalloc>::rehash(uint64_t *a1, unsigned int a2, __int128 *a3)
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

  v9 = WTF::fastMalloc((48 * a2 + 16));
  if (a2)
  {
    v11 = a2;
    v12 = v9 + 4;
    do
    {
      *(v12 + 4) = 0;
      *v12 = 0uLL;
      *(v12 + 1) = 0uLL;
      v12 += 12;
      --v11;
    }

    while (v11);
  }

  *a1 = (v9 + 4);
  v9[2] = a2 - 1;
  v9[3] = a2;
  *v9 = 0;
  v9[1] = v8;
  if (v7)
  {
    v13 = 0;
    v14 = 0;
    do
    {
      v15 = (v6 + 48 * v13);
      v10 = *v15;
      v16 = *(v15 + 1);
      if (*v15 >= 2uLL)
      {
        v17 = *a1;
        if (*a1)
        {
          v18 = *(v17 - 8);
        }

        else
        {
          v18 = 0;
        }

        v25 = -1640531527;
        v26 = 0;
        v27 = 0;
        WTF::add(&v25, v10, v16);
        v19 = WTF::SuperFastHash::hash(&v25);
        v20 = 0;
        do
        {
          v21 = (v17 + 48 * (v19 & v18));
          v19 = ++v20 + (v19 & v18);
        }

        while (*v21 != 0);
        v22 = *v15;
        v23 = v15[2];
        v21[1] = v15[1];
        v21[2] = v23;
        *v21 = v22;
        if (v15 == a3)
        {
          v14 = v21;
        }
      }

      ++v13;
    }

    while (v13 != v7);
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

BOOL _ZN3WTF6Detail15CallableWrapperIZN6WebKitL23sendNotificationMessageIN8Messages33NotificationManagerMessageHandler18CancelNotificationEEEbOT_PNS2_7WebPageEEUlRS7_T0_E_bJRN3IPC10ConnectionEyEE4callESG_y(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 8);
  v6 = IPC::Encoder::operator new(0x238, a2);
  *v6 = 822;
  *(v6 + 2) = 0;
  *(v6 + 3) = 0;
  *(v6 + 1) = a3;
  *(v6 + 68) = 0;
  *(v6 + 70) = 0;
  *(v6 + 69) = 0;
  IPC::Encoder::encodeHeader(v6);
  v14 = v6;
  IPC::ArgumentCoder<WebCore::SecurityOriginData,void>::encode(v6, *v5);
  v7 = v5[1];
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v6, v7[1]);
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v6, *v7);
  v9 = IPC::Connection::sendMessageImpl(a2, &v14, 0, 0);
  v10 = v14;
  v14 = 0;
  if (v10)
  {
    IPC::Encoder::~Encoder(v10, v8);
    bmalloc::api::tzoneFree(v12, v13);
  }

  return v9 == 0;
}

uint64_t WTF::Detail::CallableWrapper<BOOL WebKit::sendNotificationMessageWithAsyncReply<Messages::NotificationManagerMessageHandler::RequestPermission,WTF::CompletionHandler<void ()(BOOL)>>(Messages::NotificationManagerMessageHandler::RequestPermission &&,WebKit::WebPage *,WTF::CompletionHandler<void ()(BOOL)> &&)::{lambda(Messages::NotificationManagerMessageHandler::RequestPermission&,WebKit::WebPage *)#1},BOOL,IPC::Connection &,unsigned long long>::call(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v6 = *(a1 + 8);
  v5 = *(a1 + 16);
  v7 = *v5;
  *v5 = 0;
  v8 = WTF::fastMalloc(0x10);
  *v8 = &unk_1F112E038;
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
    *v12 = 827;
    *(v12 + 2) = 0;
    *(v12 + 3) = 0;
    *(v12 + 1) = a3;
    *(v12 + 68) = 0;
    *(v12 + 70) = 0;
    *(v12 + 69) = 0;
    IPC::Encoder::encodeHeader(v12);
    v22 = v12;
    IPC::ArgumentCoder<WebCore::SecurityOriginData,void>::encode(v12, *v6);
    v21[0] = v9;
    v21[1] = IdentifierInternal;
    v14 = IPC::Connection::sendMessageWithAsyncReply(a2, &v22, v21, 0, 0);
    v15 = v21[0];
    v21[0] = 0;
    if (v15)
    {
      (*(*v15 + 8))(v15);
    }

    v16 = v22;
    v22 = 0;
    if (v16)
    {
      IPC::Encoder::~Encoder(v16, v13);
      bmalloc::api::tzoneFree(v19, v20);
    }

    if (v14)
    {
      v17 = 1;
    }

    else
    {
      v17 = IdentifierInternal == 0;
    }

    return !v17;
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NotificationManagerMessageHandler::RequestPermission,WTF::CompletionHandler<void ()(BOOL)>>(WTF::CompletionHandler<void ()(BOOL)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F112E038;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NotificationManagerMessageHandler::RequestPermission,WTF::CompletionHandler<void ()(BOOL)>>(WTF::CompletionHandler<void ()(BOOL)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F112E038;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NotificationManagerMessageHandler::RequestPermission,WTF::CompletionHandler<void ()(BOOL)>>(WTF::CompletionHandler<void ()(BOOL)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::call(uint64_t a1, uint64_t a2, IPC::Decoder *a3)
{
  if (a3 && *a3)
  {
    v4 = IPC::Decoder::decode<std::tuple<BOOL>>(a3);
    v5 = *&v4 & ((v4 & 0x100) >> 8);
  }

  else
  {
    v5 = 0;
  }

  v6 = *(a1 + 8);
  *(a1 + 8) = 0;
  (*(*v6 + 16))(v6, v5);
  v7 = *(*v6 + 8);

  return v7(v6);
}

uint64_t *WTF::HashTable<WTF::UUID,WTF::KeyValuePair<WTF::UUID,WebCore::ProcessQualified<WTF::UUID>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::UUID,WebCore::ProcessQualified<WTF::UUID>>>,WTF::DefaultHash<WTF::UUID>,WTF::HashMap<WTF::UUID,WebCore::ProcessQualified<WTF::UUID>,WTF::DefaultHash<WTF::UUID>,WTF::HashTraits<WTF::UUID>,WTF::HashTraits<WebCore::ProcessQualified<WTF::UUID>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::UUID>,WTF::FastMalloc>::remove(uint64_t *result, void *a2)
{
  *a2 = 1;
  a2[1] = 0;
  v2 = *result;
  v3 = vadd_s32(*(*result - 16), 0xFFFFFFFF00000001);
  *(v2 - 16) = v3;
  v4 = *(v2 - 4);
  if (6 * v3.i32[1] < v4 && v4 >= 9)
  {
    return WTF::HashTable<WTF::UUID,WTF::KeyValuePair<WTF::UUID,WebCore::ProcessQualified<WTF::UUID>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::UUID,WebCore::ProcessQualified<WTF::UUID>>>,WTF::DefaultHash<WTF::UUID>,WTF::HashMap<WTF::UUID,WebCore::ProcessQualified<WTF::UUID>,WTF::DefaultHash<WTF::UUID>,WTF::HashTraits<WTF::UUID>,WTF::HashTraits<WebCore::ProcessQualified<WTF::UUID>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::UUID>,WTF::FastMalloc>::rehash(result, v4 >> 1, 0);
  }

  return result;
}

uint64_t *WTF::HashTable<WTF::UUID,WTF::KeyValuePair<WTF::UUID,WebCore::ProcessQualified<WTF::UUID>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::UUID,WebCore::ProcessQualified<WTF::UUID>>>,WTF::DefaultHash<WTF::UUID>,WTF::HashMap<WTF::UUID,WebCore::ProcessQualified<WTF::UUID>,WTF::DefaultHash<WTF::UUID>,WTF::HashTraits<WTF::UUID>,WTF::HashTraits<WebCore::ProcessQualified<WTF::UUID>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::UUID>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WTF::UUID,WebCore::ProcessQualified<WTF::UUID>,WTF::DefaultHash<WTF::UUID>,WTF::HashTraits<WTF::UUID>,WTF::HashTraits<WebCore::ProcessQualified<WTF::UUID>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::UUID>>,(WTF::ShouldValidateKey)1,WTF::UUID>(uint64_t *a1, unint64_t *a2)
{
  v2 = *a1;
  if (!*a1)
  {
    return 0;
  }

  v4 = *a2;
  v5 = a2[1];
  if (!(v4 ^ 1 | v5) || !(v4 | v5))
  {
    __break(0xC471u);
    JUMPOUT(0x19E33B7B8);
  }

  v8 = *(v2 - 8);
  v19 = -1640531527;
  v20 = 0;
  v21 = 0;
  WTF::add(&v19, v4, v5);
  v9 = WTF::SuperFastHash::hash(&v19);
  v10 = *a2;
  v11 = a2[1];
  v12 = v9 & v8;
  result = (v2 + 48 * (v9 & v8));
  v14 = *result;
  v15 = result[1];
  if (v15 != v11 || v14 != v10)
  {
    v17 = 1;
    while (v14 | v15)
    {
      v12 = (v12 + v17) & v8;
      result = (v2 + 48 * v12);
      v14 = *result;
      v15 = result[1];
      v18 = v15 == v11 && v14 == v10;
      ++v17;
      if (v18)
      {
        return result;
      }
    }

    if (*a1)
    {
      return (*a1 + 48 * *(*a1 - 4));
    }

    else
    {
      return 0;
    }
  }

  return result;
}

BOOL _ZN3WTF6Detail15CallableWrapperIZN6WebKitL23sendNotificationMessageIN8Messages33NotificationManagerMessageHandler22DidDestroyNotificationEEEbOT_PNS2_7WebPageEEUlRS7_T0_E_bJRN3IPC10ConnectionEyEE4callESG_y(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 8);
  v6 = IPC::Encoder::operator new(0x238, a2);
  *v6 = 824;
  *(v6 + 2) = 0;
  *(v6 + 3) = 0;
  *(v6 + 1) = a3;
  *(v6 + 68) = 0;
  *(v6 + 70) = 0;
  *(v6 + 69) = 0;
  IPC::Encoder::encodeHeader(v6);
  v14 = v6;
  v7 = *v5;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v6, (*v5)[1]);
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v6, *v7);
  v9 = IPC::Connection::sendMessageImpl(a2, &v14, 0, 0);
  v10 = v14;
  v14 = 0;
  if (v10)
  {
    IPC::Encoder::~Encoder(v10, v8);
    bmalloc::api::tzoneFree(v12, v13);
  }

  return v9 == 0;
}

uint64_t WTF::HashMap<WTF::UUID,WebCore::ProcessQualified<WTF::UUID>,WTF::DefaultHash<WTF::UUID>,WTF::HashTraits<WTF::UUID>,WTF::HashTraits<WebCore::ProcessQualified<WTF::UUID>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WTF::UUID,WebCore::ProcessQualified<WTF::UUID>,WTF::DefaultHash<WTF::UUID>,WTF::HashTraits<WTF::UUID>,WTF::HashTraits<WebCore::ProcessQualified<WTF::UUID>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::UUID>>,WTF::UUID>@<X0>(uint64_t result@<X0>, unint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a2;
  v6 = a2[1];
  if (!(v5 ^ 1 | v6) || !(v5 | v6))
  {
    __break(0xC471u);
    JUMPOUT(0x19E33B9A0);
  }

  v8 = *result;
  if (*result)
  {
    v9 = *(v8 - 8);
    v22 = -1640531527;
    v23 = 0;
    v24 = 0;
    WTF::add(&v22, v5, v6);
    result = WTF::SuperFastHash::hash(&v22);
    v10 = *a2;
    v11 = a2[1];
    v12 = result & v9;
    v13 = (v8 + 48 * (result & v9));
    v14 = *v13;
    v15 = v13[1];
    if (v15 == v11 && v14 == v10)
    {
LABEL_15:
      v20 = v8 + 48 * v12;
      v21 = *(v20 + 32);
      *a3 = *(v20 + 16);
      *(a3 + 16) = v21;
      return result;
    }

    v17 = 1;
    while (v14 | v15)
    {
      v12 = (v12 + v17) & v9;
      v18 = (v8 + 48 * v12);
      v14 = *v18;
      v15 = v18[1];
      v19 = v15 == v11 && v14 == v10;
      ++v17;
      if (v19)
      {
        goto LABEL_15;
      }
    }
  }

  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  return result;
}

void WTF::Detail::CallableWrapper<WebKit::WebNotificationManager::didShowNotification(WTF::UUID const&)::$_0,void,WebCore::Notification *>::call(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    MEMORY[0x1EEE54CF0](a2);
  }
}

WTF *WTF::Detail::CallableWrapper<WebKit::WebNotificationManager::didClickNotification(WTF::UUID const&)::$_0,void,WebCore::Notification *>::call(WTF *result, WebCore::Notification *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    if (WTF::isMainRunLoop(result))
    {
      v3[8] = 0;
      v3[24] = 0;
      WebCore::UserGestureIndicator::UserGestureIndicator();
      WebCore::Notification::dispatchClickEvent(a2);
      return MEMORY[0x19EB09070](v3);
    }

    else
    {

      return WebCore::Notification::dispatchClickEvent(a2);
    }
  }

  return result;
}

void WTF::Detail::CallableWrapper<WebKit::WebNotificationManager::didCloseNotifications(WTF::Vector<WTF::UUID,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&)::$_0,void,WebCore::Notification *>::call(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    MEMORY[0x1EEE54D00](a2);
  }
}

void WebKit::PluginView::Stream::~Stream(WebKit::PluginView::Stream *this)
{
  *this = &unk_1F112E100;
  if (*(this + 29))
  {
    WebCore::ResourceRequest::ResourceRequest(v7);
    v2 = *(this + 29);
    *(this + 29) = 0;
    (*(*v2 + 16))(v2, v7);
    (*(*v2 + 8))(v2);
    WebCore::ResourceRequest::~ResourceRequest(v7);
  }

  v3 = *(this + 31);
  *(this + 31) = 0;
  if (v3)
  {
    if (v3[4] == 1)
    {
      (*(*v3 + 8))(v3);
    }

    else
    {
      --v3[4];
    }
  }

  v4 = *(this + 29);
  *(this + 29) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  WebCore::ResourceRequest::~ResourceRequest((this + 32));
  v6 = *(this + 3);
  *(this + 3) = 0;
  if (v6)
  {
    if (*v6 == 1)
    {
      WTF::fastFree(v6, v5);
    }

    else
    {
      --*v6;
    }
  }

  WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::~WeakPtrFactory(this + 1, v5);
  if (*(this + 4) != 1)
  {
    __break(0xC471u);
  }
}

{
  WebKit::PluginView::Stream::~Stream(this);

  WTF::fastFree(v1, v2);
}

void WebKit::PluginView::Stream::willSendRequest(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v7 = *a5;
  *a5 = 0;
  v8 = *(a1 + 232);
  *(a1 + 232) = v7;
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  WebCore::ResourceRequestBase::RequestData::operator=(a1 + 32, a3);
  v10 = *(a3 + 152);
  *(a3 + 152) = 0;
  v11 = *(a1 + 184);
  *(a1 + 184) = v10;
  if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v11, v9);
  }

  v12 = *(a3 + 160);
  *(a3 + 160) = 0;
  v13 = *(a1 + 192);
  *(a1 + 192) = v12;
  if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v13, v9);
  }

  v14 = *(a3 + 168);
  *(a3 + 168) = 0;
  v15 = *(a1 + 200);
  *(a1 + 200) = v14;
  if (v15)
  {
    WTF::RefCounted<WebCore::FormData>::deref(v15);
  }

  v16 = *(a3 + 176);
  *(a1 + 216) = *(a3 + 184);
  *(a1 + 208) = v16;
  v17 = *(a3 + 192);
  *(a3 + 192) = 0;
  v18 = *(a1 + 224);
  *(a1 + 224) = v17;
  if (v18)
  {

    CFRelease(v18);
  }
}

uint64_t WebKit::PluginView::Stream::didReceiveResponse(uint64_t a1, int a2, WebCore::ResourceResponse *a3)
{
  v3 = *(a1 + 24);
  if (v3)
  {
    v4 = *(v3 + 8);
    if (v4)
    {
      return WebKit::PDFPluginBase::streamDidReceiveResponse(*(v4 + 72), a3);
    }
  }

  result = 121;
  __break(0xC471u);
  return result;
}

uint64_t WebKit::PluginView::Stream::didReceiveData(uint64_t a1, int a2, WebCore::SharedBuffer *a3)
{
  v3 = *(a1 + 24);
  if (v3)
  {
    v4 = *(v3 + 8);
    if (v4)
    {
      return WebKit::PDFPluginBase::streamDidReceiveData(*(v4 + 72), a3);
    }
  }

  result = 121;
  __break(0xC471u);
  return result;
}

WTF *WebKit::PluginView::Stream::didFail(uint64_t a1, void *a2)
{
  ++*(a1 + 16);
  if ((*(a1 + 240) & 1) == 0)
  {
    v3 = *(a1 + 24);
    if (!v3 || (v4 = *(v3 + 8)) == 0)
    {
LABEL_20:
      __break(0xC471u);
      JUMPOUT(0x19E33BF48);
    }

    WebKit::PDFPluginBase::streamDidFail(*(v4 + 72));
  }

  v5 = *(a1 + 24);
  if (!v5)
  {
    goto LABEL_20;
  }

  v6 = *(v5 + 8);
  if (!v6)
  {
    goto LABEL_20;
  }

  v7 = *(v6 + 200);
  *(v6 + 200) = 0;
  if (v7)
  {
    if (v7[4] == 1)
    {
      (*(*v7 + 56))(v7);
    }

    else
    {
      --v7[4];
    }
  }

  result = *(a1 + 24);
  *(a1 + 24) = 0;
  if (result)
  {
    if (*result == 1)
    {
      result = WTF::fastFree(result, a2);
    }

    else
    {
      --*result;
    }
  }

  if (*(a1 + 16) == 1)
  {
    v9 = *(*a1 + 56);

    return v9(a1);
  }

  else
  {
    --*(a1 + 16);
  }

  return result;
}

WTF *WebKit::PluginView::Stream::didFinishLoading(uint64_t a1)
{
  ++*(a1 + 16);
  v1 = *(a1 + 24);
  if (!v1 || (v2 = *(v1 + 8)) == 0 || (WebKit::PDFPluginBase::streamDidFinishLoading(*(v2 + 72)), (v5 = *(a1 + 24)) == 0) || (v6 = *(v5 + 8)) == 0)
  {
    __break(0xC471u);
    JUMPOUT(0x19E33C094);
  }

  v7 = *(v6 + 200);
  *(v6 + 200) = 0;
  if (v7)
  {
    if (v7[4] == 1)
    {
      (*(*v7 + 56))(v7);
    }

    else
    {
      --v7[4];
    }
  }

  result = *(a1 + 24);
  *(a1 + 24) = 0;
  if (result)
  {
    if (*result == 1)
    {
      result = WTF::fastFree(result, v4);
    }

    else
    {
      --*result;
    }
  }

  if (*(a1 + 16) == 1)
  {
    v9 = *(*a1 + 56);

    return v9(a1);
  }

  else
  {
    --*(a1 + 16);
  }

  return result;
}

void WebKit::PluginView::create(WebKit::PluginView *this@<X0>, WebCore::HTMLPlugInElement *a2@<X1>, const WTF::URL *a3@<X2>, const WTF::String *a4@<X3>, uint64_t *a5@<X8>)
{
  v6 = *(*(*(this + 6) + 8) + 552);
  if (v6 && (v7 = *(v6 + 8)) != 0)
  {
    v8 = a4;
    ++v7[4];
    WebKit::WebFrame::fromCoreFrame(v7, &v19);
    v12 = v19;
    if (v19)
    {
      v13 = WebKit::WebFrame::page(v19);
      if (v13)
      {
        v14 = v13;
        CFRetain(*(v13 + 8));
        WTF::URL::path(a2);
        if (WebKit::WebPage::shouldUsePDFPlugin(v14, a3))
        {
          v15 = WTF::fastMalloc(0x1F0);
          v17 = WebKit::PluginView::PluginView(v15, this, a2, v16, v8, v14);
        }

        else
        {
          v17 = 0;
        }

        *a5 = v17;
        CFRelease(v14[1]);
      }

      else
      {
        *a5 = 0;
      }

      CFRelease(*(v12 + 1));
    }

    else
    {
      *a5 = 0;
    }

    if (v7[4] == 1)
    {
      v18 = *(*v7 + 8);

      v18(v7);
    }

    else
    {
      --v7[4];
    }
  }

  else
  {
    *a5 = 0;
  }
}

uint64_t WebKit::PluginView::PluginView(WebKit::PluginView *this, WebCore::HTMLPlugInElement *a2, const WTF::URL *a3, const WTF::String *a4, char a5, WebKit::WebPage *a6)
{
  v11 = WebCore::Widget::Widget();
  *v11 = &unk_1F112E150;
  *(a2 + 7) += 2;
  v11[8] = a2;
  if ((*(*(*(*(a2 + 6) + 8) + 720) + 740) & 0x10) != 0)
  {
    WebKit::UnifiedPDFPlugin::create(a2, v12, &v30);
    *(this + 9) = v30;
    v13 = WTF::WeakPtrFactory<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(a6 + 6, a6 + 16);
    v14 = *(a6 + 3);
    atomic_fetch_add(v14, 1u);
    *(this + 10) = v14;
    v15 = *a3;
    if (*a3)
    {
      atomic_fetch_add_explicit(v15, 2u, memory_order_relaxed);
    }

    *(this + 11) = v15;
    v16 = *(a3 + 24);
    *(this + 6) = *(a3 + 8);
    *(this + 7) = v16;
    *(this + 16) = 0;
    *(this + 136) = a5;
    *(this + 137) = 0;
    *(this + 18) = 0;
    v17 = WTF::RunLoop::mainSingleton(v13);
    v18 = v17;
    while (1)
    {
      v19 = *(v17 + 8);
      if ((v19 & 1) == 0)
      {
        break;
      }

      v20 = *(v17 + 8);
      atomic_compare_exchange_strong_explicit((v17 + 8), &v20, v19 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v20 == v19)
      {
        goto LABEL_9;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*(v17 + 8));
LABEL_9:
    v30.var0.m_impl.m_ptr = v18;
    v21 = WTF::fastMalloc(0x20);
    *v21 = &unk_1F112EDE0;
    v21[1] = this;
    v21[2] = WebKit::PluginView::pendingResourceRequestTimerFired;
    v21[3] = 0;
    WTF::RunLoop::TimerBase::TimerBase();
    *(this + 19) = &unk_1F10E6DC8;
    *(this + 24) = v21;
    m_ptr = v30.var0.m_impl.m_ptr;
    v30.var0.m_impl.m_ptr = 0;
    if (m_ptr)
    {
      WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WTF::SerialFunctionDispatcher,(WTF::DestructionThread)0>::deref(m_ptr + 1);
    }

    *(this + 25) = 0;
    *(this + 52) = 0;
    WebCore::ResourceResponseBase::ResourceResponseBase((this + 216));
    *(this + 58) = 0;
    *(this + 472) = 0;
    *(this + 354) = *(this + 354) & 0xF1 | 4;
    *(this + 60) = 0;
    *(this + 61) = 0;
    WebKit::PDFPluginBase::startLoading(*(this + 9), v23);
    WTF::WeakHashSet<WebKit::PluginView,WTF::SingleThreadWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::add<WebKit::PluginView>(a6 + 160, this, &v30);
    if (!(*(**(this + 9) + 1480))())
    {
      return this;
    }

    v24 = *(*(*(this + 8) + 48) + 8);
    v25 = *(v24 + 28);
    *(v24 + 28) = v25 + 2;
    v26 = *(v24 + 1336);
    if (v26)
    {
      *(v26 + 7) += 2;
      v25 = *(v24 + 28) - 2;
    }

    if (v25)
    {
      *(v24 + 28) = v25;
      if (v26)
      {
        goto LABEL_16;
      }
    }

    else
    {
      WebCore::Node::removedLastRef(v24);
      if (v26)
      {
LABEL_16:
        WTF::AtomStringImpl::add();
        WebCore::Element::setAttributeWithoutSynchronization(v26, MEMORY[0x1E69E2D48], &v30);
        v28 = v30.var0.m_impl.m_ptr;
        v30.var0.m_impl.m_ptr = 0;
        if (v28 && atomic_fetch_add_explicit(v28, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v28, v27);
        }

        if (*(v26 + 7) == 2)
        {
          WebCore::Node::removedLastRef(v26);
        }

        else
        {
          *(v26 + 7) -= 2;
        }
      }
    }

    return this;
  }

  result = 230;
  __break(0xC471u);
  return result;
}

void WebKit::PluginView::pendingResourceRequestTimerFired(WebKit::PluginView *this)
{
  v4 = *(this + 18);
  v2 = (this + 144);
  v3 = v4;
  *v2 = 0;
  std::unique_ptr<WebCore::ResourceRequest const>::reset[abi:sn200100](v2, 0);
  v5 = WebCore::ResourceRequestBase::url(v4);
  if (WTF::URL::protocolIsJavaScript(v5))
  {
    goto LABEL_24;
  }

  ++*(this + 2);
  v6 = WTF::fastMalloc(0x100);
  *(v6 + 16) = 1;
  *v6 = &unk_1F112E100;
  *(v6 + 8) = 0;
  WTF::WeakPtrFactory<WebCore::Widget,WTF::SingleThreadWeakPtrImpl>::initializeIfNeeded((this + 16), this);
  v7 = *(this + 2);
  if (v7)
  {
    ++*v7;
  }

  *(v6 + 24) = v7;
  WebCore::ResourceRequest::ResourceRequest((v6 + 32), v3);
  *(v6 + 232) = 0;
  *(v6 + 240) = 0;
  *(v6 + 248) = 0;
  ++*(v6 + 16);
  v9 = *(this + 25);
  *(this + 25) = v6;
  if (v9)
  {
    if (v9[4] == 1)
    {
      (*(*v9 + 56))(v9);
    }

    else
    {
      --v9[4];
    }
  }

  v10 = *(v6 + 24);
  if (!v10 || (v11 = *(v10 + 8)) == 0)
  {
    __break(0xC471u);
    goto LABEL_38;
  }

  v12 = *(*(*(*(v11 + 64) + 48) + 8) + 552);
  if (v12)
  {
    v13 = *(v12 + 8);
    if (v13)
    {
      ++v13[4];
    }
  }

  else
  {
    v13 = 0;
  }

  {
    v14 = WebKit::WebProcess::singleton(void)::process;
  }

  else
  {
    v19 = WebKit::WebProcess::operator new(0x370, v8);
    v14 = WebKit::WebProcess::WebProcess(v19);
    WebKit::WebProcess::singleton(void)::process = v14;
  }

  v15 = *(v14 + 43);
  if (!*(*(v15 + 8) + 8))
  {
    __break(0xC471u);
    JUMPOUT(0x19E33C8A0);
  }

  WebCore::ResourceRequest::ResourceRequest(v21, (v6 + 32));
  ++*(v6 + 16);
  v16 = WTF::fastMalloc(0x18);
  *v16 = &unk_1F112EDB8;
  v16[1] = v6;
  v16[2] = v6;
  v20 = v16;
  WebKit::WebLoaderStrategy::schedulePluginStreamLoad(v15, v13, v6, v21, &v20);
  if (v20)
  {
    (*(*v20 + 8))(v20);
  }

  WebCore::ResourceRequest::~ResourceRequest(v21);
  if (!*(*(v15 + 8) + 8))
  {
    __break(0xC471u);
LABEL_38:
    JUMPOUT(0x19E33C880);
  }

  if (v13[4] == 1)
  {
    (*(*v13 + 8))(v13);
  }

  else
  {
    --v13[4];
  }

  if (*(v6 + 16) == 1)
  {
    (*(*v6 + 56))(v6);
  }

  else
  {
    --*(v6 + 16);
  }

  if (*(this + 2) == 1)
  {
    (*(*this + 8))(this);
    if (!v3)
    {
      return;
    }

    goto LABEL_25;
  }

  --*(this + 2);
LABEL_24:
  if (!v3)
  {
    return;
  }

LABEL_25:
  WebCore::ResourceRequest::~ResourceRequest(v3);

  bmalloc::api::tzoneFree(v17, v18);
}

void WebKit::PluginView::~PluginView(WebKit::PluginView *this)
{
  v2 = *(this + 10);
  if (v2)
  {
    v3 = *(v2 + 8);
    if (v3)
    {
      CFRetain(*(v3 - 8));
      WTF::WeakHashSet<WebKit::PluginView,WTF::SingleThreadWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::remove<WebKit::PluginView>(v3 + 144, this);
      CFRelease(*(v3 - 8));
    }
  }

  v4 = *(this + 25);
  if (v4)
  {
    ++*(v4 + 16);
    *(v4 + 240) = 1;
    v5 = *(v4 + 248);
    *(v4 + 248) = 0;
    WebCore::ResourceLoader::cancelledError(&v23, v5);
    WebCore::ResourceLoader::cancel();
    v7 = cf;
    cf = 0;
    if (v7)
    {
      CFRelease(v7);
    }

    v8 = v25;
    v25 = 0;
    if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v8, v6);
    }

    v9 = v24;
    v24 = 0;
    if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v9, v6);
    }

    v10 = v23;
    v23 = 0;
    if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v10, v6);
      if (v5)
      {
LABEL_16:
        if (*(v5 + 4) == 1)
        {
          (*(*v5 + 8))(v5);
        }

        else
        {
          --*(v5 + 4);
        }
      }
    }

    else if (v5)
    {
      goto LABEL_16;
    }

    if (*(v4 + 16) == 1)
    {
      (*(*v4 + 56))(v4);
    }

    else
    {
      --*(v4 + 16);
    }
  }

  WebKit::PDFPluginBase::destroy(*(this + 9));
  v12 = *(this + 61);
  *(this + 61) = 0;
  if (v12)
  {
    WTF::ThreadSafeRefCounted<WebCore::ShareableBitmap,(WTF::DestructionThread)0>::deref(v12, v11);
  }

  v13 = *(this + 60);
  *(this + 60) = 0;
  if (v13 && atomic_fetch_add(v13 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v13 + 2);
    (*(*v13 + 8))(v13);
  }

  v14 = *(this + 58);
  *(this + 58) = 0;
  if (v14)
  {
    CFRelease(v14);
  }

  WebCore::ResourceResponseBase::~ResourceResponseBase((this + 216), v11);
  v15 = *(this + 25);
  *(this + 25) = 0;
  if (v15)
  {
    if (v15[4] == 1)
    {
      (*(*v15 + 56))(v15);
    }

    else
    {
      --v15[4];
    }
  }

  *(this + 19) = &unk_1F10E6DC8;
  v16 = *(this + 24);
  *(this + 24) = 0;
  if (v16)
  {
    (*(*v16 + 8))(v16);
  }

  WTF::RunLoop::TimerBase::~TimerBase((this + 152));
  std::unique_ptr<WebCore::ResourceRequest const>::reset[abi:sn200100](this + 18, 0);
  v18 = *(this + 16);
  *(this + 16) = 0;
  if (v18 && atomic_fetch_add_explicit(v18, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v18, v17);
  }

  v19 = *(this + 11);
  *(this + 11) = 0;
  if (v19 && atomic_fetch_add_explicit(v19, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v19, v17);
  }

  v20 = *(this + 10);
  *(this + 10) = 0;
  if (v20 && atomic_fetch_add(v20, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v20);
    WTF::fastFree(v20, v17);
  }

  v21 = *(this + 9);
  *(this + 9) = 0;
  if (v21)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::PDFPluginBase,(WTF::DestructionThread)1>::deref((v21 + 72));
  }

  v22 = *(this + 8);
  *(this + 8) = 0;
  if (v22)
  {
    if (*(v22 + 7) == 2)
    {
      WebCore::Node::removedLastRef(v22);
    }

    else
    {
      *(v22 + 7) -= 2;
    }
  }

  MEMORY[0x1EEE5AEC0](this);
}

{
  WebKit::PluginView::~PluginView(this);

  WTF::fastFree(v1, v2);
}

void WebKit::PluginView::manualLoadDidReceiveResponse(WebKit::PluginView *this, CFTypeRef *a2)
{
  if (*(this + 137))
  {
    v4 = *(this + 9);

    WebKit::PDFPluginBase::streamDidReceiveResponse(v4, a2);
  }

  else
  {
    *(this + 52) = 1;
    WebCore::ResourceResponseBase::operator=(this + 216, a2);
    v5 = a2[31];
    if (v5)
    {
      CFRetain(a2[31]);
    }

    v6 = *(this + 58);
    *(this + 58) = v5;
    if (v6)
    {
      CFRelease(v6);
    }

    *(this + 472) = *(a2 + 256);
  }
}

uint64_t WebKit::PluginView::manualLoadDidReceiveData(atomic_uchar **this, const WebCore::SharedBuffer *a2)
{
  if (*(this + 137))
  {
    return WebKit::PDFPluginBase::streamDidReceiveData(this[9], a2);
  }

  else
  {
    return WebCore::SharedBufferBuilder::append<WebCore::SharedBuffer const&>((this + 60));
  }
}

unsigned __int8 *WebKit::PluginView::manualLoadDidFinishLoading(unsigned __int8 *this)
{
  if (this[137])
  {
    return WebKit::PDFPluginBase::streamDidFinishLoading(*(this + 9));
  }

  *(this + 52) = 2;
  return this;
}

uint64_t WebKit::PluginView::layerHostingStrategyDidChange(uint64_t this)
{
  if (*(this + 137) == 1)
  {
    return WebCore::Element::invalidateStyleAndLayerComposition(*(this + 64));
  }

  return this;
}

unsigned int *WebKit::PluginView::manualLoadDidFail(atomic_uchar **this)
{
  if (*(this + 137))
  {
    return WebKit::PDFPluginBase::streamDidFail(this[9]);
  }

  *(this + 52) = 2;
  result = this[60];
  this[60] = 0;
  if (result)
  {
    if (atomic_fetch_add(result + 2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, result + 2);
      return (*(*result + 8))();
    }
  }

  return result;
}

WebCore::Widget *WebKit::PluginView::viewGeometryDidChange(WebCore::Widget *this)
{
  if (*(this + 137) != 1)
  {
    return this;
  }

  v20[1] = v4;
  v20[2] = v3;
  v20[7] = v1;
  v20[8] = v2;
  v5 = this;
  this = WebCore::Widget::parent(this);
  if (!this)
  {
    return this;
  }

  ++*(v5 + 8);
  v17[0] = xmmword_19E7048B0;
  v17[1] = unk_19E7048C0;
  v17[2] = xmmword_19E7048D0;
  v6 = *(*(*(*(v5 + 64) + 48) + 8) + 552);
  if (!v6)
  {
    v7 = 0;
    goto LABEL_25;
  }

  v7 = *(v6 + 8);
  if (!v7)
  {
LABEL_25:
    v8 = 1;
    goto LABEL_6;
  }

  v8 = 0;
  ++*(v7 + 16);
LABEL_6:
  v9 = *(v7 + 120);
  if (v9)
  {
    v9 = *(v9 + 8);
  }

  if (v9 != v7 || !WebKit::PDFPluginBase::isFullFramePlugin(*(v5 + 72)))
  {
    v10 = *(v7 + 24);
    v11 = 1.0;
    if (v10)
    {
      v12 = *(v10 + 8);
      if (v12)
      {
        v11 = *(v12 + 316);
      }
    }

    v13 = WebCore::Widget::frameRect(v5);
    LODWORD(v20[0]) = llroundf(v11 * v13);
    HIDWORD(v20[0]) = llroundf(v11 * SHIDWORD(v13));
    WebCore::Widget::protectedParent(&v18, v5);
    v19 = WebCore::ScrollView::contentsToRootView(v18, v20);
    v14 = v18;
    v18 = 0;
    if (v14)
    {
      if (*(v14 + 2) == 1)
      {
        (*(*v14 + 8))(v14);
      }

      else
      {
        --*(v14 + 2);
      }
    }

    WebCore::FloatPoint::FloatPoint(&v18, &v19);
    WebCore::AffineTransform::translate(v17, &v18);
    WebCore::AffineTransform::scale(v17, v11);
  }

  if ((v8 & 1) == 0)
  {
    if (*(v7 + 16) == 1)
    {
      (*(*v7 + 8))(v7);
    }

    else
    {
      --*(v7 + 16);
    }
  }

  if (*(v5 + 8) == 1)
  {
    (*(*v5 + 8))(v5);
  }

  else
  {
    --*(v5 + 8);
  }

  v15 = *(v5 + 72);
  WebCore::Widget::frameRect(v5);
  v20[0] = v16;
  return (*(*v15 + 1024))(v15, v20, v17);
}

uint64_t WebKit::PluginView::mainFramePageScaleFactorDidChange(uint64_t this)
{
  if (*(this + 137) == 1)
  {
    return (*(**(this + 72) + 1000))();
  }

  return this;
}

unsigned int *WebKit::PluginView::webPageDestroyed(WebKit::PluginView *this, void *a2)
{
  result = *(this + 10);
  *(this + 10) = 0;
  if (result)
  {
    if (atomic_fetch_add(result, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, result);
      return WTF::fastFree(result, a2);
    }
  }

  return result;
}

uint64_t WebKit::PluginView::accessibilityObject(WebKit::PluginView *this)
{
  if (*(this + 137) == 1)
  {
    return (*(**(this + 9) + 1272))();
  }

  else
  {
    return 0;
  }
}

_BYTE *WebKit::PluginView::viewVisibilityDidChange(_BYTE *this)
{
  if (this[137] == 1)
  {
    v1 = this;
    this = WebCore::Widget::parent(this);
    if (this)
    {
      v2 = *(**(v1 + 9) + 1032);

      return v2();
    }
  }

  return this;
}

uint64_t WebKit::PluginView::layerHostingStrategy(WebKit::PluginView *this)
{
  if (*(this + 137) == 1)
  {
    return (*(**(this + 9) + 912))();
  }

  else
  {
    return 0;
  }
}

uint64_t WebKit::PluginView::platformLayer(WebKit::PluginView *this)
{
  if (*(this + 137) != 1)
  {
    return 0;
  }

  v1 = *(this + 9);
  v2 = v1 + 9;
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
      goto LABEL_8;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v2);
LABEL_8:
  if ((*(*v1 + 912))(v1) == 1)
  {
    v5 = (*(*v1 + 920))(v1);
  }

  else
  {
    v5 = 0;
  }

  WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::PDFPluginBase,(WTF::DestructionThread)1>::deref(v2);
  return v5;
}

uint64_t WebKit::PluginView::graphicsLayer(WebKit::PluginView *this)
{
  if (*(this + 137) != 1)
  {
    return 0;
  }

  v1 = *(this + 9);
  v2 = v1 + 9;
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
      goto LABEL_8;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v2);
LABEL_8:
  if ((*(*v1 + 912))(v1) == 2)
  {
    v5 = (*(*v1 + 928))(v1);
  }

  else
  {
    v5 = 0;
  }

  WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::PDFPluginBase,(WTF::DestructionThread)1>::deref(v2);
  return v5;
}

uint64_t WebKit::PluginView::horizontalScrollbar(WebKit::PluginView *this)
{
  if (*(this + 137) == 1)
  {
    return (*(**(this + 9) + 392))();
  }

  else
  {
    return 0;
  }
}

uint64_t WebKit::PluginView::verticalScrollbar(WebKit::PluginView *this)
{
  if (*(this + 137) == 1)
  {
    return (*(**(this + 9) + 400))();
  }

  else
  {
    return 0;
  }
}

uint64_t WebKit::PluginView::wantsWheelEvents(WebKit::PluginView *this)
{
  if (*(this + 137) == 1)
  {
    return (*(**(this + 9) + 1064))();
  }

  else
  {
    return 0;
  }
}

WebCore::Widget *WebKit::PluginView::setFrameRect(WebKit::PluginView *this, const IntRect *a2)
{
  WebCore::Widget::setFrameRect(this, a2);

  return WebKit::PluginView::viewGeometryDidChange(this);
}

uint64_t WebKit::PluginView::paint(uint64_t result, WebCore::GraphicsContext *a2, IntRect *a3)
{
  if (*(result + 137) != 1)
  {
    return result;
  }

  v5 = result;
  if ((*(*a2 + 40))(a2))
  {
    result = (*(*a2 + 56))(a2);
    if (result)
    {
      v6 = *(v5 + 9);

      return WebKit::PDFPluginBase::updateControlTints(v6, a2);
    }

    return result;
  }

  result = WebCore::Widget::frameRect(v5);
  if (v8 < 1 || v7 < 1)
  {
    return result;
  }

  v9 = *(v5 + 61);
  if (!v9)
  {
    v21 = *(*(*(*(*(*(v5 + 8) + 48) + 8) + 552) + 8) + 216);
    if (v21)
    {
      ++*(v21 + 2);
      v22 = WebCore::LocalFrameView::paintBehavior(v21);
      if (*(v21 + 2) == 1)
      {
        v25 = v22;
        (*(*v21 + 8))(v21);
        if ((v25 & 0x400) != 0)
        {
          goto LABEL_27;
        }
      }

      else
      {
        --*(v21 + 2);
        if ((v22 & 0x400) != 0)
        {
          goto LABEL_27;
        }
      }
    }

    result = (*(**(v5 + 9) + 912))(*(v5 + 9));
    if (result == 2)
    {
      return result;
    }

LABEL_27:
    (*(*a2 + 104))(a2, 1);
    v26[0] = WebCore::Widget::frameRect(v5);
    WebCore::FloatPoint::FloatPoint(&v27, v26);
    v23.n128_u32[0] = v27.m_location.m_x;
    v24.n128_u32[0] = v27.m_location.m_y;
    (*(*a2 + 672))(a2, v23, v24);
    v27 = *a3;
    v27.m_location = vsub_s32(v27.m_location, v26[0]);
    (*(**(v5 + 9) + 976))();
    return (*(*a2 + 112))(a2, 1);
  }

  atomic_fetch_add(v9, 1u);
  if ((*(*a2 + 16))(a2))
  {
    v10 = *(*(*(*(v5 + 8) + 48) + 8) + 552);
    v11 = 1.0;
    if (v10)
    {
      v12 = *(v10 + 8);
      if (v12)
      {
        v13 = *(v12 + 24);
        if (v13)
        {
          v14 = *(v13 + 8);
          if (v14)
          {
            v16 = *(v14 + 8);
            v15 = v14 + 8;
            *v15 = v16 + 1;
            v11 = *(v15 + 316);
            WTF::RefCounted<WebCore::Page>::deref(v15);
          }
        }
      }
    }

    v26[0] = WebCore::Widget::frameRect(v5);
    v17 = *(v9 + 8);
    v27.m_location = 0;
    v27.m_size = v17;
    WebCore::ShareableBitmap::paint(v9, a2, v11, v26, &v27);
  }

  else
  {
    WebCore::ShareableBitmap::createImage(&v28, v9);
    if (v28)
    {
      v26[0] = WebCore::Widget::frameRect(v5);
      v26[1] = v19;
      WebCore::FloatRect::FloatRect(&v27, v26);
      WebCore::GraphicsContext::drawImage();
      v20 = v28;
      v28 = 0;
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
    }
  }

  return WTF::ThreadSafeRefCounted<WebCore::ShareableBitmap,(WTF::DestructionThread)0>::deref(v9, v18);
}

uint64_t WebKit::PluginView::setParent(WebKit::PluginView *this, WebCore::ScrollView *a2)
{
  result = WebCore::Widget::setParent(this, a2);
  if (a2 && (*(this + 137) & 1) == 0)
  {
    v5 = *(this + 9);
    v6 = (v5 + 72);
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
        goto LABEL_8;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v6);
LABEL_8:
    (*(*v5 + 936))(v5, this);
    if ((*(this + 136) & 1) == 0)
    {
      v10 = (this + 88);
      v9 = *(this + 11);
      if (v9)
      {
        if (*(v9 + 4))
        {
          (*(*(*(*(*(*(*(*(this + 8) + 48) + 8) + 552) + 8) + 224) + 208) + 8))();
          v11 = WebCore::FrameLoader::outgoingReferrerURL(&v49, *(*(*(*(*(*(this + 8) + 48) + 8) + 552) + 8) + 208));
          WebCore::OriginAccessPatternsForWebProcess::singleton(v11);
          WebCore::SecurityPolicy::generateReferrerHeader();
          v13 = v49;
          v49 = 0;
          if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v13, v12);
          }

          v14 = v52;
          if (v52)
          {
            if (!*(v52 + 1))
            {
              v52 = 0;
              if (atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v14, v12);
              }
            }
          }

          v15 = *v10;
          if (*v10)
          {
            atomic_fetch_add_explicit(v15, 2u, memory_order_relaxed);
          }

          v49 = v15;
          v16 = *(this + 7);
          v50 = *(this + 6);
          v51 = v16;
          if (*MEMORY[0x1E69E2570])
          {
            NonCompact = bmalloc::api::tzoneAllocateNonCompact(*MEMORY[0x1E69E2570], v12);
          }

          else
          {
            NonCompact = WebCore::ResourceRequest::operatorNewSlow(0xC8);
          }

          v18 = NonCompact;
          v19 = WebCore::ResourceRequestBase::ResourceRequestBase(NonCompact, &v49, 0);
          *(v19 + 24) = 0;
          WebCore::ResourceRequestBase::setHTTPReferrer(v19, &v52);
          std::unique_ptr<WebCore::ResourceRequest const>::reset[abi:sn200100](this + 18, v18);
          v21 = v49;
          v49 = 0;
          if (v21 && atomic_fetch_add_explicit(v21, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v21, v20);
          }

          WTF::RunLoop::TimerBase::start();
          v23 = v52;
          v52 = 0;
          if (v23 && atomic_fetch_add_explicit(v23, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v23, v22);
          }
        }
      }
    }

    *(this + 137) = 1;
    WebKit::PluginView::viewVisibilityDidChange(this);
    WebKit::PluginView::viewGeometryDidChange(this);
    v24 = *(this + 52);
    if (v24)
    {
      if (v24 == 3)
      {
        WebKit::PluginView::manualLoadDidFail(this);
      }

      else
      {
        WebKit::PluginView::manualLoadDidReceiveResponse(this, this + 27);
        if (*(this + 60))
        {
          WebCore::SharedBufferBuilder::take(&v49, (this + 480));
          v25 = WTF::fastMalloc(0x10);
          *v25 = &unk_1F112EE08;
          *(v25 + 1) = this;
          v52 = v25;
          WebCore::FragmentedSharedBuffer::forEachSegmentAsSharedBuffer();
          if (v52)
          {
            (*(*v52 + 8))(v52);
          }

          v26 = v49;
          v49 = 0;
          if (v26 && atomic_fetch_add(v26 + 2, 0xFFFFFFFF) == 1)
          {
            atomic_store(1u, v26 + 2);
            (*(*v26 + 8))(v26);
          }
        }

        if (*(this + 52) == 2)
        {
          if (*(this + 137))
          {
            WebKit::PDFPluginBase::streamDidFinishLoading(*(this + 9));
          }

          else
          {
            *(this + 52) = 2;
          }
        }
      }
    }

    if ((*(*v5 + 952))(v5))
    {
      v27 = *(*(*(*(this + 8) + 48) + 8) + 552);
      if (v27)
      {
        v28 = *(v27 + 8);
        if (v28)
        {
          v29 = *(v28 + 216);
          if (v29)
          {
            ++*(v29 + 2);
            WebCore::LocalFrameView::enterCompositingMode(v29);
            if (*(v29 + 2) == 1)
            {
              (*(*v29 + 8))(v29);
            }

            else
            {
              --*(v29 + 2);
            }
          }

          else
          {
            WebCore::LocalFrameView::enterCompositingMode(0);
          }

          WebCore::Element::invalidateStyleAndLayerComposition(*(this + 8));
        }
      }
    }

    if (*(this + 24) == 1)
    {
      v30 = *(this + 25);
    }

    else
    {
      v30 = 0;
    }

    (*(*v5 + 1032))(v5, v30 & 1);
    v31 = *(*(*(*(this + 8) + 48) + 8) + 552);
    if (v31)
    {
      v32 = *(v31 + 8);
      if (v32)
      {
        ++*(v32 + 16);
        v33 = *(v32 + 216);
        if (v33)
        {
          ++*(v33 + 2);
          WebCore::LocalFrameView::setNeedsLayoutAfterViewConfigurationChange(v33);
          if (*(v33 + 2) == 1)
          {
            (*(*v33 + 8))(v33);
          }

          else
          {
            --*(v33 + 2);
          }
        }

        v34 = *(v32 + 120);
        if (v34)
        {
          v34 = *(v34 + 8);
        }

        if (v34 == v32 && WebKit::PDFPluginBase::isFullFramePlugin(v5))
        {
          WebKit::WebFrame::fromCoreFrame(v32, &v52);
          v35 = v52;
          v36 = WebKit::WebFrame::page(v52);
          v37 = v36;
          if (v36)
          {
            CFRetain(*(v36 + 8));
          }

          v38 = (*(*v5 + 1008))(v5);
          v39 = (*(*v5 + 1016))(v5);
          v40 = (*(*(v37 + 32) + 56))(v37 + 32);
          v42 = IPC::Encoder::operator new(0x238, v41);
          *v42 = 2287;
          *(v42 + 2) = 0;
          *(v42 + 3) = 0;
          *(v42 + 1) = v40;
          *(v42 + 68) = 0;
          *(v42 + 70) = 0;
          *(v42 + 69) = 0;
          IPC::Encoder::encodeHeader(v42);
          v49 = v42;
          v43 = IPC::Encoder::grow(v42, 1uLL, 1);
          if (!v44)
          {
            result = 1067;
            __break(0xC471u);
            return result;
          }

          *v43 = 0;
          IPC::ArgumentCoder<double,void>::encode<IPC::Encoder>(v42, v38);
          IPC::ArgumentCoder<double,void>::encode<IPC::Encoder>(v42, v39);
          (*(*(v37 + 32) + 32))(v37 + 32, &v49, 0);
          v46 = v49;
          v49 = 0;
          if (v46)
          {
            IPC::Encoder::~Encoder(v46, v45);
            bmalloc::api::tzoneFree(v47, v48);
          }

          CFRelease(*(v37 + 8));
          if (v35)
          {
            CFRelease(*(v35 + 1));
          }
        }

        if (*(v32 + 16) == 1)
        {
          (*(*v32 + 8))(v32);
        }

        else
        {
          --*(v32 + 16);
        }
      }
    }

    return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::PDFPluginBase,(WTF::DestructionThread)1>::deref(v6);
  }

  return result;
}

uint64_t WebKit::PluginView::handleEvent(uint64_t this, uint64_t a2)
{
  if (*(this + 137) == 1)
  {
    v2 = WebKit::g_currentEvent;
    if (WebKit::g_currentEvent)
    {
      v4 = this;
      atomic_fetch_add((WebKit::g_currentEvent + 8), 1u);
      StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v6 = *(StatusReg + 736);
      if (!v6 || (v7 = *(v6 + 96)) == 0)
      {
        this = WebCore::threadGlobalDataSlow(this);
        v7 = this;
      }

      v8 = *(v7 + 5);
      if (!v8)
      {
        this = WebCore::ThreadGlobalData::initializeEventNames(v7);
        v8 = *(v7 + 5);
      }

      if (*(a2 + 32) != *(v8 + 1248) || (v9 = *(v2 + 12), v9 != 2))
      {
        v10 = *(StatusReg + 736);
        if (!v10 || (v11 = *(v10 + 96)) == 0)
        {
          this = WebCore::threadGlobalDataSlow(this);
          v11 = this;
        }

        v12 = *(v11 + 5);
        if (!v12)
        {
          this = WebCore::ThreadGlobalData::initializeEventNames(v11);
          v12 = *(v11 + 5);
        }

        if (*(a2 + 32) != *(v12 + 1224) || (v9 = *(v2 + 12), *(v2 + 12)))
        {
          v13 = *(StatusReg + 736);
          if (!v13 || (v14 = *(v13 + 96)) == 0)
          {
            this = WebCore::threadGlobalDataSlow(this);
            v14 = this;
          }

          v15 = *(v14 + 5);
          if (!v15)
          {
            this = WebCore::ThreadGlobalData::initializeEventNames(v14);
            v15 = *(v14 + 5);
          }

          if (*(a2 + 32) != *(v15 + 1272) || (v9 = *(v2 + 12), v9 != 1))
          {
            v20 = *(StatusReg + 736);
            if (!v20 || (v21 = *(v20 + 96)) == 0)
            {
              this = WebCore::threadGlobalDataSlow(this);
              v21 = this;
            }

            v22 = *(v21 + 5);
            if (!v22)
            {
              this = WebCore::ThreadGlobalData::initializeEventNames(v21);
              v22 = *(v21 + 5);
            }

            if (*(a2 + 32) != *(v22 + 2568))
            {
              v23 = *(StatusReg + 736);
              if (!v23 || (v24 = *(v23 + 96)) == 0)
              {
                this = WebCore::threadGlobalDataSlow(this);
                v24 = this;
              }

              v25 = *(v24 + 5);
              if (!v25)
              {
                this = WebCore::ThreadGlobalData::initializeEventNames(v24);
                v25 = *(v24 + 5);
              }

              if (*(a2 + 32) != *(v25 + 1280))
              {
                goto LABEL_45;
              }
            }

            if (*(v2 + 12) == 6)
            {
              this = (*(**(v4 + 72) + 1080))(*(v4 + 72), v2);
              if ((this & 1) == 0)
              {
                goto LABEL_95;
              }
            }

            else
            {
LABEL_45:
              v26 = *(StatusReg + 736);
              if (!v26 || (v27 = *(v26 + 96)) == 0)
              {
                this = WebCore::threadGlobalDataSlow(this);
                v27 = this;
              }

              v28 = *(v27 + 5);
              if (!v28)
              {
                this = WebCore::ThreadGlobalData::initializeEventNames(v27);
                v28 = *(v27 + 5);
              }

              if (*(a2 + 32) == *(v28 + 1264) && *(v2 + 12) == 2)
              {
                this = (*(**(v4 + 72) + 1088))(*(v4 + 72), v2);
                if ((this & 1) == 0)
                {
                  goto LABEL_95;
                }
              }

              else
              {
                v29 = *(StatusReg + 736);
                if (!v29 || (v30 = *(v29 + 96)) == 0)
                {
                  this = WebCore::threadGlobalDataSlow(this);
                  v30 = this;
                }

                v31 = *(v30 + 5);
                if (!v31)
                {
                  this = WebCore::ThreadGlobalData::initializeEventNames(v30);
                  v31 = *(v30 + 5);
                }

                if (*(a2 + 32) == *(v31 + 1256) && *(v2 + 12) == 2)
                {
                  this = (*(**(v4 + 72) + 1096))(*(v4 + 72), v2);
                  if ((this & 1) == 0)
                  {
                    goto LABEL_95;
                  }
                }

                else
                {
                  v32 = *(StatusReg + 736);
                  if (!v32 || (v33 = *(v32 + 96)) == 0)
                  {
                    this = WebCore::threadGlobalDataSlow(this);
                    v33 = this;
                  }

                  v34 = *(v33 + 5);
                  if (!v34)
                  {
                    this = WebCore::ThreadGlobalData::initializeEventNames(v33);
                    v34 = *(v33 + 5);
                  }

                  if (*(a2 + 32) == *(v34 + 520) && !*(v2 + 12))
                  {
                    this = (*(**(v4 + 72) + 1104))(*(v4 + 72), v2);
                    if ((this & 1) == 0)
                    {
                      goto LABEL_95;
                    }
                  }

                  else
                  {
                    v35 = *(StatusReg + 736);
                    if (!v35 || (v36 = *(v35 + 96)) == 0)
                    {
                      this = WebCore::threadGlobalDataSlow(this);
                      v36 = this;
                    }

                    v37 = *(v36 + 5);
                    if (!v37)
                    {
                      this = WebCore::ThreadGlobalData::initializeEventNames(v36);
                      v37 = *(v36 + 5);
                    }

                    if (*(a2 + 32) != *(v37 + 1064) || *(v2 + 12) != 7)
                    {
                      v38 = *(StatusReg + 736);
                      if (!v38 || (v39 = *(v38 + 96)) == 0)
                      {
                        this = WebCore::threadGlobalDataSlow(this);
                        v39 = this;
                      }

                      v40 = *(v39 + 5);
                      if (!v40)
                      {
                        this = WebCore::ThreadGlobalData::initializeEventNames(v39);
                        v40 = *(v39 + 5);
                      }

                      if (*(a2 + 32) != *(v40 + 1088) || *(v2 + 12) != 8)
                      {
                        goto LABEL_95;
                      }
                    }

                    this = (*(**(v4 + 72) + 1112))(*(v4 + 72), v2);
                    if ((this & 1) == 0)
                    {
                      goto LABEL_95;
                    }
                  }
                }
              }
            }

            goto LABEL_94;
          }
        }
      }

      v16 = *(*(*(*(v4 + 64) + 48) + 8) + 552);
      if (v16)
      {
        v17 = *(v16 + 8);
        if (v17)
        {
          v18 = 0;
          ++v17[4];
          goto LABEL_27;
        }
      }

      else
      {
        v17 = 0;
      }

      v18 = 1;
LABEL_27:
      if (v9 == 1)
      {
        v43 = 0;
      }

      else
      {
        if (v9)
        {
          goto LABEL_90;
        }

        WebKit::PluginView::focusPluginElement(v4);
        v19 = *(v4 + 64);
        *(v19 + 7) += 2;
        v43 = v19;
      }

      WebCore::EventHandler::setCapturingMouseEventsElement();
      if (v43)
      {
        if (*(v43 + 7) == 2)
        {
          WebCore::Node::removedLastRef(v43);
        }

        else
        {
          *(v43 + 7) -= 2;
        }
      }

LABEL_90:
      if (*(v2 + 12) >= 6u)
      {
        goto LABEL_107;
      }

      this = (*(**(v4 + 72) + 1072))(*(v4 + 72), v2);
      v41 = this;
      if (v18)
      {
        if (!this)
        {
          goto LABEL_95;
        }
      }

      else
      {
        if (v17[4] != 1)
        {
          --v17[4];
          if ((this & 1) == 0)
          {
            goto LABEL_95;
          }

          goto LABEL_94;
        }

        this = (*(*v17 + 8))(v17);
        if ((v41 & 1) == 0)
        {
LABEL_95:
          if (atomic_load((v2 + 8)))
          {
            atomic_fetch_add((v2 + 8), 0xFFFFFFFF);
            return this;
          }

LABEL_107:
          __break(0xC471u);
          JUMPOUT(0x19E33E574);
        }
      }

LABEL_94:
      *(a2 + 28) |= 0x80u;
      goto LABEL_95;
    }
  }

  return this;
}

_DWORD *WebKit::PluginView::focusPluginElement(WebKit::PluginView *this)
{
  v1 = *(this + 8);
  v2 = *(*(*(v1 + 48) + 8) + 552);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_13;
  }

  v3 = *(v2 + 8);
  if (!v3)
  {
LABEL_13:
    v4 = 1;
    goto LABEL_4;
  }

  v4 = 0;
  ++*(v3 + 16);
LABEL_4:
  *(v1 + 28) += 2;
  v5 = *(v3 + 24);
  if (v5 && (v6 = *(v5 + 8)) != 0)
  {
    v8 = *(v6 + 8);
    v7 = (v6 + 8);
    *v7 = v8 + 1;
    WebCore::FocusController::setFocusedElement();
    result = WTF::RefCounted<WebCore::Page>::deref(v7);
  }

  else
  {
    v10 = *(v3 + 224);
    if (v10)
    {
      *(v10 + 7) += 2;
      result = WebCore::Document::setFocusedElement(v10, v1);
      if (*(v10 + 7) == 2)
      {
        result = WebCore::Node::removedLastRef(v10);
      }

      else
      {
        *(v10 + 7) -= 2;
      }
    }

    else
    {
      result = WebCore::Document::setFocusedElement(0, v1);
    }
  }

  if (*(v1 + 28) == 2)
  {
    result = WebCore::Node::removedLastRef(v1);
    if (v4)
    {
      return result;
    }
  }

  else
  {
    *(v1 + 28) -= 2;
    if (v4)
    {
      return result;
    }
  }

  if (*(v3 + 16) == 1)
  {
    return (*(*v3 + 8))(v3);
  }

  --*(v3 + 16);
  return result;
}

uint64_t WebKit::PluginView::willDetachRenderer(uint64_t this)
{
  if (*(this + 137) == 1)
  {
    return (*(**(this + 72) + 944))();
  }

  return this;
}

uint64_t WebKit::PluginView::scrollableArea(WebKit::PluginView *this)
{
  if (*(this + 137) == 1)
  {
    return *(this + 9);
  }

  else
  {
    return 0;
  }
}

uint64_t WebKit::PluginView::usesAsyncScrolling(WebKit::PluginView *this)
{
  if (*(this + 137) == 1)
  {
    return (*(**(this + 9) + 664))();
  }

  else
  {
    return 0;
  }
}

uint64_t WebKit::PluginView::scrollingNodeID@<X0>(uint64_t this@<X0>, _BYTE *a2@<X8>)
{
  if (*(this + 137))
  {
    return (*(**(this + 72) + 296))();
  }

  *a2 = 0;
  a2[16] = 0;
  return this;
}

uint64_t WebKit::PluginView::willAttachScrollingNode(uint64_t this)
{
  if (*(this + 137) == 1)
  {
    return (*(**(this + 72) + 1288))();
  }

  return this;
}

uint64_t WebKit::PluginView::didAttachScrollingNode(uint64_t this)
{
  if (*(this + 137) == 1)
  {
    return (*(**(this + 72) + 1296))();
  }

  return this;
}

void WebKit::PluginView::liveResourceData(id **this@<X0>, id **a2@<X8>)
{
  if (*(this + 137))
  {
    WebKit::PDFPluginBase::liveResourceData(this[9], a2);
  }

  else if (*(this + 52) == 2)
  {
    v2 = this[60];
    if (v2)
    {
      atomic_fetch_add(v2 + 2, 1u);
    }

    *a2 = v2;
  }

  else
  {
    *a2 = 0;
  }
}

uint64_t WebKit::PluginView::notifyWidget(uint64_t result, void *a2)
{
  v2 = result;
  if (a2 != 1)
  {
    if (a2 || *(result + 137) != 1)
    {
      return result;
    }

    v3 = *(*(*(*(*(*(result + 64) + 48) + 8) + 552) + 8) + 216);
    if (!v3)
    {
      goto LABEL_15;
    }

    ++*(v3 + 2);
    result = WebCore::LocalFrameView::paintBehavior(v3);
    v4 = *(v3 + 2) - 1;
    v5 = result & 0x105;
    if ((result & 0x105) != 0)
    {
      if (*(v3 + 2) != 1)
      {
        *(v3 + 2) = v4;
        return result;
      }
    }

    else if (*(v3 + 2) != 1)
    {
      *(v3 + 2) = v4;
LABEL_15:
      result = (*(**(v2 + 72) + 960))(*(v2 + 72));
      if (result)
      {
        (*(**(v2 + 72) + 968))(&v9);
        v7 = v9;
        v9 = 0;
        result = *(v2 + 488);
        *(v2 + 488) = v7;
        if (result)
        {
          WTF::ThreadSafeRefCounted<WebCore::ShareableBitmap,(WTF::DestructionThread)0>::deref(result, v6);
          result = v9;
          v9 = 0;
          if (result)
          {
            return WTF::ThreadSafeRefCounted<WebCore::ShareableBitmap,(WTF::DestructionThread)0>::deref(result, v8);
          }
        }
      }

      return result;
    }

    result = (*(*v3 + 8))(v3);
    if (v5)
    {
      return result;
    }

    goto LABEL_15;
  }

  result = *(result + 488);
  *(v2 + 488) = 0;
  if (result)
  {

    return WTF::ThreadSafeRefCounted<WebCore::ShareableBitmap,(WTF::DestructionThread)0>::deref(result, a2);
  }

  return result;
}

uint64_t WebKit::PluginView::show(WebKit::PluginView *this)
{
  if ((*(this + 24) & 1) == 0)
  {
    *(this + 24) = 1;
    goto LABEL_5;
  }

  v2 = *(this + 25);
  *(this + 24) = 1;
  if ((v2 & 1) == 0)
  {
LABEL_5:
    WebKit::PluginView::viewVisibilityDidChange(this);
  }

  return MEMORY[0x1EEE5AEA8](this);
}

uint64_t WebKit::PluginView::hide(WebKit::PluginView *this)
{
  if (*(this + 24))
  {
    v2 = *(this + 25);
    *(this + 24) = 0;
    if (v2 == 1)
    {
      WebKit::PluginView::viewVisibilityDidChange(this);
    }
  }

  else
  {
    *(this + 24) = 0;
  }

  return MEMORY[0x1EEE5AEA0](this);
}

_BYTE *WebKit::PluginView::setParentVisible(_BYTE *this, int a2)
{
  if (this[25] != a2)
  {
    this[25] = a2;
    return WebKit::PluginView::viewVisibilityDidChange(this);
  }

  return this;
}

_BYTE *WebKit::PluginView::frameViewLayoutOrVisualViewportChanged(_BYTE *this, const WebCore::IntRect *a2)
{
  if (this[137] == 1)
  {
    v2 = this;
    this = WebCore::Widget::parent(this);
    if (this)
    {
      v3 = *(**(v2 + 9) + 1496);

      return v3();
    }
  }

  return this;
}

uint64_t WebKit::PluginView::invalidateRect(WebKit::PluginView *this, const WebCore::IntRect *a2)
{
  result = WebCore::Widget::parent(this);
  if (result)
  {
    if (*(this + 137) == 1)
    {
      result = (*(**(this + 9) + 952))(*(this + 9));
      if ((result & 1) == 0)
      {
        v5 = *(*(this + 8) + 72);
        if (v5)
        {
          if ((*(v5 + 45) & 2) != 0)
          {
            __break(0xC471u);
          }

          else
          {
            if (*(v5 + 46) != 7)
            {
              return result;
            }

            ++*(v5 + 16);
            v6 = *(*(v5 + 88) + 24);
            if ((*(v6 + 196) & 0xE) != 0)
            {
              v7 = *(v6 + 200);
              if (*(v7 + 5) == 1 && *(v7 + 76) == 4)
              {
                if (*(v7 + 78) == 1)
                {
                  v8 = *(v7 + 72);
                }

                else
                {
                  v8 = *(v7 + 72);
                }
              }

              else
              {
                v8 = *(v6 + 192);
              }
            }

            else
            {
              v8 = 0.0;
            }

            v9 = v8 * 64.0;
            if (v9 >= 2147483650.0)
            {
              v10 = 0x7FFFFFFF;
            }

            else if (v9 <= -2147483650.0)
            {
              v10 = 0x80000000;
            }

            else
            {
              v10 = v9;
            }

            v11 = *(a2 + 1);
            v12 = *a2;
            v13 = *(a2 + 1);
            v14 = *(v6 + 100);
            if ((v14 | 8) == 0xB)
            {
              v15 = (*(*v5 + 1104))(v5);
              v14 = *(v6 + 100);
            }

            else
            {
              v15 = 0;
            }

            v35.i32[0] = 0;
            v35.i8[6] = 0;
            v35.i8[4] = v14;
            v35.i8[5] = *(v6 + 101);
            v35.i8[7] = *(v6 + 103);
            if ((v14 - 2) >= 9)
            {
              if (v14 == 11)
              {
                v35.i32[0] = *(v6 + 96);
                WebCore::Length::ref(&v35);
              }
            }

            else
            {
              v35.i8[6] = *(v6 + 102);
              v35.i32[0] = *(v6 + 96);
            }

            v36 = v15;
            v16 = WebCore::minimumValueForLengthWithLazyMaximum<WebCore::LayoutUnit,WebCore::LayoutUnit,WebCore::minimumValueForLength(WebCore::Length const&,WebCore::LayoutUnit)::{lambda(void)#1}>(&v35, &v36);
            if (v35.u8[4] == 11)
            {
              WebCore::Length::deref(&v35);
            }

            v17 = v10 + v16;
            if (__OFADD__(v10, v16))
            {
              v17 = (v10 >> 31) + 0x7FFFFFFF;
            }

            if (v17 >= 0)
            {
              v18 = v17;
            }

            else
            {
              v18 = v17 + 63;
            }

            v19 = *(*(v5 + 88) + 24);
            if ((*(v19 + 124) & 0xE) != 0)
            {
              v20 = *(v19 + 200);
              if (*(v20 + 5) == 1 && *(v20 + 52) == 4)
              {
                if (*(v20 + 54) == 1)
                {
                  v21 = *(v20 + 48);
                }

                else
                {
                  v21 = *(v20 + 48);
                }
              }

              else
              {
                v21 = *(v19 + 120);
              }
            }

            else
            {
              v21 = 0.0;
            }

            v22 = v21 * 64.0;
            if (v22 >= 2147483650.0)
            {
              v23 = 0x7FFFFFFF;
            }

            else if (v22 <= -2147483650.0)
            {
              v23 = 0x80000000;
            }

            else
            {
              v23 = v22;
            }

            v24 = *(v19 + 76);
            if ((v24 | 8) == 0xB)
            {
              v25 = (*(*v5 + 1104))(v5);
              v24 = *(v19 + 76);
            }

            else
            {
              v25 = 0;
            }

            v35.i32[0] = 0;
            v35.i8[6] = 0;
            v35.i8[4] = v24;
            v35.i8[5] = *(v19 + 77);
            v35.i8[7] = *(v19 + 79);
            if ((v24 - 2) >= 9)
            {
              if (v24 == 11)
              {
                v35.i32[0] = *(v19 + 72);
                WebCore::Length::ref(&v35);
              }
            }

            else
            {
              v35.i8[6] = *(v19 + 78);
              v35.i32[0] = *(v19 + 72);
            }

            v26 = v18 >> 6;
            v36 = v25;
            v27 = WebCore::minimumValueForLengthWithLazyMaximum<WebCore::LayoutUnit,WebCore::LayoutUnit,WebCore::minimumValueForLength(WebCore::Length const&,WebCore::LayoutUnit)::{lambda(void)#1}>(&v35, &v36);
            if (v35.u8[4] == 11)
            {
              WebCore::Length::deref(&v35);
            }

            v28 = v23 + v27;
            if (__OFADD__(v23, v27))
            {
              v28 = (v23 >> 31) + 0x7FFFFFFF;
            }

            v29.i32[0] = v26 + v12;
            v29.i32[1] = v13 + v28 / 64;
            v29.i64[1] = v11;
            v30.i64[0] = 0xFE000000FE000000;
            v30.i64[1] = 0xFE000000FE000000;
            v31 = vcgtq_s32(v29, v30);
            v32.i64[0] = 0xFE000000FE000000;
            v32.i64[1] = 0xFE000000FE000000;
            v33.i64[0] = 0x8000000080000000;
            v33.i64[1] = 0x8000000080000000;
            v35 = vorrq_s8((*&v31 & __PAIR128__(0x7FFFFFFF7FFFFFFFLL, 0x7FFFFFFF7FFFFFFFLL)), vbicq_s8(vbslq_s8(vcgtq_s32(v32, v29), v33, vshlq_n_s32(v29, 6uLL)), v31));
            result = WebCore::RenderObject::repaintRectangle(v5, &v35);
            v34 = *(v5 + 16);
            if (v34)
            {
              *(v5 + 16) = v34 - 1;
              return result;
            }

            __break(0xC471u);
          }

          JUMPOUT(0x19E33F01CLL);
        }
      }
    }
  }

  return result;
}

uint64_t WebKit::PluginView::didSameDocumentNavigationForFrame(uint64_t this, WebFrame *a2)
{
  if (*(this + 137) == 1)
  {
    return (*(**(this + 72) + 1392))(*(this + 72), a2);
  }

  return this;
}

uint64_t WebKit::WebPluginInfoProvider::singleton(WebKit::WebPluginInfoProvider *this)
{
  {
    return WebKit::WebPluginInfoProvider::singleton(void)::pluginInfoProvider;
  }

  result = WTF::fastMalloc(0x28);
  *(result + 16) = 1;
  *(result + 24) = 0;
  *(result + 32) = 0;
  *result = &unk_1F112EC60;
  *(result + 8) = 0;
  WebKit::WebPluginInfoProvider::singleton(void)::pluginInfoProvider = result;
  return result;
}

void WebKit::pluginInfoVector(WebKit *this, WebCore::Page *a2)
{
  v4[7] = *MEMORY[0x1E69E9840];
  if ((*(a2 + 740) & 0x10) != 0 || (*(a2 + 746) & 2) != 0)
  {
    WebKit::PDFPluginBase::pluginInfo(v4);
    WTF::Vector<WebCore::PluginInfo,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(this, v4, 1uLL);
    WebCore::PluginInfo::~PluginInfo(v4, v3);
  }

  else
  {
    *this = 0;
    *(this + 1) = 0;
  }
}

WebKit::SpeechRecognitionRealtimeMediaSourceManager *WebKit::SpeechRecognitionRealtimeMediaSourceManager::SpeechRecognitionRealtimeMediaSourceManager(WebKit::SpeechRecognitionRealtimeMediaSourceManager *this, WebKit::WebProcess *a2)
{
  *this = &unk_1F112E320;
  *(this + 1) = 0;
  *(this + 2) = &unk_1F112E378;
  WTF::WeakPtrFactory<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(a2 + 2, a2);
  v4 = *(a2 + 1);
  atomic_fetch_add(v4, 1u);
  *(this + 3) = v4;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  v7 = -113;
  WTF::HashMap<IPC::ReceiverName,WTF::WeakPtr<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::IntHash<IPC::ReceiverName>,WTF::StrongEnumHashTraits<IPC::ReceiverName>,WTF::HashTraits<WTF::WeakPtr<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::inlineSet<IPC::ReceiverName const&,IPC::MessageReceiver&>(a2 + 6, &v7, this, &v6);
  return this;
}

void WebKit::SpeechRecognitionRealtimeMediaSourceManager::~SpeechRecognitionRealtimeMediaSourceManager(WebKit::SpeechRecognitionRealtimeMediaSourceManager *this)
{
  v1 = *(*(this + 3) + 8);
  if (v1)
  {
    IPC::MessageReceiverMap::removeMessageReceiver((v1 + 48), this);
    v4 = *(this + 7);
    *(this + 7) = 0;
    if (v4)
    {
      WTF::RefCounted<WebKit::SandboxExtension>::deref(v4);
    }

    v5 = *(this + 6);
    *(this + 6) = 0;
    if (v5)
    {
      WTF::RefCounted<WebKit::SandboxExtension>::deref(v5);
    }

    v6 = *(this + 5);
    *(this + 5) = 0;
    if (v6)
    {
      WTF::RefCounted<WebKit::SandboxExtension>::deref(v6);
    }

    v7 = *(this + 4);
    if (v7)
    {
      WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::RealtimeMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::RealtimeMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::SpeechRecognitionRealtimeMediaSourceManager::Source>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::RealtimeMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::SpeechRecognitionRealtimeMediaSourceManager::Source>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RealtimeMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::RealtimeMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::SpeechRecognitionRealtimeMediaSourceManager::Source>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RealtimeMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RealtimeMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<std::unique_ptr<WebKit::SpeechRecognitionRealtimeMediaSourceManager::Source>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RealtimeMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::deallocateTable(v7, v3);
    }

    v8 = *(this + 3);
    *(this + 3) = 0;
    if (v8)
    {
      if (atomic_fetch_add(v8, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v8);
        WTF::fastFree(v8, v3);
      }
    }

    *this = &unk_1F10EA5E0;
    WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::~WeakPtrFactory(this + 1, v3);
  }

  else
  {
    __break(0xC471u);
  }
}

{
  WebKit::SpeechRecognitionRealtimeMediaSourceManager::~SpeechRecognitionRealtimeMediaSourceManager(this);

  bmalloc::api::tzoneFree(v1, v2);
}

void non-virtual thunk toWebKit::SpeechRecognitionRealtimeMediaSourceManager::~SpeechRecognitionRealtimeMediaSourceManager(WebKit::SpeechRecognitionRealtimeMediaSourceManager *this)
{
  WebKit::SpeechRecognitionRealtimeMediaSourceManager::~SpeechRecognitionRealtimeMediaSourceManager((this - 16));
}

{
  WebKit::SpeechRecognitionRealtimeMediaSourceManager::~SpeechRecognitionRealtimeMediaSourceManager((this - 16));

  bmalloc::api::tzoneFree(v1, v2);
}

uint64_t WebKit::SpeechRecognitionRealtimeMediaSourceManager::ref(uint64_t this)
{
  if (!*(*(this + 24) + 8))
  {
    this = 92;
    __break(0xC471u);
  }

  return this;
}

uint64_t WebKit::SpeechRecognitionRealtimeMediaSourceManager::deref(uint64_t this)
{
  if (!*(*(this + 24) + 8))
  {
    this = 92;
    __break(0xC471u);
  }

  return this;
}

uint64_t WebKit::SpeechRecognitionRealtimeMediaSourceManager::createSource(void *a1, uint64_t a2)
{
  WebCore::SpeechRecognitionCaptureSource::createRealtimeMediaSource();
  if (v33)
  {
    v4 = *(a1[3] + 8);
    if (!v4)
    {
      goto LABEL_41;
    }

    v5 = *(v4 + 40);
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
        goto LABEL_8;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v5);
LABEL_8:
    NonCompactSlow = bmalloc::api::tzoneAllocateNonCompactSlow();
    v9 = WebCore::RealtimeMediaSourceObserver::RealtimeMediaSourceObserver(NonCompactSlow);
    *(v9 + 24) = 0;
    *v9 = &unk_1F112ECE8;
    *(v9 + 16) = &unk_1F112ED70;
    *(v9 + 32) = a2;
    *(v9 + 40) = v33;
    *(v9 + 48) = v5;
    *(v9 + 56) = 0;
    *(v9 + 64) = 0;
    *(v9 + 144) = 0;
    WebCore::RealtimeMediaSource::addObserver(v33, NonCompactSlow);
    WebCore::RealtimeMediaSource::addAudioSampleObserver();
    if (a2 == -1)
    {
      __break(0xC471u);
      JUMPOUT(0x19E33F9CCLL);
    }

    if (!a2)
    {
LABEL_41:
      __break(0xC471u);
      JUMPOUT(0x19E33F9ACLL);
    }

    v11 = a1[4];
    if (!v11)
    {
      WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::RealtimeMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::RealtimeMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::SpeechRecognitionRealtimeMediaSourceManager::Source>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::RealtimeMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::SpeechRecognitionRealtimeMediaSourceManager::Source>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RealtimeMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::RealtimeMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::SpeechRecognitionRealtimeMediaSourceManager::Source>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RealtimeMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RealtimeMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<std::unique_ptr<WebKit::SpeechRecognitionRealtimeMediaSourceManager::Source>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RealtimeMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand(a1 + 4);
      v11 = a1[4];
    }

    v12 = *(v11 - 8);
    v13 = (~(a2 << 32) + a2) ^ ((~(a2 << 32) + a2) >> 22);
    v14 = 9 * ((v13 + ~(v13 << 13)) ^ ((v13 + ~(v13 << 13)) >> 8));
    v15 = (v14 ^ (v14 >> 15)) + ~((v14 ^ (v14 >> 15)) << 27);
    v16 = v12 & ((v15 >> 31) ^ v15);
    v17 = (v11 + 16 * v16);
    v18 = *v17;
    if (*v17)
    {
      v19 = 0;
      v20 = 1;
      do
      {
        if (v18 == a2)
        {
          (*(*NonCompactSlow + 8))(NonCompactSlow);
          goto LABEL_33;
        }

        if (v18 == -1)
        {
          v19 = v17;
        }

        v16 = (v16 + v20) & v12;
        v17 = (v11 + 16 * v16);
        v18 = *v17;
        ++v20;
      }

      while (*v17);
      if (v19)
      {
        *v19 = 0;
        v19[1] = 0;
        --*(a1[4] - 16);
        v17 = v19;
      }
    }

    v21 = v17[1];
    *v17 = a2;
    v17[1] = NonCompactSlow;
    if (v21)
    {
      (*(*v21 + 8))(v21);
    }

    v22 = a1[4];
    if (v22)
    {
      v23 = *(v22 - 12) + 1;
    }

    else
    {
      v23 = 1;
    }

    *(v22 - 12) = v23;
    v30 = (*(v22 - 16) + v23);
    v31 = *(v22 - 4);
    if (v31 > 0x400)
    {
      if (v31 > 2 * v30)
      {
        goto LABEL_33;
      }

      goto LABEL_32;
    }

    if (3 * v31 <= 4 * v30)
    {
LABEL_32:
      WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::RealtimeMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::RealtimeMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::SpeechRecognitionRealtimeMediaSourceManager::Source>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::RealtimeMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::SpeechRecognitionRealtimeMediaSourceManager::Source>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RealtimeMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::RealtimeMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::SpeechRecognitionRealtimeMediaSourceManager::Source>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RealtimeMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RealtimeMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<std::unique_ptr<WebKit::SpeechRecognitionRealtimeMediaSourceManager::Source>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RealtimeMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand(a1 + 4);
    }
  }

  else
  {
    v24 = qword_1ED640D38;
    if (os_log_type_enabled(qword_1ED640D38, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_19D52D000, v24, OS_LOG_TYPE_ERROR, "Failed to create realtime source", buf, 2u);
    }

    v26 = IPC::Encoder::operator new(0x238, v25);
    *v26 = 1745;
    *(v26 + 68) = 0;
    *(v26 + 70) = 0;
    *(v26 + 69) = 0;
    *(v26 + 2) = 0;
    *(v26 + 3) = 0;
    *(v26 + 1) = 0;
    IPC::Encoder::encodeHeader(v26);
    *buf = v26;
    IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v26, a2);
    (*(a1[2] + 32))(a1 + 2, buf, 0);
    v27 = *buf;
    *buf = 0;
    if (v27)
    {
      IPC::Encoder::~Encoder(v27, v10);
      bmalloc::api::tzoneFree(v28, v29);
    }
  }

LABEL_33:
  if (v34 && atomic_fetch_add_explicit(v34, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v34, v10);
  }

  return 0;
}

uint64_t *WebKit::SpeechRecognitionRealtimeMediaSourceManager::deleteSource(uint64_t *result, uint64_t a2)
{
  v3 = result + 4;
  v2 = result[4];
  if (v2)
  {
    if (a2 == -1 || !a2)
    {
      __break(0xC471u);
      JUMPOUT(0x19E33FB58);
    }

    v4 = *(v2 - 8);
    v5 = (~(a2 << 32) + a2) ^ ((~(a2 << 32) + a2) >> 22);
    v6 = 9 * ((v5 + ~(v5 << 13)) ^ ((v5 + ~(v5 << 13)) >> 8));
    v7 = (v6 ^ (v6 >> 15)) + ~((v6 ^ (v6 >> 15)) << 27);
    v8 = v4 & ((v7 >> 31) ^ v7);
    v9 = *(v2 + 16 * v8);
    if (v9 != a2)
    {
      v10 = 1;
      while (v9)
      {
        v8 = (v8 + v10) & v4;
        v9 = *(v2 + 16 * v8);
        ++v10;
        if (v9 == a2)
        {
          goto LABEL_10;
        }
      }

      v8 = *(v2 - 4);
    }

LABEL_10:
    v11 = *(v2 - 4);
    if (v8 != v11)
    {
      v12 = (v2 + 16 * v8);
      result = v12[1];
      *v12 = -1;
      v12[1] = 0;
      if (result)
      {
        result = (*(*result + 8))(result);
        v2 = *v3;
        LODWORD(v11) = *(*v3 - 4);
      }

      v13 = vadd_s32(*(v2 - 16), 0xFFFFFFFF00000001);
      *(v2 - 16) = v13;
      if (6 * v13.i32[1] < v11 && v11 >= 9)
      {

        return WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::RealtimeMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::RealtimeMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::SpeechRecognitionRealtimeMediaSourceManager::Source>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::RealtimeMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::SpeechRecognitionRealtimeMediaSourceManager::Source>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RealtimeMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::RealtimeMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::SpeechRecognitionRealtimeMediaSourceManager::Source>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RealtimeMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RealtimeMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<std::unique_ptr<WebKit::SpeechRecognitionRealtimeMediaSourceManager::Source>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RealtimeMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash(v3, v11 >> 1);
      }
    }
  }

  return result;
}

uint64_t WebKit::SpeechRecognitionRealtimeMediaSourceManager::start(uint64_t a1, uint64_t a2)
{
  result = WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::RealtimeMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::SpeechRecognitionRealtimeMediaSourceManager::Source>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RealtimeMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RealtimeMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<std::unique_ptr<WebKit::SpeechRecognitionRealtimeMediaSourceManager::Source>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::RealtimeMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::SpeechRecognitionRealtimeMediaSourceManager::Source>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RealtimeMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RealtimeMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<std::unique_ptr<WebKit::SpeechRecognitionRealtimeMediaSourceManager::Source>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RealtimeMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::ObjectIdentifierGeneric<WebCore::RealtimeMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>((a1 + 32), a2);
  if (result)
  {
    v3 = *(result + 40);

    return WebCore::RealtimeMediaSource::start(v3);
  }

  return result;
}

uint64_t WebKit::SpeechRecognitionRealtimeMediaSourceManager::stop(uint64_t a1, uint64_t a2)
{
  result = WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::RealtimeMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::SpeechRecognitionRealtimeMediaSourceManager::Source>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RealtimeMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RealtimeMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<std::unique_ptr<WebKit::SpeechRecognitionRealtimeMediaSourceManager::Source>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::RealtimeMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::SpeechRecognitionRealtimeMediaSourceManager::Source>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RealtimeMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RealtimeMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<std::unique_ptr<WebKit::SpeechRecognitionRealtimeMediaSourceManager::Source>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RealtimeMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::ObjectIdentifierGeneric<WebCore::RealtimeMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>((a1 + 32), a2);
  if (result)
  {
    v3 = *(result + 40);

    return WebCore::RealtimeMediaSource::stop(v3);
  }

  return result;
}

uint64_t WebKit::SpeechRecognitionRealtimeMediaSourceManager::messageSenderConnection(WebKit::SpeechRecognitionRealtimeMediaSourceManager *this)
{
  v1 = *(*(this + 3) + 8);
  if (v1)
  {
    return *(v1 + 40);
  }

  result = 92;
  __break(0xC471u);
  return result;
}

uint64_t non-virtual thunk toWebKit::SpeechRecognitionRealtimeMediaSourceManager::messageSenderConnection(WebKit::SpeechRecognitionRealtimeMediaSourceManager *this)
{
  v1 = *(*(this + 1) + 8);
  if (v1)
  {
    return *(v1 + 40);
  }

  result = 92;
  __break(0xC471u);
  return result;
}

uint64_t WebKit::RemoteWorkerFrameLoaderClient::RemoteWorkerFrameLoaderClient(uint64_t a1, WebCore::FrameLoader *a2, uint64_t a3, uint64_t a4, atomic_uint **a5)
{
  v17 = *MEMORY[0x1E69E9840];
  v9 = WebCore::LocalFrameLoaderClient::LocalFrameLoaderClient(a1, a2);
  *v9 = &unk_1F112E3C8;
  v9[2] = a3;
  v10 = *a5;
  if (*a5)
  {
    atomic_fetch_add_explicit(v10, 2u, memory_order_relaxed);
  }

  *(a1 + 24) = v10;
  *(a1 + 32) = 0;
  *(a1 + 64) = 0;
  v11 = qword_1ED6415D0;
  if (os_log_type_enabled(qword_1ED6415D0, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 134218240;
    v14 = a3;
    v15 = 2048;
    v16 = a4;
    _os_log_impl(&dword_19D52D000, v11, OS_LOG_TYPE_DEFAULT, "RemoteWorkerFrameLoaderClient::RemoteWorkerFrameLoaderClient webPageProxyID %llu, pageID %llu", &v13, 0x16u);
  }

  return a1;
}

uint64_t WebKit::RemoteWorkerFrameLoaderClient::createDocumentLoader@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v6 = WTF::fastMalloc(0xE20);
  result = MEMORY[0x19EB051F0](v6, a1, a2);
  *a3 = result;
  return result;
}

WebKit::WebSWClientConnection *WebKit::WebSWClientConnection::WebSWClientConnection(WebKit::WebSWClientConnection *this)
{
  v2 = WebCore::SWClientConnection::SWClientConnection(this);
  *v2 = &unk_1F112E8A0;
  *(v2 + 3) = &unk_1F112EA10;
  *(v2 + 4) = &unk_1F112EA60;
  *(v2 + 5) = 0;
  *(this + 6) = WebCore::Process::identifier(v2);
  WTF::makeUniqueRefWithoutFastMallocCheck<WebKit::WebSWOriginTable>(v3, this + 7);
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 96) = 1;
  *(this + 13) = 0;
  return this;
}

void WebKit::WebSWClientConnection::~WebSWClientConnection(WebKit::WebSWClientConnection *this)
{
  WebCore::SWClientConnection::clearPendingJobs(this);
  v3 = *(this + 13);
  if (v3)
  {
    v4 = *(v3 - 4);
    if (v4)
    {
      v5 = (v3 + 8);
      do
      {
        if (*(v5 - 1) != -1)
        {
          v6 = *v5;
          *v5 = 0;
          if (v6)
          {
            (*(*v6 + 8))(v6);
          }
        }

        v5 += 2;
        --v4;
      }

      while (v4);
    }

    WTF::fastFree((v3 - 16), v2);
  }

  WTF::Deque<WTF::Function<void ()(void)>,0ul>::~Deque(this + 8, v2);
  v8 = *(this + 7);
  *(this + 7) = 0;
  if (v8)
  {
    v9 = *v8;
    *v8 = 0;
    if (v9)
    {
      WTF::ThreadSafeRefCounted<WebCore::SharedMemory,(WTF::DestructionThread)0>::deref(v9);
    }

    bmalloc::api::tzoneFree(v8, v7);
  }

  *(this + 4) = &unk_1F10EA5E0;
  WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::~WeakPtrFactory(this + 5, v7);

  MEMORY[0x1EEE57210](this);
}

{
  WebKit::WebSWClientConnection::~WebSWClientConnection(this);

  WTF::fastFree(v1, v2);
}

void non-virtual thunk toWebKit::WebSWClientConnection::~WebSWClientConnection(WebKit::WebSWClientConnection *this)
{
  WebKit::WebSWClientConnection::~WebSWClientConnection((this - 24));
}

{
  WebKit::WebSWClientConnection::~WebSWClientConnection((this - 32));
}

{
  WebKit::WebSWClientConnection::~WebSWClientConnection((this - 24));

  WTF::fastFree(v1, v2);
}

{
  WebKit::WebSWClientConnection::~WebSWClientConnection((this - 32));

  WTF::fastFree(v1, v2);
}

uint64_t WebKit::WebSWClientConnection::messageSenderConnection(WebKit::WebSWClientConnection *this, void *a2)
{
  {
    v2 = WebKit::WebProcess::singleton(void)::process;
  }

  else
  {
    v4 = WebKit::WebProcess::operator new(0x370, a2);
    v2 = WebKit::WebProcess::WebProcess(v4);
    WebKit::WebProcess::singleton(void)::process = v2;
  }

  return *(WebKit::WebProcess::ensureNetworkProcessConnection(v2) + 24);
}

uint64_t non-virtual thunk toWebKit::WebSWClientConnection::messageSenderConnection(WebKit::WebSWClientConnection *this, void *a2)
{
  {
    v2 = WebKit::WebProcess::singleton(void)::process;
  }

  else
  {
    v4 = WebKit::WebProcess::operator new(0x370, a2);
    v2 = WebKit::WebProcess::WebProcess(v4);
    WebKit::WebProcess::singleton(void)::process = v2;
  }

  return *(WebKit::WebProcess::ensureNetworkProcessConnection(v2) + 24);
}

unsigned int *WebKit::WebSWClientConnection::scheduleJobInServer(WebKit::WebSWClientConnection *this, const WebCore::ServiceWorkerJobData *a2)
{
  v53 = *MEMORY[0x1E69E9840];
  WTF::WeakPtrFactory<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(this + 10, this + 32);
  v4 = *(this + 5);
  atomic_fetch_add(v4, 1u);
  v30 = v4;
  v5 = *a2;
  if (*a2)
  {
    atomic_fetch_add_explicit(v5, 2u, memory_order_relaxed);
  }

  v31 = v5;
  v32 = *(a2 + 8);
  v33 = *(a2 + 24);
  v6 = *(a2 + 5);
  if (v6)
  {
    atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed);
  }

  v34 = v6;
  v7 = *(a2 + 4);
  v35 = *(a2 + 3);
  v36 = v7;
  LOBYTE(v37) = 0;
  v39 = -1;
  LODWORD(v8) = *(a2 + 104);
  if (!*(a2 + 104))
  {
    v9 = *(a2 + 10);
    if (v9)
    {
      atomic_fetch_add_explicit(v9, 2u, memory_order_relaxed);
    }

    *&v37 = v9;
    v8 = *(a2 + 11);
    if (v8)
    {
      atomic_fetch_add_explicit(v8, 2u, memory_order_relaxed);
    }

    *(&v37 + 1) = v8;
    v38 = *(a2 + 24);
    LOBYTE(v8) = *(a2 + 104);
    goto LABEL_11;
  }

  if (v8 != 255)
  {
    v37 = *(a2 + 5);
LABEL_11:
    v39 = v8;
  }

  v10 = *(a2 + 14);
  if (v10)
  {
    atomic_fetch_add_explicit(v10, 2u, memory_order_relaxed);
  }

  v40 = v10;
  v41 = *(a2 + 120);
  v42 = *(a2 + 136);
  v11 = *(a2 + 11);
  v43 = *(a2 + 10);
  v44 = v11;
  v45 = *(a2 + 12);
  v46 = *(a2 + 104);
  v12 = *(a2 + 27);
  if (v12)
  {
    atomic_fetch_add_explicit(v12, 2u, memory_order_relaxed);
  }

  v47 = v12;
  v48 = *(a2 + 224);
  LOBYTE(v49) = 0;
  v51 = 0;
  if (*(a2 + 248) == 1)
  {
    v13 = *(a2 + 29);
    if (v13)
    {
      atomic_fetch_add_explicit(v13, 2u, memory_order_relaxed);
    }

    v49 = v13;
    v50 = *(a2 + 120);
    v51 = 1;
  }

  v52 = *(a2 + 16);
  v14 = WTF::fastMalloc(0x130);
  v15 = v14;
  *v14 = &unk_1F112EE30;
  v30 = 0;
  *(v14 + 16) = v4;
  if (v5)
  {
    atomic_fetch_add_explicit(v5, 2u, memory_order_relaxed);
  }

  *(v14 + 32) = v5;
  v16 = v33;
  *(v14 + 40) = v32;
  *(v14 + 56) = v16;
  if (v6)
  {
    atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed);
  }

  *(v14 + 72) = v6;
  v17 = v36;
  *(v14 + 80) = v35;
  *(v14 + 96) = v17;
  mpark::detail::move_assignment<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::move_assignment((v14 + 112), &v37);
  v18 = v40;
  if (v40)
  {
    atomic_fetch_add_explicit(v40, 2u, memory_order_relaxed);
  }

  *(v15 + 144) = v18;
  v19 = v42;
  *(v15 + 152) = v41;
  *(v15 + 168) = v19;
  v20 = v46;
  v22 = v44;
  v21 = v45;
  *(v15 + 192) = v43;
  *(v15 + 208) = v22;
  *(v15 + 224) = v21;
  *(v15 + 240) = v20;
  v23 = v47;
  if (v47)
  {
    atomic_fetch_add_explicit(v47, 2u, memory_order_relaxed);
  }

  *(v15 + 248) = v23;
  *(v15 + 256) = v48;
  *(v15 + 264) = 0;
  *(v15 + 280) = 0;
  if (v51 == 1)
  {
    v24 = v49;
    if (v49)
    {
      atomic_fetch_add_explicit(v49, 2u, memory_order_relaxed);
    }

    *(v15 + 264) = v24;
    *(v15 + 272) = v50;
    *(v15 + 280) = 1;
  }

  *(v15 + 288) = v52;
  v29 = v15;
  WebKit::WebSWClientConnection::runOrDelayTaskForImport(this, &v29);
  v26 = v29;
  v29 = 0;
  if (v26)
  {
    (*(*v26 + 8))(v26);
  }

  WebCore::ServiceWorkerJobData::~ServiceWorkerJobData(&v31, v25);
  result = v30;
  v30 = 0;
  if (result)
  {
    if (atomic_fetch_add(result, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, result);
      return WTF::fastFree(result, v27);
    }
  }

  return result;
}

uint64_t WebKit::WebSWClientConnection::runOrDelayTaskForImport(uint64_t a1, uint64_t *a2)
{
  if (*(*(a1 + 56) + 32) == 1)
  {
    return (*(**a2 + 16))();
  }

  else
  {
    return WTF::Deque<WTF::Function<void ()(void)>,0ul>::append<WTF::Function<void ()(void)>>(a1 + 64, a2);
  }
}

IPC::Encoder *WebKit::WebSWClientConnection::finishFetchingScriptInServer(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v7 = a1 + 24;
  v8 = (*(*(a1 + 24) + 56))(a1 + 24);
  v10 = IPC::Encoder::operator new(0x238, v9);
  *v10 = 3100;
  *(v10 + 2) = 0;
  *(v10 + 3) = 0;
  *(v10 + 1) = v8;
  *(v10 + 68) = 0;
  *(v10 + 70) = 0;
  *(v10 + 69) = 0;
  IPC::Encoder::encodeHeader(v10);
  v15 = v10;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v10, *a2);
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v10, a2[1]);
  IPC::ArgumentCoder<WebCore::ServiceWorkerRegistrationKey,void>::encode(v10, a3);
  IPC::ArgumentCoder<WebCore::WorkerFetchResult,void>::encode(v10, a4);
  (*(*v7 + 32))(v7, &v15, 0);
  result = v15;
  v15 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v11);
    return bmalloc::api::tzoneFree(v13, v14);
  }

  return result;
}

IPC::Encoder *WebKit::WebSWClientConnection::addServiceWorkerRegistrationInServer(uint64_t a1, void *a2)
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

  v16 = a2;
  v17 = 0;
  WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerRegistrationIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,unsigned int,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerRegistrationIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerRegistrationIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<int>(v4 + 86, &v16, &v17, v15);
  ++*(v15[0] + 2);
  v6 = *(a1 + 24);
  v5 = a1 + 24;
  v7 = (*(v6 + 56))(v5);
  v9 = IPC::Encoder::operator new(0x238, v8);
  *v9 = 3093;
  *(v9 + 2) = 0;
  *(v9 + 3) = 0;
  *(v9 + 1) = v7;
  *(v9 + 68) = 0;
  *(v9 + 70) = 0;
  *(v9 + 69) = 0;
  IPC::Encoder::encodeHeader(v9);
  v15[0] = v9;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v9, a2);
  (*(*v5 + 32))(v5, v15, 0);
  result = v15[0];
  v15[0] = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v10);
    return bmalloc::api::tzoneFree(v12, v13);
  }

  return result;
}

WTF::RunLoop *WebKit::WebSWClientConnection::removeServiceWorkerRegistrationInServer(uint64_t a1, void *a2)
{
  {
    v4 = WebKit::WebProcess::singleton(void)::process;
  }

  else
  {
    v7 = WebKit::WebProcess::operator new(0x370, a2);
    v4 = WebKit::WebProcess::WebProcess(v7);
    WebKit::WebProcess::singleton(void)::process = v4;
  }

  result = WebKit::WebProcess::removeServiceWorkerRegistration(v4, a2);
  if (result)
  {
    WTF::RunLoop::mainSingleton(result);
    ++*(a1 + 8);
    v6 = WTF::fastMalloc(0x18);
    *v6 = &unk_1F112EE58;
    *(v6 + 1) = a2;
    *(v6 + 2) = a1;
    v8 = v6;
    WTF::RunLoop::dispatch();
    result = v8;
    if (v8)
    {
      return (*(*v8 + 8))(v8);
    }
  }

  return result;
}

uint64_t WebKit::WebSWClientConnection::scheduleUnregisterJobInServer(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  IdentifierInternal = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
  v10 = *(a1 + 24);
  v9 = a1 + 24;
  v11 = *a4;
  *a4 = 0;
  v12 = (*(v10 + 56))(v9);
  v14 = IPC::Encoder::operator new(0x238, v13);
  *v14 = 3115;
  *(v14 + 2) = 0;
  *(v14 + 3) = 0;
  *(v14 + 1) = v12;
  *(v14 + 68) = 0;
  *(v14 + 70) = 0;
  *(v14 + 69) = 0;
  IPC::Encoder::encodeHeader(v14);
  v24 = v14;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v14, IdentifierInternal);
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v14, a2);
  LOBYTE(v23[0]) = *(a3 + 32);
  IPC::Encoder::operator<<<BOOL>(v14, v23);
  IPC::ArgumentCoder<mpark::variant<WebCore::ProcessQualified<WTF::UUID>,WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,void>::encode<IPC::Encoder,mpark::variant<WebCore::ProcessQualified<WTF::UUID>,WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>> const&>(v14, a3, LOBYTE(v23[0]));
  v15 = WTF::fastMalloc(0x10);
  *v15 = &unk_1F112EE80;
  v15[1] = v11;
  if (WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1)
  {
    result = 141;
    __break(0xC471u);
  }

  else
  {
    v16 = v15;
    v17 = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
    v23[0] = v16;
    v23[1] = v17;
    (*(*v9 + 40))(v9, &v24, v23, 0);
    v19 = v23[0];
    v23[0] = 0;
    if (v19)
    {
      (*(*v19 + 8))(v19);
    }

    result = v24;
    v24 = 0;
    if (result)
    {
      IPC::Encoder::~Encoder(result, v18);
      return bmalloc::api::tzoneFree(v21, v22);
    }
  }

  return result;
}

IPC::Encoder *WebKit::WebSWClientConnection::postMessageToServiceWorker(WebKit::WebMessagePortChannelProvider *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = a1;
  v8 = a3 + 8;
  v9 = *(a3 + 8);
  v10 = *(a3 + 20);
  if (v10)
  {
    v11 = 32 * v10;
    do
    {
      v12 = WebKit::WebMessagePortChannelProvider::singleton(a1, a2);
      a1 = WebKit::WebMessagePortChannelProvider::messagePortSentToRemote(v12, v9);
      v9 += 4;
      v11 -= 32;
    }

    while (v11);
  }

  v14 = *(v7 + 3);
  v13 = v7 + 24;
  v15 = (*(v14 + 56))(v13);
  v17 = IPC::Encoder::operator new(0x238, v16);
  *v17 = 3108;
  *(v17 + 2) = 0;
  *(v17 + 3) = 0;
  *(v17 + 1) = v15;
  *(v17 + 68) = 0;
  *(v17 + 70) = 0;
  *(v17 + 69) = 0;
  IPC::Encoder::encodeHeader(v17);
  v22 = v17;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v17, a2);
  IPC::ArgumentCoder<WTF::RefPtr<WebCore::SerializedScriptValue,WTF::RawPtrTraits<WebCore::SerializedScriptValue>,WTF::DefaultRefDerefTraits<WebCore::SerializedScriptValue>>,void>::encode<IPC::Encoder,WebCore::SerializedScriptValue>(v17, a3);
  IPC::VectorArgumentCoder<false,std::pair<WebCore::MessagePortIdentifier,WebCore::MessagePortIdentifier>,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<std::pair<WebCore::MessagePortIdentifier,WebCore::MessagePortIdentifier>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(v17, v8);
  v23 = *(a4 + 32);
  IPC::Encoder::operator<<<BOOL>(v17, &v23);
  IPC::ArgumentCoder<mpark::variant<WebCore::ProcessQualified<WTF::UUID>,WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,void>::encode<IPC::Encoder,mpark::variant<WebCore::ProcessQualified<WTF::UUID>,WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>> const&>(v17, a4, v23);
  (*(*v13 + 32))(v13, &v22, 0);
  result = v22;
  v22 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v18);
    return bmalloc::api::tzoneFree(v20, v21);
  }

  return result;
}

IPC::Encoder *WebKit::WebSWClientConnection::registerServiceWorkerClient(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v9 = a1 + 24;
  v10 = (*(*(a1 + 24) + 56))(a1 + 24);
  v12 = IPC::Encoder::operator new(0x238, v11);
  *v12 = 3109;
  *(v12 + 2) = 0;
  *(v12 + 3) = 0;
  *(v12 + 1) = v10;
  *(v12 + 68) = 0;
  *(v12 + 70) = 0;
  *(v12 + 69) = 0;
  IPC::Encoder::encodeHeader(v12);
  v20 = v12;
  IPC::ArgumentCoder<WebCore::ClientOrigin,void>::encode(v12, a2);
  IPC::ArgumentCoder<WebCore::ServiceWorkerClientData,void>::encode(v12, a3);
  if (*(a4 + 8))
  {
    IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(v12, 1);
    if ((*(a4 + 8) & 1) == 0)
    {
      v19 = std::__throw_bad_optional_access[abi:sn200100]();
      return WebKit::WebSWClientConnection::unregisterServiceWorkerClient(v19);
    }

    IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v12, *a4);
  }

  else
  {
    v13 = IPC::Encoder::grow(v12, 1uLL, 1);
    if (!v14)
    {
      __break(0xC471u);
      JUMPOUT(0x19E340C48);
    }

    *v13 = 0;
  }

  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v12, a5);
  (*(*v9 + 32))(v9, &v20, 0);
  result = v20;
  v20 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v15);
    return bmalloc::api::tzoneFree(v17, v18);
  }

  return result;
}

IPC::Encoder *WebKit::WebSWClientConnection::unregisterServiceWorkerClient(uint64_t a1, uint64_t *a2)
{
  v3 = a1 + 24;
  v4 = (*(*(a1 + 24) + 56))(a1 + 24);
  v6 = IPC::Encoder::operator new(0x238, v5);
  *v6 = 3122;
  *(v6 + 2) = 0;
  *(v6 + 3) = 0;
  *(v6 + 1) = v4;
  *(v6 + 68) = 0;
  *(v6 + 70) = 0;
  *(v6 + 69) = 0;
  IPC::Encoder::encodeHeader(v6);
  v11 = v6;
  IPC::ArgumentCoder<WebCore::ProcessQualified<WTF::UUID>,void>::encode(v6, a2);
  (*(*v3 + 32))(v3, &v11, 0);
  result = v11;
  v11 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v7);
    return bmalloc::api::tzoneFree(v9, v10);
  }

  return result;
}

IPC::Encoder *WebKit::WebSWClientConnection::didResolveRegistrationPromise(WebKit::WebSWClientConnection *this, const WebCore::ServiceWorkerRegistrationKey *a2)
{
  v3 = this + 24;
  v4 = (*(*(this + 3) + 56))(this + 24);
  v6 = IPC::Encoder::operator new(0x238, v5);
  *v6 = 3097;
  *(v6 + 2) = 0;
  *(v6 + 3) = 0;
  *(v6 + 1) = v4;
  *(v6 + 68) = 0;
  *(v6 + 70) = 0;
  *(v6 + 69) = 0;
  IPC::Encoder::encodeHeader(v6);
  v11 = v6;
  IPC::ArgumentCoder<WebCore::ServiceWorkerRegistrationKey,void>::encode(v6, a2);
  (*(*v3 + 32))(v3, &v11, 0);
  result = v11;
  v11 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v7);
    return bmalloc::api::tzoneFree(v9, v10);
  }

  return result;
}

BOOL WebKit::WebSWOriginTable::contains(WebKit::WebSWOriginTable *this, const WebCore::SecurityOriginData *a2)
{
  WebCore::SecurityOriginData::toString(&v10, a2);
  v4 = WebCore::computeSharedStringHash(&v10, v3);
  Slot = WebKit::SharedStringHashTableReadOnly::findSlot(this, v4);
  if (Slot)
  {
    v7 = *Slot != 0;
  }

  else
  {
    v7 = 0;
  }

  v8 = v10;
  v10 = 0;
  if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v8, v6);
  }

  return v7;
}

atomic_uint *WebKit::WebSWClientConnection::setSWOriginTableSharedMemory(uint64_t a1)
{
  v1 = *(a1 + 56);
  result = WebCore::SharedMemory::map();
  if (v4)
  {
    v3 = v4;
    v4 = 0;
    WebKit::SharedStringHashTableReadOnly::setSharedMemory(v1, &v3);
    if (v3)
    {
      WTF::ThreadSafeRefCounted<WebCore::SharedMemory,(WTF::DestructionThread)0>::deref(v3);
    }

    result = v4;
    v4 = 0;
    if (result)
    {
      return WTF::ThreadSafeRefCounted<WebCore::SharedMemory,(WTF::DestructionThread)0>::deref(result);
    }
  }

  return result;
}

void *WebKit::WebSWClientConnection::setSWOriginTableIsImported(void *this)
{
  v2 = (this + 8);
  v1 = this[8];
  *(this[7] + 32) = 1;
  if (v1 != this[9])
  {
    v3 = this;
    while (v1 < *(v3 + 22))
    {
      v4 = v3[10];
      v5 = *(v4 + 8 * v1);
      *(v4 + 8 * v1) = 0;
      WTF::Deque<WTF::Function<void ()(void)>,0ul>::removeFirst(v2);
      (*(*v5 + 16))(v5);
      this = (*(*v5 + 8))(v5);
      v1 = v3[8];
      if (v1 == v3[9])
      {
        return this;
      }
    }

    __break(1u);
  }

  return this;
}

void WebKit::WebSWClientConnection::matchRegistration(uint64_t a1, WebCore::SecurityOriginData *a2, uint64_t a3, uint64_t *a4)
{
  v33 = *MEMORY[0x1E69E9840];
  v8 = *(a1 + 56);
  if (*(v8 + 32) == 1 && !WebKit::WebSWOriginTable::contains(v8, a2))
  {
    LOBYTE(v24) = 0;
    v32 = 0;
    v9 = *a4;
    *a4 = 0;
    (*(*v9 + 16))(v9, &v24);
    (*(*v9 + 8))(v9);
    if (v32 == 1)
    {
      WebCore::ServiceWorkerRegistrationData::~ServiceWorkerRegistrationData(&v24, v10);
    }

    return;
  }

  v11 = WTF::fastMalloc(0x10);
  *v11 = &unk_1F112EEA8;
  v12 = WTF::fastMalloc(0x10);
  *v12 = &unk_1F112EED0;
  v13 = *a4;
  *a4 = 0;
  v12[1] = v13;
  *&v23 = v12;
  *(&v23 + 1) = v11;
  WTF::WeakPtrFactory<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl>::initializeIfNeeded((a1 + 40), a1 + 32);
  v14 = *(a1 + 40);
  atomic_fetch_add(v14, 1u);
  v15 = v23;
  v23 = 0uLL;
  v24 = v14;
  v25 = v15;
  LOBYTE(v26) = 0;
  v28 = -1;
  v16 = *(a2 + 24);
  if (*(a2 + 24))
  {
    if (v16 == 255)
    {
      goto LABEL_9;
    }

    v26 = *a2;
  }

  else
  {
    v17 = *a2;
    *a2 = 0;
    *(a2 + 1) = 0;
    v26 = v17;
    v27 = *(a2 + 4);
  }

  v28 = v16;
LABEL_9:
  v18 = *a3;
  if (*a3)
  {
    atomic_fetch_add_explicit(v18, 2u, memory_order_relaxed);
  }

  v29 = v18;
  v19 = *(a3 + 24);
  v30 = *(a3 + 8);
  v31 = v19;
  WTF::Function<void ()(void)>::Function<WebKit::WebSWClientConnection::matchRegistration(WebCore::SecurityOriginData &&,WTF::URL const&,WTF::CompletionHandler<void ()(std::optional<WebCore::ServiceWorkerRegistrationData> &&)> &&)::$_1,void>(&v22, &v24);
  WebKit::WebSWClientConnection::runOrDelayTaskForImport(a1, &v22);
  v21 = v22;
  v22 = 0;
  if (v21)
  {
    (*(*v21 + 8))(v21);
  }

  WebKit::WebSWClientConnection::matchRegistration(WebCore::SecurityOriginData &&,WTF::URL const&,WebCore::SecurityOriginData &&::CompletionHandler<void ()(std::optional<WebCore::ServiceWorkerRegistrationData> &&)> &&)::$_1::~$_1(&v24, v20);
  WTF::CompletionHandlerWithFinalizer<void ()(std::optional<WebCore::ServiceWorkerRegistrationData>)>::~CompletionHandlerWithFinalizer(&v23);
}

uint64_t *WTF::Function<void ()(void)>::Function<WebKit::WebSWClientConnection::matchRegistration(WebCore::SecurityOriginData &&,WTF::URL const&,WTF::CompletionHandler<void ()(std::optional<WebCore::ServiceWorkerRegistrationData> &&)> &&)::$_1,void>(uint64_t *a1, __int128 *a2)
{
  v4 = WTF::fastMalloc(0x68);
  *v4 = &unk_1F112EEF8;
  v5 = *a2;
  *a2 = 0;
  *(a2 + 1) = 0;
  *(v4 + 8) = v5;
  v6 = *(a2 + 2);
  *(a2 + 2) = 0;
  *(v4 + 24) = v6;
  mpark::detail::move_assignment<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::move_assignment((v4 + 32));
  v7 = *(a2 + 7);
  if (v7)
  {
    atomic_fetch_add_explicit(v7, 2u, memory_order_relaxed);
  }

  *(v4 + 64) = v7;
  v8 = a2[4];
  *(v4 + 88) = a2[5];
  *(v4 + 72) = v8;
  *a1 = v4;
  return a1;
}

uint64_t WebKit::WebSWClientConnection::matchRegistration(WebCore::SecurityOriginData &&,WTF::URL const&,WebCore::SecurityOriginData &&::CompletionHandler<void ()(std::optional<WebCore::ServiceWorkerRegistrationData> &&)> &&)::$_1::~$_1(uint64_t a1, WTF::StringImpl *a2)
{
  v3 = *(a1 + 56);
  *(a1 + 56) = 0;
  if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v3, a2);
  }

  if (!*(a1 + 48))
  {
    v4 = *(a1 + 32);
    *(a1 + 32) = 0;
    if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v4, a2);
    }

    v5 = *(a1 + 24);
    *(a1 + 24) = 0;
    if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v5, a2);
    }
  }

  *(a1 + 48) = -1;
  WTF::CompletionHandlerWithFinalizer<void ()(std::optional<WebCore::ServiceWorkerRegistrationData>)>::~CompletionHandlerWithFinalizer((a1 + 8));
  v7 = *a1;
  *a1 = 0;
  if (v7 && atomic_fetch_add(v7, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v7);
    WTF::fastFree(v7, v6);
  }

  return a1;
}

uint64_t WebKit::WebSWClientConnection::whenRegistrationReady(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v7 = a1 + 24;
  v6 = *(a1 + 24);
  v8 = *a4;
  *a4 = 0;
  v9 = (*(v6 + 56))(a1 + 24);
  v11 = IPC::Encoder::operator new(0x238, v10);
  *v11 = 3124;
  *(v11 + 2) = 0;
  *(v11 + 3) = 0;
  *(v11 + 1) = v9;
  *(v11 + 68) = 0;
  *(v11 + 70) = 0;
  *(v11 + 69) = 0;
  IPC::Encoder::encodeHeader(v11);
  v19 = v11;
  IPC::ArgumentCoder<WebCore::SecurityOriginData,void>::encode(v11, a2);
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v11, a3);
  v12 = WTF::fastMalloc(0x10);
  *v12 = &unk_1F112EF48;
  v12[1] = v8;
  if (WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1)
  {
    result = 141;
    __break(0xC471u);
  }

  else
  {
    v18[0] = v12;
    v18[1] = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
    (*(*v7 + 40))(v7, &v19, v18, 0);
    v14 = v18[0];
    v18[0] = 0;
    if (v14)
    {
      (*(*v14 + 8))(v14);
    }

    result = v19;
    v19 = 0;
    if (result)
    {
      IPC::Encoder::~Encoder(result, v13);
      return bmalloc::api::tzoneFree(v16, v17);
    }
  }

  return result;
}

atomic_uint *WebKit::WebSWClientConnection::setServiceWorkerClientIsControlled(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v6 = WebCore::DocumentLoader::fromScriptExecutionContextIdentifier();
  if (v6)
  {
    v7 = v6;
    ++*(v6 + 24);
    v8 = WebCore::DocumentLoader::setControllingServiceWorkerRegistration();
    v9 = *a4;
    *a4 = 0;
    (*(*v9 + 16))(v9, v8);
    result = (*(*v9 + 8))(v9);
    if (v7[6] == 1)
    {
      return (*(*v7 + 24))(v7);
    }

    --v7[6];
    return result;
  }

  WebCore::WorkerScriptLoader::serviceWorkerDataManagerFromIdentifier();
  if (!v13)
  {
LABEL_10:
    v12 = *a4;
    *a4 = 0;
    (*(*v12 + 16))(v12, 0);
    return (*(*v12 + 8))(v12);
  }

  if (*(a3 + 344) != 1)
  {
    WTF::ThreadSafeRefCounted<WebCore::WorkerScriptLoader::ServiceWorkerDataManager,(WTF::DestructionThread)1>::deref(v13);
    goto LABEL_10;
  }

  WebCore::WorkerScriptLoader::ServiceWorkerDataManager::setData();
  v11 = *a4;
  *a4 = 0;
  (*(*v11 + 16))(v11, 1);
  (*(*v11 + 8))(v11);
  return WTF::ThreadSafeRefCounted<WebCore::WorkerScriptLoader::ServiceWorkerDataManager,(WTF::DestructionThread)1>::deref(v13);
}

uint64_t WebKit::WebSWClientConnection::getRegistrations(uint64_t a1, WebCore::SecurityOriginData *a2, uint64_t a3, uint64_t *a4)
{
  v9 = *(a1 + 56);
  if (*(v9 + 32) == 1 && !WebKit::WebSWOriginTable::contains(v9, a2))
  {
    v25 = 0uLL;
    v22 = *a4;
    *a4 = 0;
    (*(*v22 + 16))(v22, &v25);
    (*(*v22 + 8))(v22);
    return WTF::Vector<WebCore::ServiceWorkerRegistrationData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v25, v23);
  }

  WTF::WeakPtrFactory<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl>::initializeIfNeeded((a1 + 40), a1 + 32);
  v10 = *(a1 + 40);
  atomic_fetch_add(v10, 1u);
  v11 = *a4;
  *a4 = 0;
  v12 = *(a2 + 24);
  if (*(a2 + 24))
  {
    if (v12 == 255)
    {
      v13 = 0uLL;
    }

    else
    {
      v13 = *a2;
    }
  }

  else
  {
    v13 = *a2;
    *a2 = 0;
    *(a2 + 1) = 0;
    v4 = *(a2 + 4);
  }

  v24 = v13;
  v14 = *a3;
  if (*a3)
  {
    atomic_fetch_add_explicit(v14, 2u, memory_order_relaxed);
  }

  v15 = *(a3 + 24);
  v25 = *(a3 + 8);
  v26 = v15;
  v16 = WTF::fastMalloc(0x60);
  *v16 = &unk_1F112EF98;
  *(v16 + 8) = v10;
  *(v16 + 16) = v11;
  *(v16 + 24) = 0;
  *(v16 + 48) = -1;
  if (!v12)
  {
    v17 = 0;
    v18 = 0;
    *(v16 + 24) = v24;
    *(v16 + 40) = v4;
LABEL_9:
    *(v16 + 48) = v12;
    goto LABEL_10;
  }

  v18 = *(&v24 + 1);
  v17 = v24;
  if (v12 != 255)
  {
    *(v16 + 24) = v24;
    goto LABEL_9;
  }

LABEL_10:
  if (v14)
  {
    atomic_fetch_add_explicit(v14, 2u, memory_order_relaxed);
  }

  *(v16 + 56) = v14;
  v19 = v26;
  *(v16 + 64) = v25;
  *(v16 + 80) = v19;
  v27 = v16;
  WebKit::WebSWClientConnection::runOrDelayTaskForImport(a1, &v27);
  result = v27;
  v27 = 0;
  if (result)
  {
    result = (*(*result + 8))(result);
    if (!v14)
    {
      goto LABEL_18;
    }
  }

  else if (!v14)
  {
    goto LABEL_18;
  }

  if (atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    result = WTF::StringImpl::destroy(v14, v20);
  }

LABEL_18:
  if (v12)
  {
    return result;
  }

  if (v18 && atomic_fetch_add_explicit(v18, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    result = WTF::StringImpl::destroy(v18, v20);
    if (!v17)
    {
      return result;
    }
  }

  else if (!v17)
  {
    return result;
  }

  if (atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    return WTF::StringImpl::destroy(v17, v20);
  }

  return result;
}

uint64_t WebKit::WebSWClientConnection::getRegistrations(WebCore::SecurityOriginData &&,WTF::URL const&,WebCore::SecurityOriginData &&::CompletionHandler<void ()(WebCore::SecurityOriginData &&::Vector<WebCore::ServiceWorkerRegistrationData,0ul,WebCore::SecurityOriginData &&::CrashOnOverflow,16ul,WebCore::SecurityOriginData &&::FastMalloc> &&)> &&)::$_0::~$_0(uint64_t a1, WTF::StringImpl *a2)
{
  v3 = *(a1 + 48);
  *(a1 + 48) = 0;
  if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v3, a2);
  }

  if (!*(a1 + 40))
  {
    v4 = *(a1 + 24);
    *(a1 + 24) = 0;
    if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v4, a2);
    }

    v5 = *(a1 + 16);
    *(a1 + 16) = 0;
    if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v5, a2);
    }
  }

  *(a1 + 40) = -1;
  v6 = *(a1 + 8);
  *(a1 + 8) = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  v7 = *a1;
  *a1 = 0;
  if (v7 && atomic_fetch_add(v7, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v7);
    WTF::fastFree(v7, a2);
  }

  return a1;
}

uint64_t WebKit::WebSWClientConnection::whenServiceWorkerIsTerminatedForTesting(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = a1 + 24;
  v6 = (*(*(a1 + 24) + 56))(a1 + 24);
  v8 = IPC::Encoder::operator new(0x238, v7);
  *v8 = 3125;
  *(v8 + 2) = 0;
  *(v8 + 3) = 0;
  *(v8 + 1) = v6;
  *(v8 + 68) = 0;
  *(v8 + 70) = 0;
  *(v8 + 69) = 0;
  IPC::Encoder::encodeHeader(v8);
  v17 = v8;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v8, a2);
  v9 = *a3;
  *a3 = 0;
  v10 = WTF::fastMalloc(0x10);
  *v10 = &unk_1F112F010;
  v10[1] = v9;
  if (WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1)
  {
    result = 141;
    __break(0xC471u);
  }

  else
  {
    v16[0] = v10;
    v16[1] = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
    (*(*v5 + 40))(v5, &v17, v16, 0);
    v12 = v16[0];
    v16[0] = 0;
    if (v12)
    {
      (*(*v12 + 8))(v12);
    }

    result = v17;
    v17 = 0;
    if (result)
    {
      IPC::Encoder::~Encoder(result, v11);
      return bmalloc::api::tzoneFree(v14, v15);
    }
  }

  return result;
}

IPC::Encoder *WebKit::WebSWClientConnection::updateThrottleState(WebKit::WebSWClientConnection *this, void *a2)
{
  v3 = WebKit::WebProcess::singleton(this, a2);
  v4 = WebKit::WebProcess::areAllPagesThrottleable(v3);
  *(this + 96) = v4;
  v6 = v4;
  return IPC::MessageSender::send<Messages::WebSWServerConnection::SetThrottleState>(this + 24, &v6);
}

IPC::Encoder *IPC::MessageSender::send<Messages::WebSWServerConnection::SetThrottleState>(uint64_t a1, _BYTE *a2)
{
  v4 = (*(*a1 + 56))(a1);

  return IPC::MessageSender::send<Messages::WebSWServerConnection::SetThrottleState>(a1, a2, v4);
}

uint64_t WebKit::WebSWClientConnection::storeRegistrationsOnDiskForTesting(uint64_t a1, uint64_t *a2)
{
  v3 = a1 + 24;
  v4 = (*(*(a1 + 24) + 56))(a1 + 24);
  v6 = IPC::Encoder::operator new(0x238, v5);
  *v6 = 3119;
  *(v6 + 2) = 0;
  *(v6 + 3) = 0;
  *(v6 + 1) = v4;
  *(v6 + 68) = 0;
  *(v6 + 70) = 0;
  *(v6 + 69) = 0;
  IPC::Encoder::encodeHeader(v6);
  v15 = v6;
  v7 = *a2;
  *a2 = 0;
  v8 = WTF::fastMalloc(0x10);
  *v8 = &unk_1F112F038;
  v8[1] = v7;
  if (WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1)
  {
    result = 141;
    __break(0xC471u);
  }

  else
  {
    v14[0] = v8;
    v14[1] = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
    (*(*v3 + 40))(v3, &v15, v14, 0);
    v10 = v14[0];
    v14[0] = 0;
    if (v10)
    {
      (*(*v10 + 8))(v10);
    }

    result = v15;
    v15 = 0;
    if (result)
    {
      IPC::Encoder::~Encoder(result, v9);
      return bmalloc::api::tzoneFree(v12, v13);
    }
  }

  return result;
}

uint64_t WebKit::WebSWClientConnection::subscribeToPushService(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v7 = a1 + 24;
  v6 = *(a1 + 24);
  v8 = *a4;
  *a4 = 0;
  v9 = (*(v6 + 56))(a1 + 24);
  v11 = IPC::Encoder::operator new(0x238, v10);
  *v11 = 3120;
  *(v11 + 2) = 0;
  *(v11 + 3) = 0;
  *(v11 + 1) = v9;
  *(v11 + 68) = 0;
  *(v11 + 70) = 0;
  *(v11 + 69) = 0;
  IPC::Encoder::encodeHeader(v11);
  v19 = v11;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v11, a2);
  IPC::ArgumentCoder<std::span<unsigned char const,18446744073709551615ul>,void>::encode<IPC::Encoder>(v11, *a3, *(a3 + 12));
  v12 = WTF::fastMalloc(0x10);
  *v12 = &unk_1F112F060;
  v12[1] = v8;
  if (WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1)
  {
    result = 141;
    __break(0xC471u);
  }

  else
  {
    v18[0] = v12;
    v18[1] = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
    (*(*v7 + 40))(v7, &v19, v18, 0);
    v14 = v18[0];
    v18[0] = 0;
    if (v14)
    {
      (*(*v14 + 8))(v14);
    }

    result = v19;
    v19 = 0;
    if (result)
    {
      IPC::Encoder::~Encoder(result, v13);
      return bmalloc::api::tzoneFree(v16, v17);
    }
  }

  return result;
}

uint64_t WebKit::WebSWClientConnection::unsubscribeFromPushService(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v7 = a1 + 24;
  v6 = *(a1 + 24);
  v8 = *a4;
  *a4 = 0;
  v9 = (*(v6 + 56))(a1 + 24);
  v11 = IPC::Encoder::operator new(0x238, v10);
  *v11 = 3123;
  *(v11 + 2) = 0;
  *(v11 + 3) = 0;
  *(v11 + 1) = v9;
  *(v11 + 68) = 0;
  *(v11 + 70) = 0;
  *(v11 + 69) = 0;
  IPC::Encoder::encodeHeader(v11);
  v19 = v11;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v11, a2);
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v11, a3);
  v12 = WTF::fastMalloc(0x10);
  *v12 = &unk_1F112F088;
  v12[1] = v8;
  if (WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1)
  {
    result = 141;
    __break(0xC471u);
  }

  else
  {
    v18[0] = v12;
    v18[1] = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
    (*(*v7 + 40))(v7, &v19, v18, 0);
    v14 = v18[0];
    v18[0] = 0;
    if (v14)
    {
      (*(*v14 + 8))(v14);
    }

    result = v19;
    v19 = 0;
    if (result)
    {
      IPC::Encoder::~Encoder(result, v13);
      return bmalloc::api::tzoneFree(v16, v17);
    }
  }

  return result;
}

uint64_t WebKit::WebSWClientConnection::getPushSubscription(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = a1 + 24;
  v4 = *(a1 + 24);
  v6 = *a3;
  *a3 = 0;
  v7 = (*(v4 + 56))(a1 + 24);
  v9 = IPC::Encoder::operator new(0x238, v8);
  *v9 = 3104;
  *(v9 + 2) = 0;
  *(v9 + 3) = 0;
  *(v9 + 1) = v7;
  *(v9 + 68) = 0;
  *(v9 + 70) = 0;
  *(v9 + 69) = 0;
  IPC::Encoder::encodeHeader(v9);
  v17 = v9;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v9, a2);
  v10 = WTF::fastMalloc(0x10);
  *v10 = &unk_1F112F0B0;
  v10[1] = v6;
  if (WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1)
  {
    result = 141;
    __break(0xC471u);
  }

  else
  {
    v16[0] = v10;
    v16[1] = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
    (*(*v5 + 40))(v5, &v17, v16, 0);
    v12 = v16[0];
    v16[0] = 0;
    if (v12)
    {
      (*(*v12 + 8))(v12);
    }

    result = v17;
    v17 = 0;
    if (result)
    {
      IPC::Encoder::~Encoder(result, v11);
      return bmalloc::api::tzoneFree(v14, v15);
    }
  }

  return result;
}

uint64_t WebKit::WebSWClientConnection::getPushPermissionState(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = a1 + 24;
  v4 = *(a1 + 24);
  v6 = *a3;
  *a3 = 0;
  v7 = (*(v4 + 56))(a1 + 24);
  v9 = IPC::Encoder::operator new(0x238, v8);
  *v9 = 3103;
  *(v9 + 2) = 0;
  *(v9 + 3) = 0;
  *(v9 + 1) = v7;
  *(v9 + 68) = 0;
  *(v9 + 70) = 0;
  *(v9 + 69) = 0;
  IPC::Encoder::encodeHeader(v9);
  v17 = v9;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v9, a2);
  v10 = WTF::fastMalloc(0x10);
  *v10 = &unk_1F112F0D8;
  v10[1] = v6;
  if (WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1)
  {
    result = 141;
    __break(0xC471u);
  }

  else
  {
    v16[0] = v10;
    v16[1] = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
    (*(*v5 + 40))(v5, &v17, v16, 0);
    v12 = v16[0];
    v16[0] = 0;
    if (v12)
    {
      (*(*v12 + 8))(v12);
    }

    result = v17;
    v17 = 0;
    if (result)
    {
      IPC::Encoder::~Encoder(result, v11);
      return bmalloc::api::tzoneFree(v14, v15);
    }
  }

  return result;
}

atomic_ullong *WebKit::WebSWClientConnection::getNotifications(WebCore::DeprecatedGlobalSettings *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (WebCore::DeprecatedGlobalSettings::builtInNotificationsEnabled(a1))
  {
    v10 = *(a1 + 3);
    v9 = (a1 + 24);
    v11 = *a4;
    *a4 = 0;
    v12 = (*(v10 + 56))(v9);
    v14 = IPC::Encoder::operator new(0x238, v13);
    *v14 = 3102;
    *(v14 + 2) = 0;
    *(v14 + 3) = 0;
    *(v14 + 1) = v12;
    *(v14 + 68) = 0;
    *(v14 + 70) = 0;
    *(v14 + 69) = 0;
    IPC::Encoder::encodeHeader(v14);
    v38 = v14;
    IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v14, a2);
    IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v14, a3);
    v15 = WTF::fastMalloc(0x10);
    *v15 = &unk_1F112F100;
    v15[1] = v11;
    if (WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected != 1)
    {
      v36 = v15;
      IdentifierInternal = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
      (*(*v9 + 40))(v9, &v38, &v36, 0);
      v17 = v36;
      v36 = 0;
      if (v17)
      {
        (*(*v17 + 8))(v17);
      }

      result = v38;
      v38 = 0;
      if (result)
      {
        IPC::Encoder::~Encoder(result, v16);
        return bmalloc::api::tzoneFree(v19, v20);
      }

      return result;
    }

    __break(0xC471u);
LABEL_20:
    JUMPOUT(0x19E3427C0);
  }

  {
    v21 = WebKit::WebProcess::singleton(void)::process;
  }

  else
  {
    v34 = WebKit::WebProcess::operator new(0x370, v8);
    v21 = WebKit::WebProcess::WebProcess(v34);
    WebKit::WebProcess::singleton(void)::process = v21;
  }

  WebKit::AuxiliaryProcess::protectedParentProcessConnection(v21, &v35);
  v22 = v35;
  v23 = *a4;
  *a4 = 0;
  v24 = WTF::fastMalloc(0x10);
  *v24 = &unk_1F112F128;
  v24[1] = v23;
  if (WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1)
  {
    __break(0xC471u);
    goto LABEL_20;
  }

  v25 = v24;
  v26 = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
  v28 = IPC::Encoder::operator new(0x238, v27);
  *v28 = 2917;
  *(v28 + 68) = 0;
  *(v28 + 70) = 0;
  *(v28 + 69) = 0;
  *(v28 + 2) = 0;
  *(v28 + 3) = 0;
  *(v28 + 1) = 0;
  IPC::Encoder::encodeHeader(v28);
  v38 = v28;
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v28, a2);
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v28, a3);
  v36 = v25;
  IdentifierInternal = v26;
  IPC::Connection::sendMessageWithAsyncReply(v22, &v38, &v36, 0, 0);
  v30 = v36;
  v36 = 0;
  if (v30)
  {
    (*(*v30 + 8))(v30);
  }

  v31 = v38;
  v38 = 0;
  if (v31)
  {
    IPC::Encoder::~Encoder(v31, v29);
    bmalloc::api::tzoneFree(v32, v33);
  }

  result = v35;
  v35 = 0;
  if (result)
  {
    return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(result);
  }

  return result;
}

uint64_t WebKit::WebSWClientConnection::enableNavigationPreload(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = a1 + 24;
  v4 = *(a1 + 24);
  v6 = *a3;
  *a3 = 0;
  v7 = (*(v4 + 56))(a1 + 24);
  v9 = IPC::Encoder::operator new(0x238, v8);
  *v9 = 3099;
  *(v9 + 2) = 0;
  *(v9 + 3) = 0;
  *(v9 + 1) = v7;
  *(v9 + 68) = 0;
  *(v9 + 70) = 0;
  *(v9 + 69) = 0;
  IPC::Encoder::encodeHeader(v9);
  v17 = v9;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v9, a2);
  v10 = WTF::fastMalloc(0x10);
  *v10 = &unk_1F112F150;
  v10[1] = v6;
  if (WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1)
  {
    result = 141;
    __break(0xC471u);
  }

  else
  {
    v16[0] = v10;
    v16[1] = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
    (*(*v5 + 40))(v5, &v17, v16, 0);
    v12 = v16[0];
    v16[0] = 0;
    if (v12)
    {
      (*(*v12 + 8))(v12);
    }

    result = v17;
    v17 = 0;
    if (result)
    {
      IPC::Encoder::~Encoder(result, v11);
      return bmalloc::api::tzoneFree(v14, v15);
    }
  }

  return result;
}

uint64_t WebKit::WebSWClientConnection::disableNavigationPreload(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = a1 + 24;
  v4 = *(a1 + 24);
  v6 = *a3;
  *a3 = 0;
  v7 = (*(v4 + 56))(a1 + 24);
  v9 = IPC::Encoder::operator new(0x238, v8);
  *v9 = 3098;
  *(v9 + 2) = 0;
  *(v9 + 3) = 0;
  *(v9 + 1) = v7;
  *(v9 + 68) = 0;
  *(v9 + 70) = 0;
  *(v9 + 69) = 0;
  IPC::Encoder::encodeHeader(v9);
  v17 = v9;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v9, a2);
  v10 = WTF::fastMalloc(0x10);
  *v10 = &unk_1F112F178;
  v10[1] = v6;
  if (WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1)
  {
    result = 141;
    __break(0xC471u);
  }

  else
  {
    v16[0] = v10;
    v16[1] = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
    (*(*v5 + 40))(v5, &v17, v16, 0);
    v12 = v16[0];
    v16[0] = 0;
    if (v12)
    {
      (*(*v12 + 8))(v12);
    }

    result = v17;
    v17 = 0;
    if (result)
    {
      IPC::Encoder::~Encoder(result, v11);
      return bmalloc::api::tzoneFree(v14, v15);
    }
  }

  return result;
}

uint64_t WebKit::WebSWClientConnection::setNavigationPreloadHeaderValue(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v7 = a1 + 24;
  v6 = *(a1 + 24);
  v8 = *a4;
  *a4 = 0;
  v9 = (*(v6 + 56))(a1 + 24);
  v11 = IPC::Encoder::operator new(0x238, v10);
  *v11 = 3116;
  *(v11 + 2) = 0;
  *(v11 + 3) = 0;
  *(v11 + 1) = v9;
  *(v11 + 68) = 0;
  *(v11 + 70) = 0;
  *(v11 + 69) = 0;
  IPC::Encoder::encodeHeader(v11);
  v19 = v11;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v11, a2);
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v11, a3);
  v12 = WTF::fastMalloc(0x10);
  *v12 = &unk_1F112F1A0;
  v12[1] = v8;
  if (WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1)
  {
    result = 141;
    __break(0xC471u);
  }

  else
  {
    v18[0] = v12;
    v18[1] = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
    (*(*v7 + 40))(v7, &v19, v18, 0);
    v14 = v18[0];
    v18[0] = 0;
    if (v14)
    {
      (*(*v14 + 8))(v14);
    }

    result = v19;
    v19 = 0;
    if (result)
    {
      IPC::Encoder::~Encoder(result, v13);
      return bmalloc::api::tzoneFree(v16, v17);
    }
  }

  return result;
}

uint64_t WebKit::WebSWClientConnection::getNavigationPreloadState(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = a1 + 24;
  v4 = *(a1 + 24);
  v6 = *a3;
  *a3 = 0;
  v7 = (*(v4 + 56))(a1 + 24);
  v9 = IPC::Encoder::operator new(0x238, v8);
  *v9 = 3101;
  *(v9 + 2) = 0;
  *(v9 + 3) = 0;
  *(v9 + 1) = v7;
  *(v9 + 68) = 0;
  *(v9 + 70) = 0;
  *(v9 + 69) = 0;
  IPC::Encoder::encodeHeader(v9);
  v17 = v9;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v9, a2);
  v10 = WTF::fastMalloc(0x10);
  *v10 = &unk_1F112F1C8;
  v10[1] = v6;
  if (WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1)
  {
    result = 141;
    __break(0xC471u);
  }

  else
  {
    v16[0] = v10;
    v16[1] = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
    (*(*v5 + 40))(v5, &v17, v16, 0);
    v12 = v16[0];
    v16[0] = 0;
    if (v12)
    {
      (*(*v12 + 8))(v12);
    }

    result = v17;
    v17 = 0;
    if (result)
    {
      IPC::Encoder::~Encoder(result, v11);
      return bmalloc::api::tzoneFree(v14, v15);
    }
  }

  return result;
}

uint64_t WebKit::WebSWClientConnection::startBackgroundFetch(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  v11 = a1 + 24;
  v10 = *(a1 + 24);
  v12 = *a6;
  *a6 = 0;
  v13 = (*(v10 + 56))(a1 + 24);
  v15 = IPC::Encoder::operator new(0x238, v14);
  *v15 = 3118;
  *(v15 + 2) = 0;
  *(v15 + 3) = 0;
  *(v15 + 1) = v13;
  *(v15 + 68) = 0;
  *(v15 + 70) = 0;
  *(v15 + 69) = 0;
  IPC::Encoder::encodeHeader(v15);
  v26 = v15;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v15, a2);
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v15, a3);
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v15, *(a4 + 12));
  v16 = *(a4 + 12);
  if (v16)
  {
    v17 = *a4;
    v18 = 336 * v16;
    do
    {
      IPC::ArgumentCoder<WebCore::BackgroundFetchRequest,void>::encode(v15, v17);
      v17 += 336;
      v18 -= 336;
    }

    while (v18);
  }

  IPC::ArgumentCoder<WebCore::BackgroundFetchOptions,void>::encode(v15, a5);
  v19 = WTF::fastMalloc(0x10);
  *v19 = &unk_1F112F1F0;
  v19[1] = v12;
  if (WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1)
  {
    result = 141;
    __break(0xC471u);
  }

  else
  {
    v25[0] = v19;
    v25[1] = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
    (*(*v11 + 40))(v11, &v26, v25, 0);
    v21 = v25[0];
    v25[0] = 0;
    if (v21)
    {
      (*(*v21 + 8))(v21);
    }

    result = v26;
    v26 = 0;
    if (result)
    {
      IPC::Encoder::~Encoder(result, v20);
      return bmalloc::api::tzoneFree(v23, v24);
    }
  }

  return result;
}

uint64_t WebKit::WebSWClientConnection::backgroundFetchInformation(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v7 = a1 + 24;
  v6 = *(a1 + 24);
  v8 = *a4;
  *a4 = 0;
  v9 = (*(v6 + 56))(a1 + 24);
  v11 = IPC::Encoder::operator new(0x238, v10);
  *v11 = 3095;
  *(v11 + 2) = 0;
  *(v11 + 3) = 0;
  *(v11 + 1) = v9;
  *(v11 + 68) = 0;
  *(v11 + 70) = 0;
  *(v11 + 69) = 0;
  IPC::Encoder::encodeHeader(v11);
  v19 = v11;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v11, a2);
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v11, a3);
  v12 = WTF::fastMalloc(0x10);
  *v12 = &unk_1F112F218;
  v12[1] = v8;
  if (WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1)
  {
    result = 141;
    __break(0xC471u);
  }

  else
  {
    v18[0] = v12;
    v18[1] = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
    (*(*v7 + 40))(v7, &v19, v18, 0);
    v14 = v18[0];
    v18[0] = 0;
    if (v14)
    {
      (*(*v14 + 8))(v14);
    }

    result = v19;
    v19 = 0;
    if (result)
    {
      IPC::Encoder::~Encoder(result, v13);
      return bmalloc::api::tzoneFree(v16, v17);
    }
  }

  return result;
}

uint64_t WebKit::WebSWClientConnection::backgroundFetchIdentifiers(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = a1 + 24;
  v6 = (*(*(a1 + 24) + 56))(a1 + 24);
  v8 = IPC::Encoder::operator new(0x238, v7);
  *v8 = 3094;
  *(v8 + 2) = 0;
  *(v8 + 3) = 0;
  *(v8 + 1) = v6;
  *(v8 + 68) = 0;
  *(v8 + 70) = 0;
  *(v8 + 69) = 0;
  IPC::Encoder::encodeHeader(v8);
  v17 = v8;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v8, a2);
  v9 = *a3;
  *a3 = 0;
  v10 = WTF::fastMalloc(0x10);
  *v10 = &unk_1F112F240;
  v10[1] = v9;
  if (WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1)
  {
    result = 141;
    __break(0xC471u);
  }

  else
  {
    v16[0] = v10;
    v16[1] = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
    (*(*v5 + 40))(v5, &v17, v16, 0);
    v12 = v16[0];
    v16[0] = 0;
    if (v12)
    {
      (*(*v12 + 8))(v12);
    }

    result = v17;
    v17 = 0;
    if (result)
    {
      IPC::Encoder::~Encoder(result, v11);
      return bmalloc::api::tzoneFree(v14, v15);
    }
  }

  return result;
}

uint64_t WebKit::WebSWClientConnection::abortBackgroundFetch(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v7 = a1 + 24;
  v8 = (*(*(a1 + 24) + 56))(a1 + 24);
  v10 = IPC::Encoder::operator new(0x238, v9);
  *v10 = 3090;
  *(v10 + 2) = 0;
  *(v10 + 3) = 0;
  *(v10 + 1) = v8;
  *(v10 + 68) = 0;
  *(v10 + 70) = 0;
  *(v10 + 69) = 0;
  IPC::Encoder::encodeHeader(v10);
  v19 = v10;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v10, a2);
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v10, a3);
  v11 = *a4;
  *a4 = 0;
  v12 = WTF::fastMalloc(0x10);
  *v12 = &unk_1F112F268;
  v12[1] = v11;
  if (WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1)
  {
    result = 141;
    __break(0xC471u);
  }

  else
  {
    v18[0] = v12;
    v18[1] = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
    (*(*v7 + 40))(v7, &v19, v18, 0);
    v14 = v18[0];
    v18[0] = 0;
    if (v14)
    {
      (*(*v14 + 8))(v14);
    }

    result = v19;
    v19 = 0;
    if (result)
    {
      IPC::Encoder::~Encoder(result, v13);
      return bmalloc::api::tzoneFree(v16, v17);
    }
  }

  return result;
}

uint64_t WebKit::WebSWClientConnection::matchBackgroundFetch(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t *a5)
{
  v9 = a1 + 24;
  v10 = (*(*(a1 + 24) + 56))(a1 + 24);
  v12 = IPC::Encoder::operator new(0x238, v11);
  *v12 = 3106;
  *(v12 + 2) = 0;
  *(v12 + 3) = 0;
  *(v12 + 1) = v10;
  *(v12 + 68) = 0;
  *(v12 + 70) = 0;
  *(v12 + 69) = 0;
  IPC::Encoder::encodeHeader(v12);
  v21 = v12;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v12, a2);
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v12, a3);
  IPC::ArgumentCoder<WebCore::RetrieveRecordsOptions,void>::encode(v12, a4);
  v13 = *a5;
  *a5 = 0;
  v14 = WTF::fastMalloc(0x10);
  *v14 = &unk_1F112F290;
  v14[1] = v13;
  if (WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1)
  {
    result = 141;
    __break(0xC471u);
  }

  else
  {
    v20[0] = v14;
    v20[1] = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
    (*(*v9 + 40))(v9, &v21, v20, 0);
    v16 = v20[0];
    v20[0] = 0;
    if (v16)
    {
      (*(*v16 + 8))(v16);
    }

    result = v21;
    v21 = 0;
    if (result)
    {
      IPC::Encoder::~Encoder(result, v15);
      return bmalloc::api::tzoneFree(v18, v19);
    }
  }

  return result;
}

uint64_t WebKit::WebSWClientConnection::retrieveRecordResponse(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = a1 + 24;
  v4 = *(a1 + 24);
  v6 = *a3;
  *a3 = 0;
  v7 = (*(v4 + 56))(a1 + 24);
  v9 = IPC::Encoder::operator new(0x238, v8);
  *v9 = 3112;
  *(v9 + 2) = 0;
  *(v9 + 3) = 0;
  *(v9 + 1) = v7;
  *(v9 + 68) = 0;
  *(v9 + 70) = 0;
  *(v9 + 69) = 0;
  IPC::Encoder::encodeHeader(v9);
  v17 = v9;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v9, a2);
  v10 = WTF::fastMalloc(0x10);
  *v10 = &unk_1F112F2B8;
  v10[1] = v6;
  if (WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1)
  {
    result = 141;
    __break(0xC471u);
  }

  else
  {
    v16[0] = v10;
    v16[1] = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
    (*(*v5 + 40))(v5, &v17, v16, 0);
    v12 = v16[0];
    v16[0] = 0;
    if (v12)
    {
      (*(*v12 + 8))(v12);
    }

    result = v17;
    v17 = 0;
    if (result)
    {
      IPC::Encoder::~Encoder(result, v11);
      return bmalloc::api::tzoneFree(v14, v15);
    }
  }

  return result;
}

IPC::Encoder *WebKit::WebSWClientConnection::retrieveRecordResponseBody(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  IdentifierInternal = WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>::generateIdentifierInternal();
  if (IdentifierInternal == -1 || (v7 = IdentifierInternal) == 0)
  {
    __break(0xC471u);
    JUMPOUT(0x19E343A8CLL);
  }

  v8 = *(a1 + 104);
  if (!v8)
  {
    WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::RetrieveRecordResponseBodyCallbackIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RetrieveRecordResponseBodyCallbackIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Function<void ()(std::experimental::fundamentals_v3::expected<WTF::RefPtr<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>,WebCore::ResourceError> &&)>>,WTF::KeyValuePairKeyExtractor<WTF::Function<void ()(std::experimental::fundamentals_v3::expected<WTF::RefPtr<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>,WebCore::ResourceError> &&)>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RetrieveRecordResponseBodyCallbackIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::RetrieveRecordResponseBodyCallbackIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,void ()(std::experimental::fundamentals_v3::expected<WTF::RefPtr<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>,WebCore::ResourceError> &&),WTF::DefaultHash,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RetrieveRecordResponseBodyCallbackIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<void ()(std::experimental::fundamentals_v3::expected<WTF::RefPtr<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>,WebCore::ResourceError> &&)>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits,WTF::ShouldValidateKey>::expand((a1 + 104));
    v8 = *(a1 + 104);
  }

  v9 = *(v8 - 8);
  v10 = (v7 + ~(v7 << 32)) ^ ((v7 + ~(v7 << 32)) >> 22);
  v11 = 9 * ((v10 + ~(v10 << 13)) ^ ((v10 + ~(v10 << 13)) >> 8));
  v12 = (v11 ^ (v11 >> 15)) + ~((v11 ^ (v11 >> 15)) << 27);
  v13 = v9 & ((v12 >> 31) ^ v12);
  v14 = (v8 + 16 * v13);
  v15 = *v14;
  if (!*v14)
  {
LABEL_13:
    *v14 = v7;
    v18 = *a3;
    *a3 = 0;
    v19 = v14[1];
    v14[1] = v18;
    if (v19)
    {
      (*(*v19 + 8))(v19);
    }

    v20 = *(a1 + 104);
    if (v20)
    {
      v21 = *(v20 - 12) + 1;
    }

    else
    {
      v21 = 1;
    }

    *(v20 - 12) = v21;
    v22 = (*(v20 - 16) + v21);
    v23 = *(v20 - 4);
    if (v23 > 0x400)
    {
      if (v23 > 2 * v22)
      {
        goto LABEL_21;
      }
    }

    else if (3 * v23 > 4 * v22)
    {
      goto LABEL_21;
    }

    WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::RetrieveRecordResponseBodyCallbackIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RetrieveRecordResponseBodyCallbackIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Function<void ()(std::experimental::fundamentals_v3::expected<WTF::RefPtr<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>,WebCore::ResourceError> &&)>>,WTF::KeyValuePairKeyExtractor<WTF::Function<void ()(std::experimental::fundamentals_v3::expected<WTF::RefPtr<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>,WebCore::ResourceError> &&)>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RetrieveRecordResponseBodyCallbackIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::RetrieveRecordResponseBodyCallbackIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,void ()(std::experimental::fundamentals_v3::expected<WTF::RefPtr<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>,WebCore::ResourceError> &&),WTF::DefaultHash,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RetrieveRecordResponseBodyCallbackIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<void ()(std::experimental::fundamentals_v3::expected<WTF::RefPtr<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>,WebCore::ResourceError> &&)>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits,WTF::ShouldValidateKey>::expand((a1 + 104));
    goto LABEL_21;
  }

  v16 = 0;
  v17 = 1;
  while (v15 != v7)
  {
    if (v15 == -1)
    {
      v16 = v14;
    }

    v13 = (v13 + v17) & v9;
    v14 = (v8 + 16 * v13);
    v15 = *v14;
    ++v17;
    if (!*v14)
    {
      if (v16)
      {
        *v16 = 0;
        v16[1] = 0;
        --*(*(a1 + 104) - 16);
        v14 = v16;
      }

      goto LABEL_13;
    }
  }

LABEL_21:
  v25 = *(a1 + 24);
  v24 = a1 + 24;
  v26 = (*(v25 + 56))(v24);
  v28 = IPC::Encoder::operator new(0x238, v27);
  *v28 = 3113;
  *(v28 + 2) = 0;
  *(v28 + 3) = 0;
  *(v28 + 1) = v26;
  *(v28 + 68) = 0;
  *(v28 + 70) = 0;
  *(v28 + 69) = 0;
  IPC::Encoder::encodeHeader(v28);
  v33 = v28;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v28, a2);
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v28, v7);
  (*(*v24 + 32))(v24, &v33, 0);
  result = v33;
  v33 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v29);
    return bmalloc::api::tzoneFree(v31, v32);
  }

  return result;
}

void WebKit::WebSWClientConnection::notifyRecordResponseBodyChunk(uint64_t a1, uint64_t a2, IPC::SharedBufferReference *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = (a1 + 104);
  v5 = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::RetrieveRecordResponseBodyCallbackIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RetrieveRecordResponseBodyCallbackIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Function<void ()(std::experimental::fundamentals_v3::expected<WTF::RefPtr<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>,WebCore::ResourceError> &&)>>,WTF::KeyValuePairKeyExtractor<WTF::Function<void ()(std::experimental::fundamentals_v3::expected<WTF::RefPtr<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>,WebCore::ResourceError> &&)>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RetrieveRecordResponseBodyCallbackIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::RetrieveRecordResponseBodyCallbackIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,void ()(std::experimental::fundamentals_v3::expected<WTF::RefPtr<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>,WebCore::ResourceError> &&),WTF::DefaultHash,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RetrieveRecordResponseBodyCallbackIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<void ()(std::experimental::fundamentals_v3::expected<WTF::RefPtr<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>,WebCore::ResourceError> &&)>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits,WTF::ShouldValidateKey>::find<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::RetrieveRecordResponseBodyCallbackIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,void ()(std::experimental::fundamentals_v3::expected<WTF::RefPtr<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>,WebCore::ResourceError> &&),WTF::DefaultHash,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RetrieveRecordResponseBodyCallbackIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<void ()(std::experimental::fundamentals_v3::expected<WTF::RefPtr<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>,WebCore::ResourceError> &&)>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::DefaultHash>,(WTF::HashTableTraits)1,WTF::ObjectIdentifierGeneric<WebKit::RetrieveRecordResponseBodyCallbackIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(*(a1 + 104), a2);
  v6 = v5;
  v7 = *v4;
  if (*v4)
  {
    v7 += 16 * *(v7 - 4);
  }

  if (v7 != v5)
  {
    IPC::SharedBufferReference::unsafeBuffer(a3, &v11);
    v8 = v11;
    v12[0] = v11;
    v13 = 0;
    (*(**(v6 + 8) + 16))(*(v6 + 8), v12);
    std::experimental::fundamentals_v3::expected<WTF::RefPtr<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>,WebCore::ResourceError>::~expected(v12, v9);
    if (!v8)
    {
      if (*v4)
      {
        v10 = *v4 + 16 * *(*v4 - 4);
        if (v10 == v6)
        {
          return;
        }
      }

      else
      {
        if (!v6)
        {
          return;
        }

        v10 = 0;
      }

      if (v10 != v6)
      {
        WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::RetrieveRecordResponseBodyCallbackIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RetrieveRecordResponseBodyCallbackIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Function<void ()(std::experimental::fundamentals_v3::expected<WTF::RefPtr<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>,WebCore::ResourceError> &&)>>,WTF::KeyValuePairKeyExtractor<WTF::Function<void ()(std::experimental::fundamentals_v3::expected<WTF::RefPtr<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>,WebCore::ResourceError> &&)>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RetrieveRecordResponseBodyCallbackIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::RetrieveRecordResponseBodyCallbackIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,void ()(std::experimental::fundamentals_v3::expected<WTF::RefPtr<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>,WebCore::ResourceError> &&),WTF::DefaultHash,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RetrieveRecordResponseBodyCallbackIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<void ()(std::experimental::fundamentals_v3::expected<WTF::RefPtr<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>,WebCore::ResourceError> &&)>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits,WTF::ShouldValidateKey>::remove(v4, v6);
      }
    }
  }
}

void WebKit::WebSWClientConnection::notifyRecordResponseBodyEnd(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v31 = *MEMORY[0x1E69E9840];
  v4 = (a1 + 104);
  v5 = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::RetrieveRecordResponseBodyCallbackIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RetrieveRecordResponseBodyCallbackIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Function<void ()(std::experimental::fundamentals_v3::expected<WTF::RefPtr<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>,WebCore::ResourceError> &&)>>,WTF::KeyValuePairKeyExtractor<WTF::Function<void ()(std::experimental::fundamentals_v3::expected<WTF::RefPtr<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>,WebCore::ResourceError> &&)>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RetrieveRecordResponseBodyCallbackIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::RetrieveRecordResponseBodyCallbackIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,void ()(std::experimental::fundamentals_v3::expected<WTF::RefPtr<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>,WebCore::ResourceError> &&),WTF::DefaultHash,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RetrieveRecordResponseBodyCallbackIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<void ()(std::experimental::fundamentals_v3::expected<WTF::RefPtr<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>,WebCore::ResourceError> &&)>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits,WTF::ShouldValidateKey>::find<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::RetrieveRecordResponseBodyCallbackIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,void ()(std::experimental::fundamentals_v3::expected<WTF::RefPtr<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>,WebCore::ResourceError> &&),WTF::DefaultHash,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RetrieveRecordResponseBodyCallbackIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<void ()(std::experimental::fundamentals_v3::expected<WTF::RefPtr<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>,WebCore::ResourceError> &&)>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::DefaultHash>,(WTF::HashTableTraits)1,WTF::ObjectIdentifierGeneric<WebKit::RetrieveRecordResponseBodyCallbackIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(*(a1 + 104), a2);
  if (*v4)
  {
    if ((*v4 + 16 * *(*v4 - 4)) == v5)
    {
      return;
    }
  }

  else if (!v5)
  {
    return;
  }

  v6 = v5[1];
  v5[1] = 0;
  WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::RetrieveRecordResponseBodyCallbackIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RetrieveRecordResponseBodyCallbackIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Function<void ()(std::experimental::fundamentals_v3::expected<WTF::RefPtr<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>,WebCore::ResourceError> &&)>>,WTF::KeyValuePairKeyExtractor<WTF::Function<void ()(std::experimental::fundamentals_v3::expected<WTF::RefPtr<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>,WebCore::ResourceError> &&)>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RetrieveRecordResponseBodyCallbackIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::RetrieveRecordResponseBodyCallbackIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,void ()(std::experimental::fundamentals_v3::expected<WTF::RefPtr<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>,WebCore::ResourceError> &&),WTF::DefaultHash,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RetrieveRecordResponseBodyCallbackIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<void ()(std::experimental::fundamentals_v3::expected<WTF::RefPtr<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>,WebCore::ResourceError> &&)>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits,WTF::ShouldValidateKey>::remove(v4, v5);
  if (v6)
  {
    v7 = *a3;
    *a3 = 0;
    v16[0] = v7;
    WTF::URL::URL(&v16[1], (a3 + 8));
    v8 = *(a3 + 48);
    *(a3 + 48) = 0;
    v20 = *(a3 + 56);
    v21 = *(a3 + 60);
    v9 = *(a3 + 64);
    *(a3 + 64) = 0;
    v23 = *(a3 + 72);
    v10 = *v16;
    v16[1] = 0;
    v24[0] = v10;
    v24[1] = v17;
    v24[2] = v18;
    LODWORD(v17) = v17 & 0xFFFFFFFE;
    v19 = 0;
    v25 = v8;
    LODWORD(v8) = *(a3 + 56);
    v27 = *(a3 + 60);
    v26 = v8;
    cf = 0;
    v28 = v9;
    v29 = v23;
    v30 = 1;
    (*(*v6 + 16))(v6, v24);
    std::experimental::fundamentals_v3::expected<WTF::RefPtr<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>,WebCore::ResourceError>::~expected(v24, v11);
    v13 = cf;
    cf = 0;
    if (v13)
    {
      CFRelease(v13);
    }

    v14 = v19;
    v19 = 0;
    if (v14 && atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v14, v12);
    }

    v15 = v16[1];
    v16[1] = 0;
    if (v15)
    {
      if (atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v15, v12);
      }
    }

    (*(*v6 + 8))(v6);
  }
}

uint64_t WebKit::WebSWClientConnection::focusServiceWorkerClient(WebCore::Document *a1, _OWORD *a2, uint64_t *a3)
{
  v46 = *MEMORY[0x1E69E9840];
  v5 = a2[1];
  v44 = *a2;
  v45 = v5;
  v6 = WebCore::Document::allDocumentsMap(a1);
  v7 = WTF::HashTable<WebCore::ProcessQualified<WTF::UUID>,WTF::KeyValuePair<WebCore::ProcessQualified<WTF::UUID>,WTF::WeakRef<WebCore::Document,WebCore::WeakPtrImplWithEventTargetData>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ProcessQualified<WTF::UUID>,WTF::WeakRef<WebCore::Document,WebCore::WeakPtrImplWithEventTargetData>>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::UUID>>,WTF::HashMap<WebCore::ProcessQualified<WTF::UUID>,WTF::WeakRef<WebCore::Document,WebCore::WeakPtrImplWithEventTargetData>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::UUID>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::UUID>>,WTF::HashTraits<WTF::WeakRef<WebCore::Document,WebCore::WeakPtrImplWithEventTargetData>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ProcessQualified<WTF::UUID>>,WTF::FastMalloc>::lookup<WTF::HashMapTranslatorAdapter<WTF::HashMap<WebCore::ProcessQualified<WTF::UUID>,WTF::WeakRef<WebCore::Document,WebCore::WeakPtrImplWithEventTargetData>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::UUID>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::UUID>>,WTF::HashTraits<WTF::WeakRef<WebCore::Document,WebCore::WeakPtrImplWithEventTargetData>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::IdentityHashTranslator<WTF::HashMap<WebCore::ProcessQualified<WTF::UUID>,WTF::WeakRef<WebCore::Document,WebCore::WeakPtrImplWithEventTargetData>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::UUID>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::UUID>>,WTF::HashTraits<WTF::WeakRef<WebCore::Document,WebCore::WeakPtrImplWithEventTargetData>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WebCore::ProcessQualified<WTF::UUID>>>>,(WTF::ShouldValidateKey)1,WebCore::ProcessQualified<WTF::UUID>>(v6, &v44);
  if (!v7 || (v8 = v7[4]) == 0 || (v9 = *(v8 + 8)) == 0)
  {
    v38 = v44;
    v39 = v45;
    v15 = WebCore::DocumentLoader::fromScriptExecutionContextIdentifier();
    if (!v15)
    {
      goto LABEL_28;
    }

    v16 = v15;
    ++*(v15 + 24);
    v17 = *(v15 + 16);
    if (v17 && (v18 = *(v17 + 8)) != 0)
    {
      v19 = *(v18 + 16);
      *(v18 + 16) = v19 + 1;
      v20 = *(v18 + 24);
      if (v20)
      {
        v14 = *(v20 + 8);
        if (v14)
        {
          ++*(v14 + 8);
          v19 = *(v18 + 16) - 1;
        }

        if (v19)
        {
          goto LABEL_18;
        }
      }

      else
      {
        v14 = 0;
        if (v19)
        {
LABEL_18:
          *(v18 + 16) = v19;
          goto LABEL_19;
        }
      }

      (*(*v18 + 8))(v18);
    }

    else
    {
      v14 = 0;
    }

LABEL_19:
    if (v16[6] == 1)
    {
      (*(*v16 + 24))(v16);
    }

    else
    {
      --v16[6];
    }

    goto LABEL_21;
  }

  v10 = *(v9 + 28);
  *(v9 + 28) = v10 + 2;
  v11 = *(v9 + 552);
  if (v11 && (v12 = *(v11 + 8)) != 0 && (v13 = *(v12 + 24)) != 0)
  {
    v14 = *(v13 + 8);
    if (v14)
    {
      ++*(v14 + 8);
    }

    if (v10)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v14 = 0;
    if (v10)
    {
LABEL_10:
      *(v9 + 28) = v10;
      goto LABEL_21;
    }
  }

  WebCore::Node::removedLastRef(v9);
LABEL_21:
  if (v14)
  {
    v22 = WebKit::WebPage::fromCorePage(v14) + 32;
    v21 = *v22;
    v38 = *a2;
    *&v39 = *(a2 + 2);
    v23 = *a3;
    *a3 = 0;
    v24 = (*(v21 + 56))(v22);
    v26 = IPC::Encoder::operator new(0x238, v25);
    *v26 = 2254;
    *(v26 + 2) = 0;
    *(v26 + 3) = 0;
    *(v26 + 1) = v24;
    *(v26 + 68) = 0;
    *(v26 + 70) = 0;
    *(v26 + 69) = 0;
    IPC::Encoder::encodeHeader(v26);
    *&v44 = v26;
    v27 = WTF::fastMalloc(0x40);
    *v27 = &unk_1F112F2E0;
    *(v27 + 16) = v38;
    *(v27 + 32) = v39;
    *(v27 + 48) = v23;
    if (WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1)
    {
      result = 141;
      __break(0xC471u);
    }

    else
    {
      *&v38 = v27;
      *(&v38 + 1) = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
      (*(*v22 + 40))(v22, &v44, &v38, 0);
      v29 = v38;
      *&v38 = 0;
      if (v29)
      {
        (*(*v29 + 8))(v29);
      }

      v30 = v44;
      *&v44 = 0;
      if (v30)
      {
        IPC::Encoder::~Encoder(v30, v28);
        bmalloc::api::tzoneFree(v36, v37);
      }

      return WTF::RefCounted<WebCore::Page>::deref((v14 + 8));
    }

    return result;
  }

LABEL_28:
  LOBYTE(v38) = 0;
  v43 = 0;
  v32 = *a3;
  *a3 = 0;
  (*(*v32 + 16))(v32, &v38);
  result = (*(*v32 + 8))(v32);
  if (v43 == 1)
  {
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v42, v33);
    v35 = v41;
    v41 = 0;
    if (v35 && atomic_fetch_add_explicit(v35, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v35, v34);
    }

    result = v40;
    v40 = 0;
    if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v34);
    }
  }

  return result;
}

uint64_t WebKit::WebSWClientConnection::addCookieChangeSubscriptions(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v7 = a1 + 24;
  v6 = *(a1 + 24);
  v8 = *a4;
  *a4 = 0;
  v9 = (*(v6 + 56))(a1 + 24);
  v11 = IPC::Encoder::operator new(0x238, v10);
  *v11 = 3091;
  *(v11 + 2) = 0;
  *(v11 + 3) = 0;
  *(v11 + 1) = v9;
  *(v11 + 68) = 0;
  *(v11 + 70) = 0;
  *(v11 + 69) = 0;
  IPC::Encoder::encodeHeader(v11);
  v19 = v11;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v11, a2);
  IPC::VectorArgumentCoder<false,WebCore::DataListSuggestion,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WebCore::DataListSuggestion,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(v11, a3);
  v12 = WTF::fastMalloc(0x10);
  *v12 = &unk_1F112F358;
  v12[1] = v8;
  if (WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1)
  {
    result = 141;
    __break(0xC471u);
  }

  else
  {
    v18[0] = v12;
    v18[1] = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
    (*(*v7 + 40))(v7, &v19, v18, 0);
    v14 = v18[0];
    v18[0] = 0;
    if (v14)
    {
      (*(*v14 + 8))(v14);
    }

    result = v19;
    v19 = 0;
    if (result)
    {
      IPC::Encoder::~Encoder(result, v13);
      return bmalloc::api::tzoneFree(v16, v17);
    }
  }

  return result;
}

uint64_t WebKit::WebSWClientConnection::removeCookieChangeSubscriptions(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v7 = a1 + 24;
  v6 = *(a1 + 24);
  v8 = *a4;
  *a4 = 0;
  v9 = (*(v6 + 56))(a1 + 24);
  v11 = IPC::Encoder::operator new(0x238, v10);
  *v11 = 3110;
  *(v11 + 2) = 0;
  *(v11 + 3) = 0;
  *(v11 + 1) = v9;
  *(v11 + 68) = 0;
  *(v11 + 70) = 0;
  *(v11 + 69) = 0;
  IPC::Encoder::encodeHeader(v11);
  v19 = v11;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v11, a2);
  IPC::VectorArgumentCoder<false,WebCore::DataListSuggestion,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WebCore::DataListSuggestion,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(v11, a3);
  v12 = WTF::fastMalloc(0x10);
  *v12 = &unk_1F112F380;
  v12[1] = v8;
  if (WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1)
  {
    result = 141;
    __break(0xC471u);
  }

  else
  {
    v18[0] = v12;
    v18[1] = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
    (*(*v7 + 40))(v7, &v19, v18, 0);
    v14 = v18[0];
    v18[0] = 0;
    if (v14)
    {
      (*(*v14 + 8))(v14);
    }

    result = v19;
    v19 = 0;
    if (result)
    {
      IPC::Encoder::~Encoder(result, v13);
      return bmalloc::api::tzoneFree(v16, v17);
    }
  }

  return result;
}

uint64_t WebKit::WebSWClientConnection::cookieChangeSubscriptions(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = a1 + 24;
  v4 = *(a1 + 24);
  v6 = *a3;
  *a3 = 0;
  v7 = (*(v4 + 56))(a1 + 24);
  v9 = IPC::Encoder::operator new(0x238, v8);
  *v9 = 3096;
  *(v9 + 2) = 0;
  *(v9 + 3) = 0;
  *(v9 + 1) = v7;
  *(v9 + 68) = 0;
  *(v9 + 70) = 0;
  *(v9 + 69) = 0;
  IPC::Encoder::encodeHeader(v9);
  v17 = v9;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v9, a2);
  v10 = WTF::fastMalloc(0x10);
  *v10 = &unk_1F112F3A8;
  v10[1] = v6;
  if (WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1)
  {
    result = 141;
    __break(0xC471u);
  }

  else
  {
    v16[0] = v10;
    v16[1] = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
    (*(*v5 + 40))(v5, &v17, v16, 0);
    v12 = v16[0];
    v16[0] = 0;
    if (v12)
    {
      (*(*v12 + 8))(v12);
    }

    result = v17;
    v17 = 0;
    if (result)
    {
      IPC::Encoder::~Encoder(result, v11);
      return bmalloc::api::tzoneFree(v14, v15);
    }
  }

  return result;
}

atomic_uint **WebKit::WebSWClientConnection::addRoutes@<X0>(void *a1@<X1>, uint64_t a2@<X2>, WTF::Logger **a3@<X8>)
{
  v64 = *MEMORY[0x1E69E9840];
  {
    v6 = WebKit::WebProcess::singleton(void)::process;
  }

  else
  {
    v50 = WebKit::WebProcess::operator new(0x370, a1);
    v6 = WebKit::WebProcess::WebProcess(v50);
    WebKit::WebProcess::singleton(void)::process = v6;
  }

  v7 = *(WebKit::WebProcess::ensureNetworkProcessConnection(v6) + 24);
  v54 = 0uLL;
  *&v55 = "sendWithPromisedReply";
  *(&v55 + 1) = 0;
  v8 = WTF::fastMalloc(0x88);
  *(v8 + 8) = 1;
  *v8 = &unk_1F112F3D0;
  v9 = v55;
  *(v8 + 16) = v54;
  *(v8 + 32) = v9;
  *(v8 + 48) = 0;
  v10 = (v8 + 48);
  *(v8 + 80) = 0;
  *(v8 + 88) = v8 + 104;
  *(v8 + 96) = 1;
  *(v8 + 112) = 0;
  *(v8 + 120) = 0;
  *(v8 + 128) = 0;
  v11 = WTF::NativePromiseBase::logChannel(v8);
  if (*v11)
  {
    v12 = v11;
    if (v11[16] >= 4u)
    {
      WTF::String::String(&v60, "creating ");
      WTF::LogArgument<WTF::NativePromise<WebCore::VideoPlaybackQualityMetrics,WebCore::PlatformMediaError,0u>>::toString(&v59, v8);
      *buf = v60;
      v56 = v59;
      WTF::tryMakeStringFromAdapters<WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>>(buf, &v56, &v61);
      if (!v61)
      {
        __break(0xC471u);
LABEL_62:
        JUMPOUT(0x19E344C8CLL);
      }

      v14 = v59;
      v59 = 0;
      if (v14 && atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v14, v13);
      }

      v15 = v60;
      v60 = 0;
      if (v15 && atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v15, v13);
      }

      v16 = *(v12 + 4);
      v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);
      if (v17)
      {
        WTF::String::utf8();
        v19 = v56 ? v56 + 16 : 0;
        *buf = 136446210;
        *&buf[4] = v19;
        _os_log_impl(&dword_19D52D000, v16, OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
        v17 = v56;
        v56 = 0;
        if (v17)
        {
          if (*v17 == 1)
          {
            v17 = WTF::fastFree(v17, v18);
          }

          else
          {
            --*v17;
          }
        }
      }

      if (*v12 && v12[16] >= 4u)
      {
        v20 = MEMORY[0x1E696EBC0];
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
            v51 = a3;
            v52 = v7;
            v53 = a2;
            v23 = WTF::Logger::observers(v17);
            v24 = *(v23 + 12);
            if (v24)
            {
              v25 = *v23;
              v26 = *v23 + 8 * v24;
              do
              {
                v27 = *v25;
                *buf = 0;
                WTF::String::String(&buf[8], "creating ");
                *&buf[16] = 0;
                WTF::LogArgument<WTF::NativePromise<WebCore::VideoPlaybackQualityMetrics,WebCore::PlatformMediaError,0u>>::toString(&v63, v8);
                WTF::Vector<WTF::JSONLogValue,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(&v56, buf, 2uLL);
                (*(*v27 + 16))(v27, v12, 4, &v56);
                WTF::Vector<std::tuple<Inspector::BackendDispatcher::CommonErrorCode,WTF::String>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v56, v28);
                for (i = 24; i != -8; i -= 16)
                {
                  v30 = *&buf[i];
                  *&buf[i] = 0;
                  if (v30 && atomic_fetch_add_explicit(v30, 0xFFFFFFFE, memory_order_relaxed) == 2)
                  {
                    WTF::StringImpl::destroy(v30, v18);
                  }
                }

                ++v25;
              }

              while (v25 != v26);
            }

            v31 = 1;
            atomic_compare_exchange_strong_explicit(v20, &v31, 0, memory_order_release, memory_order_relaxed);
            v7 = v52;
            a2 = v53;
            a3 = v51;
            if (v31 != 1)
            {
              WTF::Lock::unlockSlow(MEMORY[0x1E696EBC0]);
            }

            break;
          }
        }
      }

      v11 = v61;
      v61 = 0;
      if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        v11 = WTF::StringImpl::destroy(v11, v18);
      }
    }
  }

  v32 = 0;
  v56 = v8;
  v57 = v54;
  v58 = v55;
  atomic_fetch_add((v8 + 8), 1u);
  atomic_compare_exchange_strong_explicit((v8 + 48), &v32, 1u, memory_order_acquire, memory_order_acquire);
  if (v32)
  {
    v11 = MEMORY[0x19EB01E30](v10);
  }

  v33 = WTF::NativePromiseBase::logChannel(v11);
  if (*v33 && v33[16] >= 4u)
  {
    WTF::Logger::log<WTF::Logger::LogSiteIdentifier,char [27],WTF::NativePromise<WebCore::DOMCacheEngine::CacheIdentifierOperationResult,WebCore::DOMCacheEngine::Error,0u>>(v33, &v54, " runSynchronouslyOnTarget ", v8);
  }

  atomic_store(0, (v8 + 129));
  v34 = 1;
  atomic_compare_exchange_strong_explicit((v8 + 48), &v34, 0, memory_order_release, memory_order_relaxed);
  if (v34 != 1)
  {
    WTF::Lock::unlockSlow(v10);
  }

  if (atomic_fetch_add((v8 + 8), 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, (v8 + 8));
    (*(*v8 + 16))(v8);
  }

  v35 = v56;
  if (v56)
  {
    atomic_fetch_add(v56 + 2, 1u);
    v36 = v56;
  }

  else
  {
    v36 = 0;
  }

  *a3 = v35;
  v56 = 0;
  *&buf[8] = v57;
  v63 = v58;
  v37 = WTF::fastMalloc(0x30);
  *v37 = &unk_1F112F3F8;
  *(v37 + 8) = v36;
  *buf = 0;
  v38 = v63;
  *(v37 + 16) = *&buf[8];
  *(v37 + 32) = v38;
  *&v54 = v37;
  if (WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1)
  {
    __break(0xC471u);
    goto LABEL_62;
  }

  *(&v54 + 1) = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
  WTF::NativePromiseProducer<void,WebCore::ExceptionData,0u>::~NativePromiseProducer(buf);
  v40 = IPC::Encoder::operator new(0x238, v39);
  *v40 = 3092;
  *(v40 + 68) = 0;
  *(v40 + 70) = 0;
  *(v40 + 69) = 0;
  *(v40 + 2) = 0;
  *(v40 + 3) = 0;
  *(v40 + 1) = 0;
  IPC::Encoder::encodeHeader(v40);
  *buf = v40;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v40, a1);
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v40, *(a2 + 12));
  v41 = *(a2 + 12);
  if (v41)
  {
    v42 = *a2;
    v43 = v41 << 7;
    do
    {
      IPC::ArgumentCoder<WebCore::ServiceWorkerRoute,void>::encode(v40, v42);
      v42 += 128;
      v43 -= 128;
    }

    while (v43);
  }

  IPC::Connection::sendMessageWithAsyncReplyWithDispatcher(v7, buf, &v54, 0, 0);
  v45 = *buf;
  *buf = 0;
  if (v45)
  {
    IPC::Encoder::~Encoder(v45, v44);
    bmalloc::api::tzoneFree(v48, v49);
  }

  v46 = v54;
  *&v54 = 0;
  if (v46)
  {
    (*(*v46 + 8))(v46);
  }

  return WTF::NativePromiseProducer<void,WebCore::ExceptionData,0u>::~NativePromiseProducer(&v56);
}

uint64_t WebKit::WebSWContextManagerConnection::WebSWContextManagerConnection(uint64_t a1, uint64_t *a2, atomic_uint **a3, __int128 *a4, uint64_t a5, uint64_t a6, uint64_t a7, WebKit::WebPage *a8, uint64_t *a9)
{
  *(a1 + 8) = 0;
  *a1 = &unk_1F112EAA8;
  *(a1 + 16) = &unk_1F112EBA0;
  *(a1 + 24) = 3;
  v11 = *a2;
  *a2 = 0;
  *(a1 + 32) = v11;
  v12 = *a3;
  if (*a3)
  {
    atomic_fetch_add_explicit(v12, 2u, memory_order_relaxed);
  }

  *(a1 + 40) = v12;
  v13 = a3[1];
  if (v13)
  {
    atomic_fetch_add_explicit(v13, 2u, memory_order_relaxed);
  }

  *(a1 + 48) = v13;
  v14 = *a4;
  v15 = a4[2];
  *(a1 + 80) = a4[1];
  *(a1 + 96) = v15;
  *(a1 + 64) = v14;
  *(a1 + 112) = a5;
  *(a1 + 120) = a6;
  *(a1 + 128) = a7;
  *(a1 + 136) = 0;
  WebCore::standardUserAgentWithApplicationName();
  *(a1 + 152) = 1;
  WebKit::WebUserContentController::getOrCreate(*a9, (a1 + 160));
  *(a1 + 168) = 0;
  *(a1 + 216) = 0;
  WTF::WorkQueue::create();
  *(a1 + 232) = 0;
  *(a1 + 240) = 0;
  WebKit::WebUserContentController::addContentRuleLists(*(a1 + 160), (a9 + 1));
  WebKit::WebPage::updatePreferencesGenerated(a8, v16, v17);
  std::optional<WebKit::WebPreferencesStore>::operator=[abi:sn200100]<WebKit::WebPreferencesStore const&,void>(a1 + 168, a8);
  {
    v19 = WebKit::WebProcess::singleton(void)::process;
  }

  else
  {
    v21 = WebKit::WebProcess::operator new(0x370, v18);
    v19 = WebKit::WebProcess::WebProcess(v21);
    WebKit::WebProcess::singleton(void)::process = v19;
  }

  ++*(v19 + 8);
  return a1;
}

void WebKit::WebSWContextManagerConnection::~WebSWContextManagerConnection(WebKit::WebSWContextManagerConnection *this, void *a2)
{
  v3 = *(this + 30);
  if (v3)
  {
    v4 = *(v3 - 4);
    if (v4)
    {
      v5 = (v3 + 8);
      do
      {
        if (*(v5 - 1) != -1)
        {
          v6 = *v5;
          *v5 = 0;
          if (v6)
          {
            if (atomic_fetch_add(v6 + 2, 0xFFFFFFFF) == 1)
            {
              atomic_store(1u, v6 + 2);
              bmalloc::api::tzoneFree(v6, a2);
            }
          }
        }

        v5 += 2;
        --v4;
      }

      while (v4);
    }

    WTF::fastFree((v3 - 16), a2);
  }

  v7 = *(this + 29);
  if (v7)
  {
    v8 = *(v7 - 4);
    if (v8)
    {
      v9 = (v7 + 16);
      do
      {
        if (*(v9 - 2) != -1)
        {
          v10 = *v9;
          *v9 = 0;
          if (v10)
          {
            WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::ServiceWorkerFetch::Client,(WTF::DestructionThread)1>::deref((v10 + 8));
          }
        }

        v9 += 3;
        --v8;
      }

      while (v8);
    }

    WTF::fastFree((v7 - 16), a2);
  }

  v11 = *(this + 28);
  *(this + 28) = 0;
  if (v11)
  {
    (*(*v11 + 40))(v11);
  }

  if (*(this + 216) == 1)
  {
    v12 = *(this + 24);
    if (v12)
    {
      WTF::RobinHoodHashTable<WTF::String,WTF::KeyValuePair<WTF::String,mpark::variant<WTF::String,BOOL,unsigned int,double>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,mpark::variant<WTF::String,BOOL,unsigned int,double>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,mpark::variant<WTF::String,BOOL,unsigned int,double>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<mpark::variant<WTF::String,BOOL,unsigned int,double>>,WTF::MemoryCompactRobinHoodHashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::MemoryCompactRobinHoodHashTableSizePolicy,WTF::FastMalloc>::deallocateTable(v12, *(this + 50));
    }

    v13 = *(this + 21);
    if (v13)
    {
      WTF::RobinHoodHashTable<WTF::String,WTF::KeyValuePair<WTF::String,mpark::variant<WTF::String,BOOL,unsigned int,double>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,mpark::variant<WTF::String,BOOL,unsigned int,double>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,mpark::variant<WTF::String,BOOL,unsigned int,double>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<mpark::variant<WTF::String,BOOL,unsigned int,double>>,WTF::MemoryCompactRobinHoodHashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::MemoryCompactRobinHoodHashTableSizePolicy,WTF::FastMalloc>::deallocateTable(v13, *(this + 44));
    }
  }

  WTF::Ref<WebKit::WebUserContentController,WTF::RawPtrTraits<WebKit::WebUserContentController>,WTF::DefaultRefDerefTraits<WebKit::WebUserContentController>>::~Ref(this + 20);
  v15 = *(this + 18);
  *(this + 18) = 0;
  if (v15 && atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v15, v14);
  }

  v16 = *(this + 17);
  if (v16)
  {
    v17 = *(v16 - 4);
    if (v17)
    {
      v18 = *(this + 17);
      do
      {
        if (*v18 != -1)
        {
          std::unique_ptr<WebKit::RemoteWorkerFrameLoaderClient>::reset[abi:sn200100](v18, 0);
        }

        ++v18;
        --v17;
      }

      while (v17);
    }

    WTF::fastFree((v16 - 16), v14);
  }

  v19 = *(this + 6);
  *(this + 6) = 0;
  if (v19 && atomic_fetch_add_explicit(v19, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v19, v14);
  }

  v20 = *(this + 5);
  *(this + 5) = 0;
  if (v20 && atomic_fetch_add_explicit(v20, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v20, v14);
  }

  v21 = *(this + 4);
  *(this + 4) = 0;
  if (v21)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v21);
  }
}

{
  WebKit::WebSWContextManagerConnection::~WebSWContextManagerConnection(this, a2);

  WTF::fastFree(v2, v3);
}

void non-virtual thunk toWebKit::WebSWContextManagerConnection::~WebSWContextManagerConnection(WebKit::WebSWContextManagerConnection *this, void *a2)
{
  WebKit::WebSWContextManagerConnection::~WebSWContextManagerConnection((this - 16), a2);
}

{
  WebKit::WebSWContextManagerConnection::~WebSWContextManagerConnection((this - 16), a2);

  WTF::fastFree(v2, v3);
}

uint64_t WebKit::WebSWContextManagerConnection::establishConnection(uint64_t a1, uint64_t *a2)
{
  IPC::Connection::addWorkQueueMessageReceiver(*(a1 + 32), 0xC7, *(a1 + 224), (a1 + 16), 0);
  v4 = *(a1 + 32);
  v5 = *a2;
  *a2 = 0;
  v6 = WTF::fastMalloc(0x10);
  *v6 = &unk_1F112F4C0;
  v6[1] = v5;
  if (WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1)
  {
    result = 141;
    __break(0xC471u);
  }

  else
  {
    v7 = v6;
    IdentifierInternal = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
    v10 = IPC::Encoder::operator new(0x238, v9);
    *v10 = 446;
    *(v10 + 68) = 0;
    *(v10 + 70) = 0;
    *(v10 + 69) = 0;
    *(v10 + 2) = 0;
    *(v10 + 3) = 0;
    *(v10 + 1) = 0;
    IPC::Encoder::encodeHeader(v10);
    v17 = v10;
    IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v10, *(a1 + 120));
    IPC::ArgumentCoder<WebCore::Site,void>::encode(v10, (a1 + 40));
    IPC::ArgumentCoder<std::optional<WebCore::ProcessQualified<WTF::UUID>>,void>::encode<IPC::Encoder,std::optional<WebCore::ProcessQualified<WTF::UUID>> const&>(v10, a1 + 64);
    v16[0] = v7;
    v16[1] = IdentifierInternal;
    IPC::Connection::sendMessageWithAsyncReply(v4, &v17, v16, 0, 0);
    v12 = v16[0];
    v16[0] = 0;
    if (v12)
    {
      (*(*v12 + 8))(v12);
    }

    result = v17;
    v17 = 0;
    if (result)
    {
      IPC::Encoder::~Encoder(result, v11);
      return bmalloc::api::tzoneFree(v14, v15);
    }
  }

  return result;
}

WTF *WebKit::WebSWContextManagerConnection::updatePreferencesStore(uint64_t a1, uint64_t *a2)
{
  if (WTF::isMainRunLoop(a1))
  {
    result = WebKit::WebPage::updatePreferencesGenerated(a2, v4, v5);
    if (*(a1 + 216) == 1)
    {
      v8 = *a2;
      *a2 = 0;
      v9 = *(a2 + 4);
      *(a2 + 4) = 0;
      v10 = *(a2 + 20);
      *(a2 + 20) = 0;
      v11 = *(a1 + 168);
      *(a1 + 168) = v8;
      v12 = a2[1];
      a2[1] = 0;
      v13 = *(a1 + 176);
      *(a1 + 176) = v12;
      *(a1 + 184) = v9;
      *(a1 + 188) = v10;
      if (v11)
      {
        WTF::RobinHoodHashTable<WTF::String,WTF::KeyValuePair<WTF::String,mpark::variant<WTF::String,BOOL,unsigned int,double>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,mpark::variant<WTF::String,BOOL,unsigned int,double>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,mpark::variant<WTF::String,BOOL,unsigned int,double>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<mpark::variant<WTF::String,BOOL,unsigned int,double>>,WTF::MemoryCompactRobinHoodHashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::MemoryCompactRobinHoodHashTableSizePolicy,WTF::FastMalloc>::deallocateTable(v11, v13);
      }

      v14 = a2[3];
      a2[3] = 0;
      v15 = *(a2 + 10);
      *(a2 + 10) = 0;
      v16 = *(a2 + 44);
      *(a2 + 44) = 0;
      result = *(a1 + 192);
      *(a1 + 192) = v14;
      v17 = a2[4];
      a2[4] = 0;
      v18 = *(a1 + 200);
      *(a1 + 200) = v17;
      *(a1 + 208) = v15;
      *(a1 + 212) = v16;
      if (result)
      {

        return WTF::RobinHoodHashTable<WTF::String,WTF::KeyValuePair<WTF::String,mpark::variant<WTF::String,BOOL,unsigned int,double>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,mpark::variant<WTF::String,BOOL,unsigned int,double>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,mpark::variant<WTF::String,BOOL,unsigned int,double>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<mpark::variant<WTF::String,BOOL,unsigned int,double>>,WTF::MemoryCompactRobinHoodHashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::MemoryCompactRobinHoodHashTableSizePolicy,WTF::FastMalloc>::deallocateTable(result, v18);
      }
    }

    else
    {
      *(a1 + 168) = 0;
      *(a1 + 176) = 0;
      *(a1 + 181) = 0;
      v23 = *a2;
      *a2 = 0;
      *(a1 + 168) = v23;
      LODWORD(v23) = *(a2 + 2);
      *(a2 + 2) = 0;
      *(a1 + 176) = v23;
      LODWORD(v23) = *(a2 + 3);
      *(a2 + 3) = 0;
      *(a1 + 180) = v23;
      LODWORD(v23) = *(a2 + 4);
      *(a2 + 4) = 0;
      *(a1 + 184) = v23;
      LOBYTE(v23) = *(a2 + 20);
      *(a2 + 20) = 0;
      *(a1 + 188) = v23;
      *(a1 + 205) = 0;
      *(a1 + 192) = 0;
      *(a1 + 200) = 0;
      v24 = a2[3];
      a2[3] = 0;
      *(a1 + 192) = v24;
      LODWORD(v24) = *(a2 + 8);
      *(a2 + 8) = 0;
      *(a1 + 200) = v24;
      LODWORD(v24) = *(a2 + 9);
      *(a2 + 9) = 0;
      *(a1 + 204) = v24;
      LODWORD(v24) = *(a2 + 10);
      *(a2 + 10) = 0;
      *(a1 + 208) = v24;
      LOBYTE(v24) = *(a2 + 44);
      *(a2 + 44) = 0;
      *(a1 + 212) = v24;
      *(a1 + 216) = 1;
    }
  }

  else
  {
    while (1)
    {
      v19 = *(a1 + 24);
      if ((v19 & 1) == 0)
      {
        break;
      }

      v20 = *(a1 + 24);
      atomic_compare_exchange_strong_explicit((a1 + 24), &v20, v19 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v20 == v19)
      {
        goto LABEL_13;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*(a1 + 24));
LABEL_13:
    *&v25 = a1;
    v21.n128_f64[0] = WTF::CrossThreadCopierBase<false,false,WTF::HashMap<WTF::String,mpark::variant<WTF::String,BOOL,unsigned int,double>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<mpark::variant<WTF::String,BOOL,unsigned int,double>>,WTF::MemoryCompactRobinHoodHashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>::copy(&v25 + 8, a2, v6);
    WTF::CrossThreadCopierBase<false,false,WTF::HashMap<WTF::String,mpark::variant<WTF::String,BOOL,unsigned int,double>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<mpark::variant<WTF::String,BOOL,unsigned int,double>>,WTF::MemoryCompactRobinHoodHashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>::copy(v29, a2 + 3, v21);
    v22 = WTF::fastMalloc(0x40);
    *v22 = &unk_1F112F4E8;
    *(v22 + 8) = v25;
    *(v22 + 24) = v26;
    *(v22 + 32) = v27;
    *(v22 + 36) = v28;
    *(v22 + 40) = v29[0];
    *(v22 + 48) = v29[1];
    *(v22 + 56) = v30;
    *(v22 + 60) = v31;
    v32 = v22;
    WTF::callOnMainRunLoop();
    result = v32;
    v32 = 0;
    if (result)
    {
      return (*(*result + 8))(result);
    }
  }

  return result;
}

atomic_ullong *WebKit::WebSWContextManagerConnection::updateAppInitiatedValue(atomic_ullong *a1, uint64_t a2, char a3)
{
  isMainRunLoop = WTF::isMainRunLoop(a1);
  if (isMainRunLoop)
  {
    WebCore::SWContextManager::singleton(isMainRunLoop);
    result = WebCore::SWContextManager::serviceWorkerThreadProxy();
    if (result)
    {
      v8 = result;
      v9 = result + 1;
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
          goto LABEL_15;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v9);
LABEL_15:
      WebCore::ServiceWorkerThreadProxy::setLastNavigationWasAppInitiated(v8);

      return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::ServiceWorkerThreadProxy,(WTF::DestructionThread)1>::deref(v9);
    }
  }

  else
  {
    while (1)
    {
      v12 = a1[3];
      if ((v12 & 1) == 0)
      {
        break;
      }

      v13 = a1[3];
      atomic_compare_exchange_strong_explicit(a1 + 3, &v13, v12 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v13 == v12)
      {
        goto LABEL_11;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(a1[3]);
LABEL_11:
    v14 = WTF::fastMalloc(0x20);
    *v14 = &unk_1F112F510;
    *(v14 + 8) = a1;
    *(v14 + 16) = a2;
    *(v14 + 24) = a3;
    v15 = v14;
    WTF::callOnMainRunLoop();
    result = v15;
    if (v15)
    {
      return (*(*v15 + 8))(v15);
    }
  }

  return result;
}

void WebKit::WebSWContextManagerConnection::installServiceWorker(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, char a6, __int16 a7)
{
  v55 = *MEMORY[0x1E69E9840];
  *&v28 = a1;
  while (1)
  {
    v11 = *(a1 + 24);
    if ((v11 & 1) == 0)
    {
      break;
    }

    v12 = *(a1 + 24);
    atomic_compare_exchange_strong_explicit((a1 + 24), &v12, v11 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v12 == v11)
    {
      goto LABEL_6;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*(a1 + 24));
LABEL_6:
  *(&v28 + 1) = a1;
  WebCore::ServiceWorkerContextData::isolatedCopy();
  WebCore::ServiceWorkerData::isolatedCopy();
  WTF::String::isolatedCopy();
  LOBYTE(v54) = a5;
  BYTE1(v54) = a6;
  HIWORD(v54) = a7;
  v13 = WTF::fastMalloc(0x2C0);
  *v13 = &unk_1F112F588;
  *(v13 + 16) = v28;
  v14 = v30;
  *(v13 + 32) = v29;
  *(v13 + 48) = v14;
  WebCore::ServiceWorkerRegistrationData::ServiceWorkerRegistrationData(v13 + 56, v31);
  *(v13 + 408) = v31[44];
  v15 = v32;
  v32 = 0u;
  *(v13 + 416) = v15;
  v16 = v33;
  v33 = 0;
  *(v13 + 432) = v16;
  *&v15 = v34;
  v34 = 0;
  *(v13 + 440) = v15;
  *(v13 + 448) = v35;
  *(v13 + 452) = v36;
  *(v13 + 456) = v37;
  v17 = v38;
  v38 = 0u;
  *(v13 + 464) = v17;
  v18 = v39;
  v39 = 0;
  *(v13 + 480) = v18;
  WTF::URL::URL(v13 + 488, v40);
  *&v19 = 0;
  *(v13 + 528) = v41;
  v20 = v42;
  v42 = v19;
  *(v13 + 536) = v20;
  v21 = v43;
  v43 = 0;
  *(v13 + 552) = v21;
  LOBYTE(v21) = v44;
  v44 = 0;
  *(v13 + 556) = v21;
  v22 = v47;
  *(v13 + 576) = v46;
  *(v13 + 592) = v22;
  *(v13 + 560) = v45;
  *(v13 + 608) = v48;
  v23 = v49;
  v49 = 0;
  *(v13 + 616) = v23;
  *(v13 + 624) = v50;
  WTF::URL::URL(v13 + 640, &v51);
  *(v13 + 680) = v52;
  v24 = v53;
  v53 = 0;
  *(v13 + 688) = v24;
  *(v13 + 696) = v54;
  WTF::callOnMainRunLoopAndWait();
  if (v13)
  {
    (*(*v13 + 8))(v13);
  }

  v26 = v53;
  v53 = 0;
  if (v26 && atomic_fetch_add_explicit(v26, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v26, v25);
  }

  v27 = v51;
  v51 = 0;
  if (v27 && atomic_fetch_add_explicit(v27, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v27, v25);
  }

  WebCore::ServiceWorkerContextData::~ServiceWorkerContextData(&v29, v25);
}

WTF::StringImpl *WebKit::WebSWContextManagerConnection::setUserAgent(atomic_ullong *a1, atomic_ullong *a2)
{
  if (WTF::isMainThread(a1))
  {
    v5 = *a2;
    *a2 = 0;
    result = a1[18];
    a1[18] = v5;
    if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {

      return WTF::StringImpl::destroy(result, v4);
    }
  }

  else
  {
    while (1)
    {
      v7 = a1[3];
      if ((v7 & 1) == 0)
      {
        break;
      }

      v8 = a1[3];
      atomic_compare_exchange_strong_explicit(a1 + 3, &v8, v7 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v8 == v7)
      {
        goto LABEL_11;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(a1[3]);
LABEL_11:
    WTF::String::isolatedCopy();
    v9 = WTF::fastMalloc(0x18);
    *v9 = &unk_1F112F650;
    v9[1] = a1;
    v9[2] = v10;
    v11 = v9;
    WTF::callOnMainRunLoop();
    if (v11)
    {
      (*(*v11 + 8))(v11);
    }

    return 0;
  }

  return result;
}

uint64_t WebKit::WebSWContextManagerConnection::serviceWorkerStarted(uint64_t a1, void *a2, uint64_t a3, char a4)
{
  v7 = *(a1 + 32);
  v8 = IPC::Encoder::operator new(0x238, a2);
  *v8 = 3138;
  *(v8 + 68) = 0;
  *(v8 + 70) = 0;
  *(v8 + 69) = 0;
  *(v8 + 2) = 0;
  *(v8 + 3) = 0;
  *(v8 + 1) = 0;
  IPC::Encoder::encodeHeader(v8);
  v15 = v8;
  IPC::ArgumentCoder<std::optional<WebCore::ServiceWorkerJobDataIdentifier>,void>::encode<IPC::Encoder,std::optional<WebCore::ServiceWorkerJobDataIdentifier> const&>(v8, a2);
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v8, a3);
  v9 = IPC::Encoder::grow(v8, 1uLL, 1);
  if (v10)
  {
    *v9 = a4;
    IPC::Connection::sendMessageImpl(v7, &v15, 0, 0);
    result = v15;
    v15 = 0;
    if (result)
    {
      IPC::Encoder::~Encoder(result, v11);
      return bmalloc::api::tzoneFree(v13, v14);
    }
  }

  else
  {
    result = 1067;
    __break(0xC471u);
  }

  return result;
}

IPC::Encoder *WebKit::WebSWContextManagerConnection::serviceWorkerFailedToStart(uint64_t a1, void *a2, uint64_t a3, uint64_t *a4)
{
  v7 = *(a1 + 32);
  v8 = IPC::Encoder::operator new(0x238, a2);
  *v8 = 3137;
  *(v8 + 68) = 0;
  *(v8 + 70) = 0;
  *(v8 + 69) = 0;
  *(v8 + 2) = 0;
  *(v8 + 3) = 0;
  *(v8 + 1) = 0;
  IPC::Encoder::encodeHeader(v8);
  v13 = v8;
  IPC::ArgumentCoder<std::optional<WebCore::ServiceWorkerJobDataIdentifier>,void>::encode<IPC::Encoder,std::optional<WebCore::ServiceWorkerJobDataIdentifier> const&>(v8, a2);
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v8, a3);
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v8, a4);
  IPC::Connection::sendMessageImpl(v7, &v13, 0, 0);
  result = v13;
  v13 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v9);
    return bmalloc::api::tzoneFree(v11, v12);
  }

  return result;
}

uint64_t *WebKit::WebSWContextManagerConnection::cancelFetch(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WebCore::SWContextManager::singleton(a1);
  WebCore::SWContextManager::serviceWorkerThreadProxyFromBackgroundThread();
  if (v11[0])
  {
    WebCore::ServiceWorkerThreadProxy::cancelFetch();
    v7 = v11[0];
    v11[0] = 0;
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::ServiceWorkerThreadProxy,(WTF::DestructionThread)1>::deref((v7 + 8));
  }

  v11[0] = a2;
  v11[1] = a4;
  result = WTF::HashTable<std::pair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePair<std::pair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::Ref<WebKit::WebServiceWorkerFetchTaskClient,WTF::RawPtrTraits<WebKit::WebServiceWorkerFetchTaskClient>,WTF::DefaultRefDerefTraits<WebKit::WebServiceWorkerFetchTaskClient>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<std::pair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::Ref<WebKit::WebServiceWorkerFetchTaskClient,WTF::RawPtrTraits<WebKit::WebServiceWorkerFetchTaskClient>,WTF::DefaultRefDerefTraits<WebKit::WebServiceWorkerFetchTaskClient>>>>,WTF::DefaultHash<std::pair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashMap<std::pair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::Ref<WebKit::WebServiceWorkerFetchTaskClient,WTF::RawPtrTraits<WebKit::WebServiceWorkerFetchTaskClient>,WTF::DefaultRefDerefTraits<WebKit::WebServiceWorkerFetchTaskClient>>,WTF::DefaultHash<std::pair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<std::pair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WTF::Ref<WebKit::WebServiceWorkerFetchTaskClient,WTF::RawPtrTraits<WebKit::WebServiceWorkerFetchTaskClient>,WTF::DefaultRefDerefTraits<WebKit::WebServiceWorkerFetchTaskClient>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<std::pair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<std::pair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::Ref<WebKit::WebServiceWorkerFetchTaskClient,WTF::RawPtrTraits<WebKit::WebServiceWorkerFetchTaskClient>,WTF::DefaultRefDerefTraits<WebKit::WebServiceWorkerFetchTaskClient>>,WTF::DefaultHash<std::pair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<std::pair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WTF::Ref<WebKit::WebServiceWorkerFetchTaskClient,WTF::RawPtrTraits<WebKit::WebServiceWorkerFetchTaskClient>,WTF::DefaultRefDerefTraits<WebKit::WebServiceWorkerFetchTaskClient>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<std::pair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>,(WTF::ShouldValidateKey)1,std::pair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>( a1 + 29,  v11);
  v9 = a1[29];
  if (v9)
  {
    v10 = (v9 + 24 * *(v9 - 4));
    if (v10 == result)
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

    v10 = 0;
  }

  if (v10 != result)
  {
    return WTF::HashTable<std::pair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePair<std::pair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::Ref<WebKit::WebServiceWorkerFetchTaskClient,WTF::RawPtrTraits<WebKit::WebServiceWorkerFetchTaskClient>,WTF::DefaultRefDerefTraits<WebKit::WebServiceWorkerFetchTaskClient>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<std::pair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::Ref<WebKit::WebServiceWorkerFetchTaskClient,WTF::RawPtrTraits<WebKit::WebServiceWorkerFetchTaskClient>,WTF::DefaultRefDerefTraits<WebKit::WebServiceWorkerFetchTaskClient>>>>,WTF::DefaultHash<std::pair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashMap<std::pair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::Ref<WebKit::WebServiceWorkerFetchTaskClient,WTF::RawPtrTraits<WebKit::WebServiceWorkerFetchTaskClient>,WTF::DefaultRefDerefTraits<WebKit::WebServiceWorkerFetchTaskClient>>,WTF::DefaultHash<std::pair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<std::pair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WTF::Ref<WebKit::WebServiceWorkerFetchTaskClient,WTF::RawPtrTraits<WebKit::WebServiceWorkerFetchTaskClient>,WTF::DefaultRefDerefTraits<WebKit::WebServiceWorkerFetchTaskClient>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<std::pair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::FastMalloc>::remove( a1 + 29,  result);
  }

  return result;
}

void WebKit::WebSWContextManagerConnection::continueDidReceiveFetchResponse(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7[0] = a2;
  v7[1] = a4;
  v5 = WTF::HashTable<std::pair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePair<std::pair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::Ref<WebKit::WebServiceWorkerFetchTaskClient,WTF::RawPtrTraits<WebKit::WebServiceWorkerFetchTaskClient>,WTF::DefaultRefDerefTraits<WebKit::WebServiceWorkerFetchTaskClient>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<std::pair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::Ref<WebKit::WebServiceWorkerFetchTaskClient,WTF::RawPtrTraits<WebKit::WebServiceWorkerFetchTaskClient>,WTF::DefaultRefDerefTraits<WebKit::WebServiceWorkerFetchTaskClient>>>>,WTF::DefaultHash<std::pair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashMap<std::pair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::Ref<WebKit::WebServiceWorkerFetchTaskClient,WTF::RawPtrTraits<WebKit::WebServiceWorkerFetchTaskClient>,WTF::DefaultRefDerefTraits<WebKit::WebServiceWorkerFetchTaskClient>>,WTF::DefaultHash<std::pair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<std::pair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WTF::Ref<WebKit::WebServiceWorkerFetchTaskClient,WTF::RawPtrTraits<WebKit::WebServiceWorkerFetchTaskClient>,WTF::DefaultRefDerefTraits<WebKit::WebServiceWorkerFetchTaskClient>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<std::pair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<std::pair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::Ref<WebKit::WebServiceWorkerFetchTaskClient,WTF::RawPtrTraits<WebKit::WebServiceWorkerFetchTaskClient>,WTF::DefaultRefDerefTraits<WebKit::WebServiceWorkerFetchTaskClient>>,WTF::DefaultHash<std::pair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<std::pair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WTF::Ref<WebKit::WebServiceWorkerFetchTaskClient,WTF::RawPtrTraits<WebKit::WebServiceWorkerFetchTaskClient>,WTF::DefaultRefDerefTraits<WebKit::WebServiceWorkerFetchTaskClient>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<std::pair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>,(WTF::ShouldValidateKey)1,std::pair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>( (a1 + 232),  v7);
  WTF::HashMap<std::pair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::Ref<WebKit::WebServiceWorkerFetchTaskClient,WTF::RawPtrTraits<WebKit::WebServiceWorkerFetchTaskClient>,WTF::DefaultRefDerefTraits<WebKit::WebServiceWorkerFetchTaskClient>>,WTF::DefaultHash<std::pair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<std::pair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WTF::Ref<WebKit::WebServiceWorkerFetchTaskClient,WTF::RawPtrTraits<WebKit::WebServiceWorkerFetchTaskClient>,WTF::DefaultRefDerefTraits<WebKit::WebServiceWorkerFetchTaskClient>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::take((a1 + 232), v5, &v8);
  if (v8)
  {
    WebKit::WebServiceWorkerFetchTaskClient::continueDidReceiveResponse(v8);
    v6 = v8;
    v8 = 0;
    if (v6)
    {
      WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::ServiceWorkerFetch::Client,(WTF::DestructionThread)1>::deref(v6 + 1);
    }
  }
}

void WebKit::WebServiceWorkerFetchTaskClient::continueDidReceiveResponse(WebKit::WebServiceWorkerFetchTaskClient *this)
{
  v2 = 0;
  v22 = *MEMORY[0x1E69E9840];
  v3 = this + 17;
  atomic_compare_exchange_strong_explicit(this + 17, &v2, 1u, memory_order_acquire, memory_order_acquire);
  if (v2)
  {
    MEMORY[0x19EB01E30](this + 17);
  }

  v4 = qword_1ED641288;
  v5 = os_log_type_enabled(qword_1ED641288, OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    v6 = *(this + 3) != 0;
    v7 = *(this + 216);
    v8 = *(this + 80);
    if (v8 == 255)
    {
      v8 = -1;
    }

    *buf = 67109632;
    *&buf[4] = v6;
    v18 = 1024;
    v19 = v7;
    v20 = 2048;
    v21 = v8;
    _os_log_impl(&dword_19D52D000, v4, OS_LOG_TYPE_DEFAULT, "ServiceWorkerFrameLoaderClient::continueDidReceiveResponse, has connection %d, didFinish %d, response type %ld", buf, 0x18u);
  }

  if (*(this + 3))
  {
    *(this + 65) = 0;
    v9 = *(this + 80);
    if (v9 == 255)
    {
      v10 = -1;
    }

    else
    {
      v10 = *(this + 80);
    }

    if (v10 > 1)
    {
      if (v10 == 2)
      {
        if (v9 != 2)
        {
          goto LABEL_43;
        }

        WebKit::WebServiceWorkerFetchTaskClient::didReceiveFormDataAndFinishInternal(this, this + 9);
      }

      else
      {
        if (v9 != 3)
        {
          goto LABEL_43;
        }

        WebKit::WebServiceWorkerFetchTaskClient::didFailInternal(this, *(this + 9));
      }
    }

    else
    {
      if (v10)
      {
        if (v9 != 1)
        {
          goto LABEL_43;
        }

        WebCore::SharedBufferBuilder::copy(this + 9);
        WebCore::FragmentedSharedBuffer::makeContiguous(buf, v16);
        WebKit::WebServiceWorkerFetchTaskClient::didReceiveDataInternal(this, *buf);
        v11 = *buf;
        *buf = 0;
        if (v11 && atomic_fetch_add(v11 + 2, 0xFFFFFFFF) == 1)
        {
          atomic_store(1u, v11 + 2);
          (*(*v11 + 8))(v11);
        }

        if (v16 && atomic_fetch_add(v16 + 2, 0xFFFFFFFF) == 1)
        {
          atomic_store(1u, v16 + 2);
          (*(*v16 + 8))();
        }
      }

      else if (*(this + 80))
      {
LABEL_43:
        mpark::throw_bad_variant_access(v5);
      }

      if (*(this + 216) == 1)
      {
        WebKit::WebServiceWorkerFetchTaskClient::didFinishInternal(this, (this + 88));
      }
    }

    v12 = *(this + 80);
    if (v12 <= 1)
    {
      if (!*(this + 80))
      {
        *(this + 9) = 0;
        goto LABEL_41;
      }

      v14 = *(this + 9);
      *(this + 9) = 0;
      if (v14 && atomic_fetch_add(v14 + 2, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v14 + 2);
        (*(*v14 + 8))(v14);
      }
    }

    else if (v12 == 2)
    {
      v13 = *(this + 9);
      *(this + 9) = 0;
      if (v13)
      {
        WTF::RefCounted<WebCore::FormData>::deref(v13);
      }
    }

    else if (v12 == 3)
    {
      std::unique_ptr<WebCore::ResourceError>::reset[abi:sn200100](this + 9, 0);
    }

    *(this + 9) = 0;
    *(this + 80) = 0;
  }

LABEL_41:
  v15 = 1;
  atomic_compare_exchange_strong_explicit(v3, &v15, 0, memory_order_release, memory_order_relaxed);
  if (v15 != 1)
  {
    WTF::Lock::unlockSlow(v3);
  }
}

atomic_ullong *WebKit::WebSWContextManagerConnection::startFetch(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, WTF::RefCountedBase **a7)
{
  WebCore::SWContextManager::singleton(a1);
  WebCore::SWContextManager::serviceWorkerThreadProxyFromBackgroundThread();
  if (!v43)
  {
    result = IPC::Connection::send<Messages::ServiceWorkerFetchTask::DidNotHandle>(*(a1 + 32), a4);
    goto LABEL_45;
  }

  while (1)
  {
    v13 = *(v43 + 8);
    if ((v13 & 1) == 0)
    {
      break;
    }

    v14 = *(v43 + 8);
    atomic_compare_exchange_strong_explicit((v43 + 8), &v14, v13 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v14 == v13)
    {
      goto LABEL_7;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*(v43 + 8));
LABEL_7:
  v16 = (*(a5 + 148) >> 2) & 1;
  v17 = WTF::fastMalloc(0x18);
  *v17 = &unk_1F112F678;
  *(v17 + 8) = v43;
  *(v17 + 16) = v16;
  v41 = v17;
  WTF::callOnMainRunLoop();
  if (v41)
  {
    (*(*v41 + 8))(v41);
  }

  v40 = a7;
  v18 = *(a5 + 147);
  v19 = *(a1 + 32);
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
      goto LABEL_14;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v19);
LABEL_14:
  v22 = WTF::fastMalloc(0xE8);
  *(v22 + 8) = 3;
  v23 = (v22 + 8);
  *(v22 + 16) = 0;
  *v22 = &unk_1F112EBE8;
  *(v22 + 24) = v19;
  *(v22 + 32) = a2;
  *(v22 + 40) = a3;
  *(v22 + 48) = a4;
  *(v22 + 56) = 0;
  *(v22 + 64) = v18 == 1;
  *(v22 + 65) = 0;
  *(v22 + 72) = 0;
  *(v22 + 80) = 0;
  WebCore::NetworkLoadMetrics::NetworkLoadMetrics((v22 + 88));
  *(v22 + 216) = 0;
  *(v22 + 218) = 0;
  *(v22 + 224) = 0;
  if (v18 == 1)
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
        goto LABEL_19;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v23);
LABEL_19:
    if (!(a2 | a4) || a2 == -1)
    {
      __break(0xC471u);
      JUMPOUT(0x19E3463ECLL);
    }

    v26 = *(a1 + 232);
    if (!v26)
    {
      WTF::HashTable<std::pair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePair<std::pair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::Ref<WebKit::WebServiceWorkerFetchTaskClient,WTF::RawPtrTraits<WebKit::WebServiceWorkerFetchTaskClient>,WTF::DefaultRefDerefTraits<WebKit::WebServiceWorkerFetchTaskClient>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<std::pair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::Ref<WebKit::WebServiceWorkerFetchTaskClient,WTF::RawPtrTraits<WebKit::WebServiceWorkerFetchTaskClient>,WTF::DefaultRefDerefTraits<WebKit::WebServiceWorkerFetchTaskClient>>>>,WTF::DefaultHash<std::pair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashMap<std::pair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::Ref<WebKit::WebServiceWorkerFetchTaskClient,WTF::RawPtrTraits<WebKit::WebServiceWorkerFetchTaskClient>,WTF::DefaultRefDerefTraits<WebKit::WebServiceWorkerFetchTaskClient>>,WTF::DefaultHash<std::pair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<std::pair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WTF::Ref<WebKit::WebServiceWorkerFetchTaskClient,WTF::RawPtrTraits<WebKit::WebServiceWorkerFetchTaskClient>,WTF::DefaultRefDerefTraits<WebKit::WebServiceWorkerFetchTaskClient>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<std::pair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::FastMalloc>::expand( (a1 + 232),  0);
      v26 = *(a1 + 232);
    }

    v27 = *(v26 - 8);
    v28 = WTF::PairHash<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebCore::RealtimeMediaSource const*>::hash(a2, a4) & v27;
    v29 = (v26 + 24 * v28);
    v30 = *v29;
    v31 = v29[1];
    if (*v29 != 0)
    {
      v32 = 0;
      v33 = 1;
      do
      {
        if (v30 == a2 && v31 == a4)
        {
          WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::ServiceWorkerFetch::Client,(WTF::DestructionThread)1>::deref(v23);
          goto LABEL_41;
        }

        if (v30 == -1)
        {
          v32 = v29;
        }

        v28 = (v28 + v33) & v27;
        v29 = (v26 + 24 * v28);
        v30 = *v29;
        v31 = v29[1];
        ++v33;
      }

      while (*v29 != 0);
      if (v32)
      {
        *v32 = 0;
        v32[1] = 0;
        v32[2] = 0;
        --*(*(a1 + 232) - 16);
        v29 = v32;
      }
    }

    *v29 = a2;
    v29[1] = a4;
    v34 = v29[2];
    v29[2] = v22;
    if (v34)
    {
      WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::ServiceWorkerFetch::Client,(WTF::DestructionThread)1>::deref((v34 + 8));
    }

    v35 = *(a1 + 232);
    if (v35)
    {
      v36 = *(v35 - 12) + 1;
    }

    else
    {
      v36 = 1;
    }

    *(v35 - 12) = v36;
    v37 = (*(v35 - 16) + v36);
    v38 = *(v35 - 4);
    if (v38 > 0x400)
    {
      if (v38 > 2 * v37)
      {
        goto LABEL_41;
      }

      goto LABEL_39;
    }

    if (3 * v38 <= 4 * v37)
    {
LABEL_39:
      WTF::HashTable<std::pair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePair<std::pair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::Ref<WebKit::WebServiceWorkerFetchTaskClient,WTF::RawPtrTraits<WebKit::WebServiceWorkerFetchTaskClient>,WTF::DefaultRefDerefTraits<WebKit::WebServiceWorkerFetchTaskClient>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<std::pair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::Ref<WebKit::WebServiceWorkerFetchTaskClient,WTF::RawPtrTraits<WebKit::WebServiceWorkerFetchTaskClient>,WTF::DefaultRefDerefTraits<WebKit::WebServiceWorkerFetchTaskClient>>>>,WTF::DefaultHash<std::pair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashMap<std::pair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::Ref<WebKit::WebServiceWorkerFetchTaskClient,WTF::RawPtrTraits<WebKit::WebServiceWorkerFetchTaskClient>,WTF::DefaultRefDerefTraits<WebKit::WebServiceWorkerFetchTaskClient>>,WTF::DefaultHash<std::pair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<std::pair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WTF::Ref<WebKit::WebServiceWorkerFetchTaskClient,WTF::RawPtrTraits<WebKit::WebServiceWorkerFetchTaskClient>,WTF::DefaultRefDerefTraits<WebKit::WebServiceWorkerFetchTaskClient>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<std::pair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::FastMalloc>::expand( (a1 + 232),  v29);
    }
  }

LABEL_41:
  v39 = *v40;
  *v40 = 0;
  v42 = v39;
  WebCore::ResourceRequestBase::setHTTPBody();
  if (v42)
  {
    WTF::RefCounted<WebCore::FormData>::deref(v42);
  }

  result = WebCore::ServiceWorkerThreadProxy::startFetch();
  if (v22)
  {
    result = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::ServiceWorkerFetch::Client,(WTF::DestructionThread)1>::deref((v22 + 8));
  }

LABEL_45:
  if (v43)
  {
    return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::ServiceWorkerThreadProxy,(WTF::DestructionThread)1>::deref((v43 + 8));
  }

  return result;
}

atomic_ullong *WebKit::WebSWContextManagerConnection::postMessageToServiceWorker(WebCore::SWContextManager *a1)
{
  WebCore::SWContextManager::singleton(a1);
  WebCore::SWContextManager::serviceWorkerThreadProxyFromBackgroundThread();
  result = v2;
  if (v2)
  {
    WebCore::ServiceWorkerThreadProxy::fireMessageEvent();
    return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::ServiceWorkerThreadProxy,(WTF::DestructionThread)1>::deref(v2 + 1);
  }

  return result;
}

atomic_ullong *WebKit::WebSWContextManagerConnection::fireInstallEvent(WebCore::SWContextManager *a1)
{
  WebCore::SWContextManager::singleton(a1);
  WebCore::SWContextManager::serviceWorkerThreadProxyFromBackgroundThread();
  result = v2;
  if (v2)
  {
    WebCore::ServiceWorkerThreadProxy::fireInstallEvent(v2);
    return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::ServiceWorkerThreadProxy,(WTF::DestructionThread)1>::deref(v2 + 1);
  }

  return result;
}

atomic_ullong *WebKit::WebSWContextManagerConnection::fireActivateEvent(WebCore::SWContextManager *a1)
{
  WebCore::SWContextManager::singleton(a1);
  WebCore::SWContextManager::serviceWorkerThreadProxyFromBackgroundThread();
  result = v2;
  if (v2)
  {
    WebCore::ServiceWorkerThreadProxy::fireActivateEvent(v2);
    return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::ServiceWorkerThreadProxy,(WTF::DestructionThread)1>::deref(v2 + 1);
  }

  return result;
}

WTF *WebKit::WebSWContextManagerConnection::firePushEvent(WTF *result, WTF *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v8 = result;
  LOBYTE(v31) = 0;
  v33 = 0;
  if (*(a3 + 16) == 1)
  {
    v10 = *a3;
    v9 = *(a3 + 8);
    v24 = 0;
    LODWORD(v25) = 0;
    HIDWORD(v25) = v9;
    if (v9)
    {
      if (v9 >> 32)
      {
        __break(0xC471u);
        return result;
      }

      v11 = WTF::fastMalloc(v9);
      LODWORD(v25) = v9;
      v24 = v11;
      do
      {
        v12 = *v10++;
        *v11 = v12;
        v11 = (v11 + 1);
        v9 = (v9 - 1);
      }

      while (v9);
    }

    std::optional<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>::operator=[abi:sn200100]<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,void>(&v31, &v24);
    v14 = v24;
    if (v24)
    {
      v24 = 0;
      LODWORD(v25) = 0;
      WTF::fastFree(v14, v13);
    }
  }

  v15 = *(v8 + 28);
  (*(*v15 + 32))(v15);
  v16 = *a5;
  *a5 = 0;
  v24 = a2;
  LOBYTE(v25) = 0;
  v27 = 0;
  if (v33 == 1)
  {
    v25 = v31;
    v17 = v32;
    v31 = 0;
    v32 = 0;
    v26 = v17;
    v27 = 1;
  }

  WTF::CrossThreadCopierBase<false,false,std::optional<WebCore::NotificationPayload>>::copy<std::optional<WebCore::NotificationPayload>>(v28, a4);
  *&v29 = v15;
  *(&v29 + 1) = v16;
  v18 = WTF::fastMalloc(0xC8);
  v19 = v18;
  *v18 = &unk_1F112F6A0;
  *(v18 + 8) = v24;
  *(v18 + 16) = 0;
  *(v18 + 32) = 0;
  if (v27 == 1)
  {
    *(v18 + 16) = v25;
    v20 = v26;
    v25 = 0;
    v26 = 0;
    *(v18 + 24) = v20;
    *(v18 + 32) = 1;
  }

  std::optional<WebCore::NotificationPayload>::optional[abi:sn200100]((v18 + 40), v28);
  *(v19 + 184) = v29;
  v29 = 0uLL;
  v30 = v19;
  WTF::callOnMainRunLoop();
  v22 = v30;
  v30 = 0;
  if (v22)
  {
    (*(*v22 + 8))(v22);
  }

  result = WebKit::WebSWContextManagerConnection::firePushEvent(WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,std::optional<std::span<unsigned char const,18446744073709551615ul>>,std::optional<WebCore::NotificationPayload> &&,WTF::CompletionHandler<void ()(BOOL,std::optional<WebCore::NotificationPayload> &)> &&)::$_1::~$_1(&v24, v21);
  if (v33 == 1)
  {
    result = v31;
    if (v31)
    {
      v31 = 0;
      LODWORD(v32) = 0;
      return WTF::fastFree(result, v23);
    }
  }

  return result;
}

uint64_t WebKit::WebSWContextManagerConnection::firePushEvent(WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,std::optional<std::span<unsigned char const,18446744073709551615ul>>,std::optional<WebCore::NotificationPayload> &&,WTF::CompletionHandler<void ()(BOOL,std::optional<WebCore::NotificationPayload> &)> &&)::$_1::~$_1(uint64_t a1, WTF::StringImpl *a2)
{
  v3 = *(a1 + 184);
  *(a1 + 184) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(a1 + 176);
  *(a1 + 176) = 0;
  if (v4)
  {
    (*(*v4 + 40))(v4);
  }

  if (*(a1 + 168) == 1)
  {
    std::__optional_storage_base<WebCore::NotificationOptionsPayload,false>::~__optional_storage_base(a1 + 96, a2);
    v5 = *(a1 + 72);
    *(a1 + 72) = 0;
    if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v5, a2);
    }

    v6 = *(a1 + 32);
    *(a1 + 32) = 0;
    if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v6, a2);
    }
  }

  if (*(a1 + 24) == 1)
  {
    v8 = *(a1 + 8);
    if (v8)
    {
      *(a1 + 8) = 0;
      *(a1 + 16) = 0;
      WTF::fastFree(v8, a2);
    }
  }

  return a1;
}

void WebKit::WebSWContextManagerConnection::fireNotificationEvent(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5)
{
  v37 = *MEMORY[0x1E69E9840];
  v8 = *(a1 + 224);
  (*(*v8 + 32))(v8);
  v9 = *a5;
  *a5 = 0;
  WebCore::NotificationData::isolatedCopy();
  v35 = a4;
  *&v36 = v8;
  *(&v36 + 1) = v9;
  v10 = WTF::fastMalloc(0x140);
  *v10 = &unk_1F112F718;
  *(v10 + 16) = a2;
  WTF::URL::URL(v10 + 32, v20);
  v11 = v21;
  v21 = 0u;
  *(v10 + 72) = v11;
  v12 = v22;
  v22 = 0u;
  *(v10 + 88) = v12;
  *(v10 + 104) = v23;
  *(v10 + 112) = v24;
  v13 = v25;
  v23 = 0;
  v25 = 0;
  *(v10 + 120) = v13;
  WTF::URL::URL(v10 + 128, v26);
  *(v10 + 176) = v27;
  v14 = v31;
  *(v10 + 224) = v30;
  *(v10 + 240) = v14;
  v15 = v29;
  *(v10 + 192) = v28;
  *(v10 + 208) = v15;
  *(v10 + 256) = v32;
  *&v15 = v33;
  v32 = 0;
  v33 = 0;
  *(v10 + 264) = v15;
  *(v10 + 272) = v34;
  *(v10 + 288) = v35;
  v16 = v36;
  v36 = 0u;
  *(v10 + 296) = v16;
  WTF::callOnMainRunLoop();
  if (v10)
  {
    (*(*v10 + 8))(v10);
  }

  v18 = *(&v36 + 1);
  *(&v36 + 1) = 0;
  if (v18)
  {
    (*(*v18 + 8))(v18);
  }

  v19 = v36;
  *&v36 = 0;
  if (v19)
  {
    (*(*v19 + 40))(v19);
  }

  WebCore::NotificationData::~NotificationData(v20, v17);
}

WTF::StringImpl *WebKit::WebSWContextManagerConnection::fireBackgroundFetchEvent(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v7 = *(a1 + 224);
  (*(*v7 + 32))(v7);
  v8 = *a4;
  *a4 = 0;
  WebCore::BackgroundFetchInformation::isolatedCopy(&v17, a3);
  *&v21 = v7;
  *(&v21 + 1) = v8;
  v9 = WTF::fastMalloc(0x58);
  *v9 = &unk_1F112F790;
  *(v9 + 8) = a2;
  *(v9 + 16) = v17;
  *(v9 + 24) = v18;
  v10 = v19;
  v11 = *v20;
  *(v9 + 63) = *&v20[15];
  *(v9 + 32) = v10;
  *(v9 + 48) = v11;
  *(v9 + 72) = v21;
  v18 = 0;
  v21 = 0uLL;
  v22 = v9;
  WTF::callOnMainRunLoop();
  v13 = v22;
  v22 = 0;
  if (v13)
  {
    (*(*v13 + 8))(v13);
  }

  v14 = *(&v21 + 1);
  *(&v21 + 1) = 0;
  if (v14)
  {
    (*(*v14 + 8))(v14);
  }

  v15 = v21;
  *&v21 = 0;
  if (v15)
  {
    (*(*v15 + 40))(v15);
  }

  result = v18;
  v18 = 0;
  if (result)
  {
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v12);
    }
  }

  return result;
}

__n128 WebCore::BackgroundFetchInformation::isolatedCopy(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  WTF::String::isolatedCopy();
  result = *(a2 + 16);
  v5 = *(a2 + 32);
  *(a1 + 16) = result;
  *(a1 + 32) = v5;
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 49) = *(a2 + 49);
  return result;
}

WTF::StringImpl *WebKit::WebSWContextManagerConnection::fireBackgroundFetchClickEvent(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v7 = *(a1 + 224);
  (*(*v7 + 32))(v7);
  v8 = *a4;
  *a4 = 0;
  WebCore::BackgroundFetchInformation::isolatedCopy(&v17, a3);
  *&v21 = v7;
  *(&v21 + 1) = v8;
  v9 = WTF::fastMalloc(0x58);
  *v9 = &unk_1F112F808;
  *(v9 + 8) = a2;
  *(v9 + 16) = v17;
  *(v9 + 24) = v18;
  v10 = v19;
  v11 = *v20;
  *(v9 + 63) = *&v20[15];
  *(v9 + 32) = v10;
  *(v9 + 48) = v11;
  *(v9 + 72) = v21;
  v18 = 0;
  v21 = 0uLL;
  v22 = v9;
  WTF::callOnMainRunLoop();
  v13 = v22;
  v22 = 0;
  if (v13)
  {
    (*(*v13 + 8))(v13);
  }

  v14 = *(&v21 + 1);
  *(&v21 + 1) = 0;
  if (v14)
  {
    (*(*v14 + 8))(v14);
  }

  v15 = v21;
  *&v21 = 0;
  if (v15)
  {
    (*(*v15 + 40))(v15);
  }

  result = v18;
  v18 = 0;
  if (result)
  {
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v12);
    }
  }

  return result;
}

uint64_t WebKit::WebSWContextManagerConnection::terminateWorker(uint64_t a1, uint64_t a2)
{
  v3 = WTF::fastMalloc(0x10);
  *v3 = &unk_1F112F880;
  v3[1] = a2;
  v5 = v3;
  WTF::callOnMainRunLoop();
  result = v5;
  if (v5)
  {
    return (*(*v5 + 8))(v5);
  }

  return result;
}

atomic_ullong *WebKit::WebSWContextManagerConnection::didSaveScriptsToDisk(WebCore::SWContextManager *a1)
{
  WebCore::SWContextManager::singleton(a1);
  WebCore::SWContextManager::serviceWorkerThreadProxyFromBackgroundThread();
  result = v2;
  if (v2)
  {
    WebCore::ServiceWorkerThreadProxy::didSaveScriptsToDisk();
    return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::ServiceWorkerThreadProxy,(WTF::DestructionThread)1>::deref(v2 + 1);
  }

  return result;
}

void WebKit::WebSWContextManagerConnection::convertFetchToDownload(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8[0] = a2;
  v8[1] = a4;
  v5 = WTF::HashTable<std::pair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePair<std::pair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::Ref<WebKit::WebServiceWorkerFetchTaskClient,WTF::RawPtrTraits<WebKit::WebServiceWorkerFetchTaskClient>,WTF::DefaultRefDerefTraits<WebKit::WebServiceWorkerFetchTaskClient>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<std::pair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::Ref<WebKit::WebServiceWorkerFetchTaskClient,WTF::RawPtrTraits<WebKit::WebServiceWorkerFetchTaskClient>,WTF::DefaultRefDerefTraits<WebKit::WebServiceWorkerFetchTaskClient>>>>,WTF::DefaultHash<std::pair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashMap<std::pair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::Ref<WebKit::WebServiceWorkerFetchTaskClient,WTF::RawPtrTraits<WebKit::WebServiceWorkerFetchTaskClient>,WTF::DefaultRefDerefTraits<WebKit::WebServiceWorkerFetchTaskClient>>,WTF::DefaultHash<std::pair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<std::pair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WTF::Ref<WebKit::WebServiceWorkerFetchTaskClient,WTF::RawPtrTraits<WebKit::WebServiceWorkerFetchTaskClient>,WTF::DefaultRefDerefTraits<WebKit::WebServiceWorkerFetchTaskClient>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<std::pair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<std::pair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::Ref<WebKit::WebServiceWorkerFetchTaskClient,WTF::RawPtrTraits<WebKit::WebServiceWorkerFetchTaskClient>,WTF::DefaultRefDerefTraits<WebKit::WebServiceWorkerFetchTaskClient>>,WTF::DefaultHash<std::pair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<std::pair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WTF::Ref<WebKit::WebServiceWorkerFetchTaskClient,WTF::RawPtrTraits<WebKit::WebServiceWorkerFetchTaskClient>,WTF::DefaultRefDerefTraits<WebKit::WebServiceWorkerFetchTaskClient>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<std::pair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>,(WTF::ShouldValidateKey)1,std::pair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>( (a1 + 232),  v8);
  WTF::HashMap<std::pair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::Ref<WebKit::WebServiceWorkerFetchTaskClient,WTF::RawPtrTraits<WebKit::WebServiceWorkerFetchTaskClient>,WTF::DefaultRefDerefTraits<WebKit::WebServiceWorkerFetchTaskClient>>,WTF::DefaultHash<std::pair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<std::pair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WTF::Ref<WebKit::WebServiceWorkerFetchTaskClient,WTF::RawPtrTraits<WebKit::WebServiceWorkerFetchTaskClient>,WTF::DefaultRefDerefTraits<WebKit::WebServiceWorkerFetchTaskClient>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::take((a1 + 232), v5, &v9);
  v6 = v9;
  if (v9)
  {
    *(v9 + 217) = 1;
    WebKit::WebServiceWorkerFetchTaskClient::continueDidReceiveResponse(v6);
    v7 = v9;
    v9 = 0;
    if (v7)
    {
      WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::ServiceWorkerFetch::Client,(WTF::DestructionThread)1>::deref(v7 + 1);
    }
  }
}

atomic_ullong *WebKit::WebSWContextManagerConnection::navigationPreloadIsReady(WebCore::SWContextManager *a1)
{
  WebCore::SWContextManager::singleton(a1);
  WebCore::SWContextManager::serviceWorkerThreadProxyFromBackgroundThread();
  result = v2;
  if (v2)
  {
    WebCore::ServiceWorkerThreadProxy::navigationPreloadIsReady();
    return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::ServiceWorkerThreadProxy,(WTF::DestructionThread)1>::deref(v2 + 1);
  }

  return result;
}

atomic_ullong *WebKit::WebSWContextManagerConnection::navigationPreloadFailed(WebCore::SWContextManager *a1)
{
  WebCore::SWContextManager::singleton(a1);
  WebCore::SWContextManager::serviceWorkerThreadProxyFromBackgroundThread();
  result = v2;
  if (v2)
  {
    WebCore::ServiceWorkerThreadProxy::navigationPreloadFailed();
    return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::ServiceWorkerThreadProxy,(WTF::DestructionThread)1>::deref(v2 + 1);
  }

  return result;
}

uint64_t WebKit::WebSWContextManagerConnection::updateRegistrationState(WebCore::SWContextManager *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = WebCore::SWContextManager::singleton(a1);

  return MEMORY[0x1EEE56810](v7, a2, a3, a4);
}

IPC::Encoder *WebKit::WebSWContextManagerConnection::postMessageToServiceWorkerClient(WebKit::WebMessagePortChannelProvider *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v9 = a1;
  v10 = a3 + 8;
  v11 = *(a3 + 8);
  v12 = *(a3 + 20);
  if (v12)
  {
    v13 = 32 * v12;
    do
    {
      v14 = WebKit::WebMessagePortChannelProvider::singleton(a1, a2);
      a1 = WebKit::WebMessagePortChannelProvider::messagePortSentToRemote(v14, v11);
      v11 += 4;
      v13 -= 32;
    }

    while (v13);
  }

  v15 = *(v9 + 4);
  v16 = IPC::Encoder::operator new(0x238, a2);
  *v16 = 3135;
  *(v16 + 68) = 0;
  *(v16 + 70) = 0;
  *(v16 + 69) = 0;
  *(v16 + 2) = 0;
  *(v16 + 3) = 0;
  *(v16 + 1) = 0;
  IPC::Encoder::encodeHeader(v16);
  v21 = v16;
  IPC::ArgumentCoder<WebCore::ProcessQualified<WTF::UUID>,void>::encode(v16, a2);
  IPC::ArgumentCoder<WTF::RefPtr<WebCore::SerializedScriptValue,WTF::RawPtrTraits<WebCore::SerializedScriptValue>,WTF::DefaultRefDerefTraits<WebCore::SerializedScriptValue>>,void>::encode<IPC::Encoder,WebCore::SerializedScriptValue>(v16, a3);
  IPC::VectorArgumentCoder<false,std::pair<WebCore::MessagePortIdentifier,WebCore::MessagePortIdentifier>,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<std::pair<WebCore::MessagePortIdentifier,WebCore::MessagePortIdentifier>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(v16, v10);
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v16, a4);
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v16, a5);
  IPC::Connection::sendMessageImpl(v15, &v21, 0, 0);
  result = v21;
  v21 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v17);
    return bmalloc::api::tzoneFree(v19, v20);
  }

  return result;
}

uint64_t WebKit::WebSWContextManagerConnection::didFinishInstall(uint64_t a1, void *a2, uint64_t a3, char a4)
{
  v7 = *(a1 + 32);
  v8 = IPC::Encoder::operator new(0x238, a2);
  *v8 = 3129;
  *(v8 + 68) = 0;
  *(v8 + 70) = 0;
  *(v8 + 69) = 0;
  *(v8 + 2) = 0;
  *(v8 + 3) = 0;
  *(v8 + 1) = 0;
  IPC::Encoder::encodeHeader(v8);
  v15 = v8;
  IPC::ArgumentCoder<std::optional<WebCore::ServiceWorkerJobDataIdentifier>,void>::encode<IPC::Encoder,std::optional<WebCore::ServiceWorkerJobDataIdentifier> const&>(v8, a2);
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v8, a3);
  v9 = IPC::Encoder::grow(v8, 1uLL, 1);
  if (v10)
  {
    *v9 = a4;
    IPC::Connection::sendMessageImpl(v7, &v15, 0, 0);
    result = v15;
    v15 = 0;
    if (result)
    {
      IPC::Encoder::~Encoder(result, v11);
      return bmalloc::api::tzoneFree(v13, v14);
    }
  }

  else
  {
    result = 1067;
    __break(0xC471u);
  }

  return result;
}

IPC::Encoder *WebKit::WebSWContextManagerConnection::didFinishActivation(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = IPC::Encoder::operator new(0x238, a2);
  *v4 = 3128;
  *(v4 + 68) = 0;
  *(v4 + 70) = 0;
  *(v4 + 69) = 0;
  *(v4 + 2) = 0;
  *(v4 + 3) = 0;
  *(v4 + 1) = 0;
  IPC::Encoder::encodeHeader(v4);
  v9 = v4;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v4, a2);
  IPC::Connection::sendMessageImpl(v3, &v9, 0, 0);
  result = v9;
  v9 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v5);
    return bmalloc::api::tzoneFree(v7, v8);
  }

  return result;
}

uint64_t WebKit::WebSWContextManagerConnection::setServiceWorkerHasPendingEvents(uint64_t a1, void *a2, char a3)
{
  v5 = *(a1 + 32);
  v6 = IPC::Encoder::operator new(0x238, a2);
  *v6 = 3141;
  *(v6 + 68) = 0;
  *(v6 + 70) = 0;
  *(v6 + 69) = 0;
  *(v6 + 2) = 0;
  *(v6 + 3) = 0;
  *(v6 + 1) = 0;
  IPC::Encoder::encodeHeader(v6);
  v13 = v6;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v6, a2);
  v7 = IPC::Encoder::grow(v6, 1uLL, 1);
  if (v8)
  {
    *v7 = a3;
    IPC::Connection::sendMessageImpl(v5, &v13, 0, 0);
    result = v13;
    v13 = 0;
    if (result)
    {
      IPC::Encoder::~Encoder(result, v9);
      return bmalloc::api::tzoneFree(v11, v12);
    }
  }

  else
  {
    result = 1067;
    __break(0xC471u);
  }

  return result;
}

uint64_t WebKit::WebSWContextManagerConnection::skipWaiting(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = *(a1 + 32);
  v5 = *a3;
  *a3 = 0;
  v6 = WTF::fastMalloc(0x10);
  *v6 = &unk_1F112F8A8;
  v6[1] = v5;
  if (WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1)
  {
    result = 141;
    __break(0xC471u);
  }

  else
  {
    v7 = v6;
    IdentifierInternal = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
    v10 = IPC::Encoder::operator new(0x238, v9);
    *v10 = 3142;
    *(v10 + 68) = 0;
    *(v10 + 70) = 0;
    *(v10 + 69) = 0;
    *(v10 + 2) = 0;
    *(v10 + 3) = 0;
    *(v10 + 1) = 0;
    IPC::Encoder::encodeHeader(v10);
    v17 = v10;
    IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v10, a2);
    v16[0] = v7;
    v16[1] = IdentifierInternal;
    IPC::Connection::sendMessageWithAsyncReply(v4, &v17, v16, 0, 0);
    v12 = v16[0];
    v16[0] = 0;
    if (v12)
    {
      (*(*v12 + 8))(v12);
    }

    result = v17;
    v17 = 0;
    if (result)
    {
      IPC::Encoder::~Encoder(result, v11);
      return bmalloc::api::tzoneFree(v14, v15);
    }
  }

  return result;
}

IPC::Encoder *WebKit::WebSWContextManagerConnection::setScriptResource(uint64_t a1, void *a2, uint64_t *a3, uint64_t *a4)
{
  v7 = *(a1 + 32);
  v8 = IPC::Encoder::operator new(0x238, a2);
  *v8 = 3140;
  *(v8 + 68) = 0;
  *(v8 + 70) = 0;
  *(v8 + 69) = 0;
  *(v8 + 2) = 0;
  *(v8 + 3) = 0;
  *(v8 + 1) = 0;
  IPC::Encoder::encodeHeader(v8);
  v13 = v8;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v8, a2);
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v8, a3);
  IPC::ArgumentCoder<WebCore::ServiceWorkerImportedScript,void>::encode(v8, a4);
  IPC::Connection::sendMessageImpl(v7, &v13, 0, 0);
  result = v13;
  v13 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v9);
    return bmalloc::api::tzoneFree(v11, v12);
  }

  return result;
}

IPC::Encoder *WebKit::WebSWContextManagerConnection::workerTerminated(uint64_t a1, uint64_t a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = qword_1ED641288;
  if (os_log_type_enabled(qword_1ED641288, OS_LOG_TYPE_DEFAULT))
  {
    *v22 = 134217984;
    *&v22[4] = a2;
    _os_log_impl(&dword_19D52D000, v4, OS_LOG_TYPE_DEFAULT, "WebSWContextManagerConnection::workerTerminated %llu", v22, 0xCu);
  }

  {
    v6 = WebKit::WebProcess::singleton(void)::process;
  }

  else
  {
    v6 = WebKit::WebProcess::operator new(0x370, v5);
    WebKit::WebProcess::singleton(void)::process = WebKit::WebProcess::WebProcess(v6);
  }

  v8 = *(v6 + 3);
  v7 = (v6 + 24);
  v9 = (*(v8 + 56))(v7);
  v11 = IPC::Encoder::operator new(0x238, v10);
  *v11 = 2905;
  *(v11 + 2) = 0;
  *(v11 + 3) = 0;
  *(v11 + 1) = v9;
  *(v11 + 68) = 0;
  *(v11 + 70) = 0;
  *(v11 + 69) = 0;
  IPC::Encoder::encodeHeader(v11);
  *v22 = v11;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v11, a2);
  (*(*v7 + 32))(v7, v22, 0);
  v13 = *v22;
  *v22 = 0;
  if (v13)
  {
    IPC::Encoder::~Encoder(v13, v12);
    bmalloc::api::tzoneFree(v18, v19);
  }

  v14 = *(a1 + 32);
  v15 = IPC::Encoder::operator new(0x238, v12);
  *v15 = 3143;
  *(v15 + 68) = 0;
  *(v15 + 70) = 0;
  *(v15 + 69) = 0;
  *(v15 + 2) = 0;
  *(v15 + 3) = 0;
  *(v15 + 1) = 0;
  IPC::Encoder::encodeHeader(v15);
  *v22 = v15;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v15, a2);
  IPC::Connection::sendMessageImpl(v14, v22, 0, 0);
  result = *v22;
  *v22 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v16);
    return bmalloc::api::tzoneFree(v20, v21);
  }

  return result;
}

uint64_t WebKit::WebSWContextManagerConnection::findClientByVisibleIdentifier(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = *(a1 + 32);
  v7 = *a4;
  *a4 = 0;
  v8 = WTF::fastMalloc(0x10);
  *v8 = &unk_1F112F8D0;
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
    *v12 = 3130;
    *(v12 + 68) = 0;
    *(v12 + 70) = 0;
    *(v12 + 69) = 0;
    *(v12 + 2) = 0;
    *(v12 + 3) = 0;
    *(v12 + 1) = 0;
    IPC::Encoder::encodeHeader(v12);
    v19 = v12;
    IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v12, a2);
    IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v12, a3);
    v18[0] = v9;
    v18[1] = IdentifierInternal;
    IPC::Connection::sendMessageWithAsyncReply(v6, &v19, v18, 0, 0);
    v14 = v18[0];
    v18[0] = 0;
    if (v14)
    {
      (*(*v14 + 8))(v14);
    }

    result = v19;
    v19 = 0;
    if (result)
    {
      IPC::Encoder::~Encoder(result, v13);
      return bmalloc::api::tzoneFree(v16, v17);
    }
  }

  return result;
}

uint64_t WebKit::WebSWContextManagerConnection::matchAll(uint64_t a1, uint64_t a2, char *a3, uint64_t *a4)
{
  v6 = *(a1 + 32);
  v7 = *a4;
  *a4 = 0;
  v8 = WTF::fastMalloc(0x10);
  *v8 = &unk_1F112F8F8;
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
    *v12 = 3132;
    *(v12 + 68) = 0;
    *(v12 + 70) = 0;
    *(v12 + 69) = 0;
    *(v12 + 2) = 0;
    *(v12 + 3) = 0;
    *(v12 + 1) = 0;
    IPC::Encoder::encodeHeader(v12);
    v19 = v12;
    IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v12, a2);
    IPC::Encoder::operator<<<BOOL>(v12, a3);
    IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(v12, a3[1]);
    v18[0] = v9;
    v18[1] = IdentifierInternal;
    IPC::Connection::sendMessageWithAsyncReply(v6, &v19, v18, 0, 0);
    v14 = v18[0];
    v18[0] = 0;
    if (v14)
    {
      (*(*v14 + 8))(v14);
    }

    result = v19;
    v19 = 0;
    if (result)
    {
      IPC::Encoder::~Encoder(result, v13);
      return bmalloc::api::tzoneFree(v16, v17);
    }
  }

  return result;
}

uint64_t WebKit::WebSWContextManagerConnection::openWindow(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = *(a1 + 32);
  v7 = *a4;
  *a4 = 0;
  v8 = WTF::fastMalloc(0x10);
  *v8 = &unk_1F112F920;
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
    *v12 = 3134;
    *(v12 + 68) = 0;
    *(v12 + 70) = 0;
    *(v12 + 69) = 0;
    *(v12 + 2) = 0;
    *(v12 + 3) = 0;
    *(v12 + 1) = 0;
    IPC::Encoder::encodeHeader(v12);
    v19 = v12;
    IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v12, a2);
    IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v12, a3);
    v18[0] = v9;
    v18[1] = IdentifierInternal;
    IPC::Connection::sendMessageWithAsyncReply(v6, &v19, v18, 0, 0);
    v14 = v18[0];
    v18[0] = 0;
    if (v14)
    {
      (*(*v14 + 8))(v14);
    }

    result = v19;
    v19 = 0;
    if (result)
    {
      IPC::Encoder::~Encoder(result, v13);
      return bmalloc::api::tzoneFree(v16, v17);
    }
  }

  return result;
}

uint64_t WebKit::WebSWContextManagerConnection::claim(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = *(a1 + 32);
  v5 = *a3;
  *a3 = 0;
  v6 = WTF::fastMalloc(0x10);
  *v6 = &unk_1F112F948;
  v6[1] = v5;
  if (WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1)
  {
    result = 141;
    __break(0xC471u);
  }

  else
  {
    v7 = v6;
    IdentifierInternal = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
    v10 = IPC::Encoder::operator new(0x238, v9);
    *v10 = 3126;
    *(v10 + 68) = 0;
    *(v10 + 70) = 0;
    *(v10 + 69) = 0;
    *(v10 + 2) = 0;
    *(v10 + 3) = 0;
    *(v10 + 1) = 0;
    IPC::Encoder::encodeHeader(v10);
    v17 = v10;
    IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v10, a2);
    v16[0] = v7;
    v16[1] = IdentifierInternal;
    IPC::Connection::sendMessageWithAsyncReply(v4, &v17, v16, 0, 0);
    v12 = v16[0];
    v16[0] = 0;
    if (v12)
    {
      (*(*v12 + 8))(v12);
    }

    result = v17;
    v17 = 0;
    if (result)
    {
      IPC::Encoder::~Encoder(result, v11);
      return bmalloc::api::tzoneFree(v14, v15);
    }
  }

  return result;
}

uint64_t WebKit::WebSWContextManagerConnection::navigate(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v8 = *(a1 + 32);
  v9 = *a5;
  *a5 = 0;
  v10 = WTF::fastMalloc(0x10);
  *v10 = &unk_1F112F970;
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
    *v14 = 3133;
    *(v14 + 68) = 0;
    *(v14 + 70) = 0;
    *(v14 + 69) = 0;
    *(v14 + 2) = 0;
    *(v14 + 3) = 0;
    *(v14 + 1) = 0;
    IPC::Encoder::encodeHeader(v14);
    v21 = v14;
    IPC::ArgumentCoder<WebCore::ProcessQualified<WTF::UUID>,void>::encode(v14, a2);
    IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v14, a3);
    IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v14, a4);
    v20[0] = v11;
    v20[1] = IdentifierInternal;
    IPC::Connection::sendMessageWithAsyncReply(v8, &v21, v20, 0, 0);
    v16 = v20[0];
    v20[0] = 0;
    if (v16)
    {
      (*(*v16 + 8))(v16);
    }

    result = v21;
    v21 = 0;
    if (result)
    {
      IPC::Encoder::~Encoder(result, v15);
      return bmalloc::api::tzoneFree(v18, v19);
    }
  }

  return result;
}

uint64_t WebKit::WebSWContextManagerConnection::focus(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = *(a1 + 32);
  v5 = *a3;
  *a3 = 0;
  v6 = WTF::fastMalloc(0x10);
  *v6 = &unk_1F112F998;
  v6[1] = v5;
  if (WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1)
  {
    result = 141;
    __break(0xC471u);
  }

  else
  {
    v7 = v6;
    IdentifierInternal = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
    v10 = IPC::Encoder::operator new(0x238, v9);
    *v10 = 3131;
    *(v10 + 68) = 0;
    *(v10 + 70) = 0;
    *(v10 + 69) = 0;
    *(v10 + 2) = 0;
    *(v10 + 3) = 0;
    *(v10 + 1) = 0;
    IPC::Encoder::encodeHeader(v10);
    v17 = v10;
    IPC::ArgumentCoder<WebCore::ProcessQualified<WTF::UUID>,void>::encode(v10, a2);
    v16[0] = v7;
    v16[1] = IdentifierInternal;
    IPC::Connection::sendMessageWithAsyncReply(v4, &v17, v16, 0, 0);
    v12 = v16[0];
    v16[0] = 0;
    if (v12)
    {
      (*(*v12 + 8))(v12);
    }

    result = v17;
    v17 = 0;
    if (result)
    {
      IPC::Encoder::~Encoder(result, v11);
      return bmalloc::api::tzoneFree(v14, v15);
    }
  }

  return result;
}

void WebKit::WebSWContextManagerConnection::close(WebKit::WebSWContextManagerConnection *this)
{
  v19[1] = *MEMORY[0x1E69E9840];
  if (WTF::isMainRunLoop(this))
  {
    v2 = qword_1ED641288;
    if (os_log_type_enabled(qword_1ED641288, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(this + 8);
      LODWORD(v19[0]) = 67109120;
      HIDWORD(v19[0]) = v4;
      _os_log_impl(&dword_19D52D000, v2, OS_LOG_TYPE_DEFAULT, "Service worker process is requested to stop all service workers (already stopped = %d)", v19, 8u);
    }

    if ((*(this + 8) & 1) == 0)
    {
      *(this + 8) = 1;
      v5 = *(this + 4);
      v6 = IPC::Encoder::operator new(0x238, v3);
      *v6 = 433;
      *(v6 + 68) = 0;
      *(v6 + 70) = 0;
      *(v6 + 69) = 0;
      *(v6 + 2) = 0;
      *(v6 + 3) = 0;
      *(v6 + 1) = 0;
      IPC::Encoder::encodeHeader(v6);
      v19[0] = v6;
      IPC::Connection::sendMessageImpl(v5, v19, 0, 0);
      v8 = v19[0];
      v19[0] = 0;
      if (v8)
      {
        IPC::Encoder::~Encoder(v8, v7);
        v8 = bmalloc::api::tzoneFree(v16, v17);
      }

      v9 = WebCore::SWContextManager::singleton(v8);
      WebCore::SWContextManager::stopAllServiceWorkers(v9);
      {
        v11 = WebKit::WebProcess::singleton(void)::process;
      }

      else
      {
        v18 = WebKit::WebProcess::operator new(0x370, v10);
        v11 = WebKit::WebProcess::WebProcess(v18);
        WebKit::WebProcess::singleton(void)::process = v11;
      }

      WebKit::AuxiliaryProcess::enableTermination(v11);
    }
  }

  else
  {
    while (1)
    {
      v12 = *(this + 3);
      if ((v12 & 1) == 0)
      {
        break;
      }

      v13 = *(this + 3);
      atomic_compare_exchange_strong_explicit(this + 3, &v13, v12 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v13 == v12)
      {
        goto LABEL_14;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*(this + 3));
LABEL_14:
    v14 = WTF::fastMalloc(0x10);
    *v14 = &unk_1F112F9C0;
    *(v14 + 1) = this;
    v19[0] = v14;
    WTF::callOnMainRunLoop();
    v15 = v19[0];
    v19[0] = 0;
    if (v15)
    {
      (*(*v15 + 8))(v15);
    }
  }
}

uint64_t WebKit::WebSWContextManagerConnection::setThrottleState(WebKit::WebSWContextManagerConnection *this, char a2)
{
  while (1)
  {
    v4 = *(this + 3);
    if ((v4 & 1) == 0)
    {
      break;
    }

    v5 = *(this + 3);
    atomic_compare_exchange_strong_explicit(this + 3, &v5, v4 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v5 == v4)
    {
      goto LABEL_5;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*(this + 3));
LABEL_5:
  v6 = WTF::fastMalloc(0x18);
  *v6 = &unk_1F112F9E8;
  *(v6 + 8) = this;
  *(v6 + 16) = a2;
  v8 = v6;
  WTF::callOnMainRunLoop();
  result = v8;
  if (v8)
  {
    return (*(*v8 + 8))(v8);
  }

  return result;
}

uint64_t WebKit::WebSWContextManagerConnection::setInspectable(uint64_t a1, char a2)
{
  v3 = WTF::fastMalloc(0x10);
  *v3 = &unk_1F112FA10;
  *(v3 + 8) = a2;
  v5 = v3;
  WTF::callOnMainRunLoop();
  result = v5;
  if (v5)
  {
    return (*(*v5 + 8))(v5);
  }

  return result;
}

IPC::Encoder *WebKit::WebSWContextManagerConnection::didFailHeartBeatCheck(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = IPC::Encoder::operator new(0x238, a2);
  *v4 = 3127;
  *(v4 + 68) = 0;
  *(v4 + 70) = 0;
  *(v4 + 69) = 0;
  *(v4 + 2) = 0;
  *(v4 + 3) = 0;
  *(v4 + 1) = 0;
  IPC::Encoder::encodeHeader(v4);
  v9 = v4;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v4, a2);
  IPC::Connection::sendMessageImpl(v3, &v9, 0, 0);
  result = v9;
  v9 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v5);
    return bmalloc::api::tzoneFree(v7, v8);
  }

  return result;
}

uint64_t WebKit::WebSWContextManagerConnection::setAsInspected(uint64_t a1, void *a2, char a3)
{
  v5 = *(a1 + 32);
  v6 = IPC::Encoder::operator new(0x238, a2);
  *v6 = 3139;
  *(v6 + 68) = 0;
  *(v6 + 70) = 0;
  *(v6 + 69) = 0;
  *(v6 + 2) = 0;
  *(v6 + 3) = 0;
  *(v6 + 1) = 0;
  IPC::Encoder::encodeHeader(v6);
  v13 = v6;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v6, a2);
  v7 = IPC::Encoder::grow(v6, 1uLL, 1);
  if (v8)
  {
    *v7 = a3;
    IPC::Connection::sendMessageImpl(v5, &v13, 0, 0);
    result = v13;
    v13 = 0;
    if (result)
    {
      IPC::Encoder::~Encoder(result, v9);
      return bmalloc::api::tzoneFree(v11, v12);
    }
  }

  else
  {
    result = 1067;
    __break(0xC471u);
  }

  return result;
}

IPC::Encoder *WebKit::WebSWContextManagerConnection::reportConsoleMessage(uint64_t a1, void *a2, char a3, char a4, uint64_t *a5, uint64_t a6)
{
  v11 = *(a1 + 32);
  v12 = IPC::Encoder::operator new(0x238, a2);
  *v12 = 3136;
  *(v12 + 68) = 0;
  *(v12 + 70) = 0;
  *(v12 + 69) = 0;
  *(v12 + 2) = 0;
  *(v12 + 3) = 0;
  *(v12 + 1) = 0;
  IPC::Encoder::encodeHeader(v12);
  v17 = v12;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v12, a2);
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(v12, a3);
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(v12, a4);
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v12, a5);
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v12, a6);
  IPC::Connection::sendMessageImpl(v11, &v17, 0, 0);
  result = v17;
  v17 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v13);
    return bmalloc::api::tzoneFree(v15, v16);
  }

  return result;
}

uint64_t WebKit::WebSWContextManagerConnection::removeNavigationFetch(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 224);
  while (1)
  {
    v7 = *(a1 + 24);
    if ((v7 & 1) == 0)
    {
      break;
    }

    v8 = *(a1 + 24);
    atomic_compare_exchange_strong_explicit((a1 + 24), &v8, v7 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v8 == v7)
    {
      goto LABEL_6;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*(a1 + 24));
LABEL_6:
  v9 = WTF::fastMalloc(0x20);
  *v9 = &unk_1F112FA38;
  v9[1] = a1;
  v9[2] = a2;
  v9[3] = a3;
  v11 = v9;
  (*(*v6 + 48))(v6, &v11);
  result = v11;
  v11 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t WebKit::WebSWContextManagerConnection::connectToInspector(uint64_t a1, uint64_t a2)
{
  v4 = WebKit::ServiceWorkerDebuggableFrontendChannel::operator new(0x18, a2);
  *(v4 + 8) = 1;
  *v4 = &unk_1F10EB448;
  *(v4 + 16) = a2;
  if (a2 == -1 || !a2)
  {
    __break(0xC471u);
    JUMPOUT(0x19E3489A4);
  }

  v6 = v4;
  v7 = *(a1 + 240);
  if (!v7)
  {
    v4 = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::ServiceWorkerDebuggableFrontendChannel,WTF::RawPtrTraits<WebKit::ServiceWorkerDebuggableFrontendChannel>,WTF::DefaultRefDerefTraits<WebKit::ServiceWorkerDebuggableFrontendChannel>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::ServiceWorkerDebuggableFrontendChannel,WTF::RawPtrTraits<WebKit::ServiceWorkerDebuggableFrontendChannel>,WTF::DefaultRefDerefTraits<WebKit::ServiceWorkerDebuggableFrontendChannel>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::ServiceWorkerDebuggableFrontendChannel,WTF::RawPtrTraits<WebKit::ServiceWorkerDebuggableFrontendChannel>,WTF::DefaultRefDerefTraits<WebKit::ServiceWorkerDebuggableFrontendChannel>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::ServiceWorkerDebuggableFrontendChannel,WTF::RawPtrTraits<WebKit::ServiceWorkerDebuggableFrontendChannel>,WTF::DefaultRefDerefTraits<WebKit::ServiceWorkerDebuggableFrontendChannel>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand((a1 + 240), 0);
    v7 = *(a1 + 240);
  }

  v8 = *(v7 - 8);
  v9 = (~(a2 << 32) + a2) ^ ((~(a2 << 32) + a2) >> 22);
  v10 = 9 * ((v9 + ~(v9 << 13)) ^ ((v9 + ~(v9 << 13)) >> 8));
  v11 = (v10 ^ (v10 >> 15)) + ~((v10 ^ (v10 >> 15)) << 27);
  v12 = v8 & ((v11 >> 31) ^ v11);
  v13 = (v7 + 16 * v12);
  v14 = *v13;
  if (!*v13)
  {
LABEL_13:
    *v13 = a2;
    atomic_fetch_add(v6 + 2, 1u);
    v4 = v13[1];
    v13[1] = v6;
    if (v4 && atomic_fetch_add((v4 + 8), 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, (v4 + 8));
      v4 = bmalloc::api::tzoneFree(v4, v5);
    }

    v17 = *(a1 + 240);
    if (v17)
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
      if (v20 > 2 * v19)
      {
        goto LABEL_22;
      }
    }

    else if (3 * v20 > 4 * v19)
    {
      goto LABEL_22;
    }

    v4 = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::ServiceWorkerDebuggableFrontendChannel,WTF::RawPtrTraits<WebKit::ServiceWorkerDebuggableFrontendChannel>,WTF::DefaultRefDerefTraits<WebKit::ServiceWorkerDebuggableFrontendChannel>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::ServiceWorkerDebuggableFrontendChannel,WTF::RawPtrTraits<WebKit::ServiceWorkerDebuggableFrontendChannel>,WTF::DefaultRefDerefTraits<WebKit::ServiceWorkerDebuggableFrontendChannel>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::ServiceWorkerDebuggableFrontendChannel,WTF::RawPtrTraits<WebKit::ServiceWorkerDebuggableFrontendChannel>,WTF::DefaultRefDerefTraits<WebKit::ServiceWorkerDebuggableFrontendChannel>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::ServiceWorkerDebuggableFrontendChannel,WTF::RawPtrTraits<WebKit::ServiceWorkerDebuggableFrontendChannel>,WTF::DefaultRefDerefTraits<WebKit::ServiceWorkerDebuggableFrontendChannel>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand((a1 + 240), v13);
    goto LABEL_22;
  }

  v15 = 0;
  v16 = 1;
  while (v14 != a2)
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
        --*(*(a1 + 240) - 16);
        v13 = v15;
      }

      goto LABEL_13;
    }
  }

LABEL_22:
  WebCore::SWContextManager::singleton(v4);
  result = WebCore::SWContextManager::serviceWorkerThreadProxy();
  if (result)
  {
    v23 = (result + 8);
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
        goto LABEL_28;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v23);
LABEL_28:
    WebCore::ServiceWorkerInspectorProxy::connectToWorker();
    result = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::ServiceWorkerThreadProxy,(WTF::DestructionThread)1>::deref(v23);
  }

  if (atomic_fetch_add(v6 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v6 + 2);

    return bmalloc::api::tzoneFree(v6, v22);
  }

  return result;
}

unsigned int *WebKit::WebSWContextManagerConnection::disconnectFromInspector(uint64_t a1, uint64_t a2)
{
  v12 = a2;
  v3 = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::ServiceWorkerDebuggableFrontendChannel,WTF::RawPtrTraits<WebKit::ServiceWorkerDebuggableFrontendChannel>,WTF::DefaultRefDerefTraits<WebKit::ServiceWorkerDebuggableFrontendChannel>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::ServiceWorkerDebuggableFrontendChannel,WTF::RawPtrTraits<WebKit::ServiceWorkerDebuggableFrontendChannel>,WTF::DefaultRefDerefTraits<WebKit::ServiceWorkerDebuggableFrontendChannel>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::ServiceWorkerDebuggableFrontendChannel,WTF::RawPtrTraits<WebKit::ServiceWorkerDebuggableFrontendChannel>,WTF::DefaultRefDerefTraits<WebKit::ServiceWorkerDebuggableFrontendChannel>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::ServiceWorkerDebuggableFrontendChannel,WTF::RawPtrTraits<WebKit::ServiceWorkerDebuggableFrontendChannel>,WTF::DefaultRefDerefTraits<WebKit::ServiceWorkerDebuggableFrontendChannel>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::ServiceWorkerDebuggableFrontendChannel,WTF::RawPtrTraits<WebKit::ServiceWorkerDebuggableFrontendChannel>,WTF::DefaultRefDerefTraits<WebKit::ServiceWorkerDebuggableFrontendChannel>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::ServiceWorkerDebuggableFrontendChannel,WTF::RawPtrTraits<WebKit::ServiceWorkerDebuggableFrontendChannel>,WTF::DefaultRefDerefTraits<WebKit::ServiceWorkerDebuggableFrontendChannel>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>( (a1 + 240),  &v12);
  v4 = WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::ServiceWorkerDebuggableFrontendChannel,WTF::RawPtrTraits<WebKit::ServiceWorkerDebuggableFrontendChannel>,WTF::DefaultRefDerefTraits<WebKit::ServiceWorkerDebuggableFrontendChannel>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::ServiceWorkerDebuggableFrontendChannel,WTF::RawPtrTraits<WebKit::ServiceWorkerDebuggableFrontendChannel>,WTF::DefaultRefDerefTraits<WebKit::ServiceWorkerDebuggableFrontendChannel>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::take((a1 + 240), v3, &v11);
  WebCore::SWContextManager::singleton(v4);
  v5 = WebCore::SWContextManager::serviceWorkerThreadProxy();
  if (v5)
  {
    v7 = (v5 + 8);
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
        goto LABEL_7;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v7);
LABEL_7:
    WebCore::ServiceWorkerInspectorProxy::disconnectFromWorker();
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::ServiceWorkerThreadProxy,(WTF::DestructionThread)1>::deref(v7);
  }

  result = v11;
  v11 = 0;
  if (result)
  {
    if (atomic_fetch_add(result + 2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, result + 2);
      return bmalloc::api::tzoneFree(result, v6);
    }
  }

  return result;
}

atomic_ullong *WebKit::WebSWContextManagerConnection::dispatchMessageFromInspector(WebCore::SWContextManager *a1)
{
  WebCore::SWContextManager::singleton(a1);
  result = WebCore::SWContextManager::serviceWorkerThreadProxy();
  if (result)
  {
    v2 = result + 1;
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
    WebCore::ServiceWorkerInspectorProxy::sendMessageToWorker();

    return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::ServiceWorkerThreadProxy,(WTF::DestructionThread)1>::deref(v2);
  }

  return result;
}

void WebKit::WebServiceWorkerFetchTaskClient::~WebServiceWorkerFetchTaskClient(WebKit::WebServiceWorkerFetchTaskClient *this, WTF::StringImpl *a2)
{
  v3 = *(this + 28);
  *(this + 28) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 26);
  *(this + 26) = 0;
  if (v4)
  {
    WTF::RefCounted<WebCore::AdditionalNetworkLoadMetricsForWebInspector>::deref(v4, a2);
  }

  v5 = *(this + 22);
  *(this + 22) = 0;
  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, a2);
  }

  v6 = *(this + 80);
  if (v6 <= 1)
  {
    if (*(this + 80))
    {
      v7 = *(this + 9);
      *(this + 9) = 0;
      if (v7)
      {
        if (atomic_fetch_add(v7 + 2, 0xFFFFFFFF) == 1)
        {
          atomic_store(1u, v7 + 2);
          (*(*v7 + 8))(v7);
        }
      }
    }
  }

  else if (v6 == 2)
  {
    v8 = *(this + 9);
    *(this + 9) = 0;
    if (v8)
    {
      WTF::RefCounted<WebCore::FormData>::deref(v8);
    }
  }

  else if (v6 == 3)
  {
    std::unique_ptr<WebCore::ResourceError>::reset[abi:sn200100](this + 9, 0);
  }

  *(this + 80) = -1;
  v9 = *(this + 7);
  *(this + 7) = 0;
  if (v9)
  {
    WTF::RefCounted<WebKit::WebServiceWorkerFetchTaskClient::BlobLoader>::deref((v9 + 16), a2);
  }

  v10 = *(this + 3);
  *(this + 3) = 0;
  if (v10)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v10);
  }
}

{
  WebKit::WebServiceWorkerFetchTaskClient::~WebServiceWorkerFetchTaskClient(this, a2);

  WTF::fastFree(v2, v3);
}

atomic_ullong *WebKit::WebServiceWorkerFetchTaskClient::didReceiveRedirection(atomic_ullong *this, const WebCore::ResourceResponse *a2)
{
  v3 = this;
  v4 = 0;
  v5 = this + 17;
  atomic_compare_exchange_strong_explicit(this + 17, &v4, 1u, memory_order_acquire, memory_order_acquire);
  if (v4)
  {
    this = MEMORY[0x19EB01E30](this + 17);
  }

  v6 = *(v3 + 24);
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
        goto LABEL_8;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v6);
LABEL_8:
    *(v3 + 218) = 1;
    v9 = *(v3 + 48);
    v10 = IPC::Encoder::operator new(0x238, a2);
    *v10 = 1725;
    *(v10 + 2) = 0;
    *(v10 + 3) = 0;
    *(v10 + 1) = v9;
    *(v10 + 68) = 0;
    *(v10 + 70) = 0;
    *(v10 + 69) = 0;
    IPC::Encoder::encodeHeader(v10);
    v16 = v10;
    IPC::ArgumentCoder<WebCore::ResourceResponse,void>::encode(v10, a2);
    IPC::Connection::sendMessageImpl(v6, &v16, 0, 0);
    v12 = v16;
    v16 = 0;
    if (v12)
    {
      IPC::Encoder::~Encoder(v12, v11);
      bmalloc::api::tzoneFree(v14, v15);
    }

    WebKit::WebServiceWorkerFetchTaskClient::cleanup(v3);
    this = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v6);
  }

  v13 = 1;
  atomic_compare_exchange_strong_explicit(v5, &v13, 0, memory_order_release, memory_order_relaxed);
  if (v13 != 1)
  {
    return WTF::Lock::unlockSlow(v5);
  }

  return this;
}

uint64_t WebKit::WebServiceWorkerFetchTaskClient::cleanup(WebKit::WebServiceWorkerFetchTaskClient *this)
{
  v2 = *(this + 3);
  *(this + 3) = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  v4 = *(this + 4);
  v3 = *(this + 5);
  v5 = *(this + 6);
  v6 = *(this + 64);
  v7 = WTF::fastMalloc(0x28);
  *v7 = &unk_1F112FA88;
  *(v7 + 8) = v3;
  *(v7 + 16) = v4;
  *(v7 + 24) = v5;
  *(v7 + 32) = v6;
  v9 = v7;
  WTF::ensureOnMainRunLoop();
  result = v9;
  if (v9)
  {
    return (*(*v9 + 8))(v9);
  }

  return result;
}

uint64_t WebKit::WebServiceWorkerFetchTaskClient::didReceiveResponse(uint64_t result, void *a2)
{
  v3 = result;
  v4 = 0;
  v5 = (result + 17);
  atomic_compare_exchange_strong_explicit((result + 17), &v4, 1u, memory_order_acquire, memory_order_acquire);
  if (v4)
  {
    result = MEMORY[0x19EB01E30](result + 17);
  }

  v6 = *(v3 + 24);
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
        goto LABEL_8;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v6);
LABEL_8:
    *(v3 + 218) = 1;
    v9 = *(v3 + 64);
    if (v9 == 1)
    {
      *(v3 + 65) = 1;
    }

    v10 = *(v3 + 48);
    v11 = IPC::Encoder::operator new(0x238, a2);
    *v11 = 1726;
    *(v11 + 2) = 0;
    *(v11 + 3) = 0;
    *(v11 + 1) = v10;
    *(v11 + 68) = 0;
    *(v11 + 70) = 0;
    *(v11 + 69) = 0;
    IPC::Encoder::encodeHeader(v11);
    v19 = v11;
    IPC::ArgumentCoder<WebCore::ResourceResponse,void>::encode(v11, a2);
    v12 = IPC::Encoder::grow(v11, 1uLL, 1);
    if (!v13)
    {
      result = 1067;
      __break(0xC471u);
      return result;
    }

    *v12 = v9;
    IPC::Connection::sendMessageImpl(v6, &v19, 0, 0);
    v15 = v19;
    v19 = 0;
    if (v15)
    {
      IPC::Encoder::~Encoder(v15, v14);
      bmalloc::api::tzoneFree(v17, v18);
    }

    result = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v6);
  }

  v16 = 1;
  atomic_compare_exchange_strong_explicit(v5, &v16, 0, memory_order_release, memory_order_relaxed);
  if (v16 != 1)
  {
    return WTF::Lock::unlockSlow(v5);
  }

  return result;
}

atomic_ullong *WebKit::WebServiceWorkerFetchTaskClient::didReceiveData(atomic_uchar *this, const WebCore::SharedBuffer *a2)
{
  v4 = 0;
  v5 = this + 17;
  v6 = 1;
  atomic_compare_exchange_strong_explicit(this + 17, &v4, 1u, memory_order_acquire, memory_order_acquire);
  if (v4)
  {
    MEMORY[0x19EB01E30](this + 17);
  }

  result = WebKit::WebServiceWorkerFetchTaskClient::didReceiveDataInternal(this, a2);
  atomic_compare_exchange_strong_explicit(v5, &v6, 0, memory_order_release, memory_order_relaxed);
  if (v6 != 1)
  {

    return WTF::Lock::unlockSlow(v5);
  }

  return result;
}

atomic_ullong *WebKit::WebServiceWorkerFetchTaskClient::didReceiveDataInternal(atomic_ullong *this, const WebCore::SharedBuffer *a2)
{
  v2 = this[3];
  if (v2)
  {
    v4 = this;
    while (1)
    {
      v5 = *v2;
      if ((*v2 & 1) == 0)
      {
        break;
      }

      v6 = *v2;
      atomic_compare_exchange_strong_explicit(v2, &v6, v5 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v6 == v5)
      {
        goto LABEL_7;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v2);
LABEL_7:
    if (*(v4 + 65) != 1)
    {
      if (*(v4 + 217) == 1)
      {
        v11 = *(a2 + 7);
        v12 = a2;
        atomic_fetch_add(a2 + 2, 1u);
        v13 = 0;
        v14 = &v11;
        IPC::Connection::send<Messages::ServiceWorkerDownloadTask::DidReceiveData>(v2, &v14, v4[6]);
      }

      else
      {
        v11 = *(a2 + 7);
        v12 = a2;
        atomic_fetch_add(a2 + 2, 1u);
        v13 = 0;
        v14 = &v11;
        IPC::Connection::send<Messages::ServiceWorkerFetchTask::DidReceiveData>(v2, &v14, v4[6]);
      }

      v8 = v13;
      v13 = 0;
      if (v8)
      {
        WTF::ThreadSafeRefCounted<WebCore::SharedMemory,(WTF::DestructionThread)0>::deref(v8);
      }

      v9 = v12;
      v12 = 0;
      if (v9 && atomic_fetch_add(v9 + 2, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v9 + 2);
        (*(*v9 + 8))(v9);
      }

      return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
    }

    v7 = *(v4 + 80);
    if (v7 <= 1)
    {
      if (*(v4 + 80))
      {
        goto LABEL_25;
      }
    }

    else if (v7 != 255)
    {
      if (v7 == 3)
      {
        std::unique_ptr<WebCore::ResourceError>::reset[abi:sn200100](v4 + 9, 0);
      }

      else
      {
        v10 = v4[9];
        v4[9] = 0;
        if (v10)
        {
          WTF::RefCounted<WebCore::FormData>::deref(v10);
        }
      }
    }

    v4[9] = 0;
    *(v4 + 80) = 1;
LABEL_25:
    WebCore::SharedBufferBuilder::append<WebCore::SharedBuffer const&>((v4 + 9));
    return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return this;
}