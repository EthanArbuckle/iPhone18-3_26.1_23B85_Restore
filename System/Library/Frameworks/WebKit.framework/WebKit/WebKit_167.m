void *WTF::Detail::CallableWrapper<WebKit::WebsiteDataStore::removeData(WTF::OptionSet<WebKit::WebsiteDataType>,WTF::WallTime,WTF::Function<void ()(void)> &&)::$_7,void>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F1121760;
  a1[1] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCounted<WTF::CallbackAggregatorOnThread<(WTF::DestructionThread)2>,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebsiteDataStore::removeData(WTF::OptionSet<WebKit::WebsiteDataType>,WTF::WallTime,WTF::Function<void ()(void)> &&)::$_7,void>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F1121760;
  *(this + 1) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCounted<WTF::CallbackAggregatorOnThread<(WTF::DestructionThread)2>,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

void *WTF::Detail::CallableWrapper<WebKit::WebsiteDataStore::removeData(WTF::OptionSet<WebKit::WebsiteDataType>,WTF::Vector<WebKit::WebsiteDataRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&,WTF::Function<void ()(void)> &&)::$_0,void>::~CallableWrapper(void *a1)
{
  *a1 = &unk_1F1121788;
  v2 = a1[3];
  a1[3] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = a1[1];
  a1[1] = 0;
  if (v3)
  {
    CFRelease(*(v3 + 8));
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebsiteDataStore::removeData(WTF::OptionSet<WebKit::WebsiteDataType>,WTF::Vector<WebKit::WebsiteDataRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&,WTF::Function<void ()(void)> &&)::$_0,void>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F1121788;
  v3 = *(this + 3);
  *(this + 3) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 1);
  *(this + 1) = 0;
  if (v4)
  {
    CFRelease(*(v4 + 8));
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebsiteDataStore::removeData(WTF::OptionSet<WebKit::WebsiteDataType>,WTF::Vector<WebKit::WebsiteDataRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&,WTF::Function<void ()(void)> &&)::$_0,void>::call(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = qword_1ED641350;
  if (os_log_type_enabled(qword_1ED641350, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 16);
    v5 = 134217984;
    v6 = v3;
    _os_log_impl(&dword_19D52D000, v2, OS_LOG_TYPE_DEFAULT, "WebsiteDataStore::removeData finished deleting data for session %llu", &v5, 0xCu);
  }

  return (*(**(a1 + 24) + 16))(*(a1 + 24));
}

void *WTF::Detail::CallableWrapper<WebKit::WebsiteDataStore::removeData(WTF::OptionSet<WebKit::WebsiteDataType>,WTF::Vector<WebKit::WebsiteDataRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&,WTF::Function<void ()(void)> &&)::$_1,void>::~CallableWrapper(void *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F11217B0;
  v3 = a1[3];
  a1[3] = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCounted<WTF::CallbackAggregatorOnThread<(WTF::DestructionThread)2>,(WTF::DestructionThread)2>::deref(v3);
  }

  v4 = a1[2];
  a1[2] = 0;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, a2);
  }

  v5 = a1[1];
  if (v5)
  {
    WTF::HashTable<WebCore::SecurityOriginData,WebCore::SecurityOriginData,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::FastMalloc>::deallocateTable(v5, a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebsiteDataStore::removeData(WTF::OptionSet<WebKit::WebsiteDataType>,WTF::Vector<WebKit::WebsiteDataRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&,WTF::Function<void ()(void)> &&)::$_1,void>::~CallableWrapper(WTF *this, WTF::StringImpl *a2)
{
  *this = &unk_1F11217B0;
  v3 = *(this + 3);
  *(this + 3) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCounted<WTF::CallbackAggregatorOnThread<(WTF::DestructionThread)2>,(WTF::DestructionThread)2>::deref(v3);
  }

  v4 = *(this + 2);
  *(this + 2) = 0;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, a2);
  }

  v5 = *(this + 1);
  if (v5)
  {
    WTF::HashTable<WebCore::SecurityOriginData,WebCore::SecurityOriginData,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::FastMalloc>::deallocateTable(v5, a2);
  }

  return WTF::fastFree(this, a2);
}

void *WTF::Detail::CallableWrapper<WebKit::WebsiteDataStore::removeData(WTF::OptionSet<WebKit::WebsiteDataType>,WTF::Vector<WebKit::WebsiteDataRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&,WTF::Function<void ()(void)> &&)::$_2,void>::~CallableWrapper(void *a1)
{
  *a1 = &unk_1F11217D8;
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
    WTF::ThreadSafeRefCounted<WTF::CallbackAggregatorOnThread<(WTF::DestructionThread)2>,(WTF::DestructionThread)2>::deref(v3);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebsiteDataStore::removeData(WTF::OptionSet<WebKit::WebsiteDataType>,WTF::Vector<WebKit::WebsiteDataRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&,WTF::Function<void ()(void)> &&)::$_2,void>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F11217D8;
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
    WTF::ThreadSafeRefCounted<WTF::CallbackAggregatorOnThread<(WTF::DestructionThread)2>,(WTF::DestructionThread)2>::deref(v4);
  }

  return WTF::fastFree(this, a2);
}

void *WTF::Detail::CallableWrapper<WebKit::WebsiteDataStore::removeData(WTF::OptionSet<WebKit::WebsiteDataType>,WTF::Vector<WebKit::WebsiteDataRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&,WTF::Function<void ()(void)> &&)::$_3,void>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F1121800;
  a1[1] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCounted<WTF::CallbackAggregatorOnThread<(WTF::DestructionThread)2>,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebsiteDataStore::removeData(WTF::OptionSet<WebKit::WebsiteDataType>,WTF::Vector<WebKit::WebsiteDataRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&,WTF::Function<void ()(void)> &&)::$_3,void>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F1121800;
  *(this + 1) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCounted<WTF::CallbackAggregatorOnThread<(WTF::DestructionThread)2>,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

void *WTF::Detail::CallableWrapper<WebKit::WebsiteDataStore::removeData(WTF::OptionSet<WebKit::WebsiteDataType>,WTF::Vector<WebKit::WebsiteDataRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&,WTF::Function<void ()(void)> &&)::$_4,void>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F1121828;
  a1[1] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCounted<WTF::CallbackAggregatorOnThread<(WTF::DestructionThread)2>,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebsiteDataStore::removeData(WTF::OptionSet<WebKit::WebsiteDataType>,WTF::Vector<WebKit::WebsiteDataRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&,WTF::Function<void ()(void)> &&)::$_4,void>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F1121828;
  *(this + 1) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCounted<WTF::CallbackAggregatorOnThread<(WTF::DestructionThread)2>,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

void *WTF::Detail::CallableWrapper<WebKit::WebsiteDataStore::removeData(WTF::OptionSet<WebKit::WebsiteDataType>,WTF::Vector<WebKit::WebsiteDataRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&,WTF::Function<void ()(void)> &&)::$_5,void>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F1121850;
  a1[1] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCounted<WTF::CallbackAggregatorOnThread<(WTF::DestructionThread)2>,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebsiteDataStore::removeData(WTF::OptionSet<WebKit::WebsiteDataType>,WTF::Vector<WebKit::WebsiteDataRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&,WTF::Function<void ()(void)> &&)::$_5,void>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F1121850;
  *(this + 1) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCounted<WTF::CallbackAggregatorOnThread<(WTF::DestructionThread)2>,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

void *WTF::Detail::CallableWrapper<WebKit::WebsiteDataStore::removeData(WTF::OptionSet<WebKit::WebsiteDataType>,WTF::Vector<WebKit::WebsiteDataRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&,WTF::Function<void ()(void)> &&)::$_6,void>::~CallableWrapper(void *a1, void *a2)
{
  *a1 = &unk_1F1121878;
  v3 = a1[4];
  if (v3)
  {
    WTF::HashTable<WebCore::SecurityOriginData,WebCore::SecurityOriginData,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::FastMalloc>::deallocateTable(v3, a2);
  }

  v4 = a1[3];
  a1[3] = 0;
  if (v4)
  {
    WTF::ThreadSafeRefCounted<WTF::CallbackAggregatorOnThread<(WTF::DestructionThread)2>,(WTF::DestructionThread)2>::deref(v4);
  }

  v5 = a1[1];
  a1[1] = 0;
  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebsiteDataStore::removeData(WTF::OptionSet<WebKit::WebsiteDataType>,WTF::Vector<WebKit::WebsiteDataRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&,WTF::Function<void ()(void)> &&)::$_6,void>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F1121878;
  v3 = *(this + 4);
  if (v3)
  {
    WTF::HashTable<WebCore::SecurityOriginData,WebCore::SecurityOriginData,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::FastMalloc>::deallocateTable(v3, a2);
  }

  v4 = *(this + 3);
  *(this + 3) = 0;
  if (v4)
  {
    WTF::ThreadSafeRefCounted<WTF::CallbackAggregatorOnThread<(WTF::DestructionThread)2>,(WTF::DestructionThread)2>::deref(v4);
  }

  v5 = *(this + 1);
  *(this + 1) = 0;
  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, a2);
  }

  return WTF::fastFree(this, a2);
}

WTF::StringImpl *WTF::Detail::CallableWrapper<WebKit::WebsiteDataStore::removeData(WTF::OptionSet<WebKit::WebsiteDataType>,WTF::Vector<WebKit::WebsiteDataRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&,WTF::Function<void ()(void)> &&)::$_6,void>::call(uint64_t a1)
{
  result = WTF::HashTable<WebCore::SecurityOriginData,WebCore::SecurityOriginData,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::FastMalloc>::begin((a1 + 32));
  v6 = result;
  v8 = v7;
  v9 = *(a1 + 32);
  if (v9)
  {
    v10 = (v9 + 32 * *(v9 - 4));
  }

  else
  {
    v10 = 0;
  }

  if (v10 != result)
  {
    do
    {
      WebCore::StorageUtilities::encodeSecurityOriginForFileName();
      v11 = *(a1 + 8);
      if (v11)
      {
        v12 = *(v11 + 16);
        v11 = *(v11 + 4);
        v13 = ((v12 >> 2) & 1) << 32;
      }

      else
      {
        v13 = 0x100000000;
      }

      v14 = v28;
      if (v28)
      {
        v14 = *(v28 + 1);
        v15 = ((*(v28 + 4) >> 2) & 1) << 32;
      }

      else
      {
        v15 = 0x100000000;
      }

      v3 = v11 | v3 & 0xFFFFFF0000000000 | v13;
      v2 = v14 | v2 & 0xFFFFFF0000000000 | v15;
      WTF::FileSystemImpl::pathByAppendingComponent();
      WebKit::computeMediaKeyFile(&v26, v27);
      WTF::FileSystemImpl::deleteFile(&v26, v16);
      v17 = v27;
      if (v27)
      {
        v17 = *(v27 + 1);
        v18 = ((*(v27 + 4) >> 2) & 1) << 32;
      }

      else
      {
        v18 = 0x100000000;
      }

      v1 = v17 | v1 & 0xFFFFFF0000000000 | v18;
      WTF::FileSystemImpl::pathByAppendingComponent();
      WTF::FileSystemImpl::deleteFile(&v25, v19);
      v21 = v25;
      v25 = 0;
      if (v21 && atomic_fetch_add_explicit(v21, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v21, v20);
      }

      WTF::FileSystemImpl::deleteEmptyDirectory(&v27, v20);
      v23 = v26;
      v26 = 0;
      if (v23 && atomic_fetch_add_explicit(v23, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v23, v22);
      }

      v24 = v27;
      v27 = 0;
      if (v24 && atomic_fetch_add_explicit(v24, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v24, v22);
      }

      result = v28;
      v28 = 0;
      if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        result = WTF::StringImpl::destroy(result, v22);
      }

      do
      {
        v6 = (v6 + 32);
        if (v6 == v8)
        {
          break;
        }

        result = WTF::HashTable<WebCore::SecurityOriginData,WebCore::SecurityOriginData,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::FastMalloc>::isEmptyOrDeletedBucket(v6);
      }

      while (result);
    }

    while (v6 != v10);
  }

  return result;
}

IPC::Encoder *IPC::Connection::sendSync<Messages::NetworkProcess::SetServiceWorkerFetchTimeoutForTesting>@<X0>(unsigned __int8 *a1@<X0>, double **a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, _BYTE *a5@<X8>, double a6@<D0>)
{
  IPC::Connection::createSyncMessageEncoder(0xFAD, a3, v25);
  v11 = v25[0];
  if (a4)
  {
    v12 = *(v25[0] + 2);
    if (v12)
    {
      if (!*(v25[0] + 3))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    else
    {
      v12 = v25[0] + 32;
    }

    *v12 |= 4u;
    a1[92] = 1;
  }

  IPC::ArgumentCoder<double,void>::encode<IPC::Encoder>(v11, **a2);
  v11 = IPC::Connection::sendSyncMessage(a1, v25[1], v25, a4, &v23, a6);
  if (v24)
  {
    if (v24 == 1)
    {
      *a5 = v23;
      a5[16] = 1;
      goto LABEL_14;
    }

LABEL_18:
    mpark::throw_bad_variant_access(v11);
  }

  v14 = v23;
  v23 = 0;
  if (*(v14 + 25) == 3194)
  {
    *a5 = 11;
    a5[16] = 1;
    IPC::Decoder::~Decoder(v14);
    bmalloc::api::tzoneFree(v15, v16);
    if (!v24)
    {
      v17 = v23;
      v23 = 0;
      if (v17)
      {
        IPC::Decoder::~Decoder(v17);
        bmalloc::api::tzoneFree(v18, v19);
      }
    }
  }

  else
  {
    *a5 = v14;
    a5[16] = 0;
  }

LABEL_14:
  result = v25[0];
  v25[0] = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v13);
    return bmalloc::api::tzoneFree(v21, v22);
  }

  return result;
}

IPC::Encoder *IPC::Connection::sendSync<Messages::NetworkProcess::ResetServiceWorkerFetchTimeoutForTesting>@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X2>, char a3@<W3>, _BYTE *a4@<X8>, double a5@<D0>)
{
  SyncMessageEncoder = IPC::Connection::createSyncMessageEncoder(0xFAB, a2, v23);
  if (a3)
  {
    v10 = *(v23[0] + 2);
    if (v10)
    {
      if (!*(v23[0] + 3))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    else
    {
      v10 = v23[0] + 32;
    }

    *v10 |= 4u;
    a1[92] = 1;
  }

  SyncMessageEncoder = IPC::Connection::sendSyncMessage(a1, v23[1], v23, a3, &v21, a5);
  if (v22)
  {
    if (v22 == 1)
    {
      *a4 = v21;
      a4[16] = 1;
      goto LABEL_14;
    }

LABEL_18:
    mpark::throw_bad_variant_access(SyncMessageEncoder);
  }

  v12 = v21;
  v21 = 0;
  if (*(v12 + 25) == 3194)
  {
    *a4 = 11;
    a4[16] = 1;
    IPC::Decoder::~Decoder(v12);
    bmalloc::api::tzoneFree(v13, v14);
    if (!v22)
    {
      v15 = v21;
      v21 = 0;
      if (v15)
      {
        IPC::Decoder::~Decoder(v15);
        bmalloc::api::tzoneFree(v16, v17);
      }
    }
  }

  else
  {
    *a4 = v12;
    a4[16] = 0;
  }

LABEL_14:
  result = v23[0];
  v23[0] = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v11);
    return bmalloc::api::tzoneFree(v19, v20);
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkProcess::RunningOrTerminatingServiceWorkerCountForTesting,WTF::CompletionHandler<void ()(unsigned int)>>(WTF::CompletionHandler<void ()(unsigned int)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F11218A0;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkProcess::RunningOrTerminatingServiceWorkerCountForTesting,WTF::CompletionHandler<void ()(unsigned int)>>(WTF::CompletionHandler<void ()(unsigned int)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F11218A0;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkProcess::RunningOrTerminatingServiceWorkerCountForTesting,WTF::CompletionHandler<void ()(unsigned int)>>(WTF::CompletionHandler<void ()(unsigned int)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::call(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (a3 && *a3)
  {
    v4 = IPC::Decoder::decode<std::tuple<unsigned int>>(a3);
    if ((v4 & 0x100000000) != 0)
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }
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

void *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(WTF::String const&)>,void,WTF::String>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F11218C8;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(WTF::String const&)>,void,WTF::String>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F11218C8;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(WTF::String const&)>,void,WTF::String>::call(uint64_t a1)
{
  v1 = *(a1 + 8);
  *(a1 + 8) = 0;
  (*(*v1 + 16))(v1);
  v2 = *(*v1 + 8);

  return v2(v1);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebsiteDataStore::getResourceLoadStatisticsDataSummary(WTF::CompletionHandler<void ()(WTF::Vector<WebKit::ITPThirdPartyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)> &&)::$_0::operator() const(void)::{lambda(WTF::Vector<WebKit::ITPThirdPartyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &)#1},void,WTF::Vector<WebKit::ITPThirdPartyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &>::~CallableWrapper(uint64_t a1)
{
  *a1 = &unk_1F1121918;
  WTF::Ref<WebKit::WebsiteDataStore::getResourceLoadStatisticsDataSummary(WTF::CompletionHandler<void ()(WTF::Vector<WebKit::ITPThirdPartyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)> &&)::LocalCallbackAggregator,WTF::RawPtrTraits<WTF::CompletionHandler<void ()(WTF::Vector<WebKit::ITPThirdPartyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)> &>,WTF::DefaultRefDerefTraits<WTF::CompletionHandler<void ()(WTF::Vector<WebKit::ITPThirdPartyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)> &>>::~Ref((a1 + 8));
  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebsiteDataStore::getResourceLoadStatisticsDataSummary(WTF::CompletionHandler<void ()(WTF::Vector<WebKit::ITPThirdPartyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)> &&)::$_0::operator() const(void)::{lambda(WTF::Vector<WebKit::ITPThirdPartyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &)#1},void,WTF::Vector<WebKit::ITPThirdPartyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &>::~CallableWrapper(WTF **a1)
{
  *a1 = &unk_1F1121918;
  WTF::Ref<WebKit::WebsiteDataStore::getResourceLoadStatisticsDataSummary(WTF::CompletionHandler<void ()(WTF::Vector<WebKit::ITPThirdPartyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)> &&)::LocalCallbackAggregator,WTF::RawPtrTraits<WTF::CompletionHandler<void ()(WTF::Vector<WebKit::ITPThirdPartyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)> &>,WTF::DefaultRefDerefTraits<WTF::CompletionHandler<void ()(WTF::Vector<WebKit::ITPThirdPartyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)> &>>::~Ref(a1 + 1);

  return WTF::fastFree(a1, v2);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebsiteDataStore::getResourceLoadStatisticsDataSummary(WTF::CompletionHandler<void ()(WTF::Vector<WebKit::ITPThirdPartyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)> &&)::$_0::operator() const(void)::{lambda(WTF::Vector<WebKit::ITPThirdPartyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &)#1},void,WTF::Vector<WebKit::ITPThirdPartyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &>::call(uint64_t result, uint64_t a2)
{
  v3 = *(result + 8);
  v4 = *(a2 + 12);
  v5 = *(v3 + 24);
  v6 = v4 + *(v3 + 28);
  if (v6 > v5)
  {
    v7 = v5 + (v5 >> 1);
    if (v7 <= v5 + 1)
    {
      v7 = v5 + 1;
    }

    if (v7 <= v6)
    {
      v7 = v6;
    }

    if (v7 <= 0x10)
    {
      v8 = 16;
    }

    else
    {
      v8 = v7;
    }

    result = WTF::Vector<WebKit::ITPThirdPartyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(v3 + 16, v8);
    LODWORD(v4) = *(a2 + 12);
  }

  if (v4)
  {
    v9 = *a2;
    v10 = &v9[3 * v4];
    v11 = *(v3 + 28);
    do
    {
      v12 = (*(v3 + 16) + 24 * v11);
      v13 = v9 + 1;
      v14 = *v9;
      *v9 = 0;
      v9 += 3;
      *v12 = v14;
      v12[2] = 0;
      v12[1] = 0;
      result = WTF::VectorBuffer<WebCore::HTTPHeaderField,0ul,WTF::FastMalloc>::adopt((v12 + 1), v13);
      v11 = *(v3 + 28) + 1;
      *(v3 + 28) = v11;
    }

    while (v9 != v10);
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WebKit::WebsiteDataStore::getResourceLoadStatisticsDataSummary(WTF::CompletionHandler<void ()(WTF::Vector<WebKit::ITPThirdPartyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)> &&)::$_1,void>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F1121940;
  a1[1] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCounted<WTF::CallbackAggregatorOnThread<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref(v2);
  }

  return a1;
}

void *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkProcess::GrantStorageAccessForTesting,WTF::CompletionHandler<void ()(void)>>(WTF::CompletionHandler<void ()(void)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F1121990;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkProcess::GrantStorageAccessForTesting,WTF::CompletionHandler<void ()(void)>>(WTF::CompletionHandler<void ()(void)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F1121990;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkProcess::GrantStorageAccessForTesting,WTF::CompletionHandler<void ()(void)>>(WTF::CompletionHandler<void ()(void)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::call(uint64_t a1)
{
  v1 = *(a1 + 8);
  *(a1 + 8) = 0;
  (*(*v1 + 16))(v1);
  v2 = *(*v1 + 8);

  return v2(v1);
}

void *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>,void,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F11219B8;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>,void,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F11219B8;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>,void,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>::call(uint64_t a1)
{
  v1 = *(a1 + 8);
  *(a1 + 8) = 0;
  (*(*v1 + 16))(v1);
  v2 = *(*v1 + 8);

  return v2(v1);
}

void *WTF::Detail::CallableWrapper<WebKit::WebsiteDataStore::setThirdPartyCookieBlockingMode(WebCore::ThirdPartyCookieBlockingMode,WTF::CompletionHandler<void ()(void)> &&)::$_0,void>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F11219E0;
  a1[1] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCounted<WTF::CallbackAggregatorOnThread<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebsiteDataStore::setThirdPartyCookieBlockingMode(WebCore::ThirdPartyCookieBlockingMode,WTF::CompletionHandler<void ()(void)> &&)::$_0,void>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F11219E0;
  *(this + 1) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCounted<WTF::CallbackAggregatorOnThread<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

void *WTF::Detail::CallableWrapper<WebKit::WebsiteDataStore::setThirdPartyCookieBlockingMode(WebCore::ThirdPartyCookieBlockingMode,WTF::CompletionHandler<void ()(void)> &&)::$_1,void>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F1121A08;
  a1[1] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCounted<WTF::CallbackAggregatorOnThread<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebsiteDataStore::setThirdPartyCookieBlockingMode(WebCore::ThirdPartyCookieBlockingMode,WTF::CompletionHandler<void ()(void)> &&)::$_1,void>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F1121A08;
  *(this + 1) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCounted<WTF::CallbackAggregatorOnThread<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

void *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkProcess::SyncLocalStorage,WTF::CompletionHandler<void ()(void)>>(WTF::CompletionHandler<void ()(void)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F1121A30;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkProcess::SyncLocalStorage,WTF::CompletionHandler<void ()(void)>>(WTF::CompletionHandler<void ()(void)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F1121A30;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkProcess::SyncLocalStorage,WTF::CompletionHandler<void ()(void)>>(WTF::CompletionHandler<void ()(void)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::call(uint64_t a1)
{
  v1 = *(a1 + 8);
  *(a1 + 8) = 0;
  (*(*v1 + 16))(v1);
  v2 = *(*v1 + 8);

  return v2(v1);
}

void *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkProcess::StoreServiceWorkerRegistrations,WTF::CompletionHandler<void ()(void)>>(WTF::CompletionHandler<void ()(void)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F1121A58;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkProcess::StoreServiceWorkerRegistrations,WTF::CompletionHandler<void ()(void)>>(WTF::CompletionHandler<void ()(void)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F1121A58;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkProcess::StoreServiceWorkerRegistrations,WTF::CompletionHandler<void ()(void)>>(WTF::CompletionHandler<void ()(void)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::call(uint64_t a1)
{
  v1 = *(a1 + 8);
  *(a1 + 8) = 0;
  (*(*v1 + 16))(v1);
  v2 = *(*v1 + 8);

  return v2(v1);
}

void WTF::HashTable<WTF::RefPtr<WebKit::WebProcessPool,WTF::RawPtrTraits<WebKit::WebProcessPool>,WTF::DefaultRefDerefTraits<WebKit::WebProcessPool>>,WTF::RefPtr<WebKit::WebProcessPool,WTF::RawPtrTraits<WebKit::WebProcessPool>,WTF::DefaultRefDerefTraits<WebKit::WebProcessPool>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::RefPtr<WebKit::WebProcessPool,WTF::RawPtrTraits<WebKit::WebProcessPool>,WTF::DefaultRefDerefTraits<WebKit::WebProcessPool>>>,WTF::HashTraits<WTF::RefPtr<WebKit::WebProcessPool,WTF::RawPtrTraits<WebKit::WebProcessPool>,WTF::DefaultRefDerefTraits<WebKit::WebProcessPool>>>,WTF::HashTraits<WTF::RefPtr<WebKit::WebProcessPool,WTF::RawPtrTraits<WebKit::WebProcessPool>,WTF::DefaultRefDerefTraits<WebKit::WebProcessPool>>>,WTF::FastMalloc>::add<(WTF::ShouldValidateKey)1>(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *a3;
  if (*a3 == -1 || !v3)
  {
    __break(0xC471u);
    JUMPOUT(0x19E166564);
  }

  v7 = *a2;
  if (!*a2)
  {
    WTF::HashTable<WTF::RefPtr<WebKit::WebPageProxy const,WTF::RawPtrTraits<WebKit::WebPageProxy const>,WTF::DefaultRefDerefTraits<WebKit::WebPageProxy const>>,WTF::RefPtr<WebKit::WebPageProxy const,WTF::RawPtrTraits<WebKit::WebPageProxy const>,WTF::DefaultRefDerefTraits<WebKit::WebPageProxy const>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::RefPtr<WebKit::WebPageProxy const,WTF::RawPtrTraits<WebKit::WebPageProxy const>,WTF::DefaultRefDerefTraits<WebKit::WebPageProxy const>>>,WTF::HashTraits<WTF::RefPtr<WebKit::WebPageProxy const,WTF::RawPtrTraits<WebKit::WebPageProxy const>,WTF::DefaultRefDerefTraits<WebKit::WebPageProxy const>>>,WTF::HashTraits<WTF::RefPtr<WebKit::WebPageProxy const,WTF::RawPtrTraits<WebKit::WebPageProxy const>,WTF::DefaultRefDerefTraits<WebKit::WebPageProxy const>>>,WTF::FastMalloc>::expand(a2, 0);
    v7 = *a2;
    v3 = *a3;
  }

  v8 = *(v7 - 8);
  v9 = (v3 + ~(v3 << 32)) ^ ((v3 + ~(v3 << 32)) >> 22);
  v10 = 9 * ((v9 + ~(v9 << 13)) ^ ((v9 + ~(v9 << 13)) >> 8));
  v11 = (v10 ^ (v10 >> 15)) + ~((v10 ^ (v10 >> 15)) << 27);
  v12 = v8 & ((v11 >> 31) ^ v11);
  v13 = (v7 + 8 * v12);
  v14 = *v13;
  if (*v13)
  {
    v15 = 0;
    v16 = 1;
    do
    {
      if (v14 == v3)
      {
        v20 = 0;
        v21 = v7 + 8 * *(v7 - 4);
        goto LABEL_25;
      }

      if (v14 == -1)
      {
        v15 = v13;
      }

      v12 = (v12 + v16) & v8;
      v13 = (v7 + 8 * v12);
      v14 = *v13;
      ++v16;
    }

    while (*v13);
    if (v15)
    {
      *v15 = 0;
      --*(*a2 - 16);
      v3 = *a3;
      v13 = v15;
    }
  }

  *a3 = 0;
  v17 = *v13;
  *v13 = v3;
  if (v17)
  {
    CFRelease(*(v17 + 8));
  }

  v18 = *a2;
  if (*a2)
  {
    v19 = *(v18 - 12) + 1;
  }

  else
  {
    v19 = 1;
  }

  *(v18 - 12) = v19;
  v22 = (*(v18 - 16) + v19);
  v23 = *(v18 - 4);
  if (v23 > 0x400)
  {
    if (v23 <= 2 * v22)
    {
LABEL_21:
      v13 = WTF::HashTable<WTF::RefPtr<WebKit::WebPageProxy const,WTF::RawPtrTraits<WebKit::WebPageProxy const>,WTF::DefaultRefDerefTraits<WebKit::WebPageProxy const>>,WTF::RefPtr<WebKit::WebPageProxy const,WTF::RawPtrTraits<WebKit::WebPageProxy const>,WTF::DefaultRefDerefTraits<WebKit::WebPageProxy const>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::RefPtr<WebKit::WebPageProxy const,WTF::RawPtrTraits<WebKit::WebPageProxy const>,WTF::DefaultRefDerefTraits<WebKit::WebPageProxy const>>>,WTF::HashTraits<WTF::RefPtr<WebKit::WebPageProxy const,WTF::RawPtrTraits<WebKit::WebPageProxy const>,WTF::DefaultRefDerefTraits<WebKit::WebPageProxy const>>>,WTF::HashTraits<WTF::RefPtr<WebKit::WebPageProxy const,WTF::RawPtrTraits<WebKit::WebPageProxy const>,WTF::DefaultRefDerefTraits<WebKit::WebPageProxy const>>>,WTF::FastMalloc>::expand(a2, v13);
      v18 = *a2;
      if (*a2)
      {
        v23 = *(v18 - 4);
      }

      else
      {
        v23 = 0;
      }
    }
  }

  else if (3 * v23 <= 4 * v22)
  {
    goto LABEL_21;
  }

  v21 = v18 + 8 * v23;
  v20 = 1;
LABEL_25:
  *a1 = v13;
  *(a1 + 8) = v21;
  *(a1 + 16) = v20;
}

void *WTF::Detail::CallableWrapper<WebKit::WebsiteDataStore::getNetworkProcessConnection(WebKit::WebProcessProxy &,WTF::CompletionHandler<void ()(WebKit::NetworkProcessConnectionInfo &&)> &&,WebKit::WebsiteDataStore::ShouldRetryOnFailure)::$_0,void,WebKit::NetworkProcessConnectionInfo &>::~CallableWrapper(void *a1, void *a2)
{
  *a1 = &unk_1F1121A80;
  v3 = a1[4];
  a1[4] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = a1[3];
  a1[3] = 0;
  if (v4 && atomic_fetch_add(v4, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v4);
    WTF::fastFree(v4, a2);
  }

  v5 = a1[2];
  a1[2] = 0;
  if (v5 && atomic_fetch_add(v5, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v5);
    WTF::fastFree(v5, a2);
  }

  v6 = a1[1];
  a1[1] = 0;
  if (v6 && atomic_fetch_add(v6, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v6);
    WTF::fastFree(v6, a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebsiteDataStore::getNetworkProcessConnection(WebKit::WebProcessProxy &,WTF::CompletionHandler<void ()(WebKit::NetworkProcessConnectionInfo &&)> &&,WebKit::WebsiteDataStore::ShouldRetryOnFailure)::$_0,void,WebKit::NetworkProcessConnectionInfo &>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F1121A80;
  v3 = *(this + 4);
  *(this + 4) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 3);
  *(this + 3) = 0;
  if (v4 && atomic_fetch_add(v4, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v4);
    WTF::fastFree(v4, a2);
  }

  v5 = *(this + 2);
  *(this + 2) = 0;
  if (v5 && atomic_fetch_add(v5, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v5);
    WTF::fastFree(v5, a2);
  }

  v6 = *(this + 1);
  *(this + 1) = 0;
  if (v6 && atomic_fetch_add(v6, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v6);
    WTF::fastFree(v6, a2);
  }

  return WTF::fastFree(this, a2);
}

void WTF::Detail::CallableWrapper<WebKit::WebsiteDataStore::getNetworkProcessConnection(WebKit::WebProcessProxy &,WTF::CompletionHandler<void ()(WebKit::NetworkProcessConnectionInfo &&)> &&,WebKit::WebsiteDataStore::ShouldRetryOnFailure)::$_0,void,WebKit::NetworkProcessConnectionInfo &>::call(uint64_t a1, _DWORD *a2)
{
  if ((*a2 - 1) >= 0xFFFFFFFE)
  {
    if (*(a1 + 40) == 1 && (v5 = *(a1 + 24)) != 0 && *(v5 + 8))
    {
      WTF::RunLoop::mainSingleton(a1);
      v6 = *(a1 + 8);
      *(a1 + 8) = 0u;
      v11 = *(a1 + 24);
      v12 = v6;
      *(a1 + 24) = 0u;
      v7 = WTF::fastMalloc(0x28);
      *v7 = &unk_1F1121AA8;
      *(v7 + 8) = v12;
      *(v7 + 24) = v11;
      *buf = v7;
      WTF::RunLoop::dispatch();
      v8 = *buf;
      *buf = 0;
      if (v8)
      {
        (*(*v8 + 8))(v8);
      }
    }

    else
    {
      v9 = qword_1ED6416A0;
      if (os_log_type_enabled(qword_1ED6416A0, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_19D52D000, v9, OS_LOG_TYPE_ERROR, "getNetworkProcessConnection: Failed to get connection to network process, will reply invalid identifier ...", buf, 2u);
      }

      *buf = 0;
      buf[4] = 0;
      v14 = 0;
      v15 = 0;
      v10 = *(a1 + 32);
      *(a1 + 32) = 0;
      (*(*v10 + 16))(v10, buf);
      (*(*v10 + 8))(v10);
      WTF::MachSendRight::~MachSendRight(buf);
    }
  }

  else
  {
    v3 = *(a1 + 32);
    *(a1 + 32) = 0;
    (*(*v3 + 16))(v3);
    v4 = *(*v3 + 8);

    v4(v3);
  }
}

void *WTF::Detail::CallableWrapper<WebKit::WebsiteDataStore::getNetworkProcessConnection(WebKit::WebProcessProxy &,WTF::CompletionHandler<void ()(WebKit::NetworkProcessConnectionInfo &&)> &&,WebKit::WebsiteDataStore::ShouldRetryOnFailure)::$_0::operator()(WebKit::NetworkProcessConnectionInfo &)::{lambda(void)#1},void>::~CallableWrapper(void *a1, void *a2)
{
  *a1 = &unk_1F1121AA8;
  v3 = a1[4];
  a1[4] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = a1[3];
  a1[3] = 0;
  if (v4 && atomic_fetch_add(v4, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v4);
    WTF::fastFree(v4, a2);
  }

  v5 = a1[2];
  a1[2] = 0;
  if (v5 && atomic_fetch_add(v5, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v5);
    WTF::fastFree(v5, a2);
  }

  v6 = a1[1];
  a1[1] = 0;
  if (v6 && atomic_fetch_add(v6, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v6);
    WTF::fastFree(v6, a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebsiteDataStore::getNetworkProcessConnection(WebKit::WebProcessProxy &,WTF::CompletionHandler<void ()(WebKit::NetworkProcessConnectionInfo &&)> &&,WebKit::WebsiteDataStore::ShouldRetryOnFailure)::$_0::operator()(WebKit::NetworkProcessConnectionInfo &)::{lambda(void)#1},void>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F1121AA8;
  v3 = *(this + 4);
  *(this + 4) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 3);
  *(this + 3) = 0;
  if (v4 && atomic_fetch_add(v4, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v4);
    WTF::fastFree(v4, a2);
  }

  v5 = *(this + 2);
  *(this + 2) = 0;
  if (v5 && atomic_fetch_add(v5, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v5);
    WTF::fastFree(v5, a2);
  }

  v6 = *(this + 1);
  *(this + 1) = 0;
  if (v6 && atomic_fetch_add(v6, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v6);
    WTF::fastFree(v6, a2);
  }

  return WTF::fastFree(this, a2);
}

void WTF::Detail::CallableWrapper<WebKit::WebsiteDataStore::getNetworkProcessConnection(WebKit::WebProcessProxy &,WTF::CompletionHandler<void ()(WebKit::NetworkProcessConnectionInfo &&)> &&,WebKit::WebsiteDataStore::ShouldRetryOnFailure)::$_0::operator()(WebKit::NetworkProcessConnectionInfo &)::{lambda(void)#1},void>::call(void *a1)
{
  v2 = a1[1];
  if (!v2)
  {
    v11 = a1[3];
    if (v11)
    {
      v6 = *(v11 + 8);
      v4 = 1;
      v3 = 0;
      if (v6)
      {
        v7 = 0;
        atomic_fetch_add((v6 + 16), 1u);
        goto LABEL_21;
      }
    }

    else
    {
      v3 = 0;
      v6 = 0;
      v4 = 1;
    }

    goto LABEL_20;
  }

  v3 = *(v2 + 8);
  v4 = v3 == 0;
  if (v3)
  {
    CFRetain(*(v3 + 8));
  }

  v5 = a1[3];
  if (!v5)
  {
    v6 = 0;
LABEL_20:
    v7 = 1;
    goto LABEL_21;
  }

  v6 = *(v5 + 8);
  v7 = 1;
  if (v6)
  {
    atomic_fetch_add((v6 + 16), 1u);
    if (v3)
    {
      v8 = a1[2];
      if (v8)
      {
        v9 = *(v8 + 8);
        if (v9)
        {
          if (*(v3 + 432) == v9)
          {
            WebKit::WebsiteDataStore::terminateNetworkProcess(v3);
          }
        }
      }

      v10 = qword_1ED6416A0;
      if (os_log_type_enabled(qword_1ED6416A0, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v14) = 0;
        _os_log_error_impl(&dword_19D52D000, v10, OS_LOG_TYPE_ERROR, "getNetworkProcessConnection: Failed to get connection to network process, will retry ...", &v14, 2u);
      }

      WebKit::WebsiteDataStore::getNetworkProcessConnection(v3, v6, a1 + 4, 0);
      WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v6 + 16));
LABEL_26:
      CFRelease(*(v3 + 8));
      return;
    }

    v7 = 0;
    v4 = 1;
  }

LABEL_21:
  v12 = qword_1ED6416A0;
  if (os_log_type_enabled(qword_1ED6416A0, OS_LOG_TYPE_ERROR))
  {
    LOWORD(v14) = 0;
    _os_log_error_impl(&dword_19D52D000, v12, OS_LOG_TYPE_ERROR, "getNetworkProcessConnection: Failed to get connection to network process, will reply invalid identifier ...", &v14, 2u);
  }

  v14 = 0;
  v15 = 0;
  v16 = 0;
  v17 = 0;
  v13 = a1[4];
  a1[4] = 0;
  (*(*v13 + 16))(v13, &v14);
  (*(*v13 + 8))(v13);
  WTF::MachSendRight::~MachSendRight(&v14);
  if ((v7 & 1) == 0)
  {
    WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v6 + 16));
  }

  if (!v4)
  {
    goto LABEL_26;
  }
}

IPC::Encoder *WTF::Detail::CallableWrapper<void WebKit::WebProcessPool::sendToAllProcessesForSession<Messages::WebProcess::SetTrackingPreventionEnabled>(Messages::WebProcess::SetTrackingPreventionEnabled const&,PAL::SessionID)::{lambda(Messages::WebProcess::SetTrackingPreventionEnabled&)#1},void,WebKit::WebProcessProxy &>::call(uint64_t a1, void *a2)
{
  v9 = **(a1 + 8);
  v3 = IPC::Encoder::operator new(0x238, a2);
  *v3 = 3013;
  *(v3 + 68) = 0;
  *(v3 + 70) = 0;
  *(v3 + 69) = 0;
  *(v3 + 2) = 0;
  *(v3 + 3) = 0;
  *(v3 + 1) = 0;
  IPC::Encoder::encodeHeader(v3);
  v12 = v3;
  IPC::Encoder::operator<<<BOOL &>(v3, &v9);
  LOBYTE(v10) = 0;
  v11 = 0;
  WebKit::AuxiliaryProcessProxy::sendMessage(a2, &v12, 0, &v10, 1);
  if (v11 == 1)
  {
    v5 = v10;
    v10 = 0;
    if (v5)
    {
      (*(*v5 + 8))(v5);
    }
  }

  result = v12;
  v12 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v4);
    return bmalloc::api::tzoneFree(v7, v8);
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkProcess::ClosePCMDatabase,WebKit::WebsiteDataStore::closeDatabases(WTF::CompletionHandler<void ()(void)> &&)::$_0>(WebKit::WebsiteDataStore::closeDatabases(WTF::CompletionHandler<void ()(void)> &&)::$_0 &&,WTF::ThreadLikeAssertion)::{lambda(WebKit::WebsiteDataStore::closeDatabases(WTF::CompletionHandler<void ()(void)> &&)::$_0,IPC::Decoder)#1},void,WebKit::WebsiteDataStore::closeDatabases(WTF::CompletionHandler<void ()(void)> &&)::$_0,IPC::Decoder>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F1121B20;
  a1[1] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCounted<WTF::CallbackAggregatorOnThread<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkProcess::ClosePCMDatabase,WebKit::WebsiteDataStore::closeDatabases(WTF::CompletionHandler<void ()(void)> &&)::$_0>(WebKit::WebsiteDataStore::closeDatabases(WTF::CompletionHandler<void ()(void)> &&)::$_0 &&,WTF::ThreadLikeAssertion)::{lambda(WebKit::WebsiteDataStore::closeDatabases(WTF::CompletionHandler<void ()(void)> &&)::$_0,IPC::Decoder)#1},void,WebKit::WebsiteDataStore::closeDatabases(WTF::CompletionHandler<void ()(void)> &&)::$_0,IPC::Decoder>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F1121B20;
  *(this + 1) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCounted<WTF::CallbackAggregatorOnThread<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

void *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkProcess::CloseITPDatabase,WebKit::WebsiteDataStore::closeDatabases(WTF::CompletionHandler<void ()(void)> &&)::$_1>(WebKit::WebsiteDataStore::closeDatabases(WTF::CompletionHandler<void ()(void)> &&)::$_1 &&,WTF::ThreadLikeAssertion)::{lambda(WebKit::WebsiteDataStore::closeDatabases(WTF::CompletionHandler<void ()(void)> &&)::$_1,IPC::Decoder)#1},void,WebKit::WebsiteDataStore::closeDatabases(WTF::CompletionHandler<void ()(void)> &&)::$_1,IPC::Decoder>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F1121B48;
  a1[1] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCounted<WTF::CallbackAggregatorOnThread<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkProcess::CloseITPDatabase,WebKit::WebsiteDataStore::closeDatabases(WTF::CompletionHandler<void ()(void)> &&)::$_1>(WebKit::WebsiteDataStore::closeDatabases(WTF::CompletionHandler<void ()(void)> &&)::$_1 &&,WTF::ThreadLikeAssertion)::{lambda(WebKit::WebsiteDataStore::closeDatabases(WTF::CompletionHandler<void ()(void)> &&)::$_1,IPC::Decoder)#1},void,WebKit::WebsiteDataStore::closeDatabases(WTF::CompletionHandler<void ()(void)> &&)::$_1,IPC::Decoder>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F1121B48;
  *(this + 1) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCounted<WTF::CallbackAggregatorOnThread<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *WTF::Detail::CallableWrapper<void WebKit::WebProcessPool::sendToAllProcessesForSession<Messages::WebProcess::ClearResourceLoadStatistics>(Messages::WebProcess::ClearResourceLoadStatistics const&,PAL::SessionID)::{lambda(Messages::WebProcess::ClearResourceLoadStatistics&)#1},void,WebKit::WebProcessProxy &>::call(uint64_t a1, void *a2)
{
  v3 = IPC::Encoder::operator new(0x238, a2);
  *v3 = 2934;
  *(v3 + 68) = 0;
  *(v3 + 70) = 0;
  *(v3 + 69) = 0;
  *(v3 + 2) = 0;
  *(v3 + 3) = 0;
  *(v3 + 1) = 0;
  IPC::Encoder::encodeHeader(v3);
  v11 = v3;
  LOBYTE(v9) = 0;
  v10 = 0;
  WebKit::AuxiliaryProcessProxy::sendMessage(a2, &v11, 0, &v9, 1);
  if (v10 == 1)
  {
    v5 = v9;
    v9 = 0;
    if (v5)
    {
      (*(*v5 + 8))(v5);
    }
  }

  result = v11;
  v11 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v4);
    return bmalloc::api::tzoneFree(v7, v8);
  }

  return result;
}

uint64_t *WTF::HashMap<WebCore::RegistrableDomain,WTF::String,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::HashMap(uint64_t *a1, WTF **a2, uint64_t a3)
{
  *a1 = 0;
  v6 = WTF::HashTable<Inspector::Protocol::Automation::VirtualKey,WTF::KeyValuePair<Inspector::Protocol::Automation::VirtualKey,Inspector::Protocol::Automation::VirtualKey>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<Inspector::Protocol::Automation::VirtualKey,Inspector::Protocol::Automation::VirtualKey>>,WTF::IntHash<Inspector::Protocol::Automation::VirtualKey>,WTF::HashMap<Inspector::Protocol::Automation::VirtualKey,Inspector::Protocol::Automation::VirtualKey,WTF::IntHash<Inspector::Protocol::Automation::VirtualKey>,WTF::StrongEnumHashTraits<Inspector::Protocol::Automation::VirtualKey>,WTF::HashTraits<Inspector::Protocol::Automation::VirtualKey>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::StrongEnumHashTraits<Inspector::Protocol::Automation::VirtualKey>,WTF::FastMalloc>::computeBestTableSize(a3);
  v7 = WTF::fastZeroedMalloc((16 * v6 + 16));
  *a1 = v7 + 16;
  *(v7 + 8) = v6 - 1;
  *(v7 + 12) = v6;
  *v7 = 0;
  if (a3)
  {
    v8 = &a2[2 * a3];
    do
    {
      WTF::HashMap<WebCore::RegistrableDomain,WTF::String,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<WTF::String const&>(a1, a2, (a2 + 1), v10);
      a2 += 2;
    }

    while (a2 != v8);
  }

  return a1;
}

WTF::StringImpl **WTF::HashMap<WebCore::RegistrableDomain,WTF::String,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<WTF::String const&>@<X0>(uint64_t *a1@<X0>, WTF **a2@<X1>, const WTF::StringImpl *a3@<X2>, uint64_t a4@<X8>)
{
  if (WTF::equal(*a2, 0, a3))
  {
    __break(0xC471u);
    JUMPOUT(0x19E167368);
  }

  if (*a2 == -1)
  {
    __break(0xC471u);
    JUMPOUT(0x19E167388);
  }

  v9 = *a1;
  if (*a1 || (WTF::HashTable<WebCore::RegistrableDomain,WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::String>>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashMap<WebCore::RegistrableDomain,WTF::String,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::expand(a1, 0), (v9 = *a1) != 0))
  {
    v10 = *(v9 - 8);
  }

  else
  {
    v10 = 0;
  }

  v11 = WTF::ASCIICaseInsensitiveHash::hash(*a2, v8) & v10;
  v12 = (v9 + 16 * v11);
  if ((WTF::equal(*v12, 0, v13) & 1) == 0)
  {
    v15 = 0;
    v16 = 1;
    do
    {
      if (*v12 == -1)
      {
        v15 = v12;
      }

      else
      {
        result = WTF::equalIgnoringASCIICase(*v12, *a2, v14);
        if (result)
        {
          v26 = *a1;
          if (*a1)
          {
            v27 = *(v26 - 4);
          }

          else
          {
            v27 = 0;
          }

          v25 = 0;
          v24 = v26 + 16 * v27;
          goto LABEL_28;
        }
      }

      v11 = (v11 + v16) & v10;
      v12 = (v9 + 16 * v11);
      ++v16;
    }

    while (!WTF::equal(*v12, 0, v14));
    if (v15)
    {
      *v15 = 0;
      v15[1] = 0;
      --*(*a1 - 16);
      v12 = v15;
    }
  }

  WTF::GenericHashTraits<WebCore::RegistrableDomain>::assignToEmpty<WebCore::RegistrableDomain,WebCore::RegistrableDomain const&>(v12, a2);
  v19 = *a3;
  if (*a3)
  {
    atomic_fetch_add_explicit(v19, 2u, memory_order_relaxed);
  }

  result = v12[1];
  v12[1] = v19;
  if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    result = WTF::StringImpl::destroy(result, v18);
  }

  v20 = *a1;
  if (*a1)
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
    if (v23 <= 2 * v22)
    {
LABEL_25:
      result = WTF::HashTable<WebCore::RegistrableDomain,WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::String>>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashMap<WebCore::RegistrableDomain,WTF::String,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::expand(a1, v12);
      v12 = result;
      v20 = *a1;
      if (*a1)
      {
        v23 = *(v20 - 4);
      }

      else
      {
        v23 = 0;
      }
    }
  }

  else if (3 * v23 <= 4 * v22)
  {
    goto LABEL_25;
  }

  v24 = v20 + 16 * v23;
  v25 = 1;
LABEL_28:
  *a4 = v12;
  *(a4 + 8) = v24;
  *(a4 + 16) = v25;
  return result;
}

void *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkProcess::CountNonDefaultSessionSets,WTF::CompletionHandler<void ()(unsigned long long)>>(WTF::CompletionHandler<void ()(unsigned long long)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F1121C10;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkProcess::CountNonDefaultSessionSets,WTF::CompletionHandler<void ()(unsigned long long)>>(WTF::CompletionHandler<void ()(unsigned long long)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F1121C10;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkProcess::CountNonDefaultSessionSets,WTF::CompletionHandler<void ()(unsigned long long)>>(WTF::CompletionHandler<void ()(unsigned long long)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::call(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (a3 && *a3)
  {
    v4 = IPC::Decoder::decode<std::tuple<unsigned long long>>(a3);
    if (v5)
    {
      v6 = v4;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = *(a1 + 8);
  *(a1 + 8) = 0;
  (*(*v7 + 16))(v7, v6);
  v8 = *(*v7 + 8);

  return v8(v7);
}

void *WTF::Detail::CallableWrapper<WebKit::WebsiteDataStore::openWindowFromServiceWorker(WTF::String const&,WebCore::SecurityOriginData const&,WTF::CompletionHandler<void ()(std::optional<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>)> &&)::$_0,void,WebKit::WebPageProxy *>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F1121C38;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebsiteDataStore::openWindowFromServiceWorker(WTF::String const&,WebCore::SecurityOriginData const&,WTF::CompletionHandler<void ()(std::optional<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>)> &&)::$_0,void,WebKit::WebPageProxy *>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F1121C38;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

void WTF::Detail::CallableWrapper<WebKit::WebsiteDataStore::openWindowFromServiceWorker(WTF::String const&,WebCore::SecurityOriginData const&,WTF::CompletionHandler<void ()(std::optional<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>)> &&)::$_0,void,WebKit::WebPageProxy *>::call(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    v10 = *(a1 + 8);
    *(a1 + 8) = 0;
    (*(*v10 + 16))(v10);
LABEL_11:
    v11 = *(*v10 + 8);

    v11(v10);
    return;
  }

  v4 = *(a2 + 32);
  WebKit::PageLoadState::ref((v4 + 1120));
  if (*(v4 + 1160) || *(v4 + 1144) < 2u)
  {
    WebKit::PageLoadState::deref((v4 + 1120));
    v5 = *(a2 + 424);
    if (v5)
    {
      CFRetain(*(v5 + 8));
      v6 = *(a1 + 8);
      *(a1 + 8) = 0;
      v7 = WTF::fastMalloc(0x10);
      *v7 = &unk_1F1121C60;
      v7[1] = v6;
      v8 = *(v5 + 496);
      *(v5 + 496) = v7;
      if (v8)
      {
        (*(*v8 + 8))(v8);
      }

      v9 = *(v5 + 8);

      CFRelease(v9);
      return;
    }

    v10 = *(a1 + 8);
    *(a1 + 8) = 0;
    (*(*v10 + 16))(v10);
    goto LABEL_11;
  }

  WebKit::PageLoadState::deref((v4 + 1120));
  v12 = qword_1ED640D10;
  if (os_log_type_enabled(qword_1ED640D10, OS_LOG_TYPE_DEFAULT))
  {
    *v14 = 0;
    _os_log_impl(&dword_19D52D000, v12, OS_LOG_TYPE_DEFAULT, "The WKWebView provided in response to a ServiceWorker openWindow request was not in the loading state", v14, 2u);
  }

  v13 = *(a1 + 8);
  *(a1 + 8) = 0;
  (*(*v13 + 16))(v13, 0, 0);
  (*(*v13 + 8))(v13);
}

void *_ZN3WTF6Detail15CallableWrapperIZZN6WebKit16WebsiteDataStore27openWindowFromServiceWorkerERKNS_6StringERKN7WebCore18SecurityOriginDataEONS_17CompletionHandlerIFvNSt3__18optionalINS_23ObjectIdentifierGenericINS7_18PageIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEEEEEEEN3__0clEPNS2_12WebPageProxyEEUlT_T0_E_vJSJ_NSD_INSE_INS7_19FrameIdentifierTypeESH_yEEEEEED1Ev(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F1121C60;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZZN6WebKit16WebsiteDataStore27openWindowFromServiceWorkerERKNS_6StringERKN7WebCore18SecurityOriginDataEONS_17CompletionHandlerIFvNSt3__18optionalINS_23ObjectIdentifierGenericINS7_18PageIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEEEEEEEN3__0clEPNS2_12WebPageProxyEEUlT_T0_E_vJSJ_NSD_INSE_INS7_19FrameIdentifierTypeESH_yEEEEEED0Ev(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F1121C60;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZZN6WebKit16WebsiteDataStore27openWindowFromServiceWorkerERKNS_6StringERKN7WebCore18SecurityOriginDataEONS_17CompletionHandlerIFvNSt3__18optionalINS_23ObjectIdentifierGenericINS7_18PageIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEEEEEEEN3__0clEPNS2_12WebPageProxyEEUlT_T0_E_vJSJ_NSD_INSE_INS7_19FrameIdentifierTypeESH_yEEEEEE4callESJ_SV_(uint64_t a1)
{
  v1 = *(a1 + 8);
  *(a1 + 8) = 0;
  (*(*v1 + 16))(v1);
  v2 = *(*v1 + 8);

  return v2(v1);
}

uint64_t IPC::VectorArgumentCoder<false,std::pair<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,std::optional<WTF::UUID>>,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<std::pair<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,std::optional<WTF::UUID>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(IPC::Encoder *a1, uint64_t *a2)
{
  result = IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *(a2 + 3));
  v5 = *(a2 + 3);
  if (v5)
  {
    v6 = *a2;
    v7 = v6 + 48 * v5;
    do
    {
      IPC::ArgumentCoder<std::span<unsigned char const,18446744073709551615ul>,void>::encode<IPC::Encoder>(a1, *v6, *(v6 + 12));
      result = IPC::ArgumentCoder<std::optional<WTF::UUID>,void>::encode<IPC::Encoder,std::optional<WTF::UUID> const&>(a1, v6 + 16);
      v6 += 48;
    }

    while (v6 != v7);
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkProcess::SetOriginQuotaRatioEnabledForTesting,WTF::CompletionHandler<void ()(void)>>(WTF::CompletionHandler<void ()(void)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F1121C88;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkProcess::SetOriginQuotaRatioEnabledForTesting,WTF::CompletionHandler<void ()(void)>>(WTF::CompletionHandler<void ()(void)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F1121C88;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkProcess::SetOriginQuotaRatioEnabledForTesting,WTF::CompletionHandler<void ()(void)>>(WTF::CompletionHandler<void ()(void)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::call(uint64_t a1)
{
  v1 = *(a1 + 8);
  *(a1 + 8) = 0;
  (*(*v1 + 16))(v1);
  v2 = *(*v1 + 8);

  return v2(v1);
}

void *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkProcess::GetAppBadgeForTesting,WTF::CompletionHandler<void ()(std::optional<unsigned long long>)>>(WTF::CompletionHandler<void ()(std::optional<unsigned long long>)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F1121CB0;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkProcess::GetAppBadgeForTesting,WTF::CompletionHandler<void ()(std::optional<unsigned long long>)>>(WTF::CompletionHandler<void ()(std::optional<unsigned long long>)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F1121CB0;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkProcess::GetAppBadgeForTesting,WTF::CompletionHandler<void ()(std::optional<unsigned long long>)>>(WTF::CompletionHandler<void ()(std::optional<unsigned long long>)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::call(uint64_t a1, uint64_t a2, IPC::Decoder *a3)
{
  if (a3 && *a3)
  {
    IPC::Decoder::decode<std::tuple<std::optional<unsigned long long>>>(a3, v10);
    if (v11 == 1)
    {
      v4 = v10[0];
      v5 = v10[1];
      v6 = *(a1 + 8);
      *(a1 + 8) = 0;
      (*(*v6 + 16))(v6, v4, v5);
    }

    else
    {
      v6 = *(a1 + 8);
      *(a1 + 8) = 0;
      (*(*v6 + 16))(v6, 0, 0);
    }

    return (*(*v6 + 8))(v6);
  }

  else
  {
    v7 = *(a1 + 8);
    *(a1 + 8) = 0;
    (*(*v7 + 16))(v7, 0, 0);
    v8 = *(*v7 + 8);

    return v8(v7);
  }
}

void *WTF::Detail::CallableWrapper<WebKit::WebsiteDataStore::processPushMessage(WebKit::WebPushMessage &&,WTF::CompletionHandler<void ()(BOOL)> &&)::$_0,void,BOOL,std::optional<WebCore::NotificationPayload> &&>::~CallableWrapper(void *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F1121CD8;
  v3 = a1[31];
  a1[31] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  WebKit::WebPushMessage::~WebPushMessage((a1 + 4), a2);
  v4 = a1[2];
  a1[2] = 0;
  if (v4)
  {
    CFRelease(*(v4 + 8));
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebsiteDataStore::processPushMessage(WebKit::WebPushMessage &&,WTF::CompletionHandler<void ()(BOOL)> &&)::$_0,void,BOOL,std::optional<WebCore::NotificationPayload> &&>::~CallableWrapper(void *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F1121CD8;
  v3 = a1[31];
  a1[31] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  WebKit::WebPushMessage::~WebPushMessage((a1 + 4), a2);
  v5 = a1[2];
  a1[2] = 0;
  if (v5)
  {
    CFRelease(*(v5 + 8));
  }

  return WTF::fastFree(a1, v4);
}

uint64_t WTF::HashMap<WebCore::RegistrableDomain,WebKit::RestrictedOpenerType,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WebKit::RestrictedOpenerType>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::inlineSet<WebCore::RegistrableDomain const&,WebKit::RestrictedOpenerType&>@<X0>(uint64_t *a1@<X0>, WTF **a2@<X1>, const WTF::StringImpl *a3@<X2>, uint64_t a4@<X8>)
{
  if (WTF::equal(*a2, 0, a3) || *a2 == -1)
  {
    __break(0xC471u);
    JUMPOUT(0x19E168118);
  }

  v9 = *a1;
  if (*a1 || (WTF::HashTable<WebCore::RegistrableDomain,WTF::KeyValuePair<WebCore::RegistrableDomain,WebKit::RestrictedOpenerType>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::RegistrableDomain,WebKit::RestrictedOpenerType>>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashMap<WebCore::RegistrableDomain,WebKit::RestrictedOpenerType,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WebKit::RestrictedOpenerType>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::expand(a1, 0), (v9 = *a1) != 0))
  {
    v10 = *(v9 - 8);
  }

  else
  {
    v10 = 0;
  }

  v11 = WTF::ASCIICaseInsensitiveHash::hash(*a2, v8) & v10;
  v12 = v9 + 16 * v11;
  if ((WTF::equal(*v12, 0, v13) & 1) == 0)
  {
    v15 = 0;
    v16 = 1;
    do
    {
      if (*v12 == -1)
      {
        v15 = v12;
      }

      else
      {
        result = WTF::equalIgnoringASCIICase(*v12, *a2, v14);
        if (result)
        {
          v22 = *a1;
          if (*a1)
          {
            v23 = *(v22 - 4);
          }

          else
          {
            v23 = 0;
          }

          *a4 = v12;
          *(a4 + 8) = v22 + 16 * v23;
          *(a4 + 16) = 0;
          *(v12 + 8) = *a3;
          return result;
        }
      }

      v11 = (v11 + v16) & v10;
      v12 = v9 + 16 * v11;
      ++v16;
    }

    while (!WTF::equal(*v12, 0, v14));
    if (v15)
    {
      *v15 = 0;
      *(v15 + 8) = 0;
      --*(*a1 - 16);
      v12 = v15;
    }
  }

  result = WTF::GenericHashTraits<WebCore::RegistrableDomain>::assignToEmpty<WebCore::RegistrableDomain,WebCore::RegistrableDomain const&>(v12, a2);
  *(v12 + 8) = *a3;
  v18 = *a1;
  if (*a1)
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
    if (v21 <= 2 * v20)
    {
LABEL_20:
      result = WTF::HashTable<WebCore::RegistrableDomain,WTF::KeyValuePair<WebCore::RegistrableDomain,WebKit::RestrictedOpenerType>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::RegistrableDomain,WebKit::RestrictedOpenerType>>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashMap<WebCore::RegistrableDomain,WebKit::RestrictedOpenerType,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WebKit::RestrictedOpenerType>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::expand(a1, v12);
      v12 = result;
      v18 = *a1;
      if (*a1)
      {
        v21 = *(v18 - 4);
      }

      else
      {
        v21 = 0;
      }
    }
  }

  else if (3 * v21 <= 4 * v20)
  {
    goto LABEL_20;
  }

  *a4 = v12;
  *(a4 + 8) = v18 + 16 * v21;
  *(a4 + 16) = 1;
  return result;
}

void *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebCookieManager::SetCookie,WTF::CompletionHandler<void ()(void)>>(WTF::CompletionHandler<void ()(void)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F1121D00;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebCookieManager::SetCookie,WTF::CompletionHandler<void ()(void)>>(WTF::CompletionHandler<void ()(void)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F1121D00;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebCookieManager::SetCookie,WTF::CompletionHandler<void ()(void)>>(WTF::CompletionHandler<void ()(void)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::call(uint64_t a1)
{
  v1 = *(a1 + 8);
  *(a1 + 8) = 0;
  (*(*v1 + 16))(v1);
  v2 = *(*v1 + 8);

  return v2(v1);
}

void WebKit::FullscreenTouchSecheuristic::scoreOfNextTouch(WebKit::FullscreenTouchSecheuristic *this, CGPoint a2)
{
  y = a2.y;
  x = a2.x;
  WTF::MonotonicTime::now(this);
  v6 = *(this + 10);
  if (v6 == 0.0)
  {
    *(this + 10) = v5;
  }

  else
  {
    v7 = v5 - v6;
    *(this + 10) = v5;
    v8.x = x;
    v8.y = y;
    WebKit::FullscreenTouchSecheuristic::scoreOfNextTouch(this, v8, &v7);
  }
}

void WebKit::FullscreenTouchSecheuristic::scoreOfNextTouch(WebKit::FullscreenTouchSecheuristic *this, CGPoint a2, const WTF::Seconds *a3)
{
  v6 = a2;
  v3 = (this + 88);
  if (*(this + 11) != -1.0 || *(this + 12) != -1.0)
  {
    v4 = *a3 / *(this + 2) * *this;
    if (v4 > 1.0)
    {
      v4 = 1.0;
    }

    if (v4 >= 0.0)
    {
      v5 = v4;
    }

    else
    {
      v5 = 0.0;
    }

    *(this + 13) = *(this + 13) * (1.0 - v5) + v5 * WebKit::FullscreenTouchSecheuristic::distanceScore(this, &v6, (this + 88), a3);
  }

  *v3 = v6;
}

double WebKit::FullscreenTouchSecheuristic::attenuationFactor(double *a1, double a2)
{
  result = a2 / a1[2] * *a1;
  if (result > 1.0)
  {
    result = 1.0;
  }

  if (result < 0.0)
  {
    return 0.0;
  }

  return result;
}

double WebKit::FullscreenTouchSecheuristic::distanceScore(WebKit::FullscreenTouchSecheuristic *this, const CGPoint *a2, const CGPoint *a3, const WTF::Seconds *a4)
{
  v6 = a2->y - a3->y;
  v7 = sqrt(*(this + 4) * (v6 * v6) + *(this + 3) * ((a2->x - a3->x) * (a2->x - a3->x))) / sqrt(*(this + 4) * (*(this + 9) * *(this + 9)) + *(this + 3) * (*(this + 8) * *(this + 8)));
  v8 = *(this + 6);
  if (v7 > v8)
  {
    v7 = v8 + pow((v7 - v8) / (1.0 - v8), *(this + 5));
  }

  return v7 * (*(this + 1) / *a4);
}

double WebKit::FullscreenTouchSecheuristic::reset(WebKit::FullscreenTouchSecheuristic *this)
{
  result = 0.0;
  *(this + 5) = xmmword_19E7046D0;
  *(this + 6) = xmmword_19E7046E0;
  return result;
}

void WebKit::encodeLegacySessionState(std::once_flag::_State_type *this@<X0>, __CFString **a2@<X8>)
{
  v57 = *MEMORY[0x1E69E9840];
  v7 = *MEMORY[0x1E695E480];
  v8 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, &WebKit::sessionHistoryVersion);
  v9 = v8;
  if ((*(this + 20) & 1) == 0)
  {
    p_value = @"SessionHistoryVersion";
    v48 = v8;
    WebKit::createDictionary(&valuePtr, &p_value, 1uLL);
    if (v9)
    {
      goto LABEL_79;
    }

    goto LABEL_39;
  }

  v39 = v8;
  v40 = a2;
  Mutable = CFArrayCreateMutable(v7, *(this + 3), MEMORY[0x1E695E9C0]);
  v41 = this;
  v11 = *(this + 3);
  if (v11)
  {
    v12 = 0;
    a2 = &p_value;
    v9 = *this;
    v3 = (8 * v11);
    this = &qword_1ED642BA0;
    while (1)
    {
      WTF::String::createCFString(&v45, (*v9 + 8));
      WTF::String::createCFString(&v44, (*v9 + 184));
      WTF::String::createCFString(&cf, (*v9 + 16));
      if (v12 > 0x200000)
      {
        goto LABEL_14;
      }

      v13 = *v9;
      if ((_MergedGlobals_106 & 1) == 0)
      {
        qword_1ED642B98 = 0;
        _MergedGlobals_106 = 1;
      }

      if (atomic_load_explicit(&qword_1ED642BA0, memory_order_acquire) != -1)
      {
        valuePtr = &p_value;
        p_value = &value;
        std::__call_once(&qword_1ED642BA0, &valuePtr, std::__call_once_proxy[abi:sn200100]<std::tuple<WebKit::encodeSessionHistoryEntryData(WebKit::FrameState const&)::$_0 &&>>);
      }

      p_value = 0;
      v48 = WTF::fastMalloc(0x200);
      v49 = 512;
      v50 = v48;
      valuePtr = 0;
      WebKit::HistoryEntryDataEncoder::encodeFixedLengthData(&p_value, &valuePtr, 8uLL, 8u);
      LODWORD(valuePtr) = 2;
      WebKit::HistoryEntryDataEncoder::encodeFixedLengthData(&p_value, &valuePtr, 4uLL, 4u);
      WebKit::encodeFrameStateNode(&p_value, v13);
      v14 = p_value;
      v15 = v48;
      v16 = v49;
      v48 = 0;
      v49 = 0;
      WTF::fastFree(0, v17);
      if (v16 < v14)
      {
        goto LABEL_77;
      }

      v4 = CFDataCreateWithBytesNoCopy(v7, v15, v14, qword_1ED642B98);
      WTF::fastFree(0, v18);
      if (v4)
      {
        v12 += CFDataGetLength(v4);
        if (v12 > 0x200000 && CFArrayGetCount(Mutable) >= 1)
        {
          break;
        }
      }

LABEL_15:
      valuePtr = *(*v9 + 192);
      v19 = CFNumberCreate(v7, kCFNumberSInt64Type, &valuePtr);
      v20 = v19;
      p_value = @"SessionHistoryEntryURL";
      v48 = v45;
      v49 = @"SessionHistoryEntryTitle";
      v50 = v44;
      v51 = @"SessionHistoryEntryOriginalURL";
      v52 = cf;
      if (v4)
      {
        v53 = @"SessionHistoryEntryData";
        v54 = v4;
        v55 = @"SessionHistoryEntryShouldOpenExternalURLsPolicyKey";
        v56 = v19;
        v21 = 5;
      }

      else
      {
        v53 = @"SessionHistoryEntryShouldOpenExternalURLsPolicyKey";
        v54 = v19;
        v21 = 4;
      }

      WebKit::createDictionary(&value, &p_value, v21);
      v22 = value;
      CFArrayAppendValue(Mutable, value);
      if (v22)
      {
        CFRelease(v22);
        if (!v20)
        {
LABEL_20:
          if (v4)
          {
            goto LABEL_31;
          }

          goto LABEL_21;
        }
      }

      else if (!v20)
      {
        goto LABEL_20;
      }

      CFRelease(v20);
      if (v4)
      {
LABEL_31:
        CFRelease(v4);
      }

LABEL_21:
      v23 = cf;
      cf = 0;
      if (v23)
      {
        CFRelease(v23);
      }

      v24 = v44;
      v44 = 0;
      if (v24)
      {
        CFRelease(v24);
      }

      v25 = v45;
      v45 = 0;
      if (v25)
      {
        CFRelease(v25);
      }

      v9 = (v9 + 8);
      v3 -= 8;
      if (!v3)
      {
        goto LABEL_34;
      }
    }

    CFRelease(v4);
LABEL_14:
    v4 = 0;
    goto LABEL_15;
  }

LABEL_34:
  this = v41;
  if (*(v41 + 20))
  {
    LODWORD(v45) = *(v41 + 4);
    v26 = CFNumberCreate(v7, kCFNumberSInt32Type, &v45);
    v9 = v39;
    p_value = @"SessionHistoryVersion";
    v48 = v39;
    v49 = @"SessionHistoryCurrentIndex";
    v50 = v26;
    v51 = @"SessionHistoryEntries";
    v52 = Mutable;
    WebKit::createDictionary(&valuePtr, &p_value, 3uLL);
    if (v26)
    {
      CFRelease(v26);
    }

    a2 = v40;
    if (Mutable)
    {
      goto LABEL_78;
    }

    if (v39)
    {
      goto LABEL_79;
    }

    while (1)
    {
LABEL_39:
      if (this[4])
      {
        WTF::String::createCFString(&v45, (this + 4));
      }

      else
      {
        v45 = 0;
      }

      v9 = CFNumberCreate(v7, kCFNumberSInt64Type, this + 3);
      v27 = MEMORY[0x1E695E4D0];
      if (!*(this + 72))
      {
        v27 = MEMORY[0x1E695E4C0];
      }

      Mutable = *v27;
      if (*v27)
      {
        CFRetain(*v27);
      }

      this = valuePtr;
      p_value = @"SessionHistory";
      v48 = valuePtr;
      if (v45)
      {
        v49 = @"ProvisionalURL";
        v50 = v45;
        v51 = @"RenderTreeSize";
        v52 = v9;
        v53 = @"IsAppInitiated";
        v54 = Mutable;
        v28 = 4;
      }

      else
      {
        v49 = @"RenderTreeSize";
        v50 = v9;
        v51 = @"IsAppInitiated";
        v52 = Mutable;
        v28 = 3;
      }

      WebKit::createDictionary(&v44, &p_value, v28);
      v3 = v44;
      v29 = CFWriteStreamCreateWithAllocatedBuffers(v7, 0);
      if (!v29)
      {
        break;
      }

      v7 = v29;
      if (!CFWriteStreamOpen(v29) || !CFPropertyListWrite(v3, v7, kCFPropertyListBinaryFormat_v1_0, 0, 0))
      {
        *a2 = 0;
        goto LABEL_62;
      }

      v30 = CFWriteStreamCopyProperty(v7, *MEMORY[0x1E695E900]);
      v4 = WTF::checked_cf_cast<__CFData const*>(v30);
      Length = CFDataGetLength(v4);
      v32 = Length + 4;
      WTF::tryFastMalloc((Length + 4));
      v34 = p_value;
      if (!p_value)
      {
        *a2 = 0;
        goto LABEL_59;
      }

      if (Length != -4)
      {
        LOBYTE(p_value->isa) = 0;
        if (Length != -3)
        {
          *(v34 + 1) = 0;
          if (v32 > 2)
          {
            *(v34 + 2) = 0;
            if (Length != -1)
            {
              *(v34 + 3) = 2;
              v58.location = 0;
              v58.length = Length;
              CFDataGetBytes(v4, v58, v34 + 4);
              v35 = WTF::fastMalloc(0x18);
              *v35 = &unk_1F1121DD8;
              v35[1] = v34;
              v35[2] = v32;
              v44 = v35;
              API::Data::createWithoutCopying(v34, v32, &v44, &p_value);
              *a2 = p_value;
              p_value = 0;
              v37 = v44;
              v44 = 0;
              if (v37)
              {
                goto LABEL_76;
              }

              goto LABEL_58;
            }
          }
        }
      }

LABEL_77:
      __break(1u);
LABEL_78:
      CFRelease(Mutable);
      if (v9)
      {
LABEL_79:
        CFRelease(v9);
      }
    }

    *a2 = 0;
    if (!v3)
    {
      goto LABEL_63;
    }
  }

  else
  {
    v37 = std::__throw_bad_optional_access[abi:sn200100]();
LABEL_76:
    (*(*v37 + 8))(v37);
LABEL_58:
    WTF::fastFree(0, v36);
LABEL_59:
    WTF::fastFree(0, v33);
    if (v4)
    {
      CFRelease(v4);
    }

LABEL_62:
    CFRelease(v7);
    if (!v3)
    {
LABEL_63:
      if (!Mutable)
      {
        goto LABEL_65;
      }

      goto LABEL_64;
    }
  }

  CFRelease(v3);
  if (Mutable)
  {
LABEL_64:
    CFRelease(Mutable);
  }

LABEL_65:
  if (v9)
  {
    CFRelease(v9);
  }

  v38 = v45;
  v45 = 0;
  if (!v38)
  {
    if (!this)
    {
      return;
    }

LABEL_71:
    CFRelease(this);
    return;
  }

  CFRelease(v38);
  if (this)
  {
    goto LABEL_71;
  }
}

CFDictionaryRef WebKit::createDictionary(CFDictionaryRef result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v21 = 0;
  v19 = 0;
  if (a3)
  {
    if (a3 >> 29)
    {
      __break(0xC471u);
      return result;
    }

    LODWORD(v21) = a3;
    keys = WTF::fastMalloc((8 * a3));
    v6 = WTF::fastMalloc((8 * a3));
    v7 = 0;
    LODWORD(v19) = a3;
    values = v6;
    v8 = a2 + 8;
    v9 = 16 * a3;
    do
    {
      v10 = HIDWORD(v21);
      if (HIDWORD(v21) == v21)
      {
        if (HIDWORD(v21) + (HIDWORD(v21) >> 1) <= HIDWORD(v21) + 1)
        {
          v11 = HIDWORD(v21) + 1;
        }

        else
        {
          v11 = HIDWORD(v21) + (HIDWORD(v21) >> 1);
        }

        if (v11 <= 0x10)
        {
          v12 = 16;
        }

        else
        {
          v12 = v11;
        }

        WTF::Vector<WTF::Ref<WebCore::ApplePayError,WTF::RawPtrTraits<WebCore::ApplePayError>,WTF::DefaultRefDerefTraits<WebCore::ApplePayError>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(&keys, v12);
        v10 = HIDWORD(v21);
        v13 = &keys[HIDWORD(v21)];
      }

      else
      {
        v13 = &keys[HIDWORD(v21)];
      }

      *v13 = *(v8 - 8);
      HIDWORD(v21) = v10 + 1;
      if (v7 == v19)
      {
        v14 = WTF::Vector<WTF::Ref<WebCore::ApplePayError,WTF::RawPtrTraits<WebCore::ApplePayError>,WTF::DefaultRefDerefTraits<WebCore::ApplePayError>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(&values, v7 + 1, v8);
        v7 = HIDWORD(v19);
        v6 = values;
        v15 = &values[HIDWORD(v19)];
      }

      else
      {
        v15 = &v6[v7];
        v14 = v8;
      }

      *v15 = *v14;
      HIDWORD(v19) = ++v7;
      v8 += 16;
      v9 -= 16;
    }

    while (v9);
    v16 = keys;
  }

  else
  {
    v6 = 0;
    v16 = 0;
  }

  result = CFDictionaryCreate(*MEMORY[0x1E695E480], v16, v6, a3, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  *v4 = result;
  if (v6)
  {
    result = WTF::fastFree(v6, v17);
  }

  if (v16)
  {

    return WTF::fastFree(v16, v17);
  }

  return result;
}

uint64_t WTF::checked_cf_cast<__CFData const*>(CFTypeRef cf)
{
  if (!cf)
  {
    return cf;
  }

  v2 = CFGetTypeID(cf);
  if (v2 == CFDataGetTypeID())
  {
    return cf;
  }

  result = 72;
  __break(0xC471u);
  return result;
}

uint64_t WebKit::decodeLegacySessionState(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (a2 < 4 || bswap32(*a1) != 2)
  {
    return 0;
  }

  v4 = *MEMORY[0x1E695E480];
  v5 = CFDataCreate(*MEMORY[0x1E695E480], (a1 + 4), a2 - 4);
  v6 = CFPropertyListCreateWithData(v4, v5, 0, 0, 0);
  if (v5)
  {
    CFRelease(v5);
  }

  v7 = WTF::dynamic_cf_cast<__CFDictionary const*>(v6);
  if (!v7)
  {
    v26 = 0;
    if (!v6)
    {
      return v26;
    }

    goto LABEL_55;
  }

  v8 = v7;
  CFRetain(v7);
  Value = CFDictionaryGetValue(v8, @"SessionHistory");
  v10 = WTF::dynamic_cf_cast<__CFDictionary const*>(Value);
  if (v10)
  {
    v11 = v10;
    CFRetain(v10);
    v12 = CFDictionaryGetValue(v11, @"SessionHistoryVersion");
    v13 = WTF::dynamic_cf_cast<__CFNumber const*>(v12);
    if (v13)
    {
      v14 = v13;
      CFRetain(v13);
      valuePtr = 0;
      if (CFNumberGetValue(v14, kCFNumberCFIndexType, &valuePtr))
      {
        v15 = valuePtr == 1;
      }

      else
      {
        v15 = 0;
      }

      if (!v15)
      {
        goto LABEL_51;
      }

      v16 = CFDictionaryGetValue(v11, @"SessionHistoryCurrentIndex");
      v17 = WTF::dynamic_cf_cast<__CFNumber const*>(v16);
      if (v17)
      {
        v20 = v17;
        CFRetain(v17);
        v53[0] = 0;
        if (CFNumberGetValue(v20, kCFNumberCFIndexType, v53))
        {
          if ((v53[0] & 0x8000000000000000) == 0)
          {
            v21 = CFDictionaryGetValue(v11, @"SessionHistoryEntries");
            v22 = WTF::dynamic_cf_cast<__CFArray const*>(v21);
            if (v22)
            {
              v23 = v22;
              CFRetain(v22);
              if (WebKit::decodeSessionHistoryEntries(v23, a3))
              {
                v24 = v53[0];
                *(a3 + 16) = v53[0];
                *(a3 + 20) = 1;
                v25 = *(a3 + 12);
                CFRelease(v23);
                CFRelease(v20);
                CFRelease(v14);
                if (v25 <= v24)
                {
                  goto LABEL_52;
                }

                goto LABEL_38;
              }

              CFRelease(v23);
            }
          }
        }

        goto LABEL_50;
      }

      if (*(a3 + 20) == 1)
      {
        *(a3 + 20) = 0;
      }

      v33 = *(a3 + 12);
      if (v33)
      {
        v50 = *a3;
        v51 = 8 * v33;
        do
        {
          v52 = *v50;
          *v50 = 0;
          if (v52)
          {
            WTF::RefCounted<WebKit::FrameState>::deref(v52);
          }

          ++v50;
          v51 -= 8;
        }

        while (v51);
      }

      v34 = *a3;
      if (*a3)
      {
        *a3 = 0;
        *(a3 + 8) = 0;
        WTF::fastFree(v34, v18);
      }

      *&v19 = 0;
      *v53 = v19;
      *a3 = v19;
      WTF::Vector<WTF::Ref<WebKit::FrameState,WTF::RawPtrTraits<WebKit::FrameState>,WTF::DefaultRefDerefTraits<WebKit::FrameState>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v53, v18);
    }

    else
    {
      v27 = CFDictionaryGetValue(v11, @"SessionHistoryCurrentIndex");
      v28 = WTF::dynamic_cf_cast<__CFNumber const*>(v27);
      if (!v28)
      {
LABEL_52:
        CFRelease(v11);
LABEL_53:
        v26 = 0;
        goto LABEL_54;
      }

      v14 = v28;
      CFRetain(v28);
      v53[0] = 0;
      if (CFNumberGetValue(v14, kCFNumberCFIndexType, v53))
      {
        v29 = v53[0] < -1;
      }

      else
      {
        v29 = 1;
      }

      if (v29 || (v30 = CFDictionaryGetValue(v11, @"SessionHistoryEntries"), (v31 = WTF::dynamic_cf_cast<__CFArray const*>(v30)) == 0))
      {
LABEL_51:
        CFRelease(v14);
        goto LABEL_52;
      }

      v20 = v31;
      CFRetain(v31);
      v32 = v53[0];
      if (!WebKit::decodeSessionHistoryEntries(v20, a3))
      {
        goto LABEL_50;
      }

      if (v32 == -1)
      {
        Count = CFArrayGetCount(v20);
        CFRelease(v20);
        CFRelease(v14);
        if (Count)
        {
          goto LABEL_52;
        }

        goto LABEL_38;
      }

      if (LODWORD(v53[0]) >= *(a3 + 12))
      {
LABEL_50:
        CFRelease(v20);
        goto LABEL_51;
      }

      *(a3 + 16) = v53[0];
      *(a3 + 20) = 1;
      CFRelease(v20);
    }

    CFRelease(v14);
LABEL_38:
    CFRelease(v11);
  }

  v35 = CFDictionaryGetValue(v8, @"ProvisionalURL");
  v36 = WTF::dynamic_cf_cast<__CFString const*>(v35);
  if (v36)
  {
    v37 = v36;
    CFRetain(v36);
    MEMORY[0x19EB02040](&valuePtr, v37);
    MEMORY[0x19EB01DD0](v53, &valuePtr, 0);
    WTF::URL::operator=(a3 + 32, v53);
    v39 = v53[0];
    v53[0] = 0;
    if (v39 && atomic_fetch_add_explicit(v39, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v39, v38);
    }

    v40 = valuePtr;
    valuePtr = 0;
    if (v40 && atomic_fetch_add_explicit(v40, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v40, v38);
    }

    v41 = *(a3 + 40);
    CFRelease(v37);
    if ((v41 & 1) == 0)
    {
      goto LABEL_53;
    }
  }

  v42 = CFDictionaryGetValue(v8, @"RenderTreeSize");
  v43 = WTF::dynamic_cf_cast<__CFNumber const*>(v42);
  if (v43)
  {
    v44 = v43;
    CFRetain(v43);
    CFNumberGetValue(v44, kCFNumberSInt64Type, (a3 + 24));
    CFRelease(v44);
  }

  else
  {
    *(a3 + 24) = 0;
  }

  v46 = CFDictionaryGetValue(v8, @"IsAppInitiated");
  if (v46 && (v47 = v46, v48 = CFGetTypeID(v46), v48 == CFBooleanGetTypeID()))
  {
    CFRetain(v47);
    *(a3 + 72) = v47 == *MEMORY[0x1E695E4D0];
    CFRelease(v47);
    v26 = 1;
  }

  else
  {
    v26 = 1;
    *(a3 + 72) = 1;
  }

LABEL_54:
  CFRelease(v8);
  if (v6)
  {
LABEL_55:
    CFRelease(v6);
  }

  return v26;
}

const void *WTF::dynamic_cf_cast<__CFDictionary const*>(const void *result)
{
  if (result)
  {
    v1 = result;
    v2 = CFGetTypeID(result);
    if (v2 == CFDictionaryGetTypeID())
    {
      return v1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

const void *WTF::dynamic_cf_cast<__CFString const*>(const void *result)
{
  if (result)
  {
    v1 = result;
    v2 = CFGetTypeID(result);
    if (v2 == CFStringGetTypeID())
    {
      return v1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

const void *WTF::dynamic_cf_cast<__CFNumber const*>(const void *result)
{
  if (result)
  {
    v1 = result;
    v2 = CFGetTypeID(result);
    if (v2 == CFNumberGetTypeID())
    {
      return v1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void WebKit::SecItemShimProxy::~SecItemShimProxy(WebKit::SecItemShimProxy *this, void *a2)
{
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    (*(*v3 + 40))(v3);
  }

  *this = &unk_1F10EA5E0;
  WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::~WeakPtrFactory(this + 1, a2);
}

{
  WebKit::SecItemShimProxy::~SecItemShimProxy(this, a2);

  JUMPOUT(0x19EB14CF0);
}

void WebKit::SecItemShimProxy::secItemRequest(uint64_t a1, const __CFDictionary *a2, const __CFDictionary **a3, uint64_t *a4)
{
  v51 = *MEMORY[0x1E69E9840];
  if (WebKit::dictionaryContainsInMemoryObject(a3[1], a2))
  {
    v41 = qword_1ED6416C8;
    if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_FAULT))
    {
      *buf = 136446210;
      *&buf[4] = "void WebKit::SecItemShimProxy::secItemRequest(IPC::Connection &, const SecItemRequestData &, CompletionHandler<void (std::optional<SecItemResponseData> &&)> &&)";
      _os_log_fault_impl(&dword_19D52D000, v41, OS_LOG_TYPE_FAULT, "/Library/Caches/com.apple.xbs/Sources/WebKit/Source/WebKit/UIProcess/mac/SecItemShimProxy.cpp 95: Invalid message dispatched %{public}s", buf, 0xCu);
    }

    *(a2 + 94) = 1;
    if (IPC::s_shouldCrashOnMessageCheckFailure != 1)
    {
      goto LABEL_66;
    }

    goto LABEL_68;
  }

  if (WebKit::dictionaryContainsInMemoryObject(a3[2], v7))
  {
    v42 = qword_1ED6416C8;
    if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_FAULT))
    {
      *buf = 136446210;
      *&buf[4] = "void WebKit::SecItemShimProxy::secItemRequest(IPC::Connection &, const SecItemRequestData &, CompletionHandler<void (std::optional<SecItemResponseData> &&)> &&)";
      _os_log_fault_impl(&dword_19D52D000, v42, OS_LOG_TYPE_FAULT, "/Library/Caches/com.apple.xbs/Sources/WebKit/Source/WebKit/UIProcess/mac/SecItemShimProxy.cpp 96: Invalid message dispatched %{public}s", buf, 0xCu);
    }

    *(a2 + 94) = 1;
    if (IPC::s_shouldCrashOnMessageCheckFailure != 1)
    {
LABEL_66:
      v44 = 0;
      v46 = 0;
      v47 = -50;
      mpark::variant<decltype(nullptr),WTF::Vector<WTF::RetainPtr<__SecCertificate *>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::RetainPtr<void const*>>::variant(v48, &v44);
      *buf = v47;
      mpark::variant<decltype(nullptr),WTF::Vector<WTF::RetainPtr<__SecCertificate *>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::RetainPtr<void const*>>::variant(&buf[8], v48);
      v50 = 1;
      goto LABEL_27;
    }

LABEL_68:
    __break(0xC471u);
    JUMPOUT(0x19E1698E8);
  }

  v8 = *a3;
  if (v8 > 1)
  {
    switch(v8)
    {
      case 2u:
        v9 = SecItemAdd(a3[1], 0);
        break;
      case 3u:
        v9 = SecItemUpdate(a3[1], a3[2]);
        break;
      case 4u:
        v9 = SecItemDelete(a3[1]);
        break;
      default:
        return;
    }

    v44 = 0;
    v46 = 0;
    v47 = v9;
    goto LABEL_26;
  }

  if (!*a3)
  {
    v44 = 0;
    v46 = 0;
    v47 = -50;
LABEL_26:
    mpark::variant<decltype(nullptr),WTF::Vector<WTF::RetainPtr<__SecCertificate *>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::RetainPtr<void const*>>::variant(v48, &v44);
    *buf = v47;
    mpark::variant<decltype(nullptr),WTF::Vector<WTF::RetainPtr<__SecCertificate *>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::RetainPtr<void const*>>::variant(&buf[8], v48);
    v50 = 1;
LABEL_27:
    v26 = *a4;
    *a4 = 0;
    (*(*v26 + 16))(v26, buf);
    (*(*v26 + 8))(v26);
    if (v50 == 1)
    {
      mpark::detail::move_constructor<mpark::detail::traits<decltype(nullptr),WTF::Vector<WTF::RetainPtr<__SecCertificate *>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::RetainPtr<void const*>>,(mpark::detail::Trait)1>::~move_constructor(&buf[8], v27);
    }

    mpark::detail::move_constructor<mpark::detail::traits<decltype(nullptr),WTF::Vector<WTF::RetainPtr<__SecCertificate *>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::RetainPtr<void const*>>,(mpark::detail::Trait)1>::~move_constructor(v48, v27);
    mpark::detail::move_constructor<mpark::detail::traits<decltype(nullptr),WTF::Vector<WTF::RetainPtr<__SecCertificate *>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::RetainPtr<void const*>>,(mpark::detail::Trait)1>::~move_constructor(&v44, v28);
    return;
  }

  if (v8 != 1)
  {
    return;
  }

  cf = 0;
  v10 = SecItemCopyMatching(a3[1], &cf);
  v11 = cf;
  v44 = 0;
  v46 = 0;
  if (cf)
  {
    v12 = CFGetTypeID(cf);
    if (v12 == CFArrayGetTypeID())
    {
      if (CFArrayGetCount(v11))
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v11, 0);
        v15 = CFGetTypeID(ValueAtIndex);
        if (v15 == SecCertificateGetTypeID())
        {
          Count = CFArrayGetCount(v11);
          *buf = 0uLL;
          if (Count)
          {
            v17 = Count;
            if (Count >> 29)
            {
              __break(0xC471u);
              JUMPOUT(0x19E1699E4);
            }

            v18 = WTF::fastMalloc((8 * Count));
            v19 = 0;
            v20 = 0;
            v21 = 0;
            *&buf[8] = v17;
            *buf = v18;
            do
            {
              v22 = CFArrayGetValueAtIndex(v11, v21);
              if (v22)
              {
                v23 = v22;
                v24 = CFGetTypeID(v22);
                if (v24 == SecCertificateGetTypeID())
                {
                  CFRetain(v23);
                  CFRetain(v23);
                  CFRelease(v23);
                  v19 = v20 + 1;
                  *(v18 + 8 * v20++) = v23;
                }
              }

              ++v21;
            }

            while (v17 != v21);
            *&buf[12] = v19;
            v25 = v20;
          }

          else
          {
            v25 = 0;
          }

          WTF::Vector<WTF::RetainPtr<__SecCertificate *>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity(buf, v25);
          if (v46 > 1u)
          {
            if (v46 == 2)
            {
              v39 = v44;
              v44 = 0;
              if (v39)
              {
                CFRelease(v39);
              }
            }
          }

          else if (v46)
          {
            if (HIDWORD(v45))
            {
              v34 = v44;
              v35 = 8 * HIDWORD(v45);
              do
              {
                v36 = *v34;
                *v34 = 0;
                if (v36)
                {
                  CFRelease(v36);
                }

                ++v34;
                v35 -= 8;
              }

              while (v35);
            }

            v37 = v44;
            if (v44)
            {
              v44 = 0;
              LODWORD(v45) = 0;
              WTF::fastFree(v37, v33);
            }

            v38 = *&buf[8];
            v44 = *buf;
            *buf = 0uLL;
            v45 = v38;
            goto LABEL_58;
          }

          v40 = *&buf[8];
          v44 = *buf;
          *buf = 0uLL;
          v45 = v40;
          v46 = 1;
LABEL_58:
          WTF::Vector<WTF::RetainPtr<__SecCertificate *>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(buf, v33);
          goto LABEL_39;
        }
      }
    }

    if (v46 > 1u)
    {
      if (v46 != 255)
      {
        v29 = v44;
        v44 = v11;
        if (v29)
        {
          CFRelease(v29);
        }

        goto LABEL_38;
      }
    }

    else if (v46)
    {
      WTF::Vector<WTF::RetainPtr<__SecCertificate *>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v44, v13);
    }

    v44 = v11;
    v46 = 2;
LABEL_38:
    v11 = 0;
  }

LABEL_39:
  v47 = v10;
  mpark::variant<decltype(nullptr),WTF::Vector<WTF::RetainPtr<__SecCertificate *>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::RetainPtr<void const*>>::variant(v48, &v44);
  *buf = v47;
  mpark::variant<decltype(nullptr),WTF::Vector<WTF::RetainPtr<__SecCertificate *>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::RetainPtr<void const*>>::variant(&buf[8], v48);
  v50 = 1;
  v30 = *a4;
  *a4 = 0;
  (*(*v30 + 16))(v30, buf);
  (*(*v30 + 8))(v30);
  if (v50 == 1)
  {
    mpark::detail::move_constructor<mpark::detail::traits<decltype(nullptr),WTF::Vector<WTF::RetainPtr<__SecCertificate *>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::RetainPtr<void const*>>,(mpark::detail::Trait)1>::~move_constructor(&buf[8], v31);
  }

  mpark::detail::move_constructor<mpark::detail::traits<decltype(nullptr),WTF::Vector<WTF::RetainPtr<__SecCertificate *>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::RetainPtr<void const*>>,(mpark::detail::Trait)1>::~move_constructor(v48, v31);
  mpark::detail::move_constructor<mpark::detail::traits<decltype(nullptr),WTF::Vector<WTF::RetainPtr<__SecCertificate *>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::RetainPtr<void const*>>,(mpark::detail::Trait)1>::~move_constructor(&v44, v32);
  if (v11)
  {
    CFRelease(v11);
  }
}

const __CFDictionary *WebKit::dictionaryContainsInMemoryObject(const __CFDictionary *this, const __CFDictionary *a2)
{
  if (this)
  {
    v2 = this;
    if (CFDictionaryContainsKey(this, *MEMORY[0x1E697B3A0]))
    {
      return 1;
    }

    else
    {
      return (CFDictionaryContainsKey(v2, *MEMORY[0x1E697B3D0]) != 0);
    }
  }

  return this;
}

void std::__call_once_proxy[abi:sn200100]<std::tuple<WebKit::encodeSessionHistoryEntryData(WebKit::FrameState const&)::$_0 &&>>()
{
  v2 = *byte_1F1121D80;
  v0 = CFAllocatorCreate(*MEMORY[0x1E695E480], &v2);
  v1 = qword_1ED642B98;
  qword_1ED642B98 = v0;
  if (v1)
  {
    CFRelease(v1);
  }
}

void *WebKit::encodeFrameStateNode(unint64_t *a1, uint64_t a2)
{
  v45[0] = *(a2 + 388);
  WebKit::HistoryEntryDataEncoder::encodeFixedLengthData(a1, v45, 8uLL, 8u);
  v4 = *(a2 + 388);
  if (v4)
  {
    v5 = *(a2 + 376);
    v6 = 8 * v4;
    do
    {
      v7 = WebKit::HistoryEntryDataEncoder::operator<<(a1, (*v5 + 16));
      v8 = WebKit::HistoryEntryDataEncoder::operator<<(v7, (*v5 + 8));
      v9 = *v5++;
      WebKit::encodeFrameStateNode(v8, v9);
      v6 -= 8;
    }

    while (v6);
  }

  v45[0] = *(a2 + 80);
  WebKit::HistoryEntryDataEncoder::encodeFixedLengthData(a1, v45, 8uLL, 8u);
  v45[0] = *(a2 + 404);
  WebKit::HistoryEntryDataEncoder::encodeFixedLengthData(a1, v45, 8uLL, 8u);
  v10 = *(a2 + 404);
  if (v10)
  {
    v11 = *(a2 + 392);
    v12 = 8 * v10;
    do
    {
      WebKit::HistoryEntryDataEncoder::operator<<(a1, v11++);
      v12 -= 8;
    }

    while (v12);
  }

  if (*(a2 + 136))
  {
    v13 = WebKit::HistoryEntryDataEncoder::operator<<(a1, (a2 + 112));
    LOBYTE(v45[0]) = 1;
    WebKit::HistoryEntryDataEncoder::encodeFixedLengthData(v13, v45, 1uLL, 1u);
    if ((*(a2 + 136) & 1) == 0)
    {
      v41 = std::__throw_bad_optional_access[abi:sn200100]();
      return WebKit::HistoryEntryDataEncoder::encodeFixedLengthData(v41, v42, v43, v44);
    }

    LOBYTE(v45[0]) = 0;
    WebKit::HistoryEntryDataEncoder::encodeFixedLengthData(a1, v45, 1uLL, 1u);
    v45[0] = 0;
    v45[1] = 0;
    v14 = WebKit::HistoryEntryDataEncoder::operator<<(a1, v45);
    v45[0] = *(a2 + 132);
    WebKit::HistoryEntryDataEncoder::encodeFixedLengthData(v14, v45, 8uLL, 8u);
    v15 = *(a2 + 132);
    if (v15)
    {
      v16 = *(a2 + 120);
      v17 = 56 * v15;
      do
      {
        v18 = *(v16 + 48);
        if (v18 == 255)
        {
          v18 = -1;
        }

        LODWORD(v45[0]) = v18;
        v19 = WebKit::HistoryEntryDataEncoder::encodeFixedLengthData(a1, v45, 4uLL, 4u);
        v20 = *(v16 + 48);
        if (v20 == 255)
        {
          v21 = -1;
        }

        else
        {
          v21 = *(v16 + 48);
        }

        if (v21 == 2)
        {
          if (v20 != 2)
          {
            goto LABEL_38;
          }

          WebKit::HistoryEntryDataEncoder::operator<<(a1, v16);
        }

        else if (v21 == 1)
        {
          if (v20 != 1)
          {
            goto LABEL_38;
          }

          v22 = WebKit::HistoryEntryDataEncoder::operator<<(a1, v16);
          v45[0] = 0;
          v23 = WebKit::HistoryEntryDataEncoder::operator<<(v22, v45);
          LOBYTE(v45[0]) = 0;
          WebKit::HistoryEntryDataEncoder::encodeFixedLengthData(v23, v45, 1uLL, 1u);
          v45[0] = *(v16 + 8);
          WebKit::HistoryEntryDataEncoder::encodeFixedLengthData(a1, v45, 8uLL, 8u);
          if (*(v16 + 24))
          {
            v24 = *(v16 + 16);
          }

          else
          {
            v24 = -1;
          }

          v45[0] = v24;
          WebKit::HistoryEntryDataEncoder::encodeFixedLengthData(a1, v45, 8uLL, 8u);
          v25 = *(v16 + 32);
          if (!*(v16 + 40))
          {
            v25 = NAN;
          }

          *v45 = v25;
          WebKit::HistoryEntryDataEncoder::encodeFixedLengthData(a1, v45, 8uLL, 8u);
        }

        else
        {
          if (*(v16 + 48))
          {
LABEL_38:
            mpark::throw_bad_variant_access(v19);
          }

          WebKit::HistoryEntryDataEncoder::operator<<(a1, v16);
        }

        v16 += 56;
        v17 -= 56;
      }

      while (v17);
    }

    LOBYTE(v45[0]) = 0;
    WebKit::HistoryEntryDataEncoder::encodeFixedLengthData(a1, v45, 1uLL, 1u);
    v45[0] = 0;
    v26 = a1;
    v27 = 8;
    v28 = 8;
  }

  else
  {
    v45[0] = 0;
    v26 = WebKit::HistoryEntryDataEncoder::operator<<(a1, v45);
    LOBYTE(v45[0]) = 0;
    v27 = 1;
    v28 = 1;
  }

  WebKit::HistoryEntryDataEncoder::encodeFixedLengthData(v26, v45, v27, v28);
  v45[0] = *(a2 + 88);
  WebKit::HistoryEntryDataEncoder::encodeFixedLengthData(a1, v45, 8uLL, 8u);
  v29 = WebKit::HistoryEntryDataEncoder::operator<<(a1, (a2 + 24));
  LODWORD(v45[0]) = *(a2 + 96);
  WebKit::HistoryEntryDataEncoder::encodeFixedLengthData(v29, v45, 4uLL, 4u);
  LODWORD(v45[0]) = *(a2 + 100);
  WebKit::HistoryEntryDataEncoder::encodeFixedLengthData(a1, v45, 4uLL, 4u);
  LODWORD(v45[0]) = *(a2 + 108);
  WebKit::HistoryEntryDataEncoder::encodeFixedLengthData(a1, v45, 4uLL, 4u);
  LOBYTE(v45[0]) = *(a2 + 72);
  WebKit::HistoryEntryDataEncoder::encodeFixedLengthData(a1, v45, 1uLL, 1u);
  if (*(a2 + 72) == 1)
  {
    WebKit::HistoryEntryDataEncoder::operator<<(a1, a2 + 56);
  }

  v30 = (a2 + 32);
  v31 = *(a2 + 32);
  if (v31)
  {
    if (*(v31 + 4) >= 0x4000u)
    {
      v30 = MEMORY[0x1E696EB98];
    }
  }

  v32 = WebKit::HistoryEntryDataEncoder::operator<<(a1, v30);
  v33 = *(a2 + 308);
  v34 = *(a2 + 312);
  v35 = *(a2 + 316);
  LODWORD(v45[0]) = *(a2 + 304);
  WebKit::HistoryEntryDataEncoder::encodeFixedLengthData(v32, v45, 4uLL, 4u);
  LODWORD(v45[0]) = v33;
  WebKit::HistoryEntryDataEncoder::encodeFixedLengthData(a1, v45, 4uLL, 4u);
  LODWORD(v45[0]) = v34;
  WebKit::HistoryEntryDataEncoder::encodeFixedLengthData(a1, v45, 4uLL, 4u);
  LODWORD(v45[0]) = v35;
  WebKit::HistoryEntryDataEncoder::encodeFixedLengthData(a1, v45, 4uLL, 4u);
  v36 = *(a2 + 328);
  v37 = HIDWORD(*(a2 + 320));
  LODWORD(v45[0]) = *(a2 + 320);
  WebKit::HistoryEntryDataEncoder::encodeFixedLengthData(a1, v45, 4uLL, 4u);
  LODWORD(v45[0]) = v37;
  WebKit::HistoryEntryDataEncoder::encodeFixedLengthData(a1, v45, 4uLL, 4u);
  LODWORD(v45[0]) = v36;
  WebKit::HistoryEntryDataEncoder::encodeFixedLengthData(a1, v45, 4uLL, 4u);
  LODWORD(v45[0]) = HIDWORD(v36);
  WebKit::HistoryEntryDataEncoder::encodeFixedLengthData(a1, v45, 4uLL, 4u);
  v38 = *(a2 + 340);
  LODWORD(v45[0]) = *(a2 + 336);
  WebKit::HistoryEntryDataEncoder::encodeFixedLengthData(a1, v45, 4uLL, 4u);
  LODWORD(v45[0]) = v38;
  WebKit::HistoryEntryDataEncoder::encodeFixedLengthData(a1, v45, 4uLL, 4u);
  v39 = HIDWORD(*(a2 + 344));
  LODWORD(v45[0]) = *(a2 + 344);
  WebKit::HistoryEntryDataEncoder::encodeFixedLengthData(a1, v45, 4uLL, 4u);
  LODWORD(v45[0]) = v39;
  WebKit::HistoryEntryDataEncoder::encodeFixedLengthData(a1, v45, 4uLL, 4u);
  LOBYTE(v45[0]) = *(a2 + 352);
  return WebKit::HistoryEntryDataEncoder::encodeFixedLengthData(a1, v45, 1uLL, 1u);
}

void *WebKit::HistoryEntryDataEncoder::encodeFixedLengthData(unint64_t *a1, const void *a2, size_t a3, unsigned int a4)
{
  if (!a2 && a3)
  {
    __break(0xC471u);
    JUMPOUT(0x19E16A134);
  }

  v7 = *a1;
  v8 = (*a1 + a4 - 1) / a4 * a4;
  v9 = a3 + v8;
  if (__CFADD__(a3, v8))
  {
    __break(0xC471u);
    JUMPOUT(0x19E16A13CLL);
  }

  v10 = a1[2];
  if (v10 >= v9)
  {
    v11 = a1[1];
  }

  else
  {
    do
    {
      if ((v10 & 0x8000000000000000) != 0)
      {
        goto LABEL_23;
      }

      v10 *= 2;
    }

    while (v10 < v9);
    v11 = WTF::fastRealloc(a1[1], v10);
    a1[1] = v11;
    a1[2] = v10;
    v7 = *a1;
  }

  v12 = v10 - v7;
  if (v10 < v7 || v8 - v7 != -1 && (v15 = v12 >= v8 - v7, v12 = v8 - v7, !v15) || (bzero((v11 + v7), v12), *a1 = v9, v13 = a1[2], v13 < v9) || (v14 = a1[1], a1[3] = v14 + v9, v15 = v13 >= v8, v16 = v13 - v8, !v15))
  {
    __break(1u);
    goto LABEL_23;
  }

  if (v16 < a3)
  {
LABEL_23:
    __break(0xC471u);
    JUMPOUT(0x19E16A114);
  }

  return memcpy((v14 + v8), a2, a3);
}

unint64_t *WebKit::HistoryEntryDataEncoder::operator<<(unint64_t *a1, uint64_t *a2)
{
  if (!*a2)
  {
    LODWORD(v25) = -1;
    WebKit::HistoryEntryDataEncoder::encodeFixedLengthData(a1, &v25, 4uLL, 4u);
    return a1;
  }

  LODWORD(v25) = *(*a2 + 4);
  v4 = v25;
  WebKit::HistoryEntryDataEncoder::encodeFixedLengthData(a1, &v25, 4uLL, 4u);
  v25 = (2 * v4);
  result = WebKit::HistoryEntryDataEncoder::encodeFixedLengthData(a1, &v25, 8uLL, 8u);
  v6 = *a2;
  if (*a2)
  {
    v7 = *(v6 + 8);
    v8 = *(v6 + 4) | (((*(v6 + 16) >> 2) & 1) << 32);
  }

  else
  {
    v7 = 0;
    v8 = 0x100000000;
  }

  v25 = v27;
  v26 = 32;
  v28 = 0;
  v29 = 0;
  v9 = v8;
  if ((v8 & 0x100000000) == 0)
  {
LABEL_20:
    v28 = v7;
    v29 = v9;
    WebKit::HistoryEntryDataEncoder::encodeFixedLengthData(a1, v7, 2 * v9, 2u);
    v23 = v25;
    if (v27 != v25 && v25 != 0)
    {
      v25 = 0;
      LODWORD(v26) = 0;
      WTF::fastFree(v23, v22);
    }

    return a1;
  }

  if (v8 <= 0x20uLL)
  {
    HIDWORD(v26) = v8;
    v11 = v27;
    v12 = v27;
LABEL_17:
    while (v12 != (v11 + 2 * v8))
    {
      v21 = *v7;
      v7 = (v7 + 1);
      *v12 = v21;
      v12 = (v12 + 2);
    }

    v7 = v25;
    v9 = HIDWORD(v26);
    goto LABEL_20;
  }

  if (!(v8 >> 31))
  {
    if (v8 <= 0x30uLL)
    {
      v10 = 48;
    }

    else
    {
      v10 = v8;
    }

    v11 = WTF::fastMalloc((2 * v10));
    v25 = v11;
    v26 = __PAIR64__(v8, v10);
    if (v8 < 0x40uLL)
    {
      v12 = v11;
    }

    else
    {
      v12 = (v11 + 2 * (v8 & 0xFFFFFFC0));
      v13 = 0uLL;
      v14 = v11;
      do
      {
        v30.val[0] = *v7;
        v15 = *(v7 + 1);
        v31.val[0] = *(v7 + 2);
        v16 = *(v7 + 3);
        v7 = (v7 + 64);
        v17 = v16;
        v31.val[1] = 0uLL;
        v32.val[0] = v15;
        v30.val[1] = 0uLL;
        v18 = v14;
        vst2q_s8(v18, v30);
        v18 += 32;
        v32.val[1] = 0uLL;
        vst2q_s8(v18, v32);
        v19 = v14 + 64;
        vst2q_s8(v19, v31);
        v20 = v14 + 96;
        vst2q_s8(v20, *(&v13 - 1));
        v14 += 128;
      }

      while (v14 != v12);
    }

    goto LABEL_17;
  }

  __break(0xC471u);
  return result;
}

unint64_t *WebKit::HistoryEntryDataEncoder::operator<<(unint64_t *a1, uint64_t a2)
{
  v5 = *(a2 + 12);
  WebKit::HistoryEntryDataEncoder::encodeFixedLengthData(a1, &v5, 8uLL, 8u);
  WebKit::HistoryEntryDataEncoder::encodeFixedLengthData(a1, *a2, *(a2 + 12), 1u);
  return a1;
}

unint64_t WebKit::decodeSessionHistoryEntries(const __CFArray *a1, uint64_t a2)
{
  Count = CFArrayGetCount(a1);
  if (Count >= 1)
  {
    v3 = 0;
    v4 = 0;
    v55 = a2;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(a1, v4);
      v6 = WTF::dynamic_cf_cast<__CFDictionary const*>(ValueAtIndex);
      if (!v6)
      {
        return v3;
      }

      v7 = v6;
      v56 = v3;
      CFRetain(v6);
      v8 = WTF::fastMalloc(0x198);
      v60 = WebKit::FrameState::FrameState(v8);
      Value = CFDictionaryGetValue(v7, @"SessionHistoryEntryTitle");
      v10 = WTF::dynamic_cf_cast<__CFString const*>(Value);
      if (!v10)
      {
        goto LABEL_64;
      }

      v11 = v10;
      CFRetain(v10);
      v12 = CFDictionaryGetValue(v7, @"SessionHistoryEntryURL");
      v13 = WTF::dynamic_cf_cast<__CFString const*>(v12);
      if (!v13)
      {
        goto LABEL_63;
      }

      v14 = v13;
      CFRetain(v13);
      v15 = CFDictionaryGetValue(v7, @"SessionHistoryEntryOriginalURL");
      v16 = WTF::dynamic_cf_cast<__CFString const*>(v15);
      if (!v16)
      {
        CFRelease(v14);
LABEL_63:
        CFRelease(v11);
LABEL_64:
        v54 = v60;
        v60 = 0;
        if (v54)
        {
          WTF::RefCounted<WebKit::FrameState>::deref(v54);
        }

        CFRelease(v7);
        return v56;
      }

      v17 = v16;
      CFRetain(v16);
      v18 = CFDictionaryGetValue(v7, @"SessionHistoryEntryShouldOpenExternalURLsPolicyKey");
      v19 = WTF::dynamic_cf_cast<__CFNumber const*>(v18);
      v20 = v19;
      if (v19)
      {
        CFRetain(v19);
        valuePtr = 0;
        CFNumberGetValue(v20, kCFNumberSInt64Type, &valuePtr);
        v21 = valuePtr;
      }

      else
      {
        v21 = 1;
      }

      v59 = v21;
      v22 = CFDictionaryGetValue(v7, @"SessionHistoryEntryData");
      v23 = v22;
      if (!v22)
      {
        goto LABEL_19;
      }

      v24 = CFGetTypeID(v22);
      if (v24 != CFDataGetTypeID())
      {
        break;
      }

      CFRetain(v23);
      BytePtr = CFDataGetBytePtr(v23);
      result = CFDataGetLength(v23);
      if ((result & 0x8000000000000000) != 0)
      {
        goto LABEL_69;
      }

      v63 = 1;
      v27 = (BytePtr + 7) & 0xFFFFFFFFFFFFFFF8;
      if (&BytePtr[result] < v27 || &BytePtr[result - v27] < 8)
      {
        v29 = 0;
        v30 = 0;
        v63 = 0;
      }

      else
      {
        v28 = result - (v27 - BytePtr);
        if (result < v27 - BytePtr || v28 <= 7)
        {
LABEL_68:
          __break(1u);
LABEL_69:
          __break(0xC471u);
          return result;
        }

        v29 = v28 - 8;
        v30 = v27 + 8;
      }

      v50 = ((v30 + 3) & 0xFFFFFFFFFFFFFFFCLL);
      if (v30 + v29 < v50 || v30 + v29 - v50 < 4)
      {
        goto LABEL_58;
      }

      v51 = v50 - v30;
      v52 = v29 >= v51;
      v53 = v29 - v51;
      if (!v52 || v53 <= 3)
      {
        goto LABEL_68;
      }

      valuePtr = (v50 + 1);
      v62 = v53 - 4;
      if (*v50 != 2 || (WebKit::decodeBackForwardTreeNode(&valuePtr, v8), (v63 & 1) == 0))
      {
LABEL_58:
        v44 = 0;
LABEL_59:
        CFRelease(v23);
        if (!v20)
        {
          goto LABEL_40;
        }

        goto LABEL_60;
      }

      v31 = 0;
      v44 = 0;
      if (v62)
      {
        goto LABEL_59;
      }

LABEL_20:
      MEMORY[0x19EB02040](&valuePtr, v11);
      v33 = valuePtr;
      valuePtr = 0;
      v34 = *(v8 + 184);
      *(v8 + 184) = v33;
      if (v34)
      {
        if (atomic_fetch_add_explicit(v34, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v34, v32);
        }

        v35 = valuePtr;
        valuePtr = 0;
        if (v35 && atomic_fetch_add_explicit(v35, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v35, v32);
        }
      }

      *(v8 + 192) = v59;
      MEMORY[0x19EB02040](&valuePtr, v14);
      v37 = valuePtr;
      valuePtr = 0;
      v38 = *(v8 + 8);
      *(v8 + 8) = v37;
      if (v38)
      {
        if (atomic_fetch_add_explicit(v38, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v38, v36);
        }

        v39 = valuePtr;
        valuePtr = 0;
        if (v39 && atomic_fetch_add_explicit(v39, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v39, v36);
        }
      }

      MEMORY[0x19EB02040](&valuePtr, v17);
      v41 = valuePtr;
      valuePtr = 0;
      v42 = *(v8 + 16);
      *(v8 + 16) = v41;
      if (v42)
      {
        if (atomic_fetch_add_explicit(v42, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v42, v40);
        }

        v43 = valuePtr;
        valuePtr = 0;
        if (v43 && atomic_fetch_add_explicit(v43, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v43, v40);
        }
      }

      v44 = 1;
      if ((v31 & 1) == 0)
      {
        goto LABEL_59;
      }

      if (!v20)
      {
        goto LABEL_40;
      }

LABEL_60:
      CFRelease(v20);
LABEL_40:
      CFRelease(v17);
      CFRelease(v14);
      CFRelease(v11);
      if (!v44)
      {
        goto LABEL_64;
      }

      v45 = *(v55 + 12);
      if (v45 == *(v55 + 8))
      {
        v46 = WTF::Vector<WTF::Ref<WebCore::SecurityOrigin,WTF::RawPtrTraits<WebCore::SecurityOrigin>,WTF::DefaultRefDerefTraits<WebCore::SecurityOrigin>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(v55, v45 + 1, &v60);
        v45 = *(v55 + 12);
        v47 = *v55;
        v48 = *v46;
        *v46 = 0;
      }

      else
      {
        v47 = *v55;
        v48 = v60;
        v60 = 0;
      }

      *(v47 + 8 * v45) = v48;
      *(v55 + 12) = v45 + 1;
      v49 = v60;
      v60 = 0;
      if (v49)
      {
        WTF::RefCounted<WebKit::FrameState>::deref(v49);
      }

      CFRelease(v7);
      v3 = ++v4 >= Count;
      if (Count == v4)
      {
        return v3;
      }
    }

    v23 = 0;
LABEL_19:
    v31 = 1;
    goto LABEL_20;
  }

  return 1;
}

uint64_t WebKit::FrameState::FrameState(WebKit::FrameState *this)
{
  *this = 1;
  *(this + 48) = 0;
  *(this + 56) = 0;
  *(this + 72) = 0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = 0;
  *(this + 104) = 1;
  *(this + 27) = 0;
  *(this + 112) = 0;
  *(this + 136) = 0;
  *(this + 23) = 0;
  *(this + 192) = 0;
  *(this + 25) = 0;
  *(this + 104) = 0;
  *(this + 216) = 0;
  *(this + 296) = 0;
  *(this + 364) = 0;
  *(this + 356) = 0;
  *(this + 176) = 0;
  *(this + 9) = 0u;
  *(this + 10) = 0u;
  *(this + 19) = 0u;
  *(this + 20) = 0u;
  *(this + 21) = 0u;
  *(this + 352) = 0;
  *(this + 376) = 0u;
  *(this + 392) = 0u;
  v2 = WTF::RunLoop::mainSingleton(this);
  if (WTF::RunLoop::isCurrent(v2))
  {
    return this;
  }

  result = 77;
  __break(0xC471u);
  return result;
}

WTF::StringImpl *WebKit::decodeBackForwardTreeNode(uint64_t a1, uint64_t a2)
{
  __dst = 0;
  WebKit::HistoryEntryDataDecoder::decodeFixedLengthData(a1, &__dst, 8uLL, 8);
  if (__dst)
  {
    for (i = 0; i < __dst; ++i)
    {
      v5 = WTF::fastMalloc(0x198);
      v73 = WebKit::FrameState::FrameState(v5);
      v6 = WebKit::HistoryEntryDataDecoder::operator>>(a1, (v73 + 16));
      v7 = WebKit::HistoryEntryDataDecoder::operator>>(v6, (v73 + 8));
      WebKit::decodeBackForwardTreeNode(v7, v73);
      if (*(a1 + 16) != 1)
      {
        result = v73;
        v73 = 0;
        if (result)
        {
          return WTF::RefCounted<WebKit::FrameState>::deref(result);
        }

        return result;
      }

      v8 = *(a2 + 388);
      if (v8 == *(a2 + 384))
      {
        v9 = WTF::Vector<WTF::Ref<WebCore::SecurityOrigin,WTF::RawPtrTraits<WebCore::SecurityOrigin>,WTF::DefaultRefDerefTraits<WebCore::SecurityOrigin>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(a2 + 376, v8 + 1, &v73);
        v8 = *(a2 + 388);
        v10 = *(a2 + 376);
        v11 = *v9;
        *v9 = 0;
      }

      else
      {
        v10 = *(a2 + 376);
        v11 = v73;
        v73 = 0;
      }

      *(v10 + 8 * v8) = v11;
      *(a2 + 388) = v8 + 1;
      v12 = v73;
      v73 = 0;
      if (v12)
      {
        WTF::RefCounted<WebKit::FrameState>::deref(v12);
      }
    }
  }

  *(a2 + 80) = 0;
  WebKit::HistoryEntryDataDecoder::decodeFixedLengthData(a1, (a2 + 80), 8uLL, 8);
  v71 = 0;
  WebKit::HistoryEntryDataDecoder::decodeFixedLengthData(a1, &v71, 8uLL, 8);
  v69 = 0;
  v70 = 0;
  if (v71)
  {
    for (j = 0; j < v71; ++j)
    {
      v73 = 0;
      WebKit::HistoryEntryDataDecoder::operator>>(a1, &v73);
      if (*(a1 + 16) != 1)
      {
        v61 = v73;
        v73 = 0;
        if (v61)
        {
          goto LABEL_107;
        }

        return WTF::Vector<WTF::AtomString,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v69, v14);
      }

      LODWORD(v15) = HIDWORD(v70);
      if (HIDWORD(v70) == v70)
      {
        v16 = WTF::Vector<WTF::Ref<WebCore::SecurityOrigin,WTF::RawPtrTraits<WebCore::SecurityOrigin>,WTF::DefaultRefDerefTraits<WebCore::SecurityOrigin>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(&v69, HIDWORD(v70) + 1, &v73);
        v15 = HIDWORD(v70);
        v17 = v69;
        v18 = *v16;
        *v16 = 0;
        *(v17 + 8 * v15) = v18;
      }

      else
      {
        v19 = v73;
        v73 = 0;
        *(v69 + 8 * HIDWORD(v70)) = v19;
      }

      HIDWORD(v70) = v15 + 1;
      v20 = v73;
      v73 = 0;
      if (v20 && atomic_fetch_add_explicit(v20, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v20, v14);
      }
    }
  }

  WTF::Vector<WTF::AtomString,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::operator=((a2 + 392), &v69);
  v68 = 0;
  v21 = WebKit::HistoryEntryDataDecoder::operator>>(a1, &v68);
  v67 = 0;
  WebKit::HistoryEntryDataDecoder::decodeFixedLengthData(v21, &v67, 1uLL, 1);
  if (v67 != 1)
  {
    goto LABEL_99;
  }

  v65 = 0;
  v66 = 0;
  v22 = v68;
  v68 = 0;
  v64 = v22;
  v81 = 0;
  WebKit::HistoryEntryDataDecoder::decodeFixedLengthData(a1, &v81, 1uLL, 1);
  v79 = 0;
  v80 = 0;
  v23 = WebKit::HistoryEntryDataDecoder::operator>>(a1, &v79);
  v78 = 0;
  WebKit::HistoryEntryDataDecoder::decodeFixedLengthData(v23, &v78, 8uLL, 8);
  if (!v78)
  {
LABEL_93:
    LOBYTE(v86) = 0;
    WebKit::HistoryEntryDataDecoder::decodeFixedLengthData(a1, &v86, 1uLL, 1);
    v73 = 0;
    WebKit::HistoryEntryDataDecoder::decodeFixedLengthData(a1, &v73, 8uLL, 8);
    goto LABEL_94;
  }

  v24 = 0;
  while (1)
  {
    v73 = 0;
    *&v74 = 0;
    v77 = 0;
    v90[0] = 0;
    WebKit::HistoryEntryDataDecoder::decodeFixedLengthData(a1, v90, 4uLL, 4);
    if (*(a1 + 16) != 1)
    {
      goto LABEL_73;
    }

    if (v90[0] == 2)
    {
      v86 = 0;
      WebKit::HistoryEntryDataDecoder::operator>>(a1, &v86);
      if (v77 == 255)
      {
        goto LABEL_63;
      }

      if (v77 != 2)
      {
        v32 = v73;
        if (v77)
        {
          v73 = 0;
          if (v32 && atomic_fetch_add_explicit(v32, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v32, v25);
          }
        }

        else if (v73)
        {
          v73 = 0;
          LODWORD(v74) = 0;
          WTF::fastFree(v32, v25);
        }

LABEL_63:
        v73 = v86;
        v77 = 2;
        goto LABEL_73;
      }

      v31 = v73;
      v73 = v86;
      if (!v31)
      {
        goto LABEL_73;
      }

LABEL_71:
      if (atomic_fetch_add_explicit(v31, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v31, v25);
      }

      goto LABEL_73;
    }

    if (v90[0] != 1)
    {
      if (v90[0])
      {
        goto LABEL_73;
      }

      v86 = 0;
      *&v87 = 0;
      WebKit::HistoryEntryDataDecoder::operator>>(a1, &v86);
      if (v77 == 255)
      {
        goto LABEL_56;
      }

      if (v77)
      {
        v33 = v73;
        v73 = 0;
        if (v33 && atomic_fetch_add_explicit(v33, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v33, v25);
        }

LABEL_56:
        v73 = v86;
        *&v74 = v87;
        v77 = 0;
        goto LABEL_73;
      }

      v26 = v73;
      if (v73)
      {
        v73 = 0;
        LODWORD(v74) = 0;
        WTF::fastFree(v26, v25);
      }

      v73 = v86;
      *&v74 = v87;
      goto LABEL_73;
    }

    v86 = 0;
    BYTE8(v87) = 0;
    LOBYTE(v88) = 0;
    BYTE8(v88) = 0;
    v89 = 0;
    v27 = WebKit::HistoryEntryDataDecoder::operator>>(a1, &v86);
    v85 = 0;
    v28 = WebKit::HistoryEntryDataDecoder::operator>>(v27, &v85);
    v84 = 0;
    WebKit::HistoryEntryDataDecoder::decodeFixedLengthData(v28, &v84, 1uLL, 1);
    *&v87 = 0;
    WebKit::HistoryEntryDataDecoder::decodeFixedLengthData(a1, &v87, 8uLL, 8);
    if ((v87 & 0x8000000000000000) != 0)
    {
      *a1 = 0;
      *(a1 + 8) = 0;
      *(a1 + 16) = 0;
      goto LABEL_67;
    }

    v83 = 0;
    WebKit::HistoryEntryDataDecoder::decodeFixedLengthData(a1, &v83, 8uLL, 8);
    if (v83 != -1)
    {
      if (v83 < v87)
      {
        goto LABEL_67;
      }

      *(&v87 + 1) = v83;
      LOBYTE(v88) = 1;
    }

    v82 = 0;
    WebKit::HistoryEntryDataDecoder::decodeFixedLengthData(a1, &v82, 8uLL, 8);
    if ((v89 & 1) == 0)
    {
      v89 = 1;
    }

    *(&v88 + 1) = v82;
    if (v77 == 255)
    {
      goto LABEL_66;
    }

    if (v77 != 1)
    {
      v34 = v73;
      if (v77)
      {
        v73 = 0;
        if (v34 && atomic_fetch_add_explicit(v34, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v34, v25);
        }
      }

      else if (v73)
      {
        v73 = 0;
        LODWORD(v74) = 0;
        WTF::fastFree(v34, v25);
      }

LABEL_66:
      v35 = v86;
      v86 = 0;
      v73 = v35;
      v74 = v87;
      v75 = v88;
      v76 = v89;
      v77 = 1;
      goto LABEL_67;
    }

    v29 = v86;
    v86 = 0;
    v30 = v73;
    v73 = v29;
    if (v30 && atomic_fetch_add_explicit(v30, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v30, v25);
    }

    v74 = v87;
    v75 = v88;
    v76 = v89;
LABEL_67:
    v36 = v85;
    if (v85 && atomic_fetch_add_explicit(v85, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v36, v25);
    }

    v31 = v86;
    v86 = 0;
    if (v31)
    {
      goto LABEL_71;
    }

LABEL_73:
    if (*(a1 + 16) != 1)
    {
      break;
    }

    if (HIDWORD(v66) != v66)
    {
      v38 = v65 + 56 * HIDWORD(v66);
      *v38 = 0;
      *(v38 + 48) = -1;
      v37 = v77;
      if (v77 > 1u)
      {
        if (v77 == 2)
        {
          v40 = v73;
          v73 = 0;
          *v38 = v40;
          goto LABEL_82;
        }
      }

      else
      {
        if (v77)
        {
          v41 = v73;
          v73 = 0;
          *v38 = v41;
          v42 = v74;
          v43 = v75;
          *(v38 + 40) = v76;
          *(v38 + 24) = v43;
          *(v38 + 8) = v42;
        }

        else
        {
          *v38 = 0;
          *(v38 + 8) = 0;
          v39 = v73;
          v73 = 0;
          *v38 = v39;
          LODWORD(v39) = v74;
          LODWORD(v74) = 0;
          *(v38 + 8) = v39;
          LODWORD(v39) = DWORD1(v74);
          DWORD1(v74) = 0;
          *(v38 + 12) = v39;
        }

LABEL_82:
        v37 = v77;
        *(v38 + 48) = v77;
      }

      ++HIDWORD(v66);
      goto LABEL_84;
    }

    WTF::Vector<WebKit::HTTPBody::Element,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebKit::HTTPBody::Element>(&v65, &v73);
    v37 = v77;
LABEL_84:
    if (v37 != 255)
    {
      v44 = v73;
      if (v37 == 2 || v37 == 1)
      {
        v73 = 0;
        if (v44 && atomic_fetch_add_explicit(v44, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v44, v25);
        }
      }

      else if (v73)
      {
        v73 = 0;
        LODWORD(v74) = 0;
        WTF::fastFree(v44, v25);
      }
    }

    if (++v24 >= v78)
    {
      goto LABEL_93;
    }
  }

  if (v77 != 255)
  {
    v63 = v73;
    if (v77 == 2 || v77 == 1)
    {
      v73 = 0;
      if (v63 && atomic_fetch_add_explicit(v63, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v63, v25);
      }
    }

    else if (v73)
    {
      v73 = 0;
      LODWORD(v74) = 0;
      WTF::fastFree(v63, v25);
    }
  }

LABEL_94:
  v45 = v79;
  if (v79)
  {
    v79 = 0;
    LODWORD(v80) = 0;
    WTF::fastFree(v45, v25);
  }

  std::optional<WebKit::HTTPBody>::operator=[abi:sn200100]<WebKit::HTTPBody,void>(a2 + 112, &v64);
  WTF::Vector<WebKit::HTTPBody::Element,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v65, v46);
  v48 = v64;
  v64 = 0;
  if (v48 && atomic_fetch_add_explicit(v48, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v48, v47);
  }

LABEL_99:
  *(a2 + 88) = 0;
  WebKit::HistoryEntryDataDecoder::decodeFixedLengthData(a1, (a2 + 88), 8uLL, 8);
  v49 = WebKit::HistoryEntryDataDecoder::operator>>(a1, (a2 + 24));
  LODWORD(v85) = 0;
  WebKit::HistoryEntryDataDecoder::decodeFixedLengthData(v49, &v85, 4uLL, 4);
  LODWORD(v83) = 0;
  WebKit::HistoryEntryDataDecoder::decodeFixedLengthData(a1, &v83, 4uLL, 4);
  v50 = v85 | (v83 << 32);
  *(a2 + 108) = 0;
  *(a2 + 96) = v50;
  WebKit::HistoryEntryDataDecoder::decodeFixedLengthData(a1, (a2 + 108), 4uLL, 4);
  LOBYTE(v82) = 0;
  WebKit::HistoryEntryDataDecoder::decodeFixedLengthData(a1, &v82, 1uLL, 1);
  if (v82 == 1)
  {
    v73 = 0;
    *&v74 = 0;
    WebKit::HistoryEntryDataDecoder::operator>>(a1, &v73);
    std::optional<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>::operator=[abi:sn200100]<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,void>(a2 + 56, &v73);
    v52 = v73;
    if (v73)
    {
      v73 = 0;
      LODWORD(v74) = 0;
      WTF::fastFree(v52, v51);
    }
  }

  v53 = WebKit::HistoryEntryDataDecoder::operator>>(a1, (a2 + 32));
  *(a2 + 304) = 0;
  *(a2 + 312) = 0;
  LODWORD(v73) = 0;
  WebKit::HistoryEntryDataDecoder::decodeFixedLengthData(v53, &v73, 4uLL, 4);
  LODWORD(v86) = 0;
  WebKit::HistoryEntryDataDecoder::decodeFixedLengthData(a1, &v86, 4uLL, 4);
  LODWORD(v64) = 0;
  WebKit::HistoryEntryDataDecoder::decodeFixedLengthData(a1, &v64, 4uLL, 4);
  LODWORD(v79) = 0;
  WebKit::HistoryEntryDataDecoder::decodeFixedLengthData(a1, &v79, 4uLL, 4);
  v54 = v86;
  v55 = v64;
  v56 = v79;
  *(a2 + 304) = v73;
  *(a2 + 308) = v54;
  *(a2 + 312) = v55;
  *(a2 + 316) = v56;
  *(a2 + 320) = 0;
  *(a2 + 328) = 0;
  LODWORD(v73) = 0;
  WebKit::HistoryEntryDataDecoder::decodeFixedLengthData(a1, &v73, 4uLL, 4);
  LODWORD(v86) = 0;
  WebKit::HistoryEntryDataDecoder::decodeFixedLengthData(a1, &v86, 4uLL, 4);
  LODWORD(v64) = 0;
  WebKit::HistoryEntryDataDecoder::decodeFixedLengthData(a1, &v64, 4uLL, 4);
  LODWORD(v79) = 0;
  WebKit::HistoryEntryDataDecoder::decodeFixedLengthData(a1, &v79, 4uLL, 4);
  v57 = v86;
  v58 = v64;
  v59 = v79;
  *(a2 + 320) = v73;
  *(a2 + 324) = v57;
  *(a2 + 328) = v58;
  *(a2 + 332) = v59;
  *(a2 + 336) = 0;
  LODWORD(v73) = 0;
  WebKit::HistoryEntryDataDecoder::decodeFixedLengthData(a1, &v73, 4uLL, 4);
  LODWORD(v86) = 0;
  WebKit::HistoryEntryDataDecoder::decodeFixedLengthData(a1, &v86, 4uLL, 4);
  v60 = v86;
  *(a2 + 336) = v73;
  *(a2 + 340) = v60;
  *(a2 + 344) = 0;
  LODWORD(v73) = 0;
  WebKit::HistoryEntryDataDecoder::decodeFixedLengthData(a1, &v73, 4uLL, 4);
  LODWORD(v86) = 0;
  WebKit::HistoryEntryDataDecoder::decodeFixedLengthData(a1, &v86, 4uLL, 4);
  *(a2 + 344) = v73 | (v86 << 32);
  *(a2 + 352) = 0;
  WebKit::HistoryEntryDataDecoder::decodeFixedLengthData(a1, (a2 + 352), 1uLL, 1);
  v61 = v68;
  if (v68)
  {
LABEL_107:
    if (atomic_fetch_add_explicit(v61, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v61, v14);
    }
  }

  return WTF::Vector<WTF::AtomString,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v69, v14);
}

void *WebKit::HistoryEntryDataDecoder::decodeFixedLengthData(void *result, void *__dst, size_t a3, int a4)
{
  v4 = result[1];
  v5 = ((*result + (a4 - 1)) & ~(a4 - 1));
  v6 = *result + v4;
  v8 = v6 >= v5;
  v7 = v6 - v5;
  v8 = v8 && v7 >= a3;
  if (v8)
  {
    v9 = &v5[-*result];
    v8 = v4 >= v9;
    v10 = v4 - v9;
    if (v8 && (v8 = v10 >= a3, v11 = v10 - a3, v8))
    {
      *result = &v5[a3];
      result[1] = v11;
      return memcpy(__dst, v5, a3);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    *result = 0;
    result[1] = 0;
    *(result + 16) = 0;
  }

  return result;
}

uint64_t WebKit::HistoryEntryDataDecoder::operator>>(uint64_t a1, WTF::StringImpl *a2)
{
  v4 = *a2;
  *a2 = 0;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, a2);
  }

  __dst = 0;
  WebKit::HistoryEntryDataDecoder::decodeFixedLengthData(a1, &__dst, 4uLL, 4);
  if (__dst == -1)
  {
    v10 = *a2;
    *a2 = 0;
    if (!v10 || atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) != 2)
    {
      return a1;
    }

LABEL_14:
    WTF::StringImpl::destroy(v10, v5);
    return a1;
  }

  v14 = 0;
  WebKit::HistoryEntryDataDecoder::decodeFixedLengthData(a1, &v14, 8uLL, 8);
  if ((v14 & 1) != 0 || v14 >> 1 != __dst || ((v6 = (*a1 + 1) & 0xFFFFFFFFFFFFFFFELL, v7 = *a1 + *(a1 + 8), v9 = v7 >= v6, v8 = v7 - v6, v9) ? (v9 = v8 >= v14) : (v9 = 0), !v9))
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    return a1;
  }

  WTF::StringImpl::createUninitialized();
  v11 = v16;
  WebKit::HistoryEntryDataDecoder::decodeFixedLengthData(a1, 0, 0, 2);
  if (v11)
  {
    atomic_fetch_add_explicit(v11, 2u, memory_order_relaxed);
  }

  v12 = *a2;
  *a2 = v11;
  if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v12, v5);
  }

  if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    v10 = v11;
    goto LABEL_14;
  }

  return a1;
}

uint64_t WebKit::HistoryEntryDataDecoder::operator>>(uint64_t a1, WTF::StringImpl **a2)
{
  v9 = 0;
  WebKit::HistoryEntryDataDecoder::operator>>(a1, &v9);
  v5 = 0;
  v6 = v9;
  if (v9)
  {
    if ((*(v9 + 16) & 0x10) != 0)
    {
      atomic_fetch_add_explicit(v9, 2u, memory_order_relaxed);
      v5 = v6;
    }

    else
    {
      WTF::AtomStringImpl::addSlowCase(&v10, v9, v4);
      v5 = v10;
    }
  }

  v7 = *a2;
  *a2 = v5;
  if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v7, v4);
    if (!v6)
    {
      return a1;
    }
  }

  else if (!v6)
  {
    return a1;
  }

  if (atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v6, v4);
  }

  return a1;
}

uint64_t std::optional<WebKit::HTTPBody>::operator=[abi:sn200100]<WebKit::HTTPBody,void>(uint64_t a1, WTF::StringImpl *a2)
{
  v4 = *(a1 + 24);
  v5 = *a2;
  *a2 = 0;
  if (v4 == 1)
  {
    v6 = *a1;
    *a1 = v5;
    if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v6, a2);
    }

    v7 = *(a1 + 20);
    if (v7)
    {
      WTF::VectorTypeOperations<WebKit::HTTPBody::Element>::destruct(*(a1 + 8), (*(a1 + 8) + 56 * v7));
    }

    WTF::VectorBuffer<WebCore::HTTPHeaderField,0ul,WTF::FastMalloc>::adopt(a1 + 8, a2 + 2);
  }

  else
  {
    *a1 = v5;
    *(a1 + 16) = 0;
    *(a1 + 8) = 0;
    WTF::VectorBuffer<WebCore::HTTPHeaderField,0ul,WTF::FastMalloc>::adopt(a1 + 8, a2 + 2);
    *(a1 + 24) = 1;
  }

  return a1;
}

uint64_t WebKit::HistoryEntryDataDecoder::operator>>(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  if (*a2)
  {
    *a2 = 0;
    *(a2 + 8) = 0;
    WTF::fastFree(v4, a2);
  }

  *a2 = 0;
  *(a2 + 8) = 0;
  __n = 0;
  result = WebKit::HistoryEntryDataDecoder::decodeFixedLengthData(a1, &__n, 8uLL, 8);
  v6 = *(a1 + 8);
  if ((v6 & 0x8000000000000000) != 0 || (v7 = __n, v8 = v6 >= __n, v9 = v6 - __n, !v8))
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    return a1;
  }

  v10 = *a1;
  *a1 += __n;
  *(a1 + 8) = v9;
  if (!v7)
  {
    return a1;
  }

  v12 = *(a2 + 8);
  v11 = *(a2 + 12);
  v13 = v7 + v11;
  if (v7 + v11 > v12)
  {
    v14 = v12 + (v12 >> 1);
    if (v14 <= v12 + 1)
    {
      v14 = v12 + 1;
    }

    if (v14 <= v13)
    {
      v14 = v13;
    }

    if (v14 <= 0x10)
    {
      v15 = 16;
    }

    else
    {
      v15 = v14;
    }

    result = WTF::Vector<WebCore::AuthenticatorTransport,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a2, v15);
    v11 = *(a2 + 12);
  }

  if (v13 >= v11)
  {
    memcpy((*a2 + v11), v10, v7);
    *(a2 + 12) = v13;
    return a1;
  }

  __break(0xC471u);
  return result;
}

uint64_t std::optional<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>::operator=[abi:sn200100]<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,void>(uint64_t a1, uint64_t *a2)
{
  if (*(a1 + 16) == 1)
  {
    WTF::VectorBuffer<unsigned char,0ul,WTF::FastMalloc>::adopt(a1, a2);
  }

  else
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    WTF::VectorBuffer<unsigned char,0ul,WTF::FastMalloc>::adopt(a1, a2);
    *(a1 + 16) = 1;
  }

  return a1;
}

WTF::StringImpl *WTF::VectorTypeOperations<WebKit::HTTPBody::Element>::destruct(WTF::StringImpl *result, WTF::StringImpl *a2)
{
  if (result != a2)
  {
    v3 = result;
    do
    {
      v4 = *(v3 + 48);
      if (v4 != 255)
      {
        result = *v3;
        if (v4 == 2 || v4 == 1)
        {
          *v3 = 0;
          if (result)
          {
            if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              result = WTF::StringImpl::destroy(result, a2);
            }
          }
        }

        else if (result)
        {
          *v3 = 0;
          *(v3 + 2) = 0;
          result = WTF::fastFree(result, a2);
        }
      }

      *(v3 + 48) = -1;
      v3 = (v3 + 56);
    }

    while (v3 != a2);
  }

  return result;
}

uint64_t mpark::variant<decltype(nullptr),WTF::Vector<WTF::RetainPtr<__SecCertificate *>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::RetainPtr<void const*>>::variant(uint64_t a1, uint64_t *a2)
{
  *a1 = 0;
  *(a1 + 16) = -1;
  LODWORD(v4) = *(a2 + 16);
  if (v4 <= 1)
  {
    if (*(a2 + 16))
    {
      *a1 = 0;
      *(a1 + 8) = 0;
      WTF::VectorBuffer<WebCore::HTTPHeaderField,0ul,WTF::FastMalloc>::adopt(a1, a2);
      LOBYTE(v4) = *(a2 + 16);
    }

    else
    {
      *a1 = 0;
    }

    goto LABEL_7;
  }

  if (v4 == 2)
  {
    v4 = *a2;
    *a2 = 0;
    *a1 = v4;
    LOBYTE(v4) = 2;
LABEL_7:
    *(a1 + 16) = v4;
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::encodeLegacySessionState(WebKit::SessionState const&)::$_0,void>::~CallableWrapper(uint64_t a1, void *a2)
{
  *a1 = &unk_1F1121DD8;
  WTF::fastFree(*(a1 + 8), a2);
  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::encodeLegacySessionState(WebKit::SessionState const&)::$_0,void>::~CallableWrapper(WTF **a1, void *a2)
{
  *a1 = &unk_1F1121DD8;
  WTF::fastFree(a1[1], a2);

  return WTF::fastFree(a1, v3);
}

uint64_t WebKit::WebProcess::addSupplementWithoutRefCountedCheck<WebKit::WebNotificationManager>(uint64_t *a1, void *a2)
{
  v7[0] = "WebNotificationManager";
  v7[1] = 23;
  v3 = WebKit::WebNotificationManager::operator new(a1, a2);
  v6 = WebKit::WebNotificationManager::WebNotificationManager(v3, a1);
  WTF::HashMap<WTF::ASCIILiteral,std::unique_ptr<WebKit::WebProcessSupplement>,WTF::DefaultHash<WTF::ASCIILiteral>,WTF::HashTraits<WTF::ASCIILiteral>,WTF::HashTraits<std::unique_ptr<WebKit::WebProcessSupplement>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<std::unique_ptr<WebKit::WebProcessSupplement>>(&v5, a1 + 39, v7, &v6);
  result = v6;
  if (v6)
  {
    return (*(*v6 + 8))(v6);
  }

  return result;
}

uint64_t WebKit::WebProcess::addSupplementWithoutRefCountedCheck<WebKit::UserMediaCaptureManager>(uint64_t *a1)
{
  v7[0] = WebKit::UserMediaCaptureManager::supplementName(a1);
  v7[1] = v2;
  v3 = WebKit::UserMediaCaptureManager::operator new(v7[0], v2);
  v6 = WebKit::UserMediaCaptureManager::UserMediaCaptureManager(v3, a1);
  WTF::HashMap<WTF::ASCIILiteral,std::unique_ptr<WebKit::WebProcessSupplement>,WTF::DefaultHash<WTF::ASCIILiteral>,WTF::HashTraits<WTF::ASCIILiteral>,WTF::HashTraits<std::unique_ptr<WebKit::WebProcessSupplement>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<std::unique_ptr<WebKit::WebProcessSupplement>>(&v5, a1 + 39, v7, &v6);
  result = v6;
  if (v6)
  {
    return (*(*v6 + 8))(v6);
  }

  return result;
}

WebKit::RemoteMediaEngineConfigurationFactory *WebKit::WebProcess::addSupplementWithoutRefCountedCheck<WebKit::RemoteMediaEngineConfigurationFactory>(uint64_t *a1)
{
  v7[0] = WebKit::RemoteMediaEngineConfigurationFactory::supplementName(a1);
  v7[1] = v2;
  v3 = WebKit::RemoteMediaEngineConfigurationFactory::operator new(v7[0], v2);
  v6 = WebKit::RemoteMediaEngineConfigurationFactory::RemoteMediaEngineConfigurationFactory(v3, a1);
  WTF::HashMap<WTF::ASCIILiteral,std::unique_ptr<WebKit::WebProcessSupplement>,WTF::DefaultHash<WTF::ASCIILiteral>,WTF::HashTraits<WTF::ASCIILiteral>,WTF::HashTraits<std::unique_ptr<WebKit::WebProcessSupplement>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<std::unique_ptr<WebKit::WebProcessSupplement>>(&v5, a1 + 39, v7, &v6);
  result = v6;
  if (v6)
  {
    return (*(*v6 + 8))(v6);
  }

  return result;
}

void WebKit::WebProcess::~WebProcess(WebKit::WebProcess *this, WTF::StringImpl *a2)
{
  v3 = *(this + 109);
  if (v3)
  {
    WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,Inspector::SupplementalBackendDispatcher *>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,Inspector::SupplementalBackendDispatcher *>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,Inspector::SupplementalBackendDispatcher *,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<Inspector::SupplementalBackendDispatcher *>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v3, a2);
  }

  std::unique_ptr<WebKit::ScriptTrackingPrivacyFilter>::reset[abi:sn200100](this + 107, 0);
  v5 = *(this + 106);
  if (v5)
  {
    WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v5, v4);
  }

  v6 = *(this + 105);
  if (v6)
  {
    v7 = *(v6 - 4);
    if (v7)
    {
      v8 = (v6 + 16);
      do
      {
        if (*(v8 - 2) != -1)
        {
          v9 = *v8;
          *v8 = 0;
          if (v9)
          {
            WTF::ThreadSafeWeakPtrControlBlock::weakDeref(v9, v4);
          }
        }

        v8 += 3;
        --v7;
      }

      while (v7);
    }

    WTF::fastFree((v6 - 16), v4);
  }

  v10 = *(this + 103);
  *(this + 103) = 0;
  if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v10, v4);
  }

  std::unique_ptr<WebKit::SpeechRecognitionRealtimeMediaSourceManager>::reset[abi:sn200100](this + 101, 0);
  v12 = *(this + 99);
  *(this + 99) = 0;
  if (v12)
  {
    CFRelease(v12);
  }

  v13 = *(this + 93);
  if (v13)
  {
    WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,Inspector::SupplementalBackendDispatcher *>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,Inspector::SupplementalBackendDispatcher *>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,Inspector::SupplementalBackendDispatcher *,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<Inspector::SupplementalBackendDispatcher *>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v13, v11);
  }

  WTF::Vector<WTF::RefPtr<WebKit::SandboxExtension,WTF::RawPtrTraits<WebKit::SandboxExtension>,WTF::DefaultRefDerefTraits<WebKit::SandboxExtension>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(this + 728, v11);
  v15 = *(this + 87);
  if (v15)
  {
    v16 = *(v15 - 4);
    if (v16)
    {
      v17 = (v15 + 8);
      do
      {
        if (*(v17 - 1) != -1)
        {
          v18 = *v17;
          *v17 = 0;
          if (v18)
          {
            if (atomic_fetch_add(v18, 0xFFFFFFFF) == 1)
            {
              atomic_store(1u, v18);
              WTF::fastFree(v18, v14);
            }
          }
        }

        v17 += 2;
        --v16;
      }

      while (v16);
    }

    WTF::fastFree((v15 - 16), v14);
  }

  v19 = *(this + 86);
  if (v19)
  {
    WTF::fastFree((v19 - 16), v14);
  }

  v20 = *(this + 84);
  *(this + 84) = 0;
  if (v20)
  {
    WTF::RefCounted<WebKit::SandboxExtension>::deref(v20);
  }

  v21 = *(this + 83);
  if (v21)
  {
    v22 = *(v21 - 4);
    if (v22)
    {
      v23 = *(this + 83);
      do
      {
        v24 = *v23;
        if (*v23 != -1)
        {
          v25 = v23[1];
          v23[1] = 0;
          if (v25)
          {
            WTF::RefCounted<WebKit::SandboxExtension>::deref(v25);
            v24 = *v23;
          }

          *v23 = 0;
          if (v24 && atomic_fetch_add_explicit(v24, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v24, v14);
          }
        }

        v23 += 2;
        --v22;
      }

      while (v22);
    }

    WTF::fastFree((v21 - 16), v14);
  }

  v26 = *(this + 80);
  if (v26)
  {
    v27 = *(v26 - 4);
    if (v27)
    {
      v28 = *(this + 80);
      do
      {
        v29 = *v28;
        if (*v28 != -1)
        {
          *v28 = 0;
          if (v29)
          {
            if (atomic_fetch_add(v29, 0xFFFFFFFF) == 1)
            {
              atomic_store(1u, v29);
              WTF::fastFree(v29, v14);
            }
          }
        }

        v28 += 3;
        --v27;
      }

      while (v27);
    }

    WTF::fastFree((v26 - 16), v14);
  }

  if (*(this + 624) == 1)
  {
    *(this + 70) = &unk_1F1122B58;
    v30 = *(this + 76);
    *(this + 76) = 0;
    if (v30)
    {
      (*(*v30 + 8))(v30);
    }

    WebCore::TimerBase::~TimerBase((this + 560));
  }

  v31 = *(this + 69);
  if (v31)
  {
    WTF::fastFree((v31 - 16), v14);
  }

  v32 = *(this + 67);
  *(this + 67) = 0;
  if (v32 && atomic_fetch_add(v32 + 8, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v32 + 8);
    (*(*v32 + 24))(v32);
  }

  *(this + 60) = &unk_1F10E6DC8;
  v33 = *(this + 65);
  *(this + 65) = 0;
  if (v33)
  {
    (*(*v33 + 8))(v33);
  }

  WTF::RunLoop::TimerBase::~TimerBase((this + 480));
  v35 = *(this + 58);
  *(this + 58) = 0;
  if (v35)
  {
    (*(*v35 + 8))(v35);
  }

  v36 = *(this + 57);
  if (v36)
  {
    WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v36, v34);
  }

  std::unique_ptr<WebKit::LibWebRTCNetwork>::reset[abi:sn200100](this + 56, 0);
  v38 = *(this + 55);
  if (v38)
  {
    WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::IDBDatabaseConnectionIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::IDBDatabaseConnectionIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebCore::IDBServer::UniqueIDBDatabaseConnection,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::IDBDatabaseConnectionIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebCore::IDBServer::UniqueIDBDatabaseConnection,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::IDBDatabaseConnectionIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::IDBDatabaseConnectionIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebCore::IDBServer::UniqueIDBDatabaseConnection,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::IDBDatabaseConnectionIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::IDBDatabaseConnectionIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakPtr<WebCore::IDBServer::UniqueIDBDatabaseConnection,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::IDBDatabaseConnectionIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::deallocateTable(v38, v37);
  }

  v39 = *(this + 54);
  *(this + 54) = 0;
  if (v39)
  {
    if (v39[4] == 1)
    {
      (*(*v39 + 120))(v39);
    }

    else
    {
      --v39[4];
    }
  }

  v40 = *(this + 53);
  *(this + 53) = 0;
  if (v40)
  {
    if (v40[2] == 1)
    {
      (*(*v40 + 8))(v40);
    }

    else
    {
      --v40[2];
    }
  }

  v41 = *(this + 52);
  *(this + 52) = 0;
  if (v41)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::RemoteImageDecoderAVFManager,(WTF::DestructionThread)0>::deref((v41 + 24), v37);
  }

  v42 = *(this + 51);
  *(this + 51) = 0;
  if (v42)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::RemoteMediaPlayerManager,(WTF::DestructionThread)0>::deref((v42 + 8), v37);
  }

  v43 = *(this + 50);
  *(this + 50) = 0;
  if (v43)
  {
    if (v43[2] == 1)
    {
      (*(*v43 + 8))(v43);
    }

    else
    {
      --v43[2];
    }
  }

  v44 = *(this + 49);
  *(this + 49) = 0;
  if (v44)
  {
    if (v44[4] == 1)
    {
      (*(*v44 + 16))(v44);
    }

    else
    {
      --v44[4];
    }
  }

  std::unique_ptr<WebKit::AudioMediaStreamTrackRendererInternalUnitManager>::reset[abi:sn200100](this + 48, 0);
  v46 = *(this + 46);
  *(this + 46) = 0;
  if (v46)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref((v46 + 8), v45);
  }

  v47 = *(this + 45);
  *(this + 45) = 0;
  if (v47)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::GPUProcessConnection,(WTF::DestructionThread)0>::deref((v47 + 24), v45);
  }

  v48 = *(this + 44);
  *(this + 44) = 0;
  if (v48 && atomic_fetch_add(v48 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v48 + 2);
    (*(*v48 + 8))(v48);
  }

  v49 = *(this + 43);
  *(this + 43) = 0;
  if (v49)
  {
    WebKit::WebLoaderStrategy::~WebLoaderStrategy(v49, v45);
    bmalloc::api::tzoneFree(v50, v51);
  }

  v52 = *(this + 42);
  *(this + 42) = 0;
  if (v52)
  {
    if (v52[5] == 1)
    {
      (*(*v52 + 24))(v52);
    }

    else
    {
      --v52[5];
    }
  }

  v53 = *(this + 41);
  *(this + 41) = 0;
  if (v53 && atomic_fetch_add_explicit(v53, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v53, v45);
  }

  v54 = *(this + 39);
  if (v54)
  {
    v55 = *(v54 - 4);
    if (v55)
    {
      v56 = (v54 + 16);
      do
      {
        if (*(v56 - 2) != -1)
        {
          v57 = *v56;
          *v56 = 0;
          if (v57)
          {
            (*(*v57 + 8))(v57);
          }
        }

        v56 += 3;
        --v55;
      }

      while (v55);
    }

    WTF::fastFree((v54 - 16), v45);
  }

  v58 = *(this + 38);
  if (v58)
  {
    v59 = *(v58 - 4);
    if (v59)
    {
      v60 = (v58 + 8);
      do
      {
        if (*(v60 - 1) != -1)
        {
          v61 = *v60;
          *v60 = 0;
          if (v61)
          {
            if (atomic_fetch_add(v61, 0xFFFFFFFF) == 1)
            {
              atomic_store(1u, v61);
              WTF::fastFree(v61, v45);
            }
          }
        }

        v60 += 2;
        --v59;
      }

      while (v59);
    }

    WTF::fastFree((v58 - 16), v45);
  }

  WebKit::WebInspectorInterruptDispatcher::~WebInspectorInterruptDispatcher((this + 264), v45);
  WebKit::ViewUpdateDispatcher::~ViewUpdateDispatcher((this + 216), v62);
  WebKit::EventDispatcher::~EventDispatcher((this + 160), v63);
  v65 = *(this + 19);
  *(this + 19) = 0;
  if (v65)
  {
    CFRelease(*(v65 + 8));
  }

  v66 = *(this + 18);
  if (v66)
  {
    v67 = *(v66 - 4);
    if (v67)
    {
      v68 = (v66 + 8);
      do
      {
        if (*(v68 - 1) != -1)
        {
          v69 = *v68;
          *v68 = 0;
          if (v69)
          {
            if (v69[2] == 1)
            {
              (*(*v69 + 8))(v69);
            }

            else
            {
              --v69[2];
            }
          }
        }

        v68 += 2;
        --v67;
      }

      while (v67);
    }

    WTF::fastFree((v66 - 16), v64);
  }

  v70 = *(this + 17);
  if (v70)
  {
    v71 = *(v70 - 4);
    if (v71)
    {
      v72 = (v70 + 8);
      do
      {
        if (*(v72 - 1) != -1)
        {
          v73 = *v72;
          *v72 = 0;
          if (v73)
          {
            CFRelease(*(v73 + 8));
          }
        }

        v72 += 2;
        --v71;
      }

      while (v71);
    }

    WTF::fastFree((v70 - 16), v64);
  }

  WebKit::AuxiliaryProcess::~AuxiliaryProcess(this);
}

void non-virtual thunk toWebKit::WebProcess::~WebProcess(WebKit::WebProcess *this, WTF::StringImpl *a2)
{
  WebKit::WebProcess::~WebProcess((this - 24), a2);
}

{
  WebKit::WebProcess::operator delete((this - 24), a2);
}

void WebKit::WebProcess::operator delete(WebKit::WebProcess *a1, WTF::StringImpl *a2)
{
  WebKit::WebProcess::~WebProcess(a1, a2);
  if (atomic_load(v2 + 4))
  {

    bzero(v2, 0x370uLL);
  }

  else
  {

    bmalloc::api::tzoneFree(v2, v3);
  }
}

void WTF::CompletionHandler<void ()(WebCore::ProcessIdentity)>::operator()(uint64_t *a1, const WTF::MachSendRight *a2)
{
  v2 = *a1;
  *a1 = 0;
  WTF::MachSendRight::MachSendRight(v3, a2);
  WTF::Function<void ()(WebCore::ProcessIdentity)>::operator()(v2, v3);
  WTF::MachSendRight::~MachSendRight(v3);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }
}

WebCore::NetworkStorageSession *WebKit::WebProcess::setWebsiteDataStoreParameters(WebKit::WebProcess *this, uint64_t a2)
{
  v4 = *a2;
  if ((*(this + 712) & 1) == 0)
  {
    *(this + 712) = 1;
  }

  *(this + 88) = v4;
  v5 = *(a2 + 8);
  if (v5 && *(v5 + 4))
  {
    WebCore::HTMLMediaElement::setMediaCacheDirectory((a2 + 8), a2);
  }

  v6 = WebKit::WebProcess::setTrackingPreventionEnabled(this, *(a2 + 88));
  *(this + 720) = *(a2 + 56);
  if (*(a2 + 88) == 1)
  {
    v7 = WebCore::ResourceLoadObserver::sharedIfExists(v6);
    if (!v7)
    {
      v20 = WTF::fastMalloc(0x70);
      Observer = WebKit::WebResourceLoadObserver::WebResourceLoadObserver(v20, *a2 < -1);
      v7 = WebCore::ResourceLoadObserver::setShared(Observer, v22);
    }

    v8 = WebCore::ResourceLoadObserver::shared(v7);
    v9 = (*(*v8 + 120))(v8, a2 + 64);
    if (*a2 >= -1)
    {
      v10 = WebCore::ResourceLoadObserver::shared(v9);
      v11 = WTF::fastMalloc(0x10);
      *v11 = &unk_1F11225F0;
      v23 = v11;
      (*(*v10 + 128))(v10, a2 + 72, &v23);
      v12 = v23;
      v23 = 0;
      if (v12)
      {
        (*(*v12 + 8))(v12);
      }
    }
  }

  WTF::String::operator=(this + 103, (a2 + 16));
  *(this + 104) = *(a2 + 32);
  v13 = *(this + 39);
  v14 = WTF::HashTable<WTF::ASCIILiteral,WTF::KeyValuePair<WTF::ASCIILiteral,std::unique_ptr<WebKit::NetworkProcessSupplement>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ASCIILiteral,std::unique_ptr<WebKit::NetworkProcessSupplement>>>,WTF::DefaultHash<WTF::ASCIILiteral>,WTF::HashMap<WTF::ASCIILiteral,std::unique_ptr<WebKit::NetworkProcessSupplement>,WTF::DefaultHash<WTF::ASCIILiteral>,WTF::HashTraits<WTF::ASCIILiteral>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkProcessSupplement>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ASCIILiteral>,WTF::FastMalloc>::begin(v13);
  v15 = v14;
  v17 = v16;
  if (v13)
  {
    v13 += 3 * *(v13 - 1);
  }

  if (v13 != v14)
  {
    do
    {
      (*(*v15[2] + 32))(v15[2], a2);
      do
      {
        v15 += 3;
        if (v15 == v17)
        {
          break;
        }
      }

      while (!v15[1] || *v15 == -1);
    }

    while (v15 != v13);
  }

  WebKit::WebProcess::platformSetWebsiteDataStoreParameters(this, a2);
  WebKit::WebProcess::ensureNetworkProcessConnection(this);
  return WebKit::WebCookieJar::setOptInCookiePartitioningEnabled(*(this + 54), *(a2 + 89));
}

uint64_t WebKit::WebProcess::setCacheModel(uint64_t result, WTF *a2)
{
  v2 = result;
  if (*(result + 296) != 1 || *(result + 297) != a2)
  {
    *(result + 296) = 1;
    *(result + 297) = a2;
    *v10 = 0;
    v9 = 0;
    v8 = 0;
    v7 = 0;
    v3 = WebKit::calculateMemoryCacheSizes(a2, &v10[1], v10, &v9, &v8, &v7);
    v4 = WebCore::MemoryCache::singleton(v3);
    v5 = WebCore::MemoryCache::setCapacities(v4);
    *(v4 + 2) = v8;
    v6 = WebCore::BackForwardCache::singleton(v5);
    WebCore::BackForwardCache::setMaxSize(v6);
    return WTF::isIntegralOrPointerType(v2);
  }

  return result;
}

uint64_t WebKit::WebProcess::setBackForwardCacheCapacity(WebKit::WebProcess *this)
{
  v1 = WebCore::BackForwardCache::singleton(this);

  return WebCore::BackForwardCache::setMaxSize(v1);
}

unsigned __int8 *WebKit::WebProcess::setMemoryCacheDisabled(WebKit::WebProcess *this, int a2)
{
  result = WebCore::MemoryCache::singleton(this);
  if (*result != a2)
  {

    return MEMORY[0x1EEE547E0]();
  }

  return result;
}

void WebKit::WebProcess::prewarmGlobally(WebKit::WebProcess *this)
{
  v1 = WTF::MemoryPressureHandler::singleton(this);
  v2 = atomic_load((v1 + 4));
  if (v2 == 2 || *(v1 + 7) == 1)
  {
    v3 = qword_1ED640F68;
    if (os_log_type_enabled(qword_1ED640F68, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&dword_19D52D000, v3, OS_LOG_TYPE_DEFAULT, "WebProcess::prewarmGlobally: Not prewarming because the system in under memory pressure", v4, 2u);
    }
  }

  else
  {

    MEMORY[0x1EEE558C8]();
  }
}

uint64_t WebKit::WebProcess::updateDomainsWithStorageAccessQuirks(uint64_t a1, WTF::StringImpl *a2, const WTF::StringImpl *a3)
{
  v4 = (a1 + 848);
  v5 = *(a1 + 848);
  if (v5)
  {
    *v4 = 0;
    WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v5, a2);
  }

  result = WTF::HashTable<WebCore::RegistrableDomain,WebCore::RegistrableDomain,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::begin(a2, a2, a3);
  v8 = result;
  v14[0] = result;
  v14[1] = v9;
  if (*a2)
  {
    v10 = *a2 + 8 * *(*a2 - 4);
  }

  else
  {
    v10 = 0;
  }

  if (v10 != result)
  {
    do
    {
      WTF::HashTable<WebCore::RegistrableDomain,WebCore::RegistrableDomain,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::add<(WTF::ShouldValidateKey)1>(v4, v8, v7, v13);
      v14[0] += 8;
      result = WTF::HashTableConstIterator<WTF::HashTable<WebCore::RegistrableDomain,WebCore::RegistrableDomain,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>,WebCore::RegistrableDomain,WebCore::RegistrableDomain,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>>::skipEmptyBuckets(v14, v11, v12);
      v8 = v14[0];
    }

    while (v14[0] != v10);
  }

  return result;
}

WebKit::ScriptTrackingPrivacyFilter *WebKit::WebProcess::updateScriptTrackingPrivacyFilter(WebKit::ScriptTrackingPrivacyFilter *result, _DWORD *a2)
{
  if (a2[3])
  {
    v3 = 0;
  }

  else
  {
    v3 = a2[7] == 0;
  }

  if (!v3 || a2[11] != 0 || a2[15] != 0)
  {
    v7 = result;
    v8 = WTF::fastMalloc(0x68);
    WebKit::ScriptTrackingPrivacyFilter::ScriptTrackingPrivacyFilter(v8, a2);

    return std::unique_ptr<WebKit::ScriptTrackingPrivacyFilter>::reset[abi:sn200100](v7 + 107, v8);
  }

  return result;
}

unsigned __int8 *WebKit::WebProcess::setTrackingPreventionEnabled(WebKit::WebProcess *this, WebCore::DeprecatedGlobalSettings *a2)
{
  result = WebCore::DeprecatedGlobalSettings::shared(this);
  if (result[19] != a2)
  {
    result = WebCore::DeprecatedGlobalSettings::setTrackingPreventionEnabled(a2);
    if (a2)
    {
      result = WebCore::ResourceLoadObserver::sharedIfExists(result);
      if (!result)
      {
        v5 = WTF::fastMalloc(0x70);
        v6 = *(this + 712) == 1 && *(this + 88) < -1;
        Observer = WebKit::WebResourceLoadObserver::WebResourceLoadObserver(v5, v6);

        return WebCore::ResourceLoadObserver::setShared(Observer, v8);
      }
    }
  }

  return result;
}

uint64_t WebKit::WebProcess::areAllPagesSuspended(WebKit::WebProcess *this)
{
  v2 = WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::begin(this + 17);
  v4 = *(this + 17);
  if (v4)
  {
    v5 = (v4 + 16 * *(v4 - 4));
  }

  else
  {
    v5 = 0;
  }

  if (v5 == v2)
  {
    return 1;
  }

  do
  {
    v6 = *(v2[1] + 1820);
    if (v6 != 1)
    {
      break;
    }

    do
    {
      v2 += 2;
    }

    while (v2 != v3 && (*v2 + 1) <= 1);
  }

  while (v2 != v5);
  return v6;
}

void *WebKit::WebProcess::updateIsWebTransportEnabled(WebKit::WebProcess *this)
{
  result = WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::begin(this + 17);
  v4 = *(this + 17);
  if (v4)
  {
    v4 += 2 * *(v4 - 1);
  }

  if (v4 == result)
  {
LABEL_8:
    v5 = 0;
  }

  else
  {
    while ((*(*(*(result[1] + 56) + 120) + 729) & 0x10) == 0)
    {
      do
      {
        result += 2;
      }

      while (result != v3 && (*result + 1) <= 1);
      if (result == v4)
      {
        goto LABEL_8;
      }
    }

    v5 = 1;
  }

  *(this + 820) = v5;
  return result;
}

uint64_t WebKit::WebProcess::setIsInProcessCache(WTF *a1, uint64_t a2, uint64_t *a3)
{
  if (a2)
  {
    v6 = 3;
  }

  else
  {
    v6 = 4;
  }

  *(a1 + 159) = v6;
  WTF::isIntegralOrPointerType(a1);
  WebKit::WebProcess::accessibilityRelayProcessSuspended(a1, a2);
  v7 = *a3;
  *a3 = 0;
  (*(*v7 + 16))(v7);
  v8 = *(*v7 + 8);

  return v8(v7);
}

void WebKit::WebProcess::accessibilityRelayProcessSuspended(WebKit::WebProcess *this, uint64_t a2)
{
  v6 = *(this + 17);
  v4 = (this + 136);
  v5 = v6;
  if (v6 && *(v5 - 12))
  {
    v7 = WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::begin(v4);
    WebKit::AXRelayProcessSuspendedNotification::AXRelayProcessSuspendedNotification(v8, v7[1], 0);
    WebKit::AXRelayProcessSuspendedNotification::sendProcessSuspendMessage(v8, a2);
    WebKit::AXRelayProcessSuspendedNotification::~AXRelayProcessSuspendedNotification(v8);
  }

  else
  {
    *(this + 819) = a2 ^ 1;
  }
}

WTF::StringImpl *WebKit::WebProcess::registerURLSchemeAsCORSEnabled(atomic_ullong **this, const WTF::String *a2)
{
  v11[1] = *MEMORY[0x1E69E9840];
  WebCore::LegacySchemeRegistry::registerURLSchemeAsCORSEnabled(a2, a2);
  v4 = *(WebKit::WebProcess::ensureNetworkProcessConnection(this) + 24);
  v5 = *a2;
  if (*a2)
  {
    atomic_fetch_add_explicit(v5, 2u, memory_order_relaxed);
  }

  v11[0] = v5;
  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(v9, v11, 1uLL);
  v10 = v9;
  IPC::Connection::send<Messages::NetworkConnectionToWebProcess::RegisterURLSchemesAsCORSEnabled>(v4, &v10);
  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v9, v6);
  result = v11[0];
  v11[0] = 0;
  if (result)
  {
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v7);
    }
  }

  return result;
}

IPC::Encoder *IPC::Connection::send<Messages::NetworkConnectionToWebProcess::RegisterURLSchemesAsCORSEnabled>(uint64_t *a1, void *a2)
{
  v4 = IPC::Encoder::operator new(0x238, a2);
  *v4 = 475;
  *(v4 + 68) = 0;
  *(v4 + 70) = 0;
  *(v4 + 69) = 0;
  *(v4 + 2) = 0;
  *(v4 + 3) = 0;
  *(v4 + 1) = 0;
  IPC::Encoder::encodeHeader(v4);
  v9 = v4;
  IPC::VectorArgumentCoder<false,WTF::String,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(v4, *a2);
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

WTF::StringImpl *WebKit::WebProcess::registerURLSchemeAsWebExtension(WebKit::WebProcess *this, atomic_uint **a2)
{
  v2 = *a2;
  if (*a2)
  {
    atomic_fetch_add_explicit(v2, 2u, memory_order_relaxed);
  }

  v5 = v2;
  WebKit::WebExtensionMatchPattern::registerCustomURLScheme(&v5);
  result = v5;
  v5 = 0;
  if (result)
  {
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v3);
    }
  }

  return result;
}

uint64_t WebKit::WebProcess::focusedWebPage(WebKit::WebProcess *this)
{
  v2 = WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::begin(this + 17);
  v4 = *(this + 17);
  if (v4)
  {
    v5 = (v4 + 16 * *(v4 - 4));
  }

  else
  {
    v5 = 0;
  }

  if (v5 == v2)
  {
    return 0;
  }

  while (1)
  {
    v6 = v2[1];
    if ((*(v6 + 1728) & 4) != 0 && (~*(*(*(v6 + 56) + 80) + 26) & 3) == 0)
    {
      break;
    }

    do
    {
      v2 += 2;
    }

    while (v2 != v3 && (*v2 + 1) <= 1);
    if (v2 == v5)
    {
      return 0;
    }
  }

  return v6;
}

void WebKit::WebProcess::createWebPage(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v17 = a2;
  v14 = 0;
  WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::WebPage,WTF::RawPtrTraits<WebKit::WebPage>,WTF::DefaultRefDerefTraits<WebKit::WebPage>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RefPtr<WebKit::WebPage,WTF::RawPtrTraits<WebKit::WebPage>,WTF::DefaultRefDerefTraits<WebKit::WebPage>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<decltype(nullptr)>((a1 + 136), &v17, &v15);
  *(a1 + 818) = 1;
  if (v16 == 1)
  {
    WebKit::WebPage::create(v17, a3, &v14);
    v5 = v14;
    CFRetain(v14[1]);
    v6 = *(v15 + 8);
    *(v15 + 8) = v5;
    if (v6)
    {
      CFRelease(*(v6 + 8));
    }

    v7 = *(a1 + 360);
    if (v7)
    {
      v9 = (v7 + 3);
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
          goto LABEL_14;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v9);
LABEL_14:
      WebKit::WebPage::gpuProcessConnectionDidBecomeAvailable(v5, v7);
      WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::GPUProcessConnection,(WTF::DestructionThread)0>::deref(v7 + 3, v12);
    }

    ++*(a1 + 32);
    WebKit::WebProcess::updateIsWebTransportEnabled(a1);
    if (v5)
    {
      v8 = *(v5 + 1);
LABEL_7:
      CFRelease(v8);
    }
  }

  else
  {
    v13 = *(v15 + 8);
    if (v13)
    {
      CFRetain(*(v13 + 8));
      WebKit::WebPage::reinitializeWebPage(v13, a3);
      v8 = *(v13 + 8);
      goto LABEL_7;
    }

    WebKit::WebPage::reinitializeWebPage(0, a3);
  }

  if (*(a1 + 819) == 1)
  {
    *(a1 + 819) = 0;
    WebKit::WebProcess::accessibilityRelayProcessSuspended(a1, 0);
  }
}

void WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::WebPage,WTF::RawPtrTraits<WebKit::WebPage>,WTF::DefaultRefDerefTraits<WebKit::WebPage>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RefPtr<WebKit::WebPage,WTF::RawPtrTraits<WebKit::WebPage>,WTF::DefaultRefDerefTraits<WebKit::WebPage>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<decltype(nullptr)>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a2;
  if (*a2 == -1)
  {
    __break(0xC471u);
    JUMPOUT(0x19E16D1B4);
  }

  if (!v4)
  {
    __break(0xC471u);
    JUMPOUT(0x19E16D1D4);
  }

  v7 = *a1;
  if (!*a1)
  {
    WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::WebPage,WTF::RawPtrTraits<WebKit::WebPage>,WTF::DefaultRefDerefTraits<WebKit::WebPage>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::WebPage,WTF::RawPtrTraits<WebKit::WebPage>,WTF::DefaultRefDerefTraits<WebKit::WebPage>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::WebPage,WTF::RawPtrTraits<WebKit::WebPage>,WTF::DefaultRefDerefTraits<WebKit::WebPage>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RefPtr<WebKit::WebPage,WTF::RawPtrTraits<WebKit::WebPage>,WTF::DefaultRefDerefTraits<WebKit::WebPage>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand(a1, 0);
    v7 = *a1;
    v4 = *a2;
  }

  v8 = *(v7 - 8);
  v9 = (v4 + ~(v4 << 32)) ^ ((v4 + ~(v4 << 32)) >> 22);
  v10 = 9 * ((v9 + ~(v9 << 13)) ^ ((v9 + ~(v9 << 13)) >> 8));
  v11 = (v10 ^ (v10 >> 15)) + ~((v10 ^ (v10 >> 15)) << 27);
  v12 = v8 & ((v11 >> 31) ^ v11);
  v13 = (v7 + 16 * v12);
  v14 = *v13;
  if (*v13)
  {
    v22 = 0;
    v23 = 1;
    do
    {
      if (v14 == v4)
      {
        v21 = 0;
        v20 = v7 + 16 * *(v7 - 4);
        goto LABEL_13;
      }

      if (v14 == -1)
      {
        v22 = v13;
      }

      v12 = (v12 + v23) & v8;
      v13 = (v7 + 16 * v12);
      v14 = *v13;
      ++v23;
    }

    while (*v13);
    if (v22)
    {
      *v22 = 0;
      v22[1] = 0;
      --*(*a1 - 16);
      v4 = *a2;
      v13 = v22;
    }
  }

  v15 = v13[1];
  *v13 = v4;
  v13[1] = 0;
  if (v15)
  {
    CFRelease(*(v15 + 8));
  }

  v16 = *a1;
  if (*a1)
  {
    v17 = *(v16 - 12) + 1;
  }

  else
  {
    v17 = 1;
  }

  *(v16 - 12) = v17;
  v18 = (*(v16 - 16) + v17);
  v19 = *(v16 - 4);
  if (v19 > 0x400)
  {
    if (v19 > 2 * v18)
    {
      goto LABEL_12;
    }

LABEL_16:
    v13 = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::WebPage,WTF::RawPtrTraits<WebKit::WebPage>,WTF::DefaultRefDerefTraits<WebKit::WebPage>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::WebPage,WTF::RawPtrTraits<WebKit::WebPage>,WTF::DefaultRefDerefTraits<WebKit::WebPage>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::WebPage,WTF::RawPtrTraits<WebKit::WebPage>,WTF::DefaultRefDerefTraits<WebKit::WebPage>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RefPtr<WebKit::WebPage,WTF::RawPtrTraits<WebKit::WebPage>,WTF::DefaultRefDerefTraits<WebKit::WebPage>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand(a1, v13);
    v16 = *a1;
    if (*a1)
    {
      v19 = *(v16 - 4);
    }

    else
    {
      v19 = 0;
    }

    goto LABEL_12;
  }

  if (3 * v19 <= 4 * v18)
  {
    goto LABEL_16;
  }

LABEL_12:
  v20 = v16 + 16 * v19;
  v21 = 1;
LABEL_13:
  *a3 = v13;
  *(a3 + 8) = v20;
  *(a3 + 16) = v21;
}

void *WebKit::WebProcess::removeWebPage(uint64_t *a1, uint64_t a2)
{
  v6 = a2;
  WebKit::WebProcess::flushResourceLoadStatistics(a1);
  WebKit::WebProcess::pageWillLeaveWindow(a1, a2);
  v4 = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::WebPage,WTF::RawPtrTraits<WebKit::WebPage>,WTF::DefaultRefDerefTraits<WebKit::WebPage>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::WebPage,WTF::RawPtrTraits<WebKit::WebPage>,WTF::DefaultRefDerefTraits<WebKit::WebPage>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::WebPage,WTF::RawPtrTraits<WebKit::WebPage>,WTF::DefaultRefDerefTraits<WebKit::WebPage>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RefPtr<WebKit::WebPage,WTF::RawPtrTraits<WebKit::WebPage>,WTF::DefaultRefDerefTraits<WebKit::WebPage>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::WebPage,WTF::RawPtrTraits<WebKit::WebPage>,WTF::DefaultRefDerefTraits<WebKit::WebPage>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RefPtr<WebKit::WebPage,WTF::RawPtrTraits<WebKit::WebPage>,WTF::DefaultRefDerefTraits<WebKit::WebPage>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a1 + 17, &v6);
  WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::WebPage,WTF::RawPtrTraits<WebKit::WebPage>,WTF::DefaultRefDerefTraits<WebKit::WebPage>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RefPtr<WebKit::WebPage,WTF::RawPtrTraits<WebKit::WebPage>,WTF::DefaultRefDerefTraits<WebKit::WebPage>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::remove(a1 + 17, v4);
  WebKit::AuxiliaryProcess::enableTermination(a1);
  return WebKit::WebProcess::updateIsWebTransportEnabled(a1);
}

uint64_t WebKit::WebProcess::flushResourceLoadStatistics(WebKit::WebProcess *this)
{
  result = WebCore::ResourceLoadObserver::sharedIfExists(this);
  if (result)
  {
    v2 = result;
    v3 = WTF::fastMalloc(0x10);
    *v3 = &unk_1F11226E0;
    v4 = v3;
    (*(*v2 + 96))(v2, &v4);
    result = v4;
    v4 = 0;
    if (result)
    {
      return (*(*result + 8))(result);
    }
  }

  return result;
}

uint64_t WebKit::WebProcess::pageWillLeaveWindow(uint64_t a1, uint64_t a2)
{
  v7 = a2;
  v3 = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>((a1 + 552), &v7);
  result = WTF::HashSet<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>::remove((a1 + 552), v3);
  v5 = *(a1 + 552);
  if (!v5 || !*(v5 - 12))
  {
    if (*(a1 + 624))
    {
      return WebCore::DeferrableOneShotTimer::restart(a1 + 560);
    }

    v6[0] = WebKit::WebProcess::nonVisibleProcessEarlyMemoryCleanupTimerFired;
    v6[1] = 0;
    result = std::optional<WebCore::DeferrableOneShotTimer>::emplace[abi:sn200100]<WebKit::WebProcess &,void (WebKit::WebProcess::*)(void),WTF::Seconds const&,void>((a1 + 560), a1, v6);
    if (*(a1 + 624))
    {
      return WebCore::DeferrableOneShotTimer::restart(a1 + 560);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t WebKit::WebProcess::shouldTerminate(WebKit::WebProcess *this)
{
  WebKit::AuxiliaryProcess::protectedParentProcessConnection(this, &v7);
  IPC::Connection::sendSync<Messages::WebProcessProxy::ShouldTerminate>(&v8, v7);
  v1 = v7;
  v7 = 0;
  if (v1)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v1);
  }

  v2 = v10;
  v3 = v9;
  if (!v10 && v8)
  {
    IPC::Decoder::~Decoder(v8);
    bmalloc::api::tzoneFree(v5, v6);
  }

  return (v2 != 0) | v3 & 1u;
}

IPC::Encoder *IPC::Connection::sendSync<Messages::WebProcessProxy::ShouldTerminate>(uint64_t a1, unsigned __int8 *a2)
{
  IPC::Connection::createSyncMessageEncoder(0x107B, 0, v19);
  v4 = IPC::Connection::sendSyncMessage(a2, v19[1], v19, 0, &v17, INFINITY);
  if (!v18)
  {
    v6 = v17;
    v17 = 0;
    if (*(v6 + 25) == 3194)
    {
      v10 = 11;
    }

    else
    {
      v7 = IPC::Decoder::decode<std::tuple<BOOL>>(v6);
      if (v7 >= 0x100u)
      {
        *a1 = v6;
        *(a1 + 8) = v7;
        *(a1 + 16) = 0;
        goto LABEL_5;
      }

      v10 = 14;
    }

    *a1 = v10;
    *(a1 + 16) = 1;
    IPC::Decoder::~Decoder(v6);
    bmalloc::api::tzoneFree(v11, v12);
    goto LABEL_5;
  }

  if (v18 != 1)
  {
    mpark::throw_bad_variant_access(v4);
  }

  *a1 = v17;
  *(a1 + 16) = 1;
LABEL_5:
  if (!v18)
  {
    v8 = v17;
    v17 = 0;
    if (v8)
    {
      IPC::Decoder::~Decoder(v8);
      bmalloc::api::tzoneFree(v15, v16);
    }
  }

  result = v19[0];
  v19[0] = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v5);
    return bmalloc::api::tzoneFree(v13, v14);
  }

  return result;
}

uint64_t WebKit::WebProcess::terminate(WebKit::WebProcess *this)
{
  WebKit::WebProcess::platformTerminate(this);

  return WebKit::AuxiliaryProcess::terminate(this);
}

uint64_t WebKit::WebProcess::dispatchMessage(WebKit::WebProcess *this, IPC::Connection *a2, IPC::Decoder *a3)
{
  v3 = *(a3 + 25);
  if (v3 >= 0x107F)
  {
    v3 = 4223;
  }

  v4 = LOBYTE((&IPC::Detail::messageDescriptions)[3 * v3 + 2]);
  switch(v4)
  {
    case 169:
      v7 = *(a3 + 7);
      if ((v7 - 1) <= 0xFFFFFFFFFFFFFFFDLL && (v8 = WebKit::WebProcess::webFrame(this, v7, 1)) != 0)
      {
        v9 = v8;
        CFRetain(*(v8 + 8));
        (*(*v9 + 5))(v9, a2, a3);
        CFRelease(v9[1]);
      }

      else
      {
        WebKit::WebFrame::sendCancelReply(a2, a3, a3);
      }

      return 1;
    case 199:
      v10 = WebCore::SWContextManager::singleton(this);
      v11 = WebCore::SWContextManager::connection(v10);
      if (v11)
      {
        v12 = v11;
        (**v11)(v11);
        if ((*(*v12 + 216))(v12))
        {
          WebKit::WebSWContextManagerConnection::didReceiveMessage(v12, a2, a3, v13, v14);
LABEL_16:
          (*(*v12 + 8))(v12);
          return 1;
        }

LABEL_19:
        __break(0xC471u);
        JUMPOUT(0x19E16D788);
      }

      break;
    case 204:
      v15 = WebCore::SharedWorkerContextManager::singleton(this);
      v16 = WebCore::SharedWorkerContextManager::connection(v15);
      if (v16)
      {
        v12 = v16;
        (**v16)(v16);
        if ((*(*v12 + 56))(v12))
        {
          WebKit::WebSharedWorkerContextManagerConnection::didReceiveMessage(v12, a2, a3, v17, v18);
          goto LABEL_16;
        }

        goto LABEL_19;
      }

      break;
    default:
      return 0;
  }

  return 1;
}

uint64_t WebKit::WebProcess::webFrame(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9[0] = a2;
  v9[1] = a3;
  if ((a3 & 1) == 0)
  {
    return 0;
  }

  WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::WebFrame,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakPtr<WebKit::WebFrame,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::WebFrame,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakPtr<WebKit::WebFrame,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>((a1 + 304), v9, &v8);
  v4 = v8;
  if (!v8)
  {
    return 0;
  }

  v5 = *(v8 + 1);
  if (v5)
  {
    v6 = v5 - 16;
  }

  else
  {
    v6 = 0;
  }

  v8 = 0;
  if (atomic_fetch_add(v4, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v4);
    WTF::fastFree(v4, v3);
  }

  return v6;
}

uint64_t WebKit::WebProcess::didClose(WebKit::WebProcess *this, IPC::Connection *a2)
{
  v4 = WebCore::HTMLMediaElement::mediaCacheDirectory(this);
  WTF::FileSystemImpl::markPurgeable(v4, v5);

  return WebKit::AuxiliaryProcess::didClose(this, a2);
}

void WebKit::WebProcess::removeWebFrame(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = a1[38];
  if (v3)
  {
    if (a2 == -1 || !a2)
    {
      __break(0xC471u);
      JUMPOUT(0x19E16DBC0);
    }

    v7 = *(v3 - 8);
    v8 = (~(a2 << 32) + a2) ^ ((~(a2 << 32) + a2) >> 22);
    v9 = 9 * ((v8 + ~(v8 << 13)) ^ ((v8 + ~(v8 << 13)) >> 8));
    v10 = (v9 ^ (v9 >> 15)) + ~((v9 ^ (v9 >> 15)) << 27);
    v11 = v7 & ((v10 >> 31) ^ v10);
    v12 = *(v3 + 16 * v11);
    if (v12 != a2)
    {
      v36 = 1;
      while (v12)
      {
        v11 = (v11 + v36) & v7;
        v12 = *(v3 + 16 * v11);
        ++v36;
        if (v12 == a2)
        {
          goto LABEL_5;
        }
      }

      v11 = *(v3 - 4);
    }

LABEL_5:
    if (v11 != *(v3 - 4))
    {
      v13 = (v3 + 16 * v11);
      v14 = v13[1];
      v13[1] = 0;
      v15 = a1[38];
      if (!v15 || (v15 += 2 * *(v15 - 1), v15 != v13))
      {
        if (v15 != v13)
        {
          *v13 = -1;
          v13[1] = 0;
          v16 = a1[38];
          v17 = vadd_s32(*(v16 - 16), 0xFFFFFFFF00000001);
          *(v16 - 16) = v17;
          v18 = *(v16 - 4);
          if (6 * v17.i32[1] < v18 && v18 >= 9)
          {
            WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::WebFrame,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::WebFrame,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::WebFrame,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakPtr<WebKit::WebFrame,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash(a1 + 38, v18 >> 1, 0);
          }
        }
      }

      if (v14)
      {
        v20 = *(v14 + 8);
        if (v20)
        {
          CFRetain(*(v20 - 8));
          if (atomic_fetch_add(v14, 0xFFFFFFFF) == 1)
          {
            atomic_store(1u, v14);
            WTF::fastFree(v14, v21);
          }

          v22 = *(v20 + 24);
          if (v22)
          {
            v23 = *(v22 + 8);
            if (v23)
            {
              if ((*(v23 + 136) & 1) == 0)
              {
                v24 = a1[42];
                if (v24)
                {
                  v25 = *(v24 + 24);
                  v26 = IPC::Encoder::operator new(0x238, v21);
                  *v26 = 431;
                  *(v26 + 68) = 0;
                  *(v26 + 70) = 0;
                  *(v26 + 69) = 0;
                  *(v26 + 2) = 0;
                  *(v26 + 3) = 0;
                  *(v26 + 1) = 0;
                  IPC::Encoder::encodeHeader(v26);
                  v41 = v26;
                  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v26, a2);
                  IPC::Connection::sendMessageImpl(v25, &v41, 0, 0);
                  v28 = v41;
                  v41 = 0;
                  if (v28)
                  {
                    IPC::Encoder::~Encoder(v28, v27);
                    bmalloc::api::tzoneFree(v37, v38);
                  }
                }
              }
            }
          }

          if (a3 && a1[5] && (*(v20 + 80) & 1) == 0 && (*(a3 + 202) & 1) == 0)
          {
            v30 = *(a3 + 32);
            v29 = a3 + 32;
            v31 = (*(v30 + 56))(v29);
            v33 = IPC::Encoder::operator new(0x238, v32);
            *v33 = 2193;
            *(v33 + 2) = 0;
            *(v33 + 3) = 0;
            *(v33 + 1) = v31;
            *(v33 + 68) = 0;
            *(v33 + 70) = 0;
            *(v33 + 69) = 0;
            IPC::Encoder::encodeHeader(v33);
            v41 = v33;
            IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v33, a2);
            (*(*v29 + 32))(v29, &v41, 0);
            v35 = v41;
            v41 = 0;
            if (v35)
            {
              IPC::Encoder::~Encoder(v35, v34);
              bmalloc::api::tzoneFree(v39, v40);
            }
          }

          CFRelease(*(v20 - 8));
        }

        else if (atomic_fetch_add(v14, 0xFFFFFFFF) == 1)
        {
          atomic_store(1u, v14);

          WTF::fastFree(v14, a2);
        }
      }
    }
  }
}

uint64_t WebKit::WebProcess::webPageGroup(uint64_t a1, uint64_t *a2)
{
  v7 = 0;
  WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::PageGroupIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::WebPageGroupProxy,WTF::RawPtrTraits<WebKit::WebPageGroupProxy>,WTF::DefaultRefDerefTraits<WebKit::WebPageGroupProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::PageGroupIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::PageGroupIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RefPtr<WebKit::WebPageGroupProxy,WTF::RawPtrTraits<WebKit::WebPageGroupProxy>,WTF::DefaultRefDerefTraits<WebKit::WebPageGroupProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<decltype(nullptr)>((a1 + 144), a2 + 1, &v8);
  if (v9 == 1)
  {
    WebKit::WebPageGroupProxy::create(a2, &v7);
    v3 = v7;
    v7 = 0;
    v4 = *(v8 + 8);
    *(v8 + 8) = v3;
    if (v4)
    {
      v6 = v4[2] - 1;
      if (v4[2] == 1)
      {
        (*(*v4 + 8))(v4);
        v4 = v7;
        v7 = 0;
        if (!v4)
        {
          return *(v8 + 8);
        }

        v6 = v4[2] - 1;
        if (v4[2] == 1)
        {
          (*(*v4 + 8))(v4);
          return *(v8 + 8);
        }
      }

      v4[2] = v6;
    }
  }

  return *(v8 + 8);
}

uint64_t *WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::PageGroupIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::WebPageGroupProxy,WTF::RawPtrTraits<WebKit::WebPageGroupProxy>,WTF::DefaultRefDerefTraits<WebKit::WebPageGroupProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::PageGroupIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::PageGroupIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RefPtr<WebKit::WebPageGroupProxy,WTF::RawPtrTraits<WebKit::WebPageGroupProxy>,WTF::DefaultRefDerefTraits<WebKit::WebPageGroupProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<decltype(nullptr)>@<X0>(uint64_t *result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a2;
  if (v4 == -1)
  {
    __break(0xC471u);
    JUMPOUT(0x19E16DE70);
  }

  if (!v4)
  {
    __break(0xC471u);
    JUMPOUT(0x19E16DE90);
  }

  v5 = result;
  v7 = *result;
  if (!*result)
  {
    result = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::PageGroupIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::PageGroupIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::WebPageGroupProxy,WTF::RawPtrTraits<WebKit::WebPageGroupProxy>,WTF::DefaultRefDerefTraits<WebKit::WebPageGroupProxy>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::PageGroupIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::WebPageGroupProxy,WTF::RawPtrTraits<WebKit::WebPageGroupProxy>,WTF::DefaultRefDerefTraits<WebKit::WebPageGroupProxy>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::PageGroupIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::PageGroupIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::WebPageGroupProxy,WTF::RawPtrTraits<WebKit::WebPageGroupProxy>,WTF::DefaultRefDerefTraits<WebKit::WebPageGroupProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::PageGroupIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::PageGroupIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RefPtr<WebKit::WebPageGroupProxy,WTF::RawPtrTraits<WebKit::WebPageGroupProxy>,WTF::DefaultRefDerefTraits<WebKit::WebPageGroupProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::PageGroupIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand(result, 0);
    v7 = *v5;
    v4 = *a2;
  }

  v8 = *(v7 - 8);
  v9 = (v4 + ~(v4 << 32)) ^ ((v4 + ~(v4 << 32)) >> 22);
  v10 = 9 * ((v9 + ~(v9 << 13)) ^ ((v9 + ~(v9 << 13)) >> 8));
  v11 = (v10 ^ (v10 >> 15)) + ~((v10 ^ (v10 >> 15)) << 27);
  v12 = v8 & ((v11 >> 31) ^ v11);
  v13 = (v7 + 16 * v12);
  v14 = *v13;
  if (*v13)
  {
    v21 = 0;
    v22 = 1;
    do
    {
      if (v14 == v4)
      {
        v20 = 0;
        v19 = v7 + 16 * *(v7 - 4);
        goto LABEL_11;
      }

      if (v14 == -1)
      {
        v21 = v13;
      }

      v12 = (v12 + v22) & v8;
      v13 = (v7 + 16 * v12);
      v14 = *v13;
      ++v22;
    }

    while (*v13);
    if (v21)
    {
      *v21 = 0;
      v21[1] = 0;
      --*(*v5 - 16);
      v4 = *a2;
      v13 = v21;
    }
  }

  result = WTF::HashMapTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::PageGroupIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::WebPageGroupProxy,WTF::RawPtrTraits<WebKit::WebPageGroupProxy>,WTF::DefaultRefDerefTraits<WebKit::WebPageGroupProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::PageGroupIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::PageGroupIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RefPtr<WebKit::WebPageGroupProxy,WTF::RawPtrTraits<WebKit::WebPageGroupProxy>,WTF::DefaultRefDerefTraits<WebKit::WebPageGroupProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::PageGroupIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>::translate<WTF::ObjectIdentifierGeneric<WebKit::PageGroupIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long> const&,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::PageGroupIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::WebPageGroupProxy,WTF::RawPtrTraits<WebKit::WebPageGroupProxy>,WTF::DefaultRefDerefTraits<WebKit::WebPageGroupProxy>>>,WTF::HashTableAddResult<WTF::HashTableIterator<WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::PageGroupIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::PageGroupIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::WebPageGroupProxy,WTF::RawPtrTraits<WebKit::WebPageGroupProxy>,WTF::DefaultRefDerefTraits<WebKit::WebPageGroupProxy>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::PageGroupIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::WebPageGroupProxy,WTF::RawPtrTraits<WebKit::WebPageGroupProxy>,WTF::DefaultRefDerefTraits<WebKit::WebPageGroupProxy>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::PageGroupIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::PageGroupIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::WebPageGroupProxy,WTF::RawPtrTraits<WebKit::WebPageGroupProxy>,WTF::DefaultRefDerefTraits<WebKit::WebPageGroupProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::PageGroupIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::PageGroupIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RefPtr<WebKit::WebPageGroupProxy,WTF::RawPtrTraits<WebKit::WebPageGroupProxy>,WTF::DefaultRefDerefTraits<WebKit::WebPageGroupProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::PageGroupIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>,WTF::ObjectIdentifierGeneric<WebKit::PageGroupIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::PageGroupIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::WebPageGroupProxy,WTF::RawPtrTraits<WebKit::WebPageGroupProxy>,WTF::DefaultRefDerefTraits<WebKit::WebPageGroupProxy>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::PageGroupIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::WebPageGroupProxy,WTF::RawPtrTraits<WebKit::WebPageGroupProxy>,WTF::DefaultRefDerefTraits<WebKit::WebPageGroupProxy>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::PageGroupIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::PageGroupIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::WebPageGroupProxy,WTF::RawPtrTraits<WebKit::WebPageGroupProxy>,WTF::DefaultRefDerefTraits<WebKit::WebPageGroupProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::PageGroupIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::PageGroupIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RefPtr<WebKit::WebPageGroupProxy,WTF::RawPtrTraits<WebKit::WebPageGroupProxy>,WTF::DefaultRefDerefTraits<WebKit::WebPageGroupProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::PageGroupIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>> WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::PageGroupIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::WebPageGroupProxy,WTF::RawPtrTraits<WebKit::WebPageGroupProxy>,WTF::DefaultRefDerefTraits<WebKit::WebPageGroupProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::PageGroupIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::PageGroupIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RefPtr<WebKit::WebPageGroupProxy,WTF::RawPtrTraits<WebKit::WebPageGroupProxy>,WTF::DefaultRefDerefTraits<WebKit::WebPageGroupProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::inlineAdd<WTF::ObjectIdentifierGeneric<WebKit::PageGroupIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long> const&,decltype(nullptr)>(WTF::ObjectIdentifierGeneric<WebKit::PageGroupIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long> const&,decltype(nullptr) &&)::{lambda(void)#1}>( v13,  v4);
  v15 = *v5;
  if (*v5)
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
      goto LABEL_10;
    }

LABEL_17:
    result = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::PageGroupIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::PageGroupIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::WebPageGroupProxy,WTF::RawPtrTraits<WebKit::WebPageGroupProxy>,WTF::DefaultRefDerefTraits<WebKit::WebPageGroupProxy>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::PageGroupIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::WebPageGroupProxy,WTF::RawPtrTraits<WebKit::WebPageGroupProxy>,WTF::DefaultRefDerefTraits<WebKit::WebPageGroupProxy>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::PageGroupIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::PageGroupIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::WebPageGroupProxy,WTF::RawPtrTraits<WebKit::WebPageGroupProxy>,WTF::DefaultRefDerefTraits<WebKit::WebPageGroupProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::PageGroupIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::PageGroupIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RefPtr<WebKit::WebPageGroupProxy,WTF::RawPtrTraits<WebKit::WebPageGroupProxy>,WTF::DefaultRefDerefTraits<WebKit::WebPageGroupProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::PageGroupIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand(v5, v13);
    v13 = result;
    v15 = *v5;
    if (*v5)
    {
      v18 = *(v15 - 4);
    }

    else
    {
      v18 = 0;
    }

    goto LABEL_10;
  }

  if (3 * v18 <= 4 * v17)
  {
    goto LABEL_17;
  }

LABEL_10:
  v19 = v15 + 16 * v18;
  v20 = 1;
LABEL_11:
  *a3 = v13;
  *(a3 + 8) = v19;
  *(a3 + 16) = v20;
  return result;
}

__n128 WebKit::WebProcess::userGestureTokenIdentifier@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t *a4@<X3>, __n128 *a5@<X8>)
{
  if ((a3 & 1) != 0 && (v7 = *a4) != 0 && !*(v7 + 60) && *(v7 + 12) == 1)
  {
    v21 = v5;
    v22 = v6;
    WTF::WeakHashMap<WebCore::UserGestureToken,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::UserGestureTokenIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::DefaultWeakPtrImpl>::ensure<WebKit::WebProcess::userGestureTokenIdentifier(std::optional<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::RefPtr<WebCore::UserGestureToken,WTF::RawPtrTraits<WebCore::UserGestureToken>,WTF::DefaultRefDerefTraits<WebCore::UserGestureToken>>)::$_0>(a1 + 640, v7, v18);
    v8 = v19;
    if (v20 == 1)
    {
      v13 = v19;
      v9 = *(*v19 + 8);
      ++v9[2];
      v10 = WTF::fastMalloc(0x18);
      *v10 = &unk_1F1122618;
      *(v10 + 8) = a2;
      *(v10 + 16) = a3;
      v17 = v10;
      WebCore::UserGestureToken::addDestructionObserver(v9, &v17);
      v11 = v17;
      v17 = 0;
      if (v11)
      {
        (*(*v11 + 8))(v11);
      }

      WTF::RefCounted<WebCore::UserGestureToken>::deref(v9 + 2);
      v8 = v13;
    }

    result = *(v8 + 8);
    *a5 = result;
    a5[1].n128_u8[0] = 1;
  }

  else
  {
    a5->n128_u8[0] = 0;
    a5[1].n128_u8[0] = 0;
  }

  return result;
}

uint64_t WTF::WeakHashMap<WebCore::UserGestureToken,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::UserGestureTokenIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::DefaultWeakPtrImpl>::ensure<WebKit::WebProcess::userGestureTokenIdentifier(std::optional<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::RefPtr<WebCore::UserGestureToken,WTF::RawPtrTraits<WebCore::UserGestureToken>,WTF::DefaultRefDerefTraits<WebCore::UserGestureToken>>)::$_0>@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a1 + 8);
  v7 = *(a1 + 12);
  *(a1 + 8) = v6 + 1;
  if (v6 > v7)
  {
    WTF::WeakHashMap<WebCore::UserGestureToken,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::UserGestureTokenIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::DefaultWeakPtrImpl>::removeNullReferences(a1, a2);
  }

  v8 = *a2;
  if (!*a2)
  {
    v8 = WTF::fastCompactMalloc(0x10);
    *v8 = 1;
    *(v8 + 8) = a2;
    v9 = *a2;
    *a2 = v8;
    if (v9)
    {
      if (atomic_fetch_add(v9, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v9);
        WTF::fastFree(v9, a2);
      }

      v8 = *a2;
    }
  }

  atomic_fetch_add(v8, 1u);
  if (v8 == -1 || !v8)
  {
    __break(0xC471u);
    JUMPOUT(0x19E16E2D8);
  }

  v10 = *a1;
  if (*a1 || (WTF::HashTable<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::KeyValuePair<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::UserGestureTokenIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::UserGestureTokenIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashMap<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::UserGestureTokenIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::UserGestureTokenIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::FastMalloc>::expand(a1, 0), (v10 = *a1) != 0))
  {
    v11 = 0;
    v12 = *(v10 - 8);
  }

  else
  {
    v12 = 0;
    v11 = 1;
  }

  v13 = 0;
  v14 = (~(v8 << 32) + v8) ^ ((~(v8 << 32) + v8) >> 22);
  v15 = 9 * ((v14 + ~(v14 << 13)) ^ ((v14 + ~(v14 << 13)) >> 8));
  v16 = (v15 ^ (v15 >> 15)) + ~((v15 ^ (v15 >> 15)) << 27);
  v17 = (v16 >> 31) ^ v16;
  for (i = 1; ; ++i)
  {
    v19 = v17 & v12;
    v20 = (v10 + 24 * v19);
    result = *v20;
    if (*v20 != -1)
    {
      break;
    }

    v13 = (v10 + 24 * v19);
LABEL_19:
    v17 = i + v19;
  }

  if (!result)
  {
    if (v13)
    {
      *v13 = 0;
      v13[1] = 0;
      v13[2] = 0;
      --*(*a1 - 16);
      *v13 = v8;
    }

    else
    {
      *v20 = v8;
      v13 = (v10 + 24 * v19);
    }

    IdentifierInternal = WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>::generateIdentifierInternal();
    result = WebCore::Process::identifier(IdentifierInternal);
    v13[1] = IdentifierInternal;
    v13[2] = result;
    v26 = *a1;
    if (*a1)
    {
      v27 = *(v26 - 12) + 1;
    }

    else
    {
      v27 = 1;
    }

    *(v26 - 12) = v27;
    v28 = (*(v26 - 16) + v27);
    v29 = *(v26 - 4);
    if (v29 > 0x400)
    {
      if (v29 <= 2 * v28)
      {
LABEL_33:
        result = WTF::HashTable<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::KeyValuePair<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::UserGestureTokenIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::UserGestureTokenIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashMap<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::UserGestureTokenIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::UserGestureTokenIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::FastMalloc>::expand(a1, v13);
        v13 = result;
        v26 = *a1;
        if (*a1)
        {
          LODWORD(v29) = *(v26 - 4);
        }

        else
        {
          LODWORD(v29) = 0;
        }
      }
    }

    else if (3 * v29 <= 4 * v28)
    {
      goto LABEL_33;
    }

    v23 = v26 + 24 * v29;
    v24 = 1;
    v20 = v13;
    goto LABEL_38;
  }

  if (result != v8)
  {
    goto LABEL_19;
  }

  if (v11)
  {
    v22 = 0;
  }

  else
  {
    v22 = *(v10 - 4);
  }

  v23 = v10 + 24 * v22;
  if (atomic_fetch_add(v8, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v8);
    result = WTF::fastFree(v8, a2);
  }

  v24 = 0;
LABEL_38:
  *a3 = a1;
  *(a3 + 8) = v20;
  *(a3 + 16) = v23;
  v30 = *a1;
  if (*a1)
  {
    v31 = *(v30 - 4);
    v32 = v30 + 24 * v31;
  }

  else
  {
    v32 = 0;
    v31 = 0;
  }

  *(a3 + 24) = v32;
  *(a3 + 32) = v30 + 24 * v31;
  *(a3 + 40) = 0;
  if (v32 != v20)
  {
    do
    {
      if (*(*v20 + 8))
      {
        break;
      }

      v20 += 3;
      *(a3 + 8) = v20;
      if (v20 != v23)
      {
        do
        {
          if ((*v20 + 1) > 1)
          {
            break;
          }

          v20 += 3;
        }

        while (v20 != v23);
        *(a3 + 8) = v20;
      }
    }

    while (v20 != v32);
  }

  *(a3 + 48) = v24;
  return result;
}

unsigned int *WebCore::UserGestureToken::addDestructionObserver(unsigned int *result, unint64_t a2)
{
  v2 = a2;
  v3 = result;
  v4 = result[7];
  if (v4 == result[6])
  {
    result = WTF::Vector<WTF::Function<void ()(WebCore::UserGestureToken &)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(result + 4, v4 + 1, a2);
    v2 = result;
    v4 = v3[7];
    v5 = (*(v3 + 2) + 8 * v4);
  }

  else
  {
    v5 = (*(result + 2) + 8 * v4);
  }

  v6 = *v2;
  *v2 = 0;
  *v5 = v6;
  v3[7] = v4 + 1;
  return result;
}

uint64_t WebKit::WebProcess::isJITEnabled(uint64_t a1, uint64_t *a2)
{
  v2 = *(MEMORY[0x1E696EBF0] + 625);
  v3 = *a2;
  *a2 = 0;
  (*(*v3 + 16))(v3, v2);
  v4 = *(*v3 + 8);

  return v4(v3);
}

uint64_t WebKit::WebProcess::garbageCollectJavaScriptObjects(WebKit::WebProcess *this)
{
  v1 = WebCore::GCController::singleton(this);

  return MEMORY[0x1EEE54BE0](v1);
}

atomic_ullong *WebKit::WebProcess::backgroundResponsivenessPing(WebKit::WebProcess *this)
{
  WebKit::AuxiliaryProcess::protectedParentProcessConnection(this, &v9);
  v1 = v9;
  v3 = IPC::Encoder::operator new(0x238, v2);
  *v3 = 2913;
  *(v3 + 68) = 0;
  *(v3 + 70) = 0;
  *(v3 + 69) = 0;
  *(v3 + 2) = 0;
  *(v3 + 3) = 0;
  *(v3 + 1) = 0;
  IPC::Encoder::encodeHeader(v3);
  v10 = v3;
  IPC::Connection::sendMessageImpl(v1, &v10, 0, 0);
  v5 = v10;
  v10 = 0;
  if (v5)
  {
    IPC::Encoder::~Encoder(v5, v4);
    bmalloc::api::tzoneFree(v7, v8);
  }

  result = v9;
  v9 = 0;
  if (result)
  {
    return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(result);
  }

  return result;
}

uint64_t WebKit::WebProcess::setHasMouseDevice(uint64_t this, int a2)
{
  if (*(this + 299) != a2)
  {
    *(this + 299) = a2;
    return MEMORY[0x1EEE5A990]();
  }

  return this;
}

uint64_t WebKit::WebProcess::setHasStylusDevice(uint64_t this, int a2)
{
  if (*(this + 300) != a2)
  {
    *(this + 300) = a2;
    return MEMORY[0x1EEE5A990]();
  }

  return this;
}

void WebKit::WebProcess::setInitialGamepads(uint64_t a1, uint64_t a2)
{
  {
    qword_1ED643808 = 0;
    unk_1ED643810 = 0;
    byte_1ED643818 = 0;
    WebKit::WebGamepadProvider::singleton(void)::provider = &unk_1F112AD70;
    xmmword_1ED643820 = 0u;
    unk_1ED643830 = 0u;
    xmmword_1ED643840 = 0u;
  }

  WebKit::WebGamepadProvider::setInitialGamepads(&WebKit::WebGamepadProvider::singleton(void)::provider, a2);
}

void *WebKit::WebProcess::gamepadConnected(uint64_t a1, unsigned int *a2, uint64_t a3)
{
  {
    qword_1ED643808 = 0;
    unk_1ED643810 = 0;
    byte_1ED643818 = 0;
    WebKit::WebGamepadProvider::singleton(void)::provider = &unk_1F112AD70;
    xmmword_1ED643820 = 0u;
    unk_1ED643830 = 0u;
    xmmword_1ED643840 = 0u;
  }

  return WebKit::WebGamepadProvider::gamepadConnected(&WebKit::WebGamepadProvider::singleton(void)::provider, a2, a3);
}

void *WebKit::WebProcess::gamepadDisconnected(WebKit::WebProcess *this, void *a2)
{
  {
    qword_1ED643808 = 0;
    unk_1ED643810 = 0;
    byte_1ED643818 = 0;
    WebKit::WebGamepadProvider::singleton(void)::provider = &unk_1F112AD70;
    xmmword_1ED643820 = 0u;
    unk_1ED643830 = 0u;
    xmmword_1ED643840 = 0u;
  }

  return WebKit::WebGamepadProvider::gamepadDisconnected(&WebKit::WebGamepadProvider::singleton(void)::provider, a2);
}

uint64_t WebKit::WebProcess::setJavaScriptGarbageCollectorTimerEnabled(WebKit::WebProcess *this, uint64_t a2)
{
  v3 = WebCore::GCController::singleton(this);

  return MEMORY[0x1EEE54BE8](v3, a2);
}

void WebKit::WebProcess::handleInjectedBundleMessage(uint64_t a1, void *a2, CFTypeRef **a3)
{
  {
    v5 = WebKit::WebProcess::singleton(void)::process;
  }

  else
  {
    v9 = WebKit::WebProcess::operator new(0x370, a2);
    v5 = WebKit::WebProcess::WebProcess(v9);
    WebKit::WebProcess::singleton(void)::process = v5;
  }

  v6 = *(v5 + 19);
  if (v6)
  {
    CFRetain(*(v6 + 8));
    v7 = *a3;
    if (v7)
    {
      CFRetain(v7[1]);
    }

    v11 = &unk_1F11223F0;
    WebKit::UserData::transform(v7, &v11, &v10);
    (*(**(v6 + 40) + 32))(*(v6 + 40), v6, a2, &v10);
    v8 = v10;
    v10 = 0;
    if (v8)
    {
      CFRelease(*(v8 + 1));
      if (!v7)
      {
        goto LABEL_8;
      }
    }

    else if (!v7)
    {
LABEL_8:
      CFRelease(*(v6 + 8));
      return;
    }

    CFRelease(v7[1]);
    goto LABEL_8;
  }
}

void WebKit::WebProcess::setInjectedBundleParameter(WebKit::WebProcess *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = *(WebKit::WebProcess::singleton(a1, a2) + 19);
  if (v7)
  {
    CFRetain(v7[1]);
    WebKit::InjectedBundle::setBundleParameter(v7, a2, a3, a4);
    v8 = v7[1];

    CFRelease(v8);
  }
}

void WebKit::WebProcess::setInjectedBundleParameters(uint64_t a1, void *a2, uint64_t a3)
{
  {
    v5 = WebKit::WebProcess::singleton(void)::process;
  }

  else
  {
    v8 = WebKit::WebProcess::operator new(0x370, a2);
    v5 = WebKit::WebProcess::WebProcess(v8);
    WebKit::WebProcess::singleton(void)::process = v5;
  }

  v6 = *(v5 + 19);
  if (v6)
  {
    CFRetain(v6[1]);
    WebKit::InjectedBundle::setBundleParameters(v6, a2, a3);
    v7 = v6[1];

    CFRelease(v7);
  }
}

BOOL WebKit::getNetworkProcessConnection(WebKit *this, IPC::Connection *a2)
{
  *this = 0;
  *(this + 8) = 0;
  *(this + 40) = 0;
  v6[0] = a2;
  v6[1] = this;
  result = WebKit::getNetworkProcessConnection(IPC::Connection &)::$_0::operator()(v6);
  if (!result)
  {
    v3 = 30;
    while (--v3)
    {
      v4 = qword_1ED6416A0;
      if (os_log_type_enabled(qword_1ED6416A0, OS_LOG_TYPE_ERROR))
      {
        *v5 = 0;
        _os_log_error_impl(&dword_19D52D000, v4, OS_LOG_TYPE_ERROR, "getNetworkProcessConnection: Failed to get connection to network process, will retry...", v5, 2u);
      }

      WTF::sleep();
      result = WebKit::getNetworkProcessConnection(IPC::Connection &)::$_0::operator()(v6);
      if (result)
      {
        return result;
      }
    }

    __break(0xC471u);
  }

  return result;
}

unsigned int *WebKit::WebProcess::networkProcessConnectionClosed(WebKit::WebProcess *this, WebKit::NetworkProcessConnection *a2)
{
  v92 = *MEMORY[0x1E69E9840];
  v4 = qword_1ED640D10;
  if (os_log_type_enabled(qword_1ED640D10, OS_LOG_TYPE_DEFAULT))
  {
    if (*(this + 712) == 1)
    {
      v6 = *(this + 88);
      if (a2)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v6 = 0;
      if (a2)
      {
LABEL_4:
        v7 = *(*(a2 + 3) + 344);
        if (v7)
        {
          LODWORD(v7) = xpc_connection_get_pid(v7);
        }

        goto LABEL_8;
      }
    }

    LODWORD(v7) = 0;
LABEL_8:
    *buf = 134218496;
    *&buf[4] = this;
    v88 = 2048;
    v89 = v6;
    v90 = 1024;
    v91 = v7;
    _os_log_impl(&dword_19D52D000, v4, OS_LOG_TYPE_DEFAULT, "%p - [sessionID=%llu] WebProcess::networkProcessConnectionClosed: NetworkProcess (%d) closed its connection (Crashed)", buf, 0x1Cu);
  }

  v8 = *(this + 87);
  if (v8)
  {
    v9 = *(v8 - 4);
    v10 = (v8 + 16 * v9);
    if (*(v8 - 12))
    {
      v11 = *(this + 87);
      if (v9)
      {
        v12 = 16 * v9;
        v11 = *(this + 87);
        while ((*v11 + 1) <= 1)
        {
          v11 += 2;
          v12 -= 16;
          if (!v12)
          {
            v11 = v10;
            goto LABEL_21;
          }
        }
      }

      goto LABEL_21;
    }

    v11 = (v8 + 16 * v9);
  }

  else
  {
    v11 = 0;
    v9 = 0;
  }

  v10 = (v8 + 16 * v9);
  if (!v8)
  {
    v13 = 0;
LABEL_24:
    v15 = 0;
    goto LABEL_25;
  }

LABEL_21:
  v13 = (v8 + 16 * *(v8 - 4));
  v14 = *(v8 - 12);
  if (!v14)
  {
    goto LABEL_24;
  }

  if (v14 >> 29)
  {
    __break(0xC471u);
    goto LABEL_160;
  }

  v15 = WTF::fastMalloc((8 * v14));
LABEL_25:
  if (v11 != v13)
  {
    v16 = 0;
    v17 = 1;
    do
    {
      v18 = v17;
      v19 = *v11;
      v11 += 2;
      *(v15 + v16) = v19;
      while (v11 != v10 && (*v11 + 1) <= 1)
      {
        v11 += 2;
      }

      ++v16;
      ++v17;
    }

    while (v11 != v13);
    if (v16)
    {
      v20 = 8 * v18;
      v21 = v15;
      do
      {
        WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaMapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::StorageAreaMap,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaMapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaMapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakPtr<WebKit::StorageAreaMap,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaMapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::StorageAreaMap,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaMapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaMapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakPtr<WebKit::StorageAreaMap,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaMapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::ObjectIdentifierGeneric<WebKit::StorageAreaMapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(buf, this + 87, *v21);
        v22 = *buf;
        if (*buf)
        {
          v23 = *(*buf + 8);
          if (v23)
          {
            ++*(v23 + 4);
          }

          *buf = 0;
          if (atomic_fetch_add(v22, 0xFFFFFFFF) == 1)
          {
            atomic_store(1u, v22);
            WTF::fastFree(v22, v5);
            if (!v23)
            {
              goto LABEL_40;
            }

LABEL_39:
            WebKit::StorageAreaMap::disconnect(v23, v5);
            WTF::RefCounted<WebKit::StorageAreaMap>::deref(v23 + 4);
            goto LABEL_40;
          }

          if (v23)
          {
            goto LABEL_39;
          }
        }

LABEL_40:
        ++v21;
        v20 -= 8;
      }

      while (v20);
    }
  }

  if (v15)
  {
    WTF::fastFree(v15, v5);
  }

  v24 = WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::begin(this + 17);
  v25 = v24;
  v27 = v26;
  v28 = *(this + 17);
  if (v28)
  {
    v29 = (v28 + 16 * *(v28 - 4));
  }

  else
  {
    v29 = 0;
  }

  if (v29 != v24)
  {
    while (1)
    {
      v30 = *(*(v25 + 1) + 56);
      if (v30)
      {
        ++*(v30 + 2);
      }

      v24 = WebCore::Page::optionalIDBConnection(v30);
      if (!v24)
      {
        break;
      }

      v31 = v24;
      atomic_fetch_add(v24, 1u);
      v32 = *(a2 + 9);
      if (v32)
      {
        v34 = *(v32 + 24);
        v33 = (v32 + 24);
        *v33 = v34 + 1;
        WebCore::Page::clearIDBConnection(v30);
        v24 = WTF::RefCounted<WebKit::WebIDBConnectionToServer>::deref(v33, v35);
      }

      if (atomic_fetch_add(v31, 0xFFFFFFFF) != 1)
      {
        break;
      }

      atomic_store(1u, v31);
      WebCore::IDBClient::IDBConnectionToServer::operator delete(v31);
      if (v30)
      {
        goto LABEL_56;
      }

      do
      {
LABEL_57:
        v25 += 4;
      }

      while (v25 != v27 && (*v25 + 1) <= 1);
      if (v25 == v29)
      {
        goto LABEL_63;
      }
    }

    if (!v30)
    {
      goto LABEL_57;
    }

LABEL_56:
    v24 = WTF::RefCounted<WebCore::Page>::deref(v30 + 2);
    goto LABEL_57;
  }

LABEL_63:
  v36 = WebCore::SWContextManager::singleton(v24);
  v37 = WebCore::SWContextManager::connection(v36);
  if (v37)
  {
    v38 = WebCore::SWContextManager::singleton(v37);
    WebCore::SWContextManager::stopAllServiceWorkers(v38);
  }

  v39 = *(this + 42);
  *(this + 42) = 0;
  if (v39)
  {
    if (v39[5] == 1)
    {
      (*(*v39 + 24))(v39);
    }

    else
    {
      --v39[5];
    }
  }

  v40 = WebKit::WebProcess::focusedWebPage(this);
  if (v40)
  {
    v41 = v40;
    CFRetain(*(v40 + 8));
    v42 = *(v41 + 56);
    if (v42)
    {
      ++*(v42 + 2);
      CFRelease(*(v41 + 8));
LABEL_71:
      v43 = WebCore::Page::diagnosticLoggingClient(v42);
      v44 = WebCore::DiagnosticLoggingKeys::internalErrorKey(buf, v43);
      WebCore::DiagnosticLoggingKeys::networkProcessCrashedKey(&v86, v44);
      (**v43)(v43, buf, &v86, 0);
      v46 = v86;
      v86 = 0;
      if (v46 && atomic_fetch_add_explicit(v46, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v46, v45);
      }

      v47 = *buf;
      *buf = 0;
      if (v47 && atomic_fetch_add_explicit(v47, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v47, v45);
      }

      WTF::RefCounted<WebCore::Page>::deref(v42 + 2);
      goto LABEL_78;
    }

    CFRelease(*(v41 + 8));
  }

  v83 = WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::begin(this + 17);
  v85 = *(this + 17);
  if (v85)
  {
    v85 += 2 * *(v85 - 1);
  }

  if (v85 != v83)
  {
    while (1)
    {
      v42 = *(v83[1] + 56);
      if (v42)
      {
        break;
      }

      do
      {
        v83 += 2;
      }

      while (v83 != v84 && (*v83 + 1) <= 1);
      if (v83 == v85)
      {
        goto LABEL_78;
      }
    }

    ++*(v42 + 2);
    goto LABEL_71;
  }

LABEL_78:
  WebKit::WebLoaderStrategy::networkProcessCrashed(*(this + 43));
  WebKit::WebSocketChannelManager::networkProcessCrashed(this + 440, v48);
  WebKit::WebBroadcastChannelRegistry::networkProcessCrashed(*(this + 53));
  v49 = *(this + 56);
  if (v49)
  {
    WebKit::LibWebRTCNetwork::networkProcessCrashed(v49);
  }

  result = WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::begin(this + 17);
  v52 = result;
  v53 = v51;
  v54 = *(this + 17);
  if (v54)
  {
    v55 = (v54 + 16 * *(v54 - 4));
  }

  else
  {
    v55 = 0;
  }

  if (v55 != result)
  {
    do
    {
      result = WebKit::WebPage::stopAllURLSchemeTasks(*(v52 + 1));
      v56 = *(*(v52 + 1) + 56);
      if (v56)
      {
        v57 = *(*(v56 + 1160) + 16);
        result = (*(*v57 + 144))(v57);
        if (result)
        {
          ++v57[2];
          *buf = 0;
          WebKit::WebPaymentCoordinator::didCancelPaymentSession(v57);
          v58 = *buf;
          *buf = 0;
          if (v58)
          {
            CFRelease(v58);
          }

          result = WTF::RefCounted<WebKit::WebPaymentCoordinator>::deref(v57 + 2);
        }
      }

      do
      {
        v52 += 4;
      }

      while (v52 != v53 && (*v52 + 1) <= 1);
    }

    while (v52 != v55);
  }

  v59 = *(this + 44);
  if (v59)
  {
    atomic_fetch_add(v59 + 2, 1u);
    WebKit::WebFileSystemStorageConnection::connectionClosed(v59, v51);
    result = *(this + 44);
    *(this + 44) = 0;
    if (result && atomic_fetch_add(result + 2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, result + 2);
      result = (*(*result + 8))(result);
    }

    if (atomic_fetch_add(v59 + 2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v59 + 2);
      result = (*(*v59 + 8))(v59);
    }
  }

  v60 = *(*(this + 49) + 24);
  if (v60)
  {
    v61 = 0;
    atomic_compare_exchange_strong_explicit((v60 + 24), &v61, 1u, memory_order_acquire, memory_order_acquire);
    if (v61)
    {
      MEMORY[0x19EB01E30](v60 + 24);
    }

    v62 = *(v60 + 40);
    if (v62)
    {
      *(v60 + 40) = 0;
      WTF::fastFree((v62 - 16), v51);
    }

    v63 = *(v60 + 48);
    if (v63)
    {
      *(v60 + 48) = 0;
      WTF::HashTable<WebCore::ClientOrigin,WTF::KeyValuePair<WebCore::ClientOrigin,WTF::WallTime>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ClientOrigin,WTF::WallTime>>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashMap<WebCore::ClientOrigin,WTF::WallTime,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::HashTraits<WTF::WallTime>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ClientOrigin>,WTF::FastMalloc>::deallocateTable(v63, v51);
    }

    result = *(v60 + 32);
    *(v60 + 32) = 0;
    if (result)
    {
      result = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(result);
    }

    v64 = 1;
    atomic_compare_exchange_strong_explicit((v60 + 24), &v64, 0, memory_order_release, memory_order_relaxed);
    if (v64 != 1)
    {
      result = WTF::Lock::unlockSlow((v60 + 24));
    }
  }

  v65 = *(this + 105);
  if (v65)
  {
    v66 = *(v65 - 4);
    v67 = (v65 + 24 * v66);
    if (*(v65 - 12))
    {
      v68 = *(this + 105);
      if (v66)
      {
        v69 = 24 * v66;
        v68 = *(this + 105);
        while ((*v68 + 1) <= 1)
        {
          v68 += 3;
          v69 -= 24;
          if (!v69)
          {
            v68 = v67;
            goto LABEL_115;
          }
        }
      }

      goto LABEL_115;
    }

    v68 = (v65 + 24 * v66);
  }

  else
  {
    v68 = 0;
    LODWORD(v66) = 0;
  }

  v67 = (v65 + 24 * v66);
  if (!v65)
  {
    v70 = 0;
    goto LABEL_122;
  }

LABEL_115:
  v70 = (v65 + 24 * *(v65 - 4));
  v71 = *(v65 - 12);
  if (v71)
  {
    if (!(v71 >> 28))
    {
      result = WTF::fastMalloc((16 * v71));
      v72 = result;
      goto LABEL_123;
    }

    __break(0xC471u);
LABEL_160:
    JUMPOUT(0x19E16F208);
  }

LABEL_122:
  v72 = 0;
LABEL_123:
  if (v68 != v70)
  {
    v73 = 0;
    v74 = 1;
    do
    {
      v75 = v74;
      v76 = v68[1];
      result = v68[2];
      if (result)
      {
        result = WTF::ThreadSafeWeakPtrControlBlock::weakRef(result);
      }

      v77 = (v72 + 16 * v73);
      *v77 = v76;
      v77[1] = result;
      do
      {
        v68 += 3;
      }

      while (v68 != v67 && (*v68 + 1) <= 1);
      ++v73;
      v74 = v75 + 1;
    }

    while (v68 != v70);
    if (v73)
    {
      v78 = 16 * v75;
      v79 = (v72 + 8);
      do
      {
        if (*v79)
        {
          WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::RemoteMediaPlayerManager>(*v79, *(v79 - 1), buf);
          if (*buf)
          {
            WebKit::WebTransportSession::networkProcessCrashed(*buf);
            v80 = *buf;
            *buf = 0;
            if (v80)
            {
              WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::WebTransportSession,(WTF::DestructionThread)2>::deref((v80 + 32));
            }
          }
        }

        v79 += 2;
        v78 -= 16;
      }

      while (v78);
      v81 = 16 * v75;
      v82 = (v72 + 8);
      do
      {
        result = *v82;
        *v82 = 0;
        if (result)
        {
          result = WTF::ThreadSafeWeakPtrControlBlock::weakDeref(result, v51);
        }

        v82 += 2;
        v81 -= 16;
      }

      while (v81);
    }
  }

  if (v72)
  {
    return WTF::fastFree(v72, v51);
  }

  return result;
}

uint64_t WebKit::WebProcess::fileSystemStorageConnection(WebKit::WebProcess *this)
{
  result = *(this + 44);
  if (!result)
  {
    v3 = *(WebKit::WebProcess::ensureNetworkProcessConnection(this) + 24);
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
        goto LABEL_7;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v3);
LABEL_7:
    v6 = WTF::fastMalloc(0x30);
    *(v6 + 8) = 1;
    *(v6 + 16) = 0;
    *(v6 + 24) = 0;
    *v6 = &unk_1F1130DB0;
    *(v6 + 32) = 0;
    *(v6 + 40) = v3;
    v7 = *(this + 44);
    *(this + 44) = v6;
    if (v7)
    {
      if (atomic_fetch_add(v7 + 2, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v7 + 2);
        (*(*v7 + 8))(v7);
      }
    }

    return *(this + 44);
  }

  return result;
}

uint64_t WebKit::WebProcess::protectedFileSystemStorageConnection@<X0>(WebKit::WebProcess *this@<X0>, void *a2@<X8>)
{
  result = WebKit::WebProcess::fileSystemStorageConnection(this);
  atomic_fetch_add((result + 8), 1u);
  *a2 = result;
  return result;
}

atomic_uchar **WebKit::WebProcess::ensureGPUProcessConnection(atomic_uchar ***this)
{
  v2 = WTF::RunLoop::mainSingleton(this);
  if ((WTF::RunLoop::isCurrent(v2) & 1) == 0)
  {
    __break(0xC471u);
    goto LABEL_31;
  }

  result = this[45];
  if (result)
  {
    return result;
  }

  IPC::Connection::createConnectionIdentifierPair(v27);
  if ((v29 & 1) == 0)
  {
    __break(0xC471u);
LABEL_30:
    __break(1u);
LABEL_31:
    JUMPOUT(0x19E16F50CLL);
  }

  IPC::Connection::createServerConnection(v27, &v26);
  WebKit::GPUProcessConnection::create(&v26, v24);
  v5 = v24[0];
  v24[0] = 0;
  v6 = this[45];
  this[45] = v5;
  if (v6)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::GPUProcessConnection,(WTF::DestructionThread)0>::deref(v6 + 3, v4);
    v8 = v24[0];
    v24[0] = 0;
    if (v8)
    {
      WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::GPUProcessConnection,(WTF::DestructionThread)0>::deref((v8 + 24), v7);
    }
  }

  WebKit::AuxiliaryProcess::protectedParentProcessConnection(this, &v25);
  v23 = this[45][7];
  if ((v29 & 1) == 0)
  {
    goto LABEL_30;
  }

  v24[0] = &v23;
  v24[1] = &v28;
  IPC::Connection::send<Messages::WebProcessProxy::CreateGPUProcessConnection>(v25, v24);
  v9 = v25;
  v25 = 0;
  if (v9)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v9);
  }

  v10 = WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::begin(this + 17);
  v11 = v10;
  v13 = v12;
  v14 = this[17];
  if (v14)
  {
    v15 = &v14[2 * *(v14 - 1)];
  }

  else
  {
    v15 = 0;
  }

  if (v15 != v10)
  {
    do
    {
      v16 = v11[1];
      if (v16)
      {
        v17 = this[45];
        v18 = (v17 + 3);
        while (1)
        {
          v19 = *v18;
          if ((*v18 & 1) == 0)
          {
            break;
          }

          v20 = *v18;
          atomic_compare_exchange_strong_explicit(v18, &v20, v19 + 2, memory_order_relaxed, memory_order_relaxed);
          if (v20 == v19)
          {
            goto LABEL_17;
          }
        }

        WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v18);
LABEL_17:
        WebKit::WebPage::gpuProcessConnectionDidBecomeAvailable(v16, v17);
        WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::GPUProcessConnection,(WTF::DestructionThread)0>::deref(v17 + 3, v21);
      }

      do
      {
        v11 += 2;
      }

      while (v11 != v13 && (*v11 + 1) <= 1);
    }

    while (v11 != v15);
  }

  v22 = v26;
  v26 = 0;
  if (v22)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v22);
  }

  std::optional<IPC::Connection::ConnectionIdentifierPair>::~optional(v27);
  return this[45];
}

IPC::Encoder *IPC::Connection::send<Messages::WebProcessProxy::CreateGPUProcessConnection>(uint64_t *a1, void *a2)
{
  v4 = IPC::Encoder::operator new(0x238, a2);
  *v4 = 2902;
  *(v4 + 68) = 0;
  *(v4 + 70) = 0;
  *(v4 + 69) = 0;
  *(v4 + 2) = 0;
  *(v4 + 3) = 0;
  *(v4 + 1) = 0;
  IPC::Encoder::encodeHeader(v4);
  v9 = v4;
  Messages::WebProcessProxy::CreateGPUProcessConnection::encode<IPC::Encoder>(a2, v4);
  IPC::Connection::sendMessageImpl(a1, &v9, 1, 0);
  result = v9;
  v9 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v5);
    return bmalloc::api::tzoneFree(v7, v8);
  }

  return result;
}

atomic_uchar **WebKit::WebProcess::ensureProtectedGPUProcessConnection@<X0>(atomic_uchar ***this@<X0>, atomic_uchar ***a2@<X8>)
{
  result = WebKit::WebProcess::ensureGPUProcessConnection(this);
  v4 = result;
  while (1)
  {
    v5 = result[3];
    if ((v5 & 1) == 0)
    {
      break;
    }

    v6 = result[3];
    atomic_compare_exchange_strong_explicit(result + 3, &v6, (v5 + 2), memory_order_relaxed, memory_order_relaxed);
    if (v6 == v5)
    {
      goto LABEL_6;
    }
  }

  result = WTF::ThreadSafeWeakPtrControlBlock::strongRef(result[3]);
LABEL_6:
  *a2 = v4;
  return result;
}

double WebKit::WebProcess::gpuProcessTimeoutDuration(WebKit::WebProcess *this)
{
  result = INFINITY;
  if (!*(this + 800))
  {
    return 15.0;
  }

  return result;
}

WebKit::AudioMediaStreamTrackRendererInternalUnitManager *WebKit::WebProcess::gpuProcessConnectionClosed(WebKit::WebProcess *this, void *a2)
{
  v3 = *(this + 45);
  *(this + 45) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::GPUProcessConnection,(WTF::DestructionThread)0>::deref((v3 + 24), a2);
  }

  v4 = WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::begin(this + 17);
  v5 = v4;
  v7 = v6;
  v8 = *(this + 17);
  if (v8)
  {
    v9 = (v8 + 16 * *(v8 - 4));
  }

  else
  {
    v9 = 0;
  }

  if (v9 != v4)
  {
    do
    {
      v10 = v5[1];
      if (v10)
      {
        WebKit::WebPage::gpuProcessConnectionWasDestroyed(v10);
      }

      do
      {
        v5 += 2;
      }

      while (v5 != v7 && (*v5 + 1) <= 1);
    }

    while (v5 != v9);
  }

  result = *(this + 48);
  if (result)
  {

    return WebKit::AudioMediaStreamTrackRendererInternalUnitManager::restartAllUnits(result);
  }

  return result;
}

atomic_ullong *WebKit::WebProcess::gpuProcessConnectionDidBecomeUnresponsive(WebKit::WebProcess *this)
{
  WebKit::AuxiliaryProcess::protectedParentProcessConnection(this, &v5);
  v3 = *(*(this + 45) + 56);
  v4 = &v3;
  IPC::Connection::send<Messages::WebProcessProxy::GPUProcessConnectionDidBecomeUnresponsive>(v5, &v4, 0, 0, 0);
  result = v5;
  v5 = 0;
  if (result)
  {
    return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(result);
  }

  return result;
}

uint64_t IPC::Connection::send<Messages::WebProcessProxy::GPUProcessConnectionDidBecomeUnresponsive>(uint64_t *a1, void **a2, uint64_t a3, char a4, uint64_t a5)
{
  v10 = IPC::Encoder::operator new(0x238, a2);
  *v10 = 2916;
  *(v10 + 2) = 0;
  *(v10 + 3) = 0;
  *(v10 + 1) = a3;
  *(v10 + 68) = 0;
  *(v10 + 70) = 0;
  *(v10 + 69) = 0;
  IPC::Encoder::encodeHeader(v10);
  v17 = v10;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v10, **a2);
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

WebKit::LibWebRTCCodecs *WebKit::WebProcess::protectedLibWebRTCCodecs@<X0>(WebKit::WebProcess *this@<X0>, void *a2@<X1>, WebKit::LibWebRTCCodecs **a3@<X8>)
{
  result = WebKit::WebProcess::libWebRTCCodecs(this, a2);
  v5 = result;
  while (1)
  {
    v6 = *(result + 1);
    if ((v6 & 1) == 0)
    {
      break;
    }

    v7 = *(result + 1);
    atomic_compare_exchange_strong_explicit(result + 1, &v7, v6 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v7 == v6)
    {
      goto LABEL_4;
    }
  }

  result = WTF::ThreadSafeWeakPtrControlBlock::strongRef(*(result + 1));
LABEL_4:
  *a3 = v5;
  return result;
}

uint64_t WebKit::WebProcess::audioMediaStreamTrackRendererInternalUnitManager(WebKit::WebProcess *this, void *a2)
{
  result = *(this + 48);
  if (!result)
  {
    v4 = WebKit::AudioMediaStreamTrackRendererInternalUnitManager::operator new(8, a2);
    *v4 = 0;
    v5 = 0;
    std::unique_ptr<WebKit::AudioMediaStreamTrackRendererInternalUnitManager>::reset[abi:sn200100](this + 48, v4);
    std::unique_ptr<WebKit::AudioMediaStreamTrackRendererInternalUnitManager>::reset[abi:sn200100](&v5, 0);
    return *(this + 48);
  }

  return result;
}

WTF *WebKit::WebProcess::startMemorySampler(WebKit::WebMemorySampler *a1, uint64_t *a2, atomic_uint **a3, double a4)
{
  v7 = WebKit::WebMemorySampler::singleton(a1);

  return WebKit::WebMemorySampler::start(v7, a2, a3, a4);
}

uint64_t WebKit::WebProcess::stopMemorySampler(WebKit::WebProcess *this)
{
  v1 = WebKit::WebMemorySampler::singleton(this);

  return WebKit::WebMemorySampler::stop(v1);
}

void *WebKit::WebProcess::setTextCheckerState(void *result, char a2)
{
  v2 = result;
  if (a2)
  {
    v3 = 0;
  }

  else
  {
    v3 = result[40] & 1;
  }

  if ((a2 & 2) != 0)
  {
    v4 = 0;
  }

  else
  {
    v4 = (*(result + 320) >> 1) & 1;
  }

  *(result + 320) = a2;
  if ((v3 | v4))
  {
    result = WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::begin(result + 17);
    v5 = result;
    v7 = v6;
    v8 = v2[17];
    v9 = v8 ? v8 + 16 * *(v8 - 4) : 0;
    if (v9 != result)
    {
      do
      {
        if (v3)
        {
          result = WebKit::WebPage::unmarkAllMisspellings(v5[1]);
        }

        if (v4)
        {
          result = WebKit::WebPage::unmarkAllBadGrammar(v5[1]);
        }

        do
        {
          v5 += 2;
        }

        while (v5 != v7 && (*v5 + 1) <= 1);
      }

      while (v5 != v9);
    }
  }

  return result;
}

uint64_t WebKit::WebProcess::fetchWebsiteData(WebCore::MemoryCache *a1, char a2, uint64_t *a3)
{
  v32 = 0;
  v30 = 0u;
  v31 = 0u;
  if ((a2 & 4) == 0)
  {
    goto LABEL_46;
  }

  result = WebCore::MemoryCache::singleton(a1);
  if ((*(a1 + 712) & 1) == 0)
  {
    __break(1u);
    goto LABEL_54;
  }

  result = WebCore::MemoryCache::originsWithCache();
  v9 = v29;
  if (!v29)
  {
    v12 = 0;
    v13 = 0;
    goto LABEL_43;
  }

  v10 = *(v29 - 3);
  if (!v10)
  {
    v12 = 0;
    v13 = 0;
    goto LABEL_9;
  }

  if (v10 >= 0x5555556)
  {
LABEL_54:
    __break(0xC471u);
    return result;
  }

  v11 = 48 * v10;
  v12 = WTF::fastMalloc((48 * v10));
  v13 = v11 / 0x30;
  v9 = v29;
LABEL_9:
  if (!*(v9 - 3))
  {
    goto LABEL_43;
  }

  v14 = *(v9 - 1);
  v15 = v9;
  if (v14)
  {
    v16 = 8 * v14;
    v15 = v9;
    while ((*v15 + 1) <= 1)
    {
      ++v15;
      v16 -= 8;
      if (!v16)
      {
        goto LABEL_43;
      }
    }
  }

  v17 = &v9[v14];
  if (v17 == v15)
  {
LABEL_43:
    v18 = 0;
    goto LABEL_44;
  }

  v27 = v13;
  v18 = 0;
  do
  {
    v19 = *v15;
    v20 = *(*v15 + 32);
    if (*(*v15 + 32))
    {
      if (v20 == 255)
      {
        goto LABEL_42;
      }

      v21 = *(v19 + 8);
      v22 = *(v19 + 16);
      if (*(*v15 + 32))
      {
LABEL_39:
        if (v20 == 255)
        {
LABEL_42:
          v23 = v12 + 48 * v18;
          *v23 = 0;
          LOBYTE(v20) = -1;
        }

        else
        {
          v23 = v12 + 48 * v18;
          *v23 = v21;
          *(v23 + 8) = v22;
        }

        *(v23 + 24) = v20;
        goto LABEL_32;
      }
    }

    else
    {
      v21 = *(v19 + 8);
      if (v21)
      {
        atomic_fetch_add_explicit(v21, 2u, memory_order_relaxed);
      }

      v22 = *(v19 + 16);
      if (v22)
      {
        atomic_fetch_add_explicit(v22, 2u, memory_order_relaxed);
      }

      v3 = *(v19 + 24);
      v20 = *(v19 + 32);
      if (*(v19 + 32))
      {
        goto LABEL_39;
      }
    }

    if (v21)
    {
      atomic_fetch_add_explicit(v21, 2u, memory_order_relaxed);
    }

    if (v22 && (atomic_fetch_add_explicit(v22, 2u, memory_order_relaxed), atomic_fetch_add_explicit(v22, 0xFFFFFFFE, memory_order_relaxed) == 2))
    {
      WTF::StringImpl::destroy(v22, v7);
      if (v21)
      {
LABEL_28:
        if (atomic_fetch_add_explicit(v21, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v21, v7);
        }
      }
    }

    else if (v21)
    {
      goto LABEL_28;
    }

    v23 = v12 + 48 * v18;
    *v23 = v21;
    *(v23 + 8) = v22;
    *(v23 + 16) = v3;
    *(v23 + 24) = 0;
LABEL_32:
    *(v23 + 32) = 4;
    *(v23 + 40) = 0;
    do
    {
      ++v15;
    }

    while (v15 != v17 && (*v15 + 1) <= 1);
    ++v18;
  }

  while (v15 != v17);
  v13 = v27;
LABEL_44:
  *&v8 = 0;
  v28 = v8;
  *&v30 = v12;
  *(&v30 + 1) = __PAIR64__(v18, v13);
  WTF::Vector<WebKit::WebsiteData::Entry,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v28, v7);
  if (v29)
  {
    WTF::HashTable<WTF::RefPtr<WebCore::SecurityOrigin,WTF::RawPtrTraits<WebCore::SecurityOrigin>,WTF::DefaultRefDerefTraits<WebCore::SecurityOrigin>>,WTF::RefPtr<WebCore::SecurityOrigin,WTF::RawPtrTraits<WebCore::SecurityOrigin>,WTF::DefaultRefDerefTraits<WebCore::SecurityOrigin>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::RefPtr<WebCore::SecurityOrigin,WTF::RawPtrTraits<WebCore::SecurityOrigin>,WTF::DefaultRefDerefTraits<WebCore::SecurityOrigin>>>,WTF::HashTraits<WTF::RefPtr<WebCore::SecurityOrigin,WTF::RawPtrTraits<WebCore::SecurityOrigin>,WTF::DefaultRefDerefTraits<WebCore::SecurityOrigin>>>,WTF::HashTraits<WTF::RefPtr<WebCore::SecurityOrigin,WTF::RawPtrTraits<WebCore::SecurityOrigin>,WTF::DefaultRefDerefTraits<WebCore::SecurityOrigin>>>,WTF::FastMalloc>::deallocateTable(v29, v24);
  }

LABEL_46:
  v25 = *a3;
  *a3 = 0;
  (*(*v25 + 16))(v25, &v30);
  (*(*v25 + 8))(v25);
  if (v32)
  {
    WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v32, v26);
  }

  if (*(&v31 + 1))
  {
    WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(*(&v31 + 1), v26);
  }

  if (v31)
  {
    WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v31, v26);
  }

  return WTF::Vector<WebKit::WebsiteData::Entry,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v30, v26);
}

uint64_t WebKit::WebProcess::deleteWebsiteData(WebKit::WebProcess *this, __int16 a2, uint64_t *a3)
{
  if ((a2 & 4) != 0)
  {
    WebCore::BackForwardCache::singleton(this);
    v6 = WebCore::BackForwardCache::pruneToSizeNow();
    result = WebCore::MemoryCache::singleton(v6);
    if ((*(this + 712) & 1) == 0)
    {
      __break(1u);
      return result;
    }

    v8 = WebCore::MemoryCache::evictResources();
    v9 = WebCore::CrossOriginPreflightResultCache::singleton(v8);
    WebCore::CrossOriginPreflightResultCache::clear(v9);
  }

  if ((a2 & 0x1000) != 0)
  {
    WebKit::WebProcess::clearResourceLoadStatistics(this);
  }

  v10 = *a3;
  *a3 = 0;
  (*(*v10 + 16))(v10);
  v11 = *(*v10 + 8);

  return v11(v10);
}

WTF::StringImpl *WebKit::WebProcess::clearResourceLoadStatistics(WebKit::WebProcess *this)
{
  v2 = WebCore::ResourceLoadObserver::sharedIfExists(this);
  if (v2)
  {
    (*(*v2 + 104))(v2);
  }

  result = WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::begin(this + 17);
  v5 = result;
  v6 = v4;
  v7 = *(this + 17);
  if (v7)
  {
    v8 = (v7 + 16 * *(v7 - 4));
  }

  else
  {
    v8 = 0;
  }

  if (v8 != result)
  {
    do
    {
      v9 = *(*(v5 + 1) + 40);
      result = *(v9 + 320);
      if (result)
      {
        *(v9 + 320) = 0;
        result = WTF::HashTable<WebCore::RegistrableDomain,WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashMap<WebCore::RegistrableDomain,WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::deallocateTable(result, v4);
      }

      do
      {
        v5 = (v5 + 16);
      }

      while (v5 != v6 && (*v5 + 1) <= 1);
    }

    while (v5 != v8);
  }

  return result;
}

uint64_t WebKit::WebProcess::deleteAllCookies(uint64_t a1, uint64_t *a2)
{
  v3 = WebKit::WebCookieCache::clear(*(*(a1 + 432) + 32));
  v4 = *a2;
  *a2 = 0;
  (*(*v4 + 16))(v4, v3);
  v5 = *(*v4 + 8);

  return v5(v4);
}

uint64_t WebKit::WebProcess::deleteWebsiteDataForOrigin(WebCore::MemoryCache *a1, char a2, uint64_t a3, uint64_t *a4)
{
  if ((a2 & 4) == 0)
  {
    goto LABEL_26;
  }

  WebCore::MemoryCache::singleton(a1);
  WebCore::MemoryCache::removeResourcesWithOrigin();
  v6 = WebCore::operator==();
  if (!v6)
  {
    goto LABEL_26;
  }

  WebCore::BackForwardCache::singleton(v6);
  WebCore::SecurityOriginData::securityOrigin(&v27, (a3 + 32));
  v7 = v27;
  v27 = 0;
  v8 = WTF::fastZeroedMalloc(0x50);
  *v8 = xmmword_19E704670;
  v9 = v8 + 16;
  v28 = (v8 + 16);
  if (v7 == -1 || !v7)
  {
    __break(0xC471u);
    JUMPOUT(0x19E1701ACLL);
  }

  v29 = -1640531527;
  v30 = 0;
  v31 = 0;
  WTF::add<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>(&v29, v7 + 8);
  v10 = WTF::SuperFastHash::hash(&v29);
  v12 = 0;
  for (i = 1; ; ++i)
  {
    v14 = v10 & 7;
    v15 = (v9 + 8 * (v10 & 7));
    v16 = *v15;
    if (*v15 == -1)
    {
      v12 = (v9 + 8 * v14);
      goto LABEL_11;
    }

    if (!v16)
    {
      break;
    }

    if (WebCore::SecurityOrigin::isSameSchemeHostPort(v16, v7))
    {
      goto LABEL_22;
    }

LABEL_11:
    v10 = i + v14;
  }

  if (v12)
  {
    *v12 = 0;
    --*(v28 - 4);
    v15 = v12;
  }

  atomic_fetch_add(v7, 1u);
  v17 = *v15;
  *v15 = v7;
  if (v17)
  {
    WTF::ThreadSafeRefCounted<WebCore::SecurityOrigin,(WTF::DestructionThread)0>::deref(v17, v11);
  }

  v18 = v28;
  if (v28)
  {
    v19 = *(v28 - 3) + 1;
  }

  else
  {
    v19 = 1;
  }

  *(v28 - 3) = v19;
  v20 = (*(v18 - 4) + v19);
  v21 = *(v18 - 1);
  if (v21 > 0x400)
  {
    if (v21 <= 2 * v20)
    {
LABEL_21:
      WTF::HashTable<WTF::RefPtr<WebCore::SecurityOrigin,WTF::RawPtrTraits<WebCore::SecurityOrigin>,WTF::DefaultRefDerefTraits<WebCore::SecurityOrigin>>,WTF::RefPtr<WebCore::SecurityOrigin,WTF::RawPtrTraits<WebCore::SecurityOrigin>,WTF::DefaultRefDerefTraits<WebCore::SecurityOrigin>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::RefPtr<WebCore::SecurityOrigin,WTF::RawPtrTraits<WebCore::SecurityOrigin>,WTF::DefaultRefDerefTraits<WebCore::SecurityOrigin>>>,WTF::HashTraits<WTF::RefPtr<WebCore::SecurityOrigin,WTF::RawPtrTraits<WebCore::SecurityOrigin>,WTF::DefaultRefDerefTraits<WebCore::SecurityOrigin>>>,WTF::HashTraits<WTF::RefPtr<WebCore::SecurityOrigin,WTF::RawPtrTraits<WebCore::SecurityOrigin>,WTF::DefaultRefDerefTraits<WebCore::SecurityOrigin>>>,WTF::FastMalloc>::expand(&v28);
    }
  }

  else if (3 * v21 <= 4 * v20)
  {
    goto LABEL_21;
  }

LABEL_22:
  WebCore::BackForwardCache::clearEntriesForOrigins();
  if (v28)
  {
    WTF::HashTable<WTF::RefPtr<WebCore::SecurityOrigin,WTF::RawPtrTraits<WebCore::SecurityOrigin>,WTF::DefaultRefDerefTraits<WebCore::SecurityOrigin>>,WTF::RefPtr<WebCore::SecurityOrigin,WTF::RawPtrTraits<WebCore::SecurityOrigin>,WTF::DefaultRefDerefTraits<WebCore::SecurityOrigin>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::RefPtr<WebCore::SecurityOrigin,WTF::RawPtrTraits<WebCore::SecurityOrigin>,WTF::DefaultRefDerefTraits<WebCore::SecurityOrigin>>>,WTF::HashTraits<WTF::RefPtr<WebCore::SecurityOrigin,WTF::RawPtrTraits<WebCore::SecurityOrigin>,WTF::DefaultRefDerefTraits<WebCore::SecurityOrigin>>>,WTF::HashTraits<WTF::RefPtr<WebCore::SecurityOrigin,WTF::RawPtrTraits<WebCore::SecurityOrigin>,WTF::DefaultRefDerefTraits<WebCore::SecurityOrigin>>>,WTF::FastMalloc>::deallocateTable(v28, v22);
  }

  WTF::ThreadSafeRefCounted<WebCore::SecurityOrigin,(WTF::DestructionThread)0>::deref(v7, v22);
  v24 = v27;
  v27 = 0;
  if (v24)
  {
    WTF::ThreadSafeRefCounted<WebCore::SecurityOrigin,(WTF::DestructionThread)0>::deref(v24, v23);
  }

LABEL_26:
  v25 = *a4;
  *a4 = 0;
  (*(*v25 + 16))(v25);
  return (*(*v25 + 8))(v25);
}

uint64_t WebKit::WebProcess::reloadExecutionContextsForOrigin(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v7 = WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::begin((a1 + 136));
  v8 = v7;
  v10 = v9;
  v11 = *(a1 + 136);
  if (v11)
  {
    v12 = (v11 + 16 * *(v11 - 4));
  }

  else
  {
    v12 = 0;
  }

  if (v12 != v7)
  {
    do
    {
      v13 = *(v8[1] + 56);
      if (v13)
      {
        v14 = (v13 + 8);
        ++*(v13 + 8);
        WebCore::Page::reloadExecutionContextsForOrigin();
        WTF::RefCounted<WebCore::Page>::deref(v14);
      }

      do
      {
        v8 += 2;
      }

      while (v8 != v10 && (*v8 + 1) <= 1);
    }

    while (v8 != v12);
  }

  v15 = *a5;
  *a5 = 0;
  (*(*v15 + 16))(v15);
  v16 = *(*v15 + 8);

  return v16(v15);
}

uint64_t WebKit::WebProcess::deleteWebsiteDataForOrigins(WebCore::MemoryCache *a1, char a2, uint64_t a3, void *a4)
{
  if ((a2 & 4) == 0)
  {
    goto LABEL_36;
  }

  v25 = a4;
  v26 = a1;
  v28 = 0;
  v4 = *(a3 + 12);
  if (!v4)
  {
    goto LABEL_32;
  }

  v5 = *a3;
  v6 = *a3 + 32 * v4;
  do
  {
    WebCore::SecurityOriginData::securityOrigin(&v27, v5);
    v7 = v27;
    v27 = 0;
    if (v7 == -1 || !v7)
    {
      goto LABEL_38;
    }

    v8 = v28;
    if (v28 || (WTF::HashTable<WTF::RefPtr<WebCore::SecurityOrigin,WTF::RawPtrTraits<WebCore::SecurityOrigin>,WTF::DefaultRefDerefTraits<WebCore::SecurityOrigin>>,WTF::RefPtr<WebCore::SecurityOrigin,WTF::RawPtrTraits<WebCore::SecurityOrigin>,WTF::DefaultRefDerefTraits<WebCore::SecurityOrigin>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::RefPtr<WebCore::SecurityOrigin,WTF::RawPtrTraits<WebCore::SecurityOrigin>,WTF::DefaultRefDerefTraits<WebCore::SecurityOrigin>>>,WTF::HashTraits<WTF::RefPtr<WebCore::SecurityOrigin,WTF::RawPtrTraits<WebCore::SecurityOrigin>,WTF::DefaultRefDerefTraits<WebCore::SecurityOrigin>>>,WTF::HashTraits<WTF::RefPtr<WebCore::SecurityOrigin,WTF::RawPtrTraits<WebCore::SecurityOrigin>,WTF::DefaultRefDerefTraits<WebCore::SecurityOrigin>>>,WTF::FastMalloc>::expand(&v28), (v8 = v28) != 0))
    {
      v9 = *(v8 - 2);
    }

    else
    {
      v9 = 0;
    }

    v29 = -1640531527;
    v30 = 0;
    v31 = 0;
    WTF::add<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>(&v29, v7 + 8);
    v10 = WTF::SuperFastHash::hash(&v29);
    v12 = 0;
    for (i = 1; ; ++i)
    {
      v14 = v10 & v9;
      v15 = &v8[v10 & v9];
      v16 = *v15;
      if (*v15 == -1)
      {
        v12 = &v8[v14];
        goto LABEL_15;
      }

      if (!v16)
      {
        break;
      }

      if (WebCore::SecurityOrigin::isSameSchemeHostPort(v16, v7))
      {
        WTF::ThreadSafeRefCounted<WebCore::SecurityOrigin,(WTF::DestructionThread)0>::deref(v7, v11);
        goto LABEL_25;
      }

LABEL_15:
      v10 = i + v14;
    }

    if (v12)
    {
      *v12 = 0;
      --*(v28 - 4);
      *v12 = v7;
    }

    else
    {
      *v15 = v7;
    }

    v17 = v28;
    if (v28)
    {
      v18 = *(v28 - 3) + 1;
    }

    else
    {
      v18 = 1;
    }

    *(v28 - 3) = v18;
    v19 = (*(v17 - 4) + v18);
    v20 = *(v17 - 1);
    if (v20 > 0x400)
    {
      if (v20 <= 2 * v19)
      {
LABEL_24:
        WTF::HashTable<WTF::RefPtr<WebCore::SecurityOrigin,WTF::RawPtrTraits<WebCore::SecurityOrigin>,WTF::DefaultRefDerefTraits<WebCore::SecurityOrigin>>,WTF::RefPtr<WebCore::SecurityOrigin,WTF::RawPtrTraits<WebCore::SecurityOrigin>,WTF::DefaultRefDerefTraits<WebCore::SecurityOrigin>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::RefPtr<WebCore::SecurityOrigin,WTF::RawPtrTraits<WebCore::SecurityOrigin>,WTF::DefaultRefDerefTraits<WebCore::SecurityOrigin>>>,WTF::HashTraits<WTF::RefPtr<WebCore::SecurityOrigin,WTF::RawPtrTraits<WebCore::SecurityOrigin>,WTF::DefaultRefDerefTraits<WebCore::SecurityOrigin>>>,WTF::HashTraits<WTF::RefPtr<WebCore::SecurityOrigin,WTF::RawPtrTraits<WebCore::SecurityOrigin>,WTF::DefaultRefDerefTraits<WebCore::SecurityOrigin>>>,WTF::FastMalloc>::expand(&v28);
      }
    }

    else if (3 * v20 <= 4 * v19)
    {
      goto LABEL_24;
    }

LABEL_25:
    a1 = v27;
    v27 = 0;
    if (a1)
    {
      a1 = WTF::ThreadSafeRefCounted<WebCore::SecurityOrigin,(WTF::DestructionThread)0>::deref(a1, v11);
    }

    v5 = (v5 + 32);
  }

  while (v5 != v6);
LABEL_32:
  WebCore::MemoryCache::singleton(a1);
  if ((*(v26 + 712) & 1) == 0)
  {
    __break(1u);
LABEL_38:
    __break(0xC471u);
    JUMPOUT(0x19E170584);
  }

  v21 = WebCore::MemoryCache::removeResourcesWithOrigins();
  WebCore::BackForwardCache::singleton(v21);
  WebCore::BackForwardCache::clearEntriesForOrigins();
  if (v28)
  {
    WTF::HashTable<WTF::RefPtr<WebCore::SecurityOrigin,WTF::RawPtrTraits<WebCore::SecurityOrigin>,WTF::DefaultRefDerefTraits<WebCore::SecurityOrigin>>,WTF::RefPtr<WebCore::SecurityOrigin,WTF::RawPtrTraits<WebCore::SecurityOrigin>,WTF::DefaultRefDerefTraits<WebCore::SecurityOrigin>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::RefPtr<WebCore::SecurityOrigin,WTF::RawPtrTraits<WebCore::SecurityOrigin>,WTF::DefaultRefDerefTraits<WebCore::SecurityOrigin>>>,WTF::HashTraits<WTF::RefPtr<WebCore::SecurityOrigin,WTF::RawPtrTraits<WebCore::SecurityOrigin>,WTF::DefaultRefDerefTraits<WebCore::SecurityOrigin>>>,WTF::HashTraits<WTF::RefPtr<WebCore::SecurityOrigin,WTF::RawPtrTraits<WebCore::SecurityOrigin>,WTF::DefaultRefDerefTraits<WebCore::SecurityOrigin>>>,WTF::FastMalloc>::deallocateTable(v28, v22);
  }

  a4 = v25;
LABEL_36:
  v23 = *a4;
  *a4 = 0;
  (*(*v23 + 16))(v23);
  return (*(*v23 + 8))(v23);
}

uint64_t WebKit::WebProcess::setHiddenPageDOMTimerThrottlingIncreaseLimit(uint64_t a1)
{
  result = WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::begin((a1 + 136));
  v3 = result;
  v5 = v4;
  v6 = *(a1 + 136);
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
      v8 = *(v3[1] + 56);
      if (v8)
      {
        v9 = (v8 + 8);
        ++*(v8 + 8);
        WebCore::Page::setDOMTimerAlignmentIntervalIncreaseLimit();
        result = WTF::RefCounted<WebCore::Page>::deref(v9);
      }

      else
      {
        result = WebCore::Page::setDOMTimerAlignmentIntervalIncreaseLimit();
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

uint64_t WebKit::WebProcess::releaseMemory(uint64_t a1, uint64_t *a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = qword_1ED641030;
  v5 = os_log_type_enabled(qword_1ED641030, OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    if (*(a1 + 712) == 1)
    {
      v6 = *(a1 + 704);
    }

    else
    {
      v6 = 0;
    }

    v18 = 134218240;
    v19 = a1;
    v20 = 2048;
    v21 = v6;
    _os_log_impl(&dword_19D52D000, v4, OS_LOG_TYPE_DEFAULT, "%p - [sessionID=%llu] WebProcess::releaseMemory: BEGIN", &v18, 0x16u);
  }

  v7 = *(a1 + 657);
  *(a1 + 657) = 0;
  WTF::MemoryPressureHandler::singleton(v5);
  WTF::MemoryPressureHandler::releaseMemory();
  v8 = WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::begin((a1 + 136));
  v9 = v8;
  v11 = v10;
  v12 = *(a1 + 136);
  if (v12)
  {
    v13 = (v12 + 16 * *(v12 - 4));
  }

  else
  {
    v13 = 0;
  }

  if (v13 != v8)
  {
    do
    {
      WebKit::WebPage::releaseMemory(v9[1], 1);
      do
      {
        v9 += 2;
      }

      while (v9 != v11 && (*v9 + 1) <= 1);
    }

    while (v9 != v13);
  }

  v14 = qword_1ED641030;
  if (os_log_type_enabled(qword_1ED641030, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a1 + 712) == 1)
    {
      v15 = *(a1 + 704);
    }

    else
    {
      v15 = 0;
    }

    v18 = 134218240;
    v19 = a1;
    v20 = 2048;
    v21 = v15;
    _os_log_impl(&dword_19D52D000, v14, OS_LOG_TYPE_DEFAULT, "%p - [sessionID=%llu] WebProcess::releaseMemory: END", &v18, 0x16u);
  }

  v16 = *a2;
  *a2 = 0;
  (*(*v16 + 16))(v16);
  result = (*(*v16 + 8))(v16);
  *(a1 + 657) = v7;
  return result;
}

uint64_t WebKit::WebProcess::prepareToSuspend(uint64_t a1, int a2, uint64_t *a3, double a4)
{
  v37 = *MEMORY[0x1E69E9840];
  v8 = WTF::MonotonicTime::now(a1);
  if (v9 <= a4)
  {
    v10 = 0.0;
  }

  else
  {
    v10 = v9 - a4;
  }

  v11 = WebCore::logClient(v8);
  v12 = WTF::downcast<WebKit::LogClient,WebCore::LogClient>(*v11);
  if (v12)
  {
    if (*(a1 + 712) == 1)
    {
      v13 = *(a1 + 704);
    }

    else
    {
      v13 = 0;
    }

    WebKit::LogClient::WEBPROCESS_PREPARE_TO_SUSPEND(v12, v13, a2, v10);
  }

  else
  {
    v24 = qword_1ED641030;
    v14 = os_log_type_enabled(qword_1ED641030, OS_LOG_TYPE_DEFAULT);
    if (v14)
    {
      if (*(a1 + 712) == 1)
      {
        v25 = *(a1 + 704);
      }

      else
      {
        v25 = 0;
      }

      *v32 = 134218496;
      *&v32[4] = v25;
      v33 = 1024;
      v34 = a2;
      v35 = 2048;
      v36 = v10;
      _os_log_impl(&dword_19D52D000, v24, OS_LOG_TYPE_DEFAULT, "[sessionID=%llu] WebProcess::prepareToSuspend: isSuspensionImminent=%d, remainingRunTime=%fs", v32, 0x1Cu);
    }
  }

  v15 = *(a1 + 657);
  *(a1 + 657) = 0;
  *(a1 + 544) = 1;
  Statistics = WebKit::WebProcess::flushResourceLoadStatistics(v14);
  if (*(a1 + 636) == 2)
  {
    v26 = WebCore::logClient(Statistics);
    v27 = WTF::downcast<WebKit::LogClient,WebCore::LogClient>(*v26);
    if (v27)
    {
      if (*(a1 + 712) == 1)
      {
        v30 = *(a1 + 704);
      }

      else
      {
        v30 = 0;
      }

      WebKit::LogClient::WEBPROCESS_READY_TO_SUSPEND(v27, v30);
    }

    else
    {
      v28 = qword_1ED641030;
      if (os_log_type_enabled(qword_1ED641030, OS_LOG_TYPE_DEFAULT))
      {
        if (*(a1 + 712) == 1)
        {
          v31 = *(a1 + 704);
        }

        else
        {
          v31 = 0;
        }

        *v32 = 134217984;
        *&v32[4] = v31;
        _os_log_impl(&dword_19D52D000, v28, OS_LOG_TYPE_DEFAULT, "[sessionID=%llu] WebProcess::prepareToSuspend: Process is ready to suspend", v32, 0xCu);
      }
    }

    v29 = *a3;
    *a3 = 0;
    (*(*v29 + 16))(v29);
    result = (*(*v29 + 8))(v29);
  }

  else
  {
    v17 = WebKit::WebProcess::suspendAllMediaBuffering(a1);
    v18 = WebCore::PlatformMediaSessionManager::singletonIfExists(v17);
    if (v18)
    {
      WebCore::PlatformMediaSessionManager::processWillSuspend(v18);
    }

    if ((*(a1 + 632) & 1) == 0 && *(a1 + 635) == 1)
    {
      v22 = *(a1 + 136);
      if (v22)
      {
        if (*(v22 - 12))
        {
          if ((*(a1 + 636) & 0xFFFFFFFE) != 2 && (WebKit::WebProcess::areAllPagesSuspended(a1) & 1) == 0)
          {
            v23 = WTF::fastMalloc(0x10);
            *v23 = &unk_1F1122668;
            *v32 = v23;
            WebKit::WebProcess::releaseMemory(a1, v32);
            if (*v32)
            {
              (*(**v32 + 8))(*v32);
            }
          }
        }
      }
    }

    *(a1 + 635) = 0;
    WebKit::WebProcess::freezeAllLayerTrees(a1);
    WebKit::WebProcess::destroyRenderingResources(a1);
    WebKit::WebProcess::accessibilityRelayProcessSuspended(a1, 1);
    WebKit::WebProcess::updateFreezerStatus(a1);
    v19 = *a3;
    *a3 = 0;
    v20 = WTF::fastMalloc(0x20);
    *v20 = &unk_1F1122690;
    v20[1] = a1;
    v20[2] = a1;
    v20[3] = v19;
    *v32 = v20;
    WebKit::WebProcess::markAllLayersVolatile(a1, v32);
    result = *v32;
    if (*v32)
    {
      result = (*(**v32 + 8))(*v32);
    }
  }

  *(a1 + 657) = v15;
  return result;
}

void WebKit::LogClient::WEBPROCESS_PREPARE_TO_SUSPEND(WebKit::LogClient *this, uint64_t a2, int a3, double a4)
{
  v9 = a3;
  os_unfair_lock_lock(this + 4);
  v7 = *(this + 1);
  *&v8[0] = a2;
  *&v8[1] = &v9;
  v8[2] = a4;
  IPC::StreamClientConnection::send<Messages::LogStream::WEBPROCESS_PREPARE_TO_SUSPEND,WebKit::LogStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(v7, v8, *(this + 3));
  os_unfair_lock_unlock(this + 4);
}

void WebKit::LogClient::WEBPROCESS_READY_TO_SUSPEND(WebKit::LogClient *this, uint64_t a2)
{
  os_unfair_lock_lock(this + 4);
  v4 = *(this + 1);
  v5 = a2;
  IPC::StreamClientConnection::send<Messages::LogStream::WEBPROCESS_READY_TO_SUSPEND,WebKit::LogStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(v4, &v5, *(this + 3));

  os_unfair_lock_unlock(this + 4);
}

void *WebKit::WebProcess::suspendAllMediaBuffering(WebKit::WebProcess *this)
{
  result = WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::begin(this + 17);
  v3 = result;
  v5 = v4;
  v6 = *(this + 17);
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
      result = WebKit::WebPage::suspendAllMediaBuffering(*(v3 + 8));
      do
      {
        v3 += 16;
      }

      while (v3 != v5 && (*v3 + 1) <= 1);
    }

    while (v3 != v7);
  }

  return result;
}

void *WebKit::WebProcess::freezeAllLayerTrees(WebKit::WebProcess *this)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = WebCore::logClient(this);
  v3 = WTF::downcast<WebKit::LogClient,WebCore::LogClient>(*v2);
  if (v3)
  {
    if (*(this + 712) == 1)
    {
      v4 = *(this + 88);
    }

    else
    {
      v4 = 0;
    }

    WebKit::LogClient::WEBPROCESS_FREEZE_ALL_LAYER_TREES(v3, v4);
  }

  else
  {
    v11 = qword_1ED641030;
    if (os_log_type_enabled(qword_1ED641030, OS_LOG_TYPE_DEFAULT))
    {
      if (*(this + 712) == 1)
      {
        v12 = *(this + 88);
      }

      else
      {
        v12 = 0;
      }

      v13 = 134217984;
      v14 = v12;
      _os_log_impl(&dword_19D52D000, v11, OS_LOG_TYPE_DEFAULT, "[sessionID=%llu] WebProcess::freezeAllLayerTrees: WebProcess is freezing all layer trees", &v13, 0xCu);
    }
  }

  result = WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::begin(this + 17);
  v6 = result;
  v8 = v7;
  v9 = *(this + 17);
  if (v9)
  {
    v10 = (v9 + 16 * *(v9 - 4));
  }

  else
  {
    v10 = 0;
  }

  if (v10 != result)
  {
    do
    {
      result = WebKit::WebPage::freezeLayerTree(v6[1], 4);
      do
      {
        v6 += 2;
      }

      while (v6 != v8 && (*v6 + 1) <= 1);
    }

    while (v6 != v10);
  }

  return result;
}

atomic_uint *WebKit::WebProcess::markAllLayersVolatile(uint64_t a1, uint64_t *a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = WebCore::logClient(a1);
  v5 = WTF::downcast<WebKit::LogClient,WebCore::LogClient>(*v4);
  if (v5)
  {
    if (*(a1 + 712) == 1)
    {
      v6 = *(a1 + 704);
    }

    else
    {
      v6 = 0;
    }

    WebKit::LogClient::WEBPROCESS_MARK_ALL_LAYERS_VOLATILE(v5, v6);
  }

  else
  {
    v20 = qword_1ED641030;
    if (os_log_type_enabled(qword_1ED641030, OS_LOG_TYPE_DEFAULT))
    {
      if (*(a1 + 712) == 1)
      {
        v21 = *(a1 + 704);
      }

      else
      {
        v21 = 0;
      }

      *v22 = 134217984;
      *&v22[4] = v21;
      _os_log_impl(&dword_19D52D000, v20, OS_LOG_TYPE_DEFAULT, "[sessionID=%llu] WebProcess::markAllLayersVolatile:", v22, 0xCu);
    }
  }

  v7 = WTF::fastMalloc(0x10);
  *v7 = 1;
  v8 = *a2;
  *a2 = 0;
  *(v7 + 8) = v8;
  v9 = WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::begin((a1 + 136));
  v10 = v9;
  v12 = v11;
  v13 = *(a1 + 136);
  if (v13)
  {
    v14 = (v13 + 16 * *(v13 - 4));
  }

  else
  {
    v14 = 0;
  }

  if (v14 != v9)
  {
    do
    {
      v15 = v10[1];
      atomic_fetch_add(v7, 1u);
      v16 = *(v10[1] + 48);
      v17 = WTF::fastMalloc(0x28);
      *v17 = &unk_1F11226B8;
      v17[1] = a1;
      v17[2] = a1;
      v17[3] = v7;
      v17[4] = v16;
      *v22 = v17;
      WebKit::WebPage::markLayersVolatile(v15, v22);
      v18 = *v22;
      *v22 = 0;
      if (v18)
      {
        (*(*v18 + 8))(v18);
      }

      do
      {
        v10 += 2;
      }

      while (v10 != v12 && (*v10 + 1) <= 1);
    }

    while (v10 != v14);
  }

  return WTF::ThreadSafeRefCounted<WTF::CallbackAggregatorOnThread<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref(v7);
}

void WebKit::LogClient::WEBPROCESS_MARK_ALL_LAYERS_VOLATILE(WebKit::LogClient *this, uint64_t a2)
{
  os_unfair_lock_lock(this + 4);
  v4 = *(this + 1);
  v5 = a2;
  IPC::StreamClientConnection::send<Messages::LogStream::WEBPROCESS_MARK_ALL_LAYERS_VOLATILE,WebKit::LogStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(v4, &v5, *(this + 3));

  os_unfair_lock_unlock(this + 4);
}

void *WebKit::WebProcess::cancelMarkAllLayersVolatile(WebKit::WebProcess *this)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = qword_1ED641030;
  if (os_log_type_enabled(qword_1ED641030, OS_LOG_TYPE_DEFAULT))
  {
    if (*(this + 712) == 1)
    {
      v3 = *(this + 88);
    }

    else
    {
      v3 = 0;
    }

    v10 = 134218240;
    v11 = this;
    v12 = 2048;
    v13 = v3;
    _os_log_impl(&dword_19D52D000, v2, OS_LOG_TYPE_DEFAULT, "%p - [sessionID=%llu] WebProcess::cancelMarkAllLayersVolatile:", &v10, 0x16u);
  }

  result = WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::begin(this + 17);
  v5 = result;
  v7 = v6;
  v8 = *(this + 17);
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
      result = WebKit::WebPage::cancelMarkLayersVolatile(*(v5 + 8));
      do
      {
        v5 += 16;
      }

      while (v5 != v7 && (*v5 + 1) <= 1);
    }

    while (v5 != v9);
  }

  return result;
}

void WebKit::LogClient::WEBPROCESS_FREEZE_ALL_LAYER_TREES(WebKit::LogClient *this, uint64_t a2)
{
  os_unfair_lock_lock(this + 4);
  v4 = *(this + 1);
  v5 = a2;
  IPC::StreamClientConnection::send<Messages::LogStream::WEBPROCESS_FREEZE_ALL_LAYER_TREES,WebKit::LogStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(v4, &v5, *(this + 3));

  os_unfair_lock_unlock(this + 4);
}

void *WebKit::WebProcess::unfreezeAllLayerTrees(WebKit::WebProcess *this)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = qword_1ED641030;
  if (os_log_type_enabled(qword_1ED641030, OS_LOG_TYPE_DEFAULT))
  {
    if (*(this + 712) == 1)
    {
      v3 = *(this + 88);
    }

    else
    {
      v3 = 0;
    }

    v10 = 134218240;
    v11 = this;
    v12 = 2048;
    v13 = v3;
    _os_log_impl(&dword_19D52D000, v2, OS_LOG_TYPE_DEFAULT, "%p - [sessionID=%llu] WebProcess::unfreezeAllLayerTrees: WebProcess is unfreezing all layer trees", &v10, 0x16u);
  }

  result = WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::begin(this + 17);
  v5 = result;
  v7 = v6;
  v8 = *(this + 17);
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
      result = WebKit::WebPage::unfreezeLayerTree(v5[1], 4);
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