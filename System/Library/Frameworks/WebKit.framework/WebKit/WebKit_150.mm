WebKit *WebKit::deleteEmptyOriginDirectory(WebKit *this, const WTF::String *a2)
{
  if (*this && *(*this + 4))
  {
    v2 = this;
    if (WebKit::isEmptyOriginDirectory(this, a2))
    {
      WTF::FileSystemImpl::deleteNonEmptyDirectory(v2, v3);
    }

    WTF::FileSystemImpl::deleteEmptyDirectory(v2, v3);
    WTF::FileSystemImpl::parentPath(&v7, v2, v4);
    WTF::FileSystemImpl::deleteEmptyDirectory(&v7, v5);
    this = v7;
    v7 = 0;
    if (this)
    {
      if (atomic_fetch_add_explicit(this, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        return WTF::StringImpl::destroy(this, v6);
      }
    }
  }

  return this;
}

uint64_t WebKit::NetworkStorageManager::persisted(WebKit::NetworkStorageManager *a1, const WebCore::ClientOrigin *a2, uint64_t *a3)
{
  v4 = WebKit::NetworkStorageManager::persistedInternal(a1, a2);
  v5 = *a3;
  *a3 = 0;
  (*(*v5 + 16))(v5, v4);
  v6 = *(*v5 + 8);

  return v6(v5);
}

uint64_t WebKit::NetworkStorageManager::didFetchRegistrableDomainsForPersist(uint64_t result, uint64_t *a2)
{
  if ((*(result + 64) & 1) == 0)
  {
    v8 = result;
    v3 = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::NetworkDataTask,(WTF::DestructionThread)1>::controlBlock((result + 8));
    v9 = WTF::ThreadSafeWeakPtrControlBlock::weakRef(v3);
    WTF::CrossThreadCopierBase<false,false,WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>::copy(a2, &v10);
    v4 = WTF::fastMalloc(0x20);
    *v4 = &unk_1F110AE50;
    v4[1] = v8;
    v4[2] = v9;
    v5 = v10;
    v10 = 0;
    v11 = v4;
    v4[3] = v5;
    WTF::SuspendableWorkQueue::dispatch();
    v7 = v11;
    v11 = 0;
    if (v7)
    {
      (*(*v7 + 8))(v7);
    }

    if (v10)
    {
      WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v10, v6);
    }

    return 0;
  }

  return result;
}

uint64_t WebKit::NetworkStorageManager::persistOrigin(WebKit::NetworkStorageManager *this, const WebCore::ClientOrigin *a2)
{
  v4 = *(this + 336);
  if (v4)
  {
    v2 = a2;
    v3 = this;
    v4 = *(a2 + 56);
    if (!*(a2 + 56))
    {
      v5 = (a2 + 40);
      goto LABEL_4;
    }
  }

  else
  {
    __break(1u);
  }

  if (v4 != 1)
  {
    mpark::throw_bad_variant_access(this);
  }

  v5 = MEMORY[0x1E696EBA8];
LABEL_4:
  WebCore::RegistrableDomain::uncheckedCreateFromHost(v5, &v19);
  v8 = v19;
  if (*(v3 + 41))
  {
    if (WTF::equal(v19, 0, v7) || (v8 = v19, v19 == -1))
    {
      __break(0xC471u);
      JUMPOUT(0x19DDEB724);
    }

    v9 = *(v3 + 41);
    if (v9)
    {
      v10 = *(v9 - 8);
      v11 = WTF::ASCIICaseInsensitiveHash::hash(v19, v6) & v10;
      v12 = (v9 + 8 * v11);
      if (WTF::equal(*v12, 0, v13))
      {
LABEL_13:
        v9 = 0;
      }

      else
      {
        v15 = 1;
        while (*v12 == -1 || (WTF::equalIgnoringASCIICase(*v12, v19, v14) & 1) == 0)
        {
          v11 = (v11 + v15) & v10;
          v12 = (v9 + 8 * v11);
          ++v15;
          if (WTF::equal(*v12, 0, v14))
          {
            goto LABEL_13;
          }
        }

        v9 = 1;
      }

      v8 = v19;
    }
  }

  else
  {
    v9 = 0;
  }

  v19 = 0;
  if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v8, v6);
  }

  if (v9)
  {
    WebKit::NetworkStorageManager::persistedFilePath(&v19, v3, v2);
    WTF::FileSystemImpl::overwriteEntireFile();
    goto LABEL_24;
  }

  WebKit::NetworkStorageManager::persistedFilePath(&v19, v3, v2);
  v17 = v19;
  if (!v19)
  {
    return v9;
  }

  if (*(v19 + 1))
  {
    WTF::FileSystemImpl::deleteFile(&v19, v16);
LABEL_24:
    v17 = v19;
    v19 = 0;
    if (!v17)
    {
      return v9;
    }

    goto LABEL_27;
  }

  v19 = 0;
LABEL_27:
  if (atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v17, v16);
  }

  return v9;
}

WTF::StringImpl *WebKit::NetworkStorageManager::persist(uint64_t a1, uint64_t a2, WTF::StringImpl **a3)
{
  v44 = *MEMORY[0x1E69E9840];
  if (WebCore::operator==())
  {
    WebKit::NetworkStorageManager::persistedFilePath(v37, a1, a2);
    v9 = v37[0];
    if (v37[0])
    {
      v10 = *(v37[0] + 1);
      v37[0] = 0;
      if (atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        v9 = WTF::StringImpl::destroy(v9, v6);
        if (v10)
        {
LABEL_5:
          if (*(a1 + 336) == 1)
          {
            v11 = WebKit::NetworkStorageManager::persistOrigin(a1, a2);
            v12 = *a3;
            *a3 = 0;
            (*(*v12 + 16))(v12, v11);
            return (*(*v12 + 8))(v12);
          }

          LOBYTE(v37[0]) = 0;
          v39 = -1;
          v16 = *(a2 + 24);
          if (*(a2 + 24))
          {
            if (v16 == 255)
            {
LABEL_17:
              LOBYTE(v40) = 0;
              v42 = -1;
              v19 = *(a2 + 56);
              if (*(a2 + 56))
              {
                if (v19 == 255)
                {
LABEL_24:
                  v22 = *a3;
                  *a3 = 0;
                  v43 = v22;
                  v23 = *(a1 + 324);
                  if (v23 == *(a1 + 320))
                  {
                    v24 = WTF::Vector<std::pair<WebCore::ClientOrigin,WTF::CompletionHandler<void ()(BOOL)>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(a1 + 312, v23 + 1, v37);
                    v25 = *(a1 + 312) + 72 * *(a1 + 324);
                    mpark::detail::move_assignment<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::move_assignment(v25);
                    mpark::detail::move_assignment<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::move_assignment((v25 + 32));
                    v26 = *(v24 + 64);
                    *(v24 + 64) = 0;
                    *(v25 + 64) = v26;
                    ++*(a1 + 324);
                    v9 = v43;
                    v43 = 0;
                    if (v9)
                    {
                      v9 = (*(*v9 + 8))(v9);
                    }

                    goto LABEL_37;
                  }

                  v27 = *(a1 + 312) + 72 * v23;
                  *v27 = 0;
                  *(v27 + 24) = -1;
                  if (v16)
                  {
                    if (v16 == 255)
                    {
LABEL_33:
                      *(v27 + 32) = 0;
                      *(v27 + 56) = -1;
                      if (v19)
                      {
                        if (v19 == 255)
                        {
                          goto LABEL_36;
                        }

                        *(v27 + 32) = v40;
                      }

                      else
                      {
                        v30 = v40;
                        *&v40 = 0;
                        *(v27 + 32) = v30;
                        v31 = *(&v40 + 1);
                        *(&v40 + 1) = 0;
                        *(v27 + 40) = v31;
                        *(v27 + 48) = v8;
                      }

                      *(v27 + 56) = v19;
LABEL_36:
                      *(v27 + 64) = v22;
                      ++*(a1 + 324);
                      v43 = 0;
LABEL_37:
                      if (!v42)
                      {
                        v32 = *(&v40 + 1);
                        *(&v40 + 1) = 0;
                        if (v32 && atomic_fetch_add_explicit(v32, 0xFFFFFFFE, memory_order_relaxed) == 2)
                        {
                          WTF::StringImpl::destroy(v32, v6);
                        }

                        v9 = v40;
                        *&v40 = 0;
                        if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
                        {
                          v9 = WTF::StringImpl::destroy(v9, v6);
                        }
                      }

                      v42 = -1;
                      if (!v39)
                      {
                        v33 = v37[1];
                        v37[1] = 0;
                        if (v33 && atomic_fetch_add_explicit(v33, 0xFFFFFFFE, memory_order_relaxed) == 2)
                        {
                          WTF::StringImpl::destroy(v33, v6);
                        }

                        v9 = v37[0];
                        v37[0] = 0;
                        if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
                        {
                          v9 = WTF::StringImpl::destroy(v9, v6);
                        }
                      }

                      WTF::RunLoop::mainSingleton(v9);
                      v34 = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::NetworkDataTask,(WTF::DestructionThread)1>::controlBlock((a1 + 8));
                      v35 = WTF::ThreadSafeWeakPtrControlBlock::weakRef(v34);
                      v36 = WTF::fastMalloc(0x18);
                      *v36 = &unk_1F110AE78;
                      *(v36 + 1) = a1;
                      *(v36 + 2) = v35;
                      v37[0] = v36;
                      WTF::RunLoop::dispatch();
                      result = v37[0];
                      v37[0] = 0;
                      if (result)
                      {
                        return (*(*result + 8))(result);
                      }

                      return result;
                    }

                    *v27 = *v37;
                  }

                  else
                  {
                    v28 = v37[0];
                    v37[0] = 0;
                    *v27 = v28;
                    v29 = v37[1];
                    v37[1] = 0;
                    *(v27 + 8) = v29;
                    *(v27 + 16) = v7;
                  }

                  *(v27 + 24) = v16;
                  goto LABEL_33;
                }

                v40 = *(a2 + 32);
              }

              else
              {
                v20 = *(a2 + 32);
                if (v20)
                {
                  atomic_fetch_add_explicit(v20, 2u, memory_order_relaxed);
                }

                *&v40 = v20;
                v21 = *(a2 + 40);
                if (v21)
                {
                  atomic_fetch_add_explicit(v21, 2u, memory_order_relaxed);
                }

                *(&v40 + 1) = v21;
                v8 = *(a2 + 48);
                v41 = v8;
                v19 = *(a2 + 56);
              }

              v42 = v19;
              goto LABEL_24;
            }

            *v37 = *a2;
          }

          else
          {
            v17 = *a2;
            if (*a2)
            {
              atomic_fetch_add_explicit(v17, 2u, memory_order_relaxed);
            }

            v37[0] = v17;
            v18 = *(a2 + 8);
            if (v18)
            {
              atomic_fetch_add_explicit(v18, 2u, memory_order_relaxed);
            }

            v37[1] = v18;
            v7 = *(a2 + 16);
            v38 = v7;
            v16 = *(a2 + 24);
          }

          v39 = v16;
          goto LABEL_17;
        }
      }

      else if (v10)
      {
        goto LABEL_5;
      }
    }

    v12 = *a3;
    *a3 = 0;
    (*(*v12 + 16))(v12, 0);
    return (*(*v12 + 8))(v12);
  }

  v13 = *a3;
  *a3 = 0;
  (*(*v13 + 16))(v13, 0);
  v14 = *(*v13 + 8);

  return v14(v13);
}

uint64_t std::pair<WebCore::ClientOrigin,WTF::CompletionHandler<void ()(BOOL)>>::~pair(uint64_t a1, WTF::StringImpl *a2)
{
  v3 = *(a1 + 64);
  *(a1 + 64) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  if (!*(a1 + 56))
  {
    v4 = *(a1 + 40);
    *(a1 + 40) = 0;
    if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v4, a2);
    }

    v5 = *(a1 + 32);
    *(a1 + 32) = 0;
    if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v5, a2);
    }
  }

  *(a1 + 56) = -1;
  if (!*(a1 + 24))
  {
    v6 = *(a1 + 8);
    *(a1 + 8) = 0;
    if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v6, a2);
    }

    v7 = *a1;
    *a1 = 0;
    if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v7, a2);
    }
  }

  *(a1 + 24) = -1;
  return a1;
}

uint64_t WebKit::NetworkStorageManager::estimate(uint64_t *a1, WebCore::SecurityOriginData *a2, uint64_t *a3)
{
  v4 = WebKit::NetworkStorageManager::originStorageManager(a1, a2, 1);
  v5 = v4 + 2;
  atomic_fetch_add(v4 + 2, 1u);
  v6 = WebKit::OriginStorageManager::estimate(v4);
  v7 = *a3;
  *a3 = 0;
  v12[0] = v6;
  v12[1] = v8;
  v13 = 1;
  *v14 = *v11;
  *&v14[3] = *&v11[3];
  (*(*v7 + 16))(v7, v12);
  result = (*(*v7 + 8))(v7);
  if (atomic_load(v5))
  {
    atomic_fetch_add(v5, 0xFFFFFFFF);
  }

  else
  {
    result = 290;
    __break(0xC471u);
  }

  return result;
}

uint64_t WebKit::NetworkStorageManager::resetStoragePersistedState(uint64_t a1, uint64_t *a2)
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
  v6 = *a2;
  *a2 = 0;
  v7 = WTF::fastMalloc(0x20);
  *v7 = &unk_1F110AEA0;
  v7[1] = a1;
  v7[2] = a1;
  v7[3] = v6;
  v9 = v7;
  WTF::SuspendableWorkQueue::dispatch();
  result = v9;
  if (v9)
  {
    return (*(*v9 + 8))(v9);
  }

  return result;
}

uint64_t WebKit::NetworkStorageManager::cloneSessionStorageForWebPage(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    v6 = *(a1 + 8);
    if ((v6 & 1) == 0)
    {
      break;
    }

    v7 = *(a1 + 8);
    atomic_compare_exchange_strong_explicit((a1 + 8), &v7, v6 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v7 == v6)
    {
      goto LABEL_5;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*(a1 + 8));
LABEL_5:
  v8 = WTF::fastMalloc(0x28);
  *v8 = &unk_1F110AF18;
  v8[1] = a1;
  v8[2] = a1;
  v8[3] = a2;
  v8[4] = a3;
  v10 = v8;
  WTF::SuspendableWorkQueue::dispatch();
  result = v10;
  if (v10)
  {
    return (*(*v10 + 8))(v10);
  }

  return result;
}

uint64_t WebKit::NetworkStorageManager::fetchSessionStorageForWebPage(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  while (1)
  {
    v6 = *(a1 + 8);
    if ((v6 & 1) == 0)
    {
      break;
    }

    v7 = *(a1 + 8);
    atomic_compare_exchange_strong_explicit((a1 + 8), &v7, v6 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v7 == v6)
    {
      goto LABEL_5;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*(a1 + 8));
LABEL_5:
  v8 = *a3;
  *a3 = 0;
  v9 = WTF::fastMalloc(0x28);
  *v9 = &unk_1F110AF40;
  v9[1] = a1;
  v9[2] = a1;
  v9[3] = a2;
  v9[4] = v8;
  v11 = v9;
  WTF::SuspendableWorkQueue::dispatch();
  result = v11;
  if (v11)
  {
    return (*(*v11 + 8))(v11);
  }

  return result;
}

mpark *WebKit::NetworkStorageManager::restoreSessionStorageForWebPage(uint64_t a1, uint64_t a2, uint64_t *a3, mpark **a4)
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
  WTF::CrossThreadCopierBase<false,false,WTF::HashMap<WebCore::ClientOrigin,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::HashTraits<WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>::copy(a3, v17);
  v10 = *a4;
  *a4 = 0;
  v17[1] = v10;
  v11 = WTF::fastMalloc(0x30);
  *v11 = &unk_1F110AF90;
  *(v11 + 8) = a1;
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;
  *(v11 + 32) = *v17;
  v17[0] = 0;
  v17[1] = 0;
  v18 = v11;
  WTF::SuspendableWorkQueue::dispatch();
  v13 = v18;
  v18 = 0;
  if (v13)
  {
    (*(*v13 + 8))(v13);
  }

  v14 = v17[1];
  v17[1] = 0;
  if (v14)
  {
    (*(*v14 + 8))(v14);
  }

  result = v17[0];
  if (v17[0])
  {
    return WTF::HashTable<WebCore::ClientOrigin,WTF::KeyValuePair<WebCore::ClientOrigin,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ClientOrigin,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashMap<WebCore::ClientOrigin,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::HashTraits<WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ClientOrigin>,WTF::FastMalloc>::deallocateTable(v17[0], v12);
  }

  return result;
}

uint64_t WebKit::NetworkStorageManager::didIncreaseQuota(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  while (1)
  {
    v9 = *(a1 + 8);
    if ((v9 & 1) == 0)
    {
      break;
    }

    v10 = *(a1 + 8);
    atomic_compare_exchange_strong_explicit((a1 + 8), &v10, v9 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v10 == v9)
    {
      goto LABEL_5;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*(a1 + 8));
LABEL_5:
  WebCore::SecurityOriginData::isolatedCopy();
  WebCore::SecurityOriginData::isolatedCopy();
  *&v24 = a3;
  *(&v24 + 1) = a4;
  v11 = WTF::fastMalloc(0x70);
  *v11 = &unk_1F110AFE0;
  *(v11 + 8) = a1;
  *(v11 + 16) = a1;
  *(v11 + 24) = 0;
  *(v11 + 48) = -1;
  if (!v20)
  {
    *(v11 + 24) = v18;
    v12 = *(&v18 + 1);
    v18 = 0uLL;
    *(v11 + 32) = v12;
    *(v11 + 40) = v19;
LABEL_7:
    *(v11 + 48) = v20;
    goto LABEL_8;
  }

  if (v20 != 255)
  {
    *(v11 + 24) = v18;
    goto LABEL_7;
  }

LABEL_8:
  *(v11 + 56) = 0;
  *(v11 + 80) = -1;
  if (!v23)
  {
    *(v11 + 56) = v21;
    v13 = *(&v21 + 1);
    v21 = 0uLL;
    *(v11 + 64) = v13;
    *(v11 + 72) = v22;
LABEL_10:
    *(v11 + 80) = v23;
    goto LABEL_11;
  }

  if (v23 != 255)
  {
    *(v11 + 56) = v21;
    goto LABEL_10;
  }

LABEL_11:
  *(v11 + 104) = a5;
  *(v11 + 88) = v24;
  v16 = v11;
  WTF::SuspendableWorkQueue::dispatch();
  result = v16;
  if (v16)
  {
    result = (*(*v16 + 8))(v16);
  }

  if (!v23)
  {
    if (*(&v21 + 1) && atomic_fetch_add_explicit(*(&v21 + 1), 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(*(&v21 + 1), v14);
    }

    result = v21;
    if (v21 && atomic_fetch_add_explicit(v21, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      result = WTF::StringImpl::destroy(v21, v14);
    }
  }

  if (!v20)
  {
    if (*(&v18 + 1) && atomic_fetch_add_explicit(*(&v18 + 1), 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(*(&v18 + 1), v14);
    }

    result = v18;
    if (v18)
    {
      if (atomic_fetch_add_explicit(v18, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        return WTF::StringImpl::destroy(v18, v14);
      }
    }
  }

  return result;
}

uint64_t WebKit::NetworkStorageManager::didIncreaseQuota(WebCore::ClientOrigin &&,WTF::ObjectIdentifierGeneric<WebKit::QuotaIncreaseRequestIdentifierType,WebCore::ClientOrigin &&::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,std::optional<unsigned long long>)::$_0::~$_0(uint64_t a1, WTF::StringImpl *a2)
{
  if (!*(a1 + 72))
  {
    v3 = *(a1 + 56);
    *(a1 + 56) = 0;
    if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v3, a2);
    }

    v4 = *(a1 + 48);
    *(a1 + 48) = 0;
    if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v4, a2);
    }
  }

  *(a1 + 72) = -1;
  if (!*(a1 + 40))
  {
    v5 = *(a1 + 24);
    *(a1 + 24) = 0;
    if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v5, a2);
    }

    v6 = *(a1 + 16);
    *(a1 + 16) = 0;
    if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v6, a2);
    }
  }

  *(a1 + 40) = -1;
  v7 = *(a1 + 8);
  *(a1 + 8) = 0;
  if (v7)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)2>,(WTF::DestructionThread)2>::deref((v7 + 8));
  }

  return a1;
}

uint64_t WebKit::NetworkStorageManager::fileSystemGetDirectory(uint64_t *a1, uint64_t a2, WebCore::SecurityOriginData *a3, uint64_t *a4)
{
  v7 = WebKit::NetworkStorageManager::originStorageManager(a1, a3, 1);
  v8 = v7;
  v9 = (v7 + 8);
  atomic_fetch_add((v7 + 8), 1u);
  v10 = a1[13];
  if (v10)
  {
    ++*(v10 + 8);
  }

  v11 = WebKit::OriginStorageManager::fileSystemStorageManager(v7, v10);
  ++*(v11 + 8);
  WTF::RefCounted<WebKit::FileSystemStorageHandleRegistry>::deref((v10 + 8), v12);
  if (atomic_load(v9))
  {
    atomic_fetch_add((v8 + 8), 0xFFFFFFFF);
    v14 = *(a2 + 24);
    v15 = *(v11 + 16);
    if (v15)
    {
      atomic_fetch_add_explicit(v15, 2u, memory_order_relaxed);
    }

    v25 = v15;
    v28 = 0;
    WebKit::FileSystemStorageManager::createHandle(&v25, v11, v14, 1, &v28, 1, &v23);
    v17 = v28;
    if (v28 && atomic_fetch_add_explicit(v28, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v17, v16);
    }

    v18 = v25;
    v25 = 0;
    if (v18 && atomic_fetch_add_explicit(v18, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      v18 = WTF::StringImpl::destroy(v18, v16);
    }

    if (v24 == 1)
    {
      v21 = v23;
      v20 = *a4;
      *a4 = 0;
      LOBYTE(v25) = v21;
      v27 = 1;
    }

    else
    {
      if (v24)
      {
        mpark::throw_bad_variant_access(v18);
      }

      v19 = v23;
      v20 = *a4;
      *a4 = 0;
      v25 = v19;
      v26 = 1;
      v27 = 0;
    }

    (*(*v20 + 16))(v20, &v25);
    (*(*v20 + 8))(v20);
    return WTF::RefCounted<WebKit::FileSystemStorageManager>::deref((v11 + 8));
  }

  else
  {
    result = 290;
    __break(0xC471u);
  }

  return result;
}

_DWORD *WebKit::NetworkStorageManager::closeHandle(uint64_t a1, void *a2)
{
  v2 = *(a1 + 104);
  if (v2)
  {
    ++*(v2 + 8);
  }

  result = WebKit::FileSystemStorageHandleRegistry::getHandle(v2, a2);
  v6 = result;
  if (result)
  {
    ++*result;
  }

  if (v2)
  {
    result = WTF::RefCounted<WebKit::FileSystemStorageHandleRegistry>::deref((v2 + 8), v4);
    if (!v6)
    {
      return result;
    }
  }

  else if (!result)
  {
    return result;
  }

  WebKit::FileSystemStorageHandle::close(v6, v4, v5);

  return WTF::RefCounted<WebKit::FileSystemStorageHandle>::deref(v6, v7);
}

uint64_t WebKit::NetworkStorageManager::isSameEntry(uint64_t a1, void *a2, uint64_t a3, uint64_t *a4)
{
  v6 = *(a1 + 104);
  if (v6)
  {
    ++*(v6 + 8);
  }

  Handle = WebKit::FileSystemStorageHandleRegistry::getHandle(v6, a2);
  v9 = Handle;
  if (Handle)
  {
    ++*Handle;
  }

  if (v6)
  {
    WTF::RefCounted<WebKit::FileSystemStorageHandleRegistry>::deref((v6 + 8), v8);
    if (v9)
    {
      goto LABEL_7;
    }
  }

  else if (Handle)
  {
LABEL_7:
    isSameEntry = WebKit::FileSystemStorageHandle::isSameEntry(v9, a3);
    v11 = *a4;
    *a4 = 0;
    (*(*v11 + 16))(v11, isSameEntry);
    (*(*v11 + 8))(v11);

    return WTF::RefCounted<WebKit::FileSystemStorageHandle>::deref(v9, v12);
  }

  v14 = *a4;
  *a4 = 0;
  (*(*v14 + 16))(v14, 0);
  v15 = *(*v14 + 8);

  return v15(v14);
}

uint64_t WebKit::NetworkStorageManager::move(uint64_t a1, void *a2, uint64_t a3, atomic_uint **a4, uint64_t *a5)
{
  v8 = *(a1 + 104);
  if (v8)
  {
    ++*(v8 + 8);
  }

  Handle = WebKit::FileSystemStorageHandleRegistry::getHandle(v8, a2);
  v11 = Handle;
  if (Handle)
  {
    ++*Handle;
  }

  if (v8)
  {
    WTF::RefCounted<WebKit::FileSystemStorageHandleRegistry>::deref((v8 + 8), v10);
    if (v11)
    {
      goto LABEL_7;
    }
  }

  else if (Handle)
  {
LABEL_7:
    v12 = WebKit::FileSystemStorageHandle::move(v11, a3, a4);
    v13 = *a5;
    *a5 = 0;
    (*(*v13 + 16))(v13, v12);
    (*(*v13 + 8))(v13);

    return WTF::RefCounted<WebKit::FileSystemStorageHandle>::deref(v11, v14);
  }

  v16 = *a5;
  *a5 = 0;
  (*(*v16 + 16))(v16, 266);
  v17 = *(*v16 + 8);

  return v17(v16);
}

uint64_t WebKit::NetworkStorageManager::getFileHandle(uint64_t a1, uint64_t a2, void *a3, WTF::String *a4, char a5, uint64_t *a6)
{
  v10 = *(a1 + 104);
  if (v10)
  {
    ++*(v10 + 8);
  }

  Handle = WebKit::FileSystemStorageHandleRegistry::getHandle(v10, a3);
  v13 = Handle;
  if (Handle)
  {
    ++*Handle;
  }

  if (v10)
  {
    WTF::RefCounted<WebKit::FileSystemStorageHandleRegistry>::deref((v10 + 8), v12);
    if (v13)
    {
      goto LABEL_7;
    }
  }

  else if (Handle)
  {
LABEL_7:
    WebKit::FileSystemStorageHandle::requestCreateHandle(a4, v13, *(a2 + 24), 0, a5, &v18);
    v14 = *a6;
    *a6 = 0;
    v19 = v18;
    (*(*v14 + 16))(v14, &v19);
    (*(*v14 + 8))(v14);
    return WTF::RefCounted<WebKit::FileSystemStorageHandle>::deref(v13, v15);
  }

  v17 = *a6;
  *a6 = 0;
  LOBYTE(v19) = 10;
  BYTE8(v19) = 1;
  (*(*v17 + 16))(v17, &v19);
  return (*(*v17 + 8))(v17);
}

uint64_t WebKit::NetworkStorageManager::getDirectoryHandle(uint64_t a1, uint64_t a2, void *a3, WTF::String *a4, char a5, uint64_t *a6)
{
  v10 = *(a1 + 104);
  if (v10)
  {
    ++*(v10 + 8);
  }

  Handle = WebKit::FileSystemStorageHandleRegistry::getHandle(v10, a3);
  v13 = Handle;
  if (Handle)
  {
    ++*Handle;
  }

  if (v10)
  {
    WTF::RefCounted<WebKit::FileSystemStorageHandleRegistry>::deref((v10 + 8), v12);
    if (v13)
    {
      goto LABEL_7;
    }
  }

  else if (Handle)
  {
LABEL_7:
    WebKit::FileSystemStorageHandle::requestCreateHandle(a4, v13, *(a2 + 24), 1, a5, &v18);
    v14 = *a6;
    *a6 = 0;
    v19 = v18;
    (*(*v14 + 16))(v14, &v19);
    (*(*v14 + 8))(v14);
    return WTF::RefCounted<WebKit::FileSystemStorageHandle>::deref(v13, v15);
  }

  v17 = *a6;
  *a6 = 0;
  LOBYTE(v19) = 10;
  BYTE8(v19) = 1;
  (*(*v17 + 16))(v17, &v19);
  return (*(*v17 + 8))(v17);
}

uint64_t WebKit::NetworkStorageManager::removeEntry(uint64_t a1, void *a2, const WTF::StringImpl **a3, const WTF::String *a4, uint64_t *a5)
{
  v8 = *(a1 + 104);
  if (v8)
  {
    ++*(v8 + 8);
  }

  Handle = WebKit::FileSystemStorageHandleRegistry::getHandle(v8, a2);
  v11 = Handle;
  if (Handle)
  {
    ++*Handle;
  }

  if (v8)
  {
    WTF::RefCounted<WebKit::FileSystemStorageHandleRegistry>::deref((v8 + 8), v10);
    if (v11)
    {
      goto LABEL_7;
    }
  }

  else if (Handle)
  {
LABEL_7:
    v12 = WebKit::FileSystemStorageHandle::removeEntry(v11, a3, a4);
    v13 = *a5;
    *a5 = 0;
    (*(*v13 + 16))(v13, v12);
    (*(*v13 + 8))(v13);

    return WTF::RefCounted<WebKit::FileSystemStorageHandle>::deref(v11, v14);
  }

  v16 = *a5;
  *a5 = 0;
  (*(*v16 + 16))(v16, 266);
  v17 = *(*v16 + 8);

  return v17(v16);
}

uint64_t WebKit::NetworkStorageManager::resolve(uint64_t a1, void *a2, uint64_t a3, uint64_t *a4)
{
  v6 = *(a1 + 104);
  if (v6)
  {
    ++*(v6 + 8);
  }

  Handle = WebKit::FileSystemStorageHandleRegistry::getHandle(v6, a2);
  v9 = Handle;
  if (Handle)
  {
    ++*Handle;
  }

  if (v6)
  {
    WTF::RefCounted<WebKit::FileSystemStorageHandleRegistry>::deref((v6 + 8), v8);
    if (v9)
    {
      goto LABEL_7;
    }
  }

  else if (Handle)
  {
LABEL_7:
    WebKit::FileSystemStorageHandle::resolve(v9, a3, v13);
    WTF::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebKit::FileSystemStorageError>)>::operator()(a4, v13);
    if (!v14)
    {
      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v13, v10);
    }

    v14 = -1;
    return WTF::RefCounted<WebKit::FileSystemStorageHandle>::deref(v9, v10);
  }

  v15[0] = 10;
  v16 = 1;
  result = WTF::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebKit::FileSystemStorageError>)>::operator()(a4, v15);
  if (!v16)
  {
    return WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v15, v12);
  }

  return result;
}

uint64_t WTF::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebKit::FileSystemStorageError>)>::operator()(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  *a1 = 0;
  mpark::detail::move_assignment<mpark::detail::traits<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::PlatformMediaError>,(mpark::detail::Trait)1>::move_assignment(v5, a2);
  mpark::detail::move_assignment<mpark::detail::traits<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::PlatformMediaError>,(mpark::detail::Trait)1>::move_assignment(v7, v5);
  (*(*v2 + 16))(v2, v7);
  if (!v7[16])
  {
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v7, v3);
  }

  if (!v6)
  {
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v5, v3);
  }

  v6 = -1;
  return (*(*v2 + 8))(v2);
}

WTF::StringImpl *WebKit::NetworkStorageManager::getFile(uint64_t a1, void *a2, uint64_t *a3)
{
  v4 = *(a1 + 104);
  if (v4)
  {
    ++*(v4 + 8);
  }

  Handle = WebKit::FileSystemStorageHandleRegistry::getHandle(v4, a2);
  v7 = Handle;
  if (Handle)
  {
    ++*Handle;
  }

  if (v4)
  {
    WTF::RefCounted<WebKit::FileSystemStorageHandleRegistry>::deref((v4 + 8), v6);
    if (v7)
    {
      goto LABEL_7;
    }
  }

  else if (Handle)
  {
LABEL_7:
    v8 = *(v7 + 40);
    if (v8)
    {
      atomic_fetch_add_explicit(v8, 2u, memory_order_relaxed);
    }

    v13 = v8;
    v14 = 0;
    WTF::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<WTF::String,WebKit::FileSystemStorageError>)>::operator()(a3, &v13);
    if (!v14)
    {
      v10 = v13;
      if (v13)
      {
        if (atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v10, v9);
        }
      }
    }

    return WTF::RefCounted<WebKit::FileSystemStorageHandle>::deref(v7, v9);
  }

  LOBYTE(v15) = 10;
  v16 = 1;
  result = WTF::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<WTF::String,WebKit::FileSystemStorageError>)>::operator()(a3, &v15);
  if (!v16)
  {
    result = v15;
    if (v15)
    {
      if (atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {

        return WTF::StringImpl::destroy(result, v12);
      }
    }
  }

  return result;
}

uint64_t WTF::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<WTF::String,WebKit::FileSystemStorageError>)>::operator()(uint64_t *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  *a1 = 0;
  v3 = a2[8];
  if (!a2[8])
  {
    v4 = 0;
    v6 = *a2;
    *a2 = 0;
    v11 = v6;
LABEL_6:
    v12 = v3;
    v5 = v3 != 0;
    goto LABEL_7;
  }

  if (v3 != 255)
  {
    v4 = *a2;
    LOBYTE(v11) = *a2;
    goto LABEL_6;
  }

  v4 = 0;
  LOBYTE(v11) = 0;
  v12 = -1;
  v5 = 1;
LABEL_7:
  (*(*v2 + 16))(v2, &v11);
  if (!v12)
  {
    v8 = v11;
    v11 = 0;
    if (v8)
    {
      if (atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v8, v7);
      }
    }
  }

  if (v4)
  {
    v9 = v5;
  }

  else
  {
    v9 = 1;
  }

  if ((v9 & 1) == 0 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, v7);
  }

  return (*(*v2 + 8))(v2);
}

void WebKit::NetworkStorageManager::createSyncAccessHandle(uint64_t a1, void *a2, uint64_t *a3)
{
  v4 = *(a1 + 104);
  if (v4)
  {
    ++*(v4 + 8);
  }

  Handle = WebKit::FileSystemStorageHandleRegistry::getHandle(v4, a2);
  v7 = Handle;
  if (Handle)
  {
    ++*Handle;
  }

  if (v4)
  {
    WTF::RefCounted<WebKit::FileSystemStorageHandleRegistry>::deref((v4 + 8), v6);
    if (v7)
    {
      goto LABEL_7;
    }
  }

  else if (Handle)
  {
LABEL_7:
    WebKit::FileSystemStorageHandle::createSyncAccessHandle(v7, &v9);
    WTF::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<WebKit::FileSystemSyncAccessHandleInfo,WebKit::FileSystemStorageError>)>::operator()(a3, &v9);
    if (!v11)
    {
      WTF::FileSystemImpl::FileHandle::~FileHandle(&v10);
    }

    v11 = -1;
    WTF::RefCounted<WebKit::FileSystemStorageHandle>::deref(v7, v8);
    return;
  }

  v12[0] = 10;
  v14 = 1;
  WTF::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<WebKit::FileSystemSyncAccessHandleInfo,WebKit::FileSystemStorageError>)>::operator()(a3, v12);
  if (!v14)
  {
    WTF::FileSystemImpl::FileHandle::~FileHandle(&v13);
  }
}

uint64_t WTF::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<WebKit::FileSystemSyncAccessHandleInfo,WebKit::FileSystemStorageError>)>::operator()(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  *a1 = 0;
  std::experimental::fundamentals_v3::expected<WebKit::FileSystemSyncAccessHandleInfo,WebKit::FileSystemStorageError>::expected(&v4, a2);
  std::experimental::fundamentals_v3::expected<WebKit::FileSystemSyncAccessHandleInfo,WebKit::FileSystemStorageError>::expected(v7, &v4);
  (*(*v2 + 16))(v2, v7);
  if (!v8[16])
  {
    WTF::FileSystemImpl::FileHandle::~FileHandle(v8);
  }

  if (!v6)
  {
    WTF::FileSystemImpl::FileHandle::~FileHandle(&v5);
  }

  v6 = -1;
  return (*(*v2 + 8))(v2);
}

uint64_t WebKit::NetworkStorageManager::closeSyncAccessHandle(uint64_t a1, void *a2, uint64_t a3, uint64_t *a4)
{
  v6 = *(a1 + 104);
  if (v6)
  {
    ++*(v6 + 8);
  }

  Handle = WebKit::FileSystemStorageHandleRegistry::getHandle(v6, a2);
  v10 = Handle;
  if (Handle)
  {
    ++*Handle;
  }

  if (!v6)
  {
    if (!Handle)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  WTF::RefCounted<WebKit::FileSystemStorageHandleRegistry>::deref((v6 + 8), v8);
  if (v10)
  {
LABEL_7:
    WebKit::FileSystemStorageHandle::closeSyncAccessHandle(v10, a3, v9);
    WTF::RefCounted<WebKit::FileSystemStorageHandle>::deref(v10, v11);
  }

LABEL_8:
  v12 = *a4;
  *a4 = 0;
  (*(*v12 + 16))(v12);
  v13 = *(*v12 + 8);

  return v13(v12);
}

uint64_t WebKit::NetworkStorageManager::requestNewCapacityForSyncAccessHandle(uint64_t a1, void *a2, uint64_t a3, unint64_t a4, uint64_t *a5)
{
  v8 = *(a1 + 104);
  if (v8)
  {
    ++*(v8 + 8);
  }

  Handle = WebKit::FileSystemStorageHandleRegistry::getHandle(v8, a2);
  v11 = Handle;
  if (Handle)
  {
    ++*Handle;
  }

  if (v8)
  {
    WTF::RefCounted<WebKit::FileSystemStorageHandleRegistry>::deref((v8 + 8), v10);
    if (v11)
    {
      goto LABEL_7;
    }
  }

  else if (Handle)
  {
LABEL_7:
    WebKit::FileSystemStorageHandle::requestNewCapacityForSyncAccessHandle(v11, a3, a4, a5);

    return WTF::RefCounted<WebKit::FileSystemStorageHandle>::deref(v11, v12);
  }

  v14 = *a5;
  *a5 = 0;
  (*(*v14 + 16))(v14, 0, 0);
  v15 = *(*v14 + 8);

  return v15(v14);
}

uint64_t WebKit::NetworkStorageManager::createWritable(uint64_t a1, void *a2, const WTF::String *a3, uint64_t *a4)
{
  v6 = *(a1 + 104);
  if (v6)
  {
    ++*(v6 + 8);
  }

  Handle = WebKit::FileSystemStorageHandleRegistry::getHandle(v6, a2);
  v9 = Handle;
  if (Handle)
  {
    ++*Handle;
  }

  if (v6)
  {
    WTF::RefCounted<WebKit::FileSystemStorageHandleRegistry>::deref((v6 + 8), v8);
    if (v9)
    {
      goto LABEL_7;
    }
  }

  else if (Handle)
  {
LABEL_7:
    WebKit::FileSystemStorageHandle::createWritable(v9, a3, v14);
    v10 = *a4;
    *a4 = 0;
    (*(*v10 + 16))(v10, v14);
    (*(*v10 + 8))(v10);
    return WTF::RefCounted<WebKit::FileSystemStorageHandle>::deref(v9, v11);
  }

  v13 = *a4;
  *a4 = 0;
  v14[0] = 10;
  v14[8] = 1;
  (*(*v13 + 16))(v13, v14);
  return (*(*v13 + 8))(v13);
}

uint64_t WebKit::NetworkStorageManager::closeWritable(uint64_t a1, void *a2, uint64_t a3, char a4, uint64_t *a5)
{
  v8 = *(a1 + 104);
  if (v8)
  {
    ++*(v8 + 8);
  }

  Handle = WebKit::FileSystemStorageHandleRegistry::getHandle(v8, a2);
  v11 = Handle;
  if (Handle)
  {
    ++*Handle;
  }

  if (v8)
  {
    WTF::RefCounted<WebKit::FileSystemStorageHandleRegistry>::deref((v8 + 8), v10);
    if (v11)
    {
      goto LABEL_7;
    }
  }

  else if (Handle)
  {
LABEL_7:
    v12 = WebKit::FileSystemStorageHandle::closeWritable(v11, a3, a4);
    v13 = *a5;
    *a5 = 0;
    (*(*v13 + 16))(v13, v12);
    (*(*v13 + 8))(v13);

    return WTF::RefCounted<WebKit::FileSystemStorageHandle>::deref(v11, v14);
  }

  v16 = *a5;
  *a5 = 0;
  (*(*v16 + 16))(v16, 266);
  v17 = *(*v16 + 8);

  return v17(v16);
}

uint64_t WebKit::NetworkStorageManager::executeCommandForWritable(uint64_t a1, void *a2, uint64_t a3, int a4, uint64_t a5, char a6, unint64_t a7, char a8, uint64_t a9, WTF *a10, char a11, uint64_t *a12)
{
  v16 = *(a1 + 104);
  if (v16)
  {
    ++*(v16 + 8);
  }

  Handle = WebKit::FileSystemStorageHandleRegistry::getHandle(v16, a2);
  v20 = Handle;
  if (Handle)
  {
    ++*Handle;
  }

  if (v16)
  {
    WTF::RefCounted<WebKit::FileSystemStorageHandleRegistry>::deref((v16 + 8), v18);
    if (v20)
    {
      goto LABEL_7;
    }
  }

  else if (Handle)
  {
LABEL_7:
    WebKit::FileSystemStorageHandle::executeCommandForWritable(v20, a3, a4, a5, a6, a7, a8, v19, a9, a10, a11, a12);

    return WTF::RefCounted<WebKit::FileSystemStorageHandle>::deref(v20, v21);
  }

  v23 = *a12;
  *a12 = 0;
  (*(*v23 + 16))(v23, 266);
  v24 = *(*v23 + 8);

  return v24(v23);
}

uint64_t WebKit::NetworkStorageManager::getHandleNames(uint64_t a1, void *a2, uint64_t *a3)
{
  v4 = *(a1 + 104);
  if (v4)
  {
    ++*(v4 + 8);
  }

  Handle = WebKit::FileSystemStorageHandleRegistry::getHandle(v4, a2);
  v7 = Handle;
  if (Handle)
  {
    ++*Handle;
  }

  if (v4)
  {
    WTF::RefCounted<WebKit::FileSystemStorageHandleRegistry>::deref((v4 + 8), v6);
    if (v7)
    {
      goto LABEL_7;
    }
  }

  else if (Handle)
  {
LABEL_7:
    WebKit::FileSystemStorageHandle::getHandleNames(v7, v6, v11);
    WTF::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebKit::FileSystemStorageError>)>::operator()(a3, v11);
    if (!v12)
    {
      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v11, v8);
    }

    v12 = -1;
    return WTF::RefCounted<WebKit::FileSystemStorageHandle>::deref(v7, v8);
  }

  v13[0] = 10;
  v14 = 1;
  result = WTF::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebKit::FileSystemStorageError>)>::operator()(a3, v13);
  if (!v14)
  {
    return WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v13, v10);
  }

  return result;
}

uint64_t WebKit::NetworkStorageManager::getHandle(uint64_t a1, uint64_t a2, void *a3, WTF::String *a4, uint64_t *a5)
{
  v8 = *(a1 + 104);
  if (v8)
  {
    ++*(v8 + 8);
  }

  Handle = WebKit::FileSystemStorageHandleRegistry::getHandle(v8, a3);
  v11 = Handle;
  if (Handle)
  {
    ++*Handle;
  }

  if (v8)
  {
    WTF::RefCounted<WebKit::FileSystemStorageHandleRegistry>::deref((v8 + 8), v10);
    if (v11)
    {
      goto LABEL_7;
    }

LABEL_13:
    v19 = *a5;
    *a5 = 0;
    LOBYTE(v23) = 10;
    v26 = 1;
    (*(*v19 + 16))(v19, &v23);
    return (*(*v19 + 8))(v19);
  }

  if (!Handle)
  {
    goto LABEL_13;
  }

LABEL_7:
  v12 = WebKit::FileSystemStorageHandle::getHandle(a4, v11, *(a2 + 24), &v20);
  if (v22 == 1)
  {
    v16 = v20;
    v15 = *a5;
    *a5 = 0;
    LOBYTE(v23) = v16;
    v26 = 1;
  }

  else
  {
    if (v22)
    {
      mpark::throw_bad_variant_access(v12);
    }

    v13 = v20;
    v14 = v21;
    v15 = *a5;
    *a5 = 0;
    v23 = v13;
    v24 = v14;
    v25 = 1;
    v26 = 0;
  }

  (*(*v15 + 16))(v15, &v23);
  (*(*v15 + 8))(v15);
  return WTF::RefCounted<WebKit::FileSystemStorageHandle>::deref(v11, v17);
}

uint64_t WebKit::NetworkStorageManager::forEachOriginDirectory(uint64_t a1, const WTF::String *a2)
{
  WTF::FileSystemImpl::listDirectory(&v34, (a1 + 40), a2);
  if (v35)
  {
    v9 = v34;
    v10 = &v34[v35];
    do
    {
      v11 = *(a1 + 40);
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

      v14 = *v9;
      if (*v9)
      {
        v15 = *(v14 + 16);
        v14 = *(v14 + 4);
        v16 = ((v15 >> 2) & 1) << 32;
      }

      else
      {
        v16 = 0x100000000;
      }

      v5 = v11 | v5 & 0xFFFFFF0000000000 | v13;
      v4 = v14 | v4 & 0xFFFFFF0000000000 | v16;
      WTF::FileSystemImpl::pathByAppendingComponent();
      WTF::FileSystemImpl::listDirectory(&v31, &v33, v17);
      if (v32)
      {
        v27 = v31;
        v28 = 8 * v32;
        do
        {
          if (!*v27 || (WTF::StringImpl::startsWith() & 1) == 0)
          {
            v21 = v33;
            if (v33)
            {
              v21 = *(v33 + 1);
              v22 = ((*(v33 + 4) >> 2) & 1) << 32;
            }

            else
            {
              v22 = 0x100000000;
            }

            v23 = *v27;
            if (*v27)
            {
              v24 = *(v23 + 16);
              v23 = *(v23 + 4);
              v25 = ((v24 >> 2) & 1) << 32;
            }

            else
            {
              v25 = 0x100000000;
            }

            v3 = v21 | v3 & 0xFFFFFF0000000000 | v22;
            v2 = v23 | v2 & 0xFFFFFF0000000000 | v25;
            WTF::FileSystemImpl::pathByAppendingComponent();
            (*(**a2 + 16))(*a2, &v30);
            v26 = v30;
            v30 = 0;
            if (v26)
            {
              if (atomic_fetch_add_explicit(v26, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v26, v19);
              }
            }
          }

          ++v27;
          v28 -= 8;
        }

        while (v28);
      }

      else
      {
        WTF::FileSystemImpl::deleteEmptyDirectory(&v33, v18);
      }

      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v31, v19);
      v20 = v33;
      v33 = 0;
      if (v20 && atomic_fetch_add_explicit(v20, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v20, v8);
      }

      ++v9;
    }

    while (v9 != v10);
  }

  return WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v34, v8);
}

uint64_t WebKit::NetworkStorageManager::fetchDataFromDisk(uint64_t a1, uint64_t *a2, unsigned int a3, int a4)
{
  v51[1] = *MEMORY[0x1E69E9840];
  v40 = 0;
  WebKit::NetworkStorageManager::getAllOrigins(&v44, a2);
  v9 = WTF::HashTable<WebCore::ClientOrigin,WebCore::ClientOrigin,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::FastMalloc>::begin(&v44);
  v10 = v8;
  v11 = 0;
  v12 = v44;
  if (v44)
  {
    v11 = v44 + (*(v44 - 4) << 6);
  }

  if (v11 != v9)
  {
    do
    {
      v19 = WebKit::NetworkStorageManager::originStorageManager(a2, v9, 1);
      v20 = (v19 + 2);
      atomic_fetch_add(v19 + 2, 1u);
      v21 = WebKit::OriginStorageManager::defaultBucket(v19);
      WebKit::OriginStorageManager::StorageBucket::fetchDataTypesInList(v21, a3, a4, &v48);
      if (!atomic_load(v20))
      {
        result = 290;
        __break(0xC471u);
        return result;
      }

      atomic_fetch_add(v20, 0xFFFFFFFF);
      WebKit::updateOriginData(&v40, (v9 + 32), &v48);
      if ((WebCore::operator==() & 1) == 0)
      {
        WebKit::updateOriginData(&v40, v9, &v48);
      }

      WebKit::NetworkStorageManager::removeOriginStorageManagerIfPossible(a2, v9);
      if (v48)
      {
        WTF::fastFree((v48 - 16), v8);
      }

      do
      {
        v9 += 64;
      }

      while (v9 != v10 && WTF::HashTable<WebCore::ClientOrigin,WTF::KeyValuePair<WebCore::ClientOrigin,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ClientOrigin,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashMap<WebCore::ClientOrigin,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::HashTraits<WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ClientOrigin>,WTF::FastMalloc>::isEmptyOrDeletedBucket(v9));
    }

    while (v9 != v11);
    v12 = v44;
  }

  if (v12)
  {
    WTF::HashTable<WebCore::ClientOrigin,WebCore::ClientOrigin,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::FastMalloc>::deallocateTable(v12, v8);
  }

  *a1 = 0;
  *(a1 + 8) = 0;
  v13 = v40;
  result = WTF::HashTable<WebCore::SecurityOriginData,WTF::KeyValuePair<WebCore::SecurityOriginData,WTF::HashMap<WebKit::WebsiteDataType,unsigned long long,WTF::IntHash<WebKit::WebsiteDataType>,WTF::StrongEnumHashTraits<WebKit::WebsiteDataType>,WTF::HashTraits<unsigned long long>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::SecurityOriginData,WTF::HashMap<WebKit::WebsiteDataType,unsigned long long,WTF::IntHash<WebKit::WebsiteDataType>,WTF::StrongEnumHashTraits<WebKit::WebsiteDataType>,WTF::HashTraits<unsigned long long>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>>,WTF::DefaultHash<WebCore::SecurityOriginData>,WTF::HashMap<WebCore::SecurityOriginData,WTF::HashMap<WebKit::WebsiteDataType,unsigned long long,WTF::IntHash<WebKit::WebsiteDataType>,WTF::StrongEnumHashTraits<WebKit::WebsiteDataType>,WTF::HashTraits<unsigned long long>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::DefaultHash<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::HashTraits<WTF::HashMap<WebKit::WebsiteDataType,unsigned long long,WTF::IntHash<WebKit::WebsiteDataType>,WTF::StrongEnumHashTraits<WebKit::WebsiteDataType>,WTF::HashTraits<unsigned long long>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::FastMalloc>::begin(v40);
  v16 = result;
  v17 = v15;
  v18 = 0;
  if (v13)
  {
    v18 = (v13 + 40 * *(v13 - 1));
  }

  if (v18 == result)
  {
    goto LABEL_9;
  }

  while (2)
  {
    mpark::detail::move_assignment<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::move_assignment(&v48, v16);
    WTF::HashTable<WebKit::WebsiteDataType,WTF::KeyValuePair<WebKit::WebsiteDataType,unsigned long long>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebKit::WebsiteDataType,unsigned long long>>,WTF::IntHash<WebKit::WebsiteDataType>,WTF::HashMap<WebKit::WebsiteDataType,unsigned long long,WTF::IntHash<WebKit::WebsiteDataType>,WTF::StrongEnumHashTraits<WebKit::WebsiteDataType>,WTF::HashTraits<unsigned long long>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::StrongEnumHashTraits<WebKit::WebsiteDataType>,WTF::FastMalloc>::HashTable(v51, v16 + 4);
    if (v51[0])
    {
      v24 = *(v51[0] - 4);
      v25 = v51[0] + 16 * v24;
      if (*(v51[0] - 12))
      {
        if (!v24)
        {
          v28 = 0;
          v27 = v51[0];
          goto LABEL_32;
        }

        v26 = 16 * v24;
        v27 = v51[0];
        while (*v27 >= 0xFFFFFFFE)
        {
          v27 += 16;
          v26 -= 16;
          if (!v26)
          {
            v27 = v25;
            goto LABEL_30;
          }
        }

        goto LABEL_30;
      }
    }

    else
    {
      v25 = 0;
      v24 = 0;
    }

    v27 = v25;
    v25 = v51[0] + 16 * v24;
LABEL_30:
    if (v51[0])
    {
      v28 = *(v51[0] - 4);
LABEL_32:
      v29 = v51[0] + 16 * v28;
      goto LABEL_33;
    }

    v29 = 0;
LABEL_33:
    while (v27 != v29)
    {
      v30 = *v27;
      v31 = *(v27 + 8);
      LOBYTE(v41) = 0;
      v43 = -1;
      v32 = v50;
      if (!v50)
      {
        v33 = v48;
        if (v48)
        {
          atomic_fetch_add_explicit(v48, 2u, memory_order_relaxed);
        }

        *&v41 = v33;
        v34 = *(&v48 + 1);
        if (*(&v48 + 1))
        {
          atomic_fetch_add_explicit(*(&v48 + 1), 2u, memory_order_relaxed);
        }

        *(&v41 + 1) = v34;
        v42 = v49;
        v32 = v50;
        goto LABEL_40;
      }

      if (v50 != 255)
      {
        v41 = v48;
LABEL_40:
        v43 = v32;
      }

      WebKit::WebsiteData::Entry::Entry(&v44, &v41, v30, v31);
      v36 = *(a1 + 12);
      if (v36 != *(a1 + 8))
      {
        v37 = *a1 + 48 * v36;
        *v37 = 0;
        *(v37 + 24) = -1;
        if (!v46)
        {
          v38 = v44;
          *&v44 = 0;
          *v37 = v38;
          v39 = *(&v44 + 1);
          *(&v44 + 1) = 0;
          *(v37 + 8) = v39;
          *(v37 + 16) = v45;
          goto LABEL_45;
        }

        if (v46 != 255)
        {
          *v37 = v44;
LABEL_45:
          *(v37 + 24) = v46;
        }

        *(v37 + 32) = v47;
        ++*(a1 + 12);
        goto LABEL_47;
      }

      WTF::Vector<WebKit::WebsiteData::Entry,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebKit::WebsiteData::Entry>(a1, &v44);
LABEL_47:
      WebKit::WebsiteData::Entry::~Entry(&v44, v35);
      WebCore::SecurityOriginData::~SecurityOriginData(&v41);
      do
      {
        v27 += 16;
      }

      while (v27 != v25 && *v27 >= 0xFFFFFFFE);
    }

    result = WTF::KeyValuePair<WebCore::SecurityOriginData,WTF::HashMap<WebKit::WebsiteDataType,unsigned long long,WTF::IntHash<WebKit::WebsiteDataType>,WTF::StrongEnumHashTraits<WebKit::WebsiteDataType>,WTF::HashTraits<unsigned long long>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>::~KeyValuePair(&v48, v23);
    do
    {
      v16 = (v16 + 40);
      if (v16 == v17)
      {
        break;
      }

      result = WTF::HashTable<WebCore::SecurityOriginData,WTF::KeyValuePair<WebCore::SecurityOriginData,unsigned long long>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::SecurityOriginData,unsigned long long>>,WTF::DefaultHash<WebCore::SecurityOriginData>,WTF::HashMap<WebCore::SecurityOriginData,unsigned long long,WTF::DefaultHash<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::HashTraits<unsigned long long>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::FastMalloc>::isEmptyOrDeletedBucket(v16);
    }

    while (result);
    if (v16 != v18)
    {
      continue;
    }

    break;
  }

  v13 = v40;
LABEL_9:
  if (v13)
  {
    return WTF::HashTable<WebCore::SecurityOriginData,WTF::KeyValuePair<WebCore::SecurityOriginData,WTF::HashMap<WebKit::WebsiteDataType,unsigned long long,WTF::IntHash<WebKit::WebsiteDataType>,WTF::StrongEnumHashTraits<WebKit::WebsiteDataType>,WTF::HashTraits<unsigned long long>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::SecurityOriginData,WTF::HashMap<WebKit::WebsiteDataType,unsigned long long,WTF::IntHash<WebKit::WebsiteDataType>,WTF::StrongEnumHashTraits<WebKit::WebsiteDataType>,WTF::HashTraits<unsigned long long>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>>,WTF::DefaultHash<WebCore::SecurityOriginData>,WTF::HashMap<WebCore::SecurityOriginData,WTF::HashMap<WebKit::WebsiteDataType,unsigned long long,WTF::IntHash<WebKit::WebsiteDataType>,WTF::StrongEnumHashTraits<WebKit::WebsiteDataType>,WTF::HashTraits<unsigned long long>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::DefaultHash<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::HashTraits<WTF::HashMap<WebKit::WebsiteDataType,unsigned long long,WTF::IntHash<WebKit::WebsiteDataType>,WTF::StrongEnumHashTraits<WebKit::WebsiteDataType>,WTF::HashTraits<unsigned long long>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::FastMalloc>::deallocateTable(v13, v15);
  }

  return result;
}

void WebKit::updateOriginData(uint64_t *a1, WebCore::SecurityOriginData *this, void *a3)
{
  isNull = WebCore::SecurityOriginData::isNull(this);
  if (isNull)
  {
    goto LABEL_52;
  }

  if (*(this + 24))
  {
    if (*(this + 24) != 1)
    {
LABEL_17:
      mpark::throw_bad_variant_access(isNull);
    }

    goto LABEL_4;
  }

  if (*this == -1)
  {
LABEL_52:
    __break(0xC471u);
    JUMPOUT(0x19DDEE718);
  }

LABEL_4:
  v7 = *a1;
  if (*a1 || (WTF::HashTable<WebCore::SecurityOriginData,WTF::KeyValuePair<WebCore::SecurityOriginData,WTF::HashMap<WebKit::WebsiteDataType,unsigned long long,WTF::IntHash<WebKit::WebsiteDataType>,WTF::StrongEnumHashTraits<WebKit::WebsiteDataType>,WTF::HashTraits<unsigned long long>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::SecurityOriginData,WTF::HashMap<WebKit::WebsiteDataType,unsigned long long,WTF::IntHash<WebKit::WebsiteDataType>,WTF::StrongEnumHashTraits<WebKit::WebsiteDataType>,WTF::HashTraits<unsigned long long>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>>,WTF::DefaultHash<WebCore::SecurityOriginData>,WTF::HashMap<WebCore::SecurityOriginData,WTF::HashMap<WebKit::WebsiteDataType,unsigned long long,WTF::IntHash<WebKit::WebsiteDataType>,WTF::StrongEnumHashTraits<WebKit::WebsiteDataType>,WTF::HashTraits<unsigned long long>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::DefaultHash<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::HashTraits<WTF::HashMap<WebKit::WebsiteDataType,unsigned long long,WTF::IntHash<WebKit::WebsiteDataType>,WTF::StrongEnumHashTraits<WebKit::WebsiteDataType>,WTF::HashTraits<unsigned long long>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::FastMalloc>::expand(a1, 0), (v7 = *a1) != 0))
  {
    v8 = *(v7 - 8);
  }

  else
  {
    v8 = 0;
  }

  LODWORD(v27[0]) = -1640531527;
  WORD2(v27[0]) = 0;
  BYTE6(v27[0]) = 0;
  WTF::add<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>(v27, this);
  v9 = WTF::SuperFastHash::hash(v27) & v8;
  v10 = v7 + 40 * v9;
  isNull = WebCore::SecurityOriginData::isNull(v10);
  if (isNull)
  {
    goto LABEL_20;
  }

  v11 = 0;
  v12 = 1;
  do
  {
    if (*(v10 + 24))
    {
      if (*(v10 + 24) != 1)
      {
        goto LABEL_17;
      }
    }

    else if (*v10 == -1)
    {
      v11 = v10;
      goto LABEL_14;
    }

    if (WebCore::operator==())
    {
      goto LABEL_27;
    }

LABEL_14:
    v9 = (v9 + v12) & v8;
    v10 = v7 + 40 * v9;
    isNull = WebCore::SecurityOriginData::isNull(v10);
    ++v12;
  }

  while (!isNull);
  if (v11)
  {
    *(v11 + 32) = 0;
    *v11 = 0u;
    *(v11 + 16) = 0u;
    --*(*a1 - 16);
    v10 = v11;
  }

LABEL_20:
  mpark::detail::assignment<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>>::generic_assign<mpark::detail::copy_assignment<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1> const&>(v10, this);
  v14 = *(v10 + 32);
  *(v10 + 32) = 0;
  if (v14)
  {
    WTF::fastFree((v14 - 16), v13);
  }

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
    if (v18 <= 2 * v17)
    {
LABEL_26:
      v10 = WTF::HashTable<WebCore::SecurityOriginData,WTF::KeyValuePair<WebCore::SecurityOriginData,WTF::HashMap<WebKit::WebsiteDataType,unsigned long long,WTF::IntHash<WebKit::WebsiteDataType>,WTF::StrongEnumHashTraits<WebKit::WebsiteDataType>,WTF::HashTraits<unsigned long long>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::SecurityOriginData,WTF::HashMap<WebKit::WebsiteDataType,unsigned long long,WTF::IntHash<WebKit::WebsiteDataType>,WTF::StrongEnumHashTraits<WebKit::WebsiteDataType>,WTF::HashTraits<unsigned long long>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>>,WTF::DefaultHash<WebCore::SecurityOriginData>,WTF::HashMap<WebCore::SecurityOriginData,WTF::HashMap<WebKit::WebsiteDataType,unsigned long long,WTF::IntHash<WebKit::WebsiteDataType>,WTF::StrongEnumHashTraits<WebKit::WebsiteDataType>,WTF::HashTraits<unsigned long long>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::DefaultHash<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::HashTraits<WTF::HashMap<WebKit::WebsiteDataType,unsigned long long,WTF::IntHash<WebKit::WebsiteDataType>,WTF::StrongEnumHashTraits<WebKit::WebsiteDataType>,WTF::HashTraits<unsigned long long>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::FastMalloc>::expand(a1, v10);
    }
  }

  else if (3 * v18 <= 4 * v17)
  {
    goto LABEL_26;
  }

LABEL_27:
  v19 = *a3;
  if (!*a3)
  {
    v21 = 0;
    v20 = 0;
LABEL_37:
    v23 = v21;
    v21 = &v19[4 * v20];
    if (v19)
    {
      goto LABEL_35;
    }

    goto LABEL_38;
  }

  v20 = *(v19 - 1);
  v21 = &v19[4 * v20];
  if (!*(v19 - 3))
  {
    goto LABEL_37;
  }

  if (v20)
  {
    v22 = 16 * v20;
    v23 = v19;
    while (*v23 >= 0xFFFFFFFE)
    {
      v23 += 4;
      v22 -= 16;
      if (!v22)
      {
        v23 = v21;
        break;
      }
    }

    if (v19)
    {
LABEL_35:
      v24 = *(v19 - 1);
      goto LABEL_40;
    }

LABEL_38:
    v25 = 0;
  }

  else
  {
    v24 = 0;
    v23 = v19;
LABEL_40:
    v25 = &v19[4 * v24];
  }

  while (v23 != v25)
  {
    v28 = *v23;
    v26 = 0;
    WTF::HashMap<WebKit::WebsiteDataType,unsigned long long,WTF::IntHash<WebKit::WebsiteDataType>,WTF::StrongEnumHashTraits<WebKit::WebsiteDataType>,WTF::HashTraits<unsigned long long>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<int>((v10 + 32), &v28, &v26, v27);
    *(v27[0] + 8) += *(&v28 + 1);
    do
    {
      v23 += 4;
    }

    while (v23 != v21 && *v23 >= 0xFFFFFFFE);
  }
}

uint64_t WebKit::NetworkStorageManager::fetchData(uint64_t a1, int a2, char a3, uint64_t *a4)
{
  v14[0] = a1;
  while (1)
  {
    v8 = *(a1 + 8);
    if ((v8 & 1) == 0)
    {
      break;
    }

    v13 = *(a1 + 8);
    atomic_compare_exchange_strong_explicit((a1 + 8), &v13, v8 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v13 == v8)
    {
      goto LABEL_4;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*(a1 + 8));
LABEL_4:
  v15 = a2;
  v16 = a3;
  v9 = *a4;
  *a4 = 0;
  v10 = WTF::fastMalloc(0x28);
  *v10 = &unk_1F110B030;
  *(v10 + 8) = a1;
  *(v10 + 16) = a1;
  *(v10 + 24) = v15;
  *(v10 + 28) = v16;
  v14[1] = 0;
  v17 = 0;
  v18 = v10;
  *(v10 + 32) = v9;
  WTF::SuspendableWorkQueue::dispatch();
  v11 = v18;
  v18 = 0;
  if (v11)
  {
    (*(*v11 + 8))(v11);
  }

  return WebKit::NetworkStorageManager::fetchData(WTF::OptionSet<WebKit::WebsiteDataType>,WebKit::NetworkStorageManager::ShouldComputeSize,WTF::CompletionHandler<void ()(WTF::Vector<WebKit::WebsiteData::Entry,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)> &&)::$_0::~$_0(v14);
}

uint64_t WebKit::NetworkStorageManager::fetchData(WTF::OptionSet<WebKit::WebsiteDataType>,WebKit::NetworkStorageManager::ShouldComputeSize,WTF::CompletionHandler<void ()(WTF::Vector<WebKit::WebsiteData::Entry,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)> &&)::$_0::~$_0(uint64_t a1)
{
  v2 = *(a1 + 24);
  *(a1 + 24) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(a1 + 8);
  *(a1 + 8) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)2>,(WTF::DestructionThread)2>::deref((v3 + 8));
  }

  return a1;
}

uint64_t WebKit::NetworkStorageManager::deleteDataOnDisk(uint64_t *a1, uint64_t *a2, unsigned int a3, void *a4, double a5)
{
  *a1 = 0;
  WebKit::NetworkStorageManager::getAllOrigins(&v27, a2);
  v10 = WTF::HashTable<WebCore::ClientOrigin,WebCore::ClientOrigin,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::FastMalloc>::begin(&v27);
  v11 = v9;
  v12 = 0;
  result = v27;
  if (v27)
  {
    v12 = (v27 + (*(v27 - 4) << 6));
  }

  if (v12 != v10)
  {
    v14 = a3;
    v15 = *&a3 & 0x8C0B0;
    while (1)
    {
      if (!(*(**a4 + 16))(*a4, v10))
      {
        goto LABEL_20;
      }

      v16 = WebKit::NetworkStorageManager::originStorageManager(a2, v10, 1);
      atomic_fetch_add(v16 + 2, 1u);
      v17 = WebKit::OriginStorageManager::defaultBucket(v16);
      WebKit::OriginStorageManager::StorageBucket::fetchDataTypesInList(v17, v14, 0, &v26);
      v19 = v26;
      if (v26)
      {
        if (!*(v26 - 12) || (WTF::HashTable<WebCore::ClientOrigin,WebCore::ClientOrigin,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::FastMalloc>::add<(WTF::ShouldValidateKey)1>(a1, v10, v25), v20 = WebKit::OriginStorageManager::defaultBucket(v16), WebKit::OriginStorageManager::StorageBucket::deleteData(v20, v14, a5), (v19 = v26) != 0))
        {
          WTF::fastFree((v19 - 16), v18);
        }
      }

      if (!atomic_load(v16 + 2))
      {
        result = 290;
        __break(0xC471u);
        return result;
      }

      atomic_fetch_add(v16 + 2, 0xFFFFFFFF);
      if (v15 == 573616)
      {
        WebKit::NetworkStorageManager::persistedFilePath(v25, a2, v10);
        v23 = v25[0];
        if (v25[0])
        {
          if (!*(v25[0] + 1))
          {
            v25[0] = 0;
LABEL_17:
            if (atomic_fetch_add_explicit(v23, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v23, v22);
            }

            goto LABEL_19;
          }

          WTF::FileSystemImpl::deleteFile(v25, v22);
          v23 = v25[0];
          v25[0] = 0;
          if (v23)
          {
            goto LABEL_17;
          }
        }
      }

LABEL_19:
      WebKit::NetworkStorageManager::removeOriginStorageManagerIfPossible(a2, v10);
      do
      {
LABEL_20:
        v10 = (v10 + 64);
      }

      while (v10 != v11 && WTF::HashTable<WebCore::ClientOrigin,WTF::KeyValuePair<WebCore::ClientOrigin,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ClientOrigin,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashMap<WebCore::ClientOrigin,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::HashTraits<WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ClientOrigin>,WTF::FastMalloc>::isEmptyOrDeletedBucket(v10));
      if (v10 == v12)
      {
        result = v27;
        break;
      }
    }
  }

  if (result)
  {
    return WTF::HashTable<WebCore::ClientOrigin,WebCore::ClientOrigin,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::FastMalloc>::deallocateTable(result, v9);
  }

  return result;
}

uint64_t WebKit::NetworkStorageManager::deleteData(uint64_t result, int a2, uint64_t *a3, uint64_t *a4)
{
  v7 = result;
  v32 = *MEMORY[0x1E69E9840];
  while (1)
  {
    v8 = *(result + 8);
    if ((v8 & 1) == 0)
    {
      break;
    }

    v9 = *(result + 8);
    atomic_compare_exchange_strong_explicit((result + 8), &v9, v8 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v9 == v8)
    {
      goto LABEL_6;
    }
  }

  result = WTF::ThreadSafeWeakPtrControlBlock::strongRef(*(result + 8));
LABEL_6:
  v10 = *(a3 + 3);
  if (v10)
  {
    if (v10 >> 27)
    {
      __break(0xC471u);
      return result;
    }

    v11 = WTF::fastMalloc((32 * v10));
    v12 = *(a3 + 3);
    if (v12)
    {
      v13 = 0;
      v14 = *a3;
      v15 = 32 * v12;
      do
      {
        WebCore::SecurityOriginData::isolatedCopy();
        v17 = v11 + 32 * v13;
        *v17 = 0;
        *(v17 + 24) = -1;
        v18 = v31;
        if (v31)
        {
          if (v31 != 255)
          {
            *v17 = *v29;
            *(v17 + 24) = v18;
          }

          HIDWORD(v27) = ++v13;
        }

        else
        {
          v19 = v29[0];
          v29[0] = 0;
          *v17 = v19;
          v20 = v29[1];
          v29[1] = 0;
          *(v17 + 8) = v20;
          *(v17 + 16) = v30;
          *(v17 + 24) = 0;
          HIDWORD(v27) = ++v13;
          if (v29[1] && atomic_fetch_add_explicit(v29[1], 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v29[1], v16);
          }

          v21 = v29[0];
          v29[0] = 0;
          if (v21 && atomic_fetch_add_explicit(v21, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v21, v16);
          }
        }

        v14 += 32;
        v15 -= 32;
      }

      while (v15);
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
    v11 = 0;
  }

  v22 = *a4;
  *a4 = 0;
  v28 = v22;
  v23 = WTF::fastMalloc(0x38);
  *&v24 = 0;
  *v23 = &unk_1F110B080;
  *(v23 + 8) = v7;
  *(v23 + 16) = v7;
  *(v23 + 24) = a2;
  v27 = v24;
  *(v23 + 32) = v11;
  *(v23 + 40) = v10;
  *(v23 + 44) = v13;
  *(v23 + 48) = v22;
  v29[0] = v23;
  WTF::SuspendableWorkQueue::dispatch();
  v26 = v29[0];
  v29[0] = 0;
  if (v26)
  {
    (*(*v26 + 8))(v26);
  }

  v28 = 0;
  return WTF::Vector<WebCore::SecurityOriginData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v27, v25);
}

uint64_t WebKit::NetworkStorageManager::deleteData(uint64_t a1, int a2, uint64_t a3, uint64_t *a4)
{
  while (1)
  {
    v7 = *(a1 + 8);
    if ((v7 & 1) == 0)
    {
      break;
    }

    v8 = *(a1 + 8);
    atomic_compare_exchange_strong_explicit((a1 + 8), &v8, v7 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v8 == v7)
    {
      goto LABEL_5;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*(a1 + 8));
LABEL_5:
  WebCore::SecurityOriginData::isolatedCopy();
  WebCore::SecurityOriginData::isolatedCopy();
  v9 = *a4;
  *a4 = 0;
  v23 = v9;
  v10 = WTF::fastMalloc(0x68);
  *v10 = &unk_1F110B0F8;
  *(v10 + 8) = a1;
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  *(v10 + 32) = 0;
  *(v10 + 56) = -1;
  if (!v19)
  {
    *(v10 + 32) = v17;
    v11 = *(&v17 + 1);
    v17 = 0uLL;
    *(v10 + 40) = v11;
    *(v10 + 48) = v18;
LABEL_7:
    *(v10 + 56) = v19;
    goto LABEL_8;
  }

  if (v19 != 255)
  {
    *(v10 + 32) = v17;
    goto LABEL_7;
  }

LABEL_8:
  *(v10 + 64) = 0;
  *(v10 + 88) = -1;
  if (!v22)
  {
    *(v10 + 64) = v20;
    v12 = *(&v20 + 1);
    v20 = 0uLL;
    *(v10 + 72) = v12;
    *(v10 + 80) = v21;
LABEL_10:
    *(v10 + 88) = v22;
    goto LABEL_11;
  }

  if (v22 != 255)
  {
    *(v10 + 64) = v20;
    goto LABEL_10;
  }

LABEL_11:
  *(v10 + 96) = v23;
  v15 = v10;
  WTF::SuspendableWorkQueue::dispatch();
  if (v15)
  {
    (*(*v15 + 8))(v15);
  }

  result = 0;
  if (!v22)
  {
    if (*(&v20 + 1) && atomic_fetch_add_explicit(*(&v20 + 1), 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(*(&v20 + 1), v13);
    }

    result = v20;
    if (v20 && atomic_fetch_add_explicit(v20, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      result = WTF::StringImpl::destroy(v20, v13);
    }
  }

  if (!v19)
  {
    if (*(&v17 + 1) && atomic_fetch_add_explicit(*(&v17 + 1), 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(*(&v17 + 1), v13);
    }

    result = v17;
    if (v17)
    {
      if (atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        return WTF::StringImpl::destroy(v17, v13);
      }
    }
  }

  return result;
}

uint64_t WebKit::NetworkStorageManager::deleteData(WTF::OptionSet<WebKit::WebsiteDataType>,WebCore::ClientOrigin const&,WTF::CompletionHandler<void ()(void)> &&)::$_0::~$_0(uint64_t a1, WTF::StringImpl *a2)
{
  v3 = *(a1 + 88);
  *(a1 + 88) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  if (!*(a1 + 80))
  {
    v4 = *(a1 + 64);
    *(a1 + 64) = 0;
    if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v4, a2);
    }

    v5 = *(a1 + 56);
    *(a1 + 56) = 0;
    if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v5, a2);
    }
  }

  *(a1 + 80) = -1;
  if (!*(a1 + 48))
  {
    v6 = *(a1 + 32);
    *(a1 + 32) = 0;
    if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v6, a2);
    }

    v7 = *(a1 + 24);
    *(a1 + 24) = 0;
    if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v7, a2);
    }
  }

  *(a1 + 48) = -1;
  v8 = *(a1 + 8);
  *(a1 + 8) = 0;
  if (v8)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)2>,(WTF::DestructionThread)2>::deref((v8 + 8));
  }

  return a1;
}

uint64_t WebKit::NetworkStorageManager::deleteDataModifiedSince(uint64_t a1, int a2, uint64_t *a3, double a4)
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
  v10 = *a3;
  *a3 = 0;
  v11 = WTF::fastMalloc(0x30);
  *v11 = &unk_1F110B170;
  *(v11 + 8) = a1;
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;
  *(v11 + 32) = a4;
  *(v11 + 40) = v10;
  v13 = v11;
  WTF::SuspendableWorkQueue::dispatch();
  result = v13;
  if (v13)
  {
    return (*(*v13 + 8))(v13);
  }

  return result;
}

uint64_t WebKit::NetworkStorageManager::deleteDataForRegistrableDomains(uint64_t a1, int a2, uint64_t *a3, uint64_t *a4)
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
  v19 = 0;
  v20 = 0;
  _ZN3WTF6MapperIZNS_21CrossThreadCopierBaseILb0ELb0ENS_6VectorIN7WebCore17RegistrableDomainELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEE4copyERKS7_EUlRT_E_S7_SA_vE3mapERS7_SA_RKSD_(&v19, a3);
  v10 = *a4;
  *a4 = 0;
  v21 = v10;
  v11 = WTF::fastMalloc(0x38);
  *v11 = &unk_1F110B1E8;
  *(v11 + 8) = a1;
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;
  *(v11 + 32) = v19;
  v12 = v20;
  v19 = 0;
  v20 = 0;
  *(v11 + 40) = v12;
  v13 = v21;
  v21 = 0;
  v22 = v11;
  *(v11 + 48) = v13;
  WTF::SuspendableWorkQueue::dispatch();
  v15 = v22;
  v22 = 0;
  if (v15)
  {
    (*(*v15 + 8))(v15);
  }

  v16 = v21;
  v21 = 0;
  if (v16)
  {
    (*(*v16 + 8))(v16);
  }

  return WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v19, v14);
}

uint64_t WebKit::NetworkStorageManager::moveData(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t *a5)
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
  WebCore::SecurityOriginData::isolatedCopy();
  WebCore::SecurityOriginData::isolatedCopy();
  v10 = *a5;
  *a5 = 0;
  v24 = v10;
  v11 = WTF::fastMalloc(0x68);
  *v11 = &unk_1F110B260;
  *(v11 + 8) = a1;
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;
  *(v11 + 32) = 0;
  *(v11 + 56) = -1;
  if (!v20)
  {
    *(v11 + 32) = v18;
    v12 = *(&v18 + 1);
    v18 = 0uLL;
    *(v11 + 40) = v12;
    *(v11 + 48) = v19;
LABEL_7:
    *(v11 + 56) = v20;
    goto LABEL_8;
  }

  if (v20 != 255)
  {
    *(v11 + 32) = v18;
    goto LABEL_7;
  }

LABEL_8:
  *(v11 + 64) = 0;
  *(v11 + 88) = -1;
  if (!v23)
  {
    *(v11 + 64) = v21;
    v13 = *(&v21 + 1);
    v21 = 0uLL;
    *(v11 + 72) = v13;
    *(v11 + 80) = v22;
LABEL_10:
    *(v11 + 88) = v23;
    goto LABEL_11;
  }

  if (v23 != 255)
  {
    *(v11 + 64) = v21;
    goto LABEL_10;
  }

LABEL_11:
  *(v11 + 96) = v24;
  v16 = v11;
  WTF::SuspendableWorkQueue::dispatch();
  if (v16)
  {
    (*(*v16 + 8))(v16);
  }

  result = 0;
  if (!v23)
  {
    if (*(&v21 + 1) && atomic_fetch_add_explicit(*(&v21 + 1), 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(*(&v21 + 1), v14);
    }

    result = v21;
    if (v21 && atomic_fetch_add_explicit(v21, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      result = WTF::StringImpl::destroy(v21, v14);
    }
  }

  if (!v20)
  {
    if (*(&v18 + 1) && atomic_fetch_add_explicit(*(&v18 + 1), 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(*(&v18 + 1), v14);
    }

    result = v18;
    if (v18)
    {
      if (atomic_fetch_add_explicit(v18, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        return WTF::StringImpl::destroy(v18, v14);
      }
    }
  }

  return result;
}

uint64_t WebKit::NetworkStorageManager::getOriginDirectory(uint64_t a1, uint64_t a2, int a3, uint64_t *a4)
{
  while (1)
  {
    v7 = *(a1 + 8);
    if ((v7 & 1) == 0)
    {
      break;
    }

    v8 = *(a1 + 8);
    atomic_compare_exchange_strong_explicit((a1 + 8), &v8, v7 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v8 == v7)
    {
      goto LABEL_5;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*(a1 + 8));
LABEL_5:
  WebCore::SecurityOriginData::isolatedCopy();
  WebCore::SecurityOriginData::isolatedCopy();
  v9 = *a4;
  *a4 = 0;
  v23 = v9;
  v10 = WTF::fastMalloc(0x68);
  *v10 = &unk_1F110B288;
  *(v10 + 8) = a1;
  *(v10 + 16) = a1;
  *(v10 + 24) = a3;
  *(v10 + 32) = 0;
  *(v10 + 56) = -1;
  if (!v19)
  {
    *(v10 + 32) = v17;
    v11 = *(&v17 + 1);
    v17 = 0uLL;
    *(v10 + 40) = v11;
    *(v10 + 48) = v18;
LABEL_7:
    *(v10 + 56) = v19;
    goto LABEL_8;
  }

  if (v19 != 255)
  {
    *(v10 + 32) = v17;
    goto LABEL_7;
  }

LABEL_8:
  *(v10 + 64) = 0;
  *(v10 + 88) = -1;
  if (!v22)
  {
    *(v10 + 64) = v20;
    v12 = *(&v20 + 1);
    v20 = 0uLL;
    *(v10 + 72) = v12;
    *(v10 + 80) = v21;
LABEL_10:
    *(v10 + 88) = v22;
    goto LABEL_11;
  }

  if (v22 != 255)
  {
    *(v10 + 64) = v20;
    goto LABEL_10;
  }

LABEL_11:
  *(v10 + 96) = v23;
  v15 = v10;
  WTF::SuspendableWorkQueue::dispatch();
  if (v15)
  {
    (*(*v15 + 8))(v15);
  }

  result = 0;
  if (!v22)
  {
    if (*(&v20 + 1) && atomic_fetch_add_explicit(*(&v20 + 1), 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(*(&v20 + 1), v13);
    }

    result = v20;
    if (v20 && atomic_fetch_add_explicit(v20, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      result = WTF::StringImpl::destroy(v20, v13);
    }
  }

  if (!v19)
  {
    if (*(&v17 + 1) && atomic_fetch_add_explicit(*(&v17 + 1), 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(*(&v17 + 1), v13);
    }

    result = v17;
    if (v17)
    {
      if (atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        return WTF::StringImpl::destroy(v17, v13);
      }
    }
  }

  return result;
}

uint64_t WebKit::NetworkStorageManager::getOriginDirectory(WebCore::ClientOrigin &&,WebKit::WebsiteDataType,WTF::CompletionHandler<void ()(WebKit::WebsiteDataType::String const&)> &&)::$_0::~$_0(uint64_t a1, WTF::StringImpl *a2)
{
  v3 = *(a1 + 88);
  *(a1 + 88) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  if (!*(a1 + 80))
  {
    v4 = *(a1 + 64);
    *(a1 + 64) = 0;
    if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v4, a2);
    }

    v5 = *(a1 + 56);
    *(a1 + 56) = 0;
    if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v5, a2);
    }
  }

  *(a1 + 80) = -1;
  if (!*(a1 + 48))
  {
    v6 = *(a1 + 32);
    *(a1 + 32) = 0;
    if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v6, a2);
    }

    v7 = *(a1 + 24);
    *(a1 + 24) = 0;
    if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v7, a2);
    }
  }

  *(a1 + 48) = -1;
  v8 = *(a1 + 8);
  *(a1 + 8) = 0;
  if (v8)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)2>,(WTF::DestructionThread)2>::deref((v8 + 8));
  }

  return a1;
}

uint64_t WebKit::NetworkStorageManager::suspend(uint64_t a1, uint64_t *a2)
{
  v10[3] = *MEMORY[0x1E69E9840];
  if (*(a1 + 24) > -2)
  {
    v6 = qword_1ED641030;
    if (os_log_type_enabled(qword_1ED641030, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(v10[0]) = 134217984;
      *(v10 + 4) = a1;
      _os_log_impl(&dword_19D52D000, v6, OS_LOG_TYPE_DEFAULT, "%p - NetworkStorageManager::suspend()", v10, 0xCu);
    }

    while (1)
    {
      v7 = *(a1 + 8);
      if ((v7 & 1) == 0)
      {
        break;
      }

      v8 = *(a1 + 8);
      atomic_compare_exchange_strong_explicit((a1 + 8), &v8, v7 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v8 == v7)
      {
        goto LABEL_11;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*(a1 + 8));
LABEL_11:
    v9 = WTF::fastMalloc(0x18);
    *v9 = &unk_1F110B2D8;
    v9[1] = a1;
    v9[2] = a1;
    v10[0] = v9;
    WTF::SuspendableWorkQueue::suspend();
    result = v10[0];
    v10[0] = 0;
    if (result)
    {
      return (*(*result + 8))(result);
    }
  }

  else
  {
    v2 = *a2;
    *a2 = 0;
    (*(*v2 + 16))(v2);
    v3 = *(*v2 + 8);

    return v3(v2);
  }

  return result;
}

uint64_t WebKit::NetworkStorageManager::resume(uint64_t this)
{
  v5 = *MEMORY[0x1E69E9840];
  if (*(this + 24) >= -1)
  {
    v1 = this;
    v2 = qword_1ED641030;
    if (os_log_type_enabled(qword_1ED641030, OS_LOG_TYPE_DEFAULT))
    {
      v3 = 134217984;
      v4 = v1;
      _os_log_impl(&dword_19D52D000, v2, OS_LOG_TYPE_DEFAULT, "%p - NetworkStorageManager::resume()", &v3, 0xCu);
    }

    return WTF::SuspendableWorkQueue::resume(*(v1 + 32));
  }

  return this;
}

uint64_t WebKit::NetworkStorageManager::handleLowMemoryWarning(WebKit::NetworkStorageManager *this)
{
  while (1)
  {
    v2 = *(this + 1);
    if ((v2 & 1) == 0)
    {
      break;
    }

    v3 = *(this + 1);
    atomic_compare_exchange_strong_explicit(this + 1, &v3, v2 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v3 == v2)
    {
      goto LABEL_5;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*(this + 1));
LABEL_5:
  v4 = WTF::fastMalloc(0x18);
  *v4 = &unk_1F110B300;
  v4[1] = this;
  v4[2] = this;
  v6 = v4;
  WTF::SuspendableWorkQueue::dispatch();
  result = v6;
  if (v6)
  {
    return (*(*v6 + 8))(v6);
  }

  return result;
}

uint64_t WebKit::NetworkStorageManager::syncLocalStorage(uint64_t a1, uint64_t *a2)
{
  v10[0] = a1;
  while (1)
  {
    v4 = *(a1 + 8);
    if ((v4 & 1) == 0)
    {
      break;
    }

    v9 = *(a1 + 8);
    atomic_compare_exchange_strong_explicit((a1 + 8), &v9, v4 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v9 == v4)
    {
      goto LABEL_4;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*(a1 + 8));
LABEL_4:
  v5 = *a2;
  *a2 = 0;
  v6 = WTF::fastMalloc(0x20);
  *v6 = &unk_1F110B328;
  v6[1] = a1;
  v6[2] = a1;
  v6[3] = v5;
  v10[1] = 0;
  v10[2] = 0;
  v11 = v6;
  WTF::SuspendableWorkQueue::dispatch();
  v7 = v11;
  v11 = 0;
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  return WebKit::NetworkStorageManager::close(WTF::CompletionHandler<void ()(void)> &&)::$_1::~$_1(v10);
}

uint64_t WebKit::NetworkStorageManager::fetchLocalStorage(uint64_t a1, uint64_t *a2)
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
  v6 = *a2;
  *a2 = 0;
  v7 = WTF::fastMalloc(0x20);
  *v7 = &unk_1F110B350;
  v7[1] = a1;
  v7[2] = a1;
  v7[3] = v6;
  v9 = v7;
  WTF::SuspendableWorkQueue::dispatch();
  result = v9;
  if (v9)
  {
    return (*(*v9 + 8))(v9);
  }

  return result;
}

mpark *WebKit::NetworkStorageManager::restoreLocalStorage(uint64_t a1, uint64_t *a2, mpark **a3)
{
  while (1)
  {
    v6 = *(a1 + 8);
    if ((v6 & 1) == 0)
    {
      break;
    }

    v7 = *(a1 + 8);
    atomic_compare_exchange_strong_explicit((a1 + 8), &v7, v6 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v7 == v6)
    {
      goto LABEL_5;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*(a1 + 8));
LABEL_5:
  WTF::CrossThreadCopierBase<false,false,WTF::HashMap<WebCore::ClientOrigin,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::HashTraits<WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>::copy(a2, v16);
  v8 = *a3;
  *a3 = 0;
  v16[1] = v8;
  v9 = WTF::fastMalloc(0x28);
  *v9 = &unk_1F110B3A0;
  *(v9 + 8) = a1;
  *(v9 + 16) = a1;
  v10 = *v16;
  v16[0] = 0;
  v16[1] = 0;
  v17 = v9;
  *(v9 + 24) = v10;
  WTF::SuspendableWorkQueue::dispatch();
  v12 = v17;
  v17 = 0;
  if (v12)
  {
    (*(*v12 + 8))(v12);
  }

  v13 = v16[1];
  v16[1] = 0;
  if (v13)
  {
    (*(*v13 + 8))(v13);
  }

  result = v16[0];
  if (v16[0])
  {
    return WTF::HashTable<WebCore::ClientOrigin,WTF::KeyValuePair<WebCore::ClientOrigin,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ClientOrigin,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashMap<WebCore::ClientOrigin,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::HashTraits<WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ClientOrigin>,WTF::FastMalloc>::deallocateTable(v16[0], v11);
  }

  return result;
}

uint64_t WebKit::NetworkStorageManager::registerTemporaryBlobFilePaths(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  while (1)
  {
    v6 = *(a1 + 8);
    if ((v6 & 1) == 0)
    {
      break;
    }

    v7 = *(a1 + 8);
    atomic_compare_exchange_strong_explicit((a1 + 8), &v7, v6 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v7 == v6)
    {
      goto LABEL_5;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*(a1 + 8));
LABEL_5:
  v14 = *(a2 + 24);
  v15 = 0;
  v16 = 0;
  _ZN3WTF6MapperIZNS_21CrossThreadCopierBaseILb0ELb0ENS_6VectorINS_6StringELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEE4copyERKS6_EUlRT_E_S6_S9_vE3mapERS6_S9_RKSC_(&v15, a3);
  v8 = WTF::fastMalloc(0x30);
  *v8 = &unk_1F110B3F0;
  v8[1] = a1;
  v8[2] = a1;
  v8[3] = v14;
  v8[4] = v15;
  v9 = v16;
  v15 = 0;
  v16 = 0;
  v8[5] = v9;
  v17 = v8;
  WTF::SuspendableWorkQueue::dispatch();
  v11 = v17;
  v17 = 0;
  if (v11)
  {
    (*(*v11 + 8))(v11);
  }

  return WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v15, v10);
}

uint64_t WebKit::NetworkStorageManager::resetQuotaForTesting(uint64_t a1, uint64_t *a2)
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
  v6 = *a2;
  *a2 = 0;
  v7 = WTF::fastMalloc(0x20);
  *v7 = &unk_1F110B418;
  v7[1] = a1;
  v7[2] = a1;
  v7[3] = v6;
  v9 = v7;
  WTF::SuspendableWorkQueue::dispatch();
  result = v9;
  if (v9)
  {
    return (*(*v9 + 8))(v9);
  }

  return result;
}

uint64_t WebKit::NetworkStorageManager::resetQuotaUpdatedBasedOnUsageForTesting(uint64_t a1, uint64_t a2)
{
  result = WTF::HashTable<WebCore::ClientOrigin,WTF::KeyValuePair<WebCore::ClientOrigin,std::unique_ptr<WebKit::OriginStorageManager>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ClientOrigin,std::unique_ptr<WebKit::OriginStorageManager>>>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashMap<WebCore::ClientOrigin,std::unique_ptr<WebKit::OriginStorageManager>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::HashTraits<std::unique_ptr<WebKit::OriginStorageManager>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ClientOrigin>,WTF::FastMalloc>::lookup<WTF::HashMapTranslatorAdapter<WTF::HashMap<WebCore::ClientOrigin,std::unique_ptr<WebKit::OriginStorageManager>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::HashTraits<std::unique_ptr<WebKit::OriginStorageManager>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::IdentityHashTranslator<WTF::HashMap<WebCore::ClientOrigin,std::unique_ptr<WebKit::OriginStorageManager>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::HashTraits<std::unique_ptr<WebKit::OriginStorageManager>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WebCore::ClientOrigin>>>,(WTF::ShouldValidateKey)1,WebCore::ClientOrigin>((a1 + 72), a2);
  if (result)
  {
    v4 = *(result + 64);
    if (v4)
    {
      atomic_fetch_add((v4 + 8), 1u);
      v5 = *(v4 + 56);
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
      v8 = *(v5 + 104);
      *(v5 + 80) = 0;
      *(v5 + 88) = v8;
      if (*(v5 + 120) == 1)
      {
        *(v5 + 120) = 0;
      }

      result = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::OriginQuotaManager,(WTF::DestructionThread)0>::deref(v5, v3);
      if (atomic_load((v4 + 8)))
      {
        atomic_fetch_add((v4 + 8), 0xFFFFFFFF);
      }

      else
      {
        result = 290;
        __break(0xC471u);
      }
    }
  }

  return result;
}

uint64_t WebKit::NetworkStorageManager::setOriginQuotaRatioEnabledForTesting(uint64_t a1, char a2, uint64_t *a3)
{
  while (1)
  {
    v6 = *(a1 + 8);
    if ((v6 & 1) == 0)
    {
      break;
    }

    v7 = *(a1 + 8);
    atomic_compare_exchange_strong_explicit((a1 + 8), &v7, v6 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v7 == v6)
    {
      goto LABEL_5;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*(a1 + 8));
LABEL_5:
  v8 = *a3;
  *a3 = 0;
  v9 = WTF::fastMalloc(0x28);
  *v9 = &unk_1F110B440;
  *(v9 + 8) = a1;
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  *(v9 + 32) = v8;
  v11 = v9;
  WTF::SuspendableWorkQueue::dispatch();
  result = v11;
  if (v11)
  {
    return (*(*v11 + 8))(v11);
  }

  return result;
}

uint64_t WebKit::NetworkStorageManager::setBackupExclusionPeriodForTesting(uint64_t a1, uint64_t *a2, double a3)
{
  while (1)
  {
    v6 = *(a1 + 8);
    if ((v6 & 1) == 0)
    {
      break;
    }

    v7 = *(a1 + 8);
    atomic_compare_exchange_strong_explicit((a1 + 8), &v7, v6 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v7 == v6)
    {
      goto LABEL_5;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*(a1 + 8));
LABEL_5:
  v8 = *a2;
  *a2 = 0;
  v9 = WTF::fastMalloc(0x28);
  *v9 = &unk_1F110B468;
  *(v9 + 8) = a1;
  *(v9 + 16) = a1;
  *(v9 + 24) = a3;
  *(v9 + 32) = v8;
  v11 = v9;
  WTF::SuspendableWorkQueue::dispatch();
  result = v11;
  if (v11)
  {
    return (*(*v11 + 8))(v11);
  }

  return result;
}

uint64_t WebKit::NetworkStorageManager::setStorageSiteValidationEnabledInternal(uint64_t this, WTF::StringImpl *a2)
{
  if (*(this + 376) != a2)
  {
    v2 = this;
    if (a2)
    {
      if (*(this + 376))
      {
        this = *(this + 368);
        *(v2 + 368) = 0;
        if (this)
        {

          return WTF::HashTable<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::deallocateTable(this, a2);
        }
      }

      else
      {
        *(this + 368) = 0;
        *(this + 376) = 1;
      }
    }

    else if (*(this + 376))
    {
      this = *(this + 368);
      if (this)
      {
        this = WTF::HashTable<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::deallocateTable(this, a2);
      }

      *(v2 + 376) = 0;
    }
  }

  return this;
}

uint64_t WebKit::NetworkStorageManager::setStorageSiteValidationEnabled(atomic_ullong *this, char a2)
{
  v4 = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::NetworkDataTask,(WTF::DestructionThread)1>::controlBlock(this + 1);
  v5 = WTF::ThreadSafeWeakPtrControlBlock::weakRef(v4);
  v6 = WTF::fastMalloc(0x20);
  *v6 = &unk_1F110B490;
  *(v6 + 8) = this;
  *(v6 + 16) = v5;
  *(v6 + 24) = a2;
  v8 = v6;
  WTF::SuspendableWorkQueue::dispatch();
  result = v8;
  if (v8)
  {
    return (*(*v8 + 8))(v8);
  }

  return result;
}

WTF::StringImpl **WebKit::NetworkStorageManager::addAllowedSitesForConnectionInternal(WTF::StringImpl **result, uint64_t a2, uint64_t a3)
{
  v12 = a2;
  if (*(result + 376) == 1)
  {
    v10 = 0;
    WTF::HashMap<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>(v11, result + 46, &v12, &v10);
    result = v10;
    v6 = v11[0];
    if (v10)
    {
      result = WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v10, v4);
    }

    v7 = *(a3 + 12);
    if (v7)
    {
      v8 = *a3;
      v9 = 8 * v7;
      do
      {
        result = WTF::HashTable<WebCore::RegistrableDomain,WebCore::RegistrableDomain,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::add<(WTF::ShouldValidateKey)1>(v6 + 1, v8++, v5, v11);
        v9 -= 8;
      }

      while (v9);
    }
  }

  return result;
}

WTF::StringImpl **WTF::HashMap<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>(WTF::StringImpl **result, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v4 = *a3;
  if (*a3 == -1 || !v4)
  {
    __break(0xC471u);
    JUMPOUT(0x19DDF0970);
  }

  v8 = result;
  v9 = *a2;
  if (!*a2)
  {
    result = WTF::HashTable<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand(a2, 0);
    v9 = *a2;
    v4 = *a3;
  }

  v10 = *(v9 - 8);
  v11 = (v4 + ~(v4 << 32)) ^ ((v4 + ~(v4 << 32)) >> 22);
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
      if (v16 == v4)
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
      --*(*a2 - 16);
      v4 = *a3;
      v15 = v17;
    }
  }

  *v15 = v4;
  v19 = *a4;
  *a4 = 0;
  result = v15[1];
  v15[1] = v19;
  if (result)
  {
    result = WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(result, a2);
  }

  v20 = *a2;
  if (*a2)
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
      result = WTF::HashTable<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand(a2, v15);
      v15 = result;
      v20 = *a2;
      if (*a2)
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
  *v8 = v15;
  v8[1] = v23;
  *(v8 + 16) = v22;
  return result;
}

void *WTF::Function<void ()(void)>::Function<WebKit::NetworkStorageManager::addAllowedSitesForConnection(WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&)::$_0,void>(void *a1, uint64_t *a2)
{
  v4 = WTF::fastMalloc(0x30);
  v5 = *a2;
  *a2 = 0;
  *v4 = &unk_1F110B4B8;
  v4[1] = v5;
  v4[2] = a2[1];
  a2[1] = 0;
  v4[3] = a2[2];
  v4[5] = 0;
  v4[4] = 0;
  WTF::VectorBuffer<WTF::String,0ul,WTF::FastMalloc>::adopt((v4 + 4), a2 + 6);
  *a1 = v4;
  return a1;
}

uint64_t WebKit::NetworkStorageManager::addAllowedSitesForConnection(WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&)::$_0::~$_0(uint64_t a1, void *a2)
{
  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(a1 + 24, a2);
  v4 = *(a1 + 8);
  *(a1 + 8) = 0;
  if (v4)
  {
    WTF::ThreadSafeWeakPtrControlBlock::weakDeref(v4, v3);
  }

  return a1;
}

uint64_t WebKit::NetworkStorageManager::isSiteAllowedForConnection(uint64_t a1, uint64_t a2, WTF **a3)
{
  if (*(a1 + 376) != 1)
  {
    return 1;
  }

  result = WTF::HashTable<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>( *(a1 + 368),  a2);
  if (*(a1 + 376))
  {
    v7 = *(a1 + 368);
    if (v7)
    {
      v7 += 16 * *(v7 - 4);
    }

    if (v7 == result)
    {
      return 0;
    }

    v9 = *(result + 8);
    v8 = (result + 8);
    return v9 && WTF::HashTable<WebCore::RegistrableDomain,WebCore::RegistrableDomain,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::lookup<WTF::IdentityHashTranslator<WTF::HashTraits<WebCore::RegistrableDomain>,WTF::DefaultHash<WebCore::RegistrableDomain>>,(WTF::ShouldValidateKey)1,WebCore::RegistrableDomain>(v8, a3, v6) != 0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

WTF::StringImpl **WebKit::NetworkStorageManager::connectToStorageArea(uint64_t *a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, char a6, WebCore::SecurityOriginData *a7, uint64_t *a8)
{
  v54 = *MEMORY[0x1E69E9840];
  v16 = *(a2 + 24);
  WebCore::RegistrableDomain::RegistrableDomain(buf, a7);
  isSiteAllowedForConnection = WebKit::NetworkStorageManager::isSiteAllowedForConnection(a1, v16, buf);
  v19 = *buf;
  *buf = 0;
  if (v19 && atomic_fetch_add_explicit(v19, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v19, v17);
  }

  if (isSiteAllowedForConnection)
  {
    v20 = *(a2 + 24);
    v21 = WebKit::NetworkStorageManager::originStorageManager(a1, a7, 0);
    v22 = v21;
    atomic_fetch_add(v21 + 2, 1u);
    if (a3 == 1)
    {
      v23 = a1[14];
      v24 = WebKit::OriginStorageManager::defaultBucket(v21);
      v25 = WebKit::OriginStorageManager::StorageBucket::localStorageManager(v24, v23);
      v26 = a1[4];
      while (1)
      {
        v27 = *(v26 + 32);
        if ((v27 & 1) == 0)
        {
          break;
        }

        v47 = *(v26 + 32);
        atomic_compare_exchange_strong_explicit((v26 + 32), &v47, v27 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v47 == v27)
        {
          goto LABEL_7;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*(v26 + 32));
LABEL_7:
      *buf = v26;
      v28 = WebKit::LocalStorageManager::connectToLocalStorageArea(v25, v20, a4, a7, buf);
      v29 = *buf;
      *buf = 0;
      if (v29)
      {
        (*(*v29 + 40))(v29);
      }

LABEL_9:
      StorageArea = WebKit::StorageAreaRegistry::getStorageArea(a1[14], v28);
      if (StorageArea)
      {
        v31 = StorageArea;
        (*(*StorageArea + 80))(StorageArea);
        v32 = (*(*v31 + 48))(&v49, v31);
        WebKit::StorageAreaBase::nextMessageIdentifier(v32);
        WTF::CompletionHandler<void ()(std::optional<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,unsigned long long)>::operator()(a8, v28, 1, &v49);
        if (v49)
        {
          WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::String>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v49, v33);
        }

        WebKit::NetworkStorageManager::writeOriginToFileIfNecessary(a1, a7, v31);
        result = (*(*v31 + 88))(v31);
        goto LABEL_13;
      }

      v48 = 0;
      WebKit::StorageAreaBase::nextMessageIdentifier(0);
      WTF::CompletionHandler<void ()(std::optional<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,unsigned long long)>::operator()(a8, v28, 1, &v48);
      result = v48;
      if (v48)
      {
        goto LABEL_30;
      }

      goto LABEL_13;
    }

    if (a3)
    {
      if (a3 == 2)
      {
        v36 = a1[14];
        v37 = WebKit::OriginStorageManager::defaultBucket(v21);
        v38 = WebKit::OriginStorageManager::StorageBucket::localStorageManager(v37, v36);
        v21 = WebKit::LocalStorageManager::connectToTransientLocalStorageArea(v38, v20, a4, a7);
LABEL_21:
        v28 = v21;
        goto LABEL_9;
      }
    }

    else
    {
      if ((a6 & 1) == 0)
      {
        v51 = 0;
        WebKit::StorageAreaBase::nextMessageIdentifier(v21);
        WTF::CompletionHandler<void ()(std::optional<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,unsigned long long)>::operator()(a8, 0, 0, &v51);
        result = v51;
        if (!v51)
        {
          goto LABEL_13;
        }

        goto LABEL_30;
      }

      v42 = a1[14];
      v43 = WebKit::OriginStorageManager::defaultBucket(v21);
      v44 = WebKit::OriginStorageManager::StorageBucket::sessionStorageManager(v43, v42);
      v21 = WebKit::SessionStorageManager::connectToSessionStorageArea(v44, v20, a4, a7, a5);
      if (v45)
      {
        goto LABEL_21;
      }
    }

    v50 = 0;
    WebKit::StorageAreaBase::nextMessageIdentifier(v21);
    WTF::CompletionHandler<void ()(std::optional<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,unsigned long long)>::operator()(a8, 0, 0, &v50);
    result = v50;
    if (v50)
    {
LABEL_30:
      result = WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::String>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(result, v46);
    }

LABEL_13:
    if (atomic_load(v22 + 2))
    {
      atomic_fetch_add(v22 + 2, 0xFFFFFFFF);
      return result;
    }

    __break(0xC471u);
LABEL_39:
    JUMPOUT(0x19DDF0F04);
  }

  v39 = qword_1ED6416C8;
  v40 = os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_FAULT);
  if (v40)
  {
    *buf = 136446210;
    *&buf[4] = "void WebKit::NetworkStorageManager::connectToStorageArea(IPC::Connection &, WebCore::StorageType, StorageAreaMapIdentifier, std::optional<StorageNamespaceIdentifier>, const WebCore::ClientOrigin &, CompletionHandler<void (std::optional<StorageAreaIdentifier>, HashMap<String, String>, uint64_t)> &&)";
    _os_log_fault_impl(&dword_19D52D000, v39, OS_LOG_TYPE_FAULT, "/Library/Caches/com.apple.xbs/Sources/WebKit/Source/WebKit/NetworkProcess/storage/NetworkStorageManager.cpp 1573: Invalid message dispatched %{public}s", buf, 0xCu);
  }

  *(a2 + 94) = 1;
  if (IPC::s_shouldCrashOnMessageCheckFailure == 1)
  {
    __break(0xC471u);
    goto LABEL_39;
  }

  v52 = 0;
  WebKit::StorageAreaBase::nextMessageIdentifier(v40);
  WTF::CompletionHandler<void ()(std::optional<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,unsigned long long)>::operator()(a8, 0, 0, &v52);
  result = v52;
  if (v52)
  {
    return WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::String>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v52, v41);
  }

  return result;
}

WTF::StringImpl **WTF::CompletionHandler<void ()(std::optional<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,unsigned long long)>::operator()(uint64_t *a1, uint64_t a2, uint64_t a3, WTF::StringImpl ***a4)
{
  v4 = *a1;
  *a1 = 0;
  v5 = *a4;
  *a4 = 0;
  v9 = v5;
  WTF::Function<void ()(std::optional<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,unsigned long long)>::operator()(v4, a2, a3, &v9);
  result = v9;
  if (v9)
  {
    result = WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::String>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v9, v6);
  }

  if (v4)
  {
    v8 = *(*v4 + 8);

    return v8(v4);
  }

  return result;
}

void WebKit::NetworkStorageManager::cancelConnectToStorageArea(uint64_t a1, uint64_t a2, int a3, uint64_t a4, char a5, WebCore::SecurityOriginData *a6)
{
  v25 = *MEMORY[0x1E69E9840];
  v12 = *(a2 + 24);
  WebCore::RegistrableDomain::RegistrableDomain(v24, a6);
  isSiteAllowedForConnection = WebKit::NetworkStorageManager::isSiteAllowedForConnection(a1, v12, v24);
  v15 = *v24;
  *v24 = 0;
  if (!v15 || atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) != 2)
  {
    if (isSiteAllowedForConnection)
    {
      goto LABEL_4;
    }

LABEL_24:
    v23 = qword_1ED6416C8;
    if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_FAULT))
    {
      *v24 = 136446210;
      *&v24[4] = "void WebKit::NetworkStorageManager::cancelConnectToStorageArea(IPC::Connection &, WebCore::StorageType, std::optional<StorageNamespaceIdentifier>, const WebCore::ClientOrigin &)";
      _os_log_fault_impl(&dword_19D52D000, v23, OS_LOG_TYPE_FAULT, "/Library/Caches/com.apple.xbs/Sources/WebKit/Source/WebKit/NetworkProcess/storage/NetworkStorageManager.cpp 1612: Invalid message dispatched %{public}s", v24, 0xCu);
    }

    *(a2 + 94) = 1;
    if (IPC::s_shouldCrashOnMessageCheckFailure == 1)
    {
      __break(0xC471u);
      JUMPOUT(0x19DDF1180);
    }

    return;
  }

  WTF::StringImpl::destroy(v15, v13);
  if ((isSiteAllowedForConnection & 1) == 0)
  {
    goto LABEL_24;
  }

LABEL_4:
  v16 = WTF::HashTable<WebCore::ClientOrigin,WTF::KeyValuePair<WebCore::ClientOrigin,std::unique_ptr<WebKit::OriginStorageManager>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ClientOrigin,std::unique_ptr<WebKit::OriginStorageManager>>>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashMap<WebCore::ClientOrigin,std::unique_ptr<WebKit::OriginStorageManager>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::HashTraits<std::unique_ptr<WebKit::OriginStorageManager>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ClientOrigin>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WebCore::ClientOrigin,std::unique_ptr<WebKit::OriginStorageManager>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::HashTraits<std::unique_ptr<WebKit::OriginStorageManager>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WebCore::ClientOrigin>>,(WTF::ShouldValidateKey)1,WebCore::ClientOrigin>((a1 + 72), a6);
  v17 = *(a1 + 72);
  if (v17)
  {
    v17 += 72 * *(v17 - 4);
  }

  if (v17 != v16)
  {
    v18 = *(a2 + 24);
    v19 = *(v16 + 64);
    atomic_fetch_add(v19 + 2, 1u);
    if (a3)
    {
      if (a3 == 2)
      {
        if (!v19)
        {
          __break(0xC471u);
          JUMPOUT(0x19DDF1204);
        }
      }

      else
      {
        if (a3 != 1)
        {
          if (!v19)
          {
            return;
          }

          goto LABEL_20;
        }

        if (!v19)
        {
          goto LABEL_30;
        }
      }

      v20 = WebKit::OriginStorageManager::defaultBucket(v19)[4];
      if (v20)
      {
        WebKit::LocalStorageManager::connectionClosedForLocalStorageArea(v20, v18);
      }
    }

    else
    {
      if (!v19)
      {
LABEL_30:
        __break(0xC471u);
        JUMPOUT(0x19DDF10ACLL);
      }

      v21 = WebKit::OriginStorageManager::defaultBucket(v19)[7];
      if (v21 && (a5 & 1) != 0)
      {
        WebKit::SessionStorageManager::cancelConnectToSessionStorageArea(v21, v18, a4);
      }
    }

LABEL_20:
    if (!atomic_load(v19 + 2))
    {
      __break(0xC471u);
      JUMPOUT(0x19DDF11E4);
    }

    atomic_fetch_add(v19 + 2, 0xFFFFFFFF);
  }
}

uint64_t WebKit::NetworkStorageManager::disconnectFromStorageArea(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v47 = *MEMORY[0x1E69E9840];
  result = WebKit::StorageAreaRegistry::getStorageArea(a1[14], a3);
  if (result)
  {
    v7 = result;
    (*(*result + 80))(result);
    v8 = *(a2 + 24);
    buf[0] = 0;
    v43 = -1;
    LODWORD(v9) = *(v7 + 56);
    if (*(v7 + 56))
    {
      if (v9 == 255)
      {
LABEL_9:
        LOBYTE(v44) = 0;
        v46 = -1;
        LODWORD(v11) = *(v7 + 88);
        if (*(v7 + 88))
        {
          if (v11 == 255)
          {
            goto LABEL_16;
          }

          v44 = *(v7 + 64);
        }

        else
        {
          v12 = *(v7 + 64);
          if (v12)
          {
            atomic_fetch_add_explicit(v12, 2u, memory_order_relaxed);
          }

          *&v44 = v12;
          v11 = *(v7 + 72);
          if (v11)
          {
            atomic_fetch_add_explicit(v11, 2u, memory_order_relaxed);
          }

          *(&v44 + 1) = v11;
          v45 = *(v7 + 80);
          LOBYTE(v11) = *(v7 + 88);
        }

        v46 = v11;
LABEL_16:
        WebCore::RegistrableDomain::RegistrableDomain(&v40, buf);
        isSiteAllowedForConnection = WebKit::NetworkStorageManager::isSiteAllowedForConnection(a1, v8, &v40);
        v15 = v40;
        v40 = 0;
        if (v15 && atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v15, v13);
        }

        if (!v46)
        {
          v16 = *(&v44 + 1);
          *(&v44 + 1) = 0;
          if (v16 && atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v16, v13);
          }

          v17 = v44;
          *&v44 = 0;
          if (v17 && atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v17, v13);
          }
        }

        v46 = -1;
        if (v43)
        {
          goto LABEL_32;
        }

        v18 = *&buf[8];
        *&buf[8] = 0;
        if (v18 && atomic_fetch_add_explicit(v18, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v18, v13);
        }

        v19 = *buf;
        *buf = 0;
        if (v19 && atomic_fetch_add_explicit(v19, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v19, v13);
          if (isSiteAllowedForConnection)
          {
LABEL_33:
            buf[0] = 0;
            v43 = -1;
            LODWORD(v20) = *(v7 + 56);
            if (*(v7 + 56))
            {
              if (v20 == 255)
              {
LABEL_40:
                LOBYTE(v44) = 0;
                v46 = -1;
                LODWORD(v22) = *(v7 + 88);
                if (*(v7 + 88))
                {
                  if (v22 == 255)
                  {
LABEL_47:
                    v25 = WebKit::NetworkStorageManager::originStorageManager(a1, buf, 1);
                    atomic_fetch_add(v25 + 2, 1u);
                    if (!v46)
                    {
                      v26 = *(&v44 + 1);
                      *(&v44 + 1) = 0;
                      if (v26 && atomic_fetch_add_explicit(v26, 0xFFFFFFFE, memory_order_relaxed) == 2)
                      {
                        WTF::StringImpl::destroy(v26, v24);
                      }

                      v27 = v44;
                      *&v44 = 0;
                      if (v27 && atomic_fetch_add_explicit(v27, 0xFFFFFFFE, memory_order_relaxed) == 2)
                      {
                        WTF::StringImpl::destroy(v27, v24);
                      }
                    }

                    v46 = -1;
                    if (!v43)
                    {
                      v28 = *&buf[8];
                      *&buf[8] = 0;
                      if (v28 && atomic_fetch_add_explicit(v28, 0xFFFFFFFE, memory_order_relaxed) == 2)
                      {
                        WTF::StringImpl::destroy(v28, v24);
                      }

                      v29 = *buf;
                      *buf = 0;
                      if (v29 && atomic_fetch_add_explicit(v29, 0xFFFFFFFE, memory_order_relaxed) == 2)
                      {
                        WTF::StringImpl::destroy(v29, v24);
                      }
                    }

                    v30 = (*(*v7 + 24))(v7);
                    v31 = a1[14];
                    v32 = WebKit::OriginStorageManager::defaultBucket(v25);
                    if (v30)
                    {
                      v33 = WebKit::OriginStorageManager::StorageBucket::localStorageManager(v32, v31);
                      v34 = *(a2 + 24);
                      v35 = *(v33 + 3);
                      if (v35 && *(v35 + 16) == a3)
                      {
                        WebKit::LocalStorageManager::connectionClosedForLocalStorageArea(v33, v34);
                      }

                      else
                      {
                        v37 = *(v33 + 2);
                        if (v37 && *(v37 + 16) == a3)
                        {
                          WebKit::LocalStorageManager::connectionClosedForTransientStorageArea(v33, v34);
                        }
                      }
                    }

                    else
                    {
                      v36 = WebKit::OriginStorageManager::StorageBucket::sessionStorageManager(v32, v31);
                      WebKit::SessionStorageManager::disconnectFromStorageArea(v36, *(a2 + 24), a3);
                    }

                    if (atomic_load(v25 + 2))
                    {
                      atomic_fetch_add(v25 + 2, 0xFFFFFFFF);
                      return (*(*v7 + 88))(v7);
                    }

LABEL_86:
                    __break(0xC471u);
                    JUMPOUT(0x19DDF1694);
                  }

                  v44 = *(v7 + 64);
                }

                else
                {
                  v23 = *(v7 + 64);
                  if (v23)
                  {
                    atomic_fetch_add_explicit(v23, 2u, memory_order_relaxed);
                  }

                  *&v44 = v23;
                  v22 = *(v7 + 72);
                  if (v22)
                  {
                    atomic_fetch_add_explicit(v22, 2u, memory_order_relaxed);
                  }

                  *(&v44 + 1) = v22;
                  v45 = *(v7 + 80);
                  LOBYTE(v22) = *(v7 + 88);
                }

                v46 = v22;
                goto LABEL_47;
              }

              *buf = *(v7 + 32);
            }

            else
            {
              v21 = *(v7 + 32);
              if (v21)
              {
                atomic_fetch_add_explicit(v21, 2u, memory_order_relaxed);
              }

              *buf = v21;
              v20 = *(v7 + 40);
              if (v20)
              {
                atomic_fetch_add_explicit(v20, 2u, memory_order_relaxed);
              }

              *&buf[8] = v20;
              v42 = *(v7 + 48);
              LOBYTE(v20) = *(v7 + 56);
            }

            v43 = v20;
            goto LABEL_40;
          }
        }

        else
        {
LABEL_32:
          if (isSiteAllowedForConnection)
          {
            goto LABEL_33;
          }
        }

        v39 = qword_1ED6416C8;
        if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_FAULT))
        {
          *buf = 136446210;
          *&buf[4] = "void WebKit::NetworkStorageManager::disconnectFromStorageArea(IPC::Connection &, StorageAreaIdentifier)";
          _os_log_fault_impl(&dword_19D52D000, v39, OS_LOG_TYPE_FAULT, "/Library/Caches/com.apple.xbs/Sources/WebKit/Source/WebKit/NetworkProcess/storage/NetworkStorageManager.cpp 1647: Invalid message dispatched %{public}s", buf, 0xCu);
        }

        *(a2 + 94) = 1;
        if (IPC::s_shouldCrashOnMessageCheckFailure != 1)
        {
          return (*(*v7 + 88))(v7);
        }

        goto LABEL_86;
      }

      *buf = *(v7 + 32);
    }

    else
    {
      v10 = *(v7 + 32);
      if (v10)
      {
        atomic_fetch_add_explicit(v10, 2u, memory_order_relaxed);
      }

      *buf = v10;
      v9 = *(v7 + 40);
      if (v9)
      {
        atomic_fetch_add_explicit(v9, 2u, memory_order_relaxed);
      }

      *&buf[8] = v9;
      v42 = *(v7 + 48);
      LOBYTE(v9) = *(v7 + 56);
    }

    v43 = v9;
    goto LABEL_9;
  }

  return result;
}

WTF::StringImpl **WebKit::NetworkStorageManager::setItem(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t *a8)
{
  v69 = *MEMORY[0x1E69E9840];
  v62 = 0;
  StorageArea = WebKit::StorageAreaRegistry::getStorageArea(a1[14], a3);
  if (StorageArea)
  {
    v16 = StorageArea;
    (*(*StorageArea + 80))(StorageArea);
    v17 = *(a2 + 24);
    buf[0] = 0;
    v65 = -1;
    LODWORD(v18) = *(v16 + 56);
    if (*(v16 + 56))
    {
      if (v18 == 255)
      {
LABEL_9:
        LOBYTE(v66) = 0;
        v68 = -1;
        LODWORD(v20) = *(v16 + 88);
        if (*(v16 + 88))
        {
          if (v20 == 255)
          {
            goto LABEL_16;
          }

          v66 = *(v16 + 64);
        }

        else
        {
          v21 = *(v16 + 64);
          if (v21)
          {
            atomic_fetch_add_explicit(v21, 2u, memory_order_relaxed);
          }

          *&v66 = v21;
          v20 = *(v16 + 72);
          if (v20)
          {
            atomic_fetch_add_explicit(v20, 2u, memory_order_relaxed);
          }

          *(&v66 + 1) = v20;
          v67 = *(v16 + 80);
          LOBYTE(v20) = *(v16 + 88);
        }

        v68 = v20;
LABEL_16:
        WebCore::RegistrableDomain::RegistrableDomain(&v61, buf);
        isSiteAllowedForConnection = WebKit::NetworkStorageManager::isSiteAllowedForConnection(a1, v17, &v61);
        v24 = v61;
        v61 = 0;
        if (v24 && atomic_fetch_add_explicit(v24, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v24, v22);
        }

        if (!v68)
        {
          v25 = *(&v66 + 1);
          *(&v66 + 1) = 0;
          if (v25 && atomic_fetch_add_explicit(v25, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v25, v22);
          }

          v26 = v66;
          *&v66 = 0;
          if (v26 && atomic_fetch_add_explicit(v26, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v26, v22);
          }
        }

        v68 = -1;
        if (v65)
        {
          goto LABEL_32;
        }

        v27 = *&buf[8];
        *&buf[8] = 0;
        if (v27 && atomic_fetch_add_explicit(v27, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v27, v22);
        }

        v28 = *buf;
        *buf = 0;
        if (v28 && atomic_fetch_add_explicit(v28, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v28, v22);
          if (isSiteAllowedForConnection)
          {
LABEL_33:
            v29 = *(a2 + 24);
            buf[0] = 0;
            v65 = -1;
            LODWORD(v30) = *(v16 + 56);
            if (*(v16 + 56))
            {
              if (v30 == 255)
              {
LABEL_40:
                LOBYTE(v66) = 0;
                v68 = -1;
                LODWORD(v32) = *(v16 + 88);
                if (*(v16 + 88))
                {
                  if (v32 == 255)
                  {
LABEL_47:
                    WebCore::RegistrableDomain::RegistrableDomain(&v61, buf);
                    v35 = WebKit::NetworkStorageManager::isSiteAllowedForConnection(a1, v29, &v61);
                    v36 = v61;
                    v61 = 0;
                    if (v36 && atomic_fetch_add_explicit(v36, 0xFFFFFFFE, memory_order_relaxed) == 2)
                    {
                      WTF::StringImpl::destroy(v36, v34);
                    }

                    if (!v68)
                    {
                      v37 = *(&v66 + 1);
                      *(&v66 + 1) = 0;
                      if (v37 && atomic_fetch_add_explicit(v37, 0xFFFFFFFE, memory_order_relaxed) == 2)
                      {
                        WTF::StringImpl::destroy(v37, v34);
                      }

                      v38 = v66;
                      *&v66 = 0;
                      if (v38 && atomic_fetch_add_explicit(v38, 0xFFFFFFFE, memory_order_relaxed) == 2)
                      {
                        WTF::StringImpl::destroy(v38, v34);
                      }
                    }

                    v68 = -1;
                    if (v65)
                    {
                      goto LABEL_63;
                    }

                    v39 = *&buf[8];
                    *&buf[8] = 0;
                    if (v39 && atomic_fetch_add_explicit(v39, 0xFFFFFFFE, memory_order_relaxed) == 2)
                    {
                      WTF::StringImpl::destroy(v39, v34);
                    }

                    v40 = *buf;
                    *buf = 0;
                    if (v40 && atomic_fetch_add_explicit(v40, 0xFFFFFFFE, memory_order_relaxed) == 2)
                    {
                      WTF::StringImpl::destroy(v40, v34);
                      if (v35)
                      {
                        goto LABEL_64;
                      }
                    }

                    else
                    {
LABEL_63:
                      if (v35)
                      {
LABEL_64:
                        (*(*v16 + 56))(&v61, v16, *(a2 + 24), 1, a4, 1, a5, a6, a7);
                        v41 = BYTE1(v61);
                        if (BYTE1(v61) == 1)
                        {
                          (*(*v16 + 48))(buf, v16);
                          v43 = v62;
                          v62 = *buf;
                          *buf = 0;
                          if (v43)
                          {
                            WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::String>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v43, v42);
                            if (*buf)
                            {
                              WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::String>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(*buf, v60);
                            }
                          }
                        }

                        v44 = *a8;
                        *a8 = 0;
                        (*(*v44 + 16))(v44, v41, &v62);
                        (*(*v44 + 8))(v44);
                        buf[0] = 0;
                        v65 = -1;
                        LODWORD(v45) = *(v16 + 56);
                        if (*(v16 + 56))
                        {
                          if (v45 == 255)
                          {
LABEL_73:
                            LOBYTE(v66) = 0;
                            v68 = -1;
                            LODWORD(v47) = *(v16 + 88);
                            if (*(v16 + 88))
                            {
                              if (v47 == 255)
                              {
                                goto LABEL_80;
                              }

                              v66 = *(v16 + 64);
                            }

                            else
                            {
                              v48 = *(v16 + 64);
                              if (v48)
                              {
                                atomic_fetch_add_explicit(v48, 2u, memory_order_relaxed);
                              }

                              *&v66 = v48;
                              v47 = *(v16 + 72);
                              if (v47)
                              {
                                atomic_fetch_add_explicit(v47, 2u, memory_order_relaxed);
                              }

                              *(&v66 + 1) = v47;
                              v67 = *(v16 + 80);
                              LOBYTE(v47) = *(v16 + 88);
                            }

                            v68 = v47;
LABEL_80:
                            WebKit::NetworkStorageManager::writeOriginToFileIfNecessary(a1, buf, v16);
                            if (!v68)
                            {
                              v50 = *(&v66 + 1);
                              *(&v66 + 1) = 0;
                              if (v50 && atomic_fetch_add_explicit(v50, 0xFFFFFFFE, memory_order_relaxed) == 2)
                              {
                                WTF::StringImpl::destroy(v50, v49);
                              }

                              v51 = v66;
                              *&v66 = 0;
                              if (v51 && atomic_fetch_add_explicit(v51, 0xFFFFFFFE, memory_order_relaxed) == 2)
                              {
                                WTF::StringImpl::destroy(v51, v49);
                              }
                            }

                            v68 = -1;
                            if (!v65)
                            {
                              v52 = *&buf[8];
                              *&buf[8] = 0;
                              if (v52 && atomic_fetch_add_explicit(v52, 0xFFFFFFFE, memory_order_relaxed) == 2)
                              {
                                WTF::StringImpl::destroy(v52, v49);
                              }

                              v53 = *buf;
                              *buf = 0;
                              if (v53 && atomic_fetch_add_explicit(v53, 0xFFFFFFFE, memory_order_relaxed) == 2)
                              {
                                WTF::StringImpl::destroy(v53, v49);
                              }
                            }

                            goto LABEL_94;
                          }

                          *buf = *(v16 + 32);
                        }

                        else
                        {
                          v46 = *(v16 + 32);
                          if (v46)
                          {
                            atomic_fetch_add_explicit(v46, 2u, memory_order_relaxed);
                          }

                          *buf = v46;
                          v45 = *(v16 + 40);
                          if (v45)
                          {
                            atomic_fetch_add_explicit(v45, 2u, memory_order_relaxed);
                          }

                          *&buf[8] = v45;
                          v64 = *(v16 + 48);
                          LOBYTE(v45) = *(v16 + 56);
                        }

                        v65 = v45;
                        goto LABEL_73;
                      }
                    }

                    v58 = qword_1ED6416C8;
                    if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_FAULT))
                    {
                      *buf = 136446210;
                      *&buf[4] = "void WebKit::NetworkStorageManager::setItem(IPC::Connection &, StorageAreaIdentifier, StorageAreaImplIdentifier, String &&, String &&, String &&, CompletionHandler<void (BOOL, HashMap<String, String> &&)> &&)";
                      _os_log_fault_impl(&dword_19D52D000, v58, OS_LOG_TYPE_FAULT, "/Library/Caches/com.apple.xbs/Sources/WebKit/Source/WebKit/NetworkProcess/storage/NetworkStorageManager.cpp 1668: Invalid message dispatched %{public}s", buf, 0xCu);
                    }

                    *(a2 + 94) = 1;
                    if (IPC::s_shouldCrashOnMessageCheckFailure != 1)
                    {
                      goto LABEL_94;
                    }

LABEL_123:
                    __break(0xC471u);
                    JUMPOUT(0x19DDF1E34);
                  }

                  v66 = *(v16 + 64);
                }

                else
                {
                  v33 = *(v16 + 64);
                  if (v33)
                  {
                    atomic_fetch_add_explicit(v33, 2u, memory_order_relaxed);
                  }

                  *&v66 = v33;
                  v32 = *(v16 + 72);
                  if (v32)
                  {
                    atomic_fetch_add_explicit(v32, 2u, memory_order_relaxed);
                  }

                  *(&v66 + 1) = v32;
                  v67 = *(v16 + 80);
                  LOBYTE(v32) = *(v16 + 88);
                }

                v68 = v32;
                goto LABEL_47;
              }

              *buf = *(v16 + 32);
            }

            else
            {
              v31 = *(v16 + 32);
              if (v31)
              {
                atomic_fetch_add_explicit(v31, 2u, memory_order_relaxed);
              }

              *buf = v31;
              v30 = *(v16 + 40);
              if (v30)
              {
                atomic_fetch_add_explicit(v30, 2u, memory_order_relaxed);
              }

              *&buf[8] = v30;
              v64 = *(v16 + 48);
              LOBYTE(v30) = *(v16 + 56);
            }

            v65 = v30;
            goto LABEL_40;
          }
        }

        else
        {
LABEL_32:
          if (isSiteAllowedForConnection)
          {
            goto LABEL_33;
          }
        }

        v56 = qword_1ED6416C8;
        if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_FAULT))
        {
          *buf = 136446210;
          *&buf[4] = "void WebKit::NetworkStorageManager::setItem(IPC::Connection &, StorageAreaIdentifier, StorageAreaImplIdentifier, String &&, String &&, String &&, CompletionHandler<void (BOOL, HashMap<String, String> &&)> &&)";
          _os_log_fault_impl(&dword_19D52D000, v56, OS_LOG_TYPE_FAULT, "/Library/Caches/com.apple.xbs/Sources/WebKit/Source/WebKit/NetworkProcess/storage/NetworkStorageManager.cpp 1666: Invalid message dispatched %{public}s", buf, 0xCu);
        }

        *(a2 + 94) = 1;
        if (IPC::s_shouldCrashOnMessageCheckFailure != 1)
        {
          v57 = *a8;
          *a8 = 0;
          (*(*v57 + 16))(v57, 0, &v62);
          (*(*v57 + 8))(v57);
LABEL_94:
          (*(*v16 + 88))(v16);
          goto LABEL_95;
        }

        goto LABEL_123;
      }

      *buf = *(v16 + 32);
    }

    else
    {
      v19 = *(v16 + 32);
      if (v19)
      {
        atomic_fetch_add_explicit(v19, 2u, memory_order_relaxed);
      }

      *buf = v19;
      v18 = *(v16 + 40);
      if (v18)
      {
        atomic_fetch_add_explicit(v18, 2u, memory_order_relaxed);
      }

      *&buf[8] = v18;
      v64 = *(v16 + 48);
      LOBYTE(v18) = *(v16 + 56);
    }

    v65 = v18;
    goto LABEL_9;
  }

  v59 = *a8;
  *a8 = 0;
  (*(*v59 + 16))(v59, 0, &v62);
  (*(*v59 + 8))(v59);
LABEL_95:
  result = v62;
  if (v62)
  {
    return WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::String>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v62, v54);
  }

  return result;
}

void WebKit::NetworkStorageManager::removeItem(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7)
{
  v53 = *MEMORY[0x1E69E9840];
  v46 = 0;
  StorageArea = WebKit::StorageAreaRegistry::getStorageArea(a1[14], a3);
  if (StorageArea)
  {
    v14 = StorageArea;
    (*(*StorageArea + 80))(StorageArea);
    v15 = *(a2 + 24);
    buf[0] = 0;
    v49 = -1;
    LODWORD(v16) = *(v14 + 56);
    if (*(v14 + 56))
    {
      if (v16 == 255)
      {
LABEL_9:
        LOBYTE(v50) = 0;
        v52 = -1;
        LODWORD(v18) = *(v14 + 88);
        if (*(v14 + 88))
        {
          if (v18 == 255)
          {
            goto LABEL_16;
          }

          v50 = *(v14 + 64);
        }

        else
        {
          v19 = *(v14 + 64);
          if (v19)
          {
            atomic_fetch_add_explicit(v19, 2u, memory_order_relaxed);
          }

          *&v50 = v19;
          v18 = *(v14 + 72);
          if (v18)
          {
            atomic_fetch_add_explicit(v18, 2u, memory_order_relaxed);
          }

          *(&v50 + 1) = v18;
          v51 = *(v14 + 80);
          LOBYTE(v18) = *(v14 + 88);
        }

        v52 = v18;
LABEL_16:
        WebCore::RegistrableDomain::RegistrableDomain(&v45, buf);
        isSiteAllowedForConnection = WebKit::NetworkStorageManager::isSiteAllowedForConnection(a1, v15, &v45);
        v22 = v45;
        v45 = 0;
        if (v22 && atomic_fetch_add_explicit(v22, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v22, v20);
        }

        if (!v52)
        {
          v23 = *(&v50 + 1);
          *(&v50 + 1) = 0;
          if (v23 && atomic_fetch_add_explicit(v23, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v23, v20);
          }

          v24 = v50;
          *&v50 = 0;
          if (v24 && atomic_fetch_add_explicit(v24, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v24, v20);
          }
        }

        v52 = -1;
        if (v49)
        {
          goto LABEL_32;
        }

        v25 = *&buf[8];
        *&buf[8] = 0;
        if (v25 && atomic_fetch_add_explicit(v25, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v25, v20);
        }

        v26 = *buf;
        *buf = 0;
        if (v26 && atomic_fetch_add_explicit(v26, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v26, v20);
          if (isSiteAllowedForConnection)
          {
            goto LABEL_33;
          }
        }

        else
        {
LABEL_32:
          if (isSiteAllowedForConnection)
          {
LABEL_33:
            (*(*v14 + 64))(&v45, v14, *(a2 + 24), a4, a5, a6);
            v27 = BYTE1(v45);
            if (BYTE1(v45) == 1)
            {
              (*(*v14 + 48))(buf, v14);
              v29 = v46;
              v46 = *buf;
              *buf = 0;
              if (v29)
              {
                WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::String>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v29, v28);
                if (*buf)
                {
                  WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::String>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(*buf, v44);
                }
              }
            }

            v30 = *a7;
            *a7 = 0;
            (*(*v30 + 16))(v30, v27, &v46);
            (*(*v30 + 8))(v30);
            buf[0] = 0;
            v49 = -1;
            LODWORD(v31) = *(v14 + 56);
            if (*(v14 + 56))
            {
              if (v31 == 255)
              {
LABEL_42:
                LOBYTE(v50) = 0;
                v52 = -1;
                LODWORD(v33) = *(v14 + 88);
                if (*(v14 + 88))
                {
                  if (v33 == 255)
                  {
                    goto LABEL_49;
                  }

                  v50 = *(v14 + 64);
                }

                else
                {
                  v34 = *(v14 + 64);
                  if (v34)
                  {
                    atomic_fetch_add_explicit(v34, 2u, memory_order_relaxed);
                  }

                  *&v50 = v34;
                  v33 = *(v14 + 72);
                  if (v33)
                  {
                    atomic_fetch_add_explicit(v33, 2u, memory_order_relaxed);
                  }

                  *(&v50 + 1) = v33;
                  v51 = *(v14 + 80);
                  LOBYTE(v33) = *(v14 + 88);
                }

                v52 = v33;
LABEL_49:
                WebKit::NetworkStorageManager::writeOriginToFileIfNecessary(a1, buf, v14);
                if (!v52)
                {
                  v36 = *(&v50 + 1);
                  *(&v50 + 1) = 0;
                  if (v36 && atomic_fetch_add_explicit(v36, 0xFFFFFFFE, memory_order_relaxed) == 2)
                  {
                    WTF::StringImpl::destroy(v36, v35);
                  }

                  v37 = v50;
                  *&v50 = 0;
                  if (v37 && atomic_fetch_add_explicit(v37, 0xFFFFFFFE, memory_order_relaxed) == 2)
                  {
                    WTF::StringImpl::destroy(v37, v35);
                  }
                }

                v52 = -1;
                if (!v49)
                {
                  v38 = *&buf[8];
                  *&buf[8] = 0;
                  if (v38 && atomic_fetch_add_explicit(v38, 0xFFFFFFFE, memory_order_relaxed) == 2)
                  {
                    WTF::StringImpl::destroy(v38, v35);
                  }

                  v39 = *buf;
                  *buf = 0;
                  if (v39 && atomic_fetch_add_explicit(v39, 0xFFFFFFFE, memory_order_relaxed) == 2)
                  {
                    WTF::StringImpl::destroy(v39, v35);
                  }
                }

LABEL_63:
                (*(*v14 + 88))(v14);
                goto LABEL_64;
              }

              *buf = *(v14 + 32);
            }

            else
            {
              v32 = *(v14 + 32);
              if (v32)
              {
                atomic_fetch_add_explicit(v32, 2u, memory_order_relaxed);
              }

              *buf = v32;
              v31 = *(v14 + 40);
              if (v31)
              {
                atomic_fetch_add_explicit(v31, 2u, memory_order_relaxed);
              }

              *&buf[8] = v31;
              v48 = *(v14 + 48);
              LOBYTE(v31) = *(v14 + 56);
            }

            v49 = v31;
            goto LABEL_42;
          }
        }

        v41 = qword_1ED6416C8;
        if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_FAULT))
        {
          *buf = 136446210;
          *&buf[4] = "void WebKit::NetworkStorageManager::removeItem(IPC::Connection &, StorageAreaIdentifier, StorageAreaImplIdentifier, String &&, String &&, CompletionHandler<void (BOOL, HashMap<String, String> &&)> &&)";
          _os_log_fault_impl(&dword_19D52D000, v41, OS_LOG_TYPE_FAULT, "/Library/Caches/com.apple.xbs/Sources/WebKit/Source/WebKit/NetworkProcess/storage/NetworkStorageManager.cpp 1689: Invalid message dispatched %{public}s", buf, 0xCu);
        }

        *(a2 + 94) = 1;
        if (IPC::s_shouldCrashOnMessageCheckFailure == 1)
        {
          __break(0xC471u);
          return;
        }

        v42 = *a7;
        *a7 = 0;
        (*(*v42 + 16))(v42, 0, &v46);
        (*(*v42 + 8))(v42);
        goto LABEL_63;
      }

      *buf = *(v14 + 32);
    }

    else
    {
      v17 = *(v14 + 32);
      if (v17)
      {
        atomic_fetch_add_explicit(v17, 2u, memory_order_relaxed);
      }

      *buf = v17;
      v16 = *(v14 + 40);
      if (v16)
      {
        atomic_fetch_add_explicit(v16, 2u, memory_order_relaxed);
      }

      *&buf[8] = v16;
      v48 = *(v14 + 48);
      LOBYTE(v16) = *(v14 + 56);
    }

    v49 = v16;
    goto LABEL_9;
  }

  v43 = *a7;
  *a7 = 0;
  (*(*v43 + 16))(v43, 0, &v46);
  (*(*v43 + 8))(v43);
LABEL_64:
  if (v46)
  {
    WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::String>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v46, v40);
  }
}

void WebKit::NetworkStorageManager::clear(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  v46 = *MEMORY[0x1E69E9840];
  StorageArea = WebKit::StorageAreaRegistry::getStorageArea(a1[14], a3);
  if (!StorageArea)
  {
    v37 = *a6;
    *a6 = 0;
    (*(*v37 + 16))(v37);
    v38 = *(*v37 + 8);

    v38(v37);
    return;
  }

  v12 = StorageArea;
  (*(*StorageArea + 80))(StorageArea);
  v13 = *(a2 + 24);
  buf[0] = 0;
  v42 = -1;
  LODWORD(v14) = *(v12 + 56);
  if (!*(v12 + 56))
  {
    v15 = *(v12 + 32);
    if (v15)
    {
      atomic_fetch_add_explicit(v15, 2u, memory_order_relaxed);
    }

    *buf = v15;
    v14 = *(v12 + 40);
    if (v14)
    {
      atomic_fetch_add_explicit(v14, 2u, memory_order_relaxed);
    }

    *&buf[8] = v14;
    v41 = *(v12 + 48);
    LOBYTE(v14) = *(v12 + 56);
    goto LABEL_8;
  }

  if (v14 != 255)
  {
    *buf = *(v12 + 32);
LABEL_8:
    v42 = v14;
  }

  LOBYTE(v43) = 0;
  v45 = -1;
  LODWORD(v16) = *(v12 + 88);
  if (!*(v12 + 88))
  {
    v17 = *(v12 + 64);
    if (v17)
    {
      atomic_fetch_add_explicit(v17, 2u, memory_order_relaxed);
    }

    *&v43 = v17;
    v16 = *(v12 + 72);
    if (v16)
    {
      atomic_fetch_add_explicit(v16, 2u, memory_order_relaxed);
    }

    *(&v43 + 1) = v16;
    v44 = *(v12 + 80);
    LOBYTE(v16) = *(v12 + 88);
    goto LABEL_15;
  }

  if (v16 != 255)
  {
    v43 = *(v12 + 64);
LABEL_15:
    v45 = v16;
  }

  WebCore::RegistrableDomain::RegistrableDomain(&v39, buf);
  isSiteAllowedForConnection = WebKit::NetworkStorageManager::isSiteAllowedForConnection(a1, v13, &v39);
  v20 = v39;
  v39 = 0;
  if (v20 && atomic_fetch_add_explicit(v20, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v20, v18);
  }

  if (!v45)
  {
    v21 = *(&v43 + 1);
    *(&v43 + 1) = 0;
    if (v21 && atomic_fetch_add_explicit(v21, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v21, v18);
    }

    v22 = v43;
    *&v43 = 0;
    if (v22 && atomic_fetch_add_explicit(v22, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v22, v18);
    }
  }

  v45 = -1;
  if (v42)
  {
    goto LABEL_32;
  }

  v23 = *&buf[8];
  *&buf[8] = 0;
  if (v23 && atomic_fetch_add_explicit(v23, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v23, v18);
  }

  v24 = *buf;
  *buf = 0;
  if (v24 && atomic_fetch_add_explicit(v24, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v24, v18);
    if (isSiteAllowedForConnection)
    {
LABEL_33:
      (*(*v12 + 72))(buf, v12, *(a2 + 24), a4, a5);
      v25 = *a6;
      *a6 = 0;
      (*(*v25 + 16))(v25);
      (*(*v25 + 8))(v25);
      buf[0] = 0;
      v42 = -1;
      LODWORD(v26) = *(v12 + 56);
      if (*(v12 + 56))
      {
        if (v26 == 255)
        {
LABEL_40:
          LOBYTE(v43) = 0;
          v45 = -1;
          LODWORD(v28) = *(v12 + 88);
          if (*(v12 + 88))
          {
            if (v28 == 255)
            {
              goto LABEL_47;
            }

            v43 = *(v12 + 64);
          }

          else
          {
            v29 = *(v12 + 64);
            if (v29)
            {
              atomic_fetch_add_explicit(v29, 2u, memory_order_relaxed);
            }

            *&v43 = v29;
            v28 = *(v12 + 72);
            if (v28)
            {
              atomic_fetch_add_explicit(v28, 2u, memory_order_relaxed);
            }

            *(&v43 + 1) = v28;
            v44 = *(v12 + 80);
            LOBYTE(v28) = *(v12 + 88);
          }

          v45 = v28;
LABEL_47:
          WebKit::NetworkStorageManager::writeOriginToFileIfNecessary(a1, buf, v12);
          if (!v45)
          {
            v31 = *(&v43 + 1);
            *(&v43 + 1) = 0;
            if (v31 && atomic_fetch_add_explicit(v31, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v31, v30);
            }

            v32 = v43;
            *&v43 = 0;
            if (v32 && atomic_fetch_add_explicit(v32, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v32, v30);
            }
          }

          v45 = -1;
          if (!v42)
          {
            v33 = *&buf[8];
            *&buf[8] = 0;
            if (v33 && atomic_fetch_add_explicit(v33, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v33, v30);
            }

            v34 = *buf;
            *buf = 0;
            if (v34)
            {
              if (atomic_fetch_add_explicit(v34, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v34, v30);
              }
            }
          }

          goto LABEL_61;
        }

        *buf = *(v12 + 32);
      }

      else
      {
        v27 = *(v12 + 32);
        if (v27)
        {
          atomic_fetch_add_explicit(v27, 2u, memory_order_relaxed);
        }

        *buf = v27;
        v26 = *(v12 + 40);
        if (v26)
        {
          atomic_fetch_add_explicit(v26, 2u, memory_order_relaxed);
        }

        *&buf[8] = v26;
        v41 = *(v12 + 48);
        LOBYTE(v26) = *(v12 + 56);
      }

      v42 = v26;
      goto LABEL_40;
    }
  }

  else
  {
LABEL_32:
    if (isSiteAllowedForConnection)
    {
      goto LABEL_33;
    }
  }

  v35 = qword_1ED6416C8;
  if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_FAULT))
  {
    *buf = 136446210;
    *&buf[4] = "void WebKit::NetworkStorageManager::clear(IPC::Connection &, StorageAreaIdentifier, StorageAreaImplIdentifier, String &&, CompletionHandler<void ()> &&)";
    _os_log_fault_impl(&dword_19D52D000, v35, OS_LOG_TYPE_FAULT, "/Library/Caches/com.apple.xbs/Sources/WebKit/Source/WebKit/NetworkProcess/storage/NetworkStorageManager.cpp 1708: Invalid message dispatched %{public}s", buf, 0xCu);
  }

  *(a2 + 94) = 1;
  if (IPC::s_shouldCrashOnMessageCheckFailure != 1)
  {
    v36 = *a6;
    *a6 = 0;
    (*(*v36 + 16))(v36);
    (*(*v36 + 8))(v36);
LABEL_61:
    (*(*v12 + 88))(v12);
    return;
  }

  __break(0xC471u);
}

uint64_t WebKit::NetworkStorageManager::openDatabase(WebKit::NetworkStorageManager *this, void **a2, const WebCore::IDBOpenRequestData *a3)
{
  v37 = *MEMORY[0x1E69E9840];
  v4 = *(a3 + 1);
  if (!v4)
  {
    __break(1u);
  }

  v6 = WebKit::IDBStorageRegistry::ensureConnectionToClient(*(this + 15), a2[3], v4);
  ++*v6;
  WebCore::IDBOpenRequestData::databaseIdentifier(&v23, a3);
  v7 = WebKit::NetworkStorageManager::originStorageManager(this, &v24, 1);
  atomic_fetch_add((v7 + 8), 1u);
  v8 = WebKit::OriginStorageManager::idbStorageManager(v7, *(this + 15));
  WebCore::IDBOpenRequestData::databaseIdentifier(&v30, a3);
  WebKit::IDBStorageManager::getOrCreateUniqueIDBDatabase(v8, &v30);
  if (!v36)
  {
    v10 = v35;
    v35 = 0;
    if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v10, v9);
    }

    v11 = v34;
    v34 = 0;
    if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v11, v9);
    }
  }

  v36 = -1;
  if (!v33)
  {
    v12 = v32;
    v32 = 0;
    if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v12, v9);
    }

    v13 = v31;
    v31 = 0;
    if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v13, v9);
    }
  }

  v33 = -1;
  v14 = v30;
  v30 = 0;
  if (v14 && atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v14, v9);
  }

  WebCore::IDBServer::UniqueIDBDatabase::openDatabaseConnection();
  if (atomic_load((v7 + 8)))
  {
    atomic_fetch_add((v7 + 8), 0xFFFFFFFF);
    if (!v29)
    {
      v17 = v28;
      v28 = 0;
      if (v17 && atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v17, v15);
      }

      v18 = v27;
      v27 = 0;
      if (v18 && atomic_fetch_add_explicit(v18, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v18, v15);
      }
    }

    v29 = -1;
    if (!v26)
    {
      v19 = v25;
      v25 = 0;
      if (v19 && atomic_fetch_add_explicit(v19, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v19, v15);
      }

      v20 = v24;
      v24 = 0;
      if (v20 && atomic_fetch_add_explicit(v20, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v20, v15);
      }
    }

    v26 = -1;
    v21 = v23;
    v23 = 0;
    if (v21)
    {
      if (atomic_fetch_add_explicit(v21, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v21, v15);
      }
    }

    return WTF::RefCounted<WebCore::IDBServer::IDBConnectionToClient>::deref(v6, v15);
  }

  else
  {
    result = 290;
    __break(0xC471u);
  }

  return result;
}

WTF::StringImpl *WebKit::NetworkStorageManager::openDBRequestCancelled(WebKit::NetworkStorageManager *this, const WebCore::IDBOpenRequestData *a2)
{
  v42 = *MEMORY[0x1E69E9840];
  WebCore::IDBOpenRequestData::databaseIdentifier(&v29, a2);
  v4 = WebKit::NetworkStorageManager::originStorageManager(this, &v30, 1);
  atomic_fetch_add((v4 + 8), 1u);
  v5 = WebKit::OriginStorageManager::idbStorageManager(v4, *(this + 15));
  WebCore::IDBOpenRequestData::databaseIdentifier(v36, a2);
  if (v36[0] == -1)
  {
LABEL_58:
    __break(0xC471u);
    JUMPOUT(0x19DDF31E0);
  }

  if (!v36[0])
  {
    __break(0xC471u);
    JUMPOUT(0x19DDF3200);
  }

  v7 = *(v5 + 5);
  if (v7)
  {
    v8 = *(v7 - 8);
    v9 = WTF::computeHash<WebCore::IDBDatabaseIdentifier>(v36);
    for (i = 0; ; v9 = i + v12)
    {
      v12 = v9 & v8;
      v13 = (v7 + 88 * (v9 & v8));
      if (*v13 != -1)
      {
        if (!*v13)
        {
          goto LABEL_9;
        }

        if (WebCore::operator==(v7 + 88 * v12, v36, v10))
        {
          break;
        }
      }

      ++i;
    }

    v14 = v13[10];
  }

  else
  {
LABEL_9:
    v14 = 0;
  }

  if (!v41)
  {
    v15 = v40;
    v40 = 0;
    if (v15 && atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v15, v6);
    }

    v16 = v39;
    v39 = 0;
    if (v16 && atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v16, v6);
    }
  }

  v41 = -1;
  if (!v38)
  {
    v17 = v37;
    v37 = 0;
    if (v17 && atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v17, v6);
    }

    v18 = v36[1];
    v36[1] = 0;
    if (v18 && atomic_fetch_add_explicit(v18, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v18, v6);
    }
  }

  v38 = -1;
  v19 = v36[0];
  v36[0] = 0;
  if (v19 && atomic_fetch_add_explicit(v19, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v19, v6);
    if (!v14)
    {
      goto LABEL_37;
    }
  }

  else if (!v14)
  {
    goto LABEL_37;
  }

  *v36 = *(a2 + 8);
  WebCore::IDBServer::UniqueIDBDatabase::openDBRequestCancelled(v14, v36);
  if (!WebCore::IDBServer::UniqueIDBDatabase::tryClose(v14))
  {
    goto LABEL_37;
  }

  v20 = WTF::HashTable<WebCore::IDBDatabaseIdentifier,WTF::KeyValuePair<WebCore::IDBDatabaseIdentifier,std::unique_ptr<WebCore::IDBServer::UniqueIDBDatabase>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::IDBDatabaseIdentifier,std::unique_ptr<WebCore::IDBServer::UniqueIDBDatabase>>>,WTF::DefaultHash<WebCore::IDBDatabaseIdentifier>,WTF::HashMap<WebCore::IDBDatabaseIdentifier,std::unique_ptr<WebCore::IDBServer::UniqueIDBDatabase>,WTF::DefaultHash<WebCore::IDBDatabaseIdentifier>,WTF::HashTraits<WebCore::IDBDatabaseIdentifier>,WTF::HashTraits<std::unique_ptr<WebCore::IDBServer::UniqueIDBDatabase>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::IDBDatabaseIdentifier>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WebCore::IDBDatabaseIdentifier,std::unique_ptr<WebCore::IDBServer::UniqueIDBDatabase>,WTF::DefaultHash<WebCore::IDBDatabaseIdentifier>,WTF::HashTraits<WebCore::IDBDatabaseIdentifier>,WTF::HashTraits<std::unique_ptr<WebCore::IDBServer::UniqueIDBDatabase>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WebCore::IDBDatabaseIdentifier>>,(WTF::ShouldValidateKey)1,WebCore::IDBDatabaseIdentifier>(v5 + 5, v14 + 2);
  v6 = v20;
  v21 = *(v5 + 5);
  if (v21)
  {
    v22 = (v21 + 88 * *(v21 - 4));
    if (v22 == v20)
    {
      goto LABEL_37;
    }
  }

  else
  {
    if (!v20)
    {
      goto LABEL_37;
    }

    v22 = 0;
  }

  if (v22 != v20)
  {
    WTF::HashTable<WebCore::IDBDatabaseIdentifier,WTF::KeyValuePair<WebCore::IDBDatabaseIdentifier,std::unique_ptr<WebCore::IDBServer::UniqueIDBDatabase>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::IDBDatabaseIdentifier,std::unique_ptr<WebCore::IDBServer::UniqueIDBDatabase>>>,WTF::DefaultHash<WebCore::IDBDatabaseIdentifier>,WTF::HashMap<WebCore::IDBDatabaseIdentifier,std::unique_ptr<WebCore::IDBServer::UniqueIDBDatabase>,WTF::DefaultHash<WebCore::IDBDatabaseIdentifier>,WTF::HashTraits<WebCore::IDBDatabaseIdentifier>,WTF::HashTraits<std::unique_ptr<WebCore::IDBServer::UniqueIDBDatabase>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::IDBDatabaseIdentifier>,WTF::FastMalloc>::remove(v5 + 5, v20);
  }

LABEL_37:
  if (!atomic_load((v4 + 8)))
  {
    goto LABEL_58;
  }

  atomic_fetch_add((v4 + 8), 0xFFFFFFFF);
  if (!v35)
  {
    v24 = v34;
    v34 = 0;
    if (v24 && atomic_fetch_add_explicit(v24, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v24, v6);
    }

    v25 = v33;
    v33 = 0;
    if (v25 && atomic_fetch_add_explicit(v25, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v25, v6);
    }
  }

  v35 = -1;
  if (!v32)
  {
    v26 = v31;
    v31 = 0;
    if (v26 && atomic_fetch_add_explicit(v26, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v26, v6);
    }

    v27 = v30;
    v30 = 0;
    if (v27 && atomic_fetch_add_explicit(v27, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v27, v6);
    }
  }

  v32 = -1;
  result = v29;
  v29 = 0;
  if (result)
  {
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v6);
    }
  }

  return result;
}

uint64_t WebKit::NetworkStorageManager::deleteDatabase(WebKit::NetworkStorageManager *this, void **a2, const WebCore::IDBOpenRequestData *a3)
{
  v41 = *MEMORY[0x1E69E9840];
  v4 = *(a3 + 1);
  if (!v4)
  {
    __break(1u);
  }

  v6 = WebKit::IDBStorageRegistry::ensureConnectionToClient(*(this + 15), a2[3], v4);
  ++*v6;
  WebCore::IDBOpenRequestData::databaseIdentifier(&v27, a3);
  v7 = WebKit::NetworkStorageManager::originStorageManager(this, &v28, 1);
  atomic_fetch_add((v7 + 8), 1u);
  v8 = WebKit::OriginStorageManager::idbStorageManager(v7, *(this + 15));
  WebCore::IDBOpenRequestData::databaseIdentifier(&v34, a3);
  UniqueIDBDatabase = WebKit::IDBStorageManager::getOrCreateUniqueIDBDatabase(v8, &v34);
  if (!v40)
  {
    v11 = v39;
    v39 = 0;
    if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v11, v9);
    }

    v12 = v38;
    v38 = 0;
    if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v12, v9);
    }
  }

  v40 = -1;
  if (!v37)
  {
    v13 = v36;
    v36 = 0;
    if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v13, v9);
    }

    v14 = v35;
    v35 = 0;
    if (v14 && atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v14, v9);
    }
  }

  v37 = -1;
  v15 = v34;
  v34 = 0;
  if (v15 && atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v15, v9);
  }

  WebCore::IDBServer::UniqueIDBDatabase::handleDelete();
  if (WebCore::IDBServer::UniqueIDBDatabase::tryClose(UniqueIDBDatabase))
  {
    v17 = WTF::HashTable<WebCore::IDBDatabaseIdentifier,WTF::KeyValuePair<WebCore::IDBDatabaseIdentifier,std::unique_ptr<WebCore::IDBServer::UniqueIDBDatabase>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::IDBDatabaseIdentifier,std::unique_ptr<WebCore::IDBServer::UniqueIDBDatabase>>>,WTF::DefaultHash<WebCore::IDBDatabaseIdentifier>,WTF::HashMap<WebCore::IDBDatabaseIdentifier,std::unique_ptr<WebCore::IDBServer::UniqueIDBDatabase>,WTF::DefaultHash<WebCore::IDBDatabaseIdentifier>,WTF::HashTraits<WebCore::IDBDatabaseIdentifier>,WTF::HashTraits<std::unique_ptr<WebCore::IDBServer::UniqueIDBDatabase>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::IDBDatabaseIdentifier>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WebCore::IDBDatabaseIdentifier,std::unique_ptr<WebCore::IDBServer::UniqueIDBDatabase>,WTF::DefaultHash<WebCore::IDBDatabaseIdentifier>,WTF::HashTraits<WebCore::IDBDatabaseIdentifier>,WTF::HashTraits<std::unique_ptr<WebCore::IDBServer::UniqueIDBDatabase>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WebCore::IDBDatabaseIdentifier>>,(WTF::ShouldValidateKey)1,WebCore::IDBDatabaseIdentifier>(v8 + 5, UniqueIDBDatabase + 2);
    v16 = v17;
    v18 = v8[5];
    if (v18)
    {
      v19 = (v18 + 88 * *(v18 - 4));
      if (v19 == v17)
      {
        goto LABEL_27;
      }
    }

    else
    {
      if (!v17)
      {
        goto LABEL_27;
      }

      v19 = 0;
    }

    if (v19 != v17)
    {
      WTF::HashTable<WebCore::IDBDatabaseIdentifier,WTF::KeyValuePair<WebCore::IDBDatabaseIdentifier,std::unique_ptr<WebCore::IDBServer::UniqueIDBDatabase>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::IDBDatabaseIdentifier,std::unique_ptr<WebCore::IDBServer::UniqueIDBDatabase>>>,WTF::DefaultHash<WebCore::IDBDatabaseIdentifier>,WTF::HashMap<WebCore::IDBDatabaseIdentifier,std::unique_ptr<WebCore::IDBServer::UniqueIDBDatabase>,WTF::DefaultHash<WebCore::IDBDatabaseIdentifier>,WTF::HashTraits<WebCore::IDBDatabaseIdentifier>,WTF::HashTraits<std::unique_ptr<WebCore::IDBServer::UniqueIDBDatabase>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::IDBDatabaseIdentifier>,WTF::FastMalloc>::remove(v8 + 5, v17);
    }
  }

LABEL_27:
  if (atomic_load((v7 + 8)))
  {
    atomic_fetch_add((v7 + 8), 0xFFFFFFFF);
    if (!v33)
    {
      v21 = v32;
      v32 = 0;
      if (v21 && atomic_fetch_add_explicit(v21, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v21, v16);
      }

      v22 = v31;
      v31 = 0;
      if (v22 && atomic_fetch_add_explicit(v22, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v22, v16);
      }
    }

    v33 = -1;
    if (!v30)
    {
      v23 = v29;
      v29 = 0;
      if (v23 && atomic_fetch_add_explicit(v23, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v23, v16);
      }

      v24 = v28;
      v28 = 0;
      if (v24 && atomic_fetch_add_explicit(v24, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v24, v16);
      }
    }

    v30 = -1;
    v25 = v27;
    v27 = 0;
    if (v25)
    {
      if (atomic_fetch_add_explicit(v25, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v25, v16);
      }
    }

    return WTF::RefCounted<WebCore::IDBServer::IDBConnectionToClient>::deref(v6, v16);
  }

  else
  {
    result = 290;
    __break(0xC471u);
  }

  return result;
}

_DWORD *WebKit::NetworkStorageManager::establishTransaction(uint64_t a1, void *a2, const WebCore::IDBTransactionInfo *a3)
{
  result = WebKit::IDBStorageRegistry::connection(*(a1 + 120), a2);
  if (result)
  {
    v5 = result + 2;
    ++result[2];
    WebCore::IDBServer::UniqueIDBDatabaseConnection::establishTransaction(result, a3);

    return WTF::RefCounted<WebCore::IDBServer::UniqueIDBDatabaseConnection>::deref(v5);
  }

  return result;
}

_DWORD *WebKit::NetworkStorageManager::databaseConnectionPendingClose(uint64_t a1, void *a2)
{
  result = WebKit::IDBStorageRegistry::connection(*(a1 + 120), a2);
  if (result)
  {
    v3 = result + 2;
    ++result[2];
    WebCore::IDBServer::UniqueIDBDatabaseConnection::connectionPendingCloseFromClient(result);

    return WTF::RefCounted<WebCore::IDBServer::UniqueIDBDatabaseConnection>::deref(v3);
  }

  return result;
}

_DWORD *WebKit::NetworkStorageManager::databaseConnectionClosed(uint64_t a1, void *a2)
{
  result = WebKit::IDBStorageRegistry::connection(*(a1 + 120), a2);
  if (result)
  {
    v3 = result + 2;
    ++result[2];
    WebCore::IDBServer::UniqueIDBDatabaseConnection::connectionClosedFromClient(result);

    return WTF::RefCounted<WebCore::IDBServer::UniqueIDBDatabaseConnection>::deref(v3);
  }

  return result;
}

_DWORD *WebKit::NetworkStorageManager::abortOpenAndUpgradeNeeded(uint64_t a1, void *a2, uint64_t a3)
{
  if (*(a3 + 16) == 1)
  {
    v5 = WebKit::IDBStorageRegistry::transaction(*(a1 + 120), *a3, *(a3 + 8));
    if (v5)
    {
      v6 = v5 + 2;
      ++v5[2];
      WebCore::IDBServer::UniqueIDBDatabaseTransaction::abortWithoutCallback(v5);
      WTF::RefCounted<WebCore::IDBServer::UniqueIDBDatabaseTransaction>::deref(v6);
    }
  }

  result = WebKit::IDBStorageRegistry::connection(*(a1 + 120), a2);
  if (result)
  {
    v8 = result + 2;
    ++result[2];
    WebCore::IDBServer::UniqueIDBDatabaseConnection::connectionClosedFromClient(result);

    return WTF::RefCounted<WebCore::IDBServer::UniqueIDBDatabaseConnection>::deref(v8);
  }

  return result;
}

_DWORD *WebKit::NetworkStorageManager::didFireVersionChangeEvent(uint64_t a1, void *a2)
{
  result = WebKit::IDBStorageRegistry::connection(*(a1 + 120), a2);
  if (result)
  {
    v3 = result + 2;
    ++result[2];
    WebCore::IDBServer::UniqueIDBDatabaseConnection::didFireVersionChangeEvent();

    return WTF::RefCounted<WebCore::IDBServer::UniqueIDBDatabaseConnection>::deref(v3);
  }

  return result;
}

_DWORD *WebKit::NetworkStorageManager::didGenerateIndexKeyForRecord(uint64_t a1, unint64_t *a2)
{
  result = WebKit::IDBStorageRegistry::transaction(*(a1 + 120), *a2, a2[1]);
  if (result)
  {
    v3 = result + 2;
    ++result[2];
    WebCore::IDBServer::UniqueIDBDatabaseTransaction::didGenerateIndexKeyForRecord();

    return WTF::RefCounted<WebCore::IDBServer::UniqueIDBDatabaseTransaction>::deref(v3);
  }

  return result;
}

void WebKit::NetworkStorageManager::abortTransaction(WebKit::NetworkStorageManager *this, IPC::Connection *a2, const WebCore::IDBResourceIdentifier *a3)
{
  v9 = *MEMORY[0x1E69E9840];
  if (*a3)
  {
    v4 = WebKit::IDBStorageRegistry::transaction(*(this + 15), *a3, *(a3 + 1));
    if (v4)
    {
      v5 = v4 + 2;
      ++v4[2];
      WebCore::IDBServer::UniqueIDBDatabaseTransaction::abort(v4);

      WTF::RefCounted<WebCore::IDBServer::UniqueIDBDatabaseTransaction>::deref(v5);
    }
  }

  else
  {
    v6 = qword_1ED6416C8;
    if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_FAULT))
    {
      v7 = 136446210;
      v8 = "void WebKit::NetworkStorageManager::abortTransaction(IPC::Connection &, const WebCore::IDBResourceIdentifier &)";
      _os_log_fault_impl(&dword_19D52D000, v6, OS_LOG_TYPE_FAULT, "/Library/Caches/com.apple.xbs/Sources/WebKit/Source/WebKit/NetworkProcess/storage/NetworkStorageManager.cpp 1776: Invalid message dispatched %{public}s", &v7, 0xCu);
    }

    *(a2 + 94) = 1;
    if (IPC::s_shouldCrashOnMessageCheckFailure == 1)
    {
      __break(0xC471u);
    }
  }
}

void WebKit::NetworkStorageManager::commitTransaction(WebKit::NetworkStorageManager *this, IPC::Connection *a2, const WebCore::IDBResourceIdentifier *a3)
{
  v9 = *MEMORY[0x1E69E9840];
  if (*a3)
  {
    v4 = WebKit::IDBStorageRegistry::transaction(*(this + 15), *a3, *(a3 + 1));
    if (v4)
    {
      v5 = v4 + 2;
      ++v4[2];
      WebCore::IDBServer::UniqueIDBDatabaseTransaction::commit(v4);

      WTF::RefCounted<WebCore::IDBServer::UniqueIDBDatabaseTransaction>::deref(v5);
    }
  }

  else
  {
    v6 = qword_1ED6416C8;
    if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_FAULT))
    {
      v7 = 136446210;
      v8 = "void WebKit::NetworkStorageManager::commitTransaction(IPC::Connection &, const WebCore::IDBResourceIdentifier &, uint64_t)";
      _os_log_fault_impl(&dword_19D52D000, v6, OS_LOG_TYPE_FAULT, "/Library/Caches/com.apple.xbs/Sources/WebKit/Source/WebKit/NetworkProcess/storage/NetworkStorageManager.cpp 1783: Invalid message dispatched %{public}s", &v7, 0xCu);
    }

    *(a2 + 94) = 1;
    if (IPC::s_shouldCrashOnMessageCheckFailure == 1)
    {
      __break(0xC471u);
    }
  }
}

_DWORD *WebKit::NetworkStorageManager::didFinishHandlingVersionChangeTransaction(uint64_t a1, void *a2, const WebCore::IDBResourceIdentifier *a3)
{
  result = WebKit::IDBStorageRegistry::connection(*(a1 + 120), a2);
  if (result)
  {
    v5 = result + 2;
    ++result[2];
    WebCore::IDBServer::UniqueIDBDatabaseConnection::didFinishHandlingVersionChange(result, a3);

    return WTF::RefCounted<WebCore::IDBServer::UniqueIDBDatabaseConnection>::deref(v5);
  }

  return result;
}

_DWORD *WebKit::NetworkStorageManager::createObjectStore(uint64_t a1, uint64_t a2, WebCore::IDBRequestData *this)
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 120);
  v5 = WebCore::IDBRequestData::transactionIdentifier(this);
  result = WebKit::IDBStorageRegistry::transaction(v4, v5, v6);
  if (result)
  {
    v8 = result + 2;
    ++result[2];
    if (WebCore::IDBServer::UniqueIDBDatabaseTransaction::isVersionChange(result))
    {
      WebCore::IDBServer::UniqueIDBDatabaseTransaction::createObjectStore();
    }

    else
    {
      v9 = qword_1ED6416C8;
      if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_FAULT))
      {
        v10 = 136446210;
        v11 = "void WebKit::NetworkStorageManager::createObjectStore(IPC::Connection &, const WebCore::IDBRequestData &, const WebCore::IDBObjectStoreInfo &)";
        _os_log_fault_impl(&dword_19D52D000, v9, OS_LOG_TYPE_FAULT, "/Library/Caches/com.apple.xbs/Sources/WebKit/Source/WebKit/NetworkProcess/storage/NetworkStorageManager.cpp 1804: Invalid message dispatched %{public}s", &v10, 0xCu);
      }

      *(a2 + 94) = 1;
      if (IPC::s_shouldCrashOnMessageCheckFailure == 1)
      {
        __break(0xC471u);
        JUMPOUT(0x19DDF3BE8);
      }
    }

    return WTF::RefCounted<WebCore::IDBServer::UniqueIDBDatabaseTransaction>::deref(v8);
  }

  return result;
}

_DWORD *WebKit::NetworkStorageManager::deleteObjectStore(WebKit::NetworkStorageManager *this, IPC::Connection *a2, const WebCore::IDBRequestData *a3, const WTF::String *a4)
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = *(this + 15);
  v6 = WebCore::IDBRequestData::transactionIdentifier(a3);
  result = WebKit::IDBStorageRegistry::transaction(v5, v6, v7);
  if (result)
  {
    v9 = result + 2;
    ++result[2];
    if (WebCore::IDBServer::UniqueIDBDatabaseTransaction::isVersionChange(result))
    {
      WebCore::IDBServer::UniqueIDBDatabaseTransaction::deleteObjectStore();
    }

    else
    {
      v10 = qword_1ED6416C8;
      if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_FAULT))
      {
        v11 = 136446210;
        v12 = "void WebKit::NetworkStorageManager::deleteObjectStore(IPC::Connection &, const WebCore::IDBRequestData &, const String &)";
        _os_log_fault_impl(&dword_19D52D000, v10, OS_LOG_TYPE_FAULT, "/Library/Caches/com.apple.xbs/Sources/WebKit/Source/WebKit/NetworkProcess/storage/NetworkStorageManager.cpp 1814: Invalid message dispatched %{public}s", &v11, 0xCu);
      }

      *(a2 + 94) = 1;
      if (IPC::s_shouldCrashOnMessageCheckFailure == 1)
      {
        __break(0xC471u);
        JUMPOUT(0x19DDF3D28);
      }
    }

    return WTF::RefCounted<WebCore::IDBServer::UniqueIDBDatabaseTransaction>::deref(v9);
  }

  return result;
}

_DWORD *WebKit::NetworkStorageManager::renameObjectStore(uint64_t a1, uint64_t a2, WebCore::IDBRequestData *this)
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 120);
  v5 = WebCore::IDBRequestData::transactionIdentifier(this);
  result = WebKit::IDBStorageRegistry::transaction(v4, v5, v6);
  if (result)
  {
    v8 = result + 2;
    ++result[2];
    if (WebCore::IDBServer::UniqueIDBDatabaseTransaction::isVersionChange(result))
    {
      WebCore::IDBServer::UniqueIDBDatabaseTransaction::renameObjectStore();
    }

    else
    {
      v9 = qword_1ED6416C8;
      if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_FAULT))
      {
        v10 = 136446210;
        v11 = "void WebKit::NetworkStorageManager::renameObjectStore(IPC::Connection &, const WebCore::IDBRequestData &, WebCore::IDBObjectStoreIdentifier, const String &)";
        _os_log_fault_impl(&dword_19D52D000, v9, OS_LOG_TYPE_FAULT, "/Library/Caches/com.apple.xbs/Sources/WebKit/Source/WebKit/NetworkProcess/storage/NetworkStorageManager.cpp 1824: Invalid message dispatched %{public}s", &v10, 0xCu);
      }

      *(a2 + 94) = 1;
      if (IPC::s_shouldCrashOnMessageCheckFailure == 1)
      {
        __break(0xC471u);
        JUMPOUT(0x19DDF3E70);
      }
    }

    return WTF::RefCounted<WebCore::IDBServer::UniqueIDBDatabaseTransaction>::deref(v8);
  }

  return result;
}

_DWORD *WebKit::NetworkStorageManager::clearObjectStore(uint64_t a1, WebCore::IDBRequestData *this)
{
  v2 = *(a1 + 120);
  v3 = WebCore::IDBRequestData::transactionIdentifier(this);
  result = WebKit::IDBStorageRegistry::transaction(v2, v3, v4);
  if (result)
  {
    v6 = result + 2;
    ++result[2];
    WebCore::IDBServer::UniqueIDBDatabaseTransaction::clearObjectStore();

    return WTF::RefCounted<WebCore::IDBServer::UniqueIDBDatabaseTransaction>::deref(v6);
  }

  return result;
}

void WebKit::NetworkStorageManager::createIndex(uint64_t a1, uint64_t a2, WebCore::IDBRequestData *this)
{
  v17 = *MEMORY[0x1E69E9840];
  v6 = WebCore::IDBRequestData::requestIdentifier(this);
  if (v7 | v6)
  {
    v8 = *(a1 + 120);
    v9 = WebCore::IDBRequestData::transactionIdentifier(this);
    v11 = WebKit::IDBStorageRegistry::transaction(v8, v9, v10);
    if (v11)
    {
      v12 = v11 + 2;
      ++v11[2];
      if (WebCore::IDBServer::UniqueIDBDatabaseTransaction::isVersionChange(v11))
      {
        WebCore::IDBServer::UniqueIDBDatabaseTransaction::createIndex();
      }

      else
      {
        v14 = qword_1ED6416C8;
        if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_FAULT))
        {
          v15 = 136446210;
          v16 = "void WebKit::NetworkStorageManager::createIndex(IPC::Connection &, const WebCore::IDBRequestData &, const WebCore::IDBIndexInfo &)";
          _os_log_fault_impl(&dword_19D52D000, v14, OS_LOG_TYPE_FAULT, "/Library/Caches/com.apple.xbs/Sources/WebKit/Source/WebKit/NetworkProcess/storage/NetworkStorageManager.cpp 1841: Invalid message dispatched %{public}s", &v15, 0xCu);
        }

        *(a2 + 94) = 1;
        if (IPC::s_shouldCrashOnMessageCheckFailure == 1)
        {
          __break(0xC471u);
          JUMPOUT(0x19DDF4090);
        }
      }

      WTF::RefCounted<WebCore::IDBServer::UniqueIDBDatabaseTransaction>::deref(v12);
    }
  }

  else
  {
    v13 = qword_1ED6416C8;
    if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_FAULT))
    {
      v15 = 136446210;
      v16 = "void WebKit::NetworkStorageManager::createIndex(IPC::Connection &, const WebCore::IDBRequestData &, const WebCore::IDBIndexInfo &)";
      _os_log_fault_impl(&dword_19D52D000, v13, OS_LOG_TYPE_FAULT, "/Library/Caches/com.apple.xbs/Sources/WebKit/Source/WebKit/NetworkProcess/storage/NetworkStorageManager.cpp 1837: Invalid message dispatched %{public}s", &v15, 0xCu);
    }

    *(a2 + 94) = 1;
    if (IPC::s_shouldCrashOnMessageCheckFailure == 1)
    {
      __break(0xC471u);
      JUMPOUT(0x19DDF4058);
    }
  }
}

_DWORD *WebKit::NetworkStorageManager::deleteIndex(uint64_t a1, uint64_t a2, WebCore::IDBRequestData *this)
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 120);
  v5 = WebCore::IDBRequestData::transactionIdentifier(this);
  result = WebKit::IDBStorageRegistry::transaction(v4, v5, v6);
  if (result)
  {
    v8 = result + 2;
    ++result[2];
    if (WebCore::IDBServer::UniqueIDBDatabaseTransaction::isVersionChange(result))
    {
      WebCore::IDBServer::UniqueIDBDatabaseTransaction::deleteIndex();
    }

    else
    {
      v9 = qword_1ED6416C8;
      if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_FAULT))
      {
        v10 = 136446210;
        v11 = "void WebKit::NetworkStorageManager::deleteIndex(IPC::Connection &, const WebCore::IDBRequestData &, WebCore::IDBObjectStoreIdentifier, const String &)";
        _os_log_fault_impl(&dword_19D52D000, v9, OS_LOG_TYPE_FAULT, "/Library/Caches/com.apple.xbs/Sources/WebKit/Source/WebKit/NetworkProcess/storage/NetworkStorageManager.cpp 1851: Invalid message dispatched %{public}s", &v10, 0xCu);
      }

      *(a2 + 94) = 1;
      if (IPC::s_shouldCrashOnMessageCheckFailure == 1)
      {
        __break(0xC471u);
        JUMPOUT(0x19DDF4218);
      }
    }

    return WTF::RefCounted<WebCore::IDBServer::UniqueIDBDatabaseTransaction>::deref(v8);
  }

  return result;
}

_DWORD *WebKit::NetworkStorageManager::renameIndex(uint64_t a1, uint64_t a2, WebCore::IDBRequestData *this)
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 120);
  v5 = WebCore::IDBRequestData::transactionIdentifier(this);
  result = WebKit::IDBStorageRegistry::transaction(v4, v5, v6);
  if (result)
  {
    v8 = result + 2;
    ++result[2];
    if (WebCore::IDBServer::UniqueIDBDatabaseTransaction::isVersionChange(result))
    {
      WebCore::IDBServer::UniqueIDBDatabaseTransaction::renameIndex();
    }

    else
    {
      v9 = qword_1ED6416C8;
      if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_FAULT))
      {
        v10 = 136446210;
        v11 = "void WebKit::NetworkStorageManager::renameIndex(IPC::Connection &, const WebCore::IDBRequestData &, WebCore::IDBObjectStoreIdentifier, WebCore::IDBIndexIdentifier, const String &)";
        _os_log_fault_impl(&dword_19D52D000, v9, OS_LOG_TYPE_FAULT, "/Library/Caches/com.apple.xbs/Sources/WebKit/Source/WebKit/NetworkProcess/storage/NetworkStorageManager.cpp 1861: Invalid message dispatched %{public}s", &v10, 0xCu);
      }

      *(a2 + 94) = 1;
      if (IPC::s_shouldCrashOnMessageCheckFailure == 1)
      {
        __break(0xC471u);
        JUMPOUT(0x19DDF4370);
      }
    }

    return WTF::RefCounted<WebCore::IDBServer::UniqueIDBDatabaseTransaction>::deref(v8);
  }

  return result;
}

_DWORD *WebKit::NetworkStorageManager::putOrAdd(uint64_t a1, uint64_t a2, WebCore::IDBRequestData *this, uint64_t a4, uint64_t a5)
{
  v8 = *(a1 + 120);
  v9 = WebCore::IDBRequestData::transactionIdentifier(this);
  result = WebKit::IDBStorageRegistry::transaction(v8, v9, v10);
  if (result)
  {
    v12 = result + 2;
    ++result[2];
    v13 = *(a5 + 20);
    if (v13 != *(a5 + 36))
    {
      v24 = qword_1ED640BF8;
      if (!os_log_type_enabled(qword_1ED640BF8, OS_LOG_TYPE_FAULT))
      {
        return WTF::RefCounted<WebCore::IDBServer::UniqueIDBDatabaseTransaction>::deref(v12);
      }

      *buf = 0;
      v25 = "NetworkStorageManager::putOrAdd: Number of blob URLs doesn't match the number of blob file paths.";
      v26 = buf;
      goto LABEL_19;
    }

    if (v13)
    {
      v14 = WTF::HashTable<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>((a1 + 304), *(a2 + 24));
      v16 = v14;
      v17 = *(a1 + 304);
      if (v17)
      {
        v17 += 16 * *(v17 - 4);
      }

      if (v17 == v14)
      {
        v24 = qword_1ED640BF8;
        if (!os_log_type_enabled(qword_1ED640BF8, OS_LOG_TYPE_FAULT))
        {
          return WTF::RefCounted<WebCore::IDBServer::UniqueIDBDatabaseTransaction>::deref(v12);
        }

        v28 = 0;
        v25 = "NetworkStorageManager::putOrAdd: IDBValue contains blob paths but none are allowed for this process";
        v26 = &v28;
        goto LABEL_19;
      }

      v18 = *(a5 + 36);
      if (v18)
      {
        v19 = *(a5 + 24);
        for (i = 8 * v18; i; i -= 8)
        {
          v21 = WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashTraits<WTF::String>,WTF::DefaultHash<WTF::String>>,(WTF::ShouldValidateKey)1,WTF::String>((v16 + 8), v19, v15);
          v22 = *(v16 + 8);
          if (v22)
          {
            v23 = (v22 + 8 * *(v22 - 4));
            if (v23 == v21)
            {
              goto LABEL_23;
            }
          }

          else
          {
            if (!v21)
            {
LABEL_23:
              v24 = qword_1ED640BF8;
              if (!os_log_type_enabled(qword_1ED640BF8, OS_LOG_TYPE_FAULT))
              {
                return WTF::RefCounted<WebCore::IDBServer::UniqueIDBDatabaseTransaction>::deref(v12);
              }

              v27 = 0;
              v25 = "NetworkStorageManager::putOrAdd: Blob path was not created for this WebProcess";
              v26 = &v27;
LABEL_19:
              _os_log_fault_impl(&dword_19D52D000, v24, OS_LOG_TYPE_FAULT, v25, v26, 2u);
              return WTF::RefCounted<WebCore::IDBServer::UniqueIDBDatabaseTransaction>::deref(v12);
            }

            v23 = 0;
          }

          if (v23 != v21)
          {
            WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::remove((v16 + 8), v21);
          }

          ++v19;
        }
      }
    }

    WebCore::IDBServer::UniqueIDBDatabaseTransaction::putOrAdd();
    return WTF::RefCounted<WebCore::IDBServer::UniqueIDBDatabaseTransaction>::deref(v12);
  }

  return result;
}

_DWORD *WebKit::NetworkStorageManager::getRecord(uint64_t a1, WebCore::IDBRequestData *this)
{
  v2 = *(a1 + 120);
  v3 = WebCore::IDBRequestData::transactionIdentifier(this);
  result = WebKit::IDBStorageRegistry::transaction(v2, v3, v4);
  if (result)
  {
    v6 = result + 2;
    ++result[2];
    WebCore::IDBServer::UniqueIDBDatabaseTransaction::getRecord();

    return WTF::RefCounted<WebCore::IDBServer::UniqueIDBDatabaseTransaction>::deref(v6);
  }

  return result;
}

_DWORD *WebKit::NetworkStorageManager::getAllRecords(uint64_t a1, WebCore::IDBRequestData *this)
{
  v2 = *(a1 + 120);
  v3 = WebCore::IDBRequestData::transactionIdentifier(this);
  result = WebKit::IDBStorageRegistry::transaction(v2, v3, v4);
  if (result)
  {
    v6 = result + 2;
    ++result[2];
    WebCore::IDBServer::UniqueIDBDatabaseTransaction::getAllRecords();

    return WTF::RefCounted<WebCore::IDBServer::UniqueIDBDatabaseTransaction>::deref(v6);
  }

  return result;
}

_DWORD *WebKit::NetworkStorageManager::getCount(WebKit::NetworkStorageManager *this, const WebCore::IDBRequestData *a2, const WebCore::IDBKeyRangeData *a3)
{
  v3 = *(this + 15);
  v4 = WebCore::IDBRequestData::transactionIdentifier(a2);
  result = WebKit::IDBStorageRegistry::transaction(v3, v4, v5);
  if (result)
  {
    v7 = result + 2;
    ++result[2];
    WebCore::IDBServer::UniqueIDBDatabaseTransaction::getCount();

    return WTF::RefCounted<WebCore::IDBServer::UniqueIDBDatabaseTransaction>::deref(v7);
  }

  return result;
}

_DWORD *WebKit::NetworkStorageManager::deleteRecord(WebKit::NetworkStorageManager *this, const WebCore::IDBRequestData *a2, const WebCore::IDBKeyRangeData *a3)
{
  v3 = *(this + 15);
  v4 = WebCore::IDBRequestData::transactionIdentifier(a2);
  result = WebKit::IDBStorageRegistry::transaction(v3, v4, v5);
  if (result)
  {
    v7 = result + 2;
    ++result[2];
    WebCore::IDBServer::UniqueIDBDatabaseTransaction::deleteRecord();

    return WTF::RefCounted<WebCore::IDBServer::UniqueIDBDatabaseTransaction>::deref(v7);
  }

  return result;
}

_DWORD *WebKit::NetworkStorageManager::openCursor(uint64_t a1, WebCore::IDBRequestData *this)
{
  v2 = *(a1 + 120);
  v3 = WebCore::IDBRequestData::transactionIdentifier(this);
  result = WebKit::IDBStorageRegistry::transaction(v2, v3, v4);
  if (result)
  {
    v6 = result + 2;
    ++result[2];
    WebCore::IDBServer::UniqueIDBDatabaseTransaction::openCursor();

    return WTF::RefCounted<WebCore::IDBServer::UniqueIDBDatabaseTransaction>::deref(v6);
  }

  return result;
}

_DWORD *WebKit::NetworkStorageManager::iterateCursor(uint64_t a1, WebCore::IDBRequestData *this)
{
  v2 = *(a1 + 120);
  v3 = WebCore::IDBRequestData::transactionIdentifier(this);
  result = WebKit::IDBStorageRegistry::transaction(v2, v3, v4);
  if (result)
  {
    v6 = result + 2;
    ++result[2];
    WebCore::IDBServer::UniqueIDBDatabaseTransaction::iterateCursor();

    return WTF::RefCounted<WebCore::IDBServer::UniqueIDBDatabaseTransaction>::deref(v6);
  }

  return result;
}

void WebKit::NetworkStorageManager::getAllDatabaseNamesAndVersions(WebKit::NetworkStorageManager *this, void **a2, const WebCore::IDBResourceIdentifier *a3, const WebCore::ClientOrigin *a4)
{
  v70 = *MEMORY[0x1E69E9840];
  v5 = *a3;
  if (v5)
  {
    v60 = WebKit::IDBStorageRegistry::ensureConnectionToClient(*(this + 15), a2[3], v5);
    ++*v60;
    v8 = WebKit::NetworkStorageManager::originStorageManager(this, a4, 1);
    atomic_fetch_add((v8 + 8), 1u);
    v59 = v8;
    v9 = WebKit::OriginStorageManager::idbStorageManager(v8, *(this + 15));
    v61 = 0;
    v62 = 0;
    v67 = 0;
    v10 = WTF::HashTable<WebCore::IDBDatabaseIdentifier,WTF::KeyValuePair<WebCore::IDBDatabaseIdentifier,std::unique_ptr<WebCore::IDBServer::UniqueIDBDatabase>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::IDBDatabaseIdentifier,std::unique_ptr<WebCore::IDBServer::UniqueIDBDatabase>>>,WTF::DefaultHash<WebCore::IDBDatabaseIdentifier>,WTF::HashMap<WebCore::IDBDatabaseIdentifier,std::unique_ptr<WebCore::IDBServer::UniqueIDBDatabase>,WTF::DefaultHash<WebCore::IDBDatabaseIdentifier>,WTF::HashTraits<WebCore::IDBDatabaseIdentifier>,WTF::HashTraits<std::unique_ptr<WebCore::IDBServer::UniqueIDBDatabase>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::IDBDatabaseIdentifier>,WTF::FastMalloc>::begin(v9 + 5);
    v12 = v10;
    v13 = v11;
    v14 = *(v9 + 5);
    if (v14)
    {
      v15 = (v14 + 88 * *(v14 - 4));
    }

    else
    {
      v15 = 0;
    }

    if (v15 != v10)
    {
      while (1)
      {
        WebCore::IDBServer::UniqueIDBDatabase::filePath(&v65, *(v12 + 80));
        if (v65 && *(v65 + 1))
        {
          WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::add<(WTF::ShouldValidateKey)1>(&v67, &v65, v16, &buf);
        }

        WebCore::IDBServer::UniqueIDBDatabase::nameAndVersion(&buf, *(v12 + 80));
        if (v69 != 1)
        {
          goto LABEL_17;
        }

        if (HIDWORD(v62) != v62)
        {
          break;
        }

        v17 = WTF::Vector<WebCore::IDBDatabaseNameAndVersion,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(&v61, HIDWORD(v62) + 1, &buf);
        v18 = HIDWORD(v62) + 1;
        v19 = (v61 + 16 * HIDWORD(v62));
        v20 = *v17;
        *v17 = 0;
        *v19 = v20;
        v19[1] = v17[1];
        HIDWORD(v62) = v18;
        if (v69)
        {
          goto LABEL_14;
        }

LABEL_17:
        v24 = v65;
        v65 = 0;
        if (v24 && atomic_fetch_add_explicit(v24, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v24, v11);
        }

        do
        {
          v12 += 88;
        }

        while (v12 != v13 && (*v12 + 1) <= 1);
        if (v12 == v15)
        {
          goto LABEL_23;
        }
      }

      v21 = HIDWORD(v62) + 1;
      v22 = buf;
      *&buf = 0;
      *(v61 + 16 * HIDWORD(v62)) = __PAIR128__(*(&buf + 1), v22);
      HIDWORD(v62) = v21;
LABEL_14:
      v23 = buf;
      *&buf = 0;
      if (v23 && atomic_fetch_add_explicit(v23, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v23, v11);
      }

      goto LABEL_17;
    }

LABEL_23:
    WTF::FileSystemImpl::listDirectory(&v65, (v9 + 16), v11);
    if (v66)
    {
      v26 = v65;
      v27 = (v65 + 8 * v66);
      do
      {
        v28 = *v26;
        if (*v26)
        {
          atomic_fetch_add_explicit(v28, 2u, memory_order_relaxed);
        }

        v29 = *(v9 + 2);
        if (v29)
        {
          v30 = *(v29 + 16);
          v29 = *(v29 + 4);
          v31 = ((v30 >> 2) & 1) << 32;
          if (v28)
          {
            goto LABEL_29;
          }
        }

        else
        {
          v31 = 0x100000000;
          if (v28)
          {
LABEL_29:
            v32 = v28[1];
            v33 = ((v28[4] >> 2) & 1) << 32;
            goto LABEL_30;
          }
        }

        v32 = 0;
        v33 = 0x100000000;
LABEL_30:
        v13 = v29 | v13 & 0xFFFFFF0000000000 | v31;
        v12 = v32 | v12 & 0xFFFFFF0000000000 | v33;
        WTF::FileSystemImpl::pathByAppendingComponent();
        WebCore::IDBServer::SQLiteIDBBackingStore::fullDatabasePathForDirectory(&v63, &v64, v34);
        v36 = v67;
        if (v67)
        {
          if (v63 == -1)
          {
            __break(0xC471u);
            JUMPOUT(0x19DDF4E84);
          }

          if (!v63)
          {
            __break(0xC471u);
            JUMPOUT(0x19DDF4EA4);
          }

          v46 = *(v67 - 2);
          v47 = *(v63 + 4);
          v58 = v46;
          if (v47 < 0x100)
          {
            v48 = WTF::StringImpl::hashSlowCase(v63);
            v46 = v58;
          }

          else
          {
            v48 = v47 >> 8;
          }

          for (i = 0; ; v48 = i + v50)
          {
            v50 = v48 & v46;
            v51 = v36[v48 & v46];
            if (v51 != -1)
            {
              if (!v51)
              {
                goto LABEL_31;
              }

              v52 = WTF::equal(v51, v63, v35);
              v46 = v58;
              if (v52)
              {
                break;
              }
            }

            ++i;
          }
        }

        else
        {
LABEL_31:
          WebCore::IDBServer::SQLiteIDBBackingStore::databaseNameAndVersionFromFile(&buf, &v63, v25);
          if (v69 == 1)
          {
            if (HIDWORD(v62) == v62)
            {
              v37 = WTF::Vector<WebCore::IDBDatabaseNameAndVersion,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(&v61, HIDWORD(v62) + 1, &buf);
              v38 = HIDWORD(v62) + 1;
              v39 = (v61 + 16 * HIDWORD(v62));
              v40 = *v37;
              *v37 = 0;
              *v39 = v40;
              v39[1] = v37[1];
              HIDWORD(v62) = v38;
              if ((v69 & 1) == 0)
              {
                goto LABEL_39;
              }
            }

            else
            {
              v41 = HIDWORD(v62) + 1;
              v42 = buf;
              *&buf = 0;
              *(v61 + 16 * HIDWORD(v62)) = __PAIR128__(*(&buf + 1), v42);
              HIDWORD(v62) = v41;
            }

            v43 = buf;
            *&buf = 0;
            if (v43 && atomic_fetch_add_explicit(v43, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v43, v25);
            }
          }
        }

LABEL_39:
        v44 = v63;
        v63 = 0;
        if (v44 && atomic_fetch_add_explicit(v44, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v44, v25);
        }

        v45 = v64;
        v64 = 0;
        if (v45 && atomic_fetch_add_explicit(v45, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v45, v25);
          if (v28)
          {
LABEL_45:
            if (atomic_fetch_add_explicit(v28, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v28, v25);
            }
          }
        }

        else if (v28)
        {
          goto LABEL_45;
        }

        v26 = (v26 + 8);
      }

      while (v26 != v27);
    }

    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v65, v25);
    if (v67)
    {
      WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v67, v53);
    }

    if (atomic_load((v59 + 8)))
    {
      atomic_fetch_add((v59 + 8), 0xFFFFFFFF);
      WebCore::IDBServer::IDBConnectionToClient::didGetAllDatabaseNamesAndVersions();
      WTF::Vector<WebCore::SpeechRecognitionAlternativeData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v61, v55);
      WTF::RefCounted<WebCore::IDBServer::IDBConnectionToClient>::deref(v60, v56);
      return;
    }

    __break(0xC471u);
LABEL_74:
    JUMPOUT(0x19DDF4E20);
  }

  v57 = qword_1ED6416C8;
  if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_FAULT))
  {
    LODWORD(buf) = 136446210;
    *(&buf + 4) = "void WebKit::NetworkStorageManager::getAllDatabaseNamesAndVersions(IPC::Connection &, const WebCore::IDBResourceIdentifier &, const WebCore::ClientOrigin &)";
    _os_log_fault_impl(&dword_19D52D000, v57, OS_LOG_TYPE_FAULT, "/Library/Caches/com.apple.xbs/Sources/WebKit/Source/WebKit/NetworkProcess/storage/NetworkStorageManager.cpp 1939: Invalid message dispatched %{public}s", &buf, 0xCu);
  }

  *(a2 + 94) = 1;
  if (IPC::s_shouldCrashOnMessageCheckFailure == 1)
  {
    __break(0xC471u);
    goto LABEL_74;
  }
}

uint64_t WebKit::NetworkStorageManager::cacheStorageOpenCache(uint64_t *a1, WebCore::SecurityOriginData *a2, const WTF::StringImpl **a3, uint64_t *a4)
{
  v8 = WebKit::NetworkStorageManager::originStorageManager(a1, a2, 1);
  atomic_fetch_add(v8 + 2, 1u);
  v9 = a1[16];
  v10 = a1[4];
  while (1)
  {
    v11 = *(v10 + 32);
    if ((v11 & 1) == 0)
    {
      break;
    }

    v12 = *(v10 + 32);
    atomic_compare_exchange_strong_explicit((v10 + 32), &v12, v11 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v12 == v11)
    {
      goto LABEL_6;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*(v10 + 32));
LABEL_6:
  v18 = v10;
  v13 = WebKit::OriginStorageManager::cacheStorageManager(v8, v9, a2, &v18);
  v14 = (v13 + 8);
  ++*(v13 + 8);
  WebKit::CacheStorageManager::openCache(v13, a3, a4);
  WTF::RefCounted<WebKit::CacheStorageManager>::deref(v14, v15);
  result = v18;
  v18 = 0;
  if (result)
  {
    result = (*(*result + 40))(result);
  }

  if (atomic_load(v8 + 2))
  {
    atomic_fetch_add(v8 + 2, 0xFFFFFFFF);
  }

  else
  {
    result = 290;
    __break(0xC471u);
  }

  return result;
}

_DWORD *WebKit::NetworkStorageManager::cacheStorageRemoveCache(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v7 = WebKit::CacheStorageRegistry::cache(*(a1 + 128), a2, a3);
  if (v7)
  {
    v8 = (v7 + 8);
    ++*(v7 + 8);
    v9 = *(v7 + 32);
    if (v9 && (v10 = *(v9 + 8)) != 0)
    {
      v11 = (v10 + 8);
      ++*(v10 + 8);
      WebKit::CacheStorageManager::removeCache(v10, a2, a3, a4);
      WTF::RefCounted<WebKit::CacheStorageManager>::deref(v11, v12);
    }

    else
    {
      v17 = 260;
      v14 = *a4;
      *a4 = 0;
      (*(*v14 + 16))(v14, &v17);
      (*(*v14 + 8))(v14);
    }

    return WTF::RefCounted<WebKit::CacheStorageCache>::deref(v8, v13);
  }

  else
  {
    v18 = 260;
    v16 = *a4;
    *a4 = 0;
    (*(*v16 + 16))(v16, &v18);
    return (*(*v16 + 8))(v16);
  }
}

uint64_t WebKit::NetworkStorageManager::cacheStorageAllCaches(uint64_t *a1, WebCore::SecurityOriginData *a2, void *a3, uint64_t *a4)
{
  v8 = WebKit::NetworkStorageManager::originStorageManager(a1, a2, 1);
  atomic_fetch_add(v8 + 2, 1u);
  v9 = a1[16];
  v10 = a1[4];
  while (1)
  {
    v11 = *(v10 + 32);
    if ((v11 & 1) == 0)
    {
      break;
    }

    v12 = *(v10 + 32);
    atomic_compare_exchange_strong_explicit((v10 + 32), &v12, v11 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v12 == v11)
    {
      goto LABEL_6;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*(v10 + 32));
LABEL_6:
  v18 = v10;
  v13 = WebKit::OriginStorageManager::cacheStorageManager(v8, v9, a2, &v18);
  v14 = (v13 + 8);
  ++*(v13 + 8);
  WebKit::CacheStorageManager::allCaches(v13, a3, a4);
  WTF::RefCounted<WebKit::CacheStorageManager>::deref(v14, v15);
  result = v18;
  v18 = 0;
  if (result)
  {
    result = (*(*result + 40))(result);
  }

  if (atomic_load(v8 + 2))
  {
    atomic_fetch_add(v8 + 2, 0xFFFFFFFF);
  }

  else
  {
    result = 290;
    __break(0xC471u);
  }

  return result;
}

_DWORD *WebKit::NetworkStorageManager::cacheStorageReference(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = WebKit::CacheStorageRegistry::cache(*(a1 + 128), a3, a4);
  if (result)
  {
    v9 = result + 2;
    ++result[2];
    v10 = *(result + 4);
    if (v10)
    {
      v11 = *(v10 + 8);
      if (v11)
      {
        v12 = (v11 + 8);
        ++*(v11 + 8);
        WebKit::CacheStorageManager::reference(v11, *(a2 + 24), a3, a4);
        WTF::RefCounted<WebKit::CacheStorageManager>::deref(v12, v13);
      }
    }

    return WTF::RefCounted<WebKit::CacheStorageCache>::deref(v9, v8);
  }

  return result;
}

_DWORD *WebKit::NetworkStorageManager::cacheStorageDereference(uint64_t a1, uint64_t a2, WTF::StringImpl *a3, uint64_t a4)
{
  result = WebKit::CacheStorageRegistry::cache(*(a1 + 128), a3, a4);
  if (result)
  {
    v9 = result + 2;
    ++result[2];
    v10 = *(result + 4);
    if (v10)
    {
      v11 = *(v10 + 8);
      if (v11)
      {
        v12 = (v11 + 8);
        ++*(v11 + 8);
        WebKit::CacheStorageManager::dereference(v11, *(a2 + 24), a3, a4);
        WTF::RefCounted<WebKit::CacheStorageManager>::deref(v12, v13);
      }
    }

    return WTF::RefCounted<WebKit::CacheStorageCache>::deref(v9, v8);
  }

  return result;
}

uint64_t WebKit::NetworkStorageManager::lockCacheStorage(WebKit::NetworkStorageManager *this, IPC::Connection *a2, const WebCore::ClientOrigin *a3)
{
  v6 = WebKit::NetworkStorageManager::originStorageManager(this, a3, 1);
  atomic_fetch_add(v6 + 2, 1u);
  v7 = *(this + 16);
  v8 = *(this + 4);
  while (1)
  {
    v9 = *(v8 + 32);
    if ((v9 & 1) == 0)
    {
      break;
    }

    v10 = *(v8 + 32);
    atomic_compare_exchange_strong_explicit((v8 + 32), &v10, v9 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v10 == v9)
    {
      goto LABEL_6;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*(v8 + 32));
LABEL_6:
  v16 = v8;
  v11 = WebKit::OriginStorageManager::cacheStorageManager(v6, v7, a3, &v16);
  v12 = (v11 + 8);
  ++*(v11 + 8);
  v18 = *(a2 + 3);
  WTF::HashTable<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::add<(WTF::ShouldValidateKey)1>((v11 + 120), &v18, v17);
  WTF::RefCounted<WebKit::CacheStorageManager>::deref(v12, v13);
  result = v16;
  v16 = 0;
  if (result)
  {
    result = (*(*result + 40))(result);
  }

  if (atomic_load(v6 + 2))
  {
    atomic_fetch_add(v6 + 2, 0xFFFFFFFF);
  }

  else
  {
    result = 290;
    __break(0xC471u);
  }

  return result;
}

uint64_t WebKit::NetworkStorageManager::unlockCacheStorage(WebKit::NetworkStorageManager *this, IPC::Connection *a2, const WebCore::ClientOrigin *a3)
{
  v4 = WebKit::NetworkStorageManager::originStorageManager(this, a3, 1);
  v5 = (v4 + 2);
  atomic_fetch_add(v4 + 2, 1u);
  result = WebKit::OriginStorageManager::defaultBucket(v4)[11];
  if (!result)
  {
    if (atomic_load(v5))
    {
      atomic_fetch_add(v4 + 2, 0xFFFFFFFF);
      return result;
    }

    goto LABEL_8;
  }

  v7 = (result + 8);
  ++*(result + 8);
  if (!atomic_load(v5))
  {
LABEL_8:
    result = 290;
    __break(0xC471u);
    return result;
  }

  atomic_fetch_add(v4 + 2, 0xFFFFFFFF);
  WebKit::CacheStorageManager::unlockStorage(result, *(a2 + 3));

  return WTF::RefCounted<WebKit::CacheStorageManager>::deref(v7, v9);
}

_DWORD *WebKit::NetworkStorageManager::cacheStorageRetrieveRecords(uint64_t a1, uint64_t a2, uint64_t a3, WebCore::ResourceRequestBase *a4, uint64_t *a5)
{
  v7 = WebKit::CacheStorageRegistry::cache(*(a1 + 128), a2, a3);
  if (v7)
  {
    v8 = (v7 + 8);
    ++*(v7 + 8);
    WebKit::CacheStorageCache::retrieveRecords(v7, a4, a5);

    return WTF::RefCounted<WebKit::CacheStorageCache>::deref(v8, v9);
  }

  else
  {
    v13[0] = 4;
    v14 = 1;
    v11 = *a5;
    *a5 = 0;
    (*(*v11 + 16))(v11, v13);
    result = (*(*v11 + 8))(v11);
    if (!v14)
    {
      return WTF::Vector<WebCore::DOMCacheEngine::CrossThreadRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v13, v12);
    }
  }

  return result;
}

WTF *WebKit::NetworkStorageManager::cacheStorageRemoveRecords(uint64_t a1, uint64_t a2, uint64_t a3, WebCore::ResourceRequestBase *a4, uint64_t a5, uint64_t *a6)
{
  v9 = WebKit::CacheStorageRegistry::cache(*(a1 + 128), a2, a3);
  if (v9)
  {
    v10 = (v9 + 8);
    ++*(v9 + 8);
    WebKit::CacheStorageCache::removeRecords(v9, a4, a5, a6);

    return WTF::RefCounted<WebKit::CacheStorageCache>::deref(v10, v11);
  }

  else
  {
    LOBYTE(v15) = 4;
    v17 = 1;
    v13 = *a6;
    *a6 = 0;
    (*(*v13 + 16))(v13, &v15);
    result = (*(*v13 + 8))(v13);
    if (!v17)
    {
      result = v15;
      if (v15)
      {
        v15 = 0;
        v16 = 0;
        return WTF::fastFree(result, v14);
      }
    }
  }

  return result;
}

void WebKit::NetworkStorageManager::cacheStoragePutRecords(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, WTF::StringImpl **a6)
{
  v25 = *MEMORY[0x1E69E9840];
  v9 = WebKit::CacheStorageRegistry::cache(*(a1 + 128), a3, a4);
  if (v9)
  {
    v10 = v9;
    v11 = (v9 + 8);
    ++*(v9 + 8);
    v12 = *(a5 + 12);
    if (v12)
    {
      v13 = *a5 + 584;
      v14 = 608 * v12;
      while (1)
      {
        v15 = *(v13 + 16);
        if (v15 < WebKit::CacheStorageDiskStore::computeRealBodySizeForStorage(v13))
        {
          break;
        }

        v13 += 608;
        v14 -= 608;
        if (!v14)
        {
          goto LABEL_6;
        }
      }

      v17 = qword_1ED6416C8;
      if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_FAULT))
      {
        LODWORD(v23[0]) = 136446210;
        *(v23 + 4) = "void WebKit::NetworkStorageManager::cacheStoragePutRecords(IPC::Connection &, WebCore::DOMCacheIdentifier, Vector<WebCore::DOMCacheEngine::CrossThreadRecord> &&, WebCore::DOMCacheEngine::RecordIdentifiersCallback &&)";
        _os_log_fault_impl(&dword_19D52D000, v17, OS_LOG_TYPE_FAULT, "/Library/Caches/com.apple.xbs/Sources/WebKit/Source/WebKit/NetworkProcess/storage/NetworkStorageManager.cpp 2030: Invalid message dispatched %{public}s", v23, 0xCu);
      }

      *(a2 + 94) = 1;
      if (IPC::s_shouldCrashOnMessageCheckFailure == 1)
      {
        __break(0xC471u);
        return;
      }

      LOBYTE(v23[0]) = 4;
      v24 = 1;
      v18 = *a6;
      *a6 = 0;
      (*(*v18 + 16))(v18, v23);
      (*(*v18 + 8))(v18);
      if (!v24)
      {
        v19 = v23[0];
        if (v23[0])
        {
          memset(v23, 0, 12);
          WTF::fastFree(v19, v16);
        }
      }
    }

    else
    {
LABEL_6:
      WebKit::CacheStorageCache::putRecords(v10, a5, a6);
    }

    WTF::RefCounted<WebKit::CacheStorageCache>::deref(v11, v16);
  }

  else
  {
    LOBYTE(v23[0]) = 4;
    v24 = 1;
    v20 = *a6;
    *a6 = 0;
    (*(*v20 + 16))(v20, v23);
    (*(*v20 + 8))(v20);
    if (!v24)
    {
      v22 = v23[0];
      if (v23[0])
      {
        memset(v23, 0, 12);
        WTF::fastFree(v22, v21);
      }
    }
  }
}

uint64_t WebKit::NetworkStorageManager::cacheStorageClearMemoryRepresentation(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = WTF::HashTable<WebCore::ClientOrigin,WTF::KeyValuePair<WebCore::ClientOrigin,std::unique_ptr<WebKit::OriginStorageManager>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ClientOrigin,std::unique_ptr<WebKit::OriginStorageManager>>>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashMap<WebCore::ClientOrigin,std::unique_ptr<WebKit::OriginStorageManager>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::HashTraits<std::unique_ptr<WebKit::OriginStorageManager>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ClientOrigin>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WebCore::ClientOrigin,std::unique_ptr<WebKit::OriginStorageManager>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::HashTraits<std::unique_ptr<WebKit::OriginStorageManager>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WebCore::ClientOrigin>>,(WTF::ShouldValidateKey)1,WebCore::ClientOrigin>((a1 + 72), a2);
  v7 = *(a1 + 72);
  if (v7)
  {
    v7 += 72 * *(v7 - 4);
  }

  if (v7 != v5)
  {
    v8 = *(v5 + 64);
    atomic_fetch_add((v8 + 8), 1u);
    if (!v8)
    {
      goto LABEL_13;
    }

    v9 = *(v8 + 16);
    if (v9)
    {
      v10 = *(v9 + 88);
      *(v9 + 88) = 0;
      if (v10)
      {
        WTF::RefCounted<WebKit::CacheStorageManager>::deref((v10 + 8), v6);
      }
    }

    if (!atomic_load((v8 + 8)))
    {
LABEL_13:
      __break(0xC471u);
      JUMPOUT(0x19DDF5BB8);
    }

    atomic_fetch_add((v8 + 8), 0xFFFFFFFF);
  }

  v12 = *a3;
  *a3 = 0;
  (*(*v12 + 16))(v12);
  v13 = *(*v12 + 8);

  return v13(v12);
}

uint64_t WebKit::NetworkStorageManager::cacheStorageRepresentation(uint64_t *a1, uint64_t *a2)
{
  v2 = a1;
  v98 = 0;
  v99 = 0;
  WebKit::NetworkStorageManager::getAllOrigins(&v97, a1);
  v4 = WTF::HashTable<WebCore::ClientOrigin,WebCore::ClientOrigin,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::FastMalloc>::begin(&v97);
  v5 = v3;
  v6 = 0;
  v7 = v97;
  if (v97)
  {
LABEL_115:
    v6 = v7 + 64 * *(v7 - 1);
  }

  if (v6 != v4)
  {
    v81 = v6;
    v82 = v2;
    while (1)
    {
      v8 = WebKit::NetworkStorageManager::originStorageManager(v2, v4, 1);
      atomic_fetch_add(v8 + 2, 1u);
      v9 = WebKit::OriginStorageManager::defaultBucket(v8);
      WebKit::OriginStorageManager::StorageBucket::fetchDataTypesInList(v9, 0x8000u, 0, &v96);
      v11 = v96;
      if (v96)
      {
        break;
      }

LABEL_87:
      if (!atomic_load(v8 + 2))
      {
        goto LABEL_116;
      }

      atomic_fetch_add(v8 + 2, 0xFFFFFFFF);
      WebKit::NetworkStorageManager::removeOriginStorageManagerIfPossible(v2, v4);
      do
      {
        v4 += 64;
      }

      while (v4 != v5 && WTF::HashTable<WebCore::ClientOrigin,WTF::KeyValuePair<WebCore::ClientOrigin,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ClientOrigin,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashMap<WebCore::ClientOrigin,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::HashTraits<WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ClientOrigin>,WTF::FastMalloc>::isEmptyOrDeletedBucket(v4));
      if (v4 == v6)
      {
        v7 = v97;
        goto LABEL_97;
      }
    }

    if (!*(v96 - 12))
    {
LABEL_86:
      WTF::fastFree((v11 - 16), v10);
      goto LABEL_87;
    }

    WebCore::SecurityOriginData::toString(&v95, v4);
    WebCore::SecurityOriginData::toString(&v94, (v4 + 32));
    v12 = v2[16];
    v13 = v2[4];
    while (1)
    {
      v14 = *(v13 + 32);
      if ((v14 & 1) == 0)
      {
        break;
      }

      v15 = *(v13 + 32);
      atomic_compare_exchange_strong_explicit((v13 + 32), &v15, v14 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v15 == v14)
      {
        goto LABEL_11;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*(v13 + 32));
LABEL_11:
    v92 = v13;
    v16 = WebKit::OriginStorageManager::cacheStorageManager(v8, v12, v4, &v92);
    v83 = v16 + 2;
    ++v16[2];
    WebKit::CacheStorageManager::representationString(v16, &v93);
    v17 = v94;
    v18 = v95;
    v19 = v93;
    if (v95)
    {
      v20 = *(v95 + 1);
      if (v94)
      {
LABEL_13:
        v21 = *(v94 + 1);
        goto LABEL_14;
      }
    }

    else
    {
      v20 = 0;
      if (v94)
      {
        goto LABEL_13;
      }
    }

    v21 = 0;
LABEL_14:
    v84 = v93;
    if (v93 && (v19 = *(v93 + 1), v19 < 0) || (v22 = __OFADD__(v19, 1), v23 = v19 + 1, v22) || ((v22 = __OFADD__(v23, 16), v24 = v23 + 16, !v22) ? (v25 = 0) : (v25 = 1), v21 < 0 || (v25 & 1) != 0 || (v22 = __OFADD__(v21, v24), v26 = v21 + v24, v22) || ((v22 = __OFADD__(v26, 20), v27 = v26 + 20, !v22) ? (v28 = 0) : (v28 = 1), v20 < 0 || (v28 & 1) != 0 || (v22 = __OFADD__(v20, v27), v29 = v20 + v27, v22) || (v30 = v29 + 31, __OFADD__(v29, 31)))))
    {
LABEL_116:
      __break(0xC471u);
      JUMPOUT(0x19DDF63B0);
    }

    if ((!v95 || (*(v95 + 16) & 4) != 0) && (!v94 || (*(v94 + 16) & 4) != 0) && (!v93 || (*(v93 + 16) & 4) != 0))
    {
      if (v29 != -31)
      {
        if ((v30 & 0x80000000) != 0)
        {
          goto LABEL_116;
        }

        v2 = v30;
        v7 = WTF::tryFastCompactMalloc((v30 + 20));
        v31 = v88;
        if (!v88)
        {
          goto LABEL_116;
        }

        *v88 = 2;
        *(v31 + 1) = v30;
        *(v31 + 1) = v31 + 20;
        *(v31 + 4) = 4;
        qmemcpy(v31 + 20, "\n{ origin : { topOrigin : ", 31);
        if (v30 <= 0x1E || (v52 = v30 - 31, v86 = v18, v7 = WTF::StringTypeAdapter<WTF::StringImpl *,void>::writeTo<unsigned char>(&v86, v31 + 51), (v53 = v86) != 0) && (v53 = *(v86 + 1), v52 < v53) || (v54 = v52 - v53, v55 = &v53[v31 + 51], *v55 = *", clientOrigin: ", *(v55 + 4) = 572537378, v54 <= 0x13) || (v56 = v54 - 20, v57 = v55 + 20, v88 = v17, v7 = WTF::StringTypeAdapter<WTF::StringImpl *,void>::writeTo<unsigned char>(&v88, v55 + 20), (v58 = v88) != 0) && (v58 = *(v88 + 1), v56 < v58) || (v59 = v56 - v58, v60 = &v57[v58], *v60 = *" }, caches : ", v59 <= 0xF))
        {
LABEL_114:
          __break(1u);
          goto LABEL_115;
        }

        WTF::stringTypeAdapterAccumulator<unsigned char,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<char,void>>(v60 + 16, v59 - 16, v84, 125);
        goto LABEL_56;
      }
    }

    else if (v29 != -31)
    {
      if (v30 > 0x7FFFFFEF)
      {
        goto LABEL_116;
      }

      v2 = v30;
      v7 = WTF::tryFastCompactMalloc((2 * v30 + 20));
      v31 = v88;
      if (!v88)
      {
        goto LABEL_116;
      }

      *v88 = 2;
      *(v31 + 1) = v30;
      *(v31 + 1) = v31 + 20;
      *(v31 + 4) = 0;
      v32 = "\n{ origin : { topOrigin : ";
      for (i = 20; i != 82; i += 2)
      {
        v34 = *v32++;
        *(v31 + i) = v34;
      }

      if (v30 <= 0x1E)
      {
        goto LABEL_114;
      }

      v35 = v30 - 31;
      v85[0] = v18;
      v7 = WTF::StringTypeAdapter<WTF::StringImpl *,void>::writeTo<char16_t>(v85, v31 + 82);
      if (v85[0])
      {
        v36 = *(v85[0] + 4);
        if (v35 < v36)
        {
          goto LABEL_114;
        }
      }

      else
      {
        v36 = 0;
      }

      v37 = 0;
      v38 = v31 + 2 * v36 + 82;
      v39 = ", clientOrigin: ";
      do
      {
        v40 = *v39++;
        *(v38 + v37) = v40;
        v37 += 2;
      }

      while (v37 != 40);
      if (v35 - v36 <= 0x13)
      {
        goto LABEL_114;
      }

      v41 = v38 + 40;
      v42 = v35 - v36 - 20;
      v86 = v17;
      v7 = WTF::StringTypeAdapter<WTF::StringImpl *,void>::writeTo<char16_t>(&v86, (v38 + 40));
      v43 = v86;
      if (v86)
      {
        v43 = *(v86 + 1);
        if (v42 < v43)
        {
          goto LABEL_114;
        }
      }

      v44 = 0;
      v45 = v41 + 2 * v43;
      v46 = " }, caches : ";
      do
      {
        v47 = *v46++;
        *(v31 + 2 * v36 + 2 * v43 + v44 + 122) = v47;
        v44 += 2;
      }

      while (v44 != 32);
      v48 = v42 - v43;
      if (v48 <= 0xF)
      {
        goto LABEL_114;
      }

      v49 = v45 + 32;
      v50 = (v48 - 16);
      v88 = v84;
      v7 = WTF::StringTypeAdapter<WTF::StringImpl *,void>::writeTo<char16_t>(&v88, (v45 + 32));
      v51 = v88;
      if (v88)
      {
        v51 = *(v88 + 1);
        if (v50 < v51)
        {
          goto LABEL_114;
        }
      }

      if (v50 == v51)
      {
        goto LABEL_114;
      }

      *(v49 + 2 * v51) = 125;
LABEL_56:
      v6 = v81;
      v2 = v82;
      goto LABEL_69;
    }

    v31 = MEMORY[0x1E696EB88];
    atomic_fetch_add_explicit(MEMORY[0x1E696EB88], 2u, memory_order_relaxed);
LABEL_69:
    v88 = v31;
    LODWORD(v61) = HIDWORD(v99);
    if (HIDWORD(v99) == v99)
    {
      v68 = WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(&v98, HIDWORD(v99) + 1, &v88);
      v61 = HIDWORD(v99);
      v69 = v98;
      v70 = *v68;
      *v68 = 0;
      *(v69 + 8 * v61) = v70;
    }

    else
    {
      v88 = 0;
      v98[HIDWORD(v99)] = v31;
    }

    HIDWORD(v99) = v61 + 1;
    v62 = v88;
    v88 = 0;
    if (v62 && atomic_fetch_add_explicit(v62, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v62, v3);
    }

    v63 = v93;
    v93 = 0;
    if (v63 && atomic_fetch_add_explicit(v63, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v63, v3);
    }

    WTF::RefCounted<WebKit::CacheStorageManager>::deref(v83, v3);
    v64 = v92;
    v92 = 0;
    if (v64)
    {
      (*(*v64 + 40))(v64);
    }

    v65 = v94;
    v94 = 0;
    if (v65 && atomic_fetch_add_explicit(v65, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v65, v10);
    }

    v66 = v95;
    v95 = 0;
    if (v66 && atomic_fetch_add_explicit(v66, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v66, v10);
    }

    v11 = v96;
    if (!v96)
    {
      goto LABEL_87;
    }

    goto LABEL_86;
  }

LABEL_97:
  if (v7)
  {
    WTF::HashTable<WebCore::ClientOrigin,WebCore::ClientOrigin,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::FastMalloc>::deallocateTable(v7, v3);
  }

  v88 = WTF::codePointCompareLessThan;
  v71 = 126 - 2 * __clz(HIDWORD(v99));
  if (HIDWORD(v99))
  {
    v72 = v71;
  }

  else
  {
    v72 = 0;
  }

  std::__introsort<std::_RangeAlgPolicy,BOOL (*&)(WTF::String const&,WTF::String const&),WTF::String*,false>(v98, &v98[HIDWORD(v99)], &v88, v72, 1);
  v88 = 0;
  v89 = 0;
  v90 = 0;
  v91 = 1;
  v86 = "{ path: ";
  v87 = 12;
  v85[0] = ", origins: [";
  v85[1] = 16;
  WTF::StringBuilder::append<WTF::ASCIILiteral,WTF::String,WTF::ASCIILiteral>(&v88, &v86, v2 + 20, v85);
  v86 = "";
  v87 = 1;
  if (HIDWORD(v99))
  {
    v73 = v98;
    v74 = 8 * HIDWORD(v99);
    do
    {
      WTF::StringBuilder::append<WTF::ASCIILiteral,WTF::String>(&v88, &v86, v73);
      v86 = ",";
      v87 = 2;
      ++v73;
      v74 -= 8;
    }

    while (v74);
  }

  WTF::StringBuilder::append();
  if (!v88)
  {
    WTF::StringBuilder::shrinkToFit(&v88);
    WTF::StringBuilder::reifyString(&v88);
  }

  v75 = *a2;
  *a2 = 0;
  (*(*v75 + 16))(v75, &v88);
  (*(*v75 + 8))(v75);
  v77 = v89;
  v89 = 0;
  if (v77 && atomic_fetch_add_explicit(v77, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v77, v76);
  }

  v78 = v88;
  v88 = 0;
  if (v78 && atomic_fetch_add_explicit(v78, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v78, v76);
  }

  return WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v98, v76);
}

uint64_t WebKit::NetworkStorageManager::dispatchTaskToBackgroundFetchManager(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v32 = *MEMORY[0x1E69E9840];
  if (*(a1 + 64) == 1)
  {
    v4 = *(**a3 + 16);

    return v4();
  }

  v7 = *(a1 + 32);
  v22 = a1;
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
      v10 = v7;
      goto LABEL_10;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*(a1 + 8));
  v10 = *(a1 + 32);
LABEL_10:
  v23 = a1;
  while (1)
  {
    v11 = *(v10 + 32);
    if ((v11 & 1) == 0)
    {
      break;
    }

    v12 = *(v10 + 32);
    atomic_compare_exchange_strong_explicit((v10 + 32), &v12, v11 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v12 == v11)
    {
      goto LABEL_15;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*(v10 + 32));
LABEL_15:
  v24 = v10;
  WebCore::SecurityOriginData::isolatedCopy();
  WebCore::SecurityOriginData::isolatedCopy();
  v13 = *a3;
  *a3 = 0;
  v31 = v13;
  v14 = WTF::fastMalloc(0x68);
  v15 = v22;
  *v14 = &unk_1F110B4E0;
  *(v14 + 8) = v15;
  *(v14 + 16) = v23;
  v16 = v24;
  v23 = 0;
  v24 = 0;
  *(v14 + 24) = v16;
  *(v14 + 32) = 0;
  *(v14 + 56) = -1;
  if (!v27)
  {
    *(v14 + 32) = v25;
    v17 = *(&v25 + 1);
    v25 = 0uLL;
    *(v14 + 40) = v17;
    *(v14 + 48) = v26;
LABEL_17:
    *(v14 + 56) = v27;
    goto LABEL_18;
  }

  if (v27 != 255)
  {
    *(v14 + 32) = v25;
    goto LABEL_17;
  }

LABEL_18:
  *(v14 + 64) = 0;
  *(v14 + 88) = -1;
  if (v30)
  {
    if (v30 == 255)
    {
      goto LABEL_21;
    }

    *(v14 + 64) = v28;
  }

  else
  {
    *(v14 + 64) = v28;
    v18 = *(&v28 + 1);
    v28 = 0uLL;
    *(v14 + 72) = v18;
    *(v14 + 80) = v29;
  }

  *(v14 + 88) = v30;
LABEL_21:
  v19 = v31;
  v31 = 0;
  *(v14 + 96) = v19;
  v21 = v14;
  WTF::SuspendableWorkQueue::dispatch();
  if (v21)
  {
    (*(*v21 + 8))(v21);
  }

  return WebKit::NetworkStorageManager::dispatchTaskToBackgroundFetchManager(WebCore::ClientOrigin const&,WTF::Function<void ()(WebKit::BackgroundFetchStoreManager *)> &&)::$_0::~$_0(&v22, v20);
}

uint64_t WebKit::NetworkStorageManager::dispatchTaskToBackgroundFetchManager(WebCore::ClientOrigin const&,WTF::Function<void ()(WebKit::BackgroundFetchStoreManager *)> &&)::$_0::~$_0(uint64_t a1, WTF::StringImpl *a2)
{
  v3 = *(a1 + 88);
  *(a1 + 88) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  if (!*(a1 + 80))
  {
    v4 = *(a1 + 64);
    *(a1 + 64) = 0;
    if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v4, a2);
    }

    v5 = *(a1 + 56);
    *(a1 + 56) = 0;
    if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v5, a2);
    }
  }

  *(a1 + 80) = -1;
  if (!*(a1 + 48))
  {
    v6 = *(a1 + 32);
    *(a1 + 32) = 0;
    if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v6, a2);
    }

    v7 = *(a1 + 24);
    *(a1 + 24) = 0;
    if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v7, a2);
    }
  }

  *(a1 + 48) = -1;
  v8 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v8)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WTF::SerialFunctionDispatcher,(WTF::DestructionThread)0>::deref((v8 + 32));
  }

  v9 = *(a1 + 8);
  *(a1 + 8) = 0;
  if (v9)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)2>,(WTF::DestructionThread)2>::deref((v9 + 8));
  }

  return a1;
}

uint64_t IPC::Connection::send<Messages::NetworkProcessProxy::NotifyBackgroundFetchChange>(uint64_t a1, void *a2, uint64_t a3, char a4, uint64_t a5)
{
  IPC::Connection::connection(a1, &v12);
  if (!v12)
  {
    return 2;
  }

  v9 = IPC::Connection::send<Messages::NetworkProcessProxy::NotifyBackgroundFetchChange>(v12, a2, a3, a4, a5);
  v10 = v12;
  v12 = 0;
  if (v10)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v10);
  }

  return v9;
}

uint64_t WebKit::NetworkStorageManager::closeServiceWorkerRegistrationFiles(uint64_t a1, uint64_t *a2)
{
  if (*(a1 + 64) == 1)
  {
    v3 = *a2;
    *a2 = 0;
    (*(*v3 + 16))(v3);
    v4 = *(*v3 + 8);

    return v4(v3);
  }

  else
  {
    while (1)
    {
      v7 = *(a1 + 8);
      if ((v7 & 1) == 0)
      {
        break;
      }

      v8 = *(a1 + 8);
      atomic_compare_exchange_strong_explicit((a1 + 8), &v8, v7 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v8 == v7)
      {
        goto LABEL_9;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*(a1 + 8));
LABEL_9:
    v9 = *a2;
    *a2 = 0;
    v10 = WTF::fastMalloc(0x20);
    *v10 = &unk_1F110B508;
    v10[1] = a1;
    v10[2] = a1;
    v10[3] = v9;
    v11 = v10;
    WTF::SuspendableWorkQueue::dispatch();
    result = v11;
    if (v11)
    {
      return (*(*v11 + 8))(v11);
    }
  }

  return result;
}

uint64_t WebKit::NetworkStorageManager::clearServiceWorkerRegistrations(uint64_t a1, uint64_t *a2)
{
  if (*(a1 + 64) == 1)
  {
    v3 = *a2;
    *a2 = 0;
    (*(*v3 + 16))(v3);
    v4 = *(*v3 + 8);

    return v4(v3);
  }

  else
  {
    while (1)
    {
      v7 = *(a1 + 8);
      if ((v7 & 1) == 0)
      {
        break;
      }

      v8 = *(a1 + 8);
      atomic_compare_exchange_strong_explicit((a1 + 8), &v8, v7 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v8 == v7)
      {
        goto LABEL_9;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*(a1 + 8));
LABEL_9:
    v9 = *a2;
    *a2 = 0;
    v10 = WTF::fastMalloc(0x20);
    *v10 = &unk_1F110B558;
    v10[1] = a1;
    v10[2] = a1;
    v10[3] = v9;
    v11 = v10;
    WTF::SuspendableWorkQueue::dispatch();
    result = v11;
    if (v11)
    {
      return (*(*v11 + 8))(v11);
    }
  }

  return result;
}

uint64_t WebKit::NetworkStorageManager::importServiceWorkerRegistrations(uint64_t a1, uint64_t *a2)
{
  if (*(a1 + 64) == 1)
  {
    LOBYTE(v12[0]) = 0;
    LOBYTE(v13) = 0;
    v8 = *a2;
    *a2 = 0;
    (*(*v8 + 16))(v8, v12);
    result = (*(*v8 + 8))(v8);
    if (v13 == 1)
    {
      return WTF::Vector<WebCore::ServiceWorkerContextData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v12, v9);
    }
  }

  else
  {
    v12[0] = a1;
    while (1)
    {
      v4 = *(a1 + 8);
      if ((v4 & 1) == 0)
      {
        break;
      }

      v10 = *(a1 + 8);
      atomic_compare_exchange_strong_explicit((a1 + 8), &v10, v4 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v10 == v4)
      {
        goto LABEL_5;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*(a1 + 8));
LABEL_5:
    v5 = *a2;
    *a2 = 0;
    v6 = WTF::fastMalloc(0x20);
    *v6 = &unk_1F110B5A8;
    v6[1] = a1;
    v6[2] = a1;
    v6[3] = v5;
    v12[1] = 0;
    v13 = 0;
    v11 = v6;
    WTF::SuspendableWorkQueue::dispatch();
    if (v11)
    {
      (*(*v11 + 8))(v11);
    }

    return WebKit::NetworkStorageManager::importServiceWorkerRegistrations(WTF::CompletionHandler<void ()(std::optional<WTF::Vector<WebCore::ServiceWorkerContextData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>> &&)> &&)::$_0::~$_0(v12);
  }

  return result;
}

uint64_t WebKit::NetworkStorageManager::importServiceWorkerRegistrations(WTF::CompletionHandler<void ()(std::optional<WTF::Vector<WebCore::ServiceWorkerContextData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>> &&)> &&)::$_0::~$_0(uint64_t a1)
{
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(a1 + 8);
  *(a1 + 8) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)2>,(WTF::DestructionThread)2>::deref((v3 + 8));
  }

  return a1;
}

uint64_t WebKit::NetworkStorageManager::updateServiceWorkerRegistrations(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t *a4)
{
  v41[5] = *MEMORY[0x1E69E9840];
  if (*(a1 + 64) == 1)
  {
    LOBYTE(v36[0]) = 0;
    v37 = 0;
    result = WTF::CompletionHandler<void ()(std::optional<WTF::Vector<WebCore::ServiceWorkerScripts,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>)>::operator()(a4, v36);
    if (v37 == 1)
    {
      return WTF::Vector<WebCore::ServiceWorkerScripts,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v36, v6);
    }
  }

  else
  {
    while (1)
    {
      v10 = *(a1 + 8);
      if ((v10 & 1) == 0)
      {
        break;
      }

      v11 = *(a1 + 8);
      atomic_compare_exchange_strong_explicit((a1 + 8), &v11, v10 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v11 == v10)
      {
        goto LABEL_8;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*(a1 + 8));
LABEL_8:
    WTF::CrossThreadCopierBase<false,false,WTF::Vector<WebCore::ServiceWorkerContextData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>::copy(&v32, a2);
    v13 = *a3;
    v14 = *(a3 + 12);
    if (v14)
    {
      v15 = v13 + 72 * v14;
      do
      {
        WebCore::ServiceWorkerRegistrationKey::isolatedCopy();
        WebCore::SecurityOriginData::operator=(v13);
        v16 = v13 + 32;
        WTF::URL::operator=(v16, v41);
        v18 = v41[0];
        v41[0] = 0;
        if (v18 && atomic_fetch_add_explicit(v18, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v18, v17);
        }

        if (!v40)
        {
          v19 = v39;
          v39 = 0;
          if (v19 && atomic_fetch_add_explicit(v19, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v19, v17);
          }

          v20 = v38;
          v38 = 0;
          if (v20 && atomic_fetch_add_explicit(v20, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v20, v17);
          }
        }

        v13 = v16 + 40;
      }

      while (v13 != v15);
      v13 = *a3;
      v21 = *(a3 + 12);
    }

    else
    {
      v21 = 0;
    }

    *&v12 = 0;
    v22 = *(a3 + 8);
    v30 = v12;
    *a3 = v12;
    v23 = *a4;
    *a4 = 0;
    v35 = v23;
    v24 = WTF::fastMalloc(0x40);
    *v24 = &unk_1F110B5F8;
    *(v24 + 8) = a1;
    *(v24 + 16) = a1;
    v25 = v32;
    v32 = 0;
    *(v24 + 24) = v25;
    v26 = v33;
    v33 = 0;
    *(v24 + 32) = v26;
    v34 = v30;
    *(v24 + 40) = v13;
    *(v24 + 48) = v22;
    *(v24 + 52) = v21;
    *(v24 + 56) = v23;
    v38 = v24;
    WTF::SuspendableWorkQueue::dispatch();
    v28 = v38;
    v38 = 0;
    if (v28)
    {
      (*(*v28 + 8))(v28);
    }

    v35 = 0;
    WTF::Vector<WebCore::ServiceWorkerRegistrationKey,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v34, v27);
    return WTF::Vector<WebCore::ServiceWorkerContextData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v32, v29);
  }

  return result;
}

uint64_t WTF::CompletionHandler<void ()(std::optional<WTF::Vector<WebCore::ServiceWorkerScripts,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>)>::operator()(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  *a1 = 0;
  LOBYTE(v8[0]) = 0;
  v9 = 0;
  v3 = *(a2 + 16);
  if (v3)
  {
    v4 = *a2;
    *a2 = 0;
    v9 = 1;
    v8[0] = 0;
    v10[0] = v4;
    v8[1] = 0;
    v5 = a2[1];
    a2[1] = 0;
    v10[1] = v5;
    v11 = 1;
  }

  else
  {
    LOBYTE(v10[0]) = 0;
    v11 = 0;
  }

  (*(*v2 + 16))(v2, v10);
  if (v11 == 1)
  {
    WTF::Vector<WebCore::ServiceWorkerScripts,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v10, v6);
  }

  if (v3)
  {
    WTF::Vector<WebCore::ServiceWorkerScripts,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v8, v6);
  }

  return (*(*v2 + 8))(v2);
}

uint64_t WebKit::NetworkStorageManager::migrateServiceWorkerRegistrationsToOrigins(atomic_uint **this, void *a2)
{
  v3 = WebKit::ServiceWorkerStorageManager::operator new(0x10, a2);
  v4 = WebKit::ServiceWorkerStorageManager::ServiceWorkerStorageManager(v3, this + 21);
  result = WebKit::ServiceWorkerStorageManager::importRegistrations(v4, v5, &v15);
  if (v17 == 1)
  {
    v13[0] = 0;
    v13[1] = 0;
    WebKit::NetworkStorageManager::updateServiceWorkerRegistrationsByOrigin(v14, this, v15, v16, v13);
    WTF::Vector<WebCore::ServiceWorkerScripts,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v14, v8);
    WTF::Vector<WebCore::ServiceWorkerRegistrationKey,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v13, v9);
    result = WebKit::ServiceWorkerStorageManager::clearAllRegistrations(v3, v10);
    if (v17)
    {
      result = WTF::Vector<WebCore::ServiceWorkerContextData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v15, v7);
    }
  }

  if (v3)
  {
    WebKit::ServiceWorkerStorageManager::~ServiceWorkerStorageManager(v3, v7);
    return bmalloc::api::tzoneFree(v11, v12);
  }

  return result;
}

uint64_t WebKit::NetworkStorageManager::updateServiceWorkerRegistrationsByOrigin(uint64_t a1, uint64_t *a2, __int128 *a3, unsigned int a4, uint64_t a5)
{
  v35 = *MEMORY[0x1E69E9840];
  v32 = 0;
  if (a4)
  {
    v16 = 592 * a4;
    do
    {
      WebCore::ServiceWorkerRegistrationKey::clientOrigin(&v33, (a3 + 24));
      WTF::HashMap<WebCore::ClientOrigin,std::pair<WTF::Vector<WebCore::ServiceWorkerContextData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::Vector<WebCore::ServiceWorkerRegistrationKey,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::HashTraits<std::pair<WTF::Vector<WebCore::ServiceWorkerContextData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::Vector<WebCore::ServiceWorkerRegistrationKey,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::ensure<WebKit::NetworkStorageManager::updateServiceWorkerRegistrationsByOrigin(WTF::Vector<WebCore::ServiceWorkerContextData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>&&,WTF::Vector<WebCore::ServiceWorkerRegistrationKey,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>&&)::$_0>(v31, &v32, &v33);
      v17 = v31[0];
      v18 = *(v31[0] + 76);
      if (v18 == *(v31[0] + 72))
      {
        WTF::Vector<WebCore::ServiceWorkerContextData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebCore::ServiceWorkerContextData>(v31[0] + 64, a3);
      }

      else
      {
        WebCore::ServiceWorkerContextData::ServiceWorkerContextData(*(v31[0] + 64) + 592 * v18, a3);
        ++*(v17 + 76);
      }

      WebCore::ClientOrigin::~ClientOrigin(&v33, v19);
      a3 += 37;
      v16 -= 592;
    }

    while (v16);
  }

  v8 = *(a5 + 12);
  if (v8)
  {
    v20 = *a5;
    v21 = 72 * v8;
    do
    {
      WebCore::ServiceWorkerRegistrationKey::clientOrigin(&v33, v20);
      WTF::HashMap<WebCore::ClientOrigin,std::pair<WTF::Vector<WebCore::ServiceWorkerContextData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::Vector<WebCore::ServiceWorkerRegistrationKey,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::HashTraits<std::pair<WTF::Vector<WebCore::ServiceWorkerContextData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::Vector<WebCore::ServiceWorkerRegistrationKey,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::ensure<WebKit::NetworkStorageManager::updateServiceWorkerRegistrationsByOrigin(WTF::Vector<WebCore::ServiceWorkerContextData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>&&,WTF::Vector<WebCore::ServiceWorkerRegistrationKey,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>&&)::$_0>(v31, &v32, &v33);
      v22 = v31[0];
      v23 = *(v31[0] + 92);
      if (v23 == *(v31[0] + 88))
      {
        WTF::Vector<WebCore::ServiceWorkerRegistrationKey,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebCore::ServiceWorkerRegistrationKey>(v31[0] + 80, v20);
      }

      else
      {
        v25 = mpark::detail::move_assignment<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::move_assignment((*(v31[0] + 80) + 72 * v23));
        WTF::URL::URL((v25 + 32), v20 + 4);
        ++*(v22 + 92);
      }

      WebCore::ClientOrigin::~ClientOrigin(&v33, v24);
      v20 += 9;
      v21 -= 72;
    }

    while (v21);
  }

  *a1 = 0;
  *(a1 + 8) = 0;
  v9 = v32;
  result = WTF::HashTable<WebCore::ClientOrigin,WTF::KeyValuePair<WebCore::ClientOrigin,std::pair<WTF::Vector<WebCore::ServiceWorkerContextData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::Vector<WebCore::ServiceWorkerRegistrationKey,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ClientOrigin,std::pair<WTF::Vector<WebCore::ServiceWorkerContextData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::Vector<WebCore::ServiceWorkerRegistrationKey,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashMap<WebCore::ClientOrigin,std::pair<WTF::Vector<WebCore::ServiceWorkerContextData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::Vector<WebCore::ServiceWorkerRegistrationKey,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::HashTraits<std::pair<WTF::Vector<WebCore::ServiceWorkerContextData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::Vector<WebCore::ServiceWorkerRegistrationKey,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ClientOrigin>,WTF::FastMalloc>::begin(v32);
  v12 = result;
  v13 = v11;
  v14 = 0;
  if (v9)
  {
    v14 = v9 + 96 * *(v9 - 1);
  }

  if (v14 == result)
  {
LABEL_6:
    if (v9)
    {
      return WTF::HashTable<WebCore::ClientOrigin,WTF::KeyValuePair<WebCore::ClientOrigin,std::pair<WTF::Vector<WebCore::ServiceWorkerContextData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::Vector<WebCore::ServiceWorkerRegistrationKey,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ClientOrigin,std::pair<WTF::Vector<WebCore::ServiceWorkerContextData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::Vector<WebCore::ServiceWorkerRegistrationKey,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashMap<WebCore::ClientOrigin,std::pair<WTF::Vector<WebCore::ServiceWorkerContextData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::Vector<WebCore::ServiceWorkerRegistrationKey,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::HashTraits<std::pair<WTF::Vector<WebCore::ServiceWorkerContextData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::Vector<WebCore::ServiceWorkerRegistrationKey,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ClientOrigin>,WTF::FastMalloc>::deallocateTable(v9, v11);
    }
  }

  else
  {
    while (1)
    {
      v26 = WebKit::NetworkStorageManager::originStorageManager(a2, v12, 1);
      v27 = (v26 + 2);
      atomic_fetch_add(v26 + 2, 1u);
      v28 = WebKit::OriginStorageManager::defaultBucket(v26);
      v29 = WebKit::OriginStorageManager::StorageBucket::serviceWorkerStorageManager(v28);
      result = WebKit::ServiceWorkerStorageManager::updateRegistrations(v29, (v12 + 64), &v33);
      if (!atomic_load(v27))
      {
        break;
      }

      atomic_fetch_add(v27, 0xFFFFFFFF);
      if (v34 == 1)
      {
        result = WTF::Vector<WebCore::ServiceWorkerScripts,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendVector<WebCore::ServiceWorkerScripts,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>(a1, &v33);
        if (v34)
        {
          result = WTF::Vector<WebCore::ServiceWorkerScripts,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v33, v11);
        }
      }

      do
      {
        v12 += 96;
        if (v12 == v13)
        {
          break;
        }

        result = WTF::HashTable<WebCore::ClientOrigin,WTF::KeyValuePair<WebCore::ClientOrigin,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ClientOrigin,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashMap<WebCore::ClientOrigin,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::HashTraits<WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ClientOrigin>,WTF::FastMalloc>::isEmptyOrDeletedBucket(v12);
      }

      while (result);
      if (v12 == v14)
      {
        v9 = v32;
        goto LABEL_6;
      }
    }

    result = 290;
    __break(0xC471u);
  }

  return result;
}

uint64_t WTF::HashMap<WebCore::ClientOrigin,std::pair<WTF::Vector<WebCore::ServiceWorkerContextData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::Vector<WebCore::ServiceWorkerRegistrationKey,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::HashTraits<std::pair<WTF::Vector<WebCore::ServiceWorkerContextData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::Vector<WebCore::ServiceWorkerRegistrationKey,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::ensure<WebKit::NetworkStorageManager::updateServiceWorkerRegistrationsByOrigin(WTF::Vector<WebCore::ServiceWorkerContextData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>&&,WTF::Vector<WebCore::ServiceWorkerRegistrationKey,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>&&)::$_0>(uint64_t a1, uint64_t *a2, __n128 *a3)
{
  v6 = WTF::HashTraitsEmptyValueChecker<WTF::HashTraits<WebCore::ClientOrigin>,false>::isEmptyValue<WebCore::ClientOrigin>();
  if (v6)
  {
    __break(0xC471u);
    JUMPOUT(0x19DDF75D4);
  }

  if (a3[1].n128_u8[8])
  {
    if (a3[1].n128_u8[8] != 1)
    {
LABEL_18:
      mpark::throw_bad_variant_access(v6);
    }
  }

  else if (a3->n128_u64[0] == -1)
  {
    __break(0xC471u);
    JUMPOUT(0x19DDF75F4);
  }

  v7 = *a2;
  if (*a2 || (WTF::HashTable<WebCore::ClientOrigin,WTF::KeyValuePair<WebCore::ClientOrigin,std::pair<WTF::Vector<WebCore::ServiceWorkerContextData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::Vector<WebCore::ServiceWorkerRegistrationKey,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ClientOrigin,std::pair<WTF::Vector<WebCore::ServiceWorkerContextData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::Vector<WebCore::ServiceWorkerRegistrationKey,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashMap<WebCore::ClientOrigin,std::pair<WTF::Vector<WebCore::ServiceWorkerContextData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::Vector<WebCore::ServiceWorkerRegistrationKey,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::HashTraits<std::pair<WTF::Vector<WebCore::ServiceWorkerContextData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::Vector<WebCore::ServiceWorkerRegistrationKey,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ClientOrigin>,WTF::FastMalloc>::expand(a2, 0), (v7 = *a2) != 0))
  {
    v8 = *(v7 - 8);
  }

  else
  {
    v8 = 0;
  }

  v9 = WTF::computeHash<WebCore::ClientOrigin>(a3) & v8;
  v10 = (v7 + 96 * v9);
  v6 = WTF::HashTraitsEmptyValueChecker<WTF::HashTraits<WebCore::ClientOrigin>,false>::isEmptyValue<WebCore::ClientOrigin>();
  if ((v6 & 1) == 0)
  {
    v11 = 0;
    v12 = 1;
    while (!v10[24])
    {
      if (*v10 != -1)
      {
        goto LABEL_11;
      }

      v11 = v10;
LABEL_15:
      v9 = (v9 + v12) & v8;
      v10 = (v7 + 96 * v9);
      v6 = WTF::HashTraitsEmptyValueChecker<WTF::HashTraits<WebCore::ClientOrigin>,false>::isEmptyValue<WebCore::ClientOrigin>();
      ++v12;
      if (v6)
      {
        if (v11)
        {
          *(v11 + 2) = 0u;
          *(v11 + 3) = 0u;
          *v11 = 0u;
          *(v11 + 1) = 0u;
          WTF::PairHashTraits<WTF::HashTraits<WTF::Vector<WebCore::ServiceWorkerContextData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTraits<WTF::Vector<WebCore::ServiceWorkerRegistrationKey,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>::emptyValue(v11 + 4, v14, 0);
          --*(*a2 - 16);
          v10 = v11;
        }

        goto LABEL_21;
      }
    }

    if (v10[24] != 1)
    {
      goto LABEL_18;
    }

LABEL_11:
    if (WebCore::operator==())
    {
      result = WebCore::operator==();
      if (result)
      {
        v23 = *a2;
        if (*a2)
        {
          v24 = *(v23 - 4);
        }

        else
        {
          v24 = 0;
        }

        v22 = 0;
        v21 = v23 + 96 * v24;
        goto LABEL_28;
      }
    }

    goto LABEL_15;
  }

LABEL_21:
  mpark::detail::assignment<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>>::generic_assign<mpark::detail::copy_assignment<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1> const&>(v10, a3);
  mpark::detail::assignment<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>>::generic_assign<mpark::detail::copy_assignment<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1> const&>(v10 + 32, a3 + 2);
  v25 = 0u;
  v26 = 0u;
  WTF::GenericHashTraits<std::pair<WTF::Vector<WebCore::ServiceWorkerContextData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::Vector<WebCore::ServiceWorkerRegistrationKey,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>::assignToEmpty<std::pair<WTF::Vector<WebCore::ServiceWorkerContextData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::Vector<WebCore::ServiceWorkerRegistrationKey,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,std::pair<WTF::Vector<WebCore::ServiceWorkerContextData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::Vector<WebCore::ServiceWorkerRegistrationKey,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>((v10 + 64), &v25);
  WTF::Vector<WebCore::ServiceWorkerRegistrationKey,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v26, v15);
  result = WTF::Vector<WebCore::ServiceWorkerContextData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v25, v16);
  v17 = *a2;
  if (*a2)
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
LABEL_25:
      result = WTF::HashTable<WebCore::ClientOrigin,WTF::KeyValuePair<WebCore::ClientOrigin,std::pair<WTF::Vector<WebCore::ServiceWorkerContextData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::Vector<WebCore::ServiceWorkerRegistrationKey,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ClientOrigin,std::pair<WTF::Vector<WebCore::ServiceWorkerContextData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::Vector<WebCore::ServiceWorkerRegistrationKey,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashMap<WebCore::ClientOrigin,std::pair<WTF::Vector<WebCore::ServiceWorkerContextData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::Vector<WebCore::ServiceWorkerRegistrationKey,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::HashTraits<std::pair<WTF::Vector<WebCore::ServiceWorkerContextData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::Vector<WebCore::ServiceWorkerRegistrationKey,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ClientOrigin>,WTF::FastMalloc>::expand(a2, v10);
      v10 = result;
      v17 = *a2;
      if (*a2)
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
    goto LABEL_25;
  }

  v21 = v17 + 96 * v20;
  v22 = 1;
LABEL_28:
  *a1 = v10;
  *(a1 + 8) = v21;
  *(a1 + 16) = v22;
  return result;
}

unsigned int *WTF::Vector<WebCore::ServiceWorkerScripts,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendVector<WebCore::ServiceWorkerScripts,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>(unsigned int *result, uint64_t *a2)
{
  v3 = result;
  v4 = *(a2 + 3);
  v5 = result[2];
  v6 = result[3];
  v7 = v4 + v6;
  if (v4 + v6 > v5)
  {
    if (v5 + (v5 >> 1) <= v5 + 1)
    {
      v8 = v5 + 1;
    }

    else
    {
      v8 = v5 + (v5 >> 1);
    }

    if (v8 > v7)
    {
      v7 = v8;
    }

    if (v7 >= 0x6666667)
    {
      __break(0xC471u);
      return result;
    }

    v9 = *result;
    if (v7 <= 0x10)
    {
      v7 = 16;
    }

    v10 = 40 * v7;
    result = WTF::fastMalloc((40 * v7));
    v3[2] = v10 / 0x28;
    *v3 = result;
    if (v6)
    {
      v12 = result;
      v13 = 40 * v6;
      v14 = (v9 + 24);
      do
      {
        *v12 = *(v14 - 3);
        v15 = *(v14 - 2);
        *(v14 - 2) = 0;
        *(v12 + 29) = 0;
        *(v12 + 2) = 0;
        *(v12 + 3) = 0;
        *(v12 + 1) = v15;
        v16 = *(v14 - 1);
        *(v14 - 1) = 0;
        *(v12 + 2) = v16;
        LODWORD(v16) = *v14;
        *v14 = 0;
        v12[6] = v16;
        LODWORD(v16) = v14[1];
        v14[1] = 0;
        v12[7] = v16;
        LODWORD(v16) = v14[2];
        v14[2] = 0;
        v12[8] = v16;
        LOBYTE(v16) = *(v14 + 12);
        *(v14 + 12) = 0;
        *(v12 + 36) = v16;
        v17 = *(v14 - 1);
        if (v17)
        {
          WTF::RobinHoodHashTable<WTF::URL,WTF::KeyValuePair<WTF::URL,WebCore::ScriptBuffer>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::URL,WebCore::ScriptBuffer>>,WTF::DefaultHash<WTF::URL>,WTF::HashMap<WTF::URL,WebCore::ScriptBuffer,WTF::DefaultHash<WTF::URL>,WTF::HashTraits<WTF::URL>,WTF::HashTraits<WebCore::ScriptBuffer>,WTF::MemoryCompactRobinHoodHashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::URL>,WTF::MemoryCompactRobinHoodHashTableSizePolicy,WTF::FastMalloc>::deallocateTable(v17, *v14);
        }

        result = *(v14 - 2);
        *(v14 - 2) = 0;
        if (result && atomic_fetch_add(result + 2, 0xFFFFFFFF) == 1)
        {
          atomic_store(1u, result + 2);
          result = (*(*result + 8))(result);
        }

        v12 += 10;
        v14 += 10;
        v13 -= 40;
      }

      while (v13);
    }

    if (v9)
    {
      if (*v3 == v9)
      {
        *v3 = 0;
        v3[2] = 0;
      }

      result = WTF::fastFree(v9, v11);
    }

    LODWORD(v4) = *(a2 + 3);
  }

  if (v4)
  {
    v18 = *a2;
    v19 = *a2 + 40 * v4;
    v20 = v3[3];
    do
    {
      v21 = *v3 + 40 * v20;
      *v21 = *v18;
      v22 = *(v18 + 8);
      *(v18 + 8) = 0;
      *(v21 + 16) = 0;
      *(v21 + 24) = 0;
      *(v21 + 8) = v22;
      *(v21 + 29) = 0;
      v23 = *(v18 + 16);
      *(v18 + 16) = 0;
      *(v21 + 16) = v23;
      LODWORD(v23) = *(v18 + 24);
      *(v18 + 24) = 0;
      *(v21 + 24) = v23;
      LODWORD(v23) = *(v18 + 28);
      *(v18 + 28) = 0;
      *(v21 + 28) = v23;
      LODWORD(v23) = *(v18 + 32);
      *(v18 + 32) = 0;
      *(v21 + 32) = v23;
      LOBYTE(v23) = *(v18 + 36);
      *(v18 + 36) = 0;
      *(v21 + 36) = v23;
      v20 = v3[3] + 1;
      v3[3] = v20;
      v18 += 40;
    }

    while (v18 != v19);
  }

  return result;
}

uint64_t WebKit::NetworkStorageManager::sharedPreferencesForWebProcess@<X0>(WebKit::NetworkStorageManager *this@<X0>, IPC::Connection *a2@<X1>, uint64_t a3@<X8>)
{
  v8 = *(a2 + 3);
  result = WTF::HashTable<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebKit::SharedPreferencesForWebProcess>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebKit::SharedPreferencesForWebProcess>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebKit::SharedPreferencesForWebProcess,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WebKit::SharedPreferencesForWebProcess>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebKit::SharedPreferencesForWebProcess,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WebKit::SharedPreferencesForWebProcess>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(this + 48, &v8);
  v6 = *(this + 48);
  if (v6)
  {
    v6 += 32 * *(v6 - 4);
  }

  if (v6 == result)
  {
    v7 = 0;
    *a3 = 0;
  }

  else
  {
    *a3 = *(result + 8);
    *(a3 + 16) = *(result + 24);
    v7 = 1;
  }

  *(a3 + 24) = v7;
  return result;
}

void WebKit::MemoryStorageArea::~MemoryStorageArea(WebKit::MemoryStorageArea *this, void *a2)
{
  v3 = *(this + 14);
  *(this + 14) = 0;
  if (v3)
  {
    WTF::RefCounted<WebCore::StorageMap::Impl>::deref(v3, a2);
  }

  if (*(this + 26) == 1)
  {

    WebKit::StorageAreaBase::~StorageAreaBase(this, a2);
  }

  else
  {
    __break(0xC471u);
  }
}

{
  v3 = *(this + 14);
  *(this + 14) = 0;
  if (v3)
  {
    WTF::RefCounted<WebCore::StorageMap::Impl>::deref(v3, a2);
  }

  if (*(this + 26) == 1)
  {
    WebKit::StorageAreaBase::~StorageAreaBase(this, a2);

    bmalloc::api::tzoneFree(v4, v5);
  }

  else
  {
    __break(0xC471u);
  }
}

void IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)2>::ref(uint64_t a1)
{
  while (1)
  {
    v1 = *(a1 + 8);
    if ((v1 & 1) == 0)
    {
      break;
    }

    v2 = *(a1 + 8);
    atomic_compare_exchange_strong_explicit((a1 + 8), &v2, v1 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v2 == v1)
    {
      return;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*(a1 + 8));
}

uint64_t WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WebKit::FileSystemStorageManagerLock>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WebKit::FileSystemStorageManagerLock>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WebKit::FileSystemStorageManagerLock,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WebKit::FileSystemStorageManagerLock>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(WTF::StringImpl **a1, WTF::StringImpl *a2)
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
          if (atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v5, a2);
          }
        }
      }

      v4 += 3;
      --v3;
    }

    while (v3);
  }

  return WTF::fastFree((a1 - 2), a2);
}

uint64_t WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::FileSystemStorageHandle,WTF::RawPtrTraits<WebKit::FileSystemStorageHandle>,WTF::DefaultRefDerefTraits<WebKit::FileSystemStorageHandle>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::FileSystemStorageHandle,WTF::RawPtrTraits<WebKit::FileSystemStorageHandle>,WTF::DefaultRefDerefTraits<WebKit::FileSystemStorageHandle>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::FileSystemStorageHandle,WTF::RawPtrTraits<WebKit::FileSystemStorageHandle>,WTF::DefaultRefDerefTraits<WebKit::FileSystemStorageHandle>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RefPtr<WebKit::FileSystemStorageHandle,WTF::RawPtrTraits<WebKit::FileSystemStorageHandle>,WTF::DefaultRefDerefTraits<WebKit::FileSystemStorageHandle>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::deallocateTable(uint64_t a1, WTF::StringImpl *a2)
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
          WTF::RefCounted<WebKit::FileSystemStorageHandle>::deref(v5, a2);
        }
      }

      v4 += 2;
      --v3;
    }

    while (v3);
  }

  return WTF::fastFree((a1 - 16), a2);
}

uint64_t WTF::HashTable<WebCore::ClientOrigin,WebCore::ClientOrigin,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::FastMalloc>::deallocateTable(mpark *a1, WTF::StringImpl *a2)
{
  v2 = a1;
  v3 = *(a1 - 1);
  if (v3)
  {
    v4 = a1 + 32;
    while (!*(v4 - 8))
    {
      if (*(v4 - 4) != -1)
      {
        goto LABEL_5;
      }

LABEL_20:
      v4 += 64;
      if (!--v3)
      {
        goto LABEL_24;
      }
    }

    if (*(v4 - 8) != 1)
    {
      mpark::throw_bad_variant_access(a1);
    }

LABEL_5:
    if (!v4[24])
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

    v4[24] = -1;
    if (!*(v4 - 8))
    {
      v6 = *(v4 - 3);
      *(v4 - 3) = 0;
      if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v6, a2);
      }

      a1 = *(v4 - 4);
      *(v4 - 4) = 0;
      if (a1 && atomic_fetch_add_explicit(a1, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        a1 = WTF::StringImpl::destroy(a1, a2);
      }
    }

    *(v4 - 8) = -1;
    goto LABEL_20;
  }

LABEL_24:

  return WTF::fastFree((v2 - 16), a2);
}

uint64_t WTF::HashTable<WebCore::IDBDatabaseIdentifier,WTF::KeyValuePair<WebCore::IDBDatabaseIdentifier,std::unique_ptr<WebCore::IDBServer::UniqueIDBDatabase>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::IDBDatabaseIdentifier,std::unique_ptr<WebCore::IDBServer::UniqueIDBDatabase>>>,WTF::DefaultHash<WebCore::IDBDatabaseIdentifier>,WTF::HashMap<WebCore::IDBDatabaseIdentifier,std::unique_ptr<WebCore::IDBServer::UniqueIDBDatabase>,WTF::DefaultHash<WebCore::IDBDatabaseIdentifier>,WTF::HashTraits<WebCore::IDBDatabaseIdentifier>,WTF::HashTraits<std::unique_ptr<WebCore::IDBServer::UniqueIDBDatabase>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::IDBDatabaseIdentifier>,WTF::FastMalloc>::deallocateTable(uint64_t *a1, void *a2)
{
  v3 = *(a1 - 1);
  if (v3)
  {
    v4 = a1;
    do
    {
      if (*v4 != -1)
      {
        std::unique_ptr<WebCore::IDBServer::UniqueIDBDatabase>::reset[abi:sn200100](v4 + 10, 0);
        WebCore::IDBDatabaseIdentifier::~IDBDatabaseIdentifier(v4, v5);
      }

      v4 += 11;
      --v3;
    }

    while (v3);
  }

  return WTF::fastFree((a1 - 2), a2);
}

uint64_t std::unique_ptr<WebCore::IDBServer::UniqueIDBDatabase>::reset[abi:sn200100](uint64_t *a1, uint64_t a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    v4 = MEMORY[0x19EB0FE20]();

    return bmalloc::api::tzoneFree(v4, v5);
  }

  return result;
}

uint64_t WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::IDBDatabaseConnectionIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::IDBDatabaseConnectionIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebCore::IDBServer::UniqueIDBDatabaseConnection,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::IDBDatabaseConnectionIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebCore::IDBServer::UniqueIDBDatabaseConnection,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::IDBDatabaseConnectionIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::IDBDatabaseConnectionIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebCore::IDBServer::UniqueIDBDatabaseConnection,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::IDBDatabaseConnectionIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::IDBDatabaseConnectionIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakPtr<WebCore::IDBServer::UniqueIDBDatabaseConnection,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::IDBDatabaseConnectionIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::deallocateTable(uint64_t a1, void *a2)
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
          if (atomic_fetch_add(v5, 0xFFFFFFFF) == 1)
          {
            atomic_store(1u, v5);
            WTF::fastFree(v5, a2);
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

uint64_t WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::IDBStorageConnectionToClient>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::IDBStorageConnectionToClient>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::IDBStorageConnectionToClient>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<std::unique_ptr<WebKit::IDBStorageConnectionToClient>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::deallocateTable(uint64_t a1, void *a2)
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
          (*(*v5 + 8))(v5);
        }
      }

      v4 += 2;
      --v3;
    }

    while (v3);
  }

  return WTF::fastFree((a1 - 16), a2);
}

uint64_t WTF::RefCounted<WebCore::StorageMap::Impl>::deref(uint64_t result, void *a2)
{
  if (*result == 1)
  {
    v2 = *(result + 8);
    if (!v2 || (v3 = result, WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::String>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v2, a2), result = v3, *v3 == 1))
    {

      return WTF::fastFree(result, a2);
    }

    else
    {
      result = 191;
      __break(0xC471u);
    }
  }

  else
  {
    --*result;
  }

  return result;
}

PAL::CryptoDigest *WebKit::encode(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v13 = a3;
  PAL::CryptoDigest::create();
  WTF::String::utf8();
  PAL::CryptoDigest::addBytes();
  PAL::CryptoDigest::addBytes();
  PAL::CryptoDigest::computeHash(&v9, v12);
  WTF::base64EncodeToString();
  v4 = v9;
  if (v9)
  {
    v9 = 0;
    v10 = 0;
    WTF::fastFree(v4, v3);
  }

  v5 = v11;
  v11 = 0;
  if (v5)
  {
    if (*v5 == 1)
    {
      WTF::fastFree(v5, v3);
    }

    else
    {
      --*v5;
    }
  }

  result = v12;
  v12 = 0;
  if (result)
  {
    PAL::CryptoDigest::~CryptoDigest(result);
    return bmalloc::api::tzoneFree(v7, v8);
  }

  return result;
}

uint64_t WTF::HashTable<WebCore::ClientOrigin,WTF::KeyValuePair<WebCore::ClientOrigin,WTF::WallTime>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ClientOrigin,WTF::WallTime>>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashMap<WebCore::ClientOrigin,WTF::WallTime,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::HashTraits<WTF::WallTime>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ClientOrigin>,WTF::FastMalloc>::deallocateTable(mpark *a1, WTF::StringImpl *a2)
{
  v2 = a1;
  v3 = *(a1 - 1);
  if (v3)
  {
    v4 = a1 + 32;
    while (!*(v4 - 8))
    {
      if (*(v4 - 4) != -1)
      {
        goto LABEL_5;
      }

LABEL_20:
      v4 += 72;
      if (!--v3)
      {
        goto LABEL_24;
      }
    }

    if (*(v4 - 8) != 1)
    {
      mpark::throw_bad_variant_access(a1);
    }

LABEL_5:
    if (!v4[24])
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

    v4[24] = -1;
    if (!*(v4 - 8))
    {
      v6 = *(v4 - 3);
      *(v4 - 3) = 0;
      if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v6, a2);
      }

      a1 = *(v4 - 4);
      *(v4 - 4) = 0;
      if (a1 && atomic_fetch_add_explicit(a1, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        a1 = WTF::StringImpl::destroy(a1, a2);
      }
    }

    *(v4 - 8) = -1;
    goto LABEL_20;
  }

LABEL_24:

  return WTF::fastFree((v2 - 16), a2);
}

WebKit::ServiceWorkerStorageManager *std::unique_ptr<WebKit::ServiceWorkerStorageManager>::reset[abi:sn200100](WebKit::ServiceWorkerStorageManager **a1, WTF::StringImpl *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    WebKit::ServiceWorkerStorageManager::~ServiceWorkerStorageManager(result, a2);

    return bmalloc::api::tzoneFree(v5, v6);
  }

  return result;
}

void WebKit::ServiceWorkerStorageManager::~ServiceWorkerStorageManager(WebKit::ServiceWorkerStorageManager *this, WTF::StringImpl *a2)
{
  v3 = *(this + 1);
  *(this + 1) = 0;
  if (v3)
  {
    v4 = MEMORY[0x19EB0B230]();
    bmalloc::api::tzoneFree(v4, v5);
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

uint64_t WTF::HashTable<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::deallocateTable(uint64_t a1, WTF::StringImpl *a2)
{
  v3 = *(a1 - 4);
  if (v3)
  {
    v4 = (a1 + 8);
    do
    {
      if (*(v4 - 1) != -1 && *v4)
      {
        WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(*v4, a2);
      }

      v4 += 2;
      --v3;
    }

    while (v3);
  }

  return WTF::fastFree((a1 - 16), a2);
}

double WebKit::IDBStorageRegistry::operator delete(WebKit::IDBStorageRegistry *a1, void *a2)
{
  WebKit::IDBStorageRegistry::~IDBStorageRegistry(a1, a2);
  if (atomic_load(v2))
  {
    result = 0.0;
    *v2 = 0u;
    *(v2 + 1) = 0u;
  }

  else
  {

    bmalloc::api::tzoneFree(v2, v3);
  }

  return result;
}

uint64_t WebKit::StorageAreaRegistry::operator delete(bmalloc::api *this, void *a2)
{
  result = *(this + 1);
  if (result)
  {
    result = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::IDBDatabaseConnectionIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::IDBDatabaseConnectionIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebCore::IDBServer::UniqueIDBDatabaseConnection,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::IDBDatabaseConnectionIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebCore::IDBServer::UniqueIDBDatabaseConnection,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::IDBDatabaseConnectionIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::IDBDatabaseConnectionIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebCore::IDBServer::UniqueIDBDatabaseConnection,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::IDBDatabaseConnectionIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::IDBDatabaseConnectionIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakPtr<WebCore::IDBServer::UniqueIDBDatabaseConnection,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::IDBDatabaseConnectionIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::deallocateTable(result, a2);
  }

  if (atomic_load(this))
  {
    *this = 0;
    *(this + 1) = 0;
  }

  else
  {

    return bmalloc::api::tzoneFree(this, a2);
  }

  return result;
}

uint64_t WTF::HashTable<WebCore::ClientOrigin,WTF::KeyValuePair<WebCore::ClientOrigin,std::unique_ptr<WebKit::OriginStorageManager>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ClientOrigin,std::unique_ptr<WebKit::OriginStorageManager>>>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashMap<WebCore::ClientOrigin,std::unique_ptr<WebKit::OriginStorageManager>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::HashTraits<std::unique_ptr<WebKit::OriginStorageManager>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ClientOrigin>,WTF::FastMalloc>::deallocateTable(mpark *this, void *a2)
{
  v2 = this;
  v3 = *(this - 1);
  if (v3)
  {
    while (!*(this + 24))
    {
      if (*this != -1)
      {
        goto LABEL_4;
      }

LABEL_5:
      this = (this + 72);
      if (!--v3)
      {
        goto LABEL_9;
      }
    }

    if (*(this + 24) != 1)
    {
      mpark::throw_bad_variant_access(this);
    }

LABEL_4:
    this = WTF::KeyValuePair<WebCore::ClientOrigin,std::unique_ptr<WebKit::OriginStorageManager>>::~KeyValuePair(this, a2);
    goto LABEL_5;
  }

LABEL_9:

  return WTF::fastFree((v2 - 16), a2);
}

uint64_t WTF::KeyValuePair<WebCore::ClientOrigin,std::unique_ptr<WebKit::OriginStorageManager>>::~KeyValuePair(uint64_t a1, void *a2)
{
  v3 = *(a1 + 64);
  *(a1 + 64) = 0;
  if (v3)
  {
    WebKit::OriginStorageManager::operator delete(v3, a2);
  }

  if (!*(a1 + 56))
  {
    v4 = *(a1 + 40);
    *(a1 + 40) = 0;
    if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v4, a2);
    }

    v5 = *(a1 + 32);
    *(a1 + 32) = 0;
    if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v5, a2);
    }
  }

  *(a1 + 56) = -1;
  if (!*(a1 + 24))
  {
    v6 = *(a1 + 8);
    *(a1 + 8) = 0;
    if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v6, a2);
    }

    v7 = *a1;
    *a1 = 0;
    if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v7, a2);
    }
  }

  *(a1 + 24) = -1;
  return a1;
}

double WebKit::OriginStorageManager::operator delete(WebKit::OriginStorageManager *a1, void *a2)
{
  WebKit::OriginStorageManager::~OriginStorageManager(a1, a2);
  if (atomic_load((v2 + 8)))
  {
    *(v2 + 80) = 0;
    result = 0.0;
    *(v2 + 48) = 0u;
    *(v2 + 64) = 0u;
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

uint64_t std::ranges::__all_of::operator()[abi:sn200100]<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &,std::identity,WebKit::isEmptyOriginDirectory(WTF::String const&)::$_0>(const WTF::StringImpl **a1, int a2, const WTF::StringImpl *a3)
{
  if (!a2)
  {
    return 1;
  }

  v4 = a1;
  v5 = &a1[a2];
  while (2)
  {
    v6 = *a3;
    v7 = *a3 != 0;
    if (*a3)
    {
      v8 = *v4;
      if (*v4 == -1 || !v8)
      {
        __break(0xC471u);
        JUMPOUT(0x19DDF84C4);
      }

      v9 = *(v6 - 8);
      v10 = *(v8 + 4);
      if (v10 < 0x100)
      {
        v11 = WTF::StringImpl::hashSlowCase(v8);
      }

      else
      {
        v11 = v10 >> 8;
      }

      for (i = 0; ; v11 = i + v13)
      {
        v13 = v11 & v9;
        v14 = *(v6 + 8 * (v11 & v9));
        if (v14 != -1)
        {
          if (!v14)
          {
            return 0;
          }

          if (WTF::equal(v14, *v4, a3))
          {
            break;
          }
        }

        ++i;
      }

      if (++v4 != v5)
      {
        continue;
      }
    }

    break;
  }

  return v7;
}

uint64_t std::__introsort<std::_RangeAlgPolicy,WebKit::NetworkStorageManager::performEviction(WTF::HashMap<WebCore::SecurityOriginData,WebKit::NetworkStorageManager::AccessRecord,WTF::DefaultHash<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::HashTraits<WebKit::NetworkStorageManager::AccessRecord>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc> &&)::$_0 &,std::pair<WebCore::SecurityOriginData,WebKit::NetworkStorageManager::AccessRecord> *,false>(uint64_t result, double *a2, uint64_t a3, char a4)
{
  v7 = result;
  v187 = *MEMORY[0x1E69E9840];
LABEL_2:
  v173 = (a2 - 9);
  v8 = v7;
  while (1)
  {
    v7 = v8;
    v9 = a2 - v8;
    v10 = 0x8E38E38E38E38E39 * ((a2 - v8) >> 3);
    v11 = v10 - 2;
    if (v10 <= 2)
    {
      if (v10 < 2)
      {
        return result;
      }

      if (v10 == 2)
      {
        if (*(a2 - 3) > *(v7 + 48))
        {
LABEL_162:
          v94 = v7;
LABEL_163:
          v97 = (a2 - 9);
          return std::ranges::__iter_swap::__fn::operator()[abi:sn200100]<std::pair<WebCore::SecurityOriginData,WebKit::NetworkStorageManager::AccessRecord> *&,std::pair<WebCore::SecurityOriginData,WebKit::NetworkStorageManager::AccessRecord> *&>(v94, v97);
        }

        return result;
      }

      goto LABEL_10;
    }

    if (v10 == 3)
    {
      break;
    }

    if (v10 == 4)
    {
      return std::__sort4[abi:sn200100]<std::_RangeAlgPolicy,WebKit::NetworkStorageManager::performEviction(WTF::HashMap<WebCore::SecurityOriginData,WebKit::NetworkStorageManager::AccessRecord,WTF::DefaultHash<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::HashTraits<WebKit::NetworkStorageManager::AccessRecord>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc> &&)::$_0 &,std::pair<WebCore::SecurityOriginData,WebKit::NetworkStorageManager::AccessRecord> *,0>(v7, v7 + 72, v7 + 144, v173);
    }

    if (v10 == 5)
    {
      result = std::__sort4[abi:sn200100]<std::_RangeAlgPolicy,WebKit::NetworkStorageManager::performEviction(WTF::HashMap<WebCore::SecurityOriginData,WebKit::NetworkStorageManager::AccessRecord,WTF::DefaultHash<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::HashTraits<WebKit::NetworkStorageManager::AccessRecord>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc> &&)::$_0 &,std::pair<WebCore::SecurityOriginData,WebKit::NetworkStorageManager::AccessRecord> *,0>(v7, v7 + 72, v7 + 144, v7 + 216);
      if (*(a2 - 3) > *(v7 + 264))
      {
        result = std::ranges::__iter_swap::__fn::operator()[abi:sn200100]<std::pair<WebCore::SecurityOriginData,WebKit::NetworkStorageManager::AccessRecord> *&,std::pair<WebCore::SecurityOriginData,WebKit::NetworkStorageManager::AccessRecord> *&>(v7 + 216, v173);
        if (*(v7 + 264) > *(v7 + 192))
        {
          result = std::ranges::__iter_swap::__fn::operator()[abi:sn200100]<std::pair<WebCore::SecurityOriginData,WebKit::NetworkStorageManager::AccessRecord> *&,std::pair<WebCore::SecurityOriginData,WebKit::NetworkStorageManager::AccessRecord> *&>(v7 + 144, v7 + 216);
          if (*(v7 + 192) > *(v7 + 120))
          {
            v95 = v7 + 72;
            v96 = v7 + 144;
LABEL_260:
            result = std::ranges::__iter_swap::__fn::operator()[abi:sn200100]<std::pair<WebCore::SecurityOriginData,WebKit::NetworkStorageManager::AccessRecord> *&,std::pair<WebCore::SecurityOriginData,WebKit::NetworkStorageManager::AccessRecord> *&>(v95, v96);
            if (*(v7 + 120) > *(v7 + 48))
            {
              v97 = v7 + 72;
              v94 = v7;
              return std::ranges::__iter_swap::__fn::operator()[abi:sn200100]<std::pair<WebCore::SecurityOriginData,WebKit::NetworkStorageManager::AccessRecord> *&,std::pair<WebCore::SecurityOriginData,WebKit::NetworkStorageManager::AccessRecord> *&>(v94, v97);
            }
          }
        }
      }

      return result;
    }

LABEL_10:
    if (v9 <= 1727)
    {
      if (a4)
      {
        if (v7 == a2)
        {
          return result;
        }

        v98 = (v7 + 72);
        if ((v7 + 72) == a2)
        {
          return result;
        }

        v99 = 0;
        v100 = v7;
        while (2)
        {
          v101 = v98;
          if (*(v100 + 120) > *(v100 + 48))
          {
            LOBYTE(v180[0]) = 0;
            LOBYTE(v182) = -1;
            v102 = *(v100 + 96);
            if (!*(v100 + 96))
            {
              v103 = *v101;
              *v101 = 0;
              v104 = *(v100 + 80);
              *(v100 + 80) = 0;
              v180[0] = v103;
              v180[1] = v104;
              LODWORD(v181) = *(v100 + 88);
              goto LABEL_173;
            }

            if (v102 != 255)
            {
              *v180 = *v101;
LABEL_173:
              LOBYTE(v182) = v102;
            }

            v183 = *(v100 + 104);
            v105 = *(v100 + 128);
            v184 = *(v100 + 120);
            v185 = v105;
            v106 = *(v100 + 136);
            *(v100 + 128) = 0;
            *(v100 + 136) = 0;
            v107 = v99;
            v186 = v106;
            while (1)
            {
              std::pair<WebCore::SecurityOriginData,WebKit::NetworkStorageManager::AccessRecord>::operator=[abi:sn200100](v7 + v107 + 72, v7 + v107);
              if (!v107)
              {
                break;
              }

              v108 = *(v7 + v107 - 24);
              v107 -= 72;
              if (v184 <= v108)
              {
                v109 = v7 + v107 + 72;
                goto LABEL_179;
              }
            }

            v109 = v7;
LABEL_179:
            std::pair<WebCore::SecurityOriginData,WebKit::NetworkStorageManager::AccessRecord>::operator=[abi:sn200100](v109, v180);
            result = WTF::Vector<WebCore::SecurityOriginData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v185, v110);
            if (!v182)
            {
              v112 = v180[1];
              v180[1] = 0;
              if (v112 && atomic_fetch_add_explicit(v112, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v112, v111);
              }

              result = v180[0];
              v180[0] = 0;
              if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                result = WTF::StringImpl::destroy(result, v111);
              }
            }
          }

          v98 = v101 + 9;
          v99 += 72;
          v100 = v101;
          if (v101 + 9 == a2)
          {
            return result;
          }

          continue;
        }
      }

      if (v7 == a2)
      {
        return result;
      }

      v160 = (v7 + 72);
      if ((v7 + 72) == a2)
      {
        return result;
      }

      v161 = 72;
      v162 = v7;
      while (*(v162 + 120) <= *(v162 + 48))
      {
LABEL_279:
        v162 += 72;
        v161 += 72;
        v160 = (v7 + v161);
        if ((v7 + v161) == a2)
        {
          return result;
        }
      }

      LOBYTE(v180[0]) = 0;
      LOBYTE(v182) = -1;
      v163 = *(v162 + 96);
      if (!*(v162 + 96))
      {
        v164 = *v160;
        *v160 = 0;
        v165 = *(v162 + 80);
        *(v162 + 80) = 0;
        v180[0] = v164;
        v180[1] = v165;
        LODWORD(v181) = *(v162 + 88);
        goto LABEL_268;
      }

      if (v163 != 255)
      {
        *v180 = *v160;
LABEL_268:
        LOBYTE(v182) = v163;
      }

      v166 = 0;
      v183 = *(v162 + 104);
      v167 = *(v162 + 128);
      v184 = *(v162 + 120);
      v185 = v167;
      v168 = *(v162 + 136);
      *(v162 + 128) = 0;
      *(v162 + 136) = 0;
      v186 = v168;
      while (1)
      {
        result = std::pair<WebCore::SecurityOriginData,WebKit::NetworkStorageManager::AccessRecord>::operator=[abi:sn200100](v162 + v166 + 72, v162 + v166);
        if (!(v161 + v166))
        {
          goto LABEL_283;
        }

        v169 = *(v162 + v166 - 24);
        v166 -= 72;
        if (v184 <= v169)
        {
          std::pair<WebCore::SecurityOriginData,WebKit::NetworkStorageManager::AccessRecord>::operator=[abi:sn200100](v162 + v166 + 72, v180);
          result = WTF::Vector<WebCore::SecurityOriginData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v185, v170);
          if (!v182)
          {
            v172 = v180[1];
            v180[1] = 0;
            if (v172 && atomic_fetch_add_explicit(v172, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v172, v171);
            }

            result = v180[0];
            v180[0] = 0;
            if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              result = WTF::StringImpl::destroy(result, v171);
            }
          }

          goto LABEL_279;
        }
      }
    }

    if (!a3)
    {
      if (v7 == a2)
      {
        return result;
      }

      v113 = v11 >> 1;
      v114 = v11 >> 1;
      while (2)
      {
        v115 = v114;
        if (v113 >= v114)
        {
          v116 = (2 * v114) | 1;
          v117 = v7 + 72 * v116;
          if (2 * v115 + 2 < v10 && *(v117 + 48) > *(v117 + 120))
          {
            v117 += 72;
            v116 = 2 * v115 + 2;
          }

          v118 = v7 + 72 * v115;
          if (*(v117 + 48) <= *(v118 + 48))
          {
            LOBYTE(v180[0]) = 0;
            LOBYTE(v182) = -1;
            v119 = *(v118 + 24);
            if (!*(v118 + 24))
            {
              v120 = *v118;
              *v118 = 0;
              v180[0] = v120;
              v121 = *(v118 + 8);
              *(v118 + 8) = 0;
              v180[1] = v121;
              LODWORD(v181) = *(v118 + 16);
              goto LABEL_199;
            }

            if (v119 != 255)
            {
              *v180 = *v118;
LABEL_199:
              LOBYTE(v182) = v119;
            }

            v122 = *(v118 + 32);
            v184 = *(v118 + 48);
            v183 = v122;
            v123 = *(v118 + 56);
            *(v118 + 56) = 0;
            v185 = v123;
            LODWORD(v123) = *(v118 + 64);
            *(v118 + 64) = 0;
            LODWORD(v186) = v123;
            LODWORD(v123) = *(v118 + 68);
            *(v118 + 68) = 0;
            HIDWORD(v186) = v123;
            v124 = v184;
            do
            {
              v125 = v117;
              std::pair<WebCore::SecurityOriginData,WebKit::NetworkStorageManager::AccessRecord>::operator=[abi:sn200100](v118, v117);
              if (v113 < v116)
              {
                break;
              }

              v126 = 2 * v116;
              v116 = (2 * v116) | 1;
              v117 = v7 + 72 * v116;
              v127 = v126 + 2;
              if (v127 < v10 && *(v117 + 48) > *(v117 + 120))
              {
                v117 += 72;
                v116 = v127;
              }

              v118 = v125;
            }

            while (*(v117 + 48) <= v124);
            std::pair<WebCore::SecurityOriginData,WebKit::NetworkStorageManager::AccessRecord>::operator=[abi:sn200100](v125, v180);
            WTF::Vector<WebCore::SecurityOriginData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v185, v128);
            if (!v182)
            {
              v130 = v180[1];
              v180[1] = 0;
              if (v130 && atomic_fetch_add_explicit(v130, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v130, v129);
              }

              v131 = v180[0];
              v180[0] = 0;
              if (v131 && atomic_fetch_add_explicit(v131, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v131, v129);
              }
            }
          }
        }

        v114 = v115 - 1;
        if (v115)
        {
          continue;
        }

        break;
      }

      v132 = 0x8E38E38E38E38E39 * (v9 >> 3);
      while (2)
      {
        LOBYTE(v174[0]) = 0;
        v176 = -1;
        v133 = *(v7 + 24);
        if (!*(v7 + 24))
        {
          v134 = *v7;
          *v7 = 0;
          *(v7 + 8) = 0;
          *v174 = v134;
          v175 = *(v7 + 16);
          goto LABEL_219;
        }

        if (v133 != 255)
        {
          *v174 = *v7;
LABEL_219:
          v176 = v133;
        }

        v135 = 0;
        v136 = *(v7 + 32);
        v137 = *(v7 + 56);
        v178 = *(v7 + 48);
        v177 = v136;
        *(v7 + 56) = 0;
        v179[0] = v137;
        *&v136 = *(v7 + 64);
        *(v7 + 64) = 0;
        v138 = v7;
        v179[1] = v136;
        do
        {
          v139 = v138 + 72 * v135;
          v140 = v139 + 72;
          if (2 * v135 + 2 >= v132)
          {
            v135 = (2 * v135) | 1;
          }

          else
          {
            v141 = *(v139 + 120);
            v142 = *(v139 + 192);
            v143 = v139 + 144;
            if (v141 <= v142)
            {
              v135 = (2 * v135) | 1;
            }

            else
            {
              v140 = v143;
              v135 = 2 * v135 + 2;
            }
          }

          std::pair<WebCore::SecurityOriginData,WebKit::NetworkStorageManager::AccessRecord>::operator=[abi:sn200100](v138, v140);
          v138 = v140;
        }

        while (v135 <= ((v132 - 2) >> 1));
        a2 -= 9;
        if (v140 == a2)
        {
          std::pair<WebCore::SecurityOriginData,WebKit::NetworkStorageManager::AccessRecord>::operator=[abi:sn200100](v140, v174);
        }

        else
        {
          std::pair<WebCore::SecurityOriginData,WebKit::NetworkStorageManager::AccessRecord>::operator=[abi:sn200100](v140, a2);
          std::pair<WebCore::SecurityOriginData,WebKit::NetworkStorageManager::AccessRecord>::operator=[abi:sn200100](a2, v174);
          v145 = v140 - v7 + 72;
          if (v145 >= 73)
          {
            v146 = (-2 - 0x71C71C71C71C71C7 * (v145 >> 3)) >> 1;
            v147 = v7 + 72 * v146;
            if (*(v147 + 48) > *(v140 + 48))
            {
              LOBYTE(v180[0]) = 0;
              LOBYTE(v182) = -1;
              v148 = *(v140 + 24);
              if (!*(v140 + 24))
              {
                v149 = *v140;
                *v140 = 0;
                *(v140 + 8) = 0;
                *v180 = v149;
                LODWORD(v181) = *(v140 + 16);
                goto LABEL_232;
              }

              if (v148 != 255)
              {
                *v180 = *v140;
LABEL_232:
                LOBYTE(v182) = v148;
              }

              v150 = *(v140 + 32);
              v151 = *(v140 + 56);
              v184 = *(v140 + 48);
              v183 = v150;
              *(v140 + 56) = 0;
              v185 = v151;
              *&v150 = *(v140 + 64);
              *(v140 + 64) = 0;
              v186 = v150;
              v152 = v184;
              do
              {
                v153 = v147;
                std::pair<WebCore::SecurityOriginData,WebKit::NetworkStorageManager::AccessRecord>::operator=[abi:sn200100](v140, v147);
                if (!v146)
                {
                  break;
                }

                v146 = (v146 - 1) >> 1;
                v147 = v7 + 72 * v146;
                v140 = v153;
              }

              while (*(v147 + 48) > v152);
              std::pair<WebCore::SecurityOriginData,WebKit::NetworkStorageManager::AccessRecord>::operator=[abi:sn200100](v153, v180);
              WTF::Vector<WebCore::SecurityOriginData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v185, v154);
              if (!v182)
              {
                v155 = v180[1];
                v180[1] = 0;
                if (v155 && atomic_fetch_add_explicit(v155, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  WTF::StringImpl::destroy(v155, v144);
                }

                v156 = v180[0];
                v180[0] = 0;
                if (v156 && atomic_fetch_add_explicit(v156, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  WTF::StringImpl::destroy(v156, v144);
                }
              }
            }
          }
        }

        result = WTF::Vector<WebCore::SecurityOriginData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v179, v144);
        if (!v176)
        {
          v158 = v174[1];
          v174[1] = 0;
          if (v158 && atomic_fetch_add_explicit(v158, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v158, v157);
          }

          result = v174[0];
          v174[0] = 0;
          if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            result = WTF::StringImpl::destroy(result, v157);
          }
        }

        if (v132-- <= 2)
        {
          return result;
        }

        continue;
      }
    }

    v12 = v10 >> 1;
    v13 = v7 + 72 * (v10 >> 1);
    v14 = *(a2 - 3);
    if (v9 >= 0x2401)
    {
      v15 = *(v13 + 48);
      if (v15 <= *(v7 + 48))
      {
        if (v14 > v15)
        {
          std::ranges::__iter_swap::__fn::operator()[abi:sn200100]<std::pair<WebCore::SecurityOriginData,WebKit::NetworkStorageManager::AccessRecord> *&,std::pair<WebCore::SecurityOriginData,WebKit::NetworkStorageManager::AccessRecord> *&>(v13, v173);
          if (*(v13 + 48) > *(v7 + 48))
          {
            v16 = v7;
            v17 = v13;
            goto LABEL_26;
          }
        }
      }

      else
      {
        v16 = v7;
        if (v14 > v15)
        {
          goto LABEL_17;
        }

        std::ranges::__iter_swap::__fn::operator()[abi:sn200100]<std::pair<WebCore::SecurityOriginData,WebKit::NetworkStorageManager::AccessRecord> *&,std::pair<WebCore::SecurityOriginData,WebKit::NetworkStorageManager::AccessRecord> *&>(v7, v13);
        if (*(a2 - 3) > *(v13 + 48))
        {
          v16 = v13;
LABEL_17:
          v17 = (a2 - 9);
LABEL_26:
          std::ranges::__iter_swap::__fn::operator()[abi:sn200100]<std::pair<WebCore::SecurityOriginData,WebKit::NetworkStorageManager::AccessRecord> *&,std::pair<WebCore::SecurityOriginData,WebKit::NetworkStorageManager::AccessRecord> *&>(v16, v17);
        }
      }

      v21 = v7 + 72 * v12;
      v22 = v21 - 72;
      v23 = *(v21 - 24);
      v24 = *(a2 - 12);
      if (v23 <= *(v7 + 120))
      {
        if (v24 > v23)
        {
          std::ranges::__iter_swap::__fn::operator()[abi:sn200100]<std::pair<WebCore::SecurityOriginData,WebKit::NetworkStorageManager::AccessRecord> *&,std::pair<WebCore::SecurityOriginData,WebKit::NetworkStorageManager::AccessRecord> *&>(v21 - 72, (a2 - 18));
          if (*(v22 + 48) > *(v7 + 120))
          {
            v25 = v7 + 72;
            v26 = v22;
            goto LABEL_39;
          }
        }
      }

      else
      {
        v25 = v7 + 72;
        if (v24 > v23)
        {
          goto LABEL_31;
        }

        std::ranges::__iter_swap::__fn::operator()[abi:sn200100]<std::pair<WebCore::SecurityOriginData,WebKit::NetworkStorageManager::AccessRecord> *&,std::pair<WebCore::SecurityOriginData,WebKit::NetworkStorageManager::AccessRecord> *&>(v25, v21 - 72);
        if (*(a2 - 12) > *(v22 + 48))
        {
          v25 = v22;
LABEL_31:
          v26 = (a2 - 18);
LABEL_39:
          std::ranges::__iter_swap::__fn::operator()[abi:sn200100]<std::pair<WebCore::SecurityOriginData,WebKit::NetworkStorageManager::AccessRecord> *&,std::pair<WebCore::SecurityOriginData,WebKit::NetworkStorageManager::AccessRecord> *&>(v25, v26);
        }
      }

      v27 = v7 + 72 * v12;
      v28 = *(v27 + 120);
      v29 = *(a2 - 21);
      if (v28 <= *(v7 + 192))
      {
        if (v29 > v28)
        {
          std::ranges::__iter_swap::__fn::operator()[abi:sn200100]<std::pair<WebCore::SecurityOriginData,WebKit::NetworkStorageManager::AccessRecord> *&,std::pair<WebCore::SecurityOriginData,WebKit::NetworkStorageManager::AccessRecord> *&>(v27 + 72, (a2 - 27));
          if (*(v27 + 120) > *(v7 + 192))
          {
            v30 = v7 + 144;
            v31 = v27 + 72;
            goto LABEL_48;
          }
        }
      }

      else
      {
        v30 = v7 + 144;
        if (v29 > v28)
        {
          goto LABEL_44;
        }

        std::ranges::__iter_swap::__fn::operator()[abi:sn200100]<std::pair<WebCore::SecurityOriginData,WebKit::NetworkStorageManager::AccessRecord> *&,std::pair<WebCore::SecurityOriginData,WebKit::NetworkStorageManager::AccessRecord> *&>(v30, v27 + 72);
        if (*(a2 - 21) > *(v27 + 120))
        {
          v30 = v27 + 72;
LABEL_44:
          v31 = (a2 - 27);
LABEL_48:
          std::ranges::__iter_swap::__fn::operator()[abi:sn200100]<std::pair<WebCore::SecurityOriginData,WebKit::NetworkStorageManager::AccessRecord> *&,std::pair<WebCore::SecurityOriginData,WebKit::NetworkStorageManager::AccessRecord> *&>(v30, v31);
        }
      }

      v32 = *(v13 + 48);
      v33 = *(v27 + 120);
      if (v32 <= *(v22 + 48))
      {
        if (v33 > v32)
        {
          std::ranges::__iter_swap::__fn::operator()[abi:sn200100]<std::pair<WebCore::SecurityOriginData,WebKit::NetworkStorageManager::AccessRecord> *&,std::pair<WebCore::SecurityOriginData,WebKit::NetworkStorageManager::AccessRecord> *&>(v13, v27 + 72);
          if (*(v13 + 48) > *(v22 + 48))
          {
            v35 = v22;
            v34 = v13;
            goto LABEL_57;
          }
        }
      }

      else
      {
        if (v33 > v32)
        {
          v34 = v27 + 72;
          v35 = v22;
          goto LABEL_57;
        }

        std::ranges::__iter_swap::__fn::operator()[abi:sn200100]<std::pair<WebCore::SecurityOriginData,WebKit::NetworkStorageManager::AccessRecord> *&,std::pair<WebCore::SecurityOriginData,WebKit::NetworkStorageManager::AccessRecord> *&>(v22, v13);
        if (*(v27 + 120) > *(v13 + 48))
        {
          v34 = v27 + 72;
          v35 = v13;
LABEL_57:
          std::ranges::__iter_swap::__fn::operator()[abi:sn200100]<std::pair<WebCore::SecurityOriginData,WebKit::NetworkStorageManager::AccessRecord> *&,std::pair<WebCore::SecurityOriginData,WebKit::NetworkStorageManager::AccessRecord> *&>(v35, v34);
        }
      }

      LOBYTE(v180[0]) = 0;
      LOBYTE(v182) = -1;
      v36 = *(v7 + 24);
      if (!*(v7 + 24))
      {
        v37 = *v7;
        *v7 = 0;
        *(v7 + 8) = 0;
        *v180 = v37;
        LODWORD(v181) = *(v7 + 16);
        goto LABEL_60;
      }

      if (v36 != 255)
      {
        *v180 = *v7;
LABEL_60:
        LOBYTE(v182) = v36;
      }

      WebCore::SecurityOriginData::operator=(v7);
      WebCore::SecurityOriginData::operator=(v13);
      if (!v182)
      {
        v39 = v180[1];
        v180[1] = 0;
        if (v39 && atomic_fetch_add_explicit(v39, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v39, v38);
        }

        v40 = v180[0];
        v180[0] = 0;
        if (v40 && atomic_fetch_add_explicit(v40, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v40, v38);
        }
      }

      v41 = *(v7 + 56);
      *v180 = *(v7 + 32);
      v181 = *(v7 + 48);
      v43 = *(v7 + 64);
      v42 = *(v7 + 68);
      *(v7 + 56) = 0;
      *(v7 + 64) = 0;
      v44 = *(v13 + 48);
      *(v7 + 32) = *(v13 + 32);
      *(v7 + 48) = v44;
      WTF::VectorBuffer<WTF::String,0ul,WTF::FastMalloc>::adopt(v7 + 56, (v13 + 56));
      v46 = *v180;
      *(v13 + 48) = v181;
      *(v13 + 32) = v46;
      v47 = *(v13 + 68);
      if (v47)
      {
        WTF::VectorTypeOperations<WebCore::SecurityOriginData>::destruct(*(v13 + 56), (*(v13 + 56) + 32 * v47));
      }

      v48 = *(v13 + 56);
      if (v48)
      {
        *(v13 + 56) = 0;
        *(v13 + 64) = 0;
        WTF::fastFree(v48, v45);
      }

      v182 = 0;
      *(v13 + 56) = v41;
      LODWORD(v183) = 0;
      *(v13 + 64) = v43;
      DWORD1(v183) = 0;
      *(v13 + 68) = v42;
      result = WTF::Vector<WebCore::SecurityOriginData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v182, v45);
      goto LABEL_73;
    }

    v18 = *(v7 + 48);
    if (v18 <= *(v13 + 48))
    {
      if (v14 > v18)
      {
        result = std::ranges::__iter_swap::__fn::operator()[abi:sn200100]<std::pair<WebCore::SecurityOriginData,WebKit::NetworkStorageManager::AccessRecord> *&,std::pair<WebCore::SecurityOriginData,WebKit::NetworkStorageManager::AccessRecord> *&>(v7, v173);
        if (*(v7 + 48) > *(v13 + 48))
        {
          v19 = v13;
          v20 = v7;
          goto LABEL_35;
        }
      }
    }

    else
    {
      v19 = v13;
      if (v14 > v18)
      {
        goto LABEL_22;
      }

      result = std::ranges::__iter_swap::__fn::operator()[abi:sn200100]<std::pair<WebCore::SecurityOriginData,WebKit::NetworkStorageManager::AccessRecord> *&,std::pair<WebCore::SecurityOriginData,WebKit::NetworkStorageManager::AccessRecord> *&>(v13, v7);
      if (*(a2 - 3) > *(v7 + 48))
      {
        v19 = v7;
LABEL_22:
        v20 = (a2 - 9);
LABEL_35:
        result = std::ranges::__iter_swap::__fn::operator()[abi:sn200100]<std::pair<WebCore::SecurityOriginData,WebKit::NetworkStorageManager::AccessRecord> *&,std::pair<WebCore::SecurityOriginData,WebKit::NetworkStorageManager::AccessRecord> *&>(v19, v20);
      }
    }

LABEL_73:
    --a3;
    if ((a4 & 1) != 0 || *(v7 - 24) > *(v7 + 48))
    {
      LOBYTE(v180[0]) = 0;
      LOBYTE(v182) = -1;
      v49 = *(v7 + 24);
      if (!*(v7 + 24))
      {
        v50 = *v7;
        *v7 = 0;
        *(v7 + 8) = 0;
        *v180 = v50;
        LODWORD(v181) = *(v7 + 16);
        goto LABEL_77;
      }

      if (v49 != 255)
      {
        *v180 = *v7;
LABEL_77:
        LOBYTE(v182) = v49;
      }

      v51 = 0;
      v52 = *(v7 + 32);
      v53 = *(v7 + 56);
      v184 = *(v7 + 48);
      v183 = v52;
      *(v7 + 56) = 0;
      v185 = v53;
      *&v52 = *(v7 + 64);
      *(v7 + 64) = 0;
      v186 = v52;
      v54 = v184;
      do
      {
        if ((v7 + v51 + 72) == a2)
        {
          goto LABEL_283;
        }

        v55 = *(v7 + v51 + 120);
        v51 += 72;
      }

      while (v55 > v184);
      v56 = v7 + v51;
      v57 = a2;
      if (v51 != 72)
      {
        while (v57 != v7)
        {
          v58 = (v57 - 9);
          v59 = *(v57 - 3);
          v57 -= 9;
          if (v59 > v184)
          {
            goto LABEL_90;
          }
        }

        goto LABEL_283;
      }

      v60 = a2;
      while (v56 < v60)
      {
        v58 = (v60 - 9);
        v61 = *(v60 - 3);
        v60 -= 9;
        if (v61 > v184)
        {
          goto LABEL_90;
        }
      }

      v58 = v60;
LABEL_90:
      if (v56 < v58)
      {
        v62 = v58;
        v63 = v56;
LABEL_92:
        result = std::ranges::__iter_swap::__fn::operator()[abi:sn200100]<std::pair<WebCore::SecurityOriginData,WebKit::NetworkStorageManager::AccessRecord> *&,std::pair<WebCore::SecurityOriginData,WebKit::NetworkStorageManager::AccessRecord> *&>(v63, v62);
        v64 = (v63 + 72);
        while (v64 != a2)
        {
          v65 = v64[6];
          v64 += 9;
          if (v65 <= v54)
          {
            v63 = (v64 - 9);
            v66 = v62;
            while (v66 != v7)
            {
              v62 = v66 - 72;
              v67 = *(v66 - 24);
              v66 -= 72;
              if (v67 > v54)
              {
                if (v63 < v62)
                {
                  goto LABEL_92;
                }

                v68 = v64 - 18;
                goto LABEL_101;
              }
            }

            break;
          }
        }

LABEL_283:
        __break(1u);
        return result;
      }

      v68 = (v56 - 72);
LABEL_101:
      if (v68 != v7)
      {
        std::pair<WebCore::SecurityOriginData,WebKit::NetworkStorageManager::AccessRecord>::operator=[abi:sn200100](v7, v68);
      }

      std::pair<WebCore::SecurityOriginData,WebKit::NetworkStorageManager::AccessRecord>::operator=[abi:sn200100](v68, v180);
      WTF::Vector<WebCore::SecurityOriginData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v185, v69);
      if (!v182)
      {
        v71 = v180[1];
        v180[1] = 0;
        if (v71 && atomic_fetch_add_explicit(v71, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v71, v70);
        }

        v72 = v180[0];
        v180[0] = 0;
        if (v72)
        {
          if (atomic_fetch_add_explicit(v72, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v72, v70);
          }
        }
      }

      if (v56 < v58)
      {
LABEL_113:
        result = std::__introsort<std::_RangeAlgPolicy,WebKit::NetworkStorageManager::performEviction(WTF::HashMap<WebCore::SecurityOriginData,WebKit::NetworkStorageManager::AccessRecord,WTF::DefaultHash<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::HashTraits<WebKit::NetworkStorageManager::AccessRecord>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc> &&)::$_0 &,std::pair<WebCore::SecurityOriginData,WebKit::NetworkStorageManager::AccessRecord> *,false>(v7, v68, a3, a4 & 1);
        a4 = 0;
        v8 = (v68 + 9);
        continue;
      }

      v73 = std::__insertion_sort_incomplete[abi:sn200100]<std::_RangeAlgPolicy,WebKit::NetworkStorageManager::performEviction(WTF::HashMap<WebCore::SecurityOriginData,WebKit::NetworkStorageManager::AccessRecord,WTF::DefaultHash<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::HashTraits<WebKit::NetworkStorageManager::AccessRecord>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc> &&)::$_0 &,std::pair<WebCore::SecurityOriginData,WebKit::NetworkStorageManager::AccessRecord> *>(v7, v68);
      v8 = (v68 + 9);
      result = std::__insertion_sort_incomplete[abi:sn200100]<std::_RangeAlgPolicy,WebKit::NetworkStorageManager::performEviction(WTF::HashMap<WebCore::SecurityOriginData,WebKit::NetworkStorageManager::AccessRecord,WTF::DefaultHash<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::HashTraits<WebKit::NetworkStorageManager::AccessRecord>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc> &&)::$_0 &,std::pair<WebCore::SecurityOriginData,WebKit::NetworkStorageManager::AccessRecord> *>(v68 + 9, a2);
      if (!result)
      {
        if (v73)
        {
          continue;
        }

        goto LABEL_113;
      }

      a2 = v68;
      if (v73)
      {
        return result;
      }

      goto LABEL_2;
    }

    LOBYTE(v180[0]) = 0;
    LOBYTE(v182) = -1;
    v74 = *(v7 + 24);
    if (!*(v7 + 24))
    {
      v75 = *v7;
      *v7 = 0;
      *(v7 + 8) = 0;
      *v180 = v75;
      LODWORD(v181) = *(v7 + 16);
LABEL_116:
      LOBYTE(v182) = v74;
      goto LABEL_117;
    }

    if (v74 != 255)
    {
      *v180 = *v7;
      goto LABEL_116;
    }

LABEL_117:
    v76 = *(v7 + 32);
    v77 = *(v7 + 56);
    v184 = *(v7 + 48);
    v183 = v76;
    *(v7 + 56) = 0;
    v185 = v77;
    *&v76 = *(v7 + 64);
    *(v7 + 64) = 0;
    v186 = v76;
    v78 = v184;
    v79 = (v7 + 72);
    if (v184 <= *(a2 - 3))
    {
      do
      {
        v8 = v79;
        if (v79 >= a2)
        {
          break;
        }

        v81 = v79[6];
        v79 += 9;
      }

      while (v184 <= v81);
    }

    else
    {
      do
      {
        if (v79 == a2)
        {
          goto LABEL_283;
        }

        v80 = v79[6];
        v79 += 9;
      }

      while (v184 <= v80);
      v8 = (v79 - 9);
    }

    v82 = a2;
    if (v8 < a2)
    {
      v83 = a2;
      while (v83 != v7)
      {
        v82 = (v83 - 9);
        v84 = *(v83 - 3);
        v83 -= 9;
        if (v184 <= v84)
        {
          goto LABEL_134;
        }
      }

      goto LABEL_283;
    }

LABEL_134:
    if (v8 < v82)
    {
      result = std::ranges::__iter_swap::__fn::operator()[abi:sn200100]<std::pair<WebCore::SecurityOriginData,WebKit::NetworkStorageManager::AccessRecord> *&,std::pair<WebCore::SecurityOriginData,WebKit::NetworkStorageManager::AccessRecord> *&>(v8, v82);
      v85 = (v8 + 72);
      while (v85 != a2)
      {
        v86 = v85[6];
        v85 += 9;
        if (v78 > v86)
        {
          v8 = (v85 - 9);
          v87 = v82;
          while (v87 != v7)
          {
            v82 = v87 - 72;
            v88 = *(v87 - 24);
            v87 -= 72;
            if (v78 <= v88)
            {
              goto LABEL_134;
            }
          }

          goto LABEL_283;
        }
      }

      goto LABEL_283;
    }

    if (v8 - 72 != v7)
    {
      std::pair<WebCore::SecurityOriginData,WebKit::NetworkStorageManager::AccessRecord>::operator=[abi:sn200100](v7, v8 - 72);
    }

    std::pair<WebCore::SecurityOriginData,WebKit::NetworkStorageManager::AccessRecord>::operator=[abi:sn200100](v8 - 72, v180);
    result = WTF::Vector<WebCore::SecurityOriginData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v185, v89);
    if (!v182)
    {
      v91 = v180[1];
      v180[1] = 0;
      if (v91 && atomic_fetch_add_explicit(v91, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v91, v90);
      }

      result = v180[0];
      v180[0] = 0;
      if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        result = WTF::StringImpl::destroy(result, v90);
      }
    }

    a4 = 0;
  }

  v92 = *(v7 + 120);
  v93 = *(a2 - 3);
  if (v92 <= *(v7 + 48))
  {
    if (v93 > v92)
    {
      v95 = v7 + 72;
      v96 = (a2 - 9);
      goto LABEL_260;
    }
  }

  else
  {
    if (v93 > v92)
    {
      goto LABEL_162;
    }

    result = std::ranges::__iter_swap::__fn::operator()[abi:sn200100]<std::pair<WebCore::SecurityOriginData,WebKit::NetworkStorageManager::AccessRecord> *&,std::pair<WebCore::SecurityOriginData,WebKit::NetworkStorageManager::AccessRecord> *&>(v7, v7 + 72);
    if (*(a2 - 3) > *(v7 + 120))
    {
      v94 = v7 + 72;
      goto LABEL_163;
    }
  }

  return result;
}