void *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkStorageManager::CreateSyncAccessHandle,WebKit::WebFileSystemStorageConnection::createSyncAccessHandle(WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<WebCore::FileSystemStorageConnection::SyncAccessHandleInfo> &&)> &&)::$_0>(WebKit::WebFileSystemStorageConnection::createSyncAccessHandle(WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<WebCore::FileSystemStorageConnection::SyncAccessHandleInfo> &&)> &&)::$_0 &&,WTF::ThreadLikeAssertion)::{lambda(WTF::CompletionHandler<void ()(WebCore::ExceptionOr<WebCore::FileSystemStorageConnection::SyncAccessHandleInfo> &&)> &&,IPC::Connection*)#1},void,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<WebCore::FileSystemStorageConnection::SyncAccessHandleInfo> &&)> &&,IPC::Connection*>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F1131108;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkStorageManager::CreateSyncAccessHandle,WebKit::WebFileSystemStorageConnection::createSyncAccessHandle(WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<WebCore::FileSystemStorageConnection::SyncAccessHandleInfo> &&)> &&)::$_0>(WebKit::WebFileSystemStorageConnection::createSyncAccessHandle(WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<WebCore::FileSystemStorageConnection::SyncAccessHandleInfo> &&)> &&)::$_0 &&,WTF::ThreadLikeAssertion)::{lambda(WTF::CompletionHandler<void ()(WebCore::ExceptionOr<WebCore::FileSystemStorageConnection::SyncAccessHandleInfo> &&)> &&,IPC::Connection*)#1},void,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<WebCore::FileSystemStorageConnection::SyncAccessHandleInfo> &&)> &&,IPC::Connection*>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F1131108;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

void WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkStorageManager::CreateSyncAccessHandle,WebKit::WebFileSystemStorageConnection::createSyncAccessHandle(WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<WebCore::FileSystemStorageConnection::SyncAccessHandleInfo> &&)> &&)::$_0>(WebKit::WebFileSystemStorageConnection::createSyncAccessHandle(WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<WebCore::FileSystemStorageConnection::SyncAccessHandleInfo> &&)> &&)::$_0 &&,WTF::ThreadLikeAssertion)::{lambda(WTF::CompletionHandler<void ()(WebCore::ExceptionOr<WebCore::FileSystemStorageConnection::SyncAccessHandleInfo> &&)> &&,IPC::Connection*)#1},void,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<WebCore::FileSystemStorageConnection::SyncAccessHandleInfo> &&)> &&,IPC::Connection*>::call(uint64_t a1, int a2, IPC::Decoder *this)
{
  if (this)
  {
    v5 = *this;
    if (*this)
    {
      v6 = *(this + 1);
      v7 = *(this + 2);
      if (v6 <= &v7[-v5])
      {
        *this = 0;
        *(this + 1) = 0;
        v20 = *(this + 3);
        if (v20)
        {
          if (v6)
          {
            (*(*v20 + 16))(v20);
            v5 = *this;
            v6 = *(this + 1);
            goto LABEL_39;
          }
        }

        else
        {
          v6 = 0;
        }

        v5 = 0;
      }

      else
      {
        *(this + 2) = v7 + 1;
        if (v7)
        {
          v8 = *v7;
          if (v8 < 2)
          {
            if (v8)
            {
              IPC::ArgumentCoder<WebKit::FileSystemSyncAccessHandleInfo,void>::decode(this, &v30);
              if (v32 & 1) != 0 || (v17 = *this, v18 = *(this + 1), *this = 0, *(this + 1) = 0, (v19 = *(this + 3)) != 0) && v18 && ((*(*v19 + 16))(v19, v17), (v32))
              {
                v26 = v30;
                WTF::FileSystemImpl::FileHandle::FileHandle();
                v27[1] = v31[1];
                v28 = 0;
                v29 = 1;
                if (v32)
                {
                  WTF::FileSystemImpl::FileHandle::~FileHandle(v31);
                }

                goto LABEL_19;
              }
            }

            else
            {
              v10 = IPC::Decoder::decode<WebKit::FileSystemStorageError>(this);
              if ((v10 & 0x100) != 0)
              {
                LOBYTE(v26) = v10;
                v28 = 1;
                v29 = 1;
                goto LABEL_19;
              }
            }

LABEL_14:
            LOBYTE(v26) = 0;
            v29 = 0;
            v11 = *this;
            v12 = *(this + 1);
            *this = 0;
            *(this + 1) = 0;
            v13 = *(this + 3);
            if (!v13 || !v12 || ((*(*v13 + 16))(v13, v11), (v29 & 1) == 0))
            {
              v23[0] = 0;
              v25 = 0;
              goto LABEL_16;
            }

LABEL_19:
            std::experimental::fundamentals_v3::expected<WebKit::FileSystemSyncAccessHandleInfo,WebKit::FileSystemStorageError>::expected(v23, &v26);
            v25 = 1;
            if (v29 & 1) == 0 || v28 || (WTF::FileSystemImpl::FileHandle::~FileHandle(v27), (v25))
            {
LABEL_22:
              std::apply[abi:sn200100]<WebKit::WebFileSystemStorageConnection::createSyncAccessHandle(WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<WebCore::FileSystemStorageConnection::SyncAccessHandleInfo> &&)> &&)::$_0,std::tuple<std::experimental::fundamentals_v3::expected<WebKit::FileSystemSyncAccessHandleInfo,WebKit::FileSystemStorageError>>>((a1 + 8), v23);
              if ((v25 & 1) != 0 && !v24[16])
              {
                WTF::FileSystemImpl::FileHandle::~FileHandle(v24);
              }

              return;
            }

LABEL_16:
            v14 = *this;
            v15 = *(this + 1);
            *this = 0;
            *(this + 1) = 0;
            v16 = *(this + 3);
            if (!v16 || !v15 || ((*(*v16 + 16))(v16, v14), (v25 & 1) == 0))
            {
              IPC::Connection::cancelReply<Messages::NetworkStorageManager::CreateSyncAccessHandle,WebKit::WebFileSystemStorageConnection::createSyncAccessHandle(WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<WebCore::FileSystemStorageConnection::SyncAccessHandleInfo> &&)> &&)::$_0>((a1 + 8));
              return;
            }

            goto LABEL_22;
          }

          goto LABEL_42;
        }
      }

LABEL_39:
      *this = 0;
      *(this + 1) = 0;
      v21 = *(this + 3);
      if (v21)
      {
        if (v6)
        {
          (*(*v21 + 16))(v21, v5);
          v5 = *this;
          v6 = *(this + 1);
          goto LABEL_42;
        }
      }

      else
      {
        v6 = 0;
      }

      v5 = 0;
LABEL_42:
      *this = 0;
      *(this + 1) = 0;
      v22 = *(this + 3);
      if (v22 && v6)
      {
        (*(*v22 + 16))(v22, v5);
      }

      goto LABEL_14;
    }
  }

  v9 = (a1 + 8);

  IPC::Connection::cancelReply<Messages::NetworkStorageManager::CreateSyncAccessHandle,WebKit::WebFileSystemStorageConnection::createSyncAccessHandle(WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<WebCore::FileSystemStorageConnection::SyncAccessHandleInfo> &&)> &&)::$_0>(v9);
}

void IPC::Connection::cancelReply<Messages::NetworkStorageManager::CreateSyncAccessHandle,WebKit::WebFileSystemStorageConnection::createSyncAccessHandle(WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<WebCore::FileSystemStorageConnection::SyncAccessHandleInfo> &&)> &&)::$_0>(uint64_t *a1)
{
  v4[0] = 10;
  v6 = 1;
  std::experimental::fundamentals_v3::expected<WebKit::FileSystemSyncAccessHandleInfo,WebKit::FileSystemStorageError>::expected(&v2, v4);
  if (!v6)
  {
    WTF::FileSystemImpl::FileHandle::~FileHandle(&v5);
  }

  std::apply[abi:sn200100]<WebKit::WebFileSystemStorageConnection::createSyncAccessHandle(WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<WebCore::FileSystemStorageConnection::SyncAccessHandleInfo> &&)> &&)::$_0,std::tuple<std::experimental::fundamentals_v3::expected<WebKit::FileSystemSyncAccessHandleInfo,WebKit::FileSystemStorageError>>>(a1, &v2);
  if (!v3[16])
  {
    WTF::FileSystemImpl::FileHandle::~FileHandle(v3);
  }
}

void std::apply[abi:sn200100]<WebKit::WebFileSystemStorageConnection::createSyncAccessHandle(WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<WebCore::FileSystemStorageConnection::SyncAccessHandleInfo> &&)> &&)::$_0,std::tuple<std::experimental::fundamentals_v3::expected<WebKit::FileSystemSyncAccessHandleInfo,WebKit::FileSystemStorageError>>>(uint64_t *a1, uint64_t a2)
{
  v3 = std::experimental::fundamentals_v3::expected<WebKit::FileSystemSyncAccessHandleInfo,WebKit::FileSystemStorageError>::expected(&v12, a2);
  if (!v14)
  {
    if (!v12)
    {
      __break(0xC471u);
      return;
    }

    v15 = v12;
    WTF::FileSystemImpl::FileHandle::FileHandle(&v18);
    WTF::FileSystemImpl::FileHandle::FileHandle();
    WTF::FileSystemImpl::FileHandle::operator=();
    WTF::FileSystemImpl::FileHandle::~FileHandle(&v18);
    if (!v14)
    {
      v17 = v13[1];
      v18 = v15;
      WTF::FileSystemImpl::FileHandle::FileHandle();
      v19[1] = v17;
      v20 = 0;
      v7 = *a1;
      *a1 = 0;
      (*(*v7 + 16))(v7, &v18);
      (*(*v7 + 8))(v7);
      if (v20 != 255)
      {
        if (v20)
        {
          v11 = v19[0];
          v19[0] = 0;
          if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v11, v8);
          }
        }

        else
        {
          WTF::FileSystemImpl::FileHandle::~FileHandle(v19);
        }
      }

      v20 = -1;
      WTF::FileSystemImpl::FileHandle::~FileHandle(&v16);
      goto LABEL_21;
    }

LABEL_24:
    mpark::throw_bad_variant_access(v3);
  }

  if (v14 != 1)
  {
    goto LABEL_24;
  }

  WebKit::convertToException(v12, &v15);
  v4 = v16;
  v16 = 0;
  LOBYTE(v18) = v15;
  v19[0] = v4;
  v20 = 1;
  v5 = *a1;
  *a1 = 0;
  (*(*v5 + 16))(v5, &v18);
  (*(*v5 + 8))(v5);
  if (v20 != 255)
  {
    if (v20)
    {
      v9 = v19[0];
      v19[0] = 0;
      if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v9, v6);
      }
    }

    else
    {
      WTF::FileSystemImpl::FileHandle::~FileHandle(v19);
    }
  }

  v20 = -1;
  v10 = v16;
  v16 = 0;
  if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v10, v6);
  }

LABEL_21:
  if (!v14)
  {
    WTF::FileSystemImpl::FileHandle::~FileHandle(v13);
  }
}

void *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkStorageManager::CloseSyncAccessHandle,WTF::CompletionHandler<void ()(void)>>(WTF::CompletionHandler<void ()(void)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F1131130;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkStorageManager::CloseSyncAccessHandle,WTF::CompletionHandler<void ()(void)>>(WTF::CompletionHandler<void ()(void)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F1131130;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkStorageManager::CloseSyncAccessHandle,WTF::CompletionHandler<void ()(void)>>(WTF::CompletionHandler<void ()(void)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::call(uint64_t a1)
{
  v1 = *(a1 + 8);
  *(a1 + 8) = 0;
  (*(*v1 + 16))(v1);
  v2 = *(*v1 + 8);

  return v2(v1);
}

void *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkStorageManager::GetHandleNames,WebKit::WebFileSystemStorageConnection::getHandleNames(WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>> &&)> &&)::$_0>(WebKit::WebFileSystemStorageConnection::getHandleNames(WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>> &&)> &&)::$_0 &&,WTF::ThreadLikeAssertion)::{lambda(WTF::CompletionHandler<void ()(WebCore::ExceptionOr<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>> &&)> &&,IPC::Connection*)#1},void,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>> &&)> &&,IPC::Connection*>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F1131158;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkStorageManager::GetHandleNames,WebKit::WebFileSystemStorageConnection::getHandleNames(WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>> &&)> &&)::$_0>(WebKit::WebFileSystemStorageConnection::getHandleNames(WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>> &&)> &&)::$_0 &&,WTF::ThreadLikeAssertion)::{lambda(WTF::CompletionHandler<void ()(WebCore::ExceptionOr<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>> &&)> &&,IPC::Connection*)#1},void,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>> &&)> &&,IPC::Connection*>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F1131158;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

WTF::StringImpl *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkStorageManager::GetHandleNames,WebKit::WebFileSystemStorageConnection::getHandleNames(WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>> &&)> &&)::$_0>(WebKit::WebFileSystemStorageConnection::getHandleNames(WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>> &&)> &&)::$_0 &&,WTF::ThreadLikeAssertion)::{lambda(WTF::CompletionHandler<void ()(WebCore::ExceptionOr<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>> &&)> &&,IPC::Connection*)#1},void,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>> &&)> &&,IPC::Connection*>::call(uint64_t a1, int a2, IPC::Decoder *this)
{
  if (this && *this)
  {
    IPC::Decoder::decode<std::tuple<std::experimental::fundamentals_v3::expected<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebKit::FileSystemStorageError>>>(v8, this);
    v4 = (a1 + 8);
    if (v9 == 1)
    {
      result = std::apply[abi:sn200100]<WebKit::WebFileSystemStorageConnection::resolve(WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>> &&)> &&)::$_0,std::tuple<std::experimental::fundamentals_v3::expected<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebKit::FileSystemStorageError>>>(v4, v8);
      if ((v9 & 1) != 0 && !v8[16])
      {
        return WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v8, v6);
      }
    }

    else
    {
      return IPC::Connection::cancelReply<Messages::NetworkStorageManager::Resolve,WebKit::WebFileSystemStorageConnection::resolve(WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>> &&)> &&)::$_0>(v4);
    }
  }

  else
  {
    v7 = (a1 + 8);

    return IPC::Connection::cancelReply<Messages::NetworkStorageManager::Resolve,WebKit::WebFileSystemStorageConnection::resolve(WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>> &&)> &&)::$_0>(v7);
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkStorageManager::GetHandle,WebKit::WebFileSystemStorageConnection::getHandle(WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::String const&,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<WTF::Ref<WebCore::FileSystemHandleCloseScope,WTF::RawPtrTraits<WebCore::FileSystemHandleCloseScope>,WTF::DefaultRefDerefTraits<WebCore::FileSystemHandleCloseScope>>> &&)> &&)::$_0>(WebKit::WebFileSystemStorageConnection::getHandle(WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::String const&,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<WTF::Ref<WebCore::FileSystemHandleCloseScope,WTF::RawPtrTraits<WebCore::FileSystemHandleCloseScope>,WTF::DefaultRefDerefTraits<WebCore::FileSystemHandleCloseScope>>> &&)> &&)::$_0 &&,WTF::ThreadLikeAssertion)::{lambda(WTF::CompletionHandler<void ()(WebCore::ExceptionOr<WTF::Ref<WebCore::FileSystemHandleCloseScope,WTF::RawPtrTraits<WebCore::FileSystemHandleCloseScope>,WTF::DefaultRefDerefTraits<WebCore::FileSystemHandleCloseScope>>> &&)> &&,IPC::Connection*)#1},void,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<WTF::Ref<WebCore::FileSystemHandleCloseScope,WTF::RawPtrTraits<WebCore::FileSystemHandleCloseScope>,WTF::DefaultRefDerefTraits<WebCore::FileSystemHandleCloseScope>>> &&)> &&,IPC::Connection*>::~CallableWrapper(void *a1)
{
  *a1 = &unk_1F1131180;
  v2 = a1[3];
  a1[3] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = a1[2];
  a1[2] = 0;
  if (v3 && atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3 + 2);
    (*(*v3 + 8))(v3);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkStorageManager::GetHandle,WebKit::WebFileSystemStorageConnection::getHandle(WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::String const&,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<WTF::Ref<WebCore::FileSystemHandleCloseScope,WTF::RawPtrTraits<WebCore::FileSystemHandleCloseScope>,WTF::DefaultRefDerefTraits<WebCore::FileSystemHandleCloseScope>>> &&)> &&)::$_0>(WebKit::WebFileSystemStorageConnection::getHandle(WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::String const&,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<WTF::Ref<WebCore::FileSystemHandleCloseScope,WTF::RawPtrTraits<WebCore::FileSystemHandleCloseScope>,WTF::DefaultRefDerefTraits<WebCore::FileSystemHandleCloseScope>>> &&)> &&)::$_0 &&,WTF::ThreadLikeAssertion)::{lambda(WTF::CompletionHandler<void ()(WebCore::ExceptionOr<WTF::Ref<WebCore::FileSystemHandleCloseScope,WTF::RawPtrTraits<WebCore::FileSystemHandleCloseScope>,WTF::DefaultRefDerefTraits<WebCore::FileSystemHandleCloseScope>>> &&)> &&,IPC::Connection*)#1},void,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<WTF::Ref<WebCore::FileSystemHandleCloseScope,WTF::RawPtrTraits<WebCore::FileSystemHandleCloseScope>,WTF::DefaultRefDerefTraits<WebCore::FileSystemHandleCloseScope>>> &&)> &&,IPC::Connection*>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F1131180;
  v3 = *(this + 3);
  *(this + 3) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 2);
  *(this + 2) = 0;
  if (v4 && atomic_fetch_add(v4 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v4 + 2);
    (*(*v4 + 8))(v4);
  }

  return WTF::fastFree(this, a2);
}

WTF::StringImpl *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkStorageManager::GetHandle,WebKit::WebFileSystemStorageConnection::getHandle(WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::String const&,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<WTF::Ref<WebCore::FileSystemHandleCloseScope,WTF::RawPtrTraits<WebCore::FileSystemHandleCloseScope>,WTF::DefaultRefDerefTraits<WebCore::FileSystemHandleCloseScope>>> &&)> &&)::$_0>(WebKit::WebFileSystemStorageConnection::getHandle(WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::String const&,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<WTF::Ref<WebCore::FileSystemHandleCloseScope,WTF::RawPtrTraits<WebCore::FileSystemHandleCloseScope>,WTF::DefaultRefDerefTraits<WebCore::FileSystemHandleCloseScope>>> &&)> &&)::$_0 &&,WTF::ThreadLikeAssertion)::{lambda(WTF::CompletionHandler<void ()(WebCore::ExceptionOr<WTF::Ref<WebCore::FileSystemHandleCloseScope,WTF::RawPtrTraits<WebCore::FileSystemHandleCloseScope>,WTF::DefaultRefDerefTraits<WebCore::FileSystemHandleCloseScope>>> &&)> &&,IPC::Connection*)#1},void,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<WTF::Ref<WebCore::FileSystemHandleCloseScope,WTF::RawPtrTraits<WebCore::FileSystemHandleCloseScope>,WTF::DefaultRefDerefTraits<WebCore::FileSystemHandleCloseScope>>> &&)> &&,IPC::Connection*>::call(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (!a3 || (v5 = *a3) == 0)
  {
LABEL_46:
    LOBYTE(v32) = 10;
    v35 = 1;
    return std::apply[abi:sn200100]<WebKit::WebFileSystemStorageConnection::getHandle(WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::String const&,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<WTF::Ref<WebCore::FileSystemHandleCloseScope,WTF::RawPtrTraits<WebCore::FileSystemHandleCloseScope>,WTF::DefaultRefDerefTraits<WebCore::FileSystemHandleCloseScope>>> &&)> &&)::$_0,std::tuple<std::experimental::fundamentals_v3::expected<std::optional<std::pair<WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,BOOL>>,WebKit::FileSystemStorageError>>>((a1 + 8), &v32);
  }

  v6 = a3[1];
  v7 = a3[2];
  if (v6 <= &v7[-v5])
  {
    *a3 = 0;
    a3[1] = 0;
    v17 = a3[3];
    if (v17)
    {
      if (v6)
      {
        (*(*v17 + 16))(v17);
        v5 = *a3;
        v6 = a3[1];
        goto LABEL_24;
      }
    }

    else
    {
      v6 = 0;
    }

    v5 = 0;
LABEL_24:
    *a3 = 0;
    a3[1] = 0;
    v18 = a3[3];
    if (v18)
    {
      if (v6)
      {
LABEL_55:
        (*(*v18 + 16))(v18, v5);
LABEL_40:
        v5 = *a3;
        v6 = a3[1];
        goto LABEL_41;
      }
    }

    else
    {
      v6 = 0;
    }

    v5 = 0;
LABEL_41:
    *a3 = 0;
    a3[1] = 0;
    v26 = a3[3];
    if (v26 && v6)
    {
      (*(*v26 + 16))(v26, v5);
    }

LABEL_42:
    v27 = *a3;
    v28 = a3[1];
    *a3 = 0;
    a3[1] = 0;
    v29 = a3[3];
    if (v29)
    {
      if (v28)
      {
        (*(*v29 + 16))(v29, v27);
        v30 = *a3;
        v28 = a3[1];
        v29 = a3[3];
        goto LABEL_45;
      }
    }

    else
    {
      v28 = 0;
    }

    v30 = 0;
LABEL_45:
    *a3 = 0;
    a3[1] = 0;
    if (v29 && v28)
    {
      (*(*v29 + 16))(v29, v30);
    }

    goto LABEL_46;
  }

  v8 = v7 + 1;
  a3[2] = (v7 + 1);
  if (!v7)
  {
    goto LABEL_24;
  }

  if (*v7 >= 2u)
  {
    goto LABEL_41;
  }

  if (*v7)
  {
    if (v6 <= &v8[-v5])
    {
      v19 = 0;
      v20 = 0;
      *a3 = 0;
      a3[1] = 0;
      v21 = a3[3];
      if (v21)
      {
        (*(*v21 + 16))(v21);
        v20 = *a3;
        v19 = a3[1];
      }
    }

    else
    {
      a3[2] = (v7 + 2);
      if (v7 != -1)
      {
        v9 = *v8;
        if (v9 < 2)
        {
          if (!*v8)
          {
            v14 = 0;
            v10 = 0;
            goto LABEL_19;
          }

          v10 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a3);
          v6 = a3[1];
          if ((v11 & 1) == 0)
          {
            goto LABEL_38;
          }

          v12 = *a3;
          v13 = a3[2];
          if (v6 <= &v13[-*a3])
          {
            *a3 = 0;
            a3[1] = 0;
            v23 = a3[3];
            if (v23)
            {
              if (v6)
              {
                (*(*v23 + 16))(v23);
                v6 = a3[1];
              }
            }

            else
            {
              v6 = 0;
            }
          }

          else
          {
            a3[2] = (v13 + 1);
            if (v13)
            {
              v9 = *v13;
              if (v9 < 2)
              {
                v14 = 1;
LABEL_19:
                v16 = 0;
                v15 = v10 >> 8;
                goto LABEL_20;
              }

              goto LABEL_36;
            }
          }

          *a3 = 0;
          a3[1] = 0;
          v24 = a3[3];
          if (v24)
          {
            if (v6)
            {
              (*(*v24 + 16))(v24);
              v12 = *a3;
              v6 = a3[1];
LABEL_36:
              *a3 = 0;
              a3[1] = 0;
              v25 = a3[3];
              if (v25)
              {
                if (v6)
                {
                  (*(*v25 + 16))(v25, v12);
                  v6 = a3[1];
                }
              }

              else
              {
                v6 = 0;
              }

LABEL_38:
              v5 = *a3;
              goto LABEL_39;
            }
          }

          else
          {
            v6 = 0;
          }

          v12 = 0;
          goto LABEL_36;
        }

LABEL_39:
        *a3 = 0;
        a3[1] = 0;
        v18 = a3[3];
        if (!v18 || !v6)
        {
          goto LABEL_40;
        }

        goto LABEL_55;
      }

      v19 = v6;
      v20 = v5;
    }

    *a3 = 0;
    a3[1] = 0;
    v22 = a3[3];
    if (v22 && v19)
    {
      (*(*v22 + 16))(v22, v20, v19);
      v5 = *a3;
      v6 = a3[1];
    }

    else
    {
      v6 = 0;
      v5 = 0;
    }

    goto LABEL_39;
  }

  LOWORD(v10) = IPC::Decoder::decode<WebKit::FileSystemStorageError>(a3);
  if ((v10 & 0x100) == 0)
  {
    goto LABEL_42;
  }

  v16 = 1;
LABEL_20:
  LOBYTE(v32) = v10;
  *(&v32 + 1) = v15;
  HIBYTE(v32) = BYTE6(v15);
  *(&v32 + 5) = WORD2(v15);
  v33 = v9;
  v34 = v14;
  v35 = v16;
  v36 = 1;
  return std::apply[abi:sn200100]<WebKit::WebFileSystemStorageConnection::getHandle(WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::String const&,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<WTF::Ref<WebCore::FileSystemHandleCloseScope,WTF::RawPtrTraits<WebCore::FileSystemHandleCloseScope>,WTF::DefaultRefDerefTraits<WebCore::FileSystemHandleCloseScope>>> &&)> &&)::$_0,std::tuple<std::experimental::fundamentals_v3::expected<std::optional<std::pair<WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,BOOL>>,WebKit::FileSystemStorageError>>>((a1 + 8), &v32);
}

WTF::StringImpl *std::apply[abi:sn200100]<WebKit::WebFileSystemStorageConnection::getHandle(WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::String const&,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<WTF::Ref<WebCore::FileSystemHandleCloseScope,WTF::RawPtrTraits<WebCore::FileSystemHandleCloseScope>,WTF::DefaultRefDerefTraits<WebCore::FileSystemHandleCloseScope>>> &&)> &&)::$_0,std::tuple<std::experimental::fundamentals_v3::expected<std::optional<std::pair<WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,BOOL>>,WebKit::FileSystemStorageError>>>(mpark *a1, uint64_t *a2)
{
  v3 = *a2;
  if (*(a2 + 24))
  {
    if (*(a2 + 24) == 1)
    {
      WebKit::convertToException(*a2, v14);
      v4 = v15;
      v15 = 0;
      LOBYTE(v16) = v14[0];
      v17 = v4;
      v18 = 1;
      v5 = *(a1 + 2);
      *(a1 + 2) = 0;
      (*(*v5 + 16))(v5, &v16);
      (*(*v5 + 8))(v5);
      if (v18 != 255)
      {
        if (v18)
        {
          v13 = v17;
          v17 = 0;
          if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v13, v6);
          }
        }

        else
        {
          v7 = v16;
          v16 = 0;
          if (v7)
          {
            WTF::ThreadSafeRefCounted<WebCore::FileSystemHandleCloseScope,(WTF::DestructionThread)2>::deref(v7);
          }
        }
      }

      v18 = -1;
      result = v15;
      v15 = 0;
      if (result)
      {
LABEL_16:
        if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          return WTF::StringImpl::destroy(result, v6);
        }

        return result;
      }

      return result;
    }

LABEL_21:
    mpark::throw_bad_variant_access(a1);
  }

  if ((a2[2] & 1) == 0)
  {
    __break(1u);
    goto LABEL_21;
  }

  v8 = *(a2 + 8);
  v9 = *a1;
  v10 = WTF::fastMalloc(0x20);
  *v10 = 1;
  *(v10 + 4) = 0;
  *(v10 + 8) = v3;
  *(v10 + 16) = v8;
  atomic_fetch_add((v9 + 8), 1u);
  *(v10 + 24) = v9;
  v16 = v10;
  v18 = 0;
  v11 = *(a1 + 2);
  *(a1 + 2) = 0;
  (*(*v11 + 16))(v11, &v16);
  result = (*(*v11 + 8))(v11);
  if (v18 == 255)
  {
    return result;
  }

  if (v18)
  {
    result = v17;
    v17 = 0;
    if (!result)
    {
      return result;
    }

    goto LABEL_16;
  }

  result = v16;
  v16 = 0;
  if (result)
  {
    return WTF::ThreadSafeRefCounted<WebCore::FileSystemHandleCloseScope,(WTF::DestructionThread)2>::deref(result);
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkStorageManager::Move,WebKit::WebFileSystemStorageConnection::move(WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::String const&,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<void> &&)> &&)::$_0>(WebKit::WebFileSystemStorageConnection::move(WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::String const&,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<void> &&)> &&)::$_0 &&,WTF::ThreadLikeAssertion)::{lambda(WTF::CompletionHandler<void ()(WebCore::ExceptionOr<void> &&)> &&,IPC::Connection*)#1},void,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<void> &&)> &&,IPC::Connection*>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F11311A8;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkStorageManager::Move,WebKit::WebFileSystemStorageConnection::move(WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::String const&,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<void> &&)> &&)::$_0>(WebKit::WebFileSystemStorageConnection::move(WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::String const&,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<void> &&)> &&)::$_0 &&,WTF::ThreadLikeAssertion)::{lambda(WTF::CompletionHandler<void ()(WebCore::ExceptionOr<void> &&)> &&,IPC::Connection*)#1},void,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<void> &&)> &&,IPC::Connection*>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F11311A8;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

WTF::StringImpl *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkStorageManager::Move,WebKit::WebFileSystemStorageConnection::move(WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::String const&,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<void> &&)> &&)::$_0>(WebKit::WebFileSystemStorageConnection::move(WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::String const&,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<void> &&)> &&)::$_0 &&,WTF::ThreadLikeAssertion)::{lambda(WTF::CompletionHandler<void ()(WebCore::ExceptionOr<void> &&)> &&,IPC::Connection*)#1},void,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<void> &&)> &&,IPC::Connection*>::call(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (a3 && *a3 && (v4 = IPC::Decoder::decode<std::tuple<std::optional<WebKit::FileSystemStorageError>>>(a3), v4 >= 0x10000))
  {
    if ((v4 & 0x100) != 0)
    {
      WebKit::convertToException(v4, v10);
      v8 = v10[0];
      v13 = v11;
      v9 = 1;
    }

    else
    {
      v8 = 0;
      v9 = 0;
      v12 = 0;
      v13 = 0;
      v14 = 0;
    }

    LOBYTE(v12) = v8;
    LOBYTE(v14) = v9;
  }

  else
  {
    v12 = 0;
    v13 = 0;
    v14 = 0;
  }

  v5 = *(a1 + 8);
  *(a1 + 8) = 0;
  (*(*v5 + 16))(v5, &v12);
  result = (*(*v5 + 8))(v5);
  if (v14 == 1)
  {
    result = v13;
    v13 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        return WTF::StringImpl::destroy(result, v7);
      }
    }
  }

  return result;
}

_DWORD *WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::FileSystemSyncAccessHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::FileSystemSyncAccessHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::ProcessQualified<WTF::UUID>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::FileSystemSyncAccessHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::ProcessQualified<WTF::UUID>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::FileSystemSyncAccessHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::FileSystemSyncAccessHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::ProcessQualified<WTF::UUID>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::FileSystemSyncAccessHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::FileSystemSyncAccessHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::UUID>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::FileSystemSyncAccessHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 && (v2 = *(v1 - 4)) != 0)
  {
    v3 = v2 << (6 * *(v1 - 12) >= (2 * v2));
  }

  else
  {
    v3 = 8;
  }

  return WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::FileSystemSyncAccessHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::FileSystemSyncAccessHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::ProcessQualified<WTF::UUID>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::FileSystemSyncAccessHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::ProcessQualified<WTF::UUID>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::FileSystemSyncAccessHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::FileSystemSyncAccessHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::ProcessQualified<WTF::UUID>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::FileSystemSyncAccessHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::FileSystemSyncAccessHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::UUID>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::FileSystemSyncAccessHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash(a1, v3);
}

_DWORD *WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::FileSystemSyncAccessHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::FileSystemSyncAccessHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::ProcessQualified<WTF::UUID>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::FileSystemSyncAccessHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::ProcessQualified<WTF::UUID>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::FileSystemSyncAccessHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::FileSystemSyncAccessHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::ProcessQualified<WTF::UUID>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::FileSystemSyncAccessHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::FileSystemSyncAccessHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::UUID>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::FileSystemSyncAccessHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash(uint64_t *a1, unsigned int a2)
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

  result = WTF::fastMalloc((48 * a2 + 16));
  if (a2)
  {
    v9 = a2;
    v10 = result + 8;
    do
    {
      *(v10 - 2) = 0;
      v10[1] = 0;
      v10[2] = 0;
      *v10 = 0;
      v10 += 6;
      --v9;
    }

    while (v9);
  }

  *a1 = (result + 4);
  result[2] = a2 - 1;
  result[3] = a2;
  *result = 0;
  result[1] = v6;
  if (v5)
  {
    for (i = 0; i != v5; ++i)
    {
      v12 = (v4 + 48 * i);
      if ((*v12 + 1) >= 2)
      {
        v13 = *a1;
        if (*a1)
        {
          v14 = *(v13 - 8);
        }

        else
        {
          v14 = 0;
        }

        v15 = (*v12 + ~(*v12 << 32)) ^ ((*v12 + ~(*v12 << 32)) >> 22);
        v16 = 9 * ((v15 + ~(v15 << 13)) ^ ((v15 + ~(v15 << 13)) >> 8));
        v17 = (v16 ^ (v16 >> 15)) + ~((v16 ^ (v16 >> 15)) << 27);
        v18 = v14 & ((v17 >> 31) ^ v17);
        v19 = 1;
        do
        {
          v20 = v13 + 48 * v18;
          v8 = *v20;
          v18 = (v18 + v19++) & v14;
        }

        while (*v20);
        v21 = *v12;
        v22 = v12[2];
        *(v20 + 16) = v12[1];
        *(v20 + 32) = v22;
        *v20 = v21;
      }
    }
  }

  else if (!v4)
  {
    return result;
  }

  return WTF::fastFree((v4 - 16), v8);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebFileSystemStorageConnection::invalidateAccessHandle(WTF::ObjectIdentifierGeneric<WebCore::FileSystemSyncAccessHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>)::$_0,void,WebCore::ScriptExecutionContext &>::call(uint64_t a1, WebCore::WorkerGlobalScope *a2)
{
  if ((*(*a2 + 64))(a2))
  {
    result = WebCore::WorkerGlobalScope::fileSystemStorageConnection(a2);
    if (result)
    {
      v5 = result;
      v6 = (result + 8);
      atomic_fetch_add((result + 8), 1u);
      result = (*(*result + 128))(result, *(a1 + 8));
      if (atomic_fetch_add(v6, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v6);
        v7 = *(*v5 + 8);

        return v7(v5);
      }
    }
  }

  else
  {
    result = 96;
    __break(0xC471u);
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkStorageManager::CreateWritable,WebKit::WebFileSystemStorageConnection::createWritable(WebCore::ProcessQualified<WTF::UUID>,WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,BOOL,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<WTF::ObjectIdentifierGeneric<WebCore::FileSystemWritableFileStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>> &&)> &&)::$_0>(WebKit::WebFileSystemStorageConnection::createWritable(WebCore::ProcessQualified<WTF::UUID>,WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,BOOL,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<WTF::ObjectIdentifierGeneric<WebCore::FileSystemWritableFileStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>> &&)> &&)::$_0 &&,WTF::ThreadLikeAssertion)::{lambda(WTF::CompletionHandler<void ()(WebCore::ExceptionOr<WTF::ObjectIdentifierGeneric<WebCore::FileSystemWritableFileStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>> &&)> &&,IPC::Connection*)#1},void,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<WTF::ObjectIdentifierGeneric<WebCore::FileSystemWritableFileStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>> &&)> &&,IPC::Connection*>::~CallableWrapper(void *a1)
{
  *a1 = &unk_1F11311F8;
  v2 = a1[8];
  a1[8] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = a1[2];
  a1[2] = 0;
  if (v3 && atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3 + 2);
    (*(*v3 + 8))(v3);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkStorageManager::CreateWritable,WebKit::WebFileSystemStorageConnection::createWritable(WebCore::ProcessQualified<WTF::UUID>,WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,BOOL,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<WTF::ObjectIdentifierGeneric<WebCore::FileSystemWritableFileStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>> &&)> &&)::$_0>(WebKit::WebFileSystemStorageConnection::createWritable(WebCore::ProcessQualified<WTF::UUID>,WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,BOOL,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<WTF::ObjectIdentifierGeneric<WebCore::FileSystemWritableFileStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>> &&)> &&)::$_0 &&,WTF::ThreadLikeAssertion)::{lambda(WTF::CompletionHandler<void ()(WebCore::ExceptionOr<WTF::ObjectIdentifierGeneric<WebCore::FileSystemWritableFileStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>> &&)> &&,IPC::Connection*)#1},void,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<WTF::ObjectIdentifierGeneric<WebCore::FileSystemWritableFileStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>> &&)> &&,IPC::Connection*>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F11311F8;
  v3 = *(this + 8);
  *(this + 8) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 2);
  *(this + 2) = 0;
  if (v4 && atomic_fetch_add(v4 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v4 + 2);
    (*(*v4 + 8))(v4);
  }

  return WTF::fastFree(this, a2);
}

WTF::StringImpl *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkStorageManager::CreateWritable,WebKit::WebFileSystemStorageConnection::createWritable(WebCore::ProcessQualified<WTF::UUID>,WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,BOOL,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<WTF::ObjectIdentifierGeneric<WebCore::FileSystemWritableFileStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>> &&)> &&)::$_0>(WebKit::WebFileSystemStorageConnection::createWritable(WebCore::ProcessQualified<WTF::UUID>,WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,BOOL,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<WTF::ObjectIdentifierGeneric<WebCore::FileSystemWritableFileStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>> &&)> &&)::$_0 &&,WTF::ThreadLikeAssertion)::{lambda(WTF::CompletionHandler<void ()(WebCore::ExceptionOr<WTF::ObjectIdentifierGeneric<WebCore::FileSystemWritableFileStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>> &&)> &&,IPC::Connection*)#1},void,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<WTF::ObjectIdentifierGeneric<WebCore::FileSystemWritableFileStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>> &&)> &&,IPC::Connection*>::call(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (a3)
  {
    v5 = *a3;
    if (*a3)
    {
      v6 = a3[1];
      v7 = a3[2];
      if (v6 <= &v7[-v5])
      {
        *a3 = 0;
        a3[1] = 0;
        v18 = a3[3];
        if (v18)
        {
          if (v6)
          {
            (*(*v18 + 16))(v18);
            v5 = *a3;
            v6 = a3[1];
            goto LABEL_25;
          }
        }

        else
        {
          v6 = 0;
        }

        v5 = 0;
      }

      else
      {
        a3[2] = (v7 + 1);
        if (v7)
        {
          v8 = *v7;
          if (v8 < 2)
          {
            if (v8)
            {
              v9 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a3);
              if (v10)
              {
                v11 = 0;
                v12 = v9 & 0xFFFFFFFFFFFFFF00;
LABEL_17:
                v21 = v9 | v12;
                v22 = v11;
                v23 = 1;
                return std::apply[abi:sn200100]<WebKit::WebFileSystemStorageConnection::createWritable(WebCore::ProcessQualified<WTF::UUID>,WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,BOOL,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<WTF::ObjectIdentifierGeneric<WebCore::FileSystemWritableFileStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>> &&)> &&)::$_0,std::tuple<std::experimental::fundamentals_v3::expected<WTF::ObjectIdentifierGeneric<WebCore::FileSystemWritableFileStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebKit::FileSystemStorageError>>>((a1 + 16), &v21);
              }
            }

            else
            {
              LOWORD(v9) = IPC::Decoder::decode<WebKit::FileSystemStorageError>(a3);
              if ((v9 & 0x100) != 0)
              {
                v12 = 0;
                v11 = 1;
                goto LABEL_17;
              }
            }

LABEL_10:
            v13 = *a3;
            v14 = a3[1];
            *a3 = 0;
            a3[1] = 0;
            v15 = a3[3];
            if (v15)
            {
              if (v14)
              {
                (*(*v15 + 16))(v15, v13);
                v16 = *a3;
                v14 = a3[1];
                v15 = a3[3];
                goto LABEL_13;
              }
            }

            else
            {
              v14 = 0;
            }

            v16 = 0;
LABEL_13:
            *a3 = 0;
            a3[1] = 0;
            if (v15 && v14)
            {
              (*(*v15 + 16))(v15, v16);
            }

            goto LABEL_14;
          }

          goto LABEL_28;
        }
      }

LABEL_25:
      *a3 = 0;
      a3[1] = 0;
      v19 = a3[3];
      if (v19)
      {
        if (v6)
        {
          (*(*v19 + 16))(v19, v5);
          v5 = *a3;
          v6 = a3[1];
          goto LABEL_28;
        }
      }

      else
      {
        v6 = 0;
      }

      v5 = 0;
LABEL_28:
      *a3 = 0;
      a3[1] = 0;
      v20 = a3[3];
      if (v20 && v6)
      {
        (*(*v20 + 16))(v20, v5);
      }

      goto LABEL_10;
    }
  }

LABEL_14:
  LOBYTE(v21) = 10;
  v22 = 1;
  return std::apply[abi:sn200100]<WebKit::WebFileSystemStorageConnection::createWritable(WebCore::ProcessQualified<WTF::UUID>,WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,BOOL,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<WTF::ObjectIdentifierGeneric<WebCore::FileSystemWritableFileStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>> &&)> &&)::$_0,std::tuple<std::experimental::fundamentals_v3::expected<WTF::ObjectIdentifierGeneric<WebCore::FileSystemWritableFileStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebKit::FileSystemStorageError>>>((a1 + 16), &v21);
}

WTF::StringImpl *std::apply[abi:sn200100]<WebKit::WebFileSystemStorageConnection::createWritable(WebCore::ProcessQualified<WTF::UUID>,WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,BOOL,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<WTF::ObjectIdentifierGeneric<WebCore::FileSystemWritableFileStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>> &&)> &&)::$_0,std::tuple<std::experimental::fundamentals_v3::expected<WTF::ObjectIdentifierGeneric<WebCore::FileSystemWritableFileStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebKit::FileSystemStorageError>>>(mpark *a1, unsigned __int8 *a2)
{
  v3 = a1;
  if (!a2[8])
  {
    v9 = *a2;
    if (*a2 == -1 || !v9)
    {
      __break(0xC471u);
      JUMPOUT(0x19E38DCB8);
    }

    v11 = (a1 + 16);
    v10 = *a1;
    v12 = *(*a1 + 32);
    if (!v12)
    {
      a1 = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::FileSystemSyncAccessHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::FileSystemSyncAccessHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::ProcessQualified<WTF::UUID>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::FileSystemSyncAccessHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::ProcessQualified<WTF::UUID>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::FileSystemSyncAccessHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::FileSystemSyncAccessHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::ProcessQualified<WTF::UUID>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::FileSystemSyncAccessHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::FileSystemSyncAccessHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::UUID>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::FileSystemSyncAccessHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand((v10 + 32));
      v12 = *(v10 + 32);
      v9 = *a2;
    }

    v13 = *(v12 - 8);
    v14 = (v9 + ~(v9 << 32)) ^ ((v9 + ~(v9 << 32)) >> 22);
    v15 = 9 * ((v14 + ~(v14 << 13)) ^ ((v14 + ~(v14 << 13)) >> 8));
    v16 = (v15 ^ (v15 >> 15)) + ~((v15 ^ (v15 >> 15)) << 27);
    v17 = v13 & ((v16 >> 31) ^ v16);
    v18 = (v12 + 48 * v17);
    v19 = *v18;
    if (*v18)
    {
      v20 = 0;
      v21 = 1;
      while (v19 != v9)
      {
        if (v19 == -1)
        {
          v20 = v18;
        }

        v17 = (v17 + v21) & v13;
        v18 = (v12 + 48 * v17);
        v19 = *v18;
        ++v21;
        if (!*v18)
        {
          if (v20)
          {
            *v20 = 0;
            v20[3] = 0;
            v20[4] = 0;
            v20[2] = 0;
            --*(*(v10 + 32) - 16);
            v9 = *a2;
            v18 = v20;
          }

          goto LABEL_18;
        }
      }

LABEL_24:
      if (!a2[8])
      {
        v31[0] = *a2;
        v32 = 0;
        v27 = *(v3 + 6);
        *(v3 + 6) = 0;
        (*(*v27 + 16))(v27, v31);
        (*(*v27 + 8))(v27);
        return mpark::detail::move_constructor<mpark::detail::traits<BOOL,WebCore::ExceptionData>,(mpark::detail::Trait)1>::~move_constructor(v31, v28);
      }

LABEL_29:
      mpark::throw_bad_variant_access(a1);
    }

LABEL_18:
    *v18 = v9;
    v22 = *v11;
    v18[4] = *(v3 + 4);
    *(v18 + 1) = v22;
    v23 = *(v10 + 32);
    if (v23)
    {
      v24 = *(v23 - 12) + 1;
    }

    else
    {
      v24 = 1;
    }

    *(v23 - 12) = v24;
    v25 = (*(v23 - 16) + v24);
    v26 = *(v23 - 4);
    if (v26 > 0x400)
    {
      if (v26 > 2 * v25)
      {
        goto LABEL_24;
      }
    }

    else if (3 * v26 > 4 * v25)
    {
      goto LABEL_24;
    }

    a1 = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::FileSystemSyncAccessHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::FileSystemSyncAccessHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::ProcessQualified<WTF::UUID>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::FileSystemSyncAccessHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::ProcessQualified<WTF::UUID>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::FileSystemSyncAccessHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::FileSystemSyncAccessHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::ProcessQualified<WTF::UUID>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::FileSystemSyncAccessHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::FileSystemSyncAccessHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::UUID>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::FileSystemSyncAccessHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand((v10 + 32));
    goto LABEL_24;
  }

  if (a2[8] != 1)
  {
    goto LABEL_29;
  }

  WebKit::convertToException(*a2, v29);
  v4 = v30;
  v30 = 0;
  LOBYTE(v31[0]) = v29[0];
  v31[1] = v4;
  v32 = 1;
  v5 = *(v3 + 6);
  *(v3 + 6) = 0;
  (*(*v5 + 16))(v5, v31);
  (*(*v5 + 8))(v5);
  mpark::detail::move_constructor<mpark::detail::traits<BOOL,WebCore::ExceptionData>,(mpark::detail::Trait)1>::~move_constructor(v31, v6);
  result = v30;
  v30 = 0;
  if (result)
  {
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v7);
    }
  }

  return result;
}

uint64_t *WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::FileSystemWritableFileStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::FileSystemWritableFileStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::ProcessQualified<WTF::UUID>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::FileSystemWritableFileStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::ProcessQualified<WTF::UUID>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::FileSystemWritableFileStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::FileSystemWritableFileStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::ProcessQualified<WTF::UUID>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::FileSystemWritableFileStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::FileSystemWritableFileStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::UUID>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::FileSystemWritableFileStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::remove(uint64_t *result, void *a2)
{
  *a2 = -1;
  v2 = *result;
  v3 = vadd_s32(*(*result - 16), 0xFFFFFFFF00000001);
  *(v2 - 16) = v3;
  v4 = *(v2 - 4);
  if (6 * v3.i32[1] < v4 && v4 >= 9)
  {
    return WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::FileSystemSyncAccessHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::FileSystemSyncAccessHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::ProcessQualified<WTF::UUID>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::FileSystemSyncAccessHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::ProcessQualified<WTF::UUID>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::FileSystemSyncAccessHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::FileSystemSyncAccessHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::ProcessQualified<WTF::UUID>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::FileSystemSyncAccessHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::FileSystemSyncAccessHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::UUID>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::FileSystemSyncAccessHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash(result, v4 >> 1);
  }

  return result;
}

uint64_t *WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::FileSystemWritableFileStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::FileSystemWritableFileStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::ProcessQualified<WTF::UUID>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::FileSystemWritableFileStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::ProcessQualified<WTF::UUID>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::FileSystemWritableFileStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::FileSystemWritableFileStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::ProcessQualified<WTF::UUID>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::FileSystemWritableFileStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::FileSystemWritableFileStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::UUID>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::FileSystemWritableFileStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::FileSystemWritableFileStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::ProcessQualified<WTF::UUID>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::FileSystemWritableFileStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::FileSystemWritableFileStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::UUID>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::FileSystemWritableFileStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<WebCore::FileSystemWritableFileStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    return 0;
  }

  if (a2 == -1 || !a2)
  {
    __break(0xC471u);
    JUMPOUT(0x19E38DDE8);
  }

  v2 = *(a1 - 8);
  v3 = (~(a2 << 32) + a2) ^ ((~(a2 << 32) + a2) >> 22);
  v4 = 9 * ((v3 + ~(v3 << 13)) ^ ((v3 + ~(v3 << 13)) >> 8));
  v5 = (v4 ^ (v4 >> 15)) + ~((v4 ^ (v4 >> 15)) << 27);
  v6 = v2 & ((v5 >> 31) ^ v5);
  v7 = (a1 + 48 * v6);
  v8 = *v7;
  if (*v7 != a2)
  {
    v9 = 1;
    while (v8)
    {
      v6 = (v6 + v9) & v2;
      v7 = (a1 + 48 * v6);
      v8 = *v7;
      ++v9;
      if (*v7 == a2)
      {
        return v7;
      }
    }

    return (a1 + 48 * *(a1 - 4));
  }

  return v7;
}

void *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkStorageManager::CloseWritable,WebKit::WebFileSystemStorageConnection::closeWritable(WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::FileSystemWritableFileStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::FileSystemWriteCloseReason,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<void> &&)> &&)::$_0>(WebKit::WebFileSystemStorageConnection::closeWritable(WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::FileSystemWritableFileStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::FileSystemWriteCloseReason,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<void> &&)> &&)::$_0 &&,WTF::ThreadLikeAssertion)::{lambda(WTF::CompletionHandler<void ()(WebCore::ExceptionOr<void> &&)> &&,IPC::Connection*)#1},void,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<void> &&)> &&,IPC::Connection*>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F1131220;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkStorageManager::CloseWritable,WebKit::WebFileSystemStorageConnection::closeWritable(WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::FileSystemWritableFileStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::FileSystemWriteCloseReason,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<void> &&)> &&)::$_0>(WebKit::WebFileSystemStorageConnection::closeWritable(WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::FileSystemWritableFileStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::FileSystemWriteCloseReason,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<void> &&)> &&)::$_0 &&,WTF::ThreadLikeAssertion)::{lambda(WTF::CompletionHandler<void ()(WebCore::ExceptionOr<void> &&)> &&,IPC::Connection*)#1},void,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<void> &&)> &&,IPC::Connection*>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F1131220;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

WTF::StringImpl *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkStorageManager::CloseWritable,WebKit::WebFileSystemStorageConnection::closeWritable(WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::FileSystemWritableFileStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::FileSystemWriteCloseReason,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<void> &&)> &&)::$_0>(WebKit::WebFileSystemStorageConnection::closeWritable(WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::FileSystemWritableFileStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::FileSystemWriteCloseReason,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<void> &&)> &&)::$_0 &&,WTF::ThreadLikeAssertion)::{lambda(WTF::CompletionHandler<void ()(WebCore::ExceptionOr<void> &&)> &&,IPC::Connection*)#1},void,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<void> &&)> &&,IPC::Connection*>::call(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (a3 && *a3 && (v4 = IPC::Decoder::decode<std::tuple<std::optional<WebKit::FileSystemStorageError>>>(a3), v4 >= 0x10000))
  {
    if ((v4 & 0x100) != 0)
    {
      WebKit::convertToException(v4, v10);
      v8 = v10[0];
      v13 = v11;
      v9 = 1;
    }

    else
    {
      v8 = 0;
      v9 = 0;
      v12 = 0;
      v13 = 0;
      v14 = 0;
    }

    LOBYTE(v12) = v8;
    LOBYTE(v14) = v9;
  }

  else
  {
    v12 = 0;
    v13 = 0;
    v14 = 0;
  }

  v5 = *(a1 + 8);
  *(a1 + 8) = 0;
  (*(*v5 + 16))(v5, &v12);
  result = (*(*v5 + 8))(v5);
  if (v14 == 1)
  {
    result = v13;
    v13 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        return WTF::StringImpl::destroy(result, v7);
      }
    }
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkStorageManager::ExecuteCommandForWritable,WebKit::WebFileSystemStorageConnection::executeCommandForWritable(WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::FileSystemWritableFileStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::FileSystemWriteCommandType,std::optional<unsigned long long>,std::optional<unsigned long long>,std::span<unsigned char const,18446744073709551615ul>,BOOL,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<void> &&)> &&)::$_0>(WebKit::WebFileSystemStorageConnection::executeCommandForWritable(WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::FileSystemWritableFileStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::FileSystemWriteCommandType,std::optional<unsigned long long>,std::optional<unsigned long long>,std::span<unsigned char const,18446744073709551615ul>,BOOL,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<void> &&)> &&)::$_0 &&,WTF::ThreadLikeAssertion)::{lambda(WTF::CompletionHandler<void ()(WebCore::ExceptionOr<void> &&)> &&,IPC::Connection*)#1},void,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<void> &&)> &&,IPC::Connection*>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F1131248;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkStorageManager::ExecuteCommandForWritable,WebKit::WebFileSystemStorageConnection::executeCommandForWritable(WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::FileSystemWritableFileStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::FileSystemWriteCommandType,std::optional<unsigned long long>,std::optional<unsigned long long>,std::span<unsigned char const,18446744073709551615ul>,BOOL,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<void> &&)> &&)::$_0>(WebKit::WebFileSystemStorageConnection::executeCommandForWritable(WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::FileSystemWritableFileStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::FileSystemWriteCommandType,std::optional<unsigned long long>,std::optional<unsigned long long>,std::span<unsigned char const,18446744073709551615ul>,BOOL,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<void> &&)> &&)::$_0 &&,WTF::ThreadLikeAssertion)::{lambda(WTF::CompletionHandler<void ()(WebCore::ExceptionOr<void> &&)> &&,IPC::Connection*)#1},void,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<void> &&)> &&,IPC::Connection*>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F1131248;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

WTF::StringImpl *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkStorageManager::ExecuteCommandForWritable,WebKit::WebFileSystemStorageConnection::executeCommandForWritable(WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::FileSystemWritableFileStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::FileSystemWriteCommandType,std::optional<unsigned long long>,std::optional<unsigned long long>,std::span<unsigned char const,18446744073709551615ul>,BOOL,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<void> &&)> &&)::$_0>(WebKit::WebFileSystemStorageConnection::executeCommandForWritable(WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::FileSystemWritableFileStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::FileSystemWriteCommandType,std::optional<unsigned long long>,std::optional<unsigned long long>,std::span<unsigned char const,18446744073709551615ul>,BOOL,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<void> &&)> &&)::$_0 &&,WTF::ThreadLikeAssertion)::{lambda(WTF::CompletionHandler<void ()(WebCore::ExceptionOr<void> &&)> &&,IPC::Connection*)#1},void,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<void> &&)> &&,IPC::Connection*>::call(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (a3 && *a3 && (v4 = IPC::Decoder::decode<std::tuple<std::optional<WebKit::FileSystemStorageError>>>(a3), v4 >= 0x10000))
  {
    if ((v4 & 0x100) != 0)
    {
      WebKit::convertToException(v4, v10);
      v8 = v10[0];
      v13 = v11;
      v9 = 1;
    }

    else
    {
      v8 = 0;
      v9 = 0;
      v12 = 0;
      v13 = 0;
      v14 = 0;
    }

    LOBYTE(v12) = v8;
    LOBYTE(v14) = v9;
  }

  else
  {
    v12 = 0;
    v13 = 0;
    v14 = 0;
  }

  v5 = *(a1 + 8);
  *(a1 + 8) = 0;
  (*(*v5 + 16))(v5, &v12);
  result = (*(*v5 + 8))(v5);
  if (v14 == 1)
  {
    result = v13;
    v13 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        return WTF::StringImpl::destroy(result, v7);
      }
    }
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkStorageManager::RequestNewCapacityForSyncAccessHandle,WTF::CompletionHandler<void ()(std::optional<unsigned long long> &&)>>(WTF::CompletionHandler<void ()(std::optional<unsigned long long> &&)> &&,WTF::ThreadLikeAssertion)::{lambda(WTF::CompletionHandler<void ()(std::optional<unsigned long long> &&)>,IPC::Decoder)#1},void,WTF::CompletionHandler<void ()(std::optional<unsigned long long> &&)>,IPC::Decoder>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F1131270;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkStorageManager::RequestNewCapacityForSyncAccessHandle,WTF::CompletionHandler<void ()(std::optional<unsigned long long> &&)>>(WTF::CompletionHandler<void ()(std::optional<unsigned long long> &&)> &&,WTF::ThreadLikeAssertion)::{lambda(WTF::CompletionHandler<void ()(std::optional<unsigned long long> &&)>,IPC::Decoder)#1},void,WTF::CompletionHandler<void ()(std::optional<unsigned long long> &&)>,IPC::Decoder>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F1131270;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkStorageManager::RequestNewCapacityForSyncAccessHandle,WTF::CompletionHandler<void ()(std::optional<unsigned long long> &&)>>(WTF::CompletionHandler<void ()(std::optional<unsigned long long> &&)> &&,WTF::ThreadLikeAssertion)::{lambda(WTF::CompletionHandler<void ()(std::optional<unsigned long long> &&)>,IPC::Decoder)#1},void,WTF::CompletionHandler<void ()(std::optional<unsigned long long> &&)>,IPC::Decoder>::call(uint64_t a1, uint64_t a2, IPC::Decoder *a3)
{
  if (!a3 || !*a3 || (IPC::Decoder::decode<std::tuple<std::optional<unsigned long long>>>(a3, v6), v7 != 1))
  {
    v6[0] = 0;
    v6[1] = 0;
  }

  v4 = *(a1 + 8);
  *(a1 + 8) = 0;
  (*(*v4 + 16))(v4, v6);
  return (*(*v4 + 8))(v4);
}

void IPC::ArgumentCoder<std::tuple<WebKit::PolicyDecision>,void>::decode<IPC::Decoder>(IPC::Decoder *a1@<X0>, _BYTE *a2@<X8>)
{
  IPC::ArgumentCoder<WebKit::PolicyDecision,void>::decode(a1, v7);
  if (v13 & 1) != 0 || (IPC::Decoder::markInvalid(a1), (v13))
  {
    std::tuple<WebKit::PolicyDecision>::tuple[abi:sn200100]<WebKit::PolicyDecision,0>(a2, v7);
    v5 = v13;
    a2[216] = 1;
    if (v5)
    {
      if (v12 == 1)
      {
        v6 = v11;
        v11 = 0;
        if (v6)
        {
          if (atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v6, v4);
          }
        }
      }

      if (v10 == 1)
      {
        WebKit::SandboxExtensionHandle::~SandboxExtensionHandle(&v9);
      }

      if (v8[120] == 1)
      {
        WebKit::WebsitePoliciesData::~WebsitePoliciesData(v8, v4);
      }
    }
  }

  else
  {
    *a2 = 0;
    a2[216] = 0;
  }
}

uint64_t std::tuple<WebKit::PolicyDecision>::tuple[abi:sn200100]<WebKit::PolicyDecision,0>(uint64_t a1, __int128 *a2)
{
  v4 = *a2;
  v5 = a2[1];
  *(a1 + 32) = *(a2 + 32);
  *a1 = v4;
  *(a1 + 16) = v5;
  *(a1 + 40) = 0;
  v6 = (a1 + 40);
  *(a1 + 160) = 0;
  if (*(a2 + 160) == 1)
  {
    std::__optional_storage_base<WebKit::WebsitePoliciesData,false>::__construct[abi:sn200100]<WebKit::WebsitePoliciesData>(v6, a2 + 5);
  }

  *(a1 + 168) = 0;
  *(a1 + 176) = 0;
  if (*(a2 + 176) == 1)
  {
    v8 = *(a2 + 21);
    *(a2 + 21) = 0;
    *(a1 + 168) = v8;
    *(a1 + 176) = 1;
  }

  *(a1 + 184) = 0;
  *(a1 + 200) = 0;
  if (*(a2 + 200) == 1)
  {
    *(a1 + 184) = *(a2 + 92);
    v9 = *(a2 + 24);
    *(a2 + 24) = 0;
    *(a1 + 192) = v9;
    *(a1 + 200) = 1;
  }

  *(a1 + 208) = *(a2 + 208);
  return a1;
}

void WTF::Detail::CallableWrapper<WebCore::PolicyDecisionMode<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebPageProxy::DecidePolicyForNavigationActionAsync,WebKit::WebFrameLoaderClient::dispatchDecidePolicyForNavigationAction(WebCore::NavigationAction const&,WebCore::ResourceRequest const&,WebCore::ResourceResponse const&,WebCore::FormState *,WTF::String const&,std::optional<WTF::ObjectIdentifierGeneric<WebCore::NavigationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::optional<WebCore::HitTestResult> &&,BOOL,WebCore::IsPerformingHTTPFallback,WTF::OptionSet<WebCore::SandboxFlag>,WebCore::PolicyDecisionMode,WTF::CompletionHandler<void ()(WebCore::PolicyAction)> &&)::$_0>(WebKit::WebFrameLoaderClient::dispatchDecidePolicyForNavigationAction(WebCore::NavigationAction const&,WebCore::ResourceRequest const&,WebCore::ResourceResponse const&,WebCore::FormState *,WTF::String const&,std::optional<WTF::ObjectIdentifierGeneric<WebCore::NavigationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::optional<WebCore::HitTestResult> &&,BOOL,WebCore::IsPerformingHTTPFallback,WTF::OptionSet<WebCore::SandboxFlag>,WebCore::PolicyDecisionMode,WTF::CompletionHandler<void ()(WebCore::PolicyAction)> &&)::$_0 &&,WTF::ThreadLikeAssertion)::{lambda(WTF::CompletionHandler<void ()(WebCore::PolicyAction)> &&,IPC::Connection*)#1},void,WTF::CompletionHandler<void ()(WebCore::PolicyAction)> &&,IPC::Connection*>::call(uint64_t a1, uint64_t a2, IPC::Decoder *a3)
{
  if (a3 && *a3)
  {
    IPC::ArgumentCoder<std::tuple<WebKit::PolicyDecision>,void>::decode<IPC::Decoder>(a3, v6);
    if (v12 & 1) != 0 || (IPC::Decoder::markInvalid(a3), (v12))
    {
      if (v11 == 1)
      {
        v5 = v10;
        v10 = 0;
        if (v5)
        {
          if (atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v5, v4);
          }
        }
      }

      if (v9 == 1)
      {
        WebKit::SandboxExtensionHandle::~SandboxExtensionHandle(&v8);
      }

      if (v7[120] == 1)
      {
        WebKit::WebsitePoliciesData::~WebsitePoliciesData(v7, v4);
      }
    }

    else
    {
      IPC::Connection::cancelReply<Messages::WebPageProxy::DecidePolicyForNavigationActionAsync,WebKit::WebFrameLoaderClient::dispatchDecidePolicyForNavigationAction(WebCore::NavigationAction const&,WebCore::ResourceRequest const&,WebCore::ResourceResponse const&,WebCore::FormState *,WTF::String const&,std::optional<WTF::ObjectIdentifierGeneric<WebCore::NavigationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::optional<WebCore::HitTestResult> &&,BOOL,WebCore::IsPerformingHTTPFallback,WTF::OptionSet<WebCore::SandboxFlag>,WebCore::PolicyDecisionMode,WTF::CompletionHandler<void ()(WebCore::PolicyAction)> &&)::$_0>();
    }
  }

  else
  {

    IPC::Connection::cancelReply<Messages::WebPageProxy::DecidePolicyForNavigationActionAsync,WebKit::WebFrameLoaderClient::dispatchDecidePolicyForNavigationAction(WebCore::NavigationAction const&,WebCore::ResourceRequest const&,WebCore::ResourceResponse const&,WebCore::FormState *,WTF::String const&,std::optional<WTF::ObjectIdentifierGeneric<WebCore::NavigationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::optional<WebCore::HitTestResult> &&,BOOL,WebCore::IsPerformingHTTPFallback,WTF::OptionSet<WebCore::SandboxFlag>,WebCore::PolicyDecisionMode,WTF::CompletionHandler<void ()(WebCore::PolicyAction)> &&)::$_0>();
  }
}

void IPC::Connection::cancelReply<Messages::WebPageProxy::DecidePolicyForNavigationActionAsync,WebKit::WebFrameLoaderClient::dispatchDecidePolicyForNavigationAction(WebCore::NavigationAction const&,WebCore::ResourceRequest const&,WebCore::ResourceResponse const&,WebCore::FormState *,WTF::String const&,std::optional<WTF::ObjectIdentifierGeneric<WebCore::NavigationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::optional<WebCore::HitTestResult> &&,BOOL,WebCore::IsPerformingHTTPFallback,WTF::OptionSet<WebCore::SandboxFlag>,WebCore::PolicyDecisionMode,WTF::CompletionHandler<void ()(WebCore::PolicyAction)> &&)::$_0>()
{
  LOWORD(v9) = 0;
  BYTE2(v9) = 2;
  BYTE8(v9) = 0;
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v13[0] = 0;
  v14 = 0;
  LOBYTE(v15) = 0;
  v16 = 0;
  v17 = 0;
  v19 = 0;
  v20 = 0;
  std::tuple<WebKit::PolicyDecision>::tuple[abi:sn200100]<WebKit::PolicyDecision,0>(&v3, &v9);
  if (v19 == 1)
  {
    v1 = v18;
    v18 = 0;
    if (v1)
    {
      if (atomic_fetch_add_explicit(v1, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v1, v0);
      }
    }
  }

  if (v16 == 1)
  {
    WebKit::SandboxExtensionHandle::~SandboxExtensionHandle(&v15);
  }

  if (v14 == 1)
  {
    WebKit::WebsitePoliciesData::~WebsitePoliciesData(v13, v0);
  }

  if (v8 == 1)
  {
    v2 = v7;
    v7 = 0;
    if (v2)
    {
      if (atomic_fetch_add_explicit(v2, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v2, v0);
      }
    }
  }

  if (v6 == 1)
  {
    WebKit::SandboxExtensionHandle::~SandboxExtensionHandle(&v5);
  }

  if (v4[120] == 1)
  {
    WebKit::WebsitePoliciesData::~WebsitePoliciesData(v4, v0);
  }
}

void *WTF::Detail::CallableWrapper<WebCore::PolicyDecisionMode<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebPageProxy::DecidePolicyForNavigationActionAsync,WebKit::WebFrameLoaderClient::dispatchDecidePolicyForNavigationAction(WebCore::NavigationAction const&,WebCore::ResourceRequest const&,WebCore::ResourceResponse const&,WebCore::FormState *,WTF::String const&,std::optional<WTF::ObjectIdentifierGeneric<WebCore::NavigationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::optional<WebCore::HitTestResult> &&,BOOL,WebCore::IsPerformingHTTPFallback,WTF::OptionSet<WebCore::SandboxFlag>,WebCore::PolicyDecisionMode,WTF::CompletionHandler<void ()(WebCore::PolicyAction)> &&)::$_1>(WebKit::WebFrameLoaderClient::dispatchDecidePolicyForNavigationAction(WebCore::NavigationAction const&,WebCore::ResourceRequest const&,WebCore::ResourceResponse const&,WebCore::FormState *,WTF::String const&,std::optional<WTF::ObjectIdentifierGeneric<WebCore::NavigationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::optional<WebCore::HitTestResult> &&,BOOL,WebCore::IsPerformingHTTPFallback,WTF::OptionSet<WebCore::SandboxFlag>,WebCore::PolicyDecisionMode,WTF::CompletionHandler<void ()(WebCore::PolicyAction)> &&)::$_1 &&,WTF::ThreadLikeAssertion)::{lambda(WTF::CompletionHandler<void ()(WebCore::PolicyAction)> &&,IPC::Connection*)#1},void,WTF::CompletionHandler<void ()(WebCore::PolicyAction)> &&,IPC::Connection*>::~CallableWrapper(void *a1, void *a2)
{
  v3 = a1[1];
  *a1 = &unk_1F11312C0;
  a1[1] = 0;
  if (v3 && atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3);
    WTF::fastFree(v3, a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebCore::PolicyDecisionMode<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebPageProxy::DecidePolicyForNavigationActionAsync,WebKit::WebFrameLoaderClient::dispatchDecidePolicyForNavigationAction(WebCore::NavigationAction const&,WebCore::ResourceRequest const&,WebCore::ResourceResponse const&,WebCore::FormState *,WTF::String const&,std::optional<WTF::ObjectIdentifierGeneric<WebCore::NavigationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::optional<WebCore::HitTestResult> &&,BOOL,WebCore::IsPerformingHTTPFallback,WTF::OptionSet<WebCore::SandboxFlag>,WebCore::PolicyDecisionMode,WTF::CompletionHandler<void ()(WebCore::PolicyAction)> &&)::$_1>(WebKit::WebFrameLoaderClient::dispatchDecidePolicyForNavigationAction(WebCore::NavigationAction const&,WebCore::ResourceRequest const&,WebCore::ResourceResponse const&,WebCore::FormState *,WTF::String const&,std::optional<WTF::ObjectIdentifierGeneric<WebCore::NavigationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::optional<WebCore::HitTestResult> &&,BOOL,WebCore::IsPerformingHTTPFallback,WTF::OptionSet<WebCore::SandboxFlag>,WebCore::PolicyDecisionMode,WTF::CompletionHandler<void ()(WebCore::PolicyAction)> &&)::$_1 &&,WTF::ThreadLikeAssertion)::{lambda(WTF::CompletionHandler<void ()(WebCore::PolicyAction)> &&,IPC::Connection*)#1},void,WTF::CompletionHandler<void ()(WebCore::PolicyAction)> &&,IPC::Connection*>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F11312C0;
  *(this + 1) = 0;
  if (v3 && atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3);
    WTF::fastFree(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

void WTF::Detail::CallableWrapper<WebCore::PolicyDecisionMode<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebPageProxy::DecidePolicyForNavigationActionAsync,WebKit::WebFrameLoaderClient::dispatchDecidePolicyForNavigationAction(WebCore::NavigationAction const&,WebCore::ResourceRequest const&,WebCore::ResourceResponse const&,WebCore::FormState *,WTF::String const&,std::optional<WTF::ObjectIdentifierGeneric<WebCore::NavigationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::optional<WebCore::HitTestResult> &&,BOOL,WebCore::IsPerformingHTTPFallback,WTF::OptionSet<WebCore::SandboxFlag>,WebCore::PolicyDecisionMode,WTF::CompletionHandler<void ()(WebCore::PolicyAction)> &&)::$_1>(WebKit::WebFrameLoaderClient::dispatchDecidePolicyForNavigationAction(WebCore::NavigationAction const&,WebCore::ResourceRequest const&,WebCore::ResourceResponse const&,WebCore::FormState *,WTF::String const&,std::optional<WTF::ObjectIdentifierGeneric<WebCore::NavigationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::optional<WebCore::HitTestResult> &&,BOOL,WebCore::IsPerformingHTTPFallback,WTF::OptionSet<WebCore::SandboxFlag>,WebCore::PolicyDecisionMode,WTF::CompletionHandler<void ()(WebCore::PolicyAction)> &&)::$_1 &&,WTF::ThreadLikeAssertion)::{lambda(WTF::CompletionHandler<void ()(WebCore::PolicyAction)> &&,IPC::Connection*)#1},void,WTF::CompletionHandler<void ()(WebCore::PolicyAction)> &&,IPC::Connection*>::call(uint64_t a1, uint64_t a2, IPC::Decoder *a3)
{
  if (a3 && *a3)
  {
    IPC::ArgumentCoder<std::tuple<WebKit::PolicyDecision>,void>::decode<IPC::Decoder>(a3, v8);
    if (v14 & 1) != 0 || (IPC::Decoder::markInvalid(a3), (v14))
    {
      std::apply[abi:sn200100]<WebKit::WebFrameLoaderClient::dispatchDecidePolicyForNavigationAction(WebCore::NavigationAction const&,WebCore::ResourceRequest const&,WebCore::ResourceResponse const&,WebCore::FormState *,WTF::String const&,std::optional<WTF::ObjectIdentifierGeneric<WebCore::NavigationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::optional<WebCore::HitTestResult> &&,BOOL,WebCore::IsPerformingHTTPFallback,WTF::OptionSet<WebCore::SandboxFlag>,WebCore::PolicyDecisionMode,WTF::CompletionHandler<void ()(WebCore::PolicyAction)> &&)::$_1,std::tuple<WebKit::PolicyDecision>>((a1 + 8), v8);
      if (v14)
      {
        if (v13 == 1)
        {
          v7 = v12;
          v12 = 0;
          if (v7)
          {
            if (atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v7, v5);
            }
          }
        }

        if (v11 == 1)
        {
          WebKit::SandboxExtensionHandle::~SandboxExtensionHandle(&v10);
        }

        if (v9[120] == 1)
        {
          WebKit::WebsitePoliciesData::~WebsitePoliciesData(v9, v5);
        }
      }
    }

    else
    {
      IPC::Connection::cancelReply<Messages::WebPageProxy::DecidePolicyForNavigationActionAsync,WebKit::WebFrameLoaderClient::dispatchDecidePolicyForNavigationAction(WebCore::NavigationAction const&,WebCore::ResourceRequest const&,WebCore::ResourceResponse const&,WebCore::FormState *,WTF::String const&,std::optional<WTF::ObjectIdentifierGeneric<WebCore::NavigationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::optional<WebCore::HitTestResult> &&,BOOL,WebCore::IsPerformingHTTPFallback,WTF::OptionSet<WebCore::SandboxFlag>,WebCore::PolicyDecisionMode,WTF::CompletionHandler<void ()(WebCore::PolicyAction)> &&)::$_1>((a1 + 8));
    }
  }

  else
  {
    v6 = (a1 + 8);

    IPC::Connection::cancelReply<Messages::WebPageProxy::DecidePolicyForNavigationActionAsync,WebKit::WebFrameLoaderClient::dispatchDecidePolicyForNavigationAction(WebCore::NavigationAction const&,WebCore::ResourceRequest const&,WebCore::ResourceResponse const&,WebCore::FormState *,WTF::String const&,std::optional<WTF::ObjectIdentifierGeneric<WebCore::NavigationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::optional<WebCore::HitTestResult> &&,BOOL,WebCore::IsPerformingHTTPFallback,WTF::OptionSet<WebCore::SandboxFlag>,WebCore::PolicyDecisionMode,WTF::CompletionHandler<void ()(WebCore::PolicyAction)> &&)::$_1>(v6);
  }
}

void IPC::Connection::cancelReply<Messages::WebPageProxy::DecidePolicyForNavigationActionAsync,WebKit::WebFrameLoaderClient::dispatchDecidePolicyForNavigationAction(WebCore::NavigationAction const&,WebCore::ResourceRequest const&,WebCore::ResourceResponse const&,WebCore::FormState *,WTF::String const&,std::optional<WTF::ObjectIdentifierGeneric<WebCore::NavigationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::optional<WebCore::HitTestResult> &&,BOOL,WebCore::IsPerformingHTTPFallback,WTF::OptionSet<WebCore::SandboxFlag>,WebCore::PolicyDecisionMode,WTF::CompletionHandler<void ()(WebCore::PolicyAction)> &&)::$_1>(uint64_t *a1)
{
  LOWORD(v12) = 0;
  BYTE2(v12) = 2;
  BYTE8(v12) = 0;
  v13 = 0;
  v14 = 0;
  v15 = 0;
  v16[0] = 0;
  v17 = 0;
  LOBYTE(v18) = 0;
  v19 = 0;
  v20 = 0;
  v22 = 0;
  v23 = 0;
  std::tuple<WebKit::PolicyDecision>::tuple[abi:sn200100]<WebKit::PolicyDecision,0>(v6, &v12);
  if (v22 == 1)
  {
    v4 = v21;
    v21 = 0;
    if (v4)
    {
      if (atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v4, v2);
      }
    }
  }

  if (v19 == 1)
  {
    WebKit::SandboxExtensionHandle::~SandboxExtensionHandle(&v18);
  }

  if (v17 == 1)
  {
    WebKit::WebsitePoliciesData::~WebsitePoliciesData(v16, v2);
  }

  std::apply[abi:sn200100]<WebKit::WebFrameLoaderClient::dispatchDecidePolicyForNavigationAction(WebCore::NavigationAction const&,WebCore::ResourceRequest const&,WebCore::ResourceResponse const&,WebCore::FormState *,WTF::String const&,std::optional<WTF::ObjectIdentifierGeneric<WebCore::NavigationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::optional<WebCore::HitTestResult> &&,BOOL,WebCore::IsPerformingHTTPFallback,WTF::OptionSet<WebCore::SandboxFlag>,WebCore::PolicyDecisionMode,WTF::CompletionHandler<void ()(WebCore::PolicyAction)> &&)::$_1,std::tuple<WebKit::PolicyDecision>>(a1, v6);
  if (v11 == 1)
  {
    v5 = v10;
    v10 = 0;
    if (v5)
    {
      if (atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v5, v3);
      }
    }
  }

  if (v9 == 1)
  {
    WebKit::SandboxExtensionHandle::~SandboxExtensionHandle(&v8);
  }

  if (v7[120] == 1)
  {
    WebKit::WebsitePoliciesData::~WebsitePoliciesData(v7, v3);
  }
}

void std::apply[abi:sn200100]<WebKit::WebFrameLoaderClient::dispatchDecidePolicyForNavigationAction(WebCore::NavigationAction const&,WebCore::ResourceRequest const&,WebCore::ResourceResponse const&,WebCore::FormState *,WTF::String const&,std::optional<WTF::ObjectIdentifierGeneric<WebCore::NavigationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::optional<WebCore::HitTestResult> &&,BOOL,WebCore::IsPerformingHTTPFallback,WTF::OptionSet<WebCore::SandboxFlag>,WebCore::PolicyDecisionMode,WTF::CompletionHandler<void ()(WebCore::PolicyAction)> &&)::$_1,std::tuple<WebKit::PolicyDecision>>(uint64_t *a1, uint64_t a2)
{
  v64 = *MEMORY[0x1E69E9840];
  if (!*a1)
  {
    return;
  }

  v2 = *(*a1 + 8);
  if (!v2)
  {
    return;
  }

  v5 = CFRetain(*(v2 - 8));
  v6 = WebCore::logClient(v5);
  v7 = *v6;
  if (!*v6)
  {
    v40 = qword_1ED6416F0;
    if (os_log_type_enabled(qword_1ED6416F0, OS_LOG_TYPE_DEFAULT))
    {
      v41 = *(v2 + 72);
      v42 = a1[2];
      v43 = *(a2 + 2);
      switch(v43)
      {
        case 3:
          v44 = "LoadWillContinueInAnotherProcess";
          break;
        case 1:
          v44 = "Download";
          break;
        case 2:
          v44 = "Ignore";
          break;
        default:
          v44 = "Use";
          break;
      }

      *buf = 134218498;
      *&buf[4] = v41;
      *&buf[12] = 2048;
      *&buf[14] = v42;
      *&buf[22] = 2082;
      v63 = v44;
      _os_log_impl(&dword_19D52D000, v40, OS_LOG_TYPE_DEFAULT, "[webFrameID=%llu, webPageID=%llu] WebFrameLoaderClient::dispatchDecidePolicyForNavigationAction: Got policyAction %{public}s from async IPC", buf, 0x20u);
    }

    goto LABEL_37;
  }

  if (((*(*v7 + 24))(*v6) & 1) == 0)
  {
    __break(0xC471u);
    goto LABEL_71;
  }

  v8 = *(v2 + 72);
  v9 = a1[2];
  v10 = *(a2 + 2);
  v11 = "Download";
  v12 = "Use";
  if (v10 == 2)
  {
    v12 = "Ignore";
  }

  if (v10 != 1)
  {
    v11 = v12;
  }

  if (v10 == 3)
  {
    v13 = "LoadWillContinueInAnotherProcess";
  }

  else
  {
    v13 = v11;
  }

  WTF::CString::CString(&v55, v13);
  os_unfair_lock_lock((v7 + 16));
  v15 = *(v7 + 8);
  v56 = v8;
  v57 = v9;
  v58 = &v55;
  v16 = *(v7 + 24);
  v17 = *(v15 + 128);
  v18 = INFINITY;
  if (fabs(v17) != INFINITY)
  {
    WTF::ApproximateTime::now(v14);
    v18 = v17 + v19;
  }

  if (*(v15 + 64) != v16)
  {
    IPC::StreamClientConnectionBuffer::tryAcquire(v15 + 72, buf, v18);
    if (buf[16] != 1)
    {
      goto LABEL_34;
    }

    v45 = *&buf[8];
    if (*&buf[8] > 1uLL)
    {
      v46 = *buf;
      **buf = 3198;
      v47 = v46 + 2;
      if (v45 - 2 < (-v47 & 7 | 8uLL))
      {
        goto LABEL_34;
      }

      v48 = -v47 & 7;
      *(v47 + v48) = v16;
      v49 = 6;
      if (v48 > 6)
      {
        v49 = v48;
      }

      v50 = v49 + 10;
      v51 = (*(v15 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
      v52 = *(v15 + 72);
      if (v51 + 16 >= v52)
      {
        v51 = 0;
      }

      v53 = v50 + v51;
      if (v52 <= v53)
      {
        v53 = 0;
      }

      *(v15 + 88) = v53;
      v54 = *(v15 + 80);
      if (*(v54 + 8) <= 0xFFuLL)
      {
        goto LABEL_62;
      }

      IPC::StreamClientConnection::wakeUpServerBatched(v15, atomic_exchange((*(v54 + 16) + 128), v53) == 0x80000000);
      *(v15 + 64) = v16;
      goto LABEL_15;
    }

    __break(0xC471u);
LABEL_71:
    JUMPOUT(0x19E38EF38);
  }

LABEL_15:
  IPC::StreamClientConnectionBuffer::tryAcquire(v15 + 72, &v59, v18);
  if (v61 != 1)
  {
    goto LABEL_34;
  }

  v20 = v59;
  v21 = v60;
  *&buf[16] = v60;
  if (v60 <= 1)
  {
    __break(0xC471u);
    JUMPOUT(0x19E38EF58);
  }

  *v59 = 288;
  v22 = v20 + 1;
  v23 = v21 - 2;
  v24 = -v22 & 7 | 8;
  v25 = v23 >= v24;
  v26 = v23 - v24;
  if (v25 && (*(v22 + (-v22 & 7)) = v56, v27 = v22 + v24, v28 = -v27 & 7 | 8, v25 = v26 >= v28, v29 = v26 - v28, v25))
  {
    *&v27[-v27 & 7] = v57;
    *buf = &v27[v28];
    *&buf[8] = v29;
  }

  else
  {
    *buf = 0;
    *&buf[8] = 0;
  }

  v30 = *v58;
  if (!*v58)
  {
    goto LABEL_63;
  }

  v31 = v30 + 16;
  for (i = *(v30 + 1); ; i = 0)
  {
    IPC::ArgumentCoder<std::span<unsigned char const,18446744073709551615ul>,void>::encode<IPC::StreamConnectionEncoder>(buf, v31, i);
    if (*buf)
    {
      break;
    }

    if (v61)
    {
      IPC::StreamClientConnection::sendProcessOutOfStreamMessage(v15, v59, v60);
      IPC::Connection::send<Messages::LogStream::WEBFRAMELOADERCLIENT_DISPATCHDECIDEPOLICYFORNAVIGATIONACTION_GOT_POLICYACTION_FROM_ASYNC_IPC>(*(v15 + 8), &v56, v16);
      goto LABEL_34;
    }

LABEL_62:
    __break(1u);
LABEL_63:
    v31 = 0;
  }

  v33 = *&buf[16] - *&buf[8];
  if (*&buf[16] - *&buf[8] <= 0x10uLL)
  {
    v33 = 16;
  }

  v34 = (*(v15 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
  v35 = *(v15 + 72);
  if (v34 + 16 >= v35)
  {
    v34 = 0;
  }

  v36 = v34 + v33;
  if (v35 <= v36)
  {
    v36 = 0;
  }

  *(v15 + 88) = v36;
  v37 = *(v15 + 80);
  if (*(v37 + 8) <= 0xFFuLL)
  {
    goto LABEL_62;
  }

  if (atomic_exchange((*(v37 + 16) + 128), v36) == 0x80000000 || *(v15 + 124))
  {
    if (*(v15 + 112) == 1)
    {
      MEMORY[0x19EB16320](*(v15 + 100));
    }

    *(v15 + 124) = 0;
  }

LABEL_34:
  os_unfair_lock_unlock((v7 + 16));
  v39 = v55;
  v55 = 0;
  if (v39)
  {
    if (*v39 == 1)
    {
      WTF::fastFree(v39, v38);
    }

    else
    {
      --*v39;
    }
  }

LABEL_37:
  WebKit::WebFrame::didReceivePolicyDecision((v2 - 16), a1[1], a2);
  CFRelease(*(v2 - 8));
}

IPC::Encoder *IPC::Connection::send<Messages::LogStream::WEBFRAMELOADERCLIENT_DISPATCHDECIDEPOLICYFORNAVIGATIONACTION_GOT_POLICYACTION_FROM_ASYNC_IPC>(uint64_t *a1, void *a2, uint64_t a3)
{
  v6 = IPC::Encoder::operator new(0x238, a2);
  *v6 = 288;
  *(v6 + 2) = 0;
  *(v6 + 3) = 0;
  *(v6 + 1) = a3;
  *(v6 + 68) = 0;
  *(v6 + 70) = 0;
  *(v6 + 69) = 0;
  IPC::Encoder::encodeHeader(v6);
  v14 = v6;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v6, *a2);
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v6, a2[1]);
  v7 = *a2[2];
  if (v7)
  {
    v8 = (v7 + 16);
    v9 = *(v7 + 8);
  }

  else
  {
    v8 = 0;
    v9 = 0;
  }

  IPC::ArgumentCoder<std::span<char const,18446744073709551615ul>,void>::encode<IPC::Encoder>(v6, v8, v9);
  IPC::Connection::sendMessageImpl(a1, &v14, 1, 0);
  result = v14;
  v14 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v10);
    return bmalloc::api::tzoneFree(v12, v13);
  }

  return result;
}

uint64_t WTF::HashTable<WTF::ASCIILiteral,WTF::KeyValuePair<WTF::ASCIILiteral,std::unique_ptr<WebKit::WebProcessSupplement>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ASCIILiteral,std::unique_ptr<WebKit::WebProcessSupplement>>>,WTF::DefaultHash<WTF::ASCIILiteral>,WTF::HashMap<WTF::ASCIILiteral,std::unique_ptr<WebKit::WebProcessSupplement>,WTF::DefaultHash<WTF::ASCIILiteral>,WTF::HashTraits<WTF::ASCIILiteral>,WTF::HashTraits<std::unique_ptr<WebKit::WebProcessSupplement>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ASCIILiteral>,WTF::FastMalloc>::lookup<WTF::HashMapTranslatorAdapter<WTF::HashMap<WTF::ASCIILiteral,std::unique_ptr<WebKit::WebProcessSupplement>,WTF::DefaultHash<WTF::ASCIILiteral>,WTF::HashTraits<WTF::ASCIILiteral>,WTF::HashTraits<std::unique_ptr<WebKit::WebProcessSupplement>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::IdentityHashTranslator<WTF::HashMap<WTF::ASCIILiteral,std::unique_ptr<WebKit::WebProcessSupplement>,WTF::DefaultHash<WTF::ASCIILiteral>,WTF::HashTraits<WTF::ASCIILiteral>,WTF::HashTraits<std::unique_ptr<WebKit::WebProcessSupplement>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ASCIILiteral>>>,(WTF::ShouldValidateKey)1,WTF::ASCIILiteral>(uint64_t *a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (!v2 || (v4 = *a2, v4 == -1))
  {
    __break(0xC471u);
    JUMPOUT(0x19E38F158);
  }

  v5 = *a1;
  if (!*a1)
  {
    return 0;
  }

  v6 = *(v5 - 8);
  v14 = -1640531527;
  v15 = 0;
  v16 = 0;
  WTF::SuperFastHash::addCharacters<char,WTF::StringHasher::DefaultConverter>(&v14, v4, v2 - 1);
  v7 = WTF::SuperFastHash::hash(&v14) & v6;
  v8 = v5 + 24 * v7;
  v9 = *(v8 + 8);
  if (!v9)
  {
    return 0;
  }

  v10 = *(a2 + 8);
  for (i = 1; ; ++i)
  {
    v12 = *v8 != -1 && v9 == v10;
    if (v12 && !memcmp(*v8, *a2, v10))
    {
      break;
    }

    v7 = (v7 + i) & v6;
    v8 = v5 + 24 * v7;
    v9 = *(v8 + 8);
    if (!v9)
    {
      return 0;
    }
  }

  return v8;
}

WebCore::LocalFrameLoaderClient *WebKit::WebLocalFrameLoaderClient::WebLocalFrameLoaderClient(WebCore::LocalFrameLoaderClient *a1, uint64_t a2, WebCore::FrameLoader *a3, uint64_t *a4, uint64_t *a5)
{
  v9 = WebCore::LocalFrameLoaderClient::LocalFrameLoaderClient(a1, a3);
  v10 = *a4;
  *a4 = 0;
  v11 = *a5;
  *a5 = 0;
  *(v9 + 24) = v10;
  *(v9 + 32) = v11;
  LOBYTE(v10) = *(a5 + 8);
  *(a5 + 8) = 0;
  *(v9 + 40) = v10;
  *v9 = &unk_1F11316A8;
  *(v9 + 16) = &unk_1F1131B88;
  *(v9 + 64) = 0;
  *(v9 + 80) = 0;
  *(v9 + 48) = 0;
  *(v9 + 53) = 0;
  WTF::WeakPtrFactory<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl>::initializeIfNeeded((a2 + 8), a2);
  v12 = *(a2 + 8);
  atomic_fetch_add(v12, 1u);
  *(a1 + 11) = v12;
  return a1;
}

void WebKit::WebLocalFrameLoaderClient::~WebLocalFrameLoaderClient(WebKit::WebLocalFrameLoaderClient *this, void *a2)
{
  v3 = *(this + 11);
  *(this + 11) = 0;
  if (v3 && atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3);
    WTF::fastFree(v3, a2);
  }

  v4 = *(this + 6);
  *(this + 6) = 0;
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

  WebKit::WebFrameLoaderClient::~WebFrameLoaderClient((this + 16));

  WebCore::LocalFrameLoaderClient::~LocalFrameLoaderClient(this);
}

{
  WebKit::WebLocalFrameLoaderClient::~WebLocalFrameLoaderClient(this, a2);

  WTF::fastFree(v2, v3);
}

void non-virtual thunk toWebKit::WebLocalFrameLoaderClient::~WebLocalFrameLoaderClient(WebKit::WebLocalFrameLoaderClient *this, void *a2)
{
  WebKit::WebLocalFrameLoaderClient::~WebLocalFrameLoaderClient((this - 16), a2);
}

{
  WebKit::WebLocalFrameLoaderClient::~WebLocalFrameLoaderClient((this - 16), a2);

  WTF::fastFree(v2, v3);
}

uint64_t WebKit::WebLocalFrameLoaderClient::webPageProxyID(WebKit::WebFrame **this)
{
  result = WebKit::WebFrame::page(this[3]);
  if (result)
  {
    return *(WebKit::WebFrame::page(this[3]) + 1832);
  }

  return result;
}

void WebKit::WebLocalFrameLoaderClient::didLoadFromRegistrableDomain(uint64_t a1, WTF **a2)
{
  v3 = WebKit::WebFrame::page(*(a1 + 24));
  if (v3)
  {
    v4 = v3;
    CFRetain(*(v3 + 8));
    WebKit::WebPage::didLoadFromRegistrableDomain(v4, a2);
    v5 = *(v4 + 8);

    CFRelease(v5);
  }
}

void WebKit::WebLocalFrameLoaderClient::loadedSubresourceDomains(WebKit::WebFrame **this@<X0>, uint64_t a2@<X8>)
{
  v3 = WebKit::WebFrame::page(this[3]);
  if (v3)
  {
    v4 = v3;
    CFRetain(*(v3 + 8));
    v5 = *(v4 + 40);
    *a2 = 0;
    *(a2 + 8) = 0;
    WTF::Mapper<WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> WTF::copyToVectorOf<WebCore::RegistrableDomain,WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>(WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> const&)::{lambda(WebCore::RegistrableDomain&&)#1},WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> const&,void>::map(a2, (v5 + 328), &v6);
    CFRelease(*(v4 + 8));
  }

  else
  {
    *a2 = 0;
    *(a2 + 8) = 0;
  }
}

void WebKit::WebLocalFrameLoaderClient::detachedFromParent2(WebKit::WebFrame **this)
{
  v2 = WebKit::WebFrame::page(this[3]);
  if (v2)
  {
    v3 = v2;
    v4 = CFRetain(*(v2 + 8));
    if (*(this + 80) == 1)
    {
      v7 = WebKit::WebProcess::singleton(v4, v5);
      v8 = WebKit::WebProcess::ensureNetworkProcessConnection(v7);
      if ((this[10] & 1) == 0)
      {
        __break(1u);
        return;
      }

      v9 = *(v8 + 24);
      v10[0] = (this + 8);
      v10[1] = (this + 9);
      IPC::Connection::send<Messages::NetworkConnectionToWebProcess::RemoveStorageAccessForFrame>(v9, v10);
      if (*(this + 80) == 1)
      {
        *(this + 80) = 0;
      }
    }

    v10[0] = 0;
    (*(**(v3 + 384) + 112))(*(v3 + 384), v3, this[3], v10);
    v6 = v10[0];
    v10[0] = 0;
    if (v6)
    {
      CFRelease(v6[1]);
    }

    CFRelease(*(v3 + 8));
  }
}

IPC::Encoder *IPC::Connection::send<Messages::NetworkConnectionToWebProcess::RemoveStorageAccessForFrame>(uint64_t *a1, uint64_t **a2)
{
  v4 = IPC::Encoder::operator new(0x238, a2);
  *v4 = 478;
  *(v4 + 68) = 0;
  *(v4 + 70) = 0;
  *(v4 + 69) = 0;
  *(v4 + 2) = 0;
  *(v4 + 3) = 0;
  *(v4 + 1) = 0;
  IPC::Encoder::encodeHeader(v4);
  v9 = v4;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v4, **a2);
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v4, *a2[1]);
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

void WebKit::WebLocalFrameLoaderClient::documentLoaderDetached(uint64_t a1, uint64_t a2, char a3)
{
  v5 = WebKit::WebFrame::page(*(a1 + 24));
  if (v5)
  {
    v6 = v5;
    CFRetain(*(v5 + 8));
    if ((a3 & 1) == 0)
    {
      v7 = (*(*(v6 + 32) + 56))(v6 + 32);
      v9 = IPC::Encoder::operator new(0x238, v8);
      *v9 = 2194;
      *(v9 + 2) = 0;
      *(v9 + 3) = 0;
      *(v9 + 1) = v7;
      *(v9 + 68) = 0;
      *(v9 + 70) = 0;
      *(v9 + 69) = 0;
      IPC::Encoder::encodeHeader(v9);
      v14 = v9;
      IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v9, a2);
      (*(*(v6 + 32) + 32))(v6 + 32, &v14, 0);
      v11 = v14;
      v14 = 0;
      if (v11)
      {
        IPC::Encoder::~Encoder(v11, v10);
        bmalloc::api::tzoneFree(v12, v13);
      }
    }

    CFRelease(*(v6 + 8));
  }
}

void WebKit::WebLocalFrameLoaderClient::assignIdentifierToInitialRequest(uint64_t a1, uint64_t a2, char a3, WebCore::DocumentLoader *a4, WebCore::ResourceRequestBase *a5)
{
  v10 = WebKit::WebFrame::page(*(a1 + 24));
  if (!v10)
  {
    return;
  }

  v11 = v10;
  CFRetain(*(v10 + 8));
  if (!a4)
  {
    v16 = 0;
    v13 = 0;
LABEL_15:
    v15 = 0;
    v14 = 1;
    goto LABEL_5;
  }

  v12 = WebCore::DocumentLoader::frameLoader(a4);
  v13 = v12;
  if (!v12)
  {
    v16 = 0;
    goto LABEL_15;
  }

  WebCore::FrameLoader::ref(v12);
  v14 = 0;
  v15 = *(v13 + 13) == a4;
  v16 = 1;
LABEL_5:
  (*(**(v11 + 392) + 16))(*(v11 + 392), v11, *(a1 + 24), a2, a5, v15);
  if (v16)
  {
    WebCore::FrameLoader::protectedFrame(&v18, v13);
    WebKit::WebPage::addResourceRequest(v11, a2, a3, a5, a4, v18);
    v17 = v18;
    v18 = 0;
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
    WebKit::WebPage::addResourceRequest(v11, a2, a3, a5, a4, 0);
  }

  if ((v14 & 1) == 0)
  {
    WebCore::FrameLoader::deref(v13);
  }

  CFRelease(*(v11 + 8));
}

void WebKit::WebLocalFrameLoaderClient::dispatchWillSendRequest(uint64_t a1, uint64_t a2, uint64_t a3, WebCore::ResourceRequestBase *a4, uint64_t a5)
{
  v9 = WebKit::WebFrame::page(*(a1 + 24));
  if (v9)
  {
    v10 = v9;
    CFRetain(*(v9 + 8));
    v11 = *(a4 + 147);
    (*(**(v10 + 392) + 24))(*(v10 + 392), v10, *(a1 + 24), a3, a4, a5);
    if ((WebCore::ResourceRequestBase::isNull(a4) & 1) == 0)
    {
      *(a4 + 147) = v11;
      WebCore::ResourceRequestBase::setIsAppInitiated(a4);
    }

    v12 = *(v10 + 8);

    CFRelease(v12);
  }
}

uint64_t WebKit::WebLocalFrameLoaderClient::shouldUseCredentialStorage(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = WebKit::WebFrame::page(*(a1 + 24));
  if (!v5)
  {
    return 1;
  }

  v6 = v5;
  CFRetain(*(v5 + 8));
  v7 = (*(**(v6 + 392) + 72))(*(v6 + 392), v6, *(a1 + 24), a3);
  CFRelease(*(v6 + 8));
  return v7;
}

void WebKit::WebLocalFrameLoaderClient::dispatchDidReceiveResponse(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = WebKit::WebFrame::page(*(a1 + 24));
  if (v7)
  {
    v8 = v7;
    CFRetain(*(v7 + 8));
    (*(**(v8 + 392) + 32))(*(v8 + 392), v8, *(a1 + 24), a3, a4);
    v9 = *(v8 + 8);

    CFRelease(v9);
  }
}

void WebKit::WebLocalFrameLoaderClient::dispatchDidReceiveContentLength(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v7 = WebKit::WebFrame::page(*(a1 + 24));
  if (v7)
  {
    v8 = v7;
    CFRetain(*(v7 + 8));
    (*(**(v8 + 392) + 40))(*(v8 + 392), v8, *(a1 + 24), a3, a4);
    v9 = *(v8 + 8);

    CFRelease(v9);
  }
}

void WebKit::WebLocalFrameLoaderClient::dispatchDidFinishDataDetection(WebKit::WebFrame **this, NSArray *a2)
{
  v3 = WebKit::WebFrame::page(this[3]);
  if (v3)
  {
    v4 = v3;
    CFRetain(*(v3 + 8));
    WebKit::WebPage::setDataDetectionResults(v4, a2);
    v5 = *(v4 + 1);

    CFRelease(v5);
  }
}

void WebKit::WebLocalFrameLoaderClient::dispatchDidFinishLoading(uint64_t a1, WebCore::DocumentLoader *a2, char a3, uint64_t a4)
{
  v8 = WebKit::WebFrame::page(*(a1 + 24));
  if (v8)
  {
    v9 = v8;
    CFRetain(*(v8 + 8));
    (*(**(v9 + 392) + 48))(*(v9 + 392), v9, *(a1 + 24), a4);
    if (a2 && WebCore::DocumentLoader::frameLoader(a2))
    {
      WebCore::DocumentLoader::protectedFrameLoader(&v12, a2);
      WebCore::FrameLoader::protectedFrame(&v13, v12);
      WebKit::WebPage::removeResourceRequest(v9, a4, a3, v13);
      v10 = v13;
      v13 = 0;
      if (v10)
      {
        if (v10[4] == 1)
        {
          (*(*v10 + 8))(v10);
        }

        else
        {
          --v10[4];
        }
      }

      v11 = v12;
      v12 = 0;
      if (v11)
      {
        WebCore::FrameLoader::deref(v11);
      }
    }

    else
    {
      WebKit::WebPage::removeResourceRequest(v9, a4, a3, 0);
    }

    CFRelease(*(v9 + 8));
  }
}

void WebKit::WebLocalFrameLoaderClient::dispatchDidFailLoading(uint64_t a1, WebCore::DocumentLoader *a2, char a3, uint64_t a4, uint64_t a5)
{
  v10 = WebKit::WebFrame::page(*(a1 + 24));
  if (v10)
  {
    v11 = v10;
    CFRetain(*(v10 + 8));
    (*(**(v11 + 392) + 56))(*(v11 + 392), v11, *(a1 + 24), a4, a5);
    if (a2 && WebCore::DocumentLoader::frameLoader(a2))
    {
      WebCore::DocumentLoader::protectedFrameLoader(&v14, a2);
      WebCore::FrameLoader::protectedFrame(&v15, v14);
      WebKit::WebPage::removeResourceRequest(v11, a4, a3, v15);
      v12 = v15;
      v15 = 0;
      if (v12)
      {
        if (v12[4] == 1)
        {
          (*(*v12 + 8))(v12);
        }

        else
        {
          --v12[4];
        }
      }

      v13 = v14;
      v14 = 0;
      if (v13)
      {
        WebCore::FrameLoader::deref(v13);
      }
    }

    else
    {
      WebKit::WebPage::removeResourceRequest(v11, a4, a3, 0);
    }

    CFRelease(*(v11 + 8));
  }
}

void WebKit::WebLocalFrameLoaderClient::dispatchDidDispatchOnloadEvents(WebKit::WebFrame **this)
{
  v2 = WebKit::WebFrame::page(this[3]);
  if (v2)
  {
    v3 = v2;
    CFRetain(*(v2 + 8));
    (*(**(v3 + 384) + 192))(*(v3 + 384), v3, this[3]);
    v4 = *(v3 + 8);

    CFRelease(v4);
  }
}

void WebKit::WebLocalFrameLoaderClient::dispatchDidReceiveServerRedirectForProvisionalLoad(WebKit::WebFrame **this)
{
  v37 = *MEMORY[0x1E69E9840];
  v2 = WebKit::WebFrame::page(this[3]);
  if (v2)
  {
    v3 = v2;
    CFRetain(*(v2 + 8));
    v4 = *(this[11] + 1);
    if (v4)
    {
      v5 = *(*(v4 + 208) + 104);
      if (v5)
      {
        ++*(v5 + 24);
        v26 = 0;
        v6 = (*(**(v3 + 384) + 40))(*(v3 + 384), v3, this[3], &v26);
        v25 = *(this[3] + 11);
        v7 = *(v5 + 2544) != 0;
        v23 = *(v5 + 2544);
        v24 = v7;
        WebKit::WebProcess::singleton(v6, v8);
        *buf = &unk_1F1122420;
        WebKit::UserData::transform(v26, buf, &v21);
        v9 = v21;
        if (v21)
        {
          CFRetain(v21[1]);
        }

        v22 = v9;
        *buf = &v25;
        *&buf[8] = &v23;
        *&buf[16] = v5 + 880;
        v28 = &v22;
        IPC::MessageSender::send<Messages::WebPageProxy::DidReceiveServerRedirectForProvisionalLoadForFrame>(v3 + 32, buf);
        v10 = v22;
        v22 = 0;
        if (v10)
        {
          CFRelease(v10[1]);
        }

        v11 = v21;
        v21 = 0;
        if (v11)
        {
          CFRelease(v11[1]);
        }

        v12 = v26;
        v26 = 0;
        if (v12)
        {
          CFRelease(*(v12 + 1));
        }

        if (*(v5 + 24) == 1)
        {
          (*(*v5 + 24))(v5);
        }

        else
        {
          --*(v5 + 24);
        }

        goto LABEL_14;
      }

      v13 = qword_1ED640D10;
      if (!os_log_type_enabled(qword_1ED640D10, OS_LOG_TYPE_FAULT))
      {
LABEL_14:
        CFRelease(*(v3 + 8));
        return;
      }

      v14 = this[3];
      v15 = *(v14 + 11);
      v16 = WebKit::WebFrame::page(v14);
      if (WebKit::WebFrame::page(this[3]))
      {
        v17 = *(WebKit::WebFrame::page(this[3]) + 48);
      }

      else
      {
        v17 = 0;
      }

      v18 = *(this[11] + 1);
      if (v18)
      {
        v19 = *(v18 + 208);
        v20 = *(v19 + 88);
        LODWORD(v19) = *(v19 + 72);
        *buf = 134219520;
        *&buf[4] = this;
        *&buf[12] = 2048;
        *&buf[14] = v14;
        *&buf[22] = 2048;
        v28 = v15;
        v29 = 2048;
        v30 = v16;
        v31 = 2048;
        v32 = v17;
        v33 = 1024;
        v34 = v20;
        v35 = 1024;
        v36 = v19;
        _os_log_fault_impl(&dword_19D52D000, v13, OS_LOG_TYPE_FAULT, "%p - [webFrame=%p, webFrameID=%llu, webPage=%p, webPageID=%llu] WebLocalFrameLoaderClient::dispatchDidReceiveServerRedirectForProvisionalLoad: Called with no provisional DocumentLoader (frameState=%hhu, stateForDebugging=%i)", buf, 0x40u);
        goto LABEL_14;
      }
    }

    __break(0xC471u);
    JUMPOUT(0x19E390210);
  }
}

IPC::Encoder *IPC::MessageSender::send<Messages::WebPageProxy::DidReceiveServerRedirectForProvisionalLoadForFrame>(uint64_t a1, void *a2)
{
  v4 = (*(*a1 + 56))(a1);

  return IPC::MessageSender::send<Messages::WebPageProxy::DidReceiveServerRedirectForProvisionalLoadForFrame>(a1, a2, v4);
}

void WebKit::WebLocalFrameLoaderClient::dispatchDidChangeProvisionalURL(WebKit::WebFrame **this)
{
  v2 = WebKit::WebFrame::page(this[3]);
  if (v2)
  {
    v3 = v2;
    CFRetain(*(v2 + 8));
    v4 = *(this[11] + 1);
    if (v4)
    {
      v5 = *(*(v4 + 208) + 104);
      ++*(v5 + 24);
      v9 = *(this[3] + 11);
      v6 = *(v5 + 2544) != 0;
      v7 = *(v5 + 2544);
      v8 = v6;
      v10[0] = &v9;
      v10[1] = &v7;
      v10[2] = WebCore::ResourceRequestBase::url((v5 + 880));
      IPC::MessageSender::send<Messages::WebPageProxy::DidChangeProvisionalURLForFrame>(v3 + 32, v10);
      if (*(v5 + 24) == 1)
      {
        (*(*v5 + 24))(v5);
      }

      else
      {
        --*(v5 + 24);
      }

      CFRelease(*(v3 + 8));
    }

    else
    {
      __break(0xC471u);
    }
  }
}

IPC::Encoder *IPC::MessageSender::send<Messages::WebPageProxy::DidChangeProvisionalURLForFrame>(uint64_t a1, void *a2)
{
  v4 = (*(*a1 + 56))(a1);

  return IPC::MessageSender::send<Messages::WebPageProxy::DidChangeProvisionalURLForFrame>(a1, a2, v4);
}

void WebKit::WebLocalFrameLoaderClient::dispatchDidCancelClientRedirect(WebKit::WebFrame **this)
{
  v2 = WebKit::WebFrame::page(this[3]);
  if (v2)
  {
    v3 = v2;
    CFRetain(*(v2 + 8));
    (*(**(v3 + 384) + 176))(*(v3 + 384), v3, this[3]);
    v4 = *(this[3] + 11);
    v5 = (*(*(v3 + 32) + 56))(v3 + 32);
    v7 = IPC::Encoder::operator new(0x238, v6);
    *v7 = 2178;
    *(v7 + 2) = 0;
    *(v7 + 3) = 0;
    *(v7 + 1) = v5;
    *(v7 + 68) = 0;
    *(v7 + 70) = 0;
    *(v7 + 69) = 0;
    IPC::Encoder::encodeHeader(v7);
    v12 = v7;
    IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v7, v4);
    (*(*(v3 + 32) + 32))(v3 + 32, &v12, 0);
    v9 = v12;
    v12 = 0;
    if (v9)
    {
      IPC::Encoder::~Encoder(v9, v8);
      bmalloc::api::tzoneFree(v10, v11);
    }

    CFRelease(*(v3 + 8));
  }
}

void WebKit::WebLocalFrameLoaderClient::dispatchWillPerformClientRedirect(uint64_t a1, uint64_t *a2, char a3, double a4, double a5)
{
  v10 = WebKit::WebFrame::page(*(a1 + 24));
  if (v10)
  {
    v11 = v10;
    CFRetain(*(v10 + 8));
    (*(**(v11 + 384) + 184))(*(v11 + 384), v11, *(a1 + 24), a2, a4, a5);
    v12 = *(*(a1 + 24) + 88);
    v13 = (*(*(v11 + 32) + 56))(v11 + 32);
    v15 = IPC::Encoder::operator new(0x238, v14);
    *v15 = 2416;
    *(v15 + 2) = 0;
    *(v15 + 3) = 0;
    *(v15 + 1) = v13;
    *(v15 + 68) = 0;
    *(v15 + 70) = 0;
    *(v15 + 69) = 0;
    IPC::Encoder::encodeHeader(v15);
    v22 = v15;
    IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v15, v12);
    IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v15, a2);
    IPC::ArgumentCoder<double,void>::encode<IPC::Encoder>(v15, a4);
    v16 = IPC::Encoder::grow(v15, 1uLL, 1);
    if (v17)
    {
      *v16 = a3;
      (*(*(v11 + 32) + 32))(v11 + 32, &v22, 0);
      v19 = v22;
      v22 = 0;
      if (v19)
      {
        IPC::Encoder::~Encoder(v19, v18);
        bmalloc::api::tzoneFree(v20, v21);
      }

      CFRelease(*(v11 + 8));
    }

    else
    {
      __break(0xC471u);
    }
  }
}

void WebKit::WebLocalFrameLoaderClient::dispatchDidChangeLocationWithinPage(WebKit::WebFrame **this)
{
  v2 = WebKit::WebFrame::page(this[3]);
  if (v2)
  {
    v3 = v2;
    CFRetain(*(v2 + 8));
    WebKit::WebPage::didSameDocumentNavigationForFrame(v3, this[3]);
    v4 = *(v3 + 1);

    CFRelease(v4);
  }
}

void WebKit::WebLocalFrameLoaderClient::dispatchDidNavigateWithinPage(WebKit::WebFrame **this)
{
  v2 = WebKit::WebFrame::page(this[3]);
  if (v2)
  {
    v3 = v2;
    CFRetain(*(v2 + 8));
    if (WebKit::WebFrame::isMainFrame(this[3]))
    {
      *(v3 + 1736) = 0;
    }

    v4 = *(v3 + 8);

    CFRelease(v4);
  }
}

void WebKit::WebLocalFrameLoaderClient::dispatchDidChangeMainDocument(WebKit::WebFrame **this)
{
  v2 = WebKit::WebFrame::page(this[3]);
  if (v2)
  {
    v3 = v2;
    CFRetain(*(v2 + 8));
    WebKit::WebPage::unfreezeLayerTree(v3, 128);
    LOBYTE(v16) = 0;
    v17 = 0;
    v4 = *(this[11] + 1);
    if (v4)
    {
      v5 = *(*(v4 + 208) + 96);
      if (v5)
      {
        v6 = *(v5 + 24);
        *(v5 + 24) = v6 + 1;
        v7 = *(v5 + 2544) != 0;
        v16 = *(v5 + 2544);
        v17 = v7;
        if (v6)
        {
          *(v5 + 24) = v6;
        }

        else
        {
          (*(*v5 + 24))(v5);
        }
      }

      v8 = *(this[3] + 11);
      v9 = (*(*(v3 + 32) + 56))(v3 + 32);
      v11 = IPC::Encoder::operator new(0x238, v10);
      *v11 = 2182;
      *(v11 + 2) = 0;
      *(v11 + 3) = 0;
      *(v11 + 1) = v9;
      *(v11 + 68) = 0;
      *(v11 + 70) = 0;
      *(v11 + 69) = 0;
      IPC::Encoder::encodeHeader(v11);
      v18 = v11;
      IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v11, v8);
      IPC::ArgumentCoder<std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,void>::encode<IPC::Encoder,std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(v11, &v16);
      (*(*(v3 + 32) + 32))(v3 + 32, &v18, 0);
      v13 = v18;
      v18 = 0;
      if (v13)
      {
        IPC::Encoder::~Encoder(v13, v12);
        bmalloc::api::tzoneFree(v14, v15);
      }

      CFRelease(*(v3 + 8));
    }

    else
    {
      __break(0xC471u);
    }
  }
}

void WebKit::WebLocalFrameLoaderClient::dispatchWillChangeDocument(WebKit::WebFrame **this, const WTF::URL *a2, const WTF::URL *a3)
{
  if (!WebKit::WebFrame::isMainFrame(this[3]))
  {
    v6 = WebKit::WebFrame::page(this[3]);
    if (v6)
    {
      v7 = v6;
      CFRetain(*(v6 + 8));
      if (*(this + 80) == 1)
      {
        v10 = WebCore::areRegistrableDomainsEqual(a2, a3, v8);
        if ((v10 & 1) == 0)
        {
          v12 = WebKit::WebProcess::singleton(v10, v11);
          v13 = WebKit::WebProcess::ensureNetworkProcessConnection(v12);
          if ((this[10] & 1) == 0)
          {
            __break(1u);
            return;
          }

          v14 = *(v13 + 24);
          v15[0] = (this + 8);
          v15[1] = (this + 9);
          IPC::Connection::send<Messages::NetworkConnectionToWebProcess::RemoveStorageAccessForFrame>(v14, v15);
          if (*(this + 80) == 1)
          {
            *(this + 80) = 0;
          }
        }
      }

      v9 = *(v7 + 8);

      CFRelease(v9);
    }
  }
}

uint64_t WebCore::areRegistrableDomainsEqual(WebCore *this, const WTF::URL *a2, const WTF::URL *a3)
{
  WebCore::RegistrableDomain::RegistrableDomain(&v10, this);
  v4 = WTF::URL::host(a2);
  v7 = WebCore::RegistrableDomain::matches(&v10, v4, v5 & 0xFFFFFFFFFFLL);
  v8 = v10;
  v10 = 0;
  if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v8, v6);
  }

  return v7;
}

void WebKit::WebLocalFrameLoaderClient::didSameDocumentNavigationForFrameViaJS(uint64_t a1, char a2)
{
  v73[28] = *MEMORY[0x1E69E9840];
  v4 = WebKit::WebFrame::page(*(a1 + 24));
  if (v4)
  {
    v5 = v4;
    CFRetain(*(v4 + 8));
    v37 = 0;
    v6 = (*(**(v5 + 384) + 96))(*(v5 + 384), v5, *(a1 + 24), 1, &v37);
    v8 = *(*(a1 + 88) + 8);
    if (v8)
    {
      ++*(v8 + 16);
      v40 = 16646149;
      {
        v9 = WebKit::WebProcess::singleton(void)::process;
      }

      else
      {
        v9 = WebKit::WebProcess::operator new(0x370, v7);
        v6 = WebKit::WebProcess::WebProcess(v9);
        WebKit::WebProcess::singleton(void)::process = v6;
      }

      v10 = *(v5 + 48);
      WebCore::UserGestureIndicator::currentUserGesture(&v36, v6);
      WebKit::WebProcess::userGestureTokenIdentifier(v9, v10, 1, &v36, &v41);
      v12 = WebCore::UserGestureIndicator::currentUserGesture(&v38, v11);
      v13 = v38;
      if (v38)
      {
        WebCore::UserGestureIndicator::currentUserGesture(&v35, v12);
        v31 = *(v35 + 96);
        v42 = *(v35 + 80);
        v43 = v31;
      }

      else
      {
        LOBYTE(v42) = 0;
        LOBYTE(v43) = 0;
      }

      v44 = 1;
      v45 = 0;
      v46 = 0;
      WebCore::ResourceResponseBase::ResourceResponseBase(&v47);
      v49 = 0;
      v50 = 0;
      v48 = v48 & 0xF1 | 4;
      v51 = 256;
      v14 = *(v8 + 152);
      if (v14)
      {
        LOBYTE(v14) = *(v14 + 8) != 0;
      }

      v52 = v14;
      v53 = *(*(v8 + 208) + 402);
      v57[42] = 0;
      v57[50] = 0;
      v57[66] = 0;
      v58 = 0;
      v59 = 0;
      v54 = 0u;
      v55 = 0u;
      v56 = 0u;
      memset(v57, 0, 27);
      v60 = WebCore::LocalFrame::effectiveSandboxFlags(v8);
      v61 = 0;
      v62 = 0;
      v63 = 0;
      v64 = 0;
      v65 = 0;
      v66 = 0;
      v67 = 0;
      v68 = 0;
      v69 = 0;
      WebKit::WebFrame::info(*(a1 + 24), 0, v70);
      v70[352] = 0;
      v70[360] = 0;
      WebKit::WebFrame::info(*(a1 + 24), 0, v71);
      v71[352] = 0;
      v71[360] = 0;
      WebCore::ResourceRequest::ResourceRequest(&v72);
      WebCore::ResourceRequest::ResourceRequest(v73);
      v73[25] = 0;
      if (v13)
      {
        v16 = v35;
        v35 = 0;
        if (v16)
        {
          WTF::RefCounted<WebCore::UserGestureToken>::deref((v16 + 8));
        }
      }

      v17 = v38;
      v38 = 0;
      if (v17)
      {
        WTF::RefCounted<WebCore::UserGestureToken>::deref(v17 + 2);
      }

      v18 = v36;
      v36 = 0;
      if (v18)
      {
        WTF::RefCounted<WebCore::UserGestureToken>::deref((v18 + 8));
      }

      v19 = v5 + 32;
      v20 = *(v8 + 224);
      {
        v32 = WebKit::WebProcess::operator new(0x370, v15);
        WebKit::WebProcess::singleton(void)::process = WebKit::WebProcess::WebProcess(v32);
      }

      v38 = &unk_1F1122420;
      WebKit::UserData::transform(v37, &v38, &v33);
      v21 = v33;
      if (v33)
      {
        CFRetain(v33[1]);
      }

      v34 = v21;
      v22 = (*(*v19 + 56))(v5 + 32);
      v24 = IPC::Encoder::operator new(0x238, v23);
      *v24 = 2231;
      *(v24 + 2) = 0;
      *(v24 + 3) = 0;
      *(v24 + 1) = v22;
      *(v24 + 68) = 0;
      *(v24 + 70) = 0;
      *(v24 + 69) = 0;
      IPC::Encoder::encodeHeader(v24);
      v38 = v24;
      v39 = a2;
      IPC::Encoder::operator<<<unsigned char>(v24, &v39);
      IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v24, (v20 + 800));
      IPC::ArgumentCoder<WebKit::NavigationActionData,void>::encode(v24, &v40);
      IPC::ArgumentCoder<WebKit::UserData,void>::encode(v24, &v34);
      (*(*v19 + 32))(v5 + 32, &v38, 0);
      v26 = v38;
      v38 = 0;
      if (v26)
      {
        IPC::Encoder::~Encoder(v26, v25);
        bmalloc::api::tzoneFree(v29, v30);
      }

      if (v21)
      {
        CFRelease(v21[1]);
      }

      v27 = v33;
      v33 = 0;
      if (v27)
      {
        CFRelease(v27[1]);
      }

      WebKit::NavigationActionData::~NavigationActionData(&v40, v25);
      if (*(v8 + 16) == 1)
      {
        (*(*v8 + 8))(v8);
      }

      else
      {
        --*(v8 + 16);
      }

      v28 = v37;
      v37 = 0;
      if (v28)
      {
        CFRelease(*(v28 + 1));
      }

      CFRelease(*(v5 + 8));
    }

    else
    {
      __break(0xC471u);
    }
  }
}

void WebKit::WebLocalFrameLoaderClient::dispatchDidExplicitOpen(WebKit::WebFrame **this, const WTF::URL *a2, const WTF::String *a3)
{
  v6 = WebKit::WebFrame::page(this[3]);
  if (v6)
  {
    v7 = v6;
    CFRetain(*(v6 + 8));
    v8 = *(this[3] + 11);
    v9 = (*(*(v7 + 32) + 56))(v7 + 32);
    v11 = IPC::Encoder::operator new(0x238, v10);
    *v11 = 2198;
    *(v11 + 2) = 0;
    *(v11 + 3) = 0;
    *(v11 + 1) = v9;
    *(v11 + 68) = 0;
    *(v11 + 70) = 0;
    *(v11 + 69) = 0;
    IPC::Encoder::encodeHeader(v11);
    v16 = v11;
    IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v11, v8);
    IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v11, a2);
    IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v11, a3);
    (*(*(v7 + 32) + 32))(v7 + 32, &v16, 0);
    v13 = v16;
    v16 = 0;
    if (v13)
    {
      IPC::Encoder::~Encoder(v13, v12);
      bmalloc::api::tzoneFree(v14, v15);
    }

    CFRelease(*(v7 + 8));
  }
}

void WebKit::WebLocalFrameLoaderClient::dispatchDidStartProvisionalLoad(WebKit::WebFrame **this)
{
  v56 = *MEMORY[0x1E69E9840];
  v2 = WebKit::WebFrame::page(this[3]);
  if (!v2)
  {
    return;
  }

  v3 = v2;
  CFRetain(*(v2 + 8));
  v5 = *(this[11] + 1);
  if (!v5)
  {
    __break(0xC471u);
    goto LABEL_59;
  }

  v6 = *(v5 + 224);
  if (v6)
  {
    *(v6 + 7) += 2;
    WebCore::Document::protectedFullscreen(&v49, v6);
    v7 = WebCore::DocumentFullscreen::fullscreenElement(v49);
    v8 = v49;
    v49 = 0;
    if (v8)
    {
      WebCore::DocumentFullscreen::deref(*(*(v8 + 1) + 8));
    }

    if (v7)
    {
      v37 = WebKit::WebPage::fullScreenManager(v3);
      ++*(v37 + 4);
      v38 = WebKit::WebFullScreenManager::element(v37);
      v39 = v38;
      if (v38)
      {
        *(v38 + 28) += 4;
      }

      v40 = WTF::fastMalloc(0x10);
      *v40 = &unk_1F1132010;
      *(v40 + 1) = v39;
      v49 = v40;
      WebKit::WebFullScreenManager::exitFullScreenForElement(v37, v39, &v49);
      v41 = v49;
      v49 = 0;
      if (v41)
      {
        (*(*v41 + 8))(v41);
      }

      if (v39)
      {
        if (*(v39 + 28) == 2)
        {
          WebCore::Node::removedLastRef(v39);
        }

        else
        {
          *(v39 + 28) -= 2;
        }
      }

      if (*(v37 + 4) == 1)
      {
        (*(*v37 + 8))(v37);
      }

      else
      {
        --*(v37 + 4);
      }
    }
  }

  WebKit::FindController::hideFindUI(*(v3 + 408), v4);
  WebKit::WebPage::SandboxExtensionTracker::didStartProvisionalLoad((v3 + 648), this[3]);
  v47 = 0;
  (*(**(v3 + 384) + 32))(*(v3 + 384), v3, this[3], &v47);
  v9 = *(this[11] + 1);
  if (!v9)
  {
    __break(0xC471u);
LABEL_59:
    JUMPOUT(0x19E3916B8);
  }

  v10 = *(*(v9 + 208) + 104);
  if (v10)
  {
    v11 = *(v10 + 24);
    *(v10 + 24) = v11 + 1;
    if ((*(v10 + 3589) & 1) == 0)
    {
      v12 = WebCore::ResourceRequestBase::url((v10 + 880));
      v13 = *(v3 + 592);
      if (v13)
      {
        v14 = (v13 + 16);
        ++*(v13 + 16);
        WebKit::WebExtensionControllerProxy::didStartProvisionalLoadForFrame(v13, v3, this[3], v12);
        WTF::RefCounted<WebKit::WebExtensionControllerProxy>::deref(v14);
      }

      v15 = v3 + 32;
      v16 = this[3];
      v17 = *(v16 + 11);
      WebKit::WebFrame::info(v16, 0, &v49);
      v19 = *(v10 + 2544) != 0;
      v45 = *(v10 + 2544);
      v46 = v19;
      {
        v42 = WebKit::WebProcess::operator new(0x370, v18);
        WebKit::WebProcess::singleton(void)::process = WebKit::WebProcess::WebProcess(v42);
      }

      v48 = &unk_1F1122420;
      v20 = WebKit::UserData::transform(v47, &v48, &v43);
      v21 = v43;
      if (v43)
      {
        v20 = CFRetain(v43[1]);
      }

      v44 = v21;
      WTF::WallTime::now(v20);
      v23 = v22;
      v24 = (*(*v15 + 56))(v3 + 32);
      v26 = IPC::Encoder::operator new(0x238, v25);
      *v26 = 2234;
      *(v26 + 2) = 0;
      *(v26 + 3) = 0;
      *(v26 + 1) = v24;
      *(v26 + 68) = 0;
      *(v26 + 70) = 0;
      *(v26 + 69) = 0;
      IPC::Encoder::encodeHeader(v26);
      v48 = v26;
      IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v26, v17);
      IPC::ArgumentCoder<WebKit::FrameInfoData,void>::encode(v26, &v49);
      IPC::ArgumentCoder<WebCore::ResourceRequest,void>::encode(v26, (v10 + 880));
      IPC::ArgumentCoder<std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,void>::encode<IPC::Encoder,std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(v26, &v45);
      IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v26, v12);
      IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v26, (v10 + 368));
      IPC::ArgumentCoder<WebKit::UserData,void>::encode(v26, &v44);
      IPC::ArgumentCoder<double,void>::encode<IPC::Encoder>(v26, v23);
      (*(*v15 + 32))(v3 + 32, &v48, 0);
      v28 = v48;
      v48 = 0;
      if (v28)
      {
        IPC::Encoder::~Encoder(v28, v27);
        bmalloc::api::tzoneFree(v35, v36);
      }

      if (v21)
      {
        CFRelease(v21[1]);
      }

      v29 = v43;
      v43 = 0;
      if (v29)
      {
        CFRelease(v29[1]);
      }

      v30 = cf;
      cf = 0;
      if (v30)
      {
        CFRelease(v30);
      }

      v31 = v54;
      v54 = 0;
      if (v31 && atomic_fetch_add_explicit(v31, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v31, v27);
      }

      if (!v53)
      {
        v32 = v52;
        v52 = 0;
        if (v32 && atomic_fetch_add_explicit(v32, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v32, v27);
        }

        v33 = v51;
        v51 = 0;
        if (v33 && atomic_fetch_add_explicit(v33, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v33, v27);
        }
      }

      v53 = -1;
      WebCore::ResourceRequest::~ResourceRequest(&v50);
      v11 = *(v10 + 24) - 1;
    }

    if (v11)
    {
      *(v10 + 24) = v11;
    }

    else
    {
      (*(*v10 + 24))(v10);
    }
  }

  v34 = v47;
  v47 = 0;
  if (v34)
  {
    CFRelease(*(v34 + 1));
  }

  if (v6)
  {
    if (*(v6 + 7) == 2)
    {
      WebCore::Node::removedLastRef(v6);
    }

    else
    {
      *(v6 + 7) -= 2;
    }
  }

  CFRelease(*(v3 + 8));
}

void WebKit::WebLocalFrameLoaderClient::dispatchDidReceiveTitle(uint64_t a1, uint64_t a2)
{
  v4 = WebKit::WebFrame::page(*(a1 + 24));
  if (v4)
  {
    v5 = v4;
    CFRetain(*(v4 + 8));
    WTF::String::left(a2, 0x3E8u, &v24);
    v25 = *(a2 + 8);
    v23 = 0;
    (*(**(v5 + 384) + 104))(*(v5 + 384), v5, &v24, *(a1 + 24), &v23);
    v7 = v5 + 32;
    v8 = *(*(a1 + 24) + 88);
    {
      v20 = WebKit::WebProcess::operator new(0x370, v6);
      WebKit::WebProcess::singleton(void)::process = WebKit::WebProcess::WebProcess(v20);
    }

    v26 = &unk_1F1122420;
    WebKit::UserData::transform(v23, &v26, &v21);
    v9 = v21;
    if (v21)
    {
      CFRetain(v21[1]);
    }

    v22 = v9;
    v10 = (*(*v7 + 56))(v5 + 32);
    v12 = IPC::Encoder::operator new(0x238, v11);
    *v12 = 2225;
    *(v12 + 2) = 0;
    *(v12 + 3) = 0;
    *(v12 + 1) = v10;
    *(v12 + 68) = 0;
    *(v12 + 70) = 0;
    *(v12 + 69) = 0;
    IPC::Encoder::encodeHeader(v12);
    v26 = v12;
    IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v12, v8);
    IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v12, &v24);
    IPC::ArgumentCoder<WebKit::UserData,void>::encode(v12, &v22);
    (*(*v7 + 32))(v5 + 32, &v26, 0);
    v14 = v26;
    v26 = 0;
    if (v14)
    {
      IPC::Encoder::~Encoder(v14, v13);
      bmalloc::api::tzoneFree(v18, v19);
    }

    if (v9)
    {
      CFRelease(v9[1]);
    }

    v15 = v21;
    v21 = 0;
    if (v15)
    {
      CFRelease(v15[1]);
    }

    v16 = v23;
    v23 = 0;
    if (v16)
    {
      CFRelease(*(v16 + 1));
    }

    v17 = v24;
    v24 = 0;
    if (v17)
    {
      if (atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v17, v13);
      }
    }

    CFRelease(*(v5 + 8));
  }
}

void WebKit::WebLocalFrameLoaderClient::dispatchDidCommitLoad(uint64_t a1, __int16 a2, __int16 a3, __int16 a4)
{
  v86 = *MEMORY[0x1E69E9840];
  v8 = WebKit::WebFrame::page(*(a1 + 24));
  if (!v8)
  {
    return;
  }

  v9 = v8;
  CFRetain(*(v8 + 8));
  v10 = *(*(a1 + 88) + 8);
  if (!v10)
  {
    __break(0xC471u);
    goto LABEL_62;
  }

  v11 = *(*(v10 + 208) + 96);
  ++*(v11 + 24);
  v76 = 0;
  (*(**(v9 + 384) + 56))(*(v9 + 384), v9, *(a1 + 24), &v76);
  WebKit::WebPage::SandboxExtensionTracker::didCommitProvisionalLoad((v9 + 648), *(a1 + 24));
  v13 = (*(v11 + 1418) & 0x10) != 0 || (a3 & 0x100) != 0 && a3 == 1;
  v14 = (*(v11 + 1418) & 0x20) != 0 || (a4 & 0x100) != 0 && a4 == 1;
  if (*(v11 + 1408) == 1 && (v48 = *(v11 + 1400)) != 0)
  {
    CFRetain(*(v11 + 1400));
    v75 = v48;
    CFRetain(v48);
    CFRelease(v48);
  }

  else
  {
    v75 = 0;
  }

  if ((a2 & 0x100) == 0)
  {
    LOBYTE(a2) = WebCore::CertificateInfo::containsNonRootSHA1SignedCertificate(&v75);
  }

  v15 = *(v9 + 592);
  if (v15)
  {
    ++*(v15 + 16);
    v16 = *(a1 + 24);
    WebKit::WebFrame::url(v16, &v79);
    WebKit::WebExtensionControllerProxy::didCommitLoadForFrame(v15, v9, v16, &v79);
    v18 = v79;
    v79 = 0;
    if (v18 && atomic_fetch_add_explicit(v18, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v18, v17);
    }

    WTF::RefCounted<WebKit::WebExtensionControllerProxy>::deref((v15 + 16));
  }

  WebKit::WebFrame::commitProvisionalFrame(*(a1 + 24), v12);
  v19 = *(a1 + 24);
  v62 = *(v19 + 11);
  WebKit::WebFrame::info(v19, 0, &v79);
  v20 = *(v11 + 2544) != 0;
  v60 = *(v11 + 2544);
  v61 = v20;
  v21 = WebCore::ResourceResponseBase::mimeType((v11 + 1280));
  v22 = *(*(a1 + 88) + 8);
  if (!v22)
  {
    __break(0xC471u);
    JUMPOUT(0x19E391FBCLL);
  }

  v54 = v21;
  v55 = v14;
  v56 = v13;
  v23 = a2;
  v53 = *(a1 + 58);
  Type = WebCore::FrameLoader::loadType(*(v22 + 208));
  v24 = WebCore::ResourceResponseBase::source((v11 + 1280));
  v26 = *(*(a1 + 88) + 8);
  if (!v26)
  {
    __break(0xC471u);
    JUMPOUT(0x19E391FDCLL);
  }

  v27 = v24;
  v57 = v9;
  v28 = v9 + 32;
  v29 = *(*(v26 + 224) + 3518);
  v30 = *(v11 + 3559);
  {
    v51 = WebKit::WebProcess::operator new(0x370, v25);
    WebKit::WebProcess::singleton(void)::process = WebKit::WebProcess::WebProcess(v51);
  }

  v63[0] = &unk_1F1122420;
  WebKit::UserData::transform(v76, v63, &v58);
  v31 = v58;
  if (v58)
  {
    CFRetain(v58[1]);
  }

  v59 = v31;
  v63[0] = &v62;
  v63[1] = &v79;
  v63[2] = v11 + 880;
  v63[3] = &v60;
  v63[4] = v54;
  v64 = v53;
  v65 = Type;
  v66 = &v75;
  v67 = v56;
  v68[0] = v55;
  v69 = (v11 + 1424);
  v70 = v27;
  v71 = (v29 & 8) != 0;
  v72 = v23 & 1;
  v73 = v30;
  v74 = &v59;
  v32 = (*(*v28 + 56))(v28);
  v34 = IPC::Encoder::operator new(0x238, v33);
  *v34 = 2188;
  *(v34 + 2) = 0;
  *(v34 + 3) = 0;
  *(v34 + 1) = v32;
  *(v34 + 68) = 0;
  *(v34 + 70) = 0;
  *(v34 + 69) = 0;
  IPC::Encoder::encodeHeader(v34);
  v77 = v34;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v34, v62);
  IPC::ArgumentCoder<WebKit::FrameInfoData,void>::encode(v34, &v79);
  IPC::ArgumentCoder<WebCore::ResourceRequest,void>::encode(v34, (v11 + 880));
  IPC::ArgumentCoder<std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,void>::encode<IPC::Encoder,std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(v34, &v60);
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v34, v54);
  IPC::Encoder::operator<<<BOOL &>(v34, &v64);
  v78 = v65;
  IPC::Encoder::operator<<<unsigned char>(v34, &v78);
  IPC::ArgumentCoder<__SecTrust *,void>::encode(v34, *v66);
  IPC::Encoder::operator<<<BOOL &>(v34, &v67);
  IPC::Encoder::operator<<<BOOL &>(v34, v68);
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v34, v69);
  v78 = v70;
  IPC::Encoder::operator<<<unsigned char>(v34, &v78);
  IPC::Encoder::operator<<<BOOL &>(v34, &v71);
  v35 = v72;
  v36 = IPC::Encoder::grow(v34, 1uLL, 1);
  if (!v37)
  {
    __break(0xC471u);
LABEL_62:
    JUMPOUT(0x19E391F9CLL);
  }

  *v36 = v35;
  v78 = v73;
  IPC::Encoder::operator<<<unsigned char>(v34, &v78);
  IPC::ArgumentCoder<WebKit::UserData,void>::encode(v34, v74);
  (*(*v28 + 32))(v28, &v77, 0);
  v39 = v77;
  v77 = 0;
  if (v39)
  {
    IPC::Encoder::~Encoder(v39, v38);
    bmalloc::api::tzoneFree(v49, v50);
  }

  v40 = v59;
  v59 = 0;
  if (v40)
  {
    CFRelease(v40[1]);
  }

  v41 = v58;
  v58 = 0;
  if (v41)
  {
    CFRelease(v41[1]);
  }

  v42 = cf;
  cf = 0;
  if (v42)
  {
    CFRelease(v42);
  }

  v43 = v84;
  v84 = 0;
  if (v43 && atomic_fetch_add_explicit(v43, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v43, v38);
  }

  if (!v83)
  {
    v44 = v82;
    v82 = 0;
    if (v44 && atomic_fetch_add_explicit(v44, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v44, v38);
    }

    v45 = v81;
    v81 = 0;
    if (v45 && atomic_fetch_add_explicit(v45, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v45, v38);
    }
  }

  v83 = -1;
  WebCore::ResourceRequest::~ResourceRequest(&v80);
  WebKit::WebPage::didCommitLoad(v57, *(a1 + 24));
  v46 = v75;
  v75 = 0;
  if (v46)
  {
    CFRelease(v46);
  }

  v47 = v76;
  v76 = 0;
  if (v47)
  {
    CFRelease(*(v47 + 1));
  }

  if (*(v11 + 24) == 1)
  {
    (*(*v11 + 24))(v11);
  }

  else
  {
    --*(v11 + 24);
  }

  CFRelease(v57[1]);
}

void WebKit::WebLocalFrameLoaderClient::dispatchDidFailProvisionalLoad(uint64_t a1, uint64_t a2, char a3, char a4)
{
  v50 = *MEMORY[0x1E69E9840];
  v8 = WebKit::WebFrame::page(*(a1 + 24));
  if (v8)
  {
    v9 = v8;
    CFRetain(*(v8 + 8));
    if (*(v9 + 1950))
    {
LABEL_3:
      CFRelease(*(v9 + 8));
      return;
    }

    v10 = qword_1ED6416F0;
    if (os_log_type_enabled(qword_1ED6416F0, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(a1 + 24);
      v12 = *(v11 + 11);
      v13 = WebKit::WebFrame::page(v11);
      if (WebKit::WebFrame::page(*(a1 + 24)))
      {
        v14 = *(WebKit::WebFrame::page(*(a1 + 24)) + 48);
      }

      else
      {
        v14 = 0;
      }

      *buf = 134219008;
      v41 = a1;
      v42 = 2048;
      v43 = v11;
      v44 = 2048;
      v45 = v12;
      v46 = 2048;
      v47 = v13;
      v48 = 2048;
      v49 = v14;
      _os_log_impl(&dword_19D52D000, v10, OS_LOG_TYPE_DEFAULT, "%p - [webFrame=%p, webFrameID=%llu, webPage=%p, webPageID=%llu] WebLocalFrameLoaderClient::dispatchDidFailProvisionalLoad:", buf, 0x34u);
    }

    v39 = 0;
    (*(**(v9 + 384) + 48))(*(v9 + 384), v9, *(a1 + 24), a2, &v39);
    v15 = *(v9 + 592);
    if (v15)
    {
      v16 = v15 + 4;
      ++v15[4];
      v17 = *(*(a1 + 88) + 8);
      if (!v17)
      {
        __break(0xC471u);
        goto LABEL_32;
      }

      WebKit::WebExtensionControllerProxy::didFailLoadForFrame(v15, v9, *(a1 + 24), (*(v17 + 208) + 120));
      WTF::RefCounted<WebKit::WebExtensionControllerProxy>::deref(v16);
    }

    WebKit::WebPage::SandboxExtensionTracker::didFailProvisionalLoad((v9 + 648), *(a1 + 24));
    if (WebKit::WebFrame::isMainFrame(*(a1 + 24)))
    {
      WebKit::WebLocalFrameLoaderClient::completePageTransitionIfNeeded(a1);
    }

    LOBYTE(v37) = 0;
    v38 = 0;
    WebCore::ResourceRequest::ResourceRequest(v35);
    v18 = *(*(a1 + 88) + 8);
    if (v18)
    {
      v19 = *(*(v18 + 208) + 104);
      if (v19)
      {
        ++*(v19 + 24);
        v20 = *(v19 + 2544) != 0;
        v37 = *(v19 + 2544);
        v38 = v20;
        WebCore::ResourceRequestBase::operator=(v35, v19 + 880);
        WTF::RetainPtr<NSURLRequest>::operator=(&v36, (v19 + 1072));
        if (*(v19 + 24) == 1)
        {
          (*(*v19 + 24))(v19);
        }

        else
        {
          --*(v19 + 24);
        }
      }

      WebKit::WebFrame::info(*(a1 + 24), 0, buf);
      v23 = *(*(a1 + 88) + 8);
      if (!v23)
      {
        __break(0xC471u);
        JUMPOUT(0x19E3923C0);
      }

      v24 = *(v23 + 208) + 120;
      WebKit::WebProcess::singleton(v21, v22);
      v31[0] = &unk_1F1122420;
      WebKit::UserData::transform(v39, v31, &v29);
      v25 = v29;
      if (v29)
      {
        CFRetain(v29[1]);
      }

      v30 = v25;
      v31[0] = buf;
      v31[1] = v35;
      v31[2] = &v37;
      v31[3] = v24;
      v31[4] = a2;
      v32 = a3;
      v33 = &v30;
      v34 = a4;
      IPC::MessageSender::send<Messages::WebPageProxy::DidFailProvisionalLoadForFrame>(v9 + 32, v31);
      v26 = v30;
      v30 = 0;
      if (v26)
      {
        CFRelease(v26[1]);
      }

      v27 = v29;
      v29 = 0;
      if (v27)
      {
        CFRelease(v27[1]);
      }

      WebKit::FrameInfoData::~FrameInfoData(buf);
      WebCore::ResourceRequest::~ResourceRequest(v35);
      v28 = v39;
      v39 = 0;
      if (v28)
      {
        CFRelease(*(v28 + 1));
      }

      goto LABEL_3;
    }

    __break(0xC471u);
LABEL_32:
    JUMPOUT(0x19E3923A0);
  }
}

void WebKit::WebLocalFrameLoaderClient::completePageTransitionIfNeeded(WebKit::WebFrame **this)
{
  v22 = *MEMORY[0x1E69E9840];
  if ((*(this + 57) & 1) == 0)
  {
    v2 = WebKit::WebFrame::page(this[3]);
    if (v2)
    {
      v3 = v2;
      CFRetain(*(v2 + 8));
      v4 = WebKit::WebPage::unfreezeLayerTree(v3, 1);
      *(this + 57) = 1;
      v5 = *(this[3] + 5);
      if (v5)
      {
        v6 = *(v5 + 8);
        if (v6)
        {
          if ((*(v6 + 136) & 1) == 0)
          {
            ++*(v6 + 16);
            v7 = *(v6 + 120);
            if (v7)
            {
              if (*(v7 + 8) == v6)
              {
                v8 = *(v6 + 216);
                if (v8)
                {
                  ++*(v8 + 2);
                  v4 = WebCore::LocalFrameView::fireLayoutRelatedMilestonesIfNeeded(v8);
                  if (*(v8 + 2) == 1)
                  {
                    v4 = (*(*v8 + 8))(v8);
                  }

                  else
                  {
                    --*(v8 + 2);
                  }
                }
              }
            }

            if (*(v6 + 16) == 1)
            {
              v4 = (*(*v6 + 8))(v6);
            }

            else
            {
              --*(v6 + 16);
            }
          }
        }
      }

      v9 = WebCore::logClient(v4);
      v10 = *v9;
      if (!*v9)
      {
        v14 = qword_1ED640CE8;
        if (os_log_type_enabled(qword_1ED640CE8, OS_LOG_TYPE_DEFAULT))
        {
          v15 = this[3];
          v16 = *(v15 + 11);
          if (WebKit::WebFrame::page(v15))
          {
            v17 = *(WebKit::WebFrame::page(this[3]) + 48);
          }

          else
          {
            v17 = 0;
          }

          v18 = 134218240;
          v19 = v16;
          v20 = 2048;
          v21 = v17;
          _os_log_impl(&dword_19D52D000, v14, OS_LOG_TYPE_DEFAULT, "[webFrameID=%llu, webPageID=%llu] WebLocalFrameLoaderClient::completePageTransitionIfNeeded: dispatching didCompletePageTransition", &v18, 0x16u);
        }

        goto LABEL_19;
      }

      if ((*(*v10 + 24))(*v9))
      {
        v11 = this[3];
        v12 = *(v11 + 11);
        if (WebKit::WebFrame::page(v11))
        {
          v13 = *(WebKit::WebFrame::page(this[3]) + 48);
        }

        else
        {
          v13 = 0;
        }

        WebKit::LogClient::WEBLOCALFRAMELOADERCLIENT_COMPLETE_PAGE_TRANSITION_IF_NEEDED(v10, v12, v13);
LABEL_19:
        CFRelease(*(v3 + 8));
        return;
      }

      __break(0xC471u);
    }
  }
}

IPC::Encoder *IPC::MessageSender::send<Messages::WebPageProxy::DidFailProvisionalLoadForFrame>(uint64_t a1, uint64_t a2)
{
  v4 = (*(*a1 + 56))(a1);
  v6 = IPC::Encoder::operator new(0x238, v5);
  *v6 = 2200;
  *(v6 + 2) = 0;
  *(v6 + 3) = 0;
  *(v6 + 1) = v4;
  *(v6 + 68) = 0;
  *(v6 + 70) = 0;
  *(v6 + 69) = 0;
  IPC::Encoder::encodeHeader(v6);
  v17 = v6;
  IPC::ArgumentCoder<WebKit::FrameInfoData,void>::encode(v6, *a2);
  IPC::ArgumentCoder<WebCore::ResourceRequest,void>::encode(v6, *(a2 + 8));
  IPC::ArgumentCoder<std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,void>::encode<IPC::Encoder,std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(v6, *(a2 + 16));
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v6, *(a2 + 24));
  IPC::ArgumentCoder<WebCore::ResourceError,void>::encode(v6, *(a2 + 32));
  v7 = *(a2 + 40);
  v8 = IPC::Encoder::grow(v6, 1uLL, 1);
  if (!v9 || (*v8 = v7, IPC::ArgumentCoder<WebKit::UserData,void>::encode(v6, *(a2 + 48)), v10 = *(a2 + 56), v11 = IPC::Encoder::grow(v6, 1uLL, 1), !v12))
  {
    __break(0xC471u);
    JUMPOUT(0x19E3927C8);
  }

  *v11 = v10;
  (*(*a1 + 32))(a1, &v17, 0);
  result = v17;
  v17 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v13);
    return bmalloc::api::tzoneFree(v15, v16);
  }

  return result;
}

void WebKit::WebLocalFrameLoaderClient::dispatchDidFailLoad(WebKit::WebFrame **this, const WebCore::ResourceError *a2)
{
  v57 = *MEMORY[0x1E69E9840];
  v4 = WebKit::WebFrame::page(this[3]);
  if (!v4)
  {
    return;
  }

  v5 = v4;
  CFRetain(*(v4 + 8));
  v6 = qword_1ED6416F0;
  if (os_log_type_enabled(qword_1ED6416F0, OS_LOG_TYPE_DEFAULT))
  {
    v7 = this[3];
    v8 = *(v7 + 11);
    v9 = WebKit::WebFrame::page(v7);
    if (WebKit::WebFrame::page(this[3]))
    {
      v10 = *(WebKit::WebFrame::page(this[3]) + 48);
    }

    else
    {
      v10 = 0;
    }

    *buf = 134219008;
    *&buf[4] = this;
    v44 = 2048;
    v45 = v7;
    v46 = 2048;
    v47 = v8;
    v48 = 2048;
    v49 = v9;
    v50 = 2048;
    v51 = v10;
    _os_log_impl(&dword_19D52D000, v6, OS_LOG_TYPE_DEFAULT, "%p - [webFrame=%p, webFrameID=%llu, webPage=%p, webPageID=%llu] WebLocalFrameLoaderClient::dispatchDidFailLoad:", buf, 0x34u);
  }

  v41 = 0;
  v11 = *(this[11] + 1);
  if (!v11)
  {
    __break(0xC471u);
    return;
  }

  v12 = *(*(v11 + 208) + 96);
  ++*(v12 + 24);
  (*(**(v5 + 384) + 88))(*(v5 + 384), v5, this[3], a2, &v41);
  v13 = *(v5 + 592);
  if (v13)
  {
    ++*(v13 + 4);
    v14 = this[3];
    WebKit::WebFrame::url(v14, buf);
    WebKit::WebExtensionControllerProxy::didFailLoadForFrame(v13, v5, v14, buf);
    v16 = *buf;
    *buf = 0;
    if (v16 && atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v16, v15);
    }

    WTF::RefCounted<WebKit::WebExtensionControllerProxy>::deref(v13 + 4);
  }

  v17 = v5 + 32;
  v18 = this[3];
  v19 = *(v18 + 11);
  WebKit::WebFrame::info(v18, 0, buf);
  v21 = *(v12 + 2544) != 0;
  v39 = *(v12 + 2544);
  v40 = v21;
  {
    v36 = WebKit::WebProcess::operator new(0x370, v20);
    WebKit::WebProcess::singleton(void)::process = WebKit::WebProcess::WebProcess(v36);
  }

  v42 = &unk_1F1122420;
  WebKit::UserData::transform(v41, &v42, &v37);
  v22 = v37;
  if (v37)
  {
    CFRetain(v37[1]);
  }

  v38 = v22;
  v23 = (*(*v17 + 56))(v5 + 32);
  v25 = IPC::Encoder::operator new(0x238, v24);
  *v25 = 2199;
  *(v25 + 2) = 0;
  *(v25 + 3) = 0;
  *(v25 + 1) = v23;
  *(v25 + 68) = 0;
  *(v25 + 70) = 0;
  *(v25 + 69) = 0;
  IPC::Encoder::encodeHeader(v25);
  v42 = v25;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v25, v19);
  IPC::ArgumentCoder<WebKit::FrameInfoData,void>::encode(v25, buf);
  IPC::ArgumentCoder<WebCore::ResourceRequest,void>::encode(v25, (v12 + 880));
  IPC::ArgumentCoder<std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,void>::encode<IPC::Encoder,std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(v25, &v39);
  IPC::ArgumentCoder<WebCore::ResourceError,void>::encode(v25, a2);
  IPC::ArgumentCoder<WebKit::UserData,void>::encode(v25, &v38);
  (*(*v17 + 32))(v5 + 32, &v42, 0);
  v27 = v42;
  v42 = 0;
  if (v27)
  {
    IPC::Encoder::~Encoder(v27, v26);
    bmalloc::api::tzoneFree(v34, v35);
    if (!v22)
    {
      goto LABEL_19;
    }

LABEL_40:
    CFRelease(v22[1]);
    goto LABEL_19;
  }

  if (v22)
  {
    goto LABEL_40;
  }

LABEL_19:
  v28 = v37;
  v37 = 0;
  if (v28)
  {
    CFRelease(v28[1]);
  }

  v29 = cf;
  cf = 0;
  if (v29)
  {
    CFRelease(v29);
  }

  v30 = v55;
  v55 = 0;
  if (v30 && atomic_fetch_add_explicit(v30, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v30, v26);
  }

  if (!v54)
  {
    v31 = v53;
    v53 = 0;
    if (v31 && atomic_fetch_add_explicit(v31, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v31, v26);
    }

    v32 = v52;
    v52 = 0;
    if (v32 && atomic_fetch_add_explicit(v32, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v32, v26);
    }
  }

  v54 = -1;
  WebCore::ResourceRequest::~ResourceRequest(&buf[8]);
  if (*(v12 + 24) == 1)
  {
    (*(*v12 + 24))(v12);
  }

  else
  {
    --*(v12 + 24);
  }

  v33 = v41;
  v41 = 0;
  if (v33)
  {
    CFRelease(*(v33 + 1));
  }

  CFRelease(*(v5 + 8));
}

void WebKit::WebLocalFrameLoaderClient::dispatchDidFinishDocumentLoad(WebKit::WebFrame **this)
{
  v2 = WebKit::WebFrame::page(this[3]);
  if (v2)
  {
    v3 = v2;
    CFRetain(*(v2 + 8));
    v28 = 0;
    v4 = *(this[11] + 1);
    if (v4)
    {
      v5 = *(*(v4 + 208) + 96);
      if (v5)
      {
        ++*(v5 + 24);
      }

      (*(**(v3 + 384) + 64))(*(v3 + 384), v3, this[3], &v28);
      v7 = v3 + 32;
      v8 = *(this[3] + 11);
      v9 = *(v5 + 2544) != 0;
      v26 = *(v5 + 2544);
      v27 = v9;
      {
        v23 = WebKit::WebProcess::operator new(0x370, v6);
        WebKit::WebProcess::singleton(void)::process = WebKit::WebProcess::WebProcess(v23);
      }

      v29 = &unk_1F1122420;
      v10 = WebKit::UserData::transform(v28, &v29, &v24);
      v11 = v24;
      if (v24)
      {
        v10 = CFRetain(v24[1]);
      }

      v25 = v11;
      WTF::WallTime::now(v10);
      v13 = v12;
      v14 = (*(*v7 + 56))(v3 + 32);
      v16 = IPC::Encoder::operator new(0x238, v15);
      *v16 = 2202;
      *(v16 + 2) = 0;
      *(v16 + 3) = 0;
      *(v16 + 1) = v14;
      *(v16 + 68) = 0;
      *(v16 + 70) = 0;
      *(v16 + 69) = 0;
      IPC::Encoder::encodeHeader(v16);
      v29 = v16;
      IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v16, v8);
      IPC::ArgumentCoder<std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,void>::encode<IPC::Encoder,std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(v16, &v26);
      IPC::ArgumentCoder<WebKit::UserData,void>::encode(v16, &v25);
      IPC::ArgumentCoder<double,void>::encode<IPC::Encoder>(v16, v13);
      (*(*v7 + 32))(v3 + 32, &v29, 0);
      v18 = v29;
      v29 = 0;
      if (v18)
      {
        IPC::Encoder::~Encoder(v18, v17);
        bmalloc::api::tzoneFree(v21, v22);
      }

      if (v11)
      {
        CFRelease(v11[1]);
      }

      v19 = v24;
      v24 = 0;
      if (v19)
      {
        CFRelease(v19[1]);
      }

      if (WebKit::WebFrame::isMainFrame(this[3]))
      {
        WebKit::WebPage::shrinkToFitContent(v3, 1);
      }

      if (*(v5 + 24) == 1)
      {
        (*(*v5 + 24))(v5);
      }

      else
      {
        --*(v5 + 24);
      }

      v20 = v28;
      v28 = 0;
      if (v20)
      {
        CFRelease(*(v20 + 1));
      }

      CFRelease(*(v3 + 8));
    }

    else
    {
      __break(0xC471u);
    }
  }
}

void WebKit::WebLocalFrameLoaderClient::dispatchDidFinishLoad(WebKit::WebFrame **this)
{
  v43 = *MEMORY[0x1E69E9840];
  v2 = WebKit::WebFrame::page(this[3]);
  if (v2)
  {
    v3 = v2;
    CFRetain(*(v2 + 8));
    v34 = 0;
    v4 = *(this[11] + 1);
    if (v4)
    {
      v5 = *(*(v4 + 208) + 96);
      ++*(v5 + 24);
      (*(**(v3 + 384) + 72))(*(v3 + 384), v3, this[3], &v34);
      v6 = *(v3 + 592);
      if (v6)
      {
        ++*(v6 + 16);
        v7 = this[3];
        WebKit::WebFrame::url(v7, &v36);
        WebKit::WebExtensionControllerProxy::didFinishLoadForFrame(v6, v3, v7, &v36);
        v9 = v36;
        v36 = 0;
        if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v9, v8);
        }

        WTF::RefCounted<WebKit::WebExtensionControllerProxy>::deref((v6 + 16));
      }

      v10 = v3 + 32;
      v11 = this[3];
      v12 = *(v11 + 11);
      WebKit::WebFrame::info(v11, 0, &v36);
      v14 = *(v5 + 2544) != 0;
      v32 = *(v5 + 2544);
      v33 = v14;
      {
        v29 = WebKit::WebProcess::operator new(0x370, v13);
        WebKit::WebProcess::singleton(void)::process = WebKit::WebProcess::WebProcess(v29);
      }

      v35 = &unk_1F1122420;
      WebKit::UserData::transform(v34, &v35, &v30);
      v15 = v30;
      if (v30)
      {
        CFRetain(v30[1]);
      }

      v31 = v15;
      v16 = (*(*v10 + 56))(v3 + 32);
      v18 = IPC::Encoder::operator new(0x238, v17);
      *v18 = 2203;
      *(v18 + 2) = 0;
      *(v18 + 3) = 0;
      *(v18 + 1) = v16;
      *(v18 + 68) = 0;
      *(v18 + 70) = 0;
      *(v18 + 69) = 0;
      IPC::Encoder::encodeHeader(v18);
      v35 = v18;
      IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v18, v12);
      IPC::ArgumentCoder<WebKit::FrameInfoData,void>::encode(v18, &v36);
      IPC::ArgumentCoder<WebCore::ResourceRequest,void>::encode(v18, (v5 + 880));
      IPC::ArgumentCoder<std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,void>::encode<IPC::Encoder,std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(v18, &v32);
      IPC::ArgumentCoder<WebKit::UserData,void>::encode(v18, &v31);
      (*(*v10 + 32))(v3 + 32, &v35, 0);
      v20 = v35;
      v35 = 0;
      if (v20)
      {
        IPC::Encoder::~Encoder(v20, v19);
        bmalloc::api::tzoneFree(v27, v28);
      }

      if (v15)
      {
        CFRelease(v15[1]);
      }

      v21 = v30;
      v30 = 0;
      if (v21)
      {
        CFRelease(v21[1]);
      }

      v22 = cf;
      cf = 0;
      if (v22)
      {
        CFRelease(v22);
      }

      v23 = v41;
      v41 = 0;
      if (v23 && atomic_fetch_add_explicit(v23, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v23, v19);
      }

      if (!v40)
      {
        v24 = v39;
        v39 = 0;
        if (v24 && atomic_fetch_add_explicit(v24, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v24, v19);
        }

        v25 = v38;
        v38 = 0;
        if (v25 && atomic_fetch_add_explicit(v25, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v25, v19);
        }
      }

      v40 = -1;
      WebCore::ResourceRequest::~ResourceRequest(&v37);
      WebKit::WebPage::didFinishLoad(v3, this[3]);
      if (*(v5 + 24) == 1)
      {
        (*(*v5 + 24))(v5);
      }

      else
      {
        --*(v5 + 24);
      }

      v26 = v34;
      v34 = 0;
      if (v26)
      {
        CFRelease(*(v26 + 1));
      }

      CFRelease(*(v3 + 8));
    }

    else
    {
      __break(0xC471u);
    }
  }
}

void WebKit::LogClient::WEBLOCALFRAMELOADERCLIENT_COMPLETE_PAGE_TRANSITION_IF_NEEDED(WebKit::LogClient *this, uint64_t a2, uint64_t a3)
{
  os_unfair_lock_lock(this + 4);
  v6 = *(this + 1);
  v7[0] = a2;
  v7[1] = a3;
  IPC::StreamClientConnection::send<Messages::LogStream::WEBLOCALFRAMELOADERCLIENT_COMPLETE_PAGE_TRANSITION_IF_NEEDED,WebKit::LogStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(v6, v7, *(this + 3));

  os_unfair_lock_unlock(this + 4);
}

uint64_t WebKit::WebLocalFrameLoaderClient::shouldSuppressLayoutMilestones(WebKit::WebLocalFrameLoaderClient *this)
{
  if (WebKit::WebFrame::isMainFrame(*(this + 3)))
  {
    v2 = *(this + 57) ^ 1;
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

void WebKit::WebLocalFrameLoaderClient::setDocumentVisualUpdatesAllowed(WebKit::WebFrame **this, int a2)
{
  if (WebKit::WebFrame::isMainFrame(this[3]))
  {
    v4 = WebKit::WebFrame::page(this[3]);
    if (v4)
    {
      v5 = v4;
      CFRetain(*(v4 + 8));
      if (a2)
      {
        WebKit::WebPage::unfreezeLayerTree(v5, 128);
      }

      else
      {
        WebKit::WebPage::freezeLayerTree(v5, 128);
      }

      v6 = *(v5 + 8);

      CFRelease(v6);
    }
  }
}

void WebKit::WebLocalFrameLoaderClient::dispatchDidReachLayoutMilestone(uint64_t a1, unsigned __int16 a2)
{
  v159 = *MEMORY[0x1E69E9840];
  v4 = WebKit::WebFrame::page(*(a1 + 24));
  if (!v4)
  {
    return;
  }

  v5 = v4;
  v6 = CFRetain(*(v4 + 8));
  v150 = 0;
  if (a2)
  {
    v76 = WebCore::logClient(v6);
    v77 = *v76;
    if (*v76)
    {
      if (((*(*v77 + 24))(*v76) & 1) == 0)
      {
        __break(0xC471u);
        JUMPOUT(0x19E3945B0);
      }

      v78 = *(a1 + 24);
      v79 = *(v78 + 11);
      if (WebKit::WebFrame::page(v78))
      {
        v80 = *(WebKit::WebFrame::page(*(a1 + 24)) + 48);
      }

      else
      {
        v80 = 0;
      }

      WebKit::LogClient::WEBLOCALFRAMELOADERCLIENT_DISPATCH_DID_FIRST_LAYOUT_FOR_FRAME(v77, v79, v80);
    }

    else
    {
      v125 = qword_1ED640CE8;
      if (os_log_type_enabled(qword_1ED640CE8, OS_LOG_TYPE_DEFAULT))
      {
        v126 = *(a1 + 24);
        v127 = *(v126 + 11);
        if (WebKit::WebFrame::page(v126))
        {
          v128 = *(WebKit::WebFrame::page(*(a1 + 24)) + 48);
        }

        else
        {
          v128 = 0;
        }

        *buf = 134218240;
        *&buf[4] = v127;
        *&buf[12] = 2048;
        *&buf[14] = v128;
        _os_log_impl(&dword_19D52D000, v125, OS_LOG_TYPE_DEFAULT, "[webFrameID=%llu, webPageID=%llu] WebLocalFrameLoaderClient::dispatchDidReachLayoutMilestone: dispatching DidFirstLayoutForFrame", buf, 0x16u);
      }
    }

    (*(**(v5 + 384) + 136))(*(v5 + 384), v5, *(a1 + 24), &v150);
    v82 = v5 + 32;
    v83 = *(*(a1 + 24) + 88);
    {
      v143 = WebKit::WebProcess::operator new(0x370, v81);
      WebKit::WebProcess::singleton(void)::process = WebKit::WebProcess::WebProcess(v143);
    }

    *buf = &unk_1F1122420;
    WebKit::UserData::transform(v150, buf, &v151);
    v84 = v151;
    if (v151)
    {
      CFRetain(v151[1]);
    }

    v154 = v84;
    v85 = (*(*v82 + 56))(v5 + 32);
    v87 = IPC::Encoder::operator new(0x238, v86);
    *v87 = 2208;
    *(v87 + 2) = 0;
    *(v87 + 3) = 0;
    *(v87 + 1) = v85;
    *(v87 + 68) = 0;
    *(v87 + 70) = 0;
    *(v87 + 69) = 0;
    IPC::Encoder::encodeHeader(v87);
    *buf = v87;
    IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v87, v83);
    IPC::ArgumentCoder<WebKit::UserData,void>::encode(v87, &v154);
    (*(*v82 + 32))(v5 + 32, buf, 0);
    v89 = *buf;
    *buf = 0;
    if (v89)
    {
      IPC::Encoder::~Encoder(v89, v88);
      bmalloc::api::tzoneFree(v119, v120);
    }

    if (v84)
    {
      CFRelease(*(v84 + 1));
    }

    v90 = v151;
    v151 = 0;
    if (v90)
    {
      CFRelease(v90[1]);
    }
  }

  v146 = 0;
  v147 = 0;
  v148 = 0;
  v149 = 1;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v8 = *buf;
  if (a2)
  {
    if (*buf)
    {
      atomic_fetch_add_explicit(*buf, 2u, memory_order_relaxed);
    }

    v146 = v8;
    if (v8)
    {
      v62 = *(v8 + 1);
    }

    else
    {
      v62 = 0;
    }

    v148 = v62;
  }

  if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v8, v7);
  }

  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v10 = *buf;
  if ((a2 & 2) != 0)
  {
    if (v148 && (WTF::StringBuilder::append(), v148) || v147)
    {
      if (v10)
      {
        v129 = *(v10 + 8);
        v130 = *(v10 + 4) | (((*(v10 + 16) >> 2) & 1) << 32);
      }

      else
      {
        v129 = 0;
        v130 = 0x100000000;
      }

      WTF::StringBuilder::append(&v146, v129, v130);
    }

    else
    {
      if (v10)
      {
        atomic_fetch_add_explicit(v10, 2u, memory_order_relaxed);
      }

      v63 = v146;
      v146 = v10;
      if (v63 && atomic_fetch_add_explicit(v63, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v63, v9);
      }

      if (v10)
      {
        v64 = *(v10 + 4);
      }

      else
      {
        v64 = 0;
      }

      v148 = v64;
    }
  }

  if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v10, v9);
  }

  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v12 = *buf;
  if ((a2 & 4) != 0)
  {
    if (v148 && (WTF::StringBuilder::append(), v148) || v147)
    {
      if (v12)
      {
        v131 = *(v12 + 8);
        v132 = *(v12 + 4) | (((*(v12 + 16) >> 2) & 1) << 32);
      }

      else
      {
        v131 = 0;
        v132 = 0x100000000;
      }

      WTF::StringBuilder::append(&v146, v131, v132);
    }

    else
    {
      if (v12)
      {
        atomic_fetch_add_explicit(v12, 2u, memory_order_relaxed);
      }

      v65 = v146;
      v146 = v12;
      if (v65 && atomic_fetch_add_explicit(v65, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v65, v11);
      }

      if (v12)
      {
        v66 = *(v12 + 4);
      }

      else
      {
        v66 = 0;
      }

      v148 = v66;
    }
  }

  if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v12, v11);
  }

  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v14 = *buf;
  if ((a2 & 0x10) != 0)
  {
    if (v148 && (WTF::StringBuilder::append(), v148) || v147)
    {
      if (v14)
      {
        v133 = *(v14 + 8);
        v134 = *(v14 + 4) | (((*(v14 + 16) >> 2) & 1) << 32);
      }

      else
      {
        v133 = 0;
        v134 = 0x100000000;
      }

      WTF::StringBuilder::append(&v146, v133, v134);
    }

    else
    {
      if (v14)
      {
        atomic_fetch_add_explicit(v14, 2u, memory_order_relaxed);
      }

      v67 = v146;
      v146 = v14;
      if (v67 && atomic_fetch_add_explicit(v67, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v67, v13);
      }

      if (v14)
      {
        v68 = *(v14 + 4);
      }

      else
      {
        v68 = 0;
      }

      v148 = v68;
    }
  }

  if (v14 && atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v14, v13);
  }

  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v16 = *buf;
  if ((a2 & 0x20) != 0)
  {
    if (v148 && (WTF::StringBuilder::append(), v148) || v147)
    {
      if (v16)
      {
        v135 = *(v16 + 8);
        v136 = *(v16 + 4) | (((*(v16 + 16) >> 2) & 1) << 32);
      }

      else
      {
        v135 = 0;
        v136 = 0x100000000;
      }

      WTF::StringBuilder::append(&v146, v135, v136);
    }

    else
    {
      if (v16)
      {
        atomic_fetch_add_explicit(v16, 2u, memory_order_relaxed);
      }

      v69 = v146;
      v146 = v16;
      if (v69 && atomic_fetch_add_explicit(v69, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v69, v15);
      }

      if (v16)
      {
        v70 = *(v16 + 4);
      }

      else
      {
        v70 = 0;
      }

      v148 = v70;
    }
  }

  if (v16 && atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v16, v15);
  }

  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v18 = *buf;
  if ((a2 & 0x40) != 0)
  {
    if (v148 && (WTF::StringBuilder::append(), v148) || v147)
    {
      if (v18)
      {
        v137 = *(v18 + 8);
        v138 = *(v18 + 4) | (((*(v18 + 16) >> 2) & 1) << 32);
      }

      else
      {
        v137 = 0;
        v138 = 0x100000000;
      }

      WTF::StringBuilder::append(&v146, v137, v138);
    }

    else
    {
      if (v18)
      {
        atomic_fetch_add_explicit(v18, 2u, memory_order_relaxed);
      }

      v71 = v146;
      v146 = v18;
      if (v71 && atomic_fetch_add_explicit(v71, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v71, v17);
      }

      if (v18)
      {
        v72 = *(v18 + 4);
      }

      else
      {
        v72 = 0;
      }

      v148 = v72;
    }
  }

  if (v18 && atomic_fetch_add_explicit(v18, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v18, v17);
  }

  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v20 = *buf;
  if ((a2 & 0x80) != 0)
  {
    if (v148 && (WTF::StringBuilder::append(), v148) || v147)
    {
      if (v20)
      {
        v139 = *(v20 + 8);
        v140 = *(v20 + 4) | (((*(v20 + 16) >> 2) & 1) << 32);
      }

      else
      {
        v139 = 0;
        v140 = 0x100000000;
      }

      WTF::StringBuilder::append(&v146, v139, v140);
    }

    else
    {
      if (v20)
      {
        atomic_fetch_add_explicit(v20, 2u, memory_order_relaxed);
      }

      v73 = v146;
      v146 = v20;
      if (v73 && atomic_fetch_add_explicit(v73, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v73, v19);
      }

      if (v20)
      {
        v74 = *(v20 + 4);
      }

      else
      {
        v74 = 0;
      }

      v148 = v74;
    }
  }

  if (v20 && atomic_fetch_add_explicit(v20, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v20, v19);
  }

  v21 = WTF::StringImpl::createWithoutCopyingNonEmpty();
  v23 = *buf;
  if ((a2 & 0x100) != 0)
  {
    if (v148 && (WTF::StringBuilder::append(), v148) || v147)
    {
      if (v23)
      {
        v141 = *(v23 + 8);
        v142 = *(v23 + 4) | (((*(v23 + 16) >> 2) & 1) << 32);
      }

      else
      {
        v141 = 0;
        v142 = 0x100000000;
      }

      v21 = WTF::StringBuilder::append(&v146, v141, v142);
    }

    else
    {
      if (v23)
      {
        atomic_fetch_add_explicit(v23, 2u, memory_order_relaxed);
      }

      v21 = v146;
      v146 = v23;
      if (v21 && atomic_fetch_add_explicit(v21, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        v21 = WTF::StringImpl::destroy(v21, v22);
      }

      if (v23)
      {
        v75 = *(v23 + 4);
      }

      else
      {
        v75 = 0;
      }

      v148 = v75;
    }
  }

  if (v23 && atomic_fetch_add_explicit(v23, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    v21 = WTF::StringImpl::destroy(v23, v22);
  }

  v24 = WebCore::logClient(v21);
  v25 = *v24;
  if (!*v24)
  {
    v104 = qword_1ED640CE8;
    if (os_log_type_enabled(qword_1ED640CE8, OS_LOG_TYPE_DEFAULT))
    {
      v105 = *(a1 + 24);
      v106 = *(v105 + 11);
      v107 = WebKit::WebFrame::page(v105) ? *(WebKit::WebFrame::page(*(a1 + 24)) + 48) : 0;
      WTF::StringBuilder::toString(&v146);
      WTF::String::utf8();
      v108 = v154 ? (v154 + 16) : 0;
      *buf = 134218498;
      *&buf[4] = v106;
      *&buf[12] = 2048;
      *&buf[14] = v107;
      *&buf[22] = 2082;
      v158 = v108;
      _os_log_impl(&dword_19D52D000, v104, OS_LOG_TYPE_DEFAULT, "[webFrameID=%llu, webPageID=%llu] WebLocalFrameLoaderClient::dispatchDidReachLayoutMilestone: dispatching DidReachLayoutMilestone (milestones=%{public}s)", buf, 0x20u);
      v56 = v154;
      v154 = 0;
      if (v56)
      {
        goto LABEL_54;
      }
    }

    goto LABEL_56;
  }

  if (((*(*v25 + 24))(*v24) & 1) == 0)
  {
    __break(0xC471u);
    goto LABEL_273;
  }

  v26 = *(a1 + 24);
  v27 = *(v26 + 11);
  if (WebKit::WebFrame::page(v26))
  {
    v28 = *(WebKit::WebFrame::page(*(a1 + 24)) + 48);
  }

  else
  {
    v28 = 0;
  }

  if (!v146)
  {
    WTF::StringBuilder::shrinkToFit(&v146);
    WTF::StringBuilder::reifyString(&v146);
  }

  WTF::String::utf8();
  if (v144)
  {
    v29 = v144 + 16;
  }

  else
  {
    v29 = 0;
  }

  WTF::CString::CString(&v145, v29);
  os_unfair_lock_lock((v25 + 16));
  v31 = *(v25 + 8);
  v151 = v27;
  v152 = v28;
  v153 = &v145;
  v32 = *(v25 + 24);
  v33 = *(v31 + 128);
  v34 = INFINITY;
  if (fabs(v33) != INFINITY)
  {
    WTF::ApproximateTime::now(v30);
    v34 = v33 + v35;
  }

  if (*(v31 + 64) != v32)
  {
    IPC::StreamClientConnectionBuffer::tryAcquire(v31 + 72, buf, v34);
    if (buf[16] != 1)
    {
      goto LABEL_50;
    }

    v109 = *&buf[8];
    if (*&buf[8] > 1uLL)
    {
      v110 = *buf;
      **buf = 3198;
      v111 = v110 + 2;
      if (v109 - 2 < (-v111 & 7 | 8uLL))
      {
        goto LABEL_50;
      }

      v112 = -v111 & 7;
      *(v111 + v112) = v32;
      v113 = 6;
      if (v112 > 6)
      {
        v113 = v112;
      }

      v114 = v113 + 10;
      v115 = (*(v31 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
      v116 = *(v31 + 72);
      if (v115 + 16 >= v116)
      {
        v115 = 0;
      }

      v117 = v114 + v115;
      if (v116 <= v117)
      {
        v117 = 0;
      }

      *(v31 + 88) = v117;
      v118 = *(v31 + 80);
      if (*(v118 + 8) <= 0xFFuLL)
      {
        goto LABEL_220;
      }

      IPC::StreamClientConnection::wakeUpServerBatched(v31, atomic_exchange((*(v118 + 16) + 128), v117) == 0x80000000);
      *(v31 + 64) = v32;
      goto LABEL_31;
    }

    __break(0xC471u);
LABEL_273:
    JUMPOUT(0x19E394570);
  }

LABEL_31:
  IPC::StreamClientConnectionBuffer::tryAcquire(v31 + 72, &v154, v34);
  if (v156 != 1)
  {
    goto LABEL_50;
  }

  v36 = v154;
  v37 = v155;
  *&buf[16] = v155;
  if (v155 <= 1)
  {
    __break(0xC471u);
    JUMPOUT(0x19E394590);
  }

  *v154 = 300;
  v38 = (v36 + 2);
  v39 = v37 - 2;
  v40 = -v38 & 7 | 8;
  v41 = v39 >= v40;
  v42 = v39 - v40;
  if (v41 && (*(v38 + (-v38 & 7)) = v151, v43 = v38 + v40, v44 = -v43 & 7 | 8, v41 = v42 >= v44, v45 = v42 - v44, v41))
  {
    *&v43[-v43 & 7] = v152;
    *buf = &v43[v44];
    *&buf[8] = v45;
  }

  else
  {
    *buf = 0;
    *&buf[8] = 0;
  }

  v46 = *v153;
  if (!*v153)
  {
    goto LABEL_221;
  }

  v47 = v46 + 16;
  for (i = *(v46 + 1); ; i = 0)
  {
    IPC::ArgumentCoder<std::span<unsigned char const,18446744073709551615ul>,void>::encode<IPC::StreamConnectionEncoder>(buf, v47, i);
    if (*buf)
    {
      break;
    }

    if (v156)
    {
      IPC::StreamClientConnection::sendProcessOutOfStreamMessage(v31, v154, v155);
      IPC::Connection::send<Messages::LogStream::WEBLOCALFRAMELOADERCLIENT_DISPATCH_DID_REACH_LAYOUT_MILESTONE>(*(v31 + 8), &v151, v32);
      goto LABEL_50;
    }

LABEL_220:
    __break(1u);
LABEL_221:
    v47 = 0;
  }

  v49 = *&buf[16] - *&buf[8];
  if (*&buf[16] - *&buf[8] <= 0x10uLL)
  {
    v49 = 16;
  }

  v50 = (*(v31 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
  v51 = *(v31 + 72);
  if (v50 + 16 >= v51)
  {
    v50 = 0;
  }

  v52 = v50 + v49;
  if (v51 <= v52)
  {
    v52 = 0;
  }

  *(v31 + 88) = v52;
  v53 = *(v31 + 80);
  if (*(v53 + 8) <= 0xFFuLL)
  {
    goto LABEL_220;
  }

  if (atomic_exchange((*(v53 + 16) + 128), v52) == 0x80000000 || *(v31 + 124))
  {
    if (*(v31 + 112) == 1)
    {
      MEMORY[0x19EB16320](*(v31 + 100));
    }

    *(v31 + 124) = 0;
  }

LABEL_50:
  os_unfair_lock_unlock((v25 + 16));
  v55 = v145;
  v145 = 0;
  if (v55)
  {
    if (*v55 == 1)
    {
      WTF::fastFree(v55, v54);
    }

    else
    {
      --*v55;
    }
  }

  v56 = v144;
  v144 = 0;
  if (v56)
  {
LABEL_54:
    if (*v56 == 1)
    {
      WTF::fastFree(v56, v54);
    }

    else
    {
      --*v56;
    }
  }

LABEL_56:
  WebKit::WebPage::dispatchDidReachLayoutMilestone(v5, a2);
  if ((a2 & 2) != 0)
  {
    v91 = WebCore::logClient(v57);
    v92 = WTF::downcast<WebKit::LogClient,WebCore::LogClient>(*v91);
    if (v92)
    {
      v93 = v92;
      v94 = *(a1 + 24);
      v95 = *(v94 + 11);
      if (WebKit::WebFrame::page(v94))
      {
        v96 = *(WebKit::WebFrame::page(*(a1 + 24)) + 48);
      }

      else
      {
        v96 = 0;
      }

      WebKit::LogClient::WEBLOCALFRAMELOADERCLIENT_DISPATCH_DID_FIRST_VISUALLY_NONEMPTY_LAYOUT(v93, v95, v96);
    }

    else
    {
      v121 = qword_1ED640CE8;
      if (os_log_type_enabled(qword_1ED640CE8, OS_LOG_TYPE_DEFAULT))
      {
        v122 = *(a1 + 24);
        v123 = *(v122 + 11);
        if (WebKit::WebFrame::page(v122))
        {
          v124 = *(WebKit::WebFrame::page(*(a1 + 24)) + 48);
        }

        else
        {
          v124 = 0;
        }

        *buf = 134218240;
        *&buf[4] = v123;
        *&buf[12] = 2048;
        *&buf[14] = v124;
        _os_log_impl(&dword_19D52D000, v121, OS_LOG_TYPE_DEFAULT, "[webFrameID=%llu, webPageID=%llu] WebLocalFrameLoaderClient::dispatchDidReachLayoutMilestone: dispatching DidFirstVisuallyNonEmptyLayoutForFrame", buf, 0x16u);
      }
    }

    v97 = (*(**(v5 + 384) + 144))(*(v5 + 384), v5, *(a1 + 24), &v150);
    v154 = *(*(a1 + 24) + 88);
    WebKit::WebProcess::singleton(v97, v98);
    *buf = &unk_1F1122420;
    v99 = WebKit::UserData::transform(v150, buf, &v145);
    v100 = v145;
    if (v145)
    {
      v99 = CFRetain(*(v145 + 1));
    }

    v151 = v100;
    WTF::WallTime::now(v99);
    v144 = v101;
    *buf = &v154;
    *&buf[8] = &v151;
    *&buf[16] = &v144;
    IPC::MessageSender::send<Messages::WebPageProxy::DidFirstVisuallyNonEmptyLayoutForFrame>(v5 + 32, buf);
    v102 = v151;
    v151 = 0;
    if (v102)
    {
      CFRelease(v102[1]);
    }

    v103 = v145;
    v145 = 0;
    if (v103)
    {
      CFRelease(*(v103 + 1));
    }
  }

  v59 = v147;
  v147 = 0;
  if (v59 && atomic_fetch_add_explicit(v59, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v59, v58);
  }

  v60 = v146;
  v146 = 0;
  if (v60 && atomic_fetch_add_explicit(v60, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v60, v58);
  }

  v61 = v150;
  v150 = 0;
  if (v61)
  {
    CFRelease(*(v61 + 1));
  }

  CFRelease(*(v5 + 8));
}

void WebKit::LogClient::WEBLOCALFRAMELOADERCLIENT_DISPATCH_DID_FIRST_LAYOUT_FOR_FRAME(WebKit::LogClient *this, uint64_t a2, uint64_t a3)
{
  os_unfair_lock_lock(this + 4);
  v6 = *(this + 1);
  v7[0] = a2;
  v7[1] = a3;
  IPC::StreamClientConnection::send<Messages::LogStream::WEBLOCALFRAMELOADERCLIENT_DISPATCH_DID_FIRST_LAYOUT_FOR_FRAME,WebKit::LogStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(v6, v7, *(this + 3));

  os_unfair_lock_unlock(this + 4);
}

void WebKit::LogClient::WEBLOCALFRAMELOADERCLIENT_DISPATCH_DID_FIRST_VISUALLY_NONEMPTY_LAYOUT(WebKit::LogClient *this, uint64_t a2, uint64_t a3)
{
  os_unfair_lock_lock(this + 4);
  v6 = *(this + 1);
  v7[0] = a2;
  v7[1] = a3;
  IPC::StreamClientConnection::send<Messages::LogStream::WEBLOCALFRAMELOADERCLIENT_DISPATCH_DID_FIRST_VISUALLY_NONEMPTY_LAYOUT,WebKit::LogStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(v6, v7, *(this + 3));

  os_unfair_lock_unlock(this + 4);
}

IPC::Encoder *IPC::MessageSender::send<Messages::WebPageProxy::DidFirstVisuallyNonEmptyLayoutForFrame>(uint64_t a1, void *a2)
{
  v4 = (*(*a1 + 56))(a1);

  return IPC::MessageSender::send<Messages::WebPageProxy::DidFirstVisuallyNonEmptyLayoutForFrame>(a1, a2, v4);
}

void WebKit::WebLocalFrameLoaderClient::dispatchDidReachVisuallyNonEmptyState(WebKit::WebFrame **this)
{
  if (WebKit::WebFrame::page(this[3]) && (*(*(*(WebKit::WebFrame::page(this[3]) + 56) + 120) + 722) & 1) == 0)
  {

    WebKit::WebLocalFrameLoaderClient::completePageTransitionIfNeeded(this);
  }
}

void WebKit::WebLocalFrameLoaderClient::dispatchDidLayout(WebKit::WebFrame **this)
{
  v2 = WebKit::WebFrame::page(this[3]);
  if (v2)
  {
    v3 = v2;
    CFRetain(*(v2 + 8));
    (*(**(v3 + 384) + 152))(*(v3 + 384), v3, this[3]);
    WebKit::WebPage::recomputeShortCircuitHorizontalWheelEventsState(v3);
    WebKit::WebPage::updateSelectionAppearance(v3);
    v4 = this[3];
    if (v4 == *(WebKit::WebFrame::page(v4) + 88))
    {
      v5 = WebKit::WebPage::renderTreeSize(v3);
      v6 = (*(*(v3 + 32) + 56))(v3 + 32);
      v8 = IPC::Encoder::operator new(0x238, v7);
      *v8 = 2365;
      *(v8 + 2) = 0;
      *(v8 + 3) = 0;
      *(v8 + 1) = v6;
      *(v8 + 68) = 0;
      *(v8 + 70) = 0;
      *(v8 + 69) = 0;
      IPC::Encoder::encodeHeader(v8);
      v13 = v8;
      IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v8, v5);
      (*(*(v3 + 32) + 32))(v3 + 32, &v13, 0);
      v10 = v13;
      v13 = 0;
      if (v10)
      {
        IPC::Encoder::~Encoder(v10, v9);
        bmalloc::api::tzoneFree(v11, v12);
      }

      WebKit::WebPage::mainFrameDidLayout(v3);
    }

    CFRelease(*(v3 + 8));
  }
}

uint64_t WebKit::WebLocalFrameLoaderClient::dispatchCreatePage(uint64_t a1, const WebCore::NavigationAction *a2, int a3)
{
  v6 = WebKit::WebFrame::page(*(a1 + 24));
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  CFRetain(*(v6 + 8));
  v18[0] = 0;
  v18[4] = 0;
  v18[8] = 0;
  v18[12] = 0;
  v18[16] = 0;
  v18[20] = 0;
  v18[24] = 0;
  v18[28] = 0;
  v18[32] = 0;
  v21[0] = 0;
  v21[1] = 0;
  memset(v20, 0, sizeof(v20));
  v19 = 0;
  if (a3)
  {
    v8 = 256;
  }

  else
  {
    v8 = 257;
  }

  v20[5] = v8;
  v9 = *(*(a1 + 88) + 8);
  if (v9)
  {
    v10 = *(*(v7 + 56) + 56);
    ++*(v9 + 4);
    v16 = 0;
    WebCore::Chrome::createWindow(&v17, v10, v9, &v16, v18, a2);
    v12 = v16;
    v16 = 0;
    if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v12, v11);
    }

    if (*(v9 + 4) == 1)
    {
      (*(*v9 + 8))(v9);
    }

    else
    {
      --*(v9 + 4);
    }

    if (v17)
    {
      WebCore::Page::localMainFrame(&v16, v17);
      v13 = v16;
      v16 = 0;
      if (v13)
      {
        if (*(v13 + 4) == 1)
        {
          (*(*v13 + 8))(v13);
        }

        else
        {
          --*(v13 + 4);
        }
      }

      v14 = v17;
      v17 = 0;
      if (v14)
      {
        WTF::RefCounted<WebCore::Page>::deref(v14 + 2);
      }
    }

    else
    {
      v13 = 0;
    }

    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v21, v11);
    CFRelease(*(v7 + 8));
    return v13;
  }

  result = 103;
  __break(0xC471u);
  return result;
}

void WebKit::WebLocalFrameLoaderClient::dispatchShow(WebKit::WebFrame **this)
{
  v1 = WebKit::WebFrame::page(this[3]);
  if (v1)
  {
    v2 = v1;
    CFRetain(*(v1 + 8));
    WebKit::WebPage::show(v2);
    v3 = *(v2 + 1);

    CFRelease(v3);
  }
}

void WebKit::WebLocalFrameLoaderClient::dispatchDecidePolicyForResponse(uint64_t a1, const WebCore::ResourceResponse *a2, WebCore::ResourceRequest *a3, uint64_t *a4, uint64_t *a5)
{
  v82 = *MEMORY[0x1E69E9840];
  v10 = WebKit::WebFrame::page(*(a1 + 24));
  if (v10)
  {
    v11 = v10;
    CFRetain(*(v10 + 8));
    if (*WebCore::ResourceRequestBase::url(a3))
    {
      if (WebKit::WebFrame::isMainFrame(*(a1 + 24)) && (*(*(a1 + 24) + 130) & 1) != 0 || !WebKit::WebPage::shouldSkipDecidePolicyForResponse(v11, a2))
      {
        canShowResponse = WebKit::WebPage::canShowResponse(v11, a2);
        v13 = *(*(a1 + 88) + 8);
        if (v13)
        {
          v14 = canShowResponse;
          v15 = *(*(v13 + 208) + 104);
          if (v15)
          {
            ++*(v15 + 24);
            v16 = *(v15 + 2544) != 0;
            v63 = *(v15 + 2544);
          }

          else
          {
            v16 = 0;
            LOBYTE(v63) = 0;
          }

          v64 = v16;
          v17 = *(a1 + 24);
          CFRetain(v17[1]);
          v18 = WebKit::WebFrame::setUpPolicyListener(v17, a5, 0);
          v19 = *(*(a1 + 88) + 8);
          if (!v19)
          {
            __break(0xC471u);
            JUMPOUT(0x19E395274);
          }

          v58 = v18;
          isDisplayingInitialEmptyDocument = WebCore::FrameLoaderStateMachine::isDisplayingInitialEmptyDocument((*(v19 + 208) + 72));
          v21 = *(*(a1 + 88) + 8);
          if (!v21)
          {
            __break(0xC471u);
            JUMPOUT(0x19E395294);
          }

          v22 = isDisplayingInitialEmptyDocument;
          v23 = a4;
          v24 = *(v21 + 224);
          if (v24)
          {
            *(v24 + 7) += 2;
            v25 = *WebCore::Document::crossOriginOpenerPolicy(v24);
            if (*(v24 + 7) == 2)
            {
              WebCore::Node::removedLastRef(v24);
            }

            else
            {
              *(v24 + 7) -= 2;
            }
          }

          else
          {
            v25 = 1;
          }

          WebKit::WebFrame::info(v17, 0, buf);
          v59[0] = v14;
          v60 = v23;
          v61 = v22;
          v62 = v25;
          CFRetain(v17[1]);
          v26 = (*(*(v11 + 32) + 56))(v11 + 32);
          v28 = IPC::Encoder::operator new(0x238, v27);
          *v28 = 2173;
          *(v28 + 2) = 0;
          *(v28 + 3) = 0;
          *(v28 + 1) = v26;
          *(v28 + 68) = 0;
          *(v28 + 70) = 0;
          *(v28 + 69) = 0;
          IPC::Encoder::encodeHeader(v28);
          v66 = v28;
          IPC::ArgumentCoder<WebKit::FrameInfoData,void>::encode(v28, buf);
          IPC::ArgumentCoder<std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,void>::encode<IPC::Encoder,std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(v28, &v63);
          IPC::ArgumentCoder<WebCore::ResourceResponse,void>::encode(v28, a2);
          IPC::ArgumentCoder<WebCore::ResourceRequest,void>::encode(v28, a3);
          IPC::Encoder::operator<<<BOOL &>(v28, v59);
          IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v28, v60);
          IPC::Encoder::operator<<<BOOL &>(v28, &v61);
          LOBYTE(v65[0]) = v62;
          IPC::Encoder::operator<<<unsigned char>(v28, v65);
          v29 = WTF::fastMalloc(0x18);
          *v29 = &unk_1F1132060;
          v29[1] = v17;
          v29[2] = v58;
          if (WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected != 1)
          {
            v30 = v29;
            IdentifierInternal = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
            v65[0] = v30;
            v65[1] = IdentifierInternal;
            (*(*(v11 + 32) + 40))(v11 + 32, &v66, v65, 0);
            v33 = v65[0];
            v65[0] = 0;
            if (v33)
            {
              (*(*v33 + 8))(v33);
            }

            v34 = v66;
            v66 = 0;
            if (v34)
            {
              IPC::Encoder::~Encoder(v34, v32);
              bmalloc::api::tzoneFree(v39, v40);
            }

            v35 = cf;
            cf = 0;
            if (v35)
            {
              CFRelease(v35);
            }

            v36 = v80;
            v80 = 0;
            if (v36 && atomic_fetch_add_explicit(v36, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v36, v32);
            }

            if (!v79)
            {
              v37 = v78;
              v78 = 0;
              if (v37 && atomic_fetch_add_explicit(v37, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v37, v32);
              }

              v38 = v77;
              v77 = 0;
              if (v38 && atomic_fetch_add_explicit(v38, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v38, v32);
              }
            }

            v79 = -1;
            WebCore::ResourceRequest::~ResourceRequest((&v68 + 4));
            CFRelease(v17[1]);
            if (v15)
            {
              if (*(v15 + 24) == 1)
              {
                (*(*v15 + 24))(v15);
              }

              else
              {
                --*(v15 + 24);
              }
            }

            goto LABEL_27;
          }

          __break(0xC471u);
        }

        else
        {
          __break(0xC471u);
        }

        JUMPOUT(0x19E395254);
      }

      v41 = qword_1ED6416F0;
      if (os_log_type_enabled(qword_1ED6416F0, OS_LOG_TYPE_DEFAULT))
      {
        v47 = *(a1 + 24);
        v48 = *(v47 + 11);
        v49 = WebKit::WebFrame::page(v47);
        if (WebKit::WebFrame::page(*(a1 + 24)))
        {
          v50 = *(WebKit::WebFrame::page(*(a1 + 24)) + 48);
        }

        else
        {
          v50 = 0;
        }

        *buf = 134219008;
        v68 = a1;
        v69 = 2048;
        v70 = v47;
        v71 = 2048;
        v72 = v48;
        v73 = 2048;
        v74 = v49;
        v75 = 2048;
        v76 = v50;
        v46 = "%p - [webFrame=%p, webFrameID=%llu, webPage=%p, webPageID=%llu] WebLocalFrameLoaderClient::dispatchDecidePolicyForResponse: continuing because injected bundle says so";
LABEL_46:
        _os_log_impl(&dword_19D52D000, v41, OS_LOG_TYPE_DEFAULT, v46, buf, 0x34u);
      }
    }

    else
    {
      v41 = qword_1ED6416F0;
      if (os_log_type_enabled(qword_1ED6416F0, OS_LOG_TYPE_DEFAULT))
      {
        v42 = *(a1 + 24);
        v43 = *(v42 + 11);
        v44 = WebKit::WebFrame::page(v42);
        if (WebKit::WebFrame::page(*(a1 + 24)))
        {
          v45 = *(WebKit::WebFrame::page(*(a1 + 24)) + 48);
        }

        else
        {
          v45 = 0;
        }

        *buf = 134219008;
        v68 = a1;
        v69 = 2048;
        v70 = v42;
        v71 = 2048;
        v72 = v43;
        v73 = 2048;
        v74 = v44;
        v75 = 2048;
        v76 = v45;
        v46 = "%p - [webFrame=%p, webFrameID=%llu, webPage=%p, webPageID=%llu] WebLocalFrameLoaderClient::dispatchDecidePolicyForResponse: continuing because the url string is null";
        goto LABEL_46;
      }
    }

    v51 = *a5;
    *a5 = 0;
    (*(*v51 + 16))(v51, 0);
    (*(*v51 + 8))(v51);
LABEL_27:
    CFRelease(*(v11 + 8));
    return;
  }

  v52 = qword_1ED6416F0;
  if (os_log_type_enabled(qword_1ED6416F0, OS_LOG_TYPE_DEFAULT))
  {
    v53 = *(a1 + 24);
    v54 = *(v53 + 11);
    v55 = WebKit::WebFrame::page(v53);
    if (WebKit::WebFrame::page(*(a1 + 24)))
    {
      v56 = *(WebKit::WebFrame::page(*(a1 + 24)) + 48);
    }

    else
    {
      v56 = 0;
    }

    *buf = 134219008;
    v68 = a1;
    v69 = 2048;
    v70 = v53;
    v71 = 2048;
    v72 = v54;
    v73 = 2048;
    v74 = v55;
    v75 = 2048;
    v76 = v56;
    _os_log_impl(&dword_19D52D000, v52, OS_LOG_TYPE_DEFAULT, "%p - [webFrame=%p, webFrameID=%llu, webPage=%p, webPageID=%llu] WebLocalFrameLoaderClient::dispatchDecidePolicyForResponse: ignoring because there's no web page", buf, 0x34u);
  }

  v57 = *a5;
  *a5 = 0;
  (*(*v57 + 16))(v57, 2);
  (*(*v57 + 8))(v57);
}

void WebKit::WebLocalFrameLoaderClient::dispatchDecidePolicyForNewWindowAction(uint64_t a1, uint64_t a2, WebKit::WebPage *a3, uint64_t a4, uint64_t *a5, unsigned __int8 *a6, uint64_t *a7)
{
  v92[27] = *MEMORY[0x1E69E9840];
  v13 = WebKit::WebFrame::page(*(a1 + 24));
  if (v13)
  {
    v14 = v13;
    CFRetain(*(v13 + 8));
    v15 = WebKit::WebFrame::setUpPolicyListener(*(a1 + 24), a7, 0);
    v17 = *(*(a1 + 88) + 8);
    if (!v17)
    {
      __break(0xC471u);
      goto LABEL_67;
    }

    ++*(v17 + 16);
    v56[0] = *(a2 + 868);
    if (*(a2 + 445) & 1) != 0 && (*(a2 + 440))
    {
      if (*(a2 + 442))
      {
        v18 = *(a2 + 441) & 1 | 2;
      }

      else
      {
        v18 = *(a2 + 441) & 1;
      }

      if (*(a2 + 443))
      {
        v18 |= 4u;
      }

      if (*(a2 + 444))
      {
        v18 |= 8u;
      }
    }

    else
    {
      v18 = 0;
    }

    v56[1] = v18;
    v19 = *(a2 + 476);
    v51 = v15;
    if (v19 == 1)
    {
      if (*(a2 + 474) == 1 && *(a2 + 448) == 1)
      {
        v45 = WebKit::kit(*(a2 + 472));
        v46 = *(a2 + 476);
        v57 = v45;
        if ((v46 & 1) == 0)
        {
          goto LABEL_58;
        }

        goto LABEL_55;
      }

      v19 = 1;
    }

    v57 = -2;
    if (!v19)
    {
      v20 = a5;
LABEL_8:
      v58 = v19;
      {
        v21 = WebKit::WebProcess::singleton(void)::process;
      }

      else
      {
        v50 = WebKit::WebProcess::operator new(0x370, v16);
        v21 = WebKit::WebProcess::WebProcess(v50);
        WebKit::WebProcess::singleton(void)::process = v21;
      }

      v22 = *(v14 + 48);
      v23 = *(a2 + 480);
      if (v23)
      {
        ++*(v23 + 8);
      }

      v52 = v23;
      WebKit::WebProcess::userGestureTokenIdentifier(v21, v22, 1, &v52, &v59);
      v25 = *(a2 + 480);
      if (v25)
      {
        *(v25 + 8) += 2;
        v47 = *(v25 + 96);
        v60 = *(v25 + 80);
        v61 = v47;
      }

      else
      {
        LOBYTE(v60) = 0;
        LOBYTE(v61) = 0;
      }

      canHandleRequest = WebKit::WebPage::canHandleRequest(a3, v24);
      v63 = *(a2 + 871);
      v26 = *(a2 + 488);
      if (v26)
      {
        atomic_fetch_add_explicit(v26, 2u, memory_order_relaxed);
      }

      if (*(a2 + 476))
      {
        v27 = *(a2 + 464);
      }

      else
      {
        v27 = 0;
      }

      v64 = v26;
      v65 = v27;
      WebCore::ResourceResponseBase::ResourceResponseBase(&v66);
      v68 = 0;
      v69 = 0;
      v67 = v67 & 0xF1 | 4;
      v70 = 0;
      v71 = *(a2 + 881) == 1;
      v72 = *(*(v17 + 208) + 402);
      v73 = *(a2 + 877);
      v77[40] = 0;
      v77[48] = 0;
      v77[64] = 0;
      v78 = 0;
      v79 = 0;
      v74 = 0u;
      v75 = 0u;
      v76 = 0u;
      memset(v77, 0, 25);
      v80 = WebCore::LocalFrame::effectiveSandboxFlags(v17);
      v81 = 0;
      v82 = 0;
      v83[0] = 0;
      v84 = 0;
      if (*(a2 + 856) == 1)
      {
        WebCore::PrivateClickMeasurement::PrivateClickMeasurement(v83, (a2 + 544));
        v84 = 1;
      }

      v85 = 0;
      v86 = 0;
      v87 = 0;
      v28 = a6[136];
      if (v28 == 1)
      {
        v53[0] = 0;
        WebKit::WebHitTestResultData::WebHitTestResultData(v55, a6, v53, 0);
        WebKit::WebHitTestResultData::WebHitTestResultData(v88, v55);
        v29 = 1;
      }

      else
      {
        v29 = 0;
        v88[0] = 0;
      }

      v88[848] = v29;
      WebKit::WebFrame::info(*(a1 + 24), 0, v89);
      v89[352] = 0;
      v89[360] = 0;
      WebKit::WebFrame::info(*(a1 + 24), 0, v90);
      v90[352] = 0;
      v90[360] = 0;
      WebCore::ResourceRequest::ResourceRequest(&v91);
      WebCore::ResourceRequest::ResourceRequest(v92, a3);
      if (*(WebCore::ResourceRequestBase::url(a3) + 8))
      {
        v31 = 0;
        v32 = v20;
      }

      else
      {
        v31 = *WebCore::ResourceRequestBase::url(a3);
        v32 = v20;
        if (v31)
        {
          atomic_fetch_add_explicit(v31, 2u, memory_order_relaxed);
        }
      }

      v92[25] = v31;
      if (v28)
      {
        WebKit::WebHitTestResultData::~WebHitTestResultData(v55, v30);
      }

      if (v25)
      {
        WTF::RefCounted<WebCore::UserGestureToken>::deref((v25 + 8));
        WTF::RefCounted<WebCore::UserGestureToken>::deref((v25 + 8));
      }

      if (v23)
      {
        WTF::RefCounted<WebCore::UserGestureToken>::deref((v23 + 8));
      }

      v33 = *(a1 + 24);
      CFRetain(*(v33 + 8));
      v34 = (*(*(v14 + 32) + 56))(v14 + 32);
      v36 = IPC::Encoder::operator new(0x238, v35);
      *v36 = 2172;
      *(v36 + 2) = 0;
      *(v36 + 3) = 0;
      *(v36 + 1) = v34;
      *(v36 + 68) = 0;
      *(v36 + 70) = 0;
      *(v36 + 69) = 0;
      IPC::Encoder::encodeHeader(v36);
      v54 = v36;
      IPC::ArgumentCoder<WebKit::NavigationActionData,void>::encode(v36, v56);
      IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v36, v32);
      v37 = WTF::fastMalloc(0x18);
      *v37 = &unk_1F1132088;
      *(v37 + 1) = v33;
      *(v37 + 2) = v51;
      if (WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected != 1)
      {
        v38 = v37;
        IdentifierInternal = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
        v53[0] = v38;
        v53[1] = IdentifierInternal;
        (*(*(v14 + 32) + 40))(v14 + 32, &v54, v53, 0);
        v41 = v53[0];
        v53[0] = 0;
        if (v41)
        {
          (*(*v41 + 8))(v41);
        }

        v42 = v54;
        v54 = 0;
        if (v42)
        {
          IPC::Encoder::~Encoder(v42, v40);
          bmalloc::api::tzoneFree(v43, v44);
        }

        WebKit::NavigationActionData::~NavigationActionData(v56, v40);
        if (*(v17 + 16) == 1)
        {
          (*(*v17 + 8))(v17);
        }

        else
        {
          --*(v17 + 16);
        }

        CFRelease(*(v14 + 8));
        return;
      }

      __break(0xC471u);
LABEL_67:
      JUMPOUT(0x19E39594CLL);
    }

LABEL_55:
    if (*(a2 + 474) == 1 && *(a2 + 448) == 1)
    {
      v20 = a5;
      LOBYTE(v19) = *(a2 + 473);
      goto LABEL_8;
    }

LABEL_58:
    v20 = a5;
    LOBYTE(v19) = 0;
    goto LABEL_8;
  }

  v48 = *a7;
  *a7 = 0;
  (*(*v48 + 16))(v48, 2);
  v49 = *(*v48 + 8);

  v49(v48);
}

uint64_t WebKit::WebLocalFrameLoaderClient::applyWebsitePolicies(uint64_t a1, uint64_t a2)
{
  if (*(*(a1 + 88) + 8))
  {
    result = WebCore::FrameLoader::loaderForWebsitePolicies();
    if (v4)
    {
      WebKit::WebsitePoliciesData::applyToDocumentLoader(a2, v4);
      result = v4;
      if (v4[6] == 1)
      {
        return (*(*v4 + 24))();
      }

      else
      {
        --v4[6];
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

uint64_t WebKit::WebLocalFrameLoaderClient::allowsContentJavaScriptFromMostRecentNavigation(WebKit::WebFrame **this)
{
  v1 = WebKit::WebFrame::page(this[3]);
  if (v1)
  {
    v2 = v1;
    CFRetain(*(v1 + 8));
    v3 = *(v2 + 1944);
    CFRelease(*(v2 + 8));
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

void WebKit::WebLocalFrameLoaderClient::dispatchWillSendSubmitEvent(uint64_t a1, uint64_t *a2)
{
  v4 = WebKit::WebFrame::page(*(a1 + 24));
  if (v4)
  {
    v5 = v4;
    CFRetain(*(v4 + 8));
    v6 = *a2;
    v7 = *(*a2 + 32);
    *(v7 + 7) += 2;
    v8 = *(*(*(v6 + 56) + 552) + 8);
    ++v8[4];
    WebKit::WebFrame::fromCoreFrame(v8, &v12);
    if (v8[4] == 1)
    {
      (*(*v8 + 8))(v8);
    }

    else
    {
      --v8[4];
    }

    v9 = *(a1 + 24);
    v10 = v12;
    (*(**(v5 + 376) + 72))(*(v5 + 376), v5, v7, v9, v12, *a2 + 40);
    if (v10)
    {
      CFRelease(*(v10 + 8));
    }

    if (*(v7 + 7) == 2)
    {
      WebCore::Node::removedLastRef(v7);
    }

    else
    {
      *(v7 + 7) -= 2;
    }

    v11 = *(v5 + 8);

    CFRelease(v11);
  }
}

void WebKit::WebLocalFrameLoaderClient::dispatchWillSubmitForm(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v6 = WebKit::WebFrame::page(*(a1 + 24));
  if (v6)
  {
    v7 = v6;
    CFRetain(*(v6 + 8));
    v8 = *(a2 + 32);
    *(v8 + 7) += 2;
    v9 = *(*(a2 + 56) + 552);
    if (!v9 || (v10 = *(v9 + 8)) == 0)
    {
      v30 = *a3;
      *a3 = 0;
      (*(*v30 + 16))(v30);
      (*(*v30 + 8))(v30);
      goto LABEL_22;
    }

    ++v10[4];
    WebKit::WebFrame::fromCoreFrame(v10, &v39);
    v11 = v39;
    if (!v39)
    {
      v27 = *a3;
      *a3 = 0;
      (*(*v27 + 16))(v27);
      (*(*v27 + 8))(v27);
LABEL_20:
      if (v10[4] == 1)
      {
        (*(*v10 + 8))(v10);
      }

      else
      {
        --v10[4];
      }

LABEL_22:
      if (*(v8 + 7) == 2)
      {
        WebCore::Node::removedLastRef(v8);
      }

      else
      {
        *(v8 + 7) -= 2;
      }

      CFRelease(*(v7 + 8));
      return;
    }

    v38 = 0;
    (*(**(v7 + 376) + 64))(*(v7 + 376), v7, v8, *(a1 + 24), v39, a2 + 40, &v38);
    v13 = v7 + 32;
    v34 = *(*(a1 + 24) + 88);
    v35 = *(v11 + 88);
    {
      v33 = WebKit::WebProcess::operator new(0x370, v12);
      WebKit::WebProcess::singleton(void)::process = WebKit::WebProcess::WebProcess(v33);
    }

    v40[0] = &unk_1F1122420;
    WebKit::UserData::transform(v38, v40, &v36);
    v14 = v36;
    if (v36)
    {
      CFRetain(v36[1]);
    }

    v37 = v14;
    v15 = (*(*v13 + 56))(v7 + 32);
    v17 = IPC::Encoder::operator new(0x238, v16);
    *v17 = 2418;
    *(v17 + 2) = 0;
    *(v17 + 3) = 0;
    *(v17 + 1) = v15;
    *(v17 + 68) = 0;
    *(v17 + 70) = 0;
    *(v17 + 69) = 0;
    IPC::Encoder::encodeHeader(v17);
    v41 = v17;
    IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v17, v34);
    IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v17, v35);
    IPC::VectorArgumentCoder<false,WebCore::DataListSuggestion,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WebCore::DataListSuggestion,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(v17, a2 + 40);
    IPC::ArgumentCoder<WebKit::UserData,void>::encode(v17, &v37);
    v18 = *a3;
    *a3 = 0;
    v19 = WTF::fastMalloc(0x10);
    *v19 = &unk_1F11320B0;
    v19[1] = v18;
    if (WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1)
    {
      __break(0xC471u);
      return;
    }

    v20 = v19;
    IdentifierInternal = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
    v40[0] = v20;
    v40[1] = IdentifierInternal;
    (*(*v13 + 40))(v7 + 32, &v41, v40, 0);
    v23 = v40[0];
    v40[0] = 0;
    if (v23)
    {
      (*(*v23 + 8))(v23);
    }

    v24 = v41;
    v41 = 0;
    if (v24)
    {
      IPC::Encoder::~Encoder(v24, v22);
      bmalloc::api::tzoneFree(v28, v29);
      if (!v14)
      {
        goto LABEL_14;
      }
    }

    else if (!v14)
    {
LABEL_14:
      v25 = v36;
      v36 = 0;
      if (v25)
      {
        CFRelease(v25[1]);
      }

      v26 = v38;
      v38 = 0;
      if (v26)
      {
        CFRelease(*(v26 + 1));
      }

      CFRelease(*(v11 + 8));
      goto LABEL_20;
    }

    CFRelease(v14[1]);
    goto LABEL_14;
  }

  v31 = *a3;
  *a3 = 0;
  (*(*v31 + 16))(v31);
  v32 = *(*v31 + 8);

  v32(v31);
}

uint64_t WebKit::WebLocalFrameLoaderClient::setMainDocumentError(uint64_t this, WebCore::DocumentLoader *a2, const WebCore::ResourceError *a3)
{
  v3 = *(this + 48);
  if (v3)
  {
    ++v3[2];
    v6 = v3;
    v4 = this;
    WebKit::PluginView::manualLoadDidFail(v3);
    this = *(v4 + 48);
    *(v4 + 48) = 0;
    if (this)
    {
      if (*(this + 8) == 1)
      {
        this = (*(*this + 8))(this);
      }

      else
      {
        --*(this + 8);
      }
    }

    *(v4 + 56) = 0;
    if (v6[2] == 1)
    {
      v5 = *(*v6 + 8);

      return v5();
    }

    else
    {
      --v6[2];
    }
  }

  return this;
}

void WebKit::WebLocalFrameLoaderClient::willReplaceMultipartContent(WebKit::WebFrame **this)
{
  v2 = WebKit::WebFrame::page(this[3]);
  if (v2)
  {
    v3 = v2;
    CFRetain(*(v2 + 8));
    WebKit::WebPage::willReplaceMultipartContent(v3, this[3]);
    v4 = *(v3 + 1);

    CFRelease(v4);
  }
}

void WebKit::WebLocalFrameLoaderClient::didReplaceMultipartContent(WebKit::WebFrame **this)
{
  v2 = WebKit::WebFrame::page(this[3]);
  if (v2)
  {
    v3 = v2;
    CFRetain(*(v2 + 8));
    WebKit::WebPage::didReplaceMultipartContent(v3, this[3]);
    v4 = *(v3 + 1);

    CFRelease(v4);
  }
}

uint64_t WebKit::WebLocalFrameLoaderClient::committedLoad(WebKit::WebLocalFrameLoaderClient *this, WebCore::DocumentLoader *a2, const WebCore::SharedBuffer *a3)
{
  if (!*(this + 6))
  {
    WebCore::DocumentLoader::commitData(a2, a3);
  }

  v6 = *(*(this + 11) + 8);
  if (!v6)
  {
    result = 92;
    __break(0xC471u);
    return result;
  }

  v7 = *(v6 + 224);
  if (v7 && (*(v7 + 3518) & 0x10) != 0)
  {
    WebKit::pluginWillHandleLoadError((a2 + 1280), v10);
    WebCore::DocumentLoader::cancelMainResourceLoad();
    WebCore::ResourceError::~ResourceError(v10, v9);
  }

  result = *(this + 6);
  if (result)
  {
    ++*(result + 8);
    v10[0] = result;
    if ((*(this + 56) & 1) == 0)
    {
      WebKit::PluginView::manualLoadDidReceiveResponse(result, a2 + 160);
      WTF::RefPtr<WebKit::PluginView,WTF::RawPtrTraits<WebKit::PluginView>,WTF::DefaultRefDerefTraits<WebKit::PluginView>>::operator=(v10, *(this + 6));
      result = v10[0];
      if (!v10[0])
      {
        return result;
      }

      *(this + 56) = 1;
    }

    WebKit::PluginView::manualLoadDidReceiveData(result, a3);
    result = v10[0];
    v10[0] = 0;
    if (result)
    {
      if (*(result + 8) == 1)
      {
        return (*(*result + 8))(result);
      }

      else
      {
        --*(result + 8);
      }
    }
  }

  return result;
}

void *WTF::RefPtr<WebKit::PluginView,WTF::RawPtrTraits<WebKit::PluginView>,WTF::DefaultRefDerefTraits<WebKit::PluginView>>::operator=(_DWORD **a1, uint64_t a2)
{
  v2 = a1;
  if (a2)
  {
    ++*(a2 + 8);
  }

  v3 = *a1;
  *v2 = a2;
  if (v3)
  {
    v5 = v2;
    if (v3[2] == 1)
    {
      (*(*v3 + 8))(v3);
    }

    else
    {
      --v3[2];
    }

    return v5;
  }

  return v2;
}

CFTypeRef *WebKit::WebLocalFrameLoaderClient::finishedLoading(WebKit::WebLocalFrameLoaderClient *this, WebCore::DocumentLoader *a2)
{
  if (*(this + 58) == 1)
  {
    result = WebKit::WebFrame::page(*(this + 3));
    if (!result)
    {
      return result;
    }

    v5 = result;
    CFRetain(result[1]);
    WebCore::DocumentLoader::mainResourceData(&v14, a2);
    if (!v14)
    {
      goto LABEL_11;
    }

    WebCore::FragmentedSharedBuffer::makeContiguous(v13, v14);
    v6 = v13[0];
    v7 = v14;
    v14 = 0;
    if (v7 && atomic_fetch_add(v7 + 2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v7 + 2);
      (*(*v7 + 8))(v7);
    }

    if (v6)
    {
      v14 = WebCore::SharedBuffer::span(v6);
      v15 = v8;
    }

    else
    {
LABEL_11:
      v6 = 0;
      v14 = 0;
      v15 = 0;
    }

    WebCore::ResourceResponseBase::suggestedFilename(&v12, (a2 + 1280));
    v13[0] = &v12;
    v13[1] = &v14;
    IPC::MessageSender::send<Messages::WebPageProxy::DidFinishLoadingDataForCustomContentProvider>((v5 + 4), v13);
    v10 = v12;
    v12 = 0;
    if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v10, v9);
    }

    if (v6 && atomic_fetch_add(v6 + 2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v6 + 2);
      (*(*v6 + 8))(v6);
    }

    CFRelease(v5[1]);
  }

  result = *(this + 6);
  if (result)
  {
    ++*(result + 2);
    v14 = result;
    if ((*(this + 56) & 1) != 0 || (WebKit::PluginView::manualLoadDidReceiveResponse(result, a2 + 160), WTF::RefPtr<WebKit::PluginView,WTF::RawPtrTraits<WebKit::PluginView>,WTF::DefaultRefDerefTraits<WebKit::PluginView>>::operator=(&v14, *(this + 6)), (result = v14) != 0))
    {
      WebKit::PluginView::manualLoadDidFinishLoading(result);
      v11 = *(this + 6);
      *(this + 6) = 0;
      if (v11)
      {
        if (v11[2] == 1)
        {
          (*(*v11 + 8))(v11);
        }

        else
        {
          --v11[2];
        }
      }

      *(this + 56) = 0;
      result = v14;
      v14 = 0;
      if (result)
      {
        if (*(result + 2) == 1)
        {
          return (*(*result + 1))(result);
        }

        else
        {
          --*(result + 2);
        }
      }
    }
  }

  return result;
}

IPC::Encoder *IPC::MessageSender::send<Messages::WebPageProxy::DidFinishLoadingDataForCustomContentProvider>(uint64_t a1, uint64_t a2)
{
  v4 = (*(*a1 + 56))(a1);
  v6 = IPC::Encoder::operator new(0x238, v5);
  *v6 = 2205;
  *(v6 + 2) = 0;
  *(v6 + 3) = 0;
  *(v6 + 1) = v4;
  *(v6 + 68) = 0;
  *(v6 + 70) = 0;
  *(v6 + 69) = 0;
  IPC::Encoder::encodeHeader(v6);
  v11 = v6;
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v6, *a2);
  IPC::ArgumentCoder<std::span<unsigned char const,18446744073709551615ul>,void>::encode<IPC::Encoder>(v6, **(a2 + 8), *(*(a2 + 8) + 8));
  (*(*a1 + 32))(a1, &v11, 0);
  result = v11;
  v11 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v7);
    return bmalloc::api::tzoneFree(v9, v10);
  }

  return result;
}

void WebKit::WebLocalFrameLoaderClient::updateGlobalHistory(WebKit::WebFrame **this)
{
  v2 = WebKit::WebFrame::page(this[3]);
  if (v2)
  {
    v3 = v2;
    CFRetain(*(v2 + 8));
    v4 = *(this[11] + 1);
    if (v4)
    {
      v5 = *(*(v4 + 208) + 96);
      if (v5)
      {
        ++*(v5 + 24);
      }

      v24 = 0;
      v25 = 0;
      WebCore::ResourceRequest::ResourceRequest(v26);
      WebCore::ResourceResponseBase::ResourceResponseBase(v28);
      v30 = 0;
      v31 = 0;
      v29 = v29 & 0xF1 | 4;
      v6 = *WebCore::ResourceRequestBase::url((v5 + 880));
      if (v6)
      {
        atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed);
      }

      v24 = v6;
      v7 = *(v5 + 1624);
      if (v7)
      {
        atomic_fetch_add_explicit(v7, 2u, memory_order_relaxed);
      }

      v25 = v7;
      WebCore::ResourceRequestBase::operator=(v26, v5 + 680);
      v8 = *(v5 + 872);
      if (v8)
      {
        CFRetain(*(v5 + 872));
      }

      v9 = cf;
      cf = v8;
      if (v9)
      {
        CFRelease(v9);
      }

      WebCore::ResourceResponseBase::operator=(v28, v5 + 1280);
      v10 = *(v5 + 1528);
      if (v10)
      {
        CFRetain(*(v5 + 1528));
      }

      v11 = v30;
      v30 = v10;
      if (v11)
      {
        CFRelease(v11);
      }

      v31 = *(v5 + 1536);
      v12 = *(this[3] + 11);
      v13 = (*(*(v3 + 32) + 56))(v3 + 32);
      v15 = IPC::Encoder::operator new(0x238, v14);
      *v15 = 2214;
      *(v15 + 2) = 0;
      *(v15 + 3) = 0;
      *(v15 + 1) = v13;
      *(v15 + 68) = 0;
      *(v15 + 70) = 0;
      *(v15 + 69) = 0;
      IPC::Encoder::encodeHeader(v15);
      v32 = v15;
      IPC::ArgumentCoder<WebKit::WebNavigationDataStore,void>::encode(v15, &v24);
      IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v15, v12);
      (*(*(v3 + 32) + 32))(v3 + 32, &v32, 0);
      v17 = v32;
      v32 = 0;
      if (v17)
      {
        IPC::Encoder::~Encoder(v17, v16);
        bmalloc::api::tzoneFree(v22, v23);
      }

      v18 = v30;
      v30 = 0;
      if (v18)
      {
        CFRelease(v18);
      }

      WebCore::ResourceResponseBase::~ResourceResponseBase(v28, v16);
      WebCore::ResourceRequest::~ResourceRequest(v26);
      v20 = v25;
      v25 = 0;
      if (v20 && atomic_fetch_add_explicit(v20, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v20, v19);
      }

      v21 = v24;
      v24 = 0;
      if (v21 && atomic_fetch_add_explicit(v21, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v21, v19);
      }

      if (*(v5 + 24) == 1)
      {
        (*(*v5 + 24))(v5);
      }

      else
      {
        --*(v5 + 24);
      }

      CFRelease(*(v3 + 8));
    }

    else
    {
      __break(0xC471u);
    }
  }
}

void WebKit::WebLocalFrameLoaderClient::updateGlobalHistoryRedirectLinks(WebKit::WebFrame **this)
{
  v2 = WebKit::WebFrame::page(this[3]);
  if (v2)
  {
    v3 = v2;
    CFRetain(*(v2 + 8));
    v4 = *(this[11] + 1);
    if (v4)
    {
      v5 = *(*(v4 + 208) + 96);
      if (v5)
      {
        ++v5[6];
      }

      if (*(v5 + 342))
      {
        WebCore::DocumentLoader::clientRedirectDestinationForHistory(&v21, v5);
        v20 = *(this[3] + 11);
        v22[0] = (v5 + 684);
        v22[1] = &v21;
        v22[2] = &v20;
        IPC::MessageSender::send<Messages::WebPageProxy::DidPerformClientRedirect>(v3 + 32, v22);
        v19 = v21;
        v21 = 0;
        if (v19)
        {
          if (atomic_fetch_add_explicit(v19, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v19, v18);
          }
        }
      }

      WebCore::DocumentLoader::serverRedirectSourceForHistory(v22, v5);
      v7 = v22[0];
      if (v22[0])
      {
        if (atomic_fetch_add_explicit(v22[0], 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v7, v6);
        }

        WebCore::DocumentLoader::serverRedirectSourceForHistory(&v21, v5);
        v8 = WebCore::ResourceRequestBase::url((v5 + 220));
        v9 = *(this[3] + 11);
        v10 = (*(*(v3 + 32) + 56))(v3 + 32);
        v12 = IPC::Encoder::operator new(0x238, v11);
        *v12 = 2218;
        *(v12 + 2) = 0;
        *(v12 + 3) = 0;
        *(v12 + 1) = v10;
        *(v12 + 68) = 0;
        *(v12 + 70) = 0;
        *(v12 + 69) = 0;
        IPC::Encoder::encodeHeader(v12);
        v22[0] = v12;
        IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v12, &v21);
        IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v12, v8);
        IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v12, v9);
        (*(*(v3 + 32) + 32))(v3 + 32, v22, 0);
        v14 = v22[0];
        v22[0] = 0;
        if (v14)
        {
          IPC::Encoder::~Encoder(v14, v13);
          bmalloc::api::tzoneFree(v16, v17);
        }

        v15 = v21;
        v21 = 0;
        if (v15 && atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v15, v13);
        }
      }

      if (v5[6] == 1)
      {
        (*(*v5 + 24))(v5);
      }

      else
      {
        --v5[6];
      }

      CFRelease(*(v3 + 8));
    }

    else
    {
      __break(0xC471u);
    }
  }
}

IPC::Encoder *IPC::MessageSender::send<Messages::WebPageProxy::DidPerformClientRedirect>(uint64_t a1, uint64_t **a2)
{
  v4 = (*(*a1 + 56))(a1);
  v6 = IPC::Encoder::operator new(0x238, v5);
  *v6 = 2216;
  *(v6 + 2) = 0;
  *(v6 + 3) = 0;
  *(v6 + 1) = v4;
  *(v6 + 68) = 0;
  *(v6 + 70) = 0;
  *(v6 + 69) = 0;
  IPC::Encoder::encodeHeader(v6);
  v11 = v6;
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v6, *a2);
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v6, a2[1]);
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v6, *a2[2]);
  (*(*a1 + 32))(a1, &v11, 0);
  result = v11;
  v11 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v7);
    return bmalloc::api::tzoneFree(v9, v10);
  }

  return result;
}

WTF::StringImpl *WebCore::DocumentLoader::clientRedirectDestinationForHistory(WebCore::DocumentLoader *this, WebCore::DocumentLoader *a2)
{
  result = WebCore::DocumentLoader::urlForHistory(&v6, a2);
  v5 = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed);
    result = v6;
    *this = v5;
    v6 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        return WTF::StringImpl::destroy(result, v4);
      }
    }
  }

  else
  {
    *this = 0;
  }

  return result;
}

WTF::StringImpl *WebCore::DocumentLoader::serverRedirectSourceForHistory(WebCore::DocumentLoader *this, uint64_t a2)
{
  WebCore::DocumentLoader::urlForHistory(&v14, a2);
  v4 = WebCore::ResourceRequestBase::url((a2 + 880));
  if ((WTF::equal(v14, *v4, v5) & 1) != 0 || (v8 = WebCore::ResourceRequestBase::url((a2 + 880)), v9 = WTF::aboutBlankURL(v8), WTF::equal(*v8, *v9, v10)) || (WebCore::DocumentLoader::urlForHistory(&v13, a2), (v11 = v13) == 0))
  {
    *this = 0;
  }

  else
  {
    atomic_fetch_add_explicit(v13, 2u, memory_order_relaxed);
    v12 = v13;
    *this = v11;
    v13 = 0;
    if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v12, v6);
    }
  }

  result = v14;
  v14 = 0;
  if (result)
  {
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v6);
    }
  }

  return result;
}

uint64_t WebKit::WebLocalFrameLoaderClient::shouldGoToHistoryItem(uint64_t a1, uint64_t a2, char a3, int a4)
{
  if (a4 == 1 || (a3 & 1) != 0)
  {
    v5 = WebKit::WebFrame::page(*(a1 + 24));
    if (!v5)
    {
      LOBYTE(v8) = 0;
      return v8;
    }

    v6 = v5;
    CFRetain(*(v5 + 8));
    v8 = *(a2 + 312);
    v7 = *(a2 + 320);
    v9 = (*(*(v6 + 32) + 56))(v6 + 32);
    v10 = (*(*(v6 + 32) + 48))(v6 + 32);
    if (!v10)
    {
      goto LABEL_25;
    }

    v11 = v10;
    while (1)
    {
      v12 = *v10;
      if ((*v10 & 1) == 0)
      {
        break;
      }

      v13 = *v10;
      atomic_compare_exchange_strong_explicit(v10, &v13, v12 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v13 == v12)
      {
        goto LABEL_10;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v10);
LABEL_10:
    IPC::Connection::createSyncMessageEncoder(0x104C, v9, v34);
    v14 = v34[0];
    IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v34[0], v8);
    IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v14, v7);
    v15 = IPC::Connection::sendSyncMessage(v11, v34[1], v34, 0, &v32, INFINITY);
    if (v33)
    {
      if (v33 != 1)
      {
        mpark::throw_bad_variant_access(v15);
      }

      v17 = v32;
      v18 = 1;
      goto LABEL_22;
    }

    v17 = v32;
    v32 = 0;
    if (*(v17 + 50) == 3194)
    {
      v19 = 11;
    }

    else
    {
      ShouldGoToHistory = IPC::Decoder::decode<std::tuple<WebCore::ShouldGoToHistoryItem>>(v17);
      if (ShouldGoToHistory >= 0x100u)
      {
        LOBYTE(v8) = ShouldGoToHistory;
        v18 = 0;
        goto LABEL_19;
      }

      v19 = 14;
    }

    IPC::Decoder::~Decoder(v17);
    bmalloc::api::tzoneFree(v21, v22);
    v18 = 1;
    v17 = v19;
LABEL_19:
    if (!v33)
    {
      v23 = v32;
      v32 = 0;
      if (v23)
      {
        IPC::Decoder::~Decoder(v23);
        bmalloc::api::tzoneFree(v28, v29);
      }
    }

LABEL_22:
    v24 = v34[0];
    v34[0] = 0;
    if (v24)
    {
      IPC::Encoder::~Encoder(v24, v16);
      bmalloc::api::tzoneFree(v26, v27);
    }

    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v11);
    if (!v18)
    {
      if (v17)
      {
        IPC::Decoder::~Decoder(v17);
        bmalloc::api::tzoneFree(v30, v31);
      }

      goto LABEL_28;
    }

LABEL_25:
    LOBYTE(v8) = 0;
LABEL_28:
    CFRelease(*(v6 + 8));
    return v8;
  }

  result = 1296;
  __break(0xC471u);
  return result;
}

void WebKit::WebLocalFrameLoaderClient::shouldGoToHistoryItemAsync(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = WebKit::WebFrame::page(*(a1 + 24));
  if (v5)
  {
    v6 = v5;
    CFRetain(*(v5 + 8));
    v23 = *(a2 + 312);
    v7 = WebCore::HistoryItem::isInBackForwardCache(a2);
    v8 = *(v6 + 32);
    v24 = &v23;
    v25[0] = v7;
    v9 = (*(v8 + 56))(v6 + 32);
    v11 = IPC::Encoder::operator new(0x238, v10);
    *v11 = 2372;
    *(v11 + 2) = 0;
    *(v11 + 3) = 0;
    *(v11 + 1) = v9;
    *(v11 + 68) = 0;
    *(v11 + 70) = 0;
    *(v11 + 69) = 0;
    IPC::Encoder::encodeHeader(v11);
    v27 = v11;
    IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v11, v23);
    IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v11, *(&v23 + 1));
    IPC::Encoder::operator<<<BOOL &>(v11, v25);
    v12 = *a3;
    *a3 = 0;
    v13 = WTF::fastMalloc(0x10);
    *v13 = &unk_1F11320D8;
    v13[1] = v12;
    if (WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1)
    {
      __break(0xC471u);
    }

    else
    {
      v14 = v13;
      IdentifierInternal = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
      v26[0] = v14;
      v26[1] = IdentifierInternal;
      (*(*(v6 + 32) + 40))(v6 + 32, &v27, v26, 0);
      v17 = v26[0];
      v26[0] = 0;
      if (v17)
      {
        (*(*v17 + 8))(v17);
      }

      v18 = v27;
      v27 = 0;
      if (v18)
      {
        IPC::Encoder::~Encoder(v18, v16);
        bmalloc::api::tzoneFree(v19, v20);
      }

      CFRelease(*(v6 + 8));
    }
  }

  else
  {
    v21 = *a3;
    *a3 = 0;
    (*(*v21 + 16))(v21, 0);
    v22 = *(*v21 + 8);

    v22(v21);
  }
}

void WebKit::WebLocalFrameLoaderClient::didDisplayInsecureContent(WebKit::WebFrame **this)
{
  v2 = WebKit::WebFrame::page(this[3]);
  if (!v2)
  {
    return;
  }

  v3 = v2;
  CFRetain(*(v2 + 8));
  v20 = 0;
  (*(**(v3 + 384) + 120))(*(v3 + 384), v3, this[3], &v20);
  v5 = v3 + 32;
  v6 = *(this[3] + 11);
  {
    v17 = WebKit::WebProcess::operator new(0x370, v4);
    WebKit::WebProcess::singleton(void)::process = WebKit::WebProcess::WebProcess(v17);
  }

  v21 = &unk_1F1122420;
  WebKit::UserData::transform(v20, &v21, &v18);
  v7 = v18;
  if (v18)
  {
    CFRetain(v18[1]);
  }

  v19 = v7;
  v8 = (*(*v5 + 56))(v3 + 32);
  v10 = IPC::Encoder::operator new(0x238, v9);
  *v10 = 2196;
  *(v10 + 2) = 0;
  *(v10 + 3) = 0;
  *(v10 + 1) = v8;
  *(v10 + 68) = 0;
  *(v10 + 70) = 0;
  *(v10 + 69) = 0;
  IPC::Encoder::encodeHeader(v10);
  v21 = v10;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v10, v6);
  IPC::ArgumentCoder<WebKit::UserData,void>::encode(v10, &v19);
  (*(*v5 + 32))(v3 + 32, &v21, 0);
  v12 = v21;
  v21 = 0;
  if (v12)
  {
    IPC::Encoder::~Encoder(v12, v11);
    bmalloc::api::tzoneFree(v15, v16);
    if (!v7)
    {
      goto LABEL_8;
    }

LABEL_15:
    CFRelease(v7[1]);
    goto LABEL_8;
  }

  if (v7)
  {
    goto LABEL_15;
  }

LABEL_8:
  v13 = v18;
  v18 = 0;
  if (v13)
  {
    CFRelease(v13[1]);
  }

  v14 = v20;
  v20 = 0;
  if (v14)
  {
    CFRelease(*(v14 + 1));
  }

  CFRelease(*(v3 + 8));
}

void WebKit::WebLocalFrameLoaderClient::didRunInsecureContent(WebKit::WebFrame **this, WebCore::SecurityOrigin *a2)
{
  v3 = WebKit::WebFrame::page(this[3]);
  if (!v3)
  {
    return;
  }

  v4 = v3;
  CFRetain(*(v3 + 8));
  v21 = 0;
  (*(**(v4 + 384) + 128))(*(v4 + 384), v4, this[3], &v21);
  v6 = v4 + 32;
  v7 = *(this[3] + 11);
  {
    v18 = WebKit::WebProcess::operator new(0x370, v5);
    WebKit::WebProcess::singleton(void)::process = WebKit::WebProcess::WebProcess(v18);
  }

  v22 = &unk_1F1122420;
  WebKit::UserData::transform(v21, &v22, &v19);
  v8 = v19;
  if (v19)
  {
    CFRetain(v19[1]);
  }

  v20 = v8;
  v9 = (*(*v6 + 56))(v4 + 32);
  v11 = IPC::Encoder::operator new(0x238, v10);
  *v11 = 2229;
  *(v11 + 2) = 0;
  *(v11 + 3) = 0;
  *(v11 + 1) = v9;
  *(v11 + 68) = 0;
  *(v11 + 70) = 0;
  *(v11 + 69) = 0;
  IPC::Encoder::encodeHeader(v11);
  v22 = v11;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v11, v7);
  IPC::ArgumentCoder<WebKit::UserData,void>::encode(v11, &v20);
  (*(*v6 + 32))(v4 + 32, &v22, 0);
  v13 = v22;
  v22 = 0;
  if (v13)
  {
    IPC::Encoder::~Encoder(v13, v12);
    bmalloc::api::tzoneFree(v16, v17);
    if (!v8)
    {
      goto LABEL_8;
    }

LABEL_15:
    CFRelease(v8[1]);
    goto LABEL_8;
  }

  if (v8)
  {
    goto LABEL_15;
  }

LABEL_8:
  v14 = v19;
  v19 = 0;
  if (v14)
  {
    CFRelease(v14[1]);
  }

  v15 = v21;
  v21 = 0;
  if (v15)
  {
    CFRelease(*(v15 + 1));
  }

  CFRelease(*(v4 + 8));
}

BOOL WebKit::WebLocalFrameLoaderClient::shouldFallBack(WebKit::WebLocalFrameLoaderClient *this, const WebCore::ResourceError *a2)
{
  if ((_MergedGlobals_115 & 1) == 0)
  {
    WebCore::ResourceRequest::ResourceRequest(v11);
    WebKit::cancelledError(v11, v15);
    WebCore::ResourceError::ResourceError(&qword_1ED642CD8, v15);
    WebCore::ResourceError::~ResourceError(v15, v8);
    WebCore::ResourceRequest::~ResourceRequest(v11);
    _MergedGlobals_115 = 1;
  }

  if ((byte_1ED642C89 & 1) == 0)
  {
    WebCore::ResourceResponseBase::ResourceResponseBase(v11);
    v13 = 0;
    v14 = 0;
    v12 = v12 & 0xF1 | 4;
    WebKit::pluginWillHandleLoadError(v11, v15);
    WebCore::ResourceError::ResourceError(&qword_1ED642D28, v15);
    WebCore::ResourceError::~ResourceError(v15, v9);
    WebCore::ResourceResponse::~ResourceResponse(v11, v10);
    byte_1ED642C89 = 1;
  }

  MEMORY[0x19EB12BA0](a2);
  v3 = *(a2 + 14);
  MEMORY[0x19EB12BA0](&qword_1ED642CD8);
  result = 0;
  if (v3 != dword_1ED642D10 || (MEMORY[0x19EB12BA0](a2), MEMORY[0x19EB12BA0](&qword_1ED642CD8), (WTF::equal(*a2, qword_1ED642CD8, v4) & 1) == 0))
  {
    MEMORY[0x19EB12BA0](a2);
    v6 = *(a2 + 14);
    MEMORY[0x19EB12BA0](&qword_1ED642D28);
    if (v6 != dword_1ED642D60)
    {
      return 1;
    }

    MEMORY[0x19EB12BA0](a2);
    MEMORY[0x19EB12BA0](&qword_1ED642D28);
    if ((WTF::equal(*a2, qword_1ED642D28, v7) & 1) == 0)
    {
      return 1;
    }
  }

  return result;
}

void WebKit::WebLocalFrameLoaderClient::loadStorageAccessQuirksIfNeeded(WebKit::WebFrame **this)
{
  v2 = WebKit::WebFrame::page(this[3]);
  if (v2)
  {
    v3 = v2;
    CFRetain(*(v2 + 8));
    if (!WebKit::WebFrame::isMainFrame(this[3]))
    {
      goto LABEL_3;
    }

    v4 = *(this[11] + 1);
    if (!v4)
    {
      __break(0xC471u);
      return;
    }

    v5 = *(v4 + 224);
    if (!v5)
    {
      goto LABEL_3;
    }

    v5[7] += 2;
    WTF::URL::viewWithoutQueryOrFragmentIdentifier((v5 + 200));
    if ((v6 & 0x100000000) != 0)
    {
      if (v6)
      {
        WTF::StringImpl::createWithoutCopyingNonEmpty();
LABEL_10:
        v7 = v21[0];
        goto LABEL_11;
      }
    }

    else if (v6)
    {
      WTF::StringImpl::createWithoutCopyingNonEmpty();
      goto LABEL_10;
    }

    v7 = MEMORY[0x1E696EB88];
    atomic_fetch_add_explicit(MEMORY[0x1E696EB88], 2u, memory_order_relaxed);
LABEL_11:
    v20 = v7;
    MEMORY[0x19EB01DD0](v21, &v20, 0);
    v9 = v20;
    v20 = 0;
    if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v9, v8);
    }

    {
      v10 = WebKit::WebProcess::singleton(void)::process;
    }

    else
    {
      v10 = WebKit::WebProcess::operator new(0x370, v8);
      WebKit::WebProcess::singleton(void)::process = WebKit::WebProcess::WebProcess(v10);
    }

    WebCore::RegistrableDomain::RegistrableDomain(&v20, v21);
    haveStorageAccessQuirksForDomain = WebKit::WebProcess::haveStorageAccessQuirksForDomain(v10, &v20, v11);
    v14 = v20;
    v20 = 0;
    if (v14 && atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      v14 = WTF::StringImpl::destroy(v14, v12);
    }

    if (haveStorageAccessQuirksForDomain)
    {
      v16 = WebKit::WebProcess::singleton(v14, v12);
      v17 = *(WebKit::WebProcess::ensureNetworkProcessConnection(v16) + 24);
      v20 = v21;
      WTF::WeakPtrFactoryWithBitField<WebCore::EventTarget,WebCore::WeakPtrImplWithEventTargetData>::initializeIfNeeded(v5 + 4, v5);
      v18 = (*(v5 + 2) & 0xFFFFFFFFFFFFLL);
      atomic_fetch_add(v18, 1u);
      v19 = v18;
      IPC::Connection::sendWithAsyncReply<Messages::NetworkConnectionToWebProcess::StorageAccessQuirkForTopFrameDomain,WebKit::WebLocalFrameLoaderClient::loadStorageAccessQuirksIfNeeded(void)::$_0>(v17, &v20, &v19);
      if (v19)
      {
        WTF::ThreadSafeRefCounted<WebCore::WeakPtrImplWithEventTargetData,(WTF::DestructionThread)0>::deref(v19, v12);
      }
    }

    v15 = v21[0];
    v21[0] = 0;
    if (v15 && atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v15, v12);
    }

    if (v5[7] == 2)
    {
      WebCore::Node::removedLastRef(v5);
    }

    else
    {
      v5[7] -= 2;
    }

LABEL_3:
    CFRelease(*(v3 + 8));
  }
}

uint64_t IPC::Connection::sendWithAsyncReply<Messages::NetworkConnectionToWebProcess::StorageAccessQuirkForTopFrameDomain,WebKit::WebLocalFrameLoaderClient::loadStorageAccessQuirksIfNeeded(void)::$_0>(uint64_t *a1, uint64_t **a2, uint64_t *a3)
{
  v5 = *a3;
  *a3 = 0;
  v6 = WTF::fastMalloc(0x10);
  *v6 = &unk_1F1132100;
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
    *v10 = 494;
    *(v10 + 68) = 0;
    *(v10 + 70) = 0;
    *(v10 + 69) = 0;
    *(v10 + 2) = 0;
    *(v10 + 3) = 0;
    *(v10 + 1) = 0;
    IPC::Encoder::encodeHeader(v10);
    v17 = v10;
    IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v10, *a2);
    v16[0] = v7;
    v16[1] = IdentifierInternal;
    IPC::Connection::sendMessageWithAsyncReply(a1, &v17, v16, 0, 0);
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

void WebKit::WebLocalFrameLoaderClient::frameLoadCompleted(WebKit::WebFrame **this)
{
  if (WebKit::WebFrame::isMainFrame(this[3]))
  {

    WebKit::WebLocalFrameLoaderClient::completePageTransitionIfNeeded(this);
  }
}

double WebKit::WebLocalFrameLoaderClient::saveViewStateToItem(WebKit::WebFrame **this, WebCore::HistoryItem *a2)
{
  if (WebKit::WebFrame::isMainFrame(this[3]))
  {
    v5 = WebKit::WebFrame::page(this[3]);
    *(a2 + 260) = *(v5 + 1283) ^ 1;
    result = *(v5 + 1064);
    *(a2 + 28) = result;
    *(a2 + 29) = *(v5 + 1056);
  }

  return result;
}

uint64_t WebKit::WebLocalFrameLoaderClient::restoreViewState(uint64_t this)
{
  v1 = *(*(this + 88) + 8);
  if (v1)
  {
    v2 = *(v1 + 216);
    if (v2)
    {
      v3 = this;
      v4 = *(*(*(v1 + 208) + 32) + 16);
      if (WebKit::WebFrame::isMainFrame(*(this + 24)))
      {
        v5 = WebKit::WebFrame::page(*(v3 + 24));

        return WebKit::WebPage::restorePageState(v5, v4);
      }

      else
      {
        this = WebCore::LocalFrameView::wasScrolledByUser(v2);
        if ((this & 1) == 0)
        {
          WebCore::HistoryItem::scrollPosition(v4);
          return WebCore::LocalFrameView::setScrollPosition();
        }
      }
    }
  }

  else
  {
    this = 92;
    __break(0xC471u);
  }

  return this;
}

void WebKit::WebLocalFrameLoaderClient::provisionalLoadStarted(WebKit::WebFrame **this)
{
  v2 = WebKit::WebFrame::page(this[3]);
  if (v2)
  {
    v3 = v2;
    CFRetain(*(v2 + 8));
    if (WebKit::WebFrame::isMainFrame(this[3]))
    {
      WebKit::WebPage::didStartPageTransition(v3);
      *(this + 57) = 0;
    }

    v4 = *(v3 + 1);

    CFRelease(v4);
  }
}

void WebKit::WebLocalFrameLoaderClient::createDocumentLoader(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = WebKit::WebFrame::page(*(a1 + 24));
  v9 = v8;
  if (v8)
  {
    CFRetain(*(v8 + 8));
  }

  v10 = *(*(a1 + 88) + 8);
  if (v10)
  {
    ++v10[4];
    WebKit::WebPage::createDocumentLoader(v9, v10, a2, a3, a4);
    if (v10[4] == 1)
    {
      (*(*v10 + 8))(v10);
    }

    else
    {
      --v10[4];
    }

    if (v9)
    {
      v11 = *(v9 + 8);

      CFRelease(v11);
    }
  }

  else
  {
    __break(0xC471u);
  }
}

void WebKit::WebLocalFrameLoaderClient::updateCachedDocumentLoader(WebKit::WebFrame **this, WebCore::DocumentLoader *a2)
{
  v3 = WebKit::WebFrame::page(this[3]);
  v4 = v3;
  if (v3)
  {
    CFRetain(*(v3 + 8));
  }

  v5 = *(this[11] + 1);
  if (v5)
  {
    v6 = *(v5 + 16);
    *(v5 + 16) = v6 + 1;
    if (*(v4 + 1736))
    {
      v7 = *(v5 + 120);
      if (v7)
      {
        if (*(v7 + 8) == v5)
        {
          WebCore::DocumentLoader::setNavigationID();
          *(v4 + 1736) = 0;
          v6 = *(v5 + 16) - 1;
        }
      }
    }

    if (v6)
    {
      *(v5 + 16) = v6;
    }

    else
    {
      (*(*v5 + 8))(v5);
    }

    v8 = *(v4 + 8);

    CFRelease(v8);
  }

  else
  {
    __break(0xC471u);
  }
}

void WebKit::WebLocalFrameLoaderClient::setTitle(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v6 = WebKit::WebFrame::page(*(a1 + 24));
  if (v6)
  {
    v7 = v6;
    CFRetain(*(v6 + 8));
    v8 = *(*(a1 + 24) + 88);
    v9 = (*(*(v7 + 32) + 56))(v7 + 32);
    v11 = IPC::Encoder::operator new(0x238, v10);
    *v11 = 2236;
    *(v11 + 2) = 0;
    *(v11 + 3) = 0;
    *(v11 + 1) = v9;
    *(v11 + 68) = 0;
    *(v11 + 70) = 0;
    *(v11 + 69) = 0;
    IPC::Encoder::encodeHeader(v11);
    v16 = v11;
    IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v11, a2);
    IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v11, a3);
    IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v11, v8);
    (*(*(v7 + 32) + 32))(v7 + 32, &v16, 0);
    v13 = v16;
    v16 = 0;
    if (v13)
    {
      IPC::Encoder::~Encoder(v13, v12);
      bmalloc::api::tzoneFree(v14, v15);
    }

    CFRelease(*(v7 + 8));
  }
}

uint64_t WebKit::WebLocalFrameLoaderClient::hasCustomUserAgent(WebKit::WebFrame **this)
{
  v1 = WebKit::WebFrame::page(this[3]);
  if (v1)
  {
    v2 = v1;
    CFRetain(*(v1 + 8));
    v3 = *(v2 + 112);
    CFRelease(*(v2 + 8));
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

void WebKit::WebLocalFrameLoaderClient::userAgent(WebKit::WebFrame **this@<X0>, atomic_uint **a2@<X8>)
{
  v4 = WebKit::WebFrame::page(this[3]);
  if (v4)
  {
    v5 = v4;
    CFRetain(*(v4 + 8));
    v6 = *(v5 + 104);
    if (v6)
    {
      atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed);
    }

    *a2 = v6;
    v7 = *(v5 + 8);

    CFRelease(v7);
  }

  else
  {
    *a2 = 0;
  }
}

void WebKit::WebLocalFrameLoaderClient::overrideContentSecurityPolicy(WebKit::WebFrame **this@<X0>, atomic_uint **a2@<X8>)
{
  v3 = WebKit::WebFrame::page(this[3]);
  if (v3)
  {
    v4 = v3;
    CFRetain(*(v3 + 8));
    v5 = *(v4 + 1768);
    if (v5)
    {
      atomic_fetch_add_explicit(v5, 2u, memory_order_relaxed);
    }

    *a2 = v5;
    v6 = *(v4 + 8);

    CFRelease(v6);
  }

  else
  {
    *a2 = 0;
  }
}

void WebKit::WebLocalFrameLoaderClient::transitionToCommittedFromCachedFrame(uint64_t a1)
{
  v1 = *(*(a1 + 88) + 8);
  if (v1)
  {
    v3 = *(*(v1 + 208) + 96);
    if (WebKit::WebFrame::isMainFrame(*(a1 + 24)))
    {
      v4 = WebKit::WebFrame::page(*(a1 + 24));
      if (v4)
      {
        v5 = v4;
        CFRetain(*(v4 + 8));
        *(a1 + 58) = WebKit::WebPage::shouldUseCustomContentProviderForResponse(v5, (v3 + 1280));
        CFRelease(v5[1]);
      }

      else
      {
        *(a1 + 58) = WebKit::WebPage::shouldUseCustomContentProviderForResponse(0, (v3 + 1280));
      }
    }

    else
    {
      *(a1 + 58) = 0;
    }

    *(a1 + 59) = 1;
  }

  else
  {
    __break(0xC471u);
  }
}

void WebKit::WebLocalFrameLoaderClient::transitionToCommittedForNewPage(uint64_t a1, char a2)
{
  v4 = WebKit::WebFrame::page(*(a1 + 24));
  if (v4)
  {
    v5 = v4;
    CFRetain(*(v4 + 8));
    isMainFrame = WebKit::WebFrame::isMainFrame(*(a1 + 24));
    if (isMainFrame)
    {
      v7 = *(v5 + 204) ^ 1;
    }

    else
    {
      v7 = 0;
    }

    v8 = *(*(a1 + 88) + 8);
    if (v8)
    {
      ++*(v8 + 16);
      v9 = *(v8 + 216);
      if (v9)
      {
        ++*(v9 + 8);
        LOBYTE(v19) = *(v9 + 1320);
        BYTE4(v19) = *(v9 + 1340);
        v20 = *(v9 + 1360);
      }

      else
      {
        v19 = 0;
        v20 = 0;
      }

      v21 = v8;
      if (isMainFrame)
      {
        v17 = *(*(v8 + 208) + 96);
        v10 = isMainFrame;
        if (v17)
        {
          LOBYTE(isMainFrame) = WebKit::WebPage::shouldUseCustomContentProviderForResponse(v5, (v17 + 1280));
        }

        else
        {
          LOBYTE(isMainFrame) = 0;
        }
      }

      else
      {
        v10 = 0;
      }

      *(a1 + 58) = isMainFrame;
      *(a1 + 59) = 0;
      if (((v10 | WebKit::WebFrame::isRootFrame(*(a1 + 24)) ^ 1) & 1) != 0 || !v9)
      {
        v11 = *(v5 + 64);
      }

      else
      {
        WebCore::Widget::frameRect(v9);
      }

      v24 = v11;
      v22 = WebKit::WebPage::fixedLayoutSize(v5);
      WebCore::LocalFrame::createView();
      v12 = *(v21 + 216);
      if (v12)
      {
        ++*(v12 + 8);
      }

      if (v19)
      {
        WebCore::LocalFrameView::setOverrideSizeForCSSDefaultViewportUnits();
      }

      if ((v19 & 0x100000000) != 0)
      {
        WebCore::LocalFrameView::setOverrideSizeForCSSSmallViewportUnits();
      }

      if (v20)
      {
        WebCore::LocalFrameView::setOverrideSizeForCSSLargeViewportUnits();
      }

      v13 = *(v5 + 864);
      if (v13)
      {
        v18 = HIDWORD(v13);
        if (SHIDWORD(v13) <= 1)
        {
          LODWORD(v18) = 1;
        }

        v22.m_width = *(v5 + 864);
        v22.m_height = v18;
        WebCore::LocalFrameView::enableFixedWidthAutoSizeMode(v12, 1, &v22);
        if (*(v5 + 880) == 1)
        {
          WebCore::LocalFrameView::setAutoSizeFixedMinimumHeight(v12);
        }
      }

      v14 = *(v5 + 872);
      v23 = v14;
      if (v14.m_width && HIDWORD(*&v14))
      {
        if (v10)
        {
          WebCore::LocalFrameView::enableSizeToContentAutoSizeMode(v12, 1, &v23);
        }

        if (*(v5 + 880) == 1)
        {
          WebCore::LocalFrameView::setAutoSizeFixedMinimumHeight(v12);
        }
      }

      if (*(v5 + 892))
      {
        WebCore::LocalFrameView::setSizeForCSSDefaultViewportUnits();
      }

      *(v12 + 315) = v7 & 1;
      WebCore::LocalFrameView::setVisualUpdatesAllowedByClient(v12);
      v15 = *(v5 + 72);
      if (v15)
      {
        ++v15[4];
      }

      (*(*v15 + 144))(&v22, v15);
      WebCore::LocalFrameView::setViewExposedRect();
      if (v10)
      {
        (*(*v15 + 216))(v15);
        WebCore::ScrollView::setDelegatedScrollingMode();
      }

      v16 = *(v5 + 56);
      if (v16)
      {
        ++*(v16 + 2);
        (*(*v15 + 208))(v15);
        WebCore::Page::setDelegatesScaling(v16);
        WTF::RefCounted<WebCore::Page>::deref(v16 + 2);
      }

      else
      {
        (*(*v15 + 208))(v15);
        WebCore::Page::setDelegatesScaling(0);
      }

      if (*(*(v5 + 40) + 304))
      {
        WebCore::LocalFrameView::setScrollPinningBehavior();
      }

      if ((a2 & 1) == 0)
      {
        WebKit::WebPage::scheduleFullEditorStateUpdate(v5);
      }

      if (v15[4] == 1)
      {
        (*(*v15 + 24))(v15);
      }

      else
      {
        --v15[4];
      }

      if (*(v12 + 8) == 1)
      {
        (*(*v12 + 8))(v12);
      }

      else
      {
        --*(v12 + 8);
      }

      if (v9)
      {
        if (*(v9 + 8) == 1)
        {
          (*(*v9 + 8))(v9);
        }

        else
        {
          --*(v9 + 8);
        }
      }

      if (*(v21 + 16) == 1)
      {
        (*(*v21 + 8))(v21);
      }

      else
      {
        --*(v21 + 16);
      }

      CFRelease(*(v5 + 8));
    }

    else
    {
      __break(0xC471u);
    }
  }
}

void WebKit::WebLocalFrameLoaderClient::createFrame(WebKit::WebFrame **this@<X0>, const WTF::AtomString *a2@<X1>, WebCore::HTMLFrameOwnerElement *a3@<X2>, void *a4@<X8>)
{
  v8 = WebKit::WebFrame::page(this[3]);
  v9 = v8;
  if (v8)
  {
    CFRetain(*(v8 + 8));
  }

  WebKit::WebFrame::createSubframe(v9, this[3], a2, a3, &v15);
  v10 = v15;
  v11 = *(v15 + 40);
  if (v11 && (v12 = *(v11 + 8)) != 0 && *(v12 + 136) != 1)
  {
    v13 = *(v12 + 16);
    *(v12 + 16) = v13 + 1;
    v14 = *(v12 + 24);
    if (v14 && *(v14 + 8))
    {
      *a4 = v12;
    }

    else
    {
      *a4 = 0;
      if (!v13)
      {
        (*(*v12 + 8))(v12);
        v10 = v15;
        v15 = 0;
        if (!v10)
        {
          goto LABEL_11;
        }

        goto LABEL_10;
      }

      *(v12 + 16) = v13;
    }
  }

  else
  {
    *a4 = 0;
  }

  v15 = 0;
LABEL_10:
  CFRelease(*(v10 + 8));
LABEL_11:
  CFRelease(v9[1]);
}

void WebKit::WebLocalFrameLoaderClient::createPlugin(WebKit::PluginView *this@<X1>, WebCore::HTMLPlugInElement *a2@<X2>, WTF::URL *a3@<X5>, uint64_t a4@<X0>, int a5@<W6>, uint64_t *a6@<X8>)
{
  if (a5)
  {
    v6 = *(a4 + 59) ^ 1;
  }

  else
  {
    v6 = 0;
  }

  WebKit::PluginView::create(this, a2, a3, (v6 & 1), a6);
}

uint64_t WebKit::WebLocalFrameLoaderClient::redirectDataToPlugin(WebKit::WebLocalFrameLoaderClient *this, WebCore::Widget *a2)
{
  if ((*(*a2 + 248))(a2))
  {
    ++*(a2 + 2);
    result = *(this + 6);
    *(this + 6) = a2;
    if (result)
    {
      if (*(result + 8) == 1)
      {
        v5 = *(*result + 8);

        return v5();
      }

      else
      {
        --*(result + 8);
      }
    }
  }

  else
  {
    result = 96;
    __break(0xC471u);
  }

  return result;
}

uint64_t WebKit::WebLocalFrameLoaderClient::objectContentType(WebKit::WebFrame **this, const WTF::URL *a2, atomic_uint **a3)
{
  v4 = *a3;
  if (*a3)
  {
    atomic_fetch_add_explicit(v4, 2u, memory_order_relaxed);
    v34 = v4;
    if (v4[1])
    {
      goto LABEL_3;
    }
  }

  else
  {
    v34 = 0;
  }

  result = WTF::URL::path(a2);
  if ((a2 & 0x100000000) != 0)
  {
    if (!a2)
    {
      goto LABEL_39;
    }

    v7 = a2 - 1;
    while (*(result + v7) != 46)
    {
      if (--v7 == -1)
      {
        goto LABEL_39;
      }
    }
  }

  else
  {
    if (!a2)
    {
      goto LABEL_39;
    }

    v7 = a2 - 1;
    while (*(result + 2 * v7) != 46)
    {
      if (--v7 == -1)
      {
        goto LABEL_39;
      }
    }
  }

  v14 = (v7 + 1);
  v15 = (a2 - v14);
  if (a2 <= v14)
  {
    v15 = 0x100000000;
    v17 = "";
    goto LABEL_30;
  }

  v16 = a2 - v14;
  if ((a2 & 0x100000000) == 0)
  {
    if (v16 >= v15)
    {
      v17 = (result + 2 * v14);
      goto LABEL_30;
    }

LABEL_75:
    __break(1u);
    return result;
  }

  if (v16 < v15)
  {
    goto LABEL_75;
  }

  v17 = (result + v14);
  v15 |= 0x100000000uLL;
LABEL_30:
  v35 = v17;
  v36 = v15;
  LOBYTE(v37) = BYTE4(v15);
  WTF::StringView::convertToASCIILowercase(&v33, &v35);
  WebCore::MIMETypeRegistry::mimeTypeForExtension();
  v5 = v35;
  v34 = v35;
  v35 = 0;
  if (v4)
  {
    if (atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v4, a2);
      v18 = v35;
      v35 = 0;
      if (v18)
      {
        if (atomic_fetch_add_explicit(v18, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v18, a2);
        }
      }
    }
  }

  if (v5 && *(v5 + 1))
  {
    LODWORD(v19) = 1;
  }

  else
  {
    v21 = WebKit::WebFrame::page(this[3]);
    v19 = v21;
    if (!v21)
    {
      goto LABEL_63;
    }

    CFRetain(*(v21 + 8));
    v22 = *(v19 + 56);
    if (v22)
    {
      ++*(v22 + 2);
    }

    WebCore::Page::protectedPluginData(&v32, v22);
    WebCore::PluginData::webVisibleMimeTypes(&v35, v32);
    if (v37)
    {
      v25 = 32 * v37 - 32;
      v26 = v35 + 16;
      do
      {
        v38 = &v33;
        v27 = WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::findIf<unsigned long WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::find<WebCore::RegistrableDomain>(WebCore::RegistrableDomain const&)::{lambda(WebCore::RegistrableDomain&)#1}>(v26, &v38, v24);
        v28 = v27 != -1;
        v29 = v27 != -1 || v25 == 0;
        v25 -= 32;
        v26 += 32;
      }

      while (!v29);
    }

    else
    {
      v28 = 0;
    }

    WTF::Vector<WebCore::MimeClassInfo,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v35, v23);
    v30 = v32;
    v32 = 0;
    if (v30)
    {
      WTF::RefCounted<WebCore::PluginData>::deref(v30, a2);
    }

    if (v22)
    {
      WTF::RefCounted<WebCore::Page>::deref(v22 + 2);
    }

    if (v28)
    {
      LOBYTE(v5) = 3;
    }

    else
    {
LABEL_63:
      LOBYTE(v5) = 2;
    }

    if (v19)
    {
      CFRelease(*(v19 + 8));
      LODWORD(v19) = 0;
    }
  }

  v31 = v33;
  v33 = 0;
  if (v31 && atomic_fetch_add_explicit(v31, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v31, a2);
    if (!v19)
    {
      goto LABEL_40;
    }
  }

  else if (!v19)
  {
    goto LABEL_40;
  }

LABEL_3:
  if ((WebCore::MIMETypeRegistry::isSupportedImageMIMEType(&v34, a2) & 1) == 0)
  {
    v8 = WebKit::WebFrame::page(this[3]);
    if (v8)
    {
      v9 = v8;
      CFRetain(*(v8 + 8));
      v10 = *(v9 + 56);
      if (v10)
      {
        ++*(v10 + 2);
      }

      WebCore::Page::protectedPluginData(&v35, v10);
      v12 = WebCore::PluginData::supportsMimeType();
      v13 = v35;
      v35 = 0;
      if (v13)
      {
        WTF::RefCounted<WebCore::PluginData>::deref(v13, v11);
      }

      if (v10)
      {
        WTF::RefCounted<WebCore::Page>::deref(v10 + 2);
      }

      CFRelease(*(v9 + 8));
      if (v12)
      {
        LOBYTE(v5) = 3;
        goto LABEL_40;
      }
    }

    if ((WebCore::MIMETypeRegistry::isSupportedNonImageMIMEType(&v34, a2) & 1) == 0)
    {
      LOBYTE(v5) = WebCore::MIMETypeRegistry::isPDFMIMEType(&v34, a2);
      goto LABEL_40;
    }

LABEL_39:
    LOBYTE(v5) = 2;
    goto LABEL_40;
  }

  LOBYTE(v5) = 1;
LABEL_40:
  v20 = v34;
  v34 = 0;
  if (v20)
  {
    if (atomic_fetch_add_explicit(v20, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v20, a2);
    }
  }

  return v5;
}

void WebKit::WebLocalFrameLoaderClient::overrideMediaType(WebKit::WebFrame **this@<X0>, atomic_uint **a2@<X8>)
{
  v3 = WebKit::WebFrame::page(this[3]);
  if (v3)
  {
    v4 = v3;
    CFRetain(*(v3 + 8));
    v5 = *(v4 + 1928);
    if (v5)
    {
      atomic_fetch_add_explicit(v5, 2u, memory_order_relaxed);
    }

    *a2 = v5;
    v6 = *(v4 + 8);

    CFRelease(v6);
  }

  else
  {
    v7 = *MEMORY[0x1E696EB90];
    if (*MEMORY[0x1E696EB90])
    {
      atomic_fetch_add_explicit(v7, 2u, memory_order_relaxed);
    }

    *a2 = v7;
  }
}

void WebKit::WebLocalFrameLoaderClient::dispatchDidClearWindowObjectInWorld(WebKit::WebFrame **this, WebCore::DOMWrapperWorld *a2)
{
  v4 = WebKit::WebFrame::page(this[3]);
  if (v4)
  {
    v5 = v4;
    CFRetain(*(v4 + 8));
    (*(**(v5 + 384) + 168))(*(v5 + 384), v5, this[3], a2);
    {
      v7 = WebKit::WebProcess::singleton(void)::process;
    }

    else
    {
      v10 = WebKit::WebProcess::operator new(0x370, v6);
      v7 = WebKit::WebProcess::WebProcess(v10);
      WebKit::WebProcess::singleton(void)::process = v7;
    }

    v8 = *(v7 + 67);
    if (v8)
    {
      atomic_fetch_add(v8 + 8, 1u);
      if (!*(a2 + 12))
      {
        WebKit::WebAutomationSessionProxy::didClearWindowObjectForFrame(v8, this[3]);
      }

      if (atomic_fetch_add(v8 + 8, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v8 + 8);
        (*(*v8 + 24))(v8);
      }
    }

    v9 = *(v5 + 8);

    CFRelease(v9);
  }
}

void WebKit::WebLocalFrameLoaderClient::dispatchGlobalObjectAvailable(WebKit::WebFrame **this, WebCore::DOMWrapperWorld *a2)
{
  v4 = WebKit::WebFrame::page(this[3]);
  if (v4)
  {
    v5 = v4;
    CFRetain(*(v4 + 8));
    v6 = *(v5 + 592);
    if (v6)
    {
      v7 = v6 + 4;
      ++v6[4];
      WebKit::WebExtensionControllerProxy::globalObjectIsAvailableForFrame(v6, v5, this[3], a2);
      WTF::RefCounted<WebKit::WebExtensionControllerProxy>::deref(v7);
    }

    (*(**(v5 + 384) + 200))(*(v5 + 384), v5, this[3], a2);
    v8 = *(v5 + 8);

    CFRelease(v8);
  }
}

void WebKit::WebLocalFrameLoaderClient::dispatchServiceWorkerGlobalObjectAvailable(WebKit::WebFrame **this, WebCore::DOMWrapperWorld *a2)
{
  v4 = WebKit::WebFrame::page(this[3]);
  if (v4)
  {
    v5 = v4;
    CFRetain(*(v4 + 8));
    v6 = *(v5 + 592);
    if (v6)
    {
      v7 = v6 + 4;
      ++v6[4];
      WebKit::WebExtensionControllerProxy::serviceWorkerGlobalObjectIsAvailableForFrame(v6, v5, this[3], a2);
      WTF::RefCounted<WebKit::WebExtensionControllerProxy>::deref(v7);
    }

    (*(**(v5 + 384) + 208))(*(v5 + 384), v5, this[3], a2);
    v8 = *(v5 + 8);

    CFRelease(v8);
  }
}

void WebKit::WebLocalFrameLoaderClient::willInjectUserScript(WebKit::WebFrame **this, WebCore::DOMWrapperWorld *a2)
{
  v4 = WebKit::WebFrame::page(this[3]);
  if (v4)
  {
    v5 = v4;
    CFRetain(*(v4 + 8));
    v6 = *(v5 + 592);
    if (v6)
    {
      v7 = v6 + 4;
      ++v6[4];
      WebKit::WebExtensionControllerProxy::globalObjectIsAvailableForFrame(v6, v5, this[3], a2);
      WTF::RefCounted<WebKit::WebExtensionControllerProxy>::deref(v7);
    }

    (*(**(v5 + 384) + 240))(*(v5 + 384), v5, this[3], a2);
    v8 = *(v5 + 8);

    CFRelease(v8);
  }
}

void WebKit::WebLocalFrameLoaderClient::dispatchWillDisconnectDOMWindowExtensionFromGlobalObject(WebKit::WebFrame **this, WebCore::DOMWindowExtension *a2)
{
  v3 = WebKit::WebFrame::page(this[3]);
  if (v3)
  {
    v4 = v3;
    CFRetain(*(v3 + 8));
    (*(**(v4 + 384) + 216))(*(v4 + 384), v4, a2);
    v5 = *(v4 + 8);

    CFRelease(v5);
  }
}

void WebKit::WebLocalFrameLoaderClient::dispatchDidReconnectDOMWindowExtensionToGlobalObject(WebKit::WebFrame **this, WebCore::DOMWindowExtension *a2)
{
  v3 = WebKit::WebFrame::page(this[3]);
  if (v3)
  {
    v4 = v3;
    CFRetain(*(v3 + 8));
    (*(**(v4 + 384) + 224))(*(v4 + 384), v4, a2);
    v5 = *(v4 + 8);

    CFRelease(v5);
  }
}

void WebKit::WebLocalFrameLoaderClient::dispatchWillDestroyGlobalObjectForDOMWindowExtension(WebKit::WebFrame **this, WebCore::DOMWindowExtension *a2)
{
  v3 = WebKit::WebFrame::page(this[3]);
  if (v3)
  {
    v4 = v3;
    CFRetain(*(v3 + 8));
    (*(**(v4 + 384) + 232))(*(v4 + 384), v4, a2);
    v5 = *(v4 + 8);

    CFRelease(v5);
  }
}

uint64_t WebKit::WebLocalFrameLoaderClient::accessibilityRemoteFrameOffset(WebKit::WebFrame **this)
{
  result = WebKit::WebFrame::page(this[3]);
  if (result)
  {
    v2 = result;
    CFRetain(*(result + 8));
    v3 = [*(v2 + 272) accessibilityRemoteFrameOffset];
    CFRelease(*(v2 + 8));
    return v3;
  }

  return result;
}

uint64_t WebKit::WebLocalFrameLoaderClient::accessibilityRemoteObject(WebKit::WebFrame **this)
{
  v1 = WebKit::WebFrame::page(this[3]);
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  CFRetain(*(v1 + 8));
  v3 = *(v2 + 272);
  CFRelease(*(v2 + 8));
  return v3;
}

void WebKit::WebLocalFrameLoaderClient::willCacheResponse(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v9 = WebKit::WebFrame::page(*(a1 + 24));
  if (v9)
  {
    v10 = v9;
    CFRetain(*(v9 + 8));
    if ((*(**(v10 + 392) + 64))(*(v10 + 392), v10, *(a1 + 24), a3))
    {
      v11 = a4;
    }

    else
    {
      v11 = 0;
    }

    v12 = *a5;
    *a5 = 0;
    (*(*v12 + 16))(v12, v11);
    (*(*v12 + 8))(v12);
    v13 = *(v10 + 8);

    CFRelease(v13);
  }

  else
  {
    v14 = *a5;
    *a5 = 0;
    (*(*v14 + 16))(v14, a4);
    v15 = *(*v14 + 8);

    v15(v14);
  }
}

uint64_t WebKit::WebLocalFrameLoaderClient::dataDetectionReferenceDate(WebKit::WebFrame **this)
{
  v1 = WebKit::WebFrame::page(this[3]);
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  CFRetain(*(v1 + 8));
  v3 = *(v2 + 288);
  CFRelease(*(v2 + 8));
  return v3;
}

void WebKit::WebLocalFrameLoaderClient::didChangeScrollOffset(WebKit::WebFrame **this)
{
  v2 = WebKit::WebFrame::page(this[3]);
  if (v2)
  {
    v3 = v2;
    CFRetain(*(v2 + 8));
    v4 = *(this[11] + 1);
    if (v4)
    {
      v5 = *(v4 + 16);
      *(v4 + 16) = v5 + 1;
      v6 = *(v4 + 120);
      if (v6)
      {
        if (*(v6 + 8) == v4 && *(v4 + 216) != 0)
        {
          WebKit::WebPage::updateMainFrameScrollOffsetPinning(v3);
          v5 = *(v4 + 16) - 1;
        }
      }

      if (v5)
      {
        *(v4 + 16) = v5;
      }

      else
      {
        (*(*v4 + 8))(v4);
      }

      v8 = *(v3 + 1);

      CFRelease(v8);
    }

    else
    {
      __break(0xC471u);
    }
  }
}

uint64_t WebKit::WebLocalFrameLoaderClient::shouldForceUniversalAccessFromLocalURL(WebKit::WebFrame **this, const WTF::URL *a2)
{
  result = WebKit::WebFrame::page(this[3]);
  if (result)
  {
    v4 = result;
    CFRetain(*(result + 8));
    v5 = (*(**(v4 + 384) + 248))(*(v4 + 384), v4, a2);
    CFRelease(*(v4 + 8));
    return v5;
  }

  return result;
}

uint64_t WebKit::WebLocalFrameLoaderClient::createNetworkingContext@<X0>(WebKit::WebLocalFrameLoaderClient *this@<X0>, void *a2@<X8>)
{
  v3 = *(this + 3);
  result = WTF::fastMalloc(0x18);
  v5 = result;
  v6 = *(v3 + 40);
  if (!v6 || (v7 = *(v6 + 8)) != 0 && *(v7 + 136) == 1)
  {
    v7 = 0;
  }

  *(result + 8) = 1;
  *result = &unk_1F11123E0;
  if (v7)
  {
    result = WTF::WeakPtrFactory<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl>::initializeIfNeeded((v7 + 8), v7);
    v8 = *(v7 + 8);
    if (v8)
    {
      atomic_fetch_add(v8, 1u);
    }
  }

  else
  {
    v8 = 0;
  }

  v5[2] = v8;
  *v5 = &unk_1F1112380;
  *a2 = v5;
  return result;
}

void WebKit::WebLocalFrameLoaderClient::contentFilterDidBlockLoad(uint64_t a1, uint64_t a2)
{
  v37 = *MEMORY[0x1E69E9840];
  if (WebCore::ContentFilterUnblockHandler::needsUIProcess(a2))
  {
    v4 = WebKit::WebFrame::page(*(a1 + 24));
    if (v4)
    {
      v5 = v4;
      CFRetain(*(v4 + 8));
      v6 = *(*(a1 + 24) + 88);
      v7 = (*(*(v5 + 32) + 56))(v5 + 32);
      v9 = IPC::Encoder::operator new(0x238, v8);
      *v9 = 2166;
      *(v9 + 2) = 0;
      *(v9 + 3) = 0;
      *(v9 + 1) = v7;
      *(v9 + 68) = 0;
      *(v9 + 70) = 0;
      *(v9 + 69) = 0;
      IPC::Encoder::encodeHeader(v9);
      v27 = v9;
      IPC::ArgumentCoder<WebCore::ContentFilterUnblockHandler,void>::encode(v9, a2);
      IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v9, v6);
      (*(*(v5 + 32) + 32))(v5 + 32, &v27, 0);
      v11 = v27;
      v27 = 0;
      if (v11)
      {
        IPC::Encoder::~Encoder(v11, v10);
        bmalloc::api::tzoneFree(v25, v26);
      }

      CFRelease(*(v5 + 8));
    }
  }

  else
  {
    v12 = *(*(a1 + 88) + 8);
    if (v12)
    {
      v13 = *(*(v12 + 208) + 24);
      v14 = *a2;
      *a2 = 0;
      v28 = v14;
      WTF::URL::URL(v29, (a2 + 8));
      std::__function::__value_func<void ()(std::function<void ()(BOOL)>)>::__value_func[abi:sn200100](v30, a2 + 48);
      v31[0] = 0;
      v32 = 0;
      if (*(a2 + 120) == 1)
      {
        WTF::URL::URL(v31, (a2 + 80));
        v32 = 1;
      }

      v35 = *(a2 + 144);
      v16 = *(a2 + 128);
      v17 = *(a2 + 136);
      *(a2 + 128) = 0;
      *(a2 + 136) = 0;
      v34 = v17;
      *(a2 + 144) = 0;
      v36 = *(a2 + 152);
      v18 = v28;
      v33 = v16;
      v28 = 0;
      v19 = *(v13 + 32);
      *(v13 + 32) = v18;
      if (v19 && atomic_fetch_add_explicit(v19, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v19, v15);
      }

      WTF::URL::operator=(v13 + 40, v29);
      std::__function::__value_func<void ()(std::function<void ()(BOOL)>)>::operator=[abi:sn200100](v13 + 80, v30);
      std::__optional_storage_base<WTF::URL,false>::__assign_from[abi:sn200100]<std::__optional_move_assign_base<WTF::URL,false>>(v13 + 112, v31);
      v21 = *(v13 + 160);
      if (v21)
      {
        *(v13 + 160) = 0;
        *(v13 + 168) = 0;
        WTF::fastFree(v21, v20);
      }

      *(v13 + 160) = v33;
      v22 = v34;
      v33 = 0;
      v34 = 0;
      *(v13 + 168) = v22;
      v23 = v35;
      v35 = 0;
      v24 = *(v13 + 176);
      *(v13 + 176) = v23;
      if (v24)
      {
        CFRelease(v24);
      }

      *(v13 + 184) = v36;
      WebCore::ContentFilterUnblockHandler::~ContentFilterUnblockHandler(&v28, v20);
    }

    else
    {
      __break(0xC471u);
    }
  }
}

uint64_t *WebKit::WebLocalFrameLoaderClient::prefetchDNS(WebKit::WebLocalFrameLoaderClient *this, const WTF::String *a2)
{
  v3 = WebKit::WebProcess::singleton(this, a2);

  return WebKit::WebProcess::prefetchDNS(v3, a2, v4);
}

void WebKit::WebLocalFrameLoaderClient::sendH2Ping(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v3 = v2;
  v5 = v4;
  v6 = v1;
  v100 = *MEMORY[0x1E69E9840];
  v7 = WebKit::WebFrame::page(*(v1 + 24));
  if (v7)
  {
    v8 = v7;
    CFRetain(*(v7 + 8));
    v9 = *(v8 + 48);
    *&v45 = *(v8 + 1832);
    *(&v45 + 1) = v9;
    *&v46[0] = *(*(v6 + 24) + 88);
    v10 = *v5;
    if (*v5)
    {
      atomic_fetch_add_explicit(v10, 2u, memory_order_relaxed);
    }

    *v38 = v10;
    *&v38[8] = *(v5 + 8);
    *&v38[24] = *(v5 + 24);
    WebCore::ResourceRequestBase::ResourceRequestBase(v46 + 8, v38, 0);
    v54 = 0u;
    v53 = 0u;
    v55 = 1;
    v56 = 0;
    v57 = 0;
    v58 = 0;
    v59 = 0x10000;
    v60 = 1;
    v62 = 0;
    memset(v61, 0, 35);
    v63 = 0u;
    BYTE9(v63) = 2;
    *(&v63 + 10) = 0;
    BYTE14(v63) = 0;
    v65[48] = 0;
    v66[0] = 0;
    v64 = 0u;
    memset(v65, 0, 25);
    WTF::URL::invalidate(v66);
    v67[0] = 0;
    WTF::URL::invalidate(v67);
    v68 = 0;
    v69 = 0u;
    v70 = 0;
    v71 = 0u;
    WebCore::HTTPHeaderMap::HTTPHeaderMap(v72);
    v72[16] = 0;
    v73 = 0;
    v76 = 0;
    v77 = 0;
    v74 = 0u;
    v75 = 0;
    v78 = 1;
    v79[0] = 0;
    WTF::URL::invalidate(v79);
    v82[0] = 0;
    v80 = 0;
    v81 = 0;
    WTF::URL::invalidate(v82);
    v83 = 0;
    v86 = 0;
    v87 = 0;
    v88 = 0;
    v84 = 0u;
    v85 = 0;
    v89 = 1;
    v90 = 0;
    v91 = 0;
    v92 = 0;
    v93 = 0;
    v94 = 0;
    v95 = 0;
    v96[0] = 0;
    WTF::URL::invalidate(v96);
    v97 = 0;
    v98 = 0;
    v99 = 0;
    v12 = *v38;
    *v38 = 0;
    if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v12, v11);
    }

    WebKit::NetworkResourceLoadParameters::createSandboxExtensionHandlesIfNecessary(&v45);
    {
      __break(0xC471u);
      JUMPOUT(0x19E39A32CLL);
    }

    v18 = v17;
    IdentifierInternal = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
    v21 = IPC::Encoder::operator new(0x238, v20);
    *v21 = 484;
    *(v21 + 68) = 0;
    *(v21 + 70) = 0;
    *(v21 + 69) = 0;
    *(v21 + 2) = 0;
    *(v21 + 3) = 0;
    *(v21 + 1) = 0;
    IPC::Encoder::encodeHeader(v21);
    v44 = v21;
    IPC::ArgumentCoder<WebKit::NetworkResourceLoadParameters,void>::encode(v21, &v45);
    *v38 = v18;
    *&v38[8] = IdentifierInternal;
    IPC::Connection::sendMessageWithAsyncReply(v15, &v44, v38, 0, 0);
    v23 = *v38;
    *v38 = 0;
    if (v23)
    {
      (*(*v23 + 8))(v23);
    }

    v24 = v44;
    v44 = 0;
    if (v24)
    {
      IPC::Encoder::~Encoder(v24, v22);
      bmalloc::api::tzoneFree(v25, v26);
    }

    WebKit::NetworkResourceLoadParameters::~NetworkResourceLoadParameters(&v45, v22);
    CFRelease(*(v8 + 8));
  }

  else
  {
    WebCore::internalError();
    v27 = v39;
    v49 = v41;
    v48 = v40;
    v28 = cf;
    v39 = 0;
    cf = 0;
    v29 = *v38;
    *v38 = 0;
    *&v38[8] = 0;
    v45 = v29;
    v46[0] = *&v38[16];
    *&v38[16] &= ~1u;
    v46[1] = *&v38[32];
    v47 = v27;
    v50 = v28;
    v51 = v43;
    v52 = 1;
    v30 = *v3;
    *v3 = 0;
    (*(*v30 + 16))(v30, &v45);
    (*(*v30 + 8))(v30);
    std::experimental::fundamentals_v3::expected<WTF::Seconds,WebCore::ResourceError>::~expected(&v45, v31);
    v33 = cf;
    cf = 0;
    if (v33)
    {
      CFRelease(v33);
    }

    v34 = v39;
    v39 = 0;
    if (v34 && atomic_fetch_add_explicit(v34, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v34, v32);
    }

    v35 = *&v38[8];
    *&v38[8] = 0;
    if (v35 && atomic_fetch_add_explicit(v35, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v35, v32);
    }

    v36 = *v38;
    *v38 = 0;
    if (v36 && atomic_fetch_add_explicit(v36, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v36, v32);
    }
  }
}

void WebKit::WebLocalFrameLoaderClient::didRestoreScrollPosition(WebKit::WebFrame **this)
{
  v1 = WebKit::WebFrame::page(this[3]);
  if (v1)
  {
    v2 = v1;
    CFRetain(*(v1 + 8));
    WebKit::WebPage::didRestoreScrollPosition(v2);
    v3 = *(v2 + 1);

    CFRelease(v3);
  }
}

void WebKit::WebLocalFrameLoaderClient::getLoadDecisionForIcons(uint64_t a1, uint64_t a2)
{
  v3 = WebKit::WebFrame::page(*(a1 + 24));
  if (v3)
  {
    v4 = v3;
    CFRetain(*(v3 + 8));
    v5 = *(a2 + 12);
    if (v5)
    {
      v6 = *a2;
      v7 = &v6[2 * v5];
      while (1)
      {
        v8 = v6[1];
        if ((v8 - 1) >= 0xFFFFFFFFFFFFFFFELL)
        {
          break;
        }

        v9 = *v6;
        v6 += 2;
        v10 = v8;
        v11[0] = v9;
        v11[1] = &v10;
        IPC::MessageSender::send<Messages::WebPageProxy::GetLoadDecisionForIcon>(v4 + 32, v11);
        if (v6 == v7)
        {
          goto LABEL_6;
        }
      }

      __break(0xC471u);
    }

    else
    {
LABEL_6:
      CFRelease(*(v4 + 8));
    }
  }
}

IPC::Encoder *IPC::MessageSender::send<Messages::WebPageProxy::GetLoadDecisionForIcon>(uint64_t a1, void *a2)
{
  v4 = (*(*a1 + 56))(a1);

  return IPC::MessageSender::send<Messages::WebPageProxy::GetLoadDecisionForIcon>(a1, a2, v4);
}

void WebKit::WebLocalFrameLoaderClient::didFinishServiceWorkerPageRegistration(WebKit::WebFrame **this, char a2)
{
  v3 = WebKit::WebFrame::page(this[3]);
  if (v3)
  {
    v4 = v3;
    CFRetain(*(v3 + 8));
    v12 = a2;
    v5 = (*(*(v4 + 32) + 56))(v4 + 32);
    v7 = IPC::Encoder::operator new(0x238, v6);
    *v7 = 2207;
    *(v7 + 2) = 0;
    *(v7 + 3) = 0;
    *(v7 + 1) = v5;
    *(v7 + 68) = 0;
    *(v7 + 70) = 0;
    *(v7 + 69) = 0;
    IPC::Encoder::encodeHeader(v7);
    v13 = v7;
    IPC::Encoder::operator<<<BOOL &>(v7, &v12);
    (*(*(v4 + 32) + 32))(v4 + 32, &v13, 0);
    v9 = v13;
    v13 = 0;
    if (v9)
    {
      IPC::Encoder::~Encoder(v9, v8);
      bmalloc::api::tzoneFree(v10, v11);
    }

    CFRelease(*(v4 + 8));
  }
}

void WebKit::WebLocalFrameLoaderClient::notifyPageOfAppBoundBehavior(WebKit::WebFrame **this)
{
  if (WebKit::WebFrame::isMainFrame(this[3]))
  {
    v2 = WebKit::WebFrame::page(this[3]);
    if (v2)
    {
      v3 = v2;
      CFRetain(*(v2 + 8));
      WebKit::WebPage::notifyPageOfAppBoundBehavior(v3);
      v4 = *(v3 + 1);

      CFRelease(v4);
    }
  }
}

uint64_t WebKit::WebLocalFrameLoaderClient::shouldUsePDFPlugin(uint64_t a1, WebCore::MIMETypeRegistry *a2)
{
  result = WebKit::WebFrame::page(*(a1 + 24));
  if (result)
  {
    v4 = result;
    CFRetain(*(result + 8));
    shouldUsePDFPlugin = WebKit::WebPage::shouldUsePDFPlugin(v4, a2);
    CFRelease(*(v4 + 8));
    return shouldUsePDFPlugin;
  }

  return result;
}

CFTypeRef *WebKit::WebLocalFrameLoaderClient::isParentProcessAFullWebBrowser(WebKit::WebFrame **this)
{
  result = WebKit::WebFrame::page(this[3]);
  if (result)
  {
    v2 = result;
    CFRetain(result[1]);
    isParentProcessAWebBrowser = WebKit::WebPage::isParentProcessAWebBrowser(v2, v3);
    CFRelease(v2[1]);
    return isParentProcessAWebBrowser;
  }

  return result;
}

void WebKit::WebLocalFrameLoaderClient::dispatchLoadEventToOwnerElementInAnotherProcess(WebKit::WebFrame **this)
{
  v2 = WebKit::WebFrame::page(this[3]);
  if (v2)
  {
    v3 = v2;
    CFRetain(*(v2 + 8));
    v4 = *(this[3] + 11);
    v5 = (*(*(v3 + 32) + 56))(v3 + 32);
    v7 = IPC::Encoder::operator new(0x238, v6);
    *v7 = 2241;
    *(v7 + 2) = 0;
    *(v7 + 3) = 0;
    *(v7 + 1) = v5;
    *(v7 + 68) = 0;
    *(v7 + 70) = 0;
    *(v7 + 69) = 0;
    IPC::Encoder::encodeHeader(v7);
    v12 = v7;
    IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v7, v4);
    (*(*(v3 + 32) + 32))(v3 + 32, &v12, 0);
    v9 = v12;
    v12 = 0;
    if (v9)
    {
      IPC::Encoder::~Encoder(v9, v8);
      bmalloc::api::tzoneFree(v10, v11);
    }

    CFRelease(*(v3 + 8));
  }
}

void WebKit::WebLocalFrameLoaderClient::didAccessWindowProxyPropertyViaOpener(uint64_t a1, uint64_t a2, char a3)
{
  v6 = WebKit::WebFrame::page(*(a1 + 24));
  if (v6)
  {
    v7 = v6;
    CFRetain(*(v6 + 8));
    v8 = *(*(a1 + 24) + 88);
    v9 = (*(*(v7 + 32) + 56))(v7 + 32);
    v11 = IPC::Encoder::operator new(0x238, v10);
    *v11 = 2175;
    *(v11 + 2) = 0;
    *(v11 + 3) = 0;
    *(v11 + 1) = v9;
    *(v11 + 68) = 0;
    *(v11 + 70) = 0;
    *(v11 + 69) = 0;
    IPC::Encoder::encodeHeader(v11);
    v16 = v11;
    IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v11, v8);
    IPC::ArgumentCoder<WebCore::SecurityOriginData,void>::encode(v11, a2);
    v17 = a3;
    IPC::Encoder::operator<<<unsigned char>(v11, &v17);
    (*(*(v7 + 32) + 32))(v7 + 32, &v16, 0);
    v13 = v16;
    v16 = 0;
    if (v13)
    {
      IPC::Encoder::~Encoder(v13, v12);
      bmalloc::api::tzoneFree(v14, v15);
    }

    CFRelease(*(v7 + 8));
  }
}

void WebKit::WebLocalFrameLoaderClient::frameNameChanged(WebKit::WebLocalFrameLoaderClient *this, const WTF::String *a2)
{
  v3 = *(this + 3);
  v4 = *(v3 + 5);
  if (v4)
  {
    v5 = *(v4 + 8);
    if (v5)
    {
      v7 = *(v5 + 16);
      *(v5 + 16) = v7 + 1;
      v8 = *(*(v5 + 128) + 720);
      if (v7)
      {
        *(v5 + 16) = v7;
        if ((v8 & 8) == 0)
        {
          return;
        }
      }

      else
      {
        (*(*v5 + 8))(v5);
        if ((v8 & 8) == 0)
        {
          return;
        }

        v3 = *(this + 3);
      }

      v9 = WebKit::WebFrame::page(v3);
      if (v9)
      {
        v10 = v9;
        CFRetain(*(v9 + 8));
        v11 = *(*(this + 3) + 88);
        v12 = (*(*(v10 + 32) + 56))(v10 + 32);
        v14 = IPC::Encoder::operator new(0x238, v13);
        *v14 = 2258;
        *(v14 + 2) = 0;
        *(v14 + 3) = 0;
        *(v14 + 1) = v12;
        *(v14 + 68) = 0;
        *(v14 + 70) = 0;
        *(v14 + 69) = 0;
        IPC::Encoder::encodeHeader(v14);
        v19 = v14;
        IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v14, v11);
        IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v14, a2);
        (*(*(v10 + 32) + 32))(v10 + 32, &v19, 0);
        v16 = v19;
        v19 = 0;
        if (v16)
        {
          IPC::Encoder::~Encoder(v16, v15);
          bmalloc::api::tzoneFree(v17, v18);
        }

        CFRelease(*(v10 + 8));
      }
    }
  }
}