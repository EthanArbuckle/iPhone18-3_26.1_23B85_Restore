atomic_uint *WebKit::NetworkProcess::processWillSuspendImminentlyForTestingSync(WTF::MonotonicTime *a1, uint64_t *a2)
{
  WTF::MonotonicTime::now(a1);

  return WebKit::NetworkProcess::prepareToSuspend(a1, 1, a2, v4);
}

atomic_uint *WebKit::NetworkProcess::prepareToSuspend(uint64_t a1, int a2, uint64_t *a3, double a4)
{
  v39 = *MEMORY[0x1E69E9840];
  WTF::MonotonicTime::now(a1);
  v9 = v8;
  v10 = qword_1ED641030;
  if (os_log_type_enabled(qword_1ED641030, OS_LOG_TYPE_DEFAULT))
  {
    v11 = a4 - v9;
    *buf = 134218496;
    if (a4 <= v9)
    {
      v11 = 0.0;
    }

    *&buf[4] = a1;
    v35 = 1024;
    v36 = a2;
    v37 = 2048;
    v38 = v11;
    _os_log_impl(&dword_19D52D000, v10, OS_LOG_TYPE_DEFAULT, "%p - NetworkProcess::prepareToSuspend(), isSuspensionImminent=%d, remainingRunTime=%fs", buf, 0x1Cu);
  }

  *(a1 + 394) = 1;
  WebKit::NetworkProcess::lowMemoryHandler(a1, 1);
  WTF::WeakPtrFactory<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl>::initializeIfNeeded((a1 + 8), a1);
  v12 = *(a1 + 8);
  atomic_fetch_add(v12, 1u);
  v13 = *a3;
  *a3 = 0;
  v14 = WTF::fastMalloc(0x18);
  *v14 = &unk_1F1101F18;
  v14[1] = v12;
  v14[2] = v13;
  v15 = WTF::fastMalloc(0x10);
  *v15 = 1;
  *(v15 + 8) = v14;
  *buf = v15;
  atomic_fetch_add(v15, 1u);
  v16 = WTF::fastMalloc(0x10);
  *v16 = &unk_1F1101F40;
  v16[1] = v15;
  v33 = v16;
  WebKit::WebResourceLoadStatisticsStore::suspend();
  v17 = v33;
  v33 = 0;
  if (v17)
  {
    (*(*v17 + 8))(v17);
  }

  v18 = *buf;
  if (*buf)
  {
    atomic_fetch_add(*buf, 1u);
  }

  v19 = WTF::fastMalloc(0x10);
  *v19 = &unk_1F1101F68;
  v19[1] = v18;
  v33 = v19;
  WebKit::PCM::PersistentStore::prepareForProcessToSuspend();
  v20 = v33;
  v33 = 0;
  if (v20)
  {
    (*(*v20 + 8))(v20);
  }

  v21 = WTF::fastMalloc(0x18);
  *v21 = &unk_1F1101F90;
  v21[1] = a1;
  v21[2] = buf;
  v33 = v21;
  WebKit::NetworkProcess::forEachNetworkSession(a1, &v33);
  (*(*v21 + 8))(v21);
  v22 = *(a1 + 368);
  v23 = WTF::HashTable<WTF::Ref<WebKit::NetworkStorageManager,WTF::RawPtrTraits<WebKit::NetworkStorageManager>,WTF::DefaultRefDerefTraits<WebKit::NetworkStorageManager>>,WTF::Ref<WebKit::NetworkStorageManager,WTF::RawPtrTraits<WebKit::NetworkStorageManager>,WTF::DefaultRefDerefTraits<WebKit::NetworkStorageManager>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::Ref<WebKit::NetworkStorageManager,WTF::RawPtrTraits<WebKit::NetworkStorageManager>,WTF::DefaultRefDerefTraits<WebKit::NetworkStorageManager>>>,WTF::HashTraits<WTF::Ref<WebKit::NetworkStorageManager,WTF::RawPtrTraits<WebKit::NetworkStorageManager>,WTF::DefaultRefDerefTraits<WebKit::NetworkStorageManager>>>,WTF::HashTraits<WTF::Ref<WebKit::NetworkStorageManager,WTF::RawPtrTraits<WebKit::NetworkStorageManager>,WTF::DefaultRefDerefTraits<WebKit::NetworkStorageManager>>>,WTF::FastMalloc>::begin(v22);
  v24 = v23;
  v26 = v25;
  if (v22)
  {
    v27 = &v22[*(v22 - 1)];
  }

  else
  {
    v27 = 0;
  }

  if (v27 != v23)
  {
    do
    {
      v28 = *v24;
      v29 = *buf;
      if (*buf)
      {
        atomic_fetch_add(*buf, 1u);
      }

      v30 = WTF::fastMalloc(0x10);
      *v30 = &unk_1F1102008;
      v30[1] = v29;
      v33 = v30;
      WebKit::NetworkStorageManager::suspend(v28, &v33);
      v31 = v33;
      v33 = 0;
      if (v31)
      {
        (*(*v31 + 8))(v31);
      }

      do
      {
        ++v24;
      }

      while (v24 != v26 && (*v24 + 1) <= 1);
    }

    while (v24 != v27);
  }

  result = *buf;
  *buf = 0;
  if (result)
  {
    return WTF::ThreadSafeRefCounted<WTF::CallbackAggregatorOnThread<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref(result);
  }

  return result;
}

void WebKit::NetworkProcess::terminateRemoteWorkerContextConnectionWhenPossible(uint64_t a1, int a2, uint64_t a3, WTF **a4, const WTF::StringImpl *a5)
{
  v15 = a3;
  v8 = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((a1 + 240), &v15);
  if (v8)
  {
    v9 = v8;
    v10 = *(v8 + 16) + 1;
    *(v8 + 16) = v10;
    if (a2 == 2)
    {
      v13 = *(v8 + 800);
      if (!v13)
      {
        goto LABEL_10;
      }

      ++*(v13 + 8);
      WebKit::WebSharedWorkerServer::terminateContextConnectionWhenPossible(v13, a4, a5);
      v14 = *(v13 + 8);
      if (!v14)
      {
        goto LABEL_13;
      }

      *(v13 + 8) = v14 - 1;
    }

    else
    {
      if (a2 != 1 || (v11 = *(v8 + 776)) == 0)
      {
LABEL_10:
        if (v10)
        {
          *(v9 + 16) = v10 - 1;
          return;
        }

LABEL_13:
        __break(0xC471u);
        JUMPOUT(0x19DC72F90);
      }

      v12 = (v11 + 8);
      ++*(v11 + 8);
      WebCore::SWServer::terminateContextConnectionWhenPossible();
      WTF::RefCounted<WebCore::SWServer>::deref(v12);
    }

    v10 = *(v9 + 16);
    goto LABEL_10;
  }
}

uint64_t WebKit::NetworkProcess::runningOrTerminatingServiceWorkerCountForTesting(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v13 = a2;
  v4 = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((a1 + 240), &v13);
  if (v4)
  {
    v6 = v4;
    ++*(v4 + 4);
    v7 = *(WebKit::NetworkSession::ensureSWServer(v4, v5) + 56);
    if (v7)
    {
      v8 = *(v7 - 12);
    }

    else
    {
      v8 = 0;
    }

    v9 = *a3;
    *a3 = 0;
    (*(*v9 + 16))(v9, v8);
    result = (*(*v9 + 8))(v9);
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
    (*(*v12 + 16))(v12, 0);
    return (*(*v12 + 8))(v12);
  }

  return result;
}

uint64_t *WebKit::NetworkProcess::processDidResume(WebKit::NetworkProcess *this, int a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = qword_1ED641030;
  v5 = os_log_type_enabled(qword_1ED641030, OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    *v14 = 134218240;
    *&v14[4] = this;
    v15 = 1024;
    v16 = a2;
    _os_log_impl(&dword_19D52D000, v4, OS_LOG_TYPE_DEFAULT, "%p - NetworkProcess::processDidResume() forForegroundActivity=%d", v14, 0x12u);
  }

  *(this + 394) = 0;
  v6 = WebKit::WebResourceLoadStatisticsStore::resume(v5);
  WebKit::PCM::PersistentStore::processDidResume(v6);
  v7 = WTF::fastMalloc(0x10);
  *v7 = &unk_1F1102030;
  *v14 = v7;
  WebKit::NetworkProcess::forEachNetworkSession(this, v14);
  (*(*v7 + 8))(v7);
  v8 = *(this + 46);
  result = WTF::HashTable<WTF::Ref<WebKit::NetworkStorageManager,WTF::RawPtrTraits<WebKit::NetworkStorageManager>,WTF::DefaultRefDerefTraits<WebKit::NetworkStorageManager>>,WTF::Ref<WebKit::NetworkStorageManager,WTF::RawPtrTraits<WebKit::NetworkStorageManager>,WTF::DefaultRefDerefTraits<WebKit::NetworkStorageManager>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::Ref<WebKit::NetworkStorageManager,WTF::RawPtrTraits<WebKit::NetworkStorageManager>,WTF::DefaultRefDerefTraits<WebKit::NetworkStorageManager>>>,WTF::HashTraits<WTF::Ref<WebKit::NetworkStorageManager,WTF::RawPtrTraits<WebKit::NetworkStorageManager>,WTF::DefaultRefDerefTraits<WebKit::NetworkStorageManager>>>,WTF::HashTraits<WTF::Ref<WebKit::NetworkStorageManager,WTF::RawPtrTraits<WebKit::NetworkStorageManager>,WTF::DefaultRefDerefTraits<WebKit::NetworkStorageManager>>>,WTF::FastMalloc>::begin(v8);
  v10 = result;
  v12 = v11;
  if (v8)
  {
    v8 += *(v8 - 1);
  }

  if (v8 != result)
  {
    do
    {
      v13 = *v10++;
      result = WebKit::NetworkStorageManager::resume(v13);
      while (v10 != v12 && (*v10 + 1) <= 1)
      {
        ++v10;
      }
    }

    while (v10 != v8);
  }

  return result;
}

atomic_uint *WebKit::NetworkProcess::syncLocalStorage(uint64_t a1, uint64_t *a2)
{
  v4 = WTF::fastMalloc(0x10);
  *v4 = 1;
  v5 = *a2;
  *a2 = 0;
  *(v4 + 8) = v5;
  v9 = v4;
  v6 = WTF::fastMalloc(0x10);
  *v6 = &unk_1F1102058;
  v6[1] = &v9;
  v8 = v6;
  WebKit::NetworkProcess::forEachNetworkSession(a1, &v8);
  (*(*v6 + 8))(v6);
  result = v9;
  v9 = 0;
  if (result)
  {
    return WTF::ThreadSafeRefCounted<WTF::CallbackAggregatorOnThread<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref(result);
  }

  return result;
}

uint64_t WebKit::NetworkProcess::storeServiceWorkerRegistrations(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v11 = a2;
  v4 = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((a1 + 240), &v11);
  v5 = v4;
  if (v4 && (++*(v4 + 16), (v6 = *(v4 + 776)) != 0))
  {
    v7 = (v6 + 8);
    ++*(v6 + 8);
    WebCore::SWServer::storeRegistrationsOnDisk();
    result = WTF::RefCounted<WebCore::SWServer>::deref(v7);
  }

  else
  {
    v10 = *a3;
    *a3 = 0;
    (*(*v10 + 16))(v10);
    result = (*(*v10 + 8))(v10);
    if (!v5)
    {
      return result;
    }
  }

  v9 = *(v5 + 16);
  if (v9)
  {
    *(v5 + 16) = v9 - 1;
  }

  else
  {
    result = 290;
    __break(0xC471u);
  }

  return result;
}

uint64_t WebKit::NetworkProcess::resetQuota(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v9 = a2;
  v4 = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((a1 + 240), &v9);
  if (v4)
  {
    v5 = v4;
    ++*(v4 + 16);
    result = WebKit::NetworkStorageManager::resetQuotaForTesting(*(v4 + 1048), a3);
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

uint64_t WebKit::NetworkProcess::setOriginQuotaRatioEnabledForTesting(uint64_t a1, uint64_t a2, char a3, uint64_t *a4)
{
  v11 = a2;
  v6 = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((a1 + 240), &v11);
  if (v6)
  {
    v7 = v6;
    ++*(v6 + 16);
    result = WebKit::NetworkStorageManager::setOriginQuotaRatioEnabledForTesting(*(v6 + 1048), a3, a4);
    v9 = *(v7 + 16);
    if (v9)
    {
      *(v7 + 16) = v9 - 1;
    }

    else
    {
      result = 290;
      __break(0xC471u);
    }
  }

  else
  {
    v10 = *a4;
    *a4 = 0;
    (*(*v10 + 16))(v10);
    return (*(*v10 + 8))(v10);
  }

  return result;
}

uint64_t WebKit::NetworkProcess::resetStoragePersistedState(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v9 = a2;
  v4 = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((a1 + 240), &v9);
  if (v4)
  {
    v5 = v4;
    ++*(v4 + 16);
    result = WebKit::NetworkStorageManager::resetStoragePersistedState(*(v4 + 1048), a3);
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

uint64_t WebKit::NetworkProcess::cloneSessionStorageForWebPage(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = a2;
  result = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((a1 + 240), &v9);
  if (result)
  {
    v7 = result;
    ++*(result + 16);
    result = WebKit::NetworkStorageManager::cloneSessionStorageForWebPage(*(result + 1048), a3, a4);
    v8 = *(v7 + 16);
    if (v8)
    {
      *(v7 + 16) = v8 - 1;
    }

    else
    {
      result = 290;
      __break(0xC471u);
    }
  }

  return result;
}

uint64_t WebKit::NetworkProcess::didIncreaseQuota(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v13 = a2;
  result = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((a1 + 240), &v13);
  if (result)
  {
    v11 = result;
    ++*(result + 16);
    result = WebKit::NetworkStorageManager::didIncreaseQuota(*(result + 1048), a3, a4, a5, a6);
    v12 = *(v11 + 16);
    if (v12)
    {
      *(v11 + 16) = v12 - 1;
    }

    else
    {
      result = 290;
      __break(0xC471u);
    }
  }

  return result;
}

atomic_uint *WebKit::NetworkProcess::renameOriginInWebsiteData(uint64_t a1, uint64_t a2, WebCore::SecurityOriginData *a3, WebCore::SecurityOriginData *a4, int a5, uint64_t *a6)
{
  v12 = WTF::fastMalloc(0x10);
  *v12 = 1;
  v13 = *a6;
  *a6 = 0;
  *(v12 + 8) = v13;
  if (WebCore::SecurityOriginData::isNull(a3))
  {
    return WTF::ThreadSafeRefCounted<WTF::CallbackAggregatorOnThread<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref(v12);
  }

  if (WebCore::SecurityOriginData::isNull(a4))
  {
    return WTF::ThreadSafeRefCounted<WTF::CallbackAggregatorOnThread<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref(v12);
  }

  v21 = a2;
  v14 = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((a1 + 240), &v21);
  if (!v14)
  {
    return WTF::ThreadSafeRefCounted<WTF::CallbackAggregatorOnThread<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref(v12);
  }

  v15 = v14;
  ++*(v14 + 16);
  v16 = *(v14 + 1048);
  atomic_fetch_add(v12, 1u);
  v17 = WTF::fastMalloc(0x10);
  *v17 = &unk_1F11020A8;
  v17[1] = v12;
  v21 = v17;
  WebKit::NetworkStorageManager::moveData(v16, a5, a3, a4, &v21);
  v18 = v21;
  v21 = 0;
  if (v18)
  {
    (*(*v18 + 8))(v18);
  }

  v19 = *(v15 + 16);
  if (v19)
  {
    *(v15 + 16) = v19 - 1;
    return WTF::ThreadSafeRefCounted<WTF::CallbackAggregatorOnThread<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref(v12);
  }

  result = 290;
  __break(0xC471u);
  return result;
}

uint64_t WebKit::NetworkProcess::websiteDataOriginDirectoryForTesting(uint64_t result, WTF::StringImpl *a2, uint64_t a3, int a4, uint64_t *a5)
{
  if ((a4 ^ (a4 - 1)) > a4 - 1)
  {
    v13 = a2;
    v8 = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((result + 240), &v13);
    if (v8)
    {
      v9 = v8;
      ++*(v8 + 16);
      result = WebKit::NetworkStorageManager::getOriginDirectory(*(v8 + 1048), a3, a4, a5);
      v10 = *(v9 + 16);
      if (v10)
      {
        *(v9 + 16) = v10 - 1;
      }

      else
      {
        result = 290;
        __break(0xC471u);
      }
    }

    else
    {
      v13 = 0;
      v11 = *a5;
      *a5 = 0;
      (*(*v11 + 16))(v11, &v13);
      (*(*v11 + 8))(v11);
      result = v13;
      v13 = 0;
      if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        return WTF::StringImpl::destroy(result, v12);
      }
    }
  }

  return result;
}

uint64_t WebKit::NetworkProcess::processNotificationEvent(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v12 = *(a2 + 208);
  v5 = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((a1 + 240), &v12);
  if (v5)
  {
    v7 = v5;
    ++*(v5 + 4);
    v8 = (WebKit::NetworkSession::ensureSWServer(v5, v6) + 8);
    ++*v8;
    WebCore::SWServer::processNotificationEvent();
    result = WTF::RefCounted<WebCore::SWServer>::deref(v8);
    v10 = *(v7 + 4);
    if (v10)
    {
      *(v7 + 4) = v10 - 1;
    }

    else
    {
      result = 290;
      __break(0xC471u);
    }
  }

  else
  {
    v11 = *a4;
    *a4 = 0;
    (*(*v11 + 16))(v11, 0);
    return (*(*v11 + 8))(v11);
  }

  return result;
}

uint64_t WebKit::NetworkProcess::getAllBackgroundFetchIdentifiers(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v10[0] = a2;
  v4 = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((a1 + 240), v10);
  if (v4)
  {
    v5 = v4;
    ++*(v4 + 4);
    result = WebKit::NetworkSession::getAllBackgroundFetchIdentifiers(v4, a3);
    v7 = *(v5 + 4);
    if (v7)
    {
      *(v5 + 4) = v7 - 1;
    }

    else
    {
      result = 290;
      __break(0xC471u);
    }
  }

  else
  {
    v10[0] = 0;
    v10[1] = 0;
    v8 = *a3;
    *a3 = 0;
    (*(*v8 + 16))(v8, v10);
    (*(*v8 + 8))(v8);
    return WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v10, v9);
  }

  return result;
}

void WebKit::NetworkProcess::getBackgroundFetchState(uint64_t a1, uint64_t a2, atomic_uint **a3, uint64_t *a4)
{
  v13 = *MEMORY[0x1E69E9840];
  v11[0] = a2;
  v6 = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((a1 + 240), v11);
  if (v6)
  {
    v7 = v6;
    ++*(v6 + 4);
    WebKit::NetworkSession::getBackgroundFetchState(v6, a3, a4);
    v8 = *(v7 + 4);
    if (v8)
    {
      *(v7 + 4) = v8 - 1;
    }

    else
    {
      __break(0xC471u);
    }
  }

  else
  {
    LOBYTE(v11[0]) = 0;
    v12 = 0;
    v9 = *a4;
    *a4 = 0;
    (*(*v9 + 16))(v9, v11);
    (*(*v9 + 8))(v9);
    if (v12 == 1)
    {
      WebKit::BackgroundFetchState::~BackgroundFetchState(v11, v10);
    }
  }
}

uint64_t WebKit::NetworkProcess::abortBackgroundFetch(uint64_t a1, uint64_t a2, atomic_uint **a3, uint64_t *a4)
{
  v11 = a2;
  v6 = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((a1 + 240), &v11);
  if (v6)
  {
    v7 = v6;
    ++*(v6 + 4);
    result = WebKit::NetworkSession::abortBackgroundFetch(v6, a3, a4);
    v9 = *(v7 + 4);
    if (v9)
    {
      *(v7 + 4) = v9 - 1;
    }

    else
    {
      result = 290;
      __break(0xC471u);
    }
  }

  else
  {
    v10 = *a4;
    *a4 = 0;
    (*(*v10 + 16))(v10);
    return (*(*v10 + 8))(v10);
  }

  return result;
}

uint64_t WebKit::NetworkProcess::pauseBackgroundFetch(uint64_t a1, uint64_t a2, atomic_uint **a3, uint64_t *a4)
{
  v11 = a2;
  v6 = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((a1 + 240), &v11);
  if (v6)
  {
    v7 = v6;
    ++*(v6 + 4);
    result = WebKit::NetworkSession::pauseBackgroundFetch(v6, a3, a4);
    v9 = *(v7 + 4);
    if (v9)
    {
      *(v7 + 4) = v9 - 1;
    }

    else
    {
      result = 290;
      __break(0xC471u);
    }
  }

  else
  {
    v10 = *a4;
    *a4 = 0;
    (*(*v10 + 16))(v10);
    return (*(*v10 + 8))(v10);
  }

  return result;
}

uint64_t WebKit::NetworkProcess::resumeBackgroundFetch(uint64_t a1, uint64_t a2, atomic_uint **a3, uint64_t *a4)
{
  v11 = a2;
  v6 = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((a1 + 240), &v11);
  if (v6)
  {
    v7 = v6;
    ++*(v6 + 4);
    result = WebKit::NetworkSession::resumeBackgroundFetch(v6, a3, a4);
    v9 = *(v7 + 4);
    if (v9)
    {
      *(v7 + 4) = v9 - 1;
    }

    else
    {
      result = 290;
      __break(0xC471u);
    }
  }

  else
  {
    v10 = *a4;
    *a4 = 0;
    (*(*v10 + 16))(v10);
    return (*(*v10 + 8))(v10);
  }

  return result;
}

uint64_t WebKit::NetworkProcess::clickBackgroundFetch(uint64_t a1, uint64_t a2, atomic_uint **a3, uint64_t *a4)
{
  v11 = a2;
  v6 = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((a1 + 240), &v11);
  if (v6)
  {
    v7 = v6;
    ++*(v6 + 4);
    result = WebKit::NetworkSession::clickBackgroundFetch(v6, a3, a4);
    v9 = *(v7 + 4);
    if (v9)
    {
      *(v7 + 4) = v9 - 1;
    }

    else
    {
      result = 290;
      __break(0xC471u);
    }
  }

  else
  {
    v10 = *a4;
    *a4 = 0;
    (*(*v10 + 16))(v10);
    return (*(*v10 + 8))(v10);
  }

  return result;
}

void WebKit::NetworkProcess::getPendingPushMessage(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  *v12 = a2;
  v5 = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((a1 + 240), v12);
  if (v5)
  {
    v6 = v5;
    ++*(v5 + 16);
    v7 = qword_1ED6410A8;
    if (os_log_type_enabled(qword_1ED6410A8, OS_LOG_TYPE_DEFAULT))
    {
      *v12 = 134217984;
      *&v12[4] = a2;
      _os_log_impl(&dword_19D52D000, v7, OS_LOG_TYPE_DEFAULT, "NetworkProcess getting pending push messages for session ID %llu", v12, 0xCu);
    }

    WebKit::NetworkNotificationManager::getPendingPushMessage(*(v6 + 1080), a3);
    v8 = *(v6 + 16);
    if (v8)
    {
      *(v6 + 16) = v8 - 1;
    }

    else
    {
      __break(0xC471u);
    }
  }

  else
  {
    v9 = qword_1ED6410A8;
    if (os_log_type_enabled(qword_1ED6410A8, OS_LOG_TYPE_DEFAULT))
    {
      *v12 = 134217984;
      *&v12[4] = a2;
      _os_log_impl(&dword_19D52D000, v9, OS_LOG_TYPE_DEFAULT, "NetworkProcess could not find session for ID %llu to get pending push messages", v12, 0xCu);
    }

    v12[0] = 0;
    v13 = 0;
    v10 = *a3;
    *a3 = 0;
    (*(*v10 + 16))(v10, v12);
    (*(*v10 + 8))(v10);
    if (v13 == 1)
    {
      WebKit::WebPushMessage::~WebPushMessage(v12, v11);
    }
  }
}

uint64_t WebKit::NetworkProcess::getPendingPushMessages(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v10[0] = a2;
  v4 = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((a1 + 240), v10);
  if (v4)
  {
    v5 = v4;
    ++*(v4 + 16);
    result = WebKit::NetworkNotificationManager::getPendingPushMessages(*(v4 + 1080), a3);
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
    v10[0] = 0;
    v10[1] = 0;
    v8 = *a3;
    *a3 = 0;
    (*(*v8 + 16))(v8, v10);
    (*(*v8 + 8))(v8);
    return WTF::Vector<WebKit::WebPushMessage,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v10, v9);
  }

  return result;
}

uint64_t WebKit::NetworkProcess::processPushMessage(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, uint64_t *a6)
{
  v80 = *MEMORY[0x1E69E9840];
  *buf = a2;
  v12 = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((a1 + 240), buf);
  v13 = &unk_1ED641000;
  if (v12)
  {
    v14 = v12;
    ++*(v12 + 16);
    v15 = qword_1ED6410A8;
    if (os_log_type_enabled(qword_1ED6410A8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      *&buf[4] = a2;
      _os_log_impl(&dword_19D52D000, v15, OS_LOG_TYPE_DEFAULT, "Networking process handling a push message from UI process in session %llu", buf, 0xCu);
    }

    WebCore::SecurityOriginData::fromURL(&v77, (a3 + 32), v16);
    if (!a4)
    {
      v32 = qword_1ED6410A8;
      if (os_log_type_enabled(qword_1ED6410A8, OS_LOG_TYPE_DEFAULT))
      {
        WebCore::SecurityOriginData::toString(&v64, &v77);
        WTF::String::utf8();
        if (v65)
        {
          v33 = v65 + 16;
        }

        else
        {
          v33 = 0;
        }

        *buf = 136642819;
        *&buf[4] = v33;
        _os_log_impl(&dword_19D52D000, v32, OS_LOG_TYPE_DEFAULT, "Push message from %{sensitive}s won't be processed since permission is in the denied state", buf, 0xCu);
        v35 = v65;
        v65 = 0;
        if (v35)
        {
          if (*v35 == 1)
          {
            WTF::fastFree(v35, v34);
          }

          else
          {
            --*v35;
          }
        }

        v36 = v64;
        v64 = 0;
        if (v36 && atomic_fetch_add_explicit(v36, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v36, v34);
        }
      }

      buf[0] = 0;
      v76 = 0;
      v37 = *a6;
      *a6 = 0;
      (*(*v37 + 16))(v37, 0, buf);
      result = (*(*v37 + 8))(v37);
      if (v76 != 1)
      {
        goto LABEL_84;
      }

      if (v75 == 1)
      {
        v38 = v74;
        v74 = 0;
        if (v38 && atomic_fetch_add_explicit(v38, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v38, v29);
        }

        v39 = v73;
        v73 = 0;
        if (v39 && atomic_fetch_add_explicit(v39, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v39, v29);
        }

        v40 = v72;
        v72 = 0;
        if (v40 && atomic_fetch_add_explicit(v40, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v40, v29);
        }

        v41 = v71;
        v71 = 0;
        if (v41 && atomic_fetch_add_explicit(v41, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v41, v29);
        }

        v42 = v70;
        v70 = 0;
        if (v42 && atomic_fetch_add_explicit(v42, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v42, v29);
        }
      }

      v31 = v69;
      v69 = 0;
      if (!v31)
      {
        goto LABEL_58;
      }

      goto LABEL_56;
    }

    if (a4 == 2)
    {
      v18 = qword_1ED6410A8;
      if (os_log_type_enabled(qword_1ED6410A8, OS_LOG_TYPE_DEFAULT))
      {
        WebCore::SecurityOriginData::toString(&v64, &v77);
        WTF::String::utf8();
        if (v65)
        {
          v19 = v65 + 16;
        }

        else
        {
          v19 = 0;
        }

        *buf = 136642819;
        *&buf[4] = v19;
        _os_log_impl(&dword_19D52D000, v18, OS_LOG_TYPE_DEFAULT, "Push message from %{sensitive}s won't be processed since permission is in the prompt state; removing push subscription", buf, 0xCu);
        v21 = v65;
        v65 = 0;
        if (v21)
        {
          if (*v21 == 1)
          {
            WTF::fastFree(v21, v20);
          }

          else
          {
            --*v21;
          }
        }

        v22 = v64;
        v64 = 0;
        if (v22 && atomic_fetch_add_explicit(v22, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v22, v20);
        }
      }

      v23 = *(v14 + 1080);
      buf[0] = 0;
      v68 = -1;
      v24 = v79;
      if (v79)
      {
        if (v79 == 255)
        {
LABEL_23:
          v27 = *a6;
          *a6 = 0;
          v28 = WTF::fastMalloc(0x10);
          *v28 = &unk_1F11020D0;
          *(v28 + 1) = v27;
          v65 = v28;
          WebKit::NetworkNotificationManager::removePushSubscriptionsForOrigin(v23, buf, &v65);
          result = v65;
          v65 = 0;
          if (result)
          {
            result = (*(*result + 8))(result);
          }

          if (v68)
          {
            goto LABEL_84;
          }

          v31 = *&buf[8];
          *&buf[8] = 0;
          if (!v31)
          {
            goto LABEL_58;
          }

LABEL_56:
          if (atomic_fetch_add_explicit(v31, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v31, v29);
          }

LABEL_58:
          result = *buf;
          *buf = 0;
          if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            result = WTF::StringImpl::destroy(result, v29);
          }

          goto LABEL_84;
        }

        *buf = v77;
      }

      else
      {
        v25 = v77;
        if (v77)
        {
          atomic_fetch_add_explicit(v77, 2u, memory_order_relaxed);
        }

        *buf = v25;
        v26 = *(&v77 + 1);
        if (*(&v77 + 1))
        {
          atomic_fetch_add_explicit(*(&v77 + 1), 2u, memory_order_relaxed);
        }

        *&buf[8] = v26;
        v67 = v78;
        v24 = v79;
      }

      v68 = v24;
      goto LABEL_23;
    }

    v63 = v14;
    v43 = a6;
    v44 = *(a3 + 32);
    if (v44)
    {
      atomic_fetch_add_explicit(v44, 2u, memory_order_relaxed);
    }

    v45 = *(a3 + 208);
    v46 = (WebKit::NetworkSession::ensureSWServer(v63, v17) + 8);
    ++*v46;
    atomic_fetch_add((a1 + 144), 1u);
    v47 = v79;
    if (v79)
    {
      if (v79 == 255)
      {
        v61 = 0uLL;
      }

      else
      {
        v61 = v77;
      }

      v62 = v61;
    }

    else
    {
      v62 = v77;
      v77 = 0uLL;
      LODWORD(v13) = v78;
    }

    v48 = v45;
    v49 = *v43;
    *v43 = 0;
    if (a5)
    {
      v50 = 256;
    }

    else
    {
      v50 = 0;
    }

    v51 = v50 | v48;
    v52 = WTF::fastMalloc(0x58);
    *v52 = &unk_1F11020F8;
    *(v52 + 8) = a1;
    *(v52 + 16) = a1;
    *(v52 + 24) = a2;
    *(v52 + 32) = 0;
    *(v52 + 56) = -1;
    if (v47)
    {
      v54 = *(&v62 + 1);
      v53 = v62;
      v14 = v63;
      if (v47 == 255)
      {
LABEL_71:
        *(v52 + 64) = v44;
        *(v52 + 72) = v49;
        *(v52 + 80) = v51;
        *buf = v52;
        WebCore::SWServer::processPushMessage();
        v56 = *buf;
        *buf = 0;
        if (v56)
        {
          (*(*v56 + 8))(v56);
        }

        if (v47)
        {
          goto LABEL_83;
        }

        if (v54 && atomic_fetch_add_explicit(v54, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v54, v55);
          if (v53)
          {
LABEL_77:
            if (atomic_fetch_add_explicit(v53, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v53, v55);
            }
          }
        }

        else if (v53)
        {
          goto LABEL_77;
        }

LABEL_83:
        result = WTF::RefCounted<WebCore::SWServer>::deref(v46);
LABEL_84:
        if (!v79)
        {
          v59 = *(&v77 + 1);
          *(&v77 + 1) = 0;
          if (v59 && atomic_fetch_add_explicit(v59, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v59, v29);
          }

          result = v77;
          *&v77 = 0;
          if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            result = WTF::StringImpl::destroy(result, v29);
          }
        }

        v60 = *(v14 + 16);
        if (v60)
        {
          *(v14 + 16) = v60 - 1;
        }

        else
        {
          result = 290;
          __break(0xC471u);
        }

        return result;
      }

      *(v52 + 32) = v62;
    }

    else
    {
      v53 = 0;
      v54 = 0;
      *(v52 + 32) = v62;
      *(v52 + 48) = v13;
      v14 = v63;
    }

    *(v52 + 56) = v47;
    goto LABEL_71;
  }

  v57 = qword_1ED6410A8;
  if (os_log_type_enabled(qword_1ED6410A8, OS_LOG_TYPE_ERROR))
  {
    *buf = 134217984;
    *&buf[4] = a2;
    _os_log_error_impl(&dword_19D52D000, v57, OS_LOG_TYPE_ERROR, "Networking process asked to handle a push message from UI process in session %llu, but that session doesn't exist", buf, 0xCu);
  }

  v58 = *a6;
  *a6 = 0;
  (*(*v58 + 16))(v58, 0, a3 + 72);
  return (*(*v58 + 8))(v58);
}

uint64_t WebKit::NetworkProcess::processPushMessage(PAL::SessionID,WebKit::WebPushMessage &&,WebCore::PushPermissionState,BOOL,WTF::CompletionHandler<void ()(BOOL,std::optional<WebKit::WebPushMessage &&::NotificationPayload> &&)> &&)::$_1::~$_1(uint64_t a1, WTF::StringImpl *a2)
{
  v3 = *(a1 + 64);
  *(a1 + 64) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(a1 + 56);
  *(a1 + 56) = 0;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, a2);
  }

  if (!*(a1 + 48))
  {
    v5 = *(a1 + 32);
    *(a1 + 32) = 0;
    if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v5, a2);
    }

    v6 = *(a1 + 24);
    *(a1 + 24) = 0;
    if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v6, a2);
    }
  }

  *(a1 + 48) = -1;
  v7 = *(a1 + 8);
  *(a1 + 8) = 0;
  if (v7 && atomic_fetch_add(v7 + 36, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v7 + 36);
    (*(*v7 + 24))(v7);
  }

  return a1;
}

uint64_t WebKit::NetworkProcess::setPushAndNotificationsEnabledForOrigin(uint64_t a1, uint64_t a2, WebCore::SecurityOriginData *a3, char a4, uint64_t *a5)
{
  v13 = a2;
  v8 = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((a1 + 240), &v13);
  if (v8)
  {
    v9 = v8;
    ++*(v8 + 16);
    result = WebKit::NetworkNotificationManager::setPushAndNotificationsEnabledForOrigin(*(v8 + 1080), a3, a4, a5);
    v11 = *(v9 + 16);
    if (v11)
    {
      *(v9 + 16) = v11 - 1;
    }

    else
    {
      result = 290;
      __break(0xC471u);
    }
  }

  else
  {
    v12 = *a5;
    *a5 = 0;
    (*(*v12 + 16))(v12);
    return (*(*v12 + 8))(v12);
  }

  return result;
}

uint64_t WebKit::NetworkProcess::removePushSubscriptionsForOrigin(uint64_t a1, WTF::StringImpl *a2, uint64_t a3, uint64_t *a4)
{
  v19 = *MEMORY[0x1E69E9840];
  v16[0] = a2;
  v6 = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((a1 + 240), v16);
  if (!v6)
  {
    v15 = *a4;
    *a4 = 0;
    (*(*v15 + 16))(v15, 0);
    return (*(*v15 + 8))(v15);
  }

  v7 = v6;
  ++*(v6 + 16);
  v8 = *(v6 + 1080);
  LOBYTE(v16[0]) = 0;
  v18 = -1;
  LODWORD(v9) = *(a3 + 24);
  if (*(a3 + 24))
  {
    if (v9 == 255)
    {
      goto LABEL_9;
    }

    *v16 = *a3;
  }

  else
  {
    v10 = *a3;
    if (*a3)
    {
      atomic_fetch_add_explicit(v10, 2u, memory_order_relaxed);
    }

    v16[0] = v10;
    v9 = *(a3 + 8);
    if (v9)
    {
      atomic_fetch_add_explicit(v9, 2u, memory_order_relaxed);
    }

    v16[1] = v9;
    v17 = *(a3 + 16);
    LOBYTE(v9) = *(a3 + 24);
  }

  v18 = v9;
LABEL_9:
  result = WebKit::NetworkNotificationManager::removePushSubscriptionsForOrigin(v8, v16, a4);
  if (!v18)
  {
    v13 = v16[1];
    v16[1] = 0;
    if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v13, v12);
    }

    result = v16[0];
    v16[0] = 0;
    if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      result = WTF::StringImpl::destroy(result, v12);
    }
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

uint64_t WebKit::NetworkProcess::hasPushSubscriptionForTesting(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v14 = a2;
  v6 = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((a1 + 240), &v14);
  if (v6)
  {
    v7 = v6;
    ++*(v6 + 16);
    v8 = *(v6 + 1080);
    v9 = *a4;
    *a4 = 0;
    v10 = WTF::fastMalloc(0x10);
    *v10 = &unk_1F1102148;
    v10[1] = v9;
    v14 = v10;
    WebKit::NetworkNotificationManager::getPushSubscription(v8, a3, &v14);
    result = v14;
    v14 = 0;
    if (result)
    {
      result = (*(*result + 8))(result);
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

uint64_t WebKit::NetworkProcess::getAppBadgeForTesting(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v9 = a2;
  v4 = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((a1 + 240), &v9);
  if (v4)
  {
    v5 = v4;
    ++*(v4 + 16);
    result = WebKit::NetworkNotificationManager::getAppBadgeForTesting(*(v4 + 1080), a3);
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
    (*(*v8 + 16))(v8, 0, 0);
    return (*(*v8 + 8))(v8);
  }

  return result;
}

uint64_t WebKit::NetworkProcess::storePrivateClickMeasurement(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = a2;
  result = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((a1 + 240), &v7);
  if (result)
  {
    v5 = result;
    ++*(result + 16);
    result = WebKit::NetworkSession::storePrivateClickMeasurement(result, a3);
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

uint64_t WebKit::NetworkProcess::dumpPrivateClickMeasurement(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v10 = a2;
  v4 = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((a1 + 240), &v10);
  if (v4)
  {
    v5 = v4;
    ++*(v4 + 16);
    result = (*(**(v4 + 160) + 64))(*(v4 + 160), a3);
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
    v9 = 0;
    WTF::CompletionHandler<void ()(WTF::String)>::operator()(a3, &v9);
    result = v9;
    v9 = 0;
    if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v8);
    }
  }

  return result;
}

void WebKit::NetworkProcess::clearPrivateClickMeasurement(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v8 = a2;
  v4 = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((a1 + 240), &v8);
  if (v4)
  {
    v5 = v4;
    ++*(v4 + 16);
    WebKit::NetworkSession::clearPrivateClickMeasurement(v4);
    v6 = *(v5 + 16);
    if (v6)
    {
      *(v5 + 16) = v6 - 1;
    }

    else
    {
      __break(0xC471u);
    }
  }

  else
  {
    v7 = *a3;
    *a3 = 0;
    (*(*v7 + 16))(v7);
    (*(*v7 + 8))(v7);
  }
}

IPC::Connection *WebKit::NetworkProcess::allowsPrivateClickMeasurementTestFunctionality(IPC::Connection *this)
{
  if (this)
  {
    IPC::Connection::getAuditToken(this, &v1);
    if (v2)
    {
      return WTF::hasEntitlement();
    }

    else
    {
      return 0;
    }
  }

  return this;
}

uint64_t WebKit::NetworkProcess::setPrivateClickMeasurementOverrideTimerForTesting(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (WebKit::NetworkProcess::allowsPrivateClickMeasurementTestFunctionality(*(a1 + 40)))
  {
    v15 = a2;
    v8 = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((a1 + 240), &v15);
    if (!v8)
    {
LABEL_5:
      v11 = *a4;
      *a4 = 0;
      (*(*v11 + 16))(v11);
      return (*(*v11 + 8))(v11);
    }

    v9 = v8;
    ++*(v8 + 16);
    (*(**(v8 + 160) + 72))(*(v8 + 160), a3);
    v10 = *(v9 + 16);
    if (v10)
    {
      *(v9 + 16) = v10 - 1;
      goto LABEL_5;
    }

    result = 290;
    __break(0xC471u);
  }

  else
  {
    v13 = *a4;
    *a4 = 0;
    (*(*v13 + 16))(v13);
    v14 = *(*v13 + 8);

    return v14(v13);
  }

  return result;
}

uint64_t WebKit::NetworkProcess::closePCMDatabase(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v9 = a2;
  v4 = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((a1 + 240), &v9);
  if (v4)
  {
    v5 = v4;
    ++*(v4 + 16);
    result = (*(**(v4 + 160) + 144))(*(v4 + 160), a3);
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

uint64_t WebKit::NetworkProcess::simulatePrivateClickMeasurementSessionRestart(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (WebKit::NetworkProcess::allowsPrivateClickMeasurementTestFunctionality(*(a1 + 40)))
  {
    v16 = a2;
    v6 = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((a1 + 240), &v16);
    if (v6)
    {
      v7 = v6;
      ++*(v6 + 16);
      WTF::WeakPtrFactory<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl>::initializeIfNeeded((v6 + 8), v6);
      v8 = *(v7 + 8);
      atomic_fetch_add(v8, 1u);
      v9 = *a3;
      *a3 = 0;
      v10 = WTF::fastMalloc(0x18);
      *v10 = &unk_1F1102170;
      v10[1] = v8;
      v10[2] = v9;
      v16 = v10;
      (*(**(v7 + 160) + 144))(*(v7 + 160), &v16);
      result = v16;
      v16 = 0;
      if (result)
      {
        result = (*(*result + 8))(result);
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
      v15 = *a3;
      *a3 = 0;
      (*(*v15 + 16))(v15);
      return (*(*v15 + 8))(v15);
    }
  }

  else
  {
    v13 = *a3;
    *a3 = 0;
    (*(*v13 + 16))(v13);
    v14 = *(*v13 + 8);

    return v14(v13);
  }

  return result;
}

uint64_t WebKit::NetworkProcess::markAttributedPrivateClickMeasurementsAsExpiredForTesting(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (WebKit::NetworkProcess::allowsPrivateClickMeasurementTestFunctionality(*(a1 + 40)))
  {
    v13 = a2;
    v6 = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((a1 + 240), &v13);
    if (v6)
    {
      v7 = v6;
      ++*(v6 + 16);
      result = (*(**(v6 + 160) + 112))(*(v6 + 160), a3);
      v9 = *(v7 + 16);
      if (v9)
      {
        *(v7 + 16) = v9 - 1;
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
  }

  else
  {
    v10 = *a3;
    *a3 = 0;
    (*(*v10 + 16))(v10);
    v11 = *(*v10 + 8);

    return v11(v10);
  }

  return result;
}

uint64_t WebKit::NetworkProcess::setPrivateClickMeasurementEphemeralMeasurementForTesting(uint64_t a1, uint64_t a2, char a3, uint64_t *a4)
{
  if (WebKit::NetworkProcess::allowsPrivateClickMeasurementTestFunctionality(*(a1 + 40)))
  {
    v14 = a2;
    v8 = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((a1 + 240), &v14);
    if (!v8)
    {
LABEL_5:
      v10 = *a4;
      *a4 = 0;
      (*(*v10 + 16))(v10);
      return (*(*v10 + 8))(v10);
    }

    v9 = *(v8 + 16);
    *(v8 + 496) = a3;
    *(v8 + 16) = v9 + 1;
    if (v9 != -1)
    {
      *(v8 + 16) = v9;
      goto LABEL_5;
    }

    result = 290;
    __break(0xC471u);
  }

  else
  {
    v12 = *a4;
    *a4 = 0;
    (*(*v12 + 16))(v12);
    v13 = *(*v12 + 8);

    return v13(v12);
  }

  return result;
}

uint64_t WebKit::NetworkProcess::setPrivateClickMeasurementTokenPublicKeyURLForTesting(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (WebKit::NetworkProcess::allowsPrivateClickMeasurementTestFunctionality(*(a1 + 40)))
  {
    v15 = a2;
    v8 = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((a1 + 240), &v15);
    if (!v8)
    {
LABEL_5:
      v11 = *a4;
      *a4 = 0;
      (*(*v11 + 16))(v11);
      return (*(*v11 + 8))(v11);
    }

    v9 = v8;
    ++*(v8 + 16);
    (*(**(v8 + 160) + 80))(*(v8 + 160), a3);
    v10 = *(v9 + 16);
    if (v10)
    {
      *(v9 + 16) = v10 - 1;
      goto LABEL_5;
    }

    result = 290;
    __break(0xC471u);
  }

  else
  {
    v13 = *a4;
    *a4 = 0;
    (*(*v13 + 16))(v13);
    v14 = *(*v13 + 8);

    return v14(v13);
  }

  return result;
}

uint64_t WebKit::NetworkProcess::setPrivateClickMeasurementTokenSignatureURLForTesting(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (WebKit::NetworkProcess::allowsPrivateClickMeasurementTestFunctionality(*(a1 + 40)))
  {
    v15 = a2;
    v8 = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((a1 + 240), &v15);
    if (!v8)
    {
LABEL_5:
      v11 = *a4;
      *a4 = 0;
      (*(*v11 + 16))(v11);
      return (*(*v11 + 8))(v11);
    }

    v9 = v8;
    ++*(v8 + 16);
    (*(**(v8 + 160) + 88))(*(v8 + 160), a3);
    v10 = *(v9 + 16);
    if (v10)
    {
      *(v9 + 16) = v10 - 1;
      goto LABEL_5;
    }

    result = 290;
    __break(0xC471u);
  }

  else
  {
    v13 = *a4;
    *a4 = 0;
    (*(*v13 + 16))(v13);
    v14 = *(*v13 + 8);

    return v14(v13);
  }

  return result;
}

uint64_t WebKit::NetworkProcess::setPrivateClickMeasurementAttributionReportURLsForTesting(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  if (WebKit::NetworkProcess::allowsPrivateClickMeasurementTestFunctionality(*(a1 + 40)))
  {
    v17 = a2;
    v10 = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((a1 + 240), &v17);
    if (!v10)
    {
LABEL_5:
      v13 = *a5;
      *a5 = 0;
      (*(*v13 + 16))(v13);
      return (*(*v13 + 8))(v13);
    }

    v11 = v10;
    ++*(v10 + 16);
    (*(**(v10 + 160) + 96))(*(v10 + 160), a3, a4);
    v12 = *(v11 + 16);
    if (v12)
    {
      *(v11 + 16) = v12 - 1;
      goto LABEL_5;
    }

    result = 290;
    __break(0xC471u);
  }

  else
  {
    v15 = *a5;
    *a5 = 0;
    (*(*v15 + 16))(v15);
    v16 = *(*v15 + 8);

    return v16(v15);
  }

  return result;
}

uint64_t WebKit::NetworkProcess::markPrivateClickMeasurementsAsExpiredForTesting(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (WebKit::NetworkProcess::allowsPrivateClickMeasurementTestFunctionality(*(a1 + 40)))
  {
    v13 = a2;
    v6 = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((a1 + 240), &v13);
    if (!v6)
    {
LABEL_5:
      v9 = *a3;
      *a3 = 0;
      (*(*v9 + 16))(v9);
      return (*(*v9 + 8))(v9);
    }

    v7 = v6;
    ++*(v6 + 16);
    (*(**(v6 + 160) + 104))(*(v6 + 160));
    v8 = *(v7 + 16);
    if (v8)
    {
      *(v7 + 16) = v8 - 1;
      goto LABEL_5;
    }

    result = 290;
    __break(0xC471u);
  }

  else
  {
    v11 = *a3;
    *a3 = 0;
    (*(*v11 + 16))(v11);
    v12 = *(*v11 + 8);

    return v12(v11);
  }

  return result;
}

uint64_t WebKit::NetworkProcess::setPCMFraudPreventionValuesForTesting(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7)
{
  if (WebKit::NetworkProcess::allowsPrivateClickMeasurementTestFunctionality(*(a1 + 40)))
  {
    v21 = a2;
    v14 = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((a1 + 240), &v21);
    if (!v14)
    {
LABEL_5:
      v17 = *a7;
      *a7 = 0;
      (*(*v17 + 16))(v17);
      return (*(*v17 + 8))(v17);
    }

    v15 = v14;
    ++*(v14 + 16);
    (*(**(v14 + 160) + 120))(*(v14 + 160), a3, a4, a5, a6);
    v16 = *(v15 + 16);
    if (v16)
    {
      *(v15 + 16) = v16 - 1;
      goto LABEL_5;
    }

    result = 290;
    __break(0xC471u);
  }

  else
  {
    v19 = *a7;
    *a7 = 0;
    (*(*v19 + 16))(v19);
    v20 = *(*v19 + 8);

    return v20(v19);
  }

  return result;
}

uint64_t WebKit::NetworkProcess::setPrivateClickMeasurementAppBundleIDForTesting(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (WebKit::NetworkProcess::allowsPrivateClickMeasurementTestFunctionality(*(a1 + 40)))
  {
    v15 = a2;
    v8 = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((a1 + 240), &v15);
    if (!v8)
    {
LABEL_5:
      v11 = *a4;
      *a4 = 0;
      (*(*v11 + 16))(v11);
      return (*(*v11 + 8))(v11);
    }

    v9 = v8;
    ++*(v8 + 4);
    WebKit::NetworkSession::setPrivateClickMeasurementAppBundleIDForTesting(v8, a3);
    v10 = *(v9 + 4);
    if (v10)
    {
      *(v9 + 4) = v10 - 1;
      goto LABEL_5;
    }

    result = 290;
    __break(0xC471u);
  }

  else
  {
    v13 = *a4;
    *a4 = 0;
    (*(*v13 + 16))(v13);
    v14 = *(*v13 + 8);

    return v14(v13);
  }

  return result;
}

uint64_t WebKit::NetworkProcess::addKeptAliveLoad(uint64_t a1, void *a2)
{
  v6[0] = *(*(*a2 + 4144) + 96);
  result = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((a1 + 240), v6);
  if (result)
  {
    v4 = result;
    ++*(result + 16);
    result = WTF::HashTable<WTF::Ref<WebKit::NetworkResourceLoader,WTF::RawPtrTraits<WebKit::NetworkResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::NetworkResourceLoader>>,WTF::Ref<WebKit::NetworkResourceLoader,WTF::RawPtrTraits<WebKit::NetworkResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::NetworkResourceLoader>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::Ref<WebKit::NetworkResourceLoader,WTF::RawPtrTraits<WebKit::NetworkResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::NetworkResourceLoader>>>,WTF::HashTraits<WTF::Ref<WebKit::NetworkResourceLoader,WTF::RawPtrTraits<WebKit::NetworkResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::NetworkResourceLoader>>>,WTF::HashTraits<WTF::Ref<WebKit::NetworkResourceLoader,WTF::RawPtrTraits<WebKit::NetworkResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::NetworkResourceLoader>>>,WTF::FastMalloc>::add<(WTF::ShouldValidateKey)1>((result + 504), a2, v6);
    v5 = *(v4 + 16);
    if (v5)
    {
      *(v4 + 16) = v5 - 1;
    }

    else
    {
      result = 290;
      __break(0xC471u);
    }
  }

  return result;
}

uint64_t WebKit::NetworkProcess::removeKeptAliveLoad(WebKit::NetworkProcess *this, WebKit::NetworkResourceLoader *a2)
{
  v6 = *(*(a2 + 518) + 96);
  result = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>(this + 30, &v6);
  if (result)
  {
    v4 = result;
    ++*(result + 16);
    result = WebKit::NetworkSession::removeKeptAliveLoad(result, a2);
    v5 = *(v4 + 16);
    if (v5)
    {
      *(v4 + 16) = v5 - 1;
    }

    else
    {
      result = 290;
      __break(0xC471u);
    }
  }

  return result;
}

uint64_t WebKit::NetworkProcess::connectionToWebProcessClosed(uint64_t a1, atomic_ullong *a2, uint64_t a3)
{
  v7 = a3;
  result = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((a1 + 240), &v7);
  if (result)
  {
    v5 = result;
    ++*(result + 16);
    result = WebKit::NetworkStorageManager::stopReceivingMessageFromConnection(*(result + 1048), a2);
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

_DWORD *WebKit::NetworkProcess::protectedWebProcessConnection@<X0>(WebKit::NetworkProcess *this@<X0>, const IPC::Connection *a2@<X1>, void *a3@<X8>)
{
  result = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::GPUConnectionToWebProcess,WTF::RawPtrTraits<WebKit::GPUConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::GPUConnectionToWebProcess>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::GPUConnectionToWebProcess,WTF::RawPtrTraits<WebKit::GPUConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::GPUConnectionToWebProcess>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::GPUConnectionToWebProcess,WTF::RawPtrTraits<WebKit::GPUConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::GPUConnectionToWebProcess>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::GPUConnectionToWebProcess,WTF::RawPtrTraits<WebKit::GPUConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::GPUConnectionToWebProcess>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::begin(this + 19);
  v7 = result;
  v9 = v8;
  v10 = *(this + 19);
  if (v10)
  {
    v11 = (v10 + 16 * *(v10 - 4));
  }

  else
  {
    v11 = 0;
  }

  if (v11 == result)
  {
LABEL_12:
    *a3 = 0;
  }

  else
  {
    while (1)
    {
      result = v7[1];
      v12 = result[5];
      result[5] = v12 + 1;
      if (*(*(result + 10) + 24) == *(a2 + 3))
      {
        break;
      }

      if (v12)
      {
        result[5] = v12;
      }

      else
      {
        result = (*(*result + 8))(result);
      }

      do
      {
        v7 += 2;
      }

      while (v7 != v9 && (*v7 + 1) <= 1);
      if (v7 == v11)
      {
        goto LABEL_12;
      }
    }

    result[5] = v12 + 2;
    *a3 = result;
    if (v12 == -1)
    {
      v13 = *(*result + 8);

      return v13();
    }

    else
    {
      result[5] = v12 + 1;
    }
  }

  return result;
}

uint64_t WebKit::NetworkProcess::setServiceWorkerFetchTimeoutForTesting(uint64_t a1, uint64_t *a2, double a3)
{
  *(a1 + 352) = a3;
  v3 = *a2;
  *a2 = 0;
  (*(*v3 + 16))(v3);
  v4 = *(*v3 + 8);

  return v4(v3);
}

uint64_t WebKit::NetworkProcess::resetServiceWorkerFetchTimeoutForTesting(uint64_t a1, uint64_t *a2)
{
  *(a1 + 352) = 0x4051800000000000;
  v2 = *a2;
  *a2 = 0;
  (*(*v2 + 16))(v2);
  v3 = *(*v2 + 8);

  return v3(v2);
}

uint64_t WebKit::NetworkProcess::terminateIdleServiceWorkers(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v8 = a2;
  v4 = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkConnectionToWebProcess,WTF::RawPtrTraits<WebKit::NetworkConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::NetworkConnectionToWebProcess>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkConnectionToWebProcess,WTF::RawPtrTraits<WebKit::NetworkConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::NetworkConnectionToWebProcess>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkConnectionToWebProcess,WTF::RawPtrTraits<WebKit::NetworkConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::NetworkConnectionToWebProcess>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::NetworkConnectionToWebProcess,WTF::RawPtrTraits<WebKit::NetworkConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::NetworkConnectionToWebProcess>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::lookup<WTF::HashMapTranslatorAdapter<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkConnectionToWebProcess,WTF::RawPtrTraits<WebKit::NetworkConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::NetworkConnectionToWebProcess>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::NetworkConnectionToWebProcess,WTF::RawPtrTraits<WebKit::NetworkConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::NetworkConnectionToWebProcess>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkConnectionToWebProcess,WTF::RawPtrTraits<WebKit::NetworkConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::NetworkConnectionToWebProcess>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::NetworkConnectionToWebProcess,WTF::RawPtrTraits<WebKit::NetworkConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::NetworkConnectionToWebProcess>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>( (a1 + 152),  &v8);
  if (v4)
  {
    v7 = *(v4 + 8);
    if (v7)
    {
      ++v7[5];
      WebKit::NetworkConnectionToWebProcess::terminateIdleServiceWorkers(v7);
      if (v7[5] == 1)
      {
        (*(*v7 + 8))(v7);
      }

      else
      {
        --v7[5];
      }
    }
  }

  v5 = *a3;
  *a3 = 0;
  (*(*v5 + 16))(v5);
  return (*(*v5 + 8))(v5);
}

uint64_t WebKit::NetworkProcess::hasAppBoundSession(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v11 = a2;
  v4 = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((a1 + 240), &v11);
  if (!v4)
  {
    v8 = 0;
    goto LABEL_4;
  }

  v5 = v4;
  ++v4[4];
  v6 = (*(*v4 + 168))(v4);
  v7 = v5[4];
  if (v7)
  {
    v8 = v6;
    v5[4] = v7 - 1;
LABEL_4:
    v9 = *a3;
    *a3 = 0;
    (*(*v9 + 16))(v9, v8);
    return (*(*v9 + 8))(v9);
  }

  result = 290;
  __break(0xC471u);
  return result;
}

uint64_t WebKit::NetworkProcess::clearAppBoundSession(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v10 = a2;
  v4 = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((a1 + 240), &v10);
  if (v4)
  {
    v5 = v4;
    ++v4[4];
    (*(*v4 + 176))(v4);
    v6 = *a3;
    *a3 = 0;
    (*(*v6 + 16))(v6);
    result = (*(*v6 + 8))(v6);
    v8 = v5[4];
    if (v8)
    {
      v5[4] = v8 - 1;
    }

    else
    {
      result = 290;
      __break(0xC471u);
    }
  }

  else
  {
    v9 = *a3;
    *a3 = 0;
    (*(*v9 + 16))(v9);
    return (*(*v9 + 8))(v9);
  }

  return result;
}

uint64_t WebKit::NetworkProcess::broadcastConsoleMessage(uint64_t a1, uint64_t a2, char a3, char a4, uint64_t a5)
{
  result = WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::begin((a1 + 152));
  v11 = result;
  v13 = v12;
  v14 = *(a1 + 152);
  if (v14)
  {
    v15 = (v14 + 16 * *(v14 - 4));
  }

  else
  {
    v15 = 0;
  }

  if (v15 != result)
  {
    do
    {
      v16 = v11[1];
      if (*(v16 + 96) == a2)
      {
        v17 = *(v16 + 80);
        v18[0] = a3;
        v18[1] = a4;
        v19 = a5;
        result = IPC::Connection::send<Messages::NetworkProcessConnection::BroadcastConsoleMessage>(v17, v18, 0, 0, 0);
      }

      do
      {
        v11 += 2;
      }

      while (v11 != v13 && (*v11 + 1) <= 1);
    }

    while (v11 != v15);
  }

  return result;
}

uint64_t WebKit::NetworkProcess::updateBundleIdentifier(WTF *a1, WTF *a2, uint64_t *a3)
{
  WTF::clearApplicationBundleIdentifierTestingOverride(a1);
  WTF::setApplicationBundleIdentifierOverride(a2, v5);
  v6 = *a3;
  *a3 = 0;
  (*(*v6 + 16))(v6);
  v7 = *(*v6 + 8);

  return v7(v6);
}

uint64_t WebKit::NetworkProcess::clearBundleIdentifier(WTF *a1, uint64_t *a2)
{
  WTF::clearApplicationBundleIdentifierTestingOverride(a1);
  v3 = *a2;
  *a2 = 0;
  (*(*v3 + 16))(v3);
  v4 = *(*v3 + 8);

  return v4(v3);
}

uint64_t WebKit::NetworkProcess::shouldDisableCORSForRequestTo(uint64_t a1, WTF::StringImpl *a2, const WTF::URL *a3, __n128 a4)
{
  if (a2 == -1)
  {
    goto LABEL_19;
  }

  if (!a2)
  {
    __break(0xC471u);
    JUMPOUT(0x19DC77184);
  }

  v4 = *(a1 + 360);
  if (!v4)
  {
LABEL_14:
    a4.n128_u64[0] = 0;
    v20 = a4;
    v21 = a4;
    WTF::Vector<WebCore::UserContentURLPattern,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v21, a2);
    goto LABEL_15;
  }

  v6 = *(v4 - 8);
  v7 = (a2 + ~(a2 << 32)) ^ ((a2 + ~(a2 << 32)) >> 22);
  v8 = 9 * ((v7 + ~(v7 << 13)) ^ ((v7 + ~(v7 << 13)) >> 8));
  v9 = (v8 ^ (v8 >> 15)) + ~((v8 ^ (v8 >> 15)) << 27);
  v10 = v6 & ((v9 >> 31) ^ v9);
  v11 = *(v4 + 24 * v10);
  if (v11 != a2)
  {
    v12 = 1;
    while (v11)
    {
      v10 = (v10 + v12) & v6;
      v11 = *(v4 + 24 * v10);
      ++v12;
      if (v11 == a2)
      {
        goto LABEL_8;
      }
    }

    goto LABEL_14;
  }

LABEL_8:
  v13 = v4 + 24 * v10;
  v14 = *(v13 + 20);
  v20.n128_u64[0] = 0;
  v20.n128_u32[2] = 0;
  v20.n128_u32[3] = v14;
  if (!v14)
  {
LABEL_15:
    v17 = 0;
    goto LABEL_16;
  }

  if (v14 >> 27)
  {
LABEL_19:
    __break(0xC471u);
    JUMPOUT(0x19DC77164);
  }

  v15 = WTF::fastMalloc((32 * v14));
  v20.n128_u32[2] = v14;
  v20.n128_u64[0] = v15;
  WTF::VectorCopier<false,WebCore::UserContentURLPattern>::uninitializedCopy<WebCore::UserContentURLPattern>(*(v13 + 8), *(v13 + 8) + 32 * *(v13 + 20), v15);
  v16 = 32 * v14 - 32;
  do
  {
    v17 = WebCore::UserContentURLPattern::matches<WTF::URL>(v15, a3);
    if (v17)
    {
      break;
    }

    v15 = (v15 + 32);
    v18 = v16;
    v16 -= 32;
  }

  while (v18);
LABEL_16:
  WTF::Vector<WebCore::UserContentURLPattern,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v20, a2);
  return v17;
}

unsigned int *WebKit::NetworkProcess::setCORSDisablingPatterns(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13 = a3;
  v10[0] = a2;
  WTF::compactMap<0ul,WTF::CrashOnOverflow,16ul,WebKit::NetworkProcess::setCORSDisablingPatterns(WebKit::NetworkConnectionToWebProcess &,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)::$_0,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(&v11, a4, v10);
  WTF::Vector<WebCore::UserContentURLPattern,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity(&v11, v12);
  if (v12)
  {
    WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Vector<WebCore::UserContentURLPattern,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Vector<WebCore::UserContentURLPattern,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::inlineSet<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long> const&,WTF::Vector<WebCore::UserContentURLPattern,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(v10, (a1 + 360), &v13, &v11, v6);
  }

  else
  {
    v7 = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Vector<WebCore::UserContentURLPattern,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Vector<WebCore::UserContentURLPattern,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Vector<WebCore::UserContentURLPattern,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Vector<WebCore::UserContentURLPattern,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Vector<WebCore::UserContentURLPattern,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Vector<WebCore::UserContentURLPattern,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>((a1 + 360), a3);
    WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Vector<WebCore::UserContentURLPattern,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Vector<WebCore::UserContentURLPattern,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::remove((a1 + 360), v7);
  }

  return WTF::Vector<WebCore::UserContentURLPattern,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v11, v8);
}

void *WTF::compactMap<0ul,WTF::CrashOnOverflow,16ul,WebKit::NetworkProcess::setCORSDisablingPatterns(WebKit::NetworkConnectionToWebProcess &,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)::$_0,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(void *result, uint64_t a2, uint64_t a3)
{
  v5 = result;
  *result = 0;
  result[1] = 0;
  v6 = *(a2 + 12);
  if (v6)
  {
    if (v6 >> 27)
    {
      __break(0xC471u);
      return result;
    }

    v9 = WTF::fastMalloc((32 * v6));
    *(v5 + 8) = v6;
    *v5 = v9;
    v7 = *(a2 + 12);
  }

  else
  {
    v7 = 0;
  }

  v8 = *a2;

  return WTF::CompactMapper<WebKit::NetworkProcess::setCORSDisablingPatterns(WebKit::NetworkConnectionToWebProcess &,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)::$_0,WTF::Vector<WebCore::UserContentURLPattern,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,void>::compactMap(v5, v8, v7, a3);
}

uint64_t WebKit::NetworkProcess::appPrivacyReportTestingData(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v12 = a2;
  v4 = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((a1 + 240), &v12);
  if (v4)
  {
    v5 = v4;
    ++*(v4 + 16);
    v6 = *a3;
    *a3 = 0;
    (*(*v6 + 16))(v6, v4 + 1064);
    result = (*(*v6 + 8))(v6);
    v8 = *(v5 + 16);
    if (v8)
    {
      *(v5 + 16) = v8 - 1;
    }

    else
    {
      result = 290;
      __break(0xC471u);
    }
  }

  else
  {
    v10 = 0;
    v11 = 0;
    v9 = *a3;
    *a3 = 0;
    (*(*v9 + 16))(v9, &v10);
    return (*(*v9 + 8))(v9);
  }

  return result;
}

uint64_t WebKit::NetworkProcess::clearAppPrivacyReportTestingData(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v8 = a2;
  v4 = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((a1 + 240), &v8);
  if (!v4)
  {
    goto LABEL_4;
  }

  v5 = *(v4 + 16);
  *(v4 + 1064) = 0;
  *(v4 + 1066) = 0;
  *(v4 + 16) = v5 + 1;
  if (v5 != -1)
  {
    *(v4 + 16) = v5;
LABEL_4:
    v6 = *a3;
    *a3 = 0;
    (*(*v6 + 16))(v6);
    return (*(*v6 + 8))(v6);
  }

  result = 290;
  __break(0xC471u);
  return result;
}

void *WebKit::NetworkProcess::rtcDataChannelProxy(WebKit::NetworkProcess *this)
{
  v1 = *(this + 39);
  if (!v1)
  {
    v1 = WTF::fastMalloc(0x20);
    *v1 = &unk_1F10EBE48;
    v1[1] = 3;
    WTF::WorkQueue::create();
    v1[3] = 0;
    v4 = *(this + 39);
    *(this + 39) = v1;
    if (v4)
    {
      WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref((v4 + 8), v3);
      return *(this + 39);
    }
  }

  return v1;
}

void *WebKit::NetworkProcess::protectedRTCDataChannelProxy@<X0>(WebKit::NetworkProcess *this@<X0>, void *a2@<X8>)
{
  result = WebKit::NetworkProcess::rtcDataChannelProxy(this);
  v4 = result;
  while (1)
  {
    v5 = result[1];
    if ((v5 & 1) == 0)
    {
      break;
    }

    v6 = result[1];
    atomic_compare_exchange_strong_explicit(result + 1, &v6, v5 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v6 == v5)
    {
      goto LABEL_6;
    }
  }

  result = WTF::ThreadSafeWeakPtrControlBlock::strongRef(result[1]);
LABEL_6:
  *a2 = v4;
  return result;
}

uint64_t WebKit::NetworkProcess::addWebPageNetworkParameters(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = a2;
  result = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((a1 + 240), &v9);
  if (result)
  {
    v7 = result;
    ++*(result + 16);
    result = (*(*result + 248))(result, a3, a4);
    v8 = *(v7 + 16);
    if (v8)
    {
      *(v7 + 16) = v8 - 1;
    }

    else
    {
      result = 290;
      __break(0xC471u);
    }
  }

  return result;
}

uint64_t WebKit::NetworkProcess::countNonDefaultSessionSets(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v10 = a2;
  v4 = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((a1 + 240), &v10);
  v5 = v4;
  if (v4)
  {
    ++v4[4];
    v6 = (*(*v4 + 264))(v4);
  }

  else
  {
    v6 = 0;
  }

  v7 = *a3;
  *a3 = 0;
  (*(*v7 + 16))(v7, v6);
  result = (*(*v7 + 8))(v7);
  if (v5)
  {
    v9 = v5[4];
    if (v9)
    {
      v5[4] = v9 - 1;
    }

    else
    {
      result = 290;
      __break(0xC471u);
    }
  }

  return result;
}

uint64_t WebKit::NetworkProcess::allowFilesAccessFromWebProcess(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v14 = a2;
  v6 = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkConnectionToWebProcess,WTF::RawPtrTraits<WebKit::NetworkConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::NetworkConnectionToWebProcess>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkConnectionToWebProcess,WTF::RawPtrTraits<WebKit::NetworkConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::NetworkConnectionToWebProcess>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkConnectionToWebProcess,WTF::RawPtrTraits<WebKit::NetworkConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::NetworkConnectionToWebProcess>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::NetworkConnectionToWebProcess,WTF::RawPtrTraits<WebKit::NetworkConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::NetworkConnectionToWebProcess>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::lookup<WTF::HashMapTranslatorAdapter<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkConnectionToWebProcess,WTF::RawPtrTraits<WebKit::NetworkConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::NetworkConnectionToWebProcess>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::NetworkConnectionToWebProcess,WTF::RawPtrTraits<WebKit::NetworkConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::NetworkConnectionToWebProcess>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkConnectionToWebProcess,WTF::RawPtrTraits<WebKit::NetworkConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::NetworkConnectionToWebProcess>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::NetworkConnectionToWebProcess,WTF::RawPtrTraits<WebKit::NetworkConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::NetworkConnectionToWebProcess>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>( (a1 + 152),  &v14);
  if (v6)
  {
    v9 = *(v6 + 8);
    if (v9)
    {
      v10 = *(v9 + 5);
      *(v9 + 5) = v10 + 1;
      v11 = *(a3 + 12);
      if (v11)
      {
        v12 = *a3;
        v13 = 8 * v11;
        do
        {
          WebKit::NetworkConnectionToWebProcess::allowAccessToFile(v9, v12);
          v12 = (v12 + 8);
          v13 -= 8;
        }

        while (v13);
        v10 = *(v9 + 5) - 1;
      }

      if (v10)
      {
        *(v9 + 5) = v10;
      }

      else
      {
        (*(*v9 + 8))(v9);
      }
    }
  }

  v7 = *a4;
  *a4 = 0;
  (*(*v7 + 16))(v7);
  return (*(*v7 + 8))(v7);
}

uint64_t WebKit::NetworkProcess::allowFileAccessFromWebProcess(uint64_t a1, uint64_t a2, const WTF::String *a3, uint64_t *a4)
{
  v10 = a2;
  v6 = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkConnectionToWebProcess,WTF::RawPtrTraits<WebKit::NetworkConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::NetworkConnectionToWebProcess>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkConnectionToWebProcess,WTF::RawPtrTraits<WebKit::NetworkConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::NetworkConnectionToWebProcess>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkConnectionToWebProcess,WTF::RawPtrTraits<WebKit::NetworkConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::NetworkConnectionToWebProcess>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::NetworkConnectionToWebProcess,WTF::RawPtrTraits<WebKit::NetworkConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::NetworkConnectionToWebProcess>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::lookup<WTF::HashMapTranslatorAdapter<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkConnectionToWebProcess,WTF::RawPtrTraits<WebKit::NetworkConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::NetworkConnectionToWebProcess>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::NetworkConnectionToWebProcess,WTF::RawPtrTraits<WebKit::NetworkConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::NetworkConnectionToWebProcess>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkConnectionToWebProcess,WTF::RawPtrTraits<WebKit::NetworkConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::NetworkConnectionToWebProcess>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::NetworkConnectionToWebProcess,WTF::RawPtrTraits<WebKit::NetworkConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::NetworkConnectionToWebProcess>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>( (a1 + 152),  &v10);
  if (v6)
  {
    v9 = *(v6 + 8);
    if (v9)
    {
      ++*(v9 + 5);
      WebKit::NetworkConnectionToWebProcess::allowAccessToFile(v9, a3);
      if (*(v9 + 5) == 1)
      {
        (*(*v9 + 8))(v9);
      }

      else
      {
        --*(v9 + 5);
      }
    }
  }

  v7 = *a4;
  *a4 = 0;
  (*(*v7 + 16))(v7);
  return (*(*v7 + 8))(v7);
}

atomic_ullong *WebKit::NetworkProcess::requestBackgroundFetchPermission(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v9 = a2;
  WebKit::AuxiliaryProcess::protectedParentProcessConnection(a1, &v8);
  v7[0] = &v9;
  v7[1] = a3;
  IPC::Connection::sendWithAsyncReply<Messages::NetworkProcessProxy::RequestBackgroundFetchPermission,WTF::CompletionHandler<void ()(BOOL)>>(v8, v7, a4, 0, 0);
  result = v8;
  v8 = 0;
  if (result)
  {
    return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(result);
  }

  return result;
}

uint64_t IPC::Connection::sendWithAsyncReply<Messages::NetworkProcessProxy::RequestBackgroundFetchPermission,WTF::CompletionHandler<void ()(BOOL)>>(uint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4, char a5)
{
  v9 = *a3;
  *a3 = 0;
  v10 = WTF::fastMalloc(0x10);
  *v10 = &unk_1F1102198;
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
    *v14 = 554;
    *(v14 + 2) = 0;
    *(v14 + 3) = 0;
    *(v14 + 1) = a4;
    *(v14 + 68) = 0;
    *(v14 + 70) = 0;
    *(v14 + 69) = 0;
    IPC::Encoder::encodeHeader(v14);
    v23 = v14;
    IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v14, **a2);
    IPC::ArgumentCoder<WebCore::ClientOrigin,void>::encode(v14, *(a2 + 8));
    v22[0] = v11;
    v22[1] = IdentifierInternal;
    v16 = IPC::Connection::sendMessageWithAsyncReply(a1, &v23, v22, a5, 0);
    v17 = v22[0];
    v22[0] = 0;
    if (v17)
    {
      (*(*v17 + 8))(v17);
    }

    v18 = v23;
    v23 = 0;
    if (v18)
    {
      IPC::Encoder::~Encoder(v18, v15);
      bmalloc::api::tzoneFree(v20, v21);
    }

    if (v16)
    {
      return 0;
    }

    else
    {
      return IdentifierInternal;
    }
  }

  return result;
}

uint64_t WebKit::NetworkProcess::setInspectionForServiceWorkersAllowed(uint64_t a1, uint64_t a2, int a3)
{
  v7 = a2;
  result = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((a1 + 240), &v7);
  if (result)
  {
    v5 = result;
    ++*(result + 16);
    result = WebKit::NetworkSession::setInspectionForServiceWorkersAllowed(result, a3);
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

uint64_t WebKit::NetworkProcess::setStorageSiteValidationEnabled(uint64_t a1, uint64_t a2, char a3)
{
  v7 = a2;
  result = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((a1 + 240), &v7);
  if (result)
  {
    v5 = result;
    ++*(result + 16);
    result = WebKit::NetworkStorageManager::setStorageSiteValidationEnabled(*(result + 1048), a3);
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

uint64_t WebKit::NetworkProcess::setPersistedDomains(uint64_t a1, uint64_t a2, WTF::StringImpl *a3)
{
  v8 = a2;
  result = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((a1 + 240), &v8);
  if (result)
  {
    v6 = result;
    ++*(result + 16);
    result = WebKit::NetworkSession::setPersistedDomains(result, a3, v5);
    v7 = *(v6 + 16);
    if (v7)
    {
      *(v6 + 16) = v7 - 1;
    }

    else
    {
      result = 290;
      __break(0xC471u);
    }
  }

  return result;
}

uint64_t WebKit::NetworkProcess::fetchLocalStorage(uint64_t a1, mpark *a2, uint64_t *a3)
{
  v10 = a2;
  v4 = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((a1 + 240), &v10);
  if (v4)
  {
    v5 = v4;
    ++*(v4 + 16);
    result = WebKit::NetworkStorageManager::fetchLocalStorage(*(v4 + 1048), a3);
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
    LOBYTE(v10) = 0;
    v11 = 0;
    v8 = *a3;
    *a3 = 0;
    (*(*v8 + 16))(v8, &v10);
    result = (*(*v8 + 8))(v8);
    if (v11 == 1)
    {
      result = v10;
      if (v10)
      {
        return WTF::HashTable<WebCore::ClientOrigin,WTF::KeyValuePair<WebCore::ClientOrigin,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ClientOrigin,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashMap<WebCore::ClientOrigin,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::HashTraits<WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ClientOrigin>,WTF::FastMalloc>::deallocateTable(v10, v9);
      }
    }
  }

  return result;
}

uint64_t WebKit::NetworkProcess::restoreLocalStorage(uint64_t a1, uint64_t a2, uint64_t *a3, mpark **a4)
{
  v11 = a2;
  v6 = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((a1 + 240), &v11);
  if (v6)
  {
    v7 = v6;
    ++*(v6 + 16);
    result = WebKit::NetworkStorageManager::restoreLocalStorage(*(v6 + 1048), a3, a4);
    v9 = *(v7 + 16);
    if (v9)
    {
      *(v7 + 16) = v9 - 1;
    }

    else
    {
      result = 290;
      __break(0xC471u);
    }
  }

  else
  {
    v10 = *a4;
    *a4 = 0;
    (*(*v10 + 16))(v10, 0);
    return (*(*v10 + 8))(v10);
  }

  return result;
}

uint64_t WebKit::NetworkProcess::fetchSessionStorage(uint64_t a1, mpark *a2, uint64_t a3, uint64_t *a4)
{
  v12 = a2;
  v6 = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((a1 + 240), &v12);
  if (v6)
  {
    v7 = v6;
    ++*(v6 + 16);
    result = WebKit::NetworkStorageManager::fetchSessionStorageForWebPage(*(v6 + 1048), a3, a4);
    v9 = *(v7 + 16);
    if (v9)
    {
      *(v7 + 16) = v9 - 1;
    }

    else
    {
      result = 290;
      __break(0xC471u);
    }
  }

  else
  {
    LOBYTE(v12) = 0;
    v13 = 0;
    v10 = *a4;
    *a4 = 0;
    (*(*v10 + 16))(v10, &v12);
    result = (*(*v10 + 8))(v10);
    if (v13 == 1)
    {
      result = v12;
      if (v12)
      {
        return WTF::HashTable<WebCore::ClientOrigin,WTF::KeyValuePair<WebCore::ClientOrigin,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ClientOrigin,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashMap<WebCore::ClientOrigin,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::HashTraits<WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ClientOrigin>,WTF::FastMalloc>::deallocateTable(v12, v11);
      }
    }
  }

  return result;
}

uint64_t WebKit::NetworkProcess::restoreSessionStorage(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, mpark **a5)
{
  v13 = a2;
  v8 = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((a1 + 240), &v13);
  if (v8)
  {
    v9 = v8;
    ++*(v8 + 16);
    result = WebKit::NetworkStorageManager::restoreSessionStorageForWebPage(*(v8 + 1048), a3, a4, a5);
    v11 = *(v9 + 16);
    if (v11)
    {
      *(v9 + 16) = v11 - 1;
    }

    else
    {
      result = 290;
      __break(0xC471u);
    }
  }

  else
  {
    v12 = *a5;
    *a5 = 0;
    (*(*v12 + 16))(v12, 0);
    return (*(*v12 + 8))(v12);
  }

  return result;
}

uint64_t WebKit::NetworkProcess::resetResourceMonitorThrottlerForTesting(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v9 = a2;
  v4 = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((a1 + 240), &v9);
  if (v4)
  {
    v5 = v4;
    ++*(v4 + 4);
    result = WebKit::NetworkSession::clearResourceMonitorThrottlerData(v4);
    v7 = *(v5 + 4);
    if (v7)
    {
      *(v5 + 4) = v7 - 1;
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

void *WebKit::NetworkProcessPlatformStrategies::createBlobRegistry(WebKit::NetworkProcessPlatformStrategies *this)
{
  if ((byte_1ED642589 & 1) == 0)
  {
    qword_1ED642590 = &unk_1F11021C0;
    byte_1ED642589 = 1;
  }

  return &qword_1ED642590;
}

void WebKit::NetworkOriginAccessPatterns::~NetworkOriginAccessPatterns(WebKit::NetworkOriginAccessPatterns *this, WTF::StringImpl *a2)
{
  WTF::Vector<WebCore::UserContentURLPattern,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(this + 2, a2);
}

{
  WTF::Vector<WebCore::UserContentURLPattern,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(this + 2, a2);

  bmalloc::api::tzoneFree(this, v3);
}

uint64_t WebKit::NetworkProcess::decrementCheckedPtrCount(uint64_t this)
{
  if (atomic_load((this + 16)))
  {
    atomic_fetch_add((this + 16), 0xFFFFFFFF);
  }

  else
  {
    this = 290;
    __break(0xC471u);
  }

  return this;
}

uint64_t non-virtual thunk toWebKit::NetworkProcess::deref(uint64_t this)
{
  if (atomic_fetch_add((this + 8), 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, (this + 8));
    return (*(*(this - 136) + 24))();
  }

  return this;
}

uint64_t non-virtual thunk toWebKit::NetworkProcess::decrementCheckedPtrCount(uint64_t this)
{
  if (atomic_load((this - 120)))
  {
    atomic_fetch_add((this - 120), 0xFFFFFFFF);
  }

  else
  {
    this = 290;
    __break(0xC471u);
  }

  return this;
}

uint64_t std::unique_ptr<WebCore::AsyncFileStream>::reset[abi:sn200100](uint64_t *a1)
{
  result = *a1;
  *a1 = 0;
  if (result)
  {
    v3 = MEMORY[0x19EB05DF0]();

    return bmalloc::api::tzoneFree(v3, v4);
  }

  return result;
}

uint64_t WebKit::NetworkLoadParameters::NetworkLoadParameters(uint64_t a1, __int128 *a2)
{
  v4 = *a2;
  *(a1 + 16) = *(a2 + 2);
  *a1 = v4;
  v5 = *(a2 + 3);
  *(a2 + 3) = 0;
  *(a1 + 24) = v5;
  v6 = *(a2 + 4);
  *(a2 + 4) = 0;
  *(a1 + 32) = v6;
  *(a1 + 40) = *(a2 + 10);
  WTF::URL::URL(a1 + 48, a2 + 6);
  WTF::URL::URL(a1 + 88, a2 + 11);
  *(a1 + 128) = *(a2 + 16);
  v7 = *(a2 + 17);
  *(a2 + 17) = 0;
  *(a1 + 136) = v7;
  *(a1 + 152) = 0;
  *(a1 + 144) = 0;
  WTF::VectorBuffer<unsigned char,0ul,WTF::FastMalloc>::adopt(a1 + 144, a2 + 18);
  *(a1 + 168) = 0;
  *(a1 + 160) = 0;
  WTF::VectorBuffer<unsigned char,0ul,WTF::FastMalloc>::adopt(a1 + 160, a2 + 20);
  *(a1 + 176) = 0;
  *(a1 + 184) = 0;
  WTF::VectorBuffer<WTF::String,0ul,WTF::FastMalloc>::adopt(a1 + 176, a2 + 44);
  v8 = *(a2 + 48);
  *(a1 + 196) = *(a2 + 196);
  *(a1 + 192) = v8;
  v9 = *(a2 + 25);
  *(a2 + 25) = 0;
  *(a1 + 200) = v9;
  v10 = *(a2 + 26);
  *(a2 + 26) = 0;
  *(a1 + 208) = v10;
  v11 = *(a2 + 27);
  *(a2 + 27) = 0;
  *(a1 + 216) = v11;
  v12 = *(a2 + 28);
  *(a1 + 232) = *(a2 + 232);
  *(a1 + 224) = v12;
  v13 = *(a2 + 30);
  *(a2 + 30) = 0;
  *(a1 + 240) = v13;
  LODWORD(v13) = *(a2 + 62);
  *(a1 + 251) = *(a2 + 251);
  *(a1 + 248) = v13;
  *(a1 + 256) = 0;
  *(a1 + 3168) = 0;
  if (*(a2 + 3168) == 1)
  {
    WebKit::NavigationActionData::NavigationActionData(a1 + 256, (a2 + 16));
    *(a1 + 3168) = 1;
  }

  *(a1 + 3184) = 0u;
  WTF::VectorBuffer<unsigned short,0ul,WTF::FastMalloc>::adopt(a1 + 3184, a2 + 796);
  *(a1 + 3200) = *(a2 + 3200);
  *(a1 + 3208) = 0;
  *(a1 + 3232) = 0;
  if (*(a2 + 3232) == 1)
  {
    v15 = *(a2 + 401);
    *(a1 + 3216) = *(a2 + 3216);
    *(a1 + 3208) = v15;
    v16 = *(a2 + 403);
    *(a1 + 3224) = v16;
    if (v16)
    {
      CFRetain(v16);
    }

    *(a1 + 3232) = 1;
  }

  *(a1 + 3240) = *(a2 + 3240);
  return a1;
}

const void **WTF::RetainPtr<NSURLRequest>::operator=(const void **a1, CFTypeRef *a2)
{
  v3 = *a2;
  if (*a2)
  {
    CFRetain(*a2);
  }

  v4 = *a1;
  *a1 = v3;
  if (v4)
  {
    CFRelease(v4);
  }

  return a1;
}

double WebCore::ContentSecurityPolicy::operator delete()
{
  v0 = MEMORY[0x19EB09310]();
  if (atomic_load(v0))
  {
    result = 0.0;
    *(v0 + 14) = 0u;
    *(v0 + 15) = 0u;
    *(v0 + 12) = 0u;
    *(v0 + 13) = 0u;
    *(v0 + 10) = 0u;
    *(v0 + 11) = 0u;
    *(v0 + 8) = 0u;
    *(v0 + 9) = 0u;
    *(v0 + 6) = 0u;
    *(v0 + 7) = 0u;
    *(v0 + 4) = 0u;
    *(v0 + 5) = 0u;
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

void mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<WebKit::NetworkLoadChecker::RedirectionTriplet,WebCore::ResourceError>,(mpark::detail::Trait)1> &>(uint64_t a1, WTF::StringImpl *a2)
{
  if (*(a1 + 664))
  {
    v3 = *(a1 + 64);
    *(a1 + 64) = 0;
    if (v3)
    {
      CFRelease(v3);
    }

    v4 = *(a1 + 48);
    *(a1 + 48) = 0;
    if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v4, a2);
    }

    v5 = *(a1 + 8);
    *(a1 + 8) = 0;
    if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v5, a2);
    }

    v6 = *a1;
    *a1 = 0;
    if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {

      WTF::StringImpl::destroy(v6, a2);
    }
  }

  else
  {
    v7 = *(a1 + 648);
    *(a1 + 648) = 0;
    if (v7)
    {
      CFRelease(v7);
    }

    WebCore::ResourceResponseBase::~ResourceResponseBase((a1 + 400), a2);
    WebCore::ResourceRequest::~ResourceRequest((a1 + 200));

    WebCore::ResourceRequest::~ResourceRequest(a1);
  }
}

uint64_t WebKit::NetworkLoadChecker::RedirectionTriplet::RedirectionTriplet(uint64_t a1, uint64_t a2)
{
  WTF::URL::URL(a1, a2);
  WTF::URL::URL(v4 + 40, (a2 + 40));
  *(a1 + 80) = *(a2 + 80);
  v5 = *(a2 + 88);
  *(a2 + 88) = 0;
  *(a1 + 88) = v5;
  *(a1 + 104) = 0;
  *(a1 + 96) = 0;
  WTF::VectorBuffer<unsigned char,0ul,WTF::FastMalloc>::adopt(a1 + 96, (a2 + 96));
  *(a1 + 120) = 0;
  *(a1 + 112) = 0;
  WTF::VectorBuffer<unsigned char,0ul,WTF::FastMalloc>::adopt(a1 + 112, (a2 + 112));
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  WTF::VectorBuffer<WTF::String,0ul,WTF::FastMalloc>::adopt(a1 + 128, (a2 + 128));
  v6 = *(a2 + 144);
  *(a1 + 148) = *(a2 + 148);
  *(a1 + 144) = v6;
  v7 = *(a2 + 152);
  *(a2 + 152) = 0;
  *(a1 + 152) = v7;
  v8 = *(a2 + 160);
  *(a2 + 160) = 0;
  *(a1 + 160) = v8;
  v9 = *(a2 + 168);
  *(a2 + 168) = 0;
  *(a1 + 168) = v9;
  v10 = *(a2 + 176);
  *(a1 + 184) = *(a2 + 184);
  *(a1 + 176) = v10;
  v11 = *(a2 + 192);
  *(a2 + 192) = 0;
  *(a1 + 192) = v11;
  WTF::URL::URL(a1 + 200, (a2 + 200));
  WTF::URL::URL(a1 + 240, (a2 + 240));
  *(a1 + 280) = *(a2 + 280);
  v12 = *(a2 + 288);
  *(a2 + 288) = 0;
  *(a1 + 296) = 0;
  *(a1 + 304) = 0;
  *(a1 + 288) = v12;
  WTF::VectorBuffer<unsigned char,0ul,WTF::FastMalloc>::adopt(a1 + 296, (a2 + 296));
  *(a1 + 312) = 0;
  *(a1 + 320) = 0;
  WTF::VectorBuffer<unsigned char,0ul,WTF::FastMalloc>::adopt(a1 + 312, (a2 + 312));
  *(a1 + 328) = 0;
  *(a1 + 336) = 0;
  WTF::VectorBuffer<WTF::String,0ul,WTF::FastMalloc>::adopt(a1 + 328, (a2 + 328));
  v13 = *(a2 + 344);
  *(a1 + 348) = *(a2 + 348);
  *(a1 + 344) = v13;
  v14 = *(a2 + 352);
  *(a2 + 352) = 0;
  *(a1 + 352) = v14;
  v15 = *(a2 + 360);
  *(a2 + 360) = 0;
  *(a1 + 360) = v15;
  v16 = *(a2 + 368);
  *(a2 + 368) = 0;
  *(a1 + 368) = v16;
  v17 = *(a2 + 376);
  *(a1 + 384) = *(a2 + 384);
  *(a1 + 376) = v17;
  v18 = *(a2 + 392);
  *(a2 + 392) = 0;
  *(a1 + 392) = v18;
  WTF::URL::URL(a1 + 400, (a2 + 400));
  v19 = *(a2 + 440);
  v20 = *(a2 + 448);
  *(a2 + 440) = 0;
  *(a1 + 440) = v19;
  *(a1 + 448) = v20;
  v21 = *(a2 + 456);
  *(a2 + 456) = 0;
  *(a1 + 456) = v21;
  v22 = *(a2 + 464);
  *(a2 + 464) = 0;
  *(a1 + 464) = v22;
  v23 = *(a2 + 472);
  *(a2 + 472) = 0;
  *(a1 + 480) = 0;
  *(a1 + 488) = 0;
  *(a1 + 472) = v23;
  WTF::VectorBuffer<unsigned char,0ul,WTF::FastMalloc>::adopt(a1 + 480, (a2 + 480));
  *(a1 + 496) = 0;
  *(a1 + 504) = 0;
  WTF::VectorBuffer<unsigned char,0ul,WTF::FastMalloc>::adopt(a1 + 496, (a2 + 496));
  v24 = *(a2 + 512);
  *(a2 + 512) = 0;
  *(a1 + 512) = v24;
  *(a1 + 520) = 0;
  *(a1 + 528) = 0;
  if (*(a2 + 528) == 1)
  {
    v33 = *(a2 + 520);
    *(a2 + 520) = 0;
    *(a1 + 520) = v33;
    *(a1 + 528) = 1;
  }

  v25 = *(a2 + 536);
  *(a1 + 538) = *(a2 + 538);
  *(a1 + 536) = v25;
  v26 = *(a2 + 544);
  *(a2 + 544) = 0;
  *(a1 + 544) = v26;
  v27 = *(a2 + 568);
  *(a1 + 552) = *(a2 + 552);
  *(a1 + 568) = v27;
  v28 = *(a2 + 584);
  v29 = *(a2 + 600);
  v30 = *(a2 + 616);
  *(a1 + 627) = *(a2 + 627);
  *(a1 + 600) = v29;
  *(a1 + 616) = v30;
  *(a1 + 584) = v28;
  v31 = *(a2 + 648);
  *(a2 + 648) = 0;
  *(a1 + 648) = v31;
  *(a1 + 656) = *(a2 + 656);
  return a1;
}

void WebKit::NetworkLoadChecker::RedirectionTriplet::~RedirectionTriplet(WebKit::NetworkLoadChecker::RedirectionTriplet *this, WTF::StringImpl *a2)
{
  v3 = *(this + 81);
  *(this + 81) = 0;
  if (v3)
  {
    CFRelease(v3);
  }

  WebCore::ResourceResponseBase::~ResourceResponseBase((this + 400), a2);
  WebCore::ResourceRequest::~ResourceRequest((this + 200));

  WebCore::ResourceRequest::~ResourceRequest(this);
}

WebCore::ResourceResponse *WebCore::ResourceResponse::ResourceResponse(WebCore::ResourceResponse *this, const WebCore::ResourceResponse *a2)
{
  v4 = *a2;
  if (*a2)
  {
    atomic_fetch_add_explicit(v4, 2u, memory_order_relaxed);
  }

  *this = v4;
  v5 = *(a2 + 8);
  *(this + 24) = *(a2 + 24);
  *(this + 8) = v5;
  v6 = *(a2 + 5);
  if (v6)
  {
    atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed);
  }

  *(this + 5) = v6;
  v7 = *(a2 + 7);
  *(this + 6) = *(a2 + 6);
  if (v7)
  {
    atomic_fetch_add_explicit(v7, 2u, memory_order_relaxed);
  }

  *(this + 7) = v7;
  v8 = *(a2 + 8);
  if (v8)
  {
    atomic_fetch_add_explicit(v8, 2u, memory_order_relaxed);
  }

  *(this + 8) = v8;
  v9 = *(a2 + 9);
  if (v9)
  {
    atomic_fetch_add_explicit(v9, 2u, memory_order_relaxed);
  }

  *(this + 9) = v9;
  WTF::Vector<WebCore::HTTPHeaderMap::CommonHeader,0ul,WTF::CrashOnOverflow,6ul,WTF::FastMalloc>::Vector(this + 80, a2 + 80);
  WTF::Vector<WebCore::HTTPHeaderMap::UncommonHeader,0ul,WTF::CrashOnOverflow,0ul,WTF::FastMalloc>::Vector(this + 96, a2 + 96);
  v10 = *(a2 + 14);
  if (v10)
  {
    atomic_fetch_add(v10, 1u);
  }

  *(this + 14) = v10;
  *(this + 120) = 0;
  *(this + 128) = 0;
  if (*(a2 + 128) == 1)
  {
    v19 = *(a2 + 15);
    *(this + 15) = v19;
    if (v19)
    {
      CFRetain(v19);
    }

    *(this + 128) = 1;
  }

  v11 = *(a2 + 68);
  *(this + 138) = *(a2 + 138);
  *(this + 68) = v11;
  v12 = *(a2 + 18);
  if (v12)
  {
    atomic_fetch_add_explicit(v12, 2u, memory_order_relaxed);
  }

  *(this + 18) = v12;
  v13 = *(a2 + 152);
  *(this + 168) = *(a2 + 168);
  *(this + 152) = v13;
  v14 = *(a2 + 184);
  v15 = *(a2 + 200);
  v16 = *(a2 + 216);
  *(this + 227) = *(a2 + 227);
  *(this + 216) = v16;
  *(this + 200) = v15;
  *(this + 184) = v14;
  v17 = *(a2 + 31);
  *(this + 31) = v17;
  if (v17)
  {
    CFRetain(v17);
  }

  *(this + 256) = *(a2 + 256);
  return this;
}

__n128 WebKit::contextURLforCORPViolation(WebKit *this, WebKit::NetworkResourceLoader *a2)
{
  v3 = 3448;
  if (*(a2 + 251) == 1)
  {
    v3 = 3408;
  }

  v4 = a2 + v3;
  if ((*(a2 + v3 + 8) & 1) == 0)
  {
    v4 = WTF::aboutBlankURL(v4);
  }

  v5 = *v4;
  if (*v4)
  {
    atomic_fetch_add_explicit(v5, 2u, memory_order_relaxed);
  }

  *this = v5;
  *(this + 8) = *(v4 + 8);
  result = *(v4 + 24);
  *(this + 24) = result;
  return result;
}

WebCore::ResourceRequest *mpark::detail::assignment<mpark::detail::traits<WebCore::ResourceRequest,WebKit::NetworkLoadChecker::RedirectionTriplet,WebCore::ResourceError>>::~assignment(WTF::StringImpl **this, WTF::StringImpl *a2)
{
  v3 = *(this + 664);
  if (!*(this + 664))
  {
LABEL_2:
    WebCore::ResourceRequest::~ResourceRequest(this);
    goto LABEL_3;
  }

  if (v3 == 255)
  {
    goto LABEL_3;
  }

  if (v3 == 1)
  {
    v9 = this[81];
    this[81] = 0;
    if (v9)
    {
      CFRelease(v9);
    }

    WebCore::ResourceResponseBase::~ResourceResponseBase((this + 50), a2);
    WebCore::ResourceRequest::~ResourceRequest((this + 25));
    goto LABEL_2;
  }

  v5 = this[8];
  this[8] = 0;
  if (v5)
  {
    CFRelease(v5);
  }

  v6 = this[6];
  this[6] = 0;
  if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v6, a2);
  }

  v7 = this[1];
  this[1] = 0;
  if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v7, a2);
  }

  v8 = *this;
  *this = 0;
  if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v8, a2);
  }

LABEL_3:
  *(this + 664) = -1;
  return this;
}

uint64_t WebCore::ContentSecurityPolicy::operator new(WebCore::ContentSecurityPolicy *this, void *a2)
{
  if (this == 256 && *MEMORY[0x1E69E2658])
  {
    return bmalloc::api::tzoneAllocateNonCompact(*MEMORY[0x1E69E2658], a2);
  }

  else
  {
    return MEMORY[0x1EEE57CC0]();
  }
}

uint64_t WTF::WeakHashSet<WebKit::NetworkLoad,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::computeSize(uint64_t a1, void *a2)
{
  v3 = *a1;
  if (!*a1)
  {
    goto LABEL_19;
  }

  v4 = *(v3 - 4);
  if (!v4)
  {
    goto LABEL_10;
  }

  v5 = 0;
  v6 = (v3 + 8 * v4 - 8);
  do
  {
    if (*v6 + 1 >= 2 && !*(*v6 + 1))
    {
      WTF::hashTraitsDeleteBucket<WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>(v6, a2);
      ++v5;
    }

    --v6;
    --v4;
  }

  while (v4);
  v3 = *a1;
  if (!v5)
  {
    if (v3)
    {
      goto LABEL_10;
    }

LABEL_19:
    result = 0;
    *(a1 + 8) = 0;
    return result;
  }

  v12 = *(v3 - 12) - v5;
  *(v3 - 16) += v5;
  *(v3 - 12) = v12;
LABEL_10:
  v7 = *(v3 - 4);
  if (6 * *(v3 - 12) < v7 && v7 > 8)
  {
    WTF::HashTable<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::FastMalloc>::shrinkToBestSize(a1);
    v3 = *a1;
    *(a1 + 8) = 0;
    if (!v3)
    {
      result = 0;
      *(a1 + 12) = 0;
      return result;
    }
  }

  else
  {
    *(a1 + 8) = 0;
  }

  v9 = *(v3 - 12);
  if (v9 >= 0x7FFFFFFF)
  {
    v10 = -2;
  }

  else
  {
    v10 = 2 * v9;
  }

  *(a1 + 12) = v10;
  return *(v3 - 12);
}

unsigned int *_ZN3WTF7HashSetINS_3RefINS_18DefaultWeakPtrImplENS_12RawPtrTraitsIS2_EENS_21DefaultRefDerefTraitsIS2_EEEENS_11DefaultHashIS7_EENS_10HashTraitsIS7_EENS_15HashTableTraitsELNS_17ShouldValidateKeyE1EE8removeIfIZNS_11WeakHashSetIN6WebKit11NetworkLoadES2_LNS_32EnableWeakPtrThreadingAssertionsE1EE20removeNullReferencesEvEUlRT_E_EEbRKSL_(unsigned int *result, void *a2)
{
  v2 = *result;
  if (*result)
  {
    v3 = result;
    v4 = *(v2 - 4);
    if (v4)
    {
      v5 = 0;
      v6 = (v2 + 8 * v4 - 8);
      do
      {
        if (*v6 + 1 >= 2 && !*(*v6 + 1))
        {
          result = WTF::hashTraitsDeleteBucket<WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>(v6, a2);
          ++v5;
        }

        --v6;
        --v4;
      }

      while (v4);
      v2 = *v3;
      if (v5)
      {
        v10 = *(v2 - 12) - v5;
        *(v2 - 16) += v5;
        *(v2 - 12) = v10;
      }

      else if (!v2)
      {
        return result;
      }
    }

    v7 = 6 * *(v2 - 12);
    v8 = *(v2 - 4);
    if (v7 < v8 && v8 >= 9)
    {

      return WTF::HashTable<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::FastMalloc>::shrinkToBestSize(v3);
    }
  }

  return result;
}

uint64_t WTF::PtrHashBase<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,true>::hash(void *a1)
{
  v1 = ~(*a1 << 32) + *a1;
  v2 = 9 * (((v1 ^ (v1 >> 22)) + ~((v1 ^ (v1 >> 22)) << 13)) ^ (((v1 ^ (v1 >> 22)) + ~((v1 ^ (v1 >> 22)) << 13)) >> 8));
  v3 = (v2 ^ (v2 >> 15)) + ~((v2 ^ (v2 >> 15)) << 27);
  return (v3 >> 31) ^ v3;
}

void *WTF::ListHashSet<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>>::~ListHashSet(void *a1, void *a2)
{
  WTF::ListHashSet<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>>::deleteAllNodes(a1, a2);
  if (*a1)
  {
    WTF::fastFree((*a1 - 16), v3);
  }

  return a1;
}

uint64_t WTF::KeyValuePair<std::tuple<WTF::String,WTF::String>,WebKit::NetworkLoadScheduler::PendingMainResourcePreconnectInfo>::~KeyValuePair(uint64_t a1, void *a2)
{
  WTF::ListHashSet<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>>::~ListHashSet((a1 + 24), a2);
  v4 = *(a1 + 8);
  *(a1 + 8) = 0;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, v3);
  }

  v5 = *a1;
  *a1 = 0;
  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, v3);
  }

  return a1;
}

WTF::StringImpl ****std::unique_ptr<WTF::HashMap<WTF::String,std::unique_ptr<WebKit::NetworkLoadScheduler::HostContext>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkLoadScheduler::HostContext>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>::~unique_ptr[abi:sn200100](WTF::StringImpl ****a1, WebKit::NetworkLoad *a2)
{
  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    if (*v3)
    {
      WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,std::unique_ptr<WebKit::NetworkLoadScheduler::HostContext>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,std::unique_ptr<WebKit::NetworkLoadScheduler::HostContext>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,std::unique_ptr<WebKit::NetworkLoadScheduler::HostContext>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkLoadScheduler::HostContext>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(*v3, a2);
    }

    WTF::fastFree(v3, a2);
  }

  return a1;
}

uint64_t std::default_delete<WTF::HashMap<WTF::String,std::unique_ptr<WebKit::NetworkLoadScheduler::HostContext>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkLoadScheduler::HostContext>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>::operator()[abi:sn200100](WTF::StringImpl ***this, WebKit::NetworkLoad *a2)
{
  v3 = *this;
  if (v3)
  {
    WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,std::unique_ptr<WebKit::NetworkLoadScheduler::HostContext>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,std::unique_ptr<WebKit::NetworkLoadScheduler::HostContext>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,std::unique_ptr<WebKit::NetworkLoadScheduler::HostContext>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkLoadScheduler::HostContext>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,std::unique_ptr<WebKit::NetworkLoadScheduler::HostContext>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,std::unique_ptr<WebKit::NetworkLoadScheduler::HostContext>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,std::unique_ptr<WebKit::NetworkLoadScheduler::HostContext>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkLoadScheduler::HostContext>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(WTF::StringImpl **a1, WebKit::NetworkLoad *a2)
{
  v2 = a1;
  v3 = *(a1 - 1);
  if (v3)
  {
    do
    {
      if (*a1 != -1)
      {
        a1 = WTF::KeyValuePair<WTF::String,std::unique_ptr<WebKit::NetworkLoadScheduler::HostContext>>::~KeyValuePair(a1, a2);
      }

      a1 += 2;
      --v3;
    }

    while (v3);
  }

  return WTF::fastFree((v2 - 2), a2);
}

WTF::StringImpl **WTF::KeyValuePair<WTF::String,std::unique_ptr<WebKit::NetworkLoadScheduler::HostContext>>::~KeyValuePair(WTF::StringImpl **a1, WebKit::NetworkLoad *a2)
{
  v3 = a1[1];
  a1[1] = 0;
  if (v3)
  {
    WebKit::NetworkLoadScheduler::HostContext::~HostContext(v3, a2);
    bmalloc::api::tzoneFree(v6, v7);
  }

  v4 = *a1;
  *a1 = 0;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, a2);
  }

  return a1;
}

uint64_t WebCore::UserContentURLPattern::matches<WTF::URL>(WebCore::UserContentURLPattern *a1, const WTF::URL *a2)
{
  if (*(a1 + 24) || !WebCore::UserContentURLPattern::matchesScheme(a1, a2) || !WebCore::UserContentURLPattern::matchesHost(a1, a2))
  {
    return 0;
  }

  return WebCore::UserContentURLPattern::matchesPath(a1, a2);
}

uint64_t WebCore::UserContentURLPattern::matchesHost(WebCore::UserContentURLPattern *this, const WTF::URL *a2)
{
  WTF::URL::host(a2);
  if ((v3 & 0x100000000) == 0)
  {
    if (v3)
    {
      WTF::StringImpl::createWithoutCopyingNonEmpty();
      goto LABEL_4;
    }

LABEL_11:
    v4 = MEMORY[0x1E696EB88];
    atomic_fetch_add_explicit(MEMORY[0x1E696EB88], 2u, memory_order_relaxed);
    goto LABEL_5;
  }

  if (!v3)
  {
    goto LABEL_11;
  }

  WTF::StringImpl::createWithoutCopyingNonEmpty();
LABEL_4:
  v4 = v9[1];
LABEL_5:
  v9[0] = v4;
  v6 = WebCore::UserContentURLPattern::matchesHost(this, v9);
  v7 = v9[0];
  v9[0] = 0;
  if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v7, v5);
  }

  return v6;
}

uint64_t WebCore::UserContentURLPattern::matchesPath(WebCore::UserContentURLPattern *this, const WTF::URL *a2)
{
  WTF::URL::path(a2);
  if ((v3 & 0x100000000) == 0)
  {
    if (v3)
    {
      WTF::StringImpl::createWithoutCopyingNonEmpty();
      goto LABEL_4;
    }

LABEL_11:
    v4 = MEMORY[0x1E696EB88];
    atomic_fetch_add_explicit(MEMORY[0x1E696EB88], 2u, memory_order_relaxed);
    goto LABEL_5;
  }

  if (!v3)
  {
    goto LABEL_11;
  }

  WTF::StringImpl::createWithoutCopyingNonEmpty();
LABEL_4:
  v4 = v9[1];
LABEL_5:
  v9[0] = v4;
  v6 = WebCore::UserContentURLPattern::matchesPath(this, v9);
  v7 = v9[0];
  v9[0] = 0;
  if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v7, v5);
  }

  return v6;
}

uint64_t WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkConnectionToWebProcess,WTF::RawPtrTraits<WebKit::NetworkConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::NetworkConnectionToWebProcess>>>::~KeyValuePair(uint64_t a1)
{
  v2 = *(a1 + 8);
  *(a1 + 8) = 0;
  if (v2)
  {
    if (v2[5] == 1)
    {
      (*(*v2 + 8))(v2);
    }

    else
    {
      --v2[5];
    }
  }

  return a1;
}

double WTF::Detail::CallableWrapper<WebKit::callExitSoon(IPC::Connection *)::$_0,void>::call()
{
  v0 = qword_1ED6416C8;
  if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
  {
    *v2 = 0;
    _os_log_error_impl(&dword_19D52D000, v0, OS_LOG_TYPE_ERROR, "Exiting process early due to unacknowledged closed-connection", v2, 2u);
  }

  WTF::terminateProcess(1);
  return WebCore::NetworkStorageSession::operator delete();
}

double WebCore::NetworkStorageSession::operator delete()
{
  v0 = MEMORY[0x19EB09A60]();
  if (*(v0 + 8))
  {
    result = 0.0;
    *(v0 + 336) = 0u;
    *(v0 + 352) = 0u;
    *(v0 + 304) = 0u;
    *(v0 + 320) = 0u;
    *(v0 + 272) = 0u;
    *(v0 + 288) = 0u;
    *(v0 + 240) = 0u;
    *(v0 + 256) = 0u;
    *(v0 + 208) = 0u;
    *(v0 + 224) = 0u;
    *(v0 + 176) = 0u;
    *(v0 + 192) = 0u;
    *(v0 + 144) = 0u;
    *(v0 + 160) = 0u;
    *(v0 + 112) = 0u;
    *(v0 + 128) = 0u;
    *(v0 + 80) = 0u;
    *(v0 + 96) = 0u;
    *(v0 + 48) = 0u;
    *(v0 + 64) = 0u;
    *(v0 + 16) = 0u;
    *(v0 + 32) = 0u;
    *v0 = 0u;
  }

  else
  {

    bmalloc::api::tzoneFree(v0, v1);
  }

  return result;
}

uint64_t std::make_unique[abi:sn200100]<WebCore::NetworkStorageSession,PAL::SessionID &,WTF::RetainPtr<__CFURLStorageSession const*>,WTF::RetainPtr<OpaqueCFHTTPCookieStorage *>,0>(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = WebCore::NetworkStorageSession::operator new(0x170, a2);
  result = MEMORY[0x19EB09A50](v8, *a2, a3, a4, 0);
  *a1 = result;
  return result;
}

uint64_t WebCore::NetworkStorageSession::operator new(WebCore::NetworkStorageSession *this, void *a2)
{
  if (this == 368 && *MEMORY[0x1E69E2660])
  {
    return bmalloc::api::tzoneAllocateNonCompact(*MEMORY[0x1E69E2660], a2);
  }

  else
  {
    return MEMORY[0x1EEE57F18]();
  }
}

WebKit::NetworkLoadParameters *WebKit::NetworkLoadParameters::NetworkLoadParameters(WebKit::NetworkLoadParameters *this)
{
  *(this + 28) = 0u;
  *this = 0u;
  *(this + 1) = 0u;
  WebCore::ResourceRequest::ResourceRequest((this + 48));
  *(this + 62) = 0;
  *(this + 126) = 1;
  *(this + 254) = 0;
  *(this + 256) = 0;
  *(this + 3168) = 0;
  *(this + 3208) = 0;
  *(this + 3232) = 0;
  *(this + 199) = 0u;
  *(this + 3200) = 0;
  *(this + 810) = 16777472;
  *(this + 1622) = 0;
  *(this + 406) = 0;
  return this;
}

WebKit::NetworkLoadParameters *WebKit::NetworkLoadParameters::NetworkLoadParameters(WebKit::NetworkLoadParameters *this, const WebKit::NetworkLoadParameters *a2)
{
  v4 = *a2;
  *(this + 2) = *(a2 + 2);
  *this = v4;
  v5 = *(a2 + 3);
  if (v5)
  {
    atomic_fetch_add(v5, 1u);
  }

  *(this + 3) = v5;
  v6 = *(a2 + 4);
  if (v6)
  {
    atomic_fetch_add(v6, 1u);
  }

  *(this + 4) = v6;
  *(this + 10) = *(a2 + 10);
  WebCore::ResourceRequest::ResourceRequest(this + 6, (a2 + 48));
  v7 = *(a2 + 62);
  *(this + 251) = *(a2 + 251);
  *(this + 62) = v7;
  *(this + 256) = 0;
  *(this + 3168) = 0;
  if (*(a2 + 3168) == 1)
  {
    WebKit::NavigationActionData::NavigationActionData((this + 256), (a2 + 256));
    *(this + 3168) = 1;
  }

  WTF::Vector<WTF::RefPtr<WebCore::BlobDataFileReference,WTF::RawPtrTraits<WebCore::BlobDataFileReference>,WTF::DefaultRefDerefTraits<WebCore::BlobDataFileReference>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(this + 3184, a2 + 3184);
  *(this + 3200) = *(a2 + 3200);
  std::__optional_move_base<WebKit::NetworkActivityTracker,false>::__optional_move_base[abi:sn200100](this + 3208, a2 + 401);
  *(this + 3240) = *(a2 + 3240);
  return this;
}

WebKit::NavigationActionData *WebKit::NavigationActionData::NavigationActionData(WebKit::NavigationActionData *this, const WebKit::NavigationActionData *a2)
{
  *this = *a2;
  v4 = *(a2 + 1);
  v5 = *(a2 + 2);
  v6 = *(a2 + 3);
  *(this + 32) = *(a2 + 32);
  *(this + 2) = v5;
  *(this + 3) = v6;
  *(this + 1) = v4;
  v7 = *(a2 + 9);
  if (v7)
  {
    atomic_fetch_add_explicit(v7, 2u, memory_order_relaxed);
  }

  *(this + 9) = v7;
  *(this + 10) = *(a2 + 10);
  WebCore::ResourceResponse::ResourceResponse((this + 88), (a2 + 88));
  *(this + 44) = *(a2 + 44);
  v8 = *(a2 + 45);
  if (v8)
  {
    atomic_fetch_add_explicit(v8, 2u, memory_order_relaxed);
  }

  *(this + 45) = v8;
  mpark::detail::move_assignment<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::move_assignment(this + 368, a2 + 368);
  mpark::detail::move_assignment<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::move_assignment(this + 400, a2 + 400);
  v9 = *(a2 + 27);
  v10 = *(a2 + 28);
  v11 = *(a2 + 29);
  *(this + 240) = *(a2 + 240);
  *(this + 28) = v10;
  *(this + 29) = v11;
  *(this + 27) = v9;
  v12 = *(a2 + 61);
  if (v12)
  {
    atomic_fetch_add_explicit(v12, 2u, memory_order_relaxed);
  }

  *(this + 61) = v12;
  *(this + 248) = *(a2 + 248);
  *(this + 504) = 0;
  *(this + 552) = 0;
  if (*(a2 + 552) == 1)
  {
    mpark::detail::move_assignment<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::move_assignment(this + 504, a2 + 504);
    WTF::HashTable<WebCore::PermissionsPolicy::Feature,WebCore::PermissionsPolicy::Feature,WTF::IdentityExtractor,WTF::IntHash<WebCore::PermissionsPolicy::Feature>,WTF::StrongEnumHashTraits<WebCore::PermissionsPolicy::Feature>,WTF::StrongEnumHashTraits<WebCore::PermissionsPolicy::Feature>,WTF::FastMalloc>::HashTable(this + 67, a2 + 67);
    WTF::HashTable<WebCore::PermissionsPolicy::Feature,WTF::KeyValuePair<WebCore::PermissionsPolicy::Feature,WebCore::Allowlist>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::PermissionsPolicy::Feature,WebCore::Allowlist>>,WTF::IntHash<WebCore::PermissionsPolicy::Feature>,WTF::HashMap<WebCore::PermissionsPolicy::Feature,WebCore::Allowlist,WTF::IntHash<WebCore::PermissionsPolicy::Feature>,WTF::StrongEnumHashTraits<WebCore::PermissionsPolicy::Feature>,WTF::HashTraits<WebCore::Allowlist>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::StrongEnumHashTraits<WebCore::PermissionsPolicy::Feature>,WTF::FastMalloc>::HashTable(this + 68, a2 + 68);
    *(this + 552) = 1;
  }

  *(this + 560) = 0;
  *(this + 872) = 0;
  if (*(a2 + 872) == 1)
  {
    WebCore::PrivateClickMeasurement::PrivateClickMeasurement((this + 560), (a2 + 560));
    *(this + 872) = 1;
  }

  v13 = *(a2 + 884);
  *(this + 220) = *(a2 + 220);
  *(this + 884) = v13;
  *(this + 896) = 0;
  *(this + 1744) = 0;
  if (*(a2 + 1744) == 1)
  {
    WebKit::WebHitTestResultData::WebHitTestResultData((this + 896), (a2 + 896));
    *(this + 1744) = 1;
  }

  *(this + 880) = *(a2 + 880);
  WebCore::ResourceRequest::ResourceRequest(this + 221, (a2 + 1768));
  mpark::detail::move_assignment<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::move_assignment(this + 1968, a2 + 1968);
  v14 = *(a2 + 250);
  if (v14)
  {
    atomic_fetch_add_explicit(v14, 2u, memory_order_relaxed);
  }

  *(this + 250) = v14;
  v15 = *(a2 + 2008);
  v16 = *(a2 + 2024);
  v17 = *(a2 + 2040);
  *(this + 257) = *(a2 + 257);
  *(this + 2024) = v16;
  *(this + 2040) = v17;
  *(this + 2008) = v15;
  v18 = *(a2 + 258);
  *(this + 258) = v18;
  if (v18)
  {
    CFRetain(v18);
  }

  v19 = *(a2 + 2072);
  v20 = *(a2 + 2088);
  *(this + 526) = *(a2 + 526);
  *(this + 2072) = v19;
  *(this + 2088) = v20;
  *(this + 132) = *(a2 + 132);
  *(this + 1064) = *(a2 + 1064);
  WebCore::ResourceRequest::ResourceRequest(this + 267, (a2 + 2136));
  mpark::detail::move_assignment<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::move_assignment(this + 2336, a2 + 2336);
  v21 = *(a2 + 296);
  if (v21)
  {
    atomic_fetch_add_explicit(v21, 2u, memory_order_relaxed);
  }

  *(this + 296) = v21;
  v22 = *(a2 + 2376);
  v23 = *(a2 + 2392);
  v24 = *(a2 + 2408);
  *(this + 303) = *(a2 + 303);
  *(this + 2392) = v23;
  *(this + 2408) = v24;
  *(this + 2376) = v22;
  v25 = *(a2 + 304);
  *(this + 304) = v25;
  if (v25)
  {
    CFRetain(v25);
  }

  v26 = *(a2 + 2440);
  v27 = *(a2 + 2456);
  *(this + 618) = *(a2 + 618);
  *(this + 2440) = v26;
  *(this + 2456) = v27;
  *(this + 155) = *(a2 + 155);
  WebCore::ResourceRequest::ResourceRequest(this + 312, (a2 + 2496));
  WebCore::ResourceRequest::ResourceRequest(this + 337, (a2 + 2696));
  v28 = *(a2 + 362);
  if (v28)
  {
    atomic_fetch_add_explicit(v28, 2u, memory_order_relaxed);
  }

  *(this + 362) = v28;
  return this;
}

uint64_t *WTF::HashTable<WebCore::PermissionsPolicy::Feature,WTF::KeyValuePair<WebCore::PermissionsPolicy::Feature,WebCore::Allowlist>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::PermissionsPolicy::Feature,WebCore::Allowlist>>,WTF::IntHash<WebCore::PermissionsPolicy::Feature>,WTF::HashMap<WebCore::PermissionsPolicy::Feature,WebCore::Allowlist,WTF::IntHash<WebCore::PermissionsPolicy::Feature>,WTF::StrongEnumHashTraits<WebCore::PermissionsPolicy::Feature>,WTF::HashTraits<WebCore::Allowlist>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::StrongEnumHashTraits<WebCore::PermissionsPolicy::Feature>,WTF::FastMalloc>::HashTable(uint64_t *a1, unsigned __int8 **a2)
{
  *a1 = 0;
  v3 = *a2;
  if (*a2)
  {
    v5 = *(v3 - 3);
    if (v5)
    {
      v7 = WTF::HashTable<Inspector::Protocol::Automation::VirtualKey,WTF::KeyValuePair<Inspector::Protocol::Automation::VirtualKey,Inspector::Protocol::Automation::VirtualKey>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<Inspector::Protocol::Automation::VirtualKey,Inspector::Protocol::Automation::VirtualKey>>,WTF::IntHash<Inspector::Protocol::Automation::VirtualKey>,WTF::HashMap<Inspector::Protocol::Automation::VirtualKey,Inspector::Protocol::Automation::VirtualKey,WTF::IntHash<Inspector::Protocol::Automation::VirtualKey>,WTF::StrongEnumHashTraits<Inspector::Protocol::Automation::VirtualKey>,WTF::HashTraits<Inspector::Protocol::Automation::VirtualKey>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::StrongEnumHashTraits<Inspector::Protocol::Automation::VirtualKey>,WTF::FastMalloc>::computeBestTableSize(*(v3 - 3));
      Table = WTF::HashTable<WebCore::PermissionsPolicy::Feature,WTF::KeyValuePair<WebCore::PermissionsPolicy::Feature,WebCore::Allowlist>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::PermissionsPolicy::Feature,WebCore::Allowlist>>,WTF::IntHash<WebCore::PermissionsPolicy::Feature>,WTF::HashMap<WebCore::PermissionsPolicy::Feature,WebCore::Allowlist,WTF::IntHash<WebCore::PermissionsPolicy::Feature>,WTF::StrongEnumHashTraits<WebCore::PermissionsPolicy::Feature>,WTF::HashTraits<WebCore::Allowlist>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::StrongEnumHashTraits<WebCore::PermissionsPolicy::Feature>,WTF::FastMalloc>::allocateTable(v7);
      *a1 = Table;
      *(Table - 8) = v7 - 1;
      *(Table - 4) = v7;
      *(Table - 16) = 0;
      *(Table - 12) = v5;
      v9 = WTF::HashTable<WebCore::PermissionsPolicy::Feature,WTF::KeyValuePair<WebCore::PermissionsPolicy::Feature,WebCore::Allowlist>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::PermissionsPolicy::Feature,WebCore::Allowlist>>,WTF::IntHash<WebCore::PermissionsPolicy::Feature>,WTF::HashMap<WebCore::PermissionsPolicy::Feature,WebCore::Allowlist,WTF::IntHash<WebCore::PermissionsPolicy::Feature>,WTF::StrongEnumHashTraits<WebCore::PermissionsPolicy::Feature>,WTF::HashTraits<WebCore::Allowlist>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::StrongEnumHashTraits<WebCore::PermissionsPolicy::Feature>,WTF::FastMalloc>::begin(a2);
      v10 = v9;
      v12 = v11;
      v13 = *a2 ? &(*a2)[24 * *(*a2 - 1)] : 0;
      if (v13 != v9)
      {
        do
        {
          v22 = v10;
          v14 = *a1;
          if (*a1)
          {
            v15 = *(v14 - 8);
          }

          else
          {
            v15 = 0;
          }

          v16 = 0;
          v17 = ~(*v10 << 15) + *v10;
          v18 = (9 * (v17 ^ (v17 >> 10))) ^ ((9 * (v17 ^ (v17 >> 10))) >> 6);
          v19 = (v18 + ~(v18 << 11)) ^ ((v18 + ~(v18 << 11)) >> 16);
          do
          {
            v20 = v19 & v15;
            v21 = (v14 + 24 * v20);
            v19 = ++v16 + v20;
          }

          while (*v21 != 255);
          WTF::IdentityHashTranslator<WTF::HashMap<WebCore::PermissionsPolicy::Feature,WebCore::Allowlist,WTF::IntHash<WebCore::PermissionsPolicy::Feature>,WTF::StrongEnumHashTraits<WebCore::PermissionsPolicy::Feature>,WTF::HashTraits<WebCore::Allowlist>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::IntHash<WebCore::PermissionsPolicy::Feature>>::translate<WTF::KeyValuePair<WebCore::PermissionsPolicy::Feature,WebCore::Allowlist>,WebCore::PermissionsPolicy::Feature,WTF::HashTable<WebCore::PermissionsPolicy::Feature,WTF::KeyValuePair<WebCore::PermissionsPolicy::Feature,WebCore::Allowlist>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::PermissionsPolicy::Feature,WebCore::Allowlist>>,WTF::IntHash<WebCore::PermissionsPolicy::Feature>,WTF::HashMap<WebCore::PermissionsPolicy::Feature,WebCore::Allowlist,WTF::IntHash<WebCore::PermissionsPolicy::Feature>,WTF::StrongEnumHashTraits<WebCore::PermissionsPolicy::Feature>,WTF::HashTraits<WebCore::Allowlist>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::StrongEnumHashTraits<WebCore::PermissionsPolicy::Feature>,WTF::FastMalloc>::HashTable(WTF::HashTable<WebCore::PermissionsPolicy::Feature,WTF::KeyValuePair<WebCore::PermissionsPolicy::Feature,WebCore::Allowlist>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::PermissionsPolicy::Feature,WebCore::Allowlist>>,WTF::IntHash<WebCore::PermissionsPolicy::Feature>,WTF::HashMap<WebCore::PermissionsPolicy::Feature,WebCore::Allowlist,WTF::IntHash<WebCore::PermissionsPolicy::Feature>,WTF::StrongEnumHashTraits<WebCore::PermissionsPolicy::Feature>,WTF::HashTraits<WebCore::Allowlist>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::StrongEnumHashTraits<WebCore::PermissionsPolicy::Feature>,WTF::FastMalloc> const&)::{lambda(void)#1}>(v21, v10, &v22);
          do
          {
            v10 += 24;
          }

          while (v10 != v12 && *v10 >= 0xFEu);
        }

        while (v10 != v13);
      }
    }
  }

  return a1;
}

mpark *WTF::IdentityHashTranslator<WTF::HashMap<WebCore::PermissionsPolicy::Feature,WebCore::Allowlist,WTF::IntHash<WebCore::PermissionsPolicy::Feature>,WTF::StrongEnumHashTraits<WebCore::PermissionsPolicy::Feature>,WTF::HashTraits<WebCore::Allowlist>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::IntHash<WebCore::PermissionsPolicy::Feature>>::translate<WTF::KeyValuePair<WebCore::PermissionsPolicy::Feature,WebCore::Allowlist>,WebCore::PermissionsPolicy::Feature,WTF::HashTable<WebCore::PermissionsPolicy::Feature,WTF::KeyValuePair<WebCore::PermissionsPolicy::Feature,WebCore::Allowlist>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::PermissionsPolicy::Feature,WebCore::Allowlist>>,WTF::IntHash<WebCore::PermissionsPolicy::Feature>,WTF::HashMap<WebCore::PermissionsPolicy::Feature,WebCore::Allowlist,WTF::IntHash<WebCore::PermissionsPolicy::Feature>,WTF::StrongEnumHashTraits<WebCore::PermissionsPolicy::Feature>,WTF::HashTraits<WebCore::Allowlist>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::StrongEnumHashTraits<WebCore::PermissionsPolicy::Feature>,WTF::FastMalloc>::HashTable(WTF::HashTable<WebCore::PermissionsPolicy::Feature,WTF::KeyValuePair<WebCore::PermissionsPolicy::Feature,WebCore::Allowlist>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::PermissionsPolicy::Feature,WebCore::Allowlist>>,WTF::IntHash<WebCore::PermissionsPolicy::Feature>,WTF::HashMap<WebCore::PermissionsPolicy::Feature,WebCore::Allowlist,WTF::IntHash<WebCore::PermissionsPolicy::Feature>,WTF::StrongEnumHashTraits<WebCore::PermissionsPolicy::Feature>,WTF::HashTraits<WebCore::Allowlist>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::StrongEnumHashTraits<WebCore::PermissionsPolicy::Feature>,WTF::FastMalloc> const&)::{lambda(void)#1}>(_BYTE *a1, uint64_t a2, char **a3)
{
  v10 = **a3;
  result = mpark::detail::move_assignment<mpark::detail::traits<WTF::HashSet<WebCore::SecurityOriginData,WTF::DefaultHash<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>,WebCore::Allowlist::AllowAllOrigins>,(mpark::detail::Trait)1>::move_assignment(&v11, (*a3 + 8));
  *a1 = v10;
  v6 = (a1 + 8);
  v7 = a1[16];
  if (v7 == 255)
  {
    if (v12)
    {
      if (v12 == 255)
      {
        return result;
      }

      goto LABEL_17;
    }

LABEL_12:
    v13[0] = a1 + 8;
    v13[1] = result;
    result = mpark::detail::assignment<mpark::detail::traits<WTF::HashSet<WebCore::SecurityOriginData,WTF::DefaultHash<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>,WebCore::Allowlist::AllowAllOrigins>>::assign_alt<0ul,WTF::HashSet<WebCore::SecurityOriginData,WTF::DefaultHash<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>,WTF::HashSet<WebCore::SecurityOriginData,WTF::DefaultHash<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>(mpark::detail::alt<0ul,WTF::HashSet<WebCore::SecurityOriginData,WTF::DefaultHash<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>> &,WTF::HashSet<WebCore::SecurityOriginData,WTF::DefaultHash<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> &&)::{unnamed type#1}::operator()(v13, v5);
    goto LABEL_19;
  }

  if (!v12)
  {
    if (!a1[16])
    {
      v9 = v11;
      v11 = 0;
      result = *v6;
      *v6 = v9;
      if (result)
      {
        result = WTF::HashTable<WebCore::SecurityOriginData,WebCore::SecurityOriginData,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::FastMalloc>::deallocateTable(result, v5);
      }

      goto LABEL_19;
    }

    goto LABEL_12;
  }

  if (v12 == 255)
  {
    if (!a1[16])
    {
      result = *v6;
      if (*v6)
      {
        result = WTF::HashTable<WebCore::SecurityOriginData,WebCore::SecurityOriginData,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::FastMalloc>::deallocateTable(result, v5);
      }
    }

    v8 = -1;
    goto LABEL_18;
  }

  if (v7 == 1)
  {
    return result;
  }

  if (!a1[16])
  {
    result = *v6;
    if (*v6)
    {
      result = WTF::HashTable<WebCore::SecurityOriginData,WebCore::SecurityOriginData,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::FastMalloc>::deallocateTable(result, v5);
    }
  }

LABEL_17:
  v8 = 1;
LABEL_18:
  a1[16] = v8;
LABEL_19:
  if (!v12)
  {
    result = v11;
    if (v11)
    {
      return WTF::HashTable<WebCore::SecurityOriginData,WebCore::SecurityOriginData,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::FastMalloc>::deallocateTable(v11, v5);
    }
  }

  return result;
}

uint64_t *mpark::detail::move_assignment<mpark::detail::traits<WTF::HashSet<WebCore::SecurityOriginData,WTF::DefaultHash<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>,WebCore::Allowlist::AllowAllOrigins>,(mpark::detail::Trait)1>::move_assignment(uint64_t *result, uint64_t a2)
{
  *result = 0;
  *(result + 8) = -1;
  v2 = *(a2 + 8);
  if (v2 != 255)
  {
    if (!*(a2 + 8))
    {
      result = WTF::HashTable<WebCore::SecurityOriginData,WebCore::SecurityOriginData,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::FastMalloc>::HashTable(result, a2);
      LOBYTE(v2) = *(a2 + 8);
    }

    *(result + 8) = v2;
  }

  return result;
}

WebCore::PrivateClickMeasurement *WebCore::PrivateClickMeasurement::PrivateClickMeasurement(WebCore::PrivateClickMeasurement *this, const WebCore::PrivateClickMeasurement *a2)
{
  *this = *a2;
  v4 = *(a2 + 1);
  if (v4)
  {
    atomic_fetch_add_explicit(v4, 2u, memory_order_relaxed);
  }

  *(this + 1) = v4;
  v5 = *(a2 + 2);
  if (v5)
  {
    atomic_fetch_add_explicit(v5, 2u, memory_order_relaxed);
  }

  *(this + 2) = v5;
  v6 = *(a2 + 24);
  v7 = *(a2 + 33);
  *(this + 56) = 0;
  v8 = this + 56;
  *(this + 33) = v7;
  *(this + 24) = v6;
  *(this + 184) = 0;
  if (*(a2 + 184) == 1)
  {
    WebCore::PCM::AttributionTriggerData::AttributionTriggerData(v8, a2 + 56);
    *(this + 184) = 1;
  }

  v9 = *(a2 + 13);
  *(this + 12) = *(a2 + 12);
  *(this + 13) = v9;
  *(this + 224) = 0;
  *(this + 232) = 0;
  if (*(a2 + 232) == 1)
  {
    v10 = *(a2 + 28);
    if (v10)
    {
      atomic_fetch_add_explicit(v10, 2u, memory_order_relaxed);
    }

    *(this + 28) = v10;
    *(this + 232) = 1;
  }

  v11 = *(a2 + 30);
  *(this + 30) = v11;
  if (v11)
  {
    CFRetain(v11);
  }

  v12 = *(a2 + 31);
  *(this + 31) = v12;
  if (v12)
  {
    CFRetain(v12);
  }

  v13 = *(a2 + 32);
  *(this + 32) = v13;
  if (v13)
  {
    CFRetain(v13);
  }

  v14 = *(a2 + 33);
  if (v14)
  {
    atomic_fetch_add_explicit(v14, 2u, memory_order_relaxed);
  }

  *(this + 33) = v14;
  *(this + 272) = 0;
  *(this + 296) = 0;
  if (*(a2 + 296) == 1)
  {
    v15 = *(a2 + 34);
    if (v15)
    {
      atomic_fetch_add_explicit(v15, 2u, memory_order_relaxed);
    }

    *(this + 34) = v15;
    v16 = *(a2 + 35);
    if (v16)
    {
      atomic_fetch_add_explicit(v16, 2u, memory_order_relaxed);
    }

    *(this + 35) = v16;
    v17 = *(a2 + 36);
    if (v17)
    {
      atomic_fetch_add_explicit(v17, 2u, memory_order_relaxed);
    }

    *(this + 36) = v17;
    *(this + 296) = 1;
  }

  v18 = *(a2 + 38);
  if (v18)
  {
    atomic_fetch_add_explicit(v18, 2u, memory_order_relaxed);
  }

  *(this + 38) = v18;
  return this;
}

uint64_t WebCore::PCM::AttributionTriggerData::AttributionTriggerData(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 2);
  *a1 = *a2;
  *(a1 + 2) = v4;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  if (*(a2 + 16) == 1)
  {
    v14 = *(a2 + 8);
    if (v14)
    {
      atomic_fetch_add_explicit(v14, 2u, memory_order_relaxed);
    }

    *(a1 + 8) = v14;
    *(a1 + 16) = 1;
  }

  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  if (*(a2 + 32) == 1)
  {
    v5 = *(a2 + 24);
    if (v5)
    {
      atomic_fetch_add_explicit(v5, 2u, memory_order_relaxed);
    }

    *(a1 + 24) = v5;
    *(a1 + 32) = 1;
  }

  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  if (*(a2 + 48) == 1)
  {
    v15 = *(a2 + 40);
    if (v15)
    {
      atomic_fetch_add_explicit(v15, 2u, memory_order_relaxed);
    }

    *(a1 + 40) = v15;
    *(a1 + 48) = 1;
  }

  *(a1 + 56) = 0;
  *(a1 + 88) = 0;
  if (*(a2 + 88) == 1)
  {
    v6 = *(a2 + 56);
    *(a1 + 56) = v6;
    if (v6)
    {
      CFRetain(v6);
    }

    v7 = *(a2 + 64);
    *(a1 + 64) = v7;
    if (v7)
    {
      CFRetain(v7);
    }

    v8 = *(a2 + 72);
    *(a1 + 72) = v8;
    if (v8)
    {
      CFRetain(v8);
    }

    v9 = *(a2 + 80);
    if (v9)
    {
      atomic_fetch_add_explicit(v9, 2u, memory_order_relaxed);
    }

    *(a1 + 80) = v9;
    *(a1 + 88) = 1;
  }

  *(a1 + 96) = 0;
  *(a1 + 120) = 0;
  if (*(a2 + 120) == 1)
  {
    v10 = *(a2 + 96);
    if (v10)
    {
      atomic_fetch_add_explicit(v10, 2u, memory_order_relaxed);
    }

    *(a1 + 96) = v10;
    v11 = *(a2 + 104);
    if (v11)
    {
      atomic_fetch_add_explicit(v11, 2u, memory_order_relaxed);
    }

    *(a1 + 104) = v11;
    v12 = *(a2 + 112);
    if (v12)
    {
      atomic_fetch_add_explicit(v12, 2u, memory_order_relaxed);
    }

    *(a1 + 112) = v12;
    *(a1 + 120) = 1;
  }

  return a1;
}

WebKit::WebHitTestResultData *WebKit::WebHitTestResultData::WebHitTestResultData(WebKit::WebHitTestResultData *this, const WebKit::WebHitTestResultData *a2)
{
  v4 = *a2;
  if (*a2)
  {
    atomic_fetch_add_explicit(v4, 2u, memory_order_relaxed);
  }

  *this = v4;
  v5 = *(a2 + 1);
  if (v5)
  {
    atomic_fetch_add_explicit(v5, 2u, memory_order_relaxed);
  }

  *(this + 1) = v5;
  v6 = *(a2 + 2);
  if (v6)
  {
    atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed);
  }

  *(this + 2) = v6;
  v7 = *(a2 + 3);
  if (v7)
  {
    atomic_fetch_add_explicit(v7, 2u, memory_order_relaxed);
  }

  *(this + 3) = v7;
  v8 = *(a2 + 4);
  if (v8)
  {
    atomic_fetch_add_explicit(v8, 2u, memory_order_relaxed);
  }

  *(this + 4) = v8;
  v9 = *(a2 + 5);
  if (v9)
  {
    atomic_fetch_add_explicit(v9, 2u, memory_order_relaxed);
  }

  *(this + 5) = v9;
  v10 = *(a2 + 6);
  if (v10)
  {
    atomic_fetch_add_explicit(v10, 2u, memory_order_relaxed);
  }

  *(this + 6) = v10;
  v11 = *(a2 + 7);
  if (v11)
  {
    atomic_fetch_add_explicit(v11, 2u, memory_order_relaxed);
  }

  *(this + 7) = v11;
  v12 = *(a2 + 4);
  *(this + 76) = *(a2 + 76);
  *(this + 4) = v12;
  *(this + 96) = 0;
  *(this + 448) = 0;
  if (*(a2 + 448) == 1)
  {
    *(this + 48) = *(a2 + 48);
    WebCore::ResourceRequest::ResourceRequest(this + 13, (a2 + 104));
    mpark::detail::move_assignment<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::move_assignment(this + 304, a2 + 304);
    v13 = *(a2 + 42);
    if (v13)
    {
      atomic_fetch_add_explicit(v13, 2u, memory_order_relaxed);
    }

    *(this + 42) = v13;
    v14 = *(a2 + 344);
    v15 = *(a2 + 360);
    v16 = *(a2 + 376);
    *(this + 49) = *(a2 + 49);
    *(this + 360) = v15;
    *(this + 376) = v16;
    *(this + 344) = v14;
    v17 = *(a2 + 50);
    *(this + 50) = v17;
    if (v17)
    {
      CFRetain(v17);
    }

    v18 = *(a2 + 408);
    v19 = *(a2 + 424);
    *(this + 110) = *(a2 + 110);
    *(this + 408) = v18;
    *(this + 424) = v19;
    *(this + 448) = 1;
  }

  v20 = *(a2 + 29);
  *(this + 60) = *(a2 + 60);
  *(this + 29) = v20;
  v21 = *(a2 + 61);
  if (v21)
  {
    atomic_fetch_add_explicit(v21, 2u, memory_order_relaxed);
  }

  *(this + 61) = v21;
  v22 = *(a2 + 62);
  if (v22)
  {
    atomic_fetch_add_explicit(v22, 2u, memory_order_relaxed);
  }

  *(this + 62) = v22;
  v23 = *(a2 + 63);
  if (v23)
  {
    atomic_fetch_add_explicit(v23, 2u, memory_order_relaxed);
  }

  *(this + 63) = v23;
  v24 = *(a2 + 64);
  if (v24)
  {
    atomic_fetch_add(v24, 1u);
  }

  *(this + 64) = v24;
  v25 = *(a2 + 65);
  if (v25)
  {
    atomic_fetch_add(v25, 1u);
  }

  *(this + 65) = v25;
  v26 = *(a2 + 66);
  if (v26)
  {
    atomic_fetch_add_explicit(v26, 2u, memory_order_relaxed);
  }

  *(this + 66) = v26;
  v27 = *(a2 + 538);
  *(this + 268) = *(a2 + 268);
  *(this + 538) = v27;
  *(this + 544) = 0;
  *(this + 808) = 0;
  if (*(a2 + 808) == 1)
  {
    WebCore::ResourceResponse::ResourceResponse((this + 544), (a2 + 544));
    *(this + 808) = 1;
  }

  *(this + 102) = *(a2 + 102);
  v28 = *(a2 + 103);
  if (v28)
  {
    ++*v28;
  }

  *(this + 103) = v28;
  v29 = *(a2 + 104);
  if (v29)
  {
    atomic_fetch_add_explicit(v29, 2u, memory_order_relaxed);
  }

  *(this + 104) = v29;
  v30 = *(a2 + 105);
  if (v30)
  {
    ++*v30;
  }

  *(this + 105) = v30;
  return this;
}

uint64_t std::__optional_move_base<WebKit::NetworkActivityTracker,false>::__optional_move_base[abi:sn200100](uint64_t a1, uint64_t *a2)
{
  *a1 = 0;
  *(a1 + 24) = 0;
  if (*(a2 + 24) == 1)
  {
    v4 = *a2;
    *(a1 + 8) = *(a2 + 8);
    *a1 = v4;
    v5 = a2[2];
    *(a1 + 16) = v5;
    if (v5)
    {
      CFRetain(v5);
    }

    *(a1 + 24) = 1;
  }

  return a1;
}

uint64_t WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::findIf<unsigned long WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::find<WebCore::RegistrableDomain>(WebCore::RegistrableDomain const&)::{lambda(WebCore::RegistrableDomain&)#1}>(uint64_t a1, const WTF::StringImpl ***a2, const WTF::StringImpl *a3)
{
  if (!*(a1 + 12))
  {
    return -1;
  }

  v5 = 0;
  while ((WTF::equal(*(*a1 + 8 * v5), **a2, a3) & 1) == 0)
  {
    if (++v5 >= *(a1 + 12))
    {
      return -1;
    }
  }

  return v5;
}

uint64_t WTF::Vector<WebCore::SecurityOriginData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebCore::SecurityOriginData const&>(uint64_t a1, unint64_t a2)
{
  v3 = WTF::Vector<WebCore::SecurityOriginData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(a1, *(a1 + 12) + 1, a2);
  mpark::detail::move_assignment<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::move_assignment((*a1 + 32 * *(a1 + 12)), v3);
  ++*(a1 + 12);
  return 1;
}

void WebKit::BackgroundFetchState::~BackgroundFetchState(WebKit::BackgroundFetchState *this, WTF::StringImpl *a2)
{
  v3 = *(this + 12);
  *(this + 12) = 0;
  if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v3, a2);
  }

  WTF::Vector<WebCore::ImageResource,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(this + 80, a2);
  v5 = *(this + 9);
  *(this + 9) = 0;
  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, v4);
  }

  v6 = *(this + 4);
  *(this + 4) = 0;
  if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v6, v4);
  }

  if (!*(this + 24))
  {
    v7 = *(this + 1);
    *(this + 1) = 0;
    if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v7, v4);
    }

    v8 = *this;
    *this = 0;
    if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v8, v4);
    }
  }

  *(this + 24) = -1;
}

_DWORD *WTF::RefCounted<WebKit::NetworkLoad>::deref(_DWORD *result, void *a2)
{
  if (*result == 1)
  {
    WebKit::NetworkLoad::~NetworkLoad((result - 4), a2);

    return bmalloc::api::tzoneFree(v3, v4);
  }

  else
  {
    --*result;
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WebKit::NetworkDataTask::scheduleFailure(WebKit::NetworkDataTask::FailureType)::$_0,void>::~CallableWrapper(void *a1, void *a2)
{
  *a1 = &unk_1F11011F8;
  v3 = a1[2];
  a1[2] = 0;
  if (v3)
  {
    WTF::ThreadSafeWeakPtrControlBlock::weakDeref(v3, a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::NetworkDataTask::scheduleFailure(WebKit::NetworkDataTask::FailureType)::$_0,void>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F11011F8;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeWeakPtrControlBlock::weakDeref(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

atomic_uchar *WTF::Detail::CallableWrapper<WebKit::NetworkDataTask::scheduleFailure(WebKit::NetworkDataTask::FailureType)::$_0,void>::call(uint64_t a1)
{
  result = *(a1 + 16);
  if (result)
  {
    result = WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::RemoteMediaPlayerManager>(result, *(a1 + 8), &v7);
    v3 = v7;
    if (v7)
    {
      v4 = *(v7 + 24);
      if (!v4 || (v5 = *(v4 + 8)) == 0)
      {
        v7 = 0;
        return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::NetworkDataTask,(WTF::DestructionThread)1>::deref((v3 + 8));
      }

      (**v5)(v5);
      v6 = *(a1 + 24);
      if (v6 > 1)
      {
        if (v6 == 2)
        {
          (*(*v5 + 104))(v5);
        }

        else if (v6 == 3)
        {
          (*(*v5 + 112))(v5);
        }
      }

      else if (*(a1 + 24))
      {
        if (v6 == 1)
        {
          (*(*v5 + 96))(v5);
        }
      }

      else
      {
        (*(*v5 + 88))(v5);
      }

      result = (*(*v5 + 8))(v5);
      v3 = v7;
      v7 = 0;
      if (v3)
      {
        return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::NetworkDataTask,(WTF::DestructionThread)1>::deref((v3 + 8));
      }
    }
  }

  return result;
}

uint64_t *WTF::stringTypeAdapterAccumulator<unsigned char,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>(char *__dst, unint64_t a2, _BYTE *__src, size_t __n, uint64_t a5, char *a6, size_t a7)
{
  LODWORD(v10) = __n;
  v12 = __dst;
  if (__n)
  {
    if (__n == 1)
    {
      goto LABEL_12;
    }

    memcpy(__dst, __src, __n);
  }

  while (1)
  {
    if (a2 >= v10)
    {
      v13 = v10;
      v10 = a2 - v10;
      v12 += v13;
      v16 = a5;
      result = WTF::StringTypeAdapter<WTF::StringImpl *,void>::writeTo<unsigned char>(&v16, v12);
      v15 = v16;
      if (!v16)
      {
        break;
      }

      v15 = *(v16 + 4);
      if (v10 >= v15)
      {
        break;
      }
    }

    __break(1u);
LABEL_12:
    *v12 = *__src;
  }

  if (a7)
  {
    if (a7 == 1)
    {
      v12[v15] = *a6;
    }

    else
    {
      return memcpy(&v12[v15], a6, a7);
    }
  }

  return result;
}

uint64_t WTF::Vector<WTF::RefPtr<WebCore::BlobDataFileReference,WTF::RawPtrTraits<WebCore::BlobDataFileReference>,WTF::DefaultRefDerefTraits<WebCore::BlobDataFileReference>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = *(a2 + 12);
  *result = 0;
  *(result + 8) = 0;
  *(result + 12) = v3;
  if (!v3)
  {
    return v2;
  }

  if (!(v3 >> 29))
  {
    v5 = WTF::fastMalloc((8 * v3));
    *(v2 + 8) = v3;
    *v2 = v5;
    v6 = *(a2 + 12);
    if (v6)
    {
      v7 = *a2;
      v8 = 8 * v6;
      do
      {
        v9 = *v7;
        if (*v7)
        {
          ++*(v9 + 8);
        }

        *v5++ = v9;
        ++v7;
        v8 -= 8;
      }

      while (v8);
    }

    return v2;
  }

  __break(0xC471u);
  return result;
}

uint64_t WTF::ThreadSafeRefCounted<WebCore::BlobData,(WTF::DestructionThread)0>::deref(uint64_t result, void *a2)
{
  add = atomic_fetch_add(result, 0xFFFFFFFF);
  if (add == 1)
  {
    v4 = result;
    atomic_store(add, result);
    v5 = *(result + 108);
    if (v5)
    {
      v6 = 40 * v5;
      v7 = (*(result + 96) + 16);
      do
      {
        v8 = *v7;
        *v7 = 0;
        if (v8)
        {
          if (v8[2] == 1)
          {
            (*(*v8 + 8))(v8);
          }

          else
          {
            --v8[2];
          }
        }

        v9 = *(v7 - 1);
        *(v7 - 1) = 0;
        if (v9)
        {
          WTF::ThreadSafeRefCounted<WebCore::DataSegment,(WTF::DestructionThread)0>::deref(v9, a2);
        }

        v7 += 5;
        v6 -= 40;
      }

      while (v6);
    }

    v10 = *(v4 + 96);
    if (v10)
    {
      *(v4 + 96) = 0;
      *(v4 + 104) = 0;
      WTF::fastFree(v10, a2);
    }

    v11 = *(v4 + 80);
    *(v4 + 80) = 0;
    if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v11, a2);
    }

    v12 = *(v4 + 72);
    *(v4 + 72) = 0;
    if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v12, a2);
    }

    v13 = *(v4 + 56);
    *(v4 + 56) = 0;
    if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v13, a2);
    }

    v14 = *(v4 + 48);
    *(v4 + 48) = 0;
    if (v14 && atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v14, a2);
    }

    WTF::Vector<std::pair<WTF::String,WebCore::ContentSecurityPolicyHeaderType>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v4 + 16, a2);
    v16 = *(v4 + 8);
    *(v4 + 8) = 0;
    if (v16 && atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v16, v15);
    }

    return WTF::fastFree(v4, v15);
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WebKit::NetworkDataTaskBlob::resume(void)::$_0,void>::~CallableWrapper(void *a1)
{
  *a1 = &unk_1F1101220;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::NetworkDataTask,(WTF::DestructionThread)1>::deref((v2 + 8));
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::NetworkDataTaskBlob::resume(void)::$_0,void>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F1101220;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::NetworkDataTask,(WTF::DestructionThread)1>::deref((v3 + 8));
  }

  return WTF::fastFree(this, a2);
}

atomic_ullong *WTF::Detail::CallableWrapper<WebKit::NetworkDataTaskBlob::resume(void)::$_0,void>::call(uint64_t a1)
{
  v1 = *(a1 + 8);
  if ((*(v1 + 608) & 0xFFFFFFFE) != 2 && (v2 = *(v1 + 24)) != 0 && *(v2 + 8))
  {
    v3 = *WebCore::ResourceRequestBase::httpMethod((v1 + 128));
    if (v3 && (WTF::equalLettersIgnoringASCIICaseCommon<WTF::StringImpl>(v3, "get", 3uLL) & 1) != 0)
    {
      if (*(v1 + 560))
      {
        WebCore::ResourceRequestBase::httpHeaderField();
        *(v1 + 612) = v9 != 0;
        if (v9 && (WebCore::parseRange() & 1) == 0)
        {
          WebKit::NetworkDataTaskBlob::didFail(v1, 3);
        }

        else
        {
          WebKit::NetworkDataTaskBlob::getSizeForNext(v1);
        }

        result = v9;
        if (v9)
        {
          if (atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            return WTF::StringImpl::destroy(v9, v4);
          }
        }

        return result;
      }

      v7 = v1;
      v8 = 1;
    }

    else
    {
      v7 = v1;
      v8 = 5;
    }

    return WebKit::NetworkDataTaskBlob::didFail(v7, v8);
  }

  else
  {
    v5 = *(a1 + 8);

    return WebKit::NetworkDataTaskBlob::clearStream(v5);
  }
}

void *WTF::Detail::CallableWrapper<WebKit::NetworkDataTaskBlob::dispatchDidReceiveResponse(void)::$_0,void,WebCore::PolicyAction>::~CallableWrapper(void *a1)
{
  *a1 = &unk_1F1101248;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::NetworkDataTask,(WTF::DestructionThread)1>::deref((v2 + 8));
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::NetworkDataTaskBlob::dispatchDidReceiveResponse(void)::$_0,void,WebCore::PolicyAction>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F1101248;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::NetworkDataTask,(WTF::DestructionThread)1>::deref((v3 + 8));
  }

  return WTF::fastFree(this, a2);
}

WTF::StringImpl *WTF::Detail::CallableWrapper<WebKit::NetworkDataTaskBlob::dispatchDidReceiveResponse(void)::$_0,void,WebCore::PolicyAction>::call(WTF::StringImpl *result, void *a2, uint64_t a3)
{
  v3 = *(result + 1);
  if ((*(v3 + 608) & 0xFFFFFFFE) == 2)
  {
    v4 = *(result + 1);

    return WebKit::NetworkDataTaskBlob::clearStream(v4);
  }

  else if (a2 == 1)
  {
    WTF::FileSystemImpl::openFile();
    WTF::FileSystemImpl::FileHandle::operator=();
    WTF::FileSystemImpl::FileHandle::~FileHandle(&v30);
    if (*(v3 + 676) == -1)
    {
      WebKit::cancelledError((v3 + 128), &v30);
      WebKit::NetworkDataTaskBlob::didFailDownload(v3, &v30);
      v27 = cf;
      cf = 0;
      if (v27)
      {
        CFRelease(v27);
      }

      v28 = v32;
      v32 = 0;
      if (v28 && atomic_fetch_add_explicit(v28, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v28, v26);
      }

      v29 = v31;
      v31 = 0;
      if (v29 && atomic_fetch_add_explicit(v29, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v29, v26);
      }

      result = v30;
      v30 = 0;
      if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        return WTF::StringImpl::destroy(result, v26);
      }
    }

    else
    {
      v9 = *(v3 + 704);
      v11 = *(v9 + 184);
      v10 = (v9 + 184);
      *v10 = v11 + 1;
      v12 = *(v3 + 40);
      if (!v12)
      {
        __break(0xC471u);
        JUMPOUT(0x19DC7AEB0);
      }

      v13 = *(v3 + 16);
      if (!v13)
      {
        goto LABEL_59;
      }

      v14 = *(v13 + 8);
      if (!v14)
      {
        goto LABEL_59;
      }

      ++*(v14 + 16);
      v15 = *(v3 + 528);
      if (v15)
      {
        atomic_fetch_add_explicit(v15, 2u, memory_order_relaxed);
      }

      v16 = WebKit::Download::operator new(0x1C8, v8);
      WebKit::Download::Download(v16, v10, v12, v3, v14);
      if (v15 && atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v15, v17);
      }

      v18 = *(v14 + 16);
      if (!v18)
      {
        __break(0xC471u);
        JUMPOUT(0x19DC7AED0);
      }

      *(v14 + 16) = v18 - 1;
      v19 = *(v3 + 40);
      if (!v19)
      {
        __break(0xC471u);
        JUMPOUT(0x19DC7AEF0);
      }

      ++*(v16 + 4);
      v30 = v16;
      WebKit::DownloadManager::dataTaskBecameDownloadTask(v10, v19, &v30);
      v20 = v30;
      v30 = 0;
      if (v20)
      {
        WTF::RefCounted<WebKit::Download>::deref(v20 + 4);
      }

      WebKit::Download::didCreateDestination(v16, (v3 + 120));
      if (!(*(v3 + 588) >> 19))
      {
        v23 = *(v3 + 584);
        if (!(v23 >> 19))
        {
          if (v23 + (v23 >> 1) <= v23 + 1)
          {
            v24 = v23 + 1;
          }

          else
          {
            v24 = v23 + (v23 >> 1);
          }

          if (v24 <= 0x80000)
          {
            v25 = 0x80000;
          }

          else
          {
            v25 = v24;
          }

          WTF::Vector<WebCore::AuthenticatorTransport,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(v3 + 576, v25);
        }
      }

      *(v3 + 588) = 0x80000;
      WebKit::NetworkDataTaskBlob::read(v3, v21, v22);
      result = WTF::RefCounted<WebKit::Download>::deref(v16 + 4);
      if (!*v10)
      {
LABEL_59:
        __break(0xC471u);
        JUMPOUT(0x19DC7AE90);
      }

      --*v10;
    }
  }

  else if (!a2)
  {
    if (!(*(v3 + 588) >> 19))
    {
      v5 = *(v3 + 584);
      if (!(v5 >> 19))
      {
        if (v5 + (v5 >> 1) <= v5 + 1)
        {
          v6 = v5 + 1;
        }

        else
        {
          v6 = v5 + (v5 >> 1);
        }

        if (v6 <= 0x80000)
        {
          v7 = 0x80000;
        }

        else
        {
          v7 = v6;
        }

        WTF::Vector<WebCore::AuthenticatorTransport,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(v3 + 576, v7);
      }
    }

    *(v3 + 588) = 0x80000;

    return WebKit::NetworkDataTaskBlob::read(v3, a2, a3);
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WebKit::NetworkLoad::willPerformHTTPRedirection(WebCore::ResourceResponse &&,WebCore::ResourceRequest &&,WTF::CompletionHandler<void ()(WebCore::ResourceRequest)> &&)::$_0,void,WebCore::ResourceRequest>::~CallableWrapper(void *a1, void *a2)
{
  *a1 = &unk_1F1101270;
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

uint64_t WTF::Detail::CallableWrapper<WebKit::NetworkLoad::willPerformHTTPRedirection(WebCore::ResourceResponse &&,WebCore::ResourceRequest &&,WTF::CompletionHandler<void ()(WebCore::ResourceRequest)> &&)::$_0,void,WebCore::ResourceRequest>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F1101270;
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

void WTF::Detail::CallableWrapper<WebKit::NetworkLoad::willPerformHTTPRedirection(WebCore::ResourceResponse &&,WebCore::ResourceRequest &&,WTF::CompletionHandler<void ()(WebCore::ResourceRequest)> &&)::$_0,void,WebCore::ResourceRequest>::call(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2 && (v3 = *(v2 + 8)) != 0)
  {
    v4 = v3 + 4;
    ++v3[4];
    v5 = WebCore::ResourceRequest::nsURLRequest();
    MEMORY[0x19EB06210](&v20, v5);
    WebCore::ResourceRequest::updateFromDelegatePreservingOldProperties((v3 + 832), &v20);
    WebCore::ResourceRequest::~ResourceRequest(&v20);
    if (WebCore::ResourceRequestBase::isNull((v3 + 832)))
    {
      WebCore::NetworkLoadMetrics::NetworkLoadMetrics(v17);
      WebKit::cancelledError((v3 + 832), &v20);
      WebKit::NetworkLoad::didCompleteWithError(v3, &v20, v17);
      v7 = cf;
      cf = 0;
      if (v7)
      {
        CFRelease(v7);
      }

      v8 = v22;
      v22 = 0;
      if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v8, v6);
      }

      v9 = v21;
      v21 = 0;
      if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v9, v6);
      }

      v10 = v20;
      v20 = 0;
      if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v10, v6);
      }

      WebCore::ResourceRequest::ResourceRequest(&v20);
      v11 = *(a1 + 16);
      *(a1 + 16) = 0;
      (*(*v11 + 16))(v11, &v20);
      (*(*v11 + 8))(v11);
      WebCore::ResourceRequest::~ResourceRequest(&v20);
      v13 = v19;
      v19 = 0;
      if (v13)
      {
        WTF::RefCounted<WebCore::AdditionalNetworkLoadMetricsForWebInspector>::deref(v13, v12);
      }

      v14 = v18;
      v18 = 0;
      if (v14)
      {
        if (atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v14, v12);
        }
      }
    }

    else
    {
      WebCore::ResourceRequest::ResourceRequest(&v20, (v3 + 832));
      v16 = *(a1 + 16);
      *(a1 + 16) = 0;
      (*(*v16 + 16))(v16, &v20);
      (*(*v16 + 8))(v16);
      WebCore::ResourceRequest::~ResourceRequest(&v20);
    }

    WTF::RefCounted<WebKit::NetworkLoad>::deref(v4, v12);
  }

  else
  {
    WebCore::ResourceRequest::ResourceRequest(&v20);
    v15 = *(a1 + 16);
    *(a1 + 16) = 0;
    (*(*v15 + 16))(v15, &v20);
    (*(*v15 + 8))(v15);
    WebCore::ResourceRequest::~ResourceRequest(&v20);
  }
}

uint64_t WTF::tryMakeString<WTF::ASCIILiteral,WTF::String,WTF::ASCIILiteral,WTF::String,WTF::ASCIILiteral>@<X0>(void *a1@<X0>, uint64_t *a2@<X1>, void *a3@<X2>, uint64_t *a4@<X3>, void *a5@<X4>, void *a6@<X8>)
{
  v6 = a1[1];
  v7 = v6 != 0;
  v8 = v6 - 1;
  if (!v7)
  {
    v8 = 0;
  }

  v19[0] = *a1;
  v19[1] = v8;
  if (v8 >> 31)
  {
    goto LABEL_13;
  }

  v18 = *a2;
  v9 = a3[1];
  v7 = v9 != 0;
  v10 = v9 - 1;
  if (!v7)
  {
    v10 = 0;
  }

  v17[0] = *a3;
  v17[1] = v10;
  if (v10 >> 31)
  {
    __break(0xC471u);
    JUMPOUT(0x19DC7B3C8);
  }

  v11 = *a4;
  v12 = a5[1];
  v7 = v12 != 0;
  v13 = v12 - 1;
  if (!v7)
  {
    v13 = 0;
  }

  v15[0] = *a5;
  v15[1] = v13;
  v16 = v11;
  if (v13 >> 31)
  {
LABEL_13:
    __break(0xC471u);
    JUMPOUT(0x19DC7B3A8);
  }

  return WTF::tryMakeStringFromAdapters<WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>(v19, &v18, v17, &v16, v15, a6);
}

uint64_t WTF::tryMakeStringFromAdapters<WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v7 = *a2;
  if (*a2)
  {
    v8 = *(v7 + 4);
  }

  else
  {
    v8 = 0;
  }

  v9 = *a4;
  if (*a4)
  {
    v10 = *(v9 + 4);
  }

  else
  {
    v10 = 0;
  }

  v11 = *(a5 + 8);
  if (((v10 | v11) & 0x80000000) != 0 || ((v12 = *(a3 + 8), v13 = __OFADD__(v10, v11), v14 = v10 + v11, !v13) ? (v15 = 0) : (v15 = 1), (v12 & 0x80000000) != 0 || (v15 & 1) != 0 || ((v13 = __OFADD__(v12, v14), v16 = v12 + v14, !v13) ? (v17 = 0) : (v17 = 1), v8 < 0 || (v17 & 1) != 0 || ((v18 = *(result + 8), v13 = __OFADD__(v8, v16), v19 = v8 + v16, !v13) ? (v20 = 0) : (v20 = 1), (v18 & 0x80000000) != 0 || (v20 & 1) != 0 || (v13 = __OFADD__(v18, v19), v21 = (v18 + v19), v13)))))
  {
    *a6 = 0;
  }

  else
  {
    v22 = (!v7 || (*(v7 + 16) & 4) != 0) && (!v9 || (*(v9 + 16) & 4) != 0);
    return WTF::tryMakeStringImplFromAdaptersInternal<WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>(v21, v22, *result, v18, v7, *a3, v12, v9, a6, *a5, v11);
  }

  return result;
}

uint64_t WTF::tryMakeStringImplFromAdaptersInternal<WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>@<X0>(uint64_t result@<X0>, int a2@<W1>, int8x16_t *a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, int8x16_t *a6@<X5>, char *a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, int8x16_t *a10, unint64_t a11)
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
        v18 = v28;
        if (v28)
        {
          v22 = (v28 + 5);
          *v28 = 2;
          v18[1] = v15;
          *(v18 + 1) = v18 + 5;
          v18[4] = 0;
          result = WTF::stringTypeAdapterAccumulator<char16_t,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>(v22, v17, a3, a4, a5, a6, a7, a8, a10, a11);
        }

        goto LABEL_18;
      }

LABEL_14:
      v18 = 0;
      goto LABEL_18;
    }

LABEL_15:
    v18 = MEMORY[0x1E696EB88];
    atomic_fetch_add_explicit(MEMORY[0x1E696EB88], 2u, memory_order_relaxed);
    goto LABEL_18;
  }

  if (!result)
  {
    goto LABEL_15;
  }

  if ((result & 0x80000000) != 0)
  {
    goto LABEL_14;
  }

  result = WTF::tryFastCompactMalloc((result + 20));
  v18 = v28;
  if (v28)
  {
    v23 = a9;
    v19 = (v28 + 5);
    *v28 = 2;
    v18[1] = v15;
    *(v18 + 1) = v18 + 5;
    v18[4] = 4;
    if (a4)
    {
      if (a4 == 1)
      {
        goto LABEL_20;
      }

      memcpy(v18 + 5, a3, a4);
    }

    while (1)
    {
      if (v17 >= a4)
      {
        v20 = v17 - a4;
        v19 += a4;
        v28 = a5;
        WTF::StringTypeAdapter<WTF::StringImpl *,void>::writeTo<unsigned char>(&v28, v19);
        v21 = v28;
        if (!v28)
        {
          break;
        }

        v21 = v28[1];
        if (v20 >= v21)
        {
          break;
        }
      }

      __break(1u);
LABEL_20:
      *v19 = a3->i8[0];
    }

    result = WTF::stringTypeAdapterAccumulator<unsigned char,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>(&v19[v21], v20 - v21, a6, a7, a8, a10->i8, a11);
    a9 = v23;
  }

LABEL_18:
  *a9 = v18;
  return result;
}

void *WTF::Detail::CallableWrapper<WebKit::NetworkLoadChecker::checkRedirection(WebCore::ResourceRequest &&,WebCore::ResourceRequest &,WebCore::ResourceResponse &&,WebCore::ContentSecurityPolicyClient *,WTF::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<WebKit::NetworkLoadChecker::RedirectionTriplet,WebCore::ResourceError> &&)> &&)::$_0,void,mpark::variant<WebCore::ResourceRequest,std::experimental::fundamentals_v3,std::experimental::fundamentals_v3::expected> &&>::~CallableWrapper(void *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F1101298;
  v3 = a1[58];
  a1[58] = 0;
  if (v3)
  {
    CFRelease(v3);
  }

  WebCore::ResourceResponseBase::~ResourceResponseBase((a1 + 27), a2);
  WebCore::ResourceRequest::~ResourceRequest((a1 + 2));
  v4 = a1[1];
  a1[1] = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::NetworkLoadChecker::checkRedirection(WebCore::ResourceRequest &&,WebCore::ResourceRequest &,WebCore::ResourceResponse &&,WebCore::ContentSecurityPolicyClient *,WTF::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<WebKit::NetworkLoadChecker::RedirectionTriplet,WebCore::ResourceError> &&)> &&)::$_0,void,mpark::variant<WebCore::ResourceRequest,std::experimental::fundamentals_v3,std::experimental::fundamentals_v3::expected> &&>::~CallableWrapper(void *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F1101298;
  v3 = a1[58];
  a1[58] = 0;
  if (v3)
  {
    CFRelease(v3);
  }

  WebCore::ResourceResponseBase::~ResourceResponseBase((a1 + 27), a2);
  WebCore::ResourceRequest::~ResourceRequest((a1 + 2));
  v5 = a1[1];
  a1[1] = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  return WTF::fastFree(a1, v4);
}

void WTF::Detail::CallableWrapper<WebKit::NetworkLoadChecker::checkRedirection(WebCore::ResourceRequest &&,WebCore::ResourceRequest &,WebCore::ResourceResponse &&,WebCore::ContentSecurityPolicyClient *,WTF::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<WebKit::NetworkLoadChecker::RedirectionTriplet,WebCore::ResourceError> &&)> &&)::$_0,void,mpark::variant<WebCore::ResourceRequest,std::experimental::fundamentals_v3,std::experimental::fundamentals_v3::expected> &&>::call(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 664);
  if (v4 == 255)
  {
    v5 = -1;
  }

  else
  {
    v5 = *(a2 + 664);
  }

  if (v5 != 2)
  {
    if (v5 == 1)
    {
      if (v4 == 1)
      {
        WTF::URL::URL(v56, (a1 + 16));
        WTF::URL::URL(&v58 + 8, (a1 + 56));
        v64 = *(a1 + 96);
        v6 = *(a1 + 104);
        *(a1 + 104) = 0u;
        v65 = v6;
        *&v6 = *(a1 + 120);
        *(a1 + 120) = 0;
        v66 = v6;
        *&v6 = *(a1 + 136);
        v67 = *(a1 + 128);
        v68 = v6;
        v7 = *(a1 + 144);
        *&v6 = *(a1 + 152);
        v55 = 0u;
        *(a1 + 128) = 0u;
        *(a1 + 144) = 0u;
        v69 = v7;
        v70 = v6;
        LODWORD(v7) = *(a1 + 160);
        v72 = *(a1 + 164);
        v71 = v7;
        v8 = *(a1 + 168);
        *(a1 + 168) = 0u;
        v73 = v8;
        v9 = *(a1 + 184);
        v10 = *(a1 + 192);
        *(a1 + 184) = 0;
        v76 = *(a1 + 200);
        v74 = v9;
        v75 = v10;
        v11 = *(a1 + 208);
        *(a1 + 208) = 0;
        v77 = v11;
        WTF::URL::URL(v78, (a2 + 200));
        WTF::URL::URL(v79, (a2 + 240));
        v80 = *(a2 + 280);
        v12 = *(a2 + 288);
        *(a2 + 288) = 0u;
        v81 = v12;
        *&v12 = *(a2 + 304);
        *(a2 + 304) = 0;
        v82 = v12;
        v13 = *(a2 + 312);
        *&v12 = *(a2 + 320);
        *(a2 + 312) = 0u;
        v83 = v13;
        v84 = v12;
        v14 = *(a2 + 328);
        *&v12 = *(a2 + 336);
        *(a2 + 328) = 0u;
        v85 = v14;
        v86 = v12;
        v15 = *(a2 + 344);
        v88 = *(a2 + 348);
        v87 = v15;
        v16 = *(a2 + 352);
        *(a2 + 352) = 0u;
        v89 = v16;
        v92 = *(a2 + 384);
        v17 = *(a2 + 368);
        v18 = *(a2 + 376);
        *(a2 + 368) = 0;
        v90 = v17;
        v91 = v18;
        v19 = *(a2 + 392);
        *(a2 + 392) = 0;
LABEL_24:
        v93 = v19;
        WTF::URL::URL(v94, (a1 + 216));
        v41 = *(a1 + 272);
        v42 = *(a1 + 288);
        *(a1 + 272) = 0u;
        *(a1 + 288) = 0u;
        v43 = *(a1 + 256);
        v44 = *(a1 + 264);
        *(a1 + 256) = 0;
        v94[5] = v43;
        v94[6] = v44;
        v95 = v41;
        v96 = v42;
        *&v41 = *(a1 + 304);
        *(a1 + 304) = 0;
        v97 = v41;
        v45 = *(a1 + 312);
        *&v41 = *(a1 + 320);
        *(a1 + 312) = v55;
        v98 = v45;
        v99 = v41;
        v46 = *(a1 + 328);
        *(a1 + 328) = 0;
        v100 = v46;
        LOBYTE(v101) = 0;
        v102 = 0;
        if (*(a1 + 344) == 1)
        {
          v54 = *(a1 + 336);
          *(a1 + 336) = 0;
          v101 = v54;
          v102 = 1;
        }

        v103 = *(a1 + 352);
        v104 = *(a1 + 354);
        v47 = *(a1 + 360);
        *(a1 + 360) = 0;
        v105 = v47;
        v48 = *(a1 + 416);
        v108 = *(a1 + 400);
        v109 = v48;
        v110[0] = *(a1 + 432);
        v49 = *(a1 + 384);
        v106 = *(a1 + 368);
        v107 = v49;
        *(v110 + 11) = *(a1 + 443);
        v50 = *(a1 + 464);
        *(a1 + 464) = 0;
        cf = v50;
        v112 = *(a1 + 472);
        WebKit::NetworkLoadChecker::RedirectionTriplet::RedirectionTriplet(v113, v56);
        v119 = 0;
        v51 = *(a1 + 8);
        *(a1 + 8) = 0;
        (*(*v51 + 16))(v51, v113);
        (*(*v51 + 8))(v51);
        if (v119 != 255)
        {
          mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<WebKit::NetworkLoadChecker::RedirectionTriplet,WebCore::ResourceError>,(mpark::detail::Trait)1> &>(v113, v52);
        }

        v119 = -1;
        v53 = cf;
        cf = 0;
        if (v53)
        {
          CFRelease(v53);
        }

        WebCore::ResourceResponseBase::~ResourceResponseBase(v94, v52);
        WebCore::ResourceRequest::~ResourceRequest(v78);
        WebCore::ResourceRequest::~ResourceRequest(v56);
        return;
      }
    }

    else if (!*(a2 + 664))
    {
      WTF::URL::URL(v56, (a1 + 16));
      WTF::URL::URL(&v58 + 8, (a1 + 56));
      v64 = *(a1 + 96);
      v30 = *(a1 + 104);
      *(a1 + 104) = 0u;
      v65 = v30;
      *&v30 = *(a1 + 120);
      *(a1 + 120) = 0;
      v66 = v30;
      *&v30 = *(a1 + 136);
      v67 = *(a1 + 128);
      v68 = v30;
      v31 = *(a1 + 144);
      *&v30 = *(a1 + 152);
      v55 = 0u;
      *(a1 + 128) = 0u;
      *(a1 + 144) = 0u;
      v69 = v31;
      v70 = v30;
      LODWORD(v31) = *(a1 + 160);
      v72 = *(a1 + 164);
      v71 = v31;
      v32 = *(a1 + 168);
      *(a1 + 168) = 0u;
      v73 = v32;
      v33 = *(a1 + 184);
      v34 = *(a1 + 192);
      *(a1 + 184) = 0;
      v76 = *(a1 + 200);
      v74 = v33;
      v75 = v34;
      v35 = *(a1 + 208);
      *(a1 + 208) = 0;
      v77 = v35;
      WTF::URL::URL(v78, a2);
      WTF::URL::URL(v79, (a2 + 40));
      v80 = *(a2 + 80);
      v36 = *(a2 + 88);
      *(a2 + 88) = 0u;
      v81 = v36;
      *&v36 = *(a2 + 104);
      *(a2 + 104) = 0;
      v82 = v36;
      *&v36 = *(a2 + 120);
      v83 = *(a2 + 112);
      v84 = v36;
      v37 = *(a2 + 128);
      *&v36 = *(a2 + 136);
      *(a2 + 112) = 0u;
      *(a2 + 128) = 0u;
      v85 = v37;
      v86 = v36;
      LODWORD(v37) = *(a2 + 144);
      v88 = *(a2 + 148);
      v87 = v37;
      v38 = *(a2 + 152);
      *(a2 + 152) = 0u;
      v89 = v38;
      v92 = *(a2 + 184);
      v39 = *(a2 + 168);
      v40 = *(a2 + 176);
      *(a2 + 168) = 0;
      v90 = v39;
      v91 = v40;
      v19 = *(a2 + 192);
      *(a2 + 192) = 0;
      goto LABEL_24;
    }

LABEL_32:
    mpark::throw_bad_variant_access(a1);
  }

  if (v4 != 2)
  {
    goto LABEL_32;
  }

  v20 = *a2;
  *a2 = 0;
  v56[0] = v20;
  WTF::URL::URL(&v56[1], (a2 + 8));
  v21 = *(a2 + 48);
  *(a2 + 48) = 0;
  v60 = *(a2 + 56);
  v61 = *(a2 + 60);
  v22 = *(a2 + 64);
  *(a2 + 64) = 0;
  v63 = *(a2 + 72);
  v23 = *v56;
  v56[0] = 0;
  v56[1] = 0;
  v113[0] = v23;
  v113[1] = v57;
  v113[2] = v58;
  LODWORD(v57) = v57 & 0xFFFFFFFE;
  v59 = 0;
  v114 = v21;
  LODWORD(v21) = *(a2 + 56);
  v116 = *(a2 + 60);
  v115 = v21;
  v62 = 0;
  v117 = v22;
  v118 = v63;
  v119 = 1;
  v24 = *(a1 + 8);
  *(a1 + 8) = 0;
  (*(*v24 + 16))(v24, v113);
  (*(*v24 + 8))(v24);
  if (v119 != 255)
  {
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<WebKit::NetworkLoadChecker::RedirectionTriplet,WebCore::ResourceError>,(mpark::detail::Trait)1> &>(v113, v25);
  }

  v119 = -1;
  v26 = v62;
  v62 = 0;
  if (v26)
  {
    CFRelease(v26);
  }

  v27 = v59;
  v59 = 0;
  if (v27 && atomic_fetch_add_explicit(v27, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v27, v25);
  }

  v28 = v56[1];
  v56[1] = 0;
  if (v28 && atomic_fetch_add_explicit(v28, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v28, v25);
  }

  v29 = v56[0];
  v56[0] = 0;
  if (v29 && atomic_fetch_add_explicit(v29, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v29, v25);
  }
}

void *WTF::Detail::CallableWrapper<WebKit::NetworkLoadChecker::checkRequest(WebCore::ResourceRequest &&,WebCore::ContentSecurityPolicyClient *,WTF::CompletionHandler<void ()(mpark::variant<WebCore::ResourceRequest,WebKit::NetworkLoadChecker::RedirectionTriplet,WebCore::ResourceError> &&)> &&)::$_0,void,std::experimental::fundamentals_v3::expected<WebKit::NetworkLoadChecker::ContentExtensionResult,WebKit::NetworkLoadChecker::RedirectionTriplet> &&>::~CallableWrapper(void *a1)
{
  *a1 = &unk_1F11012C0;
  WebCore::ResourceRequest::~ResourceRequest((a1 + 3));
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
    WTF::fastFree(v4, v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::NetworkLoadChecker::checkRequest(WebCore::ResourceRequest &&,WebCore::ContentSecurityPolicyClient *,WTF::CompletionHandler<void ()(mpark::variant<WebCore::ResourceRequest,WebKit::NetworkLoadChecker::RedirectionTriplet,WebCore::ResourceError> &&)> &&)::$_0,void,std::experimental::fundamentals_v3::expected<WebKit::NetworkLoadChecker::ContentExtensionResult,WebKit::NetworkLoadChecker::RedirectionTriplet> &&>::~CallableWrapper(void *a1)
{
  *a1 = &unk_1F11012C0;
  WebCore::ResourceRequest::~ResourceRequest((a1 + 3));
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
    WTF::fastFree(v4, v2);
  }

  return WTF::fastFree(a1, v2);
}

void WTF::Detail::CallableWrapper<WebKit::NetworkLoadChecker::checkRequest(WebCore::ResourceRequest &&,WebCore::ContentSecurityPolicyClient *,WTF::CompletionHandler<void ()(mpark::variant<WebCore::ResourceRequest,WebKit::NetworkLoadChecker::RedirectionTriplet,WebCore::ResourceError> &&)> &&)::$_0,void,std::experimental::fundamentals_v3::expected<WebKit::NetworkLoadChecker::ContentExtensionResult,WebKit::NetworkLoadChecker::RedirectionTriplet> &&>::call(uint64_t *a1, WebCore::ResourceRequestBase *this)
{
  v95 = *MEMORY[0x1E69E9840];
  if (*(this + 208))
  {
    if (*(this + 208) != 1)
    {
      mpark::throw_bad_variant_access(a1);
    }

    mpark::variant<WebCore::ResourceRequest,WebKit::NetworkLoadChecker::RedirectionTriplet,WebCore::ResourceError>::variant<WebCore::ResourceError,WebCore::ResourceError,0,0,0,2ul,WebCore::ResourceError,0>(buf, this);
    v18 = a1[2];
    a1[2] = 0;
    goto LABEL_11;
  }

  v4 = a1[1];
  if (!v4 || (v5 = *(v4 + 8)) == 0)
  {
    v68 = 0;
    v69[0] = 0;
    WTF::URL::invalidate(v69);
    v69[5] = 0;
    v70 = 0;
    v71 = 3;
    v72 = 0;
    v73 = 1;
    mpark::variant<WebCore::ResourceRequest,WebKit::NetworkLoadChecker::RedirectionTriplet,WebCore::ResourceError>::variant<WebCore::ResourceError,WebCore::ResourceError,0,0,0,2ul,WebCore::ResourceError,0>(buf, &v68);
    v62 = a1[2];
    a1[2] = 0;
    (*(*v62 + 16))(v62, buf);
    (*(*v62 + 8))(v62);
    mpark::detail::assignment<mpark::detail::traits<WebCore::ResourceRequest,WebKit::NetworkLoadChecker::RedirectionTriplet,WebCore::ResourceError>>::~assignment(buf, v63);
    WebCore::ResourceError::~ResourceError(&v68, v64);
    return;
  }

  if (**(this + 25) != 1)
  {
    if ((*(v5 + 1144) & 1) == 0)
    {
      v52 = WebCore::ResourceRequestBase::url(this);
      v53 = WebCore::ResourceRequestBase::url((a1 + 3));
      if ((WTF::equal(*v52, *v53, v54) & 1) == 0)
      {
        v55 = WebCore::ResourceRequestBase::url((a1 + 3));
        v56 = WebCore::ResourceRequestBase::url(this);
        WebCore::ResourceResponseBase::syntheticRedirectResponse(v76, v55, v56, v57);
        WebCore::ResourceRequest::ResourceRequest(&v68, (a1 + 3));
        WebCore::ResourceRequest::ResourceRequest(&v74, this);
        std::__tuple_leaf<0ul,WebCore::ResourceResponse,false>::__tuple_leaf[abi:sn200100]<WebCore::ResourceResponse,0>(&v75, v76);
        WebKit::NetworkLoadChecker::RedirectionTriplet::RedirectionTriplet(buf, &v68);
        v94 = 1;
        v58 = a1[2];
        a1[2] = 0;
        (*(*v58 + 16))(v58, buf);
        (*(*v58 + 8))(v58);
        mpark::detail::assignment<mpark::detail::traits<WebCore::ResourceRequest,WebKit::NetworkLoadChecker::RedirectionTriplet,WebCore::ResourceError>>::~assignment(buf, v59);
        WebKit::NetworkLoadChecker::RedirectionTriplet::~RedirectionTriplet(&v68, v60);
        WebCore::ResourceResponse::~ResourceResponse(v76, v61);
        return;
      }
    }

    if (*(v5 + 18) == 1)
    {
      if (*(v5 + 448) == 1)
      {
        v31 = *(v5 + 240);
        if (v31)
        {
          atomic_fetch_add(v31, 1u);
        }

        v32 = WebCore::ResourceRequestBase::url(this);
        v33 = *(v5 + 1160);
        if (!v33 || !*(v33 + 8))
        {
          WebCore::EmptyOriginAccessPatterns::singleton(v32);
        }

        *(v5 + 64) = WebCore::SecurityOrigin::canRequest();
        if (v31)
        {
          WTF::ThreadSafeRefCounted<WebCore::SecurityOrigin,(WTF::DestructionThread)0>::deref(v31, v34);
        }
      }

      else
      {
        *(v5 + 64) = 0;
      }
    }

    if (*(v5 + 448) == 1)
    {
      v6 = WebCore::ResourceRequestBase::url(this);
      isSameOrigin = WebKit::NetworkLoadChecker::isSameOrigin(v5, v6, *(v5 + 240));
    }

    else
    {
      isSameOrigin = 0;
    }

    *(v5 + 448) = isSameOrigin;
    v8 = WebCore::ResourceRequestBase::url(this);
    if ((*(v5 + 17) | 2) != 2)
    {
      v20 = *(v5 + 1152);
      if (!v20 || (v21 = WTF::URL::protocol(v8), WebKit::NetworkSchemeRegistry::shouldTreatURLSchemeAsCORSEnabled(v20, v21, v22 & 0xFFFFFFFFFFLL)))
      {
        if (*(v5 + 448) != 1)
        {
          if (*(v5 + 17) == 1)
          {
            v23 = WebCore::ResourceRequestBase::url(this);
            WTF::URL::stringCenterEllipsizedToLength(v23);
            v24 = *(v5 + 240);
            if (v24)
            {
              atomic_fetch_add(v24, 1u);
            }

            WebCore::SecurityOrigin::toString(&v77, v24);
            WTF::makeString<WTF::ASCIILiteral,WTF::String,WTF::ASCIILiteral,WTF::String,WTF::ASCIILiteral>("Unsafe attempt to load URL ", 28, v76, " from origin ", 14, &v77, ". Domains, protocols and ports must match.\n", 44, &v68);
            WebKit::NetworkLoadChecker::accessControlErrorForValidationHandler(buf, v5, &v68);
            v25 = a1[2];
            a1[2] = 0;
            (*(*v25 + 16))(v25, buf);
            (*(*v25 + 8))(v25);
            mpark::detail::assignment<mpark::detail::traits<WebCore::ResourceRequest,WebKit::NetworkLoadChecker::RedirectionTriplet,WebCore::ResourceError>>::~assignment(buf, v26);
            v28 = v68;
            v68 = 0;
            if (v28 && atomic_fetch_add_explicit(v28, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v28, v27);
            }

            v29 = v77;
            v77 = 0;
            if (v29 && atomic_fetch_add_explicit(v29, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v29, v27);
            }

            if (v24)
            {
              WTF::ThreadSafeRefCounted<WebCore::SecurityOrigin,(WTF::DestructionThread)0>::deref(v24, v27);
            }

            v30 = v76[0];
            v76[0] = 0;
            if (v30 && atomic_fetch_add_explicit(v30, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              goto LABEL_25;
            }

            return;
          }

          if (!*(v5 + 464))
          {
LABEL_45:
            WebKit::NetworkLoadChecker::checkCORSRequest(v5, this, a1 + 2);
            return;
          }

          v35 = qword_1ED6416F0;
          v36 = os_log_type_enabled(qword_1ED6416F0, OS_LOG_TYPE_DEFAULT);
          if (v36)
          {
            *buf = 134217984;
            *&buf[4] = v5;
            _os_log_impl(&dword_19D52D000, v35, OS_LOG_TYPE_DEFAULT, "%p - NetworkLoadChecker::checkRequest - Redirect requires CORS checks", buf, 0xCu);
          }

          *(v5 + 448) = 0;
          v37 = *(v5 + 240);
          if (v37)
          {
            atomic_fetch_add(v37, 1u);
          }

          v38 = *(v5 + 1160);
          if (!v38 || !*(v38 + 8))
          {
            WebCore::EmptyOriginAccessPatterns::singleton(v36);
          }

          if (WebCore::SecurityOrigin::canRequest())
          {
            if (!v37)
            {
LABEL_42:
              WebCore::ResourceRequestBase::httpHeaderFields(this);
              if ((WebCore::HTTPHeaderMap::contains() & 1) == 0)
              {
                WebCore::HTTPHeaderMap::remove();
              }

              WTF::Vector<WebCore::HTTPHeaderMap::CommonHeader,0ul,WTF::CrashOnOverflow,6ul,WTF::FastMalloc>::Vector(buf, v5 + 128);
              WTF::Vector<WebCore::HTTPHeaderMap::UncommonHeader,0ul,WTF::CrashOnOverflow,0ul,WTF::FastMalloc>::Vector(v79, v5 + 144);
              WebCore::ResourceRequestBase::setHTTPHeaderFields();
              WTF::Vector<WebCore::HTTPHeaderMap::UncommonHeader,0ul,WTF::CrashOnOverflow,0ul,WTF::FastMalloc>::~Vector(v79, v40);
              WTF::Vector<WebCore::HTTPHeaderMap::CommonHeader,0ul,WTF::CrashOnOverflow,6ul,WTF::FastMalloc>::~Vector(buf, v41);
              goto LABEL_45;
            }

            v51 = v37;
          }

          else
          {
            v42 = WebCore::ResourceRequestBase::url(this);
            v44 = WTF::protocolHostAndPortAreEqual((v5 + 472), v42, v43);
            v46 = v44;
            if (v37)
            {
              v44 = WTF::ThreadSafeRefCounted<WebCore::SecurityOrigin,(WTF::DestructionThread)0>::deref(v37, v45);
            }

            if (v46)
            {
              goto LABEL_42;
            }

            v47 = *(v5 + 240);
            if (v47)
            {
              if (*(v47 + 32) == 1)
              {
                goto LABEL_42;
              }
            }

            WebCore::SecurityOrigin::createOpaque(buf, v44);
            v49 = *buf;
            *buf = 0;
            v50 = *(v5 + 240);
            *(v5 + 240) = v49;
            if (!v50)
            {
              goto LABEL_42;
            }

            WTF::ThreadSafeRefCounted<WebCore::SecurityOrigin,(WTF::DestructionThread)0>::deref(v50, v48);
            v51 = *buf;
            *buf = 0;
            if (!v51)
            {
              goto LABEL_42;
            }
          }

          WTF::ThreadSafeRefCounted<WebCore::SecurityOrigin,(WTF::DestructionThread)0>::deref(v51, v39);
          goto LABEL_42;
        }
      }
    }

    WTF::URL::URL(buf, this);
    WTF::URL::URL(v80, this + 5);
    v9 = *(this + 10);
    v10 = *(this + 88);
    *(this + 88) = 0u;
    v81 = v10;
    *&v10 = *(this + 13);
    *(this + 13) = 0;
    v80[5] = v9;
    v82 = v10;
    v11 = *(this + 15);
    v83 = *(this + 14);
    v84 = v11;
    v12 = *(this + 16);
    v13 = *(this + 17);
    *(this + 7) = 0u;
    *(this + 8) = 0u;
    v85 = v12;
    v86 = v13;
    LODWORD(v12) = *(this + 36);
    v88 = *(this + 148);
    v87 = v12;
    v14 = *(this + 152);
    *(this + 152) = 0u;
    v89 = v14;
    v15 = *(this + 21);
    v16 = *(this + 22);
    *(this + 21) = 0;
    v92 = *(this + 184);
    v90 = v15;
    v91 = v16;
    v17 = *(this + 24);
    *(this + 24) = 0;
    v93 = v17;
    v94 = 0;
    v18 = a1[2];
    a1[2] = 0;
LABEL_11:
    (*(*v18 + 16))(v18, buf);
    (*(*v18 + 8))(v18);
    mpark::detail::assignment<mpark::detail::traits<WebCore::ResourceRequest,WebKit::NetworkLoadChecker::RedirectionTriplet,WebCore::ResourceError>>::~assignment(buf, v19);
    return;
  }

  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v65 = *buf;
  v68 = *buf;
  WebKit::NetworkLoadChecker::accessControlErrorForValidationHandler(buf, v5, &v68);
  v66 = a1[2];
  a1[2] = 0;
  (*(*v66 + 16))(v66, buf);
  (*(*v66 + 8))(v66);
  mpark::detail::assignment<mpark::detail::traits<WebCore::ResourceRequest,WebKit::NetworkLoadChecker::RedirectionTriplet,WebCore::ResourceError>>::~assignment(buf, v67);
  if (v65 && atomic_fetch_add_explicit(v65, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    v30 = v65;
LABEL_25:
    WTF::StringImpl::destroy(v30, v27);
  }
}

void *WTF::Detail::CallableWrapper<WebKit::NetworkLoadChecker::checkCORSRequestWithPreflight(WebCore::ResourceRequest &&,WTF::CompletionHandler<void ()(mpark::variant<WebCore::ResourceRequest,WebKit::NetworkLoadChecker::RedirectionTriplet,WebCore::ResourceError> &&)> &&)::$_0,void,WebKit::NetworkLoadChecker::RedirectionTriplet&&>::~CallableWrapper(void *a1)
{
  *a1 = &unk_1F11012E8;
  v2 = a1[27];
  a1[27] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  WebCore::ResourceRequest::~ResourceRequest((a1 + 2));
  v4 = a1[1];
  a1[1] = 0;
  if (v4 && atomic_fetch_add(v4, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v4);
    WTF::fastFree(v4, v3);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::NetworkLoadChecker::checkCORSRequestWithPreflight(WebCore::ResourceRequest &&,WTF::CompletionHandler<void ()(mpark::variant<WebCore::ResourceRequest,WebKit::NetworkLoadChecker::RedirectionTriplet,WebCore::ResourceError> &&)> &&)::$_0,void,WebKit::NetworkLoadChecker::RedirectionTriplet&&>::~CallableWrapper(void *a1)
{
  *a1 = &unk_1F11012E8;
  v2 = a1[27];
  a1[27] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  WebCore::ResourceRequest::~ResourceRequest((a1 + 2));
  v4 = a1[1];
  a1[1] = 0;
  if (v4 && atomic_fetch_add(v4, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v4);
    WTF::fastFree(v4, v3);
  }

  return WTF::fastFree(a1, v3);
}

WebCore::ResourceRequest *WTF::Detail::CallableWrapper<WebKit::NetworkLoadChecker::checkCORSRequestWithPreflight(WebCore::ResourceRequest &&,WTF::CompletionHandler<void ()(mpark::variant<WebCore::ResourceRequest,WebKit::NetworkLoadChecker::RedirectionTriplet,WebCore::ResourceError> &&)> &&)::$_0,void,WebKit::NetworkLoadChecker::RedirectionTriplet&&>::call(uint64_t a1, uint64_t *a2)
{
  v70 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 8);
  if (v3 && (v4 = *(v3 + 8)) != 0)
  {
    ++*(v4 + 8);
    v6 = qword_1ED6416F0;
    if (os_log_type_enabled(qword_1ED6416F0, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a2 + 60) == 0;
      v8 = *(a1 + 224);
      *v41 = 134218496;
      *&v41[4] = v4;
      v42 = 1024;
      v43 = v7;
      v44 = 1024;
      v45 = v8;
      _os_log_impl(&dword_19D52D000, v6, OS_LOG_TYPE_DEFAULT, "%p - NetworkLoadChecker::checkCORSRequestWithPreflight - makeCrossOriginAccessRequestWithPreflight preflight complete, success=%d forRedirect=%d", v41, 0x18u);
    }

    if (*(a2 + 60))
    {
      v9 = *a2;
      *a2 = 0;
      *v41 = v9;
      v10 = WTF::URL::URL(&v41[8], a2 + 1);
      v11 = a2[6];
      a2[6] = 0;
      v46[1] = v11;
      v48 = *(a2 + 30);
      v47 = *(a2 + 14);
      v12 = a2[8];
      a2[8] = 0;
      v49 = v12;
      v50 = *(a2 + 72);
      v69 = 2;
      v13 = *(a1 + 216);
      *(a1 + 216) = 0;
      (*(*v13 + 16))(v13, v41, v10);
      (*(*v13 + 8))(v13);
      mpark::detail::assignment<mpark::detail::traits<WebCore::ResourceRequest,WebKit::NetworkLoadChecker::RedirectionTriplet,WebCore::ResourceError>>::~assignment(v41, v14);
    }

    else
    {
      if (*(v4 + 529) == 1)
      {
        v16 = *(v4 + 440);
        if (v16)
        {
          ++*(v16 + 16);
        }

        WebCore::NetworkTransactionInformation::NetworkTransactionInformation(v41, v16 + 576);
        v17 = *(v4 + 1140);
        if (v17 == *(v4 + 1136))
        {
          WTF::Vector<WebCore::NetworkTransactionInformation,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebCore::NetworkTransactionInformation>(v4 + 1128, v41);
        }

        else
        {
          WebCore::NetworkTransactionInformation::NetworkTransactionInformation(*(v4 + 1128) + 600 * v17, v41);
          ++*(v4 + 1140);
        }

        v19 = v68;
        v68 = 0;
        if (v19)
        {
          WTF::RefCounted<WebCore::AdditionalNetworkLoadMetricsForWebInspector>::deref(v19, v18);
        }

        v20 = v67;
        v67 = 0;
        if (v20 && atomic_fetch_add_explicit(v20, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v20, v18);
        }

        v21 = cf;
        cf = 0;
        if (v21)
        {
          CFRelease(v21);
        }

        WebCore::ResourceResponseBase::~ResourceResponseBase(&v65, v18);
        WebCore::ResourceRequest::~ResourceRequest(&v41[8]);
        if (v16)
        {
          WTF::RefCounted<WebKit::NetworkCORSPreflightChecker>::deref((v16 + 16), v22);
        }
      }

      v23 = *(v4 + 440);
      *(v4 + 440) = 0;
      v24 = *(v4 + 240);
      if (v24)
      {
        atomic_fetch_add(v24, 1u);
      }

      WebCore::updateRequestForAccessControl();
      WTF::ThreadSafeRefCounted<WebCore::SecurityOrigin,(WTF::DestructionThread)0>::deref(v24, v25);
      WTF::URL::URL(v41, (a1 + 16));
      WTF::URL::URL(v46, (a1 + 56));
      v51 = *(a1 + 96);
      v26 = *(a1 + 104);
      *(a1 + 104) = 0u;
      v52 = v26;
      *&v26 = *(a1 + 120);
      *(a1 + 120) = 0;
      v53 = v26;
      *&v26 = *(a1 + 136);
      v54 = *(a1 + 128);
      v55 = v26;
      v27 = *(a1 + 144);
      *&v26 = *(a1 + 152);
      *(a1 + 128) = 0u;
      *(a1 + 144) = 0u;
      v56 = v27;
      v57 = v26;
      LODWORD(v27) = *(a1 + 160);
      v59 = *(a1 + 164);
      v58 = v27;
      v28 = *(a1 + 168);
      *(a1 + 168) = 0u;
      v60 = v28;
      v29 = *(a1 + 184);
      v30 = *(a1 + 192);
      *(a1 + 184) = 0;
      v63 = *(a1 + 200);
      v61 = v29;
      v62 = v30;
      v31 = *(a1 + 216);
      v64 = *(a1 + 208);
      v69 = 0;
      *(a1 + 208) = 0u;
      (*(*v31 + 16))(v31, v41);
      (*(*v31 + 8))(v31);
      mpark::detail::assignment<mpark::detail::traits<WebCore::ResourceRequest,WebKit::NetworkLoadChecker::RedirectionTriplet,WebCore::ResourceError>>::~assignment(v41, v32);
      if (v23)
      {
        WTF::RefCounted<WebKit::NetworkCORSPreflightChecker>::deref((v23 + 16), v15);
      }
    }

    return WTF::RefCounted<WebKit::NetworkLoadChecker>::deref((v4 + 8), v15);
  }

  else
  {
    WTF::URL::URL(v41, (a1 + 16));
    WTF::URL::URL(v46, (a1 + 56));
    v51 = *(a1 + 96);
    v34 = *(a1 + 104);
    *(a1 + 104) = 0u;
    v52 = v34;
    *&v34 = *(a1 + 120);
    *(a1 + 120) = 0;
    v53 = v34;
    *&v34 = *(a1 + 136);
    v54 = *(a1 + 128);
    v55 = v34;
    v35 = *(a1 + 144);
    *&v34 = *(a1 + 152);
    *(a1 + 128) = 0u;
    *(a1 + 144) = 0u;
    v56 = v35;
    v57 = v34;
    LODWORD(v35) = *(a1 + 160);
    v59 = *(a1 + 164);
    v58 = v35;
    v36 = *(a1 + 168);
    *(a1 + 168) = 0u;
    v60 = v36;
    v37 = *(a1 + 184);
    v38 = *(a1 + 192);
    *(a1 + 184) = 0;
    v63 = *(a1 + 200);
    v61 = v37;
    v62 = v38;
    v39 = *(a1 + 216);
    v64 = *(a1 + 208);
    v69 = 0;
    *(a1 + 208) = 0u;
    (*(*v39 + 16))(v39, v41);
    (*(*v39 + 8))(v39);
    return mpark::detail::assignment<mpark::detail::traits<WebCore::ResourceRequest,WebKit::NetworkLoadChecker::RedirectionTriplet,WebCore::ResourceError>>::~assignment(v41, v40);
  }
}

void *WTF::Detail::CallableWrapper<WebKit::NetworkLoadChecker::processContentRuleListsForLoad(WebCore::ResourceRequest &&,WTF::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<WebKit::NetworkLoadChecker::ContentExtensionResult,WebCore::ResourceError> &&)> &&)::$_0,void,WebCore::ContentExtensions::ContentExtensionsBackend &>::~CallableWrapper(void *a1)
{
  *a1 = &unk_1F1101310;
  v2 = a1[27];
  a1[27] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  WebCore::ResourceRequest::~ResourceRequest((a1 + 2));
  v4 = a1[1];
  a1[1] = 0;
  if (v4 && atomic_fetch_add(v4, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v4);
    WTF::fastFree(v4, v3);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::NetworkLoadChecker::processContentRuleListsForLoad(WebCore::ResourceRequest &&,WTF::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<WebKit::NetworkLoadChecker::ContentExtensionResult,WebCore::ResourceError> &&)> &&)::$_0,void,WebCore::ContentExtensions::ContentExtensionsBackend &>::~CallableWrapper(void *a1)
{
  *a1 = &unk_1F1101310;
  v2 = a1[27];
  a1[27] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  WebCore::ResourceRequest::~ResourceRequest((a1 + 2));
  v4 = a1[1];
  a1[1] = 0;
  if (v4 && atomic_fetch_add(v4, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v4);
    WTF::fastFree(v4, v3);
  }

  return WTF::fastFree(a1, v3);
}

WTF::StringImpl *WTF::Detail::CallableWrapper<WebKit::NetworkLoadChecker::processContentRuleListsForLoad(WebCore::ResourceRequest &&,WTF::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<WebKit::NetworkLoadChecker::ContentExtensionResult,WebCore::ResourceError> &&)> &&)::$_0,void,WebCore::ContentExtensions::ContentExtensionsBackend &>::call(uint64_t a1, WebCore::ContentExtensions::ContentExtensionsBackend *a2)
{
  v3 = *(a1 + 8);
  if (v3)
  {
    v4 = *(v3 + 8);
    if (v4)
    {
      v7 = *(v4 + 8);
      v6 = (v4 + 8);
      *v6 = v7 + 1;
      v8 = WebCore::ResourceRequestBase::url((a1 + 16));
      v9 = WebCore::ResourceRequestBase::httpMethod((a1 + 16));
      WebCore::ContentExtensions::ContentExtensionsBackend::processContentRuleListsForPingLoad(&v82, a2, v8, (v6 + 84), (v6 + 94), v9);
      LODWORD(v89) = v82;
      BYTE4(v89) = BYTE4(v82);
      *(&v89 + 1) = 0;
      LODWORD(v90) = 0;
      DWORD1(v90) = v84;
      if (v84)
      {
        if (v84 >= 0x5555556)
        {
          goto LABEL_40;
        }

        v10 = 48 * v84;
        v11 = WTF::fastMalloc((48 * v84));
        LODWORD(v90) = v10 / 0x30;
        *(&v89 + 1) = v11;
        if (v84)
        {
          v12 = (v83 + 48 * v84);
          v13 = v11 + 24;
          v14 = (v83 + 24);
          do
          {
            *(v13 - 24) = *(v14 - 24);
            WTF::Vector<WebCore::ContentExtensions::ModifyHeadersAction::ModifyHeaderInfo,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(v13 - 16, v14 - 4);
            WTF::Vector<WebCore::ContentExtensions::ModifyHeadersAction::ModifyHeaderInfo,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(v13, v14);
            *(v13 + 16) = v14[4];
            v13 += 48;
            v15 = v14 + 6;
            v14 += 12;
          }

          while (v15 != v12);
        }
      }

      *(&v90 + 1) = 0;
      LODWORD(v91) = 0;
      DWORD1(v91) = v86;
      if (v86)
      {
        if (v86 >= 0x1AF286C)
        {
          __break(0xC471u);
          JUMPOUT(0x19DC7D46CLL);
        }

        v16 = 152 * v86;
        v17 = WTF::fastMalloc((152 * v86));
        LODWORD(v91) = v16 / 0x98;
        *(&v90 + 1) = v17;
        if (v86)
        {
          v18 = v85 + 152 * v86;
          v19 = (v17 + 8);
          v20 = v85 + 8;
          do
          {
            v21 = v20 - 8;
            *(v19 - 8) = *(v20 - 8);
            v22 = v19 - 8;
            v23 = mpark::detail::move_assignment<mpark::detail::traits<WebCore::ContentExtensions::RedirectAction::ExtensionPathAction,WebCore::ContentExtensions::RedirectAction::RegexSubstitutionAction,WebCore::ContentExtensions::RedirectAction::URLTransformAction,WebCore::ContentExtensions::RedirectAction::URLAction>,(mpark::detail::Trait)1>::move_assignment(v19, v20);
            v24 = *(v20 + 104);
            if (v24)
            {
              atomic_fetch_add_explicit(v24, 2u, memory_order_relaxed);
            }

            *(v23 + 13) = v24;
            v25 = *(v20 + 112);
            *(v22 + 136) = *(v20 + 128);
            *(v22 + 120) = v25;
            v19 = v23 + 152;
            v20 += 152;
          }

          while (v21 + 152 != v18);
        }
      }

      v26 = v88;
      *(&v91 + 1) = 0;
      LODWORD(v92) = 0;
      HIDWORD(v92) = v88;
      if (!v88)
      {
        goto LABEL_22;
      }

      if (!(v88 >> 27))
      {
        v27 = WTF::fastMalloc((32 * v88));
        LODWORD(v92) = v26;
        *(&v91 + 1) = v27;
        if (v88)
        {
          v28 = v87 + 32 * v88;
          v29 = v27 + 16;
          v30 = v87 + 16;
          do
          {
            v32 = v30 - 16;
            v31 = *(v30 - 16);
            if (v31)
            {
              atomic_fetch_add_explicit(v31, 2u, memory_order_relaxed);
            }

            v33 = v29 - 16;
            *(v29 - 16) = v31;
            v34 = *(v30 - 8);
            *(v33 + 12) = *(v30 - 4);
            *(v33 + 8) = v34;
            v29 = WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(v29, v30) + 32;
            v30 += 32;
          }

          while (v32 + 32 != v28);
        }

LABEL_22:
        v59[0] = 0;
        WTF::URL::invalidate(v59);
        WebCore::ContentExtensions::applyResultsToRequest();
        v36 = v59[0];
        v59[0] = 0;
        if (v36)
        {
          if (atomic_fetch_add_explicit(v36, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v36, v35);
          }
        }

        WTF::Vector<std::pair<WTF::String,WebCore::ContentRuleListResults::Result>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v91 + 8, v35);
        WTF::Vector<std::pair<WebCore::ContentExtensions::RedirectAction,WTF::URL>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v90 + 2, v37);
        WTF::Vector<WebCore::ContentExtensions::ModifyHeadersAction,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v89 + 8, v38);
        WTF::URL::URL(v59, (a1 + 16));
        WTF::URL::URL(&v61 + 8, (a1 + 56));
        v67 = *(a1 + 96);
        v39 = *(a1 + 104);
        *(a1 + 104) = 0u;
        v68 = v39;
        *&v39 = *(a1 + 120);
        *(a1 + 120) = 0;
        v69 = v39;
        *&v39 = *(a1 + 136);
        v70 = *(a1 + 128);
        v71 = v39;
        v40 = *(a1 + 144);
        *&v39 = *(a1 + 152);
        *(a1 + 128) = 0u;
        *(a1 + 144) = 0u;
        v72 = v40;
        v73 = v39;
        LODWORD(v40) = *(a1 + 160);
        v75 = *(a1 + 164);
        v74 = v40;
        v41 = *(a1 + 168);
        *(a1 + 168) = 0u;
        v76 = v41;
        v79 = *(a1 + 200);
        v42 = *(a1 + 184);
        v43 = *(a1 + 192);
        *(a1 + 184) = 0;
        v77 = v42;
        v78 = v43;
        v44 = *(a1 + 208);
        *(a1 + 208) = 0;
        v80 = v44;
        v81 = &v82;
        std::experimental::fundamentals_v3::expected<WebKit::NetworkLoadChecker::ContentExtensionResult,WebCore::ResourceError>::expected(&v89, v59);
        v45 = *(a1 + 216);
        *(a1 + 216) = 0;
        (*(*v45 + 16))(v45, &v89);
        (*(*v45 + 8))(v45);
        std::experimental::fundamentals_v3::expected<WebKit::NetworkLoadChecker::ContentExtensionResult,WebCore::ResourceError>::~expected(&v89, v46);
        WebCore::ResourceRequest::~ResourceRequest(v59);
        WTF::Vector<std::pair<WTF::String,WebCore::ContentRuleListResults::Result>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v87, v47);
        WTF::Vector<std::pair<WebCore::ContentExtensions::RedirectAction,WTF::URL>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v85, v48);
        WTF::Vector<WebCore::ContentExtensions::ModifyHeadersAction,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v83, v49);
        return WTF::RefCounted<WebKit::NetworkLoadChecker>::deref(v6, v50);
      }

LABEL_40:
      __break(0xC471u);
      JUMPOUT(0x19DC7D464);
    }
  }

  v59[0] = 0;
  v59[1] = 0;
  WTF::URL::invalidate(&v59[1]);
  v63 = 0;
  v64 = 3;
  v66 = 1;
  v62 = 0;
  v94 = 3;
  v93 = 0;
  cf = 0;
  v52 = *v59;
  v59[0] = 0;
  v59[1] = 0;
  v89 = v52;
  v90 = v60;
  LODWORD(v60) = v60 & 0xFFFFFFFE;
  v91 = v61;
  v92 = 0;
  v95 = 0;
  v96 = 1;
  v97 = 1;
  v53 = *(a1 + 216);
  *(a1 + 216) = 0;
  (*(*v53 + 16))(v53, &v89);
  (*(*v53 + 8))(v53);
  std::experimental::fundamentals_v3::expected<WebKit::NetworkLoadChecker::ContentExtensionResult,WebCore::ResourceError>::~expected(&v89, v54);
  v56 = cf;
  cf = 0;
  if (v56)
  {
    CFRelease(v56);
  }

  v57 = v62;
  v62 = 0;
  if (v57 && atomic_fetch_add_explicit(v57, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v57, v55);
  }

  v58 = v59[1];
  v59[1] = 0;
  if (v58 && atomic_fetch_add_explicit(v58, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v58, v55);
  }

  result = v59[0];
  v59[0] = 0;
  if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    return WTF::StringImpl::destroy(result, v55);
  }

  return result;
}

uint64_t WTF::Vector<WebCore::ContentExtensions::ModifyHeadersAction::ModifyHeaderInfo,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(uint64_t result, unsigned int *a2)
{
  v2 = result;
  v3 = a2[3];
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
    v7 = a2[3];
    if (v7)
    {
      v8 = 24 * v7;
      v9 = (*a2 + 16);
      do
      {
        *v6 = 0;
        *(v6 + 16) = -1;
        v10 = *v9;
        if (v10 != 255)
        {
          v11 = *(v9 - 2);
          if (v10 == 2)
          {
            if (v11)
            {
              atomic_fetch_add_explicit(v11, 2u, memory_order_relaxed);
            }

            *v6 = v11;
          }

          else
          {
            if (v11)
            {
              atomic_fetch_add_explicit(v11, 2u, memory_order_relaxed);
            }

            *v6 = v11;
            v12 = *(v9 - 1);
            if (v12)
            {
              atomic_fetch_add_explicit(v12, 2u, memory_order_relaxed);
            }

            *(v6 + 8) = v12;
          }

          *(v6 + 16) = *v9;
        }

        v6 += 24;
        v9 += 24;
        v8 -= 24;
      }

      while (v8);
    }

    return v2;
  }

  __break(0xC471u);
  return result;
}

_BYTE *mpark::detail::move_assignment<mpark::detail::traits<WebCore::ContentExtensions::RedirectAction::ExtensionPathAction,WebCore::ContentExtensions::RedirectAction::RegexSubstitutionAction,WebCore::ContentExtensions::RedirectAction::URLTransformAction,WebCore::ContentExtensions::RedirectAction::URLAction>,(mpark::detail::Trait)1>::move_assignment(_BYTE *a1, uint64_t a2)
{
  *a1 = 0;
  a1[96] = -1;
  v3 = *(a2 + 96);
  if (v3 != 255)
  {
    _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJN7WebCore17ContentExtensions14RedirectAction19ExtensionPathActionENS8_23RegexSubstitutionActionENS8_18URLTransformActionENS8_9URLActionEEEEE17generic_constructIRKNS0_16copy_constructorISD_LNS0_5TraitE1EEEEEvRSE_OT_EUlRSM_OT0_E_JSL_SK_EEEDcmSN_DpOT0_(v3, &v6, a1, a2);
    a1[96] = *(a2 + 96);
  }

  return a1;
}

uint64_t _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJN7WebCore17ContentExtensions14RedirectAction19ExtensionPathActionENS8_23RegexSubstitutionActionENS8_18URLTransformActionENS8_9URLActionEEEEE17generic_constructIRKNS0_16copy_constructorISD_LNS0_5TraitE1EEEEEvRSE_OT_EUlRSM_OT0_E_JSL_SK_EEEDcmSN_DpOT0_(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *a4;
  if (result <= 1)
  {
    if (result)
    {
      if (v6)
      {
        atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed);
      }

      *a3 = v6;
      v7 = *(a4 + 8);
      if (v7)
      {
        atomic_fetch_add_explicit(v7, 2u, memory_order_relaxed);
      }

      *(a3 + 8) = v7;
      return result;
    }

    goto LABEL_22;
  }

  if (result != 2)
  {
LABEL_22:
    if (v6)
    {
      atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed);
    }

    *a3 = v6;
    return result;
  }

  if (v6)
  {
    atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed);
  }

  *a3 = v6;
  v8 = *(a4 + 8);
  if (v8)
  {
    atomic_fetch_add_explicit(v8, 2u, memory_order_relaxed);
  }

  *(a3 + 8) = v8;
  v9 = *(a4 + 16);
  if (v9)
  {
    atomic_fetch_add_explicit(v9, 2u, memory_order_relaxed);
  }

  *(a3 + 16) = v9;
  v10 = *(a4 + 24);
  if (v10)
  {
    atomic_fetch_add_explicit(v10, 2u, memory_order_relaxed);
  }

  *(a3 + 24) = v10;
  v11 = *(a4 + 32);
  v12 = *(a4 + 36);
  *(a3 + 40) = 0;
  result = a3 + 40;
  *(a3 + 36) = v12;
  *(a3 + 32) = v11;
  *(a3 + 72) = -1;
  if (*(a4 + 72) != 255)
  {
    if (*(a4 + 72))
    {
      WTF::Vector<WebCore::ContentExtensions::RedirectAction::URLTransformAction::QueryTransform::QueryKeyValue,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(result, (a4 + 40));
      result = WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(a3 + 56, a4 + 56);
    }

    else
    {
      v13 = *(a4 + 40);
      if (v13)
      {
        atomic_fetch_add_explicit(v13, 2u, memory_order_relaxed);
      }

      *result = v13;
    }

    *(a3 + 72) = *(a4 + 72);
  }

  v14 = *(a4 + 80);
  if (v14)
  {
    atomic_fetch_add_explicit(v14, 2u, memory_order_relaxed);
  }

  *(a3 + 80) = v14;
  v15 = *(a4 + 88);
  if (v15)
  {
    atomic_fetch_add_explicit(v15, 2u, memory_order_relaxed);
  }

  *(a3 + 88) = v15;
  return result;
}

uint64_t WTF::Vector<WebCore::ContentExtensions::RedirectAction::URLTransformAction::QueryTransform::QueryKeyValue,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(uint64_t result, uint64_t *a2)
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
        v10 = *v8;
        if (*v8)
        {
          atomic_fetch_add_explicit(v10, 2u, memory_order_relaxed);
        }

        *v6 = v10;
        *(v6 + 8) = *(v8 + 8);
        v11 = *(v8 + 16);
        if (v11)
        {
          atomic_fetch_add_explicit(v11, 2u, memory_order_relaxed);
        }

        *(v6 + 16) = v11;
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

uint64_t WTF::Vector<WebCore::NetworkTransactionInformation,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebCore::NetworkTransactionInformation>(uint64_t a1, unint64_t a2)
{
  v3 = WTF::Vector<WebCore::NetworkTransactionInformation,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(a1, *(a1 + 12) + 1, a2);
  WebCore::NetworkTransactionInformation::NetworkTransactionInformation(*a1 + 600 * *(a1 + 12), v3);
  ++*(a1 + 12);
  return 1;
}

unint64_t WTF::Vector<WebCore::NetworkTransactionInformation,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v3 = a3;
  v5 = *a1;
  if (*a1 > a3 || v5 + 600 * *(a1 + 12) <= a3)
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

    WTF::Vector<WebCore::NetworkTransactionInformation,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v12);
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

    WTF::Vector<WebCore::NetworkTransactionInformation,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v9);
    return *a1 + v6;
  }

  return v3;
}

uint64_t WTF::Vector<WebCore::NetworkTransactionInformation,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 8) < a2)
  {
    if (a2 >= 0x6D3A07)
    {
      __break(0xC471u);
      JUMPOUT(0x19DC7D9D0);
    }

    v3 = *a1;
    v4 = (*a1 + 600 * *(a1 + 12));
    v5 = 600 * a2;
    v6 = WTF::fastMalloc((600 * a2));
    *(a1 + 8) = v5 / 0x258;
    *a1 = v6;
    WTF::VectorMover<false,WebCore::NetworkTransactionInformation>::move(v3, v4, v6);
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

void WTF::VectorMover<false,WebCore::NetworkTransactionInformation>::move(void *a1, void *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v5 = a1;
    do
    {
      WebCore::NetworkTransactionInformation::NetworkTransactionInformation(a3, v5);
      v7 = v5[74];
      v5[74] = 0;
      if (v7)
      {
        WTF::RefCounted<WebCore::AdditionalNetworkLoadMetricsForWebInspector>::deref(v7, v6);
      }

      v8 = v5[70];
      v5[70] = 0;
      if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v8, v6);
      }

      v9 = v5[57];
      v5[57] = 0;
      if (v9)
      {
        CFRelease(v9);
      }

      WebCore::ResourceResponseBase::~ResourceResponseBase((v5 + 26), v6);
      WebCore::ResourceRequest::~ResourceRequest((v5 + 1));
      a3 += 600;
      v5 += 75;
    }

    while (v5 != a2);
  }
}

uint64_t WTF::WeakListHashSet<WebKit::NetworkLoad,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::removeNullReferences(uint64_t result)
{
  v1 = result;
  v2 = *(result + 8);
  if (v2)
  {
    do
    {
      v5 = *(v2 + 2);
      if (!*(*v2 + 8))
      {
        result = WTF::ListHashSet<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>>::remove(v1, v1, v2);
      }

      v2 = v5;
    }

    while (v5);
  }

  *(v1 + 24) = 0;
  v3 = *v1;
  if (*v1 && (LODWORD(v3) = *(v3 - 12), v3 > 0x7FFFFFFE))
  {
    v4 = -2;
  }

  else
  {
    v4 = 2 * v3;
  }

  *(v1 + 28) = v4;
  return result;
}

BOOL WTF::ListHashSet<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>>::remove(uint64_t *a1, uint64_t a2, WTF *a3)
{
  if (a3)
  {
    v6 = a3;
    WTF::HashTable<WTF::ListHashSetNode<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>> *,WTF::ListHashSetNode<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>> *,WTF::IdentityExtractor,WTF::ListHashSetNodeHashFunctions<WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>>,WTF::HashTraits<WTF::ListHashSetNode<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>> *>,WTF::HashTraits<WTF::ListHashSetNode<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>> *>,WTF::FastMalloc>::remove<(WTF::ShouldValidateKey)1>(a1, &v6);
    WTF::ListHashSet<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>>::unlinkAndDelete(a1, a3);
  }

  return a3 != 0;
}

uint64_t *WTF::HashTable<WTF::ListHashSetNode<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>> *,WTF::ListHashSetNode<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>> *,WTF::IdentityExtractor,WTF::ListHashSetNodeHashFunctions<WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>>,WTF::HashTraits<WTF::ListHashSetNode<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>> *>,WTF::HashTraits<WTF::ListHashSetNode<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>> *>,WTF::FastMalloc>::remove<(WTF::ShouldValidateKey)1>(uint64_t *a1, uint64_t *a2)
{
  result = WTF::HashTable<WTF::ListHashSetNode<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>> *,WTF::ListHashSetNode<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>> *,WTF::IdentityExtractor,WTF::ListHashSetNodeHashFunctions<WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>>,WTF::HashTraits<WTF::ListHashSetNode<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>> *>,WTF::HashTraits<WTF::ListHashSetNode<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>> *>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashTraits<WTF::ListHashSetNode<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>> *>,WTF::ListHashSetNodeHashFunctions<WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>>>,(WTF::ShouldValidateKey)1,WTF::ListHashSetNode<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>> *>(a1, a2);
  v4 = *a1;
  if (*a1)
  {
    v4 += 8 * *(v4 - 4);
  }

  if (v4 != result)
  {

    return WTF::HashTable<WTF::ListHashSetNode<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>> *,WTF::ListHashSetNode<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>> *,WTF::IdentityExtractor,WTF::ListHashSetNodeHashFunctions<WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>>,WTF::HashTraits<WTF::ListHashSetNode<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>> *>,WTF::HashTraits<WTF::ListHashSetNode<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>> *>,WTF::FastMalloc>::remove(a1, result);
  }

  return result;
}

uint64_t *WTF::HashTable<WTF::ListHashSetNode<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>> *,WTF::ListHashSetNode<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>> *,WTF::IdentityExtractor,WTF::ListHashSetNodeHashFunctions<WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>>,WTF::HashTraits<WTF::ListHashSetNode<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>> *>,WTF::HashTraits<WTF::ListHashSetNode<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>> *>,WTF::FastMalloc>::remove(uint64_t *result, void *a2)
{
  *a2 = -1;
  v2 = *result;
  v3 = vadd_s32(*(*result - 16), 0xFFFFFFFF00000001);
  *(v2 - 16) = v3;
  v4 = *(v2 - 4);
  if (6 * v3.i32[1] < v4 && v4 >= 9)
  {
    return WTF::HashTable<WTF::ListHashSetNode<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>> *,WTF::ListHashSetNode<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>> *,WTF::IdentityExtractor,WTF::ListHashSetNodeHashFunctions<WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>>,WTF::HashTraits<WTF::ListHashSetNode<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>> *>,WTF::HashTraits<WTF::ListHashSetNode<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>> *>,WTF::FastMalloc>::rehash(result, v4 >> 1, 0);
  }

  return result;
}

void *WTF::HashTable<WTF::ListHashSetNode<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>> *,WTF::ListHashSetNode<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>> *,WTF::IdentityExtractor,WTF::ListHashSetNodeHashFunctions<WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>>,WTF::HashTraits<WTF::ListHashSetNode<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>> *>,WTF::HashTraits<WTF::ListHashSetNode<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>> *>,WTF::FastMalloc>::rehash(uint64_t *a1, unsigned int a2, void **a3)
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

  v9 = WTF::fastZeroedMalloc((8 * a2 + 16));
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
      if (*v13 + 1 >= 2)
      {
        v14 = WTF::HashTable<WTF::ListHashSetNode<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>> *,WTF::ListHashSetNode<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>> *,WTF::IdentityExtractor,WTF::ListHashSetNodeHashFunctions<WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>>,WTF::HashTraits<WTF::ListHashSetNode<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>> *>,WTF::HashTraits<WTF::ListHashSetNode<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>> *>,WTF::FastMalloc>::lookupForReinsert<WTF::IdentityHashTranslator<WTF::HashTraits<WTF::ListHashSetNode<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>> *>,WTF::ListHashSetNodeHashFunctions<WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>>>,WTF::ListHashSetNode<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>> *>(a1, v13);
        *v14 = *v13;
        if (v13 == a3)
        {
          v11 = v14;
        }
      }

      ++v13;
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

uint64_t WTF::HashTable<WTF::ListHashSetNode<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>> *,WTF::ListHashSetNode<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>> *,WTF::IdentityExtractor,WTF::ListHashSetNodeHashFunctions<WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>>,WTF::HashTraits<WTF::ListHashSetNode<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>> *>,WTF::HashTraits<WTF::ListHashSetNode<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>> *>,WTF::FastMalloc>::lookupForReinsert<WTF::IdentityHashTranslator<WTF::HashTraits<WTF::ListHashSetNode<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>> *>,WTF::ListHashSetNodeHashFunctions<WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>>>,WTF::ListHashSetNode<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>> *>(uint64_t *a1, void **a2)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = *(v2 - 8);
  }

  else
  {
    v3 = 0;
  }

  v4 = ~(**a2 << 32) + **a2;
  v5 = 9 * (((v4 ^ (v4 >> 22)) + ~((v4 ^ (v4 >> 22)) << 13)) ^ (((v4 ^ (v4 >> 22)) + ~((v4 ^ (v4 >> 22)) << 13)) >> 8));
  v6 = (v5 ^ (v5 >> 15)) + ~((v5 ^ (v5 >> 15)) << 27);
  v7 = v3 & ((v6 >> 31) ^ v6);
  v8 = 1;
  do
  {
    v9 = v7;
    v10 = *(v2 + 8 * v7);
    v7 = (v7 + v8++) & v3;
  }

  while (v10);
  return v2 + 8 * v9;
}

uint64_t WTF::HashTable<WTF::ListHashSetNode<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>> *,WTF::ListHashSetNode<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>> *,WTF::IdentityExtractor,WTF::ListHashSetNodeHashFunctions<WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>>,WTF::HashTraits<WTF::ListHashSetNode<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>> *>,WTF::HashTraits<WTF::ListHashSetNode<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>> *>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashTraits<WTF::ListHashSetNode<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>> *>,WTF::ListHashSetNodeHashFunctions<WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>>>,(WTF::ShouldValidateKey)1,WTF::ListHashSetNode<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>> *>(uint64_t *a1, uint64_t *a2)
{
  if (!*a1)
  {
    return 0;
  }

  result = WTF::HashTable<WTF::ListHashSetNode<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>> *,WTF::ListHashSetNode<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>> *,WTF::IdentityExtractor,WTF::ListHashSetNodeHashFunctions<WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>>,WTF::HashTraits<WTF::ListHashSetNode<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>> *>,WTF::HashTraits<WTF::ListHashSetNode<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>> *>,WTF::FastMalloc>::lookup<WTF::IdentityHashTranslator<WTF::HashTraits<WTF::ListHashSetNode<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>> *>,WTF::ListHashSetNodeHashFunctions<WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>>>,(WTF::ShouldValidateKey)1,WTF::ListHashSetNode<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>> *>(a1, a2);
  v4 = *a1;
  if (!result)
  {
    if (v4)
    {
      return v4 + 8 * *(v4 - 4);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t WTF::HashTable<WTF::ListHashSetNode<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>> *,WTF::ListHashSetNode<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>> *,WTF::IdentityExtractor,WTF::ListHashSetNodeHashFunctions<WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>>,WTF::HashTraits<WTF::ListHashSetNode<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>> *>,WTF::HashTraits<WTF::ListHashSetNode<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>> *>,WTF::FastMalloc>::lookup<WTF::IdentityHashTranslator<WTF::HashTraits<WTF::ListHashSetNode<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>> *>,WTF::ListHashSetNodeHashFunctions<WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>>>,(WTF::ShouldValidateKey)1,WTF::ListHashSetNode<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>> *>(uint64_t *a1, uint64_t *a2)
{
  WTF::checkHashTableKey<WTF::ListHashSetNode<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>> *,WTF::ListHashSetNode<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>> *,WTF::IdentityExtractor,WTF::ListHashSetNodeHashFunctions<WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>>,WTF::HashTraits<WTF::ListHashSetNode<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>> *>,WTF::HashTraits<WTF::ListHashSetNode<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>> *>,WTF::IdentityHashTranslator<WTF::HashTraits<WTF::ListHashSetNode<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>> *>,WTF::ListHashSetNodeHashFunctions<WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>>>,(WTF::ShouldValidateKey)1,WTF::ListHashSetNode<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>> *>(*a2);
  v4 = *a1;
  if (v4)
  {
    v5 = *(v4 - 8);
    v6 = WTF::PtrHashBase<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,true>::hash(*a2);
    for (i = 0; ; v6 = i + v8)
    {
      v8 = v6 & v5;
      v9 = *(v4 + 8 * v8);
      if (!v9)
      {
        break;
      }

      if (v9 != -1 && *v9 == **a2)
      {
        return v4 + 8 * v8;
      }

      ++i;
    }
  }

  return 0;
}

uint64_t WTF::checkHashTableKey<WTF::ListHashSetNode<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>> *,WTF::ListHashSetNode<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>> *,WTF::IdentityExtractor,WTF::ListHashSetNodeHashFunctions<WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>>,WTF::HashTraits<WTF::ListHashSetNode<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>> *>,WTF::HashTraits<WTF::ListHashSetNode<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>> *>,WTF::IdentityHashTranslator<WTF::HashTraits<WTF::ListHashSetNode<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>> *>,WTF::ListHashSetNodeHashFunctions<WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>>>,(WTF::ShouldValidateKey)1,WTF::ListHashSetNode<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>> *>(uint64_t result)
{
  if (result == -1 || !result)
  {
    __break(0xC471u);
    JUMPOUT(0x19DC7DE7CLL);
  }

  return result;
}

void *WTF::HashTable<WTF::ListHashSetNode<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>> *,WTF::ListHashSetNode<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>> *,WTF::IdentityExtractor,WTF::ListHashSetNodeHashFunctions<WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>>,WTF::HashTraits<WTF::ListHashSetNode<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>> *>,WTF::HashTraits<WTF::ListHashSetNode<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>> *>,WTF::FastMalloc>::expand(uint64_t *a1, void **a2)
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

  return WTF::HashTable<WTF::ListHashSetNode<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>> *,WTF::ListHashSetNode<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>> *,WTF::IdentityExtractor,WTF::ListHashSetNodeHashFunctions<WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>>,WTF::HashTraits<WTF::ListHashSetNode<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>> *>,WTF::HashTraits<WTF::ListHashSetNode<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>> *>,WTF::FastMalloc>::rehash(a1, v5, a2);
}

uint64_t WTF::HashTable<WTF::ListHashSetNode<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>> *,WTF::ListHashSetNode<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>> *,WTF::IdentityExtractor,WTF::ListHashSetNodeHashFunctions<WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>>,WTF::HashTraits<WTF::ListHashSetNode<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>> *>,WTF::HashTraits<WTF::ListHashSetNode<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>> *>,WTF::FastMalloc>::find<WTF::ListHashSetTranslator<WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>>,(WTF::ShouldValidateKey)1,WTF::DefaultWeakPtrImpl const*>(uint64_t *a1, void *a2)
{
  v2 = *a1;
  if (!*a1)
  {
    return 0;
  }

  v3 = *(v2 - 8);
  v4 = ~(*a2 << 32) + *a2;
  v5 = 9 * (((v4 ^ (v4 >> 22)) + ~((v4 ^ (v4 >> 22)) << 13)) ^ (((v4 ^ (v4 >> 22)) + ~((v4 ^ (v4 >> 22)) << 13)) >> 8));
  v6 = (v5 ^ (v5 >> 15)) + ~((v5 ^ (v5 >> 15)) << 27);
  v7 = v3 & ((v6 >> 31) ^ v6);
  for (i = 1; ; ++i)
  {
    v9 = *(v2 + 8 * v7);
    if (!v9)
    {
      return v2 + 8 * *(v2 - 4);
    }

    if (v9 != -1 && *v9 == *a2)
    {
      break;
    }

    v7 = (v7 + i) & v3;
  }

  return v2 + 8 * v7;
}

uint64_t WTF::WeakListHashSet<WebKit::NetworkLoad,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::remove(uint64_t result, uint64_t a2, WTF *a3)
{
  if (a3)
  {
    v3 = result;
    result = WTF::ListHashSet<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>>::remove(result, a2, a3);
    v4 = *(v3 + 28);
    v5 = *(v3 + 24) + 1;
    *(v3 + 24) = v5;
    if (v5 > v4)
    {

      return WTF::WeakListHashSet<WebKit::NetworkLoad,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::removeNullReferences(v3);
    }
  }

  return result;
}

WTF **WTF::HashTable<std::tuple<WTF::String,WTF::String>,WTF::KeyValuePair<std::tuple<WTF::String,WTF::String>,WebKit::NetworkLoadScheduler::PendingMainResourcePreconnectInfo>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<std::tuple<WTF::String,WTF::String>,WebKit::NetworkLoadScheduler::PendingMainResourcePreconnectInfo>>,WTF::DefaultHash<std::tuple<WTF::String,WTF::String>>,WTF::HashMap<std::tuple<WTF::String,WTF::String>,WebKit::NetworkLoadScheduler::PendingMainResourcePreconnectInfo,WTF::DefaultHash<std::tuple<WTF::String,WTF::String>>,WTF::HashTraits<std::tuple<WTF::String,WTF::String>>,WTF::HashTraits<WebKit::NetworkLoadScheduler::PendingMainResourcePreconnectInfo>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<std::tuple<WTF::String,WTF::String>>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<std::tuple<WTF::String,WTF::String>,WebKit::NetworkLoadScheduler::PendingMainResourcePreconnectInfo,WTF::DefaultHash<std::tuple<WTF::String,WTF::String>>,WTF::HashTraits<std::tuple<WTF::String,WTF::String>>,WTF::HashTraits<WebKit::NetworkLoadScheduler::PendingMainResourcePreconnectInfo>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<std::tuple<WTF::String,WTF::String>>>,(WTF::ShouldValidateKey)1,std::tuple<WTF::String,WTF::String>>(uint64_t *a1, WTF **a2, const WTF::StringImpl *a3)
{
  if (!*a1)
  {
    return 0;
  }

  result = WTF::HashTable<std::tuple<WTF::String,WTF::String>,WTF::KeyValuePair<std::tuple<WTF::String,WTF::String>,WebKit::NetworkLoadScheduler::PendingMainResourcePreconnectInfo>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<std::tuple<WTF::String,WTF::String>,WebKit::NetworkLoadScheduler::PendingMainResourcePreconnectInfo>>,WTF::DefaultHash<std::tuple<WTF::String,WTF::String>>,WTF::HashMap<std::tuple<WTF::String,WTF::String>,WebKit::NetworkLoadScheduler::PendingMainResourcePreconnectInfo,WTF::DefaultHash<std::tuple<WTF::String,WTF::String>>,WTF::HashTraits<std::tuple<WTF::String,WTF::String>>,WTF::HashTraits<WebKit::NetworkLoadScheduler::PendingMainResourcePreconnectInfo>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<std::tuple<WTF::String,WTF::String>>,WTF::FastMalloc>::lookup<WTF::IdentityHashTranslator<WTF::HashMap<std::tuple<WTF::String,WTF::String>,WebKit::NetworkLoadScheduler::PendingMainResourcePreconnectInfo,WTF::DefaultHash<std::tuple<WTF::String,WTF::String>>,WTF::HashTraits<std::tuple<WTF::String,WTF::String>>,WTF::HashTraits<WebKit::NetworkLoadScheduler::PendingMainResourcePreconnectInfo>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<std::tuple<WTF::String,WTF::String>>>,(WTF::ShouldValidateKey)1,std::tuple<WTF::String,WTF::String>>(a1, a2, a3);
  v5 = *a1;
  if (!result)
  {
    if (v5)
    {
      return (v5 + 56 * *(v5 - 4));
    }

    else
    {
      return 0;
    }
  }

  return result;
}

WTF **WTF::HashTable<std::tuple<WTF::String,WTF::String>,WTF::KeyValuePair<std::tuple<WTF::String,WTF::String>,WebKit::NetworkLoadScheduler::PendingMainResourcePreconnectInfo>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<std::tuple<WTF::String,WTF::String>,WebKit::NetworkLoadScheduler::PendingMainResourcePreconnectInfo>>,WTF::DefaultHash<std::tuple<WTF::String,WTF::String>>,WTF::HashMap<std::tuple<WTF::String,WTF::String>,WebKit::NetworkLoadScheduler::PendingMainResourcePreconnectInfo,WTF::DefaultHash<std::tuple<WTF::String,WTF::String>>,WTF::HashTraits<std::tuple<WTF::String,WTF::String>>,WTF::HashTraits<WebKit::NetworkLoadScheduler::PendingMainResourcePreconnectInfo>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<std::tuple<WTF::String,WTF::String>>,WTF::FastMalloc>::lookup<WTF::IdentityHashTranslator<WTF::HashMap<std::tuple<WTF::String,WTF::String>,WebKit::NetworkLoadScheduler::PendingMainResourcePreconnectInfo,WTF::DefaultHash<std::tuple<WTF::String,WTF::String>>,WTF::HashTraits<std::tuple<WTF::String,WTF::String>>,WTF::HashTraits<WebKit::NetworkLoadScheduler::PendingMainResourcePreconnectInfo>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<std::tuple<WTF::String,WTF::String>>>,(WTF::ShouldValidateKey)1,std::tuple<WTF::String,WTF::String>>(uint64_t *a1, WTF **a2, const WTF::StringImpl *a3)
{
  WTF::checkHashTableKey<std::tuple<WTF::String,WTF::String>,WTF::KeyValuePair<std::tuple<WTF::String,WTF::String>,WebKit::NetworkLoadScheduler::PendingMainResourcePreconnectInfo>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<std::tuple<WTF::String,WTF::String>,WebKit::NetworkLoadScheduler::PendingMainResourcePreconnectInfo>>,WTF::DefaultHash<std::tuple<WTF::String,WTF::String>>,WTF::HashMap<std::tuple<WTF::String,WTF::String>,WebKit::NetworkLoadScheduler::PendingMainResourcePreconnectInfo,WTF::DefaultHash<std::tuple<WTF::String,WTF::String>>,WTF::HashTraits<std::tuple<WTF::String,WTF::String>>,WTF::HashTraits<WebKit::NetworkLoadScheduler::PendingMainResourcePreconnectInfo>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<std::tuple<WTF::String,WTF::String>>,WTF::IdentityHashTranslator<WTF::HashMap<std::tuple<WTF::String,WTF::String>,WebKit::NetworkLoadScheduler::PendingMainResourcePreconnectInfo,WTF::DefaultHash<std::tuple<WTF::String,WTF::String>>,WTF::HashTraits<std::tuple<WTF::String,WTF::String>>,WTF::HashTraits<WebKit::NetworkLoadScheduler::PendingMainResourcePreconnectInfo>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<std::tuple<WTF::String,WTF::String>>>,(WTF::ShouldValidateKey)1,std::tuple<WTF::String,WTF::String>>(a2, a2, a3);
  v5 = *a1;
  if (!*a1)
  {
    return 0;
  }

  v6 = *(v5 - 8);
  v7 = WTF::TupleHash<WTF::String,WTF::String>::hash<0ul>(a2) & v6;
  v8 = (v5 + 56 * v7);
  v13 = 0;
  v14 = 0;
  if (std::__tuple_equal<2ul>::operator()[abi:sn200100]<std::tuple<WTF::String,WTF::String>,std::tuple<WTF::String,WTF::String>>(v8, &v13, v9))
  {
    return 0;
  }

  v11 = 1;
  while (*v8 == -1 || (WTF::TupleHash<WTF::String,WTF::String>::equal<0ul>(v8, a2, v10) & 1) == 0)
  {
    v7 = (v7 + v11) & v6;
    v8 = (v5 + 56 * v7);
    v13 = 0;
    v14 = 0;
    ++v11;
    if (std::__tuple_equal<2ul>::operator()[abi:sn200100]<std::tuple<WTF::String,WTF::String>,std::tuple<WTF::String,WTF::String>>(v8, &v13, v10))
    {
      return 0;
    }
  }

  return v8;
}

uint64_t WTF::checkHashTableKey<std::tuple<WTF::String,WTF::String>,WTF::KeyValuePair<std::tuple<WTF::String,WTF::String>,WebKit::NetworkLoadScheduler::PendingMainResourcePreconnectInfo>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<std::tuple<WTF::String,WTF::String>,WebKit::NetworkLoadScheduler::PendingMainResourcePreconnectInfo>>,WTF::DefaultHash<std::tuple<WTF::String,WTF::String>>,WTF::HashMap<std::tuple<WTF::String,WTF::String>,WebKit::NetworkLoadScheduler::PendingMainResourcePreconnectInfo,WTF::DefaultHash<std::tuple<WTF::String,WTF::String>>,WTF::HashTraits<std::tuple<WTF::String,WTF::String>>,WTF::HashTraits<WebKit::NetworkLoadScheduler::PendingMainResourcePreconnectInfo>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<std::tuple<WTF::String,WTF::String>>,WTF::IdentityHashTranslator<WTF::HashMap<std::tuple<WTF::String,WTF::String>,WebKit::NetworkLoadScheduler::PendingMainResourcePreconnectInfo,WTF::DefaultHash<std::tuple<WTF::String,WTF::String>>,WTF::HashTraits<std::tuple<WTF::String,WTF::String>>,WTF::HashTraits<WebKit::NetworkLoadScheduler::PendingMainResourcePreconnectInfo>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<std::tuple<WTF::String,WTF::String>>>,(WTF::ShouldValidateKey)1,std::tuple<WTF::String,WTF::String>>(WTF **a1, uint64_t a2, const WTF::StringImpl *a3)
{
  v5[0] = 0;
  v5[1] = 0;
  result = std::__tuple_equal<2ul>::operator()[abi:sn200100]<std::tuple<WTF::String,WTF::String>,std::tuple<WTF::String,WTF::String>>(a1, v5, a3);
  if (result || *a1 == -1)
  {
    __break(0xC471u);
    JUMPOUT(0x19DC7E184);
  }

  return result;
}

uint64_t std::__tuple_equal<2ul>::operator()[abi:sn200100]<std::tuple<WTF::String,WTF::String>,std::tuple<WTF::String,WTF::String>>(WTF **a1, const WTF::StringImpl **a2, const WTF::StringImpl *a3)
{
  result = WTF::equal(*a1, *a2, a3);
  if (result)
  {
    v7 = a1[1];
    v8 = a2[1];

    return WTF::equal(v7, v8, v6);
  }

  return result;
}

unint64_t WTF::TupleHash<WTF::String,WTF::String>::hash<0ul>(WTF::StringImpl **a1)
{
  v2 = *a1;
  v3 = *(v2 + 4);
  if (v3 < 0x100)
  {
    v4 = WTF::StringImpl::hashSlowCase(v2);
  }

  else
  {
    v4 = v3 >> 8;
  }

  v5 = a1[1];
  v6 = *(v5 + 4);
  if (v6 < 0x100)
  {
    v7 = WTF::StringImpl::hashSlowCase(v5);
  }

  else
  {
    v7 = v6 >> 8;
  }

  return (0xD7862706ELL * (277951225 * v4 + 95187966 * v7)) >> 4;
}

uint64_t WTF::TupleHash<WTF::String,WTF::String>::equal<0ul>(WTF **a1, const WTF::StringImpl **a2, const WTF::StringImpl *a3)
{
  result = WTF::equal(*a1, *a2, a3);
  if (result)
  {
    v7 = a1[1];
    v8 = a2[1];

    return WTF::equal(v7, v8, v6);
  }

  return result;
}

uint64_t WTF::checkHashTableKey<std::tuple<WTF::String,WTF::String>,WTF::KeyValuePair<std::tuple<WTF::String,WTF::String>,WebKit::NetworkLoadScheduler::PendingMainResourcePreconnectInfo>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<std::tuple<WTF::String,WTF::String>,WebKit::NetworkLoadScheduler::PendingMainResourcePreconnectInfo>>,WTF::DefaultHash<std::tuple<WTF::String,WTF::String>>,WTF::HashMap<std::tuple<WTF::String,WTF::String>,WebKit::NetworkLoadScheduler::PendingMainResourcePreconnectInfo,WTF::DefaultHash<std::tuple<WTF::String,WTF::String>>,WTF::HashTraits<std::tuple<WTF::String,WTF::String>>,WTF::HashTraits<WebKit::NetworkLoadScheduler::PendingMainResourcePreconnectInfo>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<std::tuple<WTF::String,WTF::String>>,WTF::HashMapTranslator<WTF::HashMap<std::tuple<WTF::String,WTF::String>,WebKit::NetworkLoadScheduler::PendingMainResourcePreconnectInfo,WTF::DefaultHash<std::tuple<WTF::String,WTF::String>>,WTF::HashTraits<std::tuple<WTF::String,WTF::String>>,WTF::HashTraits<WebKit::NetworkLoadScheduler::PendingMainResourcePreconnectInfo>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<std::tuple<WTF::String,WTF::String>>>,(WTF::ShouldValidateKey)1,std::tuple<WTF::String,WTF::String>>(WTF **a1, uint64_t a2, const WTF::StringImpl *a3)
{
  v5[0] = 0;
  v5[1] = 0;
  result = std::__tuple_equal<2ul>::operator()[abi:sn200100]<std::tuple<WTF::String,WTF::String>,std::tuple<WTF::String,WTF::String>>(a1, v5, a3);
  if (result || *a1 == -1)
  {
    __break(0xC471u);
    JUMPOUT(0x19DC7E340);
  }

  return result;
}

uint64_t WTF::HashTable<std::tuple<WTF::String,WTF::String>,WTF::KeyValuePair<std::tuple<WTF::String,WTF::String>,WebKit::NetworkLoadScheduler::PendingMainResourcePreconnectInfo>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<std::tuple<WTF::String,WTF::String>,WebKit::NetworkLoadScheduler::PendingMainResourcePreconnectInfo>>,WTF::DefaultHash<std::tuple<WTF::String,WTF::String>>,WTF::HashMap<std::tuple<WTF::String,WTF::String>,WebKit::NetworkLoadScheduler::PendingMainResourcePreconnectInfo,WTF::DefaultHash<std::tuple<WTF::String,WTF::String>>,WTF::HashTraits<std::tuple<WTF::String,WTF::String>>,WTF::HashTraits<WebKit::NetworkLoadScheduler::PendingMainResourcePreconnectInfo>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<std::tuple<WTF::String,WTF::String>>,WTF::FastMalloc>::expand(uint64_t *a1, WTF **a2)
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

  return WTF::HashTable<std::tuple<WTF::String,WTF::String>,WTF::KeyValuePair<std::tuple<WTF::String,WTF::String>,WebKit::NetworkLoadScheduler::PendingMainResourcePreconnectInfo>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<std::tuple<WTF::String,WTF::String>,WebKit::NetworkLoadScheduler::PendingMainResourcePreconnectInfo>>,WTF::DefaultHash<std::tuple<WTF::String,WTF::String>>,WTF::HashMap<std::tuple<WTF::String,WTF::String>,WebKit::NetworkLoadScheduler::PendingMainResourcePreconnectInfo,WTF::DefaultHash<std::tuple<WTF::String,WTF::String>>,WTF::HashTraits<std::tuple<WTF::String,WTF::String>>,WTF::HashTraits<WebKit::NetworkLoadScheduler::PendingMainResourcePreconnectInfo>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<std::tuple<WTF::String,WTF::String>>,WTF::FastMalloc>::rehash(a1, v5, a2);
}

void *WTF::HashMapTranslator<WTF::HashMap<std::tuple<WTF::String,WTF::String>,WebKit::NetworkLoadScheduler::PendingMainResourcePreconnectInfo,WTF::DefaultHash<std::tuple<WTF::String,WTF::String>>,WTF::HashTraits<std::tuple<WTF::String,WTF::String>>,WTF::HashTraits<WebKit::NetworkLoadScheduler::PendingMainResourcePreconnectInfo>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<std::tuple<WTF::String,WTF::String>>>::translate<std::tuple<WTF::String,WTF::String> const&,WTF::KeyValuePair<std::tuple<WTF::String,WTF::String>,WebKit::NetworkLoadScheduler::PendingMainResourcePreconnectInfo>,WTF::HashTableAddResult<WTF::HashTableIterator<WTF::HashTable<std::tuple<WTF::String,WTF::String>,WTF::KeyValuePair<std::tuple<WTF::String,WTF::String>,WebKit::NetworkLoadScheduler::PendingMainResourcePreconnectInfo>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<std::tuple<WTF::String,WTF::String>,WebKit::NetworkLoadScheduler::PendingMainResourcePreconnectInfo>>,WTF::DefaultHash<std::tuple<WTF::String,WTF::String>>,WTF::HashMap<std::tuple<WTF::String,WTF::String>,WebKit::NetworkLoadScheduler::PendingMainResourcePreconnectInfo,WTF::DefaultHash<std::tuple<WTF::String,WTF::String>>,WTF::HashTraits<std::tuple<WTF::String,WTF::String>>,WTF::HashTraits<WebKit::NetworkLoadScheduler::PendingMainResourcePreconnectInfo>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<std::tuple<WTF::String,WTF::String>>,WTF::FastMalloc>,std::tuple<WTF::String,WTF::String>,WTF::KeyValuePair<std::tuple<WTF::String,WTF::String>,WebKit::NetworkLoadScheduler::PendingMainResourcePreconnectInfo>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<std::tuple<WTF::String,WTF::String>,WebKit::NetworkLoadScheduler::PendingMainResourcePreconnectInfo>>,WTF::DefaultHash<std::tuple<WTF::String,WTF::String>>,WTF::HashMap<std::tuple<WTF::String,WTF::String>,WebKit::NetworkLoadScheduler::PendingMainResourcePreconnectInfo,WTF::DefaultHash<std::tuple<WTF::String,WTF::String>>,WTF::HashTraits<std::tuple<WTF::String,WTF::String>>,WTF::HashTraits<WebKit::NetworkLoadScheduler::PendingMainResourcePreconnectInfo>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<std::tuple<WTF::String,WTF::String>>>> WTF::HashMap<std::tuple<WTF::String,WTF::String>,WebKit::NetworkLoadScheduler::PendingMainResourcePreconnectInfo,WTF::DefaultHash<std::tuple<WTF::String,WTF::String>>,WTF::HashTraits<std::tuple<WTF::String,WTF::String>>,WTF::HashTraits<WebKit::NetworkLoadScheduler::PendingMainResourcePreconnectInfo>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::inlineAdd<std::tuple<WTF::String,WTF::String> const&,WebKit::NetworkLoadScheduler::PendingMainResourcePreconnectInfo>(std::tuple<WTF::String,WTF::String> const&,WebKit::NetworkLoadScheduler::PendingMainResourcePreconnectInfo &&)::{lambda(void)#1}>(uint64_t a1, atomic_uint **a2, int **a3)
{
  WTF::String::operator=(a1, a2);
  WTF::String::operator=((a1 + 8), a2 + 1);
  v6 = *a3;
  v7 = **a3;
  v8 = *(*a3 + 2);
  *(v6 + 1) = 0;
  *(v6 + 2) = 0;
  v13 = v8;
  v9 = *(v6 + 3);
  v10 = *(v6 + 4);
  *(v6 + 3) = 0;
  v14 = v9;
  v15 = v10;
  *(a1 + 16) = v7;
  WTF::ListHashSet<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>>::operator=((a1 + 24), &v13);
  *(a1 + 48) = v15;
  return WTF::ListHashSet<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>>::~ListHashSet(&v13, v11);
}

uint64_t WTF::HashTable<std::tuple<WTF::String,WTF::String>,WTF::KeyValuePair<std::tuple<WTF::String,WTF::String>,WebKit::NetworkLoadScheduler::PendingMainResourcePreconnectInfo>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<std::tuple<WTF::String,WTF::String>,WebKit::NetworkLoadScheduler::PendingMainResourcePreconnectInfo>>,WTF::DefaultHash<std::tuple<WTF::String,WTF::String>>,WTF::HashMap<std::tuple<WTF::String,WTF::String>,WebKit::NetworkLoadScheduler::PendingMainResourcePreconnectInfo,WTF::DefaultHash<std::tuple<WTF::String,WTF::String>>,WTF::HashTraits<std::tuple<WTF::String,WTF::String>>,WTF::HashTraits<WebKit::NetworkLoadScheduler::PendingMainResourcePreconnectInfo>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<std::tuple<WTF::String,WTF::String>>,WTF::FastMalloc>::rehash(uint64_t *a1, unsigned int a2, WTF **a3)
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

  Table = WTF::HashTable<std::tuple<WTF::String,WTF::String>,WTF::KeyValuePair<std::tuple<WTF::String,WTF::String>,WebKit::NetworkLoadScheduler::PendingMainResourcePreconnectInfo>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<std::tuple<WTF::String,WTF::String>,WebKit::NetworkLoadScheduler::PendingMainResourcePreconnectInfo>>,WTF::DefaultHash<std::tuple<WTF::String,WTF::String>>,WTF::HashMap<std::tuple<WTF::String,WTF::String>,WebKit::NetworkLoadScheduler::PendingMainResourcePreconnectInfo,WTF::DefaultHash<std::tuple<WTF::String,WTF::String>>,WTF::HashTraits<std::tuple<WTF::String,WTF::String>>,WTF::HashTraits<WebKit::NetworkLoadScheduler::PendingMainResourcePreconnectInfo>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<std::tuple<WTF::String,WTF::String>>,WTF::FastMalloc>::allocateTable(a2);
  *a1 = Table;
  *(Table - 8) = a2 - 1;
  *(Table - 4) = a2;
  *(Table - 16) = 0;
  *(Table - 12) = v8;
  v12 = 0;
  if (v7)
  {
    v14 = v7;
    v15 = v6;
    do
    {
      if (*v15 != -1)
      {
        v19[0] = 0;
        v19[1] = 0;
        if (std::__tuple_equal<2ul>::operator()[abi:sn200100]<std::tuple<WTF::String,WTF::String>,std::tuple<WTF::String,WTF::String>>(v15, v19, v11))
        {
          WTF::KeyValuePair<std::tuple<WTF::String,WTF::String>,WebKit::NetworkLoadScheduler::PendingMainResourcePreconnectInfo>::~KeyValuePair(v15, v16);
        }

        else
        {
          v17 = WTF::HashTable<std::tuple<WTF::String,WTF::String>,WTF::KeyValuePair<std::tuple<WTF::String,WTF::String>,WebKit::NetworkLoadScheduler::PendingMainResourcePreconnectInfo>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<std::tuple<WTF::String,WTF::String>,WebKit::NetworkLoadScheduler::PendingMainResourcePreconnectInfo>>,WTF::DefaultHash<std::tuple<WTF::String,WTF::String>>,WTF::HashMap<std::tuple<WTF::String,WTF::String>,WebKit::NetworkLoadScheduler::PendingMainResourcePreconnectInfo,WTF::DefaultHash<std::tuple<WTF::String,WTF::String>>,WTF::HashTraits<std::tuple<WTF::String,WTF::String>>,WTF::HashTraits<WebKit::NetworkLoadScheduler::PendingMainResourcePreconnectInfo>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<std::tuple<WTF::String,WTF::String>>,WTF::FastMalloc>::reinsert(*a1, v15);
          WTF::KeyValuePair<std::tuple<WTF::String,WTF::String>,WebKit::NetworkLoadScheduler::PendingMainResourcePreconnectInfo>::~KeyValuePair(v15, v18);
          if (v15 == a3)
          {
            v12 = v17;
          }
        }
      }

      v15 += 7;
      --v14;
    }

    while (v14);
    goto LABEL_14;
  }

  result = 0;
  if (v6)
  {
LABEL_14:
    WTF::fastFree((v6 - 16), v10);
    return v12;
  }

  return result;
}

uint64_t WTF::HashTable<std::tuple<WTF::String,WTF::String>,WTF::KeyValuePair<std::tuple<WTF::String,WTF::String>,WebKit::NetworkLoadScheduler::PendingMainResourcePreconnectInfo>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<std::tuple<WTF::String,WTF::String>,WebKit::NetworkLoadScheduler::PendingMainResourcePreconnectInfo>>,WTF::DefaultHash<std::tuple<WTF::String,WTF::String>>,WTF::HashMap<std::tuple<WTF::String,WTF::String>,WebKit::NetworkLoadScheduler::PendingMainResourcePreconnectInfo,WTF::DefaultHash<std::tuple<WTF::String,WTF::String>>,WTF::HashTraits<std::tuple<WTF::String,WTF::String>>,WTF::HashTraits<WebKit::NetworkLoadScheduler::PendingMainResourcePreconnectInfo>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<std::tuple<WTF::String,WTF::String>>,WTF::FastMalloc>::allocateTable(unsigned int a1)
{
  v2 = WTF::fastMalloc((56 * a1 + 16));
  if (a1)
  {
    v3 = a1;
    v4 = (v2 + 40);
    do
    {
      *(v4 - 3) = 0;
      *(v4 - 2) = 0;
      *(v4 - 1) = 1;
      *v4 = 0uLL;
      v4[1] = 0uLL;
      v4 = (v4 + 56);
      --v3;
    }

    while (v3);
  }

  return v2 + 16;
}

uint64_t WTF::HashTable<std::tuple<WTF::String,WTF::String>,WTF::KeyValuePair<std::tuple<WTF::String,WTF::String>,WebKit::NetworkLoadScheduler::PendingMainResourcePreconnectInfo>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<std::tuple<WTF::String,WTF::String>,WebKit::NetworkLoadScheduler::PendingMainResourcePreconnectInfo>>,WTF::DefaultHash<std::tuple<WTF::String,WTF::String>>,WTF::HashMap<std::tuple<WTF::String,WTF::String>,WebKit::NetworkLoadScheduler::PendingMainResourcePreconnectInfo,WTF::DefaultHash<std::tuple<WTF::String,WTF::String>>,WTF::HashTraits<std::tuple<WTF::String,WTF::String>>,WTF::HashTraits<WebKit::NetworkLoadScheduler::PendingMainResourcePreconnectInfo>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<std::tuple<WTF::String,WTF::String>>,WTF::FastMalloc>::reinsert(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v4 = *(a1 - 8);
  }

  else
  {
    v4 = 0;
  }

  v5 = WTF::TupleHash<WTF::String,WTF::String>::hash<0ul>(a2);
  v7 = 0;
  do
  {
    v8 = v5 & v4;
    v9 = a1 + 56 * (v5 & v4);
    v21[0] = 0;
    v21[1] = 0;
    v11 = std::__tuple_equal<2ul>::operator()[abi:sn200100]<std::tuple<WTF::String,WTF::String>,std::tuple<WTF::String,WTF::String>>(v9, v21, v6);
    v5 = ++v7 + v8;
  }

  while (!v11);
  WTF::ListHashSet<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>>::~ListHashSet((v9 + 24), v10);
  v13 = *(v9 + 8);
  *(v9 + 8) = 0;
  if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v13, v12);
  }

  v14 = *v9;
  *v9 = 0;
  if (v14 && atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v14, v12);
  }

  v15 = *a2;
  *a2 = 0;
  *v9 = v15;
  v16 = *(a2 + 8);
  *(a2 + 8) = 0;
  *(v9 + 8) = v16;
  *(v9 + 16) = *(a2 + 16);
  *(v9 + 24) = 0;
  v17 = *(a2 + 24);
  *(a2 + 24) = 0;
  *(v9 + 24) = v17;
  v18 = *(a2 + 32);
  *(a2 + 32) = 0;
  *(v9 + 32) = v18;
  v19 = *(a2 + 40);
  *(a2 + 40) = 0;
  *(v9 + 40) = v19;
  *(v9 + 48) = *(a2 + 48);
  return a1 + 56 * v8;
}

__int128 *WTF::ListHashSet<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>>::operator=(__int128 *a1, void *a2)
{
  v3 = a2[2];
  v4 = *a2;
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v5 = *a1;
  *a1 = v4;
  v8 = v5;
  v6 = *(a1 + 2);
  *(a1 + 2) = v3;
  v9 = v6;
  WTF::ListHashSet<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>>::~ListHashSet(&v8, a2);
  return a1;
}

uint64_t WTF::WeakListHashSet<WebKit::NetworkLoad,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::clear(uint64_t a1, void *a2)
{
  result = WTF::ListHashSet<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>>::deleteAllNodes(a1, a2);
  v5 = *a1;
  if (!*a1)
  {
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
LABEL_6:
    v6 = 2 * v5;
    goto LABEL_7;
  }

  *a1 = 0;
  result = WTF::fastFree((v5 - 16), v4);
  v5 = *a1;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  if (!v5)
  {
    goto LABEL_6;
  }

  LODWORD(v5) = *(v5 - 12);
  if (v5 <= 0x7FFFFFFE)
  {
    goto LABEL_6;
  }

  v6 = -2;
LABEL_7:
  *(a1 + 28) = v6;
  return result;
}

void *WTF::HashTable<std::tuple<WTF::String,WTF::String>,WTF::KeyValuePair<std::tuple<WTF::String,WTF::String>,WebKit::NetworkLoadScheduler::PendingMainResourcePreconnectInfo>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<std::tuple<WTF::String,WTF::String>,WebKit::NetworkLoadScheduler::PendingMainResourcePreconnectInfo>>,WTF::DefaultHash<std::tuple<WTF::String,WTF::String>>,WTF::HashMap<std::tuple<WTF::String,WTF::String>,WebKit::NetworkLoadScheduler::PendingMainResourcePreconnectInfo,WTF::DefaultHash<std::tuple<WTF::String,WTF::String>>,WTF::HashTraits<std::tuple<WTF::String,WTF::String>>,WTF::HashTraits<WebKit::NetworkLoadScheduler::PendingMainResourcePreconnectInfo>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<std::tuple<WTF::String,WTF::String>>,WTF::FastMalloc>::remove(uint64_t *a1, uint64_t a2)
{
  WTF::KeyValuePair<WTF::String,WTF::String>::~KeyValuePair(a2, a2);
  *a2 = -1;
  result = WTF::ListHashSet<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>>::~ListHashSet((a2 + 24), v4);
  v6 = *a1;
  v7 = vadd_s32(*(*a1 - 16), 0xFFFFFFFF00000001);
  *(v6 - 16) = v7;
  v8 = *(v6 - 4);
  if (6 * v7.i32[1] < v8 && v8 >= 9)
  {

    return WTF::HashTable<std::tuple<WTF::String,WTF::String>,WTF::KeyValuePair<std::tuple<WTF::String,WTF::String>,WebKit::NetworkLoadScheduler::PendingMainResourcePreconnectInfo>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<std::tuple<WTF::String,WTF::String>,WebKit::NetworkLoadScheduler::PendingMainResourcePreconnectInfo>>,WTF::DefaultHash<std::tuple<WTF::String,WTF::String>>,WTF::HashMap<std::tuple<WTF::String,WTF::String>,WebKit::NetworkLoadScheduler::PendingMainResourcePreconnectInfo,WTF::DefaultHash<std::tuple<WTF::String,WTF::String>>,WTF::HashTraits<std::tuple<WTF::String,WTF::String>>,WTF::HashTraits<WebKit::NetworkLoadScheduler::PendingMainResourcePreconnectInfo>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<std::tuple<WTF::String,WTF::String>>,WTF::FastMalloc>::rehash(a1, v8 >> 1, 0);
  }

  return result;
}

void *WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::random(void *a1)
{
  v1 = *a1;
  if (!*a1)
  {
    return 0;
  }

  if (!*(v1 - 3))
  {
    return &v1[*(v1 - 1)];
  }

  do
  {
    while (1)
    {
      v3 = v1;
      v4 = WTF::weakRandomNumber<unsigned int>();
      v1 = *a1;
      if (*a1)
      {
        break;
      }

      if ((*v3 + 1) >= 2)
      {
        return v3;
      }
    }

    v5 = *(v1 - 1) & v4;
  }

  while ((v3[v5] + 1) < 2);
  v3 += v5;
  return v3;
}

uint64_t WTF::checkHashTableKey<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WTF::HashMap<WTF::String,std::unique_ptr<WebKit::NetworkLoadScheduler::HostContext>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkLoadScheduler::HostContext>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WTF::HashMap<WTF::String,std::unique_ptr<WebKit::NetworkLoadScheduler::HostContext>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkLoadScheduler::HostContext>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WTF::HashMap<WTF::String,std::unique_ptr<WebKit::NetworkLoadScheduler::HostContext>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkLoadScheduler::HostContext>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<std::unique_ptr<WTF::HashMap<WTF::String,std::unique_ptr<WebKit::NetworkLoadScheduler::HostContext>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkLoadScheduler::HostContext>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMapEnsureTranslator<WTF::HashMapEnsureTranslator,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(uint64_t result)
{
  if (result == -1 || !result)
  {
    __break(0xC471u);
    JUMPOUT(0x19DC7E8D8);
  }

  return result;
}

uint64_t WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WTF::HashMap<WTF::String,std::unique_ptr<WebKit::NetworkLoadScheduler::HostContext>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkLoadScheduler::HostContext>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WTF::HashMap<WTF::String,std::unique_ptr<WebKit::NetworkLoadScheduler::HostContext>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkLoadScheduler::HostContext>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WTF::HashMap<WTF::String,std::unique_ptr<WebKit::NetworkLoadScheduler::HostContext>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkLoadScheduler::HostContext>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<std::unique_ptr<WTF::HashMap<WTF::String,std::unique_ptr<WebKit::NetworkLoadScheduler::HostContext>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkLoadScheduler::HostContext>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand(uint64_t *a1, WTF::StringImpl ****a2)
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

  return WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WTF::HashMap<WTF::String,std::unique_ptr<WebKit::NetworkLoadScheduler::HostContext>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkLoadScheduler::HostContext>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WTF::HashMap<WTF::String,std::unique_ptr<WebKit::NetworkLoadScheduler::HostContext>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkLoadScheduler::HostContext>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WTF::HashMap<WTF::String,std::unique_ptr<WebKit::NetworkLoadScheduler::HostContext>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkLoadScheduler::HostContext>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<std::unique_ptr<WTF::HashMap<WTF::String,std::unique_ptr<WebKit::NetworkLoadScheduler::HostContext>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkLoadScheduler::HostContext>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash(a1, v5, a2);
}

WTF::StringImpl ****WTF::HashMapEnsureTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WTF::HashMap<WTF::String,std::unique_ptr<WebKit::NetworkLoadScheduler::HostContext>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkLoadScheduler::HostContext>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<std::unique_ptr<WTF::HashMap<WTF::String,std::unique_ptr<WebKit::NetworkLoadScheduler::HostContext>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkLoadScheduler::HostContext>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>::translate<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long> const&,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WTF::HashMap<WTF::String,std::unique_ptr<WebKit::NetworkLoadScheduler::HostContext>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkLoadScheduler::HostContext>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>>,WebKit::NetworkLoadScheduler::setResourceLoadSchedulingMode(WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::LoadSchedulingMode)::$_0>(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = WTF::fastMalloc(8);
  *v4 = 0;
  v7 = 0;
  v5 = a1[1];
  a1[1] = v4;
  if (v5)
  {
    std::default_delete<WTF::HashMap<WTF::String,std::unique_ptr<WebKit::NetworkLoadScheduler::HostContext>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkLoadScheduler::HostContext>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>::operator()[abi:sn200100](v5, v3);
  }

  return std::unique_ptr<WTF::HashMap<WTF::String,std::unique_ptr<WebKit::NetworkLoadScheduler::HostContext>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkLoadScheduler::HostContext>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>::~unique_ptr[abi:sn200100](&v7, v3);
}

uint64_t WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WTF::HashMap<WTF::String,std::unique_ptr<WebKit::NetworkLoadScheduler::HostContext>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkLoadScheduler::HostContext>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WTF::HashMap<WTF::String,std::unique_ptr<WebKit::NetworkLoadScheduler::HostContext>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkLoadScheduler::HostContext>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WTF::HashMap<WTF::String,std::unique_ptr<WebKit::NetworkLoadScheduler::HostContext>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkLoadScheduler::HostContext>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<std::unique_ptr<WTF::HashMap<WTF::String,std::unique_ptr<WebKit::NetworkLoadScheduler::HostContext>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkLoadScheduler::HostContext>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash(uint64_t *a1, unsigned int a2, WTF::StringImpl ****a3)
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
          v15 = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WTF::HashMap<WTF::String,std::unique_ptr<WebKit::NetworkLoadScheduler::HostContext>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkLoadScheduler::HostContext>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WTF::HashMap<WTF::String,std::unique_ptr<WebKit::NetworkLoadScheduler::HostContext>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkLoadScheduler::HostContext>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WTF::HashMap<WTF::String,std::unique_ptr<WebKit::NetworkLoadScheduler::HostContext>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkLoadScheduler::HostContext>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<std::unique_ptr<WTF::HashMap<WTF::String,std::unique_ptr<WebKit::NetworkLoadScheduler::HostContext>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkLoadScheduler::HostContext>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::reinsert(*a1, v14);
          std::unique_ptr<WTF::HashMap<WTF::String,std::unique_ptr<WebKit::NetworkLoadScheduler::HostContext>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkLoadScheduler::HostContext>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>::~unique_ptr[abi:sn200100](v14 + 1, v16);
          if (v14 == a3)
          {
            v11 = v15;
          }
        }

        else
        {
          std::unique_ptr<WTF::HashMap<WTF::String,std::unique_ptr<WebKit::NetworkLoadScheduler::HostContext>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkLoadScheduler::HostContext>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>::~unique_ptr[abi:sn200100](v14 + 1, v10);
        }
      }

      v14 += 2;
      --v13;
    }

    while (v13);
    goto LABEL_13;
  }

  result = 0;
  if (v6)
  {
LABEL_13:
    WTF::fastFree((v6 - 16), v10);
    return v11;
  }

  return result;
}

uint64_t WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WTF::HashMap<WTF::String,std::unique_ptr<WebKit::NetworkLoadScheduler::HostContext>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkLoadScheduler::HostContext>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WTF::HashMap<WTF::String,std::unique_ptr<WebKit::NetworkLoadScheduler::HostContext>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkLoadScheduler::HostContext>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WTF::HashMap<WTF::String,std::unique_ptr<WebKit::NetworkLoadScheduler::HostContext>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkLoadScheduler::HostContext>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<std::unique_ptr<WTF::HashMap<WTF::String,std::unique_ptr<WebKit::NetworkLoadScheduler::HostContext>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkLoadScheduler::HostContext>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::reinsert(uint64_t a1, WebKit::NetworkLoad *a2)
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
  v11 = a1 + 16 * v9;
  std::unique_ptr<WTF::HashMap<WTF::String,std::unique_ptr<WebKit::NetworkLoadScheduler::HostContext>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkLoadScheduler::HostContext>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>::~unique_ptr[abi:sn200100]((v11 + 8), a2);
  *v11 = *a2;
  v12 = *(a2 + 1);
  *(a2 + 1) = 0;
  *(v11 + 8) = v12;
  return v11;
}

uint64_t *WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WTF::HashMap<WTF::String,std::unique_ptr<WebKit::NetworkLoadScheduler::HostContext>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkLoadScheduler::HostContext>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<std::unique_ptr<WTF::HashMap<WTF::String,std::unique_ptr<WebKit::NetworkLoadScheduler::HostContext>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkLoadScheduler::HostContext>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::remove(uint64_t *a1, uint64_t a2)
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
    return WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WTF::HashMap<WTF::String,std::unique_ptr<WebKit::NetworkLoadScheduler::HostContext>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkLoadScheduler::HostContext>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WTF::HashMap<WTF::String,std::unique_ptr<WebKit::NetworkLoadScheduler::HostContext>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkLoadScheduler::HostContext>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WTF::HashMap<WTF::String,std::unique_ptr<WebKit::NetworkLoadScheduler::HostContext>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkLoadScheduler::HostContext>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<std::unique_ptr<WTF::HashMap<WTF::String,std::unique_ptr<WebKit::NetworkLoadScheduler::HostContext>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkLoadScheduler::HostContext>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::remove(a1, a2);
  }

  return a1;
}

WTF::StringImpl ****WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WTF::HashMap<WTF::String,std::unique_ptr<WebKit::NetworkLoadScheduler::HostContext>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkLoadScheduler::HostContext>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WTF::HashMap<WTF::String,std::unique_ptr<WebKit::NetworkLoadScheduler::HostContext>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkLoadScheduler::HostContext>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WTF::HashMap<WTF::String,std::unique_ptr<WebKit::NetworkLoadScheduler::HostContext>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkLoadScheduler::HostContext>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<std::unique_ptr<WTF::HashMap<WTF::String,std::unique_ptr<WebKit::NetworkLoadScheduler::HostContext>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkLoadScheduler::HostContext>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::remove(uint64_t *a1, uint64_t a2)
{
  *a2 = -1;
  result = std::unique_ptr<WTF::HashMap<WTF::String,std::unique_ptr<WebKit::NetworkLoadScheduler::HostContext>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkLoadScheduler::HostContext>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>::~unique_ptr[abi:sn200100]((a2 + 8), (a2 + 8));
  v4 = *a1;
  v5 = vadd_s32(*(*a1 - 16), 0xFFFFFFFF00000001);
  *(v4 - 16) = v5;
  v6 = *(v4 - 4);
  if (6 * v5.i32[1] < v6 && v6 >= 9)
  {

    return WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WTF::HashMap<WTF::String,std::unique_ptr<WebKit::NetworkLoadScheduler::HostContext>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkLoadScheduler::HostContext>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WTF::HashMap<WTF::String,std::unique_ptr<WebKit::NetworkLoadScheduler::HostContext>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkLoadScheduler::HostContext>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WTF::HashMap<WTF::String,std::unique_ptr<WebKit::NetworkLoadScheduler::HostContext>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkLoadScheduler::HostContext>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<std::unique_ptr<WTF::HashMap<WTF::String,std::unique_ptr<WebKit::NetworkLoadScheduler::HostContext>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkLoadScheduler::HostContext>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash(a1, v6 >> 1, 0);
  }

  return result;
}

uint64_t WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WTF::HashMap<WTF::String,std::unique_ptr<WebKit::NetworkLoadScheduler::HostContext>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkLoadScheduler::HostContext>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WTF::HashMap<WTF::String,std::unique_ptr<WebKit::NetworkLoadScheduler::HostContext>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkLoadScheduler::HostContext>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WTF::HashMap<WTF::String,std::unique_ptr<WebKit::NetworkLoadScheduler::HostContext>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkLoadScheduler::HostContext>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<std::unique_ptr<WTF::HashMap<WTF::String,std::unique_ptr<WebKit::NetworkLoadScheduler::HostContext>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkLoadScheduler::HostContext>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WTF::HashMap<WTF::String,std::unique_ptr<WebKit::NetworkLoadScheduler::HostContext>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkLoadScheduler::HostContext>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WTF::HashMap<WTF::String,std::unique_ptr<WebKit::NetworkLoadScheduler::HostContext>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkLoadScheduler::HostContext>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WTF::HashMap<WTF::String,std::unique_ptr<WebKit::NetworkLoadScheduler::HostContext>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkLoadScheduler::HostContext>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<std::unique_ptr<WTF::HashMap<WTF::String,std::unique_ptr<WebKit::NetworkLoadScheduler::HostContext>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkLoadScheduler::HostContext>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(uint64_t *a1, uint64_t *a2)
{
  if (!*a1)
  {
    return 0;
  }

  result = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WTF::HashMap<WTF::String,std::unique_ptr<WebKit::NetworkLoadScheduler::HostContext>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkLoadScheduler::HostContext>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WTF::HashMap<WTF::String,std::unique_ptr<WebKit::NetworkLoadScheduler::HostContext>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkLoadScheduler::HostContext>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WTF::HashMap<WTF::String,std::unique_ptr<WebKit::NetworkLoadScheduler::HostContext>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkLoadScheduler::HostContext>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<std::unique_ptr<WTF::HashMap<WTF::String,std::unique_ptr<WebKit::NetworkLoadScheduler::HostContext>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkLoadScheduler::HostContext>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::lookup<WTF::IdentityHashTranslator<WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WTF::HashMap<WTF::String,std::unique_ptr<WebKit::NetworkLoadScheduler::HostContext>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkLoadScheduler::HostContext>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WTF::HashMap<WTF::String,std::unique_ptr<WebKit::NetworkLoadScheduler::HostContext>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkLoadScheduler::HostContext>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WTF::HashMap<WTF::String,std::unique_ptr<WebKit::NetworkLoadScheduler::HostContext>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkLoadScheduler::HostContext>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<std::unique_ptr<WTF::HashMap<WTF::String,std::unique_ptr<WebKit::NetworkLoadScheduler::HostContext>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkLoadScheduler::HostContext>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>( a1,  a2);
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

uint64_t WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WTF::HashMap<WTF::String,std::unique_ptr<WebKit::NetworkLoadScheduler::HostContext>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkLoadScheduler::HostContext>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WTF::HashMap<WTF::String,std::unique_ptr<WebKit::NetworkLoadScheduler::HostContext>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkLoadScheduler::HostContext>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WTF::HashMap<WTF::String,std::unique_ptr<WebKit::NetworkLoadScheduler::HostContext>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkLoadScheduler::HostContext>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<std::unique_ptr<WTF::HashMap<WTF::String,std::unique_ptr<WebKit::NetworkLoadScheduler::HostContext>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkLoadScheduler::HostContext>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::lookup<WTF::IdentityHashTranslator<WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WTF::HashMap<WTF::String,std::unique_ptr<WebKit::NetworkLoadScheduler::HostContext>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkLoadScheduler::HostContext>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WTF::HashMap<WTF::String,std::unique_ptr<WebKit::NetworkLoadScheduler::HostContext>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkLoadScheduler::HostContext>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WTF::HashMap<WTF::String,std::unique_ptr<WebKit::NetworkLoadScheduler::HostContext>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkLoadScheduler::HostContext>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<std::unique_ptr<WTF::HashMap<WTF::String,std::unique_ptr<WebKit::NetworkLoadScheduler::HostContext>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkLoadScheduler::HostContext>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(uint64_t *a1, uint64_t *a2)
{
  WTF::checkHashTableKey<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WTF::HashMap<WTF::String,std::unique_ptr<WebKit::NetworkLoadScheduler::HostContext>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkLoadScheduler::HostContext>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WTF::HashMap<WTF::String,std::unique_ptr<WebKit::NetworkLoadScheduler::HostContext>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkLoadScheduler::HostContext>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WTF::HashMap<WTF::String,std::unique_ptr<WebKit::NetworkLoadScheduler::HostContext>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkLoadScheduler::HostContext>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<std::unique_ptr<WTF::HashMap<WTF::String,std::unique_ptr<WebKit::NetworkLoadScheduler::HostContext>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkLoadScheduler::HostContext>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::IdentityHashTranslator<WTF::IdentityHashTranslator,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(*a2);
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

    v8 = 1;
    while (v7)
    {
      v6 = (v6 + v8) & v5;
      v7 = *(v4 + 16 * v6);
      ++v8;
      if (v7 == *a2)
      {
        return v4 + 16 * v6;
      }
    }
  }

  return 0;
}

uint64_t WTF::checkHashTableKey<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WTF::HashMap<WTF::String,std::unique_ptr<WebKit::NetworkLoadScheduler::HostContext>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkLoadScheduler::HostContext>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WTF::HashMap<WTF::String,std::unique_ptr<WebKit::NetworkLoadScheduler::HostContext>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkLoadScheduler::HostContext>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WTF::HashMap<WTF::String,std::unique_ptr<WebKit::NetworkLoadScheduler::HostContext>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkLoadScheduler::HostContext>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<std::unique_ptr<WTF::HashMap<WTF::String,std::unique_ptr<WebKit::NetworkLoadScheduler::HostContext>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkLoadScheduler::HostContext>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::IdentityHashTranslator<WTF::IdentityHashTranslator,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(uint64_t result)
{
  if (result == -1 || !result)
  {
    __break(0xC471u);
    JUMPOUT(0x19DC7ED14);
  }

  return result;
}

WTF::StringImpl **WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,std::unique_ptr<WebKit::NetworkLoadScheduler::HostContext>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,std::unique_ptr<WebKit::NetworkLoadScheduler::HostContext>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,std::unique_ptr<WebKit::NetworkLoadScheduler::HostContext>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkLoadScheduler::HostContext>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::expand(uint64_t *a1, WebKit::NetworkLoad *a2)
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

  return WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,std::unique_ptr<WebKit::NetworkLoadScheduler::HostContext>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,std::unique_ptr<WebKit::NetworkLoadScheduler::HostContext>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,std::unique_ptr<WebKit::NetworkLoadScheduler::HostContext>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkLoadScheduler::HostContext>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::rehash(a1, v5, a2);
}

WebKit::NetworkLoadScheduler::HostContext *WTF::HashMapEnsureTranslator<WTF::HashMap<WTF::String,std::unique_ptr<WebKit::NetworkLoadScheduler::HostContext>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkLoadScheduler::HostContext>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::String>>::translate<WTF::String const&,WTF::KeyValuePair<WTF::String,std::unique_ptr<WebKit::NetworkLoadScheduler::HostContext>>,WebKit::NetworkLoadScheduler::contextForLoad(WebKit::NetworkLoad const&)::$_0>(uint64_t *a1, atomic_uint **a2)
{
  WTF::String::operator=(a1, a2);
  v5 = WebKit::NetworkLoadScheduler::HostContext::operator new(0x30, v3);
  *v5 = 0u;
  v5[1] = 0u;
  v5[2] = 0u;
  result = a1[1];
  a1[1] = v5;
  if (result)
  {
    WebKit::NetworkLoadScheduler::HostContext::~HostContext(result, v4);

    return bmalloc::api::tzoneFree(v7, v8);
  }

  return result;
}

WTF::StringImpl **WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,std::unique_ptr<WebKit::NetworkLoadScheduler::HostContext>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,std::unique_ptr<WebKit::NetworkLoadScheduler::HostContext>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,std::unique_ptr<WebKit::NetworkLoadScheduler::HostContext>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkLoadScheduler::HostContext>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::rehash(uint64_t *a1, unsigned int a2, WebKit::NetworkLoad *a3)
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
          v15 = WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,std::unique_ptr<WebKit::NetworkLoadScheduler::HostContext>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,std::unique_ptr<WebKit::NetworkLoadScheduler::HostContext>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,std::unique_ptr<WebKit::NetworkLoadScheduler::HostContext>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkLoadScheduler::HostContext>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::reinsert(a1, v14);
          WTF::KeyValuePair<WTF::String,std::unique_ptr<WebKit::NetworkLoadScheduler::HostContext>>::~KeyValuePair(v14, v16);
          if (v14 == a3)
          {
            v11 = v15;
          }
        }

        else
        {
          WTF::KeyValuePair<WTF::String,std::unique_ptr<WebKit::NetworkLoadScheduler::HostContext>>::~KeyValuePair(v14, v10);
        }
      }

      v14 = (v14 + 16);
      --v13;
    }

    while (v13);
    goto LABEL_13;
  }

  result = 0;
  if (v6)
  {
LABEL_13:
    WTF::fastFree((v6 - 16), v10);
    return v11;
  }

  return result;
}

WTF::StringImpl **WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,std::unique_ptr<WebKit::NetworkLoadScheduler::HostContext>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,std::unique_ptr<WebKit::NetworkLoadScheduler::HostContext>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,std::unique_ptr<WebKit::NetworkLoadScheduler::HostContext>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkLoadScheduler::HostContext>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::reinsert(uint64_t *a1, WebKit::NetworkLoad *a2)
{
  v3 = *a1;
  v4 = *a2;
  if (v3)
  {
    v5 = *(v3 - 8);
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

  while (*(v3 + 16 * v9));
  v10 = (v3 + 16 * v9);
  v11 = v10[1];
  v10[1] = 0;
  if (v11)
  {
    WebKit::NetworkLoadScheduler::HostContext::~HostContext(v11, a2);
    bmalloc::api::tzoneFree(v14, v15);
    v17 = *v10;
    *v10 = 0;
    if (v17 && atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v17, v16);
    }
  }

  else
  {
    *v10 = 0;
  }

  v12 = *a2;
  *a2 = 0;
  *(a2 + 1) = 0;
  *v10 = v12;
  return v10;
}

uint64_t WebKit::NetworkLoadScheduler::HostContext::operator new(WebKit::NetworkLoadScheduler::HostContext *this, void *a2)
{
  if (WebKit::NetworkLoadScheduler::HostContext::s_heapRef)
  {
    return bmalloc::api::tzoneAllocateNonCompact(WebKit::NetworkLoadScheduler::HostContext::s_heapRef, a2);
  }

  else
  {
    return WebKit::NetworkLoadScheduler::HostContext::operatorNewSlow(0x30);
  }
}

unint64_t WTF::Vector<WebCore::UserContentURLPattern,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v3 = a3;
  v5 = *a1;
  if (*a1 > a3 || v5 + 32 * *(a1 + 12) <= a3)
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

    WTF::Vector<WebCore::UserContentURLPattern,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v12);
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

    WTF::Vector<WebCore::UserContentURLPattern,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v9);
    return *a1 + v6;
  }

  return v3;
}

uint64_t WTF::Vector<WebCore::UserContentURLPattern,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 8) < a2)
  {
    v2 = a2;
    if (a2 >> 27)
    {
      __break(0xC471u);
      JUMPOUT(0x19DC7F0ECLL);
    }

    v4 = *a1;
    v5 = (*a1 + 32 * *(a1 + 12));
    v6 = WTF::fastMalloc((32 * a2));
    *(a1 + 8) = v2;
    *a1 = v6;
    WTF::VectorMover<false,WebCore::UserContentURLPattern>::move(v4, v5, v6);
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

  return 1;
}

WTF::StringImpl *WTF::VectorMover<false,WebCore::UserContentURLPattern>::move(WTF::StringImpl *result, WTF::StringImpl *a2, uint64_t a3)
{
  if (result != a2)
  {
    v5 = result;
    do
    {
      v6 = *v5;
      *v5 = 0;
      *a3 = v6;
      v7 = *(v5 + 1);
      *(v5 + 1) = 0;
      *(a3 + 8) = v7;
      v8 = *(v5 + 2);
      *(v5 + 2) = 0;
      *(a3 + 16) = v8;
      *(a3 + 24) = *(v5 + 12);
      v9 = *(v5 + 2);
      *(v5 + 2) = 0;
      if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v9, a2);
      }

      v10 = *(v5 + 1);
      *(v5 + 1) = 0;
      if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v10, a2);
      }

      result = *v5;
      *v5 = 0;
      if (result)
      {
        if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          result = WTF::StringImpl::destroy(result, a2);
        }
      }

      a3 += 32;
      v5 = (v5 + 32);
    }

    while (v5 != a2);
  }

  return result;
}

void WebCore::UserContentURLPattern::~UserContentURLPattern(WebCore::UserContentURLPattern *this, WTF::StringImpl *a2)
{
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v3, a2);
  }

  v4 = *(this + 1);
  *(this + 1) = 0;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, a2);
  }

  v5 = *this;
  *this = 0;
  if (v5)
  {
    if (atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v5, a2);
    }
  }
}

void *WTF::Detail::CallableWrapper<WebKit::NetworkProcess::NetworkProcess(WebKit::AuxiliaryProcessInitializationParameters &&)::$_0,void,BOOL>::~CallableWrapper(void *a1, void *a2)
{
  v3 = a1[1];
  *a1 = &unk_1F1101338;
  a1[1] = 0;
  if (v3 && atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3);
    WTF::fastFree(v3, a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::NetworkProcess::NetworkProcess(WebKit::AuxiliaryProcessInitializationParameters &&)::$_0,void,BOOL>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F1101338;
  *(this + 1) = 0;
  if (v3 && atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3);
    WTF::fastFree(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::HashMap<WTF::ASCIILiteral,std::unique_ptr<WebKit::NetworkProcessSupplement>,WTF::DefaultHash<WTF::ASCIILiteral>,WTF::HashTraits<WTF::ASCIILiteral>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkProcessSupplement>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<std::unique_ptr<WebKit::NetworkProcessSupplement>>(uint64_t a1, uint64_t *a2, WTF::ASCIILiteralHash *this, uint64_t *a4)
{
  if (!*(this + 1))
  {
    __break(0xC471u);
    JUMPOUT(0x19DC7F53CLL);
  }

  if (*this == -1)
  {
    __break(0xC471u);
    JUMPOUT(0x19DC7F55CLL);
  }

  v8 = *a2;
  if (*a2 || (WTF::HashTable<WTF::ASCIILiteral,WTF::KeyValuePair<WTF::ASCIILiteral,std::unique_ptr<WebKit::NetworkProcessSupplement>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ASCIILiteral,std::unique_ptr<WebKit::NetworkProcessSupplement>>>,WTF::DefaultHash<WTF::ASCIILiteral>,WTF::HashMap<WTF::ASCIILiteral,std::unique_ptr<WebKit::NetworkProcessSupplement>,WTF::DefaultHash<WTF::ASCIILiteral>,WTF::HashTraits<WTF::ASCIILiteral>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkProcessSupplement>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ASCIILiteral>,WTF::FastMalloc>::expand(a2, 0), (v8 = *a2) != 0))
  {
    v9 = *(v8 - 8);
  }

  else
  {
    v9 = 0;
  }

  v10 = WTF::ASCIILiteralHash::hash(this, a2) & v9;
  v11 = v8 + 24 * v10;
  v12 = *(v11 + 8);
  if (v12)
  {
    v21 = 0;
    v22 = 1;
    do
    {
      if (*v11 == -1)
      {
        v21 = v11;
      }

      else
      {
        v23 = *(this + 1);
        if (v12 == v23)
        {
          v26 = v21;
          result = memcmp(*v11, *this, v23);
          v21 = v26;
          if (!result)
          {
            v24 = *a2;
            if (*a2)
            {
              v25 = *(v24 - 4);
            }

            else
            {
              v25 = 0;
            }

            v20 = 0;
            v19 = v24 + 24 * v25;
            goto LABEL_14;
          }
        }
      }

      v10 = (v10 + v22) & v9;
      v11 = v8 + 24 * v10;
      v12 = *(v11 + 8);
      ++v22;
    }

    while (v12);
    if (v21)
    {
      *v21 = 0;
      v21[1] = 0;
      v21[2] = 0;
      --*(*a2 - 16);
      v11 = v21;
    }
  }

  *v11 = *this;
  v13 = *a4;
  *a4 = 0;
  result = *(v11 + 16);
  *(v11 + 16) = v13;
  if (result)
  {
    result = (*(*result + 8))(result);
  }

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
      goto LABEL_13;
    }

LABEL_17:
    result = WTF::HashTable<WTF::ASCIILiteral,WTF::KeyValuePair<WTF::ASCIILiteral,std::unique_ptr<WebKit::NetworkProcessSupplement>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ASCIILiteral,std::unique_ptr<WebKit::NetworkProcessSupplement>>>,WTF::DefaultHash<WTF::ASCIILiteral>,WTF::HashMap<WTF::ASCIILiteral,std::unique_ptr<WebKit::NetworkProcessSupplement>,WTF::DefaultHash<WTF::ASCIILiteral>,WTF::HashTraits<WTF::ASCIILiteral>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkProcessSupplement>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ASCIILiteral>,WTF::FastMalloc>::expand(a2, v11);
    v11 = result;
    v15 = *a2;
    if (*a2)
    {
      LODWORD(v18) = *(v15 - 4);
    }

    else
    {
      LODWORD(v18) = 0;
    }

    goto LABEL_13;
  }

  if (3 * v18 <= 4 * v17)
  {
    goto LABEL_17;
  }

LABEL_13:
  v19 = v15 + 24 * v18;
  v20 = 1;
LABEL_14:
  *a1 = v11;
  *(a1 + 8) = v19;
  *(a1 + 16) = v20;
  return result;
}

uint64_t WTF::HashTable<WTF::ASCIILiteral,WTF::KeyValuePair<WTF::ASCIILiteral,std::unique_ptr<WebKit::NetworkProcessSupplement>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ASCIILiteral,std::unique_ptr<WebKit::NetworkProcessSupplement>>>,WTF::DefaultHash<WTF::ASCIILiteral>,WTF::HashMap<WTF::ASCIILiteral,std::unique_ptr<WebKit::NetworkProcessSupplement>,WTF::DefaultHash<WTF::ASCIILiteral>,WTF::HashTraits<WTF::ASCIILiteral>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkProcessSupplement>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ASCIILiteral>,WTF::FastMalloc>::expand(uint64_t *a1, WTF::ASCIILiteralHash *a2)
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

  return WTF::HashTable<WTF::ASCIILiteral,WTF::KeyValuePair<WTF::ASCIILiteral,std::unique_ptr<WebKit::NetworkProcessSupplement>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ASCIILiteral,std::unique_ptr<WebKit::NetworkProcessSupplement>>>,WTF::DefaultHash<WTF::ASCIILiteral>,WTF::HashMap<WTF::ASCIILiteral,std::unique_ptr<WebKit::NetworkProcessSupplement>,WTF::DefaultHash<WTF::ASCIILiteral>,WTF::HashTraits<WTF::ASCIILiteral>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkProcessSupplement>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ASCIILiteral>,WTF::FastMalloc>::rehash(a1, v5, a2);
}

uint64_t WTF::HashTable<WTF::ASCIILiteral,WTF::KeyValuePair<WTF::ASCIILiteral,std::unique_ptr<WebKit::NetworkProcessSupplement>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ASCIILiteral,std::unique_ptr<WebKit::NetworkProcessSupplement>>>,WTF::DefaultHash<WTF::ASCIILiteral>,WTF::HashMap<WTF::ASCIILiteral,std::unique_ptr<WebKit::NetworkProcessSupplement>,WTF::DefaultHash<WTF::ASCIILiteral>,WTF::HashTraits<WTF::ASCIILiteral>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkProcessSupplement>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ASCIILiteral>,WTF::FastMalloc>::rehash(uint64_t *a1, unsigned int a2, WTF::ASCIILiteralHash *a3)
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
  v11 = 0;
  if (v7)
  {
    v13 = v7;
    v14 = v6;
    do
    {
      if (*v14 != -1)
      {
        if (*(v14 + 1))
        {
          v15 = WTF::HashTable<WTF::ASCIILiteral,WTF::KeyValuePair<WTF::ASCIILiteral,std::unique_ptr<WebKit::NetworkProcessSupplement>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ASCIILiteral,std::unique_ptr<WebKit::NetworkProcessSupplement>>>,WTF::DefaultHash<WTF::ASCIILiteral>,WTF::HashMap<WTF::ASCIILiteral,std::unique_ptr<WebKit::NetworkProcessSupplement>,WTF::DefaultHash<WTF::ASCIILiteral>,WTF::HashTraits<WTF::ASCIILiteral>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkProcessSupplement>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ASCIILiteral>,WTF::FastMalloc>::reinsert(*a1, v14);
          v16 = *(v14 + 2);
          *(v14 + 2) = 0;
          if (v16)
          {
            (*(*v16 + 8))(v16);
          }

          if (v14 == a3)
          {
            v11 = v15;
          }
        }

        else
        {
          v17 = *(v14 + 2);
          *(v14 + 2) = 0;
          if (v17)
          {
            (*(*v17 + 8))(v17);
          }
        }
      }

      v14 = (v14 + 24);
      --v13;
    }

    while (v13);
    goto LABEL_17;
  }

  result = 0;
  if (v6)
  {
LABEL_17:
    WTF::fastFree((v6 - 16), v10);
    return v11;
  }

  return result;
}

uint64_t WTF::HashTable<WTF::ASCIILiteral,WTF::KeyValuePair<WTF::ASCIILiteral,std::unique_ptr<WebKit::NetworkProcessSupplement>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ASCIILiteral,std::unique_ptr<WebKit::NetworkProcessSupplement>>>,WTF::DefaultHash<WTF::ASCIILiteral>,WTF::HashMap<WTF::ASCIILiteral,std::unique_ptr<WebKit::NetworkProcessSupplement>,WTF::DefaultHash<WTF::ASCIILiteral>,WTF::HashTraits<WTF::ASCIILiteral>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkProcessSupplement>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ASCIILiteral>,WTF::FastMalloc>::reinsert(uint64_t a1, WTF::ASCIILiteralHash *this)
{
  if (a1)
  {
    v4 = *(a1 - 8);
  }

  else
  {
    v4 = 0;
  }

  v5 = WTF::ASCIILiteralHash::hash(this, this);
  v6 = 0;
  do
  {
    v7 = a1 + 24 * (v5 & v4);
    v5 = ++v6 + (v5 & v4);
  }

  while (*(v7 + 8));
  v8 = *(v7 + 16);
  *(v7 + 16) = 0;
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  *v7 = *this;
  v9 = *(this + 2);
  *(this + 2) = 0;
  *(v7 + 16) = v9;
  return v7;
}

uint64_t WTF::HashMap<WTF::ASCIILiteral,std::unique_ptr<WebKit::NetworkProcessSupplement>,WTF::DefaultHash<WTF::ASCIILiteral>,WTF::HashTraits<WTF::ASCIILiteral>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkProcessSupplement>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<std::unique_ptr<WebKit::LaunchServicesDatabaseObserver>>(uint64_t a1, uint64_t *a2, WTF::ASCIILiteralHash *this, uint64_t *a4)
{
  if (!*(this + 1) || *this == -1)
  {
    __break(0xC471u);
    JUMPOUT(0x19DC7F9D8);
  }

  v7 = *a2;
  if (*a2 || (WTF::HashTable<WTF::ASCIILiteral,WTF::KeyValuePair<WTF::ASCIILiteral,std::unique_ptr<WebKit::NetworkProcessSupplement>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ASCIILiteral,std::unique_ptr<WebKit::NetworkProcessSupplement>>>,WTF::DefaultHash<WTF::ASCIILiteral>,WTF::HashMap<WTF::ASCIILiteral,std::unique_ptr<WebKit::NetworkProcessSupplement>,WTF::DefaultHash<WTF::ASCIILiteral>,WTF::HashTraits<WTF::ASCIILiteral>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkProcessSupplement>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ASCIILiteral>,WTF::FastMalloc>::expand(a2, 0), (v7 = *a2) != 0))
  {
    v8 = *(v7 - 8);
  }

  else
  {
    v8 = 0;
  }

  v9 = WTF::ASCIILiteralHash::hash(this, a2) & v8;
  v10 = v7 + 24 * v9;
  v11 = *(v10 + 8);
  if (v11)
  {
    v12 = 0;
    v13 = 1;
    do
    {
      if (*v10 == -1)
      {
        v12 = v10;
      }

      else
      {
        v14 = *(this + 1);
        if (v11 == v14)
        {
          result = memcmp(*v10, *this, v14);
          if (!result)
          {
            v25 = *a2;
            if (*a2)
            {
              v26 = *(v25 - 4);
            }

            else
            {
              v26 = 0;
            }

            v18 = a1;
            v24 = 0;
            v23 = v25 + 24 * v26;
            goto LABEL_26;
          }
        }
      }

      v9 = (v9 + v13) & v8;
      v10 = v7 + 24 * v9;
      v11 = *(v10 + 8);
      ++v13;
    }

    while (v11);
    if (v12)
    {
      *v12 = 0;
      v12[1] = 0;
      v12[2] = 0;
      --*(*a2 - 16);
      v10 = v12;
    }
  }

  *v10 = *this;
  v16 = *a4;
  *a4 = 0;
  if (v16)
  {
    v17 = v16 + 24;
  }

  else
  {
    v17 = 0;
  }

  result = *(v10 + 16);
  *(v10 + 16) = v17;
  v18 = a1;
  if (result)
  {
    result = (*(*result + 8))(result);
  }

  v19 = *a2;
  if (*a2)
  {
    v20 = *(v19 - 12) + 1;
  }

  else
  {
    v20 = 1;
  }

  *(v19 - 12) = v20;
  v21 = (*(v19 - 16) + v20);
  v22 = *(v19 - 4);
  if (v22 > 0x400)
  {
    if (v22 > 2 * v21)
    {
      goto LABEL_25;
    }

LABEL_34:
    result = WTF::HashTable<WTF::ASCIILiteral,WTF::KeyValuePair<WTF::ASCIILiteral,std::unique_ptr<WebKit::NetworkProcessSupplement>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ASCIILiteral,std::unique_ptr<WebKit::NetworkProcessSupplement>>>,WTF::DefaultHash<WTF::ASCIILiteral>,WTF::HashMap<WTF::ASCIILiteral,std::unique_ptr<WebKit::NetworkProcessSupplement>,WTF::DefaultHash<WTF::ASCIILiteral>,WTF::HashTraits<WTF::ASCIILiteral>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkProcessSupplement>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ASCIILiteral>,WTF::FastMalloc>::expand(a2, v10);
    v10 = result;
    v19 = *a2;
    if (*a2)
    {
      LODWORD(v22) = *(v19 - 4);
    }

    else
    {
      LODWORD(v22) = 0;
    }

    goto LABEL_25;
  }

  if (3 * v22 <= 4 * v21)
  {
    goto LABEL_34;
  }

LABEL_25:
  v23 = v19 + 24 * v22;
  v24 = 1;
LABEL_26:
  *v18 = v10;
  *(v18 + 8) = v23;
  *(v18 + 16) = v24;
  return result;
}

void *WTF::Detail::CallableWrapper<WebKit::NetworkProcess::NetworkProcess(WebKit::AuxiliaryProcessInitializationParameters &&)::$_1,void,BOOL>::~CallableWrapper(void *a1, void *a2)
{
  v3 = a1[1];
  *a1 = &unk_1F1101360;
  a1[1] = 0;
  if (v3 && atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3);
    WTF::fastFree(v3, a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::NetworkProcess::NetworkProcess(WebKit::AuxiliaryProcessInitializationParameters &&)::$_1,void,BOOL>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F1101360;
  *(this + 1) = 0;
  if (v3 && atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3);
    WTF::fastFree(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

void *WebKit::NetworkProcess::NetworkProcess(WebKit::AuxiliaryProcessInitializationParameters &&)::$_1::operator()(void *result, char a2)
{
  if (result)
  {
    v2 = result[1];
    if (v2)
    {
      result = WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::begin((v2 + 152));
      v4 = result;
      v6 = v5;
      v7 = *(v2 + 152);
      v8 = v7 ? v7 + 16 * *(v7 - 4) : 0;
      if (v8 != result)
      {
        do
        {
          result = WebKit::NetworkConnectionToWebProcess::setOnLineState(v4[1], a2);
          do
          {
            v4 += 2;
          }

          while (v4 != v6 && (*v4 + 1) <= 1);
        }

        while (v4 != v8);
      }
    }
  }

  return result;
}

uint64_t WTF::HashMap<WTF::ASCIILiteral,std::unique_ptr<WebKit::NetworkProcessSupplement>,WTF::DefaultHash<WTF::ASCIILiteral>,WTF::HashTraits<WTF::ASCIILiteral>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkProcessSupplement>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ASCIILiteral,std::unique_ptr<WebKit::NetworkProcessSupplement>,WTF::DefaultHash<WTF::ASCIILiteral>,WTF::HashTraits<WTF::ASCIILiteral>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkProcessSupplement>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ASCIILiteral>>,WTF::ASCIILiteral>(uint64_t *a1, WTF::ASCIILiteralHash *this)
{
  if (!*(this + 1) || *this == -1)
  {
    __break(0xC471u);
    JUMPOUT(0x19DC7FC54);
  }

  v3 = *a1;
  if (!*a1)
  {
    return 0;
  }

  v4 = *(v3 - 8);
  v5 = WTF::ASCIILiteralHash::hash(this, this) & v4;
  v6 = v3 + 24 * v5;
  v7 = *(v6 + 8);
  if (!v7)
  {
    return 0;
  }

  v8 = *(this + 1);
  for (i = 1; ; ++i)
  {
    v10 = *v6 != -1 && v7 == v8;
    if (v10 && !memcmp(*v6, *this, v8))
    {
      break;
    }

    v5 = (v5 + i) & v4;
    v6 = v3 + 24 * v5;
    v7 = *(v6 + 8);
    if (!v7)
    {
      return 0;
    }
  }

  return *(v6 + 16);
}

uint64_t *WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkConnectionToWebProcess,WTF::RawPtrTraits<WebKit::NetworkConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::NetworkConnectionToWebProcess>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::NetworkConnectionToWebProcess,WTF::RawPtrTraits<WebKit::NetworkConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::NetworkConnectionToWebProcess>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::remove(uint64_t *a1, uint64_t a2)
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
    return WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkConnectionToWebProcess,WTF::RawPtrTraits<WebKit::NetworkConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::NetworkConnectionToWebProcess>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkConnectionToWebProcess,WTF::RawPtrTraits<WebKit::NetworkConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::NetworkConnectionToWebProcess>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkConnectionToWebProcess,WTF::RawPtrTraits<WebKit::NetworkConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::NetworkConnectionToWebProcess>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::NetworkConnectionToWebProcess,WTF::RawPtrTraits<WebKit::NetworkConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::NetworkConnectionToWebProcess>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::remove(a1, a2);
  }

  return a1;
}

void *WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkConnectionToWebProcess,WTF::RawPtrTraits<WebKit::NetworkConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::NetworkConnectionToWebProcess>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkConnectionToWebProcess,WTF::RawPtrTraits<WebKit::NetworkConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::NetworkConnectionToWebProcess>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkConnectionToWebProcess,WTF::RawPtrTraits<WebKit::NetworkConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::NetworkConnectionToWebProcess>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::NetworkConnectionToWebProcess,WTF::RawPtrTraits<WebKit::NetworkConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::NetworkConnectionToWebProcess>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::remove(uint64_t *a1, uint64_t a2)
{
  *a2 = -1;
  result = WTF::Ref<WebKit::NetworkConnectionToWebProcess,WTF::RawPtrTraits<WebKit::NetworkConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::NetworkConnectionToWebProcess>>::~Ref((a2 + 8));
  v4 = *a1;
  v5 = vadd_s32(*(*a1 - 16), 0xFFFFFFFF00000001);
  *(v4 - 16) = v5;
  v6 = *(v4 - 4);
  if (6 * v5.i32[1] < v6 && v6 >= 9)
  {

    return WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkConnectionToWebProcess,WTF::RawPtrTraits<WebKit::NetworkConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::NetworkConnectionToWebProcess>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkConnectionToWebProcess,WTF::RawPtrTraits<WebKit::NetworkConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::NetworkConnectionToWebProcess>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkConnectionToWebProcess,WTF::RawPtrTraits<WebKit::NetworkConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::NetworkConnectionToWebProcess>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::NetworkConnectionToWebProcess,WTF::RawPtrTraits<WebKit::NetworkConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::NetworkConnectionToWebProcess>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash(a1, v6 >> 1, 0);
  }

  return result;
}

void *WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkConnectionToWebProcess,WTF::RawPtrTraits<WebKit::NetworkConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::NetworkConnectionToWebProcess>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkConnectionToWebProcess,WTF::RawPtrTraits<WebKit::NetworkConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::NetworkConnectionToWebProcess>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkConnectionToWebProcess,WTF::RawPtrTraits<WebKit::NetworkConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::NetworkConnectionToWebProcess>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::NetworkConnectionToWebProcess,WTF::RawPtrTraits<WebKit::NetworkConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::NetworkConnectionToWebProcess>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash(uint64_t *a1, unsigned int a2, void *a3)
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
          v15 = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkConnectionToWebProcess,WTF::RawPtrTraits<WebKit::NetworkConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::NetworkConnectionToWebProcess>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkConnectionToWebProcess,WTF::RawPtrTraits<WebKit::NetworkConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::NetworkConnectionToWebProcess>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkConnectionToWebProcess,WTF::RawPtrTraits<WebKit::NetworkConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::NetworkConnectionToWebProcess>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::NetworkConnectionToWebProcess,WTF::RawPtrTraits<WebKit::NetworkConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::NetworkConnectionToWebProcess>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::reinsert(*a1, v14);
          WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkConnectionToWebProcess,WTF::RawPtrTraits<WebKit::NetworkConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::NetworkConnectionToWebProcess>>>::~KeyValuePair(v14);
          if (v14 == a3)
          {
            v11 = v15;
          }
        }

        else
        {
          WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkConnectionToWebProcess,WTF::RawPtrTraits<WebKit::NetworkConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::NetworkConnectionToWebProcess>>>::~KeyValuePair(v14);
        }
      }

      v14 += 2;
      --v13;
    }

    while (v13);
    goto LABEL_13;
  }

  result = 0;
  if (v6)
  {
LABEL_13:
    WTF::fastFree((v6 - 16), v10);
    return v11;
  }

  return result;
}

void *WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkConnectionToWebProcess,WTF::RawPtrTraits<WebKit::NetworkConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::NetworkConnectionToWebProcess>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkConnectionToWebProcess,WTF::RawPtrTraits<WebKit::NetworkConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::NetworkConnectionToWebProcess>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkConnectionToWebProcess,WTF::RawPtrTraits<WebKit::NetworkConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::NetworkConnectionToWebProcess>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::NetworkConnectionToWebProcess,WTF::RawPtrTraits<WebKit::NetworkConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::NetworkConnectionToWebProcess>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::reinsert(uint64_t a1, void *a2)
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
    if (v12[5] == 1)
    {
      (*(*v12 + 8))(v12);
    }

    else
    {
      --v12[5];
    }
  }

  *v11 = *a2;
  v13 = a2[1];
  a2[1] = 0;
  v11[1] = v13;
  return v11;
}

uint64_t *WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::pair<WebKit::LoadedWebArchive,WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<std::pair<WebKit::LoadedWebArchive,WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::remove(uint64_t *a1, WTF::StringImpl *a2)
{
  if (*a1)
  {
    v2 = (*a1 + 24 * *(*a1 - 4));
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
    return WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::pair<WebKit::LoadedWebArchive,WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::pair<WebKit::LoadedWebArchive,WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::pair<WebKit::LoadedWebArchive,WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<std::pair<WebKit::LoadedWebArchive,WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::remove(a1, a2);
  }

  return a1;
}

WTF::StringImpl **WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::pair<WebKit::LoadedWebArchive,WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::pair<WebKit::LoadedWebArchive,WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::pair<WebKit::LoadedWebArchive,WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<std::pair<WebKit::LoadedWebArchive,WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::remove(uint64_t *a1, WTF::StringImpl *a2)
{
  *a2 = -1;
  result = *(a2 + 2);
  if (result)
  {
    result = WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(result, a2);
  }

  v4 = *a1;
  v5 = vadd_s32(*(*a1 - 16), 0xFFFFFFFF00000001);
  *(v4 - 16) = v5;
  v6 = *(v4 - 4);
  if (6 * v5.i32[1] < v6 && v6 >= 9)
  {

    return WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::pair<WebKit::LoadedWebArchive,WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::pair<WebKit::LoadedWebArchive,WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::pair<WebKit::LoadedWebArchive,WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<std::pair<WebKit::LoadedWebArchive,WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash(a1, v6 >> 1, 0);
  }

  return result;
}