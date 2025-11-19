@interface _WKWebPushDaemonConnection
- (Ref<API::WebPushDaemonConnection,)_protectedConnection;
- (_WKWebPushDaemonConnection)initWithConfiguration:(id)a3;
- (uint64_t)getNextPendingPushMessage:(const void *)a1;
- (uint64_t)getNextPendingPushMessage:(uint64_t)a1;
- (uint64_t)getNotifications:(const void *)a1 tag:completionHandler:;
- (uint64_t)getNotifications:(uint64_t)a1 tag:(uint64_t)a2 completionHandler:;
- (uint64_t)getNotifications:(uint64_t)a1 tag:completionHandler:;
- (uint64_t)getPushPermissionStateForOrigin:(const void *)a1 completionHandler:;
- (uint64_t)getPushPermissionStateForOrigin:(uint64_t)a1 completionHandler:;
- (uint64_t)getSubscriptionForScope:(const void *)a1 completionHandler:;
- (uint64_t)getSubscriptionForScope:(uint64_t)a1 completionHandler:;
- (uint64_t)getSubscriptionForScope:(uint64_t)a1 completionHandler:(uint64_t)a2;
- (uint64_t)requestPushPermissionForOrigin:(const void *)a1 completionHandler:;
- (uint64_t)requestPushPermissionForOrigin:(uint64_t)a1 completionHandler:;
- (uint64_t)showNotification:(const void *)a1 completionHandler:;
- (uint64_t)showNotification:(uint64_t)a1 completionHandler:;
- (uint64_t)subscribeToPushServiceForScope:(const void *)a1 applicationServerKey:completionHandler:;
- (uint64_t)subscribeToPushServiceForScope:(uint64_t)a1 applicationServerKey:(uint64_t)a2 completionHandler:;
- (uint64_t)subscribeToPushServiceForScope:(uint64_t)a1 applicationServerKey:completionHandler:;
- (uint64_t)unsubscribeFromPushServiceForScope:(const void *)a1 completionHandler:;
- (uint64_t)unsubscribeFromPushServiceForScope:(uint64_t)a1 completionHandler:;
- (uint64_t)unsubscribeFromPushServiceForScope:(uint64_t)a1 completionHandler:(char *)a2;
- (void)cancelNotification:(id)a3 uuid:(id)a4;
- (void)getNextPendingPushMessage:(id)a3;
- (void)getNextPendingPushMessage:(uint64_t)a1;
- (void)getNotifications:(id)a3 tag:(id)a4 completionHandler:(id)a5;
- (void)getPushPermissionStateForOrigin:(id)a3 completionHandler:(id)a4;
- (void)getSubscriptionForScope:(id)a3 completionHandler:(id)a4;
- (void)requestPushPermissionForOrigin:(id)a3 completionHandler:(id)a4;
- (void)setAppBadge:(unint64_t *)a3 origin:(id)a4;
- (void)showNotification:(id)a3 completionHandler:(id)a4;
- (void)subscribeToPushServiceForScope:(id)a3 applicationServerKey:(id)a4 completionHandler:(id)a5;
- (void)unsubscribeFromPushServiceForScope:(id)a3 completionHandler:(id)a4;
@end

@implementation _WKWebPushDaemonConnection

- (_WKWebPushDaemonConnection)initWithConfiguration:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v15.receiver = self;
  v15.super_class = _WKWebPushDaemonConnection;
  v4 = [(_WKWebPushDaemonConnection *)&v15 init];
  if (v4)
  {
    v19 = 0;
    v20 = 0;
    MEMORY[0x19EB02040](&v21, [a3 bundleIdentifierOverrideForTesting]);
    MEMORY[0x19EB02040](&v22, [a3 partition]);
    v23 = 0;
    v24 = 0;
    v25 = 0;
    v5 = [a3 machServiceName];
    v6 = API::Object::apiObjectsUnderConstruction(v5);
    v7 = [(_WKWebPushDaemonConnection *)v4 _apiObject];
    v17 = v4;
    v18 = v7;
    WTF::HashMap<API::Object *,void const*,WTF::DefaultHash<API::Object *>,WTF::HashTraits<API::Object *>,WTF::HashTraits<void const*>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<void const*>(v6, &v18, &v17, v16);
    v8 = [(_WKWebPushDaemonConnection *)v4 _apiObject];
    MEMORY[0x19EB02040](v16, v5);
    API::WebPushDaemonConnection::WebPushDaemonConnection(v8, v16, &v19);
    v10 = v16[0];
    v16[0] = 0;
    if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v10, v9);
    }

    v11 = v22;
    v22 = 0;
    if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v11, v9);
    }

    v12 = v21;
    v21 = 0;
    if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v12, v9);
    }

    v13 = v19;
    if (v19)
    {
      v19 = 0;
      LODWORD(v20) = 0;
      WTF::fastFree(v13, v9);
    }
  }

  return v4;
}

- (void)getPushPermissionStateForOrigin:(id)a3 completionHandler:(id)a4
{
  if (self)
  {
    [(_WKWebPushDaemonConnection *)self _protectedConnection];
    v6 = v15;
  }

  else
  {
    v6 = 0;
    v15 = 0;
  }

  MEMORY[0x19EB01DE0](v14, a3);
  v7 = _Block_copy(a4);
  v8 = WTF::fastMalloc(0x10);
  *v8 = &unk_1F10FC3E0;
  v8[1] = v7;
  v13 = v8;
  API::WebPushDaemonConnection::getPushPermissionState(v6, v14, &v13);
  v9 = v13;
  v13 = 0;
  if (v9)
  {
    (*(*v9 + 8))(v9);
  }

  _Block_release(0);
  v11 = v14[0];
  v14[0] = 0;
  if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v11, v10);
  }

  v12 = v15;
  v15 = 0;
  if (v12)
  {
    CFRelease(*(v12 + 8));
  }
}

- (void)requestPushPermissionForOrigin:(id)a3 completionHandler:(id)a4
{
  if (self)
  {
    [(_WKWebPushDaemonConnection *)self _protectedConnection];
    v6 = v15;
  }

  else
  {
    v6 = 0;
    v15 = 0;
  }

  MEMORY[0x19EB01DE0](v14, a3);
  v7 = _Block_copy(a4);
  v8 = WTF::fastMalloc(0x10);
  *v8 = &unk_1F10FC408;
  v8[1] = v7;
  v13 = v8;
  API::WebPushDaemonConnection::requestPushPermission(v6, v14, &v13);
  v9 = v13;
  v13 = 0;
  if (v9)
  {
    (*(*v9 + 8))(v9);
  }

  _Block_release(0);
  v11 = v14[0];
  v14[0] = 0;
  if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v11, v10);
  }

  v12 = v15;
  v15 = 0;
  if (v12)
  {
    CFRelease(*(v12 + 8));
  }
}

- (void)setAppBadge:(unint64_t *)a3 origin:(id)a4
{
  v6 = a3 != 0;
  if (self)
  {
    [(_WKWebPushDaemonConnection *)self _protectedConnection];
    v7 = v12;
  }

  else
  {
    v7 = 0;
    v12 = 0;
  }

  MEMORY[0x19EB01DE0](v11, a4);
  API::WebPushDaemonConnection::setAppBadge(v7, v11, a3, v6);
  v9 = v11[0];
  v11[0] = 0;
  if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v9, v8);
  }

  v10 = v12;
  v12 = 0;
  if (v10)
  {
    CFRelease(*(v10 + 8));
  }
}

- (void)subscribeToPushServiceForScope:(id)a3 applicationServerKey:(id)a4 completionHandler:(id)a5
{
  if (a4)
  {
    v9 = [a4 bytes];
    v10 = [a4 length];
    v11 = v10;
    v25 = 0;
    LODWORD(v26) = 0;
    HIDWORD(v26) = v10;
    if (v10)
    {
      if (HIDWORD(v10))
      {
        __break(0xC471u);
        return;
      }

      v12 = WTF::fastMalloc(v10);
      v13 = 0;
      LODWORD(v26) = v11;
      v25 = v12;
      do
      {
        *(v12 + v13) = *(v9 + v13);
        ++v13;
      }

      while (v11 != v13);
    }
  }

  else
  {
    v25 = 0;
    v26 = 0;
  }

  if (self)
  {
    [(_WKWebPushDaemonConnection *)self _protectedConnection];
    self = v24;
  }

  else
  {
    v24 = 0;
  }

  MEMORY[0x19EB01DE0](v23, a3);
  v14 = _Block_copy(a5);
  v15 = WTF::fastMalloc(0x10);
  *v15 = &unk_1F10FC430;
  v15[1] = v14;
  v22 = v15;
  v16 = *&self->_connection.m_storage.data[8];
  v27[0] = v23;
  v27[1] = &v25;
  IPC::MessageSender::sendWithAsyncReplyWithoutUsingIPCConnection<Messages::PushClientConnection::SubscribeToPushService,WTF::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<WebCore::PushSubscriptionData,WebCore::ExceptionData> const&)>>(v16 + 40, v27, &v22);
  v17 = v22;
  v22 = 0;
  if (v17)
  {
    (*(*v17 + 8))(v17);
  }

  _Block_release(0);
  v19 = v23[0];
  v23[0] = 0;
  if (v19 && atomic_fetch_add_explicit(v19, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v19, v18);
  }

  v20 = v24;
  v24 = 0;
  if (v20)
  {
    CFRelease(*v20->_connection.m_storage.data);
  }

  v21 = v25;
  if (v25)
  {
    v25 = 0;
    LODWORD(v26) = 0;
    WTF::fastFree(v21, v18);
  }
}

- (void)unsubscribeFromPushServiceForScope:(id)a3 completionHandler:(id)a4
{
  if (self)
  {
    [(_WKWebPushDaemonConnection *)self _protectedConnection];
    v6 = v16;
  }

  else
  {
    v6 = 0;
    v16 = 0;
  }

  MEMORY[0x19EB01DE0](v15, a3);
  v7 = _Block_copy(a4);
  v8 = WTF::fastMalloc(0x10);
  *v8 = &unk_1F10FC480;
  v8[1] = v7;
  v14 = v8;
  v9 = *(v6 + 16);
  v17[0] = 0;
  v17[8] = 0;
  v18[0] = v15;
  v18[1] = v17;
  IPC::MessageSender::sendWithAsyncReplyWithoutUsingIPCConnection<Messages::PushClientConnection::UnsubscribeFromPushService,WTF::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<BOOL,WebCore::ExceptionData> const&)>>(v9 + 40, v18, &v14);
  v10 = v14;
  v14 = 0;
  if (v10)
  {
    (*(*v10 + 8))(v10);
  }

  _Block_release(0);
  v12 = v15[0];
  v15[0] = 0;
  if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v12, v11);
  }

  v13 = v16;
  v16 = 0;
  if (v13)
  {
    CFRelease(*(v13 + 8));
  }
}

- (void)getSubscriptionForScope:(id)a3 completionHandler:(id)a4
{
  if (self)
  {
    [(_WKWebPushDaemonConnection *)self _protectedConnection];
    v6 = v16;
  }

  else
  {
    v6 = 0;
    v16 = 0;
  }

  MEMORY[0x19EB01DE0](v15, a3);
  v7 = _Block_copy(a4);
  v8 = WTF::fastMalloc(0x10);
  *v8 = &unk_1F10FC4A8;
  v8[1] = v7;
  v14 = v8;
  v9 = *(v6 + 16);
  v17 = v15;
  IPC::MessageSender::sendWithAsyncReplyWithoutUsingIPCConnection<Messages::PushClientConnection::GetPushSubscription,WTF::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<std::optional<WebCore::PushSubscriptionData>,WebCore::ExceptionData> const&)>>(v9 + 40, &v17, &v14);
  v10 = v14;
  v14 = 0;
  if (v10)
  {
    (*(*v10 + 8))(v10);
  }

  _Block_release(0);
  v12 = v15[0];
  v15[0] = 0;
  if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v12, v11);
  }

  v13 = v16;
  v16 = 0;
  if (v13)
  {
    CFRelease(*(v13 + 8));
  }
}

- (void)getNextPendingPushMessage:(id)a3
{
  if (self)
  {
    [(_WKWebPushDaemonConnection *)self _protectedConnection];
    v4 = v10;
  }

  else
  {
    v4 = 0;
    v10 = 0;
  }

  v5 = _Block_copy(a3);
  v6 = WTF::fastMalloc(0x10);
  *v6 = &unk_1F10FC4D0;
  v6[1] = v5;
  v9 = v6;
  IPC::MessageSender::sendWithAsyncReplyWithoutUsingIPCConnection<Messages::PushClientConnection::GetPendingPushMessage,WTF::CompletionHandler<void ()(std::optional<WebKit::WebPushMessage> const&)>>(*(v4 + 16) + 40, &v11, &v9);
  v7 = v9;
  v9 = 0;
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  _Block_release(0);
  v8 = v10;
  v10 = 0;
  if (v8)
  {
    CFRelease(*(v8 + 8));
  }
}

- (void)showNotification:(id)a3 completionHandler:(id)a4
{
  if (self)
  {
    [(_WKWebPushDaemonConnection *)self _protectedConnection];
    v6 = v13;
  }

  else
  {
    v6 = 0;
    v13 = 0;
  }

  v7 = [a3 _getCoreData];
  v8 = _Block_copy(a4);
  v9 = WTF::fastMalloc(0x10);
  *v9 = &unk_1F10FC520;
  v9[1] = v8;
  v12 = v9;
  API::WebPushDaemonConnection::showNotification(v6, v7, &v12);
  v10 = v12;
  v12 = 0;
  if (v10)
  {
    (*(*v10 + 8))(v10);
  }

  _Block_release(0);
  v11 = v13;
  v13 = 0;
  if (v11)
  {
    CFRelease(*(v11 + 8));
  }
}

- (void)getNotifications:(id)a3 tag:(id)a4 completionHandler:(id)a5
{
  if (self)
  {
    [(_WKWebPushDaemonConnection *)self _protectedConnection];
    v8 = v20;
  }

  else
  {
    v8 = 0;
    v20 = 0;
  }

  MEMORY[0x19EB01DE0](v19, a3);
  MEMORY[0x19EB02040](&v18, a4);
  v9 = _Block_copy(a5);
  v10 = WTF::fastMalloc(0x10);
  *v10 = &unk_1F10FC548;
  v10[1] = v9;
  v17 = v10;
  v11 = *(v8 + 16);
  v21[0] = v19;
  v21[1] = &v18;
  IPC::MessageSender::sendWithAsyncReplyWithoutUsingIPCConnection<Messages::PushClientConnection::GetNotifications,WTF::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<WTF::Vector<WebCore::NotificationData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::ExceptionData> const&)>>(v11 + 40, v21, &v17);
  v12 = v17;
  v17 = 0;
  if (v12)
  {
    (*(*v12 + 8))(v12);
  }

  _Block_release(0);
  v14 = v18;
  v18 = 0;
  if (v14 && atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v14, v13);
  }

  v15 = v19[0];
  v19[0] = 0;
  if (v15 && atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v15, v13);
  }

  v16 = v20;
  v20 = 0;
  if (v16)
  {
    CFRelease(*(v16 + 8));
  }
}

- (void)cancelNotification:(id)a3 uuid:(id)a4
{
  v15 = *MEMORY[0x1E69E9840];
  if (self)
  {
    [(_WKWebPushDaemonConnection *)self _protectedConnection];
    v6 = v12;
  }

  else
  {
    v6 = 0;
    v12 = 0;
  }

  MEMORY[0x19EB01DE0](v11, a3);
  WTF::UUID::fromNSUUID(v13, a4, v7);
  if ((v14 & 1) == 0)
  {
    __break(1u);
  }

  API::WebPushDaemonConnection::cancelNotification(v6, v11, v13);
  v9 = v11[0];
  v11[0] = 0;
  if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v9, v8);
  }

  v10 = v12;
  v12 = 0;
  if (v10)
  {
    CFRelease(*(v10 + 1));
  }
}

- (Ref<API::WebPushDaemonConnection,)_protectedConnection
{
  v3 = v2;
  p_connection = &self->_connection;
  v5 = CFRetain(*&self->_connection.m_storage.data[8]);
  *v3 = p_connection;
  return v5;
}

- (uint64_t)getPushPermissionStateForOrigin:(uint64_t)a1 completionHandler:
{
  *a1 = &unk_1F10FC3E0;
  _Block_release(*(a1 + 8));
  return a1;
}

- (uint64_t)getPushPermissionStateForOrigin:(const void *)a1 completionHandler:
{
  *a1 = &unk_1F10FC3E0;
  _Block_release(a1[1]);

  return WTF::fastFree(a1, v2);
}

- (uint64_t)requestPushPermissionForOrigin:(uint64_t)a1 completionHandler:
{
  *a1 = &unk_1F10FC408;
  _Block_release(*(a1 + 8));
  return a1;
}

- (uint64_t)requestPushPermissionForOrigin:(const void *)a1 completionHandler:
{
  *a1 = &unk_1F10FC408;
  _Block_release(a1[1]);

  return WTF::fastFree(a1, v2);
}

- (uint64_t)subscribeToPushServiceForScope:(uint64_t)a1 applicationServerKey:completionHandler:
{
  *a1 = &unk_1F10FC430;
  _Block_release(*(a1 + 8));
  return a1;
}

- (uint64_t)subscribeToPushServiceForScope:(const void *)a1 applicationServerKey:completionHandler:
{
  *a1 = &unk_1F10FC430;
  _Block_release(a1[1]);

  return WTF::fastFree(a1, v2);
}

- (uint64_t)subscribeToPushServiceForScope:(uint64_t)a1 applicationServerKey:(uint64_t)a2 completionHandler:
{
  v22[1] = *MEMORY[0x1E69E9840];
  v17[0] = 0;
  v19 = -1;
  if (*(a2 + 80))
  {
    if (*(a2 + 80) == 255)
    {
LABEL_8:
      v5 = objc_alloc(MEMORY[0x1E696ABC0]);
      v21 = *MEMORY[0x1E696A578];
      if (v19 != 1)
      {
        mpark::throw_bad_variant_access(v5);
      }

      v6 = v5;
      v7 = v18;
      if (v18)
      {
        atomic_fetch_add_explicit(v18, 2u, memory_order_relaxed);
        MEMORY[0x19EB00B70](&v20, v7);
        if (atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v7, v8);
        }
      }

      else
      {
        v20 = &stru_1F1147748;
        v13 = &stru_1F1147748;
      }

      v22[0] = v20;
      v14 = -[mpark initWithDomain:code:userInfo:](v6, "initWithDomain:code:userInfo:", @"WKErrorDomain", 1, [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:&v21 count:1]);
      v15 = v20;
      v20 = 0;
      if (v15)
      {
      }

      (*(*(a1 + 8) + 16))();
      if (v14)
      {
      }

      return std::experimental::fundamentals_v3::expected<WebCore::PushSubscriptionData,WebCore::ExceptionData>::~expected(v17, v12);
    }

    v17[0] = *a2;
    v4 = *(a2 + 8);
    if (v4)
    {
      atomic_fetch_add_explicit(v4, 2u, memory_order_relaxed);
    }

    v18 = v4;
  }

  else
  {
    WebCore::PushSubscriptionData::PushSubscriptionData(v17, a2);
  }

  v19 = *(a2 + 80);
  if (v19)
  {
    goto LABEL_8;
  }

  API::WebPushSubscriptionData::create(&v20, v17);
  v9 = v20;
  info = v20->info;
  if (!info)
  {
LABEL_15:
    (*(*(a1 + 8) + 16))();
    if (info)
    {
    }

    CFRelease(v9->info);
    return std::experimental::fundamentals_v3::expected<WebCore::PushSubscriptionData,WebCore::ExceptionData>::~expected(v17, v12);
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = info;
    goto LABEL_15;
  }

  result = 117;
  __break(0xC471u);
  return result;
}

- (uint64_t)unsubscribeFromPushServiceForScope:(uint64_t)a1 completionHandler:
{
  *a1 = &unk_1F10FC480;
  _Block_release(*(a1 + 8));
  return a1;
}

- (uint64_t)unsubscribeFromPushServiceForScope:(const void *)a1 completionHandler:
{
  *a1 = &unk_1F10FC480;
  _Block_release(a1[1]);

  return WTF::fastFree(a1, v2);
}

- (uint64_t)unsubscribeFromPushServiceForScope:(uint64_t)a1 completionHandler:(char *)a2
{
  v19[1] = *MEMORY[0x1E69E9840];
  v14[0] = 0;
  v16 = -1;
  v3 = a2[16];
  if (!a2[16])
  {
    v14[0] = *a2;
    v16 = 0;
LABEL_7:
    (*(*(a1 + 8) + 16))();
    return mpark::detail::move_constructor<mpark::detail::traits<BOOL,WebCore::ExceptionData>,(mpark::detail::Trait)1>::~move_constructor(v14, v6);
  }

  if (v3 != 255)
  {
    v14[0] = *a2;
    v4 = *(a2 + 1);
    if (v4)
    {
      atomic_fetch_add_explicit(v4, 2u, memory_order_relaxed);
      v5 = a2[16];
      v15 = v4;
      v16 = v5;
      if (!v5)
      {
        goto LABEL_7;
      }
    }

    else
    {
      v15 = 0;
      v16 = v3;
    }
  }

  v7 = objc_alloc(MEMORY[0x1E696ABC0]);
  v18 = *MEMORY[0x1E696A578];
  if (v16 != 1)
  {
    mpark::throw_bad_variant_access(v7);
  }

  v8 = v7;
  if (v15)
  {
    atomic_fetch_add_explicit(v15, 2u, memory_order_relaxed);
    MEMORY[0x19EB00B70](&v17, v15);
    if (atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v15, v9);
    }
  }

  else
  {
    v17 = &stru_1F1147748;
    v10 = &stru_1F1147748;
  }

  v19[0] = v17;
  v11 = -[mpark initWithDomain:code:userInfo:](v8, "initWithDomain:code:userInfo:", @"WKErrorDomain", 1, [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:&v18 count:1]);
  v12 = v17;
  v17 = 0;
  if (v12)
  {
  }

  (*(*(a1 + 8) + 16))();
  if (v11)
  {
  }

  return mpark::detail::move_constructor<mpark::detail::traits<BOOL,WebCore::ExceptionData>,(mpark::detail::Trait)1>::~move_constructor(v14, v6);
}

- (uint64_t)getSubscriptionForScope:(uint64_t)a1 completionHandler:
{
  *a1 = &unk_1F10FC4A8;
  _Block_release(*(a1 + 8));
  return a1;
}

- (uint64_t)getSubscriptionForScope:(const void *)a1 completionHandler:
{
  *a1 = &unk_1F10FC4A8;
  _Block_release(a1[1]);

  return WTF::fastFree(a1, v2);
}

- (uint64_t)getSubscriptionForScope:(uint64_t)a1 completionHandler:(uint64_t)a2
{
  v35[1] = *MEMORY[0x1E69E9840];
  v31[0] = 0;
  v33 = -1;
  if (*(a2 + 88))
  {
    if (*(a2 + 88) == 255)
    {
LABEL_8:
      v5 = objc_alloc(MEMORY[0x1E696ABC0]);
      v34 = *MEMORY[0x1E696A578];
      if (v33 != 1)
      {
        mpark::throw_bad_variant_access(v5);
      }

      v6 = v5;
      v7 = v32;
      if (v32)
      {
        atomic_fetch_add_explicit(v32, 2u, memory_order_relaxed);
        MEMORY[0x19EB00B70](&v22, v7);
        if (atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v7, v8);
        }
      }

      else
      {
        v22 = &stru_1F1147748;
        v17 = &stru_1F1147748;
      }

      v35[0] = v22;
      v18 = -[mpark initWithDomain:code:userInfo:](v6, "initWithDomain:code:userInfo:", @"WKErrorDomain", 1, [MEMORY[0x1E695DF20] dictionaryWithObjects:v35 forKeys:&v34 count:1]);
      v19 = v22;
      v22 = 0;
      if (v19)
      {
      }

      (*(*(a1 + 8) + 16))();
      if (v18)
      {
      }

      return std::experimental::fundamentals_v3::expected<std::optional<WebCore::PushSubscriptionData>,WebCore::ExceptionData>::~expected(v31, v12);
    }

    v31[0] = *a2;
    v4 = *(a2 + 8);
    if (v4)
    {
      atomic_fetch_add_explicit(v4, 2u, memory_order_relaxed);
    }

    v32 = v4;
  }

  else
  {
    std::__optional_copy_base<WebCore::PushSubscriptionData,false>::__optional_copy_base[abi:sn200100](v31, a2);
  }

  v33 = *(a2 + 88);
  if (v33)
  {
    goto LABEL_8;
  }

  std::__optional_copy_base<WebCore::PushSubscriptionData,false>::__optional_copy_base[abi:sn200100](&v22, v31);
  if (v30 != 1)
  {
    (*(*(a1 + 8) + 16))();
    return std::experimental::fundamentals_v3::expected<std::optional<WebCore::PushSubscriptionData>,WebCore::ExceptionData>::~expected(v31, v12);
  }

  API::WebPushSubscriptionData::create(&v21, &v22);
  v9 = v21;
  v10 = *(v21 + 1);
  if (!v10)
  {
LABEL_16:
    (*(*(a1 + 8) + 16))();
    if (v10)
    {
    }

    CFRelease(*(v9 + 1));
    if (v30)
    {
      v13 = v28;
      if (v28)
      {
        v28 = 0;
        v29 = 0;
        WTF::fastFree(v13, v12);
      }

      v14 = v26;
      if (v26)
      {
        v26 = 0;
        v27 = 0;
        WTF::fastFree(v14, v12);
      }

      v15 = v24;
      if (v24)
      {
        v24 = 0;
        v25 = 0;
        WTF::fastFree(v15, v12);
      }

      v16 = v23;
      v23 = 0;
      if (v16 && atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v16, v12);
      }
    }

    return std::experimental::fundamentals_v3::expected<std::optional<WebCore::PushSubscriptionData>,WebCore::ExceptionData>::~expected(v31, v12);
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = v10;
    goto LABEL_16;
  }

  result = 117;
  __break(0xC471u);
  return result;
}

- (uint64_t)getNextPendingPushMessage:(uint64_t)a1
{
  *a1 = &unk_1F10FC4D0;
  _Block_release(*(a1 + 8));
  return a1;
}

- (uint64_t)getNextPendingPushMessage:(const void *)a1
{
  *a1 = &unk_1F10FC4D0;
  _Block_release(a1[1]);

  return WTF::fastFree(a1, v2);
}

- (void)getNextPendingPushMessage:(uint64_t)a1
{
  v12[0] = 0;
  v18 = 0;
  if (*(a2 + 216) == 1)
  {
    std::__optional_copy_base<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,false>::__optional_copy_base[abi:sn200100](v12, a2);
    v4 = *(a2 + 24);
    if (v4)
    {
      atomic_fetch_add_explicit(v4, 2u, memory_order_relaxed);
    }

    v13 = v4;
    v5 = *(a2 + 32);
    if (v5)
    {
      atomic_fetch_add_explicit(v5, 2u, memory_order_relaxed);
    }

    v14 = v5;
    v15 = *(a2 + 40);
    v16 = *(a2 + 56);
    std::__optional_copy_base<WebCore::NotificationPayload,false>::__optional_copy_base[abi:sn200100](v17, a2 + 72);
    v18 = 1;
    v6 = API::Object::newObject(0xE8uLL, 121);
    v7 = API::Object::Object(v6);
    *v7 = &unk_1F10FC4F8;
    std::__optional_move_base<WTF::Vector<WTF::KeyValuePair<WTF::String,WebCore::AuthenticationExtensionsClientInputs::PRFValues>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,false>::__optional_move_base[abi:sn200100](v7 + 16, v12);
    v8 = v13;
    v13 = 0;
    *(v6 + 40) = v8;
    WTF::URL::URL(v6 + 48, &v14);
    std::__optional_move_base<WebCore::NotificationPayload,false>::__optional_move_base[abi:sn200100](v6 + 88, v17);
    v9 = *(v6 + 8);
    if (v9)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        __break(0xC471u);
        return;
      }

      v10 = v9;
    }

    (*(*(a1 + 8) + 16))(*(a1 + 8));
    if (v9)
    {
    }

    CFRelease(*(v6 + 8));
  }

  else
  {
    (*(*(a1 + 8) + 16))(*(a1 + 8));
  }

  if (v18 == 1)
  {
    WebKit::WebPushMessage::~WebPushMessage(v12, v11);
  }
}

- (uint64_t)showNotification:(uint64_t)a1 completionHandler:
{
  *a1 = &unk_1F10FC520;
  _Block_release(*(a1 + 8));
  return a1;
}

- (uint64_t)showNotification:(const void *)a1 completionHandler:
{
  *a1 = &unk_1F10FC520;
  _Block_release(a1[1]);

  return WTF::fastFree(a1, v2);
}

- (uint64_t)getNotifications:(uint64_t)a1 tag:completionHandler:
{
  *a1 = &unk_1F10FC548;
  _Block_release(*(a1 + 8));
  return a1;
}

- (uint64_t)getNotifications:(const void *)a1 tag:completionHandler:
{
  *a1 = &unk_1F10FC548;
  _Block_release(a1[1]);

  return WTF::fastFree(a1, v2);
}

- (uint64_t)getNotifications:(uint64_t)a1 tag:(uint64_t)a2 completionHandler:
{
  v22[1] = *MEMORY[0x1E69E9840];
  LOBYTE(v17) = 0;
  v19 = -1;
  if (*(a2 + 16))
  {
    if (*(a2 + 16) == 255)
    {
      goto LABEL_8;
    }

    LOBYTE(v17) = *a2;
    v4 = *(a2 + 8);
    if (v4)
    {
      atomic_fetch_add_explicit(v4, 2u, memory_order_relaxed);
    }

    v18 = v4;
  }

  else
  {
    WTF::Vector<WebCore::NotificationData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(&v17, a2);
  }

  v19 = *(a2 + 16);
  if (v19)
  {
LABEL_8:
    v5 = objc_alloc(MEMORY[0x1E696ABC0]);
    v21 = *MEMORY[0x1E696A578];
    if (v19 == 1)
    {
      v6 = v5;
      v7 = v18;
      if (v18)
      {
        atomic_fetch_add_explicit(v18, 2u, memory_order_relaxed);
        MEMORY[0x19EB00B70](&v20, v7);
        if (atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v7, v8);
        }
      }

      else
      {
        v20 = &stru_1F1147748;
        v13 = &stru_1F1147748;
      }

      v22[0] = v20;
      v14 = -[mpark initWithDomain:code:userInfo:](v6, "initWithDomain:code:userInfo:", @"WKErrorDomain", 1, [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:&v21 count:1]);
      v15 = v20;
      v20 = 0;
      if (v15)
      {
      }

      (*(*(a1 + 8) + 16))();
      if (v14)
      {
      }

      return mpark::detail::copy_constructor<mpark::detail::traits<WTF::Vector<WebCore::NotificationData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::ExceptionData>,(mpark::detail::Trait)1>::~copy_constructor(&v17, v12);
    }

LABEL_23:
    mpark::throw_bad_variant_access(v5);
  }

  v5 = [MEMORY[0x1E695DF70] arrayWithCapacity:HIDWORD(v18)];
  if (v19)
  {
    goto LABEL_23;
  }

  v9 = v5;
  if (HIDWORD(v18))
  {
    v10 = v17;
    v11 = HIDWORD(v18) << 8;
    do
    {
      [(mpark *)v9 addObject:[[_WKNotificationData alloc] _initWithCoreData:v10]];
      v10 += 256;
      v11 -= 256;
    }

    while (v11);
  }

  (*(*(a1 + 8) + 16))();
  return mpark::detail::copy_constructor<mpark::detail::traits<WTF::Vector<WebCore::NotificationData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::ExceptionData>,(mpark::detail::Trait)1>::~copy_constructor(&v17, v12);
}

@end