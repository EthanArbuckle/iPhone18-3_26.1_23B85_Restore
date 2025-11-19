uint64_t WTF::HashTable<WebCore::SharedWorkerKey,WTF::KeyValuePair<WebCore::SharedWorkerKey,WTF::Ref<WebKit::WebSharedWorker,WTF::RawPtrTraits<WebKit::WebSharedWorker>,WTF::DefaultRefDerefTraits<WebKit::WebSharedWorker>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::SharedWorkerKey,WTF::Ref<WebKit::WebSharedWorker,WTF::RawPtrTraits<WebKit::WebSharedWorker>,WTF::DefaultRefDerefTraits<WebKit::WebSharedWorker>>>>,WTF::DefaultHash<WebCore::SharedWorkerKey>,WTF::HashMap<WebCore::SharedWorkerKey,WTF::Ref<WebKit::WebSharedWorker,WTF::RawPtrTraits<WebKit::WebSharedWorker>,WTF::DefaultRefDerefTraits<WebKit::WebSharedWorker>>,WTF::DefaultHash<WebCore::SharedWorkerKey>,WTF::HashTraits<WebCore::SharedWorkerKey>,WTF::HashTraits<WTF::Ref<WebKit::WebSharedWorker,WTF::RawPtrTraits<WebKit::WebSharedWorker>,WTF::DefaultRefDerefTraits<WebKit::WebSharedWorker>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::SharedWorkerKey>,WTF::FastMalloc>::deallocateTable(WebCore::SharedWorkerKey *this, WTF::StringImpl *a2)
{
  v3 = *(this - 1);
  if (v3)
  {
    v4 = this;
    do
    {
      if (*(v4 + 8) != -1)
      {
        v5 = *(v4 + 14);
        *(v4 + 14) = 0;
        if (v5)
        {
          WTF::RefCounted<WebKit::WebSharedWorker>::deref((v5 + 8));
        }

        WebCore::SharedWorkerKey::~SharedWorkerKey(v4, a2);
      }

      v4 = (v4 + 120);
      --v3;
    }

    while (v3);
  }

  return WTF::fastFree((this - 16), a2);
}

uint64_t WTF::HashTable<WebCore::RegistrableDomain,WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::WeakRef<WebKit::WebSharedWorkerServerToContextConnection,WTF::DefaultWeakPtrImpl>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::WeakRef<WebKit::WebSharedWorkerServerToContextConnection,WTF::DefaultWeakPtrImpl>>>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashMap<WebCore::RegistrableDomain,WTF::WeakRef<WebKit::WebSharedWorkerServerToContextConnection,WTF::DefaultWeakPtrImpl>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WTF::WeakRef<WebKit::WebSharedWorkerServerToContextConnection,WTF::DefaultWeakPtrImpl>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::deallocateTable(uint64_t a1, void *a2)
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

uint64_t WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::WebSharedWorkerServerConnection,WTF::RawPtrTraits<WebKit::WebSharedWorkerServerConnection>,WTF::DefaultRefDerefTraits<WebKit::WebSharedWorkerServerConnection>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::WebSharedWorkerServerConnection,WTF::RawPtrTraits<WebKit::WebSharedWorkerServerConnection>,WTF::DefaultRefDerefTraits<WebKit::WebSharedWorkerServerConnection>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::WebSharedWorkerServerConnection,WTF::RawPtrTraits<WebKit::WebSharedWorkerServerConnection>,WTF::DefaultRefDerefTraits<WebKit::WebSharedWorkerServerConnection>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::WebSharedWorkerServerConnection,WTF::RawPtrTraits<WebKit::WebSharedWorkerServerConnection>,WTF::DefaultRefDerefTraits<WebKit::WebSharedWorkerServerConnection>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::deallocateTable(uint64_t a1, void *a2)
{
  v3 = *(a1 - 4);
  if (v3)
  {
    v4 = (a1 + 8);
    do
    {
      if (*(v4 - 1) != -1)
      {
        v5 = *v4;
        *v4 = 0;
        if (v5)
        {
          if (v5[6] == 1)
          {
            (*(*v5 + 8))(v5);
          }

          else
          {
            --v5[6];
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

uint64_t WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::WebSharedWorkerServerConnection,WTF::RawPtrTraits<WebKit::WebSharedWorkerServerConnection>,WTF::DefaultRefDerefTraits<WebKit::WebSharedWorkerServerConnection>>>::~KeyValuePair(uint64_t a1)
{
  v2 = *(a1 + 8);
  *(a1 + 8) = 0;
  if (v2)
  {
    if (v2[6] == 1)
    {
      (*(*v2 + 8))(v2);
    }

    else
    {
      --v2[6];
    }
  }

  return a1;
}

_DWORD **WTF::Ref<WebKit::WebSharedWorkerServerConnection,WTF::RawPtrTraits<WebKit::WebSharedWorkerServerConnection>,WTF::DefaultRefDerefTraits<WebKit::WebSharedWorkerServerConnection>>::~Ref(_DWORD **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (v2[6] == 1)
    {
      (*(*v2 + 8))(v2);
    }

    else
    {
      --v2[6];
    }
  }

  return a1;
}

void std::__optional_storage_base<WebCore::ServiceWorkerData,false>::__assign_from[abi:sn200100]<std::__optional_move_assign_base<WebCore::ServiceWorkerData,false>>(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 64) == *(a2 + 64))
  {
    if (*(a1 + 64))
    {
      *a1 = *a2;
      WTF::URL::operator=(a1 + 16, a2 + 16);
      *(a1 + 56) = *(a2 + 56);
    }
  }

  else if (*(a1 + 64))
  {

    std::__optional_destruct_base<WebCore::ServiceWorkerData,false>::reset[abi:sn200100](a1, a2);
  }

  else
  {
    *a1 = *a2;
    WTF::URL::URL(a1 + 16, (a2 + 16));
    *(a1 + 56) = *(a2 + 56);
    *(a1 + 64) = 1;
  }
}

uint64_t std::__optional_destruct_base<WebCore::ServiceWorkerData,false>::reset[abi:sn200100](uint64_t result, WTF::StringImpl *a2)
{
  if (*(result + 64) == 1)
  {
    v2 = result;
    result = *(result + 16);
    *(v2 + 16) = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        result = WTF::StringImpl::destroy(result, a2);
      }
    }

    *(v2 + 64) = 0;
  }

  return result;
}

uint64_t WTF::HashTable<WebCore::ServiceWorkerRegistrationKey,WTF::KeyValuePair<WebCore::ServiceWorkerRegistrationKey,std::optional<WebCore::ServiceWorkerContextData>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ServiceWorkerRegistrationKey,std::optional<WebCore::ServiceWorkerContextData>>>,WTF::DefaultHash<WebCore::ServiceWorkerRegistrationKey>,WTF::HashMap<WebCore::ServiceWorkerRegistrationKey,std::optional<WebCore::ServiceWorkerContextData>,WTF::DefaultHash<WebCore::ServiceWorkerRegistrationKey>,WTF::HashTraits<WebCore::ServiceWorkerRegistrationKey>,WTF::HashTraits<std::optional<WebCore::ServiceWorkerContextData>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ServiceWorkerRegistrationKey>,WTF::FastMalloc>::deallocateTable(mpark *a1, WTF::StringImpl *a2)
{
  v2 = a1;
  v3 = *(a1 - 1);
  if (v3)
  {
    v4 = a1;
    while (!*(v4 + 24))
    {
      if (*v4 != -1)
      {
        goto LABEL_5;
      }

LABEL_18:
      v4 = (v4 + 688);
      if (!--v3)
      {
        goto LABEL_22;
      }
    }

    if (*(v4 + 24) != 1)
    {
      mpark::throw_bad_variant_access(a1);
    }

LABEL_5:
    if (*(v4 + 672) == 1)
    {
      WebCore::ServiceWorkerContextData::~ServiceWorkerContextData((v4 + 80), a2);
    }

    a1 = *(v4 + 4);
    *(v4 + 4) = 0;
    if (a1 && atomic_fetch_add_explicit(a1, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      a1 = WTF::StringImpl::destroy(a1, a2);
    }

    if (!*(v4 + 24))
    {
      v5 = *(v4 + 1);
      *(v4 + 1) = 0;
      if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v5, a2);
      }

      a1 = *v4;
      *v4 = 0;
      if (a1 && atomic_fetch_add_explicit(a1, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        a1 = WTF::StringImpl::destroy(a1, a2);
      }
    }

    *(v4 + 24) = -1;
    goto LABEL_18;
  }

LABEL_22:

  return WTF::fastFree((v2 - 16), a2);
}

void WebCore::ServiceWorkerRegistrationKey::~ServiceWorkerRegistrationKey(WebCore::ServiceWorkerRegistrationKey *this, WTF::StringImpl *a2)
{
  v3 = *(this + 4);
  *(this + 4) = 0;
  if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v3, a2);
  }

  if (!*(this + 24))
  {
    v4 = *(this + 1);
    *(this + 1) = 0;
    if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v4, a2);
    }

    v5 = *this;
    *this = 0;
    if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v5, a2);
    }
  }

  *(this + 24) = -1;
}

void *WTF::Detail::CallableWrapper<WebKit::ServiceWorkerDownloadTask::dispatch(WTF::Function<void ()(void)> &&)::$_0,void>::~CallableWrapper(void *a1)
{
  *a1 = &unk_1F1107D38;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = a1[1];
  a1[1] = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::NetworkDataTask,(WTF::DestructionThread)1>::deref((v3 + 8));
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::ServiceWorkerDownloadTask::dispatch(WTF::Function<void ()(void)> &&)::$_0,void>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F1107D38;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 1);
  *(this + 1) = 0;
  if (v4)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::NetworkDataTask,(WTF::DestructionThread)1>::deref((v4 + 8));
  }

  return WTF::fastFree(this, a2);
}

void *WTF::Detail::CallableWrapper<WebKit::ServiceWorkerDownloadTask::cancel(void)::$_0,void>::~CallableWrapper(void *a1)
{
  *a1 = &unk_1F1107D60;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::NetworkDataTask,(WTF::DestructionThread)1>::deref((v2 + 8));
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::ServiceWorkerDownloadTask::cancel(void)::$_0,void>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F1107D60;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::NetworkDataTask,(WTF::DestructionThread)1>::deref((v3 + 8));
  }

  return WTF::fastFree(this, a2);
}

void WTF::Detail::CallableWrapper<WebKit::ServiceWorkerDownloadTask::cancel(void)::$_0,void>::call()
{
  WTF::FileSystemImpl::FileHandle::FileHandle(v0);
  WTF::FileSystemImpl::FileHandle::operator=();
  WTF::FileSystemImpl::FileHandle::~FileHandle(v0);
}

void *WTF::Detail::CallableWrapper<WebKit::ServiceWorkerDownloadTask::setPendingDownloadLocation(WTF::String const&,WebKit::SandboxExtensionHandle &&,BOOL)::$_0,void>::~CallableWrapper(void *a1)
{
  *a1 = &unk_1F1107D88;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::NetworkDataTask,(WTF::DestructionThread)1>::deref((v2 + 8));
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::ServiceWorkerDownloadTask::setPendingDownloadLocation(WTF::String const&,WebKit::SandboxExtensionHandle &&,BOOL)::$_0,void>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F1107D88;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::NetworkDataTask,(WTF::DestructionThread)1>::deref((v3 + 8));
  }

  return WTF::fastFree(this, a2);
}

WTF::StringImpl *WTF::Detail::CallableWrapper<WebKit::ServiceWorkerDownloadTask::setPendingDownloadLocation(WTF::String const&,WebKit::SandboxExtensionHandle &&,BOOL)::$_0,void>::call(uint64_t a1)
{
  v1 = *(a1 + 8);
  LOBYTE(v7) = 0;
  v11 = 0;
  result = WebKit::ServiceWorkerDownloadTask::didFailDownload(v1, &v7);
  if (v11 == 1)
  {
    v4 = cf;
    cf = 0;
    if (v4)
    {
      CFRelease(v4);
    }

    v5 = v9;
    v9 = 0;
    if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v5, v3);
    }

    v6 = v8;
    v8 = 0;
    if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v6, v3);
    }

    result = v7;
    v7 = 0;
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

void *WTF::Detail::CallableWrapper<WebKit::ServiceWorkerDownloadTask::setPendingDownloadLocation(WTF::String const&,WebKit::SandboxExtensionHandle &&,BOOL)::$_1,void>::~CallableWrapper(void *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F1107DB0;
  v3 = a1[4];
  a1[4] = 0;
  if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v3, a2);
  }

  v4 = a1[2];
  a1[2] = 0;
  if (v4)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::NetworkDataTask,(WTF::DestructionThread)1>::deref((v4 + 8));
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::ServiceWorkerDownloadTask::setPendingDownloadLocation(WTF::String const&,WebKit::SandboxExtensionHandle &&,BOOL)::$_1,void>::~CallableWrapper(WTF *this, WTF::StringImpl *a2)
{
  *this = &unk_1F1107DB0;
  v3 = *(this + 4);
  *(this + 4) = 0;
  if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v3, a2);
  }

  v4 = *(this + 2);
  *(this + 2) = 0;
  if (v4)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::NetworkDataTask,(WTF::DestructionThread)1>::deref((v4 + 8));
  }

  return WTF::fastFree(this, a2);
}

void WTF::Detail::CallableWrapper<WebKit::ServiceWorkerDownloadTask::setPendingDownloadLocation(WTF::String const&,WebKit::SandboxExtensionHandle &&,BOOL)::$_1,void>::call(uint64_t a1, const WTF::String *a2)
{
  v2 = *(a1 + 8);
  if (*(a1 + 24) == 1 && WTF::FileSystemImpl::fileExists((a1 + 32), a2) && (WTF::FileSystemImpl::deleteFile((a1 + 32), v4) & 1) == 0 || (WTF::FileSystemImpl::openFile(), WTF::FileSystemImpl::FileHandle::operator=(), WTF::FileSystemImpl::FileHandle::~FileHandle(&v10), *(v2 + 632) == -1))
  {
    LOBYTE(v10) = 0;
    v14 = 0;
    WebKit::ServiceWorkerDownloadTask::didFailDownload(v2, &v10);
    if (v14 == 1)
    {
      v6 = cf;
      cf = 0;
      if (v6)
      {
        CFRelease(v6);
      }

      v7 = v12;
      v12 = 0;
      if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v7, v5);
      }

      v8 = v11;
      v11 = 0;
      if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v8, v5);
      }

      v9 = v10;
      v10 = 0;
      if (v9)
      {
        if (atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v9, v5);
        }
      }
    }
  }
}

void *WTF::Detail::CallableWrapper<WebKit::ServiceWorkerDownloadTask::start(void)::$_0,void>::~CallableWrapper(void *a1)
{
  *a1 = &unk_1F1107DD8;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::NetworkDataTask,(WTF::DestructionThread)1>::deref((v2 + 8));
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::ServiceWorkerDownloadTask::start(void)::$_0,void>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F1107DD8;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::NetworkDataTask,(WTF::DestructionThread)1>::deref((v3 + 8));
  }

  return WTF::fastFree(this, a2);
}

WTF::StringImpl *WTF::Detail::CallableWrapper<WebKit::ServiceWorkerDownloadTask::start(void)::$_0,void>::call(uint64_t a1)
{
  v1 = *(a1 + 8);
  LOBYTE(v7) = 0;
  v11 = 0;
  result = WebKit::ServiceWorkerDownloadTask::didFailDownload(v1, &v7);
  if (v11 == 1)
  {
    v4 = cf;
    cf = 0;
    if (v4)
    {
      CFRelease(v4);
    }

    v5 = v9;
    v9 = 0;
    if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v5, v3);
    }

    v6 = v8;
    v8 = 0;
    if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v6, v3);
    }

    result = v7;
    v7 = 0;
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

void *WTF::Detail::CallableWrapper<WebKit::ServiceWorkerDownloadTask::didReceiveData(IPC::SharedBufferReference const&)::$_0,void>::~CallableWrapper(void *a1)
{
  *a1 = &unk_1F1107E00;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::NetworkDataTask,(WTF::DestructionThread)1>::deref((v2 + 8));
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::ServiceWorkerDownloadTask::didReceiveData(IPC::SharedBufferReference const&)::$_0,void>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F1107E00;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::NetworkDataTask,(WTF::DestructionThread)1>::deref((v3 + 8));
  }

  return WTF::fastFree(this, a2);
}

_DWORD *WTF::Detail::CallableWrapper<WebKit::ServiceWorkerDownloadTask::didReceiveData(IPC::SharedBufferReference const&)::$_0,void>::call(uint64_t a1)
{
  v1 = *(a1 + 8);
  *(v1 + 640) += *(a1 + 24);
  v2 = *(v1 + 616);
  ++*(v2 + 184);
  if (!*(v1 + 40))
  {
    __break(0xC471u);
    goto LABEL_16;
  }

  v11 = *(v1 + 40);
  result = WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::Download,WTF::RawPtrTraits<WebKit::Download>,WTF::DefaultRefDerefTraits<WebKit::Download>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::Download,WTF::RawPtrTraits<WebKit::Download>,WTF::DefaultRefDerefTraits<WebKit::Download>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::Download,WTF::RawPtrTraits<WebKit::Download>,WTF::DefaultRefDerefTraits<WebKit::Download>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::Download,WTF::RawPtrTraits<WebKit::Download>,WTF::DefaultRefDerefTraits<WebKit::Download>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>((v2 + 216), &v11);
  if (!result)
  {
    v10 = *(v2 + 184);
    if (v10)
    {
      *(v2 + 184) = v10 - 1;
      return result;
    }

    goto LABEL_15;
  }

  v5 = result + 4;
  ++result[4];
  v6 = *(v2 + 184);
  if (!v6)
  {
LABEL_15:
    __break(0xC471u);
LABEL_16:
    JUMPOUT(0x19DD77ED8);
  }

  *(v2 + 184) = v6 - 1;
  v7 = *(v1 + 640);
  if (*(v1 + 656) == 1)
  {
    v8 = *(v1 + 648);
  }

  else
  {
    v8 = 0;
  }

  if (v8 <= v7)
  {
    v9 = *(v1 + 640);
  }

  else
  {
    v9 = v8;
  }

  WebKit::Download::didReceiveData(result, *(a1 + 24), v7, v9);
  return WTF::RefCounted<WebKit::Download>::deref(v5);
}

void *WTF::Detail::CallableWrapper<WebKit::ServiceWorkerDownloadTask::didFinish(void)::$_0,void>::~CallableWrapper(void *a1)
{
  *a1 = &unk_1F1107E28;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::NetworkDataTask,(WTF::DestructionThread)1>::deref((v2 + 8));
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::ServiceWorkerDownloadTask::didFinish(void)::$_0,void>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F1107E28;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::NetworkDataTask,(WTF::DestructionThread)1>::deref((v3 + 8));
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::ServiceWorkerDownloadTask::didFinish(void)::$_0,void>::call(uint64_t a1)
{
  v1 = *(a1 + 8);
  *(v1 + 664) = 3;
  WebKit::ServiceWorkerDownloadTask::close(v1);
  v2 = *(v1 + 616);
  ++*(v2 + 184);
  if (!*(v1 + 40))
  {
    __break(0xC471u);
    goto LABEL_27;
  }

  v17 = *(v1 + 40);
  result = WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::Download,WTF::RawPtrTraits<WebKit::Download>,WTF::DefaultRefDerefTraits<WebKit::Download>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::Download,WTF::RawPtrTraits<WebKit::Download>,WTF::DefaultRefDerefTraits<WebKit::Download>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::Download,WTF::RawPtrTraits<WebKit::Download>,WTF::DefaultRefDerefTraits<WebKit::Download>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::Download,WTF::RawPtrTraits<WebKit::Download>,WTF::DefaultRefDerefTraits<WebKit::Download>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>((v2 + 216), &v17);
  if (!result)
  {
    v16 = *(v2 + 184);
    if (v16)
    {
      *(v2 + 184) = v16 - 1;
      goto LABEL_8;
    }

    goto LABEL_26;
  }

  v4 = result;
  v5 = (result + 16);
  ++*(result + 16);
  v6 = *(v2 + 184);
  if (!v6)
  {
LABEL_26:
    __break(0xC471u);
LABEL_27:
    JUMPOUT(0x19DD781A8);
  }

  *(v2 + 184) = v6 - 1;
  v7 = *(v1 + 624);
  *(v1 + 624) = 0;
  if (v7)
  {
    v8 = *(result + 64);
    *(v4 + 8) = v7;
    if (v8)
    {
      WTF::RefCounted<WebKit::SandboxExtension>::deref(v8);
    }
  }

  WebKit::Download::didFinish(v4);
  result = WTF::RefCounted<WebKit::Download>::deref(v5);
LABEL_8:
  v9 = *(v1 + 24);
  if (v9)
  {
    v10 = *(v9 + 8);
    if (v10)
    {
      (**v10)(v10);
      v17 = 0;
      v18 = 0;
      WTF::URL::invalidate(&v18);
      cf = 0;
      v19[0] = 0;
      *(v19 + 6) = 0;
      v21 = 1;
      WebKit::NetworkDataTaskClient::didCompleteWithError(v10, &v17);
      v12 = cf;
      cf = 0;
      if (v12)
      {
        CFRelease(v12);
      }

      v13 = v19[0];
      v19[0] = 0;
      if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v13, v11);
      }

      v14 = v18;
      v18 = 0;
      if (v14 && atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v14, v11);
      }

      v15 = v17;
      v17 = 0;
      if (v15)
      {
        if (atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v15, v11);
        }
      }

      return (*(*v10 + 8))(v10);
    }
  }

  return result;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::ServiceWorkerDownloadTask::didFailDownload(std::optional<WebCore::ResourceError> &&)::$_0,void>::~CallableWrapper(uint64_t a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F1107E50;
  if (*(a1 + 104) == 1)
  {
    v5 = *(a1 + 88);
    *(a1 + 88) = 0;
    if (v5)
    {
      CFRelease(v5);
    }

    v6 = *(a1 + 72);
    *(a1 + 72) = 0;
    if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v6, a2);
    }

    v7 = *(a1 + 32);
    *(a1 + 32) = 0;
    if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v7, a2);
    }

    v8 = *(a1 + 24);
    *(a1 + 24) = 0;
    if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v8, a2);
    }
  }

  v3 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::NetworkDataTask,(WTF::DestructionThread)1>::deref((v3 + 8));
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::ServiceWorkerDownloadTask::didFailDownload(std::optional<WebCore::ResourceError> &&)::$_0,void>::~CallableWrapper(WTF *this, WTF::StringImpl *a2)
{
  *this = &unk_1F1107E50;
  if (*(this + 104) == 1)
  {
    v5 = *(this + 11);
    *(this + 11) = 0;
    if (v5)
    {
      CFRelease(v5);
    }

    v6 = *(this + 9);
    *(this + 9) = 0;
    if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v6, a2);
    }

    v7 = *(this + 4);
    *(this + 4) = 0;
    if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v7, a2);
    }

    v8 = *(this + 3);
    *(this + 3) = 0;
    if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v8, a2);
    }
  }

  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::NetworkDataTask,(WTF::DestructionThread)1>::deref((v3 + 8));
  }

  return WTF::fastFree(this, a2);
}

WTF::StringImpl *WTF::Detail::CallableWrapper<WebKit::ServiceWorkerDownloadTask::didFailDownload(std::optional<WebCore::ResourceError> &&)::$_0,void>::call(WTF::StringImpl *result)
{
  v1 = *(result + 1);
  if (*(v1 + 664) == 3)
  {
    return result;
  }

  v2 = result;
  *(v1 + 664) = 3;
  WebKit::ServiceWorkerDownloadTask::close(v1);
  v3 = *(v1 + 624);
  *(v1 + 624) = 0;
  if (v3)
  {
    v4 = *(v3 + 2) - 1;
    *(v3 + 2) = v4;
    if (!v4)
    {
      *(*(v3 + 1) + 8) = 0;
      sandbox_extension_release();
    }

    WTF::RefCounted<WebKit::SandboxExtension>::deref(v3);
  }

  WebKit::cancelledError((v1 + 128), v27);
  if (*(v2 + 104) == 1)
  {
    v6 = *(v2 + 3);
    if (v6)
    {
      atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed);
    }

    v35[0] = v6;
    v7 = *(v2 + 4);
    if (v7)
    {
      atomic_fetch_add_explicit(v7, 2u, memory_order_relaxed);
    }

    v35[1] = v7;
    v8 = *(v2 + 56);
    v36 = *(v2 + 40);
    v37 = v8;
    v9 = *(v2 + 9);
    if (v9)
    {
      atomic_fetch_add_explicit(v9, 2u, memory_order_relaxed);
    }

    v38 = v9;
    v39 = *(v2 + 20);
    v40 = *(v2 + 42);
    v10 = *(v2 + 11);
    v41 = v10;
    if (v10)
    {
      CFRetain(v10);
    }

    v42 = *(v2 + 96);
    v11 = cf;
    cf = 0;
    if (v11)
    {
      CFRelease(v11);
    }
  }

  else
  {
    v12 = *v27;
    v27[0] = 0;
    v27[1] = 0;
    *v35 = v12;
    v36 = v28;
    v37 = v29;
    LODWORD(v28) = v28 & 0xFFFFFFFE;
    v38 = v30;
    v39 = v31;
    v40 = v32;
    v41 = cf;
    v42 = v34;
    v30 = 0;
    cf = 0;
  }

  v13 = v30;
  v30 = 0;
  if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v13, v5);
  }

  v14 = v27[1];
  v27[1] = 0;
  if (v14 && atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v14, v5);
  }

  v15 = v27[0];
  v27[0] = 0;
  if (v15 && atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v15, v5);
  }

  v16 = *(v1 + 616);
  ++*(v16 + 184);
  if (!*(v1 + 40))
  {
    goto LABEL_48;
  }

  v27[0] = *(v1 + 40);
  v17 = WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::Download,WTF::RawPtrTraits<WebKit::Download>,WTF::DefaultRefDerefTraits<WebKit::Download>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::Download,WTF::RawPtrTraits<WebKit::Download>,WTF::DefaultRefDerefTraits<WebKit::Download>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::Download,WTF::RawPtrTraits<WebKit::Download>,WTF::DefaultRefDerefTraits<WebKit::Download>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::Download,WTF::RawPtrTraits<WebKit::Download>,WTF::DefaultRefDerefTraits<WebKit::Download>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>((v16 + 216), v27);
  if (v17)
  {
    v19 = (v17 + 16);
    ++*(v17 + 16);
    v20 = *(v16 + 184);
    if (v20)
    {
      *(v16 + 184) = v20 - 1;
      WebKit::Download::didFail(v17, v35, 0, 0);
      WTF::RefCounted<WebKit::Download>::deref(v19);
      goto LABEL_31;
    }

LABEL_48:
    __break(0xC471u);
    JUMPOUT(0x19DD786D0);
  }

  v26 = *(v16 + 184);
  if (!v26)
  {
    goto LABEL_48;
  }

  *(v16 + 184) = v26 - 1;
LABEL_31:
  v21 = *(v1 + 24);
  if (v21)
  {
    v22 = *(v21 + 8);
    if (v22)
    {
      (**v22)(v22);
      WebKit::NetworkDataTaskClient::didCompleteWithError(v22, v35);
      (*(*v22 + 8))(v22);
    }
  }

  v23 = v41;
  v41 = 0;
  if (v23)
  {
    CFRelease(v23);
  }

  v24 = v38;
  v38 = 0;
  if (v24 && atomic_fetch_add_explicit(v24, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v24, v18);
  }

  v25 = v35[1];
  v35[1] = 0;
  if (v25 && atomic_fetch_add_explicit(v25, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v25, v18);
  }

  result = v35[0];
  v35[0] = 0;
  if (result)
  {
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v18);
    }
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WebKit::ServiceWorkerFetchTask::ServiceWorkerFetchTask(WebKit::WebSWServerConnection &,WebKit::NetworkResourceLoader &,WTF::RefPtr<WebKit::ServiceWorkerNavigationPreloader,WTF::RawPtrTraits<WebKit::ServiceWorkerNavigationPreloader>,WTF::DefaultRefDerefTraits<WebKit::ServiceWorkerNavigationPreloader>> &&)::$_0,void>::~CallableWrapper(void *a1, void *a2)
{
  v3 = a1[1];
  *a1 = &unk_1F1107E78;
  a1[1] = 0;
  if (v3 && atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3);
    WTF::fastFree(v3, a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::ServiceWorkerFetchTask::ServiceWorkerFetchTask(WebKit::WebSWServerConnection &,WebKit::NetworkResourceLoader &,WTF::RefPtr<WebKit::ServiceWorkerNavigationPreloader,WTF::RawPtrTraits<WebKit::ServiceWorkerNavigationPreloader>,WTF::DefaultRefDerefTraits<WebKit::ServiceWorkerNavigationPreloader>> &&)::$_0,void>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F1107E78;
  *(this + 1) = 0;
  if (v3 && atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3);
    WTF::fastFree(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

void *WTF::Detail::CallableWrapper<WebKit::ServiceWorkerFetchTask::ServiceWorkerFetchTask(WebKit::WebSWServerConnection &,WebKit::NetworkResourceLoader &,WTF::RefPtr<WebKit::ServiceWorkerNavigationPreloader,WTF::RawPtrTraits<WebKit::ServiceWorkerNavigationPreloader>,WTF::DefaultRefDerefTraits<WebKit::ServiceWorkerNavigationPreloader>> &&)::$_0,void>::call(void *result)
{
  v1 = result[1];
  if (v1)
  {
    result = *(v1 + 8);
    if (result)
    {
      v2 = result + 1;
      ++*(result + 2);
      WebKit::ServiceWorkerFetchTask::loadResponseFromPreloader(result);

      return WTF::RefCounted<WebKit::ServiceWorkerFetchTask>::deref(v2);
    }
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WebKit::ServiceWorkerFetchTask::ServiceWorkerFetchTask(WebKit::WebSWServerConnection &,WebKit::NetworkResourceLoader &,WebCore::ResourceRequest &&,WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::ResourceRequest &&<WebCore::ServiceWorkerIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::SWServerRegistration &,WebKit::NetworkSession *,BOOL)::$_0,void>::~CallableWrapper(void *a1, void *a2)
{
  v3 = a1[1];
  *a1 = &unk_1F1107EA0;
  a1[1] = 0;
  if (v3 && atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3);
    WTF::fastFree(v3, a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::ServiceWorkerFetchTask::ServiceWorkerFetchTask(WebKit::WebSWServerConnection &,WebKit::NetworkResourceLoader &,WebCore::ResourceRequest &&,WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::ResourceRequest &&<WebCore::ServiceWorkerIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::SWServerRegistration &,WebKit::NetworkSession *,BOOL)::$_0,void>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F1107EA0;
  *(this + 1) = 0;
  if (v3 && atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3);
    WTF::fastFree(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

void *WTF::Detail::CallableWrapper<WebKit::ServiceWorkerFetchTask::ServiceWorkerFetchTask(WebKit::WebSWServerConnection &,WebKit::NetworkResourceLoader &,WebCore::ResourceRequest &&,WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::ResourceRequest &&<WebCore::ServiceWorkerIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::SWServerRegistration &,WebKit::NetworkSession *,BOOL)::$_0,void>::call(void *result)
{
  v1 = result[1];
  if (v1)
  {
    result = *(v1 + 8);
    if (result)
    {
      v2 = result + 1;
      ++*(result + 2);
      WebKit::ServiceWorkerFetchTask::preloadResponseIsReady(result);

      return WTF::RefCounted<WebKit::ServiceWorkerFetchTask>::deref(v2);
    }
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WebKit::ServiceWorkerFetchTask::cannotHandle(void)::$_0,void>::~CallableWrapper(void *a1, void *a2)
{
  v3 = a1[1];
  *a1 = &unk_1F1107EC8;
  a1[1] = 0;
  if (v3 && atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3);
    WTF::fastFree(v3, a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::ServiceWorkerFetchTask::cannotHandle(void)::$_0,void>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F1107EC8;
  *(this + 1) = 0;
  if (v3 && atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3);
    WTF::fastFree(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

void *WTF::Detail::CallableWrapper<WebKit::ServiceWorkerFetchTask::cannotHandle(void)::$_0,void>::call(void *result)
{
  v1 = result[1];
  if (v1)
  {
    result = *(v1 + 8);
    if (result)
    {
      v2 = result + 1;
      ++*(result + 2);
      WebKit::ServiceWorkerFetchTask::didNotHandle(result);

      return WTF::RefCounted<WebKit::ServiceWorkerFetchTask>::deref(v2);
    }
  }

  return result;
}

uint64_t Messages::WebSWContextManagerConnection::CancelFetch::encode<IPC::Encoder>(uint64_t **a1, IPC::Encoder *a2)
{
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a2, **a1);
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a2, *a1[1]);
  v4 = *a1[2];

  return IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a2, v4);
}

void *WTF::Detail::CallableWrapper<WebKit::ServiceWorkerFetchTask::loadResponseFromPreloader(void)::$_0,void>::~CallableWrapper(void *a1, void *a2)
{
  v3 = a1[1];
  *a1 = &unk_1F1107EF0;
  a1[1] = 0;
  if (v3 && atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3);
    WTF::fastFree(v3, a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::ServiceWorkerFetchTask::loadResponseFromPreloader(void)::$_0,void>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F1107EF0;
  *(this + 1) = 0;
  if (v3 && atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3);
    WTF::fastFree(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

void *WTF::Detail::CallableWrapper<WebKit::ServiceWorkerFetchTask::loadResponseFromPreloader(void)::$_0,void>::call(void *result)
{
  v1 = result[1];
  if (v1)
  {
    result = *(v1 + 8);
    if (result)
    {
      v2 = result + 1;
      ++*(result + 2);
      WebKit::ServiceWorkerFetchTask::preloadResponseIsReady(result);

      return WTF::RefCounted<WebKit::ServiceWorkerFetchTask>::deref(v2);
    }
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WebKit::ServiceWorkerFetchTask::loadBodyFromPreloader(void)::$_0,void,WTF::RefPtr<WebCore::FragmentedSharedBuffer const,WTF::RawPtrTraits<WebCore::FragmentedSharedBuffer const>,WTF::DefaultRefDerefTraits<WebCore::FragmentedSharedBuffer const>> &&>::~CallableWrapper(void *a1, void *a2)
{
  v3 = a1[1];
  *a1 = &unk_1F1107F18;
  a1[1] = 0;
  if (v3 && atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3);
    WTF::fastFree(v3, a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::ServiceWorkerFetchTask::loadBodyFromPreloader(void)::$_0,void,WTF::RefPtr<WebCore::FragmentedSharedBuffer const,WTF::RawPtrTraits<WebCore::FragmentedSharedBuffer const>,WTF::DefaultRefDerefTraits<WebCore::FragmentedSharedBuffer const>> &&>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F1107F18;
  *(this + 1) = 0;
  if (v3 && atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3);
    WTF::fastFree(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

_DWORD *WTF::Detail::CallableWrapper<WebKit::ServiceWorkerFetchTask::loadBodyFromPreloader(void)::$_0,void,WTF::RefPtr<WebCore::FragmentedSharedBuffer const,WTF::RawPtrTraits<WebCore::FragmentedSharedBuffer const>,WTF::DefaultRefDerefTraits<WebCore::FragmentedSharedBuffer const>> &&>::call(_DWORD *result, unsigned int **a2)
{
  v2 = *(result + 1);
  if (v2)
  {
    v3 = *(v2 + 8);
    if (v3)
    {
      ++*(v3 + 8);
      v4 = *(v3 + 280);
      if (*(v4 + 3796))
      {
        v5 = *(v4 + 3736);
        if (v5)
        {
          atomic_fetch_add_explicit(v5, 2u, memory_order_relaxed);
        }

        v24 = v5;
        v6 = *(v4 + 3744);
        if (v6)
        {
          atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed);
        }

        v25 = v6;
        v7 = *(v4 + 3768);
        v26 = *(v4 + 3752);
        v27 = v7;
        v8 = *(v4 + 3784);
        if (v8)
        {
          atomic_fetch_add_explicit(v8, 2u, memory_order_relaxed);
        }

        v28 = v8;
        v29 = *(v4 + 3792);
        v30 = *(v4 + 3796);
        v9 = *(v4 + 3800);
        cf = v9;
        if (v9)
        {
          CFRetain(v9);
        }

        v32 = *(v4 + 3808);
        WebKit::ServiceWorkerFetchTask::didFail(v3, &v24);
        v11 = cf;
        cf = 0;
        if (v11)
        {
          CFRelease(v11);
        }

        v12 = v28;
        v28 = 0;
        if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v12, v10);
        }

        v13 = v25;
        v25 = 0;
        if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v13, v10);
        }

        v14 = v24;
        v24 = 0;
        if (v14)
        {
          if (atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v14, v10);
          }
        }

        return WTF::RefCounted<WebKit::ServiceWorkerFetchTask>::deref((v3 + 8));
      }

      v15 = *a2;
      if (!*a2)
      {
        WebKit::ServiceWorkerFetchTask::didFinish(v3, (v4 + 3336));
        return WTF::RefCounted<WebKit::ServiceWorkerFetchTask>::deref((v3 + 8));
      }

      *a2 = 0;
      if ((*(v3 + 289) & 1) != 0 || (WebCore::FragmentedSharedBuffer::makeContiguous(&v24, v15), (v16 = v24) == 0))
      {
LABEL_37:
        if (atomic_fetch_add(v15 + 2, 0xFFFFFFFF) == 1)
        {
          atomic_store(1u, v15 + 2);
          (*(*v15 + 8))(v15);
        }

        return WTF::RefCounted<WebKit::ServiceWorkerFetchTask>::deref((v3 + 8));
      }

      v17 = *(v3 + 24);
      if (v17 && (v18 = *(v17 + 8)) != 0)
      {
        ++*(v18 + 5);
        v19 = WebKit::NetworkResourceLoader::continueAfterServiceWorkerReceivedData(v18, v16);
        v20 = v19;
        if (*(v18 + 5) == 1)
        {
          (*(*v18 + 24))(v18);
          if (v20)
          {
            goto LABEL_30;
          }
        }

        else
        {
          --*(v18 + 5);
          if (v19)
          {
LABEL_30:
            v21 = *(v15 + 7);
            atomic_fetch_add(v15 + 2, 1u);
            v24 = v21;
            v25 = v15;
            *&v26 = 0;
            v33[0] = &v24;
            v33[1] = 0;
            WebKit::ServiceWorkerFetchTask::sendToClient<Messages::WebResourceLoader::DidReceiveData>(*(v3 + 24), v33);
            v22 = v26;
            *&v26 = 0;
            if (v22)
            {
              WTF::ThreadSafeRefCounted<WebCore::SharedMemory,(WTF::DestructionThread)0>::deref(v22);
            }

            v23 = v25;
            v25 = 0;
            if (v23 && atomic_fetch_add(v23 + 2, 0xFFFFFFFF) == 1)
            {
              atomic_store(1u, v23 + 2);
              (*(*v23 + 8))(v23);
            }
          }
        }
      }

      else if (WebKit::NetworkResourceLoader::continueAfterServiceWorkerReceivedData(0, v24))
      {
        goto LABEL_30;
      }

      if (atomic_fetch_add(v16 + 2, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v16 + 2);
        (*(*v16 + 8))(v16);
      }

      goto LABEL_37;
    }
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WebKit::ServiceWorkerFetchTask::convertToDownload(WebKit::DownloadManager &,WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::ResourceRequest const&,WebCore::ResourceResponse const&)::$_1,void,WebCore::PolicyAction>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F1107F40;
  a1[1] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::NetworkDataTask,(WTF::DestructionThread)1>::deref((v2 + 8));
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::ServiceWorkerFetchTask::convertToDownload(WebKit::DownloadManager &,WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::ResourceRequest const&,WebCore::ResourceResponse const&)::$_1,void,WebCore::PolicyAction>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F1107F40;
  *(this + 1) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::NetworkDataTask,(WTF::DestructionThread)1>::deref((v3 + 8));
  }

  return WTF::fastFree(this, a2);
}

WebKit::ServiceWorkerDownloadTask *WTF::Detail::CallableWrapper<WebKit::ServiceWorkerFetchTask::convertToDownload(WebKit::DownloadManager &,WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::ResourceRequest const&,WebCore::ResourceResponse const&)::$_1,void,WebCore::PolicyAction>::call(IPC::Encoder *a1, int a2)
{
  v2 = *(a1 + 1);
  if (a2 != 1)
  {
    v13 = *(a1 + 1);

    return WebKit::ServiceWorkerDownloadTask::cancel(v13);
  }

  v3 = *(v2 + 576);
  if (!v3)
  {
    goto LABEL_9;
  }

  v4 = *(v3 + 8);
  if (!v4)
  {
    goto LABEL_9;
  }

  ++v4[4];
  WebKit::WebSWServerToContextConnection::protectedIPCConnection(v4, &v27);
  v5 = v27;
  v7 = IPC::Encoder::operator new(0x238, v6);
  *v7 = 3063;
  *(v7 + 68) = 0;
  *(v7 + 70) = 0;
  *(v7 + 69) = 0;
  *(v7 + 2) = 0;
  *(v7 + 3) = 0;
  *(v7 + 1) = 0;
  IPC::Encoder::encodeHeader(v7);
  v28 = v7;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v7, *(v2 + 592));
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v7, *(v2 + 584));
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v7, *(v2 + 600));
  v9 = IPC::Connection::sendMessageImpl(v5, &v28, 0, 0);
  a1 = v28;
  v28 = 0;
  if (a1)
  {
    IPC::Encoder::~Encoder(a1, v8);
    a1 = bmalloc::api::tzoneFree(v16, v17);
    if (!v5)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if (v5)
  {
LABEL_6:
    a1 = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v5);
  }

LABEL_7:
  if (v4[4] != 1)
  {
    --v4[4];
    if (v9)
    {
      goto LABEL_9;
    }

LABEL_22:
    *(v2 + 664) = 0;
    v18 = *(v2 + 616);
    v20 = *(v18 + 184);
    v19 = (v18 + 184);
    *v19 = v20 + 1;
    v21 = *(v2 + 608);
    v22 = *(*(v2 + 16) + 8);
    ++*(v22 + 16);
    v23 = WebKit::Download::operator new(0x1C8, v8);
    WebKit::Download::Download(v23, v19, v21, v2, v22);
    v24 = *(v22 + 16);
    if (!v24)
    {
      goto LABEL_28;
    }

    *(v22 + 16) = v24 - 1;
    v25 = *(v2 + 608);
    ++*(v23 + 4);
    v28 = v23;
    WebKit::DownloadManager::dataTaskBecameDownloadTask(v19, v25, &v28);
    v26 = v28;
    v28 = 0;
    if (v26)
    {
      WTF::RefCounted<WebKit::Download>::deref(v26 + 4);
    }

    WebKit::Download::didCreateDestination(v23, (v2 + 120));
    result = WTF::RefCounted<WebKit::Download>::deref(v23 + 4);
    if (!*v19)
    {
LABEL_28:
      __break(0xC471u);
      JUMPOUT(0x19DD793C4);
    }

    --*v19;
    return result;
  }

  a1 = (*(*v4 + 8))(v4);
  if (!v9)
  {
    goto LABEL_22;
  }

LABEL_9:
  v10 = WebKit::serviceWorkerDownloadTaskQueueSingleton(a1);
  while (1)
  {
    v11 = *(v2 + 8);
    if ((v11 & 1) == 0)
    {
      break;
    }

    v12 = *(v2 + 8);
    atomic_compare_exchange_strong_explicit((v2 + 8), &v12, v11 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v12 == v11)
    {
      goto LABEL_17;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*(v2 + 8));
LABEL_17:
  v15 = WTF::fastMalloc(0x18);
  *v15 = &unk_1F1107DD8;
  *(v15 + 1) = v2;
  *(v15 + 2) = v2;
  v28 = v15;
  (*(*v10 + 48))(v10, &v28);
  result = v28;
  v28 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WebKit::ServiceWorkerNavigationPreloader::start(void)::$_0,void,std::unique_ptr<WebKit::NetworkCache::Entry>,WebKit::NetworkCache::Cache::RetrieveInfo const&>::~CallableWrapper(void *a1, void *a2)
{
  v3 = a1[1];
  *a1 = &unk_1F1107F68;
  a1[1] = 0;
  if (v3 && atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3);
    WTF::fastFree(v3, a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::ServiceWorkerNavigationPreloader::start(void)::$_0,void,std::unique_ptr<WebKit::NetworkCache::Entry>,WebKit::NetworkCache::Cache::RetrieveInfo const&>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F1107F68;
  *(this + 1) = 0;
  if (v3 && atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3);
    WTF::fastFree(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

WTF::StringImpl *WTF::Detail::CallableWrapper<WebKit::ServiceWorkerNavigationPreloader::start(void)::$_0,void,std::unique_ptr<WebKit::NetworkCache::Entry>,WebKit::NetworkCache::Cache::RetrieveInfo const&>::call(WTF::StringImpl *result, WebKit::NetworkCache::Entry **a2)
{
  v2 = *(result + 1);
  if (v2)
  {
    v3 = *(v2 + 8);
    if (v3)
    {
      ++*(v3 + 20);
      if ((*(v3 + 3833) & 1) == 0)
      {
        if (*a2 && WebCore::ResourceResponseBase::source((*a2 + 80)) != 3)
        {
          result = WebKit::ServiceWorkerNavigationPreloader::loadWithCacheEntry(v3, *a2);
        }

        else
        {
          WebCore::ResourceRequestBase::setCachePolicy();
          v5 = *a2;
          if (*a2)
          {
            *a2 = 0;
            std::unique_ptr<WebKit::NetworkCache::Entry>::reset[abi:sn200100]((v3 + 3328), v5);
            WebCore::ResourceResponseBase::httpHeaderField();
            if (v14 && *(v14 + 1))
            {
              WebCore::ResourceRequestBase::setHTTPHeaderField();
            }

            WebCore::ResourceResponseBase::httpHeaderField();
            v7 = v21;
            if (v21)
            {
              if (*(v21 + 1))
              {
                WebCore::ResourceRequestBase::setHTTPHeaderField();
                v7 = v21;
              }

              v21 = 0;
              if (atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v7, v6);
              }
            }

            v8 = v14;
            v14 = 0;
            if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v8, v6);
            }
          }

          v9 = *(v3 + 32);
          if (v9 && *(v9 + 8))
          {
            result = WebKit::ServiceWorkerNavigationPreloader::loadFromNetwork(v3);
          }

          else
          {
            v14 = 0;
            v15 = 0;
            WTF::URL::invalidate(&v15);
            v16 = 0;
            v17 = 0;
            v18 = 3;
            cf = 0;
            v20 = 1;
            WebKit::ServiceWorkerNavigationPreloader::didFailLoading(v3, &v14);
            v11 = cf;
            cf = 0;
            if (v11)
            {
              CFRelease(v11);
            }

            v12 = v16;
            v16 = 0;
            if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v12, v10);
            }

            v13 = v15;
            v15 = 0;
            if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v13, v10);
            }

            result = v14;
            v14 = 0;
            if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              result = WTF::StringImpl::destroy(result, v10);
            }
          }
        }
      }

      if (*(v3 + 20) == 1)
      {
        return (*(*v3 + 24))(v3);
      }

      else
      {
        --*(v3 + 20);
      }
    }
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WebKit::ServiceWorkerNavigationPreloader::loadWithCacheEntry(WebKit::NetworkCache::Entry &)::$_0,void,WebCore::PolicyAction>::~CallableWrapper(void *a1, void *a2)
{
  *a1 = &unk_1F1107F90;
  v3 = a1[2];
  a1[2] = 0;
  if (v3 && atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3);
    WTF::fastFree(v3, a2);
  }

  v4 = a1[1];
  a1[1] = 0;
  if (v4 && atomic_fetch_add(v4 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v4 + 2);
    (*(*v4 + 8))(v4);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::ServiceWorkerNavigationPreloader::loadWithCacheEntry(WebKit::NetworkCache::Entry &)::$_0,void,WebCore::PolicyAction>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F1107F90;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3 && atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3);
    WTF::fastFree(v3, a2);
  }

  v4 = *(this + 1);
  *(this + 1) = 0;
  if (v4 && atomic_fetch_add(v4 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v4 + 2);
    (*(*v4 + 8))(v4);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::ServiceWorkerNavigationPreloader::loadWithCacheEntry(WebKit::NetworkCache::Entry &)::$_0,void,WebCore::PolicyAction>::call(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    v2 = result;
    result = *(v1 + 8);
    if (result)
    {
      if ((*(result + 3833) & 1) == 0)
      {
        v3 = *(v2 + 8);
        if (!v3)
        {
          goto LABEL_9;
        }

        *(v2 + 8) = 0;
        result = WebKit::ServiceWorkerNavigationPreloader::didReceiveBuffer(result, v3);
        if (atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
        {
          atomic_store(1u, v3 + 2);
          result = (*(*v3 + 8))(v3);
        }

        v4 = *(v2 + 16);
        if (v4)
        {
          if (*(v4 + 8))
          {
LABEL_9:
            WebCore::NetworkLoadMetrics::NetworkLoadMetrics(v14);
            v16 |= 1u;
            v17 = 0;
            v18 = 0;
            v5 = *(v2 + 16);
            if (!v5)
            {
              goto LABEL_22;
            }

            v6 = *(v5 + 8);
            if (!v6)
            {
              goto LABEL_22;
            }

            if (*(v6 + 3834) == 1)
            {
              v7 = WTF::fastMalloc(0x68);
              *v7 = 1;
              *(v7 + 4) = 3;
              *(v7 + 8) = 0u;
              *(v7 + 24) = 0u;
              WebCore::HTTPHeaderMap::HTTPHeaderMap((v7 + 40));
              *(v7 + 72) = 0;
              *(v7 + 80) = 0;
              *(v7 + 96) = 0;
              *(v7 + 88) = 0;
              v9 = v19;
              v19 = v7;
              if (v9)
              {
                WTF::RefCounted<WebCore::AdditionalNetworkLoadMetricsForWebInspector>::deref(v9, v8);
              }
            }

            v10 = *(v2 + 16);
            if (!v10 || (v11 = *(v10 + 8)) == 0)
            {
LABEL_22:
              __break(0xC471u);
              JUMPOUT(0x19DD79A24);
            }

            WebKit::ServiceWorkerNavigationPreloader::didFinishLoading(v11, v14);
            v13 = v19;
            v19 = 0;
            if (v13)
            {
              WTF::RefCounted<WebCore::AdditionalNetworkLoadMetricsForWebInspector>::deref(v13, v12);
            }

            result = v15;
            v15 = 0;
            if (result)
            {
              if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                return WTF::StringImpl::destroy(result, v12);
              }
            }
          }
        }
      }
    }
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WebKit::ServiceWorkerNavigationPreloader::willSendRedirectedRequest(WebCore::ResourceRequest &&,WebCore::ResourceRequest &,WebCore::ResourceResponse &&,WTF::CompletionHandler<void ()(WebCore::ResourceRequest &)> &&)::$_0,void,WebCore::PolicyAction>::~CallableWrapper(void *a1, void *a2)
{
  *a1 = &unk_1F1107FB8;
  v3 = a1[2];
  a1[2] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = a1[1];
  a1[1] = 0;
  if (v4 && atomic_fetch_add(v4, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v4);
    WTF::fastFree(v4, a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::ServiceWorkerNavigationPreloader::willSendRedirectedRequest(WebCore::ResourceRequest &&,WebCore::ResourceRequest &,WebCore::ResourceResponse &&,WTF::CompletionHandler<void ()(WebCore::ResourceRequest &)> &&)::$_0,void,WebCore::PolicyAction>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F1107FB8;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 1);
  *(this + 1) = 0;
  if (v4 && atomic_fetch_add(v4, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v4);
    WTF::fastFree(v4, a2);
  }

  return WTF::fastFree(this, a2);
}

void WTF::Detail::CallableWrapper<WebKit::ServiceWorkerNavigationPreloader::willSendRedirectedRequest(WebCore::ResourceRequest &&,WebCore::ResourceRequest &,WebCore::ResourceResponse &&,WTF::CompletionHandler<void ()(WebCore::ResourceRequest &)> &&)::$_0,void,WebCore::PolicyAction>::call(uint64_t a1)
{
  WebCore::ResourceRequest::ResourceRequest(v6);
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  (*(*v2 + 16))(v2, v6);
  (*(*v2 + 8))(v2);
  WebCore::ResourceRequest::~ResourceRequest(v6);
  v4 = *(a1 + 8);
  if (v4)
  {
    v5 = *(v4 + 8);
    if (v5)
    {
      WebKit::ServiceWorkerNavigationPreloader::didComplete(v5, v3);
    }
  }
}

WebCore::TextResourceDecoder *WTF::RefCounted<WebCore::TextResourceDecoder>::deref(WebCore::TextResourceDecoder *result)
{
  if (*result == 1)
  {
    WebCore::TextResourceDecoder::~TextResourceDecoder(result);

    return WTF::fastFree(v2, v3);
  }

  else
  {
    --*result;
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WebKit::ServiceWorkerSoftUpdateLoader::ServiceWorkerSoftUpdateLoader(WebKit::NetworkSession &,WebCore::ServiceWorkerJobData &&,BOOL,WebCore::ResourceRequest &&,WTF::CompletionHandler<void ()(WebCore::WorkerFetchResult &&)> &&)::$_0,void,std::unique_ptr<WebKit::NetworkCache::Entry,WTF::CompletionHandler<void ()(WebCore::WorkerFetchResult &&)>::default_delete<WebKit::ServiceWorkerSoftUpdateLoader::ServiceWorkerSoftUpdateLoader(WebKit::NetworkSession &,WebCore::ServiceWorkerJobData &&,BOOL,WebCore::ResourceRequest &&,WTF::CompletionHandler<void ()(WebCore::WorkerFetchResult &&)> &&)::$_0>>,WTF::CompletionHandler<void ()(WebCore::WorkerFetchResult &&)> &&::Cache::RetrieveInfo const&>::~CallableWrapper(void *a1)
{
  *a1 = &unk_1F1107FE0;
  WebCore::ResourceRequest::~ResourceRequest((a1 + 3));
  v3 = a1[2];
  a1[2] = 0;
  if (v3 && atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3);
    WTF::fastFree(v3, v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::ServiceWorkerSoftUpdateLoader::ServiceWorkerSoftUpdateLoader(WebKit::NetworkSession &,WebCore::ServiceWorkerJobData &&,BOOL,WebCore::ResourceRequest &&,WTF::CompletionHandler<void ()(WebCore::WorkerFetchResult &&)> &&)::$_0,void,std::unique_ptr<WebKit::NetworkCache::Entry,WTF::CompletionHandler<void ()(WebCore::WorkerFetchResult &&)>::default_delete<WebKit::ServiceWorkerSoftUpdateLoader::ServiceWorkerSoftUpdateLoader(WebKit::NetworkSession &,WebCore::ServiceWorkerJobData &&,BOOL,WebCore::ResourceRequest &&,WTF::CompletionHandler<void ()(WebCore::WorkerFetchResult &&)> &&)::$_0>>,WTF::CompletionHandler<void ()(WebCore::WorkerFetchResult &&)> &&::Cache::RetrieveInfo const&>::~CallableWrapper(void *a1)
{
  *a1 = &unk_1F1107FE0;
  WebCore::ResourceRequest::~ResourceRequest((a1 + 3));
  v3 = a1[2];
  a1[2] = 0;
  if (v3 && atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3);
    WTF::fastFree(v3, v2);
  }

  return WTF::fastFree(a1, v2);
}

WTF::StringImpl *WTF::Detail::CallableWrapper<WebKit::ServiceWorkerSoftUpdateLoader::ServiceWorkerSoftUpdateLoader(WebKit::NetworkSession &,WebCore::ServiceWorkerJobData &&,BOOL,WebCore::ResourceRequest &&,WTF::CompletionHandler<void ()(WebCore::WorkerFetchResult &&)> &&)::$_0,void,std::unique_ptr<WebKit::NetworkCache::Entry,WTF::CompletionHandler<void ()(WebCore::WorkerFetchResult &&)>::default_delete<WebKit::ServiceWorkerSoftUpdateLoader::ServiceWorkerSoftUpdateLoader(WebKit::NetworkSession &,WebCore::ServiceWorkerJobData &&,BOOL,WebCore::ResourceRequest &&,WTF::CompletionHandler<void ()(WebCore::WorkerFetchResult &&)> &&)::$_0>>,WTF::CompletionHandler<void ()(WebCore::WorkerFetchResult &&)> &&::Cache::RetrieveInfo const&>::call(WTF::StringImpl *result, WTF::StringImpl **a2)
{
  v2 = *(result + 2);
  if (v2 && *(v2 + 8))
  {
    v3 = result;
    v4 = *(result + 1);
    v5 = *(v4 + 312);
    if (v5 && *(v5 + 8))
    {
      if ((*(result + 224) & 1) != 0 || !*a2 || WebCore::ResourceResponseBase::source((*a2 + 80)) == 3)
      {
        WebCore::ResourceRequestBase::setCachePolicy();
        v7 = *a2;
        if (*a2)
        {
          *a2 = 0;
          std::unique_ptr<WebKit::NetworkCache::Entry>::reset[abi:sn200100]((v4 + 384), v7);
          WebCore::ResourceResponseBase::httpHeaderField();
          if (v20 && *(v20 + 1))
          {
            WebCore::ResourceRequestBase::setHTTPHeaderField();
          }

          WebCore::ResourceResponseBase::httpHeaderField();
          v9 = v19;
          if (v19)
          {
            if (*(v19 + 1))
            {
              WebCore::ResourceRequestBase::setHTTPHeaderField();
              v9 = v19;
            }

            if (atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v9, v8);
            }
          }

          v15 = v20;
          v20 = 0;
          if (v15 && atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v15, v8);
          }
        }

        v16 = *(v4 + 312);
        if (!v16 || (v17 = *(v16 + 8)) == 0 || (++*(v17 + 4), result = WebKit::ServiceWorkerSoftUpdateLoader::loadFromNetwork(v4, v17, v3 + 24), (v18 = *(v17 + 4)) == 0))
        {
          __break(0xC471u);
          JUMPOUT(0x19DD79FD0);
        }

        *(v17 + 4) = v18 - 1;
      }

      else
      {
        v14 = *a2;

        return WebKit::ServiceWorkerSoftUpdateLoader::loadWithCacheEntry(v4, v14);
      }
    }

    else
    {
      v20 = 0;
      v21 = 0;
      WTF::URL::invalidate(&v21);
      v22 = 0;
      v23 = 0;
      v24 = 3;
      cf = 0;
      v26 = 1;
      WebKit::ServiceWorkerSoftUpdateLoader::fail(v4, &v20);
      v11 = cf;
      cf = 0;
      if (v11)
      {
        CFRelease(v11);
      }

      v12 = v22;
      v22 = 0;
      if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v12, v10);
      }

      v13 = v21;
      v21 = 0;
      if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v13, v10);
      }

      result = v20;
      v20 = 0;
      if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        return WTF::StringImpl::destroy(result, v10);
      }
    }
  }

  return result;
}

WTF::StringImpl *WTF::Detail::CallableWrapper<WebKit::ServiceWorkerSoftUpdateLoader::didReceiveBuffer(WebCore::FragmentedSharedBuffer const&)::$_0,void,std::span<unsigned char const,18446744073709551615ul>>::call(WTF::StringImpl *result, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v3 = *(result + 1);
    WebCore::TextResourceDecoder::decode();
    if (*(v3 + 416) || *(v3 + 408))
    {
      if (v9)
      {
        v7 = *(v9 + 1);
        v8 = *(v9 + 1) | (((*(v9 + 4) >> 2) & 1) << 32);
      }

      else
      {
        v7 = 0;
        v8 = 0x100000000;
      }

      WTF::StringBuilder::append(v3 + 400, v7, v8);
      result = v9;
    }

    else
    {
      if (v9)
      {
        atomic_fetch_add_explicit(v9, 2u, memory_order_relaxed);
      }

      v5 = *(v3 + 400);
      *(v3 + 400) = v9;
      if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v5, v4);
      }

      result = v9;
      if (v9)
      {
        v6 = *(v9 + 1);
      }

      else
      {
        v6 = 0;
      }

      *(v3 + 416) = v6;
    }

    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        return WTF::StringImpl::destroy(result, v4);
      }
    }
  }

  return result;
}

WebCore::TimerBase *WebCore::Timer::Timer<WebKit::WebSWRegistrationStore,WebKit::WebSWRegistrationStore>(WebCore::TimerBase *a1, uint64_t a2)
{
  *WebCore::TimerBase::TimerBase(a1) = &unk_1F10EB388;
  v4 = WTF::fastMalloc(0x20);
  *v4 = &unk_1F1108030;
  v4[1] = a2;
  v4[2] = WebKit::WebSWRegistrationStore::updateTimerFired;
  v4[3] = 0;
  *(a1 + 6) = v4;
  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebCore::Timer::Timer<WebKit::WebSWRegistrationStore,WebKit::WebSWRegistrationStore>(WebKit::WebSWRegistrationStore &,void (WebKit::WebSWRegistrationStore::*)(void))::{lambda(void)#1},void>::call(void *a1)
{
  v2 = a1[1];
  v1 = a1[2];
  ++v2[4];
  v3 = a1[3];
  v4 = (v2 + (v3 >> 1));
  if (v3)
  {
    v1 = *(*v4 + v1);
  }

  result = v1(v4);
  if (v2[4] == 1)
  {
    v6 = *(*v2 + 8);

    return v6(v2);
  }

  else
  {
    --v2[4];
  }

  return result;
}

uint64_t WTF::Vector<WebCore::ServiceWorkerContextData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(uint64_t a1, WTF::StringImpl *a2)
{
  v3 = *(a1 + 12);
  if (v3)
  {
    v6 = *a1;
    v7 = 592 * v3;
    do
    {
      WebCore::ServiceWorkerContextData::~ServiceWorkerContextData(v6, a2);
      v6 = (v8 + 592);
      v7 -= 592;
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

WebCore::ServiceWorkerRegistrationKey *WTF::HashTable<WebCore::ServiceWorkerRegistrationKey,WTF::KeyValuePair<WebCore::ServiceWorkerRegistrationKey,std::optional<WebCore::ServiceWorkerContextData>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ServiceWorkerRegistrationKey,std::optional<WebCore::ServiceWorkerContextData>>>,WTF::DefaultHash<WebCore::ServiceWorkerRegistrationKey>,WTF::HashMap<WebCore::ServiceWorkerRegistrationKey,std::optional<WebCore::ServiceWorkerContextData>,WTF::DefaultHash<WebCore::ServiceWorkerRegistrationKey>,WTF::HashTraits<WebCore::ServiceWorkerRegistrationKey>,WTF::HashTraits<std::optional<WebCore::ServiceWorkerContextData>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ServiceWorkerRegistrationKey>,WTF::FastMalloc>::expand(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  if (*a1)
  {
    LODWORD(v3) = *(v2 - 4);
    v4 = *(v2 - 12);
    if (v3)
    {
      v5 = v3 << (6 * v4 >= (2 * v3));
      goto LABEL_6;
    }
  }

  else
  {
    LODWORD(v3) = 0;
    v4 = 0;
  }

  v5 = 8;
LABEL_6:
  result = WTF::fastMalloc((688 * v5 + 16));
  v8 = result;
  v9 = result + 16;
  if (v5)
  {
    v10 = v5;
    v11 = result;
    do
    {
      result = WebCore::ServiceWorkerRegistrationKey::emptyKey(v11 + 2, result);
      *(v11 + 96) = 0;
      *(v11 + 688) = 0;
      v11 = (v11 + 688);
      --v10;
    }

    while (v10);
  }

  *a1 = v9;
  *(v8 + 2) = v5 - 1;
  *(v8 + 3) = v5;
  *v8 = 0;
  *(v8 + 1) = v4;
  if (v3)
  {
    v12 = 0;
    v13 = 0;
    v3 = v3;
    v30 = v3;
    while (1)
    {
      v14 = v2 + 688 * v12;
      if (*(v14 + 24))
      {
        break;
      }

      if (*v14 != -1)
      {
        goto LABEL_13;
      }

LABEL_59:
      if (++v12 == v3)
      {
        goto LABEL_64;
      }
    }

    if (*(v14 + 24) != 1)
    {
      mpark::throw_bad_variant_access(result);
    }

LABEL_13:
    if (WTF::HashTraitsEmptyValueChecker<WTF::HashTraits<WebCore::ServiceWorkerRegistrationKey>,false>::isEmptyValue<WebCore::ServiceWorkerRegistrationKey>((v2 + 688 * v12)))
    {
      if (*(v14 + 672) == 1)
      {
        WebCore::ServiceWorkerContextData::~ServiceWorkerContextData((v14 + 80), v7);
      }

      result = *(v14 + 32);
      *(v14 + 32) = 0;
      if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        result = WTF::StringImpl::destroy(result, v7);
      }

      if (!*(v14 + 24))
      {
        v15 = *(v14 + 8);
        *(v14 + 8) = 0;
        if (v15 && atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v15, v7);
        }

        result = *v14;
        *v14 = 0;
        if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          result = WTF::StringImpl::destroy(result, v7);
        }
      }

      *(v14 + 24) = -1;
    }

    else
    {
      v16 = v2;
      v17 = *a1;
      v18 = v13;
      if (*a1)
      {
        v19 = *(v17 - 8);
      }

      else
      {
        v19 = 0;
      }

      v20 = WTF::ServiceWorkerRegistrationKeyHash::hash(v14, v7);
      v21 = 0;
      do
      {
        v22 = v20 & v19;
        v23 = v17 + 688 * (v20 & v19);
        v25 = WTF::HashTraitsEmptyValueChecker<WTF::HashTraits<WebCore::ServiceWorkerRegistrationKey>,false>::isEmptyValue<WebCore::ServiceWorkerRegistrationKey>(v23);
        v20 = ++v21 + v22;
      }

      while (!v25);
      if (*(v23 + 672) == 1)
      {
        WebCore::ServiceWorkerContextData::~ServiceWorkerContextData((v23 + 80), v24);
      }

      v26 = *(v23 + 32);
      *(v23 + 32) = 0;
      v13 = v18;
      if (v26 && atomic_fetch_add_explicit(v26, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v26, v24);
      }

      v2 = v16;
      v3 = v30;
      if (!*(v23 + 24))
      {
        v27 = *(v23 + 8);
        *(v23 + 8) = 0;
        if (v27 && atomic_fetch_add_explicit(v27, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v27, v24);
        }

        v28 = *v23;
        *v23 = 0;
        if (v28 && atomic_fetch_add_explicit(v28, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v28, v24);
        }
      }

      *(v23 + 24) = -1;
      mpark::detail::move_assignment<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::move_assignment(v23);
      WTF::URL::URL(v23 + 32, (v14 + 32));
      *(v23 + 80) = 0;
      *(v23 + 672) = 0;
      if (*(v14 + 672) == 1)
      {
        std::__optional_storage_base<WebCore::ServiceWorkerContextData,false>::__construct[abi:sn200100]<WebCore::ServiceWorkerContextData>(v23 + 80, (v14 + 80));
        if (*(v14 + 672))
        {
          WebCore::ServiceWorkerContextData::~ServiceWorkerContextData((v14 + 80), v7);
        }
      }

      result = *(v14 + 32);
      *(v14 + 32) = 0;
      if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        result = WTF::StringImpl::destroy(result, v7);
      }

      if (!*(v14 + 24))
      {
        v29 = *(v14 + 8);
        *(v14 + 8) = 0;
        if (v29 && atomic_fetch_add_explicit(v29, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v29, v7);
        }

        result = *v14;
        *v14 = 0;
        if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          result = WTF::StringImpl::destroy(result, v7);
        }
      }

      *(v14 + 24) = -1;
      if (v14 == a2)
      {
        v13 = v23;
      }
    }

    goto LABEL_59;
  }

  if (v2)
  {
LABEL_64:

    return WTF::fastFree((v2 - 16), v7);
  }

  return result;
}

uint64_t WTF::HashTraitsEmptyValueChecker<WTF::HashTraits<WebCore::ServiceWorkerRegistrationKey>,false>::isEmptyValue<WebCore::ServiceWorkerRegistrationKey>(WebCore::ServiceWorkerRegistrationKey *a1)
{
  v12 = *MEMORY[0x1E69E9840];
  WebCore::ServiceWorkerRegistrationKey::emptyKey(&v8, a1);
  v3 = WebCore::operator==(a1, &v8);
  v4 = v11;
  v11 = 0;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, v2);
  }

  if (!v10)
  {
    v5 = v9;
    v9 = 0;
    if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v5, v2);
    }

    v6 = v8;
    v8 = 0;
    if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v6, v2);
    }
  }

  return v3;
}

uint64_t WebCore::operator==(uint64_t a1, uint64_t a2)
{
  result = WebCore::operator==();
  if (result)
  {
    v6 = *(a1 + 32);
    v7 = *(a2 + 32);

    return WTF::equal(v6, v7, v5);
  }

  return result;
}

{
  if (!WebCore::operator==() || !WebCore::operator==() || !WTF::equal(*(a1 + 64), *(a2 + 64), v4))
  {
    return 0;
  }

  v6 = *(a1 + 104);
  v7 = *(a2 + 104);

  return WTF::equal(v6, v7, v5);
}

uint64_t WTF::ServiceWorkerRegistrationKeyHash::hash(WTF::ServiceWorkerRegistrationKeyHash *this, const WebCore::ServiceWorkerRegistrationKey *a2)
{
  v17 = -1640531527;
  v18 = 0;
  v19 = 0;
  WTF::add<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>(&v17, this);
  v3 = *(this + 4);
  if (v3)
  {
    v4 = *(v3 + 4);
    v5 = v4 & 0xFFFFFFFE;
    if ((v4 & 0xFFFFFFFE) != 0)
    {
      v6 = 0;
      v7 = v17;
      do
      {
        if (v6 >= v4)
        {
          v9 = 0;
        }

        else
        {
          v8 = *(v3 + 8);
          if ((*(v3 + 16) & 4) != 0)
          {
            v9 = *(v8 + v6);
          }

          else
          {
            v9 = *(v8 + 2 * v6);
          }
        }

        v10 = v6 + 1;
        if (v6 + 1 >= v4)
        {
          v12 = 0;
        }

        else
        {
          v11 = *(v3 + 8);
          if ((*(v3 + 16) & 4) != 0)
          {
            v12 = *(v11 + v6 + 1);
          }

          else
          {
            v12 = *(v11 + 2 * v6 + 2);
          }
        }

        v13 = (v9 << 11) ^ ((v7 + v12) << 16) ^ (v7 + v12);
        v7 = v13 + (v13 >> 11);
        v17 = v7;
        v6 = v10 + 1;
      }

      while (v10 + 1 < v5);
    }

    if (v4)
    {
      if (v5 == v4)
      {
        v15 = 0;
      }

      else
      {
        v14 = *(v3 + 8);
        if ((*(v3 + 16) & 4) != 0)
        {
          v15 = *(v14 + v5);
        }

        else
        {
          v15 = *(v14 + 2 * v5);
        }
      }

      v17 = ((v17 + v15) ^ ((v17 + v15) << 16)) + (((v17 + v15) ^ ((v17 + v15) << 16)) >> 11);
    }
  }

  return WTF::SuperFastHash::hash(&v17);
}

void std::__optional_storage_base<WebCore::ServiceWorkerContextData,false>::__construct[abi:sn200100]<WebCore::ServiceWorkerContextData>(uint64_t a1, __int128 *a2)
{
  if (a1)
  {
    v4 = *a2;
    *(a1 + 16) = *(a2 + 2);
    *a1 = v4;
    WebCore::ServiceWorkerRegistrationData::ServiceWorkerRegistrationData(a1 + 24, a2 + 24);
    *(a1 + 376) = *(a2 + 47);
    v5 = *(a2 + 48);
    *(a2 + 48) = 0;
    *(a1 + 384) = v5;
    v6 = *(a2 + 49);
    *(a2 + 49) = 0;
    *(a1 + 400) = 0;
    *(a1 + 408) = 0;
    *(a1 + 392) = v6;
    WTF::VectorBuffer<unsigned short,0ul,WTF::FastMalloc>::adopt(a1 + 400, a2 + 100);
    v7 = *(a2 + 104);
    *(a1 + 420) = *(a2 + 420);
    *(a1 + 416) = v7;
    *(a1 + 424) = *(a2 + 212);
    v8 = *(a2 + 54);
    *(a2 + 54) = 0;
    *(a1 + 432) = v8;
    v9 = *(a2 + 55);
    *(a2 + 55) = 0;
    *(a1 + 440) = v9;
    v10 = *(a2 + 56);
    *(a2 + 56) = 0;
    *(a1 + 448) = v10;
    WTF::URL::URL(a1 + 456, a2 + 57);
    *(a1 + 496) = *(a2 + 124);
    *(a1 + 517) = 0;
    *(a1 + 504) = 0;
    *(a1 + 512) = 0;
    v11 = *(a2 + 63);
    *(a2 + 63) = 0;
    *(a1 + 504) = v11;
    LODWORD(v11) = *(a2 + 128);
    *(a2 + 128) = 0;
    *(a1 + 512) = v11;
    LODWORD(v11) = *(a2 + 129);
    *(a2 + 129) = 0;
    *(a1 + 516) = v11;
    LODWORD(v11) = *(a2 + 130);
    *(a2 + 130) = 0;
    *(a1 + 520) = v11;
    LOBYTE(v11) = *(a2 + 524);
    *(a2 + 524) = 0;
    *(a1 + 524) = v11;
    v12 = a2[33];
    v13 = a2[35];
    *(a1 + 544) = a2[34];
    *(a1 + 560) = v13;
    *(a1 + 528) = v12;
    *(a1 + 576) = *(a2 + 576);
    v14 = *(a2 + 73);
    *(a2 + 73) = 0;
    *(a1 + 584) = v14;
    *(a1 + 592) = 1;
  }

  else
  {
    __break(1u);
  }
}

void std::__optional_storage_base<WebCore::ServiceWorkerContextData,false>::__assign_from[abi:sn200100]<std::__optional_move_assign_base<WebCore::ServiceWorkerContextData,false>>(WebCore::ServiceWorkerContextData *a1, uint64_t a2)
{
  if (*(a1 + 592) == *(a2 + 592))
  {
    if (*(a1 + 592))
    {

      WebCore::ServiceWorkerContextData::operator=(a1, a2);
    }
  }

  else if (*(a1 + 592))
  {
    WebCore::ServiceWorkerContextData::~ServiceWorkerContextData(a1, a2);
    *(v3 + 592) = 0;
  }

  else
  {

    std::__optional_storage_base<WebCore::ServiceWorkerContextData,false>::__construct[abi:sn200100]<WebCore::ServiceWorkerContextData>(a1, a2);
  }
}

uint64_t WebCore::ServiceWorkerContextData::operator=(uint64_t a1, __int128 *a2)
{
  v4 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *a1 = v4;
  WebCore::SecurityOriginData::operator=(a1 + 24);
  WTF::URL::operator=(a1 + 56, a2 + 56);
  *(a1 + 96) = *(a2 + 12);
  WTF::URL::operator=(a1 + 104, a2 + 104);
  *(a1 + 144) = a2[9];
  std::__optional_storage_base<WebCore::ServiceWorkerData,false>::__assign_from[abi:sn200100]<std::__optional_move_assign_base<WebCore::ServiceWorkerData,false>>(a1 + 160, (a2 + 10));
  std::__optional_storage_base<WebCore::ServiceWorkerData,false>::__assign_from[abi:sn200100]<std::__optional_move_assign_base<WebCore::ServiceWorkerData,false>>(a1 + 232, a2 + 232);
  std::__optional_storage_base<WebCore::ServiceWorkerData,false>::__assign_from[abi:sn200100]<std::__optional_move_assign_base<WebCore::ServiceWorkerData,false>>(a1 + 304, (a2 + 19));
  *(a1 + 376) = *(a2 + 47);
  v5 = *(a2 + 48);
  *(a2 + 48) = 0;
  v6 = *(a1 + 384);
  *(a1 + 384) = v5;
  if (v6 && atomic_fetch_add(v6 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v6 + 2);
    (*(*v6 + 8))(v6);
  }

  v7 = *(a2 + 49);
  *(a2 + 49) = 0;
  v8 = *(a1 + 392);
  *(a1 + 392) = v7;
  if (v8)
  {
    CFRelease(v8);
  }

  v9 = *(a1 + 412);
  if (v9)
  {
    WTF::VectorDestructor<true,WebCore::SpeechRecognitionAlternativeData>::destruct(*(a1 + 400), (*(a1 + 400) + 16 * v9));
  }

  WTF::VectorBuffer<unsigned short,0ul,WTF::FastMalloc>::adopt(a1 + 400, a2 + 100);
  v11 = *(a2 + 104);
  *(a1 + 420) = *(a2 + 420);
  *(a1 + 416) = v11;
  *(a1 + 424) = *(a2 + 212);
  v12 = *(a2 + 54);
  *(a2 + 54) = 0;
  v13 = *(a1 + 432);
  *(a1 + 432) = v12;
  if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v13, v10);
  }

  v14 = *(a2 + 55);
  *(a2 + 55) = 0;
  v15 = *(a1 + 440);
  *(a1 + 440) = v14;
  if (v15 && atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v15, v10);
  }

  v16 = *(a2 + 56);
  *(a2 + 56) = 0;
  v17 = *(a1 + 448);
  *(a1 + 448) = v16;
  if (v17 && atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v17, v10);
  }

  WTF::URL::operator=(a1 + 456, a2 + 456);
  *&v18 = 0;
  *(a1 + 496) = *(a2 + 124);
  v19 = *(a2 + 63);
  v20 = *(a2 + 64);
  *(a2 + 504) = v18;
  v21 = *(a2 + 130);
  *(a2 + 130) = 0;
  v22 = *(a2 + 524);
  *(a2 + 524) = 0;
  v23 = *(a1 + 504);
  *(a1 + 504) = v19;
  v24 = *(a1 + 512);
  *(a1 + 512) = v20;
  *(a1 + 520) = v21;
  *(a1 + 524) = v22;
  if (v23)
  {
    WTF::RobinHoodHashTable<WTF::URL,WTF::KeyValuePair<WTF::URL,WebCore::ServiceWorkerImportedScript>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::URL,WebCore::ServiceWorkerImportedScript>>,WTF::DefaultHash<WTF::URL>,WTF::HashMap<WTF::URL,WebCore::ServiceWorkerImportedScript,WTF::DefaultHash<WTF::URL>,WTF::HashTraits<WTF::URL>,WTF::HashTraits<WebCore::ServiceWorkerImportedScript>,WTF::MemoryCompactRobinHoodHashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::URL>,WTF::MemoryCompactRobinHoodHashTableSizePolicy,WTF::FastMalloc>::deallocateTable(v23, v24);
  }

  v25 = a2[33];
  v26 = a2[34];
  *(a1 + 560) = *(a2 + 560);
  *(a1 + 528) = v25;
  *(a1 + 544) = v26;
  *(a1 + 576) = *(a2 + 576);
  v27 = *(a2 + 73);
  *(a2 + 73) = 0;
  v28 = *(a1 + 584);
  *(a1 + 584) = v27;
  if (v28 && atomic_fetch_add_explicit(v28, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v28, v24);
  }

  return a1;
}

WebCore::ServiceWorkerContextData *WebCore::ServiceWorkerContextData::ServiceWorkerContextData(WebCore::ServiceWorkerContextData *this, const WebCore::ServiceWorkerContextData *a2)
{
  v4 = *a2;
  *(this + 2) = *(a2 + 2);
  *this = v4;
  mpark::detail::move_assignment<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::move_assignment(this + 24, a2 + 24);
  v5 = *(a2 + 7);
  if (v5)
  {
    atomic_fetch_add_explicit(v5, 2u, memory_order_relaxed);
  }

  *(this + 7) = v5;
  v6 = *(a2 + 5);
  *(this + 4) = *(a2 + 4);
  *(this + 5) = v6;
  *(this + 12) = *(a2 + 12);
  v7 = *(a2 + 13);
  if (v7)
  {
    atomic_fetch_add_explicit(v7, 2u, memory_order_relaxed);
  }

  *(this + 13) = v7;
  v8 = *(a2 + 8);
  *(this + 7) = *(a2 + 7);
  *(this + 8) = v8;
  v9 = *(a2 + 9);
  *(this + 160) = 0;
  *(this + 9) = v9;
  *(this + 224) = 0;
  if (*(a2 + 224) == 1)
  {
    *(this + 10) = *(a2 + 10);
    v10 = *(a2 + 22);
    if (v10)
    {
      atomic_fetch_add_explicit(v10, 2u, memory_order_relaxed);
    }

    *(this + 22) = v10;
    v11 = *(a2 + 184);
    *(this + 200) = *(a2 + 200);
    *(this + 184) = v11;
    *(this + 108) = *(a2 + 108);
    *(this + 224) = 1;
  }

  *(this + 232) = 0;
  *(this + 296) = 0;
  if (*(a2 + 296) == 1)
  {
    *(this + 232) = *(a2 + 232);
    v12 = *(a2 + 31);
    if (v12)
    {
      atomic_fetch_add_explicit(v12, 2u, memory_order_relaxed);
    }

    *(this + 31) = v12;
    v13 = *(a2 + 17);
    *(this + 16) = *(a2 + 16);
    *(this + 17) = v13;
    *(this + 144) = *(a2 + 144);
    *(this + 296) = 1;
  }

  *(this + 304) = 0;
  *(this + 368) = 0;
  if (*(a2 + 368) == 1)
  {
    *(this + 19) = *(a2 + 19);
    v14 = *(a2 + 40);
    if (v14)
    {
      atomic_fetch_add_explicit(v14, 2u, memory_order_relaxed);
    }

    *(this + 40) = v14;
    v15 = *(a2 + 344);
    *(this + 328) = *(a2 + 328);
    *(this + 344) = v15;
    *(this + 180) = *(a2 + 180);
    *(this + 368) = 1;
  }

  *(this + 47) = *(a2 + 47);
  v16 = *(a2 + 48);
  if (v16)
  {
    atomic_fetch_add((v16 + 8), 1u);
  }

  v17 = *(a2 + 49);
  *(this + 48) = v16;
  *(this + 49) = v17;
  if (v17)
  {
    CFRetain(v17);
  }

  WTF::Vector<std::pair<WTF::String,WebCore::ContentSecurityPolicyHeaderType>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(this + 400, a2 + 50);
  v18 = *(a2 + 104);
  *(this + 420) = *(a2 + 420);
  *(this + 104) = v18;
  *(this + 212) = *(a2 + 212);
  v19 = *(a2 + 54);
  if (v19)
  {
    atomic_fetch_add_explicit(v19, 2u, memory_order_relaxed);
  }

  *(this + 54) = v19;
  v20 = *(a2 + 55);
  if (v20)
  {
    atomic_fetch_add_explicit(v20, 2u, memory_order_relaxed);
  }

  *(this + 55) = v20;
  v21 = *(a2 + 56);
  if (v21)
  {
    atomic_fetch_add_explicit(v21, 2u, memory_order_relaxed);
  }

  *(this + 56) = v21;
  v22 = *(a2 + 57);
  if (v22)
  {
    atomic_fetch_add_explicit(v22, 2u, memory_order_relaxed);
  }

  *(this + 57) = v22;
  v23 = *(a2 + 30);
  *(this + 29) = *(a2 + 29);
  *(this + 30) = v23;
  *(this + 124) = *(a2 + 124);
  WTF::RobinHoodHashTable<WTF::URL,WTF::KeyValuePair<WTF::URL,WebCore::ServiceWorkerImportedScript>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::URL,WebCore::ServiceWorkerImportedScript>>,WTF::DefaultHash<WTF::URL>,WTF::HashMap<WTF::URL,WebCore::ServiceWorkerImportedScript,WTF::DefaultHash<WTF::URL>,WTF::HashTraits<WTF::URL>,WTF::HashTraits<WebCore::ServiceWorkerImportedScript>,WTF::MemoryCompactRobinHoodHashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::URL>,WTF::MemoryCompactRobinHoodHashTableSizePolicy,WTF::FastMalloc>::RobinHoodHashTable(this + 504, a2 + 504);
  v24 = *(a2 + 33);
  v25 = *(a2 + 35);
  *(this + 34) = *(a2 + 34);
  *(this + 35) = v25;
  *(this + 33) = v24;
  *(this + 576) = *(a2 + 576);
  v26 = *(a2 + 73);
  if (v26)
  {
    atomic_fetch_add_explicit(v26, 2u, memory_order_relaxed);
  }

  *(this + 73) = v26;
  return this;
}

uint64_t WTF::RobinHoodHashTable<WTF::URL,WTF::KeyValuePair<WTF::URL,WebCore::ServiceWorkerImportedScript>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::URL,WebCore::ServiceWorkerImportedScript>>,WTF::DefaultHash<WTF::URL>,WTF::HashMap<WTF::URL,WebCore::ServiceWorkerImportedScript,WTF::DefaultHash<WTF::URL>,WTF::HashTraits<WTF::URL>,WTF::HashTraits<WebCore::ServiceWorkerImportedScript>,WTF::MemoryCompactRobinHoodHashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::URL>,WTF::MemoryCompactRobinHoodHashTableSizePolicy,WTF::FastMalloc>::RobinHoodHashTable(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 13) = 0;
  v3 = *(a2 + 8);
  if (v3)
  {
    v4 = *(a2 + 12) == 0;
  }

  else
  {
    v4 = 1;
  }

  if (!v4)
  {
    v5 = a2;
    Table = WTF::RobinHoodHashTable<WTF::URL,WTF::KeyValuePair<WTF::URL,WebCore::ServiceWorkerImportedScript>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::URL,WebCore::ServiceWorkerImportedScript>>,WTF::DefaultHash<WTF::URL>,WTF::HashMap<WTF::URL,WebCore::ServiceWorkerImportedScript,WTF::DefaultHash<WTF::URL>,WTF::HashTraits<WTF::URL>,WTF::HashTraits<WebCore::ServiceWorkerImportedScript>,WTF::MemoryCompactRobinHoodHashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::URL>,WTF::MemoryCompactRobinHoodHashTableSizePolicy,WTF::FastMalloc>::allocateTable(v3);
    *a1 = Table;
    v7 = *(v5 + 8);
    *(a1 + 8) = v7;
    v8 = (~(Table << 32) + Table) ^ ((~(Table << 32) + Table) >> 22);
    v9 = 9 * ((v8 + ~(v8 << 13)) ^ ((v8 + ~(v8 << 13)) >> 8));
    v10 = (v9 ^ (v9 >> 15)) + ~((v9 ^ (v9 >> 15)) << 27);
    *(a1 + 16) = (v10 >> 31) ^ v10;
    *(a1 + 20) = *(v5 + 20);
    if (v7)
    {
      v11 = 0;
      v40 = v5;
      do
      {
        v12 = *v5 + 96 * v11;
        if ((WTF::HashTraitsEmptyValueChecker<WTF::HashTraits<WTF::URL>,false>::isEmptyValue<WTF::URL>(v12) & 1) == 0)
        {
          v13 = *v12;
          if (*v12)
          {
            atomic_fetch_add_explicit(v13, 2u, memory_order_relaxed);
          }

          v41 = v13;
          v14 = *(v12 + 8);
          v43 = *(v12 + 24);
          v42 = v14;
          v15 = *(v12 + 40);
          if (v15)
          {
            atomic_fetch_add((v15 + 8), 1u);
          }

          v44 = v15;
          v16 = *(v12 + 48);
          if (v16)
          {
            atomic_fetch_add_explicit(v16, 2u, memory_order_relaxed);
          }

          v45 = v16;
          v17 = *(v12 + 56);
          v47 = *(v12 + 72);
          v46 = v17;
          v18 = *(v12 + 88);
          if (v18)
          {
            atomic_fetch_add_explicit(v18, 2u, memory_order_relaxed);
          }

          v48 = v18;
          v19 = *(a1 + 8);
          v20 = *(a1 + 16);
          v21 = *(v41 + 4);
          if (v21 < 0x100)
          {
            v22 = WTF::StringImpl::hashSlowCase(v41);
          }

          else
          {
            v22 = v21 >> 8;
          }

          v23 = v19 - 1;
          v24 = (v22 ^ v20) & (v19 - 1);
          v25 = *a1 + 96 * v24;
          if ((WTF::HashTraitsEmptyValueChecker<WTF::HashTraits<WTF::URL>,false>::isEmptyValue<WTF::URL>(v25) & 1) == 0)
          {
            v35 = 0;
            do
            {
              v36 = *(*v25 + 16);
              if (v36 < 0x100)
              {
                v37 = WTF::StringImpl::hashSlowCase(*v25);
              }

              else
              {
                v37 = v36 >> 8;
              }

              v38 = (v24 + v19 - ((v37 ^ v20) & v23)) & v23;
              if (v35 > v38)
              {
                std::swap[abi:sn200100]<WTF::KeyValuePair<WTF::URL,WebCore::ServiceWorkerImportedScript>>(&v41, v25);
                v35 = v38;
              }

              ++v35;
              v24 = (v24 + 1) & v23;
              v25 = *a1 + 96 * v24;
            }

            while ((WTF::HashTraitsEmptyValueChecker<WTF::HashTraits<WTF::URL>,false>::isEmptyValue<WTF::URL>(v25) & 1) == 0);
          }

          WTF::URL::operator=(v25, &v41);
          v26 = v44;
          v44 = 0;
          v27 = *(v25 + 40);
          *(v25 + 40) = v26;
          if (v27 && atomic_fetch_add(v27 + 2, 0xFFFFFFFF) == 1)
          {
            atomic_store(1u, v27 + 2);
            (*(*v27 + 8))(v27);
          }

          WTF::URL::operator=(v25 + 48, &v45);
          v29 = v48;
          v48 = 0;
          v30 = *(v25 + 88);
          *(v25 + 88) = v29;
          v5 = v40;
          if (v30 && atomic_fetch_add_explicit(v30, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v30, v28);
          }

          v31 = v48;
          v48 = 0;
          if (v31 && atomic_fetch_add_explicit(v31, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v31, v28);
          }

          v32 = v45;
          v45 = 0;
          if (v32 && atomic_fetch_add_explicit(v32, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v32, v28);
          }

          v33 = v44;
          v44 = 0;
          if (v33 && atomic_fetch_add(v33 + 2, 0xFFFFFFFF) == 1)
          {
            atomic_store(1u, v33 + 2);
            (*(*v33 + 8))(v33);
          }

          v34 = v41;
          v41 = 0;
          if (v34 && atomic_fetch_add_explicit(v34, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v34, v28);
          }
        }

        ++v11;
      }

      while (v11 < *(v5 + 8));
    }
  }

  return a1;
}

__n128 std::__optional_storage_base<WebCore::ServiceWorkerData,false>::__assign_from[abi:sn200100]<std::__optional_copy_assign_base<WebCore::ServiceWorkerData,false> const&>(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 64) == *(a2 + 64))
  {
    if (*(a1 + 64))
    {
      *a1 = *a2;
      WTF::String::operator=((a1 + 16), (a2 + 16));
      result = *(a2 + 24);
      *(a1 + 40) = *(a2 + 40);
      *(a1 + 24) = result;
      *(a1 + 56) = *(a2 + 56);
    }
  }

  else if (*(a1 + 64))
  {

    std::__optional_destruct_base<WebCore::ServiceWorkerData,false>::reset[abi:sn200100](a1, a2);
  }

  else
  {
    *a1 = *a2;
    v5 = *(a2 + 16);
    if (v5)
    {
      atomic_fetch_add_explicit(v5, 2u, memory_order_relaxed);
    }

    *(a1 + 16) = v5;
    result = *(a2 + 24);
    *(a1 + 40) = *(a2 + 40);
    *(a1 + 24) = result;
    *(a1 + 56) = *(a2 + 56);
    *(a1 + 64) = 1;
  }

  return result;
}

unsigned int *WTF::Vector<std::pair<WTF::String,WebCore::ContentSecurityPolicyHeaderType>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::operator=(unsigned int *a1, unsigned int *a2)
{
  if (a2 != a1)
  {
    v4 = a1[3];
    v5 = a2[3];
    if (v4 <= v5)
    {
      if (v5 > a1[2])
      {
        WTF::Vector<std::pair<WTF::String,WebCore::ContentSecurityPolicyHeaderType>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity(a1, 0);
        WTF::Vector<std::pair<WTF::String,WTF::String>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, a2[3]);
        LODWORD(v4) = a1[3];
      }
    }

    else
    {
      WTF::VectorDestructor<true,WebCore::SpeechRecognitionAlternativeData>::destruct((*a1 + 16 * v5), (*a1 + 16 * v4));
      a1[3] = v5;
      LODWORD(v4) = v5;
    }

    v6 = *a2;
    v7 = *a1;
    if (v4)
    {
      v8 = v6 + 16 * v4;
      do
      {
        WTF::String::operator=(v7, v6);
        *(v7 + 8) = *(v6 + 8);
        v6 += 16;
        v7 += 16;
      }

      while (v6 != v8);
      v6 = *a2;
      LODWORD(v4) = a1[3];
      v7 = *a1;
    }

    v9 = a2[3];
    if (v4 != v9)
    {
      v10 = v6 + 16 * v9;
      v11 = v7 + 16 * v4;
      v12 = v6 + 16 * v4;
      do
      {
        v13 = *v12;
        if (*v12)
        {
          atomic_fetch_add_explicit(v13, 2u, memory_order_relaxed);
        }

        *v11 = v13;
        *(v11 + 8) = *(v12 + 8);
        v11 += 16;
        v12 += 16;
      }

      while (v12 != v10);
      LODWORD(v4) = a2[3];
    }

    a1[3] = v4;
  }

  return a1;
}

uint64_t WTF::Vector<WebCore::ServiceWorkerRegistrationKey,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(uint64_t a1, WTF::StringImpl *a2)
{
  v3 = *(a1 + 12);
  if (v3)
  {
    v6 = *a1;
    v7 = 72 * v3;
    do
    {
      WebCore::ServiceWorkerRegistrationKey::~ServiceWorkerRegistrationKey(v6, a2);
      v6 = (v8 + 72);
      v7 -= 72;
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

BOOL WTF::HashTable<WebCore::ServiceWorkerRegistrationKey,WTF::KeyValuePair<WebCore::ServiceWorkerRegistrationKey,std::optional<WebCore::ServiceWorkerContextData>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ServiceWorkerRegistrationKey,std::optional<WebCore::ServiceWorkerContextData>>>,WTF::DefaultHash<WebCore::ServiceWorkerRegistrationKey>,WTF::HashMap<WebCore::ServiceWorkerRegistrationKey,std::optional<WebCore::ServiceWorkerContextData>,WTF::DefaultHash<WebCore::ServiceWorkerRegistrationKey>,WTF::HashTraits<WebCore::ServiceWorkerRegistrationKey>,WTF::HashTraits<std::optional<WebCore::ServiceWorkerContextData>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ServiceWorkerRegistrationKey>,WTF::FastMalloc>::isEmptyOrDeletedBucket(WebCore::ServiceWorkerRegistrationKey *a1)
{
  v2 = WTF::HashTraitsEmptyValueChecker<WTF::HashTraits<WebCore::ServiceWorkerRegistrationKey>,false>::isEmptyValue<WebCore::ServiceWorkerRegistrationKey>(a1);
  if (v2)
  {
    return 1;
  }

  if (!*(a1 + 24))
  {
    return *a1 == -1;
  }

  if (*(a1 + 24) != 1)
  {
    mpark::throw_bad_variant_access(v2);
  }

  return 0;
}

unint64_t WTF::Vector<WebCore::ServiceWorkerRegistrationKey,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v3 = a3;
  v5 = *a1;
  if (*a1 > a3 || v5 + 72 * *(a1 + 12) <= a3)
  {
    v10 = *(a1 + 8);
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

    WTF::Vector<WebCore::ServiceWorkerRegistrationKey,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v12);
  }

  else
  {
    v6 = a3 - v5;
    v7 = *(a1 + 8);
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

    WTF::Vector<WebCore::ServiceWorkerRegistrationKey,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v9);
    return *a1 + v6;
  }

  return v3;
}

uint64_t WTF::Vector<WebCore::ServiceWorkerRegistrationKey,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 8) < a2)
  {
    if (a2 >= 0x38E38E4)
    {
      __break(0xC471u);
      JUMPOUT(0x19DD7B628);
    }

    v3 = *a1;
    v4 = (*a1 + 72 * *(a1 + 12));
    v5 = 72 * a2;
    v6 = WTF::fastMalloc((72 * a2));
    *(a1 + 8) = v5 / 0x48;
    *a1 = v6;
    WTF::VectorMover<false,WebCore::ServiceWorkerRegistrationKey>::move(v3, v4, v6);
    if (v3)
    {
      if (*a1 == v3)
      {
        *a1 = 0;
        *(a1 + 8) = 0;
      }

      WTF::fastFree(v3, v7);
    }
  }

  return 1;
}

WTF::StringImpl *WTF::VectorMover<false,WebCore::ServiceWorkerRegistrationKey>::move(WTF::StringImpl *result, WTF::StringImpl *a2, _BYTE *a3)
{
  if (result != a2)
  {
    v5 = (result + 32);
    do
    {
      v6 = (v5 - 4);
      mpark::detail::move_assignment<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::move_assignment(a3);
      WTF::URL::URL((a3 + 32), v5);
      result = *v5;
      *v5 = 0;
      if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        result = WTF::StringImpl::destroy(result, v7);
      }

      if (!*(v5 - 8))
      {
        v8 = *(v5 - 3);
        *(v5 - 3) = 0;
        if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v8, v7);
        }

        result = *v6;
        *v6 = 0;
        if (result)
        {
          if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            result = WTF::StringImpl::destroy(result, v7);
          }
        }
      }

      *(v5 - 8) = -1;
      a3 += 72;
      v9 = v5 + 5;
      v5 += 9;
    }

    while (v9 != a2);
  }

  return result;
}

uint64_t WTF::Vector<WebCore::ServiceWorkerContextData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebCore::ServiceWorkerContextData>(uint64_t a1, unint64_t a2)
{
  v3 = WTF::Vector<WebCore::ServiceWorkerContextData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(a1, *(a1 + 12) + 1, a2);
  v4 = *a1 + 592 * *(a1 + 12);
  v5 = *v3;
  *(v4 + 16) = *(v3 + 16);
  *v4 = v5;
  WebCore::ServiceWorkerRegistrationData::ServiceWorkerRegistrationData(v4 + 24, v3 + 24);
  *(v4 + 376) = *(v3 + 376);
  v6 = *(v3 + 384);
  *(v3 + 384) = 0;
  *(v4 + 384) = v6;
  v7 = *(v3 + 392);
  *(v3 + 392) = 0;
  *(v4 + 400) = 0;
  *(v4 + 408) = 0;
  *(v4 + 392) = v7;
  WTF::VectorBuffer<unsigned short,0ul,WTF::FastMalloc>::adopt(v4 + 400, (v3 + 400));
  v8 = *(v3 + 416);
  *(v4 + 420) = *(v3 + 420);
  *(v4 + 416) = v8;
  *(v4 + 424) = *(v3 + 424);
  v9 = *(v3 + 432);
  *(v3 + 432) = 0;
  *(v4 + 432) = v9;
  v10 = *(v3 + 440);
  *(v3 + 440) = 0;
  *(v4 + 440) = v10;
  v11 = *(v3 + 448);
  *(v3 + 448) = 0;
  *(v4 + 448) = v11;
  WTF::URL::URL(v4 + 456, (v3 + 456));
  *(v4 + 496) = *(v3 + 496);
  *(v4 + 517) = 0;
  *(v4 + 504) = 0;
  *(v4 + 512) = 0;
  v12 = *(v3 + 504);
  *(v3 + 504) = 0;
  *(v4 + 504) = v12;
  LODWORD(v12) = *(v3 + 512);
  *(v3 + 512) = 0;
  *(v4 + 512) = v12;
  LODWORD(v12) = *(v3 + 516);
  *(v3 + 516) = 0;
  *(v4 + 516) = v12;
  LODWORD(v12) = *(v3 + 520);
  *(v3 + 520) = 0;
  *(v4 + 520) = v12;
  LOBYTE(v12) = *(v3 + 524);
  *(v3 + 524) = 0;
  *(v4 + 524) = v12;
  v13 = *(v3 + 528);
  v14 = *(v3 + 560);
  *(v4 + 544) = *(v3 + 544);
  *(v4 + 560) = v14;
  *(v4 + 528) = v13;
  *(v4 + 576) = *(v3 + 576);
  v15 = *(v3 + 584);
  *(v3 + 584) = 0;
  *(v4 + 584) = v15;
  ++*(a1 + 12);
  return 1;
}

unint64_t WTF::Vector<WebCore::ServiceWorkerContextData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v3 = a3;
  v5 = *a1;
  if (*a1 > a3 || v5 + 592 * *(a1 + 12) <= a3)
  {
    v10 = *(a1 + 8);
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

    WTF::Vector<WebCore::ServiceWorkerContextData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v12);
  }

  else
  {
    v6 = a3 - v5;
    v7 = *(a1 + 8);
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

    WTF::Vector<WebCore::ServiceWorkerContextData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v9);
    return *a1 + v6;
  }

  return v3;
}

uint64_t WTF::Vector<WebCore::ServiceWorkerContextData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 8) < a2)
  {
    if (a2 >= 0x6EB3E5)
    {
      __break(0xC471u);
      JUMPOUT(0x19DD7B9DCLL);
    }

    v3 = *a1;
    v4 = (*a1 + 592 * *(a1 + 12));
    v5 = 592 * a2;
    v6 = WTF::fastMalloc((592 * a2));
    *(a1 + 8) = v5 / 0x250;
    *a1 = v6;
    WTF::VectorMover<false,WebCore::ServiceWorkerContextData>::move(v3, v4, v6);
    if (v3)
    {
      if (*a1 == v3)
      {
        *a1 = 0;
        *(a1 + 8) = 0;
      }

      WTF::fastFree(v3, v7);
    }
  }

  return 1;
}

void WTF::VectorMover<false,WebCore::ServiceWorkerContextData>::move(__int128 *a1, __int128 *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v5 = a1;
    do
    {
      v6 = *v5;
      *(a3 + 16) = *(v5 + 2);
      *a3 = v6;
      WebCore::ServiceWorkerRegistrationData::ServiceWorkerRegistrationData(a3 + 24, v5 + 24);
      *(a3 + 376) = *(v5 + 47);
      v7 = *(v5 + 48);
      *(v5 + 48) = 0;
      *(a3 + 384) = v7;
      v8 = *(v5 + 49);
      *(v5 + 49) = 0;
      *(a3 + 400) = 0;
      *(a3 + 408) = 0;
      *(a3 + 392) = v8;
      WTF::VectorBuffer<unsigned short,0ul,WTF::FastMalloc>::adopt(a3 + 400, v5 + 100);
      v9 = *(v5 + 104);
      *(a3 + 420) = *(v5 + 420);
      *(a3 + 416) = v9;
      *(a3 + 424) = *(v5 + 212);
      v10 = *(v5 + 54);
      *(v5 + 54) = 0;
      *(a3 + 432) = v10;
      v11 = *(v5 + 55);
      *(v5 + 55) = 0;
      *(a3 + 440) = v11;
      v12 = *(v5 + 56);
      *(v5 + 56) = 0;
      *(a3 + 448) = v12;
      WTF::URL::URL(a3 + 456, v5 + 57);
      *(a3 + 496) = *(v5 + 124);
      *(a3 + 517) = 0;
      *(a3 + 504) = 0;
      *(a3 + 512) = 0;
      v13 = *(v5 + 63);
      *(v5 + 63) = 0;
      *(a3 + 504) = v13;
      LODWORD(v13) = *(v5 + 128);
      *(v5 + 128) = 0;
      *(a3 + 512) = v13;
      LODWORD(v13) = *(v5 + 129);
      *(v5 + 129) = 0;
      *(a3 + 516) = v13;
      LODWORD(v13) = *(v5 + 130);
      *(v5 + 130) = 0;
      *(a3 + 520) = v13;
      LOBYTE(v13) = *(v5 + 524);
      *(v5 + 524) = 0;
      *(a3 + 524) = v13;
      v14 = v5[33];
      v15 = v5[35];
      *(a3 + 544) = v5[34];
      *(a3 + 560) = v15;
      *(a3 + 528) = v14;
      *(a3 + 576) = *(v5 + 576);
      v16 = *(v5 + 73);
      *(v5 + 73) = 0;
      *(a3 + 584) = v16;
      WebCore::ServiceWorkerContextData::~ServiceWorkerContextData(v5, v17);
      v5 += 37;
      a3 += 592;
    }

    while (v5 != a2);
  }
}

void *WTF::Detail::CallableWrapper<WebKit::WebSWRegistrationStore::updateToStorage(WTF::CompletionHandler<void ()(void)> &&)::$_0,void,std::optional<WTF::Vector<WebCore::ServiceWorkerScripts,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>::~CallableWrapper(void *a1, void *a2)
{
  *a1 = &unk_1F1108058;
  v3 = a1[2];
  a1[2] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = a1[1];
  a1[1] = 0;
  if (v4 && atomic_fetch_add(v4, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v4);
    WTF::fastFree(v4, a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebSWRegistrationStore::updateToStorage(WTF::CompletionHandler<void ()(void)> &&)::$_0,void,std::optional<WTF::Vector<WebCore::ServiceWorkerScripts,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F1108058;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 1);
  *(this + 1) = 0;
  if (v4 && atomic_fetch_add(v4, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v4);
    WTF::fastFree(v4, a2);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebSWRegistrationStore::updateToStorage(WTF::CompletionHandler<void ()(void)> &&)::$_0,void,std::optional<WTF::Vector<WebCore::ServiceWorkerScripts,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>::call(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_22;
  }

  v4 = *(v3 + 8);
  if (!v4)
  {
LABEL_22:
    v14 = 1;
LABEL_15:
    v15 = *(a1 + 16);
    *(a1 + 16) = 0;
    (*(*v15 + 16))(v15);
    result = (*(*v15 + 8))(v15);
    if (v14)
    {
      return result;
    }

    goto LABEL_16;
  }

  ++*(v4 + 16);
  v5 = *(v4 + 24);
  if (!v5 || !*(v5 + 8) || *(a2 + 16) != 1)
  {
    v14 = 0;
    goto LABEL_15;
  }

  v6 = *a2;
  v19 = *a2;
  v8 = *(a2 + 2);
  v7 = *(a2 + 3);
  *a2 = 0;
  a2[1] = 0;
  v20 = v8;
  v21 = v7;
  if (v7)
  {
    v9 = 40 * v7;
    v10 = v6 + 8;
    do
    {
      v11 = *(v4 + 24);
      if (v11 && (v12 = *(v11 + 8)) != 0)
      {
        v13 = (v12 + 8);
        ++*(v12 + 8);
        WebCore::SWServer::didSaveWorkerScriptsToDisk();
        WTF::RefCounted<WebCore::SWServer>::deref(v13);
      }

      else
      {
        WebCore::SWServer::didSaveWorkerScriptsToDisk();
      }

      v10 += 40;
      v9 -= 40;
    }

    while (v9);
  }

  v17 = *(a1 + 16);
  *(a1 + 16) = 0;
  (*(*v17 + 16))(v17);
  (*(*v17 + 8))(v17);
  result = WTF::Vector<WebCore::ServiceWorkerScripts,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v19, v18);
LABEL_16:
  if (*(v4 + 16) == 1)
  {
    return (*(*v4 + 8))(v4);
  }

  --*(v4 + 16);
  return result;
}

uint64_t WTF::Vector<WebCore::ServiceWorkerScripts,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(uint64_t a1, void *a2)
{
  v3 = *(a1 + 12);
  if (v3)
  {
    v6 = *a1;
    v7 = 40 * v3;
    do
    {
      WebCore::ServiceWorkerScripts::~ServiceWorkerScripts(v6);
      v6 = (v8 + 40);
      v7 -= 40;
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

void WebCore::ServiceWorkerScripts::~ServiceWorkerScripts(WebCore::ServiceWorkerScripts *this)
{
  v2 = *(this + 2);
  if (v2)
  {
    WTF::RobinHoodHashTable<WTF::URL,WTF::KeyValuePair<WTF::URL,WebCore::ScriptBuffer>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::URL,WebCore::ScriptBuffer>>,WTF::DefaultHash<WTF::URL>,WTF::HashMap<WTF::URL,WebCore::ScriptBuffer,WTF::DefaultHash<WTF::URL>,WTF::HashTraits<WTF::URL>,WTF::HashTraits<WebCore::ScriptBuffer>,WTF::MemoryCompactRobinHoodHashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::URL>,WTF::MemoryCompactRobinHoodHashTableSizePolicy,WTF::FastMalloc>::deallocateTable(v2, *(this + 6));
  }

  v3 = *(this + 1);
  *(this + 1) = 0;
  if (v3)
  {
    if (atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v3 + 2);
      (*(*v3 + 8))(v3);
    }
  }
}

uint64_t WTF::RobinHoodHashTable<WTF::URL,WTF::KeyValuePair<WTF::URL,WebCore::ScriptBuffer>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::URL,WebCore::ScriptBuffer>>,WTF::DefaultHash<WTF::URL>,WTF::HashMap<WTF::URL,WebCore::ScriptBuffer,WTF::DefaultHash<WTF::URL>,WTF::HashTraits<WTF::URL>,WTF::HashTraits<WebCore::ScriptBuffer>,WTF::MemoryCompactRobinHoodHashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::URL>,WTF::MemoryCompactRobinHoodHashTableSizePolicy,WTF::FastMalloc>::deallocateTable(WTF *this, WTF::StringImpl *a2)
{
  if (a2)
  {
    v3 = this;
    v4 = a2;
    do
    {
      v5 = *(v3 + 5);
      *(v3 + 5) = 0;
      if (v5 && atomic_fetch_add(v5 + 2, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v5 + 2);
        (*(*v5 + 8))(v5);
      }

      v6 = *v3;
      *v3 = 0;
      if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v6, a2);
      }

      v3 = (v3 + 48);
      --v4;
    }

    while (v4);
  }

  return WTF::fastFree(this, a2);
}

_DWORD *WTF::RefCounted<WebKit::WebSharedWorker>::deref(_DWORD *result)
{
  if (*result == 1)
  {
    WebKit::WebSharedWorker::~WebSharedWorker((result - 2));

    return bmalloc::api::tzoneFree(v2, v3);
  }

  else
  {
    --*result;
  }

  return result;
}

_DWORD *WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::SharedWorkerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::SharedWorkerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakRef<WebKit::WebSharedWorker,WTF::DefaultWeakPtrImpl>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::SharedWorkerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakRef<WebKit::WebSharedWorker,WTF::DefaultWeakPtrImpl>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::SharedWorkerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::SharedWorkerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakRef<WebKit::WebSharedWorker,WTF::DefaultWeakPtrImpl>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::SharedWorkerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::SharedWorkerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakRef<WebKit::WebSharedWorker,WTF::DefaultWeakPtrImpl>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::SharedWorkerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand()
{
  if (qword_1ED6426D8 && (v0 = *(qword_1ED6426D8 - 4)) != 0)
  {
    return WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::SharedWorkerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::SharedWorkerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakRef<WebKit::WebSharedWorker,WTF::DefaultWeakPtrImpl>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::SharedWorkerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakRef<WebKit::WebSharedWorker,WTF::DefaultWeakPtrImpl>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::SharedWorkerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::SharedWorkerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakRef<WebKit::WebSharedWorker,WTF::DefaultWeakPtrImpl>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::SharedWorkerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::SharedWorkerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakRef<WebKit::WebSharedWorker,WTF::DefaultWeakPtrImpl>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::SharedWorkerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash(v0 << (6 * *(qword_1ED6426D8 - 12) >= (2 * v0)));
  }

  else
  {
    return WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::SharedWorkerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::SharedWorkerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakRef<WebKit::WebSharedWorker,WTF::DefaultWeakPtrImpl>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::SharedWorkerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakRef<WebKit::WebSharedWorker,WTF::DefaultWeakPtrImpl>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::SharedWorkerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::SharedWorkerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakRef<WebKit::WebSharedWorker,WTF::DefaultWeakPtrImpl>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::SharedWorkerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::SharedWorkerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakRef<WebKit::WebSharedWorker,WTF::DefaultWeakPtrImpl>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::SharedWorkerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash(8u);
  }
}

_DWORD *WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::SharedWorkerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::SharedWorkerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakRef<WebKit::WebSharedWorker,WTF::DefaultWeakPtrImpl>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::SharedWorkerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakRef<WebKit::WebSharedWorker,WTF::DefaultWeakPtrImpl>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::SharedWorkerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::SharedWorkerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakRef<WebKit::WebSharedWorker,WTF::DefaultWeakPtrImpl>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::SharedWorkerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::SharedWorkerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakRef<WebKit::WebSharedWorker,WTF::DefaultWeakPtrImpl>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::SharedWorkerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash(unsigned int a1)
{
  v2 = qword_1ED6426D8;
  if (qword_1ED6426D8)
  {
    v3 = *(qword_1ED6426D8 - 4);
    v4 = *(qword_1ED6426D8 - 12);
  }

  else
  {
    v3 = 0;
    v4 = 0;
  }

  result = WTF::fastZeroedMalloc((16 * a1 + 16));
  qword_1ED6426D8 = (result + 4);
  result[2] = a1 - 1;
  result[3] = a1;
  *result = 0;
  result[1] = v4;
  if (v3)
  {
    v7 = 0;
    v8 = v3;
    while (1)
    {
      v9 = (v2 + 16 * v7);
      v10 = *v9;
      if (*v9 != -1)
      {
        if (v10)
        {
          if (qword_1ED6426D8)
          {
            v12 = *(qword_1ED6426D8 - 8);
          }

          else
          {
            v12 = 0;
          }

          v13 = (v10 + ~(v10 << 32)) ^ ((v10 + ~(v10 << 32)) >> 22);
          v14 = 9 * ((v13 + ~(v13 << 13)) ^ ((v13 + ~(v13 << 13)) >> 8));
          v15 = (v14 ^ (v14 >> 15)) + ~((v14 ^ (v14 >> 15)) << 27);
          v16 = v12 & ((v15 >> 31) ^ v15);
          v17 = 1;
          do
          {
            v18 = v16;
            v19 = *(qword_1ED6426D8 + 16 * v16);
            v16 = (v16 + v17++) & v12;
          }

          while (v19);
          v20 = (qword_1ED6426D8 + 16 * v18);
          v21 = v20[1];
          v20[1] = 0;
          if (v21 && atomic_fetch_add(v21, 0xFFFFFFFF) == 1)
          {
            atomic_store(1u, v21);
            WTF::fastFree(v21, v6);
          }

          *v20 = *v9;
          v22 = v9[1];
          v9[1] = 0;
          v20[1] = v22;
          v11 = v9[1];
          v9[1] = 0;
          if (!v11 || atomic_fetch_add(v11, 0xFFFFFFFF) != 1)
          {
            goto LABEL_18;
          }
        }

        else
        {
          v11 = v9[1];
          v9[1] = 0;
          if (!v11 || atomic_fetch_add(v11, 0xFFFFFFFF) != 1)
          {
            goto LABEL_18;
          }
        }

        atomic_store(1u, v11);
        WTF::fastFree(v11, v6);
      }

LABEL_18:
      if (++v7 == v8)
      {
        goto LABEL_25;
      }
    }
  }

  if (v2)
  {
LABEL_25:

    return WTF::fastFree((v2 - 16), v6);
  }

  return result;
}

uint64_t WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::SharedWorkerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakRef<WebKit::WebSharedWorker,WTF::DefaultWeakPtrImpl>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::SharedWorkerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::SharedWorkerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakRef<WebKit::WebSharedWorker,WTF::DefaultWeakPtrImpl>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::SharedWorkerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakRef<WebKit::WebSharedWorker,WTF::DefaultWeakPtrImpl>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::SharedWorkerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::SharedWorkerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakRef<WebKit::WebSharedWorker,WTF::DefaultWeakPtrImpl>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::SharedWorkerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::ObjectIdentifierGeneric<WebCore::SharedWorkerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(uint64_t a1)
{
  if (a1 == -1 || !a1)
  {
    __break(0xC471u);
    JUMPOUT(0x19DD7C370);
  }

  if (qword_1ED6426D8)
  {
    v1 = *(qword_1ED6426D8 - 8);
    v2 = (~(a1 << 32) + a1) ^ ((~(a1 << 32) + a1) >> 22);
    v3 = 9 * ((v2 + ~(v2 << 13)) ^ ((v2 + ~(v2 << 13)) >> 8));
    v4 = (v3 ^ (v3 >> 15)) + ~((v3 ^ (v3 >> 15)) << 27);
    v5 = v1 & ((v4 >> 31) ^ v4);
    v6 = *(qword_1ED6426D8 + 16 * v5);
    if (v6 == a1)
    {
LABEL_8:
      v8 = *(qword_1ED6426D8 + 16 * v5 + 8);
      if (v8)
      {
        return *(v8 + 8);
      }
    }

    else
    {
      v7 = 1;
      while (v6)
      {
        v5 = (v5 + v7) & v1;
        v6 = *(qword_1ED6426D8 + 16 * v5);
        ++v7;
        if (v6 == a1)
        {
          goto LABEL_8;
        }
      }
    }
  }

  return 0;
}

uint64_t WTF::HashTable<WTF::ListHashSetNode<WebKit::WebSharedWorker::Object> *,WTF::ListHashSetNode<WebKit::WebSharedWorker::Object> *,WTF::IdentityExtractor,WTF::ListHashSetNodeHashFunctions<WTF::DefaultHash<WebKit::WebSharedWorker::Object>>,WTF::HashTraits<WTF::ListHashSetNode<WebKit::WebSharedWorker::Object> *>,WTF::HashTraits<WTF::ListHashSetNode<WebKit::WebSharedWorker::Object> *>,WTF::FastMalloc>::expand(uint64_t *a1, unint64_t **a2)
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

  return WTF::HashTable<WTF::ListHashSetNode<WebKit::WebSharedWorker::Object> *,WTF::ListHashSetNode<WebKit::WebSharedWorker::Object> *,WTF::IdentityExtractor,WTF::ListHashSetNodeHashFunctions<WTF::DefaultHash<WebKit::WebSharedWorker::Object>>,WTF::HashTraits<WTF::ListHashSetNode<WebKit::WebSharedWorker::Object> *>,WTF::HashTraits<WTF::ListHashSetNode<WebKit::WebSharedWorker::Object> *>,WTF::FastMalloc>::rehash(a1, v5, a2);
}

uint64_t WTF::HashTable<WTF::ListHashSetNode<WebKit::WebSharedWorker::Object> *,WTF::ListHashSetNode<WebKit::WebSharedWorker::Object> *,WTF::IdentityExtractor,WTF::ListHashSetNodeHashFunctions<WTF::DefaultHash<WebKit::WebSharedWorker::Object>>,WTF::HashTraits<WTF::ListHashSetNode<WebKit::WebSharedWorker::Object> *>,WTF::HashTraits<WTF::ListHashSetNode<WebKit::WebSharedWorker::Object> *>,WTF::FastMalloc>::rehash(uint64_t *a1, unsigned int a2, unint64_t **a3)
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

  v9 = WTF::fastZeroedMalloc((8 * a2 + 16));
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
      v13 = (v6 + 8 * v11);
      if (*v13 + 1 >= 2)
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

        v16 = WTF::IdentityHashTranslator<WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>::hash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(**v13, (*v13)[1]);
        v17 = 0;
        do
        {
          v18 = v16 & v15;
          v16 = ++v17 + v18;
        }

        while (*(v14 + 8 * v18));
        *(v14 + 8 * v18) = *v13;
        if (v13 == a3)
        {
          v12 = v14 + 8 * v18;
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

uint64_t WTF::HashTable<WTF::ListHashSetNode<WebKit::WebSharedWorker::Object> *,WTF::ListHashSetNode<WebKit::WebSharedWorker::Object> *,WTF::IdentityExtractor,WTF::ListHashSetNodeHashFunctions<WTF::DefaultHash<WebKit::WebSharedWorker::Object>>,WTF::HashTraits<WTF::ListHashSetNode<WebKit::WebSharedWorker::Object> *>,WTF::HashTraits<WTF::ListHashSetNode<WebKit::WebSharedWorker::Object> *>,WTF::FastMalloc>::find<WTF::ListHashSetTranslator<WTF::DefaultHash<WebKit::WebSharedWorker::Object>>,(WTF::ShouldValidateKey)1,WebKit::WebSharedWorker::Object>(uint64_t *a1, unint64_t *a2)
{
  v2 = *a1;
  if (!*a1)
  {
    return 0;
  }

  v5 = *(v2 - 8);
  v6 = WTF::IdentityHashTranslator<WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>::hash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(*a2, a2[1]);
  for (i = 0; ; v6 = i + v8)
  {
    v8 = v6 & v5;
    v9 = *(v2 + 8 * v8);
    if (v9 == -1)
    {
      goto LABEL_9;
    }

    if (!v9)
    {
      break;
    }

    v11 = *v9;
    v10 = v9[1];
    if (v11 == *a2 && v10 == a2[1])
    {
      return v2 + 8 * v8;
    }

LABEL_9:
    ++i;
  }

  if (!*a1)
  {
    return 0;
  }

  return *a1 + 8 * *(*a1 - 4);
}

uint64_t WTF::HashTable<WebCore::SharedWorkerKey,WTF::KeyValuePair<WebCore::SharedWorkerKey,WTF::Ref<WebKit::WebSharedWorker,WTF::RawPtrTraits<WebKit::WebSharedWorker>,WTF::DefaultRefDerefTraits<WebKit::WebSharedWorker>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::SharedWorkerKey,WTF::Ref<WebKit::WebSharedWorker,WTF::RawPtrTraits<WebKit::WebSharedWorker>,WTF::DefaultRefDerefTraits<WebKit::WebSharedWorker>>>>,WTF::DefaultHash<WebCore::SharedWorkerKey>,WTF::HashMap<WebCore::SharedWorkerKey,WTF::Ref<WebKit::WebSharedWorker,WTF::RawPtrTraits<WebKit::WebSharedWorker>,WTF::DefaultRefDerefTraits<WebKit::WebSharedWorker>>,WTF::DefaultHash<WebCore::SharedWorkerKey>,WTF::HashTraits<WebCore::SharedWorkerKey>,WTF::HashTraits<WTF::Ref<WebKit::WebSharedWorker,WTF::RawPtrTraits<WebKit::WebSharedWorker>,WTF::DefaultRefDerefTraits<WebKit::WebSharedWorker>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::SharedWorkerKey>,WTF::FastMalloc>::expand(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  if (*a1 && (v5 = *(v3 - 4)) != 0)
  {
    v4 = v5 << (6 * *(v3 - 12) >= (2 * v5));
  }

  else
  {
    v4 = 8;
  }

  return WTF::HashTable<WebCore::SharedWorkerKey,WTF::KeyValuePair<WebCore::SharedWorkerKey,WTF::Ref<WebKit::WebSharedWorker,WTF::RawPtrTraits<WebKit::WebSharedWorker>,WTF::DefaultRefDerefTraits<WebKit::WebSharedWorker>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::SharedWorkerKey,WTF::Ref<WebKit::WebSharedWorker,WTF::RawPtrTraits<WebKit::WebSharedWorker>,WTF::DefaultRefDerefTraits<WebKit::WebSharedWorker>>>>,WTF::DefaultHash<WebCore::SharedWorkerKey>,WTF::HashMap<WebCore::SharedWorkerKey,WTF::Ref<WebKit::WebSharedWorker,WTF::RawPtrTraits<WebKit::WebSharedWorker>,WTF::DefaultRefDerefTraits<WebKit::WebSharedWorker>>,WTF::DefaultHash<WebCore::SharedWorkerKey>,WTF::HashTraits<WebCore::SharedWorkerKey>,WTF::HashTraits<WTF::Ref<WebKit::WebSharedWorker,WTF::RawPtrTraits<WebKit::WebSharedWorker>,WTF::DefaultRefDerefTraits<WebKit::WebSharedWorker>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::SharedWorkerKey>,WTF::FastMalloc>::rehash(a1, v4, a2);
}

uint64_t WTF::HashTraitsEmptyValueChecker<WTF::HashTraits<WebCore::SharedWorkerKey>,false>::isEmptyValue<WebCore::SharedWorkerKey>(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  memset(v6, 0, sizeof(v6));
  memset(v5, 0, sizeof(v5));
  WTF::URL::invalidate(v6);
  *(&v7 + 1) = 0;
  v2 = WebCore::operator==(a1, v5);
  WebCore::SharedWorkerKey::~SharedWorkerKey(v5, v3);
  return v2;
}

uint64_t WTF::HashTable<WebCore::SharedWorkerKey,WTF::KeyValuePair<WebCore::SharedWorkerKey,WTF::Ref<WebKit::WebSharedWorker,WTF::RawPtrTraits<WebKit::WebSharedWorker>,WTF::DefaultRefDerefTraits<WebKit::WebSharedWorker>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::SharedWorkerKey,WTF::Ref<WebKit::WebSharedWorker,WTF::RawPtrTraits<WebKit::WebSharedWorker>,WTF::DefaultRefDerefTraits<WebKit::WebSharedWorker>>>>,WTF::DefaultHash<WebCore::SharedWorkerKey>,WTF::HashMap<WebCore::SharedWorkerKey,WTF::Ref<WebKit::WebSharedWorker,WTF::RawPtrTraits<WebKit::WebSharedWorker>,WTF::DefaultRefDerefTraits<WebKit::WebSharedWorker>>,WTF::DefaultHash<WebCore::SharedWorkerKey>,WTF::HashTraits<WebCore::SharedWorkerKey>,WTF::HashTraits<WTF::Ref<WebKit::WebSharedWorker,WTF::RawPtrTraits<WebKit::WebSharedWorker>,WTF::DefaultRefDerefTraits<WebKit::WebSharedWorker>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::SharedWorkerKey>,WTF::FastMalloc>::rehash(uint64_t *a1, unsigned int a2, uint64_t *a3)
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

  v7 = WTF::fastMalloc((120 * a2 + 16));
  v9 = v7;
  v10 = v7 + 16;
  if (a2)
  {
    v11 = a2;
    v12 = v7 + 80;
    do
    {
      *(v12 + 16) = 0u;
      *(v12 + 32) = 0u;
      *(v12 - 16) = 0u;
      *v12 = 0u;
      *(v12 - 48) = 0u;
      *(v12 - 32) = 0u;
      *(v12 - 64) = 0u;
      WTF::URL::invalidate(v12);
      *(v12 + 40) = 0;
      *(v12 + 48) = 0;
      v12 += 120;
      --v11;
    }

    while (v11);
  }

  *a1 = v10;
  v9[2] = a2 - 1;
  v9[3] = a2;
  *v9 = 0;
  v9[1] = v6;
  if (v5)
  {
    v13 = 0;
    v14 = 0;
    v34 = v4;
    do
    {
      v15 = (v4 + 120 * v13);
      v16 = v15 + 8;
      if (v15[8] != -1)
      {
        if (WTF::HashTraitsEmptyValueChecker<WTF::HashTraits<WebCore::SharedWorkerKey>,false>::isEmptyValue<WebCore::SharedWorkerKey>(v4 + 120 * v13))
        {
          v18 = v15[14];
          v15[14] = 0;
          if (v18)
          {
            WTF::RefCounted<WebKit::WebSharedWorker>::deref((v18 + 8));
          }

          WebCore::SharedWorkerKey::~SharedWorkerKey((v4 + 120 * v13), v17);
        }

        else
        {
          v37 = v14;
          v19 = *a1;
          if (*a1)
          {
            v20 = *(v19 - 8);
          }

          else
          {
            v20 = 0;
          }

          v38 = -1640531527;
          v39 = 0;
          v40 = 0;
          WTF::add<WebCore::ClientOrigin,WTF::URL,WTF::String>(&v38, v4 + 120 * v13, v16, v15 + 13);
          v21 = WTF::SuperFastHash::hash(&v38);
          v22 = 0;
          do
          {
            v23 = v21 & v20;
            v24 = v19 + 120 * (v21 & v20);
            v26 = WTF::HashTraitsEmptyValueChecker<WTF::HashTraits<WebCore::SharedWorkerKey>,false>::isEmptyValue<WebCore::SharedWorkerKey>(v24);
            v21 = ++v22 + v23;
          }

          while (!v26);
          v27 = *(v24 + 112);
          *(v24 + 112) = 0;
          if (v27)
          {
            WTF::RefCounted<WebKit::WebSharedWorker>::deref((v27 + 8));
          }

          WebCore::SharedWorkerKey::~SharedWorkerKey((v19 + 120 * v23), v25);
          mpark::detail::move_assignment<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::move_assignment(v28);
          mpark::detail::move_assignment<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::move_assignment((v24 + 32));
          WTF::URL::URL(v24 + 64, v16);
          v30 = v15[13];
          v15[13] = 0;
          *(v24 + 104) = v30;
          v31 = v15[14];
          v15[14] = 0;
          *(v24 + 112) = v31;
          v32 = v15[14];
          v15[14] = 0;
          v4 = v34;
          v14 = v37;
          if (v32)
          {
            WTF::RefCounted<WebKit::WebSharedWorker>::deref((v32 + 8));
          }

          WebCore::SharedWorkerKey::~SharedWorkerKey(v15, v29);
          if (v15 == a3)
          {
            v14 = v24;
          }
        }
      }

      ++v13;
    }

    while (v13 != v5);
  }

  else
  {
    v14 = 0;
    result = 0;
    if (!v4)
    {
      return result;
    }
  }

  WTF::fastFree((v4 - 16), v8);
  return v14;
}

unsigned int *WTF::add<WebCore::ClientOrigin,WTF::URL,WTF::String>(mpark *a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  WTF::add<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>(a1, a2);
  result = WTF::add<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>(a1, a2 + 32);
  v9 = *a3;
  if (!*a3)
  {
    goto LABEL_22;
  }

  v10 = *(v9 + 4);
  v11 = v10 & 0xFFFFFFFE;
  if ((v10 & 0xFFFFFFFE) == 0)
  {
    if ((v10 & 1) == 0)
    {
      goto LABEL_22;
    }

    v21 = 1;
    goto LABEL_18;
  }

  v12 = 0;
  v13 = *a1;
  do
  {
    v14 = *(v9 + 4);
    if (v12 >= v14)
    {
      v16 = 0;
    }

    else
    {
      v15 = *(v9 + 8);
      if ((*(v9 + 16) & 4) != 0)
      {
        v16 = *(v15 + v12);
      }

      else
      {
        v16 = *(v15 + 2 * v12);
      }
    }

    v17 = v12 + 1;
    if (v12 + 1 >= v14)
    {
      v19 = 0;
    }

    else
    {
      v18 = *(v9 + 8);
      if ((*(v9 + 16) & 4) != 0)
      {
        v19 = *(v18 + v12 + 1);
      }

      else
      {
        v19 = *(v18 + 2 * v12 + 2);
      }
    }

    v20 = (v16 << 11) ^ ((v13 + v19) << 16) ^ (v13 + v19);
    v13 = v20 + (v20 >> 11);
    *a1 = v13;
    v12 = v17 + 1;
  }

  while (v17 + 1 < v11);
  if (v10)
  {
    v21 = *(v9 + 4);
LABEL_18:
    if (v21 <= v11)
    {
      v23 = 0;
    }

    else
    {
      v22 = *(v9 + 8);
      if ((*(v9 + 16) & 4) != 0)
      {
        v23 = *(v22 + v11);
      }

      else
      {
        v23 = *(v22 + 2 * v11);
      }
    }

    *a1 = ((*a1 + v23) ^ ((*a1 + v23) << 16)) + (((*a1 + v23) ^ ((*a1 + v23) << 16)) >> 11);
  }

LABEL_22:
  v24 = *a4;
  if (!*a4)
  {
    return result;
  }

  v25 = *(v24 + 4);
  v26 = v25 & 0xFFFFFFFE;
  if ((v25 & 0xFFFFFFFE) == 0)
  {
    if ((v25 & 1) == 0)
    {
      return result;
    }

    v36 = 1;
    goto LABEL_39;
  }

  v27 = 0;
  v28 = *a1;
  do
  {
    v29 = *(v24 + 4);
    if (v27 >= v29)
    {
      v31 = 0;
    }

    else
    {
      v30 = *(v24 + 8);
      if ((*(v24 + 16) & 4) != 0)
      {
        v31 = *(v30 + v27);
      }

      else
      {
        v31 = *(v30 + 2 * v27);
      }
    }

    v32 = v27 + 1;
    if (v27 + 1 >= v29)
    {
      v34 = 0;
    }

    else
    {
      v33 = *(v24 + 8);
      if ((*(v24 + 16) & 4) != 0)
      {
        v34 = *(v33 + v27 + 1);
      }

      else
      {
        v34 = *(v33 + 2 * v27 + 2);
      }
    }

    v35 = (v31 << 11) ^ ((v28 + v34) << 16) ^ (v28 + v34);
    v28 = v35 + (v35 >> 11);
    *a1 = v28;
    v27 = v32 + 1;
  }

  while (v32 + 1 < v26);
  if (v25)
  {
    v36 = *(v24 + 4);
LABEL_39:
    if (v36 <= v26)
    {
      v38 = 0;
    }

    else
    {
      v37 = *(v24 + 8);
      if ((*(v24 + 16) & 4) != 0)
      {
        v38 = *(v37 + v26);
      }

      else
      {
        v38 = *(v37 + 2 * v26);
      }
    }

    *a1 = ((*a1 + v38) ^ ((*a1 + v38) << 16)) + (((*a1 + v38) ^ ((*a1 + v38) << 16)) >> 11);
  }

  return result;
}

uint64_t WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::WebSharedWorkerServerConnection,WTF::RawPtrTraits<WebKit::WebSharedWorkerServerConnection>,WTF::DefaultRefDerefTraits<WebKit::WebSharedWorkerServerConnection>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::WebSharedWorkerServerConnection,WTF::RawPtrTraits<WebKit::WebSharedWorkerServerConnection>,WTF::DefaultRefDerefTraits<WebKit::WebSharedWorkerServerConnection>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::WebSharedWorkerServerConnection,WTF::RawPtrTraits<WebKit::WebSharedWorkerServerConnection>,WTF::DefaultRefDerefTraits<WebKit::WebSharedWorkerServerConnection>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::WebSharedWorkerServerConnection,WTF::RawPtrTraits<WebKit::WebSharedWorkerServerConnection>,WTF::DefaultRefDerefTraits<WebKit::WebSharedWorkerServerConnection>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(uint64_t *a1, uint64_t a2)
{
  if (a2 == -1 || !a2)
  {
    __break(0xC471u);
    JUMPOUT(0x19DD7CBDCLL);
  }

  v2 = *a1;
  if (*a1)
  {
    v3 = *(v2 - 8);
    v4 = (~(a2 << 32) + a2) ^ ((~(a2 << 32) + a2) >> 22);
    v5 = 9 * ((v4 + ~(v4 << 13)) ^ ((v4 + ~(v4 << 13)) >> 8));
    v6 = (v5 ^ (v5 >> 15)) + ~((v5 ^ (v5 >> 15)) << 27);
    v7 = v3 & ((v6 >> 31) ^ v6);
    v8 = *(v2 + 16 * v7);
    if (v8 == a2)
    {
      return *(v2 + 16 * v7 + 8);
    }

    v9 = 1;
    while (v8)
    {
      v7 = (v7 + v9) & v3;
      v8 = *(v2 + 16 * v7);
      ++v9;
      if (v8 == a2)
      {
        return *(v2 + 16 * v7 + 8);
      }
    }
  }

  return 0;
}

void *WTF::Detail::CallableWrapper<WebKit::WebSharedWorkerServer::requestSharedWorker(WebCore::SharedWorkerKey &&,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::SharedWorkerObjectIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::pair<WebCore::MessagePortIdentifier,std::pair> &&,WebCore::WorkerOptions &&)::$_1,void,BOOL>::~CallableWrapper(void *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F1108080;
  v3 = a1[24];
  a1[24] = 0;
  if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v3, a2);
  }

  WebCore::SharedWorkerKey::~SharedWorkerKey((a1 + 2), a2);
  v5 = a1[1];
  a1[1] = 0;
  if (v5 && atomic_fetch_add(v5, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v5);
    WTF::fastFree(v5, v4);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebSharedWorkerServer::requestSharedWorker(WebCore::SharedWorkerKey &&,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::SharedWorkerObjectIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::pair<WebCore::MessagePortIdentifier,std::pair> &&,WebCore::WorkerOptions &&)::$_1,void,BOOL>::~CallableWrapper(void *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F1108080;
  v3 = a1[24];
  a1[24] = 0;
  if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v3, a2);
  }

  WebCore::SharedWorkerKey::~SharedWorkerKey((a1 + 2), a2);
  v5 = a1[1];
  a1[1] = 0;
  if (v5 && atomic_fetch_add(v5, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v5);
    WTF::fastFree(v5, v4);
  }

  return WTF::fastFree(a1, v4);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebSharedWorkerServer::requestSharedWorker(WebCore::SharedWorkerKey &&,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::SharedWorkerObjectIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::pair<WebCore::MessagePortIdentifier,std::pair> &&,WebCore::WorkerOptions &&)::$_1,void,BOOL>::call(uint64_t result, char a2)
{
  v14 = *MEMORY[0x1E69E9840];
  if ((a2 & 1) == 0)
  {
    v2 = result;
    v3 = *(result + 8);
    if (v3)
    {
      v4 = *(v3 + 8);
      if (v4)
      {
        ++*(v4 + 8);
        v5 = qword_1ED641300;
        if (os_log_type_enabled(qword_1ED641300, OS_LOG_TYPE_ERROR))
        {
          v11 = *(v2 + 144);
          v12 = 134217984;
          v13 = v11;
          _os_log_error_impl(&dword_19D52D000, v5, OS_LOG_TYPE_ERROR, "WebSharedWorkerServer::requestSharedWorker: Failed to connect to existing shared worker %llu, will create a new one instead.", &v12, 0xCu);
        }

        v6 = WTF::HashTable<WebCore::SharedWorkerKey,WTF::KeyValuePair<WebCore::SharedWorkerKey,WTF::Ref<WebKit::WebSharedWorker,WTF::RawPtrTraits<WebKit::WebSharedWorker>,WTF::DefaultRefDerefTraits<WebKit::WebSharedWorker>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::SharedWorkerKey,WTF::Ref<WebKit::WebSharedWorker,WTF::RawPtrTraits<WebKit::WebSharedWorker>,WTF::DefaultRefDerefTraits<WebKit::WebSharedWorker>>>>,WTF::DefaultHash<WebCore::SharedWorkerKey>,WTF::HashMap<WebCore::SharedWorkerKey,WTF::Ref<WebKit::WebSharedWorker,WTF::RawPtrTraits<WebKit::WebSharedWorker>,WTF::DefaultRefDerefTraits<WebKit::WebSharedWorker>>,WTF::DefaultHash<WebCore::SharedWorkerKey>,WTF::HashTraits<WebCore::SharedWorkerKey>,WTF::HashTraits<WTF::Ref<WebKit::WebSharedWorker,WTF::RawPtrTraits<WebKit::WebSharedWorker>,WTF::DefaultRefDerefTraits<WebKit::WebSharedWorker>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::SharedWorkerKey>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WebCore::SharedWorkerKey,WTF::Ref<WebKit::WebSharedWorker,WTF::RawPtrTraits<WebKit::WebSharedWorker>,WTF::DefaultRefDerefTraits<WebKit::WebSharedWorker>>,WTF::DefaultHash<WebCore::SharedWorkerKey>,WTF::HashTraits<WebCore::SharedWorkerKey>,WTF::HashTraits<WTF::Ref<WebKit::WebSharedWorker,WTF::RawPtrTraits<WebKit::WebSharedWorker>,WTF::DefaultRefDerefTraits<WebKit::WebSharedWorker>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WebCore::SharedWorkerKey>>,(WTF::ShouldValidateKey)1,WebCore::SharedWorkerKey>((v4 + 48), v2 + 16);
        v7 = *(v4 + 48);
        if (v7)
        {
          v8 = (v7 + 120 * *(v7 - 4));
        }

        else
        {
          v8 = 0;
        }

        if (v8 == v6 || *(*(v6 + 14) + 16) != *(v2 + 144))
        {
          goto LABEL_15;
        }

        if (v7)
        {
          v9 = (v7 + 120 * *(v7 - 4));
          if (v9 != v6)
          {
LABEL_13:
            if (v9 != v6)
            {
              WTF::HashTable<WebCore::SharedWorkerKey,WTF::KeyValuePair<WebCore::SharedWorkerKey,WTF::Ref<WebKit::WebSharedWorker,WTF::RawPtrTraits<WebKit::WebSharedWorker>,WTF::DefaultRefDerefTraits<WebKit::WebSharedWorker>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::SharedWorkerKey,WTF::Ref<WebKit::WebSharedWorker,WTF::RawPtrTraits<WebKit::WebSharedWorker>,WTF::DefaultRefDerefTraits<WebKit::WebSharedWorker>>>>,WTF::DefaultHash<WebCore::SharedWorkerKey>,WTF::HashMap<WebCore::SharedWorkerKey,WTF::Ref<WebKit::WebSharedWorker,WTF::RawPtrTraits<WebKit::WebSharedWorker>,WTF::DefaultRefDerefTraits<WebKit::WebSharedWorker>>,WTF::DefaultHash<WebCore::SharedWorkerKey>,WTF::HashTraits<WebCore::SharedWorkerKey>,WTF::HashTraits<WTF::Ref<WebKit::WebSharedWorker,WTF::RawPtrTraits<WebKit::WebSharedWorker>,WTF::DefaultRefDerefTraits<WebKit::WebSharedWorker>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::SharedWorkerKey>,WTF::FastMalloc>::remove((v4 + 48), v6);
            }
          }
        }

        else if (v6)
        {
          v9 = 0;
          goto LABEL_13;
        }

LABEL_15:
        result = WebKit::WebSharedWorkerServer::requestSharedWorker(v4, v2 + 16, *(v2 + 128), *(v2 + 136), v2 + 152, (v2 + 184));
        v10 = *(v4 + 8);
        if (v10)
        {
          *(v4 + 8) = v10 - 1;
        }

        else
        {
          result = 290;
          __break(0xC471u);
        }
      }
    }
  }

  return result;
}

uint64_t WTF::HashTable<WebCore::SharedWorkerKey,WTF::KeyValuePair<WebCore::SharedWorkerKey,WTF::Ref<WebKit::WebSharedWorker,WTF::RawPtrTraits<WebKit::WebSharedWorker>,WTF::DefaultRefDerefTraits<WebKit::WebSharedWorker>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::SharedWorkerKey,WTF::Ref<WebKit::WebSharedWorker,WTF::RawPtrTraits<WebKit::WebSharedWorker>,WTF::DefaultRefDerefTraits<WebKit::WebSharedWorker>>>>,WTF::DefaultHash<WebCore::SharedWorkerKey>,WTF::HashMap<WebCore::SharedWorkerKey,WTF::Ref<WebKit::WebSharedWorker,WTF::RawPtrTraits<WebKit::WebSharedWorker>,WTF::DefaultRefDerefTraits<WebKit::WebSharedWorker>>,WTF::DefaultHash<WebCore::SharedWorkerKey>,WTF::HashTraits<WebCore::SharedWorkerKey>,WTF::HashTraits<WTF::Ref<WebKit::WebSharedWorker,WTF::RawPtrTraits<WebKit::WebSharedWorker>,WTF::DefaultRefDerefTraits<WebKit::WebSharedWorker>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::SharedWorkerKey>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WebCore::SharedWorkerKey,WTF::Ref<WebKit::WebSharedWorker,WTF::RawPtrTraits<WebKit::WebSharedWorker>,WTF::DefaultRefDerefTraits<WebKit::WebSharedWorker>>,WTF::DefaultHash<WebCore::SharedWorkerKey>,WTF::HashTraits<WebCore::SharedWorkerKey>,WTF::HashTraits<WTF::Ref<WebKit::WebSharedWorker,WTF::RawPtrTraits<WebKit::WebSharedWorker>,WTF::DefaultRefDerefTraits<WebKit::WebSharedWorker>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WebCore::SharedWorkerKey>>,(WTF::ShouldValidateKey)1,WebCore::SharedWorkerKey>(uint64_t *a1, uint64_t a2)
{
  if (!*a1)
  {
    return 0;
  }

  if (WTF::HashTraitsEmptyValueChecker<WTF::HashTraits<WebCore::SharedWorkerKey>,false>::isEmptyValue<WebCore::SharedWorkerKey>(a2) || *(a2 + 64) == -1)
  {
    __break(0xC471u);
    JUMPOUT(0x19DD7CFF4);
  }

  v4 = *a1;
  if (!*a1)
  {
    return 0;
  }

  v5 = *(v4 - 8);
  v10 = -1640531527;
  v11 = 0;
  v12 = 0;
  WTF::add<WebCore::ClientOrigin,WTF::URL,WTF::String>(&v10, a2, (a2 + 64), (a2 + 104));
  v6 = WTF::SuperFastHash::hash(&v10) & v5;
  v7 = v4 + 120 * v6;
  if (WTF::HashTraitsEmptyValueChecker<WTF::HashTraits<WebCore::SharedWorkerKey>,false>::isEmptyValue<WebCore::SharedWorkerKey>(v7))
  {
LABEL_10:
    if (*a1)
    {
      return *a1 + 120 * *(*a1 - 4);
    }

    return 0;
  }

  v8 = 1;
  while (*(v7 + 64) == -1 || (WebCore::operator==(v7, a2) & 1) == 0)
  {
    v6 = (v6 + v8) & v5;
    v7 = v4 + 120 * v6;
    ++v8;
    if (WTF::HashTraitsEmptyValueChecker<WTF::HashTraits<WebCore::SharedWorkerKey>,false>::isEmptyValue<WebCore::SharedWorkerKey>(v7))
    {
      goto LABEL_10;
    }
  }

  return v7;
}

void WTF::HashTable<WebCore::SharedWorkerKey,WTF::KeyValuePair<WebCore::SharedWorkerKey,WTF::Ref<WebKit::WebSharedWorker,WTF::RawPtrTraits<WebKit::WebSharedWorker>,WTF::DefaultRefDerefTraits<WebKit::WebSharedWorker>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::SharedWorkerKey,WTF::Ref<WebKit::WebSharedWorker,WTF::RawPtrTraits<WebKit::WebSharedWorker>,WTF::DefaultRefDerefTraits<WebKit::WebSharedWorker>>>>,WTF::DefaultHash<WebCore::SharedWorkerKey>,WTF::HashMap<WebCore::SharedWorkerKey,WTF::Ref<WebKit::WebSharedWorker,WTF::RawPtrTraits<WebKit::WebSharedWorker>,WTF::DefaultRefDerefTraits<WebKit::WebSharedWorker>>,WTF::DefaultHash<WebCore::SharedWorkerKey>,WTF::HashTraits<WebCore::SharedWorkerKey>,WTF::HashTraits<WTF::Ref<WebKit::WebSharedWorker,WTF::RawPtrTraits<WebKit::WebSharedWorker>,WTF::DefaultRefDerefTraits<WebKit::WebSharedWorker>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::SharedWorkerKey>,WTF::FastMalloc>::remove(uint64_t *a1, WebCore::SharedWorkerKey *a2)
{
  WTF::KeyValuePairHashTraits<WTF::HashTraits<WebCore::SharedWorkerKey>,WTF::HashTraits<WTF::Ref<WebKit::WebSharedWorker,WTF::RawPtrTraits<WebKit::WebSharedWorker>,WTF::DefaultRefDerefTraits<WebKit::WebSharedWorker>>>>::customDeleteBucket(a2, a2);
  v3 = *a1;
  v4 = vadd_s32(*(*a1 - 16), 0xFFFFFFFF00000001);
  *(v3 - 16) = v4;
  v5 = *(v3 - 4);
  if (6 * v4.i32[1] < v5 && v5 >= 9)
  {

    WTF::HashTable<WebCore::SharedWorkerKey,WTF::KeyValuePair<WebCore::SharedWorkerKey,WTF::Ref<WebKit::WebSharedWorker,WTF::RawPtrTraits<WebKit::WebSharedWorker>,WTF::DefaultRefDerefTraits<WebKit::WebSharedWorker>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::SharedWorkerKey,WTF::Ref<WebKit::WebSharedWorker,WTF::RawPtrTraits<WebKit::WebSharedWorker>,WTF::DefaultRefDerefTraits<WebKit::WebSharedWorker>>>>,WTF::DefaultHash<WebCore::SharedWorkerKey>,WTF::HashMap<WebCore::SharedWorkerKey,WTF::Ref<WebKit::WebSharedWorker,WTF::RawPtrTraits<WebKit::WebSharedWorker>,WTF::DefaultRefDerefTraits<WebKit::WebSharedWorker>>,WTF::DefaultHash<WebCore::SharedWorkerKey>,WTF::HashTraits<WebCore::SharedWorkerKey>,WTF::HashTraits<WTF::Ref<WebKit::WebSharedWorker,WTF::RawPtrTraits<WebKit::WebSharedWorker>,WTF::DefaultRefDerefTraits<WebKit::WebSharedWorker>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::SharedWorkerKey>,WTF::FastMalloc>::rehash(a1, v5 >> 1, 0);
  }
}

void WTF::KeyValuePairHashTraits<WTF::HashTraits<WebCore::SharedWorkerKey>,WTF::HashTraits<WTF::Ref<WebKit::WebSharedWorker,WTF::RawPtrTraits<WebKit::WebSharedWorker>,WTF::DefaultRefDerefTraits<WebKit::WebSharedWorker>>>>::customDeleteBucket(WebCore::SharedWorkerKey *a1, WTF::StringImpl *a2)
{
  WebCore::SharedWorkerKey::~SharedWorkerKey(a1, a2);
  *(v2 + 64) = -1;
  v3 = *(v2 + 112);
  *(v2 + 112) = 0;
  if (v3)
  {

    WTF::RefCounted<WebKit::WebSharedWorker>::deref((v3 + 8));
  }
}

void *WTF::Detail::CallableWrapper<WebKit::WebSharedWorkerServer::requestSharedWorker(WebCore::SharedWorkerKey &&,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::SharedWorkerObjectIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::pair<WebCore::MessagePortIdentifier,std::pair> &&,WebCore::WorkerOptions &&)::$_2,void,WebCore::WorkerFetchResult &&,WebCore::WorkerInitializationData &&>::~CallableWrapper(void *a1, void *a2)
{
  *a1 = &unk_1F11080A8;
  v3 = a1[2];
  a1[2] = 0;
  if (v3 && atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3);
    WTF::fastFree(v3, a2);
  }

  v4 = a1[1];
  a1[1] = 0;
  if (v4 && atomic_fetch_add(v4, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v4);
    WTF::fastFree(v4, a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebSharedWorkerServer::requestSharedWorker(WebCore::SharedWorkerKey &&,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::SharedWorkerObjectIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::pair<WebCore::MessagePortIdentifier,std::pair> &&,WebCore::WorkerOptions &&)::$_2,void,WebCore::WorkerFetchResult &&,WebCore::WorkerInitializationData &&>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F11080A8;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3 && atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3);
    WTF::fastFree(v3, a2);
  }

  v4 = *(this + 1);
  *(this + 1) = 0;
  if (v4 && atomic_fetch_add(v4, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v4);
    WTF::fastFree(v4, a2);
  }

  return WTF::fastFree(this, a2);
}

void WTF::Detail::CallableWrapper<WebKit::WebSharedWorkerServer::requestSharedWorker(WebCore::SharedWorkerKey &&,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::SharedWorkerObjectIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::pair<WebCore::MessagePortIdentifier,std::pair> &&,WebCore::WorkerOptions &&)::$_2,void,WebCore::WorkerFetchResult &&,WebCore::WorkerInitializationData &&>::call(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v59 = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 16);
  if (!v5)
  {
    v6 = 0;
    goto LABEL_5;
  }

  v6 = *(v5 + 8);
  if (!v6)
  {
LABEL_5:
    v7 = 1;
    goto LABEL_6;
  }

  v7 = 0;
  ++*(v6 + 8);
LABEL_6:
  v8 = *(a1 + 8);
  if (!v8)
  {
    goto LABEL_67;
  }

  v9 = *(v8 + 8);
  if (!v9)
  {
    goto LABEL_67;
  }

  v10 = *(v9 + 8) + 1;
  *(v9 + 8) = v10;
  if (v6)
  {
    v11 = qword_1ED641300;
    if (os_log_type_enabled(qword_1ED641300, OS_LOG_TYPE_DEFAULT))
    {
      v12 = *(v6 + 16);
      v13 = *(a2 + 172) == 0;
      *v56 = 134218496;
      *&v56[4] = v12;
      *&v56[12] = 2048;
      *&v56[14] = v6;
      v57 = 1024;
      v58 = v13;
      _os_log_impl(&dword_19D52D000, v11, OS_LOG_TYPE_DEFAULT, "WebSharedWorkerServer::didFinishFetchingSharedWorkerScript sharedWorkerIdentifier=%llu, sharedWorker=%p, success=%d", v56, 0x1Cu);
    }

    v14 = WTF::fastMalloc(0x18);
    *v14 = &unk_1F11080D0;
    v14[1] = v9;
    v14[2] = a2;
    *v56 = v14;
    WebKit::WebSharedWorker::forEachSharedWorkerObject(v6, v56);
    (*(*v14 + 8))(v14);
    if (*(a2 + 172))
    {
      v15 = WTF::HashTable<WebCore::SharedWorkerKey,WTF::KeyValuePair<WebCore::SharedWorkerKey,WTF::Ref<WebKit::WebSharedWorker,WTF::RawPtrTraits<WebKit::WebSharedWorker>,WTF::DefaultRefDerefTraits<WebKit::WebSharedWorker>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::SharedWorkerKey,WTF::Ref<WebKit::WebSharedWorker,WTF::RawPtrTraits<WebKit::WebSharedWorker>,WTF::DefaultRefDerefTraits<WebKit::WebSharedWorker>>>>,WTF::DefaultHash<WebCore::SharedWorkerKey>,WTF::HashMap<WebCore::SharedWorkerKey,WTF::Ref<WebKit::WebSharedWorker,WTF::RawPtrTraits<WebKit::WebSharedWorker>,WTF::DefaultRefDerefTraits<WebKit::WebSharedWorker>>,WTF::DefaultHash<WebCore::SharedWorkerKey>,WTF::HashTraits<WebCore::SharedWorkerKey>,WTF::HashTraits<WTF::Ref<WebKit::WebSharedWorker,WTF::RawPtrTraits<WebKit::WebSharedWorker>,WTF::DefaultRefDerefTraits<WebKit::WebSharedWorker>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::SharedWorkerKey>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WebCore::SharedWorkerKey,WTF::Ref<WebKit::WebSharedWorker,WTF::RawPtrTraits<WebKit::WebSharedWorker>,WTF::DefaultRefDerefTraits<WebKit::WebSharedWorker>>,WTF::DefaultHash<WebCore::SharedWorkerKey>,WTF::HashTraits<WebCore::SharedWorkerKey>,WTF::HashTraits<WTF::Ref<WebKit::WebSharedWorker,WTF::RawPtrTraits<WebKit::WebSharedWorker>,WTF::DefaultRefDerefTraits<WebKit::WebSharedWorker>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WebCore::SharedWorkerKey>>,(WTF::ShouldValidateKey)1,WebCore::SharedWorkerKey>((v9 + 48), v6 + 32);
      v16 = *(v9 + 48);
      if (v16)
      {
        v17 = (v16 + 120 * *(v16 - 4));
        if (v17 != v15)
        {
LABEL_15:
          if (v17 != v15)
          {
            WTF::HashTable<WebCore::SharedWorkerKey,WTF::KeyValuePair<WebCore::SharedWorkerKey,WTF::Ref<WebKit::WebSharedWorker,WTF::RawPtrTraits<WebKit::WebSharedWorker>,WTF::DefaultRefDerefTraits<WebKit::WebSharedWorker>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::SharedWorkerKey,WTF::Ref<WebKit::WebSharedWorker,WTF::RawPtrTraits<WebKit::WebSharedWorker>,WTF::DefaultRefDerefTraits<WebKit::WebSharedWorker>>>>,WTF::DefaultHash<WebCore::SharedWorkerKey>,WTF::HashMap<WebCore::SharedWorkerKey,WTF::Ref<WebKit::WebSharedWorker,WTF::RawPtrTraits<WebKit::WebSharedWorker>,WTF::DefaultRefDerefTraits<WebKit::WebSharedWorker>>,WTF::DefaultHash<WebCore::SharedWorkerKey>,WTF::HashTraits<WebCore::SharedWorkerKey>,WTF::HashTraits<WTF::Ref<WebKit::WebSharedWorker,WTF::RawPtrTraits<WebKit::WebSharedWorker>,WTF::DefaultRefDerefTraits<WebKit::WebSharedWorker>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::SharedWorkerKey>,WTF::FastMalloc>::remove((v9 + 48), v15);
          }
        }
      }

      else if (v15)
      {
        v17 = 0;
        goto LABEL_15;
      }

LABEL_64:
      v10 = *(v9 + 8);
      goto LABEL_65;
    }

    std::__optional_storage_base<WebCore::ServiceWorkerData,false>::__assign_from[abi:sn200100]<std::__optional_move_assign_base<WebCore::ServiceWorkerData,false>>(v6 + 384, a3);
    v19 = *(a3 + 80);
    v20 = *(a3 + 96);
    v21 = *(a3 + 112);
    *(v6 + 512) = *(a3 + 128);
    *(v6 + 480) = v20;
    *(v6 + 496) = v21;
    *(v6 + 464) = v19;
    v22 = *(a3 + 136);
    *(a3 + 136) = 0;
    v23 = *(v6 + 520);
    *(v6 + 520) = v22;
    if (v23 && atomic_fetch_add_explicit(v23, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v23, v18);
    }

    v24 = *a2;
    *a2 = 0;
    v25 = *(v6 + 184);
    *(v6 + 184) = v24;
    if (v25 && atomic_fetch_add(v25 + 2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v25 + 2);
      (*(*v25 + 8))(v25);
    }

    WTF::URL::operator=(v6 + 192, (a2 + 1));
    v26 = a2[6];
    a2[6] = 0;
    v27 = *(v6 + 232);
    *(v6 + 232) = v26;
    if (v27)
    {
      CFRelease(v27);
    }

    v28 = *(v6 + 252);
    if (v28)
    {
      WTF::VectorDestructor<true,WebCore::SpeechRecognitionAlternativeData>::destruct(*(v6 + 240), (*(v6 + 240) + 16 * v28));
    }

    WTF::VectorBuffer<unsigned short,0ul,WTF::FastMalloc>::adopt(v6 + 240, a2 + 14);
    v30 = *(a2 + 18);
    *(v6 + 260) = *(a2 + 76);
    *(v6 + 256) = v30;
    *(v6 + 264) = *(a2 + 40);
    v31 = a2[11];
    a2[11] = 0;
    v32 = *(v6 + 272);
    *(v6 + 272) = v31;
    if (v32 && atomic_fetch_add_explicit(v32, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v32, v29);
    }

    v33 = a2[12];
    a2[12] = 0;
    v34 = *(v6 + 280);
    *(v6 + 280) = v33;
    if (v34 && atomic_fetch_add_explicit(v34, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v34, v29);
    }

    v35 = a2[13];
    a2[13] = 0;
    v36 = *(v6 + 288);
    *(v6 + 288) = v35;
    if (v36 && atomic_fetch_add_explicit(v36, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v36, v29);
    }

    v37 = a2[14];
    a2[14] = 0;
    v38 = *(v6 + 296);
    *(v6 + 296) = v37;
    if (v38 && atomic_fetch_add_explicit(v38, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v38, v29);
    }

    WTF::URL::operator=(v6 + 304, (a2 + 15));
    v40 = a2[20];
    a2[20] = 0;
    v41 = *(v6 + 344);
    *(v6 + 344) = v40;
    if (v41 && atomic_fetch_add_explicit(v41, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v41, v39);
    }

    v42 = *(a2 + 42);
    *(v6 + 356) = *(a2 + 86);
    *(v6 + 352) = v42;
    v43 = a2[22];
    a2[22] = 0;
    v44 = *(v6 + 360);
    *(v6 + 360) = v43;
    if (v44)
    {
      CFRelease(v44);
    }

    *(v6 + 368) = *(a2 + 184);
    WebCore::RegistrableDomain::RegistrableDomain(v56, (v6 + 32));
    v46 = WTF::HashMap<WebCore::RegistrableDomain,WTF::WeakRef<WebKit::WebSharedWorkerServerToContextConnection,WTF::DefaultWeakPtrImpl>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WTF::WeakRef<WebKit::WebSharedWorkerServerToContextConnection,WTF::DefaultWeakPtrImpl>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WebCore::RegistrableDomain,WTF::WeakRef<WebKit::WebSharedWorkerServerToContextConnection,WTF::DefaultWeakPtrImpl>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WTF::WeakRef<WebKit::WebSharedWorkerServerToContextConnection,WTF::DefaultWeakPtrImpl>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WebCore::RegistrableDomain>>,WebCore::RegistrableDomain>((v9 + 32), v56, v45);
    v48 = v46;
    if (v46)
    {
      ++*(v46 + 24);
    }

    v49 = *v56;
    *v56 = 0;
    if (v49 && atomic_fetch_add_explicit(v49, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v49, v47);
      if (v48)
      {
        goto LABEL_49;
      }
    }

    else if (v48)
    {
LABEL_49:
      WebKit::WebSharedWorker::launch(v6, v48);
      WTF::RefCounted<WebKit::WebSharedWorkerServerToContextConnection>::deref(v48 + 6);
      goto LABEL_64;
    }

    MEMORY[0x19EB0E650](v56, v6 + 32);
    v50 = *(v6 + 160);
    if (v50)
    {
      if (*(v50 - 12))
      {
        v51 = *(*(v6 + 168) + 8) & 0xFFFFFFFFFFFFFF00;
        v50 = *(*(v6 + 168) + 8);
        v52 = 1;
        goto LABEL_57;
      }

      v52 = 0;
      v50 = 0;
    }

    else
    {
      v52 = 0;
    }

    v51 = 0;
LABEL_57:
    WebKit::WebSharedWorkerServer::createContextConnection(v9, v56, (v51 | v50), v52);
    v54 = *&v56[8];
    *&v56[8] = 0;
    if (v54 && atomic_fetch_add_explicit(v54, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v54, v53);
    }

    v55 = *v56;
    *v56 = 0;
    if (v55 && atomic_fetch_add_explicit(v55, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v55, v53);
    }

    goto LABEL_64;
  }

LABEL_65:
  if (!v10)
  {
    __break(0xC471u);
    return;
  }

  *(v9 + 8) = v10 - 1;
LABEL_67:
  if ((v7 & 1) == 0)
  {

    WTF::RefCounted<WebKit::WebSharedWorker>::deref((v6 + 8));
  }
}

IPC::Encoder *WTF::Detail::CallableWrapper<WebKit::WebSharedWorkerServer::didFinishFetchingSharedWorkerScript(WebKit::WebSharedWorker &,WebCore::WorkerFetchResult &&,WebCore::WorkerInitializationData &&)::$_0,void,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::SharedWorkerObjectIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::pair<WebCore::MessagePortIdentifier,std::__1> const&>::call(uint64_t a1, unint64_t a2, uint64_t a3)
{
  result = WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::WebSharedWorkerServerConnection,WTF::RawPtrTraits<WebKit::WebSharedWorkerServerConnection>,WTF::DefaultRefDerefTraits<WebKit::WebSharedWorkerServerConnection>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::WebSharedWorkerServerConnection,WTF::RawPtrTraits<WebKit::WebSharedWorkerServerConnection>,WTF::DefaultRefDerefTraits<WebKit::WebSharedWorkerServerConnection>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::WebSharedWorkerServerConnection,WTF::RawPtrTraits<WebKit::WebSharedWorkerServerConnection>,WTF::DefaultRefDerefTraits<WebKit::WebSharedWorkerServerConnection>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::WebSharedWorkerServerConnection,WTF::RawPtrTraits<WebKit::WebSharedWorkerServerConnection>,WTF::DefaultRefDerefTraits<WebKit::WebSharedWorkerServerConnection>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>((*(a1 + 8) + 24), a3);
  if (result)
  {
    v7 = (*(a1 + 16) + 112);

    return WebKit::WebSharedWorkerServerConnection::notifyWorkerObjectOfLoadCompletion(result, a2, a3, v7);
  }

  return result;
}

uint64_t WTF::HashMap<WebCore::RegistrableDomain,WTF::WeakRef<WebKit::WebSharedWorkerServerToContextConnection,WTF::DefaultWeakPtrImpl>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WTF::WeakRef<WebKit::WebSharedWorkerServerToContextConnection,WTF::DefaultWeakPtrImpl>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WebCore::RegistrableDomain,WTF::WeakRef<WebKit::WebSharedWorkerServerToContextConnection,WTF::DefaultWeakPtrImpl>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WTF::WeakRef<WebKit::WebSharedWorkerServerToContextConnection,WTF::DefaultWeakPtrImpl>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WebCore::RegistrableDomain>>,WebCore::RegistrableDomain>(uint64_t *a1, WTF **a2, const WTF::StringImpl *a3)
{
  if (WTF::equal(*a2, 0, a3) || *a2 == -1)
  {
    __break(0xC471u);
    JUMPOUT(0x19DD7D8E4);
  }

  v6 = *a1;
  if (!v6)
  {
    return 0;
  }

  v7 = *(v6 - 8);
  v8 = WTF::ASCIICaseInsensitiveHash::hash(*a2, v5) & v7;
  v9 = v6 + 16 * v8;
  if (WTF::equal(*v9, 0, v10))
  {
    return 0;
  }

  v12 = 1;
  while (*v9 == -1 || (WTF::equalIgnoringASCIICase(*v9, *a2, v11) & 1) == 0)
  {
    v8 = (v8 + v12) & v7;
    v9 = v6 + 16 * v8;
    ++v12;
    if (WTF::equal(*v9, 0, v11))
    {
      return 0;
    }
  }

  v14 = *(v9 + 8);
  if (!v14)
  {
    return 0;
  }

  v15 = *(v14 + 8);
  if (v15)
  {
    return v15 - 8;
  }

  else
  {
    return 0;
  }
}

void *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkProcessProxy::EstablishRemoteWorkerContextConnectionToNetworkProcess,WebKit::WebSharedWorkerServer::createContextConnection(WebCore::Site const&,std::optional<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>)::$_0>(WebKit::WebSharedWorkerServer::createContextConnection(WebCore::Site const&,std::optional<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>)::$_0 &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(void *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F11080F8;
  v3 = a1[3];
  a1[3] = 0;
  if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v3, a2);
  }

  v4 = a1[2];
  a1[2] = 0;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, a2);
  }

  v5 = a1[1];
  a1[1] = 0;
  if (v5 && atomic_fetch_add(v5, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v5);
    WTF::fastFree(v5, a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkProcessProxy::EstablishRemoteWorkerContextConnectionToNetworkProcess,WebKit::WebSharedWorkerServer::createContextConnection(WebCore::Site const&,std::optional<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>)::$_0>(WebKit::WebSharedWorkerServer::createContextConnection(WebCore::Site const&,std::optional<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>)::$_0 &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(WTF *this, WTF::StringImpl *a2)
{
  *this = &unk_1F11080F8;
  v3 = *(this + 3);
  *(this + 3) = 0;
  if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v3, a2);
  }

  v4 = *(this + 2);
  *(this + 2) = 0;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, a2);
  }

  v5 = *(this + 1);
  *(this + 1) = 0;
  if (v5 && atomic_fetch_add(v5, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v5);
    WTF::fastFree(v5, a2);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkProcessProxy::EstablishRemoteWorkerContextConnectionToNetworkProcess,WebKit::WebSharedWorkerServer::createContextConnection(WebCore::Site const&,std::optional<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>)::$_0>(WebKit::WebSharedWorkerServer::createContextConnection(WebCore::Site const&,std::optional<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>)::$_0 &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::call(uint64_t a1, uint64_t a2, IPC::Decoder *a3)
{
  if (a3 && *a3)
  {
    IPC::ArgumentCoder<std::tuple<std::optional<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,void>::decode<IPC::Decoder>(a3, v10);
    if ((v10[16] & 1) == 0)
    {
      v7 = *a3;
      v8 = *(a3 + 1);
      *a3 = 0;
      *(a3 + 1) = 0;
      v9 = *(a3 + 3);
      if (v9)
      {
        if (v8)
        {
          (*(*v9 + 16))(v9, v7);
        }
      }
    }

    return std::apply[abi:sn200100]<WebKit::WebSharedWorkerServer::createContextConnection(WebCore::Site const&,std::optional<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>)::$_0,std::tuple<std::optional<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>(a1 + 8);
  }

  else
  {
    v6 = a1 + 8;

    return std::apply[abi:sn200100]<WebKit::WebSharedWorkerServer::createContextConnection(WebCore::Site const&,std::optional<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>)::$_0,std::tuple<std::optional<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>(v6);
  }
}

uint64_t std::apply[abi:sn200100]<WebKit::WebSharedWorkerServer::createContextConnection(WebCore::Site const&,std::optional<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>)::$_0,std::tuple<std::optional<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>(uint64_t result)
{
  if (*result)
  {
    v1 = *(*result + 8);
    if (v1)
    {
      v2 = result;
      ++*(v1 + 8);
      v3 = qword_1ED641300;
      if (os_log_type_enabled(qword_1ED641300, OS_LOG_TYPE_DEFAULT))
      {
        *v27 = 0;
        _os_log_impl(&dword_19D52D000, v3, OS_LOG_TYPE_DEFAULT, "WebSharedWorkerServer::createContextConnection should now have created a connection", v27, 2u);
      }

      result = WTF::HashTable<WebCore::RegistrableDomain,WebCore::RegistrableDomain,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashTraits<WebCore::RegistrableDomain>,WTF::DefaultHash<WebCore::RegistrableDomain>>,(WTF::ShouldValidateKey)1,WebCore::RegistrableDomain>((v1 + 40), (v2 + 16), v4);
      v6 = *(v1 + 40);
      if (v6)
      {
        v7 = v6 + 8 * *(v6 - 4);
        if (v7 == result)
        {
          goto LABEL_12;
        }
      }

      else
      {
        if (!result)
        {
          goto LABEL_12;
        }

        v7 = 0;
      }

      if (v7 != result)
      {
        result = WTF::HashTable<WebCore::RegistrableDomain,WebCore::RegistrableDomain,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::remove((v1 + 40), result);
      }

LABEL_12:
      if (*(v1 + 32))
      {
        if (WTF::equal(*(v2 + 16), 0, v5))
        {
          __break(0xC471u);
          JUMPOUT(0x19DD7DDFCLL);
        }

        result = *(v2 + 16);
        if (result == -1)
        {
          goto LABEL_52;
        }

        v9 = *(v1 + 32);
        if (v9)
        {
          v10 = *(v9 - 8);
          v11 = WTF::ASCIICaseInsensitiveHash::hash(result, v8) & v10;
          v12 = (v9 + 16 * v11);
          result = WTF::equal(*v12, 0, v13);
          if ((result & 1) == 0)
          {
            v15 = 1;
            while (1)
            {
              if (*v12 != -1)
              {
                result = WTF::equalIgnoringASCIICase(*v12, *(v2 + 16), v14);
                if (result)
                {
                  break;
                }
              }

              v11 = (v11 + v15) & v10;
              v12 = (v9 + 16 * v11);
              result = WTF::equal(*v12, 0, v14);
              ++v15;
              if (result)
              {
                goto LABEL_21;
              }
            }

LABEL_36:
            v24 = *(v1 + 8);
            if (v24)
            {
              *(v1 + 8) = v24 - 1;
              return result;
            }

LABEL_52:
            __break(0xC471u);
            JUMPOUT(0x19DD7DDDCLL);
          }
        }
      }

LABEL_21:
      v16 = *(v1 + 48);
      if (v16)
      {
        v18 = *(v16 - 4);
        v17 = v16 + 120 * v18;
        if (*(v16 - 12))
        {
          if (!v18)
          {
            v26 = 0;
            v19 = *(v1 + 48);
            goto LABEL_49;
          }

          v25 = 120 * v18;
          do
          {
            result = WTF::HashTraitsEmptyValueChecker<WTF::HashTraits<WebCore::SharedWorkerKey>,false>::isEmptyValue<WebCore::SharedWorkerKey>(v16);
            if ((result & 1) == 0 && *(v16 + 64) != -1)
            {
              goto LABEL_46;
            }

            v16 += 120;
            v25 -= 120;
          }

          while (v25);
          v16 = v17;
LABEL_46:
          v19 = v16;
          v16 = *(v1 + 48);
          if (!v16)
          {
            goto LABEL_24;
          }

LABEL_47:
          v26 = *(v16 - 4);
LABEL_49:
          v20 = v16 + 120 * v26;
LABEL_25:
          if (v20 == v19)
          {
            goto LABEL_36;
          }

          while (1)
          {
            WebCore::RegistrableDomain::RegistrableDomain(&v28, (*(v19 + 112) + 32));
            v23 = WTF::equal(*(v2 + 16), v28, v21);
            result = v28;
            v28 = 0;
            if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              result = WTF::StringImpl::destroy(result, v22);
              if (v23)
              {
LABEL_35:
                result = WebKit::WebSharedWorkerServer::createContextConnection(v1, v2 + 8, 0, 0);
                goto LABEL_36;
              }
            }

            else if (v23)
            {
              goto LABEL_35;
            }

            do
            {
              v19 += 120;
              if (v19 == v17)
              {
                break;
              }

              result = WTF::HashTraitsEmptyValueChecker<WTF::HashTraits<WebCore::SharedWorkerKey>,false>::isEmptyValue<WebCore::SharedWorkerKey>(v19);
            }

            while ((result & 1) != 0 || *(v19 + 64) == -1);
            if (v19 == v20)
            {
              goto LABEL_36;
            }
          }
        }
      }

      else
      {
        v17 = 0;
        LODWORD(v18) = 0;
      }

      v19 = v17;
      v17 = v16 + 120 * v18;
      if (!v16)
      {
LABEL_24:
        v20 = 0;
        goto LABEL_25;
      }

      goto LABEL_47;
    }
  }

  return result;
}

_DWORD *WTF::HashTable<WebCore::RegistrableDomain,WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::WeakRef<WebKit::WebSharedWorkerServerToContextConnection,WTF::DefaultWeakPtrImpl>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::WeakRef<WebKit::WebSharedWorkerServerToContextConnection,WTF::DefaultWeakPtrImpl>>>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashMap<WebCore::RegistrableDomain,WTF::WeakRef<WebKit::WebSharedWorkerServerToContextConnection,WTF::DefaultWeakPtrImpl>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WTF::WeakRef<WebKit::WebSharedWorkerServerToContextConnection,WTF::DefaultWeakPtrImpl>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::expand(uint64_t *a1)
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

  return WTF::HashTable<WebCore::RegistrableDomain,WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::WeakRef<WebKit::WebSharedWorkerServerToContextConnection,WTF::DefaultWeakPtrImpl>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::WeakRef<WebKit::WebSharedWorkerServerToContextConnection,WTF::DefaultWeakPtrImpl>>>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashMap<WebCore::RegistrableDomain,WTF::WeakRef<WebKit::WebSharedWorkerServerToContextConnection,WTF::DefaultWeakPtrImpl>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WTF::WeakRef<WebKit::WebSharedWorkerServerToContextConnection,WTF::DefaultWeakPtrImpl>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::rehash(a1, v3);
}

_DWORD *WTF::HashTable<WebCore::RegistrableDomain,WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::WeakRef<WebKit::WebSharedWorkerServerToContextConnection,WTF::DefaultWeakPtrImpl>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::WeakRef<WebKit::WebSharedWorkerServerToContextConnection,WTF::DefaultWeakPtrImpl>>>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashMap<WebCore::RegistrableDomain,WTF::WeakRef<WebKit::WebSharedWorkerServerToContextConnection,WTF::DefaultWeakPtrImpl>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WTF::WeakRef<WebKit::WebSharedWorkerServerToContextConnection,WTF::DefaultWeakPtrImpl>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::rehash(uint64_t *a1, unsigned int a2)
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

  result = WTF::fastZeroedMalloc((16 * a2 + 16));
  *a1 = (result + 4);
  result[2] = a2 - 1;
  result[3] = a2;
  *result = 0;
  result[1] = v6;
  if (v5)
  {
    v10 = 0;
    v11 = v5;
    while (1)
    {
      v12 = v4 + 16 * v10;
      if (*v12 != -1)
      {
        if (WTF::equal(*v12, 0, v9))
        {
          v13 = *(v12 + 8);
          *(v12 + 8) = 0;
          if (v13 && atomic_fetch_add(v13, 0xFFFFFFFF) == 1)
          {
            atomic_store(1u, v13);
            WTF::fastFree(v13, v8);
          }

          v14 = *v12;
          *v12 = 0;
          if (!v14 || atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) != 2)
          {
            goto LABEL_25;
          }
        }

        else
        {
          v15 = *a1;
          if (*a1)
          {
            v16 = *(v15 - 8);
          }

          else
          {
            v16 = 0;
          }

          v17 = WTF::ASCIICaseInsensitiveHash::hash(*v12, v8);
          v18 = 0;
          do
          {
            v19 = v17 & v16;
            v20 = WTF::equal(*(v15 + 16 * v19), 0, v9);
            v17 = ++v18 + v19;
          }

          while (!v20);
          v21 = v15 + 16 * v19;
          v22 = *(v21 + 8);
          *(v21 + 8) = 0;
          if (v22 && atomic_fetch_add(v22, 0xFFFFFFFF) == 1)
          {
            atomic_store(1u, v22);
            WTF::fastFree(v22, v8);
          }

          v23 = *v21;
          *v21 = 0;
          if (v23 && atomic_fetch_add_explicit(v23, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v23, v8);
          }

          v24 = *v12;
          *v12 = 0;
          *v21 = v24;
          v25 = *(v12 + 8);
          *(v12 + 8) = 0;
          *(v21 + 8) = v25;
          v26 = *(v12 + 8);
          *(v12 + 8) = 0;
          if (v26 && atomic_fetch_add(v26, 0xFFFFFFFF) == 1)
          {
            atomic_store(1u, v26);
            WTF::fastFree(v26, v8);
          }

          v14 = *v12;
          *v12 = 0;
          if (!v14 || atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) != 2)
          {
            goto LABEL_25;
          }
        }

        WTF::StringImpl::destroy(v14, v8);
      }

LABEL_25:
      if (++v10 == v11)
      {
        goto LABEL_34;
      }
    }
  }

  if (v4)
  {
LABEL_34:

    return WTF::fastFree((v4 - 16), v8);
  }

  return result;
}

uint64_t WTF::HashTable<WebCore::SharedWorkerKey,WTF::KeyValuePair<WebCore::SharedWorkerKey,WTF::Ref<WebKit::WebSharedWorker,WTF::RawPtrTraits<WebKit::WebSharedWorker>,WTF::DefaultRefDerefTraits<WebKit::WebSharedWorker>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::SharedWorkerKey,WTF::Ref<WebKit::WebSharedWorker,WTF::RawPtrTraits<WebKit::WebSharedWorker>,WTF::DefaultRefDerefTraits<WebKit::WebSharedWorker>>>>,WTF::DefaultHash<WebCore::SharedWorkerKey>,WTF::HashMap<WebCore::SharedWorkerKey,WTF::Ref<WebKit::WebSharedWorker,WTF::RawPtrTraits<WebKit::WebSharedWorker>,WTF::DefaultRefDerefTraits<WebKit::WebSharedWorker>>,WTF::DefaultHash<WebCore::SharedWorkerKey>,WTF::HashTraits<WebCore::SharedWorkerKey>,WTF::HashTraits<WTF::Ref<WebKit::WebSharedWorker,WTF::RawPtrTraits<WebKit::WebSharedWorker>,WTF::DefaultRefDerefTraits<WebKit::WebSharedWorker>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::SharedWorkerKey>,WTF::FastMalloc>::begin(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  if (!*(a1 - 12))
  {
    return a1 + 120 * *(a1 - 4);
  }

  return WTF::HashTable<WebCore::SharedWorkerKey,WTF::KeyValuePair<WebCore::SharedWorkerKey,WTF::Ref<WebKit::WebSharedWorker,WTF::RawPtrTraits<WebKit::WebSharedWorker>,WTF::DefaultRefDerefTraits<WebKit::WebSharedWorker>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::SharedWorkerKey,WTF::Ref<WebKit::WebSharedWorker,WTF::RawPtrTraits<WebKit::WebSharedWorker>,WTF::DefaultRefDerefTraits<WebKit::WebSharedWorker>>>>,WTF::DefaultHash<WebCore::SharedWorkerKey>,WTF::HashMap<WebCore::SharedWorkerKey,WTF::Ref<WebKit::WebSharedWorker,WTF::RawPtrTraits<WebKit::WebSharedWorker>,WTF::DefaultRefDerefTraits<WebKit::WebSharedWorker>>,WTF::DefaultHash<WebCore::SharedWorkerKey>,WTF::HashTraits<WebCore::SharedWorkerKey>,WTF::HashTraits<WTF::Ref<WebKit::WebSharedWorker,WTF::RawPtrTraits<WebKit::WebSharedWorker>,WTF::DefaultRefDerefTraits<WebKit::WebSharedWorker>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::SharedWorkerKey>,WTF::FastMalloc>::makeIterator(a1, a1);
}

uint64_t WTF::HashTable<WebCore::SharedWorkerKey,WTF::KeyValuePair<WebCore::SharedWorkerKey,WTF::Ref<WebKit::WebSharedWorker,WTF::RawPtrTraits<WebKit::WebSharedWorker>,WTF::DefaultRefDerefTraits<WebKit::WebSharedWorker>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::SharedWorkerKey,WTF::Ref<WebKit::WebSharedWorker,WTF::RawPtrTraits<WebKit::WebSharedWorker>,WTF::DefaultRefDerefTraits<WebKit::WebSharedWorker>>>>,WTF::DefaultHash<WebCore::SharedWorkerKey>,WTF::HashMap<WebCore::SharedWorkerKey,WTF::Ref<WebKit::WebSharedWorker,WTF::RawPtrTraits<WebKit::WebSharedWorker>,WTF::DefaultRefDerefTraits<WebKit::WebSharedWorker>>,WTF::DefaultHash<WebCore::SharedWorkerKey>,WTF::HashTraits<WebCore::SharedWorkerKey>,WTF::HashTraits<WTF::Ref<WebKit::WebSharedWorker,WTF::RawPtrTraits<WebKit::WebSharedWorker>,WTF::DefaultRefDerefTraits<WebKit::WebSharedWorker>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::SharedWorkerKey>,WTF::FastMalloc>::makeIterator(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  if (a1)
  {
    v3 = *(a1 - 4);
  }

  else
  {
    v3 = 0;
  }

  v4 = a1 + 120 * v3;
  if (v4 != a2)
  {
    while ((WTF::HashTraitsEmptyValueChecker<WTF::HashTraits<WebCore::SharedWorkerKey>,false>::isEmptyValue<WebCore::SharedWorkerKey>(v2) & 1) != 0 || *(v2 + 64) == -1)
    {
      v2 += 120;
      if (v2 == v4)
      {
        return v4;
      }
    }
  }

  return v2;
}

uint64_t WTF::HashMap<WebCore::SharedWorkerKey,WTF::Ref<WebKit::WebSharedWorker,WTF::RawPtrTraits<WebKit::WebSharedWorker>,WTF::DefaultRefDerefTraits<WebKit::WebSharedWorker>>,WTF::DefaultHash<WebCore::SharedWorkerKey>,WTF::HashTraits<WebCore::SharedWorkerKey>,WTF::HashTraits<WTF::Ref<WebKit::WebSharedWorker,WTF::RawPtrTraits<WebKit::WebSharedWorker>,WTF::DefaultRefDerefTraits<WebKit::WebSharedWorker>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WebCore::SharedWorkerKey,WTF::Ref<WebKit::WebSharedWorker,WTF::RawPtrTraits<WebKit::WebSharedWorker>,WTF::DefaultRefDerefTraits<WebKit::WebSharedWorker>>,WTF::DefaultHash<WebCore::SharedWorkerKey>,WTF::HashTraits<WebCore::SharedWorkerKey>,WTF::HashTraits<WTF::Ref<WebKit::WebSharedWorker,WTF::RawPtrTraits<WebKit::WebSharedWorker>,WTF::DefaultRefDerefTraits<WebKit::WebSharedWorker>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WebCore::SharedWorkerKey>>,WebCore::SharedWorkerKey>(uint64_t *a1, uint64_t a2)
{
  if (WTF::HashTraitsEmptyValueChecker<WTF::HashTraits<WebCore::SharedWorkerKey>,false>::isEmptyValue<WebCore::SharedWorkerKey>(a2))
  {
    __break(0xC471u);
    JUMPOUT(0x19DD7E260);
  }

  if (*(a2 + 64) == -1)
  {
    __break(0xC471u);
    JUMPOUT(0x19DD7E280);
  }

  v4 = *a1;
  if (!*a1)
  {
    return 0;
  }

  v5 = *(v4 - 8);
  v10 = -1640531527;
  v11 = 0;
  v12 = 0;
  WTF::add<WebCore::ClientOrigin,WTF::URL,WTF::String>(&v10, a2, (a2 + 64), (a2 + 104));
  v6 = WTF::SuperFastHash::hash(&v10) & v5;
  v7 = v4 + 120 * v6;
  if (WTF::HashTraitsEmptyValueChecker<WTF::HashTraits<WebCore::SharedWorkerKey>,false>::isEmptyValue<WebCore::SharedWorkerKey>(v7))
  {
    return 0;
  }

  v8 = 1;
  while (*(v7 + 64) == -1 || (WebCore::operator==(v7, a2) & 1) == 0)
  {
    v6 = (v6 + v8) & v5;
    v7 = v4 + 120 * v6;
    ++v8;
    if (WTF::HashTraitsEmptyValueChecker<WTF::HashTraits<WebCore::SharedWorkerKey>,false>::isEmptyValue<WebCore::SharedWorkerKey>(v7))
    {
      return 0;
    }
  }

  return *(v7 + 112);
}

uint64_t WTF::checkHashTableKey<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::WebSharedWorkerServerConnection,WTF::RawPtrTraits<WebKit::WebSharedWorkerServerConnection>,WTF::DefaultRefDerefTraits<WebKit::WebSharedWorkerServerConnection>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::WebSharedWorkerServerConnection,WTF::RawPtrTraits<WebKit::WebSharedWorkerServerConnection>,WTF::DefaultRefDerefTraits<WebKit::WebSharedWorkerServerConnection>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::WebSharedWorkerServerConnection,WTF::RawPtrTraits<WebKit::WebSharedWorkerServerConnection>,WTF::DefaultRefDerefTraits<WebKit::WebSharedWorkerServerConnection>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::WebSharedWorkerServerConnection,WTF::RawPtrTraits<WebKit::WebSharedWorkerServerConnection>,WTF::DefaultRefDerefTraits<WebKit::WebSharedWorkerServerConnection>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMapTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::WebSharedWorkerServerConnection,WTF::RawPtrTraits<WebKit::WebSharedWorkerServerConnection>,WTF::DefaultRefDerefTraits<WebKit::WebSharedWorkerServerConnection>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::WebSharedWorkerServerConnection,WTF::RawPtrTraits<WebKit::WebSharedWorkerServerConnection>,WTF::DefaultRefDerefTraits<WebKit::WebSharedWorkerServerConnection>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(uint64_t result)
{
  if (result == -1 || !result)
  {
    __break(0xC471u);
    JUMPOUT(0x19DD7E2B0);
  }

  return result;
}

void *WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::WebSharedWorkerServerConnection,WTF::RawPtrTraits<WebKit::WebSharedWorkerServerConnection>,WTF::DefaultRefDerefTraits<WebKit::WebSharedWorkerServerConnection>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::WebSharedWorkerServerConnection,WTF::RawPtrTraits<WebKit::WebSharedWorkerServerConnection>,WTF::DefaultRefDerefTraits<WebKit::WebSharedWorkerServerConnection>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::WebSharedWorkerServerConnection,WTF::RawPtrTraits<WebKit::WebSharedWorkerServerConnection>,WTF::DefaultRefDerefTraits<WebKit::WebSharedWorkerServerConnection>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::WebSharedWorkerServerConnection,WTF::RawPtrTraits<WebKit::WebSharedWorkerServerConnection>,WTF::DefaultRefDerefTraits<WebKit::WebSharedWorkerServerConnection>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand(uint64_t *a1, void *a2)
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

  return WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::WebSharedWorkerServerConnection,WTF::RawPtrTraits<WebKit::WebSharedWorkerServerConnection>,WTF::DefaultRefDerefTraits<WebKit::WebSharedWorkerServerConnection>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::WebSharedWorkerServerConnection,WTF::RawPtrTraits<WebKit::WebSharedWorkerServerConnection>,WTF::DefaultRefDerefTraits<WebKit::WebSharedWorkerServerConnection>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::WebSharedWorkerServerConnection,WTF::RawPtrTraits<WebKit::WebSharedWorkerServerConnection>,WTF::DefaultRefDerefTraits<WebKit::WebSharedWorkerServerConnection>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::WebSharedWorkerServerConnection,WTF::RawPtrTraits<WebKit::WebSharedWorkerServerConnection>,WTF::DefaultRefDerefTraits<WebKit::WebSharedWorkerServerConnection>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash(a1, v5, a2);
}

_DWORD *WTF::HashMapTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::WebSharedWorkerServerConnection,WTF::RawPtrTraits<WebKit::WebSharedWorkerServerConnection>,WTF::DefaultRefDerefTraits<WebKit::WebSharedWorkerServerConnection>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::WebSharedWorkerServerConnection,WTF::RawPtrTraits<WebKit::WebSharedWorkerServerConnection>,WTF::DefaultRefDerefTraits<WebKit::WebSharedWorkerServerConnection>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>::translate<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long> const&,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::WebSharedWorkerServerConnection,WTF::RawPtrTraits<WebKit::WebSharedWorkerServerConnection>,WTF::DefaultRefDerefTraits<WebKit::WebSharedWorkerServerConnection>>>,WTF::HashTableAddResult<WTF::HashTableIterator<WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::WebSharedWorkerServerConnection,WTF::RawPtrTraits<WebKit::WebSharedWorkerServerConnection>,WTF::DefaultRefDerefTraits<WebKit::WebSharedWorkerServerConnection>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::WebSharedWorkerServerConnection,WTF::RawPtrTraits<WebKit::WebSharedWorkerServerConnection>,WTF::DefaultRefDerefTraits<WebKit::WebSharedWorkerServerConnection>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::WebSharedWorkerServerConnection,WTF::RawPtrTraits<WebKit::WebSharedWorkerServerConnection>,WTF::DefaultRefDerefTraits<WebKit::WebSharedWorkerServerConnection>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::WebSharedWorkerServerConnection,WTF::RawPtrTraits<WebKit::WebSharedWorkerServerConnection>,WTF::DefaultRefDerefTraits<WebKit::WebSharedWorkerServerConnection>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>,WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::WebSharedWorkerServerConnection,WTF::RawPtrTraits<WebKit::WebSharedWorkerServerConnection>,WTF::DefaultRefDerefTraits<WebKit::WebSharedWorkerServerConnection>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::WebSharedWorkerServerConnection,WTF::RawPtrTraits<WebKit::WebSharedWorkerServerConnection>,WTF::DefaultRefDerefTraits<WebKit::WebSharedWorkerServerConnection>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::WebSharedWorkerServerConnection,WTF::RawPtrTraits<WebKit::WebSharedWorkerServerConnection>,WTF::DefaultRefDerefTraits<WebKit::WebSharedWorkerServerConnection>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::WebSharedWorkerServerConnection,WTF::RawPtrTraits<WebKit::WebSharedWorkerServerConnection>,WTF::DefaultRefDerefTraits<WebKit::WebSharedWorkerServerConnection>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>> WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::WebSharedWorkerServerConnection,WTF::RawPtrTraits<WebKit::WebSharedWorkerServerConnection>,WTF::DefaultRefDerefTraits<WebKit::WebSharedWorkerServerConnection>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::WebSharedWorkerServerConnection,WTF::RawPtrTraits<WebKit::WebSharedWorkerServerConnection>,WTF::DefaultRefDerefTraits<WebKit::WebSharedWorkerServerConnection>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::inlineAdd<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long> const&,WTF::Ref<WebKit::WebSharedWorkerServerConnection,WTF::RawPtrTraits<WebKit::WebSharedWorkerServerConnection>,WTF::DefaultRefDerefTraits<WebKit::WebSharedWorkerServerConnection>>>(WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long> const&,WTF::Ref<WebKit::WebSharedWorkerServerConnection,WTF::RawPtrTraits<WebKit::WebSharedWorkerServerConnection>,WTF::DefaultRefDerefTraits<WebKit::WebSharedWorkerServerConnection>> &&)::{lambda(void)#1}>(void *a1, uint64_t a2, uint64_t **a3)
{
  *a1 = a2;
  v4 = **a3;
  **a3 = 0;
  result = a1[1];
  a1[1] = v4;
  if (result)
  {
    if (result[6] == 1)
    {
      return (*(*result + 8))();
    }

    else
    {
      --result[6];
    }
  }

  return result;
}

void *WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::WebSharedWorkerServerConnection,WTF::RawPtrTraits<WebKit::WebSharedWorkerServerConnection>,WTF::DefaultRefDerefTraits<WebKit::WebSharedWorkerServerConnection>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::WebSharedWorkerServerConnection,WTF::RawPtrTraits<WebKit::WebSharedWorkerServerConnection>,WTF::DefaultRefDerefTraits<WebKit::WebSharedWorkerServerConnection>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::WebSharedWorkerServerConnection,WTF::RawPtrTraits<WebKit::WebSharedWorkerServerConnection>,WTF::DefaultRefDerefTraits<WebKit::WebSharedWorkerServerConnection>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::WebSharedWorkerServerConnection,WTF::RawPtrTraits<WebKit::WebSharedWorkerServerConnection>,WTF::DefaultRefDerefTraits<WebKit::WebSharedWorkerServerConnection>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash(uint64_t *a1, unsigned int a2, void *a3)
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
  v11 = 0;
  if (v7)
  {
    v13 = v7;
    v14 = v6;
    do
    {
      if (*v14 != -1)
      {
        if (*v14)
        {
          v15 = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::WebSharedWorkerServerConnection,WTF::RawPtrTraits<WebKit::WebSharedWorkerServerConnection>,WTF::DefaultRefDerefTraits<WebKit::WebSharedWorkerServerConnection>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::WebSharedWorkerServerConnection,WTF::RawPtrTraits<WebKit::WebSharedWorkerServerConnection>,WTF::DefaultRefDerefTraits<WebKit::WebSharedWorkerServerConnection>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::WebSharedWorkerServerConnection,WTF::RawPtrTraits<WebKit::WebSharedWorkerServerConnection>,WTF::DefaultRefDerefTraits<WebKit::WebSharedWorkerServerConnection>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::WebSharedWorkerServerConnection,WTF::RawPtrTraits<WebKit::WebSharedWorkerServerConnection>,WTF::DefaultRefDerefTraits<WebKit::WebSharedWorkerServerConnection>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::reinsert(*a1, v14);
          WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::WebSharedWorkerServerConnection,WTF::RawPtrTraits<WebKit::WebSharedWorkerServerConnection>,WTF::DefaultRefDerefTraits<WebKit::WebSharedWorkerServerConnection>>>::~KeyValuePair(v14);
          if (v14 == a3)
          {
            v11 = v15;
          }
        }

        else
        {
          WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::WebSharedWorkerServerConnection,WTF::RawPtrTraits<WebKit::WebSharedWorkerServerConnection>,WTF::DefaultRefDerefTraits<WebKit::WebSharedWorkerServerConnection>>>::~KeyValuePair(v14);
        }
      }

      v14 += 2;
      --v13;
    }

    while (v13);
    goto LABEL_14;
  }

  result = 0;
  if (v6)
  {
LABEL_14:
    WTF::fastFree((v6 - 16), v10);
    return v11;
  }

  return result;
}

void *WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::WebSharedWorkerServerConnection,WTF::RawPtrTraits<WebKit::WebSharedWorkerServerConnection>,WTF::DefaultRefDerefTraits<WebKit::WebSharedWorkerServerConnection>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::WebSharedWorkerServerConnection,WTF::RawPtrTraits<WebKit::WebSharedWorkerServerConnection>,WTF::DefaultRefDerefTraits<WebKit::WebSharedWorkerServerConnection>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::WebSharedWorkerServerConnection,WTF::RawPtrTraits<WebKit::WebSharedWorkerServerConnection>,WTF::DefaultRefDerefTraits<WebKit::WebSharedWorkerServerConnection>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::WebSharedWorkerServerConnection,WTF::RawPtrTraits<WebKit::WebSharedWorkerServerConnection>,WTF::DefaultRefDerefTraits<WebKit::WebSharedWorkerServerConnection>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::reinsert(uint64_t a1, void *a2)
{
  if (a1)
  {
    v3 = *(a1 - 8);
  }

  else
  {
    v3 = 0;
  }

  v4 = *a2 + ~(*a2 << 32);
  v5 = (v4 ^ (v4 >> 22)) + ~((v4 ^ (v4 >> 22)) << 13);
  v6 = (9 * (v5 ^ (v5 >> 8))) ^ ((9 * (v5 ^ (v5 >> 8))) >> 15);
  v7 = v3 & (((v6 + ~(v6 << 27)) >> 31) ^ (v6 + ~(v6 << 27)));
  v8 = 1;
  do
  {
    v9 = v7;
    v10 = *(a1 + 16 * v7);
    v7 = (v7 + v8++) & v3;
  }

  while (v10);
  v11 = (a1 + 16 * v9);
  v12 = v11[1];
  v11[1] = 0;
  if (v12)
  {
    if (v12[6] == 1)
    {
      (*(*v12 + 8))(v12);
    }

    else
    {
      --v12[6];
    }
  }

  *v11 = *a2;
  v13 = a2[1];
  a2[1] = 0;
  v11[1] = v13;
  return v11;
}

uint64_t *WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::WebSharedWorkerServerConnection,WTF::RawPtrTraits<WebKit::WebSharedWorkerServerConnection>,WTF::DefaultRefDerefTraits<WebKit::WebSharedWorkerServerConnection>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::WebSharedWorkerServerConnection,WTF::RawPtrTraits<WebKit::WebSharedWorkerServerConnection>,WTF::DefaultRefDerefTraits<WebKit::WebSharedWorkerServerConnection>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::take(uint64_t *result, uint64_t *a2, uint64_t a3)
{
  v3 = *a2;
  if (*a2)
  {
    v3 += 16 * *(v3 - 4);
  }

  if (v3 == a3)
  {
    *result = 0;
  }

  else
  {
    v4 = *(a3 + 8);
    if (v4)
    {
      *(a3 + 8) = 0;
    }

    *result = v4;
    return WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::WebSharedWorkerServerConnection,WTF::RawPtrTraits<WebKit::WebSharedWorkerServerConnection>,WTF::DefaultRefDerefTraits<WebKit::WebSharedWorkerServerConnection>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::WebSharedWorkerServerConnection,WTF::RawPtrTraits<WebKit::WebSharedWorkerServerConnection>,WTF::DefaultRefDerefTraits<WebKit::WebSharedWorkerServerConnection>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::remove(a2, a3);
  }

  return result;
}

uint64_t *WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::WebSharedWorkerServerConnection,WTF::RawPtrTraits<WebKit::WebSharedWorkerServerConnection>,WTF::DefaultRefDerefTraits<WebKit::WebSharedWorkerServerConnection>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::WebSharedWorkerServerConnection,WTF::RawPtrTraits<WebKit::WebSharedWorkerServerConnection>,WTF::DefaultRefDerefTraits<WebKit::WebSharedWorkerServerConnection>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::remove(uint64_t *a1, uint64_t a2)
{
  if (*a1)
  {
    v2 = *a1 + 16 * *(*a1 - 4);
    if (v2 == a2)
    {
      return a1;
    }
  }

  else
  {
    if (!a2)
    {
      return a1;
    }

    v2 = 0;
  }

  if (v2 != a2)
  {
    return WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::WebSharedWorkerServerConnection,WTF::RawPtrTraits<WebKit::WebSharedWorkerServerConnection>,WTF::DefaultRefDerefTraits<WebKit::WebSharedWorkerServerConnection>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::WebSharedWorkerServerConnection,WTF::RawPtrTraits<WebKit::WebSharedWorkerServerConnection>,WTF::DefaultRefDerefTraits<WebKit::WebSharedWorkerServerConnection>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::WebSharedWorkerServerConnection,WTF::RawPtrTraits<WebKit::WebSharedWorkerServerConnection>,WTF::DefaultRefDerefTraits<WebKit::WebSharedWorkerServerConnection>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::WebSharedWorkerServerConnection,WTF::RawPtrTraits<WebKit::WebSharedWorkerServerConnection>,WTF::DefaultRefDerefTraits<WebKit::WebSharedWorkerServerConnection>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::remove(a1, a2);
  }

  return a1;
}

void *WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::WebSharedWorkerServerConnection,WTF::RawPtrTraits<WebKit::WebSharedWorkerServerConnection>,WTF::DefaultRefDerefTraits<WebKit::WebSharedWorkerServerConnection>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::WebSharedWorkerServerConnection,WTF::RawPtrTraits<WebKit::WebSharedWorkerServerConnection>,WTF::DefaultRefDerefTraits<WebKit::WebSharedWorkerServerConnection>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::WebSharedWorkerServerConnection,WTF::RawPtrTraits<WebKit::WebSharedWorkerServerConnection>,WTF::DefaultRefDerefTraits<WebKit::WebSharedWorkerServerConnection>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::WebSharedWorkerServerConnection,WTF::RawPtrTraits<WebKit::WebSharedWorkerServerConnection>,WTF::DefaultRefDerefTraits<WebKit::WebSharedWorkerServerConnection>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::remove(uint64_t *a1, uint64_t a2)
{
  *a2 = -1;
  result = WTF::Ref<WebKit::WebSharedWorkerServerConnection,WTF::RawPtrTraits<WebKit::WebSharedWorkerServerConnection>,WTF::DefaultRefDerefTraits<WebKit::WebSharedWorkerServerConnection>>::~Ref((a2 + 8));
  v4 = *a1;
  v5 = vadd_s32(*(*a1 - 16), 0xFFFFFFFF00000001);
  *(v4 - 16) = v5;
  v6 = *(v4 - 4);
  if (6 * v5.i32[1] < v6 && v6 >= 9)
  {

    return WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::WebSharedWorkerServerConnection,WTF::RawPtrTraits<WebKit::WebSharedWorkerServerConnection>,WTF::DefaultRefDerefTraits<WebKit::WebSharedWorkerServerConnection>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::WebSharedWorkerServerConnection,WTF::RawPtrTraits<WebKit::WebSharedWorkerServerConnection>,WTF::DefaultRefDerefTraits<WebKit::WebSharedWorkerServerConnection>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::WebSharedWorkerServerConnection,WTF::RawPtrTraits<WebKit::WebSharedWorkerServerConnection>,WTF::DefaultRefDerefTraits<WebKit::WebSharedWorkerServerConnection>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::WebSharedWorkerServerConnection,WTF::RawPtrTraits<WebKit::WebSharedWorkerServerConnection>,WTF::DefaultRefDerefTraits<WebKit::WebSharedWorkerServerConnection>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash(a1, v6 >> 1, 0);
  }

  return result;
}

uint64_t WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::WebSharedWorkerServerConnection,WTF::RawPtrTraits<WebKit::WebSharedWorkerServerConnection>,WTF::DefaultRefDerefTraits<WebKit::WebSharedWorkerServerConnection>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::WebSharedWorkerServerConnection,WTF::RawPtrTraits<WebKit::WebSharedWorkerServerConnection>,WTF::DefaultRefDerefTraits<WebKit::WebSharedWorkerServerConnection>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::WebSharedWorkerServerConnection,WTF::RawPtrTraits<WebKit::WebSharedWorkerServerConnection>,WTF::DefaultRefDerefTraits<WebKit::WebSharedWorkerServerConnection>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::WebSharedWorkerServerConnection,WTF::RawPtrTraits<WebKit::WebSharedWorkerServerConnection>,WTF::DefaultRefDerefTraits<WebKit::WebSharedWorkerServerConnection>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::WebSharedWorkerServerConnection,WTF::RawPtrTraits<WebKit::WebSharedWorkerServerConnection>,WTF::DefaultRefDerefTraits<WebKit::WebSharedWorkerServerConnection>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::WebSharedWorkerServerConnection,WTF::RawPtrTraits<WebKit::WebSharedWorkerServerConnection>,WTF::DefaultRefDerefTraits<WebKit::WebSharedWorkerServerConnection>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(uint64_t *a1, uint64_t *a2)
{
  if (!*a1)
  {
    return 0;
  }

  result = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::WebSharedWorkerServerConnection,WTF::RawPtrTraits<WebKit::WebSharedWorkerServerConnection>,WTF::DefaultRefDerefTraits<WebKit::WebSharedWorkerServerConnection>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::WebSharedWorkerServerConnection,WTF::RawPtrTraits<WebKit::WebSharedWorkerServerConnection>,WTF::DefaultRefDerefTraits<WebKit::WebSharedWorkerServerConnection>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::WebSharedWorkerServerConnection,WTF::RawPtrTraits<WebKit::WebSharedWorkerServerConnection>,WTF::DefaultRefDerefTraits<WebKit::WebSharedWorkerServerConnection>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::WebSharedWorkerServerConnection,WTF::RawPtrTraits<WebKit::WebSharedWorkerServerConnection>,WTF::DefaultRefDerefTraits<WebKit::WebSharedWorkerServerConnection>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::lookup<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::WebSharedWorkerServerConnection,WTF::RawPtrTraits<WebKit::WebSharedWorkerServerConnection>,WTF::DefaultRefDerefTraits<WebKit::WebSharedWorkerServerConnection>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::WebSharedWorkerServerConnection,WTF::RawPtrTraits<WebKit::WebSharedWorkerServerConnection>,WTF::DefaultRefDerefTraits<WebKit::WebSharedWorkerServerConnection>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>( a1,  a2);
  v4 = *a1;
  if (!result)
  {
    if (v4)
    {
      return v4 + 16 * *(v4 - 4);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::WebSharedWorkerServerConnection,WTF::RawPtrTraits<WebKit::WebSharedWorkerServerConnection>,WTF::DefaultRefDerefTraits<WebKit::WebSharedWorkerServerConnection>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::WebSharedWorkerServerConnection,WTF::RawPtrTraits<WebKit::WebSharedWorkerServerConnection>,WTF::DefaultRefDerefTraits<WebKit::WebSharedWorkerServerConnection>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::WebSharedWorkerServerConnection,WTF::RawPtrTraits<WebKit::WebSharedWorkerServerConnection>,WTF::DefaultRefDerefTraits<WebKit::WebSharedWorkerServerConnection>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::WebSharedWorkerServerConnection,WTF::RawPtrTraits<WebKit::WebSharedWorkerServerConnection>,WTF::DefaultRefDerefTraits<WebKit::WebSharedWorkerServerConnection>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::lookup<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::WebSharedWorkerServerConnection,WTF::RawPtrTraits<WebKit::WebSharedWorkerServerConnection>,WTF::DefaultRefDerefTraits<WebKit::WebSharedWorkerServerConnection>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::WebSharedWorkerServerConnection,WTF::RawPtrTraits<WebKit::WebSharedWorkerServerConnection>,WTF::DefaultRefDerefTraits<WebKit::WebSharedWorkerServerConnection>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(uint64_t *a1, uint64_t *a2)
{
  WTF::checkHashTableKey<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::WebSharedWorkerServerConnection,WTF::RawPtrTraits<WebKit::WebSharedWorkerServerConnection>,WTF::DefaultRefDerefTraits<WebKit::WebSharedWorkerServerConnection>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::WebSharedWorkerServerConnection,WTF::RawPtrTraits<WebKit::WebSharedWorkerServerConnection>,WTF::DefaultRefDerefTraits<WebKit::WebSharedWorkerServerConnection>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::WebSharedWorkerServerConnection,WTF::RawPtrTraits<WebKit::WebSharedWorkerServerConnection>,WTF::DefaultRefDerefTraits<WebKit::WebSharedWorkerServerConnection>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::WebSharedWorkerServerConnection,WTF::RawPtrTraits<WebKit::WebSharedWorkerServerConnection>,WTF::DefaultRefDerefTraits<WebKit::WebSharedWorkerServerConnection>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::WebSharedWorkerServerConnection,WTF::RawPtrTraits<WebKit::WebSharedWorkerServerConnection>,WTF::DefaultRefDerefTraits<WebKit::WebSharedWorkerServerConnection>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::WebSharedWorkerServerConnection,WTF::RawPtrTraits<WebKit::WebSharedWorkerServerConnection>,WTF::DefaultRefDerefTraits<WebKit::WebSharedWorkerServerConnection>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(*a2);
  v4 = *a1;
  if (v4)
  {
    v5 = *(v4 - 8);
    v6 = WTF::ObjectIdentifierGenericBaseHash<unsigned long long>::hash(a2) & v5;
    v7 = *(v4 + 16 * v6);
    if (v7 == *a2)
    {
      return v4 + 16 * v6;
    }

    v9 = 1;
    while (v7)
    {
      v6 = (v6 + v9) & v5;
      v7 = *(v4 + 16 * v6);
      ++v9;
      if (v7 == *a2)
      {
        return v4 + 16 * v6;
      }
    }
  }

  return 0;
}

uint64_t WTF::checkHashTableKey<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::WebSharedWorkerServerConnection,WTF::RawPtrTraits<WebKit::WebSharedWorkerServerConnection>,WTF::DefaultRefDerefTraits<WebKit::WebSharedWorkerServerConnection>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::WebSharedWorkerServerConnection,WTF::RawPtrTraits<WebKit::WebSharedWorkerServerConnection>,WTF::DefaultRefDerefTraits<WebKit::WebSharedWorkerServerConnection>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::WebSharedWorkerServerConnection,WTF::RawPtrTraits<WebKit::WebSharedWorkerServerConnection>,WTF::DefaultRefDerefTraits<WebKit::WebSharedWorkerServerConnection>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::WebSharedWorkerServerConnection,WTF::RawPtrTraits<WebKit::WebSharedWorkerServerConnection>,WTF::DefaultRefDerefTraits<WebKit::WebSharedWorkerServerConnection>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::WebSharedWorkerServerConnection,WTF::RawPtrTraits<WebKit::WebSharedWorkerServerConnection>,WTF::DefaultRefDerefTraits<WebKit::WebSharedWorkerServerConnection>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::WebSharedWorkerServerConnection,WTF::RawPtrTraits<WebKit::WebSharedWorkerServerConnection>,WTF::DefaultRefDerefTraits<WebKit::WebSharedWorkerServerConnection>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(uint64_t result)
{
  if (result == -1 || !result)
  {
    __break(0xC471u);
    JUMPOUT(0x19DD7E774);
  }

  return result;
}

uint64_t WTF::Vector<std::pair<WebCore::SharedWorkerKey,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::SharedWorkerObjectIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(uint64_t a1, WTF::StringImpl *a2)
{
  v3 = *(a1 + 12);
  if (v3)
  {
    v6 = *a1;
    v7 = v3 << 7;
    do
    {
      WebCore::SharedWorkerKey::~SharedWorkerKey(v6, a2);
      v6 = (v8 + 128);
      v7 -= 128;
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

void WTF::Detail::CallableWrapper<WebKit::WebSharedWorkerServer::removeConnection(WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>)::$_0,void,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::SharedWorkerObjectIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::pair<WebCore::MessagePortIdentifier,WebCore::MessagePortIdentifier> const&>::call(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v27 = *MEMORY[0x1E69E9840];
  if (a3 != **(a1 + 8))
  {
    return;
  }

  v3 = *(a1 + 16);
  v4 = **(a1 + 24);
  LOBYTE(v15) = 0;
  v17 = -1;
  LODWORD(v5) = *(v4 + 56);
  if (!*(v4 + 56))
  {
    v6 = *(v4 + 32);
    if (v6)
    {
      atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed);
    }

    *&v15 = v6;
    v5 = *(v4 + 40);
    if (v5)
    {
      atomic_fetch_add_explicit(v5, 2u, memory_order_relaxed);
    }

    *(&v15 + 1) = v5;
    v16 = *(v4 + 48);
    LOBYTE(v5) = *(v4 + 56);
    goto LABEL_8;
  }

  if (v5 != 255)
  {
    v15 = *(v4 + 32);
LABEL_8:
    v17 = v5;
  }

  LOBYTE(v18) = 0;
  v20 = -1;
  LODWORD(v7) = *(v4 + 88);
  if (*(v4 + 88))
  {
    if (v7 == 255)
    {
      goto LABEL_16;
    }

    v18 = *(v4 + 64);
  }

  else
  {
    v8 = *(v4 + 64);
    if (v8)
    {
      atomic_fetch_add_explicit(v8, 2u, memory_order_relaxed);
    }

    *&v18 = v8;
    v7 = *(v4 + 72);
    if (v7)
    {
      atomic_fetch_add_explicit(v7, 2u, memory_order_relaxed);
    }

    *(&v18 + 1) = v7;
    v19 = *(v4 + 80);
    LOBYTE(v7) = *(v4 + 88);
  }

  v20 = v7;
LABEL_16:
  v9 = *(v4 + 96);
  if (v9)
  {
    atomic_fetch_add_explicit(v9, 2u, memory_order_relaxed);
  }

  v21 = v9;
  v22 = *(v4 + 104);
  v23 = *(v4 + 120);
  v10 = *(v4 + 136);
  if (v10)
  {
    atomic_fetch_add_explicit(v10, 2u, memory_order_relaxed);
  }

  v24 = v10;
  v25 = a2;
  v26 = a3;
  v11 = *(v3 + 12);
  if (v11 == *(v3 + 8))
  {
    v12 = WTF::Vector<std::pair<WebCore::SharedWorkerKey,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::SharedWorkerObjectIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(v3, v11 + 1, &v15);
    v13 = *v3 + (*(v3 + 12) << 7);
  }

  else
  {
    v13 = *v3 + (v11 << 7);
    v12 = &v15;
  }

  std::pair<WebCore::SharedWorkerKey,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::SharedWorkerObjectIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>::pair[abi:sn200100](v13, v12);
  ++*(v3 + 12);
  WebCore::SharedWorkerKey::~SharedWorkerKey(&v15, v14);
}

uint64_t std::pair<WebCore::SharedWorkerKey,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::SharedWorkerObjectIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>::pair[abi:sn200100](uint64_t a1, uint64_t a2)
{
  v4 = mpark::detail::move_assignment<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::move_assignment(a1);
  mpark::detail::move_assignment<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::move_assignment(v4 + 32);
  WTF::URL::URL(a1 + 64, (a2 + 64));
  v5 = *(a2 + 104);
  *(a2 + 104) = 0;
  *(a1 + 104) = v5;
  *(a1 + 112) = *(a2 + 112);
  return a1;
}

unint64_t WTF::Vector<std::pair<WebCore::SharedWorkerKey,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::SharedWorkerObjectIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v3 = a3;
  v5 = *a1;
  if (*a1 > a3 || v5 + (*(a1 + 12) << 7) <= a3)
  {
    v10 = *(a1 + 8);
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

    WTF::Vector<std::pair<WebCore::SharedWorkerKey,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::SharedWorkerObjectIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v12);
  }

  else
  {
    v6 = a3 - v5;
    v7 = *(a1 + 8);
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

    WTF::Vector<std::pair<WebCore::SharedWorkerKey,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::SharedWorkerObjectIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v9);
    return *a1 + v6;
  }

  return v3;
}

void WTF::Vector<std::pair<WebCore::SharedWorkerKey,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::SharedWorkerObjectIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 8) < a2)
  {
    v2 = a2;
    if (a2 >> 25)
    {
      __break(0xC471u);
    }

    else
    {
      v4 = *a1;
      v5 = *(a1 + 12);
      v6 = WTF::fastMalloc((a2 << 7));
      *(a1 + 8) = v2;
      *a1 = v6;
      if (v5)
      {
        v8 = v6;
        v9 = v5 << 7;
        v10 = v4;
        do
        {
          std::pair<WebCore::SharedWorkerKey,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::SharedWorkerObjectIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>::pair[abi:sn200100](v8, v10);
          WebCore::SharedWorkerKey::~SharedWorkerKey(v10, v11);
          v8 += 128;
          v10 = (v10 + 128);
          v9 -= 128;
        }

        while (v9);
      }

      if (v4)
      {
        if (*a1 == v4)
        {
          *a1 = 0;
          *(a1 + 8) = 0;
        }

        WTF::fastFree(v4, v7);
      }
    }
  }
}

_DWORD *WTF::Detail::CallableWrapper<WebKit::WebSharedWorkerServer::postErrorToWorkerObject(WTF::ObjectIdentifierGeneric<WebCore::SharedWorkerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::String const&,int,int,WTF::String const&,BOOL)::$_0,void,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::SharedWorkerObjectIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::pair<WebCore::MessagePortIdentifier,WebCore::MessagePortIdentifier> const&>::call(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v35 = *MEMORY[0x1E69E9840];
  result = WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::WebSharedWorkerServerConnection,WTF::RawPtrTraits<WebKit::WebSharedWorkerServerConnection>,WTF::DefaultRefDerefTraits<WebKit::WebSharedWorkerServerConnection>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::WebSharedWorkerServerConnection,WTF::RawPtrTraits<WebKit::WebSharedWorkerServerConnection>,WTF::DefaultRefDerefTraits<WebKit::WebSharedWorkerServerConnection>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::WebSharedWorkerServerConnection,WTF::RawPtrTraits<WebKit::WebSharedWorkerServerConnection>,WTF::DefaultRefDerefTraits<WebKit::WebSharedWorkerServerConnection>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::WebSharedWorkerServerConnection,WTF::RawPtrTraits<WebKit::WebSharedWorkerServerConnection>,WTF::DefaultRefDerefTraits<WebKit::WebSharedWorkerServerConnection>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>((*(a1 + 8) + 24), a3);
  if (result)
  {
    v7 = result;
    ++result[6];
    v8 = *(a1 + 16);
    v9 = **(a1 + 24);
    v10 = *(a1 + 40);
    v11 = **(a1 + 32);
    v12 = **(a1 + 48);
    v28 = a2;
    v29 = a3;
    v26 = v11;
    v27 = v9;
    v13 = qword_1ED641300;
    if (os_log_type_enabled(qword_1ED641300, OS_LOG_TYPE_ERROR))
    {
      v20 = *(v7 + 7);
      WTF::makeString<unsigned long long,char,unsigned long long>(a3, 45, a2, &v25);
      WTF::String::utf8();
      if (v30)
      {
        v21 = (v30 + 16);
      }

      else
      {
        v21 = 0;
      }

      *buf = 134218498;
      *&buf[4] = v7;
      *&buf[12] = 2048;
      *&buf[14] = v20;
      *&buf[22] = 2082;
      v32 = v21;
      _os_log_error_impl(&dword_19D52D000, v13, OS_LOG_TYPE_ERROR, "%p - [webProcessIdentifier=%llu] WebSharedWorkerServerConnection::postErrorToWorkerObject: sharedWorkerObjectIdentifier=%{public}s", buf, 0x20u);
      v23 = v30;
      v30 = 0;
      if (v23)
      {
        if (*v23 == 1)
        {
          WTF::fastFree(v23, v22);
        }

        else
        {
          --*v23;
        }
      }

      v24 = v25;
      v25 = 0;
      if (v24 && atomic_fetch_add_explicit(v24, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v24, v22);
      }
    }

    *buf = &v28;
    *&buf[8] = v8;
    *&buf[16] = &v27;
    v32 = &v26;
    v33 = v10;
    v34[0] = v12;
    v14 = (*(*v7 + 56))(v7);
    v16 = IPC::Encoder::operator new(0x238, v15);
    *v16 = 3158;
    *(v16 + 2) = 0;
    *(v16 + 3) = 0;
    *(v16 + 1) = v14;
    *(v16 + 68) = 0;
    *(v16 + 70) = 0;
    *(v16 + 69) = 0;
    IPC::Encoder::encodeHeader(v16);
    v30 = v16;
    IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v16, v28);
    IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v16, v29);
    IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v16, v8);
    IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v16, v27);
    IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v16, v26);
    IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v16, v10);
    IPC::Encoder::operator<<<BOOL &>(v16, v34);
    (*(*v7 + 32))(v7, &v30, 0);
    result = v30;
    v30 = 0;
    if (result)
    {
      IPC::Encoder::~Encoder(result, v17);
      result = bmalloc::api::tzoneFree(v18, v19);
    }

    if (v7[6] == 1)
    {
      return (*(*v7 + 8))(v7);
    }

    else
    {
      --v7[6];
    }
  }

  return result;
}

_DWORD *WTF::Detail::CallableWrapper<WebKit::WebSharedWorkerServer::reportNetworkUsageToAllSharedWorkerObjects(WTF::ObjectIdentifierGeneric<WebCore::SharedWorkerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,unsigned long)::$_0,void,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::SharedWorkerObjectIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::pair<WebCore::MessagePortIdentifier,WebCore::MessagePortIdentifier> const&>::call(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v30 = *MEMORY[0x1E69E9840];
  result = WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::WebSharedWorkerServerConnection,WTF::RawPtrTraits<WebKit::WebSharedWorkerServerConnection>,WTF::DefaultRefDerefTraits<WebKit::WebSharedWorkerServerConnection>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::WebSharedWorkerServerConnection,WTF::RawPtrTraits<WebKit::WebSharedWorkerServerConnection>,WTF::DefaultRefDerefTraits<WebKit::WebSharedWorkerServerConnection>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::WebSharedWorkerServerConnection,WTF::RawPtrTraits<WebKit::WebSharedWorkerServerConnection>,WTF::DefaultRefDerefTraits<WebKit::WebSharedWorkerServerConnection>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::WebSharedWorkerServerConnection,WTF::RawPtrTraits<WebKit::WebSharedWorkerServerConnection>,WTF::DefaultRefDerefTraits<WebKit::WebSharedWorkerServerConnection>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>((*(a1 + 8) + 24), a3);
  if (result)
  {
    v7 = result;
    ++result[6];
    v8 = **(a1 + 16);
    v9 = qword_1ED641300;
    if (os_log_type_enabled(qword_1ED641300, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(v7 + 7);
      WTF::makeString<unsigned long long,char,unsigned long long>(a3, 45, a2, &v21);
      WTF::String::utf8();
      if (v22)
      {
        v11 = v22 + 16;
      }

      else
      {
        v11 = 0;
      }

      *buf = 134218754;
      *&buf[4] = v7;
      v24 = 2048;
      v25 = v10;
      v26 = 2082;
      v27 = v11;
      v28 = 2048;
      v29 = v8;
      _os_log_impl(&dword_19D52D000, v9, OS_LOG_TYPE_DEFAULT, "%p - [webProcessIdentifier=%llu] WebSharedWorkerServerConnection::reportNetworkUsageToWorkerObject: sharedWorkerObjectIdentifier=%{public}s, bytesTransferredOverNetworkDelta=%zu", buf, 0x2Au);
      v13 = v22;
      v22 = 0;
      if (v13)
      {
        if (*v13 == 1)
        {
          WTF::fastFree(v13, v12);
        }

        else
        {
          --*v13;
        }
      }

      v14 = v21;
      v21 = 0;
      if (v14 && atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v14, v12);
      }
    }

    v15 = (*(*v7 + 56))(v7);
    v17 = IPC::Encoder::operator new(0x238, v16);
    *v17 = 3159;
    *(v17 + 2) = 0;
    *(v17 + 3) = 0;
    *(v17 + 1) = v15;
    *(v17 + 68) = 0;
    *(v17 + 70) = 0;
    *(v17 + 69) = 0;
    IPC::Encoder::encodeHeader(v17);
    *buf = v17;
    IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v17, a2);
    IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v17, a3);
    IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v17, v8);
    (*(*v7 + 32))(v7, buf, 0);
    result = *buf;
    *buf = 0;
    if (result)
    {
      IPC::Encoder::~Encoder(result, v18);
      result = bmalloc::api::tzoneFree(v19, v20);
    }

    if (v7[6] == 1)
    {
      return (*(*v7 + 8))(v7);
    }

    else
    {
      --v7[6];
    }
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebSharedWorkerObjectConnection::FetchScriptInClient,WTF::CompletionHandler<void ()(WebCore::WorkerFetchResult &&,WebCore::WorkerInitializationData &&)>>(WTF::CompletionHandler<void ()(WebCore::WorkerFetchResult &&,WebCore::WorkerInitializationData &&)> &&,WTF::ThreadLikeAssertion)::{lambda(void ()(WebCore::WorkerFetchResult &&,WebCore::WorkerInitializationData &&),IPC::Connection*)#1},void,void ()(WebCore::WorkerFetchResult &&,WebCore::WorkerInitializationData &&),IPC::Connection*>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F1108198;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebSharedWorkerObjectConnection::FetchScriptInClient,WTF::CompletionHandler<void ()(WebCore::WorkerFetchResult &&,WebCore::WorkerInitializationData &&)>>(WTF::CompletionHandler<void ()(WebCore::WorkerFetchResult &&,WebCore::WorkerInitializationData &&)> &&,WTF::ThreadLikeAssertion)::{lambda(void ()(WebCore::WorkerFetchResult &&,WebCore::WorkerInitializationData &&),IPC::Connection*)#1},void,void ()(WebCore::WorkerFetchResult &&,WebCore::WorkerInitializationData &&),IPC::Connection*>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F1108198;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

void WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebSharedWorkerObjectConnection::FetchScriptInClient,WTF::CompletionHandler<void ()(WebCore::WorkerFetchResult &&,WebCore::WorkerInitializationData &&)>>(WTF::CompletionHandler<void ()(WebCore::WorkerFetchResult &&,WebCore::WorkerInitializationData &&)> &&,WTF::ThreadLikeAssertion)::{lambda(void ()(WebCore::WorkerFetchResult &&,WebCore::WorkerInitializationData &&),IPC::Connection*)#1},void,void ()(WebCore::WorkerFetchResult &&,WebCore::WorkerInitializationData &&),IPC::Connection*>::call(uint64_t a1, uint64_t a2, IPC::Decoder *a3)
{
  v34 = *MEMORY[0x1E69E9840];
  if (a3 && *a3)
  {
    IPC::ArgumentCoder<WebCore::WorkerFetchResult,void>::decode(a3, v21);
    if (v22 & 1) != 0 || (v13 = *a3, v14 = *(a3 + 1), *a3 = 0, *(a3 + 1) = 0, (v15 = *(a3 + 3)) != 0) && v14 && ((*(*v15 + 16))(v15, v13), (v22))
    {
      IPC::ArgumentCoder<WebCore::WorkerInitializationData,void>::decode(a3, v29);
      if (v33 & 1) != 0 || (v5 = *a3, v19 = *(a3 + 1), *a3 = 0, *(a3 + 1) = 0, (v20 = *(a3 + 3)) != 0) && v19 && ((*(*v20 + 16))(v20, v5), (v33))
      {
        if ((v22 & 1) == 0)
        {
          __break(1u);
        }

        std::tuple<WebCore::WorkerFetchResult,WebCore::WorkerInitializationData>::tuple[abi:sn200100]<WebCore::WorkerFetchResult,WebCore::WorkerInitializationData,0>(v23, v21, v29);
        v28 = 1;
        if (v33)
        {
          v6 = v32;
          v32 = 0;
          if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v6, v5);
          }

          if (v31 == 1)
          {
            v7 = v30;
            v30 = 0;
            if (v7)
            {
              if (atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v7, v5);
              }
            }
          }
        }
      }

      else
      {
        v23[0] = 0;
        v28 = 0;
      }

      if (v22)
      {
        WebCore::WorkerFetchResult::~WorkerFetchResult(v21, v5);
      }
    }

    else
    {
      v23[0] = 0;
      v28 = 0;
    }

    if (v28 & 1) != 0 || (v16 = *a3, v17 = *(a3 + 1), *a3 = 0, *(a3 + 1) = 0, (v18 = *(a3 + 3)) != 0) && v17 && ((*(*v18 + 16))(v18, v16), (v28))
    {
      v8 = *(a1 + 8);
      *(a1 + 8) = 0;
      (*(*v8 + 16))(v8, v23, &v24);
      (*(*v8 + 8))(v8);
      if (v28)
      {
        v10 = v27;
        v27 = 0;
        if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v10, v9);
        }

        if (v26 == 1)
        {
          v11 = v25;
          v25 = 0;
          if (v11)
          {
            if (atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v11, v9);
            }
          }
        }

        WebCore::WorkerFetchResult::~WorkerFetchResult(v23, v9);
      }
    }

    else
    {
      IPC::Connection::cancelReply<Messages::WebSharedWorkerObjectConnection::FetchScriptInClient,WTF::CompletionHandler<void ()(WebCore::WorkerFetchResult &&,WebCore::WorkerInitializationData &&)>>((a1 + 8));
    }
  }

  else
  {
    v12 = (a1 + 8);

    IPC::Connection::cancelReply<Messages::WebSharedWorkerObjectConnection::FetchScriptInClient,WTF::CompletionHandler<void ()(WebCore::WorkerFetchResult &&,WebCore::WorkerInitializationData &&)>>(v12);
  }
}

void IPC::Connection::cancelReply<Messages::WebSharedWorkerObjectConnection::FetchScriptInClient,WTF::CompletionHandler<void ()(WebCore::WorkerFetchResult &&,WebCore::WorkerInitializationData &&)>>(uint64_t *a1)
{
  v31 = *MEMORY[0x1E69E9840];
  v9 = 0;
  v10[0] = 0;
  WTF::URL::invalidate(v10);
  v13 = 0;
  v11 = 0u;
  v12 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16[0] = 0;
  WTF::URL::invalidate(v16);
  v17[2] = 0;
  v17[0] = 0;
  *(v17 + 6) = 0;
  v18 = 1;
  v24[0] = 0;
  v26 = 0;
  v27 = 0;
  v28 = 0;
  v29 = 0;
  v30 = 0;
  std::tuple<WebCore::WorkerFetchResult,WebCore::WorkerInitializationData>::tuple[abi:sn200100]<WebCore::WorkerFetchResult,WebCore::WorkerInitializationData,0>(v19, &v9, v24);
  v3 = v30;
  v30 = 0;
  if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v3, v2);
  }

  if (v26 == 1)
  {
    v4 = v25;
    v25 = 0;
    if (v4)
    {
      if (atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v4, v2);
      }
    }
  }

  WebCore::WorkerFetchResult::~WorkerFetchResult(&v9, v2);
  v5 = *a1;
  *a1 = 0;
  (*(*v5 + 16))(v5, v19, &v20);
  (*(*v5 + 8))(v5);
  v7 = v23;
  v23 = 0;
  if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v7, v6);
  }

  if (v22 == 1)
  {
    v8 = v21;
    v21 = 0;
    if (v8)
    {
      if (atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v8, v6);
      }
    }
  }

  WebCore::WorkerFetchResult::~WorkerFetchResult(v19, v6);
}

uint64_t std::tuple<WebCore::WorkerFetchResult,WebCore::WorkerInitializationData>::tuple[abi:sn200100]<WebCore::WorkerFetchResult,WebCore::WorkerInitializationData,0>(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v6 = *a2;
  *a2 = 0;
  *a1 = v6;
  WTF::URL::URL(a1 + 8, a2 + 1);
  v7 = a2[6];
  a2[6] = 0;
  *(a1 + 48) = v7;
  *(a1 + 64) = 0;
  *(a1 + 56) = 0;
  WTF::VectorBuffer<unsigned short,0ul,WTF::FastMalloc>::adopt(a1 + 56, a2 + 14);
  v8 = *(a2 + 18);
  *(a1 + 76) = *(a2 + 76);
  *(a1 + 72) = v8;
  *(a1 + 80) = *(a2 + 40);
  v9 = a2[11];
  a2[11] = 0;
  *(a1 + 88) = v9;
  v10 = a2[12];
  a2[12] = 0;
  *(a1 + 96) = v10;
  v11 = a2[13];
  a2[13] = 0;
  *(a1 + 104) = v11;
  v12 = a2[14];
  a2[14] = 0;
  *(a1 + 112) = v12;
  WTF::URL::URL(a1 + 120, a2 + 15);
  v13 = a2[20];
  a2[20] = 0;
  *(a1 + 160) = v13;
  LODWORD(v13) = *(a2 + 42);
  *(a1 + 172) = *(a2 + 86);
  *(a1 + 168) = v13;
  v14 = a2[22];
  a2[22] = 0;
  v15 = *(a2 + 184);
  *(a1 + 192) = 0;
  *(a1 + 176) = v14;
  *(a1 + 184) = v15;
  *(a1 + 256) = 0;
  if (*(a3 + 64) == 1)
  {
    *(a1 + 192) = *a3;
    WTF::URL::URL(a1 + 208, (a3 + 16));
    *(a1 + 248) = *(a3 + 56);
    *(a1 + 256) = 1;
  }

  v16 = *(a3 + 80);
  v17 = *(a3 + 96);
  v18 = *(a3 + 112);
  *(a1 + 320) = *(a3 + 128);
  *(a1 + 288) = v17;
  *(a1 + 304) = v18;
  *(a1 + 272) = v16;
  v19 = *(a3 + 136);
  *(a3 + 136) = 0;
  *(a1 + 328) = v19;
  return a1;
}

void WebKit::ProcessLauncher::terminateProcess(WebKit::ProcessLauncher *this)
{
  if (*(this + 56) == 1)
  {
    WebKit::ExtensionProcess::invalidate((this + 40));
  }

  WebKit::ProcessLauncher::terminateXPCConnection(this);
  *(this + 27) = 0;
}

uint64_t WTF::BlockPtr<void ()(NSObject  {objcproto13OS_xpc_object}*)>::fromCallable<WTF::Function<void ()(NSObject  {objcproto13OS_xpc_object}*)>>(WTF::Function<void ()(NSObject  {objcproto13OS_xpc_object}*)>)::{lambda(void const*)#1}::__invoke(uint64_t a1)
{
  result = *(a1 + 32);
  *(a1 + 32) = 0;
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WebKit::ProcessLauncher::launchProcess(void)::$_0::operator() const(WTF::ThreadSafeWeakPtr<WebKit::ProcessLauncher,WTF::NoTaggingTraits<WebKit::ProcessLauncher>>,WebKit::ExtensionProcess &&,WTF::ASCIILiteral,NSError *)::{lambda(void)#1},void>::~CallableWrapper(void *a1, void *a2)
{
  *a1 = &unk_1F1108308;
  v3 = a1[2];
  a1[2] = 0;
  if (v3)
  {
    WTF::ThreadSafeWeakPtrControlBlock::weakDeref(v3, a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::ProcessLauncher::launchProcess(void)::$_0::operator() const(WTF::ThreadSafeWeakPtr<WebKit::ProcessLauncher,WTF::NoTaggingTraits<WebKit::ProcessLauncher>>,WebKit::ExtensionProcess &&,WTF::ASCIILiteral,NSError *)::{lambda(void)#1},void>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F1108308;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeWeakPtrControlBlock::weakDeref(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

atomic_uchar **WTF::Detail::CallableWrapper<WebKit::ProcessLauncher::launchProcess(void)::$_0::operator() const(WTF::ThreadSafeWeakPtr<WebKit::ProcessLauncher,WTF::NoTaggingTraits<WebKit::ProcessLauncher>>,WebKit::ExtensionProcess &&,WTF::ASCIILiteral,NSError *)::{lambda(void)#1},void>::call(atomic_uchar **result)
{
  v1 = result[2];
  if (v1)
  {
    result = WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::LibWebRTCCodecsProxy>(&v4, v1, result[1]);
    v3 = v4;
    if (v4)
    {
      if ((*(v4 + 64) & 1) == 0)
      {
        *(v4 + 64) = 1;
        WebKit::ProcessLauncher::launchProcess(v3);
      }

      return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::ProcessLauncher,(WTF::DestructionThread)0>::deref(v3 + 1, v2);
    }
  }

  return result;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::ProcessLauncher::launchProcess(void)::$_0::operator() const(WTF::ThreadSafeWeakPtr<WebKit::ProcessLauncher,WTF::NoTaggingTraits<WebKit::ProcessLauncher>>,WebKit::ExtensionProcess &&,WTF::ASCIILiteral,NSError *)::{lambda(void)#2},void>::~CallableWrapper(uint64_t a1, void *a2)
{
  *a1 = &unk_1F1108330;
  v3 = *(a1 + 56);
  *(a1 + 56) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCounted<WebKit::LaunchGrant,(WTF::DestructionThread)0>::deref(v3);
  }

  if (*(a1 + 48) != 255)
  {
    v4 = *(a1 + 40);
    *(a1 + 40) = 0;
    if (v4)
    {
    }
  }

  *(a1 + 48) = -1;
  v5 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v5)
  {
    WTF::ThreadSafeWeakPtrControlBlock::weakDeref(v5, a2);
  }

  return a1;
}

void *WTF::Detail::CallableWrapper<WebKit::ProcessLauncher::finishLaunchingProcess(WTF::ASCIILiteral)::$_1,void,NSObject  {objcproto13OS_xpc_object}*>::~CallableWrapper(void *a1, void *a2)
{
  *a1 = &unk_1F1108358;
  v3 = a1[4];
  a1[4] = 0;
  if (v3)
  {
    if (*v3 == 1)
    {
      WTF::fastFree(v3, a2);
    }

    else
    {
      --*v3;
    }
  }

  v4 = a1[2];
  a1[2] = 0;
  if (v4)
  {
    WTF::ThreadSafeWeakPtrControlBlock::weakDeref(v4, a2);
  }

  return a1;
}

void *WTF::Detail::CallableWrapper<WebKit::ProcessLauncher::finishLaunchingProcess(WTF::ASCIILiteral)::$_2,void,NSObject  {objcproto13OS_xpc_object}*>::~CallableWrapper(void *a1)
{
  *a1 = &unk_1F1108380;
  v2 = a1[2];
  a1[2] = 0;
  if (v2 && atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v2 + 2);
    (*(*v2 + 8))(v2);
  }

  v3 = a1[1];
  a1[1] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::ProcessLauncher::finishLaunchingProcess(WTF::ASCIILiteral)::$_2,void,NSObject  {objcproto13OS_xpc_object}*>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F1108380;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3 && atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3 + 2);
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 1);
  *(this + 1) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  return WTF::fastFree(this, a2);
}

void *WTF::Detail::CallableWrapper<WebKit::ProcessLauncher::finishLaunchingProcess(WTF::ASCIILiteral)::$_2::operator()(NSObject  {objcproto13OS_xpc_object}*)::{lambda(void)#1},void>::~CallableWrapper(void *a1)
{
  *a1 = &unk_1F11083A8;
  v2 = a1[2];
  if (v2)
  {
  }

  v3 = a1[1];
  a1[1] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return a1;
}

void *WTF::Detail::CallableWrapper<WebKit::ProcessLauncher::finishLaunchingProcess(WTF::ASCIILiteral)::$_2::operator()(NSObject  {objcproto13OS_xpc_object}*)::{lambda(void)#2},void>::~CallableWrapper(void *a1)
{
  *a1 = &unk_1F11083D0;
  v2 = a1[2];
  if (v2)
  {
  }

  v3 = a1[1];
  a1[1] = 0;
  if (v3 && atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3 + 2);
    (*(*v3 + 8))(v3);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::ProcessLauncher::finishLaunchingProcess(WTF::ASCIILiteral)::$_2::operator()(NSObject  {objcproto13OS_xpc_object}*)::{lambda(void)#2},void>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F11083D0;
  v3 = *(this + 2);
  if (v3)
  {
  }

  v4 = *(this + 1);
  *(this + 1) = 0;
  if (v4 && atomic_fetch_add(v4 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v4 + 2);
    (*(*v4 + 8))(v4);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WebKit::WebSharedWorkerServerToContextConnection::operator new(WebKit::WebSharedWorkerServerToContextConnection *this, void *a2)
{
  if (this == 136 && WebKit::WebSharedWorkerServerToContextConnection::s_heapRef)
  {
    return bmalloc::api::tzoneAllocateNonCompact(WebKit::WebSharedWorkerServerToContextConnection::s_heapRef, a2);
  }

  else
  {
    return WebKit::WebSharedWorkerServerToContextConnection::operatorNewSlow(this);
  }
}

WebKit::WebSharedWorkerServerToContextConnection *WebKit::WebSharedWorkerServerToContextConnection::WebSharedWorkerServerToContextConnection(WebKit::WebSharedWorkerServerToContextConnection *this, WebKit::NetworkConnectionToWebProcess *a2, atomic_uint **a3, WebKit::WebSharedWorkerServer *a4)
{
  v20 = *MEMORY[0x1E69E9840];
  *(this + 6) = 1;
  *this = &unk_1F11083F8;
  *(this + 1) = &unk_1F1108460;
  *(this + 2) = 0;
  WTF::WeakPtrFactory<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(a2 + 16, a2 + 56);
  v8 = *(a2 + 8);
  atomic_fetch_add(v8, 1u);
  *(this + 4) = v8;
  WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(a4, a4);
  v9 = *a4;
  atomic_fetch_add(*a4, 1u);
  *(this + 5) = v9;
  v10 = *a3;
  if (*a3)
  {
    atomic_fetch_add_explicit(v10, 2u, memory_order_relaxed);
  }

  *(this + 6) = v10;
  v11 = a3[1];
  if (v11)
  {
    atomic_fetch_add_explicit(v11, 2u, memory_order_relaxed);
  }

  *(this + 7) = v11;
  *(this + 8) = 0;
  WebCore::TimerBase::TimerBase((this + 72));
  *(this + 9) = &unk_1F10EB388;
  v12 = WTF::fastMalloc(0x20);
  *v12 = &unk_1F11084F8;
  v12[1] = this;
  v12[2] = WebKit::WebSharedWorkerServerToContextConnection::idleTerminationTimerFired;
  v12[3] = 0;
  *(this + 15) = v12;
  *(this + 128) = 0;
  v13 = qword_1ED641300;
  if (os_log_type_enabled(qword_1ED641300, OS_LOG_TYPE_DEFAULT))
  {
    v14 = *(this + 4);
    if (v14)
    {
      v14 = *(v14 + 8);
      if (v14)
      {
        v14 = *(v14 + 216);
      }
    }

    v16 = 134218240;
    v17 = this;
    v18 = 2048;
    v19 = v14;
    _os_log_impl(&dword_19D52D000, v13, OS_LOG_TYPE_DEFAULT, "%p - [webProcessIdentifier=%llu] WebSharedWorkerServerToContextConnection::WebSharedWorkerServerToContextConnection:", &v16, 0x16u);
  }

  WebKit::WebSharedWorkerServer::addContextConnection(a4, this);
  return this;
}

void WebKit::WebSharedWorkerServerToContextConnection::idleTerminationTimerFired(WebKit::WebSharedWorkerServerToContextConnection *this)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = *(this + 8);
  if (v2 && *(v2 - 12))
  {
    __break(0xC471u);
  }

  else
  {
    v3 = qword_1ED641300;
    if (os_log_type_enabled(qword_1ED641300, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(this + 4);
      if (v4)
      {
        v4 = *(v4 + 8);
        if (v4)
        {
          v4 = *(v4 + 216);
        }
      }

      v7 = 134218240;
      v8 = this;
      v9 = 2048;
      v10 = v4;
      _os_log_impl(&dword_19D52D000, v3, OS_LOG_TYPE_DEFAULT, "%p - [webProcessIdentifier=%llu] WebSharedWorkerServerToContextConnection::connectionIsNoLongerNeeded:", &v7, 0x16u);
    }

    v5 = *(this + 4);
    if (v5)
    {
      v6 = *(v5 + 8);
      if (v6)
      {
        ++*(v6 - 36);
        WebKit::NetworkConnectionToWebProcess::sharedWorkerServerToContextConnectionIsNoLongerNeeded((v6 - 56));
        if (*(v6 - 36) == 1)
        {
          (*(*(v6 - 56) + 8))(v6 - 56);
        }

        else
        {
          --*(v6 - 36);
        }
      }
    }
  }
}

void WebKit::WebSharedWorkerServerToContextConnection::~WebSharedWorkerServerToContextConnection(WebKit::WebSharedWorkerServerToContextConnection *this)
{
  v21 = *MEMORY[0x1E69E9840];
  v2 = qword_1ED641300;
  if (os_log_type_enabled(qword_1ED641300, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(this + 4);
    if (v4)
    {
      v4 = *(v4 + 8);
      if (v4)
      {
        v4 = *(v4 + 216);
      }
    }

    v17 = 134218240;
    v18 = this;
    v19 = 2048;
    v20 = v4;
    _os_log_impl(&dword_19D52D000, v2, OS_LOG_TYPE_DEFAULT, "%p - [webProcessIdentifier=%llu] WebSharedWorkerServerToContextConnection::~WebSharedWorkerServerToContextConnection:", &v17, 0x16u);
  }

  v5 = *(this + 5);
  if (v5)
  {
    v6 = *(v5 + 8);
    if (v6)
    {
      ++*(v6 + 8);
      if (WTF::HashMap<WebCore::RegistrableDomain,WTF::WeakRef<WebKit::WebSharedWorkerServerToContextConnection,WTF::DefaultWeakPtrImpl>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WTF::WeakRef<WebKit::WebSharedWorkerServerToContextConnection,WTF::DefaultWeakPtrImpl>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WebCore::RegistrableDomain,WTF::WeakRef<WebKit::WebSharedWorkerServerToContextConnection,WTF::DefaultWeakPtrImpl>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WTF::WeakRef<WebKit::WebSharedWorkerServerToContextConnection,WTF::DefaultWeakPtrImpl>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WebCore::RegistrableDomain>>,WebCore::RegistrableDomain>((v6 + 32), this + 7, v3) == this)
      {
        WebKit::WebSharedWorkerServer::removeContextConnection(v6, this);
      }

      v7 = *(v6 + 8);
      if (!v7)
      {
LABEL_36:
        __break(0xC471u);
        JUMPOUT(0x19DD805D4);
      }

      *(v6 + 8) = v7 - 1;
    }
  }

  *(this + 9) = &unk_1F10EB388;
  v8 = *(this + 15);
  *(this + 15) = 0;
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  WebCore::TimerBase::~TimerBase((this + 72));
  v10 = *(this + 8);
  if (v10)
  {
    v11 = *(v10 - 4);
    if (v11)
    {
      v12 = (v10 + 8);
      do
      {
        if (*(v12 - 1) != -1 && *v12)
        {
          WTF::fastFree((*v12 - 16), v9);
        }

        v12 += 2;
        --v11;
      }

      while (v11);
    }

    WTF::fastFree((v10 - 16), v9);
  }

  v13 = *(this + 7);
  *(this + 7) = 0;
  if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v13, v9);
  }

  v14 = *(this + 6);
  *(this + 6) = 0;
  if (v14 && atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v14, v9);
  }

  v15 = *(this + 5);
  *(this + 5) = 0;
  if (v15 && atomic_fetch_add(v15, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v15);
    WTF::fastFree(v15, v9);
  }

  v16 = *(this + 4);
  *(this + 4) = 0;
  if (v16 && atomic_fetch_add(v16, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v16);
    WTF::fastFree(v16, v9);
  }

  if (*(this + 6) != 1)
  {
    goto LABEL_36;
  }

  *(this + 1) = &unk_1F10EA5E0;
  WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::~WeakPtrFactory(this + 2, v9);
}

{
  WebKit::WebSharedWorkerServerToContextConnection::~WebSharedWorkerServerToContextConnection(this);

  bmalloc::api::tzoneFree(v1, v2);
}

void non-virtual thunk toWebKit::WebSharedWorkerServerToContextConnection::~WebSharedWorkerServerToContextConnection(WebKit::WebSharedWorkerServerToContextConnection *this)
{
  WebKit::WebSharedWorkerServerToContextConnection::~WebSharedWorkerServerToContextConnection((this - 8));
}

{
  WebKit::WebSharedWorkerServerToContextConnection::~WebSharedWorkerServerToContextConnection((this - 8));

  bmalloc::api::tzoneFree(v1, v2);
}

uint64_t WebKit::WebSharedWorkerServerToContextConnection::messageSenderConnection(WebKit::WebSharedWorkerServerToContextConnection *this)
{
  v1 = *(this + 4);
  if (v1 && (v2 = *(v1 + 8)) != 0)
  {
    return *(v2 + 24);
  }

  else
  {
    return 0;
  }
}

void WebKit::WebSharedWorkerServerToContextConnection::postErrorToWorkerObject(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, uint64_t a6, char a7)
{
  v25 = *MEMORY[0x1E69E9840];
  v14 = qword_1ED641300;
  if (os_log_type_enabled(qword_1ED641300, OS_LOG_TYPE_DEFAULT))
  {
    v15 = *(a1 + 32);
    if (v15)
    {
      v15 = *(v15 + 8);
      if (v15)
      {
        v15 = *(v15 + 216);
      }
    }

    v19 = 134218496;
    v20 = a1;
    v21 = 2048;
    v22 = v15;
    v23 = 2048;
    v24 = a2;
    _os_log_impl(&dword_19D52D000, v14, OS_LOG_TYPE_DEFAULT, "%p - [webProcessIdentifier=%llu] WebSharedWorkerServerToContextConnection::postErrorToWorkerObject: sharedWorkerIdentifier=%llu", &v19, 0x20u);
  }

  v16 = *(a1 + 40);
  if (v16)
  {
    v17 = *(v16 + 8);
    if (v17)
    {
      ++*(v17 + 8);
      WebKit::WebSharedWorkerServer::postErrorToWorkerObject(v17, a2, a3, a4, a5, a6, a7);
      v18 = *(v17 + 8);
      if (v18)
      {
        *(v17 + 8) = v18 - 1;
      }

      else
      {
        __break(0xC471u);
      }
    }
  }
}

void WebKit::WebSharedWorkerServerToContextConnection::sharedWorkerTerminated(uint64_t a1, uint64_t a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = qword_1ED641300;
  if (os_log_type_enabled(qword_1ED641300, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    if (v5)
    {
      v5 = *(v5 + 8);
      if (v5)
      {
        v5 = *(v5 + 216);
      }
    }

    v9 = 134218496;
    v10 = a1;
    v11 = 2048;
    v12 = v5;
    v13 = 2048;
    v14 = a2;
    _os_log_impl(&dword_19D52D000, v4, OS_LOG_TYPE_DEFAULT, "%p - [webProcessIdentifier=%llu] WebSharedWorkerServerToContextConnection::sharedWorkerTerminated: sharedWorkerIdentifier=%llu", &v9, 0x20u);
  }

  v6 = *(a1 + 40);
  if (v6)
  {
    v7 = *(v6 + 8);
    if (v7)
    {
      ++*(v7 + 8);
      WebKit::WebSharedWorkerServer::sharedWorkerTerminated(v7, a2);
      v8 = *(v7 + 8);
      if (v8)
      {
        *(v7 + 8) = v8 - 1;
      }

      else
      {
        __break(0xC471u);
      }
    }
  }
}

uint64_t WebKit::WebSharedWorkerServerToContextConnection::launchSharedWorker(uint64_t this, WebKit::WebSharedWorker *a2)
{
  v75 = *MEMORY[0x1E69E9840];
  v2 = *(this + 32);
  if (v2)
  {
    v3 = *(v2 + 8);
    if (v3)
    {
      v5 = this;
      ++*(v3 - 36);
      v6 = *(v3 + 32);
      v7 = *(v3 + 216);
      LODWORD(v8) = *(a2 + 56);
      if (*(a2 + 56))
      {
        goto LABEL_78;
      }

      for (i = (a2 + 40); ; i = MEMORY[0x1E696EBA8])
      {
        WebCore::RegistrableDomain::uncheckedCreateFromHost(i, buf);
        v10 = WTF::fastMalloc(0x10);
        *v10 = &unk_1F1108520;
        *&v64 = v10;
        WebKit::NetworkProcess::addAllowedFirstPartyForCookies(v6, v7, buf, 0, &v64);
        v12 = v64;
        *&v64 = 0;
        if (v12)
        {
          (*(*v12 + 8))(v12);
        }

        v13 = *buf;
        *buf = 0;
        if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v13, v11);
        }

        v14 = qword_1ED641300;
        this = os_log_type_enabled(qword_1ED641300, OS_LOG_TYPE_DEFAULT);
        if (this)
        {
          v15 = *(v5 + 4);
          if (v15)
          {
            v15 = *(v15 + 8);
            if (v15)
            {
              v15 = *(v15 + 216);
            }
          }

          v16 = *(a2 + 2);
          *buf = 134218496;
          *&buf[4] = v5;
          *&buf[12] = 2048;
          *&buf[14] = v15;
          v48 = 2048;
          v49 = v16;
          _os_log_impl(&dword_19D52D000, v14, OS_LOG_TYPE_DEFAULT, "%p - [webProcessIdentifier=%llu] WebSharedWorkerServerToContextConnection::launchSharedWorker: sharedWorkerIdentifier=%llu", buf, 0x20u);
        }

        *(a2 + 528) = 1;
        LOBYTE(v64) = 0;
        v69 = 0;
        if (*(a2 + 448) == 1)
        {
          v64 = *(a2 + 24);
          v17 = *(a2 + 50);
          if (v17)
          {
            atomic_fetch_add_explicit(v17, 2u, memory_order_relaxed);
          }

          v65 = v17;
          v18 = *(a2 + 424);
          v66 = *(a2 + 408);
          v67 = v18;
          v68 = *(a2 + 220);
          v69 = 1;
        }

        v6 = v3 - 56;
        v19 = *(a2 + 30);
        v70 = *(a2 + 29);
        v71 = v19;
        v72 = *(a2 + 31);
        v73 = *(a2 + 256);
        v20 = *(a2 + 65);
        if (v20)
        {
          atomic_fetch_add_explicit(v20, 2u, memory_order_relaxed);
        }

        v74 = v20;
        v62 = v71;
        v63 = v72;
        v61 = v70;
        if (v72 != 1)
        {
          break;
        }

        v8 = *(v5 + 4);
        if (v8)
        {
          v21 = *(v8 + 8);
          if (v21)
          {
            v22 = *(v21 + 216);
            if ((v72 & 1) == 0)
            {
              LOBYTE(v72) = 1;
            }

            v70 = v61;
            *&v71 = v22;
            v23 = *(v3 + 32);
            *buf = v62;
            v24 = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkConnectionToWebProcess,WTF::RawPtrTraits<WebKit::NetworkConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::NetworkConnectionToWebProcess>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkConnectionToWebProcess,WTF::RawPtrTraits<WebKit::NetworkConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::NetworkConnectionToWebProcess>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkConnectionToWebProcess,WTF::RawPtrTraits<WebKit::NetworkConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::NetworkConnectionToWebProcess>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::NetworkConnectionToWebProcess,WTF::RawPtrTraits<WebKit::NetworkConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::NetworkConnectionToWebProcess>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::lookup<WTF::HashMapTranslatorAdapter<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkConnectionToWebProcess,WTF::RawPtrTraits<WebKit::NetworkConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::NetworkConnectionToWebProcess>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::NetworkConnectionToWebProcess,WTF::RawPtrTraits<WebKit::NetworkConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::NetworkConnectionToWebProcess>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkConnectionToWebProcess,WTF::RawPtrTraits<WebKit::NetworkConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::NetworkConnectionToWebProcess>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::NetworkConnectionToWebProcess,WTF::RawPtrTraits<WebKit::NetworkConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::NetworkConnectionToWebProcess>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>( (v23 + 152),  buf);
            if (!v24)
            {
              break;
            }

            v7 = *(v24 + 8);
            if (!v7)
            {
              break;
            }

            ++*(v7 + 5);
            this = WebKit::NetworkConnectionToWebProcess::swConnection(v7);
            if (!this)
            {
              goto LABEL_74;
            }

            v35 = this;
            ++*(this + 16);
            LODWORD(v8) = v63;
            if (v63)
            {
              v46[0] = v61;
              v46[1] = v62;
              this = WebKit::WebSWServerConnection::gatherClientData(this, v46, buf);
              if (v60 != 1)
              {
                goto LABEL_48;
              }

              LODWORD(v8) = v63;
              if (v63)
              {
                WebKit::WebSWServerConnection::unregisterServiceWorkerClient(v35, &v61);
                this = WebKit::NetworkConnectionToWebProcess::swConnection((v3 - 56));
                if (!this)
                {
                  goto LABEL_48;
                }

                v37 = this;
                ++*(this + 16);
                LODWORD(v8) = v60;
                if (v60)
                {
                  v53 = v70;
                  v54 = v71;
                  WebKit::WebSWServerConnection::registerServiceWorkerClient(this, buf, &v53, &v58, &v59);
                  if (v37[4] == 1)
                  {
                    (*(*v37 + 8))(v37);
                  }

                  else
                  {
                    --v37[4];
                  }

LABEL_48:
                  if (v60 == 1)
                  {
                    v38 = v59;
                    v59 = 0;
                    if (v38 && atomic_fetch_add_explicit(v38, 0xFFFFFFFE, memory_order_relaxed) == 2)
                    {
                      WTF::StringImpl::destroy(v38, v36);
                    }

                    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v57, v36);
                    v40 = v56;
                    v56 = 0;
                    if (v40 && atomic_fetch_add_explicit(v40, 0xFFFFFFFE, memory_order_relaxed) == 2)
                    {
                      WTF::StringImpl::destroy(v40, v39);
                    }

                    v41 = v55;
                    v55 = 0;
                    if (v41 && atomic_fetch_add_explicit(v41, 0xFFFFFFFE, memory_order_relaxed) == 2)
                    {
                      WTF::StringImpl::destroy(v41, v39);
                    }

                    if (!v52)
                    {
                      v42 = v51;
                      v51 = 0;
                      if (v42 && atomic_fetch_add_explicit(v42, 0xFFFFFFFE, memory_order_relaxed) == 2)
                      {
                        WTF::StringImpl::destroy(v42, v39);
                      }

                      v43 = v50;
                      v50 = 0;
                      if (v43 && atomic_fetch_add_explicit(v43, 0xFFFFFFFE, memory_order_relaxed) == 2)
                      {
                        WTF::StringImpl::destroy(v43, v39);
                      }
                    }

                    v52 = -1;
                    if (!v49)
                    {
                      v44 = *&buf[8];
                      *&buf[8] = 0;
                      if (v44 && atomic_fetch_add_explicit(v44, 0xFFFFFFFE, memory_order_relaxed) == 2)
                      {
                        WTF::StringImpl::destroy(v44, v39);
                      }

                      v45 = *buf;
                      *buf = 0;
                      if (v45 && atomic_fetch_add_explicit(v45, 0xFFFFFFFE, memory_order_relaxed) == 2)
                      {
                        WTF::StringImpl::destroy(v45, v39);
                      }
                    }
                  }

                  if (v35[4] == 1)
                  {
                    (*(*v35 + 8))(v35);
                  }

                  else
                  {
                    --v35[4];
                  }

LABEL_74:
                  if (*(v7 + 5) == 1)
                  {
                    (*(*v7 + 8))(v7);
                  }

                  else
                  {
                    --*(v7 + 5);
                  }

                  break;
                }
              }
            }
          }
        }

        __break(1u);
LABEL_78:
        if (v8 != 1)
        {
          mpark::throw_bad_variant_access(this);
        }
      }

      v25 = *(a2 + 2);
      v26 = (*(*v5 + 56))(v5);
      v28 = IPC::Encoder::operator new(0x238, v27);
      *v28 = 3149;
      *(v28 + 2) = 0;
      *(v28 + 3) = 0;
      *(v28 + 1) = v26;
      *(v28 + 68) = 0;
      *(v28 + 70) = 0;
      *(v28 + 69) = 0;
      IPC::Encoder::encodeHeader(v28);
      *buf = v28;
      IPC::ArgumentCoder<WebCore::ClientOrigin,void>::encode(v28, a2 + 32);
      IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v28, v25);
      IPC::ArgumentCoder<WebCore::WorkerOptions,void>::encode(v28, a2 + 144);
      IPC::ArgumentCoder<WebCore::WorkerFetchResult,void>::encode(v28, a2 + 184);
      IPC::ArgumentCoder<WebCore::WorkerInitializationData,void>::encode(v28, &v64);
      (*(*v5 + 32))(v5, buf, 0);
      v30 = *buf;
      *buf = 0;
      if (v30)
      {
        IPC::Encoder::~Encoder(v30, v29);
        bmalloc::api::tzoneFree(v33, v34);
      }

      ++v5[6];
      ++*(a2 + 2);
      v31 = WTF::fastMalloc(0x18);
      *v31 = &unk_1F1108548;
      v31[1] = v5;
      v31[2] = a2;
      *buf = v31;
      WebKit::WebSharedWorker::forEachSharedWorkerObject(a2, buf);
      (*(*v31 + 8))(v31);
      this = v74;
      v74 = 0;
      if (this && atomic_fetch_add_explicit(this, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        this = WTF::StringImpl::destroy(this, v32);
      }

      if (v69 == 1)
      {
        this = v65;
        v65 = 0;
        if (this)
        {
          if (atomic_fetch_add_explicit(this, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            this = WTF::StringImpl::destroy(this, v32);
          }
        }
      }

      if (*(v3 - 36) == 1)
      {
        return (*(*v6 + 8))(v3 - 56);
      }

      else
      {
        --*(v3 - 36);
      }
    }
  }

  return this;
}

IPC::Encoder *WebKit::WebSharedWorkerServerToContextConnection::suspendSharedWorker(uint64_t a1, uint64_t a2)
{
  v4 = (*(*a1 + 56))(a1);
  v6 = IPC::Encoder::operator new(0x238, v5);
  *v6 = 3153;
  *(v6 + 2) = 0;
  *(v6 + 3) = 0;
  *(v6 + 1) = v4;
  *(v6 + 68) = 0;
  *(v6 + 70) = 0;
  *(v6 + 69) = 0;
  IPC::Encoder::encodeHeader(v6);
  v11 = v6;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v6, a2);
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

IPC::Encoder *WebKit::WebSharedWorkerServerToContextConnection::resumeSharedWorker(uint64_t a1, uint64_t a2)
{
  v4 = (*(*a1 + 56))(a1);
  v6 = IPC::Encoder::operator new(0x238, v5);
  *v6 = 3151;
  *(v6 + 2) = 0;
  *(v6 + 3) = 0;
  *(v6 + 1) = v4;
  *(v6 + 68) = 0;
  *(v6 + 70) = 0;
  *(v6 + 69) = 0;
  IPC::Encoder::encodeHeader(v6);
  v11 = v6;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v6, a2);
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

uint64_t WebKit::WebSharedWorkerServerToContextConnection::postConnectEvent(void *a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v30 = *MEMORY[0x1E69E9840];
  v8 = qword_1ED641300;
  if (os_log_type_enabled(qword_1ED641300, OS_LOG_TYPE_DEFAULT))
  {
    v9 = a1[4];
    if (v9)
    {
      v9 = *(v9 + 8);
      if (v9)
      {
        v9 = *(v9 + 216);
      }
    }

    v10 = *(a2 + 16);
    *buf = 134218496;
    *&buf[4] = a1;
    *&buf[12] = 2048;
    *&buf[14] = v9;
    v28 = 2048;
    v29 = v10;
    _os_log_impl(&dword_19D52D000, v8, OS_LOG_TYPE_DEFAULT, "%p - [webProcessIdentifier=%llu] WebSharedWorkerServerToContextConnection::postConnectEvent: sharedWorkerIdentifier=%llu", buf, 0x20u);
  }

  v11 = *(a2 + 16);
  WebCore::SecurityOriginData::toString(&v25, (a2 + 64));
  v12 = (*(*a1 + 56))(a1);
  v14 = IPC::Encoder::operator new(0x238, v13);
  *v14 = 3150;
  *(v14 + 2) = 0;
  *(v14 + 3) = 0;
  *(v14 + 1) = v12;
  *(v14 + 68) = 0;
  *(v14 + 70) = 0;
  *(v14 + 69) = 0;
  IPC::Encoder::encodeHeader(v14);
  v26 = v14;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v14, v11);
  IPC::ArgumentCoder<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::BackForwardFrameItemIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,void>::encode(v14, a3);
  IPC::ArgumentCoder<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::BackForwardFrameItemIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,void>::encode(v14, a3 + 2);
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v14, &v25);
  v15 = *a4;
  *a4 = 0;
  v16 = WTF::fastMalloc(0x10);
  *v16 = &unk_1F1108598;
  v16[1] = v15;
  if (WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1)
  {
    result = 141;
    __break(0xC471u);
  }

  else
  {
    v17 = v16;
    IdentifierInternal = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
    *buf = v17;
    *&buf[8] = IdentifierInternal;
    (*(*a1 + 40))(a1, &v26, buf, 0);
    v20 = *buf;
    *buf = 0;
    if (v20)
    {
      (*(*v20 + 8))(v20);
    }

    v21 = v26;
    v26 = 0;
    if (v21)
    {
      IPC::Encoder::~Encoder(v21, v19);
      bmalloc::api::tzoneFree(v23, v24);
    }

    result = v25;
    v25 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        return WTF::StringImpl::destroy(result, v19);
      }
    }
  }

  return result;
}

IPC::Encoder *WebKit::WebSharedWorkerServerToContextConnection::terminateSharedWorker(WebKit::WebSharedWorkerServerToContextConnection *this, const WebKit::WebSharedWorker *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = qword_1ED641300;
  if (os_log_type_enabled(qword_1ED641300, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(this + 4);
    if (v5)
    {
      v5 = *(v5 + 8);
      if (v5)
      {
        v5 = *(v5 + 216);
      }
    }

    v6 = *(a2 + 2);
    *v15 = 134218496;
    *&v15[4] = this;
    v16 = 2048;
    v17 = v5;
    v18 = 2048;
    v19 = v6;
    _os_log_impl(&dword_19D52D000, v4, OS_LOG_TYPE_DEFAULT, "%p - [webProcessIdentifier=%llu] WebSharedWorkerServerToContextConnection::terminateSharedWorker: sharedWorkerIdentifier=%llu", v15, 0x20u);
  }

  v7 = *(a2 + 2);
  v8 = (*(*this + 56))(this);
  v10 = IPC::Encoder::operator new(0x238, v9);
  *v10 = 3154;
  *(v10 + 2) = 0;
  *(v10 + 3) = 0;
  *(v10 + 1) = v8;
  *(v10 + 68) = 0;
  *(v10 + 70) = 0;
  *(v10 + 69) = 0;
  IPC::Encoder::encodeHeader(v10);
  *v15 = v10;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v10, v7);
  (*(*this + 32))(this, v15, 0);
  result = *v15;
  *v15 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v11);
    return bmalloc::api::tzoneFree(v13, v14);
  }

  return result;
}

uint64_t WebKit::WebSharedWorkerServerToContextConnection::addSharedWorkerObject(void *a1, unint64_t a2, unint64_t a3)
{
  v59 = *MEMORY[0x1E69E9840];
  v6 = qword_1ED641300;
  if (os_log_type_enabled(qword_1ED641300, OS_LOG_TYPE_DEFAULT))
  {
    v8 = a1[4];
    if (v8 && (v9 = *(v8 + 8)) != 0)
    {
      v10 = *(v9 + 216);
    }

    else
    {
      v10 = 0;
    }

    WTF::makeString<unsigned long long,char,unsigned long long>(a3, 45, a2, &v55);
    WTF::String::utf8();
    if (v53)
    {
      v11 = v53 + 16;
    }

    else
    {
      v11 = 0;
    }

    *buf = 134218498;
    *v57 = a1;
    *&v57[8] = 2048;
    *&v57[10] = v10;
    *&v57[18] = 2082;
    v58 = v11;
    _os_log_impl(&dword_19D52D000, v6, OS_LOG_TYPE_DEFAULT, "%p - [webProcessIdentifier=%llu] WebSharedWorkerServerToContextConnection::addSharedWorkerObject: sharedWorkerObjectIdentifier=%{public}s", buf, 0x20u);
    v12 = v53;
    v53 = 0;
    if (v12)
    {
      if (*v12 == 1)
      {
        WTF::fastFree(v12, v7);
      }

      else
      {
        --*v12;
      }
    }

    v13 = v55;
    v55 = 0;
    if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v13, v7);
    }
  }

  if (a3 == -1)
  {
LABEL_77:
    __break(0xC471u);
    JUMPOUT(0x19DD81B14);
  }

  if (!a3)
  {
    __break(0xC471u);
    JUMPOUT(0x19DD81B34);
  }

  v14 = a1[8];
  if (!v14)
  {
    WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::HashSet<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::SharedWorkerObjectIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::SharedWorkerObjectIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::SharedWorkerObjectIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::HashSet<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::SharedWorkerObjectIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::SharedWorkerObjectIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::SharedWorkerObjectIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::HashSet<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::SharedWorkerObjectIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::SharedWorkerObjectIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::SharedWorkerObjectIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::HashSet<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::SharedWorkerObjectIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::SharedWorkerObjectIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::SharedWorkerObjectIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand( a1 + 8,  0);
    v14 = a1[8];
  }

  v15 = *(v14 - 8);
  v16 = (a3 + ~(a3 << 32)) ^ ((a3 + ~(a3 << 32)) >> 22);
  v17 = 9 * ((v16 + ~(v16 << 13)) ^ ((v16 + ~(v16 << 13)) >> 8));
  v18 = (v17 ^ (v17 >> 15)) + ~((v17 ^ (v17 >> 15)) << 27);
  v19 = v15 & ((v18 >> 31) ^ v18);
  v20 = (v14 + 16 * v19);
  v21 = *v20;
  if (*v20)
  {
    v22 = 0;
    v23 = 1;
    do
    {
      if (v21 == a3)
      {
        goto LABEL_36;
      }

      if (v21 == -1)
      {
        v22 = v20;
      }

      v19 = (v19 + v23) & v15;
      v20 = (v14 + 16 * v19);
      v21 = *v20;
      ++v23;
    }

    while (*v20);
    if (v22)
    {
      *v22 = 0;
      v22[1] = 0;
      --*(a1[8] - 16);
      v20 = v22;
    }
  }

  v24 = v20[1];
  *v20 = a3;
  v20[1] = 0;
  if (v24)
  {
    WTF::fastFree((v24 - 16), v7);
  }

  v25 = a1[8];
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
  if (v28 <= 0x400)
  {
    if (3 * v28 > 4 * v27)
    {
      goto LABEL_35;
    }

    goto LABEL_34;
  }

  if (v28 <= 2 * v27)
  {
LABEL_34:
    v20 = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::HashSet<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::SharedWorkerObjectIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::SharedWorkerObjectIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::SharedWorkerObjectIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::HashSet<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::SharedWorkerObjectIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::SharedWorkerObjectIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::SharedWorkerObjectIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::HashSet<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::SharedWorkerObjectIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::SharedWorkerObjectIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::SharedWorkerObjectIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::HashSet<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::SharedWorkerObjectIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::SharedWorkerObjectIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::SharedWorkerObjectIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand( a1 + 8,  v20);
  }

LABEL_35:
  if (!(a2 | a3))
  {
    goto LABEL_77;
  }

LABEL_36:
  v29 = v20[1];
  if (v29 || (WTF::HashTable<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::SharedWorkerObjectIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::SharedWorkerObjectIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::SharedWorkerObjectIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::SharedWorkerObjectIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::SharedWorkerObjectIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::FastMalloc>::expand(v20 + 1), (v29 = v20[1]) != 0))
  {
    v30 = *(v29 - 8);
  }

  else
  {
    v30 = 0;
  }

  result = WTF::IdentityHashTranslator<WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>::hash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(a2, a3);
  v32 = result & v30;
  v33 = (v29 + 16 * (result & v30));
  v35 = *v33;
  v34 = v33[1];
  if (*v33 == 0)
  {
LABEL_48:
    *v33 = a2;
    v33[1] = a3;
    v38 = v20[1];
    if (v38)
    {
      v39 = *(v38 - 12) + 1;
    }

    else
    {
      v39 = 1;
    }

    *(v38 - 12) = v39;
    v40 = (*(v38 - 16) + v39);
    v41 = *(v38 - 4);
    if (v41 > 0x400)
    {
      if (v41 > 2 * v40)
      {
        goto LABEL_54;
      }
    }

    else if (3 * v41 > 4 * v40)
    {
      goto LABEL_54;
    }

    result = WTF::HashTable<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::SharedWorkerObjectIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::SharedWorkerObjectIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::SharedWorkerObjectIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::SharedWorkerObjectIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::SharedWorkerObjectIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::FastMalloc>::expand(v20 + 1);
    goto LABEL_54;
  }

  v36 = 0;
  v37 = 1;
  while (v35 != a2 || v34 != a3)
  {
    if (v34 == -1)
    {
      v36 = v33;
    }

    v32 = (v32 + v37) & v30;
    v33 = (v29 + 16 * v32);
    v35 = *v33;
    v34 = v33[1];
    ++v37;
    if (*v33 == 0)
    {
      if (v36)
      {
        *v36 = 0;
        v36[1] = 0;
        --*(v20[1] - 16);
        v33 = v36;
      }

      goto LABEL_48;
    }
  }

LABEL_54:
  v42 = a1[4];
  if (!v42 || (v43 = *(v42 + 8)) == 0 || *(v43 + 216) != a3)
  {
    v44 = v20[1];
    if (v44)
    {
      if (v42)
      {
        if (*(v44 - 12) == 1)
        {
          v45 = *(v42 + 8);
          if (v45)
          {
            ++*(v45 - 36);
            v46 = *(v45 + 216);
            v52 = a3;
            v53 = v46;
            v54 = 1;
            v47 = *(v45 + 32);
            buf[0] = 2;
            *&v57[4] = &v52;
            *&v57[12] = &v53;
            v48 = IPC::Encoder::operator new(0x238, v33);
            *v48 = 549;
            *(v48 + 68) = 0;
            *(v48 + 70) = 0;
            *(v48 + 69) = 0;
            *(v48 + 2) = 0;
            *(v48 + 3) = 0;
            *(v48 + 1) = 0;
            IPC::Encoder::encodeHeader(v48);
            v55 = v48;
            Messages::NetworkProcessProxy::RegisterRemoteWorkerClientProcess::encode<IPC::Encoder>(buf, v48);
            (*(*(v47 + 24) + 32))(v47 + 24, &v55, 0);
            result = v55;
            v55 = 0;
            if (result)
            {
              IPC::Encoder::~Encoder(result, v49);
              result = bmalloc::api::tzoneFree(v50, v51);
            }

            if (*(v45 - 36) == 1)
            {
              result = (*(*(v45 - 56) + 8))();
            }

            else
            {
              --*(v45 - 36);
            }
          }
        }
      }
    }
  }

  if ((a1[13] & 0xFFFFFFFFFFFFLL) != 0)
  {
    return WebCore::TimerBase::stopSlowCase((a1 + 9));
  }

  return result;
}

uint64_t WebKit::WebSharedWorkerServerToContextConnection::removeSharedWorkerObject(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v62 = *MEMORY[0x1E69E9840];
  v6 = qword_1ED641300;
  result = os_log_type_enabled(qword_1ED641300, OS_LOG_TYPE_DEFAULT);
  if (result)
  {
    v9 = *(a1 + 32);
    if (v9 && (v10 = *(v9 + 8)) != 0)
    {
      v11 = *(v10 + 216);
    }

    else
    {
      v11 = 0;
    }

    WTF::makeString<unsigned long long,char,unsigned long long>(a3, 45, a2, &v58);
    WTF::String::utf8();
    if (v56)
    {
      v12 = v56 + 16;
    }

    else
    {
      v12 = 0;
    }

    *buf = 134218498;
    *v60 = a1;
    *&v60[8] = 2048;
    *&v60[10] = v11;
    *&v60[18] = 2082;
    v61 = v12;
    _os_log_impl(&dword_19D52D000, v6, OS_LOG_TYPE_DEFAULT, "%p - [webProcessIdentifier=%llu] WebSharedWorkerServerToContextConnection::removeSharedWorkerObject: sharedWorkerObjectIdentifier=%{public}s", buf, 0x20u);
    v13 = v56;
    v56 = 0;
    if (v13)
    {
      if (*v13 == 1)
      {
        WTF::fastFree(v13, v8);
      }

      else
      {
        --*v13;
      }
    }

    result = v58;
    v58 = 0;
    if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      result = WTF::StringImpl::destroy(result, v8);
    }
  }

  v15 = (a1 + 64);
  v14 = *(a1 + 64);
  if (v14)
  {
    if (a3 == -1)
    {
      __break(0xC471u);
      JUMPOUT(0x19DD820F4);
    }

    if (!a3)
    {
      __break(0xC471u);
      JUMPOUT(0x19DD82114);
    }

    v16 = *(v14 - 8);
    v17 = (a3 + ~(a3 << 32)) ^ ((a3 + ~(a3 << 32)) >> 22);
    v18 = 9 * ((v17 + ~(v17 << 13)) ^ ((v17 + ~(v17 << 13)) >> 8));
    v19 = (v18 ^ (v18 >> 15)) + ~((v18 ^ (v18 >> 15)) << 27);
    v20 = v16 & ((v19 >> 31) ^ v19);
    v21 = *(v14 + 16 * v20);
    if (v21 != a3)
    {
      v22 = 1;
      while (v21)
      {
        v20 = (v20 + v22) & v16;
        v21 = *(v14 + 16 * v20);
        ++v22;
        if (v21 == a3)
        {
          goto LABEL_24;
        }
      }

      v20 = *(v14 - 4);
    }

LABEL_24:
    if (v20 != *(v14 - 4))
    {
      v23 = (v14 + 16 * v20);
      v24 = v23 + 1;
      v25 = v23[1];
      if (!v25)
      {
        v34 = 0;
        goto LABEL_53;
      }

      if (!(a2 | a3))
      {
        __break(0xC471u);
        JUMPOUT(0x19DD82134);
      }

      v26 = *(v25 - 8);
      result = WTF::IdentityHashTranslator<WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>::hash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(a2, a3);
      v27 = result & v26;
      v28 = (v25 + 16 * (result & v26));
      v29 = *v28;
      v30 = v28[1];
      if (*v28 == a2 && v30 == a3)
      {
LABEL_38:
        v34 = *v24;
        if (!*v24)
        {
          v35 = 0;
          goto LABEL_44;
        }
      }

      else
      {
        v32 = 1;
        while (v29 | v30)
        {
          v27 = (v27 + v32) & v26;
          v28 = (v25 + 16 * v27);
          v29 = *v28;
          v30 = v28[1];
          ++v32;
          if (*v28 == a2 && v30 == a3)
          {
            goto LABEL_38;
          }
        }

        v34 = *v24;
        if (!*v24)
        {
          goto LABEL_53;
        }

        v28 = (v34 + 16 * *(v34 - 4));
      }

      v35 = (v34 + 16 * *(v34 - 4));
      if (v35 == v28)
      {
        goto LABEL_52;
      }

LABEL_44:
      if (v35 != v28)
      {
        *v28 = -1;
        v28[1] = -1;
        v34 = *v24;
        v36 = vadd_s32(*(*v24 - 16), 0xFFFFFFFF00000001);
        *(v34 - 16) = v36;
        v37 = *(v34 - 4);
        if (6 * v36.i32[1] >= v37 || v37 < 9)
        {
LABEL_52:
          if (*(v34 - 12))
          {
            return result;
          }

LABEL_53:
          v39 = *v15;
          if (*v15)
          {
            v40 = (v39 + 16 * *(v39 - 4));
            if (v40 == v23)
            {
LABEL_66:
              v44 = *(a1 + 32);
              if (v44)
              {
                v45 = *(v44 + 8);
                if (v45)
                {
                  v46 = *(v45 + 216);
                  if (v46 != a3)
                  {
                    ++*(v45 - 36);
                    v55 = a3;
                    v56 = v46;
                    v57 = 1;
                    v47 = *(v45 + 32);
                    buf[0] = 2;
                    *&v60[4] = &v55;
                    *&v60[12] = &v56;
                    v48 = IPC::Encoder::operator new(0x238, v8);
                    *v48 = 567;
                    *(v48 + 68) = 0;
                    *(v48 + 70) = 0;
                    *(v48 + 69) = 0;
                    *(v48 + 2) = 0;
                    *(v48 + 3) = 0;
                    *(v48 + 1) = 0;
                    IPC::Encoder::encodeHeader(v48);
                    v58 = v48;
                    Messages::NetworkProcessProxy::RegisterRemoteWorkerClientProcess::encode<IPC::Encoder>(buf, v48);
                    (*(*(v47 + 24) + 32))(v47 + 24, &v58, 0);
                    result = v58;
                    v58 = 0;
                    if (result)
                    {
                      IPC::Encoder::~Encoder(result, v49);
                      result = bmalloc::api::tzoneFree(v53, v54);
                    }

                    if (*(v45 - 36) == 1)
                    {
                      result = (*(*(v45 - 56) + 8))();
                    }

                    else
                    {
                      --*(v45 - 36);
                    }
                  }
                }
              }

              if (!*v15 || !*(*v15 - 12))
              {
                v50 = qword_1ED641300;
                v51 = os_log_type_enabled(qword_1ED641300, OS_LOG_TYPE_DEFAULT);
                if (v51)
                {
                  v52 = *(a1 + 32);
                  if (v52)
                  {
                    v52 = *(v52 + 8);
                    if (v52)
                    {
                      v52 = *(v52 + 216);
                    }
                  }

                  *buf = 134218240;
                  *v60 = a1;
                  *&v60[8] = 2048;
                  *&v60[10] = v52;
                  _os_log_impl(&dword_19D52D000, v50, OS_LOG_TYPE_DEFAULT, "%p - [webProcessIdentifier=%llu] WebSharedWorkerServerToContextConnection::removeSharedWorkerObject: connection is now idle, starting a timer to terminate it", buf, 0x16u);
                }

                atomic_load((WTF::MemoryPressureHandler::singleton(v51) + 4));
                return WebCore::TimerBase::start();
              }

              return result;
            }
          }

          else
          {
            v40 = 0;
          }

          if (v40 != v23)
          {
            *v23 = -1;
            if (v34)
            {
              result = WTF::fastFree((v34 - 16), v8);
              v39 = *v15;
            }

            v41 = vadd_s32(*(v39 - 16), 0xFFFFFFFF00000001);
            *(v39 - 16) = v41;
            v42 = *(v39 - 4);
            if (6 * v41.i32[1] < v42 && v42 >= 9)
            {
              result = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::HashSet<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::SharedWorkerObjectIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::SharedWorkerObjectIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::SharedWorkerObjectIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::HashSet<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::SharedWorkerObjectIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::SharedWorkerObjectIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::SharedWorkerObjectIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::HashSet<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::SharedWorkerObjectIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::SharedWorkerObjectIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::SharedWorkerObjectIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::HashSet<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::SharedWorkerObjectIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::SharedWorkerObjectIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::SharedWorkerObjectIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash( (a1 + 64),  v42 >> 1,  0);
            }
          }

          goto LABEL_66;
        }

        result = WTF::HashTable<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::SharedWorkerObjectIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::SharedWorkerObjectIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::SharedWorkerObjectIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::SharedWorkerObjectIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::SharedWorkerObjectIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::FastMalloc>::rehash(v24, v37 >> 1);
        v34 = *v24;
      }

      if (!v34)
      {
        goto LABEL_53;
      }

      goto LABEL_52;
    }
  }

  return result;
}

uint64_t WebKit::NetworkCache::AsyncRevalidation::staleWhileRevalidateEnding(uint64_t this)
{
  v1 = *(this + 80);
  if (v1)
  {
    *(this + 80) = 0;
    (*(*v1 + 16))(v1, 1);
    v2 = *(*v1 + 8);

    return v2(v1);
  }

  return this;
}

void WebKit::NetworkCache::Key::~Key(WebKit::NetworkCache::Key *this, WTF::StringImpl *a2)
{
  v3 = *(this + 3);
  *(this + 3) = 0;
  if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v3, a2);
  }

  v4 = *(this + 2);
  *(this + 2) = 0;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, a2);
  }

  v5 = *(this + 1);
  *(this + 1) = 0;
  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, a2);
  }

  v6 = *this;
  *this = 0;
  if (v6)
  {
    if (atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v6, a2);
    }
  }
}

atomic_ullong *WebKit::NetworkCache::Cache::open@<X0>(WTF::FileSystemImpl *this@<X1>, uint64_t a2@<X0>, char a3@<W2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  result = WTF::FileSystemImpl::makeAllDirectories(this, this);
  if ((result & 1) != 0 && (v11 = WebKit::NetworkCache::computeCapacity(*(a2 + 169), this), result = WebKit::NetworkCache::Storage::open(this, a3 & 1, v11, &v14), v14))
  {
    v12 = WTF::fastMalloc(0x60);
    v13 = v14;
    v14 = 0;
    *a5 = WebKit::NetworkCache::Cache::Cache(v12, a2, this, &v13, a3, a4);
    if (v13)
    {
      WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::NetworkCache::Storage,(WTF::DestructionThread)2>::deref(v13);
    }

    result = v14;
    v14 = 0;
    if (result)
    {
      return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::NetworkCache::Storage,(WTF::DestructionThread)2>::deref(result);
    }
  }

  else
  {
    *a5 = 0;
  }

  return result;
}

uint64_t WebKit::NetworkCache::computeCapacity(int a1, WTF::FileSystemImpl *this)
{
  v3 = WTF::FileSystemImpl::volumeFreeSpace(this, this);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  return WebKit::calculateURLCacheDiskCapacity(a1, ((v3 >> 13) * 0x20C49BA5E353F7DuLL) >> 64);
}

uint64_t WebKit::NetworkCache::Cache::Cache(uint64_t a1, uint64_t a2, atomic_uint **a3, uint64_t *a4, char a5, uint64_t a6)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  v8 = *a4;
  *a4 = 0;
  *(a1 + 16) = v8;
  atomic_fetch_add((a2 + 144), 1u);
  *(a1 + 24) = a2;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 60) = 0u;
  *(a1 + 80) = a6;
  v9 = *a3;
  if (*a3)
  {
    atomic_fetch_add_explicit(v9, 2u, memory_order_relaxed);
  }

  *(a1 + 88) = v9;
  if ((a5 & 4) != 0)
  {
    *out_token = a1;
    WTF::WeakPtrFactory<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(a1, a1);
    v10 = *a1;
    atomic_fetch_add(*a1, 1u);
    v28 = v10;
    std::make_unique[abi:sn200100]<WebCore::LowPowerModeNotifier,WebKit::NetworkCache::Cache::Cache(WebKit::NetworkProcess &,WTF::String const&,WTF::Ref<WebKit::NetworkCache::Storage,WTF::RawPtrTraits<WebKit::NetworkCache::Storage>,WTF::DefaultRefDerefTraits<WebKit::NetworkCache::Storage>> &&,WTF::OptionSet<WebKit::NetworkCache::CacheOption>,PAL::SessionID)::$_0,0>(&v29, out_token);
    v12 = *(a1 + 32);
    *(a1 + 32) = v29;
    if (v12)
    {
      WebCore::LowPowerModeNotifier::operator delete();
    }

    v29 = 0;
    v13 = v28;
    v28 = 0;
    if (v13 && atomic_fetch_add(v13, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v13);
      WTF::fastFree(v13, v11);
    }

    *out_token = a1;
    WTF::WeakPtrFactory<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(a1, a1);
    v14 = *a1;
    atomic_fetch_add(*a1, 1u);
    v28 = v14;
    std::make_unique[abi:sn200100]<WebCore::ThermalMitigationNotifier,WebKit::NetworkCache::Cache::Cache(WebKit::NetworkProcess &,WTF::String const&,WTF::Ref<WebKit::NetworkCache::Storage,WTF::RawPtrTraits<WebKit::NetworkCache::Storage>,WTF::DefaultRefDerefTraits<WebKit::NetworkCache::Storage>> &&,WTF::OptionSet<WebKit::NetworkCache::CacheOption>,PAL::SessionID)::$_1,0>(&v29, out_token);
    std::unique_ptr<WebCore::ThermalMitigationNotifier>::reset[abi:sn200100]((a1 + 40), v29);
    v29 = 0;
    v16 = v28;
    v28 = 0;
    if (v16 && atomic_fetch_add(v16, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v16);
      WTF::fastFree(v16, v15);
    }

    shouldUseSpeculativeLoadManager = WebKit::NetworkCache::Cache::shouldUseSpeculativeLoadManager(a1);
    if (shouldUseSpeculativeLoadManager)
    {
      v19 = *(a1 + 16);
      while (1)
      {
        v20 = *v19;
        if ((*v19 & 1) == 0)
        {
          break;
        }

        v25 = *v19;
        atomic_compare_exchange_strong_explicit(v19, &v25, v20 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v25 == v20)
        {
          goto LABEL_16;
        }
      }

      shouldUseSpeculativeLoadManager = WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v19);
LABEL_16:
      v21 = WebKit::NetworkCache::SpeculativeLoadManager::operator new(shouldUseSpeculativeLoadManager, v18);
      WebKit::NetworkCache::SpeculativeLoadManager::SpeculativeLoadManager(v21, a1, v19);
      v23 = *(a1 + 48);
      *(a1 + 48) = v21;
      if (v23)
      {
        WebKit::NetworkCache::SpeculativeLoadManager::operator delete(v23, v22);
      }

      WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::NetworkCache::Storage,(WTF::DestructionThread)2>::deref(v19);
    }
  }

  if ((a5 & 2) != 0)
  {
    out_token[0] = 0;
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 0x40000000;
    v26[2] = ___ZN6WebKit12NetworkCache5CacheC2ERNS_14NetworkProcessERKN3WTF6StringEONS4_3RefINS0_7StorageENS4_12RawPtrTraitsIS9_EENS4_21DefaultRefDerefTraitsIS9_EEEENS4_9OptionSetINS0_11CacheOptionEEEN3PAL9SessionIDE_block_invoke;
    v26[3] = &__block_descriptor_tmp;
    v26[4] = a1;
    notify_register_dispatch("com.apple.WebKit.Cache.dump", out_token, MEMORY[0x1E69E96A0], v26);
  }

  return a1;
}

uint64_t WebKit::NetworkCache::Cache::shouldUseSpeculativeLoadManager(WebCore::LowPowerModeNotifier **this)
{
  v1 = this;
  v2 = this[4];
  if (v2)
  {
    ++*v2;
    this = WebCore::LowPowerModeNotifier::isLowPowerModeEnabled(v2);
    v3 = this ^ 1;
  }

  else
  {
    v3 = 1;
  }

  if (*(v1 + 5))
  {
    v4 = WebCore::ThermalMitigationNotifier::isThermalMitigationEnabled(this) ^ 1;
  }

  else
  {
    v4 = 1;
  }

  if (!v2)
  {
    return v3 & v4;
  }

  if (*v2)
  {
    --*v2;
    return v3 & v4;
  }

  result = 290;
  __break(0xC471u);
  return result;
}

void ___ZN6WebKit12NetworkCache5CacheC2ERNS_14NetworkProcessERKN3WTF6StringEONS4_3RefINS0_7StorageENS4_12RawPtrTraitsIS9_EENS4_21DefaultRefDerefTraitsIS9_EEEENS4_9OptionSetINS0_11CacheOptionEEEN3PAL9SessionIDE_block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  WebKit::NetworkCache::Cache::dumpFilePath(&v8, *(v1 + 16));
  WTF::FileSystemImpl::openFile();
  v3 = v8;
  v8 = 0;
  if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v3, v2);
  }

  if (v11 != -1)
  {
    WTF::FileSystemImpl::FileHandle::write();
    *&v12[4] = 0;
    *&v12[12] = 0;
    v4 = *(v1 + 16);
    v5 = v4[5];
    {
      WTF::AtomStringImpl::add();
      WebKit::NetworkCache::resourceType(void)::resource = v8;
    }

    WTF::FileSystemImpl::FileHandle::FileHandle();
    *v9 = 0;
    *&v9[4] = *v12;
    *&v9[20] = *&v12[16];
    *&v9[24] = v5;
    v6 = WTF::fastMalloc(0x30);
    *v6 = &unk_1F1108728;
    WTF::FileSystemImpl::FileHandle::FileHandle();
    v7 = *&v9[16];
    *(v6 + 16) = *v9;
    *(v6 + 32) = v7;
    v10 = v6;
    WebKit::NetworkCache::Storage::traverse(v4, &WebKit::NetworkCache::resourceType(void)::resource, 3, &v10);
    if (v10)
    {
      (*(*v10 + 8))(v10);
    }

    WTF::FileSystemImpl::FileHandle::~FileHandle(&v8);
  }

  WTF::FileSystemImpl::FileHandle::~FileHandle(&v11);
}

void WebKit::NetworkCache::Cache::~Cache(WebKit::NetworkCache::Cache *this, WTF::StringImpl *a2)
{
  v3 = *(this + 11);
  *(this + 11) = 0;
  if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v3, a2);
  }

  v4 = *(this + 8);
  if (v4)
  {
    v5 = *(v4 - 4);
    if (v5)
    {
      v6 = (v4 + 24);
      do
      {
        if (*(v6 - 2) != -1 && *v6)
        {
          WTF::HashTable<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::FastMalloc>::deallocateTable(*v6, a2);
        }

        v6 += 5;
        --v5;
      }

      while (v5);
    }

    WTF::fastFree((v4 - 16), a2);
  }

  v7 = *(this + 7);
  if (v7)
  {
    v8 = *(v7 - 4);
    if (v8)
    {
      v9 = *(this + 7);
      do
      {
        if (*(v9 + 16) != -1)
        {
          v10 = *(v9 + 72);
          *(v9 + 72) = 0;
          if (v10)
          {
            WTF::RefCounted<WebKit::NetworkCache::AsyncRevalidation>::deref(v10 + 8);
          }

          v11 = *(v9 + 24);
          *(v9 + 24) = 0;
          if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v11, a2);
          }

          v12 = *(v9 + 16);
          *(v9 + 16) = 0;
          if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v12, a2);
          }

          v13 = *(v9 + 8);
          *(v9 + 8) = 0;
          if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v13, a2);
          }

          v14 = *v9;
          *v9 = 0;
          if (v14 && atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v14, a2);
          }
        }

        v9 += 80;
        --v8;
      }

      while (v8);
    }

    WTF::fastFree((v7 - 16), a2);
  }

  v15 = *(this + 6);
  *(this + 6) = 0;
  if (v15)
  {
    WebKit::NetworkCache::SpeculativeLoadManager::operator delete(v15, a2);
  }

  std::unique_ptr<WebCore::ThermalMitigationNotifier>::reset[abi:sn200100](this + 5, 0);
  v17 = *(this + 4);
  *(this + 4) = 0;
  if (v17)
  {
    WebCore::LowPowerModeNotifier::operator delete();
  }

  v18 = *(this + 3);
  *(this + 3) = 0;
  if (v18 && atomic_fetch_add(v18 + 36, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v18 + 36);
    (*(*v18 + 24))(v18);
  }

  v19 = *(this + 2);
  *(this + 2) = 0;
  if (v19)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::NetworkCache::Storage,(WTF::DestructionThread)2>::deref(v19);
  }

  if (*(this + 2) == 1)
  {
    if (*this)
    {
      *(*this + 8) = 0;
      v20 = *this;
      *this = 0;
      if (v20)
      {
        if (atomic_fetch_add(v20, 0xFFFFFFFF) == 1)
        {
          atomic_store(1u, v20);
          WTF::fastFree(v20, v16);
        }
      }
    }
  }

  else
  {
    __break(0xC471u);
  }
}

uint64_t WebKit::NetworkCache::Cache::updateCapacity(WebKit::NetworkCache::Cache *this)
{
  v2 = *(*(this + 3) + 169);
  WTF::String::isolatedCopy();
  v4 = WebKit::NetworkCache::computeCapacity(v2, &v7);
  v5 = v7;
  v7 = 0;
  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, v3);
  }

  result = *(this + 2);
  if (*(result + 40) != v4)
  {
    *(result + 40) = v4;
    return WebKit::NetworkCache::Storage::shrinkIfNeeded(result);
  }

  return result;
}

WTF::StringImpl *WebKit::NetworkCache::Cache::makeCacheKey@<X0>(WebKit::NetworkCache::Cache *this@<X0>, atomic_uint **a2@<X1>, atomic_uint **a3@<X8>)
{
  WebCore::ResourceRequestBase::httpHeaderField();
  {
    WTF::AtomStringImpl::add();
    WebKit::NetworkCache::resourceType(void)::resource = v11;
  }

  v6 = WebCore::ResourceRequestBase::url(a2);
  WTF::URL::stringWithoutFragmentIdentifier(&v11, v6);
  WebKit::NetworkCache::Key::Key(a3, a2 + 20, &WebKit::NetworkCache::resourceType(void)::resource, &v10, &v11, *(this + 2) + 28);
  v8 = v11;
  v11 = 0;
  if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v8, v7);
  }

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

void WebKit::NetworkCache::Cache::updateSpeculativeLoadManagerEnabledState(WebCore::LowPowerModeNotifier **this)
{
  v15 = *MEMORY[0x1E69E9840];
  shouldUseSpeculativeLoadManager = WebKit::NetworkCache::Cache::shouldUseSpeculativeLoadManager(this);
  v4 = this[6];
  if (shouldUseSpeculativeLoadManager)
  {
    if (!v4)
    {
      v7 = this[2];
      while (1)
      {
        v8 = *v7;
        if ((*v7 & 1) == 0)
        {
          break;
        }

        v12 = *v7;
        atomic_compare_exchange_strong_explicit(v7, &v12, v8 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v12 == v8)
        {
          goto LABEL_10;
        }
      }

      v4 = WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v7);
LABEL_10:
      v9 = WebKit::NetworkCache::SpeculativeLoadManager::operator new(v4, v2);
      WebKit::NetworkCache::SpeculativeLoadManager::SpeculativeLoadManager(v9, this, v7);
      v11 = this[6];
      this[6] = v9;
      if (v11)
      {
        WebKit::NetworkCache::SpeculativeLoadManager::operator delete(v11, v10);
      }

      WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::NetworkCache::Storage,(WTF::DestructionThread)2>::deref(v7);
      v5 = qword_1ED640E00;
      if (os_log_type_enabled(qword_1ED640E00, OS_LOG_TYPE_DEFAULT))
      {
        v13 = 134217984;
        v14 = this;
        v6 = "%p - Cache::updateSpeculativeLoadManagerEnabledState: enabling speculative loads due to low power mode or thermal change";
        goto LABEL_14;
      }
    }
  }

  else if (v4)
  {
    this[6] = 0;
    WebKit::NetworkCache::SpeculativeLoadManager::operator delete(v4, v2);
    v5 = qword_1ED640E00;
    if (os_log_type_enabled(qword_1ED640E00, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 134217984;
      v14 = this;
      v6 = "%p - Cache::updateSpeculativeLoadManagerEnabledState: disabling speculative loads due to low power mode or thermal change";
LABEL_14:
      _os_log_impl(&dword_19D52D000, v5, OS_LOG_TYPE_DEFAULT, v6, &v13, 0xCu);
    }
  }
}

uint64_t WebKit::NetworkCache::Cache::startAsyncRevalidationIfNeeded(uint64_t a1, const WebCore::ResourceRequest *a2, uint64_t a3, const WebKit::NetworkCache::Key **a4, void *a5, __int16 a6, char a7, __int16 a8)
{
  v143 = *MEMORY[0x1E69E9840];
  v8 = *(a3 + 16);
  if (v8 == -1)
  {
    __break(0xC471u);
    goto LABEL_153;
  }

  if (!v8)
  {
    __break(0xC471u);
    JUMPOUT(0x19DD83880);
  }

  v14 = *(a1 + 56);
  if (v14 || (WTF::HashTable<WebKit::NetworkCache::Key,WTF::KeyValuePair<WebKit::NetworkCache::Key,WTF::Ref<WebKit::NetworkCache::AsyncRevalidation,WTF::RawPtrTraits<WebKit::NetworkCache::AsyncRevalidation>,WTF::DefaultRefDerefTraits<WebKit::NetworkCache::AsyncRevalidation>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebKit::NetworkCache::Key,WTF::Ref<WebKit::NetworkCache::AsyncRevalidation,WTF::RawPtrTraits<WebKit::NetworkCache::AsyncRevalidation>,WTF::DefaultRefDerefTraits<WebKit::NetworkCache::AsyncRevalidation>>>>,WTF::DefaultHash<WebKit::NetworkCache::Key>,WTF::HashMap<WebKit::NetworkCache::Key,WTF::Ref<WebKit::NetworkCache::AsyncRevalidation,WTF::RawPtrTraits<WebKit::NetworkCache::AsyncRevalidation>,WTF::DefaultRefDerefTraits<WebKit::NetworkCache::AsyncRevalidation>>,WTF::DefaultHash<WebKit::NetworkCache::Key>,WTF::HashTraits<WebKit::NetworkCache::Key>,WTF::HashTraits<WTF::Ref<WebKit::NetworkCache::AsyncRevalidation,WTF::RawPtrTraits<WebKit::NetworkCache::AsyncRevalidation>,WTF::DefaultRefDerefTraits<WebKit::NetworkCache::AsyncRevalidation>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebKit::NetworkCache::Key>,WTF::FastMalloc>::expand((a1 + 56)), (v14 = *(a1 + 56)) != 0))
  {
    v15 = a5;
    v16 = *(v14 - 8);
  }

  else
  {
    v15 = a5;
    v16 = 0;
  }

  v108 = a7;
  v17 = 0;
  v18 = *(a3 + 32);
  for (i = 1; ; ++i)
  {
    v20 = v18 & v16;
    v21 = v14 + 80 * (v18 & v16);
    v22 = *(v21 + 16);
    if (v22 == -1)
    {
      v17 = v14 + 80 * v20;
      goto LABEL_12;
    }

    if (!v22)
    {
      break;
    }

    result = WebKit::NetworkCache::Key::operator==(v14 + 80 * v20, a3, a3);
    if (result)
    {
      return result;
    }

LABEL_12:
    v18 = i + v20;
  }

  if (v17)
  {
    *v17 = 0u;
    *(v17 + 16) = 0u;
    *(v17 + 72) = 0;
    --*(*(a1 + 56) - 16);
    v21 = v17;
  }

  WebKit::NetworkCache::Key::operator=(v21, a3);
  v24 = v15 + 2;
  v25 = v15 + 1;
  if (*(v15 + 1) == 0)
  {
    __break(0xC471u);
    JUMPOUT(0x19DD838A0);
  }

  if (v15[1] == -1)
  {
    __break(0xC471u);
LABEL_151:
    __break(1u);
    goto LABEL_152;
  }

  v26 = *(a1 + 64);
  if (v26 || (WTF::HashTable<WebKit::NetworkCache::GlobalFrameID,WTF::KeyValuePair<WebKit::NetworkCache::GlobalFrameID,WTF::WeakHashSet<WebKit::NetworkCache::AsyncRevalidation,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebKit::NetworkCache::GlobalFrameID,WTF::WeakHashSet<WebKit::NetworkCache::AsyncRevalidation,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>>>,WTF::DefaultHash<WebKit::NetworkCache::GlobalFrameID>,WTF::HashMap<WebKit::NetworkCache::GlobalFrameID,WTF::WeakHashSet<WebKit::NetworkCache::AsyncRevalidation,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>,WTF::DefaultHash<WebKit::NetworkCache::GlobalFrameID>,WTF::HashTraits<WebKit::NetworkCache::GlobalFrameID>,WTF::HashTraits<WTF::WeakHashSet<WebKit::NetworkCache::AsyncRevalidation,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebKit::NetworkCache::GlobalFrameID>,WTF::FastMalloc>::expand((a1 + 64), 0), (v26 = *(a1 + 64)) != 0))
  {
    v27 = *(v26 - 8);
  }

  else
  {
    v27 = 0;
  }

  LODWORD(v120) = -1640531527;
  WORD2(v120) = 0;
  BYTE6(v120) = 0;
  WTF::add<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::PortIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(&v120, v25, v24);
  v29 = WTF::SuperFastHash::hash(&v120) & v27;
  v30 = v26 + 40 * v29;
  v31 = *(v30 + 8);
  v32 = *(v30 + 16);
  if (*(v30 + 8) != 0)
  {
    v33 = 0;
    v34 = 1;
    do
    {
      if (v31 == *v25 && v32 == *v24)
      {
        v37 = a2;
        goto LABEL_39;
      }

      if (v31 == -1)
      {
        v33 = v30;
      }

      v29 = (v29 + v34) & v27;
      v30 = v26 + 40 * v29;
      v31 = *(v30 + 8);
      v32 = *(v30 + 16);
      ++v34;
    }

    while (*(v30 + 8) != 0);
    if (v33)
    {
      *(v33 + 32) = 0;
      *v33 = 0u;
      *(v33 + 16) = 0u;
      --*(*(a1 + 64) - 16);
      v30 = v33;
    }
  }

  v35 = v15[2];
  *v30 = *v15;
  v36 = *(v30 + 24);
  *(v30 + 16) = v35;
  *(v30 + 24) = 0;
  v37 = a2;
  if (v36)
  {
    WTF::HashTable<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::FastMalloc>::deallocateTable(v36, v28);
  }

  *(v30 + 32) = 0;
  v38 = *(a1 + 64);
  if (v38)
  {
    v39 = *(v38 - 12) + 1;
  }

  else
  {
    v39 = 1;
  }

  *(v38 - 12) = v39;
  v40 = (*(v38 - 16) + v39);
  v41 = *(v38 - 4);
  if (v41 > 0x400)
  {
    if (v41 <= 2 * v40)
    {
LABEL_36:
      v30 = WTF::HashTable<WebKit::NetworkCache::GlobalFrameID,WTF::KeyValuePair<WebKit::NetworkCache::GlobalFrameID,WTF::WeakHashSet<WebKit::NetworkCache::AsyncRevalidation,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebKit::NetworkCache::GlobalFrameID,WTF::WeakHashSet<WebKit::NetworkCache::AsyncRevalidation,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>>>,WTF::DefaultHash<WebKit::NetworkCache::GlobalFrameID>,WTF::HashMap<WebKit::NetworkCache::GlobalFrameID,WTF::WeakHashSet<WebKit::NetworkCache::AsyncRevalidation,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>,WTF::DefaultHash<WebKit::NetworkCache::GlobalFrameID>,WTF::HashTraits<WebKit::NetworkCache::GlobalFrameID>,WTF::HashTraits<WTF::WeakHashSet<WebKit::NetworkCache::AsyncRevalidation,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebKit::NetworkCache::GlobalFrameID>,WTF::FastMalloc>::expand((a1 + 64), v30);
    }
  }

  else if (3 * v41 <= 4 * v40)
  {
    goto LABEL_36;
  }

LABEL_39:
  WTF::WeakPtrFactory<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(a1, a1);
  v42 = *a1;
  atomic_fetch_add(*a1, 1u);
  v115 = v42;
  WebKit::NetworkCache::Key::Key(&v116, a3);
  v43 = WTF::fastMalloc(0x58);
  *v43 = &unk_1F1108610;
  v44 = v115;
  v115 = 0;
  v43[1] = v44;
  WebKit::NetworkCache::Key::Key((v43 + 2), &v116);
  if (WebKit::NetworkCache::AsyncRevalidation::s_heapRef)
  {
    NonCompact = bmalloc::api::tzoneAllocateNonCompact(WebKit::NetworkCache::AsyncRevalidation::s_heapRef, v45);
  }

  else
  {
    NonCompact = WebKit::NetworkCache::AsyncRevalidation::operatorNewSlow(0);
  }

  v47 = NonCompact;
  *NonCompact = 0;
  *(NonCompact + 8) = 1;
  *(NonCompact + 16) = 0;
  WebCore::TimerBase::TimerBase((NonCompact + 24));
  *(v47 + 3) = &unk_1F10EB388;
  v48 = WTF::fastMalloc(0x20);
  *v48 = &unk_1F11085C0;
  v48[1] = v47;
  v48[2] = WebKit::NetworkCache::AsyncRevalidation::staleWhileRevalidateEnding;
  v48[3] = 0;
  *(v47 + 9) = v48;
  *(v47 + 10) = v43;
  WebKit::NetworkCache::Key::Key(&v139, *a4);
  WebCore::ResourceRequest::ResourceRequest(v113, v37);
  if (v139 && *(v139 + 1))
  {
    WebCore::ResourceRequestBase::setCachePartition(v113, &v139);
  }

  WebCore::ResourceRequestBase::makeUnconditional(v113);
  WebCore::ResourceResponseBase::httpHeaderField();
  if (v120 && *(v120 + 1))
  {
    WebCore::ResourceRequestBase::setHTTPHeaderField();
  }

  WebCore::ResourceResponseBase::httpHeaderField();
  if (v114 && *(v114 + 1))
  {
    WebCore::ResourceRequestBase::setHTTPHeaderField();
  }

  WebCore::ResourceRequestBase::setPriority();
  v50 = v114;
  v114 = 0;
  if (v50 && atomic_fetch_add_explicit(v50, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v50, v49);
  }

  v51 = v120;
  v120 = 0;
  if (v51 && atomic_fetch_add_explicit(v51, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v51, v49);
  }

  WebCore::computeCurrentAge();
  WebCore::computeFreshnessLifetimeForHTTPFamily();
  WebCore::ResourceResponseBase::cacheControlStaleWhileRevalidate((*a4 + 80));
  if ((v52 & 1) == 0)
  {
    goto LABEL_151;
  }

  WebCore::TimerBase::start();
  v53 = *a4;
  *a4 = 0;
  v112 = v53;
  v120 = v47;
  WebKit::NetworkCache::Key::Key(&v121, &v139);
  WebCore::ResourceRequest::ResourceRequest(v126, v113);
  v54 = WTF::fastMalloc(0x120);
  *v54 = &unk_1F11085E8;
  *(v54 + 8) = v120;
  *(v54 + 16) = v121;
  v55 = *(&v121 + 1);
  v121 = 0u;
  *(v54 + 24) = v55;
  *(v54 + 32) = v122;
  v56 = *(&v122 + 1);
  v122 = 0u;
  *(v54 + 40) = v56;
  v57 = v123;
  v58 = v124;
  *(v54 + 80) = v125;
  *(v54 + 48) = v57;
  *(v54 + 64) = v58;
  WTF::URL::URL(v54 + 88, v126);
  WTF::URL::URL(v54 + 128, v127);
  *&v59 = 0;
  *(v54 + 168) = v127[5];
  *(v54 + 176) = v128;
  v60 = v129;
  v129 = 0;
  v128 = 0u;
  *(v54 + 192) = v60;
  v61 = v130;
  v130 = v59;
  *(v54 + 200) = v61;
  v62 = v131;
  v131 = v59;
  *(v54 + 216) = v62;
  v63 = v132;
  *(v54 + 236) = v133;
  *(v54 + 232) = v63;
  *(v54 + 240) = v134;
  v64 = *(&v134 + 1);
  v134 = 0u;
  *(v54 + 248) = v64;
  *(v54 + 256) = v135;
  v65 = v136;
  *(v54 + 272) = v137;
  *(v54 + 264) = v65;
  v66 = v138;
  v135 = 0;
  v138 = 0;
  *(v54 + 280) = v66;
  v111 = v54;
  WebKit::NetworkCache::SpeculativeLoad::create(a1, v15, v113, &v112, a6, v108, a8, &v111, &v114);
  if (*(v47 + 2))
  {
LABEL_152:
    __break(0xC471u);
LABEL_153:
    JUMPOUT(0x19DD83860);
  }

  *(v47 + 2) = v114;
  if (v111)
  {
    (*(*v111 + 8))(v111);
  }

  WebCore::ResourceRequest::~ResourceRequest(v126);
  v68 = *(&v122 + 1);
  *(&v122 + 1) = 0;
  if (v68 && atomic_fetch_add_explicit(v68, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v68, v67);
  }

  v69 = v122;
  *&v122 = 0;
  if (v69 && atomic_fetch_add_explicit(v69, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v69, v67);
  }

  v70 = *(&v121 + 1);
  *(&v121 + 1) = 0;
  if (v70 && atomic_fetch_add_explicit(v70, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v70, v67);
  }

  v71 = v121;
  *&v121 = 0;
  if (v71 && atomic_fetch_add_explicit(v71, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v71, v67);
  }

  if (v112)
  {
    WebKit::NetworkCache::Entry::~Entry(v112, v67);
    bmalloc::api::tzoneFree(v91, v92);
  }

  WebCore::ResourceRequest::~ResourceRequest(v113);
  v73 = v142;
  v142 = 0;
  if (v73 && atomic_fetch_add_explicit(v73, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v73, v72);
  }

  v74 = v141;
  v141 = 0;
  if (v74 && atomic_fetch_add_explicit(v74, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v74, v72);
  }

  v75 = v140;
  v140 = 0;
  if (v75 && atomic_fetch_add_explicit(v75, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v75, v72);
  }

  v76 = v139;
  v139 = 0;
  if (v76 && atomic_fetch_add_explicit(v76, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v76, v72);
  }

  v77 = v119;
  v119 = 0;
  if (v77 && atomic_fetch_add_explicit(v77, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v77, v72);
  }

  v78 = v118;
  v118 = 0;
  if (v78 && atomic_fetch_add_explicit(v78, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v78, v72);
  }

  v79 = v117;
  v117 = 0;
  if (v79 && atomic_fetch_add_explicit(v79, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v79, v72);
  }

  v80 = v116;
  v116 = 0;
  if (v80 && atomic_fetch_add_explicit(v80, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v80, v72);
  }

  v81 = v115;
  v115 = 0;
  if (v81 && atomic_fetch_add(v81, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v81);
    WTF::fastFree(v81, v72);
  }

  v82 = *(v30 + 36);
  v83 = *(v30 + 32) + 1;
  *(v30 + 32) = v83;
  if (v83 > v82)
  {
    v84 = *(v30 + 24);
    if (!v84)
    {
      goto LABEL_117;
    }

    v85 = *(v84 - 4);
    if (!v85)
    {
      goto LABEL_118;
    }

    v86 = 0;
    v87 = 8 * v85;
    v88 = v84 - 8;
    do
    {
      v89 = *(v88 + v87);
      if ((v89 + 1) >= 2 && !*(v89 + 8))
      {
        *(v88 + v87) = 0;
        if (atomic_fetch_add(v89, 0xFFFFFFFF) == 1)
        {
          atomic_store(1u, v89);
          WTF::fastFree(v89, v72);
        }

        *(v88 + v87) = -1;
        ++v86;
      }

      v87 -= 8;
    }

    while (v87);
    v84 = *(v30 + 24);
    if (v86)
    {
      v90 = *(v84 - 12) - v86;
      *(v84 - 16) += v86;
      *(v84 - 12) = v90;
      goto LABEL_118;
    }

    if (!v84)
    {
LABEL_117:
      LODWORD(v84) = 0;
      *(v30 + 32) = 0;
      goto LABEL_125;
    }

LABEL_118:
    v93 = *(v84 - 4);
    if (6 * *(v84 - 12) >= v93 || v93 <= 8)
    {
      *(v30 + 32) = 0;
      goto LABEL_124;
    }

    WTF::HashTable<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::FastMalloc>::shrinkToBestSize((v30 + 24));
    v84 = *(v30 + 24);
    *(v30 + 32) = 0;
    if (v84)
    {
LABEL_124:
      LODWORD(v84) = *(v84 - 12);
      if (v84 <= 0x7FFFFFFE)
      {
        goto LABEL_125;
      }

      v95 = -2;
    }

    else
    {
LABEL_125:
      v95 = 2 * v84;
    }

    *(v30 + 36) = v95;
  }

  if (!*v47)
  {
    v97 = WTF::fastCompactMalloc(0x10);
    *v97 = 1;
    *(v97 + 8) = v47;
    v98 = *v47;
    *v47 = v97;
    if (v98)
    {
      if (atomic_fetch_add(v98, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v98);
        WTF::fastFree(v98, v96);
      }
    }
  }

  v99 = *v47;
  atomic_fetch_add(*v47, 1u);
  v113[0] = v99;
  WTF::HashTable<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::FastMalloc>::add<(WTF::ShouldValidateKey)1>((v30 + 24), v113, &v120);
  result = v113[0];
  v113[0] = 0;
  if (result && atomic_fetch_add(result, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, result);
    result = WTF::fastFree(result, v100);
  }

  v101 = *(v21 + 72);
  *(v21 + 72) = v47;
  if (v101)
  {
    result = WTF::RefCounted<WebKit::NetworkCache::AsyncRevalidation>::deref(v101 + 8);
  }

  v102 = *(a1 + 56);
  if (v102)
  {
    v103 = *(v102 - 12) + 1;
  }

  else
  {
    v103 = 1;
  }

  *(v102 - 12) = v103;
  v104 = (*(v102 - 16) + v103);
  v105 = *(v102 - 4);
  if (v105 > 0x400)
  {
    if (v105 <= 2 * v104)
    {
      return WTF::HashTable<WebKit::NetworkCache::Key,WTF::KeyValuePair<WebKit::NetworkCache::Key,WTF::Ref<WebKit::NetworkCache::AsyncRevalidation,WTF::RawPtrTraits<WebKit::NetworkCache::AsyncRevalidation>,WTF::DefaultRefDerefTraits<WebKit::NetworkCache::AsyncRevalidation>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebKit::NetworkCache::Key,WTF::Ref<WebKit::NetworkCache::AsyncRevalidation,WTF::RawPtrTraits<WebKit::NetworkCache::AsyncRevalidation>,WTF::DefaultRefDerefTraits<WebKit::NetworkCache::AsyncRevalidation>>>>,WTF::DefaultHash<WebKit::NetworkCache::Key>,WTF::HashMap<WebKit::NetworkCache::Key,WTF::Ref<WebKit::NetworkCache::AsyncRevalidation,WTF::RawPtrTraits<WebKit::NetworkCache::AsyncRevalidation>,WTF::DefaultRefDerefTraits<WebKit::NetworkCache::AsyncRevalidation>>,WTF::DefaultHash<WebKit::NetworkCache::Key>,WTF::HashTraits<WebKit::NetworkCache::Key>,WTF::HashTraits<WTF::Ref<WebKit::NetworkCache::AsyncRevalidation,WTF::RawPtrTraits<WebKit::NetworkCache::AsyncRevalidation>,WTF::DefaultRefDerefTraits<WebKit::NetworkCache::AsyncRevalidation>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebKit::NetworkCache::Key>,WTF::FastMalloc>::expand((a1 + 56));
    }
  }

  else if (3 * v105 <= 4 * v104)
  {
    return WTF::HashTable<WebKit::NetworkCache::Key,WTF::KeyValuePair<WebKit::NetworkCache::Key,WTF::Ref<WebKit::NetworkCache::AsyncRevalidation,WTF::RawPtrTraits<WebKit::NetworkCache::AsyncRevalidation>,WTF::DefaultRefDerefTraits<WebKit::NetworkCache::AsyncRevalidation>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebKit::NetworkCache::Key,WTF::Ref<WebKit::NetworkCache::AsyncRevalidation,WTF::RawPtrTraits<WebKit::NetworkCache::AsyncRevalidation>,WTF::DefaultRefDerefTraits<WebKit::NetworkCache::AsyncRevalidation>>>>,WTF::DefaultHash<WebKit::NetworkCache::Key>,WTF::HashMap<WebKit::NetworkCache::Key,WTF::Ref<WebKit::NetworkCache::AsyncRevalidation,WTF::RawPtrTraits<WebKit::NetworkCache::AsyncRevalidation>,WTF::DefaultRefDerefTraits<WebKit::NetworkCache::AsyncRevalidation>>,WTF::DefaultHash<WebKit::NetworkCache::Key>,WTF::HashTraits<WebKit::NetworkCache::Key>,WTF::HashTraits<WTF::Ref<WebKit::NetworkCache::AsyncRevalidation,WTF::RawPtrTraits<WebKit::NetworkCache::AsyncRevalidation>,WTF::DefaultRefDerefTraits<WebKit::NetworkCache::AsyncRevalidation>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebKit::NetworkCache::Key>,WTF::FastMalloc>::expand((a1 + 56));
  }

  return result;
}