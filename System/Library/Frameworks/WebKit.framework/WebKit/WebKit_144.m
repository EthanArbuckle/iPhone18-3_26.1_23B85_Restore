atomic_ullong *WebKit::NetworkCache::Storage::remove(atomic_ullong *this, const WebKit::NetworkCache::Key *a2)
{
  v15[9] = *MEMORY[0x1E69E9840];
  result = WebKit::NetworkCache::Storage::mayContain(this, a2);
  if (result)
  {
    while (1)
    {
      v6 = *this;
      if ((*this & 1) == 0)
      {
        break;
      }

      v11 = *this;
      atomic_compare_exchange_strong_explicit(this, &v11, v6 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v11 == v6)
      {
        goto LABEL_4;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*this);
LABEL_4:
    WebKit::NetworkCache::Storage::removeFromPendingWriteOperations(this, a2, v5);
    v7 = this[42];
    v14[0] = this;
    while (1)
    {
      v8 = *this;
      if ((*this & 1) == 0)
      {
        break;
      }

      v12 = *this;
      atomic_compare_exchange_strong_explicit(this, &v12, v8 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v12 == v8)
      {
        goto LABEL_7;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*this);
LABEL_7:
    v14[1] = this;
    WebKit::NetworkCache::Key::Key(v15, a2);
    WTF::Function<void ()(void)>::Function<WebKit::NetworkCache::Storage::remove(WebKit::NetworkCache::Key const&)::$_0,void>(&v13, v14);
    (*(*v7 + 48))(v7, &v13);
    v10 = v13;
    v13 = 0;
    if (v10)
    {
      (*(*v10 + 8))(v10);
    }

    WebKit::NetworkCache::Storage::remove(WebKit::NetworkCache::Key const&)::$_0::~$_0(v14, v9);
    return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::NetworkCache::Storage,(WTF::DestructionThread)2>::deref(this);
  }

  return result;
}

void *WTF::Function<void ()(void)>::Function<WebKit::NetworkCache::Storage::remove(WebKit::NetworkCache::Key const&)::$_0,void>(void *a1, uint64_t *a2)
{
  v4 = WTF::fastMalloc(0x60);
  v5 = *a2;
  *v4 = &unk_1F1109230;
  v4[1] = v5;
  v6 = a2[1];
  a2[1] = 0;
  v4[2] = v6;
  WebKit::NetworkCache::Key::Key((v4 + 3), (a2 + 2));
  *a1 = v4;
  return a1;
}

void *WebKit::NetworkCache::Storage::remove(WebKit::NetworkCache::Key const&)::$_0::~$_0(void *a1, WTF::StringImpl *a2)
{
  v3 = a1[5];
  a1[5] = 0;
  if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v3, a2);
  }

  v4 = a1[4];
  a1[4] = 0;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, a2);
  }

  v5 = a1[3];
  a1[3] = 0;
  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, a2);
  }

  v6 = a1[2];
  a1[2] = 0;
  if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v6, a2);
  }

  v7 = a1[1];
  a1[1] = 0;
  if (v7)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::NetworkCache::Storage,(WTF::DestructionThread)2>::deref(v7);
  }

  return a1;
}

uint64_t WebKit::NetworkCache::Storage::remove(WTF::StringImpl *a1, unsigned int *a2, uint64_t *a3, __n128 a4)
{
  v64 = *MEMORY[0x1E69E9840];
  v52[0] = 0;
  v52[1] = 0;
  v6 = a2[3];
  if (!v6)
  {
    goto LABEL_36;
  }

  if (v6 >= 0x38E38E4)
  {
    __break(0xC471u);
    goto LABEL_60;
  }

  v8 = 72 * v6;
  v9 = WTF::fastMalloc((72 * v6));
  LODWORD(v6) = v8 / 0x48;
  LODWORD(v52[1]) = v8 / 0x48;
  v52[0] = v9;
  v10 = a2[3];
  if (v10)
  {
    v11 = *a2;
    v12 = 72 * v10;
    do
    {
      if (WebKit::NetworkCache::Storage::mayContain(a1, v11))
      {
        WebKit::NetworkCache::Storage::removeFromPendingWriteOperations(a1, v11, v13);
        WebKit::NetworkCache::Key::Key(v58, v11);
        v63 = 1;
        v14 = *v58;
        v15 = *v59;
        *v58 = 0u;
        *v59 = 0u;
        *v53 = v14;
        *v54 = v15;
        v55 = v60;
        v56 = v61;
        v57 = v62;
        v16 = HIDWORD(v52[1]);
        if (HIDWORD(v52[1]) == LODWORD(v52[1]))
        {
          v17 = WTF::Vector<WebKit::NetworkCache::Key,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(v52, HIDWORD(v52[1]) + 1, v53);
          v16 = HIDWORD(v52[1]);
          v18 = (v52[0] + 72 * HIDWORD(v52[1]));
          v19 = *v17;
          *v17 = 0;
          v18->n128_u64[0] = v19;
          v20 = *(v17 + 8);
          *(v17 + 8) = 0;
          v18->n128_u64[1] = v20;
          v21 = *(v17 + 16);
          *(v17 + 16) = 0;
          v18[1].n128_u64[0] = v21;
          v22 = *(v17 + 24);
          *(v17 + 24) = 0;
          v18[1].n128_u64[1] = v22;
          a4 = *(v17 + 32);
          v23 = *(v17 + 48);
          v18[4].n128_u64[0] = *(v17 + 64);
        }

        else
        {
          v18 = (v52[0] + 72 * HIDWORD(v52[1]));
          v53[0] = 0;
          v18->n128_u64[0] = v14;
          v24 = v53[1];
          v53[1] = 0;
          v18->n128_u64[1] = v24;
          v25 = v54[0];
          v54[0] = 0;
          v18[1].n128_u64[0] = v25;
          v26 = v54[1];
          v54[1] = 0;
          v18[1].n128_u64[1] = v26;
          a4 = v55;
          v23 = v56;
          v18[4].n128_u64[0] = v57;
        }

        v18[2] = a4;
        v18[3] = v23;
        HIDWORD(v52[1]) = v16 + 1;
        v27 = v54[1];
        v54[1] = 0;
        if (v27 && atomic_fetch_add_explicit(v27, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v27, a2);
        }

        v28 = v54[0];
        v54[0] = 0;
        if (v28 && atomic_fetch_add_explicit(v28, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v28, a2);
        }

        v29 = v53[1];
        v53[1] = 0;
        if (v29 && atomic_fetch_add_explicit(v29, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v29, a2);
        }

        v30 = v53[0];
        v53[0] = 0;
        if (v30 && atomic_fetch_add_explicit(v30, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v30, a2);
        }

        if (v63)
        {
          v31 = v59[1];
          v59[1] = 0;
          if (v31 && atomic_fetch_add_explicit(v31, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v31, a2);
          }

          v32 = v59[0];
          v59[0] = 0;
          if (v32 && atomic_fetch_add_explicit(v32, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v32, a2);
          }

          v33 = v58[1];
          v58[1] = 0;
          if (v33 && atomic_fetch_add_explicit(v33, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v33, a2);
          }

          v34 = v58[0];
          v58[0] = 0;
          if (v34 && atomic_fetch_add_explicit(v34, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v34, a2);
          }
        }
      }

      v11 = (v11 + 72);
      v12 -= 72;
    }

    while (v12);
    LODWORD(v6) = v52[1];
    v35 = HIDWORD(v52[1]);
    v36 = HIDWORD(v52[1]);
  }

  else
  {
LABEL_36:
    v35 = 0;
    v36 = 0;
  }

  if (v36 < v6)
  {
    v37 = v52[0];
    if (v36 < v35)
    {
      WTF::VectorTypeOperations<WebKit::NetworkCache::Key>::destruct((v52[0] + 72 * v36), (v52[0] + 72 * v35));
      HIDWORD(v52[1]) = v36;
      v37 = v52[0];
      v35 = v36;
    }

    if (!v36)
    {
      goto LABEL_44;
    }

    if (v36 < 0x38E38E4)
    {
      v38 = (72 * v36);
      v39 = WTF::fastMalloc(v38);
      LODWORD(v52[1]) = v38 / 0x48;
      v52[0] = v39;
      if (v39 != v37)
      {
        WTF::VectorMover<false,WebKit::NetworkCache::Key>::move(v37, (v37 + 72 * v35), v39);
      }

LABEL_44:
      if (v37)
      {
        if (v52[0] == v37)
        {
          v52[0] = 0;
          LODWORD(v52[1]) = 0;
        }

        WTF::fastFree(v37, a2);
      }

      goto LABEL_48;
    }

    __break(0xC471u);
LABEL_60:
    JUMPOUT(0x19DD9EB70);
  }

LABEL_48:
  v40 = *(a1 + 42);
  v58[0] = a1;
  while (1)
  {
    v41 = *a1;
    if ((*a1 & 1) == 0)
    {
      break;
    }

    v42 = *a1;
    atomic_compare_exchange_strong_explicit(a1, &v42, v41 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v42 == v41)
    {
      goto LABEL_53;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_53:
  a4.n128_u64[0] = 0;
  v43 = v52[0];
  v44 = v52[1];
  *v52 = a4;
  v45 = *a3;
  *a3 = 0;
  v46 = WTF::fastMalloc(0x30);
  *v46 = &unk_1F1109258;
  *(v46 + 1) = a1;
  *(v46 + 2) = a1;
  *(v46 + 3) = v43;
  v58[1] = 0;
  v59[0] = 0;
  v59[1] = 0;
  *(v46 + 4) = v44;
  *(v46 + 5) = v45;
  v53[0] = v46;
  (*(*v40 + 48))(v40, v53);
  v48 = v53[0];
  v53[0] = 0;
  if (v48)
  {
    (*(*v48 + 8))(v48);
  }

  v60.n128_u64[0] = 0;
  WTF::Vector<WebKit::NetworkCache::Key,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v59, v47);
  v50 = v58[1];
  v58[1] = 0;
  if (v50)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::NetworkCache::Storage,(WTF::DestructionThread)2>::deref(v50);
  }

  return WTF::Vector<WebKit::NetworkCache::Key,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v52, v49);
}

WTF::StringImpl *WebKit::NetworkCache::Storage::deleteFiles(WebKit::NetworkCache::Storage *this, const WebKit::NetworkCache::Key *a2)
{
  WebKit::NetworkCache::Storage::recordPathForKey(&v10, this, a2);
  WTF::FileSystemImpl::deleteFile(&v10, v4);
  v6 = v10;
  v10 = 0;
  if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v6, v5);
  }

  WebKit::NetworkCache::Storage::blobPathForKey(&v10, this, a2);
  WTF::FileSystemImpl::deleteFile(&v10, v7);
  result = v10;
  v10 = 0;
  if (result)
  {
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v8);
    }
  }

  return result;
}

WTF::StringImpl **WebKit::NetworkCache::Storage::finishReadOperation(uint64_t *a1, uint64_t a2)
{
  v51 = *MEMORY[0x1E69E9840];
  v3 = a1 + 18;
  v2 = a1[18];
  if (!v2)
  {
    goto LABEL_50;
  }

  if (a2 == -1)
  {
    __break(0xC471u);
    JUMPOUT(0x19DD9F088);
  }

  if (!a2)
  {
    goto LABEL_50;
  }

  v5 = *(v2 - 8);
  v6 = (~(a2 << 32) + a2) ^ ((~(a2 << 32) + a2) >> 22);
  v7 = 9 * ((v6 + ~(v6 << 13)) ^ ((v6 + ~(v6 << 13)) >> 8));
  v8 = (v7 ^ (v7 >> 15)) + ~((v7 ^ (v7 >> 15)) << 27);
  v9 = v5 & ((v8 >> 31) ^ v8);
  v10 = *(v2 + 16 * v9);
  if (v10 != a2)
  {
    v34 = 1;
    while (v10)
    {
      v9 = (v9 + v34) & v5;
      v10 = *(v2 + 16 * v9);
      ++v34;
      if (v10 == a2)
      {
        goto LABEL_5;
      }
    }

    v9 = *(v2 - 4);
  }

LABEL_5:
  if (v9 == *(v2 - 4))
  {
    goto LABEL_50;
  }

  v11 = (v2 + 16 * v9);
  v13 = v11[1];
  ++v11;
  v12 = v13;
  *v11 = 0;
  v38 = v13;
  *(v2 + 16 * v9) = -1;
  v14 = std::unique_ptr<WebKit::NetworkCache::Storage::ReadOperation>::reset[abi:sn200100](v11, 0);
  v15 = *v3;
  v16 = vadd_s32(*(*v3 - 16), 0xFFFFFFFF00000001);
  *(v15 - 16) = v16;
  v17 = *(v15 - 4);
  if (6 * v16.i32[1] < v17 && v17 >= 9)
  {
    v14 = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::ReadOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::ReadOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::NetworkCache::Storage::ReadOperation>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::ReadOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::NetworkCache::Storage::ReadOperation>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::ReadOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::ReadOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::NetworkCache::Storage::ReadOperation>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::ReadOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::ReadOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkCache::Storage::ReadOperation>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::ReadOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash(v3, v17 >> 1);
  }

  if (!v12)
  {
LABEL_50:
    __break(0xC471u);
    JUMPOUT(0x19DD9F068);
  }

  if (!*(v12 + 11))
  {
    goto LABEL_45;
  }

  WTF::MonotonicTime::now(v14);
  *(v12 + 19) = v19;
  if ((WebKit::NetworkCache::Key::operator==(v12 + 184, v12 + 8, v20) & 1) == 0)
  {
    v50 = 0;
    v48 = 0u;
    v49 = 0u;
    v47 = 0u;
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v40 = 0u;
    WebKit::NetworkCache::Storage::Record::operator=(v12 + 184, &v40);
    WebKit::NetworkCache::Storage::Record::~Record(&v40, v35);
  }

  if (*(v12 + 372) == 1)
  {
    if (*(v12 + 348) != 1 || (*(v12 + 44) == *(v12 + 41) ? (v31 = *(v12 + 45) == *(v12 + 42)) : (v31 = 0), v31 ? (v32 = *(v12 + 92) == *(v12 + 86)) : (v32 = 0), !v32))
    {
      v50 = 0;
      v48 = 0u;
      v49 = 0u;
      v47 = 0u;
      v45 = 0u;
      v46 = 0u;
      v43 = 0u;
      v44 = 0u;
      v41 = 0u;
      v42 = 0u;
      v40 = 0u;
      WebKit::NetworkCache::Storage::Record::operator=(v12 + 184, &v40);
      WebKit::NetworkCache::Storage::Record::~Record(&v40, v33);
    }
  }

  if (!*(v12 + 37))
  {
    v50 = 0;
    v48 = 0u;
    v49 = 0u;
    v47 = 0u;
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v40 = 0u;
    WebKit::NetworkCache::Storage::Record::operator=(v12 + 184, &v40);
    WebKit::NetworkCache::Storage::Record::~Record(&v40, v36);
  }

  v21 = *(v12 + 11);
  *(v12 + 11) = 0;
  v22 = (*(*v21 + 16))(v21, v12 + 184, v12 + 104);
  (*(*v21 + 8))(v21);
  if (v22)
  {
    WebKit::NetworkCache::Storage::recordPathForKey(&v37, a1, v12 + 8);
    v23 = a1[42];
    WTF::String::isolatedCopy();
    v24 = WTF::fastMalloc(0x10);
    *v24 = &unk_1F1109280;
    v25 = v39;
    v39 = 0;
    *&v40 = v24;
    v24[1] = v25;
    (*(*v23 + 48))(v23, &v40);
    v27 = v40;
    *&v40 = 0;
    if (v27)
    {
      (*(*v27 + 8))(v27);
    }

    v28 = v39;
    v39 = 0;
    if (v28 && atomic_fetch_add_explicit(v28, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v28, v26);
    }

    v29 = v37;
    v37 = 0;
    if (v29 && atomic_fetch_add_explicit(v29, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v29, v26);
    }
  }

  else
  {
LABEL_45:
    if ((*(v12 + 98) & 1) == 0)
    {
      WebKit::NetworkCache::Storage::remove(a1, (v12 + 8));
    }
  }

  if ((!*v3 || !*(*v3 - 12)) && (a1[23] & 0xFFFFFFFFFFFFLL) != 0)
  {
    WebCore::TimerBase::stopSlowCase((a1 + 19));
  }

  WebKit::NetworkCache::Storage::dispatchPendingReadOperations(a1);
  return std::unique_ptr<WebKit::NetworkCache::Storage::ReadOperation>::reset[abi:sn200100](&v38, 0);
}

WTF::StringImpl **WebKit::NetworkCache::Storage::dispatchPendingReadOperations(WTF::StringImpl **this)
{
  v54 = *MEMORY[0x1E69E9840];
  if (*(this + 35))
  {
    v1 = this;
    do
    {
      v2 = *(v1 + 144);
      if (v2 && *(v2 - 12) > 5u)
      {
        return this;
      }

      WTF::PriorityQueue<std::unique_ptr<WebKit::NetworkCache::Storage::ReadOperation>,&WebKit::NetworkCache::Storage::isHigherPriority,0ul>::dequeue(&v40, (v1 + 128));
      v3 = v40;
      v4 = *v40;
      if (*v40 == -1 || !v4)
      {
        __break(0xC471u);
        JUMPOUT(0x19DD9F58CLL);
      }

      v5 = *(v1 + 144);
      if (!v5)
      {
        WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::ReadOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::ReadOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::NetworkCache::Storage::ReadOperation>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::ReadOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::NetworkCache::Storage::ReadOperation>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::ReadOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::ReadOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::NetworkCache::Storage::ReadOperation>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::ReadOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::ReadOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkCache::Storage::ReadOperation>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::ReadOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand((v1 + 144));
        v5 = *(v1 + 144);
      }

      v6 = *(v5 - 8);
      v7 = (v4 + ~(v4 << 32)) ^ ((v4 + ~(v4 << 32)) >> 22);
      v8 = 9 * ((v7 + ~(v7 << 13)) ^ ((v7 + ~(v7 << 13)) >> 8));
      v9 = (v8 ^ (v8 >> 15)) + ~((v8 ^ (v8 >> 15)) << 27);
      v10 = v6 & ((v9 >> 31) ^ v9);
      v11 = (v5 + 16 * v10);
      v12 = *v11;
      if (*v11)
      {
        v13 = 0;
        v14 = 1;
        while (v12 != v4)
        {
          if (v12 == -1)
          {
            v13 = v11;
          }

          v10 = (v10 + v14) & v6;
          v11 = (v5 + 16 * v10);
          v12 = *v11;
          ++v14;
          if (!*v11)
          {
            if (v13)
            {
              *v13 = 0;
              v13[1] = 0;
              --*(*(v1 + 144) - 16);
              v11 = v13;
            }

            goto LABEL_17;
          }
        }

        goto LABEL_21;
      }

LABEL_17:
      *v11 = v4;
      v40 = 0;
      v49 = 0;
      std::unique_ptr<WebKit::NetworkCache::Storage::ReadOperation>::reset[abi:sn200100](v11 + 1, v3);
      std::unique_ptr<WebKit::NetworkCache::Storage::ReadOperation>::reset[abi:sn200100](&v49, 0);
      v15 = *(v1 + 144);
      if (v15)
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
LABEL_65:
          WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::ReadOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::ReadOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::NetworkCache::Storage::ReadOperation>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::ReadOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::NetworkCache::Storage::ReadOperation>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::ReadOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::ReadOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::NetworkCache::Storage::ReadOperation>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::ReadOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::ReadOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkCache::Storage::ReadOperation>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::ReadOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand((v1 + 144));
        }
      }

      else if (3 * v18 <= 4 * v17)
      {
        goto LABEL_65;
      }

LABEL_21:
      WebKit::NetworkCache::Key::Key(&v49, (v3 + 8));
      v19 = WebKit::NetworkCache::Storage::recordPathForKey(&v48, v1, &v49);
      v20 = *(v1 + 72);
      if (!v20 || ((*(v20 + 4 * ((v53 >> 5) & 0x1FFF)) >> v53) & 1) != 0 && ((*(v20 + 4 * ((v53 >> 37) & 0x1FFF)) >> SBYTE4(v53)) & 1) != 0)
      {
        v19 = WebKit::NetworkCache::Storage::blobPathForKey(&v47, v1, &v49);
      }

      else
      {
        v47 = 0;
      }

      v21 = *(v1 + 80);
      v22 = *(v1 + 88);
      WTF::MonotonicTime::now(v19);
      *(v3 + 14) = v23;
      *(v3 + 88) = v21;
      *(v3 + 21) = v22;
      if (v47 && *(v47 + 1))
      {
        *(v3 + 97) = 1;
      }

      ++*(v1 + 88);
      if (*(v1 + 24) != 1)
      {
        WebCore::TimerBase::start();
      }

      v24 = *(v1 + 320);
      v41 = v1;
      while (1)
      {
        v25 = *v1;
        if ((*v1 & 1) == 0)
        {
          break;
        }

        v39 = *v1;
        atomic_compare_exchange_strong_explicit(v1, &v39, v25 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v39 == v25)
        {
          goto LABEL_33;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v1);
LABEL_33:
      v42 = v1;
      v43 = v4;
      WTF::String::isolatedCopy();
      WTF::String::isolatedCopy();
      v26 = WTF::fastMalloc(0x30);
      *v26 = &unk_1F11092A8;
      v26[1] = v41;
      v26[2] = v42;
      v26[3] = v43;
      v26[4] = v44;
      v27 = v45;
      v42 = 0;
      v44 = 0;
      v45 = 0;
      v26[5] = v27;
      v46 = v26;
      MEMORY[0x19EB01930](v24, &v46);
      v29 = v46;
      v46 = 0;
      if (v29)
      {
        (*(*v29 + 8))(v29);
      }

      v30 = v45;
      v45 = 0;
      if (v30 && atomic_fetch_add_explicit(v30, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v30, v28);
      }

      v31 = v44;
      v44 = 0;
      if (v31 && atomic_fetch_add_explicit(v31, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v31, v28);
      }

      v32 = v42;
      v42 = 0;
      if (v32)
      {
        WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::NetworkCache::Storage,(WTF::DestructionThread)2>::deref(v32);
      }

      v33 = v47;
      v47 = 0;
      if (v33 && atomic_fetch_add_explicit(v33, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v33, v28);
      }

      v34 = v48;
      v48 = 0;
      if (v34 && atomic_fetch_add_explicit(v34, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v34, v28);
      }

      v35 = v52;
      v52 = 0;
      if (v35 && atomic_fetch_add_explicit(v35, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v35, v28);
      }

      v36 = v51;
      v51 = 0;
      if (v36 && atomic_fetch_add_explicit(v36, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v36, v28);
      }

      v37 = v50;
      v50 = 0;
      if (v37 && atomic_fetch_add_explicit(v37, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v37, v28);
      }

      v38 = v49;
      v49 = 0;
      if (v38)
      {
        if (atomic_fetch_add_explicit(v38, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v38, v28);
        }
      }

      this = std::unique_ptr<WebKit::NetworkCache::Storage::ReadOperation>::reset[abi:sn200100](&v40, 0);
    }

    while (*(v1 + 140));
  }

  return this;
}

WTF::StringImpl **WTF::PriorityQueue<std::unique_ptr<WebKit::NetworkCache::Storage::ReadOperation>,&WebKit::NetworkCache::Storage::isHigherPriority,0ul>::dequeue(void *a1, uint64_t **a2)
{
  v2 = *(a2 + 3);
  if (!v2)
  {
LABEL_22:
    __break(0xC471u);
    JUMPOUT(0x19DD9F6ECLL);
  }

  v4 = &(*a2)[v2];
  v5 = **a2;
  **a2 = *(v4 - 8);
  *(v4 - 8) = v5;
  v6 = *a2;
  v7 = &(*a2)[v2];
  v8 = *(v7 - 8);
  *(v7 - 8) = 0;
  *a1 = v8;
  v9 = v2 - 1;
  result = std::unique_ptr<WebKit::NetworkCache::Storage::ReadOperation>::reset[abi:sn200100](&v6[v2 - 1], 0);
  *(a2 + 3) = v9;
  if (v9 >= 2)
  {
    v11 = 0;
    v12 = 0;
    v13 = 1;
    do
    {
      v14 = v11 + 2;
      if (v14 >= v9)
      {
        v20 = v13;
      }

      else
      {
        v15 = (*a2)[v13];
        v16 = *(v15 + 20);
        v17 = (*a2)[v14];
        v18 = *(v17 + 80);
        if (v16 == v18)
        {
          v19 = *v15;
          v20 = v13;
          if (v19 < *v17)
          {
            goto LABEL_9;
          }

LABEL_8:
          v20 = v14;
          goto LABEL_9;
        }

        v20 = v13;
        if (v16 <= v18)
        {
          goto LABEL_8;
        }
      }

LABEL_9:
      if (v12 >= v9)
      {
        __break(0xC471u);
        JUMPOUT(0x19DD9F6F4);
      }

      if (v20 >= v9)
      {
        goto LABEL_22;
      }

      v21 = *a2;
      v22 = (*a2)[v12];
      v23 = *(v22 + 80);
      v24 = (*a2)[v20];
      v25 = *(v24 + 80);
      if (v23 == v25)
      {
        if (*v22 < *v24)
        {
          return result;
        }
      }

      else if (v23 > v25)
      {
        return result;
      }

      v21[v12] = v24;
      v21[v20] = v22;
      v11 = 2 * v20;
      v13 = (2 * (v20 & 0x3FFFFFFFFFFFFFFFLL)) | 1;
      v12 = v20;
    }

    while (v13 < v9);
  }

  return result;
}

uint64_t *WebKit::NetworkCache::Storage::finishWriteOperationActivity(uint64_t a1, uint64_t a2)
{
  v4 = 0;
  v5 = (a1 + 208);
  atomic_compare_exchange_strong_explicit((a1 + 208), &v4, 1u, memory_order_acquire, memory_order_acquire);
  if (v4)
  {
    MEMORY[0x19EB01E30](a1 + 208);
  }

  result = (a1 + 216);
  v7 = *(a1 + 216);
  if (v7)
  {
    if (a2 == -1)
    {
      __break(0xC471u);
      JUMPOUT(0x19DD9FA24);
    }

    if (!a2)
    {
      __break(0xC471u);
      JUMPOUT(0x19DD9FA44);
    }

    v8 = *(v7 - 8);
    v9 = (~(a2 << 32) + a2) ^ ((~(a2 << 32) + a2) >> 22);
    v10 = 9 * ((v9 + ~(v9 << 13)) ^ ((v9 + ~(v9 << 13)) >> 8));
    v11 = (v10 ^ (v10 >> 15)) + ~((v10 ^ (v10 >> 15)) << 27);
    v12 = v8 & ((v11 >> 31) ^ v11);
    v13 = *(v7 + 16 * v12);
    if (v13 != a2)
    {
      v17 = 1;
      while (v13)
      {
        v12 = (v12 + v17) & v8;
        v13 = *(v7 + 16 * v12);
        ++v17;
        if (v13 == a2)
        {
          goto LABEL_7;
        }
      }

      v12 = *(v7 - 4);
    }

LABEL_7:
    v14 = *(v7 - 4);
    if (v12 == v14)
    {
      LODWORD(v7) = 0;
    }

    else
    {
      v15 = v7 + 16 * v12;
      if (*(v15 + 8) == 1)
      {
        *v15 = -1;
        v16 = vadd_s32(*(v7 - 16), 0xFFFFFFFF00000001);
        *(v7 - 16) = v16;
        LODWORD(v7) = 1;
        if (v14 >= 9 && 6 * v16.i32[1] < v14)
        {
          result = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::WriteOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::WriteOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,unsigned int>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::WriteOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,unsigned int>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::WriteOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::WriteOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,unsigned int,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::WriteOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::WriteOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::WriteOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash(result, v14 >> 1, 0);
          LODWORD(v7) = 1;
        }
      }

      else
      {
        LODWORD(v7) = 0;
        --*(v15 + 8);
      }
    }
  }

  v18 = 1;
  atomic_compare_exchange_strong_explicit(v5, &v18, 0, memory_order_release, memory_order_relaxed);
  if (v18 != 1)
  {
    v39 = v5;
    v40 = v7;
    result = WTF::Lock::unlockSlow(v39);
    LODWORD(v7) = v40;
  }

  if (v7)
  {
    v19 = *(a1 + 256);
    if (!v19)
    {
      goto LABEL_49;
    }

    if (a2 == -1)
    {
      __break(0xC471u);
      JUMPOUT(0x19DD9FA6CLL);
    }

    if (!a2)
    {
      goto LABEL_49;
    }

    v20 = *(v19 - 8);
    v21 = (~(a2 << 32) + a2) ^ ((~(a2 << 32) + a2) >> 22);
    v22 = 9 * ((v21 + ~(v21 << 13)) ^ ((v21 + ~(v21 << 13)) >> 8));
    v23 = (v22 ^ (v22 >> 15)) + ~((v22 ^ (v22 >> 15)) << 27);
    v24 = v20 & ((v23 >> 31) ^ v23);
    v25 = *(v19 + 16 * v24);
    if (v25 != a2)
    {
      v38 = 1;
      while (v25)
      {
        v24 = (v24 + v38) & v20;
        v25 = *(v19 + 16 * v24);
        ++v38;
        if (v25 == a2)
        {
          goto LABEL_24;
        }
      }

      v24 = *(v19 - 4);
    }

LABEL_24:
    if (v24 == *(v19 - 4))
    {
      goto LABEL_49;
    }

    v26 = (v19 + 16 * v24);
    v28 = v26[1];
    ++v26;
    v27 = v28;
    *v26 = 0;
    *(v19 + 16 * v24) = -1;
    std::unique_ptr<WebKit::NetworkCache::Storage::WriteOperation>::reset[abi:sn200100](v26, 0);
    v29 = *(a1 + 256);
    v30 = vadd_s32(*(v29 - 16), 0xFFFFFFFF00000001);
    *(v29 - 16) = v30;
    v31 = *(v29 - 4);
    if (6 * v30.i32[1] < v31 && v31 >= 9)
    {
      WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::WriteOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::WriteOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::NetworkCache::Storage::WriteOperation>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::WriteOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::NetworkCache::Storage::WriteOperation>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::WriteOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::WriteOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::NetworkCache::Storage::WriteOperation>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::WriteOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::WriteOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkCache::Storage::WriteOperation>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::WriteOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash((a1 + 256), v31 >> 1);
    }

    if (!v27)
    {
LABEL_49:
      __break(0xC471u);
      JUMPOUT(0x19DD9FA04);
    }

    WebKit::NetworkCache::Storage::dispatchPendingWriteOperations(a1);
    if (*(a1 + 24) != 1)
    {
      v34 = *(a1 + 48);
      v35 = atomic_load((a1 + 360));
      if (v35 + v34 > *(a1 + 40))
      {
        WebKit::NetworkCache::Storage::shrink(a1);
      }
    }

    WebKit::NetworkCache::Storage::WriteOperation::~WriteOperation(v27, v33);

    return bmalloc::api::tzoneFree(v36, v37);
  }

  return result;
}

uint64_t WebKit::NetworkCache::Storage::shrinkIfNeeded(uint64_t this)
{
  if (*(this + 24) != 1)
  {
    v1 = *(this + 48);
    v2 = atomic_load((this + 360));
    if (v2 + v1 > *(this + 40))
    {
      return WebKit::NetworkCache::Storage::shrink(this);
    }
  }

  return this;
}

void WebKit::NetworkCache::Storage::store(uint64_t a1, __n128 *a2, uint64_t *a3)
{
  if (!*(a1 + 40))
  {
    return;
  }

  v6 = WebKit::NetworkCache::Storage::WriteOperation::operator new(0xB8, a2);
  WebKit::NetworkCache::Storage::WriteOperation::WriteOperation(v6, a2, a3);
  v7 = *(a1 + 224);
  v8 = *(a1 + 232);
  v9 = (a1 + 224);
  if (v7)
  {
    if (v8 + 1 != v7)
    {
LABEL_4:
      v10 = *(a1 + 248);
      goto LABEL_5;
    }
  }

  else
  {
    v7 = *(a1 + 248);
    if (v8)
    {
      if (v8 != v7 - 1)
      {
        goto LABEL_16;
      }
    }

    else if (v7)
    {
      goto LABEL_16;
    }
  }

  WTF::Deque<std::unique_ptr<WebKit::NetworkCache::Storage::WriteOperation>,0ul>::expandCapacity(a1 + 224);
  v7 = *v9;
  if (*v9)
  {
    goto LABEL_4;
  }

  LODWORD(v7) = *(a1 + 248);
LABEL_16:
  v10 = v7;
  v7 = v7;
LABEL_5:
  v11 = v7 - 1;
  *v9 = v11;
  if (v11 >= v10)
  {
    __break(1u);
    goto LABEL_21;
  }

  *(*(a1 + 240) + 8 * v11) = v6;
  WebKit::NetworkCache::Storage::addToRecordFilter(a1, a2);
  v12 = *(a1 + 224);
  v13 = *(a1 + 232);
  if (v12 > v13)
  {
    v13 += *(a1 + 248);
  }

  if (v13 - v12 == 1)
  {
    if (*(a1 + 80) != 1)
    {
LABEL_11:

      WebCore::TimerBase::start();
      return;
    }

LABEL_21:
    if (*(a1 + 24) == 1)
    {
      return;
    }

    goto LABEL_11;
  }
}

uint64_t WebKit::NetworkCache::Storage::traverseWithinRootPath(atomic_ullong *a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5)
{
  v8 = WTF::fastMalloc(0x18);
  *v8 = 1;
  v9 = *a5;
  *a5 = 0;
  *(v8 + 8) = v9;
  *(v8 + 16) = 0;
  *(v8 + 20) = 0;
  v10 = a1[40];
  while (1)
  {
    v11 = *a1;
    if ((*a1 & 1) == 0)
    {
      break;
    }

    v12 = *a1;
    atomic_compare_exchange_strong_explicit(a1, &v12, v11 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v12 == v11)
    {
      goto LABEL_6;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_6:
  WTF::String::isolatedCopy();
  WTF::String::isolatedCopy();
  v13 = WTF::fastMalloc(0x38);
  *v13 = &unk_1F11093C0;
  *(v13 + 8) = a1;
  *(v13 + 16) = a1;
  *(v13 + 24) = v8;
  *(v13 + 32) = a4;
  *(v13 + 40) = v16;
  *(v13 + 48) = v17;
  v18 = v13;
  MEMORY[0x19EB01930](v10, &v18);
  v14 = v18;
  v18 = 0;
  if (v14)
  {
    (*(*v14 + 8))(v14);
  }

  return 0;
}

WTF::StringImpl *WebKit::NetworkCache::Storage::traverse(atomic_ullong *a1, uint64_t a2, char a3, uint64_t *a4)
{
  WTF::String::isolatedCopy();
  WebKit::NetworkCache::Storage::traverseWithinRootPath(a1, &v10, a2, a3, a4);
  result = v10;
  v10 = 0;
  if (result)
  {
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v8);
    }
  }

  return result;
}

WTF::StringImpl *WebKit::NetworkCache::Storage::traverse(atomic_ullong *a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5)
{
  v15[3] = *MEMORY[0x1E69E9840];
  WebKit::NetworkCache::Key::partitionToPartitionHash(a3, a1 + 28);
  WebKit::NetworkCache::Key::hashAsString(v15, &v14);
  WTF::String::isolatedCopy();
  v9 = v14;
  WTF::FileSystemImpl::pathByAppendingComponent();
  if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v13, v10);
  }

  WebKit::NetworkCache::Storage::traverseWithinRootPath(a1, v15, a2, a4, a5);
  result = v15[0];
  v15[0] = 0;
  if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    result = WTF::StringImpl::destroy(result, v11);
    if (!v9)
    {
      return result;
    }
  }

  else if (!v9)
  {
    return result;
  }

  if (atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    return WTF::StringImpl::destroy(v9, v11);
  }

  return result;
}

uint64_t WebKit::NetworkCache::Storage::clear(atomic_ullong *a1, double a2, uint64_t a3, uint64_t *a4)
{
  v7 = a1[8];
  if (v7)
  {
    bzero(v7, 0x8000uLL);
  }

  v8 = a1[9];
  if (v8)
  {
    bzero(v8, 0x8000uLL);
  }

  a1[6] = 0;
  v9 = a1[40];
  while (1)
  {
    v10 = *a1;
    if ((*a1 & 1) == 0)
    {
      break;
    }

    v11 = *a1;
    atomic_compare_exchange_strong_explicit(a1, &v11, v10 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v11 == v10)
    {
      goto LABEL_10;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_10:
  v12 = *a4;
  *a4 = 0;
  v16 = v12;
  WTF::String::isolatedCopy();
  v13 = WTF::fastMalloc(0x30);
  *v13 = &unk_1F1109460;
  *(v13 + 8) = a1;
  *(v13 + 16) = a1;
  *(v13 + 24) = a2;
  *(v13 + 32) = v16;
  *(v13 + 40) = v17;
  v18 = v13;
  MEMORY[0x19EB01930](v9, &v18);
  v14 = v18;
  v18 = 0;
  if (v14)
  {
    (*(*v14 + 8))(v14);
  }

  return 0;
}

uint64_t WebKit::NetworkCache::Storage::shrink(uint64_t this)
{
  if ((*(this + 81) & 1) == 0)
  {
    v1 = this;
    if ((*(this + 80) & 1) == 0)
    {
      *(this + 81) = 1;
      v2 = *(this + 328);
      while (1)
      {
        v3 = *this;
        if ((*this & 1) == 0)
        {
          break;
        }

        v4 = *this;
        atomic_compare_exchange_strong_explicit(this, &v4, v3 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v4 == v3)
        {
          goto LABEL_8;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*this);
LABEL_8:
      v5 = WTF::fastMalloc(0x18);
      *v5 = &unk_1F11094B0;
      v5[1] = v1;
      v5[2] = v1;
      v6 = v5;
      MEMORY[0x19EB01930](v2, &v6);
      this = v6;
      v6 = 0;
      if (this)
      {
        return (*(*this + 8))(this);
      }
    }
  }

  return this;
}

void WebKit::NetworkCache::SubresourcesEntry::encodeAsStorageRecord(WebKit::NetworkCache::SubresourcesEntry *this)
{
  v1 = MEMORY[0x1EEE9AC00](this);
  v3 = v2;
  v4 = v1;
  v16 = *MEMORY[0x1E69E9840];
  WTF::Persistence::Encoder::Encoder(&buffer);
  WTF::Persistence::Encoder::operator<<();
  if (*(v3 + 92))
  {
    v5 = 0;
    v6 = 0;
    do
    {
      WTF::Persistence::Coder<WebKit::NetworkCache::SubresourceInfo>::encodeForPersistence(&buffer, *(v3 + 80) + v5);
      ++v6;
      v5 += 176;
    }

    while (v6 < *(v3 + 92));
  }

  WTF::Persistence::Encoder::encodeChecksum(&buffer);
  v7 = *(v3 + 72);
  v10[1] = 0;
  v10[2] = 0;
  v10[0] = dispatch_data_create(buffer, size, 0, 0);
  v11 = 0;
  memset(object, 0, sizeof(object));
  v9 = 0;
  LOBYTE(v14) = 0;
  v15 = 0;
  WebKit::NetworkCache::Storage::Record::Record(v4, v3, v10, object, &v14, v7);
  if (object[0])
  {
    os_release(object[0]);
  }

  if (v10[0])
  {
    os_release(v10[0]);
  }

  WTF::Persistence::Encoder::~Encoder(&buffer);
}

uint64_t WTF::Vector<WebKit::NetworkCache::SubresourceInfo,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::operator=(uint64_t a1, _DWORD *a2)
{
  v4 = *(a1 + 12);
  if (v4)
  {
    WTF::VectorTypeOperations<WebKit::NetworkCache::SubresourceInfo>::destruct(*a1, (*a1 + 176 * v4));
  }

  WTF::VectorBuffer<WTF::String,0ul,WTF::FastMalloc>::adopt(a1, a2);
  return a1;
}

WebKit::NetworkCache::SubresourceInfo *WebKit::NetworkCache::SubresourceInfo::SubresourceInfo(WebKit::NetworkCache::SubresourceInfo *this, const WebKit::NetworkCache::Key *a2, const WebCore::ResourceRequest *a3, const WebKit::NetworkCache::SubresourceInfo *a4)
{
  v7 = WebKit::NetworkCache::Key::Key(this, a2);
  WTF::WallTime::now(v7);
  *(this + 9) = v8;
  if (a4)
  {
    v8 = *(a4 + 10);
  }

  *(this + 10) = v8;
  *(this + 88) = a4 == 0;
  *(this + 89) = WebCore::ResourceRequestBase::isSameSite(a3);
  *(this + 90) = (*(a3 + 148) & 4) != 0;
  PartyForCookies = WebCore::ResourceRequestBase::firstPartyForCookies(a3);
  v10 = *PartyForCookies;
  if (*PartyForCookies)
  {
    atomic_fetch_add_explicit(v10, 2u, memory_order_relaxed);
  }

  *(this + 12) = v10;
  v11 = *(PartyForCookies + 8);
  *(this + 120) = *(PartyForCookies + 24);
  *(this + 104) = v11;
  v12 = WebCore::ResourceRequestBase::httpHeaderFields(a3);
  WTF::Vector<WebCore::HTTPHeaderMap::CommonHeader,0ul,WTF::CrashOnOverflow,6ul,WTF::FastMalloc>::Vector(this + 136, v12);
  WTF::Vector<WebCore::HTTPHeaderMap::UncommonHeader,0ul,WTF::CrashOnOverflow,0ul,WTF::FastMalloc>::Vector(this + 152, v12 + 16);
  *(this + 168) = WebCore::ResourceRequestBase::priority(a3);
  return this;
}

uint64_t WebKit::NetworkCache::makeSubresourceInfoVector(uint64_t a1, WTF::StringImpl *a2, const WTF::StringImpl *a3)
{
  v3 = a3;
  v98 = *MEMORY[0x1E69E9840];
  *a1 = 0;
  *(a1 + 8) = 0;
  v6 = *(a2 + 3);
  if (v6)
  {
    if (v6 >= 0x1745D18)
    {
      __break(0xC471u);
      JUMPOUT(0x19DDA0C24);
    }

    v7 = 176 * v6;
    v8 = WTF::fastMalloc((176 * v6));
    *(a1 + 8) = v7 / 0xB0;
    *a1 = v8;
  }

  v81 = 0;
  v79 = v3;
  if (v3 && *(v3 + 3))
  {
    for (i = 0; v79[3] > i; ++i)
    {
      v64 = *v3 + 176 * i;
      v65 = *(v64 + 16);
      if (v65 == -1)
      {
        __break(0xC471u);
        JUMPOUT(0x19DDA0C44);
      }

      if (!v65)
      {
        __break(0xC471u);
LABEL_124:
        JUMPOUT(0x19DDA0BECLL);
      }

      v66 = v81;
      if (v81 || (WTF::HashTable<WebKit::NetworkCache::Key,WTF::KeyValuePair<WebKit::NetworkCache::Key,unsigned int>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebKit::NetworkCache::Key,unsigned int>>,WTF::DefaultHash<WebKit::NetworkCache::Key>,WTF::HashMap<WebKit::NetworkCache::Key,unsigned int,WTF::DefaultHash<WebKit::NetworkCache::Key>,WTF::HashTraits<WebKit::NetworkCache::Key>,WTF::HashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebKit::NetworkCache::Key>,WTF::FastMalloc>::expand(&v81), (v66 = v81) != 0))
      {
        v67 = *(v66 - 8);
      }

      else
      {
        v67 = 0;
      }

      v68 = 0;
      v69 = *(v64 + 32);
      for (j = 1; ; ++j)
      {
        v71 = v69 & v67;
        v72 = v66 + 80 * (v69 & v67);
        v73 = *(v72 + 16);
        if (!v73)
        {
          break;
        }

        if (v73 == -1)
        {
          v68 = v66 + 80 * v71;
        }

        else if (WebKit::NetworkCache::Key::operator==(v66 + 80 * v71, v64, a3))
        {
          goto LABEL_107;
        }

        v69 = j + v71;
      }

      if (v68)
      {
        *v68 = 0u;
        *(v68 + 16) = 0u;
        *(v68 + 72) = 0;
        --*(v66 - 16);
        v72 = v68;
      }

      WebKit::NetworkCache::Key::operator=(v72, v64);
      *(v72 + 72) = i;
      v74 = *(v66 - 16);
      v75 = *(v66 - 12) + 1;
      *(v66 - 12) = v75;
      v76 = (v74 + v75);
      v77 = *(v66 - 4);
      if (v77 > 0x400)
      {
        if (v77 <= 2 * v76)
        {
LABEL_112:
          WTF::HashTable<WebKit::NetworkCache::Key,WTF::KeyValuePair<WebKit::NetworkCache::Key,unsigned int>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebKit::NetworkCache::Key,unsigned int>>,WTF::DefaultHash<WebKit::NetworkCache::Key>,WTF::HashMap<WebKit::NetworkCache::Key,unsigned int,WTF::DefaultHash<WebKit::NetworkCache::Key>,WTF::HashTraits<WebKit::NetworkCache::Key>,WTF::HashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebKit::NetworkCache::Key>,WTF::FastMalloc>::expand(&v81);
        }
      }

      else if (3 * v77 <= 4 * v76)
      {
        goto LABEL_112;
      }

LABEL_107:
      v3 = v79;
    }
  }

  v80 = 0;
  v9 = *(a2 + 3);
  if (!v9)
  {
    goto LABEL_81;
  }

  v10 = *a2;
  v78 = *a2 + 8 * v9;
  do
  {
    v11 = *v10;
    v12 = *(*v10 + 27);
    if (v12 == -1)
    {
      __break(0xC471u);
      goto LABEL_124;
    }

    if (!v12)
    {
      __break(0xC471u);
      JUMPOUT(0x19DDA0C0CLL);
    }

    v13 = v80;
    if (v80 || (WTF::HashTable<WebKit::NetworkCache::Key,WebKit::NetworkCache::Key,WTF::IdentityExtractor,WTF::DefaultHash<WebKit::NetworkCache::Key>,WTF::HashTraits<WebKit::NetworkCache::Key>,WTF::HashTraits<WebKit::NetworkCache::Key>,WTF::FastMalloc>::expand(&v80), (v13 = v80) != 0))
    {
      v14 = *(v13 - 8);
    }

    else
    {
      v14 = 0;
    }

    v15 = 0;
    v16 = *(v11 + 58);
    for (k = 1; ; ++k)
    {
      v18 = v16 & v14;
      v19 = v13 + 72 * (v16 & v14);
      v20 = *(v19 + 16);
      if (!v20)
      {
        break;
      }

      if (v20 == -1)
      {
        v15 = (v13 + 72 * v18);
      }

      else if (WebKit::NetworkCache::Key::operator==(v13 + 72 * v18, v11 + 200, a3))
      {
        goto LABEL_36;
      }

      v16 = k + v18;
    }

    if (v15)
    {
      *v15 = 0u;
      v15[1] = 0u;
      --*(v13 - 16);
      v19 = v15;
    }

    WebKit::NetworkCache::Key::Key(&v82, (v11 + 200));
    WebKit::NetworkCache::Key::operator=(v19, &v82);
    v22 = v85;
    v85 = 0;
    if (v22 && atomic_fetch_add_explicit(v22, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v22, v21);
    }

    v23 = v84;
    v84 = 0;
    if (v23 && atomic_fetch_add_explicit(v23, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v23, v21);
    }

    v24 = v83;
    v83 = 0;
    if (v24 && atomic_fetch_add_explicit(v24, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v24, v21);
    }

    v25 = v82;
    v82 = 0;
    if (v25 && atomic_fetch_add_explicit(v25, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v25, v21);
    }

    v26 = v80;
    if (v80)
    {
      v27 = *(v80 - 12) + 1;
    }

    else
    {
      v27 = 1;
    }

    *(v80 - 12) = v27;
    v28 = (*(v26 - 16) + v27);
    v29 = *(v26 - 4);
    if (v29 > 0x400)
    {
      if (v29 > 2 * v28)
      {
        goto LABEL_26;
      }
    }

    else if (3 * v29 > 4 * v28)
    {
      goto LABEL_26;
    }

    WTF::HashTable<WebKit::NetworkCache::Key,WebKit::NetworkCache::Key,WTF::IdentityExtractor,WTF::DefaultHash<WebKit::NetworkCache::Key>,WTF::HashTraits<WebKit::NetworkCache::Key>,WTF::HashTraits<WebKit::NetworkCache::Key>,WTF::FastMalloc>::expand(&v80);
LABEL_26:
    if (v79)
    {
      v57 = WTF::HashTable<WebKit::NetworkCache::Key,WTF::KeyValuePair<WebKit::NetworkCache::Key,unsigned int>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebKit::NetworkCache::Key,unsigned int>>,WTF::DefaultHash<WebKit::NetworkCache::Key>,WTF::HashMap<WebKit::NetworkCache::Key,unsigned int,WTF::DefaultHash<WebKit::NetworkCache::Key>,WTF::HashTraits<WebKit::NetworkCache::Key>,WTF::HashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebKit::NetworkCache::Key>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WebKit::NetworkCache::Key,unsigned int,WTF::DefaultHash<WebKit::NetworkCache::Key>,WTF::HashTraits<WebKit::NetworkCache::Key>,WTF::HashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WebKit::NetworkCache::Key>>,(WTF::ShouldValidateKey)1,WebKit::NetworkCache::Key>(&v81, *v10 + 200);
      v58 = v81;
      if (v81)
      {
        v58 = v81 + 80 * *(v81 - 4);
      }

      if (v58 == v57)
      {
        v60 = 0;
      }

      else
      {
        v59 = *(v57 + 72);
        if (v79[3] <= v59)
        {
          __break(0xC471u);
          JUMPOUT(0x19DDA0C1CLL);
        }

        v60 = (*v79 + 176 * v59);
      }

      WebKit::NetworkCache::SubresourceInfo::SubresourceInfo(&v82, (*v10 + 200), *v10, v60);
      v61 = *(a1 + 12);
      if (v61 == *(a1 + 8))
      {
        WTF::Vector<WebKit::NetworkCache::SubresourceInfo,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebKit::NetworkCache::SubresourceInfo>(a1, &v82);
      }

      else
      {
        WebKit::NetworkCache::SubresourceInfo::SubresourceInfo(*a1 + 176 * v61, &v82);
        *(a1 + 12) = v61 + 1;
      }

      WebKit::NetworkCache::SubresourceInfo::~SubresourceInfo(&v82, v62);
    }

    else
    {
      WebKit::NetworkCache::SubresourceInfo::SubresourceInfo(&v82, (*v10 + 200), *v10, 0);
      v30 = *(a1 + 12);
      if (v30 == *(a1 + 8))
      {
        WTF::Vector<WebKit::NetworkCache::SubresourceInfo,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebKit::NetworkCache::SubresourceInfo>(a1, &v82);
      }

      else
      {
        v31 = *a1 + 176 * v30;
        v32 = v82;
        v82 = 0;
        *v31 = v32;
        v33 = v83;
        v83 = 0;
        *(v31 + 8) = v33;
        v34 = v84;
        v84 = 0;
        *(v31 + 16) = v34;
        v35 = v85;
        v85 = 0;
        *(v31 + 24) = v35;
        v37 = v86;
        v36 = v87;
        *(v31 + 64) = v88;
        *(v31 + 32) = v37;
        *(v31 + 48) = v36;
        v38 = *v89;
        *(v31 + 87) = *&v89[15];
        *(v31 + 72) = v38;
        WTF::URL::URL(v31 + 96, &v90);
        *(v31 + 136) = 0;
        *(v31 + 144) = 0;
        v40 = v91;
        v91 = 0;
        *(v31 + 136) = v40;
        LODWORD(v40) = v92;
        v92 = 0;
        *(v31 + 144) = v40;
        LODWORD(v40) = v93;
        v93 = 0;
        *(v31 + 148) = v40;
        *(v31 + 152) = 0;
        *(v31 + 160) = 0;
        v41 = v94;
        v94 = 0;
        *(v31 + 152) = v41;
        LODWORD(v41) = v95;
        v95 = 0;
        *(v31 + 160) = v41;
        LODWORD(v41) = v96;
        v96 = 0;
        *(v31 + 164) = v41;
        *(v31 + 168) = v97;
        *(a1 + 12) = v30 + 1;
      }

      WTF::Vector<WebCore::HTTPHeaderMap::UncommonHeader,0ul,WTF::CrashOnOverflow,0ul,WTF::FastMalloc>::~Vector(&v94, v39);
      WTF::Vector<WebCore::HTTPHeaderMap::CommonHeader,0ul,WTF::CrashOnOverflow,6ul,WTF::FastMalloc>::~Vector(&v91, v42);
      v43 = v90;
      v90 = 0;
      if (v43 && atomic_fetch_add_explicit(v43, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v43, a2);
      }

      v44 = v85;
      v85 = 0;
      if (v44 && atomic_fetch_add_explicit(v44, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v44, a2);
      }

      v45 = v84;
      v84 = 0;
      if (v45 && atomic_fetch_add_explicit(v45, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v45, a2);
      }

      v46 = v83;
      v83 = 0;
      if (v46 && atomic_fetch_add_explicit(v46, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v46, a2);
      }

      v47 = v82;
      v82 = 0;
      if (v47 && atomic_fetch_add_explicit(v47, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v47, a2);
      }

      v48 = *(a1 + 12);
      if (!v48)
      {
        __break(0xC471u);
        JUMPOUT(0x19DDA0C14);
      }

      *(*a1 + 176 * v48 - 88) = 0;
    }

LABEL_36:
    ++v10;
  }

  while (v10 != v78);
  v49 = v80;
  if (v80)
  {
    v50 = *(v80 - 4);
    if (v50)
    {
      v51 = (v80 + 16);
      do
      {
        if (*v51 != -1)
        {
          v52 = v51[1];
          v51[1] = 0;
          if (v52 && atomic_fetch_add_explicit(v52, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v52, a2);
          }

          v53 = *v51;
          *v51 = 0;
          if (v53 && atomic_fetch_add_explicit(v53, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v53, a2);
          }

          v54 = *(v51 - 1);
          *(v51 - 1) = 0;
          if (v54 && atomic_fetch_add_explicit(v54, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v54, a2);
          }

          v55 = *(v51 - 2);
          *(v51 - 2) = 0;
          if (v55 && atomic_fetch_add_explicit(v55, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v55, a2);
          }
        }

        v51 += 9;
        --v50;
      }

      while (v50);
    }

    WTF::fastFree((v49 - 16), a2);
  }

LABEL_81:
  result = v81;
  if (v81)
  {
    return WTF::HashTable<WebKit::NetworkCache::Key,WTF::KeyValuePair<WebKit::NetworkCache::Key,unsigned int>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebKit::NetworkCache::Key,unsigned int>>,WTF::DefaultHash<WebKit::NetworkCache::Key>,WTF::HashMap<WebKit::NetworkCache::Key,unsigned int,WTF::DefaultHash<WebKit::NetworkCache::Key>,WTF::HashTraits<WebKit::NetworkCache::Key>,WTF::HashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebKit::NetworkCache::Key>,WTF::FastMalloc>::deallocateTable(v81, a2);
  }

  return result;
}

uint64_t WebKit::NetworkCache::SubresourcesEntry::updateSubresourceLoads(uint64_t a1, WTF::StringImpl *a2)
{
  WebKit::NetworkCache::makeSubresourceInfoVector(v5, a2, (a1 + 80));
  WTF::Vector<WebKit::NetworkCache::SubresourceInfo,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::operator=(a1 + 80, v5);
  return WTF::Vector<WebKit::NetworkCache::SubresourceInfo,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v5, v3);
}

uint64_t WebKit::PrefetchCache::clearExpiredEntries(WebKit::PrefetchCache *this)
{
  result = WTF::WallTime::now(this);
  v4 = *(this + 2);
  if (v4 == *(this + 3))
  {
    return result;
  }

  v5 = v3;
  v6 = *(this + 10);
  while (1)
  {
    if (v4 >= v6)
    {
LABEL_22:
      __break(1u);
LABEL_23:
      result = 513;
      __break(0xC471u);
      return result;
    }

    v7 = *(this + 4) + 48 * v4;
    if (v5 - *(v7 + 40) <= 5.0)
    {
      break;
    }

    v8 = *(this + 1);
    v9 = WTF::HashTable<WTF::URL,WTF::KeyValuePair<WTF::URL,std::unique_ptr<WebKit::PrefetchCache::Entry>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::URL,std::unique_ptr<WebKit::PrefetchCache::Entry>>>,WTF::DefaultHash<WTF::URL>,WTF::HashMap<WTF::URL,std::unique_ptr<WebKit::PrefetchCache::Entry>,WTF::DefaultHash<WTF::URL>,WTF::HashTraits<WTF::URL>,WTF::HashTraits<std::unique_ptr<WebKit::PrefetchCache::Entry>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::URL>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WTF::URL,std::unique_ptr<WebKit::PrefetchCache::Entry>,WTF::DefaultHash<WTF::URL>,WTF::HashTraits<WTF::URL>,WTF::HashTraits<std::unique_ptr<WebKit::PrefetchCache::Entry>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::URL>>,(WTF::ShouldValidateKey)1,WTF::URL>(v8, v7);
    if (*v8)
    {
      v10 = *v8 + 48 * *(*v8 - 4);
      if (v10 == v9)
      {
        goto LABEL_12;
      }
    }

    else
    {
      if (!v9)
      {
        goto LABEL_12;
      }

      v10 = 0;
    }

    if (v10 != v9)
    {
      WTF::HashTable<WTF::URL,WTF::KeyValuePair<WTF::URL,std::unique_ptr<WebKit::PrefetchCache::Entry>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::URL,std::unique_ptr<WebKit::PrefetchCache::Entry>>>,WTF::DefaultHash<WTF::URL>,WTF::HashMap<WTF::URL,std::unique_ptr<WebKit::PrefetchCache::Entry>,WTF::DefaultHash<WTF::URL>,WTF::HashTraits<WTF::URL>,WTF::HashTraits<std::unique_ptr<WebKit::PrefetchCache::Entry>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::URL>,WTF::FastMalloc>::remove(v8, v9);
    }

LABEL_12:
    v11 = *(this + 2);
    if (v11 == *(this + 3))
    {
      goto LABEL_23;
    }

    if (v11 >= *(this + 10))
    {
      goto LABEL_22;
    }

    result = WTF::VectorDestructor<true,std::tuple<WTF::URL,WTF::WallTime>>::destruct((*(this + 4) + 48 * v11), (*(this + 4) + 48 * v11 + 48));
    v6 = *(this + 10);
    v12 = *(this + 2);
    v13 = *(this + 3);
    if (v12 == v6 - 1)
    {
      v4 = 0;
    }

    else
    {
      v4 = v12 + 1;
    }

    *(this + 2) = v4;
    if (v4 == v13)
    {
      return result;
    }
  }

  return WebCore::TimerBase::start();
}

WebKit::PrefetchCache *WebKit::PrefetchCache::PrefetchCache(WebKit::PrefetchCache *this)
{
  *this = 0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 5) = 0;
  WebCore::Timer::Timer<WebKit::PrefetchCache,WebKit::PrefetchCache>((this + 48), this);
  return this;
}

void WebKit::PrefetchCache::~PrefetchCache(uint64_t **this)
{
  WebCore::Timer::~Timer((this + 6));
  WTF::Deque<std::tuple<WTF::URL,WTF::WallTime>,0ul>::~Deque((this + 2));
  std::unique_ptr<WTF::HashMap<WTF::URL,std::unique_ptr<WebKit::PrefetchCache::Entry>,WTF::DefaultHash<WTF::URL>,WTF::HashTraits<WTF::URL>,WTF::HashTraits<std::unique_ptr<WebKit::PrefetchCache::Entry>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>::~unique_ptr[abi:sn200100](this + 1, v2);
}

uint64_t **std::unique_ptr<WTF::HashMap<WTF::URL,std::unique_ptr<WebKit::PrefetchCache::Entry>,WTF::DefaultHash<WTF::URL>,WTF::HashTraits<WTF::URL>,WTF::HashTraits<std::unique_ptr<WebKit::PrefetchCache::Entry>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>::~unique_ptr[abi:sn200100](uint64_t **a1, WTF::StringImpl *a2)
{
  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    if (*v3)
    {
      WTF::HashTable<WTF::URL,WTF::KeyValuePair<WTF::URL,std::unique_ptr<WebKit::PrefetchCache::Entry>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::URL,std::unique_ptr<WebKit::PrefetchCache::Entry>>>,WTF::DefaultHash<WTF::URL>,WTF::HashMap<WTF::URL,std::unique_ptr<WebKit::PrefetchCache::Entry>,WTF::DefaultHash<WTF::URL>,WTF::HashTraits<WTF::URL>,WTF::HashTraits<std::unique_ptr<WebKit::PrefetchCache::Entry>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::URL>,WTF::FastMalloc>::deallocateTable(*v3, a2);
    }

    WTF::fastFree(v3, a2);
  }

  return a1;
}

WTF *WebKit::PrefetchCache::clear(WebKit::PrefetchCache *this)
{
  if ((*(this + 10) & 0xFFFFFFFFFFFFLL) != 0)
  {
    WebCore::TimerBase::stopSlowCase((this + 48));
  }

  WTF::Deque<std::tuple<WTF::URL,WTF::WallTime>,0ul>::destroyAll((this + 16));
  *(this + 2) = 0;
  *(this + 3) = 0;
  result = *(this + 4);
  if (result)
  {
    *(this + 4) = 0;
    *(this + 10) = 0;
    result = WTF::fastFree(result, v2);
  }

  v4 = *(this + 1);
  if (v4)
  {
    result = *v4;
    if (*v4)
    {
      *v4 = 0;

      return WTF::HashTable<WTF::URL,WTF::KeyValuePair<WTF::URL,std::unique_ptr<WebKit::PrefetchCache::Entry>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::URL,std::unique_ptr<WebKit::PrefetchCache::Entry>>>,WTF::DefaultHash<WTF::URL>,WTF::HashMap<WTF::URL,std::unique_ptr<WebKit::PrefetchCache::Entry>,WTF::DefaultHash<WTF::URL>,WTF::HashTraits<WTF::URL>,WTF::HashTraits<std::unique_ptr<WebKit::PrefetchCache::Entry>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::URL>,WTF::FastMalloc>::deallocateTable(result, v2);
    }
  }

  return result;
}

WebKit::PrefetchCache::Entry *WebKit::PrefetchCache::take@<X0>(WebKit::PrefetchCache::Entry *this@<X0>, const WTF::StringImpl **a2@<X1>, WebKit::PrefetchCache::Entry *a3@<X8>)
{
  v4 = *(this + 1);
  if (v4)
  {
    v7 = a2;
    WTF::Deque<std::tuple<WTF::URL,WTF::WallTime>,0ul>::removeAllMatching<WebKit::PrefetchCache::take(WTF::URL const&)::$_0>(this + 16, &v7);
    v6 = WTF::HashTable<WTF::URL,WTF::KeyValuePair<WTF::URL,std::unique_ptr<WebKit::PrefetchCache::Entry>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::URL,std::unique_ptr<WebKit::PrefetchCache::Entry>>>,WTF::DefaultHash<WTF::URL>,WTF::HashMap<WTF::URL,std::unique_ptr<WebKit::PrefetchCache::Entry>,WTF::DefaultHash<WTF::URL>,WTF::HashTraits<WTF::URL>,WTF::HashTraits<std::unique_ptr<WebKit::PrefetchCache::Entry>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::URL>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WTF::URL,std::unique_ptr<WebKit::PrefetchCache::Entry>,WTF::DefaultHash<WTF::URL>,WTF::HashTraits<WTF::URL>,WTF::HashTraits<std::unique_ptr<WebKit::PrefetchCache::Entry>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::URL>>,(WTF::ShouldValidateKey)1,WTF::URL>(v4, a2);

    return WTF::HashMap<WTF::URL,std::unique_ptr<WebKit::PrefetchCache::Entry>,WTF::DefaultHash<WTF::URL>,WTF::HashTraits<WTF::URL>,WTF::HashTraits<std::unique_ptr<WebKit::PrefetchCache::Entry>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::take(a3, v4, v6);
  }

  else
  {
    *a3 = 0;
  }

  return this;
}

uint64_t WTF::Deque<std::tuple<WTF::URL,WTF::WallTime>,0ul>::removeAllMatching<WebKit::PrefetchCache::take(WTF::URL const&)::$_0>(uint64_t result, const WTF::StringImpl ***a2)
{
  v3 = result;
  v4 = *result;
  v5 = *(result + 8);
  if (*result > v5)
  {
    v5 += *(result + 24);
  }

  v6 = v5 - v4;
  if (v5 != v4)
  {
    while (*v3 < *(v3 + 24))
    {
      v7 = *(v3 + 16) + 48 * *v3;
      WTF::URL::URL(v12, v7);
      v12[5] = *(v7 + 40);
      v8 = *v3;
      if (*v3 == *(v3 + 8))
      {
        goto LABEL_18;
      }

      if (v8 >= *(v3 + 24))
      {
        break;
      }

      WTF::VectorDestructor<true,std::tuple<WTF::URL,WTF::WallTime>>::destruct((*(v3 + 16) + 48 * v8), (*(v3 + 16) + 48 * v8 + 48));
      if (*v3 == *(v3 + 24) - 1)
      {
        v10 = 0;
      }

      else
      {
        v10 = *v3 + 1;
      }

      *v3 = v10;
      if ((WTF::equal(v12[0], **a2, v9) & 1) == 0)
      {
        WTF::Deque<std::tuple<WTF::URL,WTF::WallTime>,0ul>::append(v3, v12);
      }

      result = v12[0];
      v12[0] = 0;
      if (result)
      {
        if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          result = WTF::StringImpl::destroy(result, v11);
        }
      }

      if (!--v6)
      {
        return result;
      }
    }

    __break(1u);
LABEL_18:
    result = 513;
    __break(0xC471u);
  }

  return result;
}

double WebKit::PrefetchCache::store(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5)
{
  v9 = a1;
  v10 = (a1 + 8);
  v11 = *(a1 + 8);
  if (!v11)
  {
    v12 = WTF::fastMalloc(8);
    *v12 = 0;
    v69 = v12;
    std::unique_ptr<WTF::HashMap<WTF::URL,std::unique_ptr<WebKit::PrefetchCache::Entry>,WTF::DefaultHash<WTF::URL>,WTF::HashTraits<WTF::URL>,WTF::HashTraits<std::unique_ptr<WebKit::PrefetchCache::Entry>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>::operator=[abi:sn200100](v10, &v69);
    std::unique_ptr<WTF::HashMap<WTF::URL,std::unique_ptr<WebKit::PrefetchCache::Entry>,WTF::DefaultHash<WTF::URL>,WTF::HashTraits<WTF::URL>,WTF::HashTraits<std::unique_ptr<WebKit::PrefetchCache::Entry>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>::~unique_ptr[abi:sn200100](&v69, v13);
    v11 = *v10;
  }

  v14 = WTF::fastMalloc(0x1E0);
  WTF::URL::URL(v14, a3);
  v15 = *(a3 + 40);
  *(a3 + 40) = 0;
  v16[5] = v15;
  v16[6] = *(a3 + 48);
  v17 = *(a3 + 56);
  *(a3 + 56) = 0;
  v16[7] = v17;
  v18 = *(a3 + 64);
  *(a3 + 64) = 0;
  v16[8] = v18;
  v19 = *(a3 + 72);
  *(a3 + 72) = 0;
  v16[9] = v19;
  v16[11] = 0;
  v16[10] = 0;
  WTF::VectorBuffer<unsigned char,0ul,WTF::FastMalloc>::adopt((v16 + 10), (a3 + 80));
  *(v14 + 104) = 0;
  *(v14 + 96) = 0;
  WTF::VectorBuffer<unsigned char,0ul,WTF::FastMalloc>::adopt(v14 + 96, (a3 + 96));
  v20 = *(a3 + 112);
  *(a3 + 112) = 0;
  *(v14 + 112) = v20;
  *(v14 + 120) = 0;
  *(v14 + 128) = 0;
  if (*(a3 + 128) == 1)
  {
    v66 = *(a3 + 120);
    *(a3 + 120) = 0;
    *(v14 + 120) = v66;
    *(v14 + 128) = 1;
  }

  v21 = *(a3 + 136);
  *(v14 + 138) = *(a3 + 138);
  *(v14 + 136) = v21;
  v22 = *(a3 + 144);
  *(a3 + 144) = 0;
  *(v14 + 144) = v22;
  v23 = *(a3 + 152);
  *(v14 + 168) = *(a3 + 168);
  *(v14 + 152) = v23;
  v24 = *(a3 + 184);
  v25 = *(a3 + 200);
  v26 = *(a3 + 216);
  *(v14 + 227) = *(a3 + 227);
  *(v14 + 216) = v26;
  *(v14 + 200) = v25;
  *(v14 + 184) = v24;
  v27 = *(a3 + 248);
  *(a3 + 248) = 0;
  *(v14 + 248) = v27;
  *(v14 + 256) = *(a3 + 256);
  *(v14 + 264) = a4;
  v28 = *a5;
  *a5 = 0;
  *(v14 + 272) = v28;
  WebCore::ResourceRequest::ResourceRequest((v14 + 280));
  if (WTF::HashTraitsEmptyValueChecker<WTF::HashTraits<WTF::URL>,false>::isEmptyValue<WTF::URL>(a2) || *a2 == -1)
  {
    __break(0xC471u);
    JUMPOUT(0x19DDA162CLL);
  }

  v29 = *v11;
  if (*v11 || (WTF::HashTable<WTF::URL,WTF::KeyValuePair<WTF::URL,std::unique_ptr<WebKit::PrefetchCache::Entry>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::URL,std::unique_ptr<WebKit::PrefetchCache::Entry>>>,WTF::DefaultHash<WTF::URL>,WTF::HashMap<WTF::URL,std::unique_ptr<WebKit::PrefetchCache::Entry>,WTF::DefaultHash<WTF::URL>,WTF::HashTraits<WTF::URL>,WTF::HashTraits<std::unique_ptr<WebKit::PrefetchCache::Entry>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::URL>,WTF::FastMalloc>::expand(v11, 0), (v29 = *v11) != 0))
  {
    v30 = *(v29 - 8);
  }

  else
  {
    v30 = 0;
  }

  v31 = *(*a2 + 16);
  v68 = v11;
  if (v31 < 0x100)
  {
    v32 = WTF::StringImpl::hashSlowCase(*a2);
  }

  else
  {
    v32 = v31 >> 8;
  }

  v33 = v32 & v30;
  v34 = (v29 + 48 * (v32 & v30));
  if (WTF::HashTraitsEmptyValueChecker<WTF::HashTraits<WTF::URL>,false>::isEmptyValue<WTF::URL>(v34))
  {
    v36 = v11;
LABEL_20:
    WTF::String::operator=(v34, a2);
    v41 = *(a2 + 24);
    *(v34 + 8) = *(a2 + 8);
    *(v34 + 24) = v41;
    v42 = std::unique_ptr<WebKit::PrefetchCache::Entry>::reset[abi:sn200100](v34 + 5, v14);
    v43 = *v36;
    if (*v36)
    {
      v44 = *(v43 - 12) + 1;
    }

    else
    {
      v44 = 1;
    }

    *(v43 - 12) = v44;
    v45 = (*(v43 - 16) + v44);
    v46 = *(v43 - 4);
    if (v46 > 0x400)
    {
      if (v46 > 2 * v45)
      {
        goto LABEL_26;
      }
    }

    else if (3 * v46 > 4 * v45)
    {
LABEL_26:
      WTF::WallTime::now(v42);
      v48 = *a2;
      if (*a2)
      {
        atomic_fetch_add_explicit(v48, 2u, memory_order_relaxed);
      }

      v69 = v48;
      v70 = *(a2 + 8);
      v71 = *(a2 + 24);
      v72 = v47;
      WTF::Deque<std::tuple<WTF::URL,WTF::WallTime>,0ul>::append(v9 + 16, &v69);
      v50 = v69;
      v69 = 0;
      if (v50 && atomic_fetch_add_explicit(v50, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v50, v49);
      }

      if ((*(v9 + 80) & 0xFFFFFFFFFFFFLL) == 0 || (result = *((*(v9 + 80) & 0xFFFFFFFFFFFFLL) + 8), result == 0.0))
      {
        WebCore::TimerBase::start();
      }

      return result;
    }

    v42 = WTF::HashTable<WTF::URL,WTF::KeyValuePair<WTF::URL,std::unique_ptr<WebKit::PrefetchCache::Entry>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::URL,std::unique_ptr<WebKit::PrefetchCache::Entry>>>,WTF::DefaultHash<WTF::URL>,WTF::HashMap<WTF::URL,std::unique_ptr<WebKit::PrefetchCache::Entry>,WTF::DefaultHash<WTF::URL>,WTF::HashTraits<WTF::URL>,WTF::HashTraits<std::unique_ptr<WebKit::PrefetchCache::Entry>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::URL>,WTF::FastMalloc>::expand(v36, v34);
    goto LABEL_26;
  }

  v67 = v9;
  v37 = 0;
  v38 = 1;
  while (1)
  {
    v39 = v34;
    if (*v34 != -1)
    {
      v39 = v37;
      if (WTF::equal(*v34, *a2, v35))
      {
        break;
      }
    }

    v33 = (v33 + v38) & v30;
    v34 = (v29 + 48 * v33);
    ++v38;
    v37 = v39;
    if (WTF::HashTraitsEmptyValueChecker<WTF::HashTraits<WTF::URL>,false>::isEmptyValue<WTF::URL>(v34))
    {
      v9 = v67;
      v36 = v68;
      if (v39)
      {
        v39[1] = 0u;
        v39[2] = 0u;
        *v39 = 0u;
        --*(*v68 - 16);
        v34 = v39;
      }

      goto LABEL_20;
    }
  }

  v52 = *(v14 + 472);
  *(v14 + 472) = 0;
  if (v52)
  {
    CFRelease(v52);
  }

  v53 = *(v14 + 448);
  *(v14 + 448) = 0;
  if (v53)
  {
    WTF::RefCounted<WebCore::FormData>::deref(v53);
  }

  v54 = *(v14 + 440);
  *(v14 + 440) = 0;
  if (v54 && atomic_fetch_add_explicit(v54, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v54, v40);
  }

  v55 = *(v14 + 432);
  *(v14 + 432) = 0;
  if (v55 && atomic_fetch_add_explicit(v55, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v55, v40);
  }

  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v14 + 408, v40);
  WTF::Vector<WebCore::HTTPHeaderMap::UncommonHeader,0ul,WTF::CrashOnOverflow,0ul,WTF::FastMalloc>::~Vector((v14 + 392), v56);
  WTF::Vector<WebCore::HTTPHeaderMap::CommonHeader,0ul,WTF::CrashOnOverflow,6ul,WTF::FastMalloc>::~Vector(v14 + 376, v57);
  v59 = *(v14 + 368);
  *(v14 + 368) = 0;
  if (v59 && atomic_fetch_add_explicit(v59, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v59, v58);
  }

  v60 = *(v14 + 320);
  *(v14 + 320) = 0;
  if (v60 && atomic_fetch_add_explicit(v60, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v60, v58);
  }

  v61 = *(v14 + 280);
  *(v14 + 280) = 0;
  if (v61 && atomic_fetch_add_explicit(v61, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v61, v58);
  }

  v62 = *(v14 + 272);
  *(v14 + 272) = 0;
  if (v62 && atomic_fetch_add(v62 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v62 + 2);
    (*(*v62 + 8))(v62);
  }

  v63 = *(v14 + 248);
  *(v14 + 248) = 0;
  if (v63)
  {
    CFRelease(v63);
  }

  WebCore::ResourceResponseBase::~ResourceResponseBase(v14, v58);
  WTF::fastFree(v64, v65);
  return result;
}

uint64_t **std::unique_ptr<WTF::HashMap<WTF::URL,std::unique_ptr<WebKit::PrefetchCache::Entry>,WTF::DefaultHash<WTF::URL>,WTF::HashTraits<WTF::URL>,WTF::HashTraits<std::unique_ptr<WebKit::PrefetchCache::Entry>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>::operator=[abi:sn200100](uint64_t **a1, WTF::StringImpl *a2)
{
  v3 = *a2;
  *a2 = 0;
  v4 = *a1;
  *a1 = v3;
  if (v4)
  {
    if (*v4)
    {
      WTF::HashTable<WTF::URL,WTF::KeyValuePair<WTF::URL,std::unique_ptr<WebKit::PrefetchCache::Entry>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::URL,std::unique_ptr<WebKit::PrefetchCache::Entry>>>,WTF::DefaultHash<WTF::URL>,WTF::HashMap<WTF::URL,std::unique_ptr<WebKit::PrefetchCache::Entry>,WTF::DefaultHash<WTF::URL>,WTF::HashTraits<WTF::URL>,WTF::HashTraits<std::unique_ptr<WebKit::PrefetchCache::Entry>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::URL>,WTF::FastMalloc>::deallocateTable(*v4, a2);
    }

    WTF::fastFree(v4, a2);
  }

  return a1;
}

void WTF::Deque<std::tuple<WTF::URL,WTF::WallTime>,0ul>::append(uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 8);
  if (*a1)
  {
    if (v4 + 1 != *a1)
    {
      goto LABEL_27;
    }

    LODWORD(v5) = *(a1 + 24);
    goto LABEL_9;
  }

  v5 = *(a1 + 24);
  if (!v4)
  {
    if (v5)
    {
      v4 = 0;
      goto LABEL_27;
    }

LABEL_9:
    v6 = v5;
    v7 = (v5 >> 2) + v5;
    if (v7 >= 0x5555555)
    {
LABEL_34:
      __break(0xC471u);
      return;
    }

    v8 = *(a1 + 16);
    if (v7 <= 0xF)
    {
      v7 = 15;
    }

    v9 = 48 * v7 + 48;
    v10 = WTF::fastMalloc((48 * v7 + 48));
    *(a1 + 24) = v9 / 0x30;
    *(a1 + 16) = v10;
    v11 = *a1;
    v12 = *(a1 + 8);
    v13 = v12 - *a1;
    if (v12 < *a1)
    {
      if (v12 > v6)
      {
        goto LABEL_33;
      }

      WTF::VectorMover<false,std::tuple<WTF::URL,WTF::WallTime>>::move(v8, v8 + 6 * v12, v10);
      if (v6 < *a1)
      {
        goto LABEL_33;
      }

      v14 = *(a1 + 24);
      if (v14 < v6 - *a1)
      {
        goto LABEL_33;
      }

      v15 = v14 - (v6 - *a1);
      WTF::VectorMover<false,std::tuple<WTF::URL,WTF::WallTime>>::move((v8 + 48 * *a1), v8 + 6 * v6, *(a1 + 16) + 48 * v15);
      *a1 = v15;
      if (!v8)
      {
        goto LABEL_26;
      }

      goto LABEL_23;
    }

    if (v6 >= v11)
    {
      if (v13 == -1)
      {
        v13 = v6 - v11;
      }

      else if (v6 - v11 < v13)
      {
        goto LABEL_33;
      }

      if (v11 <= v9 / 0x30)
      {
        WTF::VectorMover<false,std::tuple<WTF::URL,WTF::WallTime>>::move((v8 + 48 * v11), v8 + 6 * v11 + 6 * v13, v10 + 48 * v11);
        if (!v8)
        {
LABEL_26:
          v4 = *(a1 + 8);
          goto LABEL_27;
        }

LABEL_23:
        if (*(a1 + 16) == v8)
        {
          *(a1 + 16) = 0;
          *(a1 + 24) = 0;
        }

        WTF::fastFree(v8, v16);
        goto LABEL_26;
      }
    }

LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  if (v4 == v5 - 1)
  {
    goto LABEL_9;
  }

LABEL_27:
  if (v4 >= *(a1 + 24))
  {
    goto LABEL_33;
  }

  WTF::URL::URL(*(a1 + 16) + 48 * v4, a2);
  *(v17 + 40) = a2[5];
  v18 = *(a1 + 8);
  if (v18 == *(a1 + 24) - 1)
  {
    v19 = 0;
  }

  else
  {
    v19 = v18 + 1;
  }

  *(a1 + 8) = v19;
}

double WebKit::PrefetchCache::storeRedirect(uint64_t a1, uint64_t a2, uint64_t a3, WebCore::ResourceRequestBase *this)
{
  v7 = a1;
  v8 = (a1 + 8);
  if (!*(a1 + 8))
  {
    v9 = WTF::fastMalloc(8);
    *v9 = 0;
    v56 = v9;
    std::unique_ptr<WTF::HashMap<WTF::URL,std::unique_ptr<WebKit::PrefetchCache::Entry>,WTF::DefaultHash<WTF::URL>,WTF::HashTraits<WTF::URL>,WTF::HashTraits<std::unique_ptr<WebKit::PrefetchCache::Entry>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>::operator=[abi:sn200100](v8, &v56);
    std::unique_ptr<WTF::HashMap<WTF::URL,std::unique_ptr<WebKit::PrefetchCache::Entry>,WTF::DefaultHash<WTF::URL>,WTF::HashTraits<WTF::URL>,WTF::HashTraits<std::unique_ptr<WebKit::PrefetchCache::Entry>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>::~unique_ptr[abi:sn200100](&v56, v10);
  }

  WebCore::ResourceRequestBase::clearPurpose(this);
  v11 = *v8;
  v12 = WTF::fastMalloc(0x1E0);
  WTF::URL::URL(v12, a3);
  v13 = *(a3 + 40);
  *(a3 + 40) = 0;
  v14[5] = v13;
  v14[6] = *(a3 + 48);
  v15 = *(a3 + 56);
  *(a3 + 56) = 0;
  v14[7] = v15;
  v16 = *(a3 + 64);
  *(a3 + 64) = 0;
  v14[8] = v16;
  v17 = *(a3 + 72);
  *(a3 + 72) = 0;
  v14[9] = v17;
  v14[11] = 0;
  v14[10] = 0;
  WTF::VectorBuffer<unsigned char,0ul,WTF::FastMalloc>::adopt((v14 + 10), (a3 + 80));
  *(v12 + 104) = 0;
  *(v12 + 96) = 0;
  WTF::VectorBuffer<unsigned char,0ul,WTF::FastMalloc>::adopt(v12 + 96, (a3 + 96));
  v18 = *(a3 + 112);
  *(a3 + 112) = 0;
  *(v12 + 112) = v18;
  *(v12 + 120) = 0;
  *(v12 + 128) = 0;
  if (*(a3 + 128) == 1)
  {
    v54 = *(a3 + 120);
    *(a3 + 120) = 0;
    *(v12 + 120) = v54;
    *(v12 + 128) = 1;
  }

  v19 = *(a3 + 136);
  *(v12 + 138) = *(a3 + 138);
  *(v12 + 136) = v19;
  v20 = *(a3 + 144);
  *(a3 + 144) = 0;
  *(v12 + 144) = v20;
  v21 = *(a3 + 152);
  *(v12 + 168) = *(a3 + 168);
  *(v12 + 152) = v21;
  v22 = *(a3 + 184);
  v23 = *(a3 + 200);
  v24 = *(a3 + 216);
  *(v12 + 227) = *(a3 + 227);
  *(v12 + 216) = v24;
  *(v12 + 200) = v23;
  *(v12 + 184) = v22;
  v25 = *(a3 + 248);
  *(a3 + 248) = 0;
  *(v12 + 248) = v25;
  *(v12 + 256) = *(a3 + 256);
  *(v12 + 264) = 0;
  *(v12 + 272) = 0;
  WTF::URL::URL(v12 + 280, this);
  WTF::URL::URL(v12 + 320, this + 5);
  *(v12 + 360) = *(this + 10);
  v26 = *(this + 11);
  *(this + 11) = 0;
  *(v12 + 376) = 0;
  *(v12 + 384) = 0;
  *(v12 + 368) = v26;
  WTF::VectorBuffer<unsigned char,0ul,WTF::FastMalloc>::adopt(v12 + 376, this + 12);
  *(v12 + 392) = 0;
  *(v12 + 400) = 0;
  WTF::VectorBuffer<unsigned char,0ul,WTF::FastMalloc>::adopt(v12 + 392, this + 14);
  *(v12 + 408) = 0;
  *(v12 + 416) = 0;
  WTF::VectorBuffer<WTF::String,0ul,WTF::FastMalloc>::adopt(v12 + 408, this + 32);
  v27 = *(this + 36);
  *(v12 + 428) = *(this + 148);
  *(v12 + 424) = v27;
  v28 = *(this + 19);
  *(this + 19) = 0;
  *(v12 + 432) = v28;
  v29 = *(this + 20);
  *(this + 20) = 0;
  *(v12 + 440) = v29;
  v30 = *(this + 21);
  *(this + 21) = 0;
  *(v12 + 448) = v30;
  v31 = *(this + 22);
  *(v12 + 464) = *(this + 184);
  *(v12 + 456) = v31;
  v32 = *(this + 24);
  *(this + 24) = 0;
  *(v12 + 472) = v32;
  if (WTF::HashTraitsEmptyValueChecker<WTF::HashTraits<WTF::URL>,false>::isEmptyValue<WTF::URL>(a2) || *a2 == -1)
  {
    __break(0xC471u);
    JUMPOUT(0x19DDA1CF4);
  }

  v33 = *v11;
  if (*v11 || (WTF::HashTable<WTF::URL,WTF::KeyValuePair<WTF::URL,std::unique_ptr<WebKit::PrefetchCache::Entry>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::URL,std::unique_ptr<WebKit::PrefetchCache::Entry>>>,WTF::DefaultHash<WTF::URL>,WTF::HashMap<WTF::URL,std::unique_ptr<WebKit::PrefetchCache::Entry>,WTF::DefaultHash<WTF::URL>,WTF::HashTraits<WTF::URL>,WTF::HashTraits<std::unique_ptr<WebKit::PrefetchCache::Entry>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::URL>,WTF::FastMalloc>::expand(v11, 0), (v33 = *v11) != 0))
  {
    v34 = *(v33 - 8);
  }

  else
  {
    v34 = 0;
  }

  v35 = *(*a2 + 16);
  if (v35 < 0x100)
  {
    v36 = WTF::StringImpl::hashSlowCase(*a2);
  }

  else
  {
    v36 = v35 >> 8;
  }

  v37 = v36 & v34;
  v38 = (v33 + 48 * (v36 & v34));
  if ((WTF::HashTraitsEmptyValueChecker<WTF::HashTraits<WTF::URL>,false>::isEmptyValue<WTF::URL>(v38) & 1) == 0)
  {
    v55 = v11;
    v40 = v7;
    v41 = 0;
    v42 = 1;
    do
    {
      if (*v38 == -1)
      {
        v41 = v38;
      }

      else if (WTF::equal(*v38, *a2, v39))
      {
        v48 = std::unique_ptr<WebKit::PrefetchCache::Entry>::reset[abi:sn200100](v38 + 5, v12);
        v7 = v40;
        goto LABEL_27;
      }

      v37 = (v37 + v42) & v34;
      v38 = (v33 + 48 * v37);
      ++v42;
    }

    while (!WTF::HashTraitsEmptyValueChecker<WTF::HashTraits<WTF::URL>,false>::isEmptyValue<WTF::URL>(v38));
    v7 = v40;
    v11 = v55;
    if (v41)
    {
      v41[1] = 0u;
      v41[2] = 0u;
      *v41 = 0u;
      --*(*v55 - 16);
      v38 = v41;
    }
  }

  WTF::String::operator=(v38, a2);
  v43 = *(a2 + 24);
  *(v38 + 8) = *(a2 + 8);
  *(v38 + 24) = v43;
  v48 = std::unique_ptr<WebKit::PrefetchCache::Entry>::reset[abi:sn200100](v38 + 5, v12);
  v44 = *v11;
  if (*v11)
  {
    v45 = *(v44 - 12) + 1;
  }

  else
  {
    v45 = 1;
  }

  *(v44 - 12) = v45;
  v46 = (*(v44 - 16) + v45);
  v47 = *(v44 - 4);
  if (v47 <= 0x400)
  {
    if (3 * v47 > 4 * v46)
    {
      goto LABEL_27;
    }

    goto LABEL_26;
  }

  if (v47 <= 2 * v46)
  {
LABEL_26:
    v48 = WTF::HashTable<WTF::URL,WTF::KeyValuePair<WTF::URL,std::unique_ptr<WebKit::PrefetchCache::Entry>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::URL,std::unique_ptr<WebKit::PrefetchCache::Entry>>>,WTF::DefaultHash<WTF::URL>,WTF::HashMap<WTF::URL,std::unique_ptr<WebKit::PrefetchCache::Entry>,WTF::DefaultHash<WTF::URL>,WTF::HashTraits<WTF::URL>,WTF::HashTraits<std::unique_ptr<WebKit::PrefetchCache::Entry>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::URL>,WTF::FastMalloc>::expand(v11, v38);
  }

LABEL_27:
  WTF::WallTime::now(v48);
  v50 = *a2;
  if (*a2)
  {
    atomic_fetch_add_explicit(v50, 2u, memory_order_relaxed);
  }

  v56 = v50;
  v57 = *(a2 + 8);
  v58 = *(a2 + 24);
  v59 = v49;
  WTF::Deque<std::tuple<WTF::URL,WTF::WallTime>,0ul>::append(v7 + 16, &v56);
  v52 = v56;
  v56 = 0;
  if (v52 && atomic_fetch_add_explicit(v52, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v52, v51);
  }

  if ((*(v7 + 80) & 0xFFFFFFFFFFFFLL) == 0 || (result = *((*(v7 + 80) & 0xFFFFFFFFFFFFLL) + 8), result == 0.0))
  {
    WebCore::TimerBase::start();
  }

  return result;
}

uint64_t WebKit::initializeSecItemShim(WebKit *this, WebKit::NetworkProcess *a2)
{
  WTF::WeakPtrFactory<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(this + 2, this);
  v4 = *(this + 1);
  atomic_fetch_add(v4, 1u);
  if (byte_1ED642709)
  {
    v5 = qword_1ED642720;
    qword_1ED642720 = v4;
    if (v5 && atomic_fetch_add(v5, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v5);
      WTF::fastFree(v5, v3);
    }
  }

  else
  {
    byte_1ED642709 = 1;
    qword_1ED642720 = v4;
  }

  return _CFURLConnectionSetFrameworkStubs();
}

uint64_t WebKit::webSecItemCopyMatching(WebKit *this, const __CFDictionary *a2, const void **a3)
{
  WebKit::sendSecItemRequest(&v13, 1, this, 0);
  if (v17 != 1)
  {
    return 4294941988;
  }

  if (capacity_4 == 255)
  {
    v5 = -1;
  }

  else
  {
    v5 = capacity_4;
  }

  if (v5 == 2)
  {
    if (capacity_4 != 2)
    {
      goto LABEL_28;
    }

    *a2 = cf;
    return v13;
  }

  if (v5 != 1)
  {
    if (capacity_4)
    {
      goto LABEL_28;
    }

    *a2 = 0;
    return v13;
  }

  if (capacity_4 != 1)
  {
    goto LABEL_28;
  }

  Mutable = CFArrayCreateMutable(0, capacity, MEMORY[0x1E695E9C0]);
  v7 = Mutable;
  if (capacity)
  {
    v8 = cf;
    v9 = 8 * capacity;
    do
    {
      v6 = *v8;
      if (*v8)
      {
        CFArrayAppendValue(v7, v6);
      }

      ++v8;
      v9 -= 8;
    }

    while (v9);
  }

  *a2 = v7;
  if ((v17 & 1) == 0)
  {
    __break(1u);
LABEL_28:
    mpark::throw_bad_variant_access(Mutable);
  }

  v10 = v13;
  if (capacity_4 > 1u)
  {
    if (capacity_4 == 2)
    {
      v12 = cf;
      cf = 0;
      if (v12)
      {
        CFRelease(v12);
      }
    }
  }

  else if (capacity_4)
  {
    WTF::Vector<WTF::RetainPtr<__SecCertificate *>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&cf, v6);
  }

  return v10;
}

uint64_t WebKit::webSecItemAdd(WebKit *this, const __CFDictionary *a2, const void **a3)
{
  if (a2)
  {
    return 4294967246;
  }

  WebKit::sendSecItemRequest(&v7, 2, this, 0);
  if (v10 != 1)
  {
    return 4294941988;
  }

  v3 = v7;
  if (v9 > 1u)
  {
    if (v9 == 2)
    {
      v6 = cf[0];
      cf[0] = 0;
      if (v6)
      {
        CFRelease(v6);
      }
    }
  }

  else if (v9)
  {
    WTF::Vector<WTF::RetainPtr<__SecCertificate *>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(cf, v4);
  }

  return v3;
}

uint64_t WebKit::webSecItemUpdate(WebKit *this, const __CFDictionary *a2, const __CFDictionary *a3)
{
  WebKit::sendSecItemRequest(&v7, 3, this, a2);
  if (v10 != 1)
  {
    return 4294941988;
  }

  v4 = v7;
  if (v9 > 1u)
  {
    if (v9 == 2)
    {
      v6 = cf[0];
      cf[0] = 0;
      if (v6)
      {
        CFRelease(v6);
      }
    }
  }

  else if (v9)
  {
    WTF::Vector<WTF::RetainPtr<__SecCertificate *>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(cf, v3);
  }

  return v4;
}

uint64_t WebKit::webSecItemDelete(WebKit *this, const __CFDictionary *a2)
{
  WebKit::sendSecItemRequest(&v6, 4, this, 0);
  if (v9 != 1)
  {
    return 4294941988;
  }

  v3 = v6;
  if (v8 > 1u)
  {
    if (v8 == 2)
    {
      v5 = cf[0];
      cf[0] = 0;
      if (v5)
      {
        CFRelease(v5);
      }
    }
  }

  else if (v8)
  {
    WTF::Vector<WTF::RetainPtr<__SecCertificate *>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(cf, v2);
  }

  return v3;
}

void WebKit::BackgroundFetchStoreImpl::~BackgroundFetchStoreImpl(WebKit::BackgroundFetchStoreImpl *this, void *a2)
{
  *this = &unk_1F1108D30;
  v3 = *(this + 7);
  *(this + 7) = 0;
  if (v3 && atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3);
    WTF::fastFree(v3, a2);
  }

  v4 = *(this + 6);
  if (v4)
  {
    v5 = *(v4 - 4);
    if (v5)
    {
      v6 = (v4 + 8);
      do
      {
        if (*(v6 - 1) != -1)
        {
          WebKit::BackgroundFetchStoreImpl::FetchInformation::~FetchInformation(v6, a2);
          v7 = *(v6 - 1);
          *(v6 - 1) = 0;
          if (v7)
          {
            if (atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v7, a2);
            }
          }
        }

        v6 = (v6 + 88);
        --v5;
      }

      while (v5);
    }

    WTF::fastFree((v4 - 16), a2);
  }

  v8 = *(this + 5);
  if (v8)
  {
    v9 = *(v8 - 4);
    if (v9)
    {
      v10 = *(this + 5);
      while (!*(v10 + 24))
      {
        if (*v10 != -1)
        {
          goto LABEL_18;
        }

LABEL_19:
        v10 = (v10 + 88);
        if (!--v9)
        {
          goto LABEL_23;
        }
      }

      if (*(v10 + 24) != 1)
      {
        mpark::throw_bad_variant_access(v10);
      }

LABEL_18:
      v10 = WTF::KeyValuePair<WebCore::ClientOrigin,WebKit::BackgroundFetchStoreImpl::PerClientOriginFetches>::~KeyValuePair(v10, a2);
      goto LABEL_19;
    }

LABEL_23:
    WTF::fastFree((v8 - 16), a2);
  }

  v11 = *(this + 4);
  *(this + 4) = 0;
  if (v11)
  {
    WTF::ThreadSafeWeakPtrControlBlock::weakDeref(v11, a2);
  }

  if (*(this + 4) == 1)
  {
    v12 = *(this + 1);
    if (v12)
    {
      *(v12 + 8) = 0;
      v13 = *(this + 1);
      *(this + 1) = 0;
      if (v13)
      {
        if (atomic_fetch_add(v13, 0xFFFFFFFF) == 1)
        {
          atomic_store(1u, v13);
          WTF::fastFree(v13, a2);
        }
      }
    }
  }

  else
  {
    __break(0xC471u);
  }
}

{
  WebKit::BackgroundFetchStoreImpl::~BackgroundFetchStoreImpl(this, a2);

  WTF::fastFree(v2, v3);
}

WTF::StringImpl *WebKit::BackgroundFetchStoreImpl::registerFetch(uint64_t a1, uint64_t a2, const WTF::StringImpl *a3, atomic_uint **a4, WTF::StringImpl **a5)
{
  v76[2] = *MEMORY[0x1E69E9840];
  LOBYTE(v62) = 0;
  v64 = -1;
  LODWORD(v10) = *(a2 + 24);
  if (!*(a2 + 24))
  {
    v11 = *a2;
    if (*a2)
    {
      atomic_fetch_add_explicit(v11, 2u, memory_order_relaxed);
    }

    *&v62 = v11;
    v10 = *(a2 + 8);
    if (v10)
    {
      atomic_fetch_add_explicit(v10, 2u, memory_order_relaxed);
    }

    *(&v62 + 1) = v10;
    v63 = *(a2 + 16);
    LOBYTE(v10) = *(a2 + 24);
    goto LABEL_7;
  }

  if (v10 != 255)
  {
    v62 = *a2;
LABEL_7:
    v64 = v10;
  }

  LOBYTE(v65) = 0;
  v67 = -1;
  LODWORD(v12) = *(a2 + 56);
  if (!*(a2 + 56))
  {
    v13 = *(a2 + 32);
    if (v13)
    {
      atomic_fetch_add_explicit(v13, 2u, memory_order_relaxed);
    }

    *&v65 = v13;
    v12 = *(a2 + 40);
    if (v12)
    {
      atomic_fetch_add_explicit(v12, 2u, memory_order_relaxed);
    }

    *(&v65 + 1) = v12;
    v66 = *(a2 + 48);
    LOBYTE(v12) = *(a2 + 56);
    goto LABEL_14;
  }

  if (v12 != 255)
  {
    v65 = *(a2 + 32);
LABEL_14:
    v67 = v12;
  }

  v14 = *(a3 + 4);
  if (v14)
  {
    atomic_fetch_add_explicit(v14, 2u, memory_order_relaxed);
  }

  v68 = v14;
  v15 = *a4;
  if (*a4)
  {
    atomic_fetch_add_explicit(v15, 2u, memory_order_relaxed);
  }

  v69 = v15;
  if (*a5 == -1)
  {
    __break(0xC471u);
    goto LABEL_104;
  }

  if (!*a5)
  {
    __break(0xC471u);
    JUMPOUT(0x19DDA281CLL);
  }

  v16 = *(a1 + 48);
  if (v16 || (WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WebKit::BackgroundFetchStoreImpl::FetchInformation>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WebKit::BackgroundFetchStoreImpl::FetchInformation>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WebKit::BackgroundFetchStoreImpl::FetchInformation,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WebKit::BackgroundFetchStoreImpl::FetchInformation>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::expand((a1 + 48)), (v16 = *(a1 + 48)) != 0))
  {
    v17 = *(v16 - 8);
  }

  else
  {
    v17 = 0;
  }

  v18 = *(*a5 + 4);
  v60 = a4;
  v61 = a3;
  v59 = v15;
  if (v18 < 0x100)
  {
    v19 = WTF::StringImpl::hashSlowCase(*a5);
  }

  else
  {
    v19 = v18 >> 8;
  }

  v20 = 0;
  for (i = 1; ; ++i)
  {
    v22 = v19 & v17;
    v23 = (v16 + 88 * (v19 & v17));
    v24 = *v23;
    if (*v23 == -1)
    {
      v20 = v16 + 88 * v22;
      goto LABEL_32;
    }

    if (!v24)
    {
      break;
    }

    if (WTF::equal(v24, *a5, a3))
    {
      goto LABEL_47;
    }

LABEL_32:
    v19 = i + v22;
  }

  if (v20)
  {
    *(v20 + 80) = 0;
    *(v20 + 48) = 0u;
    *(v20 + 64) = 0u;
    *(v20 + 16) = 0u;
    *(v20 + 32) = 0u;
    *v20 = 0u;
    --*(*(a1 + 48) - 16);
    v23 = v20;
  }

  WTF::String::operator=(v23, a5);
  LOBYTE(v70[0]) = 0;
  v72 = -1;
  if (!v64)
  {
    v26 = v62;
    v62 = 0uLL;
    *v70 = v26;
    v71 = v63;
    v27 = v59;
    goto LABEL_37;
  }

  v27 = v59;
  if (v64 != 255)
  {
    *v70 = v62;
LABEL_37:
    v72 = v64;
  }

  LOBYTE(v73) = 0;
  v75 = -1;
  if (!v67)
  {
    v28 = v65;
    v65 = 0uLL;
    v73 = v28;
    v74 = v66;
    goto LABEL_40;
  }

  if (v67 != 255)
  {
    v73 = v65;
LABEL_40:
    v75 = v67;
  }

  v29 = v68;
  v68 = 0;
  v69 = 0;
  v76[0] = v29;
  v76[1] = v27;
  WebCore::SecurityOriginData::operator=((v23 + 1));
  WebCore::SecurityOriginData::operator=((v23 + 5));
  WebKit::GPUProcess::GPUSession::operator=(v23 + 9, v76);
  WebKit::BackgroundFetchStoreImpl::FetchInformation::~FetchInformation(v70, v30);
  v31 = *(a1 + 48);
  if (v31)
  {
    v32 = *(v31 - 12) + 1;
  }

  else
  {
    v32 = 1;
  }

  *(v31 - 12) = v32;
  v33 = (*(v31 - 16) + v32);
  v34 = *(v31 - 4);
  if (v34 > 0x400)
  {
    if (v34 <= 2 * v33)
    {
LABEL_46:
      WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WebKit::BackgroundFetchStoreImpl::FetchInformation>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WebKit::BackgroundFetchStoreImpl::FetchInformation>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WebKit::BackgroundFetchStoreImpl::FetchInformation,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WebKit::BackgroundFetchStoreImpl::FetchInformation>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::expand((a1 + 48));
    }
  }

  else if (3 * v34 <= 4 * v33)
  {
    goto LABEL_46;
  }

LABEL_47:
  WebKit::BackgroundFetchStoreImpl::FetchInformation::~FetchInformation(&v62, v25);
  result = WTF::HashTable<WebCore::ClientOrigin,WTF::KeyValuePair<WebCore::ClientOrigin,WebKit::BackgroundFetchStoreImpl::PerClientOriginFetches>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ClientOrigin,WebKit::BackgroundFetchStoreImpl::PerClientOriginFetches>>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashMap<WebCore::ClientOrigin,WebKit::BackgroundFetchStoreImpl::PerClientOriginFetches,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::HashTraits<WebKit::BackgroundFetchStoreImpl::PerClientOriginFetches>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ClientOrigin>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WebCore::ClientOrigin,WebKit::BackgroundFetchStoreImpl::PerClientOriginFetches,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::HashTraits<WebKit::BackgroundFetchStoreImpl::PerClientOriginFetches>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WebCore::ClientOrigin>>,(WTF::ShouldValidateKey)1,WebCore::ClientOrigin>((a1 + 40), a2);
  v37 = result;
  v38 = *(a1 + 40);
  if (v38)
  {
    v38 = (v38 + 88 * *(v38 - 1));
  }

  if (v38 == result)
  {
    return result;
  }

  v39 = *(v61 + 4);
  if (v39)
  {
    atomic_fetch_add_explicit(v39, 2u, memory_order_relaxed);
  }

  v70[0] = v39;
  v40 = *a4;
  if (*v60)
  {
    atomic_fetch_add_explicit(v40, 2u, memory_order_relaxed);
  }

  v70[1] = v40;
  if (WTF::equal(v39, 0, v36) && WTF::equal(v40, 0, v41))
  {
    __break(0xC471u);
LABEL_104:
    JUMPOUT(0x19DDA27FCLL);
  }

  if (v39 == -1)
  {
    __break(0xC471u);
    JUMPOUT(0x19DDA283CLL);
  }

  v42 = *(v37 + 8);
  if (v42 || (WTF::HashTable<std::pair<WTF::String,WTF::String>,WTF::KeyValuePair<std::pair<WTF::String,WTF::String>,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<std::pair<WTF::String,WTF::String>,WTF::String>>,WTF::DefaultHash<std::pair<WTF::String,WTF::String>>,WTF::HashMap<std::pair<WTF::String,WTF::String>,WTF::String,WTF::DefaultHash<std::pair<WTF::String,WTF::String>>,WTF::HashTraits<std::pair<WTF::String,WTF::String>>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<std::pair<WTF::String,WTF::String>>,WTF::FastMalloc>::expand(v37 + 8), (v42 = *(v37 + 8)) != 0))
  {
    v43 = *(v42 - 8);
  }

  else
  {
    v43 = 0;
  }

  v44 = WTF::TupleHash<WTF::String,WTF::String>::hash<0ul>(v70) & v43;
  v45 = (v42 + 24 * v44);
  if ((WTF::HashTable<std::pair<WTF::String,WTF::String>,WTF::KeyValuePair<std::pair<WTF::String,WTF::String>,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<std::pair<WTF::String,WTF::String>,WTF::String>>,WTF::DefaultHash<std::pair<WTF::String,WTF::String>>,WTF::HashMap<std::pair<WTF::String,WTF::String>,WTF::String,WTF::DefaultHash<std::pair<WTF::String,WTF::String>>,WTF::HashTraits<std::pair<WTF::String,WTF::String>>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<std::pair<WTF::String,WTF::String>>,WTF::FastMalloc>::isEmptyBucket(v45, v46, v47) & 1) == 0)
  {
    v50 = 0;
    v51 = 1;
    do
    {
      if (*v45 == -1)
      {
        v50 = v45;
      }

      else if (WTF::TupleHash<WTF::String,WTF::String>::equal<0ul>(v45, v70, v49))
      {
        goto LABEL_78;
      }

      v44 = (v44 + v51) & v43;
      v45 = (v42 + 24 * v44);
      ++v51;
    }

    while (!WTF::HashTable<std::pair<WTF::String,WTF::String>,WTF::KeyValuePair<std::pair<WTF::String,WTF::String>,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<std::pair<WTF::String,WTF::String>,WTF::String>>,WTF::DefaultHash<std::pair<WTF::String,WTF::String>>,WTF::HashMap<std::pair<WTF::String,WTF::String>,WTF::String,WTF::DefaultHash<std::pair<WTF::String,WTF::String>>,WTF::HashTraits<std::pair<WTF::String,WTF::String>>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<std::pair<WTF::String,WTF::String>>,WTF::FastMalloc>::isEmptyBucket(v45, v48, v49));
    if (v50)
    {
      *v50 = 0;
      v50[1] = 0;
      v50[2] = 0;
      --*(*(v37 + 8) - 16);
      v45 = v50;
    }
  }

  WebKit::GPUProcess::GPUSession::operator=(v45, v70);
  v52 = *a5;
  *a5 = 0;
  v53 = v45[2];
  v45[2] = v52;
  if (v53 && atomic_fetch_add_explicit(v53, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v53, v48);
  }

  v54 = *(v37 + 8);
  if (v54)
  {
    v55 = *(v54 - 12) + 1;
  }

  else
  {
    v55 = 1;
  }

  *(v54 - 12) = v55;
  v56 = (*(v54 - 16) + v55);
  v57 = *(v54 - 4);
  if (v57 > 0x400)
  {
    if (v57 <= 2 * v56)
    {
LABEL_77:
      WTF::HashTable<std::pair<WTF::String,WTF::String>,WTF::KeyValuePair<std::pair<WTF::String,WTF::String>,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<std::pair<WTF::String,WTF::String>,WTF::String>>,WTF::DefaultHash<std::pair<WTF::String,WTF::String>>,WTF::HashMap<std::pair<WTF::String,WTF::String>,WTF::String,WTF::DefaultHash<std::pair<WTF::String,WTF::String>>,WTF::HashTraits<std::pair<WTF::String,WTF::String>>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<std::pair<WTF::String,WTF::String>>,WTF::FastMalloc>::expand(v37 + 8);
    }
  }

  else if (3 * v57 <= 4 * v56)
  {
    goto LABEL_77;
  }

LABEL_78:
  v58 = v70[1];
  v70[1] = 0;
  if (v58 && atomic_fetch_add_explicit(v58, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v58, v48);
  }

  result = v70[0];
  v70[0] = 0;
  if (result)
  {
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v48);
    }
  }

  return result;
}

void WebKit::BackgroundFetchStoreImpl::FetchInformation::~FetchInformation(WebKit::BackgroundFetchStoreImpl::FetchInformation *this, WTF::StringImpl *a2)
{
  v3 = *(this + 9);
  *(this + 9) = 0;
  if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v3, a2);
  }

  v4 = *(this + 8);
  *(this + 8) = 0;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, a2);
  }

  if (!*(this + 56))
  {
    v5 = *(this + 5);
    *(this + 5) = 0;
    if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v5, a2);
    }

    v6 = *(this + 4);
    *(this + 4) = 0;
    if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v6, a2);
    }
  }

  *(this + 56) = -1;
  if (!*(this + 24))
  {
    v7 = *(this + 1);
    *(this + 1) = 0;
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
  }

  *(this + 24) = -1;
}

WTF::StringImpl *WebKit::BackgroundFetchStoreImpl::initializeFetches(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  LOBYTE(v11[0]) = 0;
  v13 = -1;
  LODWORD(v5) = *(a2 + 24);
  if (!*(a2 + 24))
  {
    v6 = *a2;
    if (*a2)
    {
      atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed);
    }

    v11[0] = v6;
    v5 = *(a2 + 8);
    if (v5)
    {
      atomic_fetch_add_explicit(v5, 2u, memory_order_relaxed);
    }

    v11[1] = v5;
    v12 = *(a2 + 16);
    LOBYTE(v5) = *(a2 + 24);
    goto LABEL_7;
  }

  if (v5 != 255)
  {
    *v11 = *a2;
LABEL_7:
    v13 = v5;
  }

  WebCore::SecurityOriginData::fromURL(&v14, (a2 + 32), a2);
  result = WebKit::BackgroundFetchStoreImpl::initializeFetches(a1, v11, a3);
  if (!v16)
  {
    v9 = v15;
    v15 = 0;
    if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v9, v8);
    }

    result = v14;
    v14 = 0;
    if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      result = WTF::StringImpl::destroy(result, v8);
    }
  }

  v16 = -1;
  if (!v13)
  {
    v10 = v11[1];
    v11[1] = 0;
    if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v10, v8);
    }

    result = v11[0];
    v11[0] = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        return WTF::StringImpl::destroy(result, v8);
      }
    }
  }

  return result;
}

atomic_ullong *WebKit::BackgroundFetchStoreImpl::initializeFetches(uint64_t a1, __n128 *a2, uint64_t *a3)
{
  v71 = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 32);
  if (!v5)
  {
    v61 = 0;
LABEL_3:
    v6 = *a3;
    *a3 = 0;
    (*(*v6 + 16))(v6);
    result = (*(*v6 + 8))(v6);
    goto LABEL_4;
  }

  WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::GPUConnectionToWebProcess>(v5, *(a1 + 24), &v61);
  if (!v61)
  {
    goto LABEL_3;
  }

  v58 = 0;
  v59 = 0;
  v60 = 0;
  v10 = WTF::HashTraitsEmptyValueChecker<WTF::HashTraits<WebCore::ClientOrigin>,false>::isEmptyValue<WebCore::ClientOrigin>();
  if (v10)
  {
    goto LABEL_97;
  }

  if (a2[1].n128_u8[8])
  {
    if (a2[1].n128_u8[8] != 1)
    {
LABEL_25:
      mpark::throw_bad_variant_access(v10);
    }

    goto LABEL_11;
  }

  if (a2->n128_u64[0] == -1)
  {
LABEL_97:
    __break(0xC471u);
    JUMPOUT(0x19DDA3188);
  }

LABEL_11:
  v11 = *(a1 + 40);
  if (v11 || (WTF::HashTable<WebCore::ClientOrigin,WTF::KeyValuePair<WebCore::ClientOrigin,WebKit::BackgroundFetchStoreImpl::PerClientOriginFetches>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ClientOrigin,WebKit::BackgroundFetchStoreImpl::PerClientOriginFetches>>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashMap<WebCore::ClientOrigin,WebKit::BackgroundFetchStoreImpl::PerClientOriginFetches,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::HashTraits<WebKit::BackgroundFetchStoreImpl::PerClientOriginFetches>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ClientOrigin>,WTF::FastMalloc>::expand((a1 + 40), 0), (v11 = *(a1 + 40)) != 0))
  {
    v12 = *(v11 - 8);
  }

  else
  {
    v12 = 0;
  }

  v13 = WTF::computeHash<WebCore::ClientOrigin>(a2) & v12;
  v14 = v11 + 88 * v13;
  v10 = WTF::HashTraitsEmptyValueChecker<WTF::HashTraits<WebCore::ClientOrigin>,false>::isEmptyValue<WebCore::ClientOrigin>();
  if (v10)
  {
    goto LABEL_28;
  }

  v15 = 0;
  v16 = 1;
  do
  {
    if (*(v14 + 24))
    {
      if (*(v14 + 24) != 1)
      {
        goto LABEL_25;
      }
    }

    else if (*v14 == -1)
    {
      v15 = v14;
      goto LABEL_22;
    }

    if (WebCore::operator==() && (WebCore::operator==() & 1) != 0)
    {
      v54 = 0;
      goto LABEL_47;
    }

LABEL_22:
    v13 = (v13 + v16) & v12;
    v14 = v11 + 88 * v13;
    v10 = WTF::HashTraitsEmptyValueChecker<WTF::HashTraits<WebCore::ClientOrigin>,false>::isEmptyValue<WebCore::ClientOrigin>();
    ++v16;
  }

  while (!v10);
  if (v15)
  {
    *(v15 + 80) = 0;
    *(v15 + 48) = 0u;
    *(v15 + 64) = 0u;
    *(v15 + 16) = 0u;
    *(v15 + 32) = 0u;
    *v15 = 0u;
    --*(*(a1 + 40) - 16);
    v14 = v15;
  }

LABEL_28:
  mpark::detail::assignment<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>>::generic_assign<mpark::detail::copy_assignment<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1> const&>(v14, a2);
  mpark::detail::assignment<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>>::generic_assign<mpark::detail::copy_assignment<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1> const&>((v14 + 32), a2 + 2);
  v20 = v58;
  v21 = v59;
  v58 = 0;
  v59 = 0;
  v22 = v60;
  v60 = 0;
  *v63 = 0;
  v23 = *(v14 + 64);
  *(v14 + 64) = v20;
  if (v23)
  {
    WTF::HashTable<std::pair<WTF::String,WTF::String>,WTF::KeyValuePair<std::pair<WTF::String,WTF::String>,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<std::pair<WTF::String,WTF::String>,WTF::String>>,WTF::DefaultHash<std::pair<WTF::String,WTF::String>>,WTF::HashMap<std::pair<WTF::String,WTF::String>,WTF::String,WTF::DefaultHash<std::pair<WTF::String,WTF::String>>,WTF::HashTraits<std::pair<WTF::String,WTF::String>>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<std::pair<WTF::String,WTF::String>>,WTF::FastMalloc>::deallocateTable(v23, v18);
  }

  v24 = *(v14 + 84);
  v25 = *(v14 + 72);
  if (v24)
  {
    v26 = 8 * v24;
    do
    {
      v27 = *v25;
      *v25 = 0;
      if (v27)
      {
        (*(*v27 + 8))(v27);
      }

      v25 = (v25 + 8);
      v26 -= 8;
    }

    while (v26);
    v25 = *(v14 + 72);
  }

  if (v25)
  {
    *(v14 + 72) = 0;
    *(v14 + 80) = 0;
    WTF::fastFree(v25, v18);
  }

  *&v19 = 0;
  *&v63[8] = v19;
  *(v14 + 72) = v21;
  *(v14 + 80) = v22;
  WTF::Vector<WTF::CompletionHandler<void ()(void)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v63[8], v18);
  if (*v63)
  {
    WTF::HashTable<std::pair<WTF::String,WTF::String>,WTF::KeyValuePair<std::pair<WTF::String,WTF::String>,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<std::pair<WTF::String,WTF::String>,WTF::String>>,WTF::DefaultHash<std::pair<WTF::String,WTF::String>>,WTF::HashMap<std::pair<WTF::String,WTF::String>,WTF::String,WTF::DefaultHash<std::pair<WTF::String,WTF::String>>,WTF::HashTraits<std::pair<WTF::String,WTF::String>>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<std::pair<WTF::String,WTF::String>>,WTF::FastMalloc>::deallocateTable(*v63, v17);
  }

  v28 = *(a1 + 40);
  if (v28)
  {
    v29 = *(v28 - 12) + 1;
  }

  else
  {
    v29 = 1;
  }

  *(v28 - 12) = v29;
  v30 = (*(v28 - 16) + v29);
  v31 = *(v28 - 4);
  if (v31 > 0x400)
  {
    if (v31 <= 2 * v30)
    {
LABEL_45:
      v14 = WTF::HashTable<WebCore::ClientOrigin,WTF::KeyValuePair<WebCore::ClientOrigin,WebKit::BackgroundFetchStoreImpl::PerClientOriginFetches>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ClientOrigin,WebKit::BackgroundFetchStoreImpl::PerClientOriginFetches>>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashMap<WebCore::ClientOrigin,WebKit::BackgroundFetchStoreImpl::PerClientOriginFetches,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::HashTraits<WebKit::BackgroundFetchStoreImpl::PerClientOriginFetches>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ClientOrigin>,WTF::FastMalloc>::expand((a1 + 40), v14);
    }
  }

  else if (3 * v31 <= 4 * v30)
  {
    goto LABEL_45;
  }

  v54 = 1;
LABEL_47:
  WTF::Vector<WTF::CompletionHandler<void ()(void)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v59, v17);
  if (v58)
  {
    WTF::HashTable<std::pair<WTF::String,WTF::String>,WTF::KeyValuePair<std::pair<WTF::String,WTF::String>,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<std::pair<WTF::String,WTF::String>,WTF::String>>,WTF::DefaultHash<std::pair<WTF::String,WTF::String>>,WTF::HashMap<std::pair<WTF::String,WTF::String>,WTF::String,WTF::DefaultHash<std::pair<WTF::String,WTF::String>>,WTF::HashTraits<std::pair<WTF::String,WTF::String>>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<std::pair<WTF::String,WTF::String>>,WTF::FastMalloc>::deallocateTable(v58, v32);
  }

  v33 = *(v14 + 84);
  if (v33)
  {
    v34 = 1;
  }

  else
  {
    v34 = v54;
  }

  if ((v34 & 1) == 0)
  {
    goto LABEL_3;
  }

  if (v33 == *(v14 + 80))
  {
    a3 = WTF::Vector<WTF::CompletionHandler<void ()(void)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(v14 + 72, v33 + 1, a3);
    v33 = *(v14 + 84);
  }

  v35 = (*(v14 + 72) + 8 * v33);
  v36 = *a3;
  *a3 = 0;
  *v35 = v36;
  *(v14 + 84) = v33 + 1;
  v63[0] = 0;
  v64 = -1;
  LODWORD(v33) = a2[1].n128_u8[8];
  if (a2[1].n128_u8[8])
  {
    if (v33 != 255)
    {
      *v63 = *a2;
      goto LABEL_61;
    }
  }

  else
  {
    v37 = a2->n128_u64[0];
    if (a2->n128_u64[0])
    {
      atomic_fetch_add_explicit(v37, 2u, memory_order_relaxed);
    }

    *v63 = v37;
    v33 = a2->n128_u64[1];
    if (v33)
    {
      atomic_fetch_add_explicit(v33, 2u, memory_order_relaxed);
    }

    *&v63[8] = v33;
    *&v63[16] = a2[1].n128_u32[0];
    LOBYTE(v33) = a2[1].n128_u8[8];
LABEL_61:
    v64 = v33;
  }

  v65.n128_u8[0] = 0;
  v67 = -1;
  LODWORD(v38) = a2[3].n128_u8[8];
  if (a2[3].n128_u8[8])
  {
    if (v38 != 255)
    {
      v65 = a2[2];
      goto LABEL_68;
    }
  }

  else
  {
    v39 = a2[2].n128_u64[0];
    if (v39)
    {
      atomic_fetch_add_explicit(v39, 2u, memory_order_relaxed);
    }

    v65.n128_u64[0] = v39;
    v38 = a2[2].n128_u64[1];
    if (v38)
    {
      atomic_fetch_add_explicit(v38, 2u, memory_order_relaxed);
    }

    v65.n128_u64[1] = v38;
    v66 = a2[3].n128_u32[0];
    LOBYTE(v38) = a2[3].n128_u8[8];
LABEL_68:
    v67 = v38;
  }

  v40 = *(a1 + 56);
  if (v40)
  {
    v41 = *(v40 + 8);
    if (v41)
    {
      ++*(v41 + 2);
    }
  }

  else
  {
    v41 = 0;
  }

  Engine = WebCore::SWServer::backgroundFetchEngine(v41);
  WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(Engine, Engine);
  v43 = *Engine;
  atomic_fetch_add(*Engine, 1u);
  ++*(a1 + 16);
  v68 = v43;
  v69 = a1;
  v44 = v61;
  if (v61)
  {
    while (1)
    {
      v45 = *(v44 + 8);
      if ((v45 & 1) == 0)
      {
        break;
      }

      v46 = *(v44 + 8);
      atomic_compare_exchange_strong_explicit((v44 + 8), &v46, v45 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v46 == v45)
      {
        goto LABEL_77;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*(v44 + 8));
  }

LABEL_77:
  v70 = v44;
  v47 = WTF::fastMalloc(0x60);
  *v47 = &unk_1F11095A0;
  mpark::detail::move_assignment<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::move_assignment((v47 + 8), v63);
  mpark::detail::move_assignment<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::move_assignment((v47 + 40), &v65);
  *(v47 + 72) = v68;
  v48 = v69;
  v68 = 0;
  v69 = 0;
  *(v47 + 80) = v48;
  v49 = v70;
  v70 = 0;
  *(v47 + 88) = v49;
  v50 = *(a1 + 32);
  if (!v50)
  {
    v62 = 0;
    goto LABEL_79;
  }

  WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::GPUConnectionToWebProcess>(v50, *(a1 + 24), &v62);
  v55 = v62;
  if (v62)
  {
    v56 = WTF::fastMalloc(0x10);
    *v56 = &unk_1F1109640;
    *(v56 + 8) = v47;
    v58 = v56;
    WebKit::NetworkStorageManager::dispatchTaskToBackgroundFetchManager(v55, a2, &v58);
    v57 = v58;
    v58 = 0;
    if (v57)
    {
      (*(*v57 + 1))(v57);
    }
  }

  else
  {
LABEL_79:
    v58 = 0;
    v59 = 0;
    (*(*v47 + 16))(v47, &v58);
    (*(*v47 + 8))(v47);
    WTF::Vector<std::pair<WTF::RefPtr<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>,WTF::String>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v58, v51);
  }

  v53 = v62;
  v62 = 0;
  if (v53)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)2>,(WTF::DestructionThread)2>::deref((v53 + 8));
  }

  result = WebKit::BackgroundFetchStoreImpl::initializeFetches(WebCore::ClientOrigin const&,WTF::CompletionHandler<void ()(void)> &&)::$_0::~$_0(v63, v52);
  if (v41)
  {
    result = WTF::RefCounted<WebCore::SWServer>::deref(v41 + 2);
  }

LABEL_4:
  v8 = v61;
  v61 = 0;
  if (v8)
  {
    return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)2>,(WTF::DestructionThread)2>::deref((v8 + 8));
  }

  return result;
}

uint64_t WebKit::BackgroundFetchStoreImpl::initializeFetches(WebCore::ClientOrigin const&,WTF::CompletionHandler<void ()(void)> &&)::$_0::~$_0(uint64_t a1, void *a2)
{
  v3 = *(a1 + 80);
  *(a1 + 80) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)2>,(WTF::DestructionThread)2>::deref((v3 + 8));
  }

  v4 = *(a1 + 72);
  *(a1 + 72) = 0;
  if (v4)
  {
    if (v4[4] == 1)
    {
      (*(*v4 + 8))(v4);
    }

    else
    {
      --v4[4];
    }
  }

  v5 = *(a1 + 64);
  *(a1 + 64) = 0;
  if (v5 && atomic_fetch_add(v5, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v5);
    WTF::fastFree(v5, a2);
  }

  if (!*(a1 + 56))
  {
    v6 = *(a1 + 40);
    *(a1 + 40) = 0;
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
  }

  *(a1 + 56) = -1;
  if (!*(a1 + 24))
  {
    v8 = *(a1 + 8);
    *(a1 + 8) = 0;
    if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v8, a2);
    }

    v9 = *a1;
    *a1 = 0;
    if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v9, a2);
    }
  }

  *(a1 + 24) = -1;
  return a1;
}

WTF::StringImpl *WebKit::BackgroundFetchStoreImpl::clearFetch(uint64_t a1, WebCore::ServiceWorkerRegistrationKey *a2, atomic_uint **a3, uint64_t *a4)
{
  v65 = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 32);
  if (!v6)
  {
    v55 = 0;
LABEL_3:
    v7 = *a4;
    *a4 = 0;
    (*(*v7 + 16))(v7);
    result = (*(*v7 + 8))(v7);
    goto LABEL_4;
  }

  WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::GPUConnectionToWebProcess>(v6, *(a1 + 24), &v55);
  if (!v55)
  {
    goto LABEL_3;
  }

  WebCore::ServiceWorkerRegistrationKey::clientOrigin(&v59, a2);
  v12 = WTF::HashTable<WebCore::ClientOrigin,WTF::KeyValuePair<WebCore::ClientOrigin,WebKit::BackgroundFetchStoreImpl::PerClientOriginFetches>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ClientOrigin,WebKit::BackgroundFetchStoreImpl::PerClientOriginFetches>>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashMap<WebCore::ClientOrigin,WebKit::BackgroundFetchStoreImpl::PerClientOriginFetches,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::HashTraits<WebKit::BackgroundFetchStoreImpl::PerClientOriginFetches>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ClientOrigin>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WebCore::ClientOrigin,WebKit::BackgroundFetchStoreImpl::PerClientOriginFetches,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::HashTraits<WebKit::BackgroundFetchStoreImpl::PerClientOriginFetches>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WebCore::ClientOrigin>>,(WTF::ShouldValidateKey)1,WebCore::ClientOrigin>((a1 + 40), &v59);
  v15 = v12;
  v16 = *(a1 + 40);
  if (v16)
  {
    v16 += 88 * *(v16 - 4);
  }

  if (v16 != v12)
  {
    v17 = *(a2 + 4);
    if (v17)
    {
      atomic_fetch_add_explicit(v17, 2u, memory_order_relaxed);
    }

    v56[0] = v17;
    v18 = *a3;
    if (*a3)
    {
      atomic_fetch_add_explicit(v18, 2u, memory_order_relaxed);
    }

    v56[1] = v18;
    if (!*(v12 + 64))
    {
      goto LABEL_38;
    }

    if (WTF::equal(v56[0], 0, v14) && WTF::equal(v56[1], 0, v14) || v56[0] == -1)
    {
      __break(0xC471u);
      JUMPOUT(0x19DDA3988);
    }

    v19 = *(v15 + 64);
    if (!v19)
    {
      goto LABEL_38;
    }

    v20 = *(v19 - 8);
    v21 = WTF::TupleHash<WTF::String,WTF::String>::hash<0ul>(v56) & v20;
    v22 = (v19 + 24 * v21);
    if (WTF::HashTable<std::pair<WTF::String,WTF::String>,WTF::KeyValuePair<std::pair<WTF::String,WTF::String>,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<std::pair<WTF::String,WTF::String>,WTF::String>>,WTF::DefaultHash<std::pair<WTF::String,WTF::String>>,WTF::HashMap<std::pair<WTF::String,WTF::String>,WTF::String,WTF::DefaultHash<std::pair<WTF::String,WTF::String>>,WTF::HashTraits<std::pair<WTF::String,WTF::String>>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<std::pair<WTF::String,WTF::String>>,WTF::FastMalloc>::isEmptyBucket(v22, v23, v24))
    {
LABEL_25:
      v26 = *(v15 + 64);
      if (!v26)
      {
        goto LABEL_38;
      }

      v22 = &v26[3 * *(v26 - 1)];
    }

    else
    {
      v25 = 1;
      while (*v22 == -1 || (WTF::TupleHash<WTF::String,WTF::String>::equal<0ul>(v22, v56, v14) & 1) == 0)
      {
        v21 = (v21 + v25) & v20;
        v22 = (v19 + 24 * v21);
        ++v25;
        if (WTF::HashTable<std::pair<WTF::String,WTF::String>,WTF::KeyValuePair<std::pair<WTF::String,WTF::String>,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<std::pair<WTF::String,WTF::String>,WTF::String>>,WTF::DefaultHash<std::pair<WTF::String,WTF::String>>,WTF::HashMap<std::pair<WTF::String,WTF::String>,WTF::String,WTF::DefaultHash<std::pair<WTF::String,WTF::String>>,WTF::HashTraits<std::pair<WTF::String,WTF::String>>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<std::pair<WTF::String,WTF::String>>,WTF::FastMalloc>::isEmptyBucket(v22, v13, v14))
        {
          goto LABEL_25;
        }
      }

      v26 = *(v15 + 64);
      if (!v26)
      {
LABEL_28:
        if (v26 != v22)
        {
          v27 = v22[2];
          v22[2] = 0;
          v54 = v27;
          v28 = *(v15 + 64);
          if (!v28 || (v28 += 3 * *(v28 - 1), v28 != v22))
          {
            if (v28 != v22)
            {
              WTF::KeyValuePairHashTraits<WTF::HashTraits<std::pair<WTF::String,WTF::String>>,WTF::HashTraits<WTF::String>>::customDeleteBucket(v22, v13);
              v29 = *(v15 + 64);
              v30 = vadd_s32(*(v29 - 16), 0xFFFFFFFF00000001);
              *(v29 - 16) = v30;
              v31 = *(v29 - 4);
              if (6 * v30.i32[1] < v31 && v31 >= 9)
              {
                WTF::HashTable<std::pair<WTF::String,WTF::String>,WTF::KeyValuePair<std::pair<WTF::String,WTF::String>,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<std::pair<WTF::String,WTF::String>,WTF::String>>,WTF::DefaultHash<std::pair<WTF::String,WTF::String>>,WTF::HashMap<std::pair<WTF::String,WTF::String>,WTF::String,WTF::DefaultHash<std::pair<WTF::String,WTF::String>>,WTF::HashTraits<std::pair<WTF::String,WTF::String>>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<std::pair<WTF::String,WTF::String>>,WTF::FastMalloc>::rehash((v15 + 64), v31 >> 1);
              }
            }
          }

LABEL_39:
          v33 = v56[1];
          v56[1] = 0;
          if (v33 && atomic_fetch_add_explicit(v33, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v33, v13);
          }

          v34 = v56[0];
          v56[0] = 0;
          if (v34 && atomic_fetch_add_explicit(v34, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v34, v13);
          }

          if (!v54 || !*(v54 + 1))
          {
            v40 = *a4;
            *a4 = 0;
            (*(*v40 + 16))(v40);
            (*(*v40 + 8))(v40);
LABEL_63:
            result = v54;
            v54 = 0;
            if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              result = WTF::StringImpl::destroy(result, v39);
            }

            goto LABEL_66;
          }

          v35 = WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WebKit::BackgroundFetchStoreImpl::FetchInformation>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WebKit::BackgroundFetchStoreImpl::FetchInformation>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WebKit::BackgroundFetchStoreImpl::FetchInformation,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WebKit::BackgroundFetchStoreImpl::FetchInformation>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WTF::String,WebKit::BackgroundFetchStoreImpl::FetchInformation,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WebKit::BackgroundFetchStoreImpl::FetchInformation>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::String>>,(WTF::ShouldValidateKey)1,WTF::String>((a1 + 48), &v54, v14);
          v36 = *(a1 + 48);
          if (v36)
          {
            v37 = (v36 + 88 * *(v36 - 4));
            if (v37 == v35)
            {
              goto LABEL_56;
            }
          }

          else
          {
            if (!v35)
            {
              goto LABEL_56;
            }

            v37 = 0;
          }

          if (v37 != v35)
          {
            WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WebKit::BackgroundFetchStoreImpl::FetchInformation>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WebKit::BackgroundFetchStoreImpl::FetchInformation>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WebKit::BackgroundFetchStoreImpl::FetchInformation,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WebKit::BackgroundFetchStoreImpl::FetchInformation>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::remove((a1 + 48), v35);
          }

LABEL_56:
          ++*(a1 + 16);
          v41 = v54;
          if (v54)
          {
            atomic_fetch_add_explicit(v54, 2u, memory_order_relaxed);
          }

          v42 = *a4;
          *a4 = 0;
          v43 = WTF::fastMalloc(0x20);
          v44 = &unk_1F11096E0;
          *v43 = &unk_1F11096E0;
          *(v43 + 1) = a1;
          *(v43 + 2) = v41;
          *(v43 + 3) = v42;
          v45 = *(a1 + 32);
          if (v45)
          {
            WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::GPUConnectionToWebProcess>(v45, *(a1 + 24), &v58);
            v49 = v58;
            if (v58)
            {
              WTF::String::isolatedCopy();
              v56[1] = v43;
              v50 = WTF::fastMalloc(0x18);
              *v50 = &unk_1F1109708;
              *(v50 + 8) = *v56;
              v56[0] = 0;
              v56[1] = 0;
              v57 = v50;
              WebKit::NetworkStorageManager::dispatchTaskToBackgroundFetchManager(v49, &v59, &v57);
              v51 = v57;
              v57 = 0;
              if (v51)
              {
                (*(*v51 + 8))(v51);
              }

              v52 = v56[1];
              v56[1] = 0;
              if (v52)
              {
                (*(*v52 + 8))(v52);
              }

              v53 = v56[0];
              v56[0] = 0;
              if (v53 && atomic_fetch_add_explicit(v53, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v53, v39);
              }

              goto LABEL_61;
            }

            v44 = *v43;
          }

          else
          {
            v58 = 0;
          }

          (v44)[2](v43);
          (*(*v43 + 8))(v43);
LABEL_61:
          v46 = v58;
          v58 = 0;
          if (v46)
          {
            WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)2>,(WTF::DestructionThread)2>::deref((v46 + 8));
          }

          goto LABEL_63;
        }

LABEL_38:
        v54 = 0;
        goto LABEL_39;
      }
    }

    v26 += 3 * *(v26 - 1);
    goto LABEL_28;
  }

  v38 = *a4;
  *a4 = 0;
  (*(*v38 + 16))(v38);
  result = (*(*v38 + 8))(v38);
LABEL_66:
  if (!v64)
  {
    v47 = v63;
    v63 = 0;
    if (v47 && atomic_fetch_add_explicit(v47, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v47, v39);
    }

    result = v62;
    v62 = 0;
    if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      result = WTF::StringImpl::destroy(result, v39);
    }
  }

  v64 = -1;
  if (!v61)
  {
    v48 = v60;
    v60 = 0;
    if (v48 && atomic_fetch_add_explicit(v48, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v48, v39);
    }

    result = v59;
    v59 = 0;
    if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      result = WTF::StringImpl::destroy(result, v39);
    }
  }

LABEL_4:
  v9 = v55;
  v55 = 0;
  if (v9)
  {
    return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)2>,(WTF::DestructionThread)2>::deref((v9 + 8));
  }

  return result;
}

WTF::StringImpl *WebKit::BackgroundFetchStoreImpl::clearAllFetches(uint64_t a1, const WTF::StringImpl **a2, uint64_t *a3)
{
  v74 = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 32);
  if (!v5)
  {
    v62 = 0;
LABEL_3:
    v6 = *a3;
    *a3 = 0;
    (*(*v6 + 16))(v6);
    result = (*(*v6 + 8))(v6);
    goto LABEL_4;
  }

  WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::GPUConnectionToWebProcess>(v5, *(a1 + 24), &v62);
  if (!v62)
  {
    goto LABEL_3;
  }

  WebCore::ServiceWorkerRegistrationKey::clientOrigin(&v68, a2);
  v10 = WTF::HashTable<WebCore::ClientOrigin,WTF::KeyValuePair<WebCore::ClientOrigin,WebKit::BackgroundFetchStoreImpl::PerClientOriginFetches>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ClientOrigin,WebKit::BackgroundFetchStoreImpl::PerClientOriginFetches>>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashMap<WebCore::ClientOrigin,WebKit::BackgroundFetchStoreImpl::PerClientOriginFetches,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::HashTraits<WebKit::BackgroundFetchStoreImpl::PerClientOriginFetches>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ClientOrigin>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WebCore::ClientOrigin,WebKit::BackgroundFetchStoreImpl::PerClientOriginFetches,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::HashTraits<WebKit::BackgroundFetchStoreImpl::PerClientOriginFetches>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WebCore::ClientOrigin>>,(WTF::ShouldValidateKey)1,WebCore::ClientOrigin>((a1 + 40), &v68);
  v13 = *(a1 + 40);
  if (v13)
  {
    v13 += 88 * *(v13 - 4);
  }

  if (v13 == v10)
  {
    v29 = *a3;
    *a3 = 0;
    (*(*v29 + 16))(v29);
    result = (*(*v29 + 8))(v29);
    goto LABEL_63;
  }

  v60 = 0;
  v61 = 0;
  v15 = (v10 + 64);
  v14 = *(v10 + 64);
  if (!v14)
  {
    goto LABEL_55;
  }

  v16 = *(v14 - 4);
  if (!v16)
  {
    goto LABEL_35;
  }

  v17 = 0;
  v18 = (v14 + 24 * v16 - 8);
  do
  {
    if ((WTF::HashTable<std::pair<WTF::String,WTF::String>,WTF::KeyValuePair<std::pair<WTF::String,WTF::String>,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<std::pair<WTF::String,WTF::String>,WTF::String>>,WTF::DefaultHash<std::pair<WTF::String,WTF::String>>,WTF::HashMap<std::pair<WTF::String,WTF::String>,WTF::String,WTF::DefaultHash<std::pair<WTF::String,WTF::String>>,WTF::HashTraits<std::pair<WTF::String,WTF::String>>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<std::pair<WTF::String,WTF::String>>,WTF::FastMalloc>::isEmptyBucket(v18 - 2, v11, v12) & 1) == 0)
    {
      v19 = *(v18 - 2);
      if (v19 != -1)
      {
        if (WTF::equal(v19, a2[4], v12))
        {
          v20 = HIDWORD(v61);
          if (HIDWORD(v61) == v61)
          {
            WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::String&>(&v60, v18);
          }

          else
          {
            v21 = v60;
            v22 = *v18;
            if (*v18)
            {
              atomic_fetch_add_explicit(v22, 2u, memory_order_relaxed);
            }

            v23 = HIDWORD(v61);
            *(v21 + 8 * v20) = v22;
            HIDWORD(v61) = v23 + 1;
          }

          v24 = WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WebKit::BackgroundFetchStoreImpl::FetchInformation>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WebKit::BackgroundFetchStoreImpl::FetchInformation>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WebKit::BackgroundFetchStoreImpl::FetchInformation,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WebKit::BackgroundFetchStoreImpl::FetchInformation>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WTF::String,WebKit::BackgroundFetchStoreImpl::FetchInformation,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WebKit::BackgroundFetchStoreImpl::FetchInformation>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::String>>,(WTF::ShouldValidateKey)1,WTF::String>((a1 + 48), v18, v12);
          v25 = v24;
          v26 = *(a1 + 48);
          if (v26)
          {
            v27 = (v26 + 88 * *(v26 - 4));
            if (v27 == v24)
            {
              goto LABEL_29;
            }
          }

          else
          {
            if (!v24)
            {
LABEL_29:
              WTF::KeyValuePairHashTraits<WTF::HashTraits<std::pair<WTF::String,WTF::String>>,WTF::HashTraits<WTF::String>>::customDeleteBucket(v18 - 2, v25);
              ++v17;
              goto LABEL_30;
            }

            v27 = 0;
          }

          if (v27 != v24)
          {
            WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WebKit::BackgroundFetchStoreImpl::FetchInformation>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WebKit::BackgroundFetchStoreImpl::FetchInformation>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WebKit::BackgroundFetchStoreImpl::FetchInformation,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WebKit::BackgroundFetchStoreImpl::FetchInformation>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::remove((a1 + 48), v24);
          }

          goto LABEL_29;
        }
      }
    }

LABEL_30:
    v18 -= 3;
    --v16;
  }

  while (v16);
  v14 = *v15;
  if (v17)
  {
    v28 = *(v14 - 12) - v17;
    *(v14 - 16) += v17;
    *(v14 - 12) = v28;
    goto LABEL_35;
  }

  if (v14)
  {
LABEL_35:
    v31 = *(v14 - 12);
    v32 = *(v14 - 4);
    if (6 * v31 >= v32 || v32 < 9)
    {
      goto LABEL_55;
    }

    if (v31 <= 1)
    {
      v34 = 1;
      goto LABEL_44;
    }

    v35 = __clz(v31 - 1);
    if (!v35)
    {
      __break(1u);
    }

    v34 = (1 << -v35);
    if (v31 > 0x400)
    {
      if (v34 <= 2 * v31)
      {
LABEL_45:
        LODWORD(v34) = 2 * v34;
      }
    }

    else
    {
LABEL_44:
      if (3 * v34 <= 4 * v31)
      {
        goto LABEL_45;
      }
    }

    if (v34 > 0x400)
    {
      v36 = 0.416666667;
    }

    else
    {
      v36 = 0.604166667;
    }

    if (v34 * v36 <= v31)
    {
      LODWORD(v34) = 2 * v34;
    }

    if (v34 <= 8)
    {
      v37 = 8;
    }

    else
    {
      v37 = v34;
    }

    WTF::HashTable<std::pair<WTF::String,WTF::String>,WTF::KeyValuePair<std::pair<WTF::String,WTF::String>,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<std::pair<WTF::String,WTF::String>,WTF::String>>,WTF::DefaultHash<std::pair<WTF::String,WTF::String>>,WTF::HashMap<std::pair<WTF::String,WTF::String>,WTF::String,WTF::DefaultHash<std::pair<WTF::String,WTF::String>>,WTF::HashTraits<std::pair<WTF::String,WTF::String>>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<std::pair<WTF::String,WTF::String>>,WTF::FastMalloc>::rehash(v15, v37);
  }

LABEL_55:
  ++*(a1 + 16);
  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(&v57, &v60);
  v38 = *a3;
  *a3 = 0;
  v59 = v38;
  v39 = WTF::fastMalloc(0x28);
  v40 = &unk_1F1109758;
  *v39 = &unk_1F1109758;
  v39[1] = a1;
  v41 = v57;
  v57 = 0;
  v39[2] = v41;
  v39[3] = v58;
  v42 = v59;
  v58 = 0;
  v59 = 0;
  v39[4] = v42;
  v43 = *(a1 + 32);
  if (!v43)
  {
    v67 = 0;
    goto LABEL_57;
  }

  WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::GPUConnectionToWebProcess>(v43, *(a1 + 24), &v67);
  v50 = v67;
  if (v67)
  {
    v63 = 0;
    v64 = 0;
    _ZN3WTF6MapperIZNS_21CrossThreadCopierBaseILb0ELb0ENS_6VectorINS_6StringELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEE4copyERKS6_EUlRT_E_S6_S9_vE3mapERS6_S9_RKSC_(&v63, &v60);
    v65 = v39;
    v51 = WTF::fastMalloc(0x20);
    *v51 = &unk_1F1109780;
    v51[1] = v63;
    v52 = v64;
    v63 = 0;
    v64 = 0;
    v51[2] = v52;
    v53 = v65;
    v65 = 0;
    v66 = v51;
    v51[3] = v53;
    WebKit::NetworkStorageManager::dispatchTaskToBackgroundFetchManager(v50, &v68, &v66);
    v55 = v66;
    v66 = 0;
    if (v55)
    {
      (*(*v55 + 8))(v55);
    }

    v56 = v65;
    v65 = 0;
    if (v56)
    {
      (*(*v56 + 8))(v56);
    }

    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v63, v54);
  }

  else
  {
    v40 = *v39;
LABEL_57:
    v40[2](v39);
    (*(*v39 + 8))(v39);
  }

  v45 = v67;
  v67 = 0;
  if (v45)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)2>,(WTF::DestructionThread)2>::deref((v45 + 8));
  }

  v46 = v59;
  v59 = 0;
  if (v46)
  {
    (*(*v46 + 8))(v46);
  }

  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v57, v44);
  result = WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v60, v47);
LABEL_63:
  if (!v73)
  {
    v48 = v72;
    v72 = 0;
    if (v48 && atomic_fetch_add_explicit(v48, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v48, v30);
    }

    result = v71;
    v71 = 0;
    if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      result = WTF::StringImpl::destroy(result, v30);
    }
  }

  v73 = -1;
  if (!v70)
  {
    v49 = v69;
    v69 = 0;
    if (v49 && atomic_fetch_add_explicit(v49, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v49, v30);
    }

    result = v68;
    v68 = 0;
    if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      result = WTF::StringImpl::destroy(result, v30);
    }
  }

LABEL_4:
  v8 = v62;
  v62 = 0;
  if (v8)
  {
    return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)2>,(WTF::DestructionThread)2>::deref((v8 + 8));
  }

  return result;
}

WTF::StringImpl *WebKit::BackgroundFetchStoreImpl::storeFetch(uint64_t a1, __int128 *a2, atomic_uint **a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8, uint64_t *a9)
{
  v106 = *MEMORY[0x1E69E9840];
  v10 = *(a1 + 32);
  if (!v10)
  {
    v76 = 0;
LABEL_3:
    v11 = *a9;
    *a9 = 0;
    (*(*v11 + 16))(v11, 2);
    result = (*(*v11 + 8))(v11);
    goto LABEL_4;
  }

  WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::GPUConnectionToWebProcess>(v10, *(a1 + 24), &v76);
  if (!v76)
  {
    goto LABEL_3;
  }

  WebCore::ServiceWorkerRegistrationKey::clientOrigin(&v100, a2);
  v21 = WTF::HashTable<WebCore::ClientOrigin,WTF::KeyValuePair<WebCore::ClientOrigin,WebKit::BackgroundFetchStoreImpl::PerClientOriginFetches>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ClientOrigin,WebKit::BackgroundFetchStoreImpl::PerClientOriginFetches>>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashMap<WebCore::ClientOrigin,WebKit::BackgroundFetchStoreImpl::PerClientOriginFetches,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::HashTraits<WebKit::BackgroundFetchStoreImpl::PerClientOriginFetches>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ClientOrigin>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WebCore::ClientOrigin,WebKit::BackgroundFetchStoreImpl::PerClientOriginFetches,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::HashTraits<WebKit::BackgroundFetchStoreImpl::PerClientOriginFetches>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WebCore::ClientOrigin>>,(WTF::ShouldValidateKey)1,WebCore::ClientOrigin>((a1 + 40), &v100);
  v22 = *(a1 + 40);
  if (v22)
  {
    v22 += 88 * *(v22 - 4);
  }

  if (v22 != v21)
  {
    v23 = *(a2 + 4);
    if (v23)
    {
      atomic_fetch_add_explicit(v23, 2u, memory_order_relaxed);
    }

    v83 = v23;
    v24 = *a3;
    if (*a3)
    {
      atomic_fetch_add_explicit(v24, 2u, memory_order_relaxed);
    }

    *&v84 = v24;
    WTF::HashMap<std::pair<WTF::String,WTF::String>,WTF::String,WTF::DefaultHash<std::pair<WTF::String,WTF::String>>,WTF::HashTraits<std::pair<WTF::String,WTF::String>>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<std::pair<WTF::String,WTF::String>,WTF::String,WTF::DefaultHash<std::pair<WTF::String,WTF::String>>,WTF::HashTraits<std::pair<WTF::String,WTF::String>>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<std::pair<WTF::String,WTF::String>>>,std::pair<WTF::String,WTF::String>>(&v75, (v21 + 64), &v83);
    v26 = v84;
    *&v84 = 0;
    if (v26 && atomic_fetch_add_explicit(v26, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v26, v25);
    }

    v27 = v83;
    v83 = 0;
    if (v27 && atomic_fetch_add_explicit(v27, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      v27 = WTF::StringImpl::destroy(v27, v25);
    }

    if (v75 && *(v75 + 1))
    {
      v28 = 0;
    }

    else
    {
      WebKit::BackgroundFetchStoreManager::createNewStorageIdentifier(v27, &v83);
      v32 = v83;
      v83 = 0;
      v33 = v75;
      v75 = v32;
      if (v33)
      {
        if (atomic_fetch_add_explicit(v33, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v33, v31);
        }

        v34 = v83;
        v83 = 0;
        if (v34 && atomic_fetch_add_explicit(v34, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v34, v31);
        }
      }

      v28 = 1;
    }

    ++*(a1 + 16);
    v83 = a1;
    LOBYTE(v84) = 0;
    v86 = -1;
    v35 = v102;
    if (v102)
    {
      if (v102 == 255)
      {
LABEL_39:
        LOBYTE(v87) = 0;
        v89 = -1;
        v38 = v105;
        if (v105)
        {
          if (v105 == 255)
          {
LABEL_46:
            LOBYTE(v90) = 0;
            v92 = -1;
            LODWORD(v41) = *(a2 + 24);
            if (*(a2 + 24))
            {
              if (v41 == 255)
              {
LABEL_53:
                v43 = *(a2 + 4);
                if (v43)
                {
                  atomic_fetch_add_explicit(v43, 2u, memory_order_relaxed);
                }

                v93 = v43;
                v44 = *(a2 + 56);
                v94 = *(a2 + 40);
                v95 = v44;
                v45 = *a3;
                if (*a3)
                {
                  atomic_fetch_add_explicit(v45, 2u, memory_order_relaxed);
                }

                v46 = v35;
                v96 = v45;
                v47 = v75;
                if (v75)
                {
                  atomic_fetch_add_explicit(v75, 2u, memory_order_relaxed);
                }

                v97 = v47;
                v98 = v28;
                v48 = *a9;
                *a9 = 0;
                v99 = v48;
                v49 = WTF::fastMalloc(0xB8);
                v50 = v49;
                *v49 = &unk_1F11097D0;
                *(v49 + 8) = a1;
                v83 = 0;
                *(v49 + 16) = 0;
                *(v49 + 40) = -1;
                if (v46)
                {
                  if (v46 == 255)
                  {
LABEL_62:
                    *(v49 + 48) = 0;
                    *(v49 + 72) = -1;
                    if (v38)
                    {
                      if (v38 == 255)
                      {
LABEL_65:
                        mpark::detail::move_assignment<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::move_assignment((v49 + 80), &v90);
                        v53 = v93;
                        if (v93)
                        {
                          atomic_fetch_add_explicit(v93, 2u, memory_order_relaxed);
                        }

                        *(v50 + 112) = v53;
                        v54 = v94;
                        *(v50 + 136) = v95;
                        *(v50 + 120) = v54;
                        v55 = v96;
                        if (v96)
                        {
                          atomic_fetch_add_explicit(v96, 2u, memory_order_relaxed);
                        }

                        *(v50 + 152) = v55;
                        *(v50 + 160) = v97;
                        *(v50 + 168) = v98;
                        v56 = v99;
                        v97 = 0;
                        v99 = 0;
                        *(v50 + 176) = v56;
                        v57 = *(a1 + 32);
                        if (v57)
                        {
                          WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::GPUConnectionToWebProcess>(v57, *(a1 + 24), &v82);
                          v62 = v82;
                          if (v82)
                          {
                            WTF::String::isolatedCopy();
                            *v78 = a4;
                            *&v78[8] = a5;
                            *&v78[16] = a6;
                            v78[24] = a7;
                            v63 = *a8;
                            v64 = *(a8 + 8);
                            *a8 = 0u;
                            v79 = v63;
                            *&v80 = v64;
                            *(&v80 + 1) = v50;
                            v65 = WTF::fastMalloc(0x48);
                            *v65 = &unk_1F11097F8;
                            *(v65 + 8) = v77;
                            v66 = *v78;
                            *(v65 + 25) = *&v78[9];
                            *(v65 + 16) = v66;
                            v67 = v79;
                            v77 = 0;
                            v79 = 0;
                            *(v65 + 48) = v67;
                            v68 = v80;
                            v80 = 0uLL;
                            *(v65 + 56) = v68;
                            v81 = v65;
                            WebKit::NetworkStorageManager::dispatchTaskToBackgroundFetchManager(v62, &v100, &v81);
                            v69 = v81;
                            v81 = 0;
                            if (v69)
                            {
                              (*(*v69 + 8))(v69);
                            }

                            v70 = *(&v80 + 1);
                            *(&v80 + 1) = 0;
                            if (v70)
                            {
                              (*(*v70 + 8))(v70);
                            }

                            v71 = v79;
                            if (v79)
                            {
                              v79 = 0;
                              LODWORD(v80) = 0;
                              WTF::fastFree(v71, v58);
                            }

                            v72 = v77;
                            v77 = 0;
                            if (v72 && atomic_fetch_add_explicit(v72, 0xFFFFFFFE, memory_order_relaxed) == 2)
                            {
                              WTF::StringImpl::destroy(v72, v58);
                            }

                            goto LABEL_72;
                          }
                        }

                        else
                        {
                          v82 = 0;
                        }

                        (*(*v50 + 16))(v50, 2);
                        (*(*v50 + 8))(v50);
LABEL_72:
                        v59 = v82;
                        v82 = 0;
                        if (v59)
                        {
                          WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)2>,(WTF::DestructionThread)2>::deref((v59 + 8));
                        }

                        WebKit::BackgroundFetchStoreImpl::storeFetch(WebCore::ServiceWorkerRegistrationKey const&,WTF::String const&,unsigned long long,unsigned long long,std::optional<unsigned long>,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WTF::CompletionHandler<void ()(WebCore::BackgroundFetchStore::StoreResult)> &&)::$_0::~$_0(&v83, v58);
                        result = v75;
                        v75 = 0;
                        if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
                        {
                          result = WTF::StringImpl::destroy(result, v30);
                        }

                        goto LABEL_77;
                      }

                      *(v49 + 48) = v87;
                    }

                    else
                    {
                      *(v49 + 48) = v87;
                      v52 = *(&v87 + 1);
                      v87 = 0uLL;
                      *(v49 + 56) = v52;
                      *(v49 + 64) = v73;
                    }

                    *(v49 + 72) = v38;
                    goto LABEL_65;
                  }

                  *(v49 + 16) = v84;
                }

                else
                {
                  *(v49 + 16) = v84;
                  v51 = *(&v84 + 1);
                  v84 = 0uLL;
                  *(v49 + 24) = v51;
                  *(v49 + 32) = v74;
                }

                *(v49 + 40) = v46;
                goto LABEL_62;
              }

              v90 = *a2;
            }

            else
            {
              v42 = *a2;
              if (*a2)
              {
                atomic_fetch_add_explicit(v42, 2u, memory_order_relaxed);
              }

              *&v90 = v42;
              v41 = *(a2 + 1);
              if (v41)
              {
                atomic_fetch_add_explicit(v41, 2u, memory_order_relaxed);
              }

              *(&v90 + 1) = v41;
              v91 = *(a2 + 4);
              LOBYTE(v41) = *(a2 + 24);
            }

            v92 = v41;
            goto LABEL_53;
          }

          v87 = v103;
        }

        else
        {
          v39 = v103;
          if (v103)
          {
            atomic_fetch_add_explicit(v103, 2u, memory_order_relaxed);
          }

          *&v87 = v39;
          v40 = *(&v103 + 1);
          if (*(&v103 + 1))
          {
            atomic_fetch_add_explicit(*(&v103 + 1), 2u, memory_order_relaxed);
          }

          *(&v87 + 1) = v40;
          v73 = v104;
          v88 = v104;
          v38 = v105;
        }

        v89 = v38;
        goto LABEL_46;
      }

      v84 = v100;
    }

    else
    {
      v36 = v100;
      if (v100)
      {
        atomic_fetch_add_explicit(v100, 2u, memory_order_relaxed);
      }

      *&v84 = v36;
      v37 = *(&v100 + 1);
      if (*(&v100 + 1))
      {
        atomic_fetch_add_explicit(*(&v100 + 1), 2u, memory_order_relaxed);
      }

      *(&v84 + 1) = v37;
      v74 = v101;
      v85 = v101;
      v35 = v102;
    }

    v86 = v35;
    goto LABEL_39;
  }

  v29 = *a9;
  *a9 = 0;
  (*(*v29 + 16))(v29, 2);
  result = (*(*v29 + 8))(v29);
LABEL_77:
  if (!v105)
  {
    v60 = *(&v103 + 1);
    *(&v103 + 1) = 0;
    if (v60 && atomic_fetch_add_explicit(v60, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v60, v30);
    }

    result = v103;
    *&v103 = 0;
    if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      result = WTF::StringImpl::destroy(result, v30);
    }
  }

  v105 = -1;
  if (!v102)
  {
    v61 = *(&v100 + 1);
    *(&v100 + 1) = 0;
    if (v61 && atomic_fetch_add_explicit(v61, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v61, v30);
    }

    result = v100;
    *&v100 = 0;
    if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      result = WTF::StringImpl::destroy(result, v30);
    }
  }

LABEL_4:
  v13 = v76;
  v76 = 0;
  if (v13)
  {
    return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)2>,(WTF::DestructionThread)2>::deref((v13 + 8));
  }

  return result;
}

uint64_t WebKit::BackgroundFetchStoreImpl::storeFetch(WebCore::ServiceWorkerRegistrationKey const&,WTF::String const&,unsigned long long,unsigned long long,std::optional<unsigned long>,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WTF::CompletionHandler<void ()(WebCore::BackgroundFetchStore::StoreResult)> &&)::$_0::~$_0(uint64_t a1, WTF::StringImpl *a2)
{
  v3 = *(a1 + 168);
  *(a1 + 168) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(a1 + 152);
  *(a1 + 152) = 0;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, a2);
  }

  v5 = *(a1 + 144);
  *(a1 + 144) = 0;
  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, a2);
  }

  v6 = *(a1 + 104);
  *(a1 + 104) = 0;
  if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v6, a2);
  }

  if (!*(a1 + 96))
  {
    v7 = *(a1 + 80);
    *(a1 + 80) = 0;
    if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v7, a2);
    }

    v8 = *(a1 + 72);
    *(a1 + 72) = 0;
    if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v8, a2);
    }
  }

  *(a1 + 96) = -1;
  if (!*(a1 + 64))
  {
    v9 = *(a1 + 48);
    *(a1 + 48) = 0;
    if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v9, a2);
    }

    v10 = *(a1 + 40);
    *(a1 + 40) = 0;
    if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v10, a2);
    }
  }

  *(a1 + 64) = -1;
  if (!*(a1 + 32))
  {
    v11 = *(a1 + 16);
    *(a1 + 16) = 0;
    if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v11, a2);
    }

    v12 = *(a1 + 8);
    *(a1 + 8) = 0;
    if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v12, a2);
    }
  }

  *(a1 + 32) = -1;
  v13 = *a1;
  *a1 = 0;
  if (v13)
  {
    if (v13[4] == 1)
    {
      (*(*v13 + 8))(v13);
    }

    else
    {
      --v13[4];
    }
  }

  return a1;
}

WTF::StringImpl *WebKit::BackgroundFetchStoreImpl::storeFetchResponseBodyChunk(uint64_t a1, WebCore::ServiceWorkerRegistrationKey *a2, atomic_uint **a3, WTF::StringImpl *a4, uint64_t a5, uint64_t *a6)
{
  v53 = *MEMORY[0x1E69E9840];
  v8 = *(a1 + 32);
  if (!v8)
  {
    v41 = 0;
LABEL_3:
    v9 = *a6;
    *a6 = 0;
    (*(*v9 + 16))(v9, 2);
    result = (*(*v9 + 8))(v9);
    goto LABEL_4;
  }

  WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::GPUConnectionToWebProcess>(v8, *(a1 + 24), &v41);
  if (!v41)
  {
    goto LABEL_3;
  }

  WebCore::ServiceWorkerRegistrationKey::clientOrigin(&v47, a2);
  v16 = WTF::HashTable<WebCore::ClientOrigin,WTF::KeyValuePair<WebCore::ClientOrigin,WebKit::BackgroundFetchStoreImpl::PerClientOriginFetches>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ClientOrigin,WebKit::BackgroundFetchStoreImpl::PerClientOriginFetches>>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashMap<WebCore::ClientOrigin,WebKit::BackgroundFetchStoreImpl::PerClientOriginFetches,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::HashTraits<WebKit::BackgroundFetchStoreImpl::PerClientOriginFetches>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ClientOrigin>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WebCore::ClientOrigin,WebKit::BackgroundFetchStoreImpl::PerClientOriginFetches,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::HashTraits<WebKit::BackgroundFetchStoreImpl::PerClientOriginFetches>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WebCore::ClientOrigin>>,(WTF::ShouldValidateKey)1,WebCore::ClientOrigin>((a1 + 40), &v47);
  v17 = *(a1 + 40);
  if (v17)
  {
    v17 += 88 * *(v17 - 4);
  }

  if (v17 != v16)
  {
    v18 = *(a2 + 4);
    if (v18)
    {
      atomic_fetch_add_explicit(v18, 2u, memory_order_relaxed);
    }

    v42 = v18;
    v19 = *a3;
    if (*a3)
    {
      atomic_fetch_add_explicit(v19, 2u, memory_order_relaxed);
    }

    v43 = v19;
    WTF::HashMap<std::pair<WTF::String,WTF::String>,WTF::String,WTF::DefaultHash<std::pair<WTF::String,WTF::String>>,WTF::HashTraits<std::pair<WTF::String,WTF::String>>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<std::pair<WTF::String,WTF::String>,WTF::String,WTF::DefaultHash<std::pair<WTF::String,WTF::String>>,WTF::HashTraits<std::pair<WTF::String,WTF::String>>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<std::pair<WTF::String,WTF::String>>>,std::pair<WTF::String,WTF::String>>(&v40, (v16 + 64), &v42);
    v21 = v43;
    v43 = 0;
    if (v21 && atomic_fetch_add_explicit(v21, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v21, v20);
    }

    v22 = v42;
    v42 = 0;
    if (v22 && atomic_fetch_add_explicit(v22, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v22, v20);
    }

    v23 = v40;
    if (!v40 || !*(v40 + 1))
    {
      v31 = *a6;
      *a6 = 0;
      (*(*v31 + 16))(v31, 2);
      (*(*v31 + 8))(v31);
LABEL_30:
      result = v40;
      v40 = 0;
      if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        result = WTF::StringImpl::destroy(result, v28);
      }

      goto LABEL_33;
    }

    ++*(a1 + 16);
    atomic_fetch_add_explicit(v23, 2u, memory_order_relaxed);
    v24 = *a6;
    *a6 = 0;
    v25 = WTF::fastMalloc(0x20);
    v26 = &unk_1F1109898;
    *v25 = &unk_1F1109898;
    v25[1] = a1;
    v25[2] = v23;
    v25[3] = v24;
    v27 = *(a1 + 32);
    if (v27)
    {
      WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::GPUConnectionToWebProcess>(v27, *(a1 + 24), &v46);
      v34 = v46;
      if (v46)
      {
        WTF::String::isolatedCopy();
        v43 = a4;
        *&v44 = a5;
        atomic_fetch_add((a5 + 8), 1u);
        *(&v44 + 1) = v25;
        v35 = WTF::fastMalloc(0x28);
        *v35 = &unk_1F11098C0;
        *(v35 + 8) = v42;
        *(v35 + 16) = v43;
        *(v35 + 24) = v44;
        v42 = 0;
        v44 = 0uLL;
        v45 = v35;
        WebKit::NetworkStorageManager::dispatchTaskToBackgroundFetchManager(v34, &v47, &v45);
        v36 = v45;
        v45 = 0;
        if (v36)
        {
          (*(*v36 + 8))(v36);
        }

        v37 = *(&v44 + 1);
        *(&v44 + 1) = 0;
        if (v37)
        {
          (*(*v37 + 8))(v37);
        }

        v38 = v44;
        *&v44 = 0;
        if (v38 && atomic_fetch_add(v38 + 2, 0xFFFFFFFF) == 1)
        {
          atomic_store(1u, v38 + 2);
          (*(*v38 + 8))(v38);
        }

        v39 = v42;
        v42 = 0;
        if (v39 && atomic_fetch_add_explicit(v39, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v39, v28);
        }

        goto LABEL_26;
      }

      v26 = *v25;
    }

    else
    {
      v46 = 0;
    }

    v26[2](v25, 2);
    (*(*v25 + 8))(v25);
LABEL_26:
    v29 = v46;
    v46 = 0;
    if (v29)
    {
      WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)2>,(WTF::DestructionThread)2>::deref((v29 + 8));
    }

    goto LABEL_30;
  }

  v30 = *a6;
  *a6 = 0;
  (*(*v30 + 16))(v30, 2);
  result = (*(*v30 + 8))(v30);
LABEL_33:
  if (!v52)
  {
    v32 = v51;
    v51 = 0;
    if (v32 && atomic_fetch_add_explicit(v32, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v32, v28);
    }

    result = v50;
    v50 = 0;
    if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      result = WTF::StringImpl::destroy(result, v28);
    }
  }

  v52 = -1;
  if (!v49)
  {
    v33 = v48;
    v48 = 0;
    if (v33 && atomic_fetch_add_explicit(v33, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v33, v28);
    }

    result = v47;
    v47 = 0;
    if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      result = WTF::StringImpl::destroy(result, v28);
    }
  }

LABEL_4:
  v11 = v41;
  v41 = 0;
  if (v11)
  {
    return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)2>,(WTF::DestructionThread)2>::deref((v11 + 8));
  }

  return result;
}

WTF::StringImpl *WebKit::BackgroundFetchStoreImpl::retrieveResponseBody(uint64_t *a1, WebCore::ServiceWorkerRegistrationKey *a2, atomic_uint **a3, WTF::StringImpl *a4, void *a5)
{
  v71 = *MEMORY[0x1E69E9840];
  v7 = a1[4];
  if (v7)
  {
    WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::GPUConnectionToWebProcess>(v7, a1[3], &v56);
    if (!v56)
    {
      goto LABEL_3;
    }

    WebCore::ServiceWorkerRegistrationKey::clientOrigin(&v57, a2);
    v21 = WTF::HashTable<WebCore::ClientOrigin,WTF::KeyValuePair<WebCore::ClientOrigin,WebKit::BackgroundFetchStoreImpl::PerClientOriginFetches>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ClientOrigin,WebKit::BackgroundFetchStoreImpl::PerClientOriginFetches>>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashMap<WebCore::ClientOrigin,WebKit::BackgroundFetchStoreImpl::PerClientOriginFetches,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::HashTraits<WebKit::BackgroundFetchStoreImpl::PerClientOriginFetches>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ClientOrigin>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WebCore::ClientOrigin,WebKit::BackgroundFetchStoreImpl::PerClientOriginFetches,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::HashTraits<WebKit::BackgroundFetchStoreImpl::PerClientOriginFetches>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WebCore::ClientOrigin>>,(WTF::ShouldValidateKey)1,WebCore::ClientOrigin>(a1 + 5, &v57);
    v22 = a1[5];
    if (v22)
    {
      v22 += 88 * *(v22 - 4);
    }

    if (v22 == v21)
    {
      v35 = *(MEMORY[0x1E69E26C8] + 8);
      if (v35)
      {
        if (v35 == 1)
        {
          v36 = MEMORY[0x1E696EB88];
          atomic_fetch_add_explicit(MEMORY[0x1E696EB88], 2u, memory_order_relaxed);
        }

        else
        {
          WTF::StringImpl::createWithoutCopyingNonEmpty();
          v36 = v62[0];
        }
      }

      else
      {
        v36 = 0;
      }

      v53 = 0;
      WTF::URL::invalidate(&v53);
      WTF::StringImpl::createWithoutCopyingNonEmpty();
      v37 = v62[0];
      if (v36)
      {
        atomic_fetch_add_explicit(v36, 2u, memory_order_relaxed);
      }

      v38 = v53;
      if (v53)
      {
        atomic_fetch_add_explicit(v53, 2u, memory_order_relaxed);
      }

      v39 = v54;
      v40 = v55;
      if (v37)
      {
        atomic_fetch_add_explicit(v37, 2u, memory_order_relaxed);
      }

      v62[0] = v36;
      v62[1] = v38;
      v63 = v39;
      v64 = v40;
      v65 = v37;
      v66 = 0;
      v67 = 1;
      v68 = 0;
      v69 = 1;
      v70 = 1;
      (*(**a5 + 16))(*a5, v62);
      std::experimental::fundamentals_v3::expected<WTF::RefPtr<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>,WebCore::ResourceError>::~expected(v62, v41);
      if (v37 && atomic_fetch_add_explicit(v37, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v37, v15);
      }

      result = v53;
      v53 = 0;
      if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        result = WTF::StringImpl::destroy(result, v15);
      }

      if (v36 && atomic_fetch_add_explicit(v36, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        result = v36;
LABEL_87:
        result = WTF::StringImpl::destroy(result, v15);
      }

LABEL_88:
      if (!v61)
      {
        v50 = v60;
        v60 = 0;
        if (v50 && atomic_fetch_add_explicit(v50, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v50, v15);
        }

        result = v59[1];
        v59[1] = 0;
        if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          result = WTF::StringImpl::destroy(result, v15);
        }
      }

      v61 = -1;
      if (!LOBYTE(v59[0]))
      {
        v51 = v58[0];
        v58[0] = 0;
        if (v51 && atomic_fetch_add_explicit(v51, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v51, v15);
        }

        result = v57;
        v57 = 0;
        if (result)
        {
          if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
LABEL_20:
            result = WTF::StringImpl::destroy(result, v15);
            goto LABEL_22;
          }
        }
      }

      goto LABEL_22;
    }

    v23 = *(a2 + 4);
    if (v23)
    {
      atomic_fetch_add_explicit(v23, 2u, memory_order_relaxed);
    }

    v62[0] = v23;
    v24 = *a3;
    if (*a3)
    {
      atomic_fetch_add_explicit(v24, 2u, memory_order_relaxed);
    }

    v62[1] = v24;
    WTF::HashMap<std::pair<WTF::String,WTF::String>,WTF::String,WTF::DefaultHash<std::pair<WTF::String,WTF::String>>,WTF::HashTraits<std::pair<WTF::String,WTF::String>>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<std::pair<WTF::String,WTF::String>,WTF::String,WTF::DefaultHash<std::pair<WTF::String,WTF::String>>,WTF::HashTraits<std::pair<WTF::String,WTF::String>>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<std::pair<WTF::String,WTF::String>>>,std::pair<WTF::String,WTF::String>>(&v52, (v21 + 64), v62);
    v26 = v62[1];
    v62[1] = 0;
    if (v26 && atomic_fetch_add_explicit(v26, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v26, v25);
    }

    v27 = v62[0];
    v62[0] = 0;
    if (v27 && atomic_fetch_add_explicit(v27, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v27, v25);
    }

    if (v52 && *(v52 + 1))
    {
      v28 = v56;
      WTF::String::isolatedCopy();
      v29 = *a5;
      *a5 = 0;
      v62[1] = a4;
      *&v63 = v29;
      v30 = WTF::fastMalloc(0x20);
      *v30 = &unk_1F1109960;
      *(v30 + 8) = *v62;
      v31 = v63;
      v62[0] = 0;
      *&v63 = 0;
      *(v30 + 24) = v31;
      v53 = v30;
      WebKit::NetworkStorageManager::dispatchTaskToBackgroundFetchManager(v28, &v57, &v53);
      v32 = v53;
      v53 = 0;
      if (v32)
      {
        (*(*v32 + 8))(v32);
      }

      v33 = v63;
      *&v63 = 0;
      if (v33)
      {
        (*(*v33 + 8))(v33);
      }

      v34 = v62[0];
      v62[0] = 0;
      if (v34 && atomic_fetch_add_explicit(v34, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        goto LABEL_84;
      }
    }

    else
    {
      v42 = *(MEMORY[0x1E69E26C8] + 8);
      if (v42)
      {
        if (v42 == 1)
        {
          v43 = MEMORY[0x1E696EB88];
          atomic_fetch_add_explicit(MEMORY[0x1E696EB88], 2u, memory_order_relaxed);
        }

        else
        {
          WTF::StringImpl::createWithoutCopyingNonEmpty();
          v43 = v62[0];
        }
      }

      else
      {
        v43 = 0;
      }

      v53 = 0;
      WTF::URL::invalidate(&v53);
      WTF::StringImpl::createWithoutCopyingNonEmpty();
      v44 = v62[0];
      if (v43)
      {
        atomic_fetch_add_explicit(v43, 2u, memory_order_relaxed);
      }

      v45 = v53;
      if (v53)
      {
        atomic_fetch_add_explicit(v53, 2u, memory_order_relaxed);
      }

      v46 = v54;
      v47 = v55;
      if (v44)
      {
        atomic_fetch_add_explicit(v44, 2u, memory_order_relaxed);
      }

      v62[0] = v43;
      v62[1] = v45;
      v63 = v46;
      v64 = v47;
      v65 = v44;
      v66 = 0;
      v67 = 1;
      v68 = 0;
      v69 = 1;
      v70 = 1;
      (*(**a5 + 16))(*a5, v62);
      std::experimental::fundamentals_v3::expected<WTF::RefPtr<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>,WebCore::ResourceError>::~expected(v62, v48);
      if (v44 && atomic_fetch_add_explicit(v44, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v44, v15);
      }

      v49 = v53;
      v53 = 0;
      if (v49 && atomic_fetch_add_explicit(v49, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v49, v15);
      }

      if (v43 && atomic_fetch_add_explicit(v43, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        v34 = v43;
LABEL_84:
        WTF::StringImpl::destroy(v34, v15);
      }
    }

    result = v52;
    v52 = 0;
    if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      goto LABEL_87;
    }

    goto LABEL_88;
  }

  v56 = 0;
LABEL_3:
  v8 = *(MEMORY[0x1E69E26C8] + 8);
  if (v8)
  {
    if (v8 == 1)
    {
      v9 = MEMORY[0x1E696EB88];
      atomic_fetch_add_explicit(MEMORY[0x1E696EB88], 2u, memory_order_relaxed);
    }

    else
    {
      WTF::StringImpl::createWithoutCopyingNonEmpty();
      v9 = v62[0];
    }
  }

  else
  {
    v9 = 0;
  }

  v57 = 0;
  WTF::URL::invalidate(&v57);
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v10 = v62[0];
  if (v9)
  {
    atomic_fetch_add_explicit(v9, 2u, memory_order_relaxed);
  }

  v11 = v57;
  if (v57)
  {
    atomic_fetch_add_explicit(v57, 2u, memory_order_relaxed);
  }

  v12 = *v58;
  v13 = *v59;
  if (v10)
  {
    atomic_fetch_add_explicit(v10, 2u, memory_order_relaxed);
  }

  v62[0] = v9;
  v62[1] = v11;
  v63 = v12;
  v64 = v13;
  v65 = v10;
  v66 = 0;
  v67 = 1;
  v68 = 0;
  v69 = 1;
  v70 = 1;
  (*(**a5 + 16))(*a5, v62);
  std::experimental::fundamentals_v3::expected<WTF::RefPtr<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>,WebCore::ResourceError>::~expected(v62, v14);
  if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v10, v15);
  }

  result = v57;
  v57 = 0;
  if (!result || atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) != 2)
  {
    if (!v9)
    {
      goto LABEL_22;
    }

    goto LABEL_18;
  }

  result = WTF::StringImpl::destroy(result, v15);
  if (v9)
  {
LABEL_18:
    if (atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) != 2)
    {
      goto LABEL_22;
    }

    result = v9;
    goto LABEL_20;
  }

LABEL_22:
  v17 = v56;
  v56 = 0;
  if (v17)
  {
    return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)2>,(WTF::DestructionThread)2>::deref((v17 + 8));
  }

  return result;
}

uint64_t std::experimental::fundamentals_v3::expected<WTF::RefPtr<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>,WebCore::ResourceError>::~expected(uint64_t a1, WTF::StringImpl *a2)
{
  if (*(a1 + 80) != 255)
  {
    if (*(a1 + 80))
    {
      v4 = *(a1 + 64);
      *(a1 + 64) = 0;
      if (v4)
      {
        CFRelease(v4);
      }

      v5 = *(a1 + 48);
      *(a1 + 48) = 0;
      if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v5, a2);
      }

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

    else
    {
      v3 = *a1;
      *a1 = 0;
      if (v3 && atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v3 + 2);
        (*(*v3 + 8))(v3);
      }
    }
  }

  *(a1 + 80) = -1;
  return a1;
}

uint64_t WebKit::BackgroundFetchStoreImpl::fetchInformationFromFilename(uint64_t a1, atomic_uint **a2, uint64_t *a3)
{
  ++*(a1 + 16);
  v4 = *a2;
  if (*a2)
  {
    atomic_fetch_add_explicit(v4, 2u, memory_order_relaxed);
  }

  v5 = *a3;
  *a3 = 0;
  v6 = WTF::fastMalloc(0x20);
  *v6 = &unk_1F1109A00;
  v6[1] = a1;
  if (v4)
  {
    atomic_fetch_add_explicit(v4, 2u, memory_order_relaxed);
  }

  v6[2] = v4;
  v6[3] = v5;
  v9 = v6;
  WebKit::BackgroundFetchStoreImpl::loadAllFetches(a1, &v9);
  result = v9;
  if (v9)
  {
    result = (*(*v9 + 8))(v9);
    if (!v4)
    {
      return result;
    }
  }

  else if (!v4)
  {
    return result;
  }

  if (atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {

    return WTF::StringImpl::destroy(v4, v7);
  }

  return result;
}

_DWORD *WebKit::BackgroundFetchStoreImpl::loadAllFetches(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 56);
  if (v2 && (v3 = *(v2 + 8)) != 0)
  {
    ++*(v3 + 8);
    ++*(a1 + 16);
    v5 = *a2;
    *a2 = 0;
    v6 = WTF::fastMalloc(0x18);
    *v6 = &unk_1F1109A28;
    v6[1] = a1;
    v6[2] = v5;
    v10 = v6;
    WebCore::SWServer::getAllOrigins();
    if (v10)
    {
      (*(*v10 + 8))(v10);
    }

    return WTF::RefCounted<WebCore::SWServer>::deref((v3 + 8));
  }

  else
  {
    v8 = *a2;
    *a2 = 0;
    (*(*v8 + 16))(v8);
    v9 = *(*v8 + 8);

    return v9(v8);
  }
}

uint64_t WebKit::BackgroundFetchStoreImpl::getAllBackgroundFetchIdentifiers(uint64_t a1, uint64_t *a2)
{
  ++*(a1 + 16);
  v3 = *a2;
  *a2 = 0;
  v4 = WTF::fastMalloc(0x18);
  *v4 = &unk_1F1109A78;
  v4[1] = a1;
  v4[2] = v3;
  v7 = v4;
  WebKit::BackgroundFetchStoreImpl::loadAllFetches(a1, &v7);
  result = v7;
  if (v7)
  {
    v6 = *(*v7 + 8);

    return v6();
  }

  return result;
}

_DWORD *WebKit::BackgroundFetchStoreImpl::getBackgroundFetchState(uint64_t a1, atomic_uint **a2, uint64_t *a3)
{
  v6 = *(a1 + 56);
  if (v6)
  {
    v7 = *(v6 + 8);
    if (v7)
    {
      ++*(v7 + 2);
    }
  }

  else
  {
    v7 = 0;
  }

  Engine = WebCore::SWServer::backgroundFetchEngine(v7);
  WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(Engine, Engine);
  v9 = *Engine;
  atomic_fetch_add(v9, 1u);
  v10 = *a3;
  *a3 = 0;
  v11 = WTF::fastMalloc(0x18);
  *v11 = &unk_1F1109AA0;
  v11[1] = v9;
  v11[2] = v10;
  v13 = v11;
  WebKit::BackgroundFetchStoreImpl::fetchInformationFromFilename(a1, a2, &v13);
  result = v13;
  if (v13)
  {
    result = (*(*v13 + 8))(v13);
  }

  if (v7)
  {

    return WTF::RefCounted<WebCore::SWServer>::deref(v7 + 2);
  }

  return result;
}

_DWORD *WebKit::BackgroundFetchStoreImpl::abortBackgroundFetch(uint64_t a1, atomic_uint **a2, uint64_t *a3)
{
  v6 = *(a1 + 56);
  if (v6)
  {
    v7 = *(v6 + 8);
    if (v7)
    {
      ++*(v7 + 2);
    }
  }

  else
  {
    v7 = 0;
  }

  Engine = WebCore::SWServer::backgroundFetchEngine(v7);
  WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(Engine, Engine);
  v9 = *Engine;
  atomic_fetch_add(v9, 1u);
  v10 = *a3;
  *a3 = 0;
  v11 = WTF::fastMalloc(0x18);
  *v11 = &unk_1F1109AC8;
  v11[1] = v9;
  v11[2] = v10;
  v13 = v11;
  WebKit::BackgroundFetchStoreImpl::fetchInformationFromFilename(a1, a2, &v13);
  result = v13;
  if (v13)
  {
    result = (*(*v13 + 8))(v13);
  }

  if (v7)
  {

    return WTF::RefCounted<WebCore::SWServer>::deref(v7 + 2);
  }

  return result;
}

_DWORD *WebKit::BackgroundFetchStoreImpl::pauseBackgroundFetch(uint64_t a1, atomic_uint **a2, uint64_t *a3)
{
  v6 = *(a1 + 56);
  if (v6)
  {
    v7 = *(v6 + 8);
    if (v7)
    {
      ++*(v7 + 2);
    }
  }

  else
  {
    v7 = 0;
  }

  Engine = WebCore::SWServer::backgroundFetchEngine(v7);
  WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(Engine, Engine);
  v9 = *Engine;
  atomic_fetch_add(v9, 1u);
  v10 = *a3;
  *a3 = 0;
  v11 = WTF::fastMalloc(0x18);
  *v11 = &unk_1F1109AF0;
  v11[1] = v9;
  v11[2] = v10;
  v13 = v11;
  WebKit::BackgroundFetchStoreImpl::fetchInformationFromFilename(a1, a2, &v13);
  result = v13;
  if (v13)
  {
    result = (*(*v13 + 8))(v13);
  }

  if (v7)
  {

    return WTF::RefCounted<WebCore::SWServer>::deref(v7 + 2);
  }

  return result;
}

_DWORD *WebKit::BackgroundFetchStoreImpl::resumeBackgroundFetch(uint64_t a1, atomic_uint **a2, uint64_t *a3)
{
  v6 = *(a1 + 56);
  if (v6)
  {
    v7 = *(v6 + 8);
    if (v7)
    {
      ++*(v7 + 2);
    }
  }

  else
  {
    v7 = 0;
  }

  Engine = WebCore::SWServer::backgroundFetchEngine(v7);
  WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(Engine, Engine);
  v9 = *Engine;
  atomic_fetch_add(v9, 1u);
  v10 = *a3;
  *a3 = 0;
  v11 = WTF::fastMalloc(0x18);
  *v11 = &unk_1F1109B18;
  v11[1] = v9;
  v11[2] = v10;
  v13 = v11;
  WebKit::BackgroundFetchStoreImpl::fetchInformationFromFilename(a1, a2, &v13);
  result = v13;
  if (v13)
  {
    result = (*(*v13 + 8))(v13);
  }

  if (v7)
  {

    return WTF::RefCounted<WebCore::SWServer>::deref(v7 + 2);
  }

  return result;
}

_DWORD *WebKit::BackgroundFetchStoreImpl::clickBackgroundFetch(uint64_t a1, atomic_uint **a2, uint64_t *a3)
{
  v6 = *(a1 + 56);
  if (v6)
  {
    v7 = *(v6 + 8);
    if (v7)
    {
      ++*(v7 + 2);
    }
  }

  else
  {
    v7 = 0;
  }

  Engine = WebCore::SWServer::backgroundFetchEngine(v7);
  WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(Engine, Engine);
  v9 = *Engine;
  atomic_fetch_add(v9, 1u);
  v10 = *a3;
  *a3 = 0;
  v11 = WTF::fastMalloc(0x18);
  *v11 = &unk_1F1109B40;
  v11[1] = v9;
  v11[2] = v10;
  v13 = v11;
  WebKit::BackgroundFetchStoreImpl::fetchInformationFromFilename(a1, a2, &v13);
  result = v13;
  if (v13)
  {
    result = (*(*v13 + 8))(v13);
  }

  if (v7)
  {

    return WTF::RefCounted<WebCore::SWServer>::deref(v7 + 2);
  }

  return result;
}

_DWORD *WebKit::NetworkCache::SpeculativeLoad::deref(_DWORD *this)
{
  if (this[5] == 1)
  {
    return (*(*this + 24))();
  }

  --this[5];
  return this;
}

uint64_t std::optional<WebCore::ResourceRequest>::~optional(uint64_t a1, WTF::StringImpl *a2)
{
  if (*(a1 + 200) == 1)
  {
    v3 = *(a1 + 192);
    *(a1 + 192) = 0;
    if (v3)
    {
      CFRelease(v3);
    }

    v4 = *(a1 + 168);
    *(a1 + 168) = 0;
    if (v4)
    {
      WTF::RefCounted<WebCore::FormData>::deref(v4);
    }

    v5 = *(a1 + 160);
    *(a1 + 160) = 0;
    if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v5, a2);
    }

    v6 = *(a1 + 152);
    *(a1 + 152) = 0;
    if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v6, a2);
    }

    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(a1 + 128, a2);
    WTF::Vector<WebCore::HTTPHeaderMap::UncommonHeader,0ul,WTF::CrashOnOverflow,0ul,WTF::FastMalloc>::~Vector((a1 + 112), v7);
    WTF::Vector<WebCore::HTTPHeaderMap::CommonHeader,0ul,WTF::CrashOnOverflow,6ul,WTF::FastMalloc>::~Vector(a1 + 96, v8);
    v10 = *(a1 + 88);
    *(a1 + 88) = 0;
    if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v10, v9);
    }

    v11 = *(a1 + 40);
    *(a1 + 40) = 0;
    if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v11, v9);
    }

    v12 = *a1;
    *a1 = 0;
    if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v12, v9);
    }
  }

  return a1;
}

uint64_t WTF::HashTable<WebKit::NetworkCache::Key,WTF::KeyValuePair<WebKit::NetworkCache::Key,std::unique_ptr<WebKit::NetworkCache::SpeculativeLoadManager::ExpiringEntry>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebKit::NetworkCache::Key,std::unique_ptr<WebKit::NetworkCache::SpeculativeLoadManager::ExpiringEntry>>>,WTF::DefaultHash<WebKit::NetworkCache::Key>,WTF::HashMap<WebKit::NetworkCache::Key,std::unique_ptr<WebKit::NetworkCache::SpeculativeLoadManager::ExpiringEntry>,WTF::DefaultHash<WebKit::NetworkCache::Key>,WTF::HashTraits<WebKit::NetworkCache::Key>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkCache::SpeculativeLoadManager::ExpiringEntry>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebKit::NetworkCache::Key>,WTF::FastMalloc>::deallocateTable(uint64_t a1, WTF::StringImpl *a2)
{
  v3 = *(a1 - 4);
  if (v3)
  {
    v4 = (a1 + 72);
    do
    {
      if (*(v4 - 7) != -1)
      {
        std::unique_ptr<WebKit::NetworkCache::SpeculativeLoadManager::ExpiringEntry>::reset[abi:sn200100](v4, 0);
        v5 = *(v4 - 6);
        *(v4 - 6) = 0;
        if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v5, a2);
        }

        v6 = *(v4 - 7);
        *(v4 - 7) = 0;
        if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v6, a2);
        }

        v7 = *(v4 - 8);
        *(v4 - 8) = 0;
        if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v7, a2);
        }

        v8 = *(v4 - 9);
        *(v4 - 9) = 0;
        if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v8, a2);
        }
      }

      v4 += 10;
      --v3;
    }

    while (v3);
  }

  return WTF::fastFree((a1 - 16), a2);
}

uint64_t WTF::HashTable<WebKit::NetworkCache::Key,WTF::KeyValuePair<WebKit::NetworkCache::Key,std::unique_ptr<WebKit::NetworkCache::SpeculativeLoadManager::PreloadedEntry>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebKit::NetworkCache::Key,std::unique_ptr<WebKit::NetworkCache::SpeculativeLoadManager::PreloadedEntry>>>,WTF::DefaultHash<WebKit::NetworkCache::Key>,WTF::HashMap<WebKit::NetworkCache::Key,std::unique_ptr<WebKit::NetworkCache::SpeculativeLoadManager::PreloadedEntry>,WTF::DefaultHash<WebKit::NetworkCache::Key>,WTF::HashTraits<WebKit::NetworkCache::Key>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkCache::SpeculativeLoadManager::PreloadedEntry>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebKit::NetworkCache::Key>,WTF::FastMalloc>::deallocateTable(uint64_t a1, WTF::StringImpl *a2)
{
  v3 = *(a1 - 4);
  if (v3)
  {
    v4 = (a1 + 72);
    do
    {
      if (*(v4 - 7) != -1)
      {
        std::unique_ptr<WebKit::NetworkCache::SpeculativeLoadManager::PreloadedEntry>::reset[abi:sn200100](v4, 0);
        v5 = *(v4 - 6);
        *(v4 - 6) = 0;
        if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v5, a2);
        }

        v6 = *(v4 - 7);
        *(v4 - 7) = 0;
        if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v6, a2);
        }

        v7 = *(v4 - 8);
        *(v4 - 8) = 0;
        if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v7, a2);
        }

        v8 = *(v4 - 9);
        *(v4 - 9) = 0;
        if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v8, a2);
        }
      }

      v4 += 10;
      --v3;
    }

    while (v3);
  }

  return WTF::fastFree((a1 - 16), a2);
}

uint64_t WTF::HashTable<WebKit::NetworkCache::Key,WTF::KeyValuePair<WebKit::NetworkCache::Key,std::unique_ptr<WTF::Vector<WTF::Function<void ()(std::unique_ptr<WebKit::NetworkCache::Entry>)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebKit::NetworkCache::Key,std::unique_ptr<WTF::Vector<WTF::Function<void ()(std::unique_ptr<WebKit::NetworkCache::Entry>)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>>,WTF::DefaultHash<WebKit::NetworkCache::Key>,WTF::HashMap<WebKit::NetworkCache::Key,std::unique_ptr<WTF::Vector<WTF::Function<void ()(std::unique_ptr<WebKit::NetworkCache::Entry>)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::DefaultHash<WebKit::NetworkCache::Key>,WTF::HashTraits<WebKit::NetworkCache::Key>,WTF::HashTraits<std::unique_ptr<WTF::Vector<WTF::Function<void ()(std::unique_ptr<WebKit::NetworkCache::Entry>)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebKit::NetworkCache::Key>,WTF::FastMalloc>::deallocateTable(uint64_t a1, WTF::StringImpl *a2)
{
  v3 = *(a1 - 4);
  if (v3)
  {
    v4 = (a1 + 72);
    do
    {
      if (*(v4 - 7) != -1)
      {
        std::unique_ptr<WTF::Vector<WTF::Function<void ()(std::unique_ptr<WebKit::NetworkCache::Entry>)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>::reset[abi:sn200100](v4, 0);
        v5 = *(v4 - 6);
        *(v4 - 6) = 0;
        if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v5, a2);
        }

        v6 = *(v4 - 7);
        *(v4 - 7) = 0;
        if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v6, a2);
        }

        v7 = *(v4 - 8);
        *(v4 - 8) = 0;
        if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v7, a2);
        }

        v8 = *(v4 - 9);
        *(v4 - 9) = 0;
        if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v8, a2);
        }
      }

      v4 += 10;
      --v3;
    }

    while (v3);
  }

  return WTF::fastFree((a1 - 16), a2);
}

uint64_t WTF::HashTable<WebKit::NetworkCache::Key,WTF::KeyValuePair<WebKit::NetworkCache::Key,WTF::RefPtr<WebKit::NetworkCache::SpeculativeLoad,WTF::RawPtrTraits<WebKit::NetworkCache::SpeculativeLoad>,WTF::DefaultRefDerefTraits<WebKit::NetworkCache::SpeculativeLoad>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebKit::NetworkCache::Key,WTF::RefPtr<WebKit::NetworkCache::SpeculativeLoad,WTF::RawPtrTraits<WebKit::NetworkCache::SpeculativeLoad>,WTF::DefaultRefDerefTraits<WebKit::NetworkCache::SpeculativeLoad>>>>,WTF::DefaultHash<WebKit::NetworkCache::Key>,WTF::HashMap<WebKit::NetworkCache::Key,WTF::RefPtr<WebKit::NetworkCache::SpeculativeLoad,WTF::RawPtrTraits<WebKit::NetworkCache::SpeculativeLoad>,WTF::DefaultRefDerefTraits<WebKit::NetworkCache::SpeculativeLoad>>,WTF::DefaultHash<WebKit::NetworkCache::Key>,WTF::HashTraits<WebKit::NetworkCache::Key>,WTF::HashTraits<WTF::RefPtr<WebKit::NetworkCache::SpeculativeLoad,WTF::RawPtrTraits<WebKit::NetworkCache::SpeculativeLoad>,WTF::DefaultRefDerefTraits<WebKit::NetworkCache::SpeculativeLoad>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebKit::NetworkCache::Key>,WTF::FastMalloc>::deallocateTable(uint64_t a1, WTF::StringImpl *a2)
{
  v3 = *(a1 - 4);
  if (v3)
  {
    v4 = a1;
    do
    {
      if (*(v4 + 16) != -1)
      {
        v5 = *(v4 + 72);
        *(v4 + 72) = 0;
        if (v5)
        {
          if (v5[5] == 1)
          {
            (*(*v5 + 24))(v5);
          }

          else
          {
            --v5[5];
          }
        }

        v6 = *(v4 + 24);
        *(v4 + 24) = 0;
        if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v6, a2);
        }

        v7 = *(v4 + 16);
        *(v4 + 16) = 0;
        if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v7, a2);
        }

        v8 = *(v4 + 8);
        *(v4 + 8) = 0;
        if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v8, a2);
        }

        v9 = *v4;
        *v4 = 0;
        if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v9, a2);
        }
      }

      v4 += 80;
      --v3;
    }

    while (v3);
  }

  return WTF::fastFree((a1 - 16), a2);
}

uint64_t WTF::HashTable<WebKit::NetworkCache::GlobalFrameID,WTF::KeyValuePair<WebKit::NetworkCache::GlobalFrameID,WTF::RefPtr<WebKit::NetworkCache::SpeculativeLoadManager::PendingFrameLoad,WTF::RawPtrTraits<WebKit::NetworkCache::SpeculativeLoadManager::PendingFrameLoad>,WTF::DefaultRefDerefTraits<WebKit::NetworkCache::SpeculativeLoadManager::PendingFrameLoad>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebKit::NetworkCache::GlobalFrameID,WTF::RefPtr<WebKit::NetworkCache::SpeculativeLoadManager::PendingFrameLoad,WTF::RawPtrTraits<WebKit::NetworkCache::SpeculativeLoadManager::PendingFrameLoad>,WTF::DefaultRefDerefTraits<WebKit::NetworkCache::SpeculativeLoadManager::PendingFrameLoad>>>>,WTF::DefaultHash<WebKit::NetworkCache::GlobalFrameID>,WTF::HashMap<WebKit::NetworkCache::GlobalFrameID,WTF::RefPtr<WebKit::NetworkCache::SpeculativeLoadManager::PendingFrameLoad,WTF::RawPtrTraits<WebKit::NetworkCache::SpeculativeLoadManager::PendingFrameLoad>,WTF::DefaultRefDerefTraits<WebKit::NetworkCache::SpeculativeLoadManager::PendingFrameLoad>>,WTF::DefaultHash<WebKit::NetworkCache::GlobalFrameID>,WTF::HashTraits<WebKit::NetworkCache::GlobalFrameID>,WTF::HashTraits<WTF::RefPtr<WebKit::NetworkCache::SpeculativeLoadManager::PendingFrameLoad,WTF::RawPtrTraits<WebKit::NetworkCache::SpeculativeLoadManager::PendingFrameLoad>,WTF::DefaultRefDerefTraits<WebKit::NetworkCache::SpeculativeLoadManager::PendingFrameLoad>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebKit::NetworkCache::GlobalFrameID>,WTF::FastMalloc>::deallocateTable(uint64_t a1, void *a2)
{
  v3 = *(a1 - 4);
  if (v3)
  {
    v4 = (a1 + 24);
    do
    {
      if (*(v4 - 2) != -1)
      {
        v5 = *v4;
        *v4 = 0;
        if (v5)
        {
          WTF::RefCounted<WebKit::NetworkCache::SpeculativeLoadManager::PendingFrameLoad>::deref(v5, a2);
        }
      }

      v4 += 4;
      --v3;
    }

    while (v3);
  }

  return WTF::fastFree((a1 - 16), a2);
}

WTF::StringImpl **std::unique_ptr<WebKit::NetworkCache::SpeculativeLoadManager::PreloadedEntry>::reset[abi:sn200100](WTF::StringImpl **result, WTF::StringImpl *a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    if (*(v2 + 264) == 1)
    {
      v3 = *(v2 + 32);
      *(v2 + 32) = 0;
      if (v3)
      {
        CFRelease(v3);
      }

      v4 = *(v2 + 29);
      *(v2 + 29) = 0;
      if (v4)
      {
        WTF::RefCounted<WebCore::FormData>::deref(v4);
      }

      v5 = *(v2 + 28);
      *(v2 + 28) = 0;
      if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v5, a2);
      }

      v6 = *(v2 + 27);
      *(v2 + 27) = 0;
      if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v6, a2);
      }

      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v2 + 192, a2);
      WTF::Vector<WebCore::HTTPHeaderMap::UncommonHeader,0ul,WTF::CrashOnOverflow,0ul,WTF::FastMalloc>::~Vector(v2 + 44, v7);
      WTF::Vector<WebCore::HTTPHeaderMap::CommonHeader,0ul,WTF::CrashOnOverflow,6ul,WTF::FastMalloc>::~Vector(v2 + 160, v8);
      v10 = *(v2 + 19);
      *(v2 + 19) = 0;
      if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v10, v9);
      }

      v11 = *(v2 + 13);
      *(v2 + 13) = 0;
      if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v11, v9);
      }

      v12 = *(v2 + 8);
      *(v2 + 8) = 0;
      if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v12, v9);
      }
    }

    std::unique_ptr<WebKit::NetworkCache::Entry>::reset[abi:sn200100](v2 + 7, 0);
    *v2 = &unk_1F10EB388;
    v13 = *(v2 + 6);
    *(v2 + 6) = 0;
    if (v13)
    {
      (*(*v13 + 8))(v13);
    }

    WebCore::TimerBase::~TimerBase(v2);

    return bmalloc::api::tzoneFree(v14, v15);
  }

  return result;
}

void WebKit::NetworkCache::SpeculativeLoadManager::PendingFrameLoad::saveToDiskIfReady(WebKit::NetworkCache::SpeculativeLoadManager::PendingFrameLoad *this)
{
  v45 = *MEMORY[0x1E69E9840];
  if (*(this + 216) == 1 && *(this + 217) == 1 && *(this + 27))
  {
    v2 = *(this + 2);
    if (v2)
    {
      WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::NetworkCache::Storage>(&v30, v2, *(this + 1));
    }

    else
    {
      v30 = 0;
    }

    v3 = *(this + 24);
    if (v3)
    {
      WebKit::NetworkCache::SubresourcesEntry::updateSubresourceLoads(v3, (this + 96));
      v4 = v30;
      WebKit::NetworkCache::SubresourcesEntry::encodeAsStorageRecord(v38);
      v26 = WTF::fastMalloc(0x10);
      *v26 = &unk_1F1108D80;
      v31[0] = v26;
      WebKit::NetworkCache::Storage::store(v4, v38, v31);
      v28 = v31[0];
      v31[0] = 0;
      if (v28)
      {
        (*(*v28 + 8))(v28);
      }

      WebKit::NetworkCache::Storage::Record::~Record(v38, v27);
    }

    else
    {
      v4 = v30;
      if ((_MergedGlobals_80 & 1) == 0)
      {
        WTF::AtomStringImpl::add();
        qword_1ED642718 = v38[0];
        _MergedGlobals_80 = 1;
      }

      v5 = WebKit::NetworkCache::Key::Key(v38, this + 3, &qword_1ED642718, this + 6, this + 5, v4 + 28);
      v6 = *v38;
      v7 = *v39;
      *v38 = 0u;
      *v39 = 0u;
      *v31 = v6;
      *v32 = v7;
      v33 = v40;
      v34 = v41;
      v35 = v42;
      WTF::WallTime::now(v5);
      v36 = v8;
      WebKit::NetworkCache::makeSubresourceInfoVector(v37, (this + 96), 0);
      v10 = v39[1];
      v39[1] = 0;
      if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v10, v9);
      }

      v11 = v39[0];
      v39[0] = 0;
      if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v11, v9);
      }

      v12 = v38[1];
      v38[1] = 0;
      if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v12, v9);
      }

      v13 = v38[0];
      v38[0] = 0;
      if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v13, v9);
      }

      WebKit::NetworkCache::SubresourcesEntry::encodeAsStorageRecord(v38);
      v14 = WTF::fastMalloc(0x10);
      *v14 = &unk_1F1108DA8;
      v29 = v14;
      WebKit::NetworkCache::Storage::store(v4, v38, &v29);
      v16 = v29;
      v29 = 0;
      if (v16)
      {
        (*(*v16 + 8))(v16);
      }

      if (object)
      {
        os_release(object);
      }

      if (v43)
      {
        os_release(v43);
      }

      v17 = v39[1];
      v39[1] = 0;
      if (v17 && atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v17, v15);
      }

      v18 = v39[0];
      v39[0] = 0;
      if (v18 && atomic_fetch_add_explicit(v18, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v18, v15);
      }

      v19 = v38[1];
      v38[1] = 0;
      if (v19 && atomic_fetch_add_explicit(v19, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v19, v15);
      }

      v20 = v38[0];
      v38[0] = 0;
      if (v20 && atomic_fetch_add_explicit(v20, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v20, v15);
      }

      WTF::Vector<WebKit::NetworkCache::SubresourceInfo,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v37, v15);
      v22 = v32[1];
      v32[1] = 0;
      if (v22 && atomic_fetch_add_explicit(v22, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v22, v21);
      }

      v23 = v32[0];
      v32[0] = 0;
      if (v23 && atomic_fetch_add_explicit(v23, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v23, v21);
      }

      v24 = v31[1];
      v31[1] = 0;
      if (v24 && atomic_fetch_add_explicit(v24, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v24, v21);
      }

      v25 = v31[0];
      v31[0] = 0;
      if (v25 && atomic_fetch_add_explicit(v25, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v25, v21);
      }
    }

    if (v4)
    {
      WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::NetworkCache::Storage,(WTF::DestructionThread)2>::deref(v4);
    }
  }
}

_BYTE *PAL::HysteresisActivity::impulse(_BYTE *this)
{
  if ((this[64] & 1) == 0)
  {
    v1 = this;
    if ((WTF::RunLoop::TimerBase::isActive((this + 16)) & 1) == 0)
    {
      v1[64] = 1;
      (*(**v1 + 16))(*v1, 0);
      v1[64] = 0;
    }

    return WTF::RunLoop::TimerBase::start();
  }

  return this;
}

_BYTE *WTF::Detail::CallableWrapper<WebKit::NetworkCache::SpeculativeLoadManager::PendingFrameLoad::PendingFrameLoad(WebKit::NetworkCache::Storage &,WebKit::NetworkCache::Key const&,WTF::Function<void ()(void)> &&)::{lambda(PAL::HysteresisState)#1},void,PAL>::call(_BYTE *result, int a2)
{
  if (a2)
  {
    return WebKit::NetworkCache::SpeculativeLoadManager::PendingFrameLoad::markLoadAsCompleted(*(result + 1));
  }

  return result;
}

void WebKit::NetworkCache::SubresourceLoad::~SubresourceLoad(WebKit::NetworkCache::SubresourceLoad *this, WTF::StringImpl *a2)
{
  v3 = *(this + 28);
  *(this + 28) = 0;
  if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v3, a2);
  }

  v4 = *(this + 27);
  *(this + 27) = 0;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, a2);
  }

  v5 = *(this + 26);
  *(this + 26) = 0;
  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, a2);
  }

  v6 = *(this + 25);
  *(this + 25) = 0;
  if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v6, a2);
  }

  v7 = *(this + 24);
  *(this + 24) = 0;
  if (v7)
  {
    CFRelease(v7);
  }

  v8 = *(this + 21);
  *(this + 21) = 0;
  if (v8)
  {
    WTF::RefCounted<WebCore::FormData>::deref(v8);
  }

  v9 = *(this + 20);
  *(this + 20) = 0;
  if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v9, a2);
  }

  v10 = *(this + 19);
  *(this + 19) = 0;
  if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v10, a2);
  }

  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(this + 128, a2);
  WTF::Vector<WebCore::HTTPHeaderMap::UncommonHeader,0ul,WTF::CrashOnOverflow,0ul,WTF::FastMalloc>::~Vector(this + 28, v11);
  WTF::Vector<WebCore::HTTPHeaderMap::CommonHeader,0ul,WTF::CrashOnOverflow,6ul,WTF::FastMalloc>::~Vector(this + 96, v12);
  v14 = *(this + 11);
  *(this + 11) = 0;
  if (v14 && atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v14, v13);
  }

  v15 = *(this + 5);
  *(this + 5) = 0;
  if (v15 && atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v15, v13);
  }

  v16 = *this;
  *this = 0;
  if (v16)
  {
    if (atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v16, v13);
    }
  }
}

void *WTF::Detail::CallableWrapper<WebKit::NetworkCache::SpeculativeLoadManager::addPreloadedEntry(std::unique_ptr<WebKit::NetworkCache::Entry>,WebKit::NetworkCache::GlobalFrameID const&,std::optional<WebCore::ResourceRequest> &&)::$_0,void>::~CallableWrapper(void *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F1108E20;
  v3 = a1[5];
  a1[5] = 0;
  if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v3, a2);
  }

  v4 = a1[4];
  a1[4] = 0;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, a2);
  }

  v5 = a1[3];
  a1[3] = 0;
  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, a2);
  }

  v6 = a1[2];
  a1[2] = 0;
  if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v6, a2);
  }

  v7 = a1[1];
  a1[1] = 0;
  if (v7 && atomic_fetch_add(v7, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v7);
    WTF::fastFree(v7, a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::NetworkCache::SpeculativeLoadManager::addPreloadedEntry(std::unique_ptr<WebKit::NetworkCache::Entry>,WebKit::NetworkCache::GlobalFrameID const&,std::optional<WebCore::ResourceRequest> &&)::$_0,void>::~CallableWrapper(void *a1, WTF::StringImpl *a2)
{
  v2 = WTF::Detail::CallableWrapper<WebKit::NetworkCache::SpeculativeLoadManager::addPreloadedEntry(std::unique_ptr<WebKit::NetworkCache::Entry>,WebKit::NetworkCache::GlobalFrameID const&,std::optional<WebCore::ResourceRequest> &&)::$_0,void>::~CallableWrapper(a1, a2);

  return WTF::fastFree(v2, v3);
}

WTF::StringImpl **WTF::Detail::CallableWrapper<WebKit::NetworkCache::SpeculativeLoadManager::addPreloadedEntry(std::unique_ptr<WebKit::NetworkCache::Entry>,WebKit::NetworkCache::GlobalFrameID const&,std::optional<WebCore::ResourceRequest> &&)::$_0,void>::call(WTF::StringImpl **result, uint64_t a2, const WTF::StringImpl *a3)
{
  v3 = result[1];
  if (v3)
  {
    v4 = *(v3 + 1);
    if (v4)
    {
      v5 = result;
      ++*(v4 + 8);
      v6 = WTF::HashTable<WebKit::NetworkCache::Key,WTF::KeyValuePair<WebKit::NetworkCache::Key,std::unique_ptr<WebKit::NetworkCache::SpeculativeLoadManager::PreloadedEntry>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebKit::NetworkCache::Key,std::unique_ptr<WebKit::NetworkCache::SpeculativeLoadManager::PreloadedEntry>>>,WTF::DefaultHash<WebKit::NetworkCache::Key>,WTF::HashMap<WebKit::NetworkCache::Key,std::unique_ptr<WebKit::NetworkCache::SpeculativeLoadManager::PreloadedEntry>,WTF::DefaultHash<WebKit::NetworkCache::Key>,WTF::HashTraits<WebKit::NetworkCache::Key>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkCache::SpeculativeLoadManager::PreloadedEntry>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebKit::NetworkCache::Key>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WebKit::NetworkCache::Key,std::unique_ptr<WebKit::NetworkCache::SpeculativeLoadManager::PreloadedEntry>,WTF::DefaultHash<WebKit::NetworkCache::Key>,WTF::HashTraits<WebKit::NetworkCache::Key>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkCache::SpeculativeLoadManager::PreloadedEntry>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WebKit::NetworkCache::Key>>,(WTF::ShouldValidateKey)1,WebKit::NetworkCache::Key>((v4 + 64), (result + 2), a3);
      v7 = WTF::HashMap<WebKit::NetworkCache::Key,std::unique_ptr<WebKit::NetworkCache::SpeculativeLoadManager::PreloadedEntry>,WTF::DefaultHash<WebKit::NetworkCache::Key>,WTF::HashTraits<WebKit::NetworkCache::Key>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkCache::SpeculativeLoadManager::PreloadedEntry>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::take(&v17, (v4 + 64), v6);
      v8 = *(*(v4 + 16) + 8);
      if (*(v17 + 264) == 1)
      {
        if (!v8)
        {
          __break(0xC471u);
          JUMPOUT(0x19DDA71D4);
        }

        v10 = *(v8 + 8);
        v9 = v8 + 8;
        *v9 = v10 + 1;
        v11 = *(v9 + 16);
        WebCore::DiagnosticLoggingKeys::wastedSpeculativeWarmupWithRevalidationKey(&v16, v7);
      }

      else
      {
        if (!v8)
        {
          __break(0xC471u);
          goto LABEL_17;
        }

        v15 = *(v8 + 8);
        v9 = v8 + 8;
        *v9 = v15 + 1;
        v11 = *(v9 + 16);
        WebCore::DiagnosticLoggingKeys::wastedSpeculativeWarmupWithoutRevalidationKey(&v16, v7);
      }

      WebKit::NetworkCache::logSpeculativeLoadingDiagnosticMessage(v11, v5[11], &v16);
      v13 = v16;
      v16 = 0;
      if (v13)
      {
        if (atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v13, v12);
        }
      }

      WTF::RefCounted<WebKit::NetworkCache::Cache>::deref(v9, v12);
      result = std::unique_ptr<WebKit::NetworkCache::SpeculativeLoadManager::PreloadedEntry>::reset[abi:sn200100](&v17, 0);
      v14 = *(v4 + 8);
      if (v14)
      {
        *(v4 + 8) = v14 - 1;
        return result;
      }

      __break(0xC471u);
LABEL_17:
      JUMPOUT(0x19DDA71B4);
    }
  }

  return result;
}

WebCore::TimerBase *WebKit::NetworkCache::SpeculativeLoadManager::ExpiringEntry::ExpiringEntry(WebCore::TimerBase *a1, uint64_t *a2)
{
  v4 = WebCore::TimerBase::TimerBase(a1);
  *v4 = &unk_1F10EB388;
  v5 = *a2;
  *a2 = 0;
  v4[6] = v5;
  WebCore::TimerBase::start();
  return a1;
}

uint64_t std::unique_ptr<WTF::Vector<WTF::Function<void ()(std::unique_ptr<WebKit::NetworkCache::Entry>)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>::reset[abi:sn200100](uint64_t *a1, void *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    v5 = WTF::Vector<WTF::Function<void ()(std::unique_ptr<WebKit::NetworkCache::Entry>)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(result, a2);

    return WTF::fastFree(v5, v6);
  }

  return result;
}

uint64_t WTF::Vector<WTF::Function<void ()(std::unique_ptr<WebKit::NetworkCache::Entry>)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(uint64_t a1, void *a2)
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
        (*(*v6 + 8))(v6);
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

uint64_t std::make_unique[abi:sn200100]<WebKit::NetworkCache::SpeculativeLoadManager::ExpiringEntry,WebKit::NetworkCache::SpeculativeLoadManager::startSpeculativeRevalidation(WebKit::NetworkCache::GlobalFrameID const&,WebKit::NetworkCache::SubresourcesEntry &,BOOL,std::optional<WebKit::NavigatingToAppBoundDomain>,BOOL,WTF::OptionSet<WebCore::AdvancedPrivacyProtections>)::$_0,0>(WebCore::TimerBase **a1, uint64_t *a2)
{
  if (WebKit::NetworkCache::SpeculativeLoadManager::ExpiringEntry::s_heapRef)
  {
    NonCompact = bmalloc::api::tzoneAllocateNonCompact(WebKit::NetworkCache::SpeculativeLoadManager::ExpiringEntry::s_heapRef, a2);
  }

  else
  {
    NonCompact = WebKit::NetworkCache::SpeculativeLoadManager::ExpiringEntry::operatorNewSlow(0);
  }

  v5 = NonCompact;
  v6 = WTF::fastMalloc(0x70);
  v7 = *a2;
  *a2 = 0;
  *v6 = &unk_1F1108E48;
  *(v6 + 8) = v7;
  WebKit::NetworkCache::Key::Key((v6 + 16), (a2 + 1));
  v8 = *(a2 + 5);
  *(v6 + 104) = a2[12];
  *(v6 + 88) = v8;
  v11 = v6;
  WebKit::NetworkCache::SpeculativeLoadManager::ExpiringEntry::ExpiringEntry(v5, &v11);
  *a1 = v5;
  result = v11;
  if (v11)
  {
    v10 = *(*v11 + 8);

    return v10();
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WebKit::NetworkCache::SpeculativeLoadManager::startSpeculativeRevalidation(WebKit::NetworkCache::GlobalFrameID const&,WebKit::NetworkCache::SubresourcesEntry &,BOOL,std::optional<WebKit::NavigatingToAppBoundDomain>,BOOL,WTF::OptionSet<WebCore::AdvancedPrivacyProtections>)::$_0,void>::~CallableWrapper(void *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F1108E48;
  v3 = a1[5];
  a1[5] = 0;
  if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v3, a2);
  }

  v4 = a1[4];
  a1[4] = 0;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, a2);
  }

  v5 = a1[3];
  a1[3] = 0;
  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, a2);
  }

  v6 = a1[2];
  a1[2] = 0;
  if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v6, a2);
  }

  v7 = a1[1];
  a1[1] = 0;
  if (v7 && atomic_fetch_add(v7, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v7);
    WTF::fastFree(v7, a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::NetworkCache::SpeculativeLoadManager::startSpeculativeRevalidation(WebKit::NetworkCache::GlobalFrameID const&,WebKit::NetworkCache::SubresourcesEntry &,BOOL,std::optional<WebKit::NavigatingToAppBoundDomain>,BOOL,WTF::OptionSet<WebCore::AdvancedPrivacyProtections>)::$_0,void>::~CallableWrapper(void *a1, WTF::StringImpl *a2)
{
  v2 = WTF::Detail::CallableWrapper<WebKit::NetworkCache::SpeculativeLoadManager::startSpeculativeRevalidation(WebKit::NetworkCache::GlobalFrameID const&,WebKit::NetworkCache::SubresourcesEntry &,BOOL,std::optional<WebKit::NavigatingToAppBoundDomain>,BOOL,WTF::OptionSet<WebCore::AdvancedPrivacyProtections>)::$_0,void>::~CallableWrapper(a1, a2);

  return WTF::fastFree(v2, v3);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::NetworkCache::SpeculativeLoadManager::startSpeculativeRevalidation(WebKit::NetworkCache::GlobalFrameID const&,WebKit::NetworkCache::SubresourcesEntry &,BOOL,std::optional<WebKit::NavigatingToAppBoundDomain>,BOOL,WTF::OptionSet<WebCore::AdvancedPrivacyProtections>)::$_0,void>::call(uint64_t result)
{
  v1 = *(result + 8);
  if (!v1)
  {
    return result;
  }

  v2 = *(v1 + 8);
  if (!v2)
  {
    return result;
  }

  ++*(v2 + 8);
  v3 = *(*(v2 + 16) + 8);
  if (!v3)
  {
    __break(0xC471u);
    goto LABEL_33;
  }

  v4 = result;
  v6 = *(v3 + 8);
  v5 = v3 + 8;
  *v5 = v6 + 1;
  v7 = *(v5 + 16);
  WebCore::DiagnosticLoggingKeys::entryRightlyNotWarmedUpKey(&v27, result);
  WebKit::NetworkCache::logSpeculativeLoadingDiagnosticMessage(v7, *(v4 + 88), &v27);
  v9 = v27;
  v27 = 0;
  if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v9, v8);
  }

  result = WTF::RefCounted<WebKit::NetworkCache::Cache>::deref(v5, v8);
  v12 = (v2 + 72);
  v13 = *(v2 + 72);
  if (v13)
  {
    v14 = *(v4 + 32);
    if (v14 == -1)
    {
      __break(0xC471u);
      JUMPOUT(0x19DDA774CLL);
    }

    if (v14)
    {
      v15 = 0;
      v16 = *(v13 - 8);
      for (i = *(v4 + 48); ; i = v15 + v18)
      {
        v18 = i & v16;
        v19 = v13 + 80 * (i & v16);
        v20 = *(v19 + 16);
        if (v20 != -1)
        {
          if (!v20)
          {
            v21 = *v12;
            if (!*v12)
            {
              goto LABEL_26;
            }

            v19 = v21 + 80 * *(v21 - 4);
            goto LABEL_18;
          }

          result = WebKit::NetworkCache::Key::operator==(v13 + 80 * v18, v4 + 16, v11);
          if (result)
          {
            break;
          }
        }

        ++v15;
      }

      v21 = *v12;
      if (!*v12)
      {
        goto LABEL_19;
      }

LABEL_18:
      v21 += 80 * *(v21 - 4);
      if (v21 == v19)
      {
        goto LABEL_26;
      }

LABEL_19:
      if (v21 != v19)
      {
        WTF::hashTraitsDeleteBucket<WTF::HashTraits<WebKit::NetworkCache::Key>,WebKit::NetworkCache::Key>(v19, v10);
        result = std::unique_ptr<WebKit::NetworkCache::SpeculativeLoadManager::ExpiringEntry>::reset[abi:sn200100]((v19 + 72), 0);
        v22 = *v12;
        v23 = vadd_s32(*(*v12 - 16), 0xFFFFFFFF00000001);
        *(v22 - 16) = v23;
        v24 = *(v22 - 4);
        if (6 * v23.i32[1] < v24 && v24 >= 9)
        {
          result = WTF::HashTable<WebKit::NetworkCache::Key,WTF::KeyValuePair<WebKit::NetworkCache::Key,std::unique_ptr<WebKit::NetworkCache::SpeculativeLoadManager::ExpiringEntry>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebKit::NetworkCache::Key,std::unique_ptr<WebKit::NetworkCache::SpeculativeLoadManager::ExpiringEntry>>>,WTF::DefaultHash<WebKit::NetworkCache::Key>,WTF::HashMap<WebKit::NetworkCache::Key,std::unique_ptr<WebKit::NetworkCache::SpeculativeLoadManager::ExpiringEntry>,WTF::DefaultHash<WebKit::NetworkCache::Key>,WTF::HashTraits<WebKit::NetworkCache::Key>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkCache::SpeculativeLoadManager::ExpiringEntry>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebKit::NetworkCache::Key>,WTF::FastMalloc>::rehash((v2 + 72), v24 >> 1, 0);
        }
      }

      goto LABEL_26;
    }

    __break(0xC471u);
LABEL_33:
    JUMPOUT(0x19DDA770CLL);
  }

LABEL_26:
  v26 = *(v2 + 8);
  if (!v26)
  {
    __break(0xC471u);
    JUMPOUT(0x19DDA772CLL);
  }

  *(v2 + 8) = v26 - 1;
  return result;
}

WTF::StringImpl *WTF::hashTraitsDeleteBucket<WTF::HashTraits<WebKit::NetworkCache::Key>,WebKit::NetworkCache::Key>(WTF::StringImpl **a1, WTF::StringImpl *a2)
{
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
  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, a2);
  }

  result = *a1;
  *a1 = 0;
  if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    result = WTF::StringImpl::destroy(result, a2);
  }

  *a1 = 0;
  a1[1] = 0;
  a1[2] = -1;
  a1[3] = 0;
  return result;
}

uint64_t WTF::HashTable<WebKit::NetworkCache::Key,WTF::KeyValuePair<WebKit::NetworkCache::Key,std::unique_ptr<WebKit::NetworkCache::SpeculativeLoadManager::ExpiringEntry>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebKit::NetworkCache::Key,std::unique_ptr<WebKit::NetworkCache::SpeculativeLoadManager::ExpiringEntry>>>,WTF::DefaultHash<WebKit::NetworkCache::Key>,WTF::HashMap<WebKit::NetworkCache::Key,std::unique_ptr<WebKit::NetworkCache::SpeculativeLoadManager::ExpiringEntry>,WTF::DefaultHash<WebKit::NetworkCache::Key>,WTF::HashTraits<WebKit::NetworkCache::Key>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkCache::SpeculativeLoadManager::ExpiringEntry>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebKit::NetworkCache::Key>,WTF::FastMalloc>::rehash(uint64_t *a1, unsigned int a2, uint64_t a3)
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

  v8 = WTF::fastMalloc((80 * a2 + 16));
  if (a2)
  {
    v10 = a2;
    v11 = v8 + 22;
    do
    {
      *(v11 - 7) = 0uLL;
      *(v11 - 9) = 0uLL;
      *v11 = 0;
      v11 += 10;
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
      v14 = v5 + 80 * v12;
      v15 = *(v14 + 16);
      if (v15 != -1)
      {
        if (v15)
        {
          v20 = *a1;
          if (*a1)
          {
            v21 = *(v20 - 8);
          }

          else
          {
            v21 = 0;
          }

          v22 = 0;
          v23 = *(v14 + 32);
          do
          {
            v24 = v23 & v21;
            v25 = v20 + 80 * v24;
            v23 = ++v22 + v24;
          }

          while (*(v25 + 16));
          std::unique_ptr<WebKit::NetworkCache::SpeculativeLoadManager::ExpiringEntry>::reset[abi:sn200100]((v25 + 72), 0);
          v27 = *(v25 + 24);
          *(v25 + 24) = 0;
          if (v27 && atomic_fetch_add_explicit(v27, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v27, v26);
          }

          v28 = *(v25 + 16);
          *(v25 + 16) = 0;
          if (v28 && atomic_fetch_add_explicit(v28, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v28, v26);
          }

          v29 = *(v25 + 8);
          *(v25 + 8) = 0;
          if (v29 && atomic_fetch_add_explicit(v29, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v29, v26);
          }

          v30 = *v25;
          *v25 = 0;
          if (v30 && atomic_fetch_add_explicit(v30, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v30, v26);
          }

          v31 = *v14;
          *v14 = 0;
          *v25 = v31;
          v32 = *(v14 + 8);
          *(v14 + 8) = 0;
          *(v25 + 8) = v32;
          v33 = *(v14 + 16);
          *(v14 + 16) = 0;
          *(v25 + 16) = v33;
          v34 = *(v14 + 24);
          *(v14 + 24) = 0;
          *(v25 + 24) = v34;
          v35 = *(v14 + 32);
          v36 = *(v14 + 48);
          *(v25 + 64) = *(v14 + 64);
          *(v25 + 32) = v35;
          *(v25 + 48) = v36;
          v37 = *(v14 + 72);
          *(v14 + 72) = 0;
          *(v25 + 72) = v37;
          std::unique_ptr<WebKit::NetworkCache::SpeculativeLoadManager::ExpiringEntry>::reset[abi:sn200100]((v14 + 72), 0);
          v38 = *(v14 + 24);
          *(v14 + 24) = 0;
          if (v38 && atomic_fetch_add_explicit(v38, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v38, v9);
          }

          v39 = *(v14 + 16);
          *(v14 + 16) = 0;
          if (v39 && atomic_fetch_add_explicit(v39, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v39, v9);
          }

          v40 = *(v14 + 8);
          *(v14 + 8) = 0;
          if (v40 && atomic_fetch_add_explicit(v40, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v40, v9);
          }

          v41 = *v14;
          *v14 = 0;
          if (v41 && atomic_fetch_add_explicit(v41, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v41, v9);
          }

          if (v14 == a3)
          {
            v13 = v25;
          }
        }

        else
        {
          std::unique_ptr<WebKit::NetworkCache::SpeculativeLoadManager::ExpiringEntry>::reset[abi:sn200100]((v14 + 72), 0);
          v16 = *(v14 + 24);
          *(v14 + 24) = 0;
          if (v16 && atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v16, v9);
          }

          v17 = *(v14 + 16);
          *(v14 + 16) = 0;
          if (v17 && atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v17, v9);
          }

          v18 = *(v14 + 8);
          *(v14 + 8) = 0;
          if (v18 && atomic_fetch_add_explicit(v18, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v18, v9);
          }

          v19 = *v14;
          *v14 = 0;
          if (v19)
          {
            if (atomic_fetch_add_explicit(v19, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v19, v9);
            }
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

WebCore::TimerBase **std::unique_ptr<WebKit::NetworkCache::SpeculativeLoadManager::ExpiringEntry>::reset[abi:sn200100](WebCore::TimerBase **result, WebCore::TimerBase *a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    *v2 = &unk_1F10EB388;
    v3 = *(v2 + 6);
    *(v2 + 6) = 0;
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }

    WebCore::TimerBase::~TimerBase(v2);

    return bmalloc::api::tzoneFree(v4, v5);
  }

  return result;
}

unint64_t WTF::makeString<WTF::ASCIILiteral,unsigned int>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned int a3@<W2>, void *a4@<X8>)
{
  v7[0] = a1;
  v7[1] = a2;
  v6 = a3;
  result = WTF::tryMakeString<WTF::ASCIILiteral,unsigned int>(v7, &v6, a4);
  if (!*a4)
  {
    __break(0xC471u);
  }

  return result;
}

unint64_t WTF::tryMakeString<WTF::ASCIILiteral,unsigned int>@<X0>(void *a1@<X0>, unsigned int *a2@<X1>, void *a3@<X8>)
{
  v3 = a1[1];
  v4 = v3 != 0;
  v5 = v3 - 1;
  if (!v4)
  {
    v5 = 0;
  }

  v8[0] = *a1;
  v8[1] = v5;
  if (v5 >> 31)
  {
    result = 161;
    __break(0xC471u);
  }

  else
  {
    v7 = *a2;
    return WTF::tryMakeStringFromAdapters<WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<unsigned int,void>>(v8, &v7, a3);
  }

  return result;
}

unint64_t WTF::tryMakeStringFromAdapters<WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<unsigned int,void>>@<X0>(unint64_t result@<X0>, unsigned int *a2@<X1>, void *a3@<X8>)
{
  v3 = 0;
  v4 = *(result + 8);
  v5 = *a2;
  do
  {
    ++v3;
    v6 = v5 > 9;
    v5 /= 0xAu;
  }

  while (v6);
  if (((v3 | v4) & 0x80000000) == 0)
  {
    v7 = __OFADD__(v4, v3);
    v8 = (v4 + v3);
    if (!v7)
    {
      return WTF::tryMakeStringImplFromAdaptersInternal<WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<unsigned int,void>>(v8, 1, *result, v4, *a2, a3);
    }
  }

  *a3 = 0;
  return result;
}

unint64_t WTF::tryMakeStringImplFromAdaptersInternal<WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<unsigned int,void>>@<X0>(unint64_t result@<X0>, int a2@<W1>, int8x16_t *a3@<X2>, size_t a4@<X3>, unsigned int a5@<W4>, void *a6@<X8>)
{
  v9 = result;
  v11 = result;
  if (a2)
  {
    if (result)
    {
      if ((result & 0x80000000) == 0)
      {
        result = WTF::tryFastCompactMalloc((result + 20));
        v12 = v13;
        if (v13)
        {
          *v13 = 2;
          *(v13 + 4) = v9;
          *(v13 + 8) = v13 + 20;
          *(v13 + 16) = 4;
          result = WTF::stringTypeAdapterAccumulator<unsigned char,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<unsigned int,void>>((v13 + 20), v11, a3, a4, a5);
        }

        goto LABEL_6;
      }

LABEL_9:
      v12 = 0;
      goto LABEL_6;
    }

LABEL_10:
    v12 = MEMORY[0x1E696EB88];
    atomic_fetch_add_explicit(MEMORY[0x1E696EB88], 2u, memory_order_relaxed);
    goto LABEL_6;
  }

  if (!result)
  {
    goto LABEL_10;
  }

  if (result > 0x7FFFFFEF)
  {
    goto LABEL_9;
  }

  result = WTF::tryFastCompactMalloc((2 * result + 20));
  v12 = v13;
  if (v13)
  {
    *v13 = 2;
    *(v13 + 4) = v9;
    *(v13 + 8) = v13 + 20;
    *(v13 + 16) = 0;
    result = WTF::stringTypeAdapterAccumulator<char16_t,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<unsigned int,void>>((v13 + 20), v11, a3, a4, a5);
  }

LABEL_6:
  *a6 = v12;
  return result;
}

unsigned int *WTF::stringTypeAdapterAccumulator<char16_t,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<unsigned int,void>>(unsigned int *result, unint64_t a2, int8x16_t *a3, unint64_t a4, unsigned int a5)
{
  if (a4 < 0x40)
  {
    v5 = result;
  }

  else
  {
    v5 = (result + 2 * (a4 & 0x7FFFFFFFFFFFFFC0));
    v6 = 0uLL;
    v7 = result;
    do
    {
      v16.val[0] = *a3;
      v8 = a3[1];
      v17.val[0] = a3[2];
      v9 = a3[3];
      a3 += 4;
      v10 = v9;
      v17.val[1] = 0uLL;
      v18.val[0] = v8;
      v16.val[1] = 0uLL;
      v11 = v7;
      vst2q_s8(v11, v16);
      v11 += 32;
      v18.val[1] = 0uLL;
      vst2q_s8(v11, v18);
      v12 = v7 + 64;
      vst2q_s8(v12, v17);
      v13 = v7 + 96;
      vst2q_s8(v13, *(&v6 - 1));
      v7 += 128;
    }

    while (v7 != v5);
  }

  while (v5 != (result + 2 * a4))
  {
    v14 = a3->u8[0];
    a3 = (a3 + 1);
    *v5 = v14;
    v5 = (v5 + 2);
  }

  if (a2 < a4)
  {
    __break(1u);
  }

  else
  {
    v15 = a5;
    return WTF::StringTypeAdapter<unsigned int,void>::writeTo<char16_t>(&v15, result + a4, a2 - a4);
  }

  return result;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::NetworkCache::decodeRecordMetaData(WebKit::NetworkCache::RecordMetaData &,WebKit::NetworkCache::Data const&)::$_0,BOOL,std::span<unsigned char const,18446744073709551615ul>>::call()
{
  v1[36] = *MEMORY[0x1E69E9840];
  WTF::Persistence::Decoder::Decoder();
  WTF::Persistence::Decoder::operator>>();
  WTF::Persistence::Decoder::~Decoder(v1);
  return 0;
}

WTF::StringImpl *WebKit::NetworkCache::Storage::Record::isolatedCopy(uint64_t a1, uint64_t a2)
{
  v15 = *MEMORY[0x1E69E9840];
  WebKit::NetworkCache::Key::isolatedCopy(a2, &v11);
  v4 = *(a2 + 72);
  v10[0] = *(a2 + 144);
  *(v10 + 13) = *(a2 + 157);
  WebKit::NetworkCache::Storage::Record::Record(a1, &v11, a2 + 80, a2 + 112, v10, v4);
  v6 = v14;
  v14 = 0;
  if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v6, v5);
  }

  v7 = v13;
  v13 = 0;
  if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v7, v5);
  }

  v8 = v12;
  v12 = 0;
  if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v8, v5);
  }

  result = v11;
  v11 = 0;
  if (result)
  {
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v5);
    }
  }

  return result;
}

__n128 WebKit::NetworkCache::Key::isolatedCopy@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  WTF::String::isolatedCopy();
  WTF::String::isolatedCopy();
  WTF::String::isolatedCopy();
  WTF::String::isolatedCopy();
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 48) = *(a1 + 48);
  result = *(a1 + 52);
  *(a2 + 52) = result;
  *(a2 + 68) = *(a1 + 68);
  *a2 = v7;
  *(a2 + 8) = v6;
  *(a2 + 16) = v5;
  return result;
}

WTF::StringImpl **std::unique_ptr<WebKit::NetworkCache::Storage::ReadOperation>::reset[abi:sn200100](WTF::StringImpl **result, WTF::StringImpl *a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    WebKit::NetworkCache::Storage::Record::~Record((v2 + 184), a2);
    v4 = *(v2 + 11);
    *(v2 + 11) = 0;
    if (v4)
    {
      (*(*v4 + 8))(v4);
    }

    v5 = *(v2 + 4);
    *(v2 + 4) = 0;
    if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v5, v3);
    }

    v6 = *(v2 + 3);
    *(v2 + 3) = 0;
    if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v6, v3);
    }

    v7 = *(v2 + 2);
    *(v2 + 2) = 0;
    if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v7, v3);
    }

    v8 = *(v2 + 1);
    *(v2 + 1) = 0;
    if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v8, v3);
    }

    return bmalloc::api::tzoneFree(v2, v3);
  }

  return result;
}

WebKit::NetworkCache::Storage::WriteOperation *std::unique_ptr<WebKit::NetworkCache::Storage::WriteOperation>::reset[abi:sn200100](WebKit::NetworkCache::Storage::WriteOperation **a1, WTF::StringImpl *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    WebKit::NetworkCache::Storage::WriteOperation::~WriteOperation(result, a2);

    return bmalloc::api::tzoneFree(v5, v6);
  }

  return result;
}

void WebKit::NetworkCache::Storage::WriteOperation::~WriteOperation(WebKit::NetworkCache::Storage::WriteOperation *this, WTF::StringImpl *a2)
{
  v3 = *(this + 22);
  *(this + 22) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  WebKit::NetworkCache::Storage::Record::~Record((this + 8), a2);
}

WebKit::NetworkCache::Storage::Record *WebKit::NetworkCache::Storage::Record::Record(WebKit::NetworkCache::Storage::Record *this, const WebKit::NetworkCache::Storage::Record *a2)
{
  *(WebKit::NetworkCache::Key::Key(this, a2) + 9) = *(a2 + 9);
  v4 = *(a2 + 10);
  *(this + 10) = v4;
  if (v4)
  {
    os_retain(v4);
  }

  v5 = *(a2 + 88);
  *(this + 104) = *(a2 + 104);
  *(this + 88) = v5;
  v6 = *(a2 + 14);
  *(this + 14) = v6;
  if (v6)
  {
    os_retain(v6);
  }

  v7 = *(a2 + 120);
  *(this + 136) = *(a2 + 136);
  *(this + 120) = v7;
  v8 = *(a2 + 9);
  *(this + 157) = *(a2 + 157);
  *(this + 9) = v8;
  return this;
}

uint64_t WebKit::NetworkCache::Storage::WriteOperation::operator new(WebKit::NetworkCache::Storage::WriteOperation *this, void *a2)
{
  if (this == 184 && WebKit::NetworkCache::Storage::WriteOperation::s_heapRef)
  {
    return bmalloc::api::tzoneAllocateNonCompact(WebKit::NetworkCache::Storage::WriteOperation::s_heapRef, a2);
  }

  else
  {
    return WebKit::NetworkCache::Storage::WriteOperation::operatorNewSlow(this);
  }
}

uint64_t WebKit::NetworkCache::Storage::WriteOperation::WriteOperation(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  *a1 = WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>::generateIdentifierInternal();
  WebKit::NetworkCache::Key::Key((a1 + 8), a2);
  *(a1 + 80) = *(a2 + 72);
  v6 = *(a2 + 80);
  *(a1 + 88) = v6;
  if (v6)
  {
    os_retain(v6);
  }

  v7 = *(a2 + 88);
  *(a1 + 112) = *(a2 + 104);
  *(a1 + 96) = v7;
  v8 = *(a2 + 112);
  *(a1 + 120) = v8;
  if (v8)
  {
    os_retain(v8);
  }

  v9 = *(a2 + 120);
  *(a1 + 144) = *(a2 + 136);
  *(a1 + 128) = v9;
  v10 = *(a2 + 144);
  *(a1 + 165) = *(a2 + 157);
  *(a1 + 152) = v10;
  v11 = *a3;
  *a3 = 0;
  *(a1 + 176) = v11;
  return a1;
}

WTF::StringImpl ***std::unique_ptr<WebKit::NetworkCache::SubresourcesEntry>::reset[abi:sn200100](WTF::StringImpl ***result, WTF::StringImpl **a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    WTF::Vector<WebKit::NetworkCache::SubresourceInfo,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector((v2 + 10), a2);
    v4 = v2[3];
    v2[3] = 0;
    if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v4, v3);
    }

    v5 = v2[2];
    v2[2] = 0;
    if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v5, v3);
    }

    v6 = v2[1];
    v2[1] = 0;
    if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v6, v3);
    }

    v7 = *v2;
    *v2 = 0;
    if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v7, v3);
    }

    return bmalloc::api::tzoneFree(v2, v3);
  }

  return result;
}

uint64_t WTF::HashTable<WebKit::NetworkCache::Key,WTF::KeyValuePair<WebKit::NetworkCache::Key,unsigned int>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebKit::NetworkCache::Key,unsigned int>>,WTF::DefaultHash<WebKit::NetworkCache::Key>,WTF::HashMap<WebKit::NetworkCache::Key,unsigned int,WTF::DefaultHash<WebKit::NetworkCache::Key>,WTF::HashTraits<WebKit::NetworkCache::Key>,WTF::HashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebKit::NetworkCache::Key>,WTF::FastMalloc>::expand(uint64_t *a1)
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

  return WTF::HashTable<WebKit::NetworkCache::Key,WTF::KeyValuePair<WebKit::NetworkCache::Key,unsigned int>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebKit::NetworkCache::Key,unsigned int>>,WTF::DefaultHash<WebKit::NetworkCache::Key>,WTF::HashMap<WebKit::NetworkCache::Key,unsigned int,WTF::DefaultHash<WebKit::NetworkCache::Key>,WTF::HashTraits<WebKit::NetworkCache::Key>,WTF::HashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebKit::NetworkCache::Key>,WTF::FastMalloc>::rehash(a1, v3);
}

uint64_t WTF::HashTable<WebKit::NetworkCache::Key,WTF::KeyValuePair<WebKit::NetworkCache::Key,unsigned int>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebKit::NetworkCache::Key,unsigned int>>,WTF::DefaultHash<WebKit::NetworkCache::Key>,WTF::HashMap<WebKit::NetworkCache::Key,unsigned int,WTF::DefaultHash<WebKit::NetworkCache::Key>,WTF::HashTraits<WebKit::NetworkCache::Key>,WTF::HashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebKit::NetworkCache::Key>,WTF::FastMalloc>::rehash(uint64_t *a1, unsigned int a2)
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

  result = WTF::HashTable<WebKit::NetworkCache::Key,WTF::KeyValuePair<WebKit::NetworkCache::Key,unsigned int>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebKit::NetworkCache::Key,unsigned int>>,WTF::DefaultHash<WebKit::NetworkCache::Key>,WTF::HashMap<WebKit::NetworkCache::Key,unsigned int,WTF::DefaultHash<WebKit::NetworkCache::Key>,WTF::HashTraits<WebKit::NetworkCache::Key>,WTF::HashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebKit::NetworkCache::Key>,WTF::FastMalloc>::allocateTable(a2);
  *a1 = result;
  *(result - 8) = a2 - 1;
  *(result - 4) = a2;
  *(result - 16) = 0;
  *(result - 12) = v6;
  if (v5)
  {
    v9 = v5;
    v10 = v4;
    do
    {
      v11 = v10[1].n128_u64[0];
      if (v11)
      {
        if (v11 != -1)
        {
          WTF::HashTable<WebKit::NetworkCache::Key,WTF::KeyValuePair<WebKit::NetworkCache::Key,unsigned int>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebKit::NetworkCache::Key,unsigned int>>,WTF::DefaultHash<WebKit::NetworkCache::Key>,WTF::HashMap<WebKit::NetworkCache::Key,unsigned int,WTF::DefaultHash<WebKit::NetworkCache::Key>,WTF::HashTraits<WebKit::NetworkCache::Key>,WTF::HashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebKit::NetworkCache::Key>,WTF::FastMalloc>::reinsert(*a1, v10);
          WebKit::NetworkCache::Key::~Key(v10, v12);
        }
      }

      else
      {
        WebKit::NetworkCache::Key::~Key(v10, v8);
      }

      v10 += 5;
      --v9;
    }

    while (v9);
  }

  else if (!v4)
  {
    return result;
  }

  return WTF::fastFree((v4 - 16), v8);
}

uint64_t WTF::HashTable<WebKit::NetworkCache::Key,WTF::KeyValuePair<WebKit::NetworkCache::Key,unsigned int>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebKit::NetworkCache::Key,unsigned int>>,WTF::DefaultHash<WebKit::NetworkCache::Key>,WTF::HashMap<WebKit::NetworkCache::Key,unsigned int,WTF::DefaultHash<WebKit::NetworkCache::Key>,WTF::HashTraits<WebKit::NetworkCache::Key>,WTF::HashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebKit::NetworkCache::Key>,WTF::FastMalloc>::allocateTable(unsigned int a1)
{
  v2 = WTF::fastMalloc((80 * a1 + 16));
  if (a1)
  {
    v3 = a1;
    v4 = (v2 + 88);
    do
    {
      *(v4 - 14) = 0uLL;
      *(v4 - 18) = 0uLL;
      *v4 = 0;
      v4 += 20;
      --v3;
    }

    while (v3);
  }

  return v2 + 16;
}

__n128 WTF::HashTable<WebKit::NetworkCache::Key,WTF::KeyValuePair<WebKit::NetworkCache::Key,unsigned int>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebKit::NetworkCache::Key,unsigned int>>,WTF::DefaultHash<WebKit::NetworkCache::Key>,WTF::HashMap<WebKit::NetworkCache::Key,unsigned int,WTF::DefaultHash<WebKit::NetworkCache::Key>,WTF::HashTraits<WebKit::NetworkCache::Key>,WTF::HashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebKit::NetworkCache::Key>,WTF::FastMalloc>::reinsert(uint64_t a1, __n128 *a2)
{
  if (a1)
  {
    v4 = *(a1 - 8);
  }

  else
  {
    v4 = 0;
  }

  v5 = 0;
  v7 = a2 + 2;
  v6 = a2[2].n128_u32[0];
  do
  {
    v8 = v6 & v4;
    v9 = (a1 + 80 * v8);
    v6 = ++v5 + v8;
  }

  while (*(v9 + 2));
  WebKit::NetworkCache::Key::~Key(v9, a2);
  v10 = a2->n128_u64[0];
  a2->n128_u64[0] = 0;
  v11->n128_u64[0] = v10;
  v12 = a2->n128_i64[1];
  a2->n128_u64[1] = 0;
  v11->n128_u64[1] = v12;
  v13 = a2[1].n128_i64[0];
  a2[1].n128_u64[0] = 0;
  v11[1].n128_u64[0] = v13;
  v14 = a2[1].n128_i64[1];
  a2[1].n128_u64[1] = 0;
  v11[1].n128_u64[1] = v14;
  result = *v7;
  v16 = a2[3];
  v11[4].n128_u64[0] = a2[4].n128_u64[0];
  v11[2] = result;
  v11[3] = v16;
  v11[4].n128_u32[2] = a2[4].n128_u32[2];
  return result;
}

_DWORD *WTF::HashTable<WebKit::NetworkCache::Key,WebKit::NetworkCache::Key,WTF::IdentityExtractor,WTF::DefaultHash<WebKit::NetworkCache::Key>,WTF::HashTraits<WebKit::NetworkCache::Key>,WTF::HashTraits<WebKit::NetworkCache::Key>,WTF::FastMalloc>::expand(uint64_t *a1)
{
  v2 = *a1;
  if (!*a1)
  {
    v3 = 0;
    v4 = 0;
    goto LABEL_3;
  }

  v3 = *(v2 - 4);
  v4 = *(v2 - 12);
  if (!v3)
  {
LABEL_3:
    v5 = 8;
    goto LABEL_4;
  }

  v5 = v3 << (6 * v4 >= (2 * v3));
LABEL_4:
  result = WTF::fastMalloc((72 * v5 + 16));
  if (v5)
  {
    v8 = v5;
    v9 = result + 4;
    do
    {
      *v9 = 0uLL;
      v9[1] = 0uLL;
      v9 = (v9 + 72);
      --v8;
    }

    while (v8);
  }

  *a1 = (result + 4);
  result[2] = v5 - 1;
  result[3] = v5;
  *result = 0;
  result[1] = v4;
  if (v3)
  {
    v10 = 0;
    while (1)
    {
      v11 = v2 + 72 * v10;
      v12 = *(v11 + 16);
      if (v12)
      {
        if (v12 == -1)
        {
          goto LABEL_23;
        }

        v13 = *a1;
        if (*a1)
        {
          v14 = *(v13 - 8);
        }

        else
        {
          v14 = 0;
        }

        v15 = 0;
        v16 = *(v11 + 32);
        do
        {
          v17 = v16 & v14;
          v18 = v13 + 72 * v17;
          v16 = ++v15 + v17;
        }

        while (*(v18 + 16));
        v19 = *(v18 + 24);
        *(v18 + 24) = 0;
        if (v19 && atomic_fetch_add_explicit(v19, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v19, v7);
        }

        v20 = *(v18 + 16);
        *(v18 + 16) = 0;
        if (v20 && atomic_fetch_add_explicit(v20, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v20, v7);
        }

        v21 = *(v18 + 8);
        *(v18 + 8) = 0;
        if (v21 && atomic_fetch_add_explicit(v21, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v21, v7);
        }

        v22 = *v18;
        *v18 = 0;
        if (v22 && atomic_fetch_add_explicit(v22, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v22, v7);
        }

        v23 = *v11;
        *v11 = 0;
        *v18 = v23;
        v24 = *(v11 + 8);
        *(v11 + 8) = 0;
        *(v18 + 8) = v24;
        v25 = *(v11 + 16);
        *(v11 + 16) = 0;
        *(v18 + 16) = v25;
        v26 = *(v11 + 24);
        *(v11 + 24) = 0;
        *(v18 + 24) = v26;
        v27 = *(v11 + 32);
        v28 = *(v11 + 48);
        *(v18 + 64) = *(v11 + 64);
        *(v18 + 32) = v27;
        *(v18 + 48) = v28;
        v29 = *(v11 + 24);
        *(v11 + 24) = 0;
        if (v29 && atomic_fetch_add_explicit(v29, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v29, v7);
        }

        v30 = *(v11 + 16);
        *(v11 + 16) = 0;
        if (v30 && atomic_fetch_add_explicit(v30, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v30, v7);
        }

        v31 = *(v11 + 8);
        *(v11 + 8) = 0;
        if (v31 && atomic_fetch_add_explicit(v31, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v31, v7);
        }

        v32 = *v11;
        *v11 = 0;
        if (!v32 || atomic_fetch_add_explicit(v32, 0xFFFFFFFE, memory_order_relaxed) != 2)
        {
          goto LABEL_23;
        }
      }

      else
      {
        v33 = *(v11 + 24);
        *(v11 + 24) = 0;
        if (v33 && atomic_fetch_add_explicit(v33, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v33, v7);
        }

        v34 = *(v11 + 16);
        *(v11 + 16) = 0;
        if (v34 && atomic_fetch_add_explicit(v34, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v34, v7);
        }

        v35 = *(v11 + 8);
        *(v11 + 8) = 0;
        if (v35 && atomic_fetch_add_explicit(v35, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v35, v7);
        }

        v32 = *v11;
        *v11 = 0;
        if (!v32 || atomic_fetch_add_explicit(v32, 0xFFFFFFFE, memory_order_relaxed) != 2)
        {
          goto LABEL_23;
        }
      }

      WTF::StringImpl::destroy(v32, v7);
LABEL_23:
      if (++v10 == v3)
      {
        goto LABEL_56;
      }
    }
  }

  if (v2)
  {
LABEL_56:

    return WTF::fastFree((v2 - 16), v7);
  }

  return result;
}

uint64_t WTF::HashTable<WebKit::NetworkCache::Key,WTF::KeyValuePair<WebKit::NetworkCache::Key,unsigned int>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebKit::NetworkCache::Key,unsigned int>>,WTF::DefaultHash<WebKit::NetworkCache::Key>,WTF::HashMap<WebKit::NetworkCache::Key,unsigned int,WTF::DefaultHash<WebKit::NetworkCache::Key>,WTF::HashTraits<WebKit::NetworkCache::Key>,WTF::HashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebKit::NetworkCache::Key>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WebKit::NetworkCache::Key,unsigned int,WTF::DefaultHash<WebKit::NetworkCache::Key>,WTF::HashTraits<WebKit::NetworkCache::Key>,WTF::HashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WebKit::NetworkCache::Key>>,(WTF::ShouldValidateKey)1,WebKit::NetworkCache::Key>(uint64_t *a1, uint64_t a2)
{
  if (!*a1)
  {
    return 0;
  }

  result = WTF::HashTable<WebKit::NetworkCache::Key,WTF::KeyValuePair<WebKit::NetworkCache::Key,unsigned int>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebKit::NetworkCache::Key,unsigned int>>,WTF::DefaultHash<WebKit::NetworkCache::Key>,WTF::HashMap<WebKit::NetworkCache::Key,unsigned int,WTF::DefaultHash<WebKit::NetworkCache::Key>,WTF::HashTraits<WebKit::NetworkCache::Key>,WTF::HashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebKit::NetworkCache::Key>,WTF::FastMalloc>::lookup<WTF::IdentityHashTranslator<WTF::HashMap<WebKit::NetworkCache::Key,unsigned int,WTF::DefaultHash<WebKit::NetworkCache::Key>,WTF::HashTraits<WebKit::NetworkCache::Key>,WTF::HashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WebKit::NetworkCache::Key>>,(WTF::ShouldValidateKey)1,WebKit::NetworkCache::Key>(a1, a2);
  if (!result)
  {
    if (*a1)
    {
      return *a1 + 80 * *(*a1 - 4);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t WTF::HashTable<WebKit::NetworkCache::Key,WTF::KeyValuePair<WebKit::NetworkCache::Key,unsigned int>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebKit::NetworkCache::Key,unsigned int>>,WTF::DefaultHash<WebKit::NetworkCache::Key>,WTF::HashMap<WebKit::NetworkCache::Key,unsigned int,WTF::DefaultHash<WebKit::NetworkCache::Key>,WTF::HashTraits<WebKit::NetworkCache::Key>,WTF::HashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebKit::NetworkCache::Key>,WTF::FastMalloc>::lookup<WTF::IdentityHashTranslator<WTF::HashMap<WebKit::NetworkCache::Key,unsigned int,WTF::DefaultHash<WebKit::NetworkCache::Key>,WTF::HashTraits<WebKit::NetworkCache::Key>,WTF::HashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WebKit::NetworkCache::Key>>,(WTF::ShouldValidateKey)1,WebKit::NetworkCache::Key>(uint64_t *a1, uint64_t a2)
{
  WTF::checkHashTableKey<WebKit::NetworkCache::Key,WTF::KeyValuePair<WebKit::NetworkCache::Key,unsigned int>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebKit::NetworkCache::Key,unsigned int>>,WTF::DefaultHash<WebKit::NetworkCache::Key>,WTF::HashMap<WebKit::NetworkCache::Key,unsigned int,WTF::DefaultHash<WebKit::NetworkCache::Key>,WTF::HashTraits<WebKit::NetworkCache::Key>,WTF::HashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebKit::NetworkCache::Key>,WTF::IdentityHashTranslator<WTF::HashMap<WebKit::NetworkCache::Key,unsigned int,WTF::DefaultHash<WebKit::NetworkCache::Key>,WTF::HashTraits<WebKit::NetworkCache::Key>,WTF::HashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WebKit::NetworkCache::Key>>,(WTF::ShouldValidateKey)1,WebKit::NetworkCache::Key>(*(a2 + 16));
  v5 = *a1;
  if (*a1)
  {
    v6 = 0;
    v7 = *(v5 - 8);
    for (i = *(a2 + 32); ; i = v6 + v9)
    {
      v9 = i & v7;
      v10 = v5 + 80 * (i & v7);
      v11 = *(v10 + 16);
      if (!v11)
      {
        break;
      }

      if (v11 != -1 && (WebKit::NetworkCache::Key::operator==(v5 + 80 * v9, a2, v4) & 1) != 0)
      {
        return v10;
      }

      ++v6;
    }
  }

  return 0;
}

uint64_t WTF::checkHashTableKey<WebKit::NetworkCache::Key,WTF::KeyValuePair<WebKit::NetworkCache::Key,unsigned int>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebKit::NetworkCache::Key,unsigned int>>,WTF::DefaultHash<WebKit::NetworkCache::Key>,WTF::HashMap<WebKit::NetworkCache::Key,unsigned int,WTF::DefaultHash<WebKit::NetworkCache::Key>,WTF::HashTraits<WebKit::NetworkCache::Key>,WTF::HashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebKit::NetworkCache::Key>,WTF::IdentityHashTranslator<WTF::HashMap<WebKit::NetworkCache::Key,unsigned int,WTF::DefaultHash<WebKit::NetworkCache::Key>,WTF::HashTraits<WebKit::NetworkCache::Key>,WTF::HashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WebKit::NetworkCache::Key>>,(WTF::ShouldValidateKey)1,WebKit::NetworkCache::Key>(uint64_t result)
{
  if (result == -1 || !result)
  {
    __break(0xC471u);
    JUMPOUT(0x19DDA8D98);
  }

  return result;
}

uint64_t WTF::Vector<WebKit::NetworkCache::SubresourceInfo,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebKit::NetworkCache::SubresourceInfo>(uint64_t a1, unint64_t a2)
{
  v3 = WTF::Vector<WebKit::NetworkCache::SubresourceInfo,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(a1, *(a1 + 12) + 1, a2);
  v4 = *a1 + 176 * *(a1 + 12);
  v5 = *v3;
  *v3 = 0;
  *v4 = v5;
  v6 = *(v3 + 8);
  *(v3 + 8) = 0;
  *(v4 + 8) = v6;
  v7 = *(v3 + 16);
  *(v3 + 16) = 0;
  *(v4 + 16) = v7;
  v8 = *(v3 + 24);
  *(v3 + 24) = 0;
  *(v4 + 24) = v8;
  v9 = *(v3 + 64);
  v10 = *(v3 + 48);
  *(v4 + 32) = *(v3 + 32);
  *(v4 + 48) = v10;
  *(v4 + 64) = v9;
  v11 = *(v3 + 72);
  *(v4 + 87) = *(v3 + 87);
  *(v4 + 72) = v11;
  WTF::URL::URL(v4 + 96, (v3 + 96));
  *(v4 + 144) = 0;
  *(v4 + 136) = 0;
  WTF::VectorBuffer<unsigned char,0ul,WTF::FastMalloc>::adopt(v4 + 136, (v3 + 136));
  *(v4 + 152) = 0;
  *(v4 + 160) = 0;
  v4 += 152;
  result = WTF::VectorBuffer<unsigned char,0ul,WTF::FastMalloc>::adopt(v4, (v3 + 152));
  *(v4 + 16) = *(v3 + 168);
  ++*(a1 + 12);
  return result;
}

uint64_t WebKit::NetworkCache::SubresourceInfo::SubresourceInfo(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  *a2 = 0;
  *a1 = v4;
  v5 = a2[1];
  a2[1] = 0;
  *(a1 + 8) = v5;
  v6 = a2[2];
  a2[2] = 0;
  *(a1 + 16) = v6;
  v7 = a2[3];
  a2[3] = 0;
  *(a1 + 24) = v7;
  v8 = *(a2 + 2);
  v9 = *(a2 + 3);
  *(a1 + 64) = a2[8];
  *(a1 + 32) = v8;
  *(a1 + 48) = v9;
  v10 = *(a2 + 9);
  *(a1 + 87) = *(a2 + 87);
  *(a1 + 72) = v10;
  WTF::URL::URL(a1 + 96, a2 + 12);
  *(a1 + 144) = 0;
  *(a1 + 136) = 0;
  WTF::VectorBuffer<unsigned char,0ul,WTF::FastMalloc>::adopt(a1 + 136, a2 + 17);
  *(a1 + 160) = 0;
  *(a1 + 152) = 0;
  WTF::VectorBuffer<unsigned char,0ul,WTF::FastMalloc>::adopt(a1 + 152, a2 + 19);
  *(a1 + 168) = *(a2 + 168);
  return a1;
}

unint64_t WTF::Vector<WebKit::NetworkCache::SubresourceInfo,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v3 = a3;
  v5 = *a1;
  if (*a1 <= a3 && v5 + 176 * *(a1 + 12) > a3)
  {
    v10 = a3 - v5;
    v11 = *(a1 + 8);
    if (v11 + (v11 >> 1) <= v11 + 1)
    {
      v12 = v11 + 1;
    }

    else
    {
      v12 = v11 + (v11 >> 1);
    }

    if (v12 <= a2)
    {
      v12 = a2;
    }

    if (v12 <= 0x10)
    {
      v13 = 16;
    }

    else
    {
      v13 = v12;
    }

    WTF::Vector<WebKit::NetworkCache::SubresourceInfo,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v13);
    return *a1 + v10;
  }

  else
  {
    v6 = *(a1 + 8);
    if (v6 + (v6 >> 1) <= v6 + 1)
    {
      v7 = v6 + 1;
    }

    else
    {
      v7 = v6 + (v6 >> 1);
    }

    if (v7 <= a2)
    {
      v7 = a2;
    }

    if (v7 <= 0x10)
    {
      v8 = 16;
    }

    else
    {
      v8 = v7;
    }

    WTF::Vector<WebKit::NetworkCache::SubresourceInfo,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v8);
  }

  return v3;
}

void WTF::Vector<WebKit::NetworkCache::SubresourceInfo,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 8) < a2)
  {
    if (a2 >= 0x1745D18)
    {
      __break(0xC471u);
      JUMPOUT(0x19DDA90D4);
    }

    v3 = *a1;
    v4 = (*a1 + 176 * *(a1 + 12));
    v5 = 176 * a2;
    v6 = WTF::fastMalloc((176 * a2));
    *(a1 + 8) = v5 / 0xB0;
    *a1 = v6;
    WTF::VectorMover<false,WebKit::NetworkCache::SubresourceInfo>::move(v3, v4, v6);
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
}

void WTF::VectorMover<false,WebKit::NetworkCache::SubresourceInfo>::move(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v4 = a1;
    v5 = (a3 + 96);
    do
    {
      v6 = *v4;
      *v4 = 0;
      *(v5 - 12) = v6;
      v7 = v4[1];
      v4[1] = 0;
      *(v5 - 11) = v7;
      v8 = v4[2];
      v4[2] = 0;
      *(v5 - 10) = v8;
      v9 = v4[3];
      v4[3] = 0;
      *(v5 - 9) = v9;
      v10 = *(v4 + 2);
      v11 = *(v4 + 3);
      *(v5 - 4) = v4[8];
      *(v5 - 4) = v10;
      *(v5 - 3) = v11;
      v12 = *(v4 + 9);
      *(v5 - 9) = *(v4 + 87);
      *(v5 - 3) = v12;
      WTF::URL::URL(v5, v4 + 12);
      v5[6] = 0;
      *(v13 + 40) = 0;
      WTF::VectorBuffer<unsigned char,0ul,WTF::FastMalloc>::adopt(v13 + 40, v4 + 17);
      v5[7] = 0;
      v5[8] = 0;
      v14 = (v5 + 7);
      WTF::VectorBuffer<unsigned char,0ul,WTF::FastMalloc>::adopt(v14, v4 + 19);
      *(v14 + 16) = *(v4 + 168);
      WebKit::NetworkCache::SubresourceInfo::~SubresourceInfo(v4, v15);
      v5 = (v14 + 120);
      v4 += 22;
    }

    while (v4 != a2);
  }
}

uint64_t WTF::HashTable<WebKit::NetworkCache::Key,WTF::KeyValuePair<WebKit::NetworkCache::Key,unsigned int>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebKit::NetworkCache::Key,unsigned int>>,WTF::DefaultHash<WebKit::NetworkCache::Key>,WTF::HashMap<WebKit::NetworkCache::Key,unsigned int,WTF::DefaultHash<WebKit::NetworkCache::Key>,WTF::HashTraits<WebKit::NetworkCache::Key>,WTF::HashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebKit::NetworkCache::Key>,WTF::FastMalloc>::deallocateTable(uint64_t a1, WTF::StringImpl *a2)
{
  v3 = *(a1 - 4);
  if (v3)
  {
    v4 = (a1 + 16);
    do
    {
      if (*v4 != -1)
      {
        v5 = v4[1];
        v4[1] = 0;
        if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v5, a2);
        }

        v6 = *v4;
        *v4 = 0;
        if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v6, a2);
        }

        v7 = *(v4 - 1);
        *(v4 - 1) = 0;
        if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v7, a2);
        }

        v8 = *(v4 - 2);
        *(v4 - 2) = 0;
        if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v8, a2);
        }
      }

      v4 += 10;
      --v3;
    }

    while (v3);
  }

  return WTF::fastFree((a1 - 16), a2);
}

uint64_t WTF::HashTable<WTF::URL,WTF::KeyValuePair<WTF::URL,std::unique_ptr<WebKit::PrefetchCache::Entry>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::URL,std::unique_ptr<WebKit::PrefetchCache::Entry>>>,WTF::DefaultHash<WTF::URL>,WTF::HashMap<WTF::URL,std::unique_ptr<WebKit::PrefetchCache::Entry>,WTF::DefaultHash<WTF::URL>,WTF::HashTraits<WTF::URL>,WTF::HashTraits<std::unique_ptr<WebKit::PrefetchCache::Entry>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::URL>,WTF::FastMalloc>::deallocateTable(uint64_t a1, WTF::StringImpl *a2)
{
  v3 = *(a1 - 4);
  if (v3)
  {
    v4 = (a1 + 40);
    do
    {
      if (*(v4 - 5) != -1)
      {
        std::unique_ptr<WebKit::PrefetchCache::Entry>::reset[abi:sn200100](v4, 0);
        v5 = *(v4 - 5);
        *(v4 - 5) = 0;
        if (v5)
        {
          if (atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v5, a2);
          }
        }
      }

      v4 += 6;
      --v3;
    }

    while (v3);
  }

  return WTF::fastFree((a1 - 16), a2);
}

WebKit::PrefetchCache::Entry *std::unique_ptr<WebKit::PrefetchCache::Entry>::reset[abi:sn200100](WebKit::PrefetchCache::Entry **a1, WebKit::PrefetchCache::Entry *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    WebKit::PrefetchCache::Entry::~Entry(result);

    return WTF::fastFree(v5, v6);
  }

  return result;
}

void WebKit::PrefetchCache::Entry::~Entry(WebKit::PrefetchCache::Entry *this)
{
  WebCore::ResourceRequest::~ResourceRequest((this + 280));
  v3 = *(this + 34);
  *(this + 34) = 0;
  if (v3 && atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3 + 2);
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 31);
  *(this + 31) = 0;
  if (v4)
  {
    CFRelease(v4);
  }

  WebCore::ResourceResponseBase::~ResourceResponseBase(this, v2);
}

void WebKit::sendSecItemRequest(uint64_t a1, char a2, void *a3, const void *a4)
{
  v66 = a2;
  v8 = WTF::RunLoop::mainSingleton(a1);
  isCurrent = WTF::RunLoop::isCurrent(v8);
  if (isCurrent)
  {
    if (byte_1ED642709)
    {
      if (qword_1ED642720)
      {
        v10 = *(qword_1ED642720 + 8);
        if (v10)
        {
          WebKit::AuxiliaryProcess::protectedParentProcessConnection(v10, &v58);
          v11 = v58;
          LOBYTE(v54) = a2;
          v56 = a3;
          if (a3)
          {
            CFRetain(a3);
          }

          v57 = a4;
          if (a4)
          {
            CFRetain(a4);
          }

          IPC::Connection::createSyncMessageEncoder(0x1021, 0, v74);
          IPC::ArgumentCoder<WebKit::SecItemRequestData,void>::encode(v74[0], &v54);
          v12 = IPC::Connection::sendSyncMessage(v11, v74[1], v74, 0, &v72, INFINITY);
          if (v73)
          {
            if (v73 != 1)
            {
              mpark::throw_bad_variant_access(v12);
            }

            LOBYTE(v59) = v72;
            v65 = 1;
            goto LABEL_69;
          }

          v18 = v72;
          v72 = 0;
          if (*(v18 + 25) == 3194)
          {
            v19 = 11;
LABEL_65:
            LOBYTE(v59) = v19;
            v65 = 1;
            IPC::Decoder::~Decoder(v18);
            bmalloc::api::tzoneFree(v23, v24);
LABEL_66:
            if (!v73)
            {
              v25 = v72;
              v72 = 0;
              if (v25)
              {
                IPC::Decoder::~Decoder(v25);
                bmalloc::api::tzoneFree(v35, v36);
              }
            }

LABEL_69:
            v26 = v74[0];
            v74[0] = 0;
            if (v26)
            {
              IPC::Encoder::~Encoder(v26, v13);
              bmalloc::api::tzoneFree(v30, v31);
              if (!a4)
              {
LABEL_71:
                if (!a3)
                {
                  goto LABEL_72;
                }

LABEL_89:
                CFRelease(a3);
LABEL_72:
                v27 = v58;
                v58 = 0;
                if (v27)
                {
                  WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v27);
                }

                if (v65)
                {
                  LOBYTE(v75) = 0;
LABEL_81:
                  *a1 = 0;
                  *(a1 + 32) = 0;
                  goto LABEL_82;
                }

                LOBYTE(v75) = 0;
                v79 = 0;
                if ((v64 & 1) == 0)
                {
                  goto LABEL_81;
                }

                std::__optional_storage_base<WebKit::SecItemResponseData,false>::__construct[abi:sn200100]<WebKit::SecItemResponseData>(&v75, &v60);
                v28 = v79;
                *a1 = 0;
                *(a1 + 32) = 0;
                if ((v28 & 1) == 0)
                {
                  goto LABEL_82;
                }

                *a1 = v75;
                *(a1 + 8) = 0;
                v29 = (a1 + 8);
                *(a1 + 24) = -1;
                if (v78 > 1u)
                {
                  if (v78 != 2)
                  {
                    *(a1 + 32) = 1;
                    goto LABEL_119;
                  }

                  v37 = v76;
                  *v29 = v76;
                  if (v37)
                  {
                    CFRetain(v37);
                  }
                }

                else
                {
                  if (!v78)
                  {
                    *v29 = 0;
                    goto LABEL_116;
                  }

                  v40 = HIDWORD(v77);
                  *v29 = 0;
                  *(a1 + 16) = 0;
                  *(a1 + 20) = v40;
                  if (v40)
                  {
                    if (!(v40 >> 29))
                    {
                      v41 = WTF::fastMalloc((8 * v40));
                      *(a1 + 16) = v40;
                      *(a1 + 8) = v41;
                      if (HIDWORD(v77))
                      {
                        v42 = v41;
                        v43 = v76;
                        v44 = 8 * HIDWORD(v77);
                        do
                        {
                          v45 = *v43;
                          *v42 = *v43;
                          if (v45)
                          {
                            CFRetain(v45);
                          }

                          ++v42;
                          ++v43;
                          v44 -= 8;
                        }

                        while (v44);
                      }

                      goto LABEL_116;
                    }

                    __break(0xC471u);
LABEL_148:
                    JUMPOUT(0x19DDA9B98);
                  }
                }

LABEL_116:
                *(a1 + 24) = v78;
                v46 = v79;
                *(a1 + 32) = 1;
                if ((v46 & 1) == 0)
                {
LABEL_82:
                  if (!v65)
                  {
                    if (v64 == 1)
                    {
                      if (v63 > 1u)
                      {
                        if (v63 == 2)
                        {
                          v32 = v61;
                          v61 = 0;
                          if (v32)
                          {
                            CFRelease(v32);
                          }
                        }
                      }

                      else if (v63)
                      {
                        WTF::Vector<WTF::RetainPtr<__SecCertificate *>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v61, v13);
                      }

                      v63 = -1;
                    }

                    v33 = v59;
                    v59 = 0;
                    if (v33)
                    {
                      IPC::Decoder::~Decoder(v33);
                      bmalloc::api::tzoneFree(v38, v39);
                    }
                  }

                  return;
                }

LABEL_119:
                if (v78 > 1u)
                {
                  if (v78 == 2)
                  {
                    v47 = v76;
                    v76 = 0;
                    if (v47)
                    {
                      CFRelease(v47);
                    }
                  }
                }

                else if (v78)
                {
                  WTF::Vector<WTF::RetainPtr<__SecCertificate *>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v76, v13);
                }

                goto LABEL_82;
              }
            }

            else if (!a4)
            {
              goto LABEL_71;
            }

            CFRelease(a4);
            if (!a3)
            {
              goto LABEL_72;
            }

            goto LABEL_89;
          }

          LOBYTE(cf) = 0;
          v71 = 0;
          IPC::Decoder::decode<std::tuple<std::optional<WebKit::SecItemResponseData>>>(&v59, v18);
          if (v71 == v64)
          {
            if (v71)
            {
              if (v70 == v63)
              {
                if (v70)
                {
                  LODWORD(cf) = v59;
                  if (v69 != 255 || v62 != 255)
                  {
                    if (v62 == 255)
                    {
                      if (v69 > 1u)
                      {
                        if (v69 == 2)
                        {
                          v53 = v68[0];
                          v68[0] = 0;
                          if (v53)
                          {
                            CFRelease(v53);
                          }
                        }
                      }

                      else if (v69)
                      {
                        WTF::Vector<WTF::RetainPtr<__SecCertificate *>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v68, v13);
                      }

                      v69 = -1;
                    }

                    else
                    {
                      _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_10assignmentINS0_6traitsIJDnN3WTF6VectorINS6_9RetainPtrIP16__SecCertificateEELm0ENS6_15CrashOnOverflowELm16ENS6_10FastMallocEEENS8_IPKvEEEEEE14generic_assignINS0_15move_assignmentISI_LNS0_5TraitE1EEEEEvOT_EUlRSO_OT0_E_JRSJ_SN_EEEDcmSP_DpOT0_(v62, v68, v68, &v60);
                    }
                  }
                }
              }

              else if (v70)
              {
                if (v69 > 1u)
                {
                  if (v69 == 2)
                  {
                    v51 = v68[0];
                    v68[0] = 0;
                    if (v51)
                    {
                      CFRelease(v51);
                    }
                  }
                }

                else if (v69)
                {
                  WTF::Vector<WTF::RetainPtr<__SecCertificate *>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v68, v13);
                }

                v69 = -1;
                v70 = 0;
              }

              else
              {
                std::__optional_storage_base<WebKit::SecItemResponseData,false>::__construct[abi:sn200100]<WebKit::SecItemResponseData>(&cf, &v59);
              }
            }
          }

          else if (v71)
          {
            if (v70 == 1)
            {
              if (v69 > 1u)
              {
                if (v69 == 2)
                {
                  v20 = v68[0];
                  v68[0] = 0;
                  if (v20)
                  {
                    CFRelease(v20);
                  }
                }
              }

              else if (v69)
              {
                WTF::Vector<WTF::RetainPtr<__SecCertificate *>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v68, v13);
              }

              v69 = -1;
            }

            v71 = 0;
          }

          else
          {
            LOBYTE(cf) = 0;
            v70 = 0;
            if (v63 == 1)
            {
              std::__optional_storage_base<WebKit::SecItemResponseData,false>::__construct[abi:sn200100]<WebKit::SecItemResponseData>(&cf, &v59);
            }

            v71 = 1;
          }

          if (v64 == 1 && v63 == 1)
          {
            if (v62 > 1u)
            {
              if (v62 == 2)
              {
                v21 = v60;
                v60 = 0;
                if (v21)
                {
                  CFRelease(v21);
                }
              }
            }

            else if (v62)
            {
              WTF::Vector<WTF::RetainPtr<__SecCertificate *>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v60, v13);
            }
          }

          if (v71 != 1)
          {
            v19 = 14;
            goto LABEL_65;
          }

          v75 = v18;
          LOBYTE(v76) = 0;
          v80 = 0;
          if (v70)
          {
            std::__optional_storage_base<WebKit::SecItemResponseData,false>::__construct[abi:sn200100]<WebKit::SecItemResponseData>(&v76, &cf);
            v22 = v75;
            v75 = 0;
            v59 = v22;
            LOBYTE(v60) = 0;
            v64 = 0;
            if (v80)
            {
              std::__optional_storage_base<WebKit::SecItemResponseData,false>::__construct[abi:sn200100]<WebKit::SecItemResponseData>(&v60, &v76);
              v65 = 0;
              if (v80)
              {
                if (v79 > 1u)
                {
                  if (v79 == 2)
                  {
                    v52 = v77;
                    v77 = 0;
                    if (v52)
                    {
                      CFRelease(v52);
                    }
                  }
                }

                else if (v79)
                {
                  WTF::Vector<WTF::RetainPtr<__SecCertificate *>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v77, v13);
                }

                v79 = -1;
              }

              goto LABEL_99;
            }
          }

          else
          {
            v75 = 0;
            v59 = v18;
            LOBYTE(v60) = 0;
            v64 = 0;
          }

          v65 = 0;
LABEL_99:
          v34 = v75;
          v75 = 0;
          if (v34)
          {
            IPC::Decoder::~Decoder(v34);
            bmalloc::api::tzoneFree(v49, v50);
          }

          if ((v71 & 1) != 0 && v70 == 1)
          {
            if (v69 > 1u)
            {
              if (v69 == 2)
              {
                v48 = v68[0];
                v68[0] = 0;
                if (v48)
                {
                  CFRelease(v48);
                }
              }
            }

            else if (v69)
            {
              WTF::Vector<WTF::RetainPtr<__SecCertificate *>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v68, v13);
            }
          }

          goto LABEL_66;
        }
      }
    }

    else
    {
      qword_1ED642720 = 0;
      byte_1ED642709 = 1;
    }

    __break(0xC471u);
    goto LABEL_148;
  }

  v75 = a3;
  if (a3)
  {
    isCurrent = CFRetain(a3);
  }

  cf = a4;
  if (a4)
  {
    isCurrent = CFRetain(a4);
  }

  *a1 = 0;
  *(a1 + 32) = 0;
  v54 = 0;
  v55 = 0;
  WTF::RunLoop::mainSingleton(isCurrent);
  v14 = WTF::fastMalloc(0x30);
  *v14 = &unk_1F1108E98;
  *(v14 + 1) = &v54;
  *(v14 + 2) = &v66;
  *(v14 + 3) = &v75;
  *(v14 + 4) = &cf;
  *(v14 + 5) = a1;
  v59 = v14;
  WTF::RunLoop::dispatch();
  v15 = v59;
  v59 = 0;
  if (v15)
  {
    (*(*v15 + 8))(v15);
  }

  v59 = 0x7FF0000000000000;
  LODWORD(v60) = 0;
  WTF::BinarySemaphore::waitUntil();
  v16 = cf;
  cf = 0;
  if (v16)
  {
    CFRelease(v16);
  }

  v17 = v75;
  v75 = 0;
  if (v17)
  {
    CFRelease(v17);
  }
}

void IPC::Decoder::decode<std::tuple<std::optional<WebKit::SecItemResponseData>>>(WTF *a1, IPC::Decoder *a2)
{
  v4 = *(a2 + 2);
  v5 = *a2;
  v6 = *(a2 + 1);
  if (v6 <= &v4[-v5])
  {
    *a2 = 0;
    *(a2 + 1) = 0;
    v22 = *(a2 + 3);
    if (v22)
    {
      if (v6)
      {
        (*(*v22 + 16))(v22);
        v5 = *a2;
        v6 = *(a2 + 1);
        goto LABEL_40;
      }
    }

    else
    {
      v6 = 0;
    }

    v5 = 0;
LABEL_40:
    *a2 = 0;
    *(a2 + 1) = 0;
    v23 = *(a2 + 3);
    if (v23)
    {
      if (v6)
      {
        (*(*v23 + 16))(v23, v5);
        v5 = *a2;
        v6 = *(a2 + 1);
        goto LABEL_43;
      }
    }

    else
    {
      v6 = 0;
    }

    v5 = 0;
LABEL_43:
    *a2 = 0;
    *(a2 + 1) = 0;
    v24 = *(a2 + 3);
    if (v24 && v6)
    {
      (*(*v24 + 16))(v24, v5);
    }

LABEL_30:
    v19 = *a2;
    v20 = *(a2 + 1);
    *a2 = 0;
    *(a2 + 1) = 0;
    v21 = *(a2 + 3);
    if (v21 && v20)
    {
      (*(*v21 + 16))(v21, v19);
    }

    *a1 = 0;
    *(a1 + 40) = 0;
    goto LABEL_22;
  }

  *(a2 + 2) = v4 + 1;
  if (!v4)
  {
    goto LABEL_40;
  }

  v7 = *v4;
  if (v7 >= 2)
  {
    goto LABEL_43;
  }

  if (!v7)
  {
    *a1 = 0;
    *(a1 + 32) = 0;
    *(a1 + 40) = 1;
    goto LABEL_22;
  }

  IPC::ArgumentCoder<WebKit::SecItemResponseData,void>::decode(a2, &v30);
  if ((v34 & 1) == 0)
  {
    v16 = *a2;
    v17 = *(a2 + 1);
    *a2 = 0;
    *(a2 + 1) = 0;
    v18 = *(a2 + 3);
    if (!v18)
    {
      goto LABEL_30;
    }

    if (!v17)
    {
      goto LABEL_30;
    }

    (*(*v18 + 16))(v18, v16);
    if ((v34 & 1) == 0)
    {
      goto LABEL_30;
    }
  }

  v25 = v30;
  LOBYTE(cf[0]) = 0;
  v27 = -1;
  if (v33 > 1u)
  {
    if (v33 == 2)
    {
      cf[0] = v31;
      v27 = 2;
    }
  }

  else
  {
    if (v33)
    {
      cf[0] = v31;
      v9 = v32;
      v31 = 0;
      v32 = 0;
      cf[1] = v9;
      v27 = 1;
      v28 = 1;
      v29 = 1;
      WTF::Vector<WTF::RetainPtr<__SecCertificate *>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v31, v8);
      goto LABEL_14;
    }

    cf[0] = 0;
    v27 = 0;
  }

  v28 = 1;
  v29 = 1;
LABEL_14:
  *a1 = 0;
  *(a1 + 32) = 0;
  std::__optional_storage_base<WebKit::SecItemResponseData,false>::__construct[abi:sn200100]<WebKit::SecItemResponseData>(a1, &v25);
  v11 = v29;
  *(a1 + 40) = 1;
  if (v11 & 1) != 0 && (v28)
  {
    if (v27 > 1u)
    {
      if (v27 == 2)
      {
        v12 = cf[0];
        cf[0] = 0;
        if (v12)
        {
          CFRelease(v12);
        }
      }
    }

    else if (v27)
    {
      WTF::Vector<WTF::RetainPtr<__SecCertificate *>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(cf, v10);
    }
  }

LABEL_22:
  if ((*(a1 + 40) & 1) == 0)
  {
    v13 = *(a2 + 1);
    *a2 = 0;
    *(a2 + 1) = 0;
    v14 = *(a2 + 3);
    if (v14)
    {
      if (v13)
      {
        v15 = *(*v14 + 16);

        v15();
      }
    }
  }
}

WTF *std::__optional_storage_base<WebKit::SecItemResponseData,false>::__construct[abi:sn200100]<WebKit::SecItemResponseData>(WTF *result, uint64_t a2)
{
  if (result)
  {
    v3 = result;
    *result = *a2;
    *(result + 8) = 0;
    result = (result + 8);
    *(v3 + 24) = -1;
    LODWORD(v4) = *(a2 + 24);
    if (v4 > 1)
    {
      if (v4 != 2)
      {
LABEL_9:
        *(v3 + 32) = 1;
        return result;
      }

      v4 = *(a2 + 8);
      *(a2 + 8) = 0;
      *result = v4;
      LOBYTE(v4) = 2;
    }

    else if (*(a2 + 24))
    {
      *result = 0;
      *(result + 1) = 0;
      result = WTF::VectorBuffer<WebCore::HTTPHeaderField,0ul,WTF::FastMalloc>::adopt(result, (a2 + 8));
      LOBYTE(v4) = *(a2 + 24);
    }

    else
    {
      *result = 0;
    }

    *(v3 + 24) = v4;
    goto LABEL_9;
  }

  __break(1u);
  return result;
}

void _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_10assignmentINS0_6traitsIJDnN3WTF6VectorINS6_9RetainPtrIP16__SecCertificateEELm0ENS6_15CrashOnOverflowELm16ENS6_10FastMallocEEENS8_IPKvEEEEEE14generic_assignINS0_15move_assignmentISI_LNS0_5TraitE1EEEEEvOT_EUlRSO_OT0_E_JRSJ_SN_EEEDcmSP_DpOT0_(uint64_t a1, const void **a2, uint64_t a3, _DWORD *a4)
{
  v7 = *(a2 + 16);
  if (a1 == 2)
  {
    if (*(a2 + 16) > 1u)
    {
      if (v7 != 255)
      {
        v16 = *a4;
        *a4 = 0;
        v17 = *a3;
        *a3 = v16;
        if (v17)
        {

          CFRelease(v17);
        }

        return;
      }
    }

    else if (*(a2 + 16))
    {
      WTF::Vector<WTF::RetainPtr<__SecCertificate *>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(a2, a2);
    }

    v14 = *a4;
    *a4 = 0;
    *a2 = v14;
    v13 = 2;
    goto LABEL_25;
  }

  if (a1 == 1)
  {
    if (*(a2 + 16) > 1u)
    {
      if (v7 == 2)
      {
        v12 = *a2;
        *a2 = 0;
        if (v12)
        {
          CFRelease(v12);
        }
      }
    }

    else if (*(a2 + 16))
    {
      v8 = *(a3 + 12);
      if (v8)
      {
        v9 = *a3;
        v10 = 8 * v8;
        do
        {
          v11 = *v9;
          *v9 = 0;
          if (v11)
          {
            CFRelease(v11);
          }

          ++v9;
          v10 -= 8;
        }

        while (v10);
      }

      WTF::VectorBuffer<WebCore::HTTPHeaderField,0ul,WTF::FastMalloc>::adopt(a3, a4);
      return;
    }

    *(a2 + 16) = -1;
    *a2 = 0;
    a2[1] = 0;
    WTF::VectorBuffer<WebCore::HTTPHeaderField,0ul,WTF::FastMalloc>::adopt(a2, a4);
    v13 = 1;
LABEL_25:
    *(a2 + 16) = v13;
    return;
  }

  if (*(a2 + 16) > 1u)
  {
    if (v7 == 2)
    {
      v15 = *a2;
      *a2 = 0;
      if (v15)
      {
        CFRelease(v15);
      }
    }
  }

  else
  {
    if (!*(a2 + 16))
    {
      *a3 = 0;
      return;
    }

    WTF::Vector<WTF::RetainPtr<__SecCertificate *>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(a2, a2);
  }

  *a2 = 0;
  *(a2 + 16) = 0;
}