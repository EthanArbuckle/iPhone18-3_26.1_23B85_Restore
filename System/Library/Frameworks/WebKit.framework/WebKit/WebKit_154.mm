uint64_t WebKit::StorageAreaBase::dispatchEvents(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  result = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::GPUConnectionToWebProcess,WTF::RawPtrTraits<WebKit::GPUConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::GPUConnectionToWebProcess>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::GPUConnectionToWebProcess,WTF::RawPtrTraits<WebKit::GPUConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::GPUConnectionToWebProcess>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::GPUConnectionToWebProcess,WTF::RawPtrTraits<WebKit::GPUConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::GPUConnectionToWebProcess>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::GPUConnectionToWebProcess,WTF::RawPtrTraits<WebKit::GPUConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::GPUConnectionToWebProcess>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::begin((a1 + 96));
  v14 = result;
  v16 = v15;
  v17 = *(a1 + 96);
  if (v17)
  {
    v18 = (v17 + 16 * *(v17 - 4));
  }

  else
  {
    v18 = 0;
  }

  if (v18 != result)
  {
    do
    {
      LOBYTE(v23) = 0;
      v24 = 0;
      v19 = *v14;
      if (*v14 == a2)
      {
        v24 = 1;
        v23 = a3;
        v19 = *v14;
      }

      v20 = atomic_fetch_add(&WebKit::StorageAreaBase::nextMessageIdentifier(void)::currentIdentifier, 1uLL) + 1;
      v22[0] = &v23;
      v22[1] = a4;
      v22[2] = a5;
      v22[3] = a6;
      v22[4] = a7;
      v22[5] = v20;
      result = IPC::Connection::send<Messages::StorageAreaMap::DispatchStorageEvent>(v19, v22, v14[1], 0, 0);
      do
      {
        v14 += 2;
      }

      while (v14 != v16 && (*v14 + 1) <= 1);
    }

    while (v14 != v18);
  }

  return result;
}

uint64_t WebKit::SQLiteStorageArea::removeItem@<X0>(WebCore::SQLiteDatabase **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, const WTF::StringImpl **a4@<X3>, uint64_t a5@<X4>, __int16 *a6@<X8>)
{
  v36 = *MEMORY[0x1E69E9840];
  result = WebKit::SQLiteStorageArea::prepareDatabase(a1, 0);
  if ((result & 1) == 0)
  {
    v16 = 256;
LABEL_8:
    *a6 = v16;
    return result;
  }

  if (!a1[16])
  {
    v16 = 257;
    goto LABEL_8;
  }

  WebKit::SQLiteStorageArea::startTransactionIfNecessary(a1, v13);
  v32 = 0;
  WebKit::SQLiteStorageArea::getItem(buf, a1, a4);
  if (v34)
  {
    v15 = 257;
LABEL_5:
    *a6 = v15;
    goto LABEL_29;
  }

  v17 = *buf;
  if (*buf)
  {
    atomic_fetch_add_explicit(*buf, 2u, memory_order_relaxed);
    v32 = v17;
    if (atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v17, v14);
    }
  }

  else
  {
    v32 = 0;
  }

  WebKit::SQLiteStorageArea::cachedStatement(buf, a1, 1u);
  v18 = *buf;
  if (*buf)
  {
    atomic_fetch_add(*buf, 1u);
    MEMORY[0x19EB0CD50](buf);
    if (!WebCore::SQLiteStatement::bindText())
    {
      v21 = WebCore::SQLiteStatement::step(v18);
      if (atomic_load(v18))
      {
        v23 = v21;
        atomic_fetch_add(v18, 0xFFFFFFFF);
        if (v21 == 101)
        {
          *buf = 0;
          WebKit::StorageAreaBase::dispatchEvents(a1, a2, a3, a4, &v32, buf, a5);
          v25 = *buf;
          *buf = 0;
          if (v25 && atomic_fetch_add_explicit(v25, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v25, v24);
          }

          *buf = 0;
          WebKit::SQLiteStorageArea::updateCacheIfNeeded(a1, a4, buf);
          v26 = *buf;
          *buf = 0;
          if (v26 && atomic_fetch_add_explicit(v26, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v26, v14);
          }

          *a6 = 0;
          goto LABEL_29;
        }

        v27 = qword_1ED641350;
        if (os_log_type_enabled(qword_1ED641350, OS_LOG_TYPE_ERROR))
        {
          Error = WebCore::SQLiteDatabase::lastError(a1[16]);
          ErrorMsg = WebCore::SQLiteDatabase::lastErrorMsg(a1[16]);
          *buf = 67109378;
          *&buf[4] = Error;
          v34 = 2082;
          v35 = ErrorMsg;
          _os_log_error_impl(&dword_19D52D000, v27, OS_LOG_TYPE_ERROR, "SQLiteStorageArea::removeItem failed on executing statement (%d) - %{public}s", buf, 0x12u);
        }

        WebKit::SQLiteStorageArea::handleDatabaseErrorIfNeeded(a1, v23);
        v15 = 256;
        goto LABEL_5;
      }

LABEL_37:
      result = 290;
      __break(0xC471u);
      return result;
    }
  }

  else
  {
    MEMORY[0x19EB0CD50](buf);
  }

  v19 = qword_1ED641350;
  if (os_log_type_enabled(qword_1ED641350, OS_LOG_TYPE_ERROR))
  {
    v28 = WebCore::SQLiteDatabase::lastError(a1[16]);
    v29 = WebCore::SQLiteDatabase::lastErrorMsg(a1[16]);
    *buf = 67109378;
    *&buf[4] = v28;
    v34 = 2082;
    v35 = v29;
    _os_log_error_impl(&dword_19D52D000, v19, OS_LOG_TYPE_ERROR, "SQLiteStorageArea::removeItem failed on creating statement (%d) - %{public}s", buf, 0x12u);
  }

  *a6 = 256;
  if (!v18)
  {
    goto LABEL_29;
  }

  if (!atomic_load(v18))
  {
    goto LABEL_37;
  }

  atomic_fetch_add(v18, 0xFFFFFFFF);
LABEL_29:
  result = v32;
  v32 = 0;
  if (result)
  {
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v14);
    }
  }

  return result;
}

void WebKit::SQLiteStorageArea::clear(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v36 = *MEMORY[0x1E69E9840];
  if (!WebKit::SQLiteStorageArea::prepareDatabase(a1, 0))
  {
LABEL_29:
    v23 = 0;
    goto LABEL_30;
  }

  if (*(a1 + 168) == 1)
  {
    v11 = *(a1 + 160);
    if (!v11 || !*(v11 - 12))
    {
      goto LABEL_25;
    }

    *(a1 + 160) = 0;
    WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,mpark::variant<WTF::String,unsigned long long,long long,BOOL,double>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,mpark::variant<WTF::String,unsigned long long,long long,BOOL,double>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,mpark::variant<WTF::String,unsigned long long,long long,BOOL,double>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<mpark::variant<WTF::String,unsigned long long,long long,BOOL,double>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v11, v10);
    if ((*(a1 + 180) & 1) == 0)
    {
      *(a1 + 180) = 1;
    }

    *(a1 + 176) = 0;
  }

  if (!*(a1 + 128))
  {
LABEL_25:
    v23 = 1;
LABEL_30:
    v24 = 1;
    goto LABEL_31;
  }

  WebKit::SQLiteStorageArea::startTransactionIfNecessary(a1, v10);
  WebKit::SQLiteStorageArea::cachedStatement(buf, a1, 2u);
  v12 = *buf;
  if (!*buf)
  {
    MEMORY[0x19EB0CD50](buf);
    v28 = qword_1ED641350;
    if (os_log_type_enabled(qword_1ED641350, OS_LOG_TYPE_ERROR))
    {
      Error = WebCore::SQLiteDatabase::lastError(*(a1 + 128));
      ErrorMsg = WebCore::SQLiteDatabase::lastErrorMsg(*(a1 + 128));
      *buf = 67109378;
      *&buf[4] = Error;
      v34 = 2082;
      v35 = ErrorMsg;
      _os_log_error_impl(&dword_19D52D000, v28, OS_LOG_TYPE_ERROR, "SQLiteStorageArea::clear failed on creating statement (%d) - %{public}s", buf, 0x12u);
    }

    goto LABEL_29;
  }

  atomic_fetch_add(*buf, 1u);
  MEMORY[0x19EB0CD50](buf);
  v13 = WebCore::SQLiteStatement::step(v12);
  if (!atomic_load(v12))
  {
    goto LABEL_36;
  }

  v15 = v13;
  atomic_fetch_add(v12, 0xFFFFFFFF);
  if (v13 != 101)
  {
    v25 = qword_1ED641350;
    if (os_log_type_enabled(qword_1ED641350, OS_LOG_TYPE_ERROR))
    {
      v26 = WebCore::SQLiteDatabase::lastError(*(a1 + 128));
      v27 = WebCore::SQLiteDatabase::lastErrorMsg(*(a1 + 128));
      *buf = 67109378;
      *&buf[4] = v26;
      v34 = 2082;
      v35 = v27;
      _os_log_error_impl(&dword_19D52D000, v25, OS_LOG_TYPE_ERROR, "SQLiteStorageArea::clear failed on executing statement (%d) - %{public}s", buf, 0x12u);
    }

    WebKit::SQLiteStorageArea::handleDatabaseErrorIfNeeded(a1, v15);
    goto LABEL_29;
  }

  v16 = *(a1 + 128);
  if (!v16)
  {
    __break(0xC471u);
    JUMPOUT(0x19DE20EA8);
  }

  atomic_fetch_add(v16, 1u);
  Changes = WebCore::SQLiteDatabase::lastChanges(v16);
  if (!atomic_load(v16))
  {
LABEL_36:
    __break(0xC471u);
    JUMPOUT(0x19DE20E88);
  }

  atomic_fetch_add(v16, 0xFFFFFFFF);
  if (Changes < 1)
  {
    goto LABEL_25;
  }

  v32 = 0;
  *buf = 0;
  v31 = 0;
  WebKit::StorageAreaBase::dispatchEvents(a1, a2, a3, buf, &v32, &v31, a4);
  v20 = v31;
  v31 = 0;
  if (v20 && atomic_fetch_add_explicit(v20, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v20, v19);
  }

  v21 = v32;
  v32 = 0;
  if (v21 && atomic_fetch_add_explicit(v21, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v21, v19);
  }

  v22 = *buf;
  *buf = 0;
  if (v22 && atomic_fetch_add_explicit(v22, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v22, v19);
  }

  v23 = 0;
  v24 = 0;
LABEL_31:
  *a5 = v23;
  a5[1] = v24;
}

uint64_t WebKit::SQLiteStorageArea::handleLowMemoryWarning(uint64_t this)
{
  v1 = *(this + 128);
  if (v1)
  {
    atomic_fetch_add(v1, 1u);
    if (*(v1 + 8))
    {
      this = WebCore::SQLiteDatabase::releaseMemory(v1);
    }

    if (atomic_load(v1))
    {
      atomic_fetch_add(v1, 0xFFFFFFFF);
    }

    else
    {
      this = 290;
      __break(0xC471u);
    }
  }

  return this;
}

atomic_uint **WebKit::ServiceWorkerStorageManager::ServiceWorkerStorageManager(atomic_uint **this, atomic_uint **a2)
{
  v2 = *a2;
  if (*a2)
  {
    atomic_fetch_add_explicit(v2, 2u, memory_order_relaxed);
  }

  *this = v2;
  this[1] = 0;
  return this;
}

uint64_t WebKit::ServiceWorkerStorageManager::ensureDatabase(WebKit::ServiceWorkerStorageManager *this, void *a2)
{
  v4 = (this + 8);
  result = *(this + 1);
  if (!result)
  {
    if (*this && *(*this + 4))
    {
      v5 = WebCore::SWRegistrationDatabase::operator new(0x28, a2);
      MEMORY[0x19EB0B220](v5, this);
      std::unique_ptr<WebCore::SWRegistrationDatabase>::reset[abi:sn200100](v4, v5);
      return *(this + 1);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t WebKit::ServiceWorkerStorageManager::clearAllRegistrations(WebKit::ServiceWorkerStorageManager *this, void *a2)
{
  result = WebKit::ServiceWorkerStorageManager::ensureDatabase(this, a2);
  if (result)
  {

    return MEMORY[0x1EEE58CE8]();
  }

  return result;
}

uint64_t WebKit::ServiceWorkerStorageManager::importRegistrations@<X0>(WebKit::ServiceWorkerStorageManager *this@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  result = WebKit::ServiceWorkerStorageManager::ensureDatabase(this, a2);
  if (result)
  {

    return MEMORY[0x1EEE58CF8]();
  }

  else
  {
    *a3 = 0;
    a3[16] = 0;
  }

  return result;
}

uint64_t WebKit::ServiceWorkerStorageManager::updateRegistrations@<X0>(WebKit::ServiceWorkerStorageManager *a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  result = WebKit::ServiceWorkerStorageManager::ensureDatabase(a1, a2);
  if (result)
  {

    return MEMORY[0x1EEE58D00]();
  }

  else
  {
    *a3 = 0;
    a3[16] = 0;
  }

  return result;
}

uint64_t WebKit::StorageAreaBase::removeListener(uint64_t a1, uint64_t a2)
{
  v5 = a2;
  v3 = WTF::HashTable<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::StorageAreaMapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::StorageAreaMapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::StorageAreaMapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaMapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::StorageAreaMapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaMapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>( (a1 + 96),  &v5);
  return WTF::HashMap<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::StorageAreaMapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaMapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::remove((a1 + 96), v3);
}

uint64_t *WebKit::SessionStorageManager::removeNamespace(uint64_t *a1, void *a2)
{
  v5 = a1[2];
  result = a1 + 2;
  v4 = v5;
  if (!v5)
  {
    return result;
  }

  if (a2 == -1)
  {
    goto LABEL_42;
  }

  if (!a2)
  {
    __break(0xC471u);
    JUMPOUT(0x19DE213A0);
  }

  v6 = *(v4 - 8);
  v7 = (a2 + ~(a2 << 32)) ^ ((a2 + ~(a2 << 32)) >> 22);
  v8 = 9 * ((v7 + ~(v7 << 13)) ^ ((v7 + ~(v7 << 13)) >> 8));
  v9 = (v8 ^ (v8 >> 15)) + ~((v8 ^ (v8 >> 15)) << 27);
  v10 = v6 & ((v9 >> 31) ^ v9);
  v11 = *(v4 + 16 * v10);
  if (v11 != a2)
  {
    v12 = 1;
    while (v11)
    {
      v10 = (v10 + v12) & v6;
      v11 = *(v4 + 16 * v10);
      ++v12;
      if (v11 == a2)
      {
        goto LABEL_10;
      }
    }

    v10 = *(v4 - 4);
  }

LABEL_10:
  v13 = *(v4 - 4);
  if (v10 != v13)
  {
    v14 = (v4 + 16 * v10);
    v15 = v14[1];
    *v14 = -1;
    v16 = vadd_s32(*(v4 - 16), 0xFFFFFFFF00000001);
    *(v4 - 16) = v16;
    if (v13 >= 9 && 6 * v16.i32[1] < v13)
    {
      result = WTF::HashTable<unsigned long long,WTF::KeyValuePair<unsigned long long,WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<unsigned long long,WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::DefaultHash<unsigned long long>,WTF::HashMap<unsigned long long,WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<unsigned long long>,WTF::HashTraits<unsigned long long>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<unsigned long long>,WTF::FastMalloc>::rehash(result, v13 >> 1, 0);
    }

    if (v15)
    {
      v18 = a1 + 1;
      v17 = a1[1];
      if (!v17)
      {
        v26 = *a1;
        if (*a1)
        {
LABEL_36:

          return WebKit::StorageAreaRegistry::unregisterStorageArea(v26, v15);
        }

LABEL_41:
        __break(0xC471u);
        JUMPOUT(0x19DE213C0);
      }

      if (v15 != -1)
      {
        v19 = *(v17 - 8);
        v20 = (v15 + ~(v15 << 32)) ^ ((v15 + ~(v15 << 32)) >> 22);
        v21 = 9 * ((v20 + ~(v20 << 13)) ^ ((v20 + ~(v20 << 13)) >> 8));
        v22 = (v21 ^ (v21 >> 15)) + ~((v21 ^ (v21 >> 15)) << 27);
        v23 = v19 & ((v22 >> 31) ^ v22);
        v24 = *(v17 + 16 * v23);
        if (v24 != v15)
        {
          v25 = 1;
          while (v24)
          {
            v23 = (v23 + v25) & v19;
            v24 = *(v17 + 16 * v23);
            ++v25;
            if (v24 == v15)
            {
              goto LABEL_26;
            }
          }

          v23 = *(v17 - 4);
        }

LABEL_26:
        if (v23 != *(v17 - 4))
        {
          v27 = (v17 + 16 * v23);
          v28 = v27[1];
          *v27 = -1;
          v27[1] = 0;
          if (v28)
          {
            WTF::RefCounted<WebKit::MemoryStorageArea>::deref(v28 + 104, a2);
          }

          v29 = *v18;
          v30 = vadd_s32(*(*v18 - 16), 0xFFFFFFFF00000001);
          *(v29 - 16) = v30;
          v31 = *(v29 - 4);
          if (6 * v30.i32[1] < v31 && v31 >= 9)
          {
            WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::MemoryStorageArea,WTF::RawPtrTraits<WebKit::MemoryStorageArea>,WTF::DefaultRefDerefTraits<WebKit::MemoryStorageArea>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::MemoryStorageArea,WTF::RawPtrTraits<WebKit::MemoryStorageArea>,WTF::DefaultRefDerefTraits<WebKit::MemoryStorageArea>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::MemoryStorageArea,WTF::RawPtrTraits<WebKit::MemoryStorageArea>,WTF::DefaultRefDerefTraits<WebKit::MemoryStorageArea>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::MemoryStorageArea,WTF::RawPtrTraits<WebKit::MemoryStorageArea>,WTF::DefaultRefDerefTraits<WebKit::MemoryStorageArea>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash(a1 + 1, v31 >> 1, 0);
          }
        }

        v26 = *a1;
        if (*a1)
        {
          goto LABEL_36;
        }

        goto LABEL_41;
      }

LABEL_42:
      __break(0xC471u);
      JUMPOUT(0x19DE21380);
    }
  }

  return result;
}

uint64_t WebKit::StorageAreaRegistry::unregisterStorageArea(uint64_t a1, uint64_t a2)
{
  v5 = a2;
  v3 = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::StorageAreaBase,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::StorageAreaBase,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::StorageAreaBase,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakPtr<WebKit::StorageAreaBase,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::StorageAreaBase,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakPtr<WebKit::StorageAreaBase,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>((a1 + 8), &v5);
  return WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::StorageAreaBase,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakPtr<WebKit::StorageAreaBase,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::remove((a1 + 8), v3);
}

uint64_t WebKit::SessionStorageManager::addStorageArea(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v9 = a3;
  v3 = *a2;
  v4 = *(*a2 + 16);
  v10 = v4;
  v5 = *a1;
  if (*a1)
  {
    v12 = v4;
    WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::StorageAreaBase,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakPtr<WebKit::StorageAreaBase,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<WebKit::StorageAreaBase&>((v5 + 8), &v12, v3, v11);
    WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::StorageNamespaceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::StorageNamespaceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::StorageNamespaceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>&>(a1 + 2, &v9, &v10, v11);
    WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::MemoryStorageArea,WTF::RawPtrTraits<WebKit::MemoryStorageArea>,WTF::DefaultRefDerefTraits<WebKit::MemoryStorageArea>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::MemoryStorageArea,WTF::RawPtrTraits<WebKit::MemoryStorageArea>,WTF::DefaultRefDerefTraits<WebKit::MemoryStorageArea>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<WTF::Ref<WebKit::MemoryStorageArea,WTF::RawPtrTraits<WebKit::MemoryStorageArea>,WTF::DefaultRefDerefTraits<WebKit::MemoryStorageArea>>>(a1 + 1, &v10, a2, v11);
    return v10;
  }

  else
  {
    result = 120;
    __break(0xC471u);
  }

  return result;
}

uint64_t *WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::StorageNamespaceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::StorageNamespaceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::StorageNamespaceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>&>@<X0>(uint64_t *result@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *a2;
  if (*a2 == -1 || !v5)
  {
    __break(0xC471u);
    JUMPOUT(0x19DE21680);
  }

  v8 = result;
  v9 = *result;
  if (!*result)
  {
    result = WTF::HashTable<unsigned long long,WTF::KeyValuePair<unsigned long long,WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<unsigned long long,WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::DefaultHash<unsigned long long>,WTF::HashMap<unsigned long long,WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<unsigned long long>,WTF::HashTraits<unsigned long long>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<unsigned long long>,WTF::FastMalloc>::expand(result, 0);
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
        v21 = 0;
        v22 = v9 + 16 * *(v9 - 4);
        goto LABEL_23;
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
  v15[1] = *a3;
  v19 = *v8;
  if (*v8)
  {
    v20 = *(v19 - 12) + 1;
  }

  else
  {
    v20 = 1;
  }

  *(v19 - 12) = v20;
  v23 = (*(v19 - 16) + v20);
  v24 = *(v19 - 4);
  if (v24 > 0x400)
  {
    if (v24 <= 2 * v23)
    {
LABEL_19:
      result = WTF::HashTable<unsigned long long,WTF::KeyValuePair<unsigned long long,WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<unsigned long long,WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::DefaultHash<unsigned long long>,WTF::HashMap<unsigned long long,WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<unsigned long long>,WTF::HashTraits<unsigned long long>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<unsigned long long>,WTF::FastMalloc>::expand(v8, v15);
      v15 = result;
      v19 = *v8;
      if (*v8)
      {
        v24 = *(v19 - 4);
      }

      else
      {
        v24 = 0;
      }
    }
  }

  else if (3 * v24 <= 4 * v23)
  {
    goto LABEL_19;
  }

  v22 = v19 + 16 * v24;
  v21 = 1;
LABEL_23:
  *a4 = v15;
  *(a4 + 8) = v22;
  *(a4 + 16) = v21;
  return result;
}

uint64_t *WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::MemoryStorageArea,WTF::RawPtrTraits<WebKit::MemoryStorageArea>,WTF::DefaultRefDerefTraits<WebKit::MemoryStorageArea>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::MemoryStorageArea,WTF::RawPtrTraits<WebKit::MemoryStorageArea>,WTF::DefaultRefDerefTraits<WebKit::MemoryStorageArea>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<WTF::Ref<WebKit::MemoryStorageArea,WTF::RawPtrTraits<WebKit::MemoryStorageArea>,WTF::DefaultRefDerefTraits<WebKit::MemoryStorageArea>>>@<X0>(uint64_t *result@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *a2;
  if (*a2 == -1 || !v5)
  {
    __break(0xC471u);
    JUMPOUT(0x19DE2186CLL);
  }

  v8 = result;
  v9 = *result;
  if (!*result)
  {
    result = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::MemoryStorageArea,WTF::RawPtrTraits<WebKit::MemoryStorageArea>,WTF::DefaultRefDerefTraits<WebKit::MemoryStorageArea>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::MemoryStorageArea,WTF::RawPtrTraits<WebKit::MemoryStorageArea>,WTF::DefaultRefDerefTraits<WebKit::MemoryStorageArea>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::MemoryStorageArea,WTF::RawPtrTraits<WebKit::MemoryStorageArea>,WTF::DefaultRefDerefTraits<WebKit::MemoryStorageArea>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::MemoryStorageArea,WTF::RawPtrTraits<WebKit::MemoryStorageArea>,WTF::DefaultRefDerefTraits<WebKit::MemoryStorageArea>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand(result, 0);
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
        v23 = 0;
        v24 = v9 + 16 * *(v9 - 4);
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
  v20 = v15[1];
  v15[1] = v19;
  if (v20)
  {
    result = WTF::RefCounted<WebKit::MemoryStorageArea>::deref(v20 + 104, a2);
  }

  v21 = *v8;
  if (*v8)
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
LABEL_21:
      result = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::MemoryStorageArea,WTF::RawPtrTraits<WebKit::MemoryStorageArea>,WTF::DefaultRefDerefTraits<WebKit::MemoryStorageArea>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::MemoryStorageArea,WTF::RawPtrTraits<WebKit::MemoryStorageArea>,WTF::DefaultRefDerefTraits<WebKit::MemoryStorageArea>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::MemoryStorageArea,WTF::RawPtrTraits<WebKit::MemoryStorageArea>,WTF::DefaultRefDerefTraits<WebKit::MemoryStorageArea>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::MemoryStorageArea,WTF::RawPtrTraits<WebKit::MemoryStorageArea>,WTF::DefaultRefDerefTraits<WebKit::MemoryStorageArea>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand(v8, v15);
      v15 = result;
      v21 = *v8;
      if (*v8)
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
    goto LABEL_21;
  }

  v24 = v21 + 16 * v26;
  v23 = 1;
LABEL_25:
  *a4 = v15;
  *(a4 + 8) = v24;
  *(a4 + 16) = v23;
  return result;
}

uint64_t WebKit::SessionStorageManager::connectToSessionStorageArea(uint64_t *a1, uint64_t a2, uint64_t a3, const WebCore::ClientOrigin *a4, uint64_t a5)
{
  if (a5 == -1)
  {
    __break(0xC471u);
    JUMPOUT(0x19DE21A20);
  }

  if (!a5)
  {
    __break(0xC471u);
    JUMPOUT(0x19DE21A40);
  }

  v9 = a1[2];
  if (v9)
  {
    v10 = *(v9 - 8);
    v11 = (~(a5 << 32) + a5) ^ ((~(a5 << 32) + a5) >> 22);
    v12 = 9 * ((v11 + ~(v11 << 13)) ^ ((v11 + ~(v11 << 13)) >> 8));
    v13 = (v12 ^ (v12 >> 15)) + ~((v12 ^ (v12 >> 15)) << 27);
    v14 = v10 & ((v13 >> 31) ^ v13);
    v15 = *(v9 + 16 * v14);
    if (v15 == a5)
    {
LABEL_8:
      v24 = *(v9 + 16 * v14 + 8);
      LOBYTE(v25) = 1;
      goto LABEL_11;
    }

    v16 = 1;
    while (v15)
    {
      v14 = (v14 + v16) & v10;
      v15 = *(v9 + 16 * v14);
      ++v16;
      if (v15 == a5)
      {
        goto LABEL_8;
      }
    }
  }

  WebKit::MemoryStorageArea::create(a4, 0, v26);
  LOBYTE(v25) = 1;
  v24 = WebKit::SessionStorageManager::addStorageArea(a1, v26, a5);
  v18 = v26[0];
  v26[0] = 0;
  if (v18)
  {
    WTF::RefCounted<WebKit::MemoryStorageArea>::deref(v18 + 104, v17);
  }

LABEL_11:
  v19 = WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::MemoryStorageArea,WTF::RawPtrTraits<WebKit::MemoryStorageArea>,WTF::DefaultRefDerefTraits<WebKit::MemoryStorageArea>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::MemoryStorageArea,WTF::RawPtrTraits<WebKit::MemoryStorageArea>,WTF::DefaultRefDerefTraits<WebKit::MemoryStorageArea>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::MemoryStorageArea,WTF::RawPtrTraits<WebKit::MemoryStorageArea>,WTF::DefaultRefDerefTraits<WebKit::MemoryStorageArea>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::MemoryStorageArea,WTF::RawPtrTraits<WebKit::MemoryStorageArea>,WTF::DefaultRefDerefTraits<WebKit::MemoryStorageArea>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a1 + 1, &v24);
  if (!v19)
  {
    return 0;
  }

  v22 = v19 + 104;
  ++*(v19 + 104);
  v28 = a2;
  v27 = a3;
  WTF::HashMap<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::StorageAreaMapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaMapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaMapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>&>((v19 + 96), &v28, &v27, v26);
  v20 = v24;
  WTF::RefCounted<WebKit::MemoryStorageArea>::deref(v22, v23);
  return v20;
}

uint64_t WebKit::SessionStorageManager::cancelConnectToSessionStorageArea(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a3 == -1 || !a3)
  {
    __break(0xC471u);
    JUMPOUT(0x19DE21B58);
  }

  v5 = *(result + 16);
  if (v5)
  {
    v18 = v3;
    v19 = v4;
    v7 = *(v5 - 8);
    v8 = (~(a3 << 32) + a3) ^ ((~(a3 << 32) + a3) >> 22);
    v9 = 9 * ((v8 + ~(v8 << 13)) ^ ((v8 + ~(v8 << 13)) >> 8));
    v10 = (v9 ^ (v9 >> 15)) + ~((v9 ^ (v9 >> 15)) << 27);
    v11 = v7 & ((v10 >> 31) ^ v10);
    v12 = *(v5 + 16 * v11);
    if (v12 == a3)
    {
LABEL_8:
      v16 = *(v5 + 16 * v11 + 8);
      v17 = 1;
      result = WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::MemoryStorageArea,WTF::RawPtrTraits<WebKit::MemoryStorageArea>,WTF::DefaultRefDerefTraits<WebKit::MemoryStorageArea>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::MemoryStorageArea,WTF::RawPtrTraits<WebKit::MemoryStorageArea>,WTF::DefaultRefDerefTraits<WebKit::MemoryStorageArea>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::MemoryStorageArea,WTF::RawPtrTraits<WebKit::MemoryStorageArea>,WTF::DefaultRefDerefTraits<WebKit::MemoryStorageArea>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::MemoryStorageArea,WTF::RawPtrTraits<WebKit::MemoryStorageArea>,WTF::DefaultRefDerefTraits<WebKit::MemoryStorageArea>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>((result + 8), &v16);
      if (result)
      {
        v14 = result + 104;
        ++*(result + 104);
        WebKit::StorageAreaBase::removeListener(result, a2);
        return WTF::RefCounted<WebKit::MemoryStorageArea>::deref(v14, v15);
      }
    }

    else
    {
      v13 = 1;
      while (v12)
      {
        v11 = (v11 + v13) & v7;
        v12 = *(v5 + 16 * v11);
        ++v13;
        if (v12 == a3)
        {
          goto LABEL_8;
        }
      }
    }
  }

  return result;
}

uint64_t WebKit::SessionStorageManager::disconnectFromStorageArea(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = a3;
  result = WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::MemoryStorageArea,WTF::RawPtrTraits<WebKit::MemoryStorageArea>,WTF::DefaultRefDerefTraits<WebKit::MemoryStorageArea>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::MemoryStorageArea,WTF::RawPtrTraits<WebKit::MemoryStorageArea>,WTF::DefaultRefDerefTraits<WebKit::MemoryStorageArea>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::MemoryStorageArea,WTF::RawPtrTraits<WebKit::MemoryStorageArea>,WTF::DefaultRefDerefTraits<WebKit::MemoryStorageArea>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::MemoryStorageArea,WTF::RawPtrTraits<WebKit::MemoryStorageArea>,WTF::DefaultRefDerefTraits<WebKit::MemoryStorageArea>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>((a1 + 8), &v7);
  if (result)
  {
    v5 = result + 104;
    ++*(result + 104);
    WebKit::StorageAreaBase::removeListener(result, a2);
    return WTF::RefCounted<WebKit::MemoryStorageArea>::deref(v5, v6);
  }

  return result;
}

uint64_t WebKit::SessionStorageManager::cloneStorageArea(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 == -1)
  {
    __break(0xC471u);
    JUMPOUT(0x19DE21D1CLL);
  }

  if (!a2)
  {
    __break(0xC471u);
    JUMPOUT(0x19DE21D3CLL);
  }

  v21 = v3;
  v22 = v4;
  v5 = result;
  v6 = *(result + 16);
  if (v6)
  {
    v8 = *(v6 - 8);
    v9 = (~(a2 << 32) + a2) ^ ((~(a2 << 32) + a2) >> 22);
    v10 = 9 * ((v9 + ~(v9 << 13)) ^ ((v9 + ~(v9 << 13)) >> 8));
    v11 = (v10 ^ (v10 >> 15)) + ~((v10 ^ (v10 >> 15)) << 27);
    v12 = v8 & ((v11 >> 31) ^ v11);
    v13 = *(v6 + 16 * v12);
    if (v13 == a2)
    {
LABEL_8:
      v19 = *(v6 + 16 * v12 + 8);
      v20 = 1;
      result = WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::MemoryStorageArea,WTF::RawPtrTraits<WebKit::MemoryStorageArea>,WTF::DefaultRefDerefTraits<WebKit::MemoryStorageArea>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::MemoryStorageArea,WTF::RawPtrTraits<WebKit::MemoryStorageArea>,WTF::DefaultRefDerefTraits<WebKit::MemoryStorageArea>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::MemoryStorageArea,WTF::RawPtrTraits<WebKit::MemoryStorageArea>,WTF::DefaultRefDerefTraits<WebKit::MemoryStorageArea>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::MemoryStorageArea,WTF::RawPtrTraits<WebKit::MemoryStorageArea>,WTF::DefaultRefDerefTraits<WebKit::MemoryStorageArea>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>((result + 8), &v19);
      if (result)
      {
        v15 = result + 104;
        ++*(result + 104);
        WebKit::MemoryStorageArea::clone(result, &v18);
        WebKit::SessionStorageManager::addStorageArea(v5, &v18, a3);
        v17 = v18;
        v18 = 0;
        if (v17)
        {
          WTF::RefCounted<WebKit::MemoryStorageArea>::deref(v17 + 104, v16);
        }

        return WTF::RefCounted<WebKit::MemoryStorageArea>::deref(v15, v16);
      }
    }

    else
    {
      v14 = 1;
      while (v13)
      {
        v12 = (v12 + v14) & v8;
        v13 = *(v6 + 16 * v12);
        ++v14;
        if (v13 == a2)
        {
          goto LABEL_8;
        }
      }
    }
  }

  return result;
}

uint64_t WebKit::SessionStorageManager::fetchStorageMap@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  if (a2 == -1 || !a2)
  {
    __break(0xC471u);
    JUMPOUT(0x19DE21E5CLL);
  }

  v18 = v3;
  v19 = v4;
  v6 = *(result + 16);
  if (!v6)
  {
    goto LABEL_9;
  }

  v7 = *(v6 - 8);
  v8 = (~(a2 << 32) + a2) ^ ((~(a2 << 32) + a2) >> 22);
  v9 = 9 * ((v8 + ~(v8 << 13)) ^ ((v8 + ~(v8 << 13)) >> 8));
  v10 = (v9 ^ (v9 >> 15)) + ~((v9 ^ (v9 >> 15)) << 27);
  v11 = v7 & ((v10 >> 31) ^ v10);
  v12 = *(v6 + 16 * v11);
  if (v12 != a2)
  {
    v13 = 1;
    while (v12)
    {
      v11 = (v11 + v13) & v7;
      v12 = *(v6 + 16 * v11);
      ++v13;
      if (v12 == a2)
      {
        goto LABEL_8;
      }
    }

    goto LABEL_9;
  }

LABEL_8:
  v16 = *(v6 + 16 * v11 + 8);
  v17 = 1;
  result = WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::MemoryStorageArea,WTF::RawPtrTraits<WebKit::MemoryStorageArea>,WTF::DefaultRefDerefTraits<WebKit::MemoryStorageArea>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::MemoryStorageArea,WTF::RawPtrTraits<WebKit::MemoryStorageArea>,WTF::DefaultRefDerefTraits<WebKit::MemoryStorageArea>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::MemoryStorageArea,WTF::RawPtrTraits<WebKit::MemoryStorageArea>,WTF::DefaultRefDerefTraits<WebKit::MemoryStorageArea>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::MemoryStorageArea,WTF::RawPtrTraits<WebKit::MemoryStorageArea>,WTF::DefaultRefDerefTraits<WebKit::MemoryStorageArea>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>((result + 8), &v16);
  if (!result)
  {
LABEL_9:
    *a3 = 0;
    return result;
  }

  v14 = result + 104;
  ++*(result + 104);
  WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::String>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::HashTable(a3, (*(result + 112) + 8));
  return WTF::RefCounted<WebKit::MemoryStorageArea>::deref(v14, v15);
}

uint64_t WebKit::SessionStorageManager::setStorageMap(uint64_t *a1, uint64_t a2, const WebCore::ClientOrigin *a3, void **a4)
{
  if (a2 == -1 || !a2)
  {
    __break(0xC471u);
    JUMPOUT(0x19DE220A4);
  }

  v7 = a1[2];
  if (v7)
  {
    v8 = *(v7 - 8);
    v9 = (~(a2 << 32) + a2) ^ ((~(a2 << 32) + a2) >> 22);
    v10 = 9 * ((v9 + ~(v9 << 13)) ^ ((v9 + ~(v9 << 13)) >> 8));
    v11 = (v10 ^ (v10 >> 15)) + ~((v10 ^ (v10 >> 15)) << 27);
    v12 = v8 & ((v11 >> 31) ^ v11);
    v13 = *(v7 + 16 * v12);
    if (v13 == a2)
    {
LABEL_8:
      v32 = *(v7 + 16 * v12 + 8);
      v33 = 1;
      goto LABEL_11;
    }

    v14 = 1;
    while (v13)
    {
      v12 = (v12 + v14) & v8;
      v13 = *(v7 + 16 * v12);
      ++v14;
      if (v13 == a2)
      {
        goto LABEL_8;
      }
    }
  }

  WebKit::MemoryStorageArea::create(a3, 0, &v31);
  v15 = WebKit::SessionStorageManager::addStorageArea(a1, &v31, a2);
  v33 = 1;
  v17 = v31;
  v31 = 0;
  v32 = v15;
  if (v17)
  {
    WTF::RefCounted<WebKit::MemoryStorageArea>::deref(v17 + 104, v16);
  }

LABEL_11:
  v18 = WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::MemoryStorageArea,WTF::RawPtrTraits<WebKit::MemoryStorageArea>,WTF::DefaultRefDerefTraits<WebKit::MemoryStorageArea>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::MemoryStorageArea,WTF::RawPtrTraits<WebKit::MemoryStorageArea>,WTF::DefaultRefDerefTraits<WebKit::MemoryStorageArea>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::MemoryStorageArea,WTF::RawPtrTraits<WebKit::MemoryStorageArea>,WTF::DefaultRefDerefTraits<WebKit::MemoryStorageArea>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::MemoryStorageArea,WTF::RawPtrTraits<WebKit::MemoryStorageArea>,WTF::DefaultRefDerefTraits<WebKit::MemoryStorageArea>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a1 + 1, &v32);
  if (v18)
  {
    v21 = v18;
    v22 = v18 + 104;
    ++*(v18 + 104);
    v23 = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::begin(a4);
    v25 = v23;
    v26 = v24;
    if (*a4)
    {
      v27 = &(*a4)[2 * *(*a4 - 1)];
    }

    else
    {
      v27 = 0;
    }

    v19 = 1;
    if (v27 != v23)
    {
      do
      {
        v31 = 0;
        WebKit::MemoryStorageArea::setItem(v25, (v25 + 8), v21, 0, 0, 0, 0, &v31, v30);
        v28 = v30[1];
        v29 = v31;
        v31 = 0;
        if (v29 && atomic_fetch_add_explicit(v29, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v29, v24);
        }

        do
        {
          v25 = (v25 + 16);
        }

        while (v25 != v26 && (*v25 + 1) <= 1);
        v19 &= v28 ^ 1;
      }

      while (v25 != v27);
    }

    WTF::RefCounted<WebKit::MemoryStorageArea>::deref(v22, v24);
  }

  else
  {
    v19 = 0;
  }

  return v19 & 1;
}

uint64_t WTF::HashMap<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::StorageAreaMapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaMapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaMapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>&>@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  WTF::checkHashTableKey<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::StorageAreaMapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::StorageAreaMapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::StorageAreaMapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaMapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMapTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::StorageAreaMapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaMapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(*a2);
  v8 = *a1;
  if (*a1 || (WTF::HashTable<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::StorageAreaMapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::StorageAreaMapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::StorageAreaMapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaMapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand(a1, 0), (v8 = *a1) != 0))
  {
    v9 = *(v8 - 8);
  }

  else
  {
    v9 = 0;
  }

  result = WTF::ObjectIdentifierGenericBaseHash<unsigned long long>::hash(a2);
  v11 = result & v9;
  v12 = (v8 + 16 * (result & v9));
  v13 = *v12;
  v14 = *a2;
  if (*v12)
  {
    v21 = 0;
    v22 = 1;
    do
    {
      if (v13 == v14)
      {
        v23 = *a1;
        if (*a1)
        {
          v24 = *(v23 - 4);
        }

        else
        {
          v24 = 0;
        }

        v20 = 0;
        v19 = v23 + 16 * v24;
        goto LABEL_10;
      }

      if (v13 == -1)
      {
        v21 = v12;
      }

      v11 = (v11 + v22) & v9;
      v12 = (v8 + 16 * v11);
      v13 = *v12;
      ++v22;
    }

    while (*v12);
    if (v21)
    {
      *v21 = 0;
      v21[1] = 0;
      --*(*a1 - 16);
      v14 = *a2;
      v12 = v21;
    }
  }

  *v12 = v14;
  v12[1] = *a3;
  v15 = *a1;
  if (*a1)
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
      goto LABEL_9;
    }

LABEL_21:
    result = WTF::HashTable<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::StorageAreaMapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::StorageAreaMapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::StorageAreaMapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaMapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand(a1, v12);
    v12 = result;
    v15 = *a1;
    if (*a1)
    {
      v18 = *(v15 - 4);
    }

    else
    {
      v18 = 0;
    }

    goto LABEL_9;
  }

  if (3 * v18 <= 4 * v17)
  {
    goto LABEL_21;
  }

LABEL_9:
  v19 = v15 + 16 * v18;
  v20 = 1;
LABEL_10:
  *a4 = v12;
  *(a4 + 8) = v19;
  *(a4 + 16) = v20;
  return result;
}

uint64_t IPC::Connection::send<Messages::StorageAreaMap::ClearCache>(uint64_t a1, void *a2, uint64_t a3, char a4, uint64_t a5)
{
  IPC::Connection::connection(a1, &v12);
  if (!v12)
  {
    return 2;
  }

  v9 = IPC::Connection::send<Messages::StorageAreaMap::ClearCache>(v12, a2, a3, a4, a5);
  v10 = v12;
  v12 = 0;
  if (v10)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v10);
  }

  return v9;
}

uint64_t IPC::Connection::send<Messages::StorageAreaMap::DispatchStorageEvent>(uint64_t a1, void *a2, uint64_t a3, char a4, uint64_t a5)
{
  IPC::Connection::connection(a1, &v12);
  if (!v12)
  {
    return 2;
  }

  v9 = IPC::Connection::send<Messages::StorageAreaMap::DispatchStorageEvent>(v12, a2, a3, a4, a5);
  v10 = v12;
  v12 = 0;
  if (v10)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v10);
  }

  return v9;
}

uint64_t WebKit::StorageAreaRegistry::StorageAreaRegistry(uint64_t this)
{
  *this = 0;
  *(this + 8) = 0;
  return this;
}

uint64_t WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::StorageAreaBase,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakPtr<WebKit::StorageAreaBase,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<WebKit::StorageAreaBase&>@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v24 = a3;
  WTF::checkHashTableKey<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::StorageAreaBase,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::StorageAreaBase,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::StorageAreaBase,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakPtr<WebKit::StorageAreaBase,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMapTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::StorageAreaBase,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakPtr<WebKit::StorageAreaBase,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(*a2);
  v7 = *a1;
  if (*a1 || (WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::StorageAreaBase,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::StorageAreaBase,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::StorageAreaBase,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakPtr<WebKit::StorageAreaBase,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand(a1, 0), (v7 = *a1) != 0))
  {
    v8 = *(v7 - 8);
  }

  else
  {
    v8 = 0;
  }

  result = WTF::ObjectIdentifierGenericBaseHash<unsigned long long>::hash(a2);
  v10 = result & v8;
  v11 = (v7 + 16 * (result & v8));
  v12 = *v11;
  v13 = *a2;
  if (*v11)
  {
    v20 = 0;
    v21 = 1;
    do
    {
      if (v12 == v13)
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

        v19 = 0;
        v18 = v22 + 16 * v23;
        goto LABEL_10;
      }

      if (v12 == -1)
      {
        v20 = v11;
      }

      v10 = (v10 + v21) & v8;
      v11 = (v7 + 16 * v10);
      v12 = *v11;
      ++v21;
    }

    while (*v11);
    if (v20)
    {
      *v20 = 0;
      v20[1] = 0;
      --*(*a1 - 16);
      v13 = *a2;
      v11 = v20;
    }
  }

  result = WTF::HashMapTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::StorageAreaBase,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakPtr<WebKit::StorageAreaBase,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>::translate<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long> const&,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::StorageAreaBase,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTableAddResult<WTF::HashTableIterator<WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::StorageAreaBase,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::StorageAreaBase,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::StorageAreaBase,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakPtr<WebKit::StorageAreaBase,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>,WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::StorageAreaBase,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::StorageAreaBase,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::StorageAreaBase,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakPtr<WebKit::StorageAreaBase,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>> WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::StorageAreaBase,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakPtr<WebKit::StorageAreaBase,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::inlineAdd<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long> const&,WebKit::StorageAreaBase&>(WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long> const&,WebKit::StorageAreaBase&)::{lambda(void)#1}>( v11,  v13,  &v24);
  v14 = *a1;
  if (*a1)
  {
    v15 = *(v14 - 12) + 1;
  }

  else
  {
    v15 = 1;
  }

  *(v14 - 12) = v15;
  v16 = (*(v14 - 16) + v15);
  v17 = *(v14 - 4);
  if (v17 > 0x400)
  {
    if (v17 > 2 * v16)
    {
      goto LABEL_9;
    }

LABEL_20:
    result = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::StorageAreaBase,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::StorageAreaBase,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::StorageAreaBase,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakPtr<WebKit::StorageAreaBase,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand(a1, v11);
    v11 = result;
    v14 = *a1;
    if (*a1)
    {
      v17 = *(v14 - 4);
    }

    else
    {
      v17 = 0;
    }

    goto LABEL_9;
  }

  if (3 * v17 <= 4 * v16)
  {
    goto LABEL_20;
  }

LABEL_9:
  v18 = v14 + 16 * v17;
  v19 = 1;
LABEL_10:
  *a4 = v11;
  *(a4 + 8) = v18;
  *(a4 + 16) = v19;
  return result;
}

uint64_t WebKit::StorageAreaRegistry::getStorageArea(uint64_t a1, uint64_t a2)
{
  v7 = a2;
  v2 = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::StorageAreaBase,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::StorageAreaBase,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::StorageAreaBase,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakPtr<WebKit::StorageAreaBase,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::lookup<WTF::HashMapTranslatorAdapter<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::StorageAreaBase,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakPtr<WebKit::StorageAreaBase,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::StorageAreaBase,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakPtr<WebKit::StorageAreaBase,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>( (a1 + 8),  &v7);
  if (!v2)
  {
    return 0;
  }

  v4 = *(v2 + 8);
  if (!v4)
  {
    return 0;
  }

  atomic_fetch_add(v4, 1u);
  v5 = *(v4 + 8);
  if (atomic_fetch_add(v4, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v4);
    WTF::fastFree(v4, v3);
  }

  return v5;
}

WebKit::NetworkMDNSRegister *WebKit::NetworkMDNSRegister::NetworkMDNSRegister(WebKit::NetworkMDNSRegister *this, WebKit::NetworkConnectionToWebProcess *a2)
{
  WTF::WeakPtrFactory<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(a2 + 16, a2 + 56);
  v4 = *(a2 + 8);
  atomic_fetch_add(v4, 1u);
  *this = v4;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  return this;
}

void WebKit::NetworkMDNSRegister::~NetworkMDNSRegister(WebKit::NetworkMDNSRegister *this, void *a2)
{
  v3 = *(this + 3);
  if (v3)
  {
    WTF::HashTable<WebCore::ProcessQualified<WTF::UUID>,WTF::KeyValuePair<WebCore::ProcessQualified<WTF::UUID>,std::unique_ptr<_DNSServiceRef_t,WebKit::NetworkMDNSRegister::DNSServiceDeallocator>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ProcessQualified<WTF::UUID>,std::unique_ptr<_DNSServiceRef_t,WebKit::NetworkMDNSRegister::DNSServiceDeallocator>>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::UUID>>,WTF::HashMap<WebCore::ProcessQualified<WTF::UUID>,std::unique_ptr<_DNSServiceRef_t,WebKit::NetworkMDNSRegister::DNSServiceDeallocator>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::UUID>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::UUID>>,WTF::HashTraits<std::unique_ptr<_DNSServiceRef_t,WebKit::NetworkMDNSRegister::DNSServiceDeallocator>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ProcessQualified<WTF::UUID>>,WTF::FastMalloc>::deallocateTable(v3, a2);
  }

  v4 = *(this + 2);
  if (v4)
  {
    WTF::HashTable<WebCore::ProcessQualified<WTF::UUID>,WTF::KeyValuePair<WebCore::ProcessQualified<WTF::UUID>,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ProcessQualified<WTF::UUID>,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::UUID>>,WTF::HashMap<WebCore::ProcessQualified<WTF::UUID>,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::UUID>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::UUID>>,WTF::HashTraits<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ProcessQualified<WTF::UUID>>,WTF::FastMalloc>::deallocateTable(v4, a2);
  }

  v5 = *(this + 1);
  if (v5)
  {
    WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v5, a2);
  }

  v6 = *this;
  *this = 0;
  if (v6)
  {
    if (atomic_fetch_add(v6, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v6);
      WTF::fastFree(v6, a2);
    }
  }
}

uint64_t WebKit::NetworkMDNSRegister::ref(uint64_t this)
{
  v1 = *(*this + 8);
  if (v1)
  {
    ++*(v1 - 36);
  }

  else
  {
    this = 92;
    __break(0xC471u);
  }

  return this;
}

uint64_t WebKit::NetworkMDNSRegister::deref(WebKit::NetworkMDNSRegister *this)
{
  result = *(*this + 8);
  if (result)
  {
    if (*(result - 36) == 1)
    {
      return (*(*(result - 56) + 8))();
    }

    else
    {
      --*(result - 36);
    }
  }

  else
  {
    result = 92;
    __break(0xC471u);
  }

  return result;
}

uint64_t WebKit::NetworkMDNSRegister::hasRegisteredName(WebKit::NetworkMDNSRegister *this, const WTF::StringImpl **a2, const WTF::StringImpl *a3)
{
  v3 = *(this + 1);
  if (!v3)
  {
    return 0;
  }

  v6 = *a2;
  if (*a2 == -1 || !v6)
  {
    __break(0xC471u);
    JUMPOUT(0x19DE227A4);
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
    result = *(v3 + 8 * (v9 & v7));
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

  return 1;
}

uint64_t WebKit::NetworkMDNSRegister::unregisterMDNSNames(uint64_t *a1, WTF::UUIDHash *a2)
{
  v4 = WTF::HashTable<WebCore::ProcessQualified<WTF::UUID>,WTF::KeyValuePair<WebCore::ProcessQualified<WTF::UUID>,std::unique_ptr<_DNSServiceRef_t,WebKit::NetworkMDNSRegister::DNSServiceDeallocator>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ProcessQualified<WTF::UUID>,std::unique_ptr<_DNSServiceRef_t,WebKit::NetworkMDNSRegister::DNSServiceDeallocator>>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::UUID>>,WTF::HashMap<WebCore::ProcessQualified<WTF::UUID>,std::unique_ptr<_DNSServiceRef_t,WebKit::NetworkMDNSRegister::DNSServiceDeallocator>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::UUID>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::UUID>>,WTF::HashTraits<std::unique_ptr<_DNSServiceRef_t,WebKit::NetworkMDNSRegister::DNSServiceDeallocator>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ProcessQualified<WTF::UUID>>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WebCore::ProcessQualified<WTF::UUID>,std::unique_ptr<_DNSServiceRef_t,WebKit::NetworkMDNSRegister::DNSServiceDeallocator>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::UUID>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::UUID>>,WTF::HashTraits<std::unique_ptr<_DNSServiceRef_t,WebKit::NetworkMDNSRegister::DNSServiceDeallocator>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WebCore::ProcessQualified<WTF::UUID>>>,(WTF::ShouldValidateKey)1,WebCore::ProcessQualified<WTF::UUID>>(a1 + 3, a2);
  v6 = v4;
  v7 = a1[3];
  if (v7)
  {
    v8 = (v7 + 48 * *(v7 - 4));
    if (v8 == v4)
    {
      goto LABEL_8;
    }
  }

  else
  {
    if (!v4)
    {
      goto LABEL_8;
    }

    v8 = 0;
  }

  if (v8 != v4)
  {
    WTF::HashTable<WebCore::ProcessQualified<WTF::UUID>,WTF::KeyValuePair<WebCore::ProcessQualified<WTF::UUID>,std::unique_ptr<_DNSServiceRef_t,WebKit::NetworkMDNSRegister::DNSServiceDeallocator>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ProcessQualified<WTF::UUID>,std::unique_ptr<_DNSServiceRef_t,WebKit::NetworkMDNSRegister::DNSServiceDeallocator>>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::UUID>>,WTF::HashMap<WebCore::ProcessQualified<WTF::UUID>,std::unique_ptr<_DNSServiceRef_t,WebKit::NetworkMDNSRegister::DNSServiceDeallocator>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::UUID>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::UUID>>,WTF::HashTraits<std::unique_ptr<_DNSServiceRef_t,WebKit::NetworkMDNSRegister::DNSServiceDeallocator>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ProcessQualified<WTF::UUID>>,WTF::FastMalloc>::remove(a1 + 3, v4);
  }

LABEL_8:
  v9 = a1 + 2;
  v10 = a1[2];
  if (!v10)
  {
LABEL_55:
    *&v5 = 0;
    v42 = v5;
    v43 = v5;
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v43, v6);
    return WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v42, v6);
  }

  v11 = *(a2 + 2);
  if (*a2 == 0 && !v11 || v11 == -1)
  {
    __break(0xC471u);
    JUMPOUT(0x19DE22A3CLL);
  }

  v12 = *(v10 - 8);
  v13 = WTF::UUIDHash::hash(a2, v6);
  v15 = *a2;
  v16 = *(a2 + 1);
  v17 = *(a2 + 2);
  v18 = v13 & v12;
  v19 = v10 + 48 * (v13 & v12);
  v20 = *v19;
  v21 = *(v19 + 8);
  v22 = v21 == v16 && v20 == v15;
  v23 = *(v19 + 16);
  if (!v22 || v23 != v17)
  {
    v25 = 1;
    while (v20 | v21 || v23)
    {
      v18 = (v18 + v25) & v12;
      v19 = v10 + 48 * v18;
      v20 = *v19;
      v21 = *(v19 + 8);
      v26 = v21 == v16 && v20 == v15;
      v23 = *(v19 + 16);
      ++v25;
      if (v26 && v23 == v17)
      {
        goto LABEL_30;
      }
    }

    v28 = *v9;
    if (!*v9)
    {
      goto LABEL_55;
    }

    v19 = v28 + 48 * *(v28 - 4);
    goto LABEL_34;
  }

LABEL_30:
  v28 = *v9;
  if (*v9)
  {
LABEL_34:
    v28 += 48 * *(v28 - 4);
  }

  if (v28 == v19)
  {
    goto LABEL_55;
  }

  v29 = *(v19 + 32);
  *&v42 = v29;
  v30 = *(v19 + 40);
  v31 = *(v19 + 44);
  *(v19 + 32) = 0;
  *(v19 + 40) = 0;
  *(&v42 + 1) = __PAIR64__(v31, v30);
  v32 = *v9;
  if (!*v9 || (v32 += 48 * *(v32 - 4), v32 != v19))
  {
    if (v32 != v19)
    {
      *v19 = 1;
      *(v19 + 8) = 0;
      *(v19 + 16) = -1;
      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v19 + 32, v6);
      v33 = *v9;
      v34 = vadd_s32(*(*v9 - 16), 0xFFFFFFFF00000001);
      *(v33 - 16) = v34;
      v35 = *(v33 - 4);
      if (6 * v34.i32[1] < v35 && v35 >= 9)
      {
        WTF::HashTable<WebCore::ProcessQualified<WTF::UUID>,WTF::KeyValuePair<WebCore::ProcessQualified<WTF::UUID>,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ProcessQualified<WTF::UUID>,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::UUID>>,WTF::HashMap<WebCore::ProcessQualified<WTF::UUID>,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::UUID>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::UUID>>,WTF::HashTraits<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ProcessQualified<WTF::UUID>>,WTF::FastMalloc>::rehash(a1 + 2, v35 >> 1, 0);
      }
    }
  }

  if (v31)
  {
    for (i = 8 * v31; i; i -= 8)
    {
      v38 = WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashTraits<WTF::String>,WTF::DefaultHash<WTF::String>>,(WTF::ShouldValidateKey)1,WTF::String>(a1 + 1, v29, v14);
      v6 = v38;
      v39 = a1[1];
      if (v39)
      {
        v40 = (v39 + 8 * *(v39 - 4));
        if (v40 != v38)
        {
          goto LABEL_49;
        }
      }

      else if (v38)
      {
        v40 = 0;
LABEL_49:
        if (v40 != v38)
        {
          WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::remove(a1 + 1, v38);
        }
      }

      ++v29;
    }
  }

  return WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v42, v6);
}

WTF::StringImpl *WebKit::NetworkMDNSRegister::registerMDNSName(uint64_t *a1, WTF::UUIDHash *a2, uint64_t a3, uint64_t *a4)
{
  v108 = *MEMORY[0x1E69E9840];
  WTF::UUID::UUID(buf);
  sdRef[0] = ".local";
  sdRef[1] = 7;
  WTF::tryMakeString<WTF::UUID,WTF::ASCIILiteral>(buf, sdRef, &v105);
  if (!v105)
  {
    goto LABEL_170;
  }

  WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::add<(WTF::ShouldValidateKey)1>(a1 + 1, &v105, v7, buf);
  v9 = *(a2 + 2);
  if (*a2 == 0 && v9 == 0)
  {
    __break(0xC471u);
    JUMPOUT(0x19DE234B0);
  }

  if (v9 == -1)
  {
    __break(0xC471u);
    JUMPOUT(0x19DE234D0);
  }

  v11 = a1[2];
  if (v11 || (WTF::HashTable<WebCore::ProcessQualified<WTF::UUID>,WTF::KeyValuePair<WebCore::ProcessQualified<WTF::UUID>,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ProcessQualified<WTF::UUID>,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::UUID>>,WTF::HashMap<WebCore::ProcessQualified<WTF::UUID>,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::UUID>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::UUID>>,WTF::HashTraits<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ProcessQualified<WTF::UUID>>,WTF::FastMalloc>::expand(a1 + 2, 0), (v11 = a1[2]) != 0))
  {
    v12 = *(v11 - 8);
  }

  else
  {
    v12 = 0;
  }

  v13 = WTF::UUIDHash::hash(a2, v8) & v12;
  v14 = v11 + 48 * v13;
  v16 = *v14;
  v15 = *(v14 + 8);
  v17 = *(v14 + 16);
  if (*v14 == 0 && v17 == 0)
  {
LABEL_31:
    v24 = *a2;
    *(v14 + 16) = *(a2 + 2);
    *v14 = v24;
    *buf = 0;
    *&buf[8] = 0;
    WTF::GenericHashTraits<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>::assignToEmpty<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(v14 + 32, buf);
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(buf, v25);
    v26 = a1[2];
    if (v26)
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
      if (v29 > 2 * v28)
      {
        goto LABEL_37;
      }
    }

    else if (3 * v29 > 4 * v28)
    {
      goto LABEL_37;
    }

    v14 = WTF::HashTable<WebCore::ProcessQualified<WTF::UUID>,WTF::KeyValuePair<WebCore::ProcessQualified<WTF::UUID>,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ProcessQualified<WTF::UUID>,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::UUID>>,WTF::HashMap<WebCore::ProcessQualified<WTF::UUID>,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::UUID>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::UUID>>,WTF::HashTraits<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ProcessQualified<WTF::UUID>>,WTF::FastMalloc>::expand(a1 + 2, v14);
    goto LABEL_37;
  }

  v19 = 0;
  v20 = 1;
  while (1)
  {
    v21 = v15 == *(a2 + 1) && v16 == *a2;
    if (v21 && v17 == *(a2 + 2))
    {
      break;
    }

    if (v17 == -1)
    {
      v19 = v14;
    }

    v13 = (v13 + v20) & v12;
    v14 = v11 + 48 * v13;
    v16 = *v14;
    v15 = *(v14 + 8);
    v17 = *(v14 + 16);
    ++v20;
    if (*v14 == 0 && v17 == 0)
    {
      if (v19)
      {
        *v19 = 0;
        v19[1] = 0;
        v19[2] = 0;
        v19[4] = 0;
        v19[5] = 0;
        --*(a1[2] - 16);
        v14 = v19;
      }

      goto LABEL_31;
    }
  }

LABEL_37:
  v30 = *(v14 + 44);
  if (v30 == *(v14 + 40))
  {
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::String&>(v14 + 32, &v105);
  }

  else
  {
    v31 = *(v14 + 32);
    v32 = v105;
    if (v105)
    {
      atomic_fetch_add_explicit(v105, 2u, memory_order_relaxed);
    }

    v33 = *(v14 + 44);
    *(v31 + 8 * v30) = v32;
    *(v14 + 44) = v33 + 1;
  }

  sdRef[0] = 0;
  v34 = WTF::HashTable<WebCore::ProcessQualified<WTF::UUID>,WTF::KeyValuePair<WebCore::ProcessQualified<WTF::UUID>,std::unique_ptr<_DNSServiceRef_t,WebKit::NetworkMDNSRegister::DNSServiceDeallocator>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ProcessQualified<WTF::UUID>,std::unique_ptr<_DNSServiceRef_t,WebKit::NetworkMDNSRegister::DNSServiceDeallocator>>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::UUID>>,WTF::HashMap<WebCore::ProcessQualified<WTF::UUID>,std::unique_ptr<_DNSServiceRef_t,WebKit::NetworkMDNSRegister::DNSServiceDeallocator>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::UUID>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::UUID>>,WTF::HashTraits<std::unique_ptr<_DNSServiceRef_t,WebKit::NetworkMDNSRegister::DNSServiceDeallocator>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ProcessQualified<WTF::UUID>>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WebCore::ProcessQualified<WTF::UUID>,std::unique_ptr<_DNSServiceRef_t,WebKit::NetworkMDNSRegister::DNSServiceDeallocator>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::UUID>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::UUID>>,WTF::HashTraits<std::unique_ptr<_DNSServiceRef_t,WebKit::NetworkMDNSRegister::DNSServiceDeallocator>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WebCore::ProcessQualified<WTF::UUID>>>,(WTF::ShouldValidateKey)1,WebCore::ProcessQualified<WTF::UUID>>(a1 + 3, a2);
  v35 = a1[3];
  if (v35)
  {
    v35 += 6 * *(v35 - 1);
  }

  if (v35 != v34)
  {
    sdRef[0] = v34[4];
    goto LABEL_46;
  }

  Connection = DNSServiceCreateConnection(sdRef);
  if (Connection)
  {
    v60 = Connection;
    v61 = qword_1ED6416F0;
    if (os_log_type_enabled(qword_1ED6416F0, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_79;
    }

    goto LABEL_80;
  }

  v64 = DNSServiceSetDispatchQueue(sdRef[0], MEMORY[0x1E69E96A0]);
  if (v64)
  {
    v60 = v64;
    v61 = qword_1ED6416F0;
    if (os_log_type_enabled(qword_1ED6416F0, OS_LOG_TYPE_DEFAULT))
    {
LABEL_79:
      *buf = 134218240;
      *&buf[4] = a1;
      *&buf[12] = 1024;
      *&buf[14] = v60;
      _os_log_impl(&dword_19D52D000, v61, OS_LOG_TYPE_DEFAULT, "%p - NetworkMDNSRegister::registerMDNSName DNSServiceCreateConnection error %d", buf, 0x12u);
    }

LABEL_80:
    v63 = *a4;
    *a4 = 0;
    (*(*v63 + 16))(v63, &v105, 258);
LABEL_81:
    (*(*v63 + 8))(v63);
    goto LABEL_113;
  }

  v82 = sdRef[0];
  v83 = *(a2 + 2);
  if (*a2 == 0 && !v83)
  {
    __break(0xC471u);
    JUMPOUT(0x19DE23550);
  }

  if (v83 == -1)
  {
LABEL_170:
    __break(0xC471u);
    JUMPOUT(0x19DE23490);
  }

  v84 = a1[3];
  if (v84 || (WTF::HashTable<WebCore::ProcessQualified<WTF::UUID>,WTF::KeyValuePair<WebCore::ProcessQualified<WTF::UUID>,std::unique_ptr<_DNSServiceRef_t,WebKit::NetworkMDNSRegister::DNSServiceDeallocator>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ProcessQualified<WTF::UUID>,std::unique_ptr<_DNSServiceRef_t,WebKit::NetworkMDNSRegister::DNSServiceDeallocator>>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::UUID>>,WTF::HashMap<WebCore::ProcessQualified<WTF::UUID>,std::unique_ptr<_DNSServiceRef_t,WebKit::NetworkMDNSRegister::DNSServiceDeallocator>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::UUID>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::UUID>>,WTF::HashTraits<std::unique_ptr<_DNSServiceRef_t,WebKit::NetworkMDNSRegister::DNSServiceDeallocator>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ProcessQualified<WTF::UUID>>,WTF::FastMalloc>::expand(a1 + 3), (v84 = a1[3]) != 0))
  {
    v85 = *(v84 - 8);
  }

  else
  {
    v85 = 0;
  }

  v86 = WTF::UUIDHash::hash(a2, v65) & v85;
  v87 = (v84 + 48 * v86);
  v89 = *v87;
  v88 = v87[1];
  v90 = v87[2];
  if (*v87 == 0 && !v90)
  {
LABEL_144:
    v96 = *a2;
    v87[2] = *(a2 + 2);
    *v87 = v96;
    v97 = v87[4];
    v87[4] = v82;
    if (v97)
    {
      DNSServiceRefDeallocate(v97);
    }

    v98 = a1[3];
    if (v98)
    {
      v99 = *(v98 - 12) + 1;
    }

    else
    {
      v99 = 1;
    }

    *(v98 - 12) = v99;
    v100 = (*(v98 - 16) + v99);
    v101 = *(v98 - 4);
    if (v101 > 0x400)
    {
      if (v101 > 2 * v100)
      {
        goto LABEL_46;
      }
    }

    else if (3 * v101 > 4 * v100)
    {
      goto LABEL_46;
    }

    WTF::HashTable<WebCore::ProcessQualified<WTF::UUID>,WTF::KeyValuePair<WebCore::ProcessQualified<WTF::UUID>,std::unique_ptr<_DNSServiceRef_t,WebKit::NetworkMDNSRegister::DNSServiceDeallocator>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ProcessQualified<WTF::UUID>,std::unique_ptr<_DNSServiceRef_t,WebKit::NetworkMDNSRegister::DNSServiceDeallocator>>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::UUID>>,WTF::HashMap<WebCore::ProcessQualified<WTF::UUID>,std::unique_ptr<_DNSServiceRef_t,WebKit::NetworkMDNSRegister::DNSServiceDeallocator>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::UUID>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::UUID>>,WTF::HashTraits<std::unique_ptr<_DNSServiceRef_t,WebKit::NetworkMDNSRegister::DNSServiceDeallocator>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ProcessQualified<WTF::UUID>>,WTF::FastMalloc>::expand(a1 + 3);
    goto LABEL_46;
  }

  v91 = 0;
  v92 = 1;
  while (1)
  {
    v93 = v88 == *(a2 + 1) && v89 == *a2;
    if (v93 && v90 == *(a2 + 2))
    {
      break;
    }

    if (v90 == -1)
    {
      v91 = v87;
    }

    v86 = (v86 + v92) & v85;
    v87 = (v84 + 48 * v86);
    v89 = *v87;
    v88 = v87[1];
    v90 = v87[2];
    ++v92;
    if (*v87 == 0 && v90 == 0)
    {
      if (v91)
      {
        *v91 = 0;
        v91[1] = 0;
        v91[2] = 0;
        v91[4] = 0;
        --*(a1[3] - 16);
        v87 = v91;
      }

      goto LABEL_144;
    }
  }

  if (v82)
  {
    DNSServiceRefDeallocate(v82);
  }

LABEL_46:
  WTF::String::utf8();
  if (*buf)
  {
    v36 = (*buf + 16);
  }

  else
  {
    v36 = 0;
  }

  v38 = inet_addr(v36);
  v39 = *buf;
  *buf = 0;
  if (v39)
  {
    if (*v39 == 1)
    {
      WTF::fastFree(v39, v37);
    }

    else
    {
      --*v39;
    }
  }

  rdata = v38;
  if (v38 == -1)
  {
    v62 = qword_1ED6416F0;
    if (os_log_type_enabled(qword_1ED6416F0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      *&buf[4] = a1;
      _os_log_impl(&dword_19D52D000, v62, OS_LOG_TYPE_DEFAULT, "%p - NetworkMDNSRegister::registerMDNSName inet_addr error", buf, 0xCu);
    }

    v63 = *a4;
    *a4 = 0;
    (*(*v63 + 16))(v63, &v105, 257);
    goto LABEL_81;
  }

  IdentifierInternal = WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>::generateIdentifierInternal();
  v41 = *(*a1 + 8);
  if (!v41)
  {
    __break(0xC471u);
    JUMPOUT(0x19DE234F0);
  }

  v42 = IdentifierInternal;
  ++*(v41 - 36);
  v43 = *(v41 + 40);
  v44 = WTF::fastMalloc(0x20);
  ++*(v41 - 36);
  *v44 = v41 - 56;
  v45 = v105;
  v105 = 0;
  *(v44 + 1) = v45;
  *(v44 + 2) = v43;
  v46 = *a4;
  *a4 = 0;
  *(v44 + 3) = v46;
  v103 = v44;
  if ((_MergedGlobals_84 & 1) == 0)
  {
    qword_1ED642778 = 0;
    _MergedGlobals_84 = 1;
  }

  if (v42 == -1)
  {
    __break(0xC471u);
    JUMPOUT(0x19DE23510);
  }

  if (!v42)
  {
    __break(0xC471u);
    JUMPOUT(0x19DE23530);
  }

  v47 = qword_1ED642778;
  if (!qword_1ED642778)
  {
    WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::PendingRegistrationRequestIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::PendingRegistrationRequestIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::PendingRegistrationRequest>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::PendingRegistrationRequestIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::PendingRegistrationRequest>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::PendingRegistrationRequestIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::PendingRegistrationRequestIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::PendingRegistrationRequest>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::PendingRegistrationRequestIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::PendingRegistrationRequestIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<std::unique_ptr<WebKit::PendingRegistrationRequest>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::PendingRegistrationRequestIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand(0);
    v47 = qword_1ED642778;
  }

  v48 = *(v47 - 8);
  v49 = (v42 + ~(v42 << 32)) ^ ((v42 + ~(v42 << 32)) >> 22);
  v50 = 9 * ((v49 + ~(v49 << 13)) ^ ((v49 + ~(v49 << 13)) >> 8));
  v51 = (v50 ^ (v50 >> 15)) + ~((v50 ^ (v50 >> 15)) << 27);
  v52 = v48 & ((v51 >> 31) ^ v51);
  v53 = v47 + 16 * v52;
  v54 = *v53;
  if (!*v53)
  {
LABEL_68:
    *v53 = v42;
    v103 = 0;
    *buf = 0;
    std::unique_ptr<WebKit::PendingRegistrationRequest>::reset[abi:sn200100]((v53 + 8), v44);
    std::unique_ptr<WebKit::PendingRegistrationRequest>::reset[abi:sn200100](buf, 0);
    v57 = qword_1ED642778;
    if (qword_1ED642778)
    {
      v58 = *(qword_1ED642778 - 12) + 1;
    }

    else
    {
      v58 = 1;
    }

    *(qword_1ED642778 - 12) = v58;
    v67 = (*(v57 - 16) + v58);
    v68 = *(v57 - 4);
    if (v68 > 0x400)
    {
      if (v68 > 2 * v67)
      {
        goto LABEL_86;
      }
    }

    else if (3 * v68 > 4 * v67)
    {
      goto LABEL_86;
    }

    WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::PendingRegistrationRequestIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::PendingRegistrationRequestIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::PendingRegistrationRequest>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::PendingRegistrationRequestIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::PendingRegistrationRequest>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::PendingRegistrationRequestIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::PendingRegistrationRequestIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::PendingRegistrationRequest>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::PendingRegistrationRequestIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::PendingRegistrationRequestIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<std::unique_ptr<WebKit::PendingRegistrationRequest>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::PendingRegistrationRequestIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand(v53);
    goto LABEL_86;
  }

  v55 = 0;
  v56 = 1;
  while (v54 != v42)
  {
    if (v54 == -1)
    {
      v55 = v53;
    }

    v52 = (v52 + v56) & v48;
    v53 = v47 + 16 * v52;
    v54 = *v53;
    ++v56;
    if (!*v53)
    {
      if (v55)
      {
        *v55 = 0;
        v55[1] = 0;
        --*(v47 - 16);
        v53 = v55;
      }

      goto LABEL_68;
    }
  }

LABEL_86:
  RecordRef = 0;
  v69 = sdRef[0];
  WTF::String::utf8();
  if (*buf)
  {
    v70 = (*buf + 16);
  }

  else
  {
    v70 = 0;
  }

  v72 = DNSServiceRegisterRecord(v69, &RecordRef, 0x800u, 0, v70, 1u, 1u, 4u, &rdata, 0, WebKit::registerMDNSNameCallback, v42);
  v73 = *buf;
  *buf = 0;
  if (!v73)
  {
LABEL_92:
    if (!v72)
    {
      goto LABEL_111;
    }

LABEL_93:
    v74 = qword_1ED6416F0;
    if (os_log_type_enabled(qword_1ED6416F0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218240;
      *&buf[4] = a1;
      *&buf[12] = 1024;
      *&buf[14] = v72;
      _os_log_impl(&dword_19D52D000, v74, OS_LOG_TYPE_DEFAULT, "%p - NetworkMDNSRegister::registerMDNSName DNSServiceRegisterRecord error %d", buf, 0x12u);
    }

    v75 = WTF::HashTable<WebCore::ProcessQualified<WTF::UUID>,WTF::KeyValuePair<WebCore::ProcessQualified<WTF::UUID>,std::unique_ptr<_DNSServiceRef_t,WebKit::NetworkMDNSRegister::DNSServiceDeallocator>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ProcessQualified<WTF::UUID>,std::unique_ptr<_DNSServiceRef_t,WebKit::NetworkMDNSRegister::DNSServiceDeallocator>>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::UUID>>,WTF::HashMap<WebCore::ProcessQualified<WTF::UUID>,std::unique_ptr<_DNSServiceRef_t,WebKit::NetworkMDNSRegister::DNSServiceDeallocator>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::UUID>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::UUID>>,WTF::HashTraits<std::unique_ptr<_DNSServiceRef_t,WebKit::NetworkMDNSRegister::DNSServiceDeallocator>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ProcessQualified<WTF::UUID>>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WebCore::ProcessQualified<WTF::UUID>,std::unique_ptr<_DNSServiceRef_t,WebKit::NetworkMDNSRegister::DNSServiceDeallocator>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::UUID>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::UUID>>,WTF::HashTraits<std::unique_ptr<_DNSServiceRef_t,WebKit::NetworkMDNSRegister::DNSServiceDeallocator>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WebCore::ProcessQualified<WTF::UUID>>>,(WTF::ShouldValidateKey)1,WebCore::ProcessQualified<WTF::UUID>>(a1 + 3, a2);
    v76 = a1[3];
    if (v76)
    {
      v77 = (v76 + 48 * *(v76 - 4));
      if (v77 == v75)
      {
        goto LABEL_102;
      }
    }

    else
    {
      if (!v75)
      {
        goto LABEL_102;
      }

      v77 = 0;
    }

    if (v77 != v75)
    {
      WTF::HashTable<WebCore::ProcessQualified<WTF::UUID>,WTF::KeyValuePair<WebCore::ProcessQualified<WTF::UUID>,std::unique_ptr<_DNSServiceRef_t,WebKit::NetworkMDNSRegister::DNSServiceDeallocator>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ProcessQualified<WTF::UUID>,std::unique_ptr<_DNSServiceRef_t,WebKit::NetworkMDNSRegister::DNSServiceDeallocator>>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::UUID>>,WTF::HashMap<WebCore::ProcessQualified<WTF::UUID>,std::unique_ptr<_DNSServiceRef_t,WebKit::NetworkMDNSRegister::DNSServiceDeallocator>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::UUID>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::UUID>>,WTF::HashTraits<std::unique_ptr<_DNSServiceRef_t,WebKit::NetworkMDNSRegister::DNSServiceDeallocator>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ProcessQualified<WTF::UUID>>,WTF::FastMalloc>::remove(a1 + 3, v75);
    }

LABEL_102:
    if ((_MergedGlobals_84 & 1) == 0)
    {
      qword_1ED642778 = 0;
      _MergedGlobals_84 = 1;
    }

    v78 = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::PendingRegistrationRequestIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::PendingRegistrationRequestIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::PendingRegistrationRequest>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::PendingRegistrationRequestIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::PendingRegistrationRequest>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::PendingRegistrationRequestIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::PendingRegistrationRequestIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::PendingRegistrationRequest>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::PendingRegistrationRequestIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::PendingRegistrationRequestIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<std::unique_ptr<WebKit::PendingRegistrationRequest>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::PendingRegistrationRequestIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::PendingRegistrationRequestIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::PendingRegistrationRequest>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::PendingRegistrationRequestIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::PendingRegistrationRequestIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<std::unique_ptr<WebKit::PendingRegistrationRequest>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::PendingRegistrationRequestIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<WebKit::PendingRegistrationRequestIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(v42);
    if (qword_1ED642778)
    {
      if (qword_1ED642778 + 16 * *(qword_1ED642778 - 4) != v78)
      {
        goto LABEL_106;
      }
    }

    else if (v78)
    {
LABEL_106:
      v79 = *(v78 + 8);
      *(v78 + 8) = 0;
      *buf = v79;
      WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::PendingRegistrationRequestIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::PendingRegistrationRequestIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::PendingRegistrationRequest>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::PendingRegistrationRequestIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::PendingRegistrationRequest>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::PendingRegistrationRequestIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::PendingRegistrationRequestIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::PendingRegistrationRequest>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::PendingRegistrationRequestIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::PendingRegistrationRequestIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<std::unique_ptr<WebKit::PendingRegistrationRequest>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::PendingRegistrationRequestIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::remove(v78);
      if (v79)
      {
        v80 = *(v79 + 24);
        *(v79 + 24) = 0;
        (*(*v80 + 16))(v80, v79 + 8, 258);
        (*(*v80 + 8))(v80);
      }

      goto LABEL_110;
    }

    *buf = 0;
LABEL_110:
    std::unique_ptr<WebKit::PendingRegistrationRequest>::reset[abi:sn200100](buf, 0);
    goto LABEL_111;
  }

  if (*v73 != 1)
  {
    --*v73;
    goto LABEL_92;
  }

  WTF::fastFree(v73, v71);
  if (v72)
  {
    goto LABEL_93;
  }

LABEL_111:
  std::unique_ptr<WebKit::PendingRegistrationRequest>::reset[abi:sn200100](&v103, 0);
  if (*(v41 - 36) == 1)
  {
    (*(*(v41 - 56) + 8))(v41 - 56);
  }

  else
  {
    --*(v41 - 36);
  }

LABEL_113:
  result = v105;
  v105 = 0;
  if (result)
  {
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v66);
    }
  }

  return result;
}

uint64_t WebKit::registerMDNSNameCallback(WebKit *this, _DNSServiceRef_t *a2, _DNSRecordRef_t *a3, int a4, uint64_t a5, void *a6)
{
  v36 = *MEMORY[0x1E69E9840];
  if ((_MergedGlobals_84 & 1) == 0)
  {
    qword_1ED642778 = 0;
    _MergedGlobals_84 = 1;
  }

  if ((a5 - 1) >= 0xFFFFFFFFFFFFFFFELL)
  {
    __break(0xC471u);
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  v8 = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::PendingRegistrationRequestIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::PendingRegistrationRequestIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::PendingRegistrationRequest>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::PendingRegistrationRequestIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::PendingRegistrationRequest>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::PendingRegistrationRequestIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::PendingRegistrationRequestIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::PendingRegistrationRequest>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::PendingRegistrationRequestIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::PendingRegistrationRequestIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<std::unique_ptr<WebKit::PendingRegistrationRequest>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::PendingRegistrationRequestIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::PendingRegistrationRequestIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::PendingRegistrationRequest>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::PendingRegistrationRequestIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::PendingRegistrationRequestIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<std::unique_ptr<WebKit::PendingRegistrationRequest>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::PendingRegistrationRequestIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<WebKit::PendingRegistrationRequestIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a5);
  if (qword_1ED642778)
  {
    if (qword_1ED642778 + 16 * *(qword_1ED642778 - 4) != v8)
    {
      goto LABEL_6;
    }

LABEL_26:
    v33 = 0;
    return std::unique_ptr<WebKit::PendingRegistrationRequest>::reset[abi:sn200100](&v33, 0);
  }

  if (!v8)
  {
    goto LABEL_26;
  }

LABEL_6:
  v9 = *(v8 + 8);
  *(v8 + 8) = 0;
  v33 = v9;
  WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::PendingRegistrationRequestIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::PendingRegistrationRequestIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::PendingRegistrationRequest>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::PendingRegistrationRequestIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::PendingRegistrationRequest>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::PendingRegistrationRequestIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::PendingRegistrationRequestIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::PendingRegistrationRequest>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::PendingRegistrationRequestIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::PendingRegistrationRequestIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<std::unique_ptr<WebKit::PendingRegistrationRequest>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::PendingRegistrationRequestIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::remove(v8);
  if (!v9)
  {
    return std::unique_ptr<WebKit::PendingRegistrationRequest>::reset[abi:sn200100](&v33, 0);
  }

  v10 = qword_1ED6416F0;
  if (os_log_type_enabled(qword_1ED6416F0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v35 = a4;
    _os_log_impl(&dword_19D52D000, v10, OS_LOG_TYPE_DEFAULT, "NetworkMDNSRegister callback - registerMDNSNameCallback with error %d", buf, 8u);
  }

  if (!a4)
  {
    v24 = *(v9 + 3);
    *(v9 + 3) = 0;
    (*(*v24 + 16))(v24, v9 + 1, 0);
LABEL_50:
    (*(*v24 + 8))(v24);
    return std::unique_ptr<WebKit::PendingRegistrationRequest>::reset[abi:sn200100](&v33, 0);
  }

  v11 = *v9;
  v12 = (*v9 + 176);
  v13 = *(*v12 + 8);
  if (v13)
  {
    ++*(v13 - 36);
    v16 = *(v11 + 200);
    v15 = (v11 + 200);
    v14 = v16;
    if (v16)
    {
      v17 = *(v14 - 4);
      if (!v17)
      {
LABEL_29:
        v25 = *(v14 - 12);
        v26 = *(v14 - 4);
        if (6 * v25 >= v26 || v26 < 9)
        {
          goto LABEL_49;
        }

        if (v25 <= 1)
        {
          v28 = 1;
          goto LABEL_38;
        }

        v29 = __clz(v25 - 1);
        if (v29)
        {
          v28 = (1 << -v29);
          if (v25 > 0x400)
          {
            if (v28 > 2 * v25)
            {
              goto LABEL_40;
            }

            goto LABEL_39;
          }

LABEL_38:
          if (3 * v28 > 4 * v25)
          {
LABEL_40:
            if (v28 > 0x400)
            {
              v30 = 0.416666667;
            }

            else
            {
              v30 = 0.604166667;
            }

            if (v28 * v30 <= v25)
            {
              LODWORD(v28) = 2 * v28;
            }

            if (v28 <= 8)
            {
              v31 = 8;
            }

            else
            {
              v31 = v28;
            }

            WTF::HashTable<WebCore::ProcessQualified<WTF::UUID>,WTF::KeyValuePair<WebCore::ProcessQualified<WTF::UUID>,std::unique_ptr<_DNSServiceRef_t,WebKit::NetworkMDNSRegister::DNSServiceDeallocator>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ProcessQualified<WTF::UUID>,std::unique_ptr<_DNSServiceRef_t,WebKit::NetworkMDNSRegister::DNSServiceDeallocator>>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::UUID>>,WTF::HashMap<WebCore::ProcessQualified<WTF::UUID>,std::unique_ptr<_DNSServiceRef_t,WebKit::NetworkMDNSRegister::DNSServiceDeallocator>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::UUID>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::UUID>>,WTF::HashTraits<std::unique_ptr<_DNSServiceRef_t,WebKit::NetworkMDNSRegister::DNSServiceDeallocator>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ProcessQualified<WTF::UUID>>,WTF::FastMalloc>::rehash(v15, v31);
            goto LABEL_49;
          }

LABEL_39:
          LODWORD(v28) = 2 * v28;
          goto LABEL_40;
        }

        goto LABEL_55;
      }

      v18 = 0;
      v19 = (v14 + 48 * v17 - 16);
      do
      {
        v20 = *(v19 - 2);
        if (*(v19 - 4) | *(v19 - 3) | v20)
        {
          v21 = v20 == -1;
        }

        else
        {
          v21 = 1;
        }

        if (!v21)
        {
          v22 = *v19;
          if (*v19 == this)
          {
            *(v19 - 4) = 1;
            *(v19 - 3) = 0;
            *(v19 - 2) = -1;
            *v19 = 0;
            if (this)
            {
              DNSServiceRefDeallocate(v22);
            }

            ++v18;
          }
        }

        v19 -= 6;
        --v17;
      }

      while (v17);
      v14 = *v15;
      if (v18)
      {
        v23 = *(v14 - 12) - v18;
        *(v14 - 16) += v18;
        *(v14 - 12) = v23;
        goto LABEL_29;
      }

      if (v14)
      {
        goto LABEL_29;
      }
    }

LABEL_49:
    WebKit::NetworkMDNSRegister::deref(v12);
    v24 = *(v9 + 3);
    *(v9 + 3) = 0;
    (*(*v24 + 16))(v24, v9 + 1, 258);
    goto LABEL_50;
  }

LABEL_56:
  result = 92;
  __break(0xC471u);
  return result;
}

uint64_t WebKit::LocalStorageManager::operator new(WebKit::LocalStorageManager *this, void *a2)
{
  if (WebKit::LocalStorageManager::s_heapRef)
  {
    return bmalloc::api::tzoneAllocateNonCompact(WebKit::LocalStorageManager::s_heapRef, a2);
  }

  else
  {
    return WebKit::LocalStorageManager::operatorNewSlow(0x20);
  }
}

WebKit::LocalStorageManager *std::unique_ptr<WebKit::LocalStorageManager>::reset[abi:sn200100](WebKit::LocalStorageManager **a1, WebKit::LocalStorageManager *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    WebKit::LocalStorageManager::~LocalStorageManager(result, a2);

    return bmalloc::api::tzoneFree(v5, v6);
  }

  return result;
}

void WebKit::LocalStorageManager::~LocalStorageManager(WebKit::LocalStorageManager *this, void *a2)
{
  v3 = *(this + 3);
  *(this + 3) = 0;
  if (v3)
  {
    (*(*v3 + 88))(v3);
  }

  v4 = *(this + 2);
  *(this + 2) = 0;
  if (v4)
  {
    WTF::RefCounted<WebKit::MemoryStorageArea>::deref(v4 + 104, a2);
  }

  v5 = *(this + 1);
  *(this + 1) = 0;
  if (v5)
  {
    if (!atomic_load(v5))
    {
      __break(0xC471u);
      JUMPOUT(0x19DE23A3CLL);
    }

    atomic_fetch_add(v5, 0xFFFFFFFF);
  }

  v7 = *this;
  *this = 0;
  if (v7)
  {
    if (atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v7, a2);
    }
  }
}

uint64_t WebKit::SessionStorageManager::operator new(WebKit::SessionStorageManager *this, void *a2)
{
  if (this == 24 && WebKit::SessionStorageManager::s_heapRef)
  {
    return bmalloc::api::tzoneAllocateNonCompact(WebKit::SessionStorageManager::s_heapRef, a2);
  }

  else
  {
    return WebKit::SessionStorageManager::operatorNewSlow(this);
  }
}

uint64_t std::unique_ptr<WebKit::SessionStorageManager>::reset[abi:sn200100](uint64_t result, void *a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = v2[2];
    if (v3)
    {
      WTF::fastFree((v3 - 4), a2);
    }

    v4 = v2[1];
    if (v4)
    {
      WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::MemoryStorageArea,WTF::RawPtrTraits<WebKit::MemoryStorageArea>,WTF::DefaultRefDerefTraits<WebKit::MemoryStorageArea>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::MemoryStorageArea,WTF::RawPtrTraits<WebKit::MemoryStorageArea>,WTF::DefaultRefDerefTraits<WebKit::MemoryStorageArea>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::MemoryStorageArea,WTF::RawPtrTraits<WebKit::MemoryStorageArea>,WTF::DefaultRefDerefTraits<WebKit::MemoryStorageArea>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::MemoryStorageArea,WTF::RawPtrTraits<WebKit::MemoryStorageArea>,WTF::DefaultRefDerefTraits<WebKit::MemoryStorageArea>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::deallocateTable(v4, a2);
    }

    v5 = *v2;
    *v2 = 0;
    if (v5)
    {
      if (!atomic_load(v5))
      {
        result = 290;
        __break(0xC471u);
        return result;
      }

      atomic_fetch_add(v5, 0xFFFFFFFF);
    }

    return bmalloc::api::tzoneFree(v2, a2);
  }

  return result;
}

uint64_t WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::MemoryStorageArea,WTF::RawPtrTraits<WebKit::MemoryStorageArea>,WTF::DefaultRefDerefTraits<WebKit::MemoryStorageArea>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::MemoryStorageArea,WTF::RawPtrTraits<WebKit::MemoryStorageArea>,WTF::DefaultRefDerefTraits<WebKit::MemoryStorageArea>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::MemoryStorageArea,WTF::RawPtrTraits<WebKit::MemoryStorageArea>,WTF::DefaultRefDerefTraits<WebKit::MemoryStorageArea>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::MemoryStorageArea,WTF::RawPtrTraits<WebKit::MemoryStorageArea>,WTF::DefaultRefDerefTraits<WebKit::MemoryStorageArea>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::deallocateTable(uint64_t a1, void *a2)
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
          WTF::RefCounted<WebKit::MemoryStorageArea>::deref(v5 + 104, a2);
        }
      }

      v4 += 2;
      --v3;
    }

    while (v3);
  }

  return WTF::fastFree((a1 - 16), a2);
}

uint64_t WebKit::IDBStorageManager::operator new(WebKit::IDBStorageManager *this, void *a2)
{
  if (this == 48 && WebKit::IDBStorageManager::s_heapRef)
  {
    return bmalloc::api::tzoneAllocateNonCompact(WebKit::IDBStorageManager::s_heapRef, a2);
  }

  else
  {
    return WebKit::IDBStorageManager::operatorNewSlow(this);
  }
}

WebKit::IDBStorageManager *std::unique_ptr<WebKit::IDBStorageManager>::reset[abi:sn200100](WebKit::IDBStorageManager **a1, WebKit::IDBStorageManager *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    WebKit::IDBStorageManager::~IDBStorageManager(result);

    return bmalloc::api::tzoneFree(v4, v5);
  }

  return result;
}

uint64_t WebKit::BackgroundFetchStoreManager::operator new(WebKit::BackgroundFetchStoreManager *this, void *a2)
{
  if (this == 56 && WebKit::BackgroundFetchStoreManager::s_heapRef)
  {
    return bmalloc::api::tzoneAllocateNonCompact(WebKit::BackgroundFetchStoreManager::s_heapRef, a2);
  }

  else
  {
    return WebKit::BackgroundFetchStoreManager::operatorNewSlow(this);
  }
}

WebKit::ServiceWorkerStorageManager **std::unique_ptr<WebKit::OriginStorageManager::StorageBucket>::reset[abi:sn200100](WebKit::ServiceWorkerStorageManager ***a1, WebKit::ServiceWorkerStorageManager **a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    WebKit::OriginStorageManager::StorageBucket::~StorageBucket(result);

    return bmalloc::api::tzoneFree(v5, v6);
  }

  return result;
}

void WebKit::OriginStorageManager::StorageBucket::~StorageBucket(WebKit::ServiceWorkerStorageManager **this)
{
  std::unique_ptr<WebKit::ServiceWorkerStorageManager>::reset[abi:sn200100](this + 16, 0);
  v3 = this[15];
  this[15] = 0;
  if (v3)
  {
    WTF::RefCounted<WebKit::BackgroundFetchStoreManager>::deref(v3 + 2, v2);
  }

  v4 = this[13];
  this[13] = 0;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, v2);
  }

  v5 = this[12];
  this[12] = 0;
  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, v2);
  }

  v6 = this[11];
  this[11] = 0;
  if (v6)
  {
    WTF::RefCounted<WebKit::CacheStorageManager>::deref(v6 + 2, v2);
  }

  v7 = this[10];
  this[10] = 0;
  if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v7, v2);
  }

  v8 = this[9];
  this[9] = 0;
  if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v8, v2);
  }

  std::unique_ptr<WebKit::IDBStorageManager>::reset[abi:sn200100](this + 8, 0);
  std::unique_ptr<WebKit::SessionStorageManager>::reset[abi:sn200100]((this + 7), 0);
  v10 = this[6];
  this[6] = 0;
  if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v10, v9);
  }

  v11 = this[5];
  this[5] = 0;
  if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v11, v9);
  }

  std::unique_ptr<WebKit::LocalStorageManager>::reset[abi:sn200100](this + 4, 0);
  v13 = this[3];
  this[3] = 0;
  if (v13)
  {
    WTF::RefCounted<WebKit::FileSystemStorageManager>::deref(v13 + 2);
  }

  v14 = this[1];
  this[1] = 0;
  if (v14 && atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v14, v12);
  }

  v15 = *this;
  *this = 0;
  if (v15)
  {
    if (atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v15, v12);
    }
  }
}

WTF::StringImpl *std::make_unique[abi:sn200100]<WebKit::OriginStorageManager::StorageBucket,WTF::String &,WTF::ASCIILiteral,WTF::String &,WTF::String &,WTF::String &,WebKit::UnifiedOriginStorageLevel &,0>@<X0>(atomic_uint **a1@<X0>, uint64_t *a2@<X1>, atomic_uint **a3@<X2>, atomic_uint **a4@<X3>, atomic_uint **a5@<X4>, char *a6@<X5>, uint64_t *a7@<X8>)
{
  v14 = WebKit::OriginStorageManager::StorageBucket::operator new(0x88, a2);
  WTF::String::String(&v17, *a2, a2[1]);
  WebKit::OriginStorageManager::StorageBucket::StorageBucket(v14, *a1, &v17, a3, a4, a5, *a6);
  *a7 = v14;
  result = v17;
  v17 = 0;
  if (result)
  {
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v15);
    }
  }

  return result;
}

uint64_t WebKit::OriginStorageManager::StorageBucket::operator new(WebKit::OriginStorageManager::StorageBucket *this, void *a2)
{
  if (WebKit::OriginStorageManager::StorageBucket::s_heapRef)
  {
    return bmalloc::api::tzoneAllocateNonCompact(WebKit::OriginStorageManager::StorageBucket::s_heapRef, a2);
  }

  else
  {
    return WebKit::OriginStorageManager::StorageBucket::operatorNewSlow(0x88);
  }
}

double WebCore::SQLiteDatabase::operator delete()
{
  v0 = MEMORY[0x19EB058E0]();
  if (atomic_load(v0))
  {
    result = 0.0;
    *(v0 + 2) = 0u;
    *(v0 + 3) = 0u;
    *v0 = 0u;
    *(v0 + 1) = 0u;
  }

  else
  {

    bmalloc::api::tzoneFree(v0, v1);
  }

  return result;
}

uint64_t std::unique_ptr<WebCore::SQLiteTransaction>::reset[abi:sn200100](uint64_t *a1, uint64_t a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    v5 = MEMORY[0x19EB07780](result);

    return bmalloc::api::tzoneFree(v5, v6);
  }

  return result;
}

uint64_t WebCore::SWRegistrationDatabase::operator new(WebCore::SWRegistrationDatabase *this, void *a2)
{
  if (this == 40 && *MEMORY[0x1E69E2688])
  {
    return bmalloc::api::tzoneAllocateNonCompact(*MEMORY[0x1E69E2688], a2);
  }

  else
  {
    return MEMORY[0x1EEE58CF0]();
  }
}

uint64_t std::unique_ptr<WebCore::SWRegistrationDatabase>::reset[abi:sn200100](uint64_t *a1, uint64_t a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    v5 = MEMORY[0x19EB0B230](result);

    return bmalloc::api::tzoneFree(v5, v6);
  }

  return result;
}

uint64_t WTF::HashTable<WebCore::ProcessQualified<WTF::UUID>,WTF::KeyValuePair<WebCore::ProcessQualified<WTF::UUID>,std::unique_ptr<_DNSServiceRef_t,WebKit::NetworkMDNSRegister::DNSServiceDeallocator>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ProcessQualified<WTF::UUID>,std::unique_ptr<_DNSServiceRef_t,WebKit::NetworkMDNSRegister::DNSServiceDeallocator>>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::UUID>>,WTF::HashMap<WebCore::ProcessQualified<WTF::UUID>,std::unique_ptr<_DNSServiceRef_t,WebKit::NetworkMDNSRegister::DNSServiceDeallocator>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::UUID>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::UUID>>,WTF::HashTraits<std::unique_ptr<_DNSServiceRef_t,WebKit::NetworkMDNSRegister::DNSServiceDeallocator>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ProcessQualified<WTF::UUID>>,WTF::FastMalloc>::deallocateTable(uint64_t a1, void *a2)
{
  v3 = *(a1 - 4);
  if (v3)
  {
    v4 = (a1 + 32);
    do
    {
      if (*(v4 - 2) != -1)
      {
        v5 = *v4;
        *v4 = 0;
        if (v5)
        {
          DNSServiceRefDeallocate(v5);
        }
      }

      v4 += 6;
      --v3;
    }

    while (v3);
  }

  return WTF::fastFree((a1 - 16), a2);
}

uint64_t WTF::HashTable<WebCore::ProcessQualified<WTF::UUID>,WTF::KeyValuePair<WebCore::ProcessQualified<WTF::UUID>,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ProcessQualified<WTF::UUID>,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::UUID>>,WTF::HashMap<WebCore::ProcessQualified<WTF::UUID>,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::UUID>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::UUID>>,WTF::HashTraits<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ProcessQualified<WTF::UUID>>,WTF::FastMalloc>::deallocateTable(uint64_t a1, void *a2)
{
  v3 = *(a1 - 4);
  if (v3)
  {
    v4 = a1 + 32;
    do
    {
      if (*(v4 - 16) != -1)
      {
        v4 = WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v4, a2);
      }

      v4 += 48;
      --v3;
    }

    while (v3);
  }

  return WTF::fastFree((a1 - 16), a2);
}

WTF::StringImpl **std::unique_ptr<WebKit::PendingRegistrationRequest>::reset[abi:sn200100](WTF::StringImpl **result, WTF::StringImpl *a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = *(v2 + 3);
    *(v2 + 3) = 0;
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }

    v4 = *(v2 + 1);
    *(v2 + 1) = 0;
    if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v4, a2);
    }

    v5 = *v2;
    *v2 = 0;
    if (v5)
    {
      if (v5[5] == 1)
      {
        (*(*v5 + 8))(v5);
      }

      else
      {
        --v5[5];
      }
    }

    return WTF::fastFree(v2, a2);
  }

  return result;
}

uint64_t WTF::VectorMover<false,WebKit::OriginQuotaManager::Request>::move(uint64_t result, uint64_t *a2, void *a3)
{
  if (result != a2)
  {
    v5 = result;
    do
    {
      v6 = *v5;
      v7 = v5[1];
      v5[1] = 0;
      *a3 = v6;
      a3[1] = v7;
      a3[2] = v5[2];
      result = v5[1];
      v5[1] = 0;
      if (result)
      {
        result = (*(*result + 8))(result);
      }

      a3 += 3;
      v5 += 3;
    }

    while (v5 != a2);
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WebKit::OriginStorageManager::createQuotaManager(WebKit::OriginQuotaManager::Parameters &&)::$_0,unsigned long long>::~CallableWrapper(void *a1, void *a2)
{
  v3 = a1[1];
  *a1 = &unk_1F110BD00;
  a1[1] = 0;
  if (v3 && atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3);
    WTF::fastFree(v3, a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::OriginStorageManager::createQuotaManager(WebKit::OriginQuotaManager::Parameters &&)::$_0,unsigned long long>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F110BD00;
  *(this + 1) = 0;
  if (v3 && atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3);
    WTF::fastFree(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::OriginStorageManager::createQuotaManager(WebKit::OriginQuotaManager::Parameters &&)::$_0,unsigned long long>::call(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (!v1)
  {
    return 0;
  }

  v2 = *(v1 + 8);
  if (!v2)
  {
    return 0;
  }

  atomic_fetch_add(v2 + 2, 1u);
  v3 = WebKit::OriginStorageManager::defaultBucket(v2);
  WebKit::OriginStorageManager::StorageBucket::resolvedPath(v3, 128, &v24);
  v4 = WebKit::OriginStorageManager::defaultBucket(v2);
  WebKit::OriginStorageManager::StorageBucket::resolvedPath(v4, 0x8000, &v23);
  v5 = WebKit::OriginStorageManager::defaultBucket(v2);
  WebKit::OriginStorageManager::StorageBucket::resolvedPath(v5, 0x80000, &v22);
  v7 = WTF::FileSystemImpl::directorySize(&v22, v6);
  if (v8)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0;
  }

  v10 = WebKit::OriginStorageManager::defaultBucket(v2)[3];
  if (v10)
  {
    v20 = (v10 + 8);
    ++*(v10 + 2);
    v21 = WebKit::FileSystemStorageManager::allocatedUnusedCapacity(v10);
    if (!__CFADD__(v9, v21))
    {
      v9 += v21;
    }

    WTF::RefCounted<WebKit::FileSystemStorageManager>::deref(v20);
  }

  if (v24 && *(v24 + 1))
  {
    v12 = WebCore::IDBServer::SQLiteIDBBackingStore::databasesSizeForDirectory(&v24, v11);
  }

  else
  {
    v12 = 0;
  }

  v15 = WebKit::CacheStorageManager::cacheStorageSize(&v23, v11);
  v16 = v22;
  v22 = 0;
  if (v16 && atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v16, v14);
  }

  v17 = v23;
  v23 = 0;
  if (v17 && atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v17, v14);
  }

  v18 = v24;
  v24 = 0;
  if (v18 && atomic_fetch_add_explicit(v18, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v18, v14);
  }

  if (atomic_load(v2 + 2))
  {
    result = v15 + v12 + v9;
    atomic_fetch_add(v2 + 2, 0xFFFFFFFF);
  }

  else
  {
    result = 290;
    __break(0xC471u);
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WebKit::OriginStorageManager::fileSystemStorageManager(WebKit::FileSystemStorageHandleRegistry &)::$_0,void,unsigned long long,WTF::CompletionHandler<void ()(BOOL)> &&>::~CallableWrapper(void *a1, void *a2)
{
  *a1 = &unk_1F110BD28;
  v3 = a1[2];
  a1[2] = 0;
  if (v3)
  {
    WTF::ThreadSafeWeakPtrControlBlock::weakDeref(v3, a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::OriginStorageManager::fileSystemStorageManager(WebKit::FileSystemStorageHandleRegistry &)::$_0,void,unsigned long long,WTF::CompletionHandler<void ()(BOOL)> &&>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F110BD28;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeWeakPtrControlBlock::weakDeref(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

atomic_ullong *WTF::Detail::CallableWrapper<WebKit::OriginStorageManager::fileSystemStorageManager(WebKit::FileSystemStorageHandleRegistry &)::$_0,void,unsigned long long,WTF::CompletionHandler<void ()(BOOL)> &&>::call(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = *(a1 + 16);
  if (v5 && (WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::LibWebRTCCodecsProxy>(&v14, v5, *(a1 + 8)), (v6 = v14) != 0))
  {
    v7 = *a3;
    *a3 = 0;
    v8 = WTF::fastMalloc(0x10);
    *v8 = &unk_1F110BD50;
    v8[1] = v7;
    v13 = v8;
    WebKit::OriginQuotaManager::requestSpace(v6, a2, &v13);
    if (v13)
    {
      (*(*v13 + 8))(v13);
    }

    return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::OriginQuotaManager,(WTF::DestructionThread)0>::deref(v6, v9);
  }

  else
  {
    v11 = *a3;
    *a3 = 0;
    (*(*v11 + 16))(v11, 0);
    v12 = *(*v11 + 8);

    return v12(v11);
  }
}

void *_ZN3WTF6Detail15CallableWrapperIZZN6WebKit20OriginStorageManager24fileSystemStorageManagerERNS2_31FileSystemStorageHandleRegistryEEN3__0clEyONS_17CompletionHandlerIFvbEEEEUlT_E_vJNS2_18OriginQuotaManager8DecisionEEED1Ev(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F110BD50;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZZN6WebKit20OriginStorageManager24fileSystemStorageManagerERNS2_31FileSystemStorageHandleRegistryEEN3__0clEyONS_17CompletionHandlerIFvbEEEEUlT_E_vJNS2_18OriginQuotaManager8DecisionEEED0Ev(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F110BD50;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZZN6WebKit20OriginStorageManager24fileSystemStorageManagerERNS2_31FileSystemStorageHandleRegistryEEN3__0clEyONS_17CompletionHandlerIFvbEEEEUlT_E_vJNS2_18OriginQuotaManager8DecisionEEE4callESE_(uint64_t a1)
{
  v1 = *(a1 + 8);
  *(a1 + 8) = 0;
  (*(*v1 + 16))(v1);
  v2 = *(*v1 + 8);

  return v2(v1);
}

void *WTF::Detail::CallableWrapper<WebKit::OriginStorageManager::idbStorageManager(WebKit::IDBStorageRegistry &)::$_0,void,unsigned long long,WTF::CompletionHandler<void ()(BOOL)> &&>::~CallableWrapper(void *a1, void *a2)
{
  *a1 = &unk_1F110BD78;
  v3 = a1[2];
  a1[2] = 0;
  if (v3)
  {
    WTF::ThreadSafeWeakPtrControlBlock::weakDeref(v3, a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::OriginStorageManager::idbStorageManager(WebKit::IDBStorageRegistry &)::$_0,void,unsigned long long,WTF::CompletionHandler<void ()(BOOL)> &&>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F110BD78;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeWeakPtrControlBlock::weakDeref(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

atomic_ullong *WTF::Detail::CallableWrapper<WebKit::OriginStorageManager::idbStorageManager(WebKit::IDBStorageRegistry &)::$_0,void,unsigned long long,WTF::CompletionHandler<void ()(BOOL)> &&>::call(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = *(a1 + 16);
  if (v5 && (WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::LibWebRTCCodecsProxy>(&v14, v5, *(a1 + 8)), (v6 = v14) != 0))
  {
    v7 = *a3;
    *a3 = 0;
    v8 = WTF::fastMalloc(0x10);
    *v8 = &unk_1F110BDA0;
    v8[1] = v7;
    v13 = v8;
    WebKit::OriginQuotaManager::requestSpace(v6, a2, &v13);
    if (v13)
    {
      (*(*v13 + 8))(v13);
    }

    return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::OriginQuotaManager,(WTF::DestructionThread)0>::deref(v6, v9);
  }

  else
  {
    v11 = *a3;
    *a3 = 0;
    (*(*v11 + 16))(v11, 0);
    v12 = *(*v11 + 8);

    return v12(v11);
  }
}

void *_ZN3WTF6Detail15CallableWrapperIZZN6WebKit20OriginStorageManager17idbStorageManagerERNS2_18IDBStorageRegistryEEN3__0clEyONS_17CompletionHandlerIFvbEEEEUlT_E_vJNS2_18OriginQuotaManager8DecisionEEED1Ev(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F110BDA0;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZZN6WebKit20OriginStorageManager17idbStorageManagerERNS2_18IDBStorageRegistryEEN3__0clEyONS_17CompletionHandlerIFvbEEEEUlT_E_vJNS2_18OriginQuotaManager8DecisionEEED0Ev(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F110BDA0;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZZN6WebKit20OriginStorageManager17idbStorageManagerERNS2_18IDBStorageRegistryEEN3__0clEyONS_17CompletionHandlerIFvbEEEEUlT_E_vJNS2_18OriginQuotaManager8DecisionEEE4callESE_(uint64_t a1)
{
  v1 = *(a1 + 8);
  *(a1 + 8) = 0;
  (*(*v1 + 16))(v1);
  v2 = *(*v1 + 8);

  return v2(v1);
}

void *WTF::Detail::CallableWrapper<WebKit::OriginStorageManager::cacheStorageManager(WebKit::CacheStorageRegistry &,WebCore::ClientOrigin const&,WTF::Ref<WTF::WorkQueue,WTF::RawPtrTraits<WTF::WorkQueue>,WTF::DefaultRefDerefTraits<WTF::WorkQueue>> &&)::$_0,void,unsigned long long,WTF::CompletionHandler<void ()(BOOL)> &&>::~CallableWrapper(void *a1, void *a2)
{
  *a1 = &unk_1F110BDC8;
  v3 = a1[2];
  a1[2] = 0;
  if (v3)
  {
    WTF::ThreadSafeWeakPtrControlBlock::weakDeref(v3, a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::OriginStorageManager::cacheStorageManager(WebKit::CacheStorageRegistry &,WebCore::ClientOrigin const&,WTF::Ref<WTF::WorkQueue,WTF::RawPtrTraits<WTF::WorkQueue>,WTF::DefaultRefDerefTraits<WTF::WorkQueue>> &&)::$_0,void,unsigned long long,WTF::CompletionHandler<void ()(BOOL)> &&>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F110BDC8;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeWeakPtrControlBlock::weakDeref(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

atomic_ullong *WTF::Detail::CallableWrapper<WebKit::OriginStorageManager::cacheStorageManager(WebKit::CacheStorageRegistry &,WebCore::ClientOrigin const&,WTF::Ref<WTF::WorkQueue,WTF::RawPtrTraits<WTF::WorkQueue>,WTF::DefaultRefDerefTraits<WTF::WorkQueue>> &&)::$_0,void,unsigned long long,WTF::CompletionHandler<void ()(BOOL)> &&>::call(uint64_t a1, uint64_t a2, atomic_ullong *a3)
{
  v5 = *(a1 + 16);
  if (v5 && (WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::LibWebRTCCodecsProxy>(&v17, v5, *(a1 + 8)), v17))
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::OriginQuotaManager,(WTF::DestructionThread)0>::deref(v17, v7);
    v8 = *(a1 + 16);
    if (v8)
    {
      WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::LibWebRTCCodecsProxy>(&v17, v8, *(a1 + 8));
      v9 = v17;
    }

    else
    {
      v9 = 0;
    }

    v13 = *a3;
    *a3 = 0;
    v14 = WTF::fastMalloc(0x10);
    *v14 = &unk_1F110BDF0;
    v14[1] = v13;
    v16 = v14;
    WebKit::OriginQuotaManager::requestSpace(v9, a2, &v16);
    result = v16;
    if (v16)
    {
      result = (*(*v16 + 8))(v16);
    }

    if (v9)
    {

      return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::OriginQuotaManager,(WTF::DestructionThread)0>::deref(v9, v15);
    }
  }

  else
  {
    v10 = *a3;
    *a3 = 0;
    (*(*v10 + 16))(v10, 0);
    v11 = *(*v10 + 8);

    return v11(v10);
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZZN6WebKit20OriginStorageManager19cacheStorageManagerERNS2_20CacheStorageRegistryERKN7WebCore12ClientOriginEONS_3RefINS_9WorkQueueENS_12RawPtrTraitsISB_EENS_21DefaultRefDerefTraitsISB_EEEEEN3__0clEyONS_17CompletionHandlerIFvbEEEEUlT_E_vJNS2_18OriginQuotaManager8DecisionEEED1Ev(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F110BDF0;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZZN6WebKit20OriginStorageManager19cacheStorageManagerERNS2_20CacheStorageRegistryERKN7WebCore12ClientOriginEONS_3RefINS_9WorkQueueENS_12RawPtrTraitsISB_EENS_21DefaultRefDerefTraitsISB_EEEEEN3__0clEyONS_17CompletionHandlerIFvbEEEEUlT_E_vJNS2_18OriginQuotaManager8DecisionEEED0Ev(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F110BDF0;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZZN6WebKit20OriginStorageManager19cacheStorageManagerERNS2_20CacheStorageRegistryERKN7WebCore12ClientOriginEONS_3RefINS_9WorkQueueENS_12RawPtrTraitsISB_EENS_21DefaultRefDerefTraitsISB_EEEEEN3__0clEyONS_17CompletionHandlerIFvbEEEEUlT_E_vJNS2_18OriginQuotaManager8DecisionEEE4callESQ_(uint64_t a1)
{
  v1 = *(a1 + 8);
  *(a1 + 8) = 0;
  (*(*v1 + 16))(v1);
  v2 = *(*v1 + 8);

  return v2(v1);
}

void *WTF::Detail::CallableWrapper<WebKit::OriginStorageManager::backgroundFetchManager(WTF::Ref<WTF::WorkQueue,WTF::RawPtrTraits<WTF::WorkQueue>,WTF::DefaultRefDerefTraits<WTF::WorkQueue>> &&)::$_0,void,unsigned long long,WTF::CompletionHandler<void ()(BOOL)> &&>::~CallableWrapper(void *a1, void *a2)
{
  *a1 = &unk_1F110BE18;
  v3 = a1[2];
  a1[2] = 0;
  if (v3)
  {
    WTF::ThreadSafeWeakPtrControlBlock::weakDeref(v3, a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::OriginStorageManager::backgroundFetchManager(WTF::Ref<WTF::WorkQueue,WTF::RawPtrTraits<WTF::WorkQueue>,WTF::DefaultRefDerefTraits<WTF::WorkQueue>> &&)::$_0,void,unsigned long long,WTF::CompletionHandler<void ()(BOOL)> &&>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F110BE18;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeWeakPtrControlBlock::weakDeref(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

atomic_ullong *WTF::Detail::CallableWrapper<WebKit::OriginStorageManager::backgroundFetchManager(WTF::Ref<WTF::WorkQueue,WTF::RawPtrTraits<WTF::WorkQueue>,WTF::DefaultRefDerefTraits<WTF::WorkQueue>> &&)::$_0,void,unsigned long long,WTF::CompletionHandler<void ()(BOOL)> &&>::call(uint64_t a1, uint64_t a2, atomic_ullong *a3)
{
  v5 = *(a1 + 16);
  if (v5 && (WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::LibWebRTCCodecsProxy>(&v17, v5, *(a1 + 8)), v17))
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::OriginQuotaManager,(WTF::DestructionThread)0>::deref(v17, v7);
    v8 = *(a1 + 16);
    if (v8)
    {
      WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::LibWebRTCCodecsProxy>(&v17, v8, *(a1 + 8));
      v9 = v17;
    }

    else
    {
      v9 = 0;
    }

    v13 = *a3;
    *a3 = 0;
    v14 = WTF::fastMalloc(0x10);
    *v14 = &unk_1F110BE40;
    v14[1] = v13;
    v16 = v14;
    WebKit::OriginQuotaManager::requestSpace(v9, a2, &v16);
    result = v16;
    if (v16)
    {
      result = (*(*v16 + 8))(v16);
    }

    if (v9)
    {

      return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::OriginQuotaManager,(WTF::DestructionThread)0>::deref(v9, v15);
    }
  }

  else
  {
    v10 = *a3;
    *a3 = 0;
    (*(*v10 + 16))(v10, 0);
    v11 = *(*v10 + 8);

    return v11(v10);
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZZN6WebKit20OriginStorageManager22backgroundFetchManagerEONS_3RefINS_9WorkQueueENS_12RawPtrTraitsIS5_EENS_21DefaultRefDerefTraitsIS5_EEEEEN3__0clEyONS_17CompletionHandlerIFvbEEEEUlT_E_vJNS2_18OriginQuotaManager8DecisionEEED1Ev(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F110BE40;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZZN6WebKit20OriginStorageManager22backgroundFetchManagerEONS_3RefINS_9WorkQueueENS_12RawPtrTraitsIS5_EENS_21DefaultRefDerefTraitsIS5_EEEEEN3__0clEyONS_17CompletionHandlerIFvbEEEEUlT_E_vJNS2_18OriginQuotaManager8DecisionEEED0Ev(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F110BE40;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZZN6WebKit20OriginStorageManager22backgroundFetchManagerEONS_3RefINS_9WorkQueueENS_12RawPtrTraitsIS5_EENS_21DefaultRefDerefTraitsIS5_EEEEEN3__0clEyONS_17CompletionHandlerIFvbEEEEUlT_E_vJNS2_18OriginQuotaManager8DecisionEEE4callESK_(uint64_t a1)
{
  v1 = *(a1 + 8);
  *(a1 + 8) = 0;
  (*(*v1 + 16))(v1);
  v2 = *(*v1 + 8);

  return v2(v1);
}

uint64_t WTF::Vector<std::unique_ptr<WebCore::SQLiteStatement>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(uint64_t a1, void *a2)
{
  v3 = *(a1 + 12);
  v4 = *a1;
  if (v3)
  {
    v5 = 8 * v3;
    do
    {
      v6 = *v4;
      *v4 = 0;
      if (v6)
      {
        WebCore::SQLiteStatement::operator delete(v6);
      }

      v4 = (v4 + 8);
      v5 -= 8;
    }

    while (v5);
    v4 = *a1;
  }

  if (v4)
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    WTF::fastFree(v4, a2);
  }

  return a1;
}

uint64_t *mpark::variant<WTF::UniqueRef<WebCore::SQLiteDatabase>,int>::operator=(uint64_t *a1, uint64_t *a2)
{
  v4 = *(a1 + 8);
  v5 = *(a2 + 8);
  if (v4 == 255)
  {
    if (*(a2 + 8))
    {
      if (v5 != 255)
      {
        goto LABEL_20;
      }

      return a1;
    }

LABEL_12:
    v8 = *a2;
    *a2 = 0;
    *a1 = v8;
    *(a1 + 8) = 0;
    return a1;
  }

  if (!*(a2 + 8))
  {
    if (!*(a1 + 8))
    {
      v9 = *a2;
      *a2 = 0;
      v10 = *a1;
      *a1 = v9;
      if (v10)
      {
        WebCore::SQLiteDatabase::operator delete();
      }

      return a1;
    }

    goto LABEL_12;
  }

  if (v5 == 255)
  {
    if (!*(a1 + 8))
    {
      v6 = *a1;
      *a1 = 0;
      if (v6)
      {
        WebCore::SQLiteDatabase::operator delete();
      }
    }

    v7 = -1;
    goto LABEL_21;
  }

  if (!*(a1 + 8))
  {
    v11 = *a1;
    *a1 = 0;
    if (v11)
    {
      WebCore::SQLiteDatabase::operator delete();
    }

    goto LABEL_20;
  }

  if (v4 != 1)
  {
LABEL_20:
    *a1 = *a2;
    v7 = 1;
LABEL_21:
    *(a1 + 8) = v7;
    return a1;
  }

  *a1 = *a2;
  return a1;
}

void *WTF::Detail::CallableWrapper<WebKit::SQLiteStorageArea::startTransactionIfNecessary(void)::$_0,void>::~CallableWrapper(void *a1, void *a2)
{
  v3 = a1[1];
  *a1 = &unk_1F110BE68;
  a1[1] = 0;
  if (v3 && atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3);
    WTF::fastFree(v3, a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::SQLiteStorageArea::startTransactionIfNecessary(void)::$_0,void>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F110BE68;
  *(this + 1) = 0;
  if (v3 && atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3);
    WTF::fastFree(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

_DWORD *WTF::Detail::CallableWrapper<WebKit::SQLiteStorageArea::startTransactionIfNecessary(void)::$_0,void>::call(_DWORD *result)
{
  v1 = *(result + 1);
  if (v1)
  {
    result = *(v1 + 8);
    if (result)
    {
      v2 = result + 26;
      ++result[26];
      WebKit::SQLiteStorageArea::commitTransactionIfNecessary(result);

      return WTF::RefCounted<WebKit::SQLiteStorageArea>::deref(v2);
    }
  }

  return result;
}

uint64_t WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,mpark::variant<WTF::String,unsigned int>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,mpark::variant<WTF::String,unsigned int>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,mpark::variant<WTF::String,unsigned int>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<mpark::variant<WTF::String,unsigned int>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WTF::String,mpark::variant<WTF::String,unsigned int>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<mpark::variant<WTF::String,unsigned int>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::String>>,(WTF::ShouldValidateKey)1,WTF::String>(uint64_t *a1, const WTF::StringImpl **a2, const WTF::StringImpl *a3)
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
    JUMPOUT(0x19DE255B0);
  }

  v7 = *(v3 - 8);
  v8 = *(v6 + 4);
  v9 = v8 < 0x100 ? WTF::StringImpl::hashSlowCase(v6) : v8 >> 8;
  for (i = 0; ; v9 = ++i + v11)
  {
    v11 = v9 & v7;
    v12 = (v3 + 24 * (v9 & v7));
    v13 = *v12;
    if (*v12 == -1)
    {
      continue;
    }

    if (!v13)
    {
      break;
    }

    if (WTF::equal(v13, *a2, a3))
    {
      return v12;
    }
  }

  if (!*a1)
  {
    return 0;
  }

  return *a1 + 24 * *(*a1 - 4);
}

uint64_t WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::String>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::reserveInitialCapacity(void *a1, uint64_t a2)
{
  v3 = WTF::HashTable<Inspector::Protocol::Automation::VirtualKey,WTF::KeyValuePair<Inspector::Protocol::Automation::VirtualKey,Inspector::Protocol::Automation::VirtualKey>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<Inspector::Protocol::Automation::VirtualKey,Inspector::Protocol::Automation::VirtualKey>>,WTF::IntHash<Inspector::Protocol::Automation::VirtualKey>,WTF::HashMap<Inspector::Protocol::Automation::VirtualKey,Inspector::Protocol::Automation::VirtualKey,WTF::IntHash<Inspector::Protocol::Automation::VirtualKey>,WTF::StrongEnumHashTraits<Inspector::Protocol::Automation::VirtualKey>,WTF::HashTraits<Inspector::Protocol::Automation::VirtualKey>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::StrongEnumHashTraits<Inspector::Protocol::Automation::VirtualKey>,WTF::FastMalloc>::computeBestTableSize(a2);
  result = WTF::fastZeroedMalloc((16 * v3 + 16));
  *a1 = result + 16;
  *(result + 8) = v3 - 1;
  *(result + 12) = v3;
  *result = 0;
  return result;
}

uint64_t WTF::Mapper<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> WTF::copyToVectorOf<WTF::String,WTF::SizedIteratorRange<WTF::HashMap<WTF::String,mpark::variant<WTF::String,unsigned int>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<mpark::variant<WTF::String,unsigned int>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::HashTableKeysIterator<WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,mpark::variant<WTF::String,unsigned int>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,mpark::variant<WTF::String,unsigned int>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,mpark::variant<WTF::String,unsigned int>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<mpark::variant<WTF::String,unsigned int>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>,WTF::String,mpark::variant<WTF::String,unsigned int>>>>(WTF::SizedIteratorRange<WTF::HashMap<WTF::String,mpark::variant<WTF::String,unsigned int>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<mpark::variant<WTF::String,unsigned int>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::HashTableKeysIterator<WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,mpark::variant<WTF::String,unsigned int>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,mpark::variant<WTF::String,unsigned int>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,mpark::variant<WTF::String,unsigned int>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<mpark::variant<WTF::String,unsigned int>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>,WTF::String,mpark::variant<WTF::String,unsigned int>>> const&)::{lambda(WTF::String&&)#1},WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::SizedIteratorRange<WTF::HashMap<WTF::String,mpark::variant<WTF::String,unsigned int>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<mpark::variant<WTF::String,unsigned int>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::HashTableKeysIterator<WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,mpark::variant<WTF::String,unsigned int>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,mpark::variant<WTF::String,unsigned int>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,mpark::variant<WTF::String,unsigned int>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<mpark::variant<WTF::String,unsigned int>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>,WTF::String,mpark::variant<WTF::String,unsigned int>>> const&,void>::map(uint64_t result, uint64_t **a2)
{
  v3 = result;
  v4 = **a2;
  if (v4)
  {
    v5 = *(v4 - 12);
    if (v5)
    {
      if (v5 >> 29)
      {
        __break(0xC471u);
        return result;
      }

      result = WTF::fastMalloc((8 * v5));
      *(v3 + 8) = v5;
      *v3 = result;
    }
  }

  v6 = a2[1];
  v7 = a2[3];
  if (v6 != v7)
  {
    v8 = a2[2];
    do
    {
      v9 = *v6;
      if (*v6)
      {
        atomic_fetch_add_explicit(v9, 2u, memory_order_relaxed);
      }

      v10 = *(v3 + 12);
      *(*v3 + 8 * v10) = v9;
      *(v3 + 12) = v10 + 1;
      do
      {
        v6 += 3;
      }

      while (v6 != v8 && *v6 + 1 <= 1);
    }

    while (v6 != v7);
  }

  return result;
}

WTF::StringImpl *WTF::HashMapTranslator<WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::String>>::translate<WTF::String const&,WTF::KeyValuePair<WTF::String,WTF::String>,WTF::HashTableAddResult<WTF::HashTableIterator<WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::String>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>,WTF::String,WTF::KeyValuePair<WTF::String,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::String>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>>> WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::inlineAdd<WTF::String const&,WTF::String&>(WTF::String const&,WTF::String&)::{lambda(void)#1}>(uint64_t *a1, atomic_uint **a2, atomic_uint ***a3)
{
  WTF::String::operator=(a1, a2);
  v6 = **a3;
  if (v6)
  {
    atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed);
  }

  result = a1[1];
  a1[1] = v6;
  if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {

    return WTF::StringImpl::destroy(result, v5);
  }

  return result;
}

_DWORD *WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,mpark::variant<WTF::String,unsigned int>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,mpark::variant<WTF::String,unsigned int>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,mpark::variant<WTF::String,unsigned int>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<mpark::variant<WTF::String,unsigned int>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::rehash(uint64_t *a1, unsigned int a2)
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

  result = WTF::fastMalloc((24 * a2 + 16));
  if (a2)
  {
    v9 = a2;
    v10 = result + 4;
    do
    {
      *v10 = 0;
      *(v10 + 1) = 0;
      *(v10 + 16) = 0;
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
    v11 = 0;
    v12 = v5;
    while (1)
    {
      v13 = v4 + 24 * v11;
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

          v18 = v14[4];
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
            v21 = v16 + 24 * (v19 & v17);
            v19 = ++v20 + (v19 & v17);
          }

          while (*v21);
          mpark::detail::move_constructor<mpark::detail::traits<WebCore::RouterSourceDict,WebCore::RouterSourceEnum>,(mpark::detail::Trait)1>::~move_constructor(v21 + 8, v8);
          v23 = *v21;
          *v21 = 0;
          if (v23 && atomic_fetch_add_explicit(v23, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v23, v22);
          }

          v24 = *v13;
          *v13 = 0;
          *v21 = v24;
          *(v21 + 8) = 0;
          *(v21 + 16) = -1;
          v25 = *(v13 + 16);
          if (v25 != 255)
          {
            if (*(v13 + 16))
            {
              *(v21 + 8) = *(v13 + 8);
            }

            else
            {
              v26 = *(v13 + 8);
              *(v13 + 8) = 0;
              *(v21 + 8) = v26;
            }

            *(v21 + 16) = v25;
          }

          mpark::detail::move_constructor<mpark::detail::traits<WebCore::RouterSourceDict,WebCore::RouterSourceEnum>,(mpark::detail::Trait)1>::~move_constructor(v13 + 8, v22);
          v15 = *v13;
          *v13 = 0;
          if (!v15 || atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) != 2)
          {
            goto LABEL_32;
          }
        }

        else
        {
          mpark::detail::move_constructor<mpark::detail::traits<WebCore::RouterSourceDict,WebCore::RouterSourceEnum>,(mpark::detail::Trait)1>::~move_constructor(v13 + 8, v8);
          v15 = *v13;
          *v13 = 0;
          if (!v15 || atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) != 2)
          {
            goto LABEL_32;
          }
        }

        WTF::StringImpl::destroy(v15, v8);
      }

LABEL_32:
      if (++v11 == v12)
      {
        goto LABEL_36;
      }
    }
  }

  if (v4)
  {
LABEL_36:

    return WTF::fastFree((v4 - 16), v8);
  }

  return result;
}

_DWORD *WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,mpark::variant<WTF::String,unsigned int>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,mpark::variant<WTF::String,unsigned int>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,mpark::variant<WTF::String,unsigned int>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<mpark::variant<WTF::String,unsigned int>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::expand(uint64_t *a1)
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

  return WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,mpark::variant<WTF::String,unsigned int>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,mpark::variant<WTF::String,unsigned int>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,mpark::variant<WTF::String,unsigned int>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<mpark::variant<WTF::String,unsigned int>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::rehash(a1, v3);
}

unsigned __int8 *WTF::GenericHashTraits<mpark::variant<WTF::String,unsigned int>>::assignToEmpty<mpark::variant<WTF::String,unsigned int>,mpark::variant<WTF::String,unsigned int>>(unsigned __int8 *result, unsigned __int8 *a2)
{
  v3 = result;
  v4 = result[8];
  v5 = a2[8];
  if (v4 == 255)
  {
    if (v5 == 255)
    {
      return result;
    }

    if (!a2[8])
    {
      goto LABEL_16;
    }

    goto LABEL_20;
  }

  if (v5 == 255)
  {
    if (!result[8])
    {
      result = *result;
      *v3 = 0;
      if (result)
      {
        if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          result = WTF::StringImpl::destroy(result, a2);
        }
      }
    }

    v6 = -1;
    goto LABEL_21;
  }

  if (a2[8])
  {
    if (result[8])
    {
      if (v4 == 1)
      {
        *result = *a2;
        return result;
      }
    }

    else
    {
      result = *result;
      *v3 = 0;
      if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        result = WTF::StringImpl::destroy(result, a2);
      }
    }

LABEL_20:
    *v3 = *a2;
    v6 = 1;
LABEL_21:
    v3[8] = v6;
    return result;
  }

  if (result[8])
  {
LABEL_16:
    v7 = *a2;
    *a2 = 0;
    *result = v7;
    result[8] = 0;
    return result;
  }

  v8 = *a2;
  *a2 = 0;
  result = *result;
  *v3 = v8;
  if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {

    return WTF::StringImpl::destroy(result, a2);
  }

  return result;
}

uint64_t *WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::MemoryStorageArea,WTF::RawPtrTraits<WebKit::MemoryStorageArea>,WTF::DefaultRefDerefTraits<WebKit::MemoryStorageArea>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::MemoryStorageArea,WTF::RawPtrTraits<WebKit::MemoryStorageArea>,WTF::DefaultRefDerefTraits<WebKit::MemoryStorageArea>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::MemoryStorageArea,WTF::RawPtrTraits<WebKit::MemoryStorageArea>,WTF::DefaultRefDerefTraits<WebKit::MemoryStorageArea>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::MemoryStorageArea,WTF::RawPtrTraits<WebKit::MemoryStorageArea>,WTF::DefaultRefDerefTraits<WebKit::MemoryStorageArea>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash(uint64_t *a1, unsigned int a2, uint64_t *a3)
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

          v18 = (v14 + ~(v14 << 32)) ^ ((v14 + ~(v14 << 32)) >> 22);
          v19 = 9 * ((v18 + ~(v18 << 13)) ^ ((v18 + ~(v18 << 13)) >> 8));
          v20 = (v19 ^ (v19 >> 15)) + ~((v19 ^ (v19 >> 15)) << 27);
          v21 = v17 & ((v20 >> 31) ^ v20);
          v22 = 1;
          do
          {
            v23 = v21;
            v24 = *(v16 + 16 * v21);
            v21 = (v21 + v22++) & v17;
          }

          while (v24);
          v25 = (v16 + 16 * v23);
          v26 = v25[1];
          v25[1] = 0;
          if (v26)
          {
            WTF::RefCounted<WebKit::MemoryStorageArea>::deref(v26 + 104, v10);
          }

          *v25 = *v13;
          v27 = v13[1];
          v13[1] = 0;
          v25[1] = v27;
          v28 = v13[1];
          v13[1] = 0;
          if (v28)
          {
            WTF::RefCounted<WebKit::MemoryStorageArea>::deref(v28 + 104, v10);
          }

          if (v13 == a3)
          {
            v12 = v25;
          }
        }

        else
        {
          v15 = v13[1];
          v13[1] = 0;
          if (v15)
          {
            WTF::RefCounted<WebKit::MemoryStorageArea>::deref(v15 + 104, v10);
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

uint64_t *WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::MemoryStorageArea,WTF::RawPtrTraits<WebKit::MemoryStorageArea>,WTF::DefaultRefDerefTraits<WebKit::MemoryStorageArea>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::MemoryStorageArea,WTF::RawPtrTraits<WebKit::MemoryStorageArea>,WTF::DefaultRefDerefTraits<WebKit::MemoryStorageArea>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::MemoryStorageArea,WTF::RawPtrTraits<WebKit::MemoryStorageArea>,WTF::DefaultRefDerefTraits<WebKit::MemoryStorageArea>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::MemoryStorageArea,WTF::RawPtrTraits<WebKit::MemoryStorageArea>,WTF::DefaultRefDerefTraits<WebKit::MemoryStorageArea>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand(uint64_t *a1, uint64_t *a2)
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

  return WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::MemoryStorageArea,WTF::RawPtrTraits<WebKit::MemoryStorageArea>,WTF::DefaultRefDerefTraits<WebKit::MemoryStorageArea>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::MemoryStorageArea,WTF::RawPtrTraits<WebKit::MemoryStorageArea>,WTF::DefaultRefDerefTraits<WebKit::MemoryStorageArea>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::MemoryStorageArea,WTF::RawPtrTraits<WebKit::MemoryStorageArea>,WTF::DefaultRefDerefTraits<WebKit::MemoryStorageArea>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::MemoryStorageArea,WTF::RawPtrTraits<WebKit::MemoryStorageArea>,WTF::DefaultRefDerefTraits<WebKit::MemoryStorageArea>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash(a1, v5, a2);
}

uint64_t WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::MemoryStorageArea,WTF::RawPtrTraits<WebKit::MemoryStorageArea>,WTF::DefaultRefDerefTraits<WebKit::MemoryStorageArea>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::MemoryStorageArea,WTF::RawPtrTraits<WebKit::MemoryStorageArea>,WTF::DefaultRefDerefTraits<WebKit::MemoryStorageArea>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::MemoryStorageArea,WTF::RawPtrTraits<WebKit::MemoryStorageArea>,WTF::DefaultRefDerefTraits<WebKit::MemoryStorageArea>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::MemoryStorageArea,WTF::RawPtrTraits<WebKit::MemoryStorageArea>,WTF::DefaultRefDerefTraits<WebKit::MemoryStorageArea>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  if (*a2 == -1)
  {
    __break(0xC471u);
    JUMPOUT(0x19DE25D68);
  }

  if (!v2)
  {
    __break(0xC471u);
    JUMPOUT(0x19DE25D88);
  }

  v3 = *a1;
  if (*a1)
  {
    v4 = *(v3 - 8);
    v5 = (v2 + ~(v2 << 32)) ^ ((v2 + ~(v2 << 32)) >> 22);
    v6 = 9 * ((v5 + ~(v5 << 13)) ^ ((v5 + ~(v5 << 13)) >> 8));
    v7 = (v6 ^ (v6 >> 15)) + ~((v6 ^ (v6 >> 15)) << 27);
    v8 = v4 & ((v7 >> 31) ^ v7);
    v9 = *(v3 + 16 * v8);
    if (v9 == v2)
    {
      return *(v3 + 16 * v8 + 8);
    }

    v10 = 1;
    while (v9)
    {
      v8 = (v8 + v10) & v4;
      v9 = *(v3 + 16 * v8);
      ++v10;
      if (v9 == v2)
      {
        return *(v3 + 16 * v8 + 8);
      }
    }
  }

  return 0;
}

uint64_t WTF::checkHashTableKey<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::StorageAreaMapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::StorageAreaMapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::StorageAreaMapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaMapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMapTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::StorageAreaMapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaMapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(uint64_t result)
{
  if (result == -1 || !result)
  {
    __break(0xC471u);
    JUMPOUT(0x19DE25DB8);
  }

  return result;
}

_OWORD *WTF::HashTable<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::StorageAreaMapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::StorageAreaMapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::StorageAreaMapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaMapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand(uint64_t *a1, void **a2)
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

  return WTF::HashTable<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::StorageAreaMapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::StorageAreaMapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::StorageAreaMapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaMapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash(a1, v5, a2);
}

_OWORD *WTF::HashTable<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::StorageAreaMapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::StorageAreaMapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::StorageAreaMapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaMapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash(uint64_t *a1, unsigned int a2, void **a3)
{
  v6 = *a1;
  if (*a1)
  {
    LODWORD(v7) = *(v6 - 4);
    v8 = *(v6 - 12);
  }

  else
  {
    LODWORD(v7) = 0;
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
    v7 = v7;
    v13 = v6;
    do
    {
      v10 = *v13;
      if (*v13 + 1 >= 2)
      {
        v14 = WTF::HashTable<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::StorageAreaMapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::StorageAreaMapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::StorageAreaMapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaMapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::lookupForReinsert<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::StorageAreaMapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaMapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>( *a1,  v10);
        *v14 = *v13;
        if (v13 == a3)
        {
          v11 = v14;
        }
      }

      v13 += 2;
      --v7;
    }

    while (v7);
    goto LABEL_11;
  }

  result = 0;
  if (v6)
  {
LABEL_11:
    WTF::fastFree((v6 - 16), v10);
    return v11;
  }

  return result;
}

uint64_t WTF::HashTable<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::StorageAreaMapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::StorageAreaMapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::StorageAreaMapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaMapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::lookupForReinsert<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::StorageAreaMapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaMapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = *(a1 - 8);
  }

  else
  {
    v2 = 0;
  }

  v3 = (~(a2 << 32) + a2) ^ ((~(a2 << 32) + a2) >> 22);
  v4 = 9 * ((v3 + ~(v3 << 13)) ^ ((v3 + ~(v3 << 13)) >> 8));
  v5 = (v4 ^ (v4 >> 15)) + ~((v4 ^ (v4 >> 15)) << 27);
  v6 = v2 & ((v5 >> 31) ^ v5);
  v7 = 1;
  do
  {
    v8 = v6;
    v9 = *(a1 + 16 * v6);
    v6 = (v6 + v7++) & v2;
  }

  while (v9);
  return a1 + 16 * v8;
}

uint64_t WTF::HashMap<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::StorageAreaMapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaMapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::remove(uint64_t *a1, void *a2)
{
  if (!*a1)
  {
    if (a2)
    {
      v2 = 0;
      goto LABEL_3;
    }

    return 0;
  }

  v2 = *a1 + 16 * *(*a1 - 4);
  if (v2 == a2)
  {
    return 0;
  }

LABEL_3:
  if (v2 != a2)
  {
    WTF::HashTable<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::StorageAreaMapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::StorageAreaMapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::StorageAreaMapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaMapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::remove(a1, a2);
  }

  return 1;
}

uint64_t *WTF::HashTable<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::StorageAreaMapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::StorageAreaMapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::StorageAreaMapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaMapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::remove(uint64_t *result, void *a2)
{
  *a2 = -1;
  v2 = *result;
  v3 = vadd_s32(*(*result - 16), 0xFFFFFFFF00000001);
  *(v2 - 16) = v3;
  v4 = *(v2 - 4);
  if (6 * v3.i32[1] < v4 && v4 >= 9)
  {
    return WTF::HashTable<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::StorageAreaMapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::StorageAreaMapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::StorageAreaMapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaMapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash(result, v4 >> 1, 0);
  }

  return result;
}

uint64_t WTF::HashTable<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::StorageAreaMapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::StorageAreaMapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::StorageAreaMapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaMapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::StorageAreaMapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaMapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(uint64_t *a1, uint64_t *a2)
{
  if (!*a1)
  {
    return 0;
  }

  result = WTF::HashTable<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::StorageAreaMapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::StorageAreaMapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::StorageAreaMapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaMapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::lookup<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::StorageAreaMapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaMapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>( a1,  a2);
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

uint64_t WTF::HashTable<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::StorageAreaMapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::StorageAreaMapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::StorageAreaMapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaMapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::lookup<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::StorageAreaMapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaMapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(uint64_t *a1, uint64_t *a2)
{
  WTF::checkHashTableKey<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::StorageAreaMapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::StorageAreaMapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::StorageAreaMapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaMapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::StorageAreaMapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaMapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(*a2);
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

uint64_t WTF::checkHashTableKey<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::StorageAreaMapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::StorageAreaMapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::StorageAreaMapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaMapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::StorageAreaMapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaMapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(uint64_t result)
{
  if (result == -1 || !result)
  {
    __break(0xC471u);
    JUMPOUT(0x19DE2612CLL);
  }

  return result;
}

uint64_t IPC::Connection::send<Messages::StorageAreaMap::ClearCache>(uint64_t *a1, void *a2, uint64_t a3, char a4, uint64_t a5)
{
  v10 = IPC::Encoder::operator new(0x238, a2);
  *v10 = 1752;
  *(v10 + 2) = 0;
  *(v10 + 3) = 0;
  *(v10 + 1) = a3;
  *(v10 + 68) = 0;
  *(v10 + 70) = 0;
  *(v10 + 69) = 0;
  IPC::Encoder::encodeHeader(v10);
  v17 = v10;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v10, *a2);
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

uint64_t IPC::Connection::send<Messages::StorageAreaMap::DispatchStorageEvent>(uint64_t *a1, void *a2, uint64_t a3, char a4, uint64_t a5)
{
  v10 = IPC::Encoder::operator new(0x238, a2);
  *v10 = 1753;
  *(v10 + 2) = 0;
  *(v10 + 3) = 0;
  *(v10 + 1) = a3;
  *(v10 + 68) = 0;
  *(v10 + 70) = 0;
  *(v10 + 69) = 0;
  IPC::Encoder::encodeHeader(v10);
  v17 = v10;
  Messages::StorageAreaMap::DispatchStorageEvent::encode<IPC::Encoder>(a2, v10);
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

uint64_t Messages::StorageAreaMap::DispatchStorageEvent::encode<IPC::Encoder>(uint64_t a1, IPC::Encoder *a2)
{
  IPC::ArgumentCoder<std::optional<unsigned long long>,void>::encode<IPC::Encoder,std::optional<unsigned long long>>(a2, *a1);
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a2, *(a1 + 8));
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a2, *(a1 + 16));
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a2, *(a1 + 24));
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a2, *(a1 + 32));
  v4 = *(a1 + 40);

  return IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a2, v4);
}

uint64_t WTF::checkHashTableKey<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::StorageAreaBase,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::StorageAreaBase,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::StorageAreaBase,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakPtr<WebKit::StorageAreaBase,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMapTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::StorageAreaBase,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakPtr<WebKit::StorageAreaBase,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(uint64_t result)
{
  if (result == -1 || !result)
  {
    __break(0xC471u);
    JUMPOUT(0x19DE26364);
  }

  return result;
}

void *WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::StorageAreaBase,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::StorageAreaBase,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::StorageAreaBase,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakPtr<WebKit::StorageAreaBase,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand(uint64_t *a1, void *a2)
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

  return WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::StorageAreaBase,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::StorageAreaBase,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::StorageAreaBase,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakPtr<WebKit::StorageAreaBase,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash(a1, v5, a2);
}

unsigned int *WTF::HashMapTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::StorageAreaBase,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakPtr<WebKit::StorageAreaBase,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>::translate<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long> const&,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::StorageAreaBase,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTableAddResult<WTF::HashTableIterator<WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::StorageAreaBase,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::StorageAreaBase,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::StorageAreaBase,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakPtr<WebKit::StorageAreaBase,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>,WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::StorageAreaBase,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::StorageAreaBase,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::StorageAreaBase,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakPtr<WebKit::StorageAreaBase,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>> WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::StorageAreaBase,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakPtr<WebKit::StorageAreaBase,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::inlineAdd<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long> const&,WebKit::StorageAreaBase&>(WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long> const&,WebKit::StorageAreaBase&)::{lambda(void)#1}>(void *a1, uint64_t a2, uint64_t *a3)
{
  *a1 = a2;
  v4 = *a3;
  WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::initializeIfNeeded((*a3 + 8), *a3);
  v6 = *(v4 + 8);
  atomic_fetch_add(v6, 1u);
  result = a1[1];
  a1[1] = v6;
  if (result && atomic_fetch_add(result, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, result);

    return WTF::fastFree(result, v5);
  }

  return result;
}

void *WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::StorageAreaBase,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::StorageAreaBase,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::StorageAreaBase,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakPtr<WebKit::StorageAreaBase,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash(uint64_t *a1, unsigned int a2, void *a3)
{
  v6 = *a1;
  if (*a1)
  {
    LODWORD(v7) = *(v6 - 4);
    v8 = *(v6 - 12);
  }

  else
  {
    LODWORD(v7) = 0;
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
  v13 = 0;
  if (v7)
  {
    v15 = v6;
    v7 = v7;
    do
    {
      if (*v15 != -1)
      {
        if (*v15)
        {
          v17 = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::StorageAreaBase,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::StorageAreaBase,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::StorageAreaBase,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakPtr<WebKit::StorageAreaBase,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::reinsert(*a1, v15);
          v18 = v15[1];
          v15[1] = 0;
          if (v18 && atomic_fetch_add(v18, 0xFFFFFFFF) == 1)
          {
            atomic_store(1u, v18);
            WTF::fastFree(v18, v10);
          }

          if (v15 == a3)
          {
            v13 = v17;
          }
        }

        else
        {
          v16 = v15[1];
          v15[1] = 0;
          if (v16)
          {
            if (atomic_fetch_add(v16, 0xFFFFFFFF) == 1)
            {
              atomic_store(1u, v16);
              WTF::fastFree(v16, v10);
            }
          }
        }
      }

      v15 += 2;
      --v7;
    }

    while (v7);
    goto LABEL_20;
  }

  result = 0;
  if (v6)
  {
LABEL_20:
    WTF::fastFree((v6 - 16), v10);
    return v13;
  }

  return result;
}

void *WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::StorageAreaBase,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::StorageAreaBase,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::StorageAreaBase,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakPtr<WebKit::StorageAreaBase,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::reinsert(uint64_t a1, void *a2)
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
  if (v12 && atomic_fetch_add(v12, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v12);
    WTF::fastFree(v12, a2);
  }

  *v11 = *a2;
  v13 = a2[1];
  a2[1] = 0;
  v11[1] = v13;
  return v11;
}

uint64_t WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::StorageAreaBase,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakPtr<WebKit::StorageAreaBase,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::remove(uint64_t *a1, void *a2)
{
  if (!*a1)
  {
    if (a2)
    {
      v2 = 0;
      goto LABEL_3;
    }

    return 0;
  }

  v2 = *a1 + 16 * *(*a1 - 4);
  if (v2 == a2)
  {
    return 0;
  }

LABEL_3:
  if (v2 != a2)
  {
    WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::StorageAreaBase,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::StorageAreaBase,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::StorageAreaBase,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakPtr<WebKit::StorageAreaBase,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::remove(a1, a2);
  }

  return 1;
}

unsigned int *WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::StorageAreaBase,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::StorageAreaBase,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::StorageAreaBase,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakPtr<WebKit::StorageAreaBase,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::remove(uint64_t *a1, void *a2)
{
  result = WTF::KeyValuePairHashTraits<WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakPtr<WebKit::StorageAreaBase,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>>::customDeleteBucket(a2, a2);
  v4 = *a1;
  v5 = vadd_s32(*(*a1 - 16), 0xFFFFFFFF00000001);
  *(v4 - 16) = v5;
  v6 = *(v4 - 4);
  if (6 * v5.i32[1] < v6 && v6 >= 9)
  {

    return WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::StorageAreaBase,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::StorageAreaBase,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::StorageAreaBase,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakPtr<WebKit::StorageAreaBase,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash(a1, v6 >> 1, 0);
  }

  return result;
}

unsigned int *WTF::KeyValuePairHashTraits<WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakPtr<WebKit::StorageAreaBase,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>>::customDeleteBucket(void *a1, void *a2)
{
  result = a1[1];
  *a1 = -1;
  a1[1] = 0;
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

uint64_t WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::StorageAreaBase,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::StorageAreaBase,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::StorageAreaBase,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakPtr<WebKit::StorageAreaBase,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::StorageAreaBase,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakPtr<WebKit::StorageAreaBase,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(uint64_t *a1, uint64_t *a2)
{
  if (!*a1)
  {
    return 0;
  }

  result = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::StorageAreaBase,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::StorageAreaBase,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::StorageAreaBase,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakPtr<WebKit::StorageAreaBase,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::lookup<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::StorageAreaBase,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakPtr<WebKit::StorageAreaBase,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a1, a2);
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

uint64_t WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::StorageAreaBase,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::StorageAreaBase,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::StorageAreaBase,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakPtr<WebKit::StorageAreaBase,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::lookup<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::StorageAreaBase,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakPtr<WebKit::StorageAreaBase,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(uint64_t *a1, uint64_t *a2)
{
  WTF::checkHashTableKey<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::StorageAreaBase,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::StorageAreaBase,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::StorageAreaBase,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakPtr<WebKit::StorageAreaBase,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::StorageAreaBase,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakPtr<WebKit::StorageAreaBase,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(*a2);
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

uint64_t WTF::checkHashTableKey<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::StorageAreaBase,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::StorageAreaBase,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::StorageAreaBase,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakPtr<WebKit::StorageAreaBase,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::StorageAreaBase,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakPtr<WebKit::StorageAreaBase,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(uint64_t result)
{
  if (result == -1 || !result)
  {
    __break(0xC471u);
    JUMPOUT(0x19DE26894);
  }

  return result;
}

uint64_t WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::StorageAreaBase,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::StorageAreaBase,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::StorageAreaBase,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakPtr<WebKit::StorageAreaBase,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::lookup<WTF::HashMapTranslatorAdapter<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::StorageAreaBase,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakPtr<WebKit::StorageAreaBase,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::StorageAreaBase,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakPtr<WebKit::StorageAreaBase,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(uint64_t *a1, uint64_t *a2)
{
  WTF::checkHashTableKey<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::StorageAreaBase,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::StorageAreaBase,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::StorageAreaBase,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakPtr<WebKit::StorageAreaBase,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMapTranslatorAdapter<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::StorageAreaBase,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakPtr<WebKit::StorageAreaBase,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::StorageAreaBase,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakPtr<WebKit::StorageAreaBase,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(*a2);
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

uint64_t WTF::checkHashTableKey<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::StorageAreaBase,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::StorageAreaBase,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::StorageAreaBase,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakPtr<WebKit::StorageAreaBase,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMapTranslatorAdapter<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::StorageAreaBase,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakPtr<WebKit::StorageAreaBase,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::StorageAreaBase,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakPtr<WebKit::StorageAreaBase,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(uint64_t result)
{
  if (result == -1 || !result)
  {
    __break(0xC471u);
    JUMPOUT(0x19DE26978);
  }

  return result;
}

void WTF::HashTable<WebCore::ProcessQualified<WTF::UUID>,WTF::KeyValuePair<WebCore::ProcessQualified<WTF::UUID>,std::unique_ptr<_DNSServiceRef_t,WebKit::NetworkMDNSRegister::DNSServiceDeallocator>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ProcessQualified<WTF::UUID>,std::unique_ptr<_DNSServiceRef_t,WebKit::NetworkMDNSRegister::DNSServiceDeallocator>>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::UUID>>,WTF::HashMap<WebCore::ProcessQualified<WTF::UUID>,std::unique_ptr<_DNSServiceRef_t,WebKit::NetworkMDNSRegister::DNSServiceDeallocator>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::UUID>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::UUID>>,WTF::HashTraits<std::unique_ptr<_DNSServiceRef_t,WebKit::NetworkMDNSRegister::DNSServiceDeallocator>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ProcessQualified<WTF::UUID>>,WTF::FastMalloc>::remove(uint64_t *a1, void *a2)
{
  *a2 = 1;
  a2[1] = 0;
  a2[2] = -1;
  v3 = a2[4];
  a2[4] = 0;
  if (v3)
  {
    DNSServiceRefDeallocate(v3);
  }

  v4 = *a1;
  v5 = vadd_s32(*(*a1 - 16), 0xFFFFFFFF00000001);
  *(v4 - 16) = v5;
  v6 = *(v4 - 4);
  if (6 * v5.i32[1] < v6 && v6 >= 9)
  {

    WTF::HashTable<WebCore::ProcessQualified<WTF::UUID>,WTF::KeyValuePair<WebCore::ProcessQualified<WTF::UUID>,std::unique_ptr<_DNSServiceRef_t,WebKit::NetworkMDNSRegister::DNSServiceDeallocator>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ProcessQualified<WTF::UUID>,std::unique_ptr<_DNSServiceRef_t,WebKit::NetworkMDNSRegister::DNSServiceDeallocator>>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::UUID>>,WTF::HashMap<WebCore::ProcessQualified<WTF::UUID>,std::unique_ptr<_DNSServiceRef_t,WebKit::NetworkMDNSRegister::DNSServiceDeallocator>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::UUID>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::UUID>>,WTF::HashTraits<std::unique_ptr<_DNSServiceRef_t,WebKit::NetworkMDNSRegister::DNSServiceDeallocator>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ProcessQualified<WTF::UUID>>,WTF::FastMalloc>::rehash(a1, v6 >> 1);
  }
}

_DWORD *WTF::HashTable<WebCore::ProcessQualified<WTF::UUID>,WTF::KeyValuePair<WebCore::ProcessQualified<WTF::UUID>,std::unique_ptr<_DNSServiceRef_t,WebKit::NetworkMDNSRegister::DNSServiceDeallocator>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ProcessQualified<WTF::UUID>,std::unique_ptr<_DNSServiceRef_t,WebKit::NetworkMDNSRegister::DNSServiceDeallocator>>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::UUID>>,WTF::HashMap<WebCore::ProcessQualified<WTF::UUID>,std::unique_ptr<_DNSServiceRef_t,WebKit::NetworkMDNSRegister::DNSServiceDeallocator>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::UUID>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::UUID>>,WTF::HashTraits<std::unique_ptr<_DNSServiceRef_t,WebKit::NetworkMDNSRegister::DNSServiceDeallocator>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ProcessQualified<WTF::UUID>>,WTF::FastMalloc>::rehash(uint64_t *a1, unsigned int a2)
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
    v10 = result + 12;
    do
    {
      *(v10 - 4) = 0;
      *(v10 - 3) = 0;
      *(v10 - 2) = 0;
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
    v11 = 0;
    while (1)
    {
      v12 = v4 + 48 * v11;
      v13 = *(v12 + 16);
      if (v13 != -1)
      {
        if (v13)
        {
          v14 = 0;
        }

        else
        {
          v14 = *v12 == 0;
        }

        if (!v14)
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

          v18 = WTF::UUIDHash::hash((v4 + 48 * v11), v8);
          v19 = 0;
          do
          {
            v20 = v15 + 48 * (v18 & v16);
            v18 = ++v19 + (v18 & v16);
          }

          while (*v20 != 0 || *(v20 + 16) != 0);
          v22 = *(v20 + 32);
          *(v20 + 32) = 0;
          if (v22)
          {
            DNSServiceRefDeallocate(v22);
          }

          v23 = *(v12 + 16);
          *v20 = *v12;
          *(v20 + 16) = v23;
          v24 = *(v12 + 32);
          *(v12 + 32) = 0;
          *(v20 + 32) = v24;
          v17 = *(v12 + 32);
          *(v12 + 32) = 0;
          if (!v17)
          {
            goto LABEL_29;
          }

LABEL_28:
          DNSServiceRefDeallocate(v17);
          goto LABEL_29;
        }

        v17 = *(v12 + 32);
        *(v12 + 32) = 0;
        if (v17)
        {
          goto LABEL_28;
        }
      }

LABEL_29:
      if (++v11 == v5)
      {
        goto LABEL_32;
      }
    }
  }

  if (v4)
  {
LABEL_32:

    return WTF::fastFree((v4 - 16), v8);
  }

  return result;
}

uint64_t WTF::HashTable<WebCore::ProcessQualified<WTF::UUID>,WTF::KeyValuePair<WebCore::ProcessQualified<WTF::UUID>,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ProcessQualified<WTF::UUID>,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::UUID>>,WTF::HashMap<WebCore::ProcessQualified<WTF::UUID>,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::UUID>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::UUID>>,WTF::HashTraits<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ProcessQualified<WTF::UUID>>,WTF::FastMalloc>::rehash(uint64_t *a1, unsigned int a2, uint64_t a3)
{
  v5 = *a1;
  if (*a1)
  {
    v6 = *(v5 - 4);
    v7 = *(v5 - 12);
  }

  else
  {
    v6 = 0;
    v7 = 0;
  }

  v8 = WTF::fastMalloc((48 * a2 + 16));
  if (a2)
  {
    v10 = a2;
    v11 = v8 + 12;
    do
    {
      *(v11 - 4) = 0;
      *(v11 - 3) = 0;
      *(v11 - 2) = 0;
      *v11 = 0;
      v11[1] = 0;
      v11 += 6;
      --v10;
    }

    while (v10);
  }

  *a1 = (v8 + 4);
  v8[2] = a2 - 1;
  v8[3] = a2;
  *v8 = 0;
  v8[1] = v7;
  if (v6)
  {
    v12 = 0;
    v13 = 0;
    do
    {
      v14 = v5 + 48 * v12;
      v15 = *(v14 + 16);
      if (v15 != -1)
      {
        if (v15)
        {
          v16 = 0;
        }

        else
        {
          v16 = *v14 == 0;
        }

        if (v16)
        {
          WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v14 + 32, v9);
        }

        else
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

          v19 = WTF::UUIDHash::hash((v5 + 48 * v12), v9);
          v21 = 0;
          do
          {
            v22 = v17 + 48 * (v19 & v18);
            v19 = ++v21 + (v19 & v18);
          }

          while (*v22 != 0 || *(v22 + 16) != 0);
          WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v22 + 32, v20);
          v24 = *(v14 + 16);
          *v22 = *v14;
          *(v22 + 16) = v24;
          *(v22 + 32) = 0;
          *(v22 + 40) = 0;
          WTF::VectorBuffer<WTF::String,0ul,WTF::FastMalloc>::adopt(v22 + 32, (v14 + 32));
          WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v14 + 32, v25);
          if (v14 == a3)
          {
            v13 = v22;
          }
        }
      }

      ++v12;
    }

    while (v12 != v6);
  }

  else
  {
    v13 = 0;
    result = 0;
    if (!v5)
    {
      return result;
    }
  }

  WTF::fastFree((v5 - 16), v9);
  return v13;
}

WTF::StringImpl **WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::PendingRegistrationRequestIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::PendingRegistrationRequestIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::PendingRegistrationRequest>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::PendingRegistrationRequestIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::PendingRegistrationRequest>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::PendingRegistrationRequestIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::PendingRegistrationRequestIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::PendingRegistrationRequest>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::PendingRegistrationRequestIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::PendingRegistrationRequestIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<std::unique_ptr<WebKit::PendingRegistrationRequest>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::PendingRegistrationRequestIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::remove(uint64_t a1)
{
  *a1 = -1;
  result = std::unique_ptr<WebKit::PendingRegistrationRequest>::reset[abi:sn200100]((a1 + 8), 0);
  v2 = qword_1ED642778;
  v3 = vadd_s32(*(qword_1ED642778 - 16), 0xFFFFFFFF00000001);
  *(qword_1ED642778 - 16) = v3;
  v4 = *(v2 - 4);
  if (6 * v3.i32[1] < v4 && v4 >= 9)
  {

    return WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::PendingRegistrationRequestIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::PendingRegistrationRequestIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::PendingRegistrationRequest>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::PendingRegistrationRequestIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::PendingRegistrationRequest>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::PendingRegistrationRequestIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::PendingRegistrationRequestIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::PendingRegistrationRequest>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::PendingRegistrationRequestIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::PendingRegistrationRequestIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<std::unique_ptr<WebKit::PendingRegistrationRequest>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::PendingRegistrationRequestIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash(v4 >> 1, 0);
  }

  return result;
}

uint64_t WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::PendingRegistrationRequestIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::PendingRegistrationRequestIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::PendingRegistrationRequest>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::PendingRegistrationRequestIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::PendingRegistrationRequest>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::PendingRegistrationRequestIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::PendingRegistrationRequestIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::PendingRegistrationRequest>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::PendingRegistrationRequestIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::PendingRegistrationRequestIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<std::unique_ptr<WebKit::PendingRegistrationRequest>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::PendingRegistrationRequestIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash(unsigned int a1, uint64_t a2)
{
  v4 = qword_1ED642778;
  if (qword_1ED642778)
  {
    v5 = *(qword_1ED642778 - 4);
    v6 = *(qword_1ED642778 - 12);
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  v7 = WTF::fastZeroedMalloc((16 * a1 + 16));
  qword_1ED642778 = (v7 + 4);
  v7[2] = a1 - 1;
  v7[3] = a1;
  *v7 = 0;
  v7[1] = v6;
  if (v5)
  {
    v9 = 0;
    v10 = 0;
    do
    {
      v11 = v4 + 16 * v9;
      v12 = *v11;
      if (*v11 != -1)
      {
        if (v12)
        {
          if (qword_1ED642778)
          {
            v13 = *(qword_1ED642778 - 8);
          }

          else
          {
            v13 = 0;
          }

          v14 = (v12 + ~(v12 << 32)) ^ ((v12 + ~(v12 << 32)) >> 22);
          v15 = 9 * ((v14 + ~(v14 << 13)) ^ ((v14 + ~(v14 << 13)) >> 8));
          v16 = (v15 ^ (v15 >> 15)) + ~((v15 ^ (v15 >> 15)) << 27);
          v17 = v13 & ((v16 >> 31) ^ v16);
          v18 = 1;
          do
          {
            v19 = v17;
            v20 = *(qword_1ED642778 + 16 * v17);
            v17 = (v17 + v18++) & v13;
          }

          while (v20);
          v21 = qword_1ED642778 + 16 * v19;
          std::unique_ptr<WebKit::PendingRegistrationRequest>::reset[abi:sn200100]((v21 + 8), 0);
          *v21 = *v11;
          v22 = *(v11 + 8);
          *(v11 + 8) = 0;
          *(v21 + 8) = v22;
          std::unique_ptr<WebKit::PendingRegistrationRequest>::reset[abi:sn200100]((v11 + 8), 0);
          if (v11 == a2)
          {
            v10 = v21;
          }
        }

        else
        {
          std::unique_ptr<WebKit::PendingRegistrationRequest>::reset[abi:sn200100]((v11 + 8), 0);
        }
      }

      ++v9;
    }

    while (v9 != v5);
  }

  else
  {
    v10 = 0;
    result = 0;
    if (!v4)
    {
      return result;
    }
  }

  WTF::fastFree((v4 - 16), v8);
  return v10;
}

uint64_t WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::PendingRegistrationRequestIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::PendingRegistrationRequestIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::PendingRegistrationRequest>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::PendingRegistrationRequestIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::PendingRegistrationRequest>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::PendingRegistrationRequestIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::PendingRegistrationRequestIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::PendingRegistrationRequest>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::PendingRegistrationRequestIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::PendingRegistrationRequestIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<std::unique_ptr<WebKit::PendingRegistrationRequest>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::PendingRegistrationRequestIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::PendingRegistrationRequestIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::PendingRegistrationRequest>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::PendingRegistrationRequestIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::PendingRegistrationRequestIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<std::unique_ptr<WebKit::PendingRegistrationRequest>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::PendingRegistrationRequestIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<WebKit::PendingRegistrationRequestIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(uint64_t a1)
{
  if (!qword_1ED642778)
  {
    return 0;
  }

  if (a1 == -1 || !a1)
  {
    __break(0xC471u);
    JUMPOUT(0x19DE27060);
  }

  v1 = *(qword_1ED642778 - 8);
  v2 = (~(a1 << 32) + a1) ^ ((~(a1 << 32) + a1) >> 22);
  v3 = 9 * ((v2 + ~(v2 << 13)) ^ ((v2 + ~(v2 << 13)) >> 8));
  v4 = (v3 ^ (v3 >> 15)) + ~((v3 ^ (v3 >> 15)) << 27);
  v5 = v1 & ((v4 >> 31) ^ v4);
  v6 = *(qword_1ED642778 + 16 * v5);
  if (v6 == a1)
  {
    return qword_1ED642778 + 16 * v5;
  }

  v7 = 1;
  while (v6)
  {
    v5 = (v5 + v7) & v1;
    v6 = *(qword_1ED642778 + 16 * v5);
    ++v7;
    if (v6 == a1)
    {
      return qword_1ED642778 + 16 * v5;
    }
  }

  return qword_1ED642778 + 16 * *(qword_1ED642778 - 4);
}

uint64_t WTF::tryMakeString<WTF::UUID,WTF::ASCIILiteral>@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v3 = a1[1];
  v9[0] = *a1;
  v9[1] = v3;
  v4 = a2[1];
  v5 = v4 != 0;
  v6 = v4 - 1;
  if (!v5)
  {
    v6 = 0;
  }

  v8[0] = *a2;
  v8[1] = v6;
  if (!(v6 >> 31))
  {
    return WTF::tryMakeStringFromAdapters<WTF::StringTypeAdapter<WTF::UUID,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>(v9, v8, a3);
  }

  result = 161;
  __break(0xC471u);
  return result;
}

uint64_t WTF::tryMakeStringFromAdapters<WTF::StringTypeAdapter<WTF::UUID,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  result = _ZNK3WTF17StringTypeAdapterINS_4UUIDEvE6handleIZNKS2_6lengthEvEUlDpOT_E_EEDcOT_(a1, &v9);
  v7 = *(a2 + 8);
  if (((result | v7) & 0x80000000) == 0)
  {
    v8 = __OFADD__(result, v7);
    result = (result + v7);
    if (!v8)
    {
      return WTF::tryMakeStringImplFromAdaptersInternal<WTF::StringTypeAdapter<WTF::UUID,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>(result, 1, *a1, a1[1], *a2, v7, a3);
    }
  }

  *a3 = 0;
  return result;
}

uint64_t WTF::tryMakeStringImplFromAdaptersInternal<WTF::StringTypeAdapter<WTF::UUID,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>@<X0>(uint64_t result@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int8x16_t *a5@<X4>, size_t a6@<X5>, void *a7@<X8>)
{
  v11 = result;
  v13 = result;
  if (!a2)
  {
    if (result)
    {
      if (result <= 0x7FFFFFEF)
      {
        result = WTF::tryFastCompactMalloc((2 * result + 20));
        v14 = v29;
        if (!v29)
        {
          goto LABEL_21;
        }

        *v29 = 2;
        v14[1] = v11;
        *(v14 + 1) = v14 + 5;
        v14[4] = 0;
        v26 = a3;
        v27 = a4;
        v29 = v14 + 5;
        v30 = v13;
        v28 = &v29;
        _ZNK3WTF17StringTypeAdapterINS_4UUIDEvE6handleIZNKS2_7writeToIDsEEvNSt3__14spanIT_Lm18446744073709551615EEEEUlDpOT_E_EEDcOS7_(&v26, &v28);
        result = _ZNK3WTF17StringTypeAdapterINS_4UUIDEvE6handleIZNKS2_6lengthEvEUlDpOT_E_EEDcOT_(&v26, &v29);
        if (result <= v11)
        {
          v15 = v14 + 2 * result + 20;
          v16 = &v15[2 * a6];
          if (a6 >= 0x40)
          {
            v17 = &v15[2 * (a6 & 0x7FFFFFFFFFFFFFC0)];
            v18 = 0uLL;
            do
            {
              v31.val[0] = *a5;
              v19 = a5[1];
              v32.val[0] = a5[2];
              v20 = a5[3];
              a5 += 4;
              v21 = v20;
              v32.val[1] = 0uLL;
              v33.val[0] = v19;
              v31.val[1] = 0uLL;
              v22 = v15;
              vst2q_s8(v22, v31);
              v22 += 32;
              v33.val[1] = 0uLL;
              vst2q_s8(v22, v33);
              v23 = v15 + 64;
              vst2q_s8(v23, v32);
              v24 = v15 + 96;
              vst2q_s8(v24, *(&v18 - 1));
              v15 += 128;
            }

            while (v15 != v17);
            v15 = v17;
          }

          while (v15 != v16)
          {
            v25 = a5->u8[0];
            a5 = (a5 + 1);
            *v15 = v25;
            v15 += 2;
          }

          goto LABEL_21;
        }

LABEL_22:
        __break(1u);
        goto LABEL_23;
      }

LABEL_11:
      v14 = 0;
      goto LABEL_21;
    }

LABEL_12:
    v14 = MEMORY[0x1E696EB88];
    atomic_fetch_add_explicit(MEMORY[0x1E696EB88], 2u, memory_order_relaxed);
    goto LABEL_21;
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
  v14 = v29;
  if (!v29)
  {
    goto LABEL_21;
  }

  *v29 = 2;
  v14[1] = v11;
  *(v14 + 1) = v14 + 5;
  v14[4] = 4;
  v26 = a3;
  v27 = a4;
  v29 = v14 + 5;
  v30 = v13;
  v28 = &v29;
  _ZNK3WTF17StringTypeAdapterINS_4UUIDEvE6handleIZNKS2_7writeToIhEEvNSt3__14spanIT_Lm18446744073709551615EEEEUlDpOT_E_EEDcOS7_(&v26, &v28);
  result = _ZNK3WTF17StringTypeAdapterINS_4UUIDEvE6handleIZNKS2_6lengthEvEUlDpOT_E_EEDcOT_(&v26, &v29);
  if (result > v11)
  {
    goto LABEL_22;
  }

  if (a6)
  {
    result = v14 + result + 20;
    if (a6 != 1)
    {
      result = memcpy(result, a5, a6);
      goto LABEL_21;
    }

LABEL_23:
    *result = a5->i8[0];
  }

LABEL_21:
  *a7 = v14;
  return result;
}

uint64_t WTF::HashTable<WebCore::ProcessQualified<WTF::UUID>,WTF::KeyValuePair<WebCore::ProcessQualified<WTF::UUID>,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ProcessQualified<WTF::UUID>,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::UUID>>,WTF::HashMap<WebCore::ProcessQualified<WTF::UUID>,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::UUID>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::UUID>>,WTF::HashTraits<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ProcessQualified<WTF::UUID>>,WTF::FastMalloc>::expand(uint64_t *a1, uint64_t a2)
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

  return WTF::HashTable<WebCore::ProcessQualified<WTF::UUID>,WTF::KeyValuePair<WebCore::ProcessQualified<WTF::UUID>,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ProcessQualified<WTF::UUID>,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::UUID>>,WTF::HashMap<WebCore::ProcessQualified<WTF::UUID>,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::UUID>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::UUID>>,WTF::HashTraits<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ProcessQualified<WTF::UUID>>,WTF::FastMalloc>::rehash(a1, v5, a2);
}

uint64_t *WTF::HashTable<WebCore::ProcessQualified<WTF::UUID>,WTF::KeyValuePair<WebCore::ProcessQualified<WTF::UUID>,std::unique_ptr<_DNSServiceRef_t,WebKit::NetworkMDNSRegister::DNSServiceDeallocator>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ProcessQualified<WTF::UUID>,std::unique_ptr<_DNSServiceRef_t,WebKit::NetworkMDNSRegister::DNSServiceDeallocator>>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::UUID>>,WTF::HashMap<WebCore::ProcessQualified<WTF::UUID>,std::unique_ptr<_DNSServiceRef_t,WebKit::NetworkMDNSRegister::DNSServiceDeallocator>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::UUID>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::UUID>>,WTF::HashTraits<std::unique_ptr<_DNSServiceRef_t,WebKit::NetworkMDNSRegister::DNSServiceDeallocator>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ProcessQualified<WTF::UUID>>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WebCore::ProcessQualified<WTF::UUID>,std::unique_ptr<_DNSServiceRef_t,WebKit::NetworkMDNSRegister::DNSServiceDeallocator>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::UUID>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::UUID>>,WTF::HashTraits<std::unique_ptr<_DNSServiceRef_t,WebKit::NetworkMDNSRegister::DNSServiceDeallocator>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WebCore::ProcessQualified<WTF::UUID>>>,(WTF::ShouldValidateKey)1,WebCore::ProcessQualified<WTF::UUID>>(uint64_t *a1, WTF::UUIDHash *this)
{
  v2 = *a1;
  if (!*a1)
  {
    return 0;
  }

  v4 = *(this + 2);
  v5 = *this == 0 && v4 == 0;
  if (v5 || v4 == -1)
  {
    __break(0xC471u);
    JUMPOUT(0x19DE27490);
  }

  v7 = *(v2 - 8);
  v8 = WTF::UUIDHash::hash(this, this);
  v9 = *this;
  v10 = *(this + 1);
  v11 = *(this + 2);
  v12 = v8 & v7;
  result = (v2 + 48 * (v8 & v7));
  v14 = *result;
  v15 = result[1];
  v16 = v15 == v10 && v14 == v9;
  v17 = result[2];
  if (!v16 || v17 != v11)
  {
    v19 = 1;
    while (v14 | v15 || v17)
    {
      v12 = (v12 + v19) & v7;
      result = (v2 + 48 * v12);
      v14 = *result;
      v15 = result[1];
      v20 = v15 == v10 && v14 == v9;
      v17 = result[2];
      ++v19;
      if (v20 && v17 == v11)
      {
        return result;
      }
    }

    if (*a1)
    {
      return (*a1 + 48 * *(*a1 - 4));
    }

    return 0;
  }

  return result;
}

_DWORD *WTF::HashTable<WebCore::ProcessQualified<WTF::UUID>,WTF::KeyValuePair<WebCore::ProcessQualified<WTF::UUID>,std::unique_ptr<_DNSServiceRef_t,WebKit::NetworkMDNSRegister::DNSServiceDeallocator>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ProcessQualified<WTF::UUID>,std::unique_ptr<_DNSServiceRef_t,WebKit::NetworkMDNSRegister::DNSServiceDeallocator>>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::UUID>>,WTF::HashMap<WebCore::ProcessQualified<WTF::UUID>,std::unique_ptr<_DNSServiceRef_t,WebKit::NetworkMDNSRegister::DNSServiceDeallocator>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::UUID>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::UUID>>,WTF::HashTraits<std::unique_ptr<_DNSServiceRef_t,WebKit::NetworkMDNSRegister::DNSServiceDeallocator>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ProcessQualified<WTF::UUID>>,WTF::FastMalloc>::expand(uint64_t *a1)
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

  return WTF::HashTable<WebCore::ProcessQualified<WTF::UUID>,WTF::KeyValuePair<WebCore::ProcessQualified<WTF::UUID>,std::unique_ptr<_DNSServiceRef_t,WebKit::NetworkMDNSRegister::DNSServiceDeallocator>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ProcessQualified<WTF::UUID>,std::unique_ptr<_DNSServiceRef_t,WebKit::NetworkMDNSRegister::DNSServiceDeallocator>>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::UUID>>,WTF::HashMap<WebCore::ProcessQualified<WTF::UUID>,std::unique_ptr<_DNSServiceRef_t,WebKit::NetworkMDNSRegister::DNSServiceDeallocator>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::UUID>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::UUID>>,WTF::HashTraits<std::unique_ptr<_DNSServiceRef_t,WebKit::NetworkMDNSRegister::DNSServiceDeallocator>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ProcessQualified<WTF::UUID>>,WTF::FastMalloc>::rehash(a1, v3);
}

uint64_t WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::PendingRegistrationRequestIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::PendingRegistrationRequestIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::PendingRegistrationRequest>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::PendingRegistrationRequestIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::PendingRegistrationRequest>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::PendingRegistrationRequestIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::PendingRegistrationRequestIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::PendingRegistrationRequest>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::PendingRegistrationRequestIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::PendingRegistrationRequestIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<std::unique_ptr<WebKit::PendingRegistrationRequest>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::PendingRegistrationRequestIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand(uint64_t a1)
{
  if (qword_1ED642778 && (v2 = *(qword_1ED642778 - 4)) != 0)
  {
    v3 = v2 << (6 * *(qword_1ED642778 - 12) >= (2 * v2));
  }

  else
  {
    v3 = 8;
  }

  return WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::PendingRegistrationRequestIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::PendingRegistrationRequestIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::PendingRegistrationRequest>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::PendingRegistrationRequestIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::PendingRegistrationRequest>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::PendingRegistrationRequestIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::PendingRegistrationRequestIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::PendingRegistrationRequest>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::PendingRegistrationRequestIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::PendingRegistrationRequestIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<std::unique_ptr<WebKit::PendingRegistrationRequest>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::PendingRegistrationRequestIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash(v3, a1);
}

uint64_t WebKit::WebAuthenticationPanelClient::create@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  NonCompactSlow = bmalloc::api::tzoneAllocateNonCompactSlow();
  result = WebKit::WebAuthenticationPanelClient::WebAuthenticationPanelClient(NonCompactSlow, a1, a2);
  *a3 = NonCompactSlow;
  return result;
}

uint64_t WebKit::WebAuthenticationPanelClient::WebAuthenticationPanelClient(uint64_t a1, void *a2, void *a3)
{
  *(a1 + 8) = 1;
  *(a1 + 16) = 0;
  *a1 = &unk_1F110BE90;
  *(a1 + 24) = 0;
  objc_initWeak((a1 + 24), a2);
  *(a1 + 32) = 0;
  objc_initWeak((a1 + 32), a3);
  *(a1 + 40) = *(a1 + 40) & 0xFE | objc_opt_respondsToSelector() & 1;
  if (objc_opt_respondsToSelector())
  {
    v5 = 2;
  }

  else
  {
    v5 = 0;
  }

  *(a1 + 40) = *(a1 + 40) & 0xFD | v5;
  if (objc_opt_respondsToSelector())
  {
    v6 = 4;
  }

  else
  {
    v6 = 0;
  }

  *(a1 + 40) = *(a1 + 40) & 0xFB | v6;
  if (objc_opt_respondsToSelector())
  {
    v7 = 8;
  }

  else
  {
    v7 = 0;
  }

  *(a1 + 40) = *(a1 + 40) & 0xF7 | v7;
  if (objc_opt_respondsToSelector())
  {
    v8 = 16;
  }

  else
  {
    v8 = 0;
  }

  *(a1 + 40) = *(a1 + 40) & 0xEF | v8;
  if (objc_opt_respondsToSelector())
  {
    v9 = 32;
  }

  else
  {
    v9 = 0;
  }

  *(a1 + 40) = *(a1 + 40) & 0xDF | v9;
  if (objc_opt_respondsToSelector())
  {
    v10 = 64;
  }

  else
  {
    v10 = 0;
  }

  *(a1 + 40) = *(a1 + 40) & 0xBF | v10;
  return a1;
}

void sub_19DE2773C(_Unwind_Exception *a1)
{
  objc_destroyWeak(v3);
  WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::~WeakPtrFactory(v2, v5);
  if (*(v1 + 8) == 1)
  {
    _Unwind_Resume(a1);
  }

  __break(0xC471u);
}

void WebKit::WebAuthenticationPanelClient::updatePanel(uint64_t a1, int a2)
{
  if (*(a1 + 40))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    if (WeakRetained)
    {
      v4 = objc_loadWeakRetained((a1 + 24));
      if ((a2 - 1) < 0xB)
      {
        v5 = (a2 - 1) + 1;
      }

      else
      {
        v5 = 0;
      }

      [WeakRetained panel:v4 updateWebAuthenticationPanel:v5];
      if (v4)
      {
      }
    }
  }
}

void sub_19DE27834(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  if (v10)
  {
  }

  _Unwind_Resume(a1);
}

void WebKit::WebAuthenticationPanelClient::dismissPanel(uint64_t a1, unsigned int a2)
{
  if ((*(a1 + 40) & 2) != 0)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    if (WeakRetained)
    {
      v4 = objc_loadWeakRetained((a1 + 24));
      [WeakRetained panel:v4 dismissWebAuthenticationPanelWithResult:a2];
      if (v4)
      {
      }
    }
  }
}

void sub_19DE278E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  if (v10)
  {
  }

  _Unwind_Resume(a1);
}

void WebKit::WebAuthenticationPanelClient::requestPin(uint64_t a1, uint64_t a2, WTF::RefCountedBase *a3)
{
  if ((*(a1 + 40) & 4) == 0)
  {
    v14 = 0;
    WTF::CompletionHandler<void ()(WTF::String const&)>::operator()(a3, &v14);
    goto LABEL_10;
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (!WeakRetained)
  {
    v14 = 0;
    WTF::CompletionHandler<void ()(WTF::String const&)>::operator()(a3, &v14);
LABEL_10:
    v12 = v14;
    v14 = 0;
    if (v12)
    {
      if (atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v12, v4);
      }
    }

    return;
  }

  v13 = WeakRetained;
  WebKit::CompletionHandlerCallChecker::create(WeakRetained, sel_panel_requestPINWithRemainingRetries_completionHandler_, &v14);
  v8 = objc_loadWeakRetained((a1 + 24));
  v9 = *a3;
  *a3 = 0;
  v10 = v14;
  v11 = malloc_type_malloc(0x30uLL, 0x10E0040FAC56454uLL);
  *v11 = MEMORY[0x1E69E9818];
  v11[1] = 50331650;
  v11[2] = WTF::BlockPtr<void ()(NSString *)>::fromCallable<WebKit::WebAuthenticationPanelClient::requestPin(unsigned long long,WTF::CompletionHandler<void ()(WTF::String const&)> &&)::$_0>(WebKit::WebAuthenticationPanelClient::requestPin(unsigned long long,WTF::CompletionHandler<void ()(WTF::String const&)> &&)::$_0)::{lambda(void *,NSString *)#1}::__invoke;
  v11[3] = &WTF::BlockPtr<void ()(NSString *)>::fromCallable<WebKit::WebAuthenticationPanelClient::requestPin(unsigned long long,WTF::CompletionHandler<void ()(WTF::String const&)> &&)::$_0>(WebKit::WebAuthenticationPanelClient::requestPin(unsigned long long,WTF::CompletionHandler<void ()(WTF::String const&)> &&)::$_0)::descriptor;
  v11[4] = v9;
  v11[5] = v10;
  [(WebKit::CompletionHandlerCallChecker *)v13 panel:v8 requestPINWithRemainingRetries:a2 completionHandler:v11];
  _Block_release(v11);
  if (v8)
  {
  }
}

void sub_19DE27A7C(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, id a9, WTF::StringImpl *a10)
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

void WebKit::WebAuthenticationPanelClient::requestNewPin(uint64_t a1, uint64_t a2, WTF::RefCountedBase *a3)
{
  if ((*(a1 + 40) & 8) == 0)
  {
    v14 = 0;
    WTF::CompletionHandler<void ()(WTF::String const&)>::operator()(a3, &v14);
    goto LABEL_10;
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (!WeakRetained)
  {
    v14 = 0;
    WTF::CompletionHandler<void ()(WTF::String const&)>::operator()(a3, &v14);
LABEL_10:
    v12 = v14;
    v14 = 0;
    if (v12)
    {
      if (atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v12, v4);
      }
    }

    return;
  }

  v13 = WeakRetained;
  WebKit::CompletionHandlerCallChecker::create(WeakRetained, sel_panel_requestNewPINWithMinLength_completionHandler_, &v14);
  v8 = objc_loadWeakRetained((a1 + 24));
  v9 = *a3;
  *a3 = 0;
  v10 = v14;
  v11 = malloc_type_malloc(0x30uLL, 0x10E0040FAC56454uLL);
  *v11 = MEMORY[0x1E69E9818];
  v11[1] = 50331650;
  v11[2] = WTF::BlockPtr<void ()(NSString *)>::fromCallable<WebKit::WebAuthenticationPanelClient::requestNewPin(unsigned long long,WTF::CompletionHandler<void ()(WTF::String const&)> &&)::$_0>(WebKit::WebAuthenticationPanelClient::requestNewPin(unsigned long long,WTF::CompletionHandler<void ()(WTF::String const&)> &&)::$_0)::{lambda(void *,NSString *)#1}::__invoke;
  v11[3] = &WTF::BlockPtr<void ()(NSString *)>::fromCallable<WebKit::WebAuthenticationPanelClient::requestNewPin(unsigned long long,WTF::CompletionHandler<void ()(WTF::String const&)> &&)::$_0>(WebKit::WebAuthenticationPanelClient::requestNewPin(unsigned long long,WTF::CompletionHandler<void ()(WTF::String const&)> &&)::$_0)::descriptor;
  v11[4] = v9;
  v11[5] = v10;
  [(WebKit::CompletionHandlerCallChecker *)v13 panel:v8 requestNewPINWithMinLength:a2 completionHandler:v11];
  _Block_release(v11);
  if (v8)
  {
  }
}

void sub_19DE27CAC(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, id a9, WTF::StringImpl *a10)
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

void WebKit::WebAuthenticationPanelClient::selectAssertionResponse(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t *a4)
{
  if ((*(a1 + 40) & 0x10) != 0)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    if (WeakRetained)
    {
      v9 = WeakRetained;
      v27 = 0;
      v28 = 0;
      v10 = *(a2 + 12);
      if (v10)
      {
        if (v10 >> 29)
        {
          __break(0xC471u);
          goto LABEL_22;
        }

        v11 = WTF::fastMalloc((8 * v10));
        LODWORD(v28) = v10;
        v27 = v11;
        if (*(a2 + 12))
        {
          v12 = 0;
          do
          {
            v13 = v12;
            v14 = *(*a2 + 8 * v12);
            ++*(v14 + 8);
            v15 = API::Object::newObject(0x18uLL, 129);
            v16 = API::Object::Object(v15);
            *v16 = &unk_1F111BB68;
            *(v16 + 2) = v14;
            v12 = v13 + 1;
            *(v11 + 8 * v13) = v16;
          }

          while (v13 + 1 < *(a2 + 12));
          HIDWORD(v28) = v13 + 1;
        }
      }

      WebKit::CompletionHandlerCallChecker::create(v9, sel_panel_selectAssertionResponse_source_completionHandler_, &v26);
      v17 = objc_loadWeakRetained((a1 + 24));
      API::Array::create(&v27, &v25);
      v18 = v25;
      v19 = *(v25 + 1);
      if (!v19)
      {
LABEL_12:
        v21 = *a4;
        *a4 = 0;
        v22 = v26;
        v26 = 0;
        v23 = malloc_type_malloc(0x30uLL, 0x10E0040FAC56454uLL);
        *v23 = MEMORY[0x1E69E9818];
        v23[1] = 50331650;
        v23[2] = WTF::BlockPtr<void ()(_WKWebAuthenticationAssertionResponse *)>::fromCallable<WebKit::WebAuthenticationPanelClient::selectAssertionResponse(WTF::Vector<WTF::Ref<WebCore::AuthenticatorAssertionResponse,WTF::RawPtrTraits<WebCore::AuthenticatorAssertionResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorAssertionResponse>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WebKit::WebAuthenticationSource,WTF::CompletionHandler<void ()(WebCore::AuthenticatorAssertionResponse*)> &&)::$_1>(WebKit::WebAuthenticationPanelClient::selectAssertionResponse(WTF::Vector<WTF::Ref<WebCore::AuthenticatorAssertionResponse,WTF::RawPtrTraits<WebCore::AuthenticatorAssertionResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorAssertionResponse>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WebKit::WebAuthenticationSource,WTF::CompletionHandler<void ()(WebCore::AuthenticatorAssertionResponse*)> &&)::$_1)::{lambda(void *,_WKWebAuthenticationAssertionResponse *)#1}::__invoke;
        v23[3] = &WTF::BlockPtr<void ()(_WKWebAuthenticationAssertionResponse *)>::fromCallable<WebKit::WebAuthenticationPanelClient::selectAssertionResponse(WTF::Vector<WTF::Ref<WebCore::AuthenticatorAssertionResponse,WTF::RawPtrTraits<WebCore::AuthenticatorAssertionResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorAssertionResponse>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WebKit::WebAuthenticationSource,WTF::CompletionHandler<void ()(WebCore::AuthenticatorAssertionResponse*)> &&)::$_1>(WebKit::WebAuthenticationPanelClient::selectAssertionResponse(WTF::Vector<WTF::Ref<WebCore::AuthenticatorAssertionResponse,WTF::RawPtrTraits<WebCore::AuthenticatorAssertionResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorAssertionResponse>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WebKit::WebAuthenticationSource,WTF::CompletionHandler<void ()(WebCore::AuthenticatorAssertionResponse*)> &&)::$_1)::descriptor;
        v23[4] = v21;
        v23[5] = v22;
        [(WebKit::CompletionHandlerCallChecker *)v9 panel:v17 selectAssertionResponse:v19 source:a3 completionHandler:v23];
        _Block_release(v23);
        if (v19)
        {
        }

        CFRelease(*(v18 + 1));
        if (v17)
        {
        }

        WTF::Vector<WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v27, v24);

        return;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v20 = v19;
        goto LABEL_12;
      }

      __break(0xC471u);
LABEL_22:
      JUMPOUT(0x19DE27FBCLL);
    }
  }

  WTF::CompletionHandler<void ()(WebCore::AuthenticatorAssertionResponse *)>::operator()(a4);
}

void sub_19DE27FC8(_Unwind_Exception *a1, void *a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  WTF::Vector<WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(va, a2);

  _Unwind_Resume(a1);
}

void WebKit::WebAuthenticationPanelClient::decidePolicyForLocalAuthenticator(uint64_t a1, uint64_t *a2)
{
  if ((*(a1 + 40) & 0x20) != 0 && (v4 = objc_loadWeakRetained((a1 + 32))) != 0)
  {
    v9 = v4;
    WebKit::CompletionHandlerCallChecker::create(v4, sel_panel_decidePolicyForLocalAuthenticatorWithCompletionHandler_, &v10);
    WeakRetained = objc_loadWeakRetained((a1 + 24));
    v6 = *a2;
    *a2 = 0;
    v7 = v10;
    v8 = malloc_type_malloc(0x30uLL, 0x10E0040FAC56454uLL);
    *v8 = MEMORY[0x1E69E9818];
    v8[1] = 50331650;
    v8[2] = WTF::BlockPtr<void ()(_WKLocalAuthenticatorPolicy)>::fromCallable<WebKit::WebAuthenticationPanelClient::decidePolicyForLocalAuthenticator(WTF::CompletionHandler<void ()(WebKit::LocalAuthenticatorPolicy)> &&)::$_0>(WebKit::WebAuthenticationPanelClient::decidePolicyForLocalAuthenticator(WTF::CompletionHandler<void ()(WebKit::LocalAuthenticatorPolicy)> &&)::$_0)::{lambda(void *,_WKLocalAuthenticatorPolicy)#1}::__invoke;
    v8[3] = &WTF::BlockPtr<void ()(_WKLocalAuthenticatorPolicy)>::fromCallable<WebKit::WebAuthenticationPanelClient::decidePolicyForLocalAuthenticator(WTF::CompletionHandler<void ()(WebKit::LocalAuthenticatorPolicy)> &&)::$_0>(WebKit::WebAuthenticationPanelClient::decidePolicyForLocalAuthenticator(WTF::CompletionHandler<void ()(WebKit::LocalAuthenticatorPolicy)> &&)::$_0)::descriptor;
    v8[4] = v6;
    v8[5] = v7;
    [(WebKit::CompletionHandlerCallChecker *)v9 panel:WeakRetained decidePolicyForLocalAuthenticatorWithCompletionHandler:v8];
    _Block_release(v8);
    if (WeakRetained)
    {
    }
  }

  else
  {

    WTF::CompletionHandler<void ()(WebKit::LocalAuthenticatorPolicy)>::operator()(a2);
  }
}

void sub_19DE281AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, id a9, uint64_t a10)
{
  v12 = v11;
  _Block_release(v12);
  if (v10)
  {
  }

  _Unwind_Resume(a1);
}

uint64_t WTF::CompletionHandler<void ()(WebKit::LocalAuthenticatorPolicy)>::operator()(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  (*(*v1 + 16))(v1);
  v2 = *(*v1 + 8);

  return v2(v1);
}

void WebKit::WebAuthenticationPanelClient::requestLAContextForUserVerification(uint64_t a1, uint64_t *a2)
{
  if ((*(a1 + 40) & 0x40) != 0 && (v4 = objc_loadWeakRetained((a1 + 32))) != 0)
  {
    v9 = v4;
    WebKit::CompletionHandlerCallChecker::create(v4, sel_panel_requestLAContextForUserVerificationWithCompletionHandler_, &v10);
    WeakRetained = objc_loadWeakRetained((a1 + 24));
    v6 = *a2;
    *a2 = 0;
    v7 = v10;
    v8 = malloc_type_malloc(0x30uLL, 0x10E0040FAC56454uLL);
    *v8 = MEMORY[0x1E69E9818];
    v8[1] = 50331650;
    v8[2] = WTF::BlockPtr<void ()(LAContext *)>::fromCallable<WebKit::WebAuthenticationPanelClient::requestLAContextForUserVerification(WTF::CompletionHandler<void ()(LAContext *)> &&)::$_0>(WebKit::WebAuthenticationPanelClient::requestLAContextForUserVerification(WTF::CompletionHandler<void ()(LAContext *)> &&)::$_0)::{lambda(void *,LAContext *)#1}::__invoke;
    v8[3] = &WTF::BlockPtr<void ()(LAContext *)>::fromCallable<WebKit::WebAuthenticationPanelClient::requestLAContextForUserVerification(WTF::CompletionHandler<void ()(LAContext *)> &&)::$_0>(WebKit::WebAuthenticationPanelClient::requestLAContextForUserVerification(WTF::CompletionHandler<void ()(LAContext *)> &&)::$_0)::descriptor;
    v8[4] = v6;
    v8[5] = v7;
    [(WebKit::CompletionHandlerCallChecker *)v9 panel:WeakRetained requestLAContextForUserVerificationWithCompletionHandler:v8];
    _Block_release(v8);
    if (WeakRetained)
    {
    }
  }

  else
  {

    WTF::CompletionHandler<void ()(LAContext *)>::operator()(a2);
  }
}

void sub_19DE28428(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, id a9, uint64_t a10)
{
  v12 = v11;
  _Block_release(v12);
  if (v10)
  {
  }

  _Unwind_Resume(a1);
}

void sub_19DE28768(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v11, a2);
  }

  if (v10[6] == 1)
  {
    (*(*v10 + 24))(v10);
  }

  else
  {
    --v10[6];
  }

  _Unwind_Resume(exception_object);
}

WebKit::MockCcidService *WebKit::MockCcidService::create@<X0>(WebKit::MockCcidService *this@<X0>, WebKit::AuthenticatorTransportServiceObserver *a2@<X1>, WebKit::MockCcidService **a3@<X8>)
{
  v7 = WebKit::FidoService::operatorNewSlow(0x130);
  result = WebKit::MockCcidService::MockCcidService(v7, this, a2);
  *a3 = v7;
  return result;
}

WebKit::MockCcidService *WebKit::MockCcidService::MockCcidService(WebKit::MockCcidService *this, WebKit::AuthenticatorTransportServiceObserver *a2, const WebCore::MockWebAuthenticationConfiguration *a3)
{
  v5 = WebKit::CcidService::CcidService(this, a2);
  *v5 = &unk_1F110BEE8;
  WebCore::MockWebAuthenticationConfiguration::MockWebAuthenticationConfiguration(v5 + 112, a3);
  return this;
}

void WebKit::MockCcidService::platformStartDiscovery(WebKit::MockCcidService *this)
{
  if (*(this + 296) == 1)
  {
    v2 = [_WKMockTKSmartCard alloc];
    WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(this + 2, this);
    v3 = *(this + 1);
    if (v3)
    {
      atomic_fetch_add(v3, 1u);
    }

    v8 = v3;
    v5 = [(_WKMockTKSmartCard *)v2 initWithService:&v8];
    v6 = v8;
    v8 = 0;
    if (v6 && atomic_fetch_add(v6, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v6);
      WTF::fastFree(v6, v4);
    }

    v8 = v5;
    WebKit::CcidService::onValidCard(this, &v8);
    v7 = v8;
    v8 = 0;
    if (v7)
    {
    }
  }
}

void sub_19DE289BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF *a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

void WebKit::MockLocalConnection::verifyUser(WTF::RunLoop *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  WTF::RunLoop::mainSingleton(a1);
  WebCore::MockWebAuthenticationConfiguration::MockWebAuthenticationConfiguration(v14, a1 + 24);
  v8 = *a6;
  *a6 = 0;
  v15 = v8;
  v9 = WTF::fastMalloc(0xD0);
  *v9 = &unk_1F110C280;
  WebCore::MockWebAuthenticationConfiguration::MockWebAuthenticationConfiguration((v9 + 8), v14);
  v10 = v15;
  v15 = 0;
  *(v9 + 200) = v10;
  v16 = v9;
  WTF::RunLoop::dispatch();
  v12 = v16;
  v16 = 0;
  if (v12)
  {
    (*(*v12 + 8))(v12);
  }

  v13 = v15;
  v15 = 0;
  if (v13)
  {
    (*(*v13 + 8))(v13);
  }

  WebCore::MockWebAuthenticationConfiguration::~MockWebAuthenticationConfiguration(v14, v11);
}

void sub_19DE28B24(_Unwind_Exception *a1, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33)
{
  v35 = *(v33 - 40);
  *(v33 - 40) = 0;
  if (v35)
  {
    (*(*v35 + 8))(v35);
  }

  v36 = a33;
  a33 = 0;
  if (v36)
  {
    (*(*v36 + 8))(v36);
  }

  WebCore::MockWebAuthenticationConfiguration::~MockWebAuthenticationConfiguration(&a9, a2);
  _Unwind_Resume(a1);
}

void WebKit::MockLocalConnection::verifyUser(WTF::RunLoop *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  WTF::RunLoop::mainSingleton(a1);
  WebCore::MockWebAuthenticationConfiguration::MockWebAuthenticationConfiguration(v12, a1 + 24);
  v6 = *a4;
  *a4 = 0;
  v13 = v6;
  v7 = WTF::fastMalloc(0xD0);
  *v7 = &unk_1F110C2A8;
  WebCore::MockWebAuthenticationConfiguration::MockWebAuthenticationConfiguration((v7 + 8), v12);
  v8 = v13;
  v13 = 0;
  *(v7 + 200) = v8;
  v14 = v7;
  WTF::RunLoop::dispatch();
  v10 = v14;
  v14 = 0;
  if (v10)
  {
    (*(*v10 + 8))(v10);
  }

  v11 = v13;
  v13 = 0;
  if (v11)
  {
    (*(*v11 + 8))(v11);
  }

  WebCore::MockWebAuthenticationConfiguration::~MockWebAuthenticationConfiguration(v12, v9);
}

void sub_19DE28CBC(_Unwind_Exception *a1, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33)
{
  v35 = *(v33 - 40);
  *(v33 - 40) = 0;
  if (v35)
  {
    (*(*v35 + 8))(v35);
  }

  v36 = a33;
  a33 = 0;
  if (v36)
  {
    (*(*v36 + 8))(v36);
  }

  WebCore::MockWebAuthenticationConfiguration::~MockWebAuthenticationConfiguration(&a9, a2);
  _Unwind_Resume(a1);
}

void WebKit::MockLocalConnection::createCredentialPrivateKey(WebKit::MockLocalConnection *this@<X0>, atomic_uint **a2@<X3>, NSData *a3@<X4>, SecKeyRef *a4@<X8>)
{
  v41[3] = *MEMORY[0x1E69E9840];
  v10 = *MEMORY[0x1E697AD78];
  v11 = *MEMORY[0x1E697AD30];
  v40[0] = *MEMORY[0x1E697AD68];
  v40[1] = v11;
  v12 = *MEMORY[0x1E697AD38];
  v41[0] = v10;
  v41[1] = v12;
  v40[2] = *MEMORY[0x1E697AD50];
  v41[2] = &unk_1F1184950;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v41 forKeys:v40 count:3];
  error = 0;
  v14 = objc_alloc(MEMORY[0x1E695DEF0]);
  if ((*(this + 72) & 1) == 0)
  {
    __break(1u);
  }

  v15 = v14;
  v16 = *(this + 5);
  if (v16)
  {
    atomic_fetch_add_explicit(v16, 2u, memory_order_relaxed);
    MEMORY[0x19EB00B70](&v36, v16);
    if (atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v16, v17);
    }
  }

  else
  {
    v36 = &stru_1F1147748;
    v18 = &stru_1F1147748;
  }

  v19 = [v15 initWithBase64EncodedString:v36 options:1];
  v20 = SecKeyCreateWithData(v19, v13, &error);
  if (v19)
  {
  }

  v21 = v36;
  v36 = 0;
  if (v21)
  {
  }

  if (error)
  {
    *a4 = 0;
  }

  else
  {
    v22 = *MEMORY[0x1E697AFF8];
    v38[0] = *MEMORY[0x1E697B3D0];
    v38[1] = v22;
    v23 = *MEMORY[0x1E697B020];
    v39[0] = v20;
    v39[1] = v23;
    v38[2] = *MEMORY[0x1E697ADC8];
    v24 = *a2;
    if (v24)
    {
      atomic_fetch_add_explicit(v24, 2u, memory_order_relaxed);
      MEMORY[0x19EB00B70](&v36, v24);
      if (atomic_fetch_add_explicit(v24, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v24, v25);
      }
    }

    else
    {
      v36 = &stru_1F1147748;
      v26 = &stru_1F1147748;
    }

    v27 = *MEMORY[0x1E697AC48];
    v39[2] = v36;
    v39[3] = a3;
    v28 = *MEMORY[0x1E697ABD8];
    v38[3] = v27;
    v38[4] = v28;
    v29 = *MEMORY[0x1E697ABE0];
    v38[5] = *MEMORY[0x1E697B390];
    v39[4] = v29;
    v39[5] = MEMORY[0x1E695E118];
    v30 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v39 forKeys:v38 count:6];
    v31 = v30;
    if (v30)
    {
      v32 = v30;
    }

    v33 = v36;
    v36 = 0;
    if (v33)
    {
    }

    v34 = SecItemAdd(v31, 0);
    if (v34)
    {
      v35 = 0;
    }

    else
    {
      v35 = v20;
    }

    if (!v34)
    {
      v20 = 0;
    }

    *a4 = v35;
    if (v31)
    {
    }
  }

  if (v20)
  {
    CFRelease(v20);
  }
}

void sub_19DE29014(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (v10)
  {
    CFRelease(v10);
  }

  _Unwind_Resume(exception_object);
}

const WTF::StringImpl **WebKit::MockLocalConnection::filterResponses(const WTF::StringImpl **result, unsigned int *a2)
{
  if ((result[9] & 1) == 0)
  {
    __break(1u);
    return result;
  }

  v2 = result;
  v3 = result[8];
  if (v3 && *(v3 + 1))
  {
    v5 = a2[3];
    if (!v5)
    {
LABEL_17:
      v12 = 0;
      goto LABEL_23;
    }

    v6 = *a2;
    v7 = 8 * v5;
    while (1)
    {
      v8 = *(*v6 + 2);
      if (v8)
      {
        *v8 += 2;
      }

      JSC::ArrayBuffer::span(v8);
      WTF::base64EncodeToString();
      if (WTF::equal(v19, v2[8], v9))
      {
        v12 = *v6;
        ++*(*v6 + 2);
        v13 = v19;
        v19 = 0;
        if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v13, v10);
        }

        if (v8)
        {
          WTF::DeferrableRefCounted<JSC::ArrayBuffer>::deref(v8);
        }

LABEL_23:
        result = WTF::Vector<WTF::Ref<WebCore::AuthenticatorAssertionResponse,WTF::RawPtrTraits<WebCore::AuthenticatorAssertionResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorAssertionResponse>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity(a2, 0);
        v19 = v12;
        v14 = a2[3];
        if (v14 == a2[2])
        {
          v15 = WTF::Vector<WTF::Ref<WebCore::AuthenticatorAssertionResponse,WTF::RawPtrTraits<WebCore::AuthenticatorAssertionResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorAssertionResponse>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(a2, v14 + 1, &v19);
          v16 = a2[3];
          v17 = *a2;
          v18 = *v15;
          *v15 = 0;
          v17[v16] = v18;
          result = v19;
          a2[3] = v16 + 1;
          v19 = 0;
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

        else
        {
          *(*a2 + 8 * v14) = v12;
          a2[3] = v14 + 1;
        }

        return result;
      }

      v11 = v19;
      v19 = 0;
      if (v11)
      {
        if (atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          break;
        }
      }

      if (v8)
      {
        goto LABEL_12;
      }

LABEL_13:
      ++v6;
      v7 -= 8;
      if (!v7)
      {
        goto LABEL_17;
      }
    }

    WTF::StringImpl::destroy(v11, v10);
    if (!v8)
    {
      goto LABEL_13;
    }

LABEL_12:
    WTF::DeferrableRefCounted<JSC::ArrayBuffer>::deref(v8);
    goto LABEL_13;
  }

  return result;
}

void sub_19DE29290(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
{
  if (a10)
  {
    if (*(a10 + 2) == 1)
    {
      (*(*a10 + 8))(a10);
    }

    else
    {
      --*(a10 + 2);
    }
  }

  _Unwind_Resume(exception_object);
}

void WebKit::MockLocalConnection::getExistingCredentials(atomic_uint **a1@<X1>, void *a2@<X8>)
{
  v23[7] = *MEMORY[0x1E69E9840];
  v4 = *MEMORY[0x1E697B020];
  v5 = *MEMORY[0x1E697AD30];
  v22[0] = *MEMORY[0x1E697AFF8];
  v22[1] = v5;
  v6 = *MEMORY[0x1E697AD38];
  v23[0] = v4;
  v23[1] = v6;
  v7 = *MEMORY[0x1E697AEB0];
  v23[2] = *MEMORY[0x1E697AEB8];
  v8 = *MEMORY[0x1E697ADC8];
  v22[2] = v7;
  v22[3] = v8;
  v9 = *a1;
  if (*a1)
  {
    atomic_fetch_add_explicit(v9, 2u, memory_order_relaxed);
    MEMORY[0x19EB00B70](&cf, v9);
    if (atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v9, v10);
    }
  }

  else
  {
    cf = &stru_1F1147748;
    v11 = &stru_1F1147748;
  }

  v12 = *MEMORY[0x1E697B260];
  v22[4] = *MEMORY[0x1E697B310];
  v22[5] = v12;
  v22[6] = *MEMORY[0x1E697B390];
  v23[3] = cf;
  v23[4] = MEMORY[0x1E695E118];
  v23[5] = *MEMORY[0x1E697B268];
  v23[6] = MEMORY[0x1E695E118];
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:v22 count:{7, cf}];
  v14 = v13;
  if (v13)
  {
    v15 = v13;
  }

  v16 = cf;
  cf = 0;
  if (v16)
  {
  }

  cf = 0;
  v17 = SecItemCopyMatching(v14, &cf);
  if (v17 != -25300 && v17)
  {
    *a2 = 0;
    if (!v14)
    {
      return;
    }

    goto LABEL_16;
  }

  v18 = WTF::checked_cf_cast<__CFArray const*>(cf);
  v19 = [v18 sortedArrayUsingComparator:&__block_literal_global_24];
  *a2 = v19;
  if (v19)
  {
    v20 = v19;
  }

  if (v18)
  {
  }

  if (v14)
  {
LABEL_16:
  }
}

void sub_19DE29540(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  if (v9)
  {
  }

  _Unwind_Resume(exception_object);
}

uint64_t ___ZN6WebKit19MockLocalConnection22getExistingCredentialsERKN3WTF6StringE_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = *MEMORY[0x1E697ADD0];
  v5 = [a3 objectForKeyedSubscript:*MEMORY[0x1E697ADD0]];
  v6 = [a2 objectForKeyedSubscript:v4];

  return [v5 compare:v6];
}

WebKit::MockLocalService *WebKit::MockLocalService::create@<X0>(WebKit::MockLocalService *this@<X0>, WebKit::AuthenticatorTransportServiceObserver *a2@<X1>, WebKit::MockLocalService **a3@<X8>)
{
  v7 = WebKit::LocalService::operatorNewSlow(0xE0);
  result = WebKit::MockLocalService::MockLocalService(v7, this, a2);
  *a3 = v7;
  return result;
}

WebKit::MockLocalService *WebKit::MockLocalService::MockLocalService(WebKit::MockLocalService *this, WebKit::AuthenticatorTransportServiceObserver *a2, const WebCore::MockWebAuthenticationConfiguration *a3)
{
  *this = &unk_1F10E8570;
  *(this + 1) = 0;
  WTF::WeakPtrFactory<WebKit::AuthenticatorObserver,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(a2 + 1, a2);
  v6 = *(a2 + 1);
  atomic_fetch_add(v6, 1u);
  *(this + 2) = v6;
  *(this + 6) = 1;
  *this = &unk_1F110BFA0;
  v7 = WebCore::MockWebAuthenticationConfiguration::MockWebAuthenticationConfiguration(this + 32, a3);
  v8 = WebKit::getASCWebKitSPISupportClass[0](v7);
  ClassMethod = class_getClassMethod(v8, sel_shouldUseAlternateCredentialStore);
  method_setImplementation(ClassMethod, ACSWebKitSPIMockSupportMethod);
  return this;
}

void sub_19DE29728(_Unwind_Exception *a1)
{
  if (*(v1 + 6) == 1)
  {
    WebKit::AuthenticatorTransportService::~AuthenticatorTransportService(v1);
    _Unwind_Resume(a1);
  }

  __break(0xC471u);
}

uint64_t WebKit::MockLocalService::createLocalConnection@<X0>(WebKit::MockLocalService *this@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  if (WebKit::MockLocalConnection::s_heapRef)
  {
    NonCompact = bmalloc::api::tzoneAllocateNonCompact(WebKit::MockLocalConnection::s_heapRef, a2);
  }

  else
  {
    NonCompact = WebKit::MockLocalConnection::operatorNewSlow(0);
  }

  v6 = NonCompact;
  *(NonCompact + 8) = 1;
  *(NonCompact + 16) = 0;
  *NonCompact = &unk_1F110BF38;
  result = WebCore::MockWebAuthenticationConfiguration::MockWebAuthenticationConfiguration(NonCompact + 24, this + 32);
  *a3 = v6;
  return result;
}

void sub_19DE29804(_Unwind_Exception *a1)
{
  WebKit::LocalConnection::~LocalConnection(v1);
  bmalloc::api::tzoneFree(v3, v4);
  _Unwind_Resume(a1);
}

void sub_19DE29988(_Unwind_Exception *exception_object)
{
  if (v1)
  {
  }

  _Unwind_Resume(exception_object);
}

WebKit::MockNfcService *WebKit::MockNfcService::create@<X0>(WebKit::MockNfcService *this@<X0>, WebKit::AuthenticatorTransportServiceObserver *a2@<X1>, WebKit::MockNfcService **a3@<X8>)
{
  v7 = WebKit::FidoService::operatorNewSlow(0x120);
  result = WebKit::MockNfcService::MockNfcService(v7, this, a2);
  *a3 = v7;
  return result;
}

WebKit::MockNfcService *WebKit::MockNfcService::MockNfcService(WebKit::MockNfcService *this, WebKit::AuthenticatorTransportServiceObserver *a2, const WebCore::MockWebAuthenticationConfiguration *a3)
{
  v5 = WebKit::NfcService::NfcService(this, a2);
  *v5 = &unk_1F110BFF8;
  WebCore::MockWebAuthenticationConfiguration::MockWebAuthenticationConfiguration(v5 + 96, a3);
  return this;
}

void WebKit::MockNfcService::platformStartDiscovery(WebKit::MockNfcService *this)
{
  if (*(this + 256) == 1)
  {
    v2 = WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(this + 2, this);
    v4 = *(this + 1);
    v5 = 1;
    atomic_fetch_add(v4, 1u);
    if ((byte_1ED64278C & 1) == 0)
    {
      goto LABEL_22;
    }

    v2 = qword_1ED6427D0;
    qword_1ED6427D0 = v4;
    if (v2 && atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v2);
      v2 = WTF::fastFree(v2, v3);
    }

    while (1)
    {
      v6 = WebKit::getNFReaderSessionClass[0](v2);
      InstanceMethod = class_getInstanceMethod(v6, sel_setDelegate_);
      v9 = WebKit::getNFReaderSessionClass[0](v8);
      v2 = class_getInstanceMethod(v9, sel_connectTag_);
      v4 = *(this + 256);
      if (v4)
      {
        break;
      }

      __break(1u);
LABEL_22:
      byte_1ED64278C = v5;
      qword_1ED6427D0 = v4;
    }

    if (*(this + 224) == 3)
    {
    }

    else
    {
    }

    v11 = method_setImplementation(v2, v10);
    v12 = WebKit::getNFReaderSessionClass[0](v11);
    v13 = class_getInstanceMethod(v12, sel_transceive_);
    v15 = WebKit::getNFReaderSessionClass[0](v14);
    v16 = class_getInstanceMethod(v15, sel_stopPolling);
    v18 = WebKit::getNFReaderSessionClass[0](v17);
    v19 = class_getInstanceMethod(v18, sel_startPollingWithError_);
    v23 = [objc_alloc(WebKit::getNFReaderSessionClass[0](v20)) initWithUIType:0];
    v24 = v23;
    if (v23)
    {
      v21 = v23;
    }

    WebKit::NfcConnection::create(&v24, this, &v25);
    v22 = *(this + 5);
    *(this + 5) = v25;
    if (v22)
    {
      WTF::RefCounted<WebKit::NfcConnection>::deref((v22 + 8));
    }

    if (v24)
    {
    }

    if (v23)
    {
    }
  }
}

id WebKit::anonymous namespace::NFReaderSessionTransceive(WebKit::_anonymous_namespace_ *this, objc_object *a2, objc_selector *a3, NSData *a4)
{
  if ((byte_1ED64278C & 1) == 0)
  {
    goto LABEL_28;
  }

  if (!qword_1ED6427D0)
  {
    return 0;
  }

  v4 = *(qword_1ED6427D0 + 8);
  if (!v4)
  {
    return 0;
  }

  ++*(v4 + 24);
  if ((*(v4 + 256) & 1) == 0)
  {
    goto LABEL_27;
  }

  if (!*(v4 + 244))
  {
    v9 = 0;
LABEL_23:
    if (*(v4 + 24) == 1)
    {
      (*(*v4 + 24))(v4, a2, a3, a4);
    }

    else
    {
      --*(v4 + 24);
    }

    return v9;
  }

  result = objc_alloc(MEMORY[0x1E695DEF0]);
  if ((*(v4 + 256) & 1) == 0)
  {
LABEL_27:
    __break(1u);
LABEL_28:
    v9 = 0;
    qword_1ED6427D0 = 0;
    byte_1ED64278C = 1;
    return v9;
  }

  if (*(v4 + 244))
  {
    v6 = result;
    v7 = **(v4 + 232);
    if (v7)
    {
      atomic_fetch_add_explicit(v7, 2u, memory_order_relaxed);
      MEMORY[0x19EB00B70](&v16, v7);
      if (atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v7, v8);
      }
    }

    else
    {
      v16 = &stru_1F1147748;
      v10 = &stru_1F1147748;
    }

    v9 = [v6 initWithBase64EncodedString:v16 options:1];
    v12 = v16;
    v16 = 0;
    if (v12)
    {
    }

    if ((*(v4 + 256) & 1) != 0 && *(v4 + 244))
    {
      v13 = *(v4 + 232);
      v14 = *v13;
      *v13 = 0;
      if (v14 && atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v14, v11);
      }

      memmove(v13, v13 + 1, *(v4 + 232) + 8 * *(v4 + 244) - (v13 + 1));
      --*(v4 + 244);
      if (v9)
      {
        v15 = v9;
      }

      goto LABEL_23;
    }

    goto LABEL_27;
  }

  __break(0xC471u);
  return result;
}

void sub_19DE29F6C(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v11, a2);
  }

  if (v10[6] == 1)
  {
    (*(*v10 + 24))(v10);
  }

  else
  {
    --v10[6];
  }

  _Unwind_Resume(exception_object);
}

uint64_t WebKit::anonymous namespace::NFReaderSessionStopPolling(WebKit::_anonymous_namespace_ *this, objc_object *a2, objc_selector *a3)
{
  if ((byte_1ED64278C & 1) == 0)
  {
    goto LABEL_11;
  }

  if (!qword_1ED6427D0)
  {
    return 0;
  }

  result = *(qword_1ED6427D0 + 8);
  if (result)
  {
    v4 = *(result + 24);
    *(result + 24) = v4 + 1;
    if (*(result + 256))
    {
      *(result + 249) = 0;
      if (v4)
      {
        *(result + 24) = v4;
        return 1;
      }

      else
      {
        (*(*result + 24))(result, a2, a3);
        return 1;
      }
    }

    __break(1u);
LABEL_11:
    result = 0;
    qword_1ED6427D0 = 0;
    byte_1ED64278C = 1;
  }

  return result;
}

uint64_t WebKit::anonymous namespace::NFReaderSessionStartPollingWithError(WebKit::_anonymous_namespace_ *this, objc_object *a2, objc_selector *a3, NSError **a4)
{
  if (byte_1ED64278C)
  {
    if (qword_1ED6427D0 && (v4 = *(qword_1ED6427D0 + 8)) != 0)
    {
      ++v4[6];
      WTF::RunLoop::mainSingleton(this);
      WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(v4 + 2, v4);
      v5 = *(v4 + 1);
      atomic_fetch_add(v5, 1u);
      v6 = WTF::fastMalloc(0x10);
      *v6 = &unk_1F110C2D0;
      v6[1] = v5;
      v8 = v6;
      WTF::RunLoop::dispatch();
      if (v8)
      {
        (*(*v8 + 8))(v8);
      }

      if (v4[6] == 1)
      {
        (*(*v4 + 24))(v4);
      }

      else
      {
        --v4[6];
      }

      return 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    qword_1ED6427D0 = 0;
    byte_1ED64278C = 1;
  }

  return result;
}

void sub_19DE2A1E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    (*(*a10 + 8))(a10);
  }

  if (v10[6] == 1)
  {
    (*(*v10 + 24))(v10);
  }

  else
  {
    --v10[6];
  }

  _Unwind_Resume(exception_object);
}

void WebKit::ScreenTimeWebsiteDataSupport::getScreenTimeURLs(WTF::UUID *a1, uint64_t *a2)
{
  if (*(a1 + 16) == 1)
  {
    WTF::UUID::createNSUUID(&v8, a1);
    a1 = [v8 UUIDString];
    v3 = a1;
    if (a1)
    {
      a1 = a1;
    }

    v4 = v8;
    v8 = 0;
    if (v4)
    {
    }
  }

  else
  {
    v3 = 0;
  }

  v5 = [objc_alloc((*MEMORY[0x1E69E2270])(a1)) initWithProfileIdentifier:v3];
  v6 = *a2;
  *a2 = 0;
  v7 = malloc_type_malloc(0x28uLL, 0x10E004053C0834CuLL);
  *v7 = MEMORY[0x1E69E9818];
  v7[1] = 50331650;
  v7[2] = WTF::BlockPtr<void ()(NSSet<NSURL *> *,NSError *)>::fromCallable<WebKit::ScreenTimeWebsiteDataSupport::getScreenTimeURLs(std::optional<WTF::UUID>,WTF::CompletionHandler<void ()(WTF::HashSet<WTF::URL,WTF::DefaultHash<WTF::URL>,WTF::HashTraits<WTF::URL>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> &&)> &&)::$_0>(WebKit::ScreenTimeWebsiteDataSupport::getScreenTimeURLs(std::optional<WTF::UUID>,WTF::CompletionHandler<void ()(WTF::HashSet<WTF::URL,WTF::DefaultHash<WTF::URL>,WTF::HashTraits<WTF::URL>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> &&)> &&)::$_0)::{lambda(void *,NSSet<NSURL *> *,NSError *)#1}::__invoke;
  v7[3] = &WTF::BlockPtr<void ()(NSSet<NSURL *> *,NSError *)>::fromCallable<WebKit::ScreenTimeWebsiteDataSupport::getScreenTimeURLs(std::optional<WTF::UUID>,WTF::CompletionHandler<void ()(WTF::HashSet<WTF::URL,WTF::DefaultHash<WTF::URL>,WTF::HashTraits<WTF::URL>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> &&)> &&)::$_0>(WebKit::ScreenTimeWebsiteDataSupport::getScreenTimeURLs(std::optional<WTF::UUID>,WTF::CompletionHandler<void ()(WTF::HashSet<WTF::URL,WTF::DefaultHash<WTF::URL>,WTF::HashTraits<WTF::URL>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> &&)> &&)::$_0)::descriptor;
  v7[4] = v6;
  [v5 fetchAllHistoryWithCompletionHandler:v7];
  _Block_release(v7);
  if (v5)
  {
  }

  if (v3)
  {
  }
}

void sub_19DE2A430()
{
  if (!v0)
  {
    JUMPOUT(0x19DE2A3F0);
  }

  JUMPOUT(0x19DE2A3ECLL);
}

void WebKit::ScreenTimeWebsiteDataSupport::removeScreenTimeData(uint64_t *a1, uint64_t a2)
{
  v2 = a1;
  v30 = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);
  v3 = (a2 + 32);
  if (v4 | v5)
  {
    v28 = *v3;
    v29 = 1;
    WTF::UUID::createNSUUID(&v27, &v28);
    a1 = [v27 UUIDString];
    v6 = a1;
    if (a1)
    {
      a1 = a1;
    }

    v23 = v27;
    v27 = 0;
    if (v23)
    {
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_alloc((*MEMORY[0x1E69E2270])(a1 v3))];
  v8 = [MEMORY[0x1E695DFA8] set];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  v11 = WTF::HashTable<WTF::URL,WTF::URL,WTF::IdentityExtractor,WTF::DefaultHash<WTF::URL>,WTF::HashTraits<WTF::URL>,WTF::HashTraits<WTF::URL>,WTF::FastMalloc>::begin(v2);
  v12 = v11;
  v14 = v13;
  if (*v2)
  {
    v15 = *v2 + 40 * *(*v2 - 4);
  }

  else
  {
    v15 = 0;
  }

  if (v15 != v11)
  {
    do
    {
      WTF::URL::createCFURL(&v28, v12);
      if (v28)
      {
        [v9 addObject:{objc_msgSend(v28, "host")}];
        v16 = v28;
        *&v28 = 0;
        if (v16)
        {
        }
      }

      do
      {
        v12 = (v12 + 40);
        if (v12 == v14)
        {
          break;
        }

        v17 = WTF::HashTraitsEmptyValueChecker<WTF::HashTraits<WTF::URL>,false>::isEmptyValue<WTF::URL>(v12);
        v18 = *v12 == -1 ? 1 : v17;
      }

      while (v18 == 1);
    }

    while (v12 != v15);
  }

  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3321888768;
  v24[2] = ___ZN6WebKit28ScreenTimeWebsiteDataSupport20removeScreenTimeDataERKN3WTF7HashSetINS1_3URLENS1_11DefaultHashIS3_EENS1_10HashTraitsIS3_EENS1_15HashTableTraitsELNS1_17ShouldValidateKeyE1EEERKNS_29WebsiteDataStoreConfigurationE_block_invoke;
  v24[3] = &__block_descriptor_48_e8_32c48_ZTSN3WTF9RetainPtrI12NSMutableSetIP8NSStringEEE40c36_ZTSN3WTF9RetainPtrI12STWebHistoryEE_e27_v24__0__NSSet_8__NSError_16l;
  v25 = v9;
  if (v9)
  {
    v19 = v9;
  }

  v26 = v7;
  if (v7)
  {
    v20 = v7;
  }

  [v7 fetchAllHistoryWithCompletionHandler:v24];
  v21 = v26;
  v26 = 0;
  if (v21)
  {
  }

  v22 = v25;
  v25 = 0;
  if (v22)
  {
  }

  if (v9)
  {
  }

  if (v7)
  {
  }

  if (v6)
  {
  }
}

uint64_t ___ZN6WebKit28ScreenTimeWebsiteDataSupport20removeScreenTimeDataERKN3WTF7HashSetINS1_3URLENS1_11DefaultHashIS3_EENS1_10HashTraitsIS3_EENS1_15HashTableTraitsELNS1_17ShouldValidateKeyE1EEERKNS_29WebsiteDataStoreConfigurationE_block_invoke(uint64_t result, void *a2, uint64_t a3)
{
  v24 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    v3 = result;
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    result = [a2 countByEnumeratingWithState:&v18 objects:v23 count:16];
    if (result)
    {
      v4 = result;
      v5 = *v19;
      do
      {
        v6 = 0;
        do
        {
          if (*v19 != v5)
          {
            objc_enumerationMutation(a2);
          }

          v7 = *(*(&v18 + 1) + 8 * v6);
          v14 = 0u;
          v15 = 0u;
          v16 = 0u;
          v17 = 0u;
          v8 = *(v3 + 32);
          v9 = [v8 countByEnumeratingWithState:&v14 objects:v22 count:16];
          if (v9)
          {
            v10 = v9;
            v11 = *v15;
            do
            {
              for (i = 0; i != v10; ++i)
              {
                if (*v15 != v11)
                {
                  objc_enumerationMutation(v8);
                }

                if ([objc_msgSend(v7 "host")])
                {
                  [*(v3 + 40) deleteHistoryForURL:v7];
                }
              }

              v10 = [v8 countByEnumeratingWithState:&v14 objects:v22 count:16];
            }

            while (v10);
          }

          ++v6;
        }

        while (v6 != v4);
        result = [a2 countByEnumeratingWithState:&v18 objects:v23 count:16];
        v4 = result;
      }

      while (result);
    }
  }

  return result;
}

void *__copy_helper_block_e8_32c48_ZTSN3WTF9RetainPtrI12NSMutableSetIP8NSStringEEE40c36_ZTSN3WTF9RetainPtrI12STWebHistoryEE(void *result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 32);
  result[4] = v4;
  if (v4)
  {
    result = v4;
  }

  v5 = *(a2 + 40);
  v3[5] = v5;
  if (v5)
  {
    return v5;
  }

  return result;
}

void sub_19DE2A8FC(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 32);
  *(v1 + 32) = 0;
  if (v3)
  {
  }

  _Unwind_Resume(exception_object);
}

void __destroy_helper_block_e8_32c48_ZTSN3WTF9RetainPtrI12NSMutableSetIP8NSStringEEE40c36_ZTSN3WTF9RetainPtrI12STWebHistoryEE(uint64_t a1)
{
  v2 = *(a1 + 40);
  *(a1 + 40) = 0;
  if (v2)
  {
  }

  v3 = *(a1 + 32);
  *(a1 + 32) = 0;
  if (v3)
  {
  }
}

void WebKit::ScreenTimeWebsiteDataSupport::removeScreenTimeDataWithInterval(uint64_t a1, double a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v3 = (a1 + 32);
  if (v4 | v5)
  {
    v15 = *v3;
    v16 = 1;
    WTF::UUID::createNSUUID(&v14, &v15);
    v3 = [v14 UUIDString];
    v6 = v3;
    if (v3)
    {
      v3 = v3;
    }

    v13 = v14;
    v14 = 0;
    if (v13)
    {
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_alloc((*MEMORY[0x1E69E2270])(v3)) initWithProfileIdentifier:v6];
  v8 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSince1970:a2];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  v11 = objc_alloc(MEMORY[0x1E696AB80]);
  v12 = [v11 initWithStartDate:v9 endDate:{objc_msgSend(MEMORY[0x1E695DF00], "now")}];
  [v7 deleteHistoryDuringInterval:v12];
  if (v12)
  {
  }

  if (v9)
  {
  }

  if (v7)
  {
  }

  if (v6)
  {
  }
}

uint64_t WebKit::WebsiteDataStore::removeDataStoreWithIdentifierImpl(WebKit::WebsiteDataStore *a1, uint64_t *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = WebKit::WebsiteDataStore::websiteDataStoreIOQueueSingleton(a1);
  v5 = *a2;
  *a2 = 0;
  v16 = v5;
  v17 = *a1;
  WebKit::WebsiteDataStore::defaultWebsiteDataStoreDirectory(a1, v6);
  WTF::String::isolatedCopy();
  v7 = WTF::fastMalloc(0x40);
  *v7 = &unk_1F110C348;
  *(v7 + 16) = v16;
  *(v7 + 32) = v17;
  v8 = v18;
  v15 = v7;
  v16 = 0;
  v18 = 0;
  *(v7 + 48) = v8;
  (*(*v4 + 48))(v4, &v15);
  v10 = v15;
  v15 = 0;
  if (v10)
  {
    (*(*v10 + 8))(v10);
  }

  v11 = v18;
  v18 = 0;
  if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v11, v9);
  }

  v12 = v16;
  v16 = 0;
  if (v12)
  {
    (*(*v12 + 8))(v12);
  }

  result = v14;
  if (v14)
  {
    if (atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(v14, v9);
    }
  }

  return result;
}

void sub_19DE2ACE4(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, WTF::StringImpl *a15)
{
  if (a10)
  {
    (*(*a10 + 8))(a10);
  }

  if (a15 && atomic_fetch_add_explicit(a15, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a15, a2);
  }

  if (a11)
  {
    (*(*a11 + 8))(a11);
  }

  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

WTF::StringImpl *WebKit::WebsiteDataStore::defaultWebsiteDataStoreDirectory(WebKit::WebsiteDataStore *this, const WTF::UUID *a2)
{
  WebKit::defaultWebsiteDataStoreRootDirectory(this);
  WTF::UUID::toString(&v6, this);
  WTF::FileSystemImpl::pathByAppendingComponent();
  v4 = v6;
  v6 = 0;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, v3);
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

  return result;
}

void sub_19DE2AED4(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, WTF::StringImpl *a10)
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

uint64_t WebKit::WebsiteDataStore::removeDataStoreWithIdentifier(uint64_t *a1, uint64_t *a2)
{
  v35 = *MEMORY[0x1E69E9840];
  v33 = *a1;
  v3 = *a2;
  *a2 = 0;
  v34 = v3;
  v4 = qword_1ED641350;
  if (os_log_type_enabled(qword_1ED641350, OS_LOG_TYPE_DEFAULT))
  {
    WTF::UUID::toString(&v30, a1);
    WTF::String::utf8();
    if (v28[0])
    {
      v5 = v28[0] + 16;
    }

    else
    {
      v5 = 0;
    }

    *buf = 136446210;
    *&buf[4] = v5;
    _os_log_impl(&dword_19D52D000, v4, OS_LOG_TYPE_DEFAULT, "WebsiteDataStore::removeDataStoreWithIdentifier: Removal started for identifier %{public}s", buf, 0xCu);
    v7 = v28[0];
    v28[0] = 0;
    if (v7)
    {
      if (*v7 == 1)
      {
        WTF::fastFree(v7, v6);
      }

      else
      {
        --*v7;
      }
    }

    v8 = v30;
    v30 = 0;
    if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v8, v6);
    }
  }

  if (*a1 <= 1)
  {
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    v28[0] = *buf;
    WebKit::WebsiteDataStore::removeDataStoreWithIdentifier(WTF::UUID const&,WTF::CompletionHandler<void ()(WTF::String const&)> &&)::$_0::operator()(&v33, v28);
    v12 = v28[0];
    v28[0] = 0;
    if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v12, v11);
    }

    goto LABEL_38;
  }

  WebKit::WebsiteDataStore::existingDataStoreForIdentifier(a1, v28);
  v10 = v28[0];
  if (v28[0])
  {
    if (WebKit::WebsiteDataStore::hasActivePages(v28[0]) || *(v10 + 54))
    {
      WTF::StringImpl::createWithoutCopyingNonEmpty();
      v30 = *buf;
      WebKit::WebsiteDataStore::removeDataStoreWithIdentifier(WTF::UUID const&,WTF::CompletionHandler<void ()(WTF::String const&)> &&)::$_0::operator()(&v33, &v30);
      v14 = v30;
      v30 = 0;
      if (v14 && atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v14, v13);
      }

      CFRelease(*(v10 + 1));
      goto LABEL_38;
    }

    CFRelease(*(v10 + 1));
  }

  {
    WebKit::NetworkProcessProxy::defaultNetworkProcess(void)::networkProcess = 0;
    goto LABEL_36;
  }

  if (!WebKit::NetworkProcessProxy::defaultNetworkProcess(void)::networkProcess || (v15 = *(WebKit::NetworkProcessProxy::defaultNetworkProcess(void)::networkProcess + 8)) == 0)
  {
LABEL_36:
    v25 = WTF::fastMalloc(0x30);
    *v25 = &unk_1F110C398;
    *(v25 + 16) = v33;
    v26 = v34;
    v34 = 0;
    *(v25 + 32) = v26;
    *buf = v25;
    WebKit::WebsiteDataStore::removeDataStoreWithIdentifierImpl(a1, buf);
    if (*buf)
    {
      (*(**buf + 8))(*buf);
    }

    goto LABEL_38;
  }

  atomic_fetch_add((v15 + 16), 1u);
  *buf = *a1;
  v32 = v33;
  v16 = v34;
  v34 = 0;
  v17 = IPC::Encoder::operator new(0x238, v9);
  *v17 = 607;
  *(v17 + 68) = 0;
  *(v17 + 70) = 0;
  *(v17 + 69) = 0;
  *(v17 + 2) = 0;
  *(v17 + 3) = 0;
  *(v17 + 1) = 0;
  IPC::Encoder::encodeHeader(v17);
  v30 = v17;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v17, a1[1]);
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v17, *a1);
  v18 = WTF::fastMalloc(0x40);
  *v18 = &unk_1F110C3C0;
  *(v18 + 16) = *buf;
  *(v18 + 32) = v32;
  *(v18 + 48) = v16;
  if (WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1)
  {
    result = 141;
    __break(0xC471u);
    return result;
  }

  IdentifierInternal = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
  v28[0] = v18;
  v28[1] = IdentifierInternal;
  v29 = 1;
  WebKit::AuxiliaryProcessProxy::sendMessage(v15, &v30, 0, v28, 1);
  if (v29 == 1)
  {
    v21 = v28[0];
    v28[0] = 0;
    if (v21)
    {
      (*(*v21 + 8))(v21);
    }
  }

  v22 = v30;
  v30 = 0;
  if (v22)
  {
    IPC::Encoder::~Encoder(v22, v20);
    bmalloc::api::tzoneFree(v23, v24);
  }

  WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v15 + 16));
LABEL_38:
  result = v34;
  v34 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

void sub_19DE2B3A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, WTF::StringImpl *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  if (a13)
  {
    (*(*a13 + 8))(a13);
  }

  if (a19)
  {
    (*(*a19 + 8))(a19);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *WebKit::WebsiteDataStore::removeDataStoreWithIdentifier(WTF::UUID const&,WTF::CompletionHandler<void ()(WTF::String const&)> &&)::$_0::operator()(uint64_t a1, uint64_t a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = qword_1ED641350;
  if (os_log_type_enabled(qword_1ED641350, OS_LOG_TYPE_DEFAULT))
  {
    WTF::UUID::toString(&v13, a1);
    WTF::String::utf8();
    if (v14)
    {
      v5 = v14 + 16;
    }

    else
    {
      v5 = 0;
    }

    if (*a2 && *(*a2 + 4))
    {
      WTF::String::utf8();
      v6 = 0;
      if (v12)
      {
        v7 = v12 + 16;
      }

      else
      {
        v7 = 0;
      }
    }

    else
    {
      v7 = "null";
      v6 = 1;
    }

    *buf = 136446466;
    v16 = v5;
    v17 = 2082;
    v18 = v7;
    _os_log_impl(&dword_19D52D000, v4, OS_LOG_TYPE_DEFAULT, "WebsiteDataStore::removeDataStoreWithIdentifier: Removal completed for identifier %{public}s (error '%{public}s')", buf, 0x16u);
    if ((v6 & 1) == 0 && v12)
    {
      if (*v12 == 1)
      {
        WTF::fastFree(v12, v8);
      }

      else
      {
        --*v12;
      }
    }

    v9 = v14;
    v14 = 0;
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

    v10 = v13;
    v13 = 0;
    if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v10, v8);
    }
  }

  return WTF::CompletionHandler<void ()(WTF::String const&)>::operator()((a1 + 16), a2);
}

void sub_19DE2B750(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11, WTF *a12)
{
  if (a12)
  {
    if (*a12 == 1)
    {
      WTF::fastFree(a12, a2);
    }

    else
    {
      --*a12;
    }
  }

  if (a11)
  {
    if (atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a11, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t __copy_helper_block_e8_32c17_ZTSN3WTF6StringE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 32);
  if (v2)
  {
    atomic_fetch_add_explicit(v2, 2u, memory_order_relaxed);
  }

  *(result + 32) = v2;
  return result;
}

WTF::StringImpl *__destroy_helper_block_e8_32c17_ZTSN3WTF6StringE(uint64_t a1, WTF::StringImpl *a2)
{
  result = *(a1 + 32);
  *(a1 + 32) = 0;
  if (result)
  {
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, a2);
    }
  }

  return result;
}

void WebKit::applicationOrProcessIdentifier(WebKit *this)
{
  v2 = [objc_msgSend(MEMORY[0x1E696AAE8] "mainBundle")];
  *this = v2;
  v8 = v2;
  if (v2)
  {
    v3 = v2;
  }

  v6 = [objc_msgSend(MEMORY[0x1E696AE30] "processInfo")];
  if (v6)
  {
    v4 = v6;
  }

  if ([v8 isEqualToString:{@"com.apple.Safari", v6}] && objc_msgSend(v7, "isEqualToString:", @"SafariForWebKitDevelopment"))
  {
    v5 = v8;
    *this = v7;
    if (!v8)
    {
      return;
    }
  }

  else
  {
    if (!v8)
    {
      *this = v7;
      return;
    }

    v5 = v7;
    if (!v7)
    {
      return;
    }
  }
}

void sub_19DE2B8CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, id a9, id a10)
{
  if (a9)
  {
  }

  *v10 = 0;
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

WTF *WebKit::WebsiteDataStore::addTestDomains(WTF *this)
{
  {
    if (WebKit::appBoundDomains(void)::appBoundDomains && *(WebKit::appBoundDomains(void)::appBoundDomains - 12))
    {
      return this;
    }
  }

  else
  {
    WebKit::appBoundDomains(void)::appBoundDomains = 0;
  }

  WTF::applicationBundleIdentifier(&v8, this);
  v2 = WebKit::appBoundDomainsForTesting(&v8, v1);
  if (v3)
  {
    v5 = v2;
    v6 = 8 * v3;
    do
    {
      {
        WebKit::appBoundDomains(void)::appBoundDomains = 0;
      }

      WTF::HashTable<WebCore::RegistrableDomain,WebCore::RegistrableDomain,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::add<(WTF::ShouldValidateKey)1>(&WebKit::appBoundDomains(void)::appBoundDomains, v5++, v4, &v7);
      v6 -= 8;
    }

    while (v6);
  }

  this = v8;
  v8 = 0;
  if (this)
  {
    if (atomic_fetch_add_explicit(this, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(this, v3);
    }
  }

  return this;
}

void sub_19DE2B9EC(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, WTF::StringImpl *a12)
{
  if (a12)
  {
    if (atomic_fetch_add_explicit(a12, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a12, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t WebKit::WebsiteDataStore::ensureAppBoundDomains(uint64_t a1, WebKit *this)
{
  v4 = atomic_load(WebKit::hasInitializedAppBoundDomains);
  if (v4)
  {
    if (*(*(a1 + 224) + 488) == 1)
    {
      WebKit::WebsiteDataStore::addTestDomains(a1);
    }

    {
      WebKit::appBoundDomains(void)::appBoundDomains = 0;
    }

    if ((byte_1ED64278E & 1) == 0)
    {
      qword_1ED6427E8 = 0;
      byte_1ED64278E = 1;
    }

    return WTF::CompletionHandler<void ()(WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> const&,WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> const&)>::operator()(this);
  }

  else
  {
    v6 = WebKit::appBoundDomainQueue(a1);
    CFRetain(*(a1 + 8));
    v7 = *this;
    *this = 0;
    v8 = WTF::fastMalloc(0x20);
    *v8 = &unk_1F110C460;
    v8[1] = a1;
    v8[2] = a1;
    v8[3] = v7;
    v9 = v8;
    (*(*v6 + 48))(v6, &v9);
    result = v9;
    v9 = 0;
    if (result)
    {
      return (*(*result + 8))(result);
    }
  }

  return result;
}

void sub_19DE2BB84(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    (*(*a10 + 8))(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t WTF::CompletionHandler<void ()(WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> const&,WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> const&)>::operator()(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  (*(*v1 + 16))(v1, &WebKit::appBoundDomains(void)::appBoundDomains, &qword_1ED6427E8);
  v2 = *(*v1 + 8);

  return v2(v1);
}

uint64_t WebKit::WebsiteDataStore::beginAppBoundDomainCheck(WebKit::WebsiteDataStore *this, const WTF::String *a2, const WTF::String *a3, CFTypeRef *a4)
{
  CFRetain(a4[1]);
  v8 = WTF::fastMalloc(0x20);
  *v8 = &unk_1F110C4B0;
  v8[1] = a2;
  v8[2] = a3;
  v8[3] = a4;
  v11 = v8;
  WebKit::WebsiteDataStore::ensureAppBoundDomains(this, &v11);
  result = v11;
  if (v11)
  {
    v10 = *(*v11 + 8);

    return v10();
  }

  return result;
}

void sub_19DE2BD88(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    (*(*a10 + 8))(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t WebKit::WebsiteDataStore::getAppBoundDomains(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *a2 = 0;
  v4 = WTF::fastMalloc(0x10);
  *v4 = &unk_1F110C4D8;
  v4[1] = v3;
  v7 = v4;
  WebKit::WebsiteDataStore::ensureAppBoundDomains(a1, &v7);
  result = v7;
  if (v7)
  {
    v6 = *(*v7 + 8);

    return v6();
  }

  return result;
}

void sub_19DE2BE7C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    (*(*a10 + 8))(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t WebKit::WebsiteDataStore::getAppBoundSchemes(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *a2 = 0;
  v4 = WTF::fastMalloc(0x10);
  *v4 = &unk_1F110C500;
  v4[1] = v3;
  v7 = v4;
  WebKit::WebsiteDataStore::ensureAppBoundDomains(a1, &v7);
  result = v7;
  if (v7)
  {
    v6 = *(*v7 + 8);

    return v6();
  }

  return result;
}

void sub_19DE2BF94(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    (*(*a10 + 8))(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t WebKit::WebsiteDataStore::setAppBoundDomainsForTesting(uint64_t *a1, uint64_t *a2, const WTF::StringImpl *a3)
{
  v5 = WTF::HashTable<WebCore::RegistrableDomain,WebCore::RegistrableDomain,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::begin(a1, a2, a3);
  v7 = v5;
  v14[0] = v5;
  v14[1] = v6;
  if (*a1)
  {
    v8 = *a1 + 8 * *(*a1 - 4);
  }

  else
  {
    v8 = 0;
  }

  if (v8 == v5)
  {
LABEL_8:
    {
      WebKit::appBoundDomains(void)::appBoundDomains = 0;
    }

    v11 = *a1;
    *a1 = 0;
    v12 = WebKit::appBoundDomains(void)::appBoundDomains;
    WebKit::appBoundDomains(void)::appBoundDomains = v11;
    if (v12)
    {
      WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v12, v6);
    }

    atomic_store(1u, WebKit::hasInitializedAppBoundDomains);
    return WebKit::WebsiteDataStore::forwardAppBoundDomainsToITPIfInitialized(a2);
  }

  else
  {
    while ((MEMORY[0x19EB01EF0](*v7, "localhost", 9) & 1) != 0 || (MEMORY[0x19EB01EF0](*v7, "127.0.0.1", 9) & 1) != 0)
    {
      v14[0] += 8;
      WTF::HashTableConstIterator<WTF::HashTable<WebCore::RegistrableDomain,WebCore::RegistrableDomain,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>,WebCore::RegistrableDomain,WebCore::RegistrableDomain,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>>::skipEmptyBuckets(v14, v9, v10);
      v7 = v14[0];
      if (v14[0] == v8)
      {
        goto LABEL_8;
      }
    }

    result = 783;
    __break(0xC471u);
  }

  return result;
}

uint64_t WTF::CompletionHandler<void ()(WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> const&)>::operator()(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  (*(*v1 + 16))(v1);
  v2 = *(*v1 + 8);

  return v2(v1);
}

uint64_t WebKit::WebsiteDataStore::setManagedDomainsForTesting(uint64_t *a1, uint64_t *a2, const WTF::StringImpl *a3)
{
  v5 = WTF::HashTable<WebCore::RegistrableDomain,WebCore::RegistrableDomain,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::begin(a1, a2, a3);
  v7 = v5;
  v14[0] = v5;
  v14[1] = v6;
  if (*a1)
  {
    v8 = *a1 + 8 * *(*a1 - 4);
  }

  else
  {
    v8 = 0;
  }

  if (v8 == v5)
  {
LABEL_8:
    {
      WebKit::managedDomains(void)::managedDomains = 0;
    }

    v11 = *a1;
    *a1 = 0;
    v12 = WebKit::managedDomains(void)::managedDomains;
    WebKit::managedDomains(void)::managedDomains = v11;
    if (v12)
    {
      WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v12, v6);
    }

    atomic_store(1u, WebKit::hasInitializedManagedDomains);
    return WebKit::WebsiteDataStore::forwardManagedDomainsToITPIfInitialized(a2);
  }

  else
  {
    while ((MEMORY[0x19EB01EF0](*v7, "localhost", 9) & 1) != 0 || (MEMORY[0x19EB01EF0](*v7, "127.0.0.1", 9) & 1) != 0)
    {
      v14[0] += 8;
      WTF::HashTableConstIterator<WTF::HashTable<WebCore::RegistrableDomain,WebCore::RegistrableDomain,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>,WebCore::RegistrableDomain,WebCore::RegistrableDomain,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>>::skipEmptyBuckets(v14, v9, v10);
      v7 = v14[0];
      if (v14[0] == v8)
      {
        goto LABEL_8;
      }
    }

    result = 914;
    __break(0xC471u);
  }

  return result;
}

uint64_t WebKit::WebsiteDataStore::networkProcessHasEntitlementForTesting(WebKit::WebsiteDataStore *this, const WTF::String *a2)
{
  v4 = *(WebKit::WebsiteDataStore::networkProcess(this, a2) + 88);
  if (v4)
  {
    v5 = *(v4 + 344);
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
  }

  else
  {
    v7 = "/Library/Caches/com.apple.xbs/Sources/WebKit/Source/WebKit/UIProcess/AuxiliaryProcessProxy.h";
    v8 = "IPC::Connection &WebKit::AuxiliaryProcessProxy::connection() const";
    v5 = 139;
    v3 = 133;
    __break(0xC471u);
  }

  return MEMORY[0x1EEDCADE8](v5, v7, v8, v3);
}

uint64_t WebKit::WebsiteDataStore::setBackupExclusionPeriodForTesting(WebKit::WebsiteDataStore *a1, void *a2, double a3)
{
  v6 = WebKit::WebsiteDataStore::networkProcess(a1, a2);
  v10 = *(a1 + 3);
  v9 = a3;
  v8[0] = &v10;
  v8[1] = &v9;
  return WebKit::AuxiliaryProcessProxy::sendWithAsyncReply<Messages::NetworkProcess::SetBackupExclusionPeriodForTesting,WTF::CompletionHandler<void ()(void)>>(v6, v8, a2, 0, 0, 1);
}

uint64_t WebKit::WebsiteDataStore::saveRecentSearches(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = *(a1 + 304);
  WTF::String::isolatedCopy();
  WTF::map<0ul,WTF::CrashOnOverflow,16ul,WTF::CrossThreadCopierBase<false,false,WTF::Vector<WebCore::RecentSearch,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>::copy(WTF::Vector<WebCore::RecentSearch,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&)::{lambda(0ul &)#1},WTF::Vector<WebCore::RecentSearch,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const>(&v15, a3);
  WebKit::WebsiteDataStore::resolvedDirectories(a1);
  WTF::String::isolatedCopy();
  v6 = WTF::fastMalloc(0x28);
  *v6 = &unk_1F110C5A0;
  v6[1] = v14;
  v7 = v15;
  v15 = 0;
  v6[2] = v7;
  v8 = v16[0];
  v9 = v16[1];
  *v16 = 0u;
  v6[3] = v8;
  v6[4] = v9;
  v17 = v6;
  (*(*v5 + 48))(v5, &v17);
  v11 = v17;
  v17 = 0;
  if (v11)
  {
    (*(*v11 + 8))(v11);
  }

  v12 = v16[1];
  v16[1] = 0;
  if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v12, v10);
  }

  WTF::Vector<WebCore::SpeechRecognitionAlternativeData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v15, v10);
  return 0;
}

void sub_19DE2C574(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, uint64_t a10, uint64_t a11, WTF::StringImpl *a12, uint64_t a13, uint64_t a14)
{
  if (a14)
  {
    (*(*a14 + 8))(a14);
  }

  if (a12 && atomic_fetch_add_explicit(a12, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a12, a2);
  }

  WTF::Vector<WebCore::SpeechRecognitionAlternativeData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v14 | 8, a2);
  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, v16);
    }
  }

  _Unwind_Resume(a1);
}

uint64_t WebKit::WebsiteDataStore::loadRecentSearches(uint64_t a1, uint64_t a2, WTF::StringImpl **a3)
{
  v5 = *(a1 + 304);
  WTF::String::isolatedCopy();
  v6 = *a3;
  *a3 = 0;
  v10[1] = v6;
  WebKit::WebsiteDataStore::resolvedDirectories(a1);
  WTF::String::isolatedCopy();
  v7 = WTF::fastMalloc(0x20);
  *v7 = &unk_1F110C5C8;
  *(v7 + 8) = *v10;
  v12 = v7;
  *(v7 + 24) = v11;
  (*(*v5 + 48))(v5, &v12);
  v8 = v12;
  v12 = 0;
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  return 0;
}

void sub_19DE2C784(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, uint64_t a10, WTF::StringImpl *a11, uint64_t a12)
{
  if (a12)
  {
    (*(*a12 + 8))(a12);
  }

  if (a11 && atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a11, a2);
  }

  if (a10)
  {
    (*(*a10 + 8))(a10);
  }

  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t WebKit::WebsiteDataStore::removeRecentSearches(uint64_t a1, WTF::StringImpl **a2, double a3)
{
  v4 = *(a1 + 304);
  WebKit::WebsiteDataStore::resolvedDirectories(a1);
  WTF::String::isolatedCopy();
  v5 = *a2;
  *a2 = 0;
  v10[1] = v5;
  v6 = WTF::fastMalloc(0x20);
  *v6 = &unk_1F110C618;
  *(v6 + 8) = a3;
  *(v6 + 16) = *v10;
  v11 = v6;
  (*(*v4 + 48))(v4, &v11);
  v7 = v11;
  v11 = 0;
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  return 0;
}

void sub_19DE2C988(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10, uint64_t a11, uint64_t a12)
{
  if (a12)
  {
    (*(*a12 + 8))(a12);
  }

  if (a11)
  {
    (*(*a11 + 8))(a11);
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

void WebKit::WebAuthenticationPanelClient::~WebAuthenticationPanelClient(WebKit::WebAuthenticationPanelClient *this)
{
  objc_destroyWeak(this + 4);
  objc_destroyWeak(this + 3);
  WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::~WeakPtrFactory(this + 2, v2);
  if (*(this + 2) != 1)
  {
    __break(0xC471u);
  }
}

{
  objc_destroyWeak(this + 4);
  objc_destroyWeak(this + 3);
  WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::~WeakPtrFactory(this + 2, v2);
  if (*(this + 2) == 1)
  {

    bmalloc::api::tzoneFree(this, v3);
  }

  else
  {
    __break(0xC471u);
  }
}

void WebKit::MockCcidService::~MockCcidService(WebKit::MockCcidService *this, void *a2)
{
  WebCore::MockWebAuthenticationConfiguration::~MockWebAuthenticationConfiguration((this + 112), a2);

  WebKit::CcidService::~CcidService(this);
}

{
  WebCore::MockWebAuthenticationConfiguration::~MockWebAuthenticationConfiguration((this + 112), a2);
  WebKit::CcidService::~CcidService(this);

  bmalloc::api::tzoneFree(v3, v4);
}

void WebKit::MockLocalConnection::~MockLocalConnection(id *this, void *a2)
{
  WebCore::MockWebAuthenticationConfiguration::~MockWebAuthenticationConfiguration((this + 3), a2);

  WebKit::LocalConnection::~LocalConnection(this);
}

{
  WebCore::MockWebAuthenticationConfiguration::~MockWebAuthenticationConfiguration((this + 3), a2);
  WebKit::LocalConnection::~LocalConnection(this);

  bmalloc::api::tzoneFree(v3, v4);
}

void WebKit::MockLocalService::~MockLocalService(WebKit::MockLocalService *this, void *a2)
{
  WebCore::MockWebAuthenticationConfiguration::~MockWebAuthenticationConfiguration((this + 32), a2);
  if (*(this + 6) == 1)
  {

    WebKit::AuthenticatorTransportService::~AuthenticatorTransportService(this);
  }

  else
  {
    __break(0xC471u);
  }
}

{
  WebCore::MockWebAuthenticationConfiguration::~MockWebAuthenticationConfiguration((this + 32), a2);
  if (*(this + 6) == 1)
  {
    WebKit::AuthenticatorTransportService::~AuthenticatorTransportService(this);

    bmalloc::api::tzoneFree(v3, v4);
  }

  else
  {
    __break(0xC471u);
  }
}

void WebKit::MockNfcService::~MockNfcService(WebKit::MockNfcService *this, void *a2)
{
  WebCore::MockWebAuthenticationConfiguration::~MockWebAuthenticationConfiguration((this + 96), a2);

  WebKit::NfcService::~NfcService(this);
}

{
  WebCore::MockWebAuthenticationConfiguration::~MockWebAuthenticationConfiguration((this + 96), a2);
  WebKit::NfcService::~NfcService(this);

  bmalloc::api::tzoneFree(v3, v4);
}

uint64_t WTF::BlockPtr<void ()(NSString *)>::fromCallable<WebKit::WebAuthenticationPanelClient::requestPin(unsigned long long,WTF::CompletionHandler<void ()(WTF::String const&)> &&)::$_0>(WebKit::WebAuthenticationPanelClient::requestPin(unsigned long long,WTF::CompletionHandler<void ()(WTF::String const&)> &&)::$_0)::{lambda(void const*)#1}::__invoke(uint64_t a1)
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

uint64_t WTF::BlockPtr<void ()(NSString *)>::fromCallable<WebKit::WebAuthenticationPanelClient::requestPin(unsigned long long,WTF::CompletionHandler<void ()(WTF::String const&)> &&)::$_0>(WebKit::WebAuthenticationPanelClient::requestPin(unsigned long long,WTF::CompletionHandler<void ()(WTF::String const&)> &&)::$_0)::{lambda(void *,NSString *)#1}::__invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  if (a2)
  {
    v5 = a2;
  }

  v6 = WTF::fastMalloc(0x20);
  *v6 = &unk_1F110C128;
  v6[1] = v3;
  v6[2] = v4;
  v6[3] = a2;
  v8 = v6;
  WTF::ensureOnMainThread();
  result = v8;
  if (v8)
  {
    return (*(*v8 + 8))(v8);
  }

  return result;
}

void sub_19DE2CE68(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (v11)
  {
    WTF::ThreadSafeRefCounted<WebKit::CompletionHandlerCallChecker,(WTF::DestructionThread)0>::deref(v11);
  }

  if (v10)
  {
    (*(*v10 + 8))(v10);
  }

  _Unwind_Resume(exception_object);
}

void *WTF::Detail::CallableWrapper<WebKit::WebAuthenticationPanelClient::requestPin(unsigned long long,WTF::CompletionHandler<void ()(WTF::String const&)> &&)::$_0::operator()(NSString *)::{lambda(void)#1},void>::~CallableWrapper(void *a1)
{
  *a1 = &unk_1F110C128;
  v2 = a1[3];
  a1[3] = 0;
  if (v2)
  {
  }

  v3 = a1[2];
  a1[2] = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCounted<WebKit::CompletionHandlerCallChecker,(WTF::DestructionThread)0>::deref(v3);
  }

  v4 = a1[1];
  a1[1] = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebAuthenticationPanelClient::requestPin(unsigned long long,WTF::CompletionHandler<void ()(WTF::String const&)> &&)::$_0::operator()(NSString *)::{lambda(void)#1},void>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F110C128;
  v3 = *(this + 3);
  *(this + 3) = 0;
  if (v3)
  {
  }

  v4 = *(this + 2);
  *(this + 2) = 0;
  if (v4)
  {
    WTF::ThreadSafeRefCounted<WebKit::CompletionHandlerCallChecker,(WTF::DestructionThread)0>::deref(v4);
  }

  v5 = *(this + 1);
  *(this + 1) = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebAuthenticationPanelClient::requestPin(unsigned long long,WTF::CompletionHandler<void ()(WTF::String const&)> &&)::$_0::operator()(NSString *)::{lambda(void)#1},void>::call(uint64_t a1)
{
  result = WebKit::CompletionHandlerCallChecker::completionHandlerHasBeenCalled(*(a1 + 16));
  if ((result & 1) == 0)
  {
    v3 = *(a1 + 24);
    *(*(a1 + 16) + 24) = 1;
    MEMORY[0x19EB02040](&v5, v3);
    WTF::CompletionHandler<void ()(WTF::String const&)>::operator()((a1 + 8), &v5);
    result = v5;
    v5 = 0;
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

void sub_19DE2D0A0(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
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

uint64_t WTF::BlockPtr<void ()(NSString *)>::fromCallable<WebKit::WebAuthenticationPanelClient::requestNewPin(unsigned long long,WTF::CompletionHandler<void ()(WTF::String const&)> &&)::$_0>(WebKit::WebAuthenticationPanelClient::requestNewPin(unsigned long long,WTF::CompletionHandler<void ()(WTF::String const&)> &&)::$_0)::{lambda(void const*)#1}::__invoke(uint64_t a1)
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

uint64_t WTF::BlockPtr<void ()(NSString *)>::fromCallable<WebKit::WebAuthenticationPanelClient::requestNewPin(unsigned long long,WTF::CompletionHandler<void ()(WTF::String const&)> &&)::$_0>(WebKit::WebAuthenticationPanelClient::requestNewPin(unsigned long long,WTF::CompletionHandler<void ()(WTF::String const&)> &&)::$_0)::{lambda(void *,NSString *)#1}::__invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  if (a2)
  {
    v5 = a2;
  }

  v6 = WTF::fastMalloc(0x20);
  *v6 = &unk_1F110C170;
  v6[1] = v3;
  v6[2] = v4;
  v6[3] = a2;
  v8 = v6;
  WTF::ensureOnMainThread();
  result = v8;
  if (v8)
  {
    return (*(*v8 + 8))(v8);
  }

  return result;
}

void sub_19DE2D1EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (v11)
  {
    WTF::ThreadSafeRefCounted<WebKit::CompletionHandlerCallChecker,(WTF::DestructionThread)0>::deref(v11);
  }

  if (v10)
  {
    (*(*v10 + 8))(v10);
  }

  _Unwind_Resume(exception_object);
}

void *WTF::Detail::CallableWrapper<WebKit::WebAuthenticationPanelClient::requestNewPin(unsigned long long,WTF::CompletionHandler<void ()(WTF::String const&)> &&)::$_0::operator()(NSString *)::{lambda(void)#1},void>::~CallableWrapper(void *a1)
{
  *a1 = &unk_1F110C170;
  v2 = a1[3];
  a1[3] = 0;
  if (v2)
  {
  }

  v3 = a1[2];
  a1[2] = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCounted<WebKit::CompletionHandlerCallChecker,(WTF::DestructionThread)0>::deref(v3);
  }

  v4 = a1[1];
  a1[1] = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebAuthenticationPanelClient::requestNewPin(unsigned long long,WTF::CompletionHandler<void ()(WTF::String const&)> &&)::$_0::operator()(NSString *)::{lambda(void)#1},void>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F110C170;
  v3 = *(this + 3);
  *(this + 3) = 0;
  if (v3)
  {
  }

  v4 = *(this + 2);
  *(this + 2) = 0;
  if (v4)
  {
    WTF::ThreadSafeRefCounted<WebKit::CompletionHandlerCallChecker,(WTF::DestructionThread)0>::deref(v4);
  }

  v5 = *(this + 1);
  *(this + 1) = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebAuthenticationPanelClient::requestNewPin(unsigned long long,WTF::CompletionHandler<void ()(WTF::String const&)> &&)::$_0::operator()(NSString *)::{lambda(void)#1},void>::call(uint64_t a1)
{
  result = WebKit::CompletionHandlerCallChecker::completionHandlerHasBeenCalled(*(a1 + 16));
  if ((result & 1) == 0)
  {
    v3 = *(a1 + 24);
    *(*(a1 + 16) + 24) = 1;
    MEMORY[0x19EB02040](&v5, v3);
    WTF::CompletionHandler<void ()(WTF::String const&)>::operator()((a1 + 8), &v5);
    result = v5;
    v5 = 0;
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

void sub_19DE2D424(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
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

uint64_t WTF::BlockPtr<void ()(_WKWebAuthenticationAssertionResponse *)>::fromCallable<WebKit::WebAuthenticationPanelClient::selectAssertionResponse(WTF::Vector<WTF::Ref<WebCore::AuthenticatorAssertionResponse,WTF::RawPtrTraits<WebCore::AuthenticatorAssertionResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorAssertionResponse>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WebKit::WebAuthenticationSource,WTF::CompletionHandler<void ()(WebCore::AuthenticatorAssertionResponse*)> &&)::$_1>(WebKit::WebAuthenticationPanelClient::selectAssertionResponse(WTF::Vector<WTF::Ref<WebCore::AuthenticatorAssertionResponse,WTF::RawPtrTraits<WebCore::AuthenticatorAssertionResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorAssertionResponse>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WebKit::WebAuthenticationSource,WTF::CompletionHandler<void ()(WebCore::AuthenticatorAssertionResponse*)> &&)::$_1)::{lambda(void const*)#1}::__invoke(uint64_t a1)
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

uint64_t WTF::BlockPtr<void ()(_WKWebAuthenticationAssertionResponse *)>::fromCallable<WebKit::WebAuthenticationPanelClient::selectAssertionResponse(WTF::Vector<WTF::Ref<WebCore::AuthenticatorAssertionResponse,WTF::RawPtrTraits<WebCore::AuthenticatorAssertionResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorAssertionResponse>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WebKit::WebAuthenticationSource,WTF::CompletionHandler<void ()(WebCore::AuthenticatorAssertionResponse*)> &&)::$_1>(WebKit::WebAuthenticationPanelClient::selectAssertionResponse(WTF::Vector<WTF::Ref<WebCore::AuthenticatorAssertionResponse,WTF::RawPtrTraits<WebCore::AuthenticatorAssertionResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorAssertionResponse>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WebKit::WebAuthenticationSource,WTF::CompletionHandler<void ()(WebCore::AuthenticatorAssertionResponse*)> &&)::$_1)::{lambda(void *,_WKWebAuthenticationAssertionResponse *)#1}::__invoke(uint64_t a1, void *a2)
{
  result = WebKit::CompletionHandlerCallChecker::completionHandlerHasBeenCalled(*(a1 + 40));
  if ((result & 1) == 0)
  {
    *(*(a1 + 40) + 24) = 1;
    if (a2)
    {
      v5 = [a2 _apiObject];
      if ((*(*v5 + 16))(v5) == 129)
      {
        v6 = v5[2];
        ++v6[2];
        result = WTF::CompletionHandler<void ()(WebCore::AuthenticatorAssertionResponse *)>::operator()((a1 + 32));
        if (v6[2] == 1)
        {
          v7 = *(*v6 + 8);

          return v7(v6);
        }

        else
        {
          --v6[2];
        }
      }

      else
      {
        result = 96;
        __break(0xC471u);
      }
    }

    else
    {

      return WTF::CompletionHandler<void ()(WebCore::AuthenticatorAssertionResponse *)>::operator()((a1 + 32));
    }
  }

  return result;
}

void sub_19DE2D5F0(_Unwind_Exception *exception_object)
{
  if (v1[2] == 1)
  {
    (*(*v1 + 8))(v1);
  }

  else
  {
    --v1[2];
  }

  _Unwind_Resume(exception_object);
}

uint64_t WTF::BlockPtr<void ()(_WKLocalAuthenticatorPolicy)>::fromCallable<WebKit::WebAuthenticationPanelClient::decidePolicyForLocalAuthenticator(WTF::CompletionHandler<void ()(WebKit::LocalAuthenticatorPolicy)> &&)::$_0>(WebKit::WebAuthenticationPanelClient::decidePolicyForLocalAuthenticator(WTF::CompletionHandler<void ()(WebKit::LocalAuthenticatorPolicy)> &&)::$_0)::{lambda(void const*)#1}::__invoke(uint64_t a1)
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

uint64_t WTF::BlockPtr<void ()(_WKLocalAuthenticatorPolicy)>::fromCallable<WebKit::WebAuthenticationPanelClient::decidePolicyForLocalAuthenticator(WTF::CompletionHandler<void ()(WebKit::LocalAuthenticatorPolicy)> &&)::$_0>(WebKit::WebAuthenticationPanelClient::decidePolicyForLocalAuthenticator(WTF::CompletionHandler<void ()(WebKit::LocalAuthenticatorPolicy)> &&)::$_0)::{lambda(void *,_WKLocalAuthenticatorPolicy)#1}::__invoke(uint64_t a1)
{
  result = WebKit::CompletionHandlerCallChecker::completionHandlerHasBeenCalled(*(a1 + 40));
  if ((result & 1) == 0)
  {
    *(*(a1 + 40) + 24) = 1;

    return WTF::CompletionHandler<void ()(WebKit::LocalAuthenticatorPolicy)>::operator()((a1 + 32));
  }

  return result;
}

uint64_t WTF::BlockPtr<void ()(LAContext *)>::fromCallable<WebKit::WebAuthenticationPanelClient::requestLAContextForUserVerification(WTF::CompletionHandler<void ()(LAContext *)> &&)::$_0>(WebKit::WebAuthenticationPanelClient::requestLAContextForUserVerification(WTF::CompletionHandler<void ()(LAContext *)> &&)::$_0)::{lambda(void const*)#1}::__invoke(uint64_t a1)
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

uint64_t WTF::BlockPtr<void ()(LAContext *)>::fromCallable<WebKit::WebAuthenticationPanelClient::requestLAContextForUserVerification(WTF::CompletionHandler<void ()(LAContext *)> &&)::$_0>(WebKit::WebAuthenticationPanelClient::requestLAContextForUserVerification(WTF::CompletionHandler<void ()(LAContext *)> &&)::$_0)::{lambda(void *,LAContext *)#1}::__invoke(uint64_t a1)
{
  result = WebKit::CompletionHandlerCallChecker::completionHandlerHasBeenCalled(*(a1 + 40));
  if ((result & 1) == 0)
  {
    *(*(a1 + 40) + 24) = 1;

    return WTF::CompletionHandler<void ()(LAContext *)>::operator()((a1 + 32));
  }

  return result;
}

uint64_t WebCore::MockWebAuthenticationConfiguration::MockWebAuthenticationConfiguration(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = 0;
  *(a1 + 48) = 0;
  if (*(a2 + 48) == 1)
  {
    *(a1 + 8) = *(a2 + 8);
    v4 = *(a2 + 16);
    if (v4)
    {
      atomic_fetch_add_explicit(v4, 2u, memory_order_relaxed);
    }

    *(a1 + 16) = v4;
    v5 = *(a2 + 24);
    if (v5)
    {
      atomic_fetch_add_explicit(v5, 2u, memory_order_relaxed);
    }

    *(a1 + 24) = v5;
    v6 = *(a2 + 32);
    if (v6)
    {
      atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed);
    }

    *(a1 + 32) = v6;
    v7 = *(a2 + 40);
    if (v7)
    {
      atomic_fetch_add_explicit(v7, 2u, memory_order_relaxed);
    }

    *(a1 + 40) = v7;
    *(a1 + 48) = 1;
  }

  *(a1 + 56) = 0;
  *(a1 + 120) = 0;
  if (*(a2 + 120) == 1)
  {
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(a1 + 56, a2 + 56);
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(a1 + 72, a2 + 72);
    v8 = *(a2 + 88);
    *(a1 + 104) = *(a2 + 104);
    *(a1 + 88) = v8;
    *(a1 + 120) = 1;
  }

  *(a1 + 128) = 0;
  *(a1 + 160) = 0;
  if (*(a2 + 160) == 1)
  {
    *(a1 + 128) = *(a2 + 128);
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(a1 + 136, a2 + 136);
    *(a1 + 152) = *(a2 + 152);
    *(a1 + 160) = 1;
  }

  *(a1 + 168) = 0;
  *(a1 + 184) = 0;
  if (*(a2 + 184) == 1)
  {
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(a1 + 168, a2 + 168);
    *(a1 + 184) = 1;
  }

  return a1;
}

void sub_19DE2D948(_Unwind_Exception *exception_object, void *a2)
{
  if (*(v2 + 184) == 1)
  {
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v4, a2);
  }

  if (*(v2 + 160) == 1)
  {
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v2 + 136, a2);
  }

  if (*(v2 + 120) == 1)
  {
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v2 + 72, a2);
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v3, v6);
  }

  if (*(v2 + 48) == 1)
  {
    v7 = *(v2 + 40);
    *(v2 + 40) = 0;
    if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v7, a2);
    }

    v8 = *(v2 + 32);
    *(v2 + 32) = 0;
    if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v8, a2);
    }

    v9 = *(v2 + 24);
    *(v2 + 24) = 0;
    if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v9, a2);
    }

    v10 = *(v2 + 16);
    *(v2 + 16) = 0;
    if (v10)
    {
      if (atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v10, a2);
      }
    }
  }

  _Unwind_Resume(exception_object);
}

void WTF::BlockPtr<void ()(void)>::fromCallable<WebKit::MockNfcService::detectTags(void)::$_0>(WebKit::MockNfcService::detectTags(void)::$_0)::{lambda(void *)#1}::__invoke(_BYTE *a1)
{
  v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if ((a1[192] & 1) == 0)
  {
    goto LABEL_24;
  }

  if (a1[160] == 2 || a1[184] == 1)
  {
    v2 = [[WKMockNFTag alloc] initWithType:0];
    v3 = [v9 addObject:v2];
  }

  else
  {
    v2 = [[WKMockNFTag alloc] initWithType:3];
    v3 = [v9 addObject:v2];
  }

  if (v2)
  {
  }

  if ((a1[192] & 1) == 0)
  {
    goto LABEL_24;
  }

  if (a1[184] == 1)
  {
    v4 = [[WKMockNFTag alloc] initWithType:3];
    v3 = [v9 addObject:v4];
    if (v4)
    {
    }
  }

  if (a1[192])
  {
    if (a1[185] == 1)
    {
      v5 = [WKMockNFTag alloc];
      v7 = [(WKMockNFTag *)v5 initWithType:3 tagID:v6];
      v3 = [v9 addObject:v7];
      if (v7)
      {
      }

      if (v6)
      {
      }
    }

    v8 = [objc_alloc(WebKit::getNFReaderSessionClass[0](v3)) initWithUIType:0];
    if (v8)
    {
    }

    if (v9)
    {
    }
  }

  else
  {
LABEL_24:
    __break(1u);
  }
}

void sub_19DE2DC28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  if (v10)
  {
  }

  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

uint64_t WTF::BlockPtr<void ()(NSSet<NSURL *> *,NSError *)>::fromCallable<WebKit::ScreenTimeWebsiteDataSupport::getScreenTimeURLs(std::optional<WTF::UUID>,WTF::CompletionHandler<void ()(WTF::HashSet<WTF::URL,WTF::DefaultHash<WTF::URL>,WTF::HashTraits<WTF::URL>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> &&)> &&)::$_0>(WebKit::ScreenTimeWebsiteDataSupport::getScreenTimeURLs(std::optional<WTF::UUID>,WTF::CompletionHandler<void ()(WTF::HashSet<WTF::URL,WTF::DefaultHash<WTF::URL>,WTF::HashTraits<WTF::URL>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> &&)> &&)::$_0)::{lambda(void const*)#1}::__invoke(uint64_t a1)
{
  result = *(a1 + 32);
  *(a1 + 32) = 0;
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t WTF::BlockPtr<void ()(NSSet<NSURL *> *,NSError *)>::fromCallable<WebKit::ScreenTimeWebsiteDataSupport::getScreenTimeURLs(std::optional<WTF::UUID>,WTF::CompletionHandler<void ()(WTF::HashSet<WTF::URL,WTF::DefaultHash<WTF::URL>,WTF::HashTraits<WTF::URL>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> &&)> &&)::$_0>(WebKit::ScreenTimeWebsiteDataSupport::getScreenTimeURLs(std::optional<WTF::UUID>,WTF::CompletionHandler<void ()(WTF::HashSet<WTF::URL,WTF::DefaultHash<WTF::URL>,WTF::HashTraits<WTF::URL>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> &&)> &&)::$_0)::{lambda(void *,NSSet<NSURL *> *,NSError *)#1}::__invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  *(a1 + 32) = 0;
  if (a2)
  {
    v6 = a2;
  }

  if (a3)
  {
    v9 = a3;
  }

  v7 = WTF::fastMalloc(0x20);
  *v7 = &unk_1F110C238;
  v7[1] = v5;
  v7[2] = a2;
  v7[3] = a3;
  v10 = v7;
  WTF::ensureOnMainRunLoop();
  result = v10;
  if (v10)
  {
    return (*(*v10 + 8))(v10);
  }

  return result;
}

void sub_19DE2DD80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (v11)
  {
  }

  if (v10)
  {
    (*(*v10 + 8))(v10);
  }

  _Unwind_Resume(exception_object);
}

void *WTF::Detail::CallableWrapper<WebKit::ScreenTimeWebsiteDataSupport::getScreenTimeURLs(std::optional<WTF::UUID>,WTF::CompletionHandler<void ()(WTF::HashSet<WTF::URL,WTF::DefaultHash<WTF::URL>,WTF::HashTraits<WTF::URL>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> &&)> &&)::$_0::operator()(NSSet<NSURL *> *,NSError *)::{lambda(void)#1},void>::~CallableWrapper(void *a1)
{
  *a1 = &unk_1F110C238;
  v2 = a1[3];
  a1[3] = 0;
  if (v2)
  {
  }

  v3 = a1[2];
  a1[2] = 0;
  if (v3)
  {
  }

  v4 = a1[1];
  a1[1] = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::ScreenTimeWebsiteDataSupport::getScreenTimeURLs(std::optional<WTF::UUID>,WTF::CompletionHandler<void ()(WTF::HashSet<WTF::URL,WTF::DefaultHash<WTF::URL>,WTF::HashTraits<WTF::URL>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> &&)> &&)::$_0::operator()(NSSet<NSURL *> *,NSError *)::{lambda(void)#1},void>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F110C238;
  v3 = *(this + 3);
  *(this + 3) = 0;
  if (v3)
  {
  }

  v4 = *(this + 2);
  *(this + 2) = 0;
  if (v4)
  {
  }

  v5 = *(this + 1);
  *(this + 1) = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  return WTF::fastFree(this, a2);
}

WTF::StringImpl **WTF::Detail::CallableWrapper<WebKit::ScreenTimeWebsiteDataSupport::getScreenTimeURLs(std::optional<WTF::UUID>,WTF::CompletionHandler<void ()(WTF::HashSet<WTF::URL,WTF::DefaultHash<WTF::URL>,WTF::HashTraits<WTF::URL>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> &&)> &&)::$_0::operator()(NSSet<NSURL *> *,NSError *)::{lambda(void)#1},void>::call(uint64_t *a1)
{
  v18[16] = *MEMORY[0x1E69E9840];
  if (a1[3])
  {
    WTF::CompletionHandler<void ()(WTF::HashSet<WTF::URL,WTF::DefaultHash<WTF::URL>,WTF::HashTraits<WTF::URL>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> &&)>::operator()(a1 + 1);
    return 0;
  }

  else
  {
    v17 = 0;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v3 = a1[2];
    v4 = [v3 countByEnumeratingWithState:&v13 objects:v18 count:16];
    if (v4)
    {
      v5 = *v14;
      do
      {
        for (i = 0; i != v4; ++i)
        {
          if (*v14 != v5)
          {
            objc_enumerationMutation(v3);
          }

          MEMORY[0x19EB01DE0](&v11, *(*(&v13 + 1) + 8 * i));
          if (v12)
          {
            WTF::HashTable<WTF::URL,WTF::URL,WTF::IdentityExtractor,WTF::DefaultHash<WTF::URL>,WTF::HashTraits<WTF::URL>,WTF::HashTraits<WTF::URL>,WTF::FastMalloc>::add<(WTF::ShouldValidateKey)1>(&v17, &v11, &v10);
          }

          v8 = v11;
          v11 = 0;
          if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v8, v7);
          }
        }

        v4 = [v3 countByEnumeratingWithState:&v13 objects:v18 count:16];
      }

      while (v4);
    }

    WTF::CompletionHandler<void ()(WTF::HashSet<WTF::URL,WTF::DefaultHash<WTF::URL>,WTF::HashTraits<WTF::URL>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> &&)>::operator()(a1 + 1);
    result = v17;
    if (v17)
    {
      return WTF::HashTable<WTF::URL,WTF::URL,WTF::IdentityExtractor,WTF::DefaultHash<WTF::URL>,WTF::HashTraits<WTF::URL>,WTF::HashTraits<WTF::URL>,WTF::FastMalloc>::deallocateTable(v17, v9);
    }
  }

  return result;
}

void sub_19DE2E0C0(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, WTF::StringImpl *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, WTF::StringImpl **a25, uint64_t a26)
{
  if (a25)
  {
    WTF::HashTable<WTF::URL,WTF::URL,WTF::IdentityExtractor,WTF::DefaultHash<WTF::URL>,WTF::HashTraits<WTF::URL>,WTF::HashTraits<WTF::URL>,WTF::FastMalloc>::deallocateTable(a25, a2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t WTF::CompletionHandler<void ()(WTF::HashSet<WTF::URL,WTF::DefaultHash<WTF::URL>,WTF::HashTraits<WTF::URL>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> &&)>::operator()(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  (*(*v1 + 16))(v1);
  v2 = *(*v1 + 8);

  return v2(v1);
}

uint64_t *WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>::HashSet<WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>&>(uint64_t *a1, uint64_t *a2)
{
  *a1 = 0;
  if (*a2)
  {
    v4 = *(*a2 - 12);
    if (v4)
    {
      WTF::HashTable<WebCore::RegistrableDomain,WebCore::RegistrableDomain,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::reserveInitialCapacity(a1, v4);
      v14[0] = WTF::HashTable<WebCore::RegistrableDomain,WebCore::RegistrableDomain,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::begin(a2, v5, v6);
      v14[1] = v7;
      if (*a2)
      {
        v9 = (*a2 + 8 * *(*a2 - 4));
      }

      else
      {
        v9 = 0;
      }

      while (v14[0] != v9)
      {
        WTF::HashTable<WebCore::RegistrableDomain,WebCore::RegistrableDomain,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::add<(WTF::ShouldValidateKey)1>(a1, v14[0]++, v8, v13);
        WTF::HashTableConstIterator<WTF::HashTable<WebCore::RegistrableDomain,WebCore::RegistrableDomain,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>,WebCore::RegistrableDomain,WebCore::RegistrableDomain,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>>::skipEmptyBuckets(v14, v10, v11);
      }
    }
  }

  return a1;
}

void sub_19DE2E274(_Unwind_Exception *exception_object, WTF::StringImpl *a2)
{
  if (*v2)
  {
    WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(*v2, a2);
  }

  _Unwind_Resume(exception_object);
}

void *WTF::map<0ul,WTF::CrashOnOverflow,16ul,WTF::CrossThreadCopierBase<false,false,WTF::Vector<WebCore::RecentSearch,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>::copy(WTF::Vector<WebCore::RecentSearch,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&)::{lambda(0ul &)#1},WTF::Vector<WebCore::RecentSearch,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const>(void *result, uint64_t *a2)
{
  *result = 0;
  result[1] = 0;
  v2 = *(a2 + 3);
  if (v2)
  {
    if (v2 >> 28)
    {
      __break(0xC471u);
    }

    else
    {
      v4 = result;
      result = WTF::fastMalloc((16 * v2));
      *(v4 + 2) = v2;
      *v4 = result;
      v5 = *(a2 + 3);
      if (v5)
      {
        v6 = *a2;
        v7 = v6 + 16 * v5;
        v8 = result + 1;
        v9 = 1;
        do
        {
          result = WTF::String::isolatedCopy();
          v10 = *(v6 + 8);
          *(v8 - 1) = v11;
          *v8 = v10;
          v8 += 2;
          *(v4 + 3) = v9;
          v6 += 16;
          ++v9;
        }

        while (v6 != v7);
      }
    }
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WebKit::MockLocalConnection::verifyUser(WTF::String const&,WebCore::ClientDataType,__SecAccessControl *,WebCore::UserVerificationRequirement,WTF::CompletionHandler<void ()(WebKit::LocalConnection::UserVerification,LAContext *)> &&)::$_0,void>::~CallableWrapper(void *a1, void *a2)
{
  *a1 = &unk_1F110C280;
  v3 = a1[25];
  a1[25] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  WebCore::MockWebAuthenticationConfiguration::~MockWebAuthenticationConfiguration((a1 + 1), a2);
  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::MockLocalConnection::verifyUser(WTF::String const&,WebCore::ClientDataType,__SecAccessControl *,WebCore::UserVerificationRequirement,WTF::CompletionHandler<void ()(WebKit::LocalConnection::UserVerification,LAContext *)> &&)::$_0,void>::~CallableWrapper(void *a1, void *a2)
{
  *a1 = &unk_1F110C280;
  v3 = a1[25];
  a1[25] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  WebCore::MockWebAuthenticationConfiguration::~MockWebAuthenticationConfiguration((a1 + 1), a2);

  return WTF::fastFree(a1, v4);
}

void WTF::Detail::CallableWrapper<WebKit::MockLocalConnection::verifyUser(WTF::String const&,WebCore::ClientDataType,__SecAccessControl *,WebCore::UserVerificationRequirement,WTF::CompletionHandler<void ()(WebKit::LocalConnection::UserVerification,LAContext *)> &&)::$_0,void>::call(uint64_t a1)
{
  if (*(a1 + 56))
  {
    v2 = [objc_alloc(WebKit::getLAContextClass(a1)) init];
    WTF::CompletionHandler<void ()(WebKit::LocalConnection::UserVerification,LAContext *)>::operator()((a1 + 200));
    if (v2)
    {
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_19DE2E4F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

void *WTF::Detail::CallableWrapper<WebKit::MockLocalConnection::verifyUser(__SecAccessControl *,LAContext *,WTF::CompletionHandler<void ()(WebKit::LocalConnection::UserVerification)> &&)::$_0,void>::~CallableWrapper(void *a1, void *a2)
{
  *a1 = &unk_1F110C2A8;
  v3 = a1[25];
  a1[25] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  WebCore::MockWebAuthenticationConfiguration::~MockWebAuthenticationConfiguration((a1 + 1), a2);
  return a1;
}