uint64_t WebKit::computeSHA1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8[1] = *MEMORY[0x1E69E9840];
  v8[0] = a4;
  WTF::SHA1::SHA1(v7);
  MEMORY[0x19EB01E70](v7, v8, 8);
  MEMORY[0x19EB01E70](v7, a2, a3);
  return WTF::SHA1::computeHash();
}

WTF::StringImpl *WebKit::CacheStorageDiskStore::readAllRecordInfos(uint64_t a1, uint64_t *a2)
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 48);
  v20 = a1;
  v21 = a1;
  atomic_fetch_add((a1 + 8), 1u);
  WebKit::CacheStorageDiskStore::recordsDirectoryPath(&v18);
  WTF::String::isolatedCopy();
  WTF::String::isolatedCopy();
  v5 = *(a1 + 32);
  v6 = *a2;
  *a2 = 0;
  v24 = v5;
  v25 = v6;
  v7 = WTF::fastMalloc(0x38);
  v8 = v20;
  *v7 = &unk_1F110A3D0;
  v7[1] = v8;
  v7[2] = v21;
  v9 = v22;
  v21 = 0;
  v22 = 0;
  v7[3] = v9;
  v7[4] = v23;
  v7[5] = v24;
  v10 = v25;
  v23 = 0;
  v25 = 0;
  v7[6] = v10;
  v19 = v7;
  (*(*v4 + 48))(v4, &v19);
  v12 = v19;
  v19 = 0;
  if (v12)
  {
    (*(*v12 + 8))(v12);
  }

  v13 = v25;
  v25 = 0;
  if (v13)
  {
    (*(*v13 + 8))(v13);
  }

  v14 = v23;
  v23 = 0;
  if (v14 && atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v14, v11);
  }

  v15 = v22;
  v22 = 0;
  if (v15 && atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v15, v11);
  }

  v16 = v21;
  v21 = 0;
  if (v16 && atomic_fetch_add(v16 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v16 + 2);
    (*(*v16 + 8))(v16);
  }

  result = v18;
  v18 = 0;
  if (result)
  {
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v11);
    }
  }

  return result;
}

WTF::StringImpl *WebKit::CacheStorageDiskStore::readRecords(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v69 = *MEMORY[0x1E69E9840];
  v37 = *(a1 + 48);
  v40 = a1;
  v41 = a1;
  atomic_fetch_add((a1 + 8), 1u);
  WebKit::CacheStorageDiskStore::recordsDirectoryPath(&v39);
  result = WTF::String::isolatedCopy();
  v43 = 0;
  v44 = 0;
  v5 = *(a2 + 12);
  if (v5)
  {
    if (v5 >= 0x199999A)
    {
      __break(0xC471u);
      return result;
    }

    v6 = 160 * v5;
    v7 = WTF::fastMalloc((160 * v5));
    LODWORD(v44) = v6 / 0xA0;
    v43 = v7;
    v8 = *(a2 + 12);
    if (v8)
    {
      v9 = *a2;
      v10 = &v9[20 * v8];
      do
      {
        WTF::String::isolatedCopy();
        WTF::String::isolatedCopy();
        WTF::String::isolatedCopy();
        WTF::String::isolatedCopy();
        v67 = *(v9 + 2);
        *v68 = *(v9 + 12);
        *&v68[4] = *(v9 + 52);
        *&v68[20] = *(v9 + 17);
        v11 = v46;
        v12 = v50;
        v13 = v51;
        v14 = v49;
        v15 = v9[9];
        v38 = *(v9 + 5);
        v16 = v9[12];
        WTF::URL::isolatedCopy();
        v17 = *(v9 + 144);
        v18 = v9 + 19;
        WTF::CrossThreadCopierBase<false,false,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>::copy(v18, &v51);
        v52 = v11;
        v53 = v13;
        v54 = v12;
        v55 = v14;
        v56 = v67;
        v57 = *v68;
        v58 = *&v68[16];
        v59 = v15;
        v60 = v38;
        v61 = v16;
        v62 = v46;
        v63 = v47;
        v64 = v48;
        v65 = v17;
        v66 = v51;
        WTF::Vector<WebKit::CacheStorageRecordInformation,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::unsafeAppendWithoutCapacityCheck(&v43, &v52);
        if (v66)
        {
          WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::String>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v66, v19);
        }

        v20 = v62;
        v62 = 0;
        if (v20 && atomic_fetch_add_explicit(v20, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v20, v19);
        }

        v21 = v55;
        v55 = 0;
        if (v21 && atomic_fetch_add_explicit(v21, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v21, v19);
        }

        v22 = v54;
        v54 = 0;
        if (v22 && atomic_fetch_add_explicit(v22, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v22, v19);
        }

        v23 = v53;
        v53 = 0;
        if (v23 && atomic_fetch_add_explicit(v23, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v23, v19);
        }

        v24 = v52;
        v52 = 0;
        if (v24 && atomic_fetch_add_explicit(v24, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v24, v19);
        }

        v9 = v18 + 1;
      }

      while (v9 != v10);
    }
  }

  v25 = *a3;
  *a3 = 0;
  v45 = v25;
  v26 = WTF::fastMalloc(0x38);
  *v26 = &unk_1F110A420;
  *(v26 + 1) = v40;
  *(v26 + 2) = v41;
  v27 = v42;
  v41 = 0;
  v42 = 0;
  *(v26 + 3) = v27;
  *(v26 + 4) = v43;
  v28 = v44;
  v43 = 0;
  v44 = 0;
  *(v26 + 5) = v28;
  v29 = v45;
  v45 = 0;
  *(v26 + 6) = v29;
  v52 = v26;
  (*(*v37 + 48))(v37, &v52);
  v31 = v52;
  v52 = 0;
  if (v31)
  {
    (*(*v31 + 8))(v31);
  }

  v32 = v45;
  v45 = 0;
  if (v32)
  {
    (*(*v32 + 8))(v32);
  }

  WTF::Vector<WebKit::CacheStorageRecordInformation,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v43, v30);
  v34 = v42;
  v42 = 0;
  if (v34 && atomic_fetch_add_explicit(v34, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v34, v33);
  }

  v35 = v41;
  v41 = 0;
  if (v35 && atomic_fetch_add(v35 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v35 + 2);
    (*(*v35 + 8))(v35);
  }

  result = v39;
  v39 = 0;
  if (result)
  {
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v33);
    }
  }

  return result;
}

uint64_t WebKit::CacheStorageDiskStore::deleteRecords(uint64_t result, uint64_t *a2, uint64_t *a3)
{
  v4 = result;
  v48[1] = *MEMORY[0x1E69E9840];
  v34 = 0;
  v35 = 0;
  v5 = *(a2 + 3);
  if (v5)
  {
    if (v5 >> 29)
    {
      __break(0xC471u);
      return result;
    }

    v7 = WTF::fastMalloc((8 * v5));
    LODWORD(v35) = v5;
    v34 = v7;
    v8 = *(a2 + 3);
    if (v8)
    {
      v9 = v7;
      v10 = 0;
      v11 = *a2;
      v12 = v11 + 160 * v8;
      do
      {
        WebKit::NetworkCache::Key::Key(&v37, v11);
        v13 = *(v11 + 72);
        v43 = *(v11 + 88);
        v42 = v13;
        v14 = *(v11 + 104);
        if (v14)
        {
          atomic_fetch_add_explicit(v14, 2u, memory_order_relaxed);
        }

        v44 = v14;
        v15 = *(v11 + 128);
        v45 = *(v11 + 112);
        v46 = v15;
        v47 = *(v11 + 144);
        WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::String>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::HashTable(v48, (v11 + 152));
        WebKit::CacheStorageDiskStore::recordFilePath(&v36, *(v4 + 24), &v37);
        v17 = v36;
        v36 = 0;
        *(v9 + 8 * v10) = v17;
        v18 = v36;
        if (v36 && atomic_fetch_add_explicit(v36, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v18, v16);
        }

        if (v48[0])
        {
          WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::String>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v48[0], v16);
        }

        v19 = v44;
        v44 = 0;
        if (v19 && atomic_fetch_add_explicit(v19, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v19, v16);
        }

        v20 = v40;
        v40 = 0;
        if (v20 && atomic_fetch_add_explicit(v20, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v20, v16);
        }

        v21 = v39;
        v39 = 0;
        if (v21 && atomic_fetch_add_explicit(v21, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v21, v16);
        }

        v22 = v38;
        v38 = 0;
        if (v22 && atomic_fetch_add_explicit(v22, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v22, v16);
        }

        v23 = v37;
        v37 = 0;
        if (v23 && atomic_fetch_add_explicit(v23, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v23, v16);
        }

        v11 += 160;
        ++v10;
      }

      while (v11 != v12);
      HIDWORD(v35) = v10;
    }
  }

  v24 = *(v4 + 48);
  v37 = v4;
  v38 = v4;
  atomic_fetch_add((v4 + 8), 1u);
  WTF::CrossThreadCopierBase<false,false,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>::copy(&v34, &v39);
  v25 = *a3;
  *a3 = 0;
  v41 = v25;
  v26 = WTF::fastMalloc(0x30);
  *v26 = &unk_1F110A470;
  *(v26 + 1) = v37;
  *(v26 + 2) = v38;
  v27 = v39;
  v38 = 0;
  v39 = 0;
  *(v26 + 3) = v27;
  *(v26 + 4) = v40;
  v28 = v41;
  v40 = 0;
  v41 = 0;
  *(v26 + 5) = v28;
  v36 = v26;
  (*(*v24 + 48))(v24, &v36);
  v30 = v36;
  v36 = 0;
  if (v30)
  {
    (*(*v30 + 8))(v30);
  }

  v31 = v41;
  v41 = 0;
  if (v31)
  {
    (*(*v31 + 8))(v31);
  }

  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v39, v29);
  v33 = v38;
  v38 = 0;
  if (v33)
  {
    if (atomic_fetch_add(v33 + 2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v33 + 2);
      (*(*v33 + 8))(v33);
    }
  }

  return WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v34, v32);
}

uint64_t WebKit::CacheStorageDiskStore::computeRealBodySizeForStorage(uint64_t a1)
{
  WebKit::encodeRecordBody(a1, &v5);
  v2 = v7;
  v3 = v5;
  if (v5)
  {
    v5 = 0;
    v6 = 0;
    WTF::fastFree(v3, v1);
  }

  return v2;
}

uint64_t WebKit::encodeRecordBody@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v3 = *(result + 8);
  if (v3 == 255)
  {
    v4 = -1;
  }

  else
  {
    v4 = *(result + 8);
  }

  if (v4 == 2)
  {
    if (v3 != 2)
    {
      goto LABEL_14;
    }

    v6 = WebCore::SharedBuffer::span(*result);

    return WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector<unsigned char const,18446744073709551615ul>(a2, v6, v5);
  }

  else
  {
    if (v4 == 1)
    {
      if (v3 != 1)
      {
LABEL_14:
        mpark::throw_bad_variant_access(result);
      }
    }

    else if (*(result + 8))
    {
      goto LABEL_14;
    }

    *a2 = 0;
    a2[1] = 0;
  }

  return result;
}

uint64_t WebKit::CacheStorageDiskStore::writeRecords(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v69 = v3;
  v4 = v1;
  v90 = *MEMORY[0x1E69E9840];
  v74 = 0;
  v75 = 0;
  v73 = 0uLL;
  v72 = 0uLL;
  v5 = *(v2 + 12);
  if (v5)
  {
    v6 = *v2;
    v7 = *v2 + 752 * v5;
    do
    {
      WebKit::CacheStorageDiskStore::recordFilePath(&v76, *(v4 + 24), v6);
      LODWORD(v9) = HIDWORD(v75);
      if (HIDWORD(v75) == v75)
      {
        v44 = WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(&v74, HIDWORD(v75) + 1, &v76);
        v9 = HIDWORD(v75);
        v45 = v74;
        v46 = *v44;
        *v44 = 0;
        *(v45 + 8 * v9) = v46;
      }

      else
      {
        v10 = v76;
        v76 = 0;
        *(v74 + 8 * HIDWORD(v75)) = v10;
      }

      HIDWORD(v75) = v9 + 1;
      v11 = v76;
      v76 = 0;
      if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v11, v8);
      }

      WebKit::encodeRecordBody(v6 + 736, &__src);
      v86[0] = 0;
      v86[1] = 0;
      v87 = 0;
      v12 = WebKit::computeSHA1(v86, __src, HIDWORD(__n), *(v4 + 32));
      v13 = HIDWORD(__n);
      v14 = WTF::pageSize(v12);
      WebKit::NetworkCache::Key::Key(&v82, v6);
      WTF::Persistence::Encoder::Encoder(&v76);
      WTF::Persistence::Encoder::operator<<();
      WTF::Persistence::Encoder::operator<<();
      WTF::Persistence::Encoder::operator<<();
      WTF::Persistence::Coder<WebCore::ResourceRequest>::encodeForPersistence();
      WTF::Persistence::Encoder::operator<<();
      WTF::Persistence::Encoder::operator<<();
      WTF::Persistence::Encoder::operator<<();
      WTF::Persistence::Encoder::operator<<();
      WTF::Persistence::Encoder::operator<<();
      WTF::Persistence::Encoder::operator<<();
      WTF::Persistence::Coder<WTF::String>::encodeForPersistence();
      WTF::Persistence::Encoder::operator<<();
      WTF::Persistence::Coder<WTF::String>::encodeForPersistence();
      WTF::Persistence::Encoder::operator<<();
      WTF::Persistence::Encoder::operator<<();
      WTF::Persistence::Coder<WebCore::ResourceResponseData>::encodeForPersistence();
      WTF::Persistence::Encoder::operator<<();
      WTF::Persistence::Encoder::encodeChecksum(&v76);
      v15 = DWORD1(v77);
      if (DWORD1(v77))
      {
        v16 = v76;
        v17 = WTF::fastMalloc(DWORD1(v77));
        v18 = v17;
        v19 = 0;
        do
        {
          *(v17 + v19) = *(v16 + v19);
          ++v19;
        }

        while (v15 != v19);
      }

      else
      {
        v18 = 0;
      }

      WTF::Persistence::Encoder::~Encoder(&v76);
      v20 = *(v4 + 32);
      WTF::Persistence::Encoder::Encoder(&v76);
      WTF::Persistence::Encoder::operator<<();
      WTF::Persistence::Coder<WebKit::NetworkCache::Key>::encodeForPersistence();
      v88 = 0;
      WTF::Persistence::Coder<WTF::WallTime>::encodeForPersistence();
      WebKit::computeSHA1(&v88, v18, v15, v20);
      WTF::Persistence::Coder<std::array<unsigned char,20ul>>::encodeForPersistence();
      WTF::Persistence::Encoder::operator<<();
      WTF::Persistence::Coder<std::array<unsigned char,20ul>>::encodeForPersistence();
      WTF::Persistence::Encoder::operator<<();
      WTF::Persistence::Encoder::operator<<();
      WTF::Persistence::Encoder::encodeChecksum(&v76);
      v21 = v76;
      v22 = DWORD1(v77);
      v88 = 0;
      v89 = 0;
      if (DWORD1(v77))
      {
        if (DWORD1(v77) <= 0x10uLL)
        {
          v23 = 16;
        }

        else
        {
          v23 = DWORD1(v77);
        }

        WTF::Vector<WebCore::AuthenticatorTransport,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(&v88, v23);
        if (v22 < HIDWORD(v89))
        {
          goto LABEL_84;
        }

        memcpy(v88 + HIDWORD(v89), v21, v22);
        HIDWORD(v89) = v22;
      }

      if (v15)
      {
        v24 = v22 + v15;
        if (v22 + v15 > v89)
        {
          if (v89 + (v89 >> 1) <= v89 + 1)
          {
            v25 = v89 + 1;
          }

          else
          {
            v25 = v89 + (v89 >> 1);
          }

          if (v25 <= v24)
          {
            v25 = v22 + v15;
          }

          if (v25 <= 0x10)
          {
            v26 = 16;
          }

          else
          {
            v26 = v25;
          }

          WTF::Vector<WebCore::AuthenticatorTransport,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(&v88, v26);
          v22 = HIDWORD(v89);
          if (v24 < HIDWORD(v89))
          {
            __break(0xC471u);
            JUMPOUT(0x19DDC5D00);
          }
        }

        memcpy(v88 + v22, v18, v15);
        v22 = v24;
        HIDWORD(v89) = v24;
      }

      if (v14 >= v13)
      {
        v27 = HIDWORD(__n);
        if (HIDWORD(__n))
        {
          v28 = __src;
          v29 = HIDWORD(__n) + v22;
          if (v29 > v89)
          {
            if (v89 + (v89 >> 1) <= v89 + 1)
            {
              v30 = v89 + 1;
            }

            else
            {
              v30 = v89 + (v89 >> 1);
            }

            if (v30 <= v29)
            {
              v30 = HIDWORD(__n) + v22;
            }

            v31 = (v30 <= 0x10 ? 16 : v30);
            WTF::Vector<WebCore::AuthenticatorTransport,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(&v88, v31);
            v22 = HIDWORD(v89);
            if (v29 < HIDWORD(v89))
            {
LABEL_84:
              __break(0xC471u);
              JUMPOUT(0x19DDC5CF8);
            }
          }

          memcpy(v88 + v22, v28, v27);
          HIDWORD(v89) = v29;
        }
      }

      WTF::Persistence::Encoder::~Encoder(&v76);
      if (HIDWORD(v73) == DWORD2(v73))
      {
        WTF::Vector<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(&v73, &v88);
      }

      else
      {
        v33 = v73 + 16 * HIDWORD(v73);
        *v33 = 0;
        *(v33 + 8) = 0;
        v34 = v88;
        v88 = 0;
        *v33 = v34;
        LODWORD(v34) = v89;
        LODWORD(v89) = 0;
        *(v33 + 8) = v34;
        LODWORD(v34) = HIDWORD(v89);
        HIDWORD(v89) = 0;
        *(v33 + 12) = v34;
        ++HIDWORD(v73);
      }

      if (v14 >= v13)
      {
        v35 = __src;
        if (__src)
        {
          __src = 0;
          LODWORD(__n) = 0;
          WTF::fastFree(v35, v32);
        }

        __src = 0;
        __n = 0;
      }

      if (HIDWORD(v72) == DWORD2(v72))
      {
        WTF::Vector<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(&v72, &__src);
      }

      else
      {
        v36 = v72 + 16 * HIDWORD(v72);
        *v36 = 0;
        *(v36 + 8) = 0;
        v37 = __src;
        __src = 0;
        *v36 = v37;
        LODWORD(v37) = __n;
        LODWORD(__n) = 0;
        *(v36 + 8) = v37;
        LODWORD(v37) = HIDWORD(__n);
        HIDWORD(__n) = 0;
        *(v36 + 12) = v37;
        ++HIDWORD(v72);
      }

      v38 = v88;
      if (v88)
      {
        v88 = 0;
        LODWORD(v89) = 0;
        WTF::fastFree(v38, v32);
        if (!v18)
        {
          goto LABEL_54;
        }
      }

      else if (!v18)
      {
        goto LABEL_54;
      }

      WTF::fastFree(v18, v32);
LABEL_54:
      v39 = v85;
      v85 = 0;
      if (v39 && atomic_fetch_add_explicit(v39, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v39, v32);
      }

      v40 = v84;
      v84 = 0;
      if (v40 && atomic_fetch_add_explicit(v40, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v40, v32);
      }

      v41 = v83;
      v83 = 0;
      if (v41 && atomic_fetch_add_explicit(v41, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v41, v32);
      }

      v42 = v82;
      v82 = 0;
      if (v42 && atomic_fetch_add_explicit(v42, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v42, v32);
      }

      v43 = __src;
      if (__src)
      {
        __src = 0;
        LODWORD(__n) = 0;
        WTF::fastFree(v43, v32);
      }

      v6 = (v6 + 752);
    }

    while (v6 != v7);
  }

  v47 = *(v4 + 48);
  v76 = v4;
  *&v77 = v4;
  atomic_fetch_add((v4 + 8), 1u);
  WTF::CrossThreadCopierBase<false,false,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>::copy(&v74, &v77 + 1);
  v48 = v73;
  *&v49 = 0;
  v68 = v49;
  v73 = v49;
  v79 = v48;
  v50 = v72;
  v72 = 0u;
  v80 = v50;
  v51 = *v69;
  *v69 = 0;
  v81 = v51;
  v52 = WTF::fastMalloc(0x50);
  *v52 = &unk_1F110A4C0;
  *(v52 + 8) = v76;
  *(v52 + 16) = v77;
  v53 = *(&v77 + 1);
  v77 = 0uLL;
  *(v52 + 24) = v53;
  v54 = v78;
  v78 = 0;
  *(v52 + 32) = v54;
  v55 = v79;
  v79 = v68;
  *(v52 + 40) = v55;
  v56 = v80;
  v80 = v68;
  *(v52 + 56) = v56;
  v57 = v81;
  v81 = 0;
  *(v52 + 72) = v57;
  v82 = v52;
  (*(*v47 + 48))(v47, &v82);
  v59 = v82;
  v82 = 0;
  if (v59)
  {
    (*(*v59 + 8))(v59);
  }

  v60 = v81;
  v81 = 0;
  if (v60)
  {
    (*(*v60 + 8))(v60);
  }

  WTF::Vector<WebCore::PlatformTimeRanges,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v80, v58);
  WTF::Vector<WebCore::PlatformTimeRanges,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v79, v61);
  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v77 + 8, v62);
  v64 = v77;
  *&v77 = 0;
  if (v64 && atomic_fetch_add(v64 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v64 + 2);
    (*(*v64 + 8))(v64);
  }

  WTF::Vector<WebCore::PlatformTimeRanges,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v72, v63);
  WTF::Vector<WebCore::PlatformTimeRanges,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v73, v65);
  return WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v74, v66);
}

void WebKit::CacheStorageManager::cacheStorageOriginDirectory(const WTF::String **this@<X0>, const WTF::String *a2@<X1>, atomic_uint **a3@<X8>)
{
  v22[1] = *MEMORY[0x1E69E9840];
  v6 = *this;
  if (*this && *(v6 + 1))
  {
    WebKit::saltFilePath(v20, v6);
    v8 = v20[0];
    if (v20[0])
    {
      if (*(v20[0] + 1))
      {
        Salt = WTF::FileSystemImpl::readOrMakeSalt(v20, v7);
        v8 = v20[0];
        if ((v7 & 1) == 0)
        {
          Salt = 0;
        }

        v22[0] = Salt;
        v20[0] = 0;
        if (!v8)
        {
          goto LABEL_14;
        }
      }

      else
      {
        v22[0] = 0;
        v20[0] = 0;
      }

      if (atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v8, v7);
      }
    }

    else
    {
      v22[0] = 0;
    }

LABEL_14:
    WebCore::SecurityOriginData::toString(&v19, a2);
    WebCore::SecurityOriginData::toString(&v18, (a2 + 32));
    v16 = 0;
    v17 = 0;
    WebKit::NetworkCache::Key::Key(v20, &v19, &v18, &v17, &v16, v22);
    v12 = v18;
    v18 = 0;
    if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v12, v11);
    }

    v13 = v19;
    v19 = 0;
    if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v13, v11);
    }

    WebKit::NetworkCache::Key::hashAsString(&v21, &v19);
    v14 = v19;
    if (v19)
    {
      WTF::FileSystemImpl::pathByAppendingComponent();
      if (atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v14, v15);
      }
    }

    else
    {
      WTF::FileSystemImpl::pathByAppendingComponent();
    }

    WebKit::NetworkCache::Key::~Key(v20, v15);
    return;
  }

  v10 = *MEMORY[0x1E696EBA8];
  if (*MEMORY[0x1E696EBA8])
  {
    atomic_fetch_add_explicit(v10, 2u, memory_order_relaxed);
  }

  *a3 = v10;
}

atomic_uint **WebKit::saltFilePath(atomic_uint **this, const WTF::String *a2)
{
  if (a2 && *(a2 + 1))
  {
    return WTF::FileSystemImpl::pathByAppendingComponent();
  }

  v2 = *MEMORY[0x1E696EBA8];
  if (*MEMORY[0x1E696EBA8])
  {
    atomic_fetch_add_explicit(v2, 2u, memory_order_relaxed);
  }

  *this = v2;
  return this;
}

WTF::StringImpl *WebKit::CacheStorageManager::copySaltFileToOriginDirectory(const WTF::String **this, const WTF::String *a2, const WTF::String *a3)
{
  result = WTF::FileSystemImpl::fileExists(a2, a2);
  if (result)
  {
    WebKit::saltFilePath(&v11, *a2);
    if ((WTF::FileSystemImpl::fileExists(&v11, v6) & 1) == 0)
    {
      WebKit::saltFilePath(&v10, *this);
      WTF::FileSystemImpl::hardLinkOrCopyFile(&v10, &v11, v8);
      v9 = v10;
      v10 = 0;
      if (v9)
      {
        if (atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v9, v7);
        }
      }
    }

    result = v11;
    v11 = 0;
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

uint64_t WebKit::CacheStorageManager::originsOfCacheStorageData@<X0>(WebKit::CacheStorageManager *this@<X0>, const WTF::String *a2@<X1>, uint64_t *a3@<X8>)
{
  v31 = *MEMORY[0x1E69E9840];
  *a3 = 0;
  WTF::FileSystemImpl::listDirectory(&v22, this, a2);
  if (v23)
  {
    v8 = v22;
    v9 = 8 * v23;
    do
    {
      v10 = *this;
      if (*this)
      {
        v11 = *(v10 + 16);
        v10 = *(v10 + 4);
        v12 = ((v11 >> 2) & 1) << 32;
      }

      else
      {
        v12 = 0x100000000;
      }

      v24 = 0;
      v25 = 0;
      LOBYTE(v13) = 1;
      v26 = 1;
      v14 = *v8;
      if (*v8)
      {
        v15 = *(v14 + 16);
        v16 = *(v14 + 8);
        LODWORD(v14) = *(v14 + 4);
        v24 = v16;
        v13 = (v15 >> 2) & 1;
      }

      v25 = v14;
      v3 = v10 | v3 & 0xFFFFFF0000000000 | v12;
      v26 = v13;
      v27 = "origin";
      v28 = 6;
      v29 = 1;
      WTF::FileSystemImpl::pathByAppendingComponents();
      WebCore::StorageUtilities::readOriginFromFile(&v24, &v21, v17);
      if (v30 == 1)
      {
        WTF::HashTable<WebCore::ClientOrigin,WebCore::ClientOrigin,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::FastMalloc>::add<(WTF::ShouldValidateKey)1>(a3, &v24, &v20);
      }

      std::optional<WebCore::ClientOrigin>::~optional(&v24, v18);
      v19 = v21;
      v21 = 0;
      if (v19 && atomic_fetch_add_explicit(v19, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v19, v6);
      }

      ++v8;
      v9 -= 8;
    }

    while (v9);
  }

  return WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v22, v6);
}

WTF::StringImpl *WebKit::CacheStorageManager::cacheStorageSize(atomic_uint **this, const WTF::String *a2)
{
  if (!*this || !(*this)[1])
  {
    goto LABEL_14;
  }

  WTF::FileSystemImpl::pathByAppendingComponent();
  if (WTF::FileSystemImpl::fileExists(&v39, v5))
  {
    WTF::FileSystemImpl::readEntireFile(v42, &v39, v6);
    if (v43 == 1)
    {
      v7 = WTF::parseInteger<unsigned long long>(v42[0], HIDWORD(v42[1]) | 0x100000000, 0xAu, 1);
      v8 = v6;
      v2 = v7 & 0xFFFFFFFFFFFFFF00;
      v3 = v7;
      if (v43)
      {
        v9 = v42[0];
        if (v42[0])
        {
          v42[0] = 0;
          LODWORD(v42[1]) = 0;
          WTF::fastFree(v9, v6);
        }
      }
    }

    else
    {
      v2 = 0;
      v8 = 0;
      v3 = 0;
    }

    v10 = v8 ^ 1;
  }

  else
  {
    v3 = 0;
    v2 = 0;
    v10 = 1;
  }

  v11 = v39;
  v39 = 0;
  if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v11, v6);
    if (v10)
    {
      goto LABEL_14;
    }

    return (v2 | v3);
  }

  if ((v10 & 1) == 0)
  {
    return (v2 | v3);
  }

LABEL_14:
  *v42 = 0u;
  v43 = 0u;
  result = WTF::Deque<WTF::String,0ul>::expandCapacity(v42);
  v13 = v42[1];
  v14 = DWORD2(v43);
  if (v42[1] >= DWORD2(v43))
  {
    goto LABEL_69;
  }

  v15 = v43;
  v16 = *this;
  if (*this)
  {
    atomic_fetch_add_explicit(v16, 2u, memory_order_relaxed);
  }

  *(v15 + v13) = v16;
  if (v13 == (v14 - 1))
  {
    v17 = 0;
  }

  else
  {
    v17 = (v13 + 1);
  }

  v42[1] = v17;
  if (v42[0] == v17)
  {
    v18 = 0;
    goto LABEL_63;
  }

  v18 = 0;
  v17 = v42[0];
  do
  {
    if (v17 >= v14)
    {
      goto LABEL_69;
    }

    v19 = (v15 + 8 * v17);
    v20 = *v19;
    *v19 = 0;
    v41 = v20;
    WTF::VectorDestructor<true,WTF::String>::destruct(v19, (v19 + 1));
    if (v42[0] == (v14 - 1))
    {
      v22 = 0;
    }

    else
    {
      v22 = (v42[0] + 1);
    }

    v42[0] = v22;
    if ((WTF::FileSystemImpl::fileType(&v41, v21) & 0x1FFFFFFFFLL) == 0x100000001)
    {
      WTF::FileSystemImpl::listDirectory(&v39, &v41, v23);
      if (v40)
      {
        v25 = v39;
        v26 = 8 * v40;
        while ((MEMORY[0x19EB01EF0](*v25, "Blobs", 5) & 1) != 0)
        {
LABEL_49:
          v25 = (v25 + 8);
          v26 -= 8;
          if (!v26)
          {
            goto LABEL_57;
          }
        }

        v27 = v41;
        if (v41)
        {
          v27 = *(v41 + 1);
          v28 = ((*(v41 + 4) >> 2) & 1) << 32;
        }

        else
        {
          v28 = 0x100000000;
        }

        v29 = *v25;
        if (*v25)
        {
          v30 = *(v29 + 16);
          v29 = *(v29 + 4);
          v31 = ((v30 >> 2) & 1) << 32;
        }

        else
        {
          v31 = 0x100000000;
        }

        v2 = v27 | v2 & 0xFFFFFF0000000000 | v28;
        v3 = v29 | v3 & 0xFFFFFF0000000000 | v31;
        result = WTF::FileSystemImpl::pathByAppendingComponent();
        v32 = v42[1];
        if (v42[0])
        {
          if ((v42[1] + 1) != v42[0])
          {
            goto LABEL_44;
          }
        }

        else if (v42[1])
        {
          if (v42[1] != (DWORD2(v43) - 1))
          {
            goto LABEL_44;
          }
        }

        else if (DWORD2(v43))
        {
          v32 = 0;
LABEL_44:
          v14 = DWORD2(v43);
          if (v32 >= DWORD2(v43))
          {
            goto LABEL_69;
          }

          v15 = v43;
          *(v43 + 8 * v32) = v38;
          if (v32 == v14 - 1)
          {
            v33 = 0;
          }

          else
          {
            v33 = (v32 + 1);
          }

          v42[1] = v33;
          v38 = 0;
          goto LABEL_49;
        }

        result = WTF::Deque<WTF::String,0ul>::expandCapacity(v42);
        v32 = v42[1];
        goto LABEL_44;
      }

LABEL_57:
      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v39, v24);
    }

    else
    {
      v34 = WTF::FileSystemImpl::fileSize(&v41, v23);
      if (v35)
      {
        v36 = v34;
      }

      else
      {
        v36 = 0;
      }

      v18 += v36;
    }

    result = v41;
    v41 = 0;
    if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      result = WTF::StringImpl::destroy(result, v35);
    }

    v17 = v42[0];
  }

  while (v42[0] != v42[1]);
  v14 = DWORD2(v43);
LABEL_63:
  if (v17 > v14)
  {
LABEL_69:
    __break(1u);
    return result;
  }

  WTF::VectorDestructor<true,WTF::String>::destruct((v15 + 8 * v17), (v15 + 8 * v17));
  if (v15)
  {
    *&v43 = 0;
    DWORD2(v43) = 0;
    WTF::fastFree(v15, v37);
  }

  return v18;
}

uint64_t WebKit::CacheStorageManager::hasCacheList(WebKit::CacheStorageManager *this, const WTF::String *a2)
{
  WTF::FileSystemImpl::pathByAppendingComponent();
  v4 = WTF::FileSystemImpl::fileExists(&v7, v2);
  v5 = v7;
  v7 = 0;
  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, v3);
  }

  return v4;
}

uint64_t WebKit::CacheStorageManager::operator new(WebKit::CacheStorageManager *this, void *a2)
{
  if (this == 168 && WebKit::CacheStorageManager::s_heapRef)
  {
    return bmalloc::api::tzoneAllocateNonCompact(WebKit::CacheStorageManager::s_heapRef, a2);
  }

  else
  {
    return WebKit::CacheStorageManager::operatorNewSlow(this);
  }
}

uint64_t WebKit::CacheStorageManager::CacheStorageManager(uint64_t a1, atomic_uint **a2, atomic_uint *a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 12) = 0;
  *(a1 + 16) = atomic_fetch_add(&WebKit::nextUpdateNumber(void)::currentUpdateNumber, 1uLL) + 1;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  v11 = *a2;
  if (v11)
  {
    atomic_fetch_add_explicit(v11, 2u, memory_order_relaxed);
  }

  *(a1 + 56) = v11;
  WebKit::saltFilePath(&v21, v11);
  v13 = v21;
  if (!v21)
  {
    *(a1 + 64) = 0;
    goto LABEL_11;
  }

  if (!*(v21 + 1))
  {
    goto LABEL_20;
  }

  Salt = WTF::FileSystemImpl::readOrMakeSalt(&v21, v12);
  v13 = v21;
  if ((v12 & 1) == 0)
  {
    Salt = 0;
  }

  *(a1 + 64) = Salt;
  v21 = 0;
  if (!v13)
  {
    goto LABEL_11;
  }

  while (1)
  {
    if (atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v13, v12);
    }

LABEL_11:
    atomic_fetch_add(a3, 1u);
    *(a1 + 72) = a3;
    v15 = *a5;
    *a5 = 0;
    *(a1 + 80) = v15;
    *(a1 + 88) = 0u;
    *(a1 + 104) = 0u;
    *(a1 + 120) = 0;
    v16 = *a6;
    *a6 = 0;
    *(a1 + 128) = v16;
    *(a1 + 136) = 0u;
    *(a1 + 152) = 0u;
    v17 = *(a1 + 56);
    if (!v17 || !*(v17 + 4) || *(a4 + 64) != 1)
    {
      break;
    }

    v13 = WTF::FileSystemImpl::pathByAppendingComponent();
    if (*(a4 + 64))
    {
      WebCore::StorageUtilities::writeOriginToFile();
      v19 = v21;
      v21 = 0;
      if (v19 && atomic_fetch_add_explicit(v19, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v19, v18);
      }

      return a1;
    }

    __break(1u);
LABEL_20:
    *(a1 + 64) = 0;
    v21 = 0;
  }

  return a1;
}

void WebKit::CacheStorageManager::~CacheStorageManager(WebKit::CacheStorageManager *this, WTF::StringImpl *a2)
{
  WebKit::CacheStorageManager::reset(this, a2);
  v4 = *(this + 18);
  v5 = *(this + 19);
  v6 = *(this + 40);
  v7 = *(this + 17);
  v8 = v4 - v7;
  if (v4 < v7)
  {
    if (v4 <= v6)
    {
      if (v4)
      {
        v9 = 16 * v4;
        v10 = (v5 + 8);
        do
        {
          v11 = *v10;
          *v10 = 0;
          if (v11)
          {
            (*(*v11 + 8))(v11);
          }

          v10 += 2;
          v9 -= 16;
        }

        while (v9);
        v7 = *(this + 17);
      }

      if (v7 <= v6)
      {
        if (v7 != v6)
        {
          v12 = 16 * v6 - 16 * v7;
          v13 = (v5 + 16 * v7 + 8);
          do
          {
            v14 = *v13;
            *v13 = 0;
            if (v14)
            {
              (*(*v14 + 8))(v14);
            }

            v13 += 2;
            v12 -= 16;
          }

          while (v12);
        }

        goto LABEL_26;
      }
    }

LABEL_58:
    __break(1u);
LABEL_59:
    __break(0xC471u);
    return;
  }

  v15 = v6 - v7;
  if (v6 < v7)
  {
    goto LABEL_58;
  }

  if (v8 == -1)
  {
    v8 = v6 - v7;
    if (!v15)
    {
      goto LABEL_26;
    }
  }

  else
  {
    if (v15 < v8)
    {
      goto LABEL_58;
    }

    if (!v8)
    {
      goto LABEL_26;
    }
  }

  v16 = 16 * v8;
  v17 = (v5 + 16 * v7 + 8);
  do
  {
    v18 = *v17;
    *v17 = 0;
    if (v18)
    {
      (*(*v18 + 8))(v18);
    }

    v17 += 2;
    v16 -= 16;
  }

  while (v16);
LABEL_26:
  v19 = *(this + 19);
  if (v19)
  {
    *(this + 19) = 0;
    *(this + 40) = 0;
    WTF::fastFree(v19, v3);
  }

  v20 = *(this + 16);
  *(this + 16) = 0;
  if (v20)
  {
    (*(*v20 + 40))(v20);
  }

  v21 = *(this + 15);
  if (v21)
  {
    WTF::fastFree((v21 - 16), v3);
  }

  v22 = *(this + 14);
  if (v22)
  {
    WTF::HashTable<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::Vector<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::Vector<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashMap<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::Vector<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WTF::Vector<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::FastMalloc>::deallocateTable(v22, v3);
  }

  v23 = *(this + 13);
  if (v23)
  {
    WTF::HashTable<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::Ref<WebKit::CacheStorageCache,WTF::RawPtrTraits<WebKit::CacheStorageCache>,WTF::DefaultRefDerefTraits<WebKit::CacheStorageCache>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::Ref<WebKit::CacheStorageCache,WTF::RawPtrTraits<WebKit::CacheStorageCache>,WTF::DefaultRefDerefTraits<WebKit::CacheStorageCache>>>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashMap<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::Ref<WebKit::CacheStorageCache,WTF::RawPtrTraits<WebKit::CacheStorageCache>,WTF::DefaultRefDerefTraits<WebKit::CacheStorageCache>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WTF::Ref<WebKit::CacheStorageCache,WTF::RawPtrTraits<WebKit::CacheStorageCache>,WTF::DefaultRefDerefTraits<WebKit::CacheStorageCache>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::FastMalloc>::deallocateTable(v23, v3);
  }

  v24 = *(this + 25);
  if (v24)
  {
    v25 = *(this + 11);
    v26 = 8 * v24;
    do
    {
      v27 = *v25;
      *v25 = 0;
      if (v27)
      {
        WTF::RefCounted<WebKit::CacheStorageCache>::deref((v27 + 8), v3);
      }

      ++v25;
      v26 -= 8;
    }

    while (v26);
  }

  v28 = *(this + 11);
  if (v28)
  {
    *(this + 11) = 0;
    *(this + 24) = 0;
    WTF::fastFree(v28, v3);
  }

  v29 = *(this + 10);
  *(this + 10) = 0;
  if (v29)
  {
    (*(*v29 + 8))(v29);
  }

  v30 = *(this + 9);
  *(this + 9) = 0;
  if (v30)
  {
    WTF::ThreadSafeRefCounted<WebKit::CacheStorageRegistry,(WTF::DestructionThread)0>::deref(v30, v3);
  }

  v31 = *(this + 7);
  *(this + 7) = 0;
  if (v31 && atomic_fetch_add_explicit(v31, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v31, v3);
  }

  v32 = *(this + 6);
  if (v32)
  {
    WTF::fastFree((v32 - 16), v3);
  }

  if (*(this + 2) != 1)
  {
    goto LABEL_59;
  }

  if (*this)
  {
    *(*this + 8) = 0;
    v33 = *this;
    *this = 0;
    if (v33)
    {
      if (atomic_fetch_add(v33, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v33);
        WTF::fastFree(v33, v3);
      }
    }
  }
}

uint64_t WebKit::CacheStorageManager::reset(uint64_t this, WTF::StringImpl *a2)
{
  v2 = this;
  v3 = *(this + 136);
  for (i = *(this + 144); v3 != i; i = *(v2 + 144))
  {
    v5 = *(v2 + 160);
    if (v3 >= v5)
    {
      __break(1u);
      return this;
    }

    v6 = *(v2 + 152) + 16 * v3;
    v7 = *(v6 + 8);
    *(v6 + 8) = 0;
    if (v3 == v5 - 1)
    {
      v8 = 0;
    }

    else
    {
      v8 = v3 + 1;
    }

    *(v2 + 136) = v8;
    (*(*v7 + 16))(v7, 0);
    this = (*(*v7 + 8))(v7);
    v3 = *(v2 + 136);
  }

  v9 = *(v2 + 100);
  if (v9)
  {
    v10 = *(v2 + 88);
    v11 = 8 * v9;
    do
    {
      v12 = *v10++;
      ++*(v12 + 8);
      WebKit::CacheStorageRegistry::unregisterCache(*(v2 + 72), *(v12 + 16), *(v12 + 24));
      WTF::RefCounted<WebKit::CacheStorageCache>::deref((v12 + 8), v13);
      v11 -= 8;
    }

    while (v11);
  }

  if (*(v2 + 96))
  {
    v14 = *(v2 + 100);
    v15 = *(v2 + 88);
    if (v14)
    {
      v16 = 8 * v14;
      do
      {
        v17 = *v15;
        *v15 = 0;
        if (v17)
        {
          WTF::RefCounted<WebKit::CacheStorageCache>::deref((v17 + 8), a2);
        }

        v15 = (v15 + 8);
        v16 -= 8;
      }

      while (v16);
      *(v2 + 100) = 0;
      v15 = *(v2 + 88);
    }

    if (v15)
    {
      *(v2 + 88) = 0;
      *(v2 + 96) = 0;
      WTF::fastFree(v15, a2);
    }
  }

  v18 = *(v2 + 104);
  v19 = WTF::HashTable<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::UniqueRef<WebKit::LayerProperties>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::UniqueRef<WebKit::LayerProperties>>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashMap<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::UniqueRef<WebKit::LayerProperties>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WTF::UniqueRef<WebKit::LayerProperties>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::FastMalloc>::begin(v18);
  v21 = v19;
  v22 = v20;
  if (v18)
  {
    v23 = (v18 + 24 * *(v18 - 4));
  }

  else
  {
    v23 = 0;
  }

  if (v23 != v19)
  {
    do
    {
      WebKit::CacheStorageRegistry::unregisterCache(*(v2 + 72), *v21, v21[1]);
      do
      {
        v21 += 3;
        if (v21 == v22)
        {
          break;
        }
      }

      while (*v21 == 0 || v21[1] == -1);
    }

    while (v21 != v23);
    v18 = *(v2 + 104);
  }

  if (v18)
  {
    *(v2 + 104) = 0;
    WTF::HashTable<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::Ref<WebKit::CacheStorageCache,WTF::RawPtrTraits<WebKit::CacheStorageCache>,WTF::DefaultRefDerefTraits<WebKit::CacheStorageCache>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::Ref<WebKit::CacheStorageCache,WTF::RawPtrTraits<WebKit::CacheStorageCache>,WTF::DefaultRefDerefTraits<WebKit::CacheStorageCache>>>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashMap<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::Ref<WebKit::CacheStorageCache,WTF::RawPtrTraits<WebKit::CacheStorageCache>,WTF::DefaultRefDerefTraits<WebKit::CacheStorageCache>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WTF::Ref<WebKit::CacheStorageCache,WTF::RawPtrTraits<WebKit::CacheStorageCache>,WTF::DefaultRefDerefTraits<WebKit::CacheStorageCache>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::FastMalloc>::deallocateTable(v18, v20);
  }

  this = *(v2 + 112);
  if (this)
  {
    *(v2 + 112) = 0;
    this = WTF::HashTable<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::Vector<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::Vector<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashMap<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::Vector<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WTF::Vector<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::FastMalloc>::deallocateTable(this, v20);
  }

  if (*(v2 + 32) == 1)
  {
    *(v2 + 32) = 0;
  }

  v25 = *(v2 + 48);
  *(v2 + 40) = 0;
  *(v2 + 48) = 0;
  if (v25)
  {
    this = WTF::fastFree((v25 - 16), v20);
  }

  *(v2 + 12) = 0;
  *(v2 + 16) = atomic_fetch_add(&WebKit::nextUpdateNumber(void)::currentUpdateNumber, 1uLL) + 1;
  return this;
}

uint64_t WebKit::CacheStorageRegistry::unregisterCache(uint64_t result, uint64_t a2, uint64_t a3)
{
  v19 = a2;
  v20 = a3;
  v3 = (result + 8);
  v4 = *(result + 8);
  if (!v4)
  {
    return result;
  }

  if (!(a2 | a3) || a3 == -1)
  {
    __break(0xC471u);
    JUMPOUT(0x19DDC6E78);
  }

  v5 = *(v4 - 8);
  result = WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>::hash(&v19);
  v7 = result & v5;
  v8 = (v4 + 24 * (result & v5));
  v9 = *v8;
  v10 = v8[1];
  if (*v8 == v19 && v10 == v20)
  {
LABEL_15:
    v14 = *v3;
    if (!*v3)
    {
LABEL_20:
      if (v14 != v8)
      {
        *v8 = -1;
        v8[1] = -1;
        result = v8[2];
        v8[2] = 0;
        if (result && atomic_fetch_add(result, 0xFFFFFFFF) == 1)
        {
          atomic_store(1u, result);
          result = WTF::fastFree(result, v6);
        }

        v15 = *v3;
        v16 = vadd_s32(*(*v3 - 16), 0xFFFFFFFF00000001);
        *(v15 - 16) = v16;
        v17 = *(v15 - 4);
        if (6 * v16.i32[1] < v17 && v17 >= 9)
        {
          return WTF::HashTable<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::WeakPtr<WebKit::CacheStorageCache,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::WeakPtr<WebKit::CacheStorageCache,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashMap<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::WeakPtr<WebKit::CacheStorageCache,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WTF::WeakPtr<WebKit::CacheStorageCache,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::FastMalloc>::rehash(v3, v17 >> 1, 0);
        }
      }

      return result;
    }

LABEL_19:
    v14 += 24 * *(v14 - 4);
    if (v14 == v8)
    {
      return result;
    }

    goto LABEL_20;
  }

  v12 = 1;
  while (v9 | v10)
  {
    v7 = (v7 + v12) & v5;
    v8 = (v4 + 24 * v7);
    v9 = *v8;
    v10 = v8[1];
    ++v12;
    if (*v8 == v19 && v10 == v20)
    {
      goto LABEL_15;
    }
  }

  v14 = *v3;
  if (*v3)
  {
    v8 = (v14 + 24 * *(v14 - 4));
    goto LABEL_19;
  }

  return result;
}

uint64_t WebKit::CacheStorageManager::initializeCaches(WebKit::CacheStorageManager *this, void *a2)
{
  if (*(this + 12))
  {
    return 1;
  }

  v5 = (this + 56);
  v4 = *(this + 7);
  v35 = 0;
  v36 = 0;
  if (!v4 || !*(v4 + 4))
  {
    v26 = 0;
    v27 = 0;
    v28 = 1;
    WTF::Vector<std::pair<WTF::String,WTF::String>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v35, a2);
    *(this + 12) = 1;
LABEL_25:
    WTF::Vector<std::pair<WTF::String,WTF::String>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v26, v8);
    return 1;
  }

  WTF::FileSystemImpl::pathByAppendingComponent();
  if (WTF::FileSystemImpl::fileExists(&v34, v6))
  {
    WTF::FileSystemImpl::readEntireFile(&v32, &v34, v7);
    if (v33 == 1)
    {
      WTF::Persistence::Decoder::Decoder();
      LOBYTE(v29) = 0;
      v30 = 0;
      WTF::Persistence::Decoder::operator>>();
      v10 = 0;
      LOBYTE(v26) = 0;
      v28 = 0;
      WTF::Persistence::Decoder::~Decoder(v31);
      if (v33)
      {
        v25 = v32;
        if (v32)
        {
          *&v32 = 0;
          DWORD2(v32) = 0;
          WTF::fastFree(v25, v7);
        }
      }
    }

    else
    {
      v10 = 0;
      LOBYTE(v26) = 0;
      v28 = 0;
    }
  }

  else
  {
    v26 = v35;
    v9 = v36;
    v2 = HIDWORD(v36);
    v35 = 0;
    v36 = 0;
    v27 = __PAIR64__(v2, v9);
    v10 = 1;
    v28 = 1;
  }

  v11 = v34;
  v34 = 0;
  if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v11, v7);
  }

  WTF::Vector<std::pair<WTF::String,WTF::String>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v35, v7);
  if (v10)
  {
    *(this + 12) = 1;
    if (v2)
    {
      v12 = v26;
      v13 = v26 + 16 * v2;
      do
      {
        v14 = *(this + 16);
        (*(*v14 + 32))(v14);
        v31[0] = v14;
        v16 = WebKit::CacheStorageCache::operator new(0x60, v15);
        v17 = v12 + 1;
        v35 = WebKit::CacheStorageCache::CacheStorageCache(v16, this, v12, v12 + 1, v5, v31);
        if (v31[0])
        {
          (*(*v31[0] + 40))(v31[0]);
          v16 = v35;
        }

        v18 = *(this + 9);
        v32 = *(v16 + 16);
        WTF::HashMap<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::WeakPtr<WebKit::CacheStorageCache,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WTF::WeakPtr<WebKit::CacheStorageCache,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<WebKit::CacheStorageCache&>(v31, (v18 + 8), &v32, v16);
        v19 = *(this + 25);
        if (v19 == *(this + 24))
        {
          v20 = WTF::Vector<WTF::Ref<WebCore::ApplePayError,WTF::RawPtrTraits<WebCore::ApplePayError>,WTF::DefaultRefDerefTraits<WebCore::ApplePayError>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(this + 88, v19 + 1, &v35);
          v19 = *(this + 25);
          v21 = *(this + 11);
          v22 = *v20;
          *v20 = 0;
        }

        else
        {
          v21 = *(this + 11);
          v22 = v35;
          v35 = 0;
        }

        *(v21 + 8 * v19) = v22;
        *(this + 25) = v19 + 1;
        v23 = v35;
        v35 = 0;
        if (v23)
        {
          WTF::RefCounted<WebKit::CacheStorageCache>::deref(v23 + 2, v8);
        }

        v12 += 2;
      }

      while (v17 + 1 != v13);
    }

    goto LABEL_25;
  }

  return 0;
}

uint64_t WebKit::CacheStorageManager::openCache(uint64_t a1, const WTF::StringImpl **a2, uint64_t *a3)
{
  result = WebKit::CacheStorageManager::initializeCaches(a1, a2);
  if (result)
  {
    if (*(a1 + 100))
    {
      v8 = 0;
      while (1)
      {
        result = WTF::equal(*(*(*(a1 + 88) + 8 * v8) + 64), *a2, v7);
        if (result)
        {
          break;
        }

        if (++v8 >= *(a1 + 100))
        {
          goto LABEL_6;
        }
      }

      if (v8 >= *(a1 + 100))
      {
        __break(0xC471u);
      }

      else
      {
        v23 = *(*(a1 + 88) + 8 * v8);
        v24 = (v23 + 8);
        ++*(v23 + 8);
        WebKit::CacheStorageCache::open(v23, a3);

        return WTF::RefCounted<WebKit::CacheStorageCache>::deref(v24, v25);
      }
    }

    else
    {
LABEL_6:
      WTF::createVersion4UUIDString(v27, result);
      v9 = *(a1 + 128);
      (*(*v9 + 32))(v9);
      *&v29 = v9;
      v11 = WebKit::CacheStorageCache::operator new(0x60, v10);
      v26 = WebKit::CacheStorageCache::CacheStorageCache(v11, a1, a2, v27, (a1 + 56), &v29);
      if (v29)
      {
        (*(*v29 + 40))(v29);
      }

      v13 = v27[0];
      v27[0] = 0;
      if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v13, v12);
      }

      v14 = *(a1 + 100);
      if (v14 == *(a1 + 96))
      {
        v15 = WTF::Vector<WTF::Ref<WebCore::ApplePayError,WTF::RawPtrTraits<WebCore::ApplePayError>,WTF::DefaultRefDerefTraits<WebCore::ApplePayError>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(a1 + 88, v14 + 1, &v26);
        v14 = *(a1 + 100);
        v16 = *(a1 + 88);
        v17 = *v15;
        *(v17 + 8) = *(*v15 + 8) + 1;
        *(v16 + 8 * v14) = v17;
      }

      else
      {
        v19 = *(a1 + 88);
        ++*(v11 + 8);
        *(v19 + 8 * v14) = v11;
      }

      *(a1 + 100) = v14 + 1;
      WebKit::writeCachesList(*(a1 + 56));
      *(a1 + 16) = atomic_fetch_add(&WebKit::nextUpdateNumber(void)::currentUpdateNumber, 1uLL) + 1;
      v20 = *(a1 + 72);
      v29 = *(v26 + 1);
      WTF::HashMap<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::WeakPtr<WebKit::CacheStorageCache,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WTF::WeakPtr<WebKit::CacheStorageCache,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<WebKit::CacheStorageCache&>(v27, (v20 + 8), &v29, v26);
      result = WebKit::CacheStorageCache::open(v26, a3);
      v22 = v26;
      v26 = 0;
      if (v22)
      {
        return WTF::RefCounted<WebKit::CacheStorageCache>::deref(v22 + 2, v21);
      }
    }
  }

  else
  {
    LOBYTE(v27[0]) = 1;
    v28 = 1;
    v18 = *a3;
    *a3 = 0;
    (*(*v18 + 16))(v18, v27);
    return (*(*v18 + 8))(v18);
  }

  return result;
}

WTF::StringImpl *WebKit::writeCachesList(uint64_t a1)
{
  result = MEMORY[0x1EEE9AC00](a1);
  if (result && *(result + 1))
  {
    v5 = v4;
    v6 = v3;
    v7 = v2;
    WTF::FileSystemImpl::pathByAppendingComponent();
    if (*(v7 + 12))
    {
      WTF::FileSystemImpl::parentPath(&v15, &v16, v8);
      WTF::FileSystemImpl::makeAllDirectories(&v15, v9);
      v11 = v15;
      v15 = 0;
      if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v11, v10);
      }

      WTF::Persistence::Encoder::Encoder(&v15);
      WTF::Persistence::Encoder::operator<<();
      v12 = *(v7 + 12);
      if (v12)
      {
        for (i = 0; i < v12; ++i)
        {
          if ((v5 & (v6 == i)) == 0)
          {
            result = WTF::Persistence::Coder<WTF::String>::encodeForPersistence();
            if (i >= *(v7 + 12))
            {
              __break(0xC471u);
              return result;
            }

            WTF::Persistence::Coder<WTF::String>::encodeForPersistence();
            v12 = *(v7 + 12);
          }
        }
      }

      WTF::FileSystemImpl::overwriteEntireFile();
      WTF::Persistence::Encoder::~Encoder(&v15);
    }

    else
    {
      WTF::FileSystemImpl::deleteFile(&v16, v8);
    }

    result = v16;
    v16 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        return WTF::StringImpl::destroy(result, v14);
      }
    }
  }

  return result;
}

uint64_t WebKit::CacheStorageManager::removeCache(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  *&v37 = a2;
  *(&v37 + 1) = a3;
  v5 = *(a1 + 100);
  if (!v5)
  {
LABEL_8:
    v36 = 0;
    goto LABEL_38;
  }

  v7 = 0;
  v8 = *(a1 + 88);
  v9 = -v5;
  v10 = 8;
  while (*(*v8 + 16) != a2 || *(*v8 + 24) != a3)
  {
    v8 += 8;
    v10 += 8;
    if (v9 == --v7)
    {
      goto LABEL_8;
    }
  }

  WebKit::writeCachesList(*(a1 + 56));
  *(a1 + 16) = atomic_fetch_add(&WebKit::nextUpdateNumber(void)::currentUpdateNumber, 1uLL) + 1;
  if (-v7 >= *(a1 + 100))
  {
    __break(0xC471u);
    goto LABEL_46;
  }

  if (v37 == 0)
  {
    __break(0xC471u);
    JUMPOUT(0x19DDC7A90);
  }

  if (*(&v37 + 1) == -1)
  {
    __break(0xC471u);
LABEL_45:
    __break(1u);
LABEL_46:
    JUMPOUT(0x19DDC7A70);
  }

  v12 = *(a1 + 88) + v10;
  v13 = *(a1 + 104);
  if (v13 || (WTF::HashTable<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::Ref<WebKit::CacheStorageCache,WTF::RawPtrTraits<WebKit::CacheStorageCache>,WTF::DefaultRefDerefTraits<WebKit::CacheStorageCache>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::Ref<WebKit::CacheStorageCache,WTF::RawPtrTraits<WebKit::CacheStorageCache>,WTF::DefaultRefDerefTraits<WebKit::CacheStorageCache>>>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashMap<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::Ref<WebKit::CacheStorageCache,WTF::RawPtrTraits<WebKit::CacheStorageCache>,WTF::DefaultRefDerefTraits<WebKit::CacheStorageCache>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WTF::Ref<WebKit::CacheStorageCache,WTF::RawPtrTraits<WebKit::CacheStorageCache>,WTF::DefaultRefDerefTraits<WebKit::CacheStorageCache>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::FastMalloc>::expand((a1 + 104)), (v13 = *(a1 + 104)) != 0))
  {
    v14 = *(v13 - 8);
  }

  else
  {
    v14 = 0;
  }

  v16 = WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>::hash(&v37) & v14;
  v17 = (v13 + 24 * v16);
  v19 = *v17;
  v18 = v17[1];
  if (*v17 == 0)
  {
LABEL_23:
    *v17 = v37;
    v22 = *(v12 - 8);
    *(v12 - 8) = 0;
    v23 = v17[2];
    v17[2] = v22;
    if (v23)
    {
      WTF::RefCounted<WebKit::CacheStorageCache>::deref((v23 + 8), v15);
    }

    v24 = *(a1 + 104);
    if (v24)
    {
      v25 = *(v24 - 12) + 1;
    }

    else
    {
      v25 = 1;
    }

    *(v24 - 12) = v25;
    v26 = (*(v24 - 16) + v25);
    v27 = *(v24 - 4);
    if (v27 > 0x400)
    {
      if (v27 > 2 * v26)
      {
        goto LABEL_33;
      }
    }

    else if (3 * v27 > 4 * v26)
    {
      goto LABEL_33;
    }

    WTF::HashTable<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::Ref<WebKit::CacheStorageCache,WTF::RawPtrTraits<WebKit::CacheStorageCache>,WTF::DefaultRefDerefTraits<WebKit::CacheStorageCache>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::Ref<WebKit::CacheStorageCache,WTF::RawPtrTraits<WebKit::CacheStorageCache>,WTF::DefaultRefDerefTraits<WebKit::CacheStorageCache>>>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashMap<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::Ref<WebKit::CacheStorageCache,WTF::RawPtrTraits<WebKit::CacheStorageCache>,WTF::DefaultRefDerefTraits<WebKit::CacheStorageCache>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WTF::Ref<WebKit::CacheStorageCache,WTF::RawPtrTraits<WebKit::CacheStorageCache>,WTF::DefaultRefDerefTraits<WebKit::CacheStorageCache>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::FastMalloc>::expand((a1 + 104));
    goto LABEL_33;
  }

  v20 = 0;
  v21 = 1;
  while (__PAIR128__(v18, v19) != v37)
  {
    if (v18 == -1)
    {
      v20 = v17;
    }

    v16 = (v16 + v21) & v14;
    v17 = (v13 + 24 * v16);
    v19 = *v17;
    v18 = v17[1];
    ++v21;
    if (*v17 == 0)
    {
      if (v20)
      {
        *v20 = 0;
        v20[1] = 0;
        v20[2] = 0;
        --*(*(a1 + 104) - 16);
        v17 = v20;
      }

      goto LABEL_23;
    }
  }

  v28 = *(v12 - 8);
  *(v12 - 8) = 0;
  v29 = v17[2];
  v17[2] = v28;
  if (v29)
  {
    WTF::RefCounted<WebKit::CacheStorageCache>::deref((v29 + 8), v15);
  }

LABEL_33:
  v30 = *(a1 + 100);
  if (-v7 > v30 || -v30 == v7)
  {
    goto LABEL_45;
  }

  v31 = *(a1 + 88);
  v32 = (v31 + v10 - 8);
  v33 = *v32;
  *v32 = 0;
  if (v33)
  {
    WTF::RefCounted<WebKit::CacheStorageCache>::deref((v33 + 8), v15);
    v30 = *(a1 + 100);
  }

  memmove((v31 + v10 - 8), (v31 + v10), *(a1 + 88) + 8 * v30 - v31 - v10);
  --*(a1 + 100);
  v36 = 1;
LABEL_38:
  v34 = *a4;
  *a4 = 0;
  (*(*v34 + 16))(v34, &v36);
  return (*(*v34 + 8))(v34);
}

uint64_t WebKit::CacheStorageManager::allCaches(uint64_t a1, void *a2, uint64_t *a3)
{
  result = WebKit::CacheStorageManager::initializeCaches(a1, a2);
  if (result)
  {
    v6 = *(a1 + 100);
    if (v6)
    {
      if (v6 >= 0xAAAAAAB)
      {
        __break(0xC471u);
        return result;
      }

      v7 = 24 * v6;
      v8 = WTF::fastMalloc((24 * v6));
      v9 = v8;
      v10 = v7 / 0x18;
      v11 = *(a1 + 100);
      if (v11)
      {
        v12 = 0;
        v13 = *(a1 + 88);
        v14 = (v8 + 16);
        v15 = 8 * v11;
        do
        {
          v16 = *(v13 + 8 * v12);
          v17 = *(v16 + 16);
          v18 = *(v16 + 64);
          if (v18)
          {
            atomic_fetch_add_explicit(v18, 2u, memory_order_relaxed);
          }

          *(v14 - 1) = v17;
          *v14 = v18;
          v14 += 3;
          ++v12;
          v15 -= 8;
        }

        while (v15);
      }

      else
      {
        LODWORD(v12) = 0;
      }
    }

    else
    {
      LODWORD(v12) = 0;
      v10 = 0;
      v9 = 0;
    }

    v22 = *a3;
    *a3 = 0;
    v36[0] = 0;
    v36[1] = 0;
    v39 = *(a1 + 16);
    v23 = v39;
    v24 = WTF::fastMalloc(0x28);
    *v24 = &unk_1F110A510;
    *(v24 + 8) = v22;
    v37 = 0;
    v38[0] = 0;
    *(v24 + 16) = v9;
    v38[1] = 0;
    *(v24 + 24) = v10;
    *(v24 + 28) = v12;
    *(v24 + 32) = v23;
    v25 = WTF::fastMalloc(0x10);
    *v25 = 1;
    *(v25 + 8) = v24;
    WTF::Vector<WebCore::DOMCacheEngine::CacheInfo,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v38, v26);
    v27 = v37;
    v37 = 0;
    if (v27)
    {
      (*(*v27 + 8))(v27);
    }

    v28 = *(a1 + 100);
    if (v28)
    {
      v29 = *(a1 + 88);
      v30 = 8 * v28;
      do
      {
        v31 = *v29;
        v32 = (*v29 + 8);
        ++*v32;
        atomic_fetch_add(v25, 1u);
        v33 = WTF::fastMalloc(0x10);
        *v33 = &unk_1F110A538;
        v33[1] = v25;
        v37 = v33;
        WebKit::CacheStorageCache::open(v31, &v37);
        v35 = v37;
        v37 = 0;
        if (v35)
        {
          (*(*v35 + 8))(v35);
        }

        WTF::RefCounted<WebKit::CacheStorageCache>::deref(v32, v34);
        ++v29;
        v30 -= 8;
      }

      while (v30);
    }

    WTF::ThreadSafeRefCounted<WTF::CallbackAggregatorOnThread<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref(v25);
    v21 = v36;
  }

  else
  {
    LOBYTE(v37) = 1;
    LOBYTE(v39) = 1;
    v19 = *a3;
    *a3 = 0;
    (*(*v19 + 16))(v19, &v37);
    result = (*(*v19 + 8))(v19);
    if (v39)
    {
      return result;
    }

    v21 = &v37;
  }

  return WTF::Vector<WebCore::DOMCacheEngine::CacheInfo,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v21, v20);
}

uint64_t WebKit::CacheStorageManager::initializeCacheSize(WebKit::CacheStorageManager *this, WebKit::CacheStorageCache *a2)
{
  WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(this, this);
  v4 = *this;
  atomic_fetch_add(*this, 1u);
  v5 = *(a2 + 2);
  v6 = *(a2 + 3);
  v7 = WTF::fastMalloc(0x20);
  *v7 = &unk_1F110A560;
  v7[1] = v4;
  v7[2] = v5;
  v7[3] = v6;
  if (*(a2 + 40) == 1)
  {
    v8 = *(a2 + 10);
    v9 = WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::Vector<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::Vector<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::Vector<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Vector<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::begin(v8);
    if (v8)
    {
      v11 = &v8[3 * *(v8 - 1)];
    }

    else
    {
      v11 = 0;
    }

    if (v11 == v9)
    {
      v15 = 0;
    }

    else
    {
      v15 = 0;
      do
      {
        v16 = *(v9 + 5);
        if (v16)
        {
          v17 = 160 * v16;
          v18 = (v9[1] + 96);
          do
          {
            v19 = *v18;
            v18 += 20;
            v15 = (v15 + v19);
            v17 -= 160;
          }

          while (v17);
        }

        do
        {
          v9 += 3;
        }

        while (v9 != v10 && (*v9 + 1) <= 1);
      }

      while (v9 != v11);
    }

    WTF::Detail::CallableWrapper<WebKit::CacheStorageManager::initializeCacheSize(WebKit::CacheStorageCache &)::$_0,void,unsigned long long>::call(v7, v15);
    v20 = *(*v7 + 8);

    return v20(v7);
  }

  else
  {
    v12 = *(a2 + 11);
    v13 = WTF::fastMalloc(0x10);
    *v13 = &unk_1F110A290;
    v13[1] = v7;
    v21 = v13;
    (*(*v12 + 16))(v12, &v21);
    result = v21;
    v21 = 0;
    if (result)
    {
      return (*(*result + 8))(result);
    }
  }

  return result;
}

WTF::StringImpl *WebKit::writeSizeFile(WTF::StringImpl *this, const WTF::String *a2)
{
  if (this && *(this + 1))
  {
    WTF::FileSystemImpl::pathByAppendingComponent();
    WTF::String::number(a2);
    WTF::String::utf8();
    if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v5, v3);
    }

    WTF::FileSystemImpl::overwriteEntireFile();
    if (v6)
    {
      if (*v6 == 1)
      {
        WTF::fastFree(v6, v4);
      }

      else
      {
        --*v6;
      }
    }

    this = v7;
    if (v7)
    {
      if (atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        return WTF::StringImpl::destroy(v7, v4);
      }
    }
  }

  return this;
}

WTF *WebKit::CacheStorageManager::reference(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(&v22 + 1) = a4;
  v23 = a2;
  *&v22 = a3;
  if (!(a3 | a4) || a4 == -1)
  {
    __break(0xC471u);
    JUMPOUT(0x19DDC8230);
  }

  v5 = *(a1 + 112);
  if (v5 || (WTF::HashTable<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::Vector<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::Vector<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashMap<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::Vector<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WTF::Vector<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::FastMalloc>::expand((a1 + 112), 0), (v5 = *(a1 + 112)) != 0))
  {
    v6 = *(v5 - 8);
  }

  else
  {
    v6 = 0;
  }

  result = WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>::hash(&v22);
  v9 = result & v6;
  v10 = v5 + 32 * v9;
  v12 = *v10;
  v11 = *(v10 + 8);
  if (*v10 == 0)
  {
LABEL_14:
    *v10 = v22;
    result = *(v10 + 16);
    if (result)
    {
      *(v10 + 16) = 0;
      *(v10 + 24) = 0;
      result = WTF::fastFree(result, v8);
    }

    *(v10 + 16) = 0;
    *(v10 + 24) = 0;
    v15 = *(a1 + 112);
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
      if (v18 > 2 * v17)
      {
        goto LABEL_22;
      }
    }

    else if (3 * v18 > 4 * v17)
    {
      goto LABEL_22;
    }

    result = WTF::HashTable<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::Vector<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::Vector<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashMap<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::Vector<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WTF::Vector<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::FastMalloc>::expand((a1 + 112), v10);
    v10 = result;
    goto LABEL_22;
  }

  v13 = 0;
  v14 = 1;
  while (__PAIR128__(v11, v12) != v22)
  {
    if (v11 == -1)
    {
      v13 = v10;
    }

    v9 = (v9 + v14) & v6;
    v10 = v5 + 32 * v9;
    v12 = *v10;
    v11 = *(v10 + 8);
    ++v14;
    if (*v10 == 0)
    {
      if (v13)
      {
        *v13 = 0u;
        v13[1] = 0u;
        --*(*(a1 + 112) - 16);
        v10 = v13;
      }

      goto LABEL_14;
    }
  }

LABEL_22:
  v19 = *(v10 + 28);
  if (v19 == *(v10 + 24))
  {
    result = WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionFrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(v10 + 16, v19 + 1, &v23);
    v19 = *(v10 + 28);
    v20 = *(v10 + 16);
    v21 = *result;
  }

  else
  {
    v20 = *(v10 + 16);
    v21 = v23;
  }

  *(v20 + 8 * v19) = v21;
  ++*(v10 + 28);
  return result;
}

char *WebKit::CacheStorageManager::dereference(uint64_t a1, uint64_t a2, WTF::StringImpl *a3, uint64_t a4)
{
  v12 = a3;
  v13 = a4;
  result = WTF::HashTable<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::Vector<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::Vector<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashMap<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::Vector<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WTF::Vector<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::Vector<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WTF::Vector<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>>,(WTF::ShouldValidateKey)1,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>( (a1 + 112),  &v12);
  v7 = result;
  v8 = *(a1 + 112);
  if (v8)
  {
    v8 += 32 * *(v8 - 1);
  }

  if (v8 != result)
  {
    v9 = *(result + 7);
    if (v9)
    {
      result = *(result + 2);
      v10 = 8 * v9 - 8;
      while (*result != a2)
      {
        v10 -= 8;
        result += 8;
        if (v10 == -8)
        {
          return result;
        }
      }

      if (v10 == -8)
      {
        __break(1u);
      }

      else
      {
        if (v10)
        {
          result = memmove(result, result + 8, v10);
          LODWORD(v9) = *(v7 + 7);
        }

        v11 = v9 - 1;
        *(v7 + 7) = v11;
        if (!v11)
        {
          return WebKit::CacheStorageManager::removeUnusedCache(a1, v12, v13);
        }
      }
    }
  }

  return result;
}

uint64_t WebKit::CacheStorageManager::removeUnusedCache(uint64_t result, WTF::StringImpl *a2, uint64_t a3)
{
  v3 = result;
  v55 = a2;
  v56 = a3;
  v5 = (result + 104);
  v4 = *(result + 104);
  if (!v4)
  {
    goto LABEL_32;
  }

  if (!(a2 | a3) || a3 == -1)
  {
    __break(0xC471u);
    JUMPOUT(0x19DDC8760);
  }

  v6 = *(v4 - 8);
  result = WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>::hash(&v55);
  v7 = result & v6;
  v8 = (v4 + 24 * (result & v6));
  v9 = *v8;
  v10 = v8[1];
  if (*v8 != v55 || v10 != v56)
  {
    v12 = 1;
    while (v9 | v10)
    {
      v7 = (v7 + v12) & v6;
      v8 = (v4 + 24 * v7);
      v9 = *v8;
      v10 = v8[1];
      ++v12;
      if (*v8 == v55 && v10 == v56)
      {
        goto LABEL_15;
      }
    }

    v14 = *v5;
    if (!*v5)
    {
      goto LABEL_32;
    }

    v8 = (v14 + 24 * *(v14 - 4));
    goto LABEL_19;
  }

LABEL_15:
  v14 = *v5;
  if (*v5)
  {
LABEL_19:
    v15 = (v14 + 24 * *(v14 - 4));
    goto LABEL_20;
  }

  v15 = 0;
LABEL_20:
  if (v15 != v8)
  {
    v16 = v8[2];
    if (v16)
    {
      v8[2] = 0;
      v14 = *v5;
    }

    if (!v14 || (v14 += 24 * *(v14 - 4), v14 != v8))
    {
      if (v14 != v8)
      {
        *v8 = -1;
        v8[1] = -1;
        v8[2] = 0;
        v17 = *(*v5 - 4);
        v18 = vadd_s32(*(*v5 - 16), 0xFFFFFFFF00000001);
        *(*v5 - 16) = v18;
        if (v17 >= 9 && 6 * v18.i32[1] < v17)
        {
          result = WTF::HashTable<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::Ref<WebKit::CacheStorageCache,WTF::RawPtrTraits<WebKit::CacheStorageCache>,WTF::DefaultRefDerefTraits<WebKit::CacheStorageCache>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::Ref<WebKit::CacheStorageCache,WTF::RawPtrTraits<WebKit::CacheStorageCache>,WTF::DefaultRefDerefTraits<WebKit::CacheStorageCache>>>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashMap<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::Ref<WebKit::CacheStorageCache,WTF::RawPtrTraits<WebKit::CacheStorageCache>,WTF::DefaultRefDerefTraits<WebKit::CacheStorageCache>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WTF::Ref<WebKit::CacheStorageCache,WTF::RawPtrTraits<WebKit::CacheStorageCache>,WTF::DefaultRefDerefTraits<WebKit::CacheStorageCache>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::FastMalloc>::rehash(v5, v17 >> 1);
        }
      }
    }

    if (v16)
    {
      v58 = 0;
      v59 = 0;
      v52 = v16;
      v19 = *(v16 + 10);
      v20 = WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::Vector<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::Vector<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::Vector<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Vector<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::begin(v19);
      v22 = v20;
      v23 = v21;
      if (v19)
      {
        v24 = &v19[3 * *(v19 - 1)];
      }

      else
      {
        v24 = 0;
      }

      v53 = v3;
      if (v24 == v20)
      {
        v32 = 0;
      }

      else
      {
        v32 = 0;
        v54 = v24;
        do
        {
          v33 = *(v22 + 5);
          if (v33)
          {
            v34 = 0;
            v35 = *(v22 + 1);
            v36 = 160 * v33;
            do
            {
              v37 = v35 + v34;
              v38 = HIDWORD(v59);
              if (HIDWORD(v59) == v59)
              {
                WTF::Vector<WebKit::CacheStorageRecordInformation,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebKit::CacheStorageRecordInformation&>(&v58, v35 + v34);
              }

              else
              {
                v39 = WebKit::NetworkCache::Key::Key((v58 + 160 * HIDWORD(v59)), (v35 + v34));
                v40 = *(v37 + 72);
                *(v39 + 88) = *(v37 + 88);
                *(v39 + 72) = v40;
                v41 = *(v37 + 104);
                if (v41)
                {
                  atomic_fetch_add_explicit(v41, 2u, memory_order_relaxed);
                }

                *(v39 + 13) = v41;
                v42 = *(v35 + v34 + 128);
                *(v39 + 7) = *(v35 + v34 + 112);
                *(v39 + 8) = v42;
                *(v39 + 144) = *(v35 + v34 + 144);
                WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::String>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::HashTable(v39 + 19, (v35 + v34 + 152));
                HIDWORD(v59) = v38 + 1;
              }

              v32 += *(v35 + v34 + 96);
              v34 += 160;
            }

            while (v36 != v34);
          }

          do
          {
            v22 = (v22 + 24);
          }

          while (v22 != v23 && (*v22 + 1) <= 1);
        }

        while (v22 != v54);
      }

      v43 = *(v52 + 4);
      if (v43)
      {
        v44 = *(v43 + 8);
        if (v44)
        {
          v45 = (v44 + 8);
          ++*(v44 + 8);
          if (v32 && *(v44 + 32) == 1)
          {
            v46 = (*(v44 + 24) - v32);
            *(v44 + 24) = v46;
            *(v44 + 32) = 1;
            WebKit::writeSizeFile(*(v44 + 56), v46);
          }

          WTF::RefCounted<WebKit::CacheStorageManager>::deref(v45, v21);
        }
      }

      v47 = *(v52 + 10);
      if (v47)
      {
        *(v52 + 10) = 0;
        WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::Vector<WebKit::CacheStorageRecordInformation,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::Vector<WebKit::CacheStorageRecordInformation,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::Vector<WebKit::CacheStorageRecordInformation,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Vector<WebKit::CacheStorageRecordInformation,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v47, v21);
      }

      v48 = *(v52 + 11);
      v49 = WTF::fastMalloc(0x10);
      *v49 = &unk_1F110A3A8;
      v57 = v49;
      (*(*v48 + 32))(v48, &v58, &v57);
      v51 = v57;
      v57 = 0;
      if (v51)
      {
        (*(*v51 + 8))(v51);
      }

      WTF::Vector<WebKit::CacheStorageRecordInformation,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v58, v50);
      WebKit::CacheStorageRegistry::unregisterCache(*(v53 + 72), v55, v56);
      v29 = (v52 + 8);
      return WTF::RefCounted<WebKit::CacheStorageCache>::deref(v29, a2);
    }
  }

LABEL_32:
  v25 = *(v3 + 100);
  if (!v25)
  {
    return result;
  }

  v26 = *(v3 + 88);
  v27 = 8 * v25;
  while (1)
  {
    v28 = *v26;
    v29 = (*v26 + 8);
    ++*v29;
    if (*(v28 + 16) == v55 && *(v28 + 24) == v56)
    {
      break;
    }

    result = WTF::RefCounted<WebKit::CacheStorageCache>::deref(v29, a2);
    ++v26;
    v27 -= 8;
    if (!v27)
    {
      return result;
    }
  }

  v31 = *(v28 + 80);
  if (v31)
  {
    *(v28 + 80) = 0;
    WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::Vector<WebKit::CacheStorageRecordInformation,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::Vector<WebKit::CacheStorageRecordInformation,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::Vector<WebKit::CacheStorageRecordInformation,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Vector<WebKit::CacheStorageRecordInformation,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v31, a2);
  }

  *(v28 + 40) = 0;
  return WTF::RefCounted<WebKit::CacheStorageCache>::deref(v29, a2);
}

uint64_t *WebKit::CacheStorageManager::unlockStorage(uint64_t a1, uint64_t a2)
{
  v6 = a2;
  result = WTF::HashTable<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashTraits<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>((a1 + 120), &v6);
  v4 = *(a1 + 120);
  if (v4)
  {
    v5 = (v4 + 8 * *(v4 - 4));
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
    return WTF::HashTable<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::remove((a1 + 120), result);
  }

  return result;
}

uint64_t WebKit::CacheStorageManager::connectionClosed(uint64_t a1, uint64_t a2)
{
  v52 = a2;
  result = WTF::HashTable<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashTraits<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>((a1 + 120), &v52);
  v4 = result;
  v5 = *(a1 + 120);
  if (v5)
  {
    v6 = v5 + 8 * *(v5 - 4);
    if (v6 == result)
    {
      goto LABEL_8;
    }
  }

  else
  {
    if (!result)
    {
      goto LABEL_8;
    }

    v6 = 0;
  }

  if (v6 != result)
  {
    result = WTF::HashTable<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::remove((a1 + 120), result);
  }

LABEL_8:
  v51 = 0;
  v8 = (a1 + 112);
  v7 = *(a1 + 112);
  if (v7)
  {
    v9 = *(v7 - 4);
    v10 = v7 + 32 * v9;
    if (*(v7 - 12))
    {
      if (v9)
      {
        v11 = 32 * v9;
        v12 = *(a1 + 112);
        while (*v12 == 0 || *(v12 + 8) == -1)
        {
          v12 += 32;
          v11 -= 32;
          if (!v11)
          {
            v12 = v10;
            goto LABEL_23;
          }
        }
      }

      else
      {
        v12 = *(a1 + 112);
      }

      goto LABEL_23;
    }
  }

  else
  {
    v10 = 0;
    v9 = 0;
  }

  v12 = v10;
  v10 = v7 + 32 * v9;
  if (v7)
  {
LABEL_23:
    v14 = v7 + 32 * *(v7 - 4);
    goto LABEL_24;
  }

  v14 = 0;
LABEL_24:
  if (v14 != v12)
  {
    do
    {
      v15 = *(v12 + 16);
      v16 = *(v12 + 28);
      v17 = &v15[8 * v16];
      if (v16)
      {
        LODWORD(v16) = 0;
        v18 = v15 - 8;
        v19 = v17;
        v20 = v17;
        do
        {
          if (v52 == *v15)
          {
            v21 = v15;
            if (v19 != (*(v12 + 16) + 8 * *(v12 + 28)))
            {
              if (v20 == v15)
              {
                v21 = v19;
              }

              else
              {
                if (v20 <= v19)
                {
                  v25 = (v15 - v20);
                  v26 = &v19[v18 - v20];
                  v27 = v15;
                  do
                  {
                    v28 = *(v27 - 1);
                    v27 -= 8;
                    *v26 = v28;
                    v26 -= 8;
                  }

                  while (v27 != v20);
                }

                else
                {
                  v22 = v19;
                  v23 = v20;
                  do
                  {
                    v24 = *v23;
                    v23 += 8;
                    *v22 = v24;
                    v22 += 8;
                  }

                  while (v23 != v15);
                  v25 = (v15 - v20);
                }

                v21 = &v25[v19];
              }
            }

            v20 = v15 + 8;
            LODWORD(v16) = v16 + 1;
            v19 = v21;
          }

          v15 += 8;
          v18 += 8;
        }

        while (v15 < v17);
        v15 = *(v12 + 16);
        v29 = *(v12 + 28);
        v17 = v20;
      }

      else
      {
        v29 = 0;
        v19 = &v15[8 * v16];
      }

      v30 = &v15[8 * v29];
      if (v17 != v30)
      {
        if (v17 <= v19)
        {
          v32 = &v19[v30 - v17 - 8];
          do
          {
            v33 = *(v30 - 1);
            v30 -= 8;
            *v32 = v33;
            v32 -= 8;
          }

          while (v30 != v17);
        }

        else
        {
          do
          {
            v31 = *v17;
            v17 += 8;
            *v19 = v31;
            v19 += 8;
          }

          while (v17 != v30);
        }
      }

      v34 = *(v12 + 28) - v16;
      *(v12 + 28) = v34;
      if (!v34)
      {
        WebKit::CacheStorageManager::removeUnusedCache(a1, *v12, *(v12 + 8));
        result = WTF::HashTable<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::FastMalloc>::add<(WTF::ShouldValidateKey)1>(v50, &v51, v12);
      }

      do
      {
        v12 += 32;
        if (v12 == v10)
        {
          break;
        }
      }

      while (*v12 == 0 || *(v12 + 8) == -1);
    }

    while (v12 != v14);
    v36 = v51;
    if (v51)
    {
      v37 = *(v51 - 1);
      v38 = &v51[2 * v37];
      if (*(v51 - 3))
      {
        v39 = v51;
        if (v37)
        {
          v40 = 16 * v37;
          v39 = v51;
          while (*v39 == 0 || v39[1] == -1)
          {
            v39 += 2;
            v40 -= 16;
            if (!v40)
            {
              goto LABEL_66;
            }
          }
        }
      }

      else
      {
LABEL_66:
        v39 = v38;
      }

      v42 = &v51[2 * *(v51 - 1)];
      if (v42 != v39)
      {
        while (1)
        {
          result = WTF::HashTable<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::Vector<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::Vector<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashMap<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::Vector<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WTF::Vector<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::Vector<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WTF::Vector<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>>,(WTF::ShouldValidateKey)1,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>( v8,  v39);
          if (*v8)
          {
            v43 = *v8 + 32 * *(*v8 - 4);
            if (v43 != result)
            {
              goto LABEL_73;
            }
          }

          else if (result)
          {
            v43 = 0;
LABEL_73:
            if (v43 != result)
            {
              *result = -1;
              *(result + 8) = -1;
              v44 = *(result + 16);
              if (v44)
              {
                *(result + 16) = 0;
                *(result + 24) = 0;
                result = WTF::fastFree(v44, v4);
              }

              v45 = *v8;
              v46 = vadd_s32(*(*v8 - 16), 0xFFFFFFFF00000001);
              *(v45 - 16) = v46;
              v47 = *(v45 - 4);
              if (6 * v46.i32[1] < v47 && v47 >= 9)
              {
                result = WTF::HashTable<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::Vector<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::Vector<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashMap<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::Vector<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WTF::Vector<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::FastMalloc>::rehash(v8, v47 >> 1, 0);
              }
            }

            goto LABEL_82;
          }

          do
          {
LABEL_82:
            v39 += 2;
            if (v39 == v38)
            {
              break;
            }
          }

          while (*v39 == 0 || v39[1] == -1);
          if (v39 == v42)
          {
            v36 = v51;
            break;
          }
        }
      }

      if (v36)
      {
        return WTF::fastFree((v36 - 16), v4);
      }
    }
  }

  return result;
}

WTF::StringImpl *WebKit::CacheStorageManager::representationString@<X0>(WebKit::CacheStorageManager *this@<X0>, WTF::StringImpl **a2@<X8>)
{
  v22 = 0;
  v23 = 0;
  v24 = 0;
  v25 = 1;
  WTF::StringBuilder::append();
  v4 = *(this + 25);
  if (v4)
  {
    v5 = *(this + 11);
    v6 = 8 * v4;
    v7 = 1;
    do
    {
      if ((v7 & 1) == 0)
      {
        WTF::StringBuilder::append();
      }

      v8 = *v5++;
      v28 = 34;
      v27 = *(v8 + 64);
      v26 = 34;
      WTF::StringBuilder::appendFromAdapters<WTF::StringTypeAdapter<char,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<char,void>>(&v22, &v28, &v27, &v26);
      v7 = 0;
      v6 -= 8;
    }

    while (v6);
  }

  WTF::StringBuilder::append();
  v9 = *(this + 13);
  v10 = WTF::HashTable<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::UniqueRef<WebKit::LayerProperties>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::UniqueRef<WebKit::LayerProperties>>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashMap<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::UniqueRef<WebKit::LayerProperties>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WTF::UniqueRef<WebKit::LayerProperties>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::FastMalloc>::begin(v9);
  v11 = v10;
  v13 = v12;
  if (v9)
  {
    v14 = v9 + 24 * *(v9 - 4);
  }

  else
  {
    v14 = 0;
  }

  if (v14 != v10)
  {
    v15 = 1;
    do
    {
      if ((v15 & 1) == 0)
      {
        WTF::StringBuilder::append();
      }

      v16 = *(v11 + 16);
      v28 = 34;
      v27 = *(v16 + 64);
      v26 = 34;
      WTF::StringBuilder::appendFromAdapters<WTF::StringTypeAdapter<char,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<char,void>>(&v22, &v28, &v27, &v26);
      do
      {
        v11 += 24;
        if (v11 == v13)
        {
          break;
        }
      }

      while (*v11 == 0 || *(v11 + 8) == -1);
      v15 = 0;
    }

    while (v11 != v14);
  }

  WTF::StringBuilder::append();
  v19 = v22;
  if (v22 || (WTF::StringBuilder::shrinkToFit(&v22), WTF::StringBuilder::reifyString(&v22), (v19 = v22) != 0))
  {
    atomic_fetch_add_explicit(v19, 2u, memory_order_relaxed);
  }

  *a2 = v19;
  v20 = v23;
  v23 = 0;
  if (v20 && atomic_fetch_add_explicit(v20, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v20, v18);
  }

  result = v22;
  v22 = 0;
  if (result)
  {
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v18);
    }
  }

  return result;
}

uint64_t WebKit::CacheStorageMemoryStore::readAllRecordInfos(uint64_t a1, uint64_t *a2)
{
  v35[1] = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = *(v3 - 4);
    v5 = v3 + 16 * v4;
    if (*(v3 - 12))
    {
      v6 = *(a1 + 16);
      if (v4)
      {
        v7 = 16 * v4;
        v6 = *(a1 + 16);
        while ((*v6 + 1) <= 1)
        {
          v6 += 16;
          v7 -= 16;
          if (!v7)
          {
            v6 = v5;
            goto LABEL_8;
          }
        }
      }

      goto LABEL_8;
    }

    v6 = v3 + 16 * v4;
  }

  else
  {
    v6 = 0;
    v4 = 0;
  }

  v5 = v3 + 16 * v4;
  if (!v3)
  {
    v8 = 0;
    v23 = 0;
    v24 = 0;
    goto LABEL_15;
  }

LABEL_8:
  v8 = v3 + 16 * *(v3 - 4);
  v23 = 0;
  v24 = 0;
  v9 = *(v3 - 12);
  if (v9)
  {
    if (v9 >= 0x199999A)
    {
      __break(0xC471u);
      goto LABEL_43;
    }

    LODWORD(v24) = 160 * v9 / 0xA0u;
    v23 = WTF::fastMalloc((160 * v9));
  }

LABEL_15:
  if (v6 != v8)
  {
    while (1)
    {
      v13 = *(v6 + 8);
      if (!v13)
      {
        break;
      }

      WebKit::NetworkCache::Key::Key(&v25, *(v6 + 8));
      v14 = *(v13 + 72);
      v30 = *(v13 + 88);
      v29 = v14;
      v15 = *(v13 + 104);
      if (v15)
      {
        atomic_fetch_add_explicit(v15, 2u, memory_order_relaxed);
      }

      v31 = v15;
      v16 = *(v13 + 128);
      v32 = *(v13 + 112);
      v33 = v16;
      v34 = *(v13 + 144);
      WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::String>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::HashTable(v35, (v13 + 152));
      WTF::Vector<WebKit::CacheStorageRecordInformation,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::unsafeAppendWithoutCapacityCheck(&v23, &v25);
      if (v35[0])
      {
        WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::String>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v35[0], v17);
      }

      v18 = v31;
      v31 = 0;
      if (v18 && atomic_fetch_add_explicit(v18, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v18, v17);
      }

      v19 = v28;
      v28 = 0;
      if (v19 && atomic_fetch_add_explicit(v19, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v19, v17);
      }

      v20 = v27;
      v27 = 0;
      if (v20 && atomic_fetch_add_explicit(v20, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v20, v17);
      }

      v21 = v26;
      v26 = 0;
      if (v21 && atomic_fetch_add_explicit(v21, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v21, v17);
      }

      v22 = v25;
      v25 = 0;
      if (v22 && atomic_fetch_add_explicit(v22, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v22, v17);
      }

      do
      {
        v6 += 16;
      }

      while (v6 != v5 && (*v6 + 1) <= 1);
      if (v6 == v8)
      {
        goto LABEL_16;
      }
    }

    __break(0xC471u);
LABEL_43:
    JUMPOUT(0x19DDC9094);
  }

LABEL_16:
  v10 = *a2;
  *a2 = 0;
  (*(*v10 + 16))(v10, &v23);
  (*(*v10 + 8))(v10);
  return WTF::Vector<WebKit::CacheStorageRecordInformation,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v23, v11);
}

uint64_t WebKit::CacheStorageMemoryStore::readRecords(uint64_t result, unsigned int *a2, uint64_t *a3)
{
  v76[2] = *MEMORY[0x1E69E9840];
  v46 = 0;
  v47 = 0;
  v3 = a2[3];
  if (!v3)
  {
LABEL_64:
    v42 = *a3;
    *a3 = 0;
    (*(*v42 + 16))(v42, &v46);
    (*(*v42 + 8))(v42);
    return WTF::Vector<std::optional<WebKit::CacheStorageRecord>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v46, v43);
  }

  if (v3 < 0x555556)
  {
    v5 = result;
    LODWORD(v47) = 768 * v3 / 0x300u;
    v45 = WTF::fastMalloc((768 * v3));
    v46 = v45;
    v6 = a2[3];
    if (v6)
    {
      v7 = 0;
      v8 = 160 * v6;
      v9 = (*a2 + 80);
      do
      {
        v10 = *v9;
        v9 += 20;
        ShouldValidate = WTF::HashTable<unsigned long long,WTF::KeyValuePair<unsigned long long,std::unique_ptr<WebKit::CacheStorageRecord>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<unsigned long long,std::unique_ptr<WebKit::CacheStorageRecord>>>,WTF::DefaultHash<unsigned long long>,WTF::HashMap<unsigned long long,std::unique_ptr<WebKit::CacheStorageRecord>,WTF::DefaultHash<unsigned long long>,WTF::HashTraits<unsigned long long>,WTF::HashTraits<std::unique_ptr<WebKit::CacheStorageRecord>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<unsigned long long>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<unsigned long long,std::unique_ptr<WebKit::CacheStorageRecord>,WTF::DefaultHash<unsigned long long>,WTF::HashTraits<unsigned long long>,WTF::HashTraits<std::unique_ptr<WebKit::CacheStorageRecord>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<unsigned long long>>,(WTF::ShouldValidateKey)1,unsigned long long>(*(v5 + 16), v10);
        v12 = *(v5 + 16);
        if (v12)
        {
          v12 += 16 * *(v12 - 4);
        }

        if (v12 == ShouldValidate)
        {
          LOBYTE(v54) = 0;
          v65 = 0;
        }

        else
        {
          v13 = *(ShouldValidate + 8);
          v14 = *(v13 + 160);
          v50[0] = *(v13 + 368);
          *(v50 + 3) = *(v13 + 371);
          v15 = *(v13 + 376);
          if (v15)
          {
            atomic_fetch_add_explicit(v15, 2u, memory_order_relaxed);
          }

          v51 = v15;
          v16 = *(v13 + 400);
          v52 = *(v13 + 384);
          v53 = v16;
          v17 = *(v13 + 424);
          WebCore::ResourceResponseData::isolatedCopy(v49, (v13 + 432));
          v18 = *(v13 + 728);
          WebCore::DOMCacheEngine::copyResponseBody();
          WebKit::CacheStorageRecord::CacheStorageRecord(&v66, v13, v14, (v13 + 168), v50, (v13 + 416), v17, v49, v18, v48);
          mpark::detail::move_constructor<mpark::detail::traits<decltype(nullptr),WTF::Ref<WebCore::FormData,WTF::RawPtrTraits<WebCore::FormData>,WTF::DefaultRefDerefTraits<WebCore::FormData>>,WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>>,(mpark::detail::Trait)1>::~move_constructor(v48);
          WebCore::ResourceResponseData::~ResourceResponseData(v49, v19);
          if (v15 && atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v15, v20);
          }

          WebKit::CacheStorageRecord::CacheStorageRecord(&v54, &v66);
          v65 = 1;
          mpark::detail::move_constructor<mpark::detail::traits<decltype(nullptr),WTF::Ref<WebCore::FormData,WTF::RawPtrTraits<WebCore::FormData>,WTF::DefaultRefDerefTraits<WebCore::FormData>>,WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>>,(mpark::detail::Trait)1>::~move_constructor(v76);
          WebCore::ResourceResponseData::~ResourceResponseData(&v75, v21);
          v23 = v74;
          v74 = 0;
          if (v23 && atomic_fetch_add_explicit(v23, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v23, v22);
          }

          v24 = v73;
          v73 = 0;
          if (v24 && atomic_fetch_add_explicit(v24, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v24, v22);
          }

          WebCore::ResourceRequest::~ResourceRequest(&v72);
          if (v71)
          {
            WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::String>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v71, v25);
          }

          v26 = v70;
          v70 = 0;
          if (v26 && atomic_fetch_add_explicit(v26, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v26, v25);
          }

          v27 = v69;
          v69 = 0;
          if (v27 && atomic_fetch_add_explicit(v27, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v27, v25);
          }

          v28 = v68;
          v68 = 0;
          if (v28 && atomic_fetch_add_explicit(v28, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v28, v25);
          }

          v29 = v67;
          v67 = 0;
          if (v29 && atomic_fetch_add_explicit(v29, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v29, v25);
          }

          v30 = v66;
          v66 = 0;
          if (v30 && atomic_fetch_add_explicit(v30, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v30, v25);
          }
        }

        v31 = (v45 + 768 * v7);
        *v31 = 0;
        v31[752] = 0;
        if (v65 == 1)
        {
          *(WebKit::CacheStorageRecord::CacheStorageRecord(v31, &v54) + 752) = 1;
          HIDWORD(v47) = ++v7;
          if (v65)
          {
            mpark::detail::move_constructor<mpark::detail::traits<decltype(nullptr),WTF::Ref<WebCore::FormData,WTF::RawPtrTraits<WebCore::FormData>,WTF::DefaultRefDerefTraits<WebCore::FormData>>,WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>>,(mpark::detail::Trait)1>::~move_constructor(&v64);
            WebCore::ResourceResponseData::~ResourceResponseData(&v63, v32);
            v34 = v62;
            v62 = 0;
            if (v34 && atomic_fetch_add_explicit(v34, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v34, v33);
            }

            v35 = v61;
            v61 = 0;
            if (v35 && atomic_fetch_add_explicit(v35, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v35, v33);
            }

            WebCore::ResourceRequest::~ResourceRequest(&v60);
            if (v59)
            {
              WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::String>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v59, v36);
            }

            v37 = v58;
            v58 = 0;
            if (v37 && atomic_fetch_add_explicit(v37, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v37, v36);
            }

            v38 = v57;
            v57 = 0;
            if (v38 && atomic_fetch_add_explicit(v38, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v38, v36);
            }

            v39 = v56;
            v56 = 0;
            if (v39 && atomic_fetch_add_explicit(v39, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v39, v36);
            }

            v40 = v55;
            v55 = 0;
            if (v40 && atomic_fetch_add_explicit(v40, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v40, v36);
            }

            v41 = v54;
            v54 = 0;
            if (v41)
            {
              if (atomic_fetch_add_explicit(v41, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v41, v36);
              }
            }
          }
        }

        else
        {
          HIDWORD(v47) = ++v7;
        }

        v8 -= 160;
      }

      while (v8);
    }

    goto LABEL_64;
  }

  __break(0xC471u);
  return result;
}

uint64_t WebKit::CacheStorageMemoryStore::deleteRecords(uint64_t a1, unsigned int *a2, uint64_t *a3)
{
  v4 = a2[3];
  if (v4)
  {
    v6 = 160 * v4;
    v7 = (*a2 + 80);
    do
    {
      v8 = *v7;
      v7 += 20;
      ShouldValidate = WTF::HashTable<unsigned long long,WTF::KeyValuePair<unsigned long long,std::unique_ptr<WebKit::CacheStorageRecord>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<unsigned long long,std::unique_ptr<WebKit::CacheStorageRecord>>>,WTF::DefaultHash<unsigned long long>,WTF::HashMap<unsigned long long,std::unique_ptr<WebKit::CacheStorageRecord>,WTF::DefaultHash<unsigned long long>,WTF::HashTraits<unsigned long long>,WTF::HashTraits<std::unique_ptr<WebKit::CacheStorageRecord>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<unsigned long long>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<unsigned long long,std::unique_ptr<WebKit::CacheStorageRecord>,WTF::DefaultHash<unsigned long long>,WTF::HashTraits<unsigned long long>,WTF::HashTraits<std::unique_ptr<WebKit::CacheStorageRecord>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<unsigned long long>>,(WTF::ShouldValidateKey)1,unsigned long long>(*(a1 + 16), v8);
      v10 = *(a1 + 16);
      if (v10)
      {
        v11 = v10 + 16 * *(v10 - 4);
        if (v11 != ShouldValidate)
        {
          goto LABEL_8;
        }
      }

      else if (ShouldValidate)
      {
        v11 = 0;
LABEL_8:
        if (v11 != ShouldValidate)
        {
          *ShouldValidate = -1;
          std::unique_ptr<WebKit::CacheStorageRecord>::reset[abi:sn200100]((ShouldValidate + 8), 0);
          v12 = *(a1 + 16);
          v13 = vadd_s32(*(v12 - 16), 0xFFFFFFFF00000001);
          *(v12 - 16) = v13;
          v14 = *(v12 - 4);
          if (6 * v13.i32[1] < v14 && v14 >= 9)
          {
            WTF::HashTable<unsigned long long,WTF::KeyValuePair<unsigned long long,std::unique_ptr<WebKit::CacheStorageRecord>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<unsigned long long,std::unique_ptr<WebKit::CacheStorageRecord>>>,WTF::DefaultHash<unsigned long long>,WTF::HashMap<unsigned long long,std::unique_ptr<WebKit::CacheStorageRecord>,WTF::DefaultHash<unsigned long long>,WTF::HashTraits<unsigned long long>,WTF::HashTraits<std::unique_ptr<WebKit::CacheStorageRecord>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<unsigned long long>,WTF::FastMalloc>::rehash((a1 + 16), v14 >> 1);
          }
        }
      }

      v6 -= 160;
    }

    while (v6);
  }

  v16 = *a3;
  *a3 = 0;
  (*(*v16 + 16))(v16, 1);
  v17 = *(*v16 + 8);

  return v17(v16);
}

uint64_t WebKit::CacheStorageMemoryStore::writeRecords(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = *(a2 + 12);
  if (v4)
  {
    v6 = *a2;
    v7 = *a2 + 752 * v4;
    while (1)
    {
      v8 = v6[10];
      v9 = WTF::fastMalloc(0x2F0);
      WebKit::CacheStorageRecord::CacheStorageRecord(v9, v6);
      if (v8 == -1 || !v8)
      {
        __break(0xC471u);
        JUMPOUT(0x19DDC98C8);
      }

      v10 = *(a1 + 16);
      if (!v10)
      {
        WTF::HashTable<unsigned long long,WTF::KeyValuePair<unsigned long long,std::unique_ptr<WebKit::CacheStorageRecord>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<unsigned long long,std::unique_ptr<WebKit::CacheStorageRecord>>>,WTF::DefaultHash<unsigned long long>,WTF::HashMap<unsigned long long,std::unique_ptr<WebKit::CacheStorageRecord>,WTF::DefaultHash<unsigned long long>,WTF::HashTraits<unsigned long long>,WTF::HashTraits<std::unique_ptr<WebKit::CacheStorageRecord>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<unsigned long long>,WTF::FastMalloc>::expand((a1 + 16));
        v10 = *(a1 + 16);
      }

      v11 = *(v10 - 8);
      v12 = (v8 + ~(v8 << 32)) ^ ((v8 + ~(v8 << 32)) >> 22);
      v13 = 9 * ((v12 + ~(v12 << 13)) ^ ((v12 + ~(v12 << 13)) >> 8));
      v14 = (v13 ^ (v13 >> 15)) + ~((v13 ^ (v13 >> 15)) << 27);
      v15 = v11 & ((v14 >> 31) ^ v14);
      v16 = (v10 + 16 * v15);
      v17 = *v16;
      if (*v16)
      {
        v18 = 0;
        v19 = 1;
        do
        {
          if (v17 == v8)
          {
            v27 = 0;
            std::unique_ptr<WebKit::CacheStorageRecord>::reset[abi:sn200100](v16 + 1, v9);
            goto LABEL_22;
          }

          if (v17 == -1)
          {
            v18 = v16;
          }

          v15 = (v15 + v19) & v11;
          v16 = (v10 + 16 * v15);
          v17 = *v16;
          ++v19;
        }

        while (*v16);
        if (v18)
        {
          *v18 = 0;
          v18[1] = 0;
          --*(*(a1 + 16) - 16);
          v16 = v18;
        }
      }

      *v16 = v8;
      v27 = 0;
      v28 = 0;
      std::unique_ptr<WebKit::CacheStorageRecord>::reset[abi:sn200100](v16 + 1, v9);
      std::unique_ptr<WebKit::CacheStorageRecord>::reset[abi:sn200100](&v28, 0);
      v20 = *(a1 + 16);
      v21 = v20 ? *(v20 - 12) + 1 : 1;
      *(v20 - 12) = v21;
      v22 = (*(v20 - 16) + v21);
      v23 = *(v20 - 4);
      if (v23 > 0x400)
      {
        break;
      }

      if (3 * v23 <= 4 * v22)
      {
        goto LABEL_21;
      }

LABEL_22:
      std::unique_ptr<WebKit::CacheStorageRecord>::reset[abi:sn200100](&v27, 0);
      v6 += 94;
      if (v6 == v7)
      {
        goto LABEL_26;
      }
    }

    if (v23 > 2 * v22)
    {
      goto LABEL_22;
    }

LABEL_21:
    WTF::HashTable<unsigned long long,WTF::KeyValuePair<unsigned long long,std::unique_ptr<WebKit::CacheStorageRecord>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<unsigned long long,std::unique_ptr<WebKit::CacheStorageRecord>>>,WTF::DefaultHash<unsigned long long>,WTF::HashMap<unsigned long long,std::unique_ptr<WebKit::CacheStorageRecord>,WTF::DefaultHash<unsigned long long>,WTF::HashTraits<unsigned long long>,WTF::HashTraits<std::unique_ptr<WebKit::CacheStorageRecord>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<unsigned long long>,WTF::FastMalloc>::expand((a1 + 16));
    goto LABEL_22;
  }

LABEL_26:
  v24 = *a3;
  *a3 = 0;
  (*(*v24 + 16))(v24, 1);
  v25 = *(*v24 + 8);

  return v25(v24);
}

WTF::StringImpl *WebKit::CacheStorageRecordInformation::isolatedCopy(uint64_t a1, uint64_t a2)
{
  v24 = *MEMORY[0x1E69E9840];
  WebKit::NetworkCache::Key::isolatedCopy(a2, v19);
  v4 = *(a2 + 72);
  v16 = *(a2 + 80);
  v5 = *(a2 + 96);
  WTF::URL::isolatedCopy();
  v6 = *(a2 + 144);
  WTF::CrossThreadCopierBase<false,false,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>::copy((a2 + 152), &v17);
  v7 = *v19;
  v8 = *v20;
  *v19 = 0u;
  *v20 = 0u;
  *a1 = v7;
  *(a1 + 16) = v8;
  v9 = v22;
  *(a1 + 32) = v21;
  *(a1 + 48) = v9;
  *(a1 + 64) = v23;
  *(a1 + 72) = v4;
  *(a1 + 80) = v16;
  *(a1 + 96) = v5;
  WTF::URL::URL(a1 + 104, &v18);
  *(a1 + 144) = v6;
  v11 = v18;
  *(a1 + 152) = v17;
  v18 = 0;
  if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v11, v10);
  }

  v12 = v20[1];
  v20[1] = 0;
  if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v12, v10);
  }

  v13 = v20[0];
  v20[0] = 0;
  if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v13, v10);
  }

  v14 = v19[1];
  v19[1] = 0;
  if (v14 && atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v14, v10);
  }

  result = v19[0];
  v19[0] = 0;
  if (result)
  {
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v10);
    }
  }

  return result;
}

uint64_t WebKit::CacheStorageRegistry::create@<X0>(void *a1@<X1>, void *a2@<X8>)
{
  result = WebKit::CacheStorageRegistry::operator new(0x10, a1);
  *result = 1;
  *(result + 8) = 0;
  *a2 = result;
  return result;
}

uint64_t WebKit::CacheStorageRegistry::operator new(WebKit::CacheStorageRegistry *this, void *a2)
{
  if (WebKit::CacheStorageRegistry::s_heapRef)
  {
    return bmalloc::api::tzoneAllocateNonCompact(WebKit::CacheStorageRegistry::s_heapRef, a2);
  }

  else
  {
    return WebKit::CacheStorageRegistry::operatorNewSlow(0x10);
  }
}

uint64_t WTF::HashMap<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::WeakPtr<WebKit::CacheStorageCache,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WTF::WeakPtr<WebKit::CacheStorageCache,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<WebKit::CacheStorageCache&>(uint64_t a1, uint64_t *a2, void *a3, unsigned int *a4)
{
  if (*a3 == 0 || a3[1] == -1)
  {
    __break(0xC471u);
    JUMPOUT(0x19DDC9CD8);
  }

  v8 = *a2;
  if (*a2 || (WTF::HashTable<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::WeakPtr<WebKit::CacheStorageCache,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::WeakPtr<WebKit::CacheStorageCache,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashMap<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::WeakPtr<WebKit::CacheStorageCache,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WTF::WeakPtr<WebKit::CacheStorageCache,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::FastMalloc>::expand(a2, 0), (v8 = *a2) != 0))
  {
    v9 = *(v8 - 8);
  }

  else
  {
    v9 = 0;
  }

  result = WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>::hash(a3);
  v11 = result & v9;
  v12 = (v8 + 24 * (result & v9));
  v14 = *v12;
  v13 = v12[1];
  if (*v12 != 0)
  {
    v15 = 0;
    v16 = 1;
    do
    {
      if (v14 == *a3 && v13 == a3[1])
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

        v26 = 0;
        v25 = v23 + 24 * v24;
        goto LABEL_32;
      }

      if (v13 == -1)
      {
        v15 = v12;
      }

      v11 = (v11 + v16) & v9;
      v12 = (v8 + 24 * v11);
      v14 = *v12;
      v13 = v12[1];
      ++v16;
    }

    while (*v12 != 0);
    if (v15)
    {
      *v15 = 0;
      v15[1] = 0;
      v15[2] = 0;
      --*(*a2 - 16);
      v12 = v15;
    }
  }

  *v12 = *a3;
  WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(a4, a4);
  v18 = *a4;
  atomic_fetch_add(*a4, 1u);
  result = v12[2];
  v12[2] = v18;
  if (result && atomic_fetch_add(result, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, result);
    result = WTF::fastFree(result, v17);
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
    if (v22 <= 2 * v21)
    {
LABEL_23:
      result = WTF::HashTable<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::WeakPtr<WebKit::CacheStorageCache,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::WeakPtr<WebKit::CacheStorageCache,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashMap<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::WeakPtr<WebKit::CacheStorageCache,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WTF::WeakPtr<WebKit::CacheStorageCache,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::FastMalloc>::expand(a2, v12);
      v12 = result;
      v19 = *a2;
      if (*a2)
      {
        LODWORD(v22) = *(v19 - 4);
      }

      else
      {
        LODWORD(v22) = 0;
      }
    }
  }

  else if (3 * v22 <= 4 * v21)
  {
    goto LABEL_23;
  }

  v25 = v19 + 24 * v22;
  v26 = 1;
LABEL_32:
  *a1 = v12;
  *(a1 + 8) = v25;
  *(a1 + 16) = v26;
  return result;
}

uint64_t WebKit::CacheStorageRegistry::cache(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8[0] = a2;
  v8[1] = a3;
  WTF::HashMap<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::WeakPtr<WebKit::CacheStorageCache,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WTF::WeakPtr<WebKit::CacheStorageCache,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::WeakPtr<WebKit::CacheStorageCache,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WTF::WeakPtr<WebKit::CacheStorageCache,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>>,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>(a1 + 8, v8, &v7);
  v4 = v7;
  if (!v7)
  {
    return 0;
  }

  v5 = *(v7 + 1);
  v7 = 0;
  if (atomic_fetch_add(v4, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v4);
    WTF::fastFree(v4, v3);
  }

  return v5;
}

uint64_t WebKit::FileSystemStorageHandle::create@<X0>(WTF::FileSystemImpl *this@<X2>, unsigned int *a2@<X0>, const WTF::String *a3@<X1>, uint64_t *a4@<X3>, void *a5@<X8>)
{
  v7 = a3;
  if (a3 != 1)
  {
    if (!a3)
    {
      WTF::FileSystemImpl::openFile();
      v10 = v14;
      WTF::FileSystemImpl::FileHandle::~FileHandle(&v14);
      if (v10 != -1)
      {
        goto LABEL_4;
      }
    }

LABEL_6:
    result = 0;
    goto LABEL_7;
  }

  if (!WTF::FileSystemImpl::makeAllDirectories(this, a3))
  {
    goto LABEL_6;
  }

LABEL_4:
  v12 = WebKit::FileSystemStorageHandle::operator new(0x58, v11);
  result = WebKit::FileSystemStorageHandle::FileSystemStorageHandle(v12, a2, v7, this, a4);
LABEL_7:
  *a5 = result;
  return result;
}

uint64_t WebKit::FileSystemStorageHandle::operator new(WebKit::FileSystemStorageHandle *this, void *a2)
{
  if (this == 88 && WebKit::FileSystemStorageHandle::s_heapRef)
  {
    return bmalloc::api::tzoneAllocateNonCompact(WebKit::FileSystemStorageHandle::s_heapRef, a2);
  }

  else
  {
    return WebKit::FileSystemStorageHandle::operatorNewSlow(this);
  }
}

uint64_t WebKit::FileSystemStorageHandle::FileSystemStorageHandle(uint64_t a1, unsigned int *a2, char a3, uint64_t *a4, uint64_t *a5)
{
  *a1 = 1;
  *(a1 + 8) = 0;
  WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::initializeIfNeeded((a1 + 8), a1);
  *(a1 + 16) = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
  WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(a2, a2);
  v10 = *a2;
  atomic_fetch_add(*a2, 1u);
  *(a1 + 24) = v10;
  *(a1 + 32) = a3;
  v11 = *a4;
  *a4 = 0;
  *(a1 + 40) = v11;
  v12 = *a5;
  *a5 = 0;
  *(a1 + 48) = v12;
  *(a1 + 56) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  return a1;
}

_DWORD *WebKit::FileSystemStorageHandle::close(_DWORD *this, uint64_t a2, const WTF::StringImpl *a3)
{
  v3 = *(this + 3);
  if (v3)
  {
    v4 = *(v3 + 8);
    if (v4)
    {
      v5 = this;
      ++*(v4 + 2);
      if (*(this + 72) == 1)
      {
        WebKit::FileSystemStorageHandle::closeSyncAccessHandle(this, *(this + 7), a3);
      }

      v6 = WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,mpark::variant<WTF::String,unsigned long long,long long,BOOL,double>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,mpark::variant<WTF::String,unsigned long long,long long,BOOL,double>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,mpark::variant<WTF::String,unsigned long long,long long,BOOL,double>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<mpark::variant<WTF::String,unsigned long long,long long,BOOL,double>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::begin(v5 + 10);
      v8 = v5[10];
      if (v8)
      {
        v9 = *(v8 - 1);
        v10 = &v8[3 * v9];
      }

      else
      {
        v10 = 0;
        v9 = 0;
      }

      v16[0] = v5 + 10;
      v16[1] = v6;
      v16[2] = v7;
      v16[3] = v10;
      v16[4] = &v8[3 * v9];
      v17 = 0;
      v18 = 0;
      WTF::Mapper<WTF::Vector<WTF::ObjectIdentifierGeneric<WebCore::FileSystemWritableFileStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> WTF::copyToVectorOf<WTF::ObjectIdentifierGeneric<WebCore::FileSystemWritableFileStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::SizedIteratorRange<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::FileSystemWritableFileStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebKit::FileSystemStorageHandle::FileHandleWithPath,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::FileSystemWritableFileStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::FileSystemWritableFileStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WebKit::FileSystemStorageHandle::FileHandleWithPath>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::HashTableKeysIterator<WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::FileSystemWritableFileStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::FileSystemWritableFileStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebKit::FileSystemStorageHandle::FileHandleWithPath>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::FileSystemWritableFileStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebKit::FileSystemStorageHandle::FileHandleWithPath>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::FileSystemWritableFileStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::FileSystemWritableFileStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebKit::FileSystemStorageHandle::FileHandleWithPath,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::FileSystemWritableFileStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::FileSystemWritableFileStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WebKit::FileSystemStorageHandle::FileHandleWithPath>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::FileSystemWritableFileStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>,WTF::ObjectIdentifierGeneric<WebCore::FileSystemWritableFileStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebKit::FileSystemStorageHandle::FileHandleWithPath>>>(WTF::SizedIteratorRange<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::FileSystemWritableFileStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebKit::FileSystemStorageHandle::FileHandleWithPath,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::FileSystemWritableFileStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::FileSystemWritableFileStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WebKit::FileSystemStorageHandle::FileHandleWithPath>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::HashTableKeysIterator<WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::FileSystemWritableFileStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::FileSystemWritableFileStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebKit::FileSystemStorageHandle::FileHandleWithPath>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::FileSystemWritableFileStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebKit::FileSystemStorageHandle::FileHandleWithPath>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::FileSystemWritableFileStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::FileSystemWritableFileStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebKit::FileSystemStorageHandle::FileHandleWithPath,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::FileSystemWritableFileStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::FileSystemWritableFileStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WebKit::FileSystemStorageHandle::FileHandleWithPath>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::FileSystemWritableFileStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>,WTF::ObjectIdentifierGeneric<WebCore::FileSystemWritableFileStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebKit::FileSystemStorageHandle::FileHandleWithPath>> const&)::{lambda(WTF::ObjectIdentifierGeneric<WebCore::FileSystemWritableFileStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>&&)#1},WTF::Vector<WTF::ObjectIdentifierGeneric<WebCore::FileSystemWritableFileStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::SizedIteratorRange<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::FileSystemWritableFileStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebKit::FileSystemStorageHandle::FileHandleWithPath,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::FileSystemWritableFileStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::FileSystemWritableFileStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WebKit::FileSystemStorageHandle::FileHandleWithPath>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::HashTableKeysIterator<WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::FileSystemWritableFileStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::FileSystemWritableFileStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebKit::FileSystemStorageHandle::FileHandleWithPath>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::FileSystemWritableFileStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebKit::FileSystemStorageHandle::FileHandleWithPath>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::FileSystemWritableFileStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::FileSystemWritableFileStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebKit::FileSystemStorageHandle::FileHandleWithPath,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::FileSystemWritableFileStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::FileSystemWritableFileStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WebKit::FileSystemStorageHandle::FileHandleWithPath>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::FileSystemWritableFileStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>,WTF::ObjectIdentifierGeneric<WebCore::FileSystemWritableFileStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebKit::FileSystemStorageHandle::FileHandleWithPath>> const&,void>::map( &v17,  v16);
      if (HIDWORD(v18))
      {
        v11 = v17;
        v12 = 8 * HIDWORD(v18);
        do
        {
          v13 = *v11;
          v11 = (v11 + 8);
          WebKit::FileSystemStorageHandle::closeWritable(v5, v13, 0);
          v12 -= 8;
        }

        while (v12);
      }

      WebKit::FileSystemStorageManager::closeHandle(v4, v5);
      v15 = v17;
      if (v17)
      {
        v17 = 0;
        LODWORD(v18) = 0;
        WTF::fastFree(v15, v14);
      }

      return WTF::RefCounted<WebKit::FileSystemStorageManager>::deref(v4 + 2);
    }
  }

  return this;
}

uint64_t WebKit::FileSystemStorageHandle::closeSyncAccessHandle(uint64_t a1, uint64_t a2, const WTF::StringImpl *a3)
{
  if (*(a1 + 72) == 1)
  {
    if (*(a1 + 56) == a2 && (v4 = *(a1 + 24)) != 0 && (v5 = *(v4 + 8)) != 0)
    {
      v9 = v5 + 2;
      ++v5[2];
      WebKit::FileSystemStorageManager::releaseLockForFile(v5, (a1 + 40), a3);
      if (*(a1 + 72) == 1)
      {
        *(a1 + 72) = 0;
      }

      WTF::RefCounted<WebKit::FileSystemStorageManager>::deref(v9);
      v7 = 0;
      v6 = 0;
    }

    else
    {
      v6 = 1;
      v7 = 10;
    }
  }

  else
  {
    v6 = 1;
    v7 = 10;
  }

  return v7 | (v6 << 8);
}

uint64_t WebKit::FileSystemStorageHandle::closeWritable(uint64_t a1, uint64_t a2, char a3)
{
  v22 = a2;
  v5 = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::FileSystemWritableFileStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::FileSystemWritableFileStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebKit::FileSystemStorageHandle::FileHandleWithPath>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::FileSystemWritableFileStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebKit::FileSystemStorageHandle::FileHandleWithPath>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::FileSystemWritableFileStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::FileSystemWritableFileStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebKit::FileSystemStorageHandle::FileHandleWithPath,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::FileSystemWritableFileStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::FileSystemWritableFileStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WebKit::FileSystemStorageHandle::FileHandleWithPath>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::FileSystemWritableFileStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::FileSystemWritableFileStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebKit::FileSystemStorageHandle::FileHandleWithPath,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::FileSystemWritableFileStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::FileSystemWritableFileStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WebKit::FileSystemStorageHandle::FileHandleWithPath>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::FileSystemWritableFileStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<WebCore::FileSystemWritableFileStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>((a1 + 80), &v22);
  v6 = *(a1 + 80);
  if (v6)
  {
    v6 += 3 * *(v6 - 1);
  }

  if (v6 == v5)
  {
    v12 = 1;
    v11 = 6;
  }

  else
  {
    WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::FileSystemWritableFileStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebKit::FileSystemStorageHandle::FileHandleWithPath,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::FileSystemWritableFileStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::FileSystemWritableFileStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WebKit::FileSystemStorageHandle::FileHandleWithPath>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::take((a1 + 80), v5, v20);
    v9 = *(a1 + 24);
    if (v9 && (v10 = *(v9 + 8)) != 0)
    {
      v15 = v10 + 2;
      ++v10[2];
      WebKit::FileSystemStorageManager::releaseLockForFile(v10, (a1 + 40), v8);
      if (a3)
      {
        v17 = WTF::FileSystemImpl::copyFile((a1 + 40), &v21, v16);
        if (v17)
        {
          v11 = 0;
        }

        else
        {
          v11 = 10;
        }

        v12 = v17 ^ 1;
      }

      else
      {
        WTF::FileSystemImpl::FileHandle::FileHandle(v19);
        WTF::FileSystemImpl::FileHandle::operator=();
        WTF::FileSystemImpl::FileHandle::~FileHandle(v19);
        WTF::FileSystemImpl::deleteFile(&v21, v18);
        v11 = 0;
        v12 = 0;
      }

      WTF::RefCounted<WebKit::FileSystemStorageManager>::deref(v15);
    }

    else
    {
      v11 = 10;
      v12 = 1;
    }

    v13 = v21;
    v21 = 0;
    if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v13, v7);
    }

    WTF::FileSystemImpl::FileHandle::~FileHandle(v20);
  }

  return v11 | (v12 << 8);
}

uint64_t WebKit::FileSystemStorageHandle::isSameEntry(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 24);
  if (!v2)
  {
    return 0;
  }

  v3 = *(v2 + 8);
  if (!v3)
  {
    return 0;
  }

  v8 = *(v3 + 8);
  v7 = v3 + 8;
  *v7 = v8 + 1;
  v15 = a2;
  v9 = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::FileSystemStorageHandle,WTF::RawPtrTraits<WebKit::FileSystemStorageHandle>,WTF::DefaultRefDerefTraits<WebKit::FileSystemStorageHandle>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::FileSystemStorageHandle,WTF::RawPtrTraits<WebKit::FileSystemStorageHandle>,WTF::DefaultRefDerefTraits<WebKit::FileSystemStorageHandle>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::FileSystemStorageHandle,WTF::RawPtrTraits<WebKit::FileSystemStorageHandle>,WTF::DefaultRefDerefTraits<WebKit::FileSystemStorageHandle>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RefPtr<WebKit::FileSystemStorageHandle,WTF::RawPtrTraits<WebKit::FileSystemStorageHandle>,WTF::DefaultRefDerefTraits<WebKit::FileSystemStorageHandle>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::FileSystemStorageHandle,WTF::RawPtrTraits<WebKit::FileSystemStorageHandle>,WTF::DefaultRefDerefTraits<WebKit::FileSystemStorageHandle>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RefPtr<WebKit::FileSystemStorageHandle,WTF::RawPtrTraits<WebKit::FileSystemStorageHandle>,WTF::DefaultRefDerefTraits<WebKit::FileSystemStorageHandle>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>( (v7 + 40),  &v15);
  v12 = *(v7 + 40);
  if (v12)
  {
    v12 += 16 * *(v12 - 4);
  }

  if (v12 == v9)
  {
    v13 = MEMORY[0x1E696EBA8];
  }

  else
  {
    v13 = (*(v9 + 8) + 40);
  }

  v14 = *v13;
  if (*v13)
  {
    atomic_fetch_add_explicit(v14, 2u, memory_order_relaxed);
    if (v14[1])
    {
      v4 = WTF::equal(*(a1 + 40), v14, v11);
    }

    else
    {
      v4 = 0;
    }

    if (atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v14, v10);
    }
  }

  else
  {
    v4 = 0;
  }

  WTF::RefCounted<WebKit::FileSystemStorageManager>::deref(v7);
  return v4;
}

_DWORD *WebKit::FileSystemStorageHandle::requestCreateHandle@<X0>(WTF::String *a1@<X3>, _DWORD *result@<X0>, const WTF::String *a3@<X1>, const WTF::String *a4@<X2>, char a5@<W4>, char *a6@<X8>)
{
  if (*(result + 32) != 1)
  {
    v9 = 8;
    goto LABEL_6;
  }

  v7 = *(result + 3);
  if (!v7 || (v8 = *(v7 + 8)) == 0)
  {
    v9 = 10;
LABEL_6:
    *a6 = v9;
    a6[8] = 1;
    return result;
  }

  ++*(v8 + 8);
  if (WebKit::isValidFileName((result + 10), a1, a4))
  {
    WTF::FileSystemImpl::pathByAppendingComponent();
    WebKit::FileSystemStorageManager::createHandle(&v16, v8, a3, a4, a1, a5, a6);
    v15 = v16;
    v16 = 0;
    if (v15)
    {
      if (atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v15, v14);
      }
    }
  }

  else
  {
    *a6 = 5;
    a6[8] = 1;
  }

  return WTF::RefCounted<WebKit::FileSystemStorageManager>::deref((v8 + 8));
}

uint64_t WebKit::isValidFileName(WebKit *this, const WTF::StringImpl **a2, const WTF::String *a3)
{
  if (!*a2 || !*(*a2 + 1) || (MEMORY[0x19EB01EF0]() & 1) != 0 || (MEMORY[0x19EB01EF0](*a2, "..", 2) & 1) != 0)
  {
    return 0;
  }

  v7 = *a2;
  if (*a2)
  {
    v8 = *(v7 + 1);
    v9 = *(v7 + 1);
    if ((*(v7 + 16) & 4) != 0)
    {
      if (v9)
      {
        v16 = 16;
        if (v9 < 0x10)
        {
          v16 = *(v7 + 1);
        }

        v17 = v16;
        v18 = *(v7 + 1);
        do
        {
          if (*v18 == 47)
          {
            goto LABEL_23;
          }

          ++v18;
          --v17;
        }

        while (v17);
        if (v9 >= 0x11)
        {
          v18 = memchr((v8 + v16), 47, v9 - v16);
          if (v18)
          {
LABEL_23:
            v19 = &v18[-v8];
            goto LABEL_33;
          }
        }
      }
    }

    else if (v9)
    {
      v10 = v8 + 2 * v9;
      if (v9 <= 0x1F)
      {
        v20 = 2 * v9;
        v21 = *(v7 + 1);
        while (*v21 != 47)
        {
          ++v21;
          v20 -= 2;
          if (!v20)
          {
            goto LABEL_34;
          }
        }

LABEL_31:
        if (v21 != v10)
        {
          v19 = (v21 - v8) >> 1;
LABEL_33:
          if (v19 != -1)
          {
            return 0;
          }
        }
      }

      else
      {
        v11.i64[0] = 0x2F002F002F002FLL;
        v11.i64[1] = 0x2F002F002F002FLL;
        v12 = *(v7 + 1);
        while (1)
        {
          v13 = v12 + 1;
          if (&v12[1] > v10)
          {
            break;
          }

          v14 = vceqq_s16(*v12, v11);
          LOWORD(v4) = vmaxvq_u16(v14);
          ++v12;
          if (v4)
          {
            v15 = &v13[-1];
LABEL_30:
            v21 = (v15 + 2 * vminvq_u16(vornq_s8(xmmword_19E703C80, v14)));
            goto LABEL_31;
          }
        }

        if (v12 < v10)
        {
          v15 = v10 - 16;
          v22.i64[0] = 0x2F002F002F002FLL;
          v22.i64[1] = 0x2F002F002F002FLL;
          v14 = vceqq_s16(*(v10 - 16), v22);
          v22.i16[0] = vmaxvq_u16(v14);
          if (v22.i32[0])
          {
            goto LABEL_30;
          }
        }
      }
    }
  }

LABEL_34:
  WTF::FileSystemImpl::pathByAppendingComponent();
  WTF::FileSystemImpl::pathFileName(&v29, &v28, v23);
  v5 = WTF::equal(v29, *a2, v24);
  v26 = v29;
  v29 = 0;
  if (v26 && atomic_fetch_add_explicit(v26, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v26, v25);
  }

  v27 = v28;
  v28 = 0;
  if (v27 && atomic_fetch_add_explicit(v27, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v27, v25);
  }

  return v5;
}

uint64_t WebKit::FileSystemStorageHandle::removeEntry(WebKit::FileSystemStorageHandle *this, const WTF::StringImpl **a2, const WTF::String *a3)
{
  if (*(this + 32) != 1)
  {
    v7 = 1;
    v8 = 8;
    return v8 | (v7 << 8);
  }

  v3 = a3;
  if (!WebKit::isValidFileName((this + 40), a2, a3))
  {
    v7 = 1;
    v8 = 5;
    return v8 | (v7 << 8);
  }

  WTF::FileSystemImpl::pathByAppendingComponent();
  if (!WTF::FileSystemImpl::fileExists(&v12, v4))
  {
    v7 = 1;
    v8 = 2;
    goto LABEL_21;
  }

  v6 = WTF::FileSystemImpl::fileType(&v12, v5);
  if ((v6 & 0x100000000) == 0)
  {
    v7 = 1;
    v8 = 8;
    goto LABEL_21;
  }

  if (!v6)
  {
    v9 = WTF::FileSystemImpl::deleteFile(&v12, v5);
    goto LABEL_17;
  }

  if (v6 == 1)
  {
    if (v3)
    {
      v9 = WTF::FileSystemImpl::deleteNonEmptyDirectory(&v12, v5);
    }

    else
    {
      v9 = WTF::FileSystemImpl::deleteEmptyDirectory(&v12, v5);
    }

LABEL_17:
    if (v9)
    {
      v8 = 0;
    }

    else
    {
      v8 = 10;
    }

    v7 = v9 ^ 1;
    goto LABEL_21;
  }

  if (v6 != 2)
  {
    v8 = 0;
    v7 = 0;
LABEL_21:
    v10 = v12;
    v12 = 0;
    if (v10)
    {
      if (atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v10, v5);
      }
    }

    return v8 | (v7 << 8);
  }

  result = 176;
  __break(0xC471u);
  return result;
}

_DWORD *WebKit::FileSystemStorageHandle::resolve@<X0>(_DWORD *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(result + 3);
  if (v4 && (v5 = *(v4 + 8)) != 0)
  {
    v6 = result;
    v8 = *(v5 + 8);
    v7 = v5 + 8;
    *v7 = v8 + 1;
    *&v20 = a2;
    v9 = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::FileSystemStorageHandle,WTF::RawPtrTraits<WebKit::FileSystemStorageHandle>,WTF::DefaultRefDerefTraits<WebKit::FileSystemStorageHandle>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::FileSystemStorageHandle,WTF::RawPtrTraits<WebKit::FileSystemStorageHandle>,WTF::DefaultRefDerefTraits<WebKit::FileSystemStorageHandle>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::FileSystemStorageHandle,WTF::RawPtrTraits<WebKit::FileSystemStorageHandle>,WTF::DefaultRefDerefTraits<WebKit::FileSystemStorageHandle>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RefPtr<WebKit::FileSystemStorageHandle,WTF::RawPtrTraits<WebKit::FileSystemStorageHandle>,WTF::DefaultRefDerefTraits<WebKit::FileSystemStorageHandle>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::FileSystemStorageHandle,WTF::RawPtrTraits<WebKit::FileSystemStorageHandle>,WTF::DefaultRefDerefTraits<WebKit::FileSystemStorageHandle>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RefPtr<WebKit::FileSystemStorageHandle,WTF::RawPtrTraits<WebKit::FileSystemStorageHandle>,WTF::DefaultRefDerefTraits<WebKit::FileSystemStorageHandle>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>( (v7 + 40),  &v20);
    v11 = *(v7 + 40);
    if (v11)
    {
      v11 += 16 * *(v11 - 4);
    }

    if (v11 == v9)
    {
      v12 = MEMORY[0x1E696EBA8];
    }

    else
    {
      v12 = (*(v9 + 8) + 40);
    }

    v13 = *v12;
    if (*v12)
    {
      atomic_fetch_add_explicit(v13, 2u, memory_order_relaxed);
      if (v13[1])
      {
        if (WTF::StringImpl::startsWith())
        {
          v16 = *(v6 + 5);
          if (v16 && *(v16 + 4) || v13[1] < 0)
          {
            WTF::StringImpl::substring(v13);
          }

          else
          {
            atomic_fetch_add_explicit(v13, 2u, memory_order_relaxed);
            v19 = v13;
          }

          WTF::String::split();
          *a3 = v20;
          v17 = *(&v20 + 1);
          v20 = 0uLL;
          *(a3 + 8) = v17;
          *(a3 + 16) = 0;
          WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v20, v18);
          if (v19 && atomic_fetch_add_explicit(v19, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v19, v10);
          }
        }

        else
        {
          *&v15 = 0;
          v20 = v15;
          *a3 = v15;
          *(a3 + 16) = 0;
          WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v20, v14);
        }
      }

      else
      {
        *a3 = 10;
        *(a3 + 16) = 1;
      }

      if (atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v13, v10);
      }
    }

    else
    {
      *a3 = 10;
      *(a3 + 16) = 1;
    }

    return WTF::RefCounted<WebKit::FileSystemStorageManager>::deref(v7);
  }

  else
  {
    *a3 = 10;
    *(a3 + 16) = 1;
  }

  return result;
}

_DWORD *WebKit::FileSystemStorageHandle::createSyncAccessHandle@<X0>(_DWORD *this@<X0>, uint64_t a2@<X8>)
{
  v3 = *(this + 3);
  if (v3)
  {
    v4 = this;
    this = *(v3 + 8);
    if (this)
    {
      v5 = this + 2;
      ++this[2];
      if (WebKit::FileSystemStorageManager::acquireLockForFile(this, v4 + 5, 0))
      {
        WTF::FileSystemImpl::openFile();
        if (v16 == -1)
        {
          *a2 = 10;
          *(a2 + 24) = 1;
        }

        else
        {
          IPC::SharedFileHandle::create(v14);
          if (v15 == 1)
          {
            IdentifierInternal = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
            v8 = *(v4 + 72);
            *(v4 + 7) = IdentifierInternal;
            *(v4 + 8) = 0;
            if ((v8 & 1) == 0)
            {
              *(v4 + 72) = 1;
            }

            this = WTF::FileSystemImpl::fileSize((v4 + 10), v7);
            if (v9)
            {
              v10 = this;
            }

            else
            {
              v10 = 0;
            }

            if ((v4[18] & 1) == 0 || (v11 = *(v4 + 7), (v15 & 1) == 0))
            {
              __break(1u);
              return this;
            }

            WTF::FileSystemImpl::FileHandle::FileHandle();
            v13 = v10;
            *a2 = v11;
            WTF::FileSystemImpl::FileHandle::FileHandle();
            *(a2 + 16) = v13;
            *(a2 + 24) = 0;
            WTF::FileSystemImpl::FileHandle::~FileHandle(&v12);
            if (v15)
            {
              WTF::FileSystemImpl::FileHandle::~FileHandle(v14);
            }
          }

          else
          {
            *a2 = 1;
            *(a2 + 24) = 1;
          }
        }

        WTF::FileSystemImpl::FileHandle::~FileHandle(&v16);
      }

      else
      {
        *a2 = 6;
        *(a2 + 24) = 1;
      }

      return WTF::RefCounted<WebKit::FileSystemStorageManager>::deref(v5);
    }
  }

  *a2 = 10;
  *(a2 + 24) = 1;
  return this;
}

_DWORD *WebKit::FileSystemStorageHandle::createWritable@<X0>(_DWORD *this@<X0>, const WTF::String *a2@<X1>, _BYTE *a3@<X8>)
{
  v4 = *(this + 3);
  if (v4 && (v5 = *(v4 + 8)) != 0)
  {
    v6 = a2;
    v7 = this;
    ++*(v5 + 8);
    if (WTF::FileSystemImpl::fileExists((this + 10), a2))
    {
      if (WebKit::FileSystemStorageManager::acquireLockForFile(v5, v7 + 5, 1))
      {
        WTF::FileSystemImpl::createTemporaryFile();
        if (v6)
        {
          WTF::FileSystemImpl::copyFile(&v20, (v7 + 5), v8);
        }

        IdentifierInternal = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
        WTF::FileSystemImpl::openFile();
        if (v18 == -1)
        {
          *a3 = 10;
          v12 = 1;
        }

        else
        {
          WTF::FileSystemImpl::FileHandle::FileHandle();
          v9 = v20;
          v20 = 0;
          v17 = v9;
          WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::FileSystemWritableFileStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebKit::FileSystemStorageHandle::FileHandleWithPath,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::FileSystemWritableFileStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::FileSystemWritableFileStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WebKit::FileSystemStorageHandle::FileHandleWithPath>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<WebKit::FileSystemStorageHandle::FileHandleWithPath>(v7 + 10, &IdentifierInternal, v16, &v15);
          v11 = v17;
          v17 = 0;
          if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v11, v10);
          }

          WTF::FileSystemImpl::FileHandle::~FileHandle(v16);
          v12 = 0;
          *a3 = IdentifierInternal;
        }

        a3[8] = v12;
        WTF::FileSystemImpl::FileHandle::~FileHandle(&v18);
        v14 = v20;
        v20 = 0;
        if (v14)
        {
          if (atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v14, v13);
          }
        }
      }

      else
      {
        *a3 = 6;
        a3[8] = 1;
      }
    }

    else
    {
      *a3 = 2;
      a3[8] = 1;
    }

    return WTF::RefCounted<WebKit::FileSystemStorageManager>::deref((v5 + 8));
  }

  else
  {
    *a3 = 10;
    a3[8] = 1;
  }

  return this;
}

void WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::FileSystemWritableFileStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebKit::FileSystemStorageHandle::FileHandleWithPath,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::FileSystemWritableFileStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::FileSystemWritableFileStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WebKit::FileSystemStorageHandle::FileHandleWithPath>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<WebKit::FileSystemStorageHandle::FileHandleWithPath>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *a2;
  if (*a2 == -1 || !v5)
  {
    __break(0xC471u);
    JUMPOUT(0x19DDCAF88);
  }

  v9 = *a1;
  if (!*a1)
  {
    WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::FileSystemWritableFileStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::FileSystemWritableFileStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebKit::FileSystemStorageHandle::FileHandleWithPath>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::FileSystemWritableFileStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebKit::FileSystemStorageHandle::FileHandleWithPath>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::FileSystemWritableFileStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::FileSystemWritableFileStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebKit::FileSystemStorageHandle::FileHandleWithPath,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::FileSystemWritableFileStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::FileSystemWritableFileStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WebKit::FileSystemStorageHandle::FileHandleWithPath>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::FileSystemWritableFileStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand(a1, 0);
    v9 = *a1;
    v5 = *a2;
  }

  v10 = *(v9 - 8);
  v11 = (v5 + ~(v5 << 32)) ^ ((v5 + ~(v5 << 32)) >> 22);
  v12 = 9 * ((v11 + ~(v11 << 13)) ^ ((v11 + ~(v11 << 13)) >> 8));
  v13 = (v12 ^ (v12 >> 15)) + ~((v12 ^ (v12 >> 15)) << 27);
  v14 = v10 & ((v13 >> 31) ^ v13);
  v15 = (v9 + 24 * v14);
  v16 = *v15;
  if (*v15)
  {
    v17 = 0;
    v18 = 1;
    do
    {
      if (v16 == v5)
      {
        v26 = 0;
        v27 = v9 + 24 * *(v9 - 4);
        goto LABEL_29;
      }

      if (v16 == -1)
      {
        v17 = v15;
      }

      v14 = (v14 + v18) & v10;
      v15 = (v9 + 24 * v14);
      v16 = *v15;
      ++v18;
    }

    while (*v15);
    if (v17)
    {
      *v17 = 0;
      v17[2] = 0;
      v17[1] = 0;
      WTF::FileSystemImpl::FileHandle::FileHandle((v17 + 1));
      v17[2] = 0;
      --*(*a1 - 16);
      v5 = *a2;
      v15 = v17;
    }
  }

  *v15 = v5;
  WTF::FileSystemImpl::FileHandle::FileHandle();
  v19 = *(a3 + 8);
  *(a3 + 8) = 0;
  v31 = v19;
  WTF::FileSystemImpl::FileHandle::operator=();
  v21 = v31;
  v31 = 0;
  v22 = v15[2];
  v15[2] = v21;
  if (v22)
  {
    if (atomic_fetch_add_explicit(v22, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v22, v20);
    }

    v23 = v31;
    v31 = 0;
    if (v23 && atomic_fetch_add_explicit(v23, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v23, v20);
    }
  }

  WTF::FileSystemImpl::FileHandle::~FileHandle(&v30);
  v24 = *a1;
  if (*a1)
  {
    v25 = *(v24 - 12) + 1;
  }

  else
  {
    v25 = 1;
  }

  *(v24 - 12) = v25;
  v28 = (*(v24 - 16) + v25);
  v29 = *(v24 - 4);
  if (v29 > 0x400)
  {
    if (v29 <= 2 * v28)
    {
LABEL_25:
      v15 = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::FileSystemWritableFileStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::FileSystemWritableFileStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebKit::FileSystemStorageHandle::FileHandleWithPath>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::FileSystemWritableFileStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebKit::FileSystemStorageHandle::FileHandleWithPath>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::FileSystemWritableFileStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::FileSystemWritableFileStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebKit::FileSystemStorageHandle::FileHandleWithPath,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::FileSystemWritableFileStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::FileSystemWritableFileStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WebKit::FileSystemStorageHandle::FileHandleWithPath>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::FileSystemWritableFileStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand(a1, v15);
      v24 = *a1;
      if (*a1)
      {
        LODWORD(v29) = *(v24 - 4);
      }

      else
      {
        LODWORD(v29) = 0;
      }
    }
  }

  else if (3 * v29 <= 4 * v28)
  {
    goto LABEL_25;
  }

  v27 = v24 + 24 * v29;
  v26 = 1;
LABEL_29:
  *a4 = v15;
  *(a4 + 8) = v27;
  *(a4 + 16) = v26;
}

void WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::FileSystemWritableFileStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebKit::FileSystemStorageHandle::FileHandleWithPath,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::FileSystemWritableFileStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::FileSystemWritableFileStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WebKit::FileSystemStorageHandle::FileHandleWithPath>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::take(uint64_t *a1@<X0>, WTF::StringImpl *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *a1;
  if (*a1)
  {
    v6 += 24 * *(v6 - 4);
  }

  if (v6 == a2)
  {
    v9 = 0;
    v10 = 0;
    WTF::FileSystemImpl::FileHandle::FileHandle(&v9);
    v10 = 0;
    WTF::FileSystemImpl::FileHandle::FileHandle();
    *(a3 + 8) = v10;
    v10 = 0;
    WTF::FileSystemImpl::FileHandle::~FileHandle(&v9);
    return;
  }

  WTF::FileSystemImpl::FileHandle::FileHandle();
  v7 = *(a2 + 2);
  *(a2 + 2) = 0;
  *(a3 + 8) = v7;
  if (*a1)
  {
    v8 = *a1 + 24 * *(*a1 - 4);
    if (v8 == a2)
    {
      return;
    }
  }

  else
  {
    if (!a2)
    {
      return;
    }

    v8 = 0;
  }

  if (v8 != a2)
  {

    WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::FileSystemWritableFileStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::FileSystemWritableFileStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebKit::FileSystemStorageHandle::FileHandleWithPath>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::FileSystemWritableFileStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebKit::FileSystemStorageHandle::FileHandleWithPath>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::FileSystemWritableFileStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::FileSystemWritableFileStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebKit::FileSystemStorageHandle::FileHandleWithPath,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::FileSystemWritableFileStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::FileSystemWritableFileStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WebKit::FileSystemStorageHandle::FileHandleWithPath>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::FileSystemWritableFileStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::remove(a1, a2);
  }
}

unsigned int *WebKit::FileSystemStorageHandle::executeCommandForWritable(uint64_t a1, uint64_t a2, int a3, uint64_t a4, char a5, unint64_t a6, char a7, uint64_t a8, uint64_t a9, WTF *a10, char a11, uint64_t *a12)
{
  LOBYTE(v18) = 0;
  v52 = a2;
  v19 = 1;
  if ((a3 & 0xFFFFFFFD) != 0)
  {
    v20 = 0;
  }

  else
  {
    v20 = 0;
    if ((a11 & 1) == 0)
    {
      v21 = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::FileSystemWritableFileStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::FileSystemWritableFileStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebKit::FileSystemStorageHandle::FileHandleWithPath>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::FileSystemWritableFileStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebKit::FileSystemStorageHandle::FileHandleWithPath>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::FileSystemWritableFileStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::FileSystemWritableFileStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebKit::FileSystemStorageHandle::FileHandleWithPath,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::FileSystemWritableFileStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::FileSystemWritableFileStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WebKit::FileSystemStorageHandle::FileHandleWithPath>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::FileSystemWritableFileStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::FileSystemWritableFileStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebKit::FileSystemStorageHandle::FileHandleWithPath,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::FileSystemWritableFileStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::FileSystemWritableFileStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WebKit::FileSystemStorageHandle::FileHandleWithPath>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::FileSystemWritableFileStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<WebCore::FileSystemWritableFileStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>((a1 + 80), &v52);
      v23 = *(a1 + 80);
      if (v23)
      {
        v23 += 3 * *(v23 - 1);
      }

      if (v23 == v21 || (result = WTF::FileSystemImpl::fileSize((a1 + 40), v22), (v25 & 1) == 0))
      {
        LOBYTE(v18) = 0;
        v19 = 0;
        v20 = 0;
      }

      else
      {
        v26 = result;
        if (a3 == 2)
        {
          if ((a7 & 1) == 0)
          {
            __break(1u);
            goto LABEL_51;
          }

          if (a6 >= result)
          {
            v18 = a6 - result;
          }

          else
          {
            v18 = 0;
          }

          v20 = v18 & 0xFFFFFFFFFFFFFF00;
          v19 = 1;
        }

        else
        {
          v27 = WTF::FileSystemImpl::FileHandle::seek();
          v29 = a10 + v27;
          v30 = __CFADD__(v27, a10);
          v31 = v29 >= v26;
          v32 = v29 - v26;
          if (!v31)
          {
            v32 = 0;
          }

          v33 = v32 & 0xFFFFFFFFFFFFFF00;
          v34 = !v30;
          if (v30)
          {
            LOBYTE(v32) = 0;
            v35 = 0;
          }

          else
          {
            v35 = 1;
          }

          if (!v34)
          {
            v33 = 0;
          }

          if (v28)
          {
            LOBYTE(v18) = v32;
          }

          else
          {
            LOBYTE(v18) = 0;
          }

          if (v28)
          {
            v19 = v35;
          }

          else
          {
            v19 = 0;
          }

          if (v28)
          {
            v20 = v33;
          }

          else
          {
            v20 = 0;
          }
        }
      }
    }
  }

  v36 = *(a1 + 24);
  if (!v36)
  {
    v37 = 0;
    goto LABEL_44;
  }

  v37 = *(v36 + 8);
  if (!v37)
  {
LABEL_44:
    v45 = 1;
    goto LABEL_45;
  }

  ++*(v37 + 8);
  if (!v19)
  {
    v45 = 0;
LABEL_45:
    WebKit::FileSystemStorageHandle::closeWritable(a1, a2, 0);
    v46 = *a12;
    *a12 = 0;
    (*(*v46 + 16))(v46, 266);
    result = (*(*v46 + 8))(v46);
    if (v45)
    {
      return result;
    }

    return WTF::RefCounted<WebKit::FileSystemStorageManager>::deref((v37 + 8));
  }

  v48 = a7;
  result = WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::initializeIfNeeded((a1 + 8), a1);
  v47 = *(a1 + 8);
  atomic_fetch_add(v47, 1u);
  if (a10)
  {
    if (!(a10 >> 32))
    {
      v38 = WTF::fastMalloc(a10);
      v39 = v38;
      for (i = 0; i != a10; i = (i + 1))
      {
        *(i + v38) = *(i + a9);
      }

      goto LABEL_41;
    }

LABEL_51:
    __break(0xC471u);
    return result;
  }

  v39 = 0;
LABEL_41:
  v41 = v18;
  v42 = *a12;
  *a12 = 0;
  v43 = WTF::fastMalloc(0x58);
  *v43 = &unk_1F110A5B0;
  *(v43 + 8) = v47;
  *(v43 + 16) = a2;
  *(v43 + 24) = a3;
  *(v43 + 25) = *v51;
  *(v43 + 28) = *&v51[3];
  *(v43 + 32) = a4;
  *(v43 + 40) = a5;
  *(v43 + 41) = *v50;
  *(v43 + 44) = *&v50[3];
  *(v43 + 48) = a6;
  *(v43 + 56) = v48;
  *(v43 + 64) = v39;
  *(v43 + 72) = a10;
  *(v43 + 76) = a10;
  *(v43 + 80) = v42;
  v52 = v43;
  (*(**(v37 + 32) + 16))(*(v37 + 32), v20 | v41, &v52);
  v44 = v52;
  v52 = 0;
  if (v44)
  {
    (*(*v44 + 8))(v44);
  }

  return WTF::RefCounted<WebKit::FileSystemStorageManager>::deref((v37 + 8));
}

uint64_t WebKit::FileSystemStorageHandle::writables@<X0>(WebKit::FileSystemStorageHandle *this@<X0>, void *a2@<X8>)
{
  v4 = (this + 80);
  v5 = WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,mpark::variant<WTF::String,unsigned long long,long long,BOOL,double>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,mpark::variant<WTF::String,unsigned long long,long long,BOOL,double>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,mpark::variant<WTF::String,unsigned long long,long long,BOOL,double>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<mpark::variant<WTF::String,unsigned long long,long long,BOOL,double>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::begin(this + 10);
  v7 = *(this + 10);
  if (v7)
  {
    v8 = *(v7 - 4);
    v9 = (v7 + 24 * v8);
  }

  else
  {
    v9 = 0;
    v8 = 0;
  }

  v11[0] = v4;
  v11[1] = v5;
  v11[2] = v6;
  v11[3] = v9;
  v11[4] = (v7 + 24 * v8);
  *a2 = 0;
  a2[1] = 0;
  return WTF::Mapper<WTF::Vector<WTF::ObjectIdentifierGeneric<WebCore::FileSystemWritableFileStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> WTF::copyToVectorOf<WTF::ObjectIdentifierGeneric<WebCore::FileSystemWritableFileStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::SizedIteratorRange<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::FileSystemWritableFileStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebKit::FileSystemStorageHandle::FileHandleWithPath,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::FileSystemWritableFileStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::FileSystemWritableFileStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WebKit::FileSystemStorageHandle::FileHandleWithPath>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::HashTableKeysIterator<WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::FileSystemWritableFileStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::FileSystemWritableFileStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebKit::FileSystemStorageHandle::FileHandleWithPath>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::FileSystemWritableFileStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebKit::FileSystemStorageHandle::FileHandleWithPath>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::FileSystemWritableFileStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::FileSystemWritableFileStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebKit::FileSystemStorageHandle::FileHandleWithPath,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::FileSystemWritableFileStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::FileSystemWritableFileStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WebKit::FileSystemStorageHandle::FileHandleWithPath>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::FileSystemWritableFileStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>,WTF::ObjectIdentifierGeneric<WebCore::FileSystemWritableFileStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebKit::FileSystemStorageHandle::FileHandleWithPath>>>(WTF::SizedIteratorRange<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::FileSystemWritableFileStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebKit::FileSystemStorageHandle::FileHandleWithPath,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::FileSystemWritableFileStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::FileSystemWritableFileStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WebKit::FileSystemStorageHandle::FileHandleWithPath>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::HashTableKeysIterator<WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::FileSystemWritableFileStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::FileSystemWritableFileStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebKit::FileSystemStorageHandle::FileHandleWithPath>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::FileSystemWritableFileStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebKit::FileSystemStorageHandle::FileHandleWithPath>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::FileSystemWritableFileStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::FileSystemWritableFileStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebKit::FileSystemStorageHandle::FileHandleWithPath,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::FileSystemWritableFileStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::FileSystemWritableFileStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WebKit::FileSystemStorageHandle::FileHandleWithPath>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::FileSystemWritableFileStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>,WTF::ObjectIdentifierGeneric<WebCore::FileSystemWritableFileStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebKit::FileSystemStorageHandle::FileHandleWithPath>> const&)::{lambda(WTF::ObjectIdentifierGeneric<WebCore::FileSystemWritableFileStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>&&)#1},WTF::Vector<WTF::ObjectIdentifierGeneric<WebCore::FileSystemWritableFileStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::SizedIteratorRange<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::FileSystemWritableFileStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebKit::FileSystemStorageHandle::FileHandleWithPath,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::FileSystemWritableFileStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::FileSystemWritableFileStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WebKit::FileSystemStorageHandle::FileHandleWithPath>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::HashTableKeysIterator<WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::FileSystemWritableFileStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::FileSystemWritableFileStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebKit::FileSystemStorageHandle::FileHandleWithPath>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::FileSystemWritableFileStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebKit::FileSystemStorageHandle::FileHandleWithPath>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::FileSystemWritableFileStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::FileSystemWritableFileStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebKit::FileSystemStorageHandle::FileHandleWithPath,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::FileSystemWritableFileStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::FileSystemWritableFileStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WebKit::FileSystemStorageHandle::FileHandleWithPath>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::FileSystemWritableFileStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>,WTF::ObjectIdentifierGeneric<WebCore::FileSystemWritableFileStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebKit::FileSystemStorageHandle::FileHandleWithPath>> const&,void>::map( a2,  v11);
}

uint64_t WebKit::FileSystemStorageHandle::getHandleNames@<X0>(uint64_t this@<X0>, const WTF::String *a2@<X1>, uint64_t a3@<X8>)
{
  if (*(this + 32) == 1)
  {
    WTF::FileSystemImpl::listDirectory(&v7, (this + 40), a2);
    *a3 = v7;
    v4 = v8;
    v7 = 0;
    v8 = 0;
    *(a3 + 8) = v4;
    this = WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v7, v5);
    v6 = 0;
  }

  else
  {
    *a3 = 8;
    v6 = 1;
  }

  *(a3 + 16) = v6;
  return this;
}

_DWORD *WebKit::FileSystemStorageHandle::getHandle@<X0>(WTF::String *a1@<X2>, uint64_t a2@<X0>, const WTF::String *a3@<X1>, uint64_t a4@<X8>)
{
  result = WebKit::FileSystemStorageHandle::requestCreateHandle(a1, a2, a3, 2, 0, &v10);
  if (!v11)
  {
    v8 = *(a2 + 24);
    if (!v8 || (result = *(v8 + 8)) == 0)
    {
      v7 = 10;
      goto LABEL_7;
    }

    v9 = result + 2;
    ++result[2];
    result = WebKit::FileSystemStorageManager::getType(result, v10);
    if (!v11)
    {
      *a4 = v10;
      *(a4 + 8) = result == 1;
      *(a4 + 16) = 0;
      return WTF::RefCounted<WebKit::FileSystemStorageManager>::deref(v9);
    }

LABEL_11:
    mpark::throw_bad_variant_access(result);
  }

  if (v11 != 1)
  {
    goto LABEL_11;
  }

  v7 = v10;
LABEL_7:
  *a4 = v7;
  *(a4 + 16) = 1;
  return result;
}

uint64_t WebKit::FileSystemStorageHandle::move(uint64_t a1, uint64_t a2, atomic_uint **a3)
{
  v3 = *(a1 + 24);
  if (v3)
  {
    v4 = *(v3 + 8);
    if (v4)
    {
      v9 = (v4 + 8);
      ++*(v4 + 8);
      if (*(a1 + 72))
      {
        v5 = 0;
      }

      else
      {
        if (WebKit::FileSystemStorageManager::getType(v4, a2) != 1)
        {
          v6 = 1;
          v5 = 8;
          goto LABEL_34;
        }

        v23 = a2;
        v12 = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::FileSystemStorageHandle,WTF::RawPtrTraits<WebKit::FileSystemStorageHandle>,WTF::DefaultRefDerefTraits<WebKit::FileSystemStorageHandle>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::FileSystemStorageHandle,WTF::RawPtrTraits<WebKit::FileSystemStorageHandle>,WTF::DefaultRefDerefTraits<WebKit::FileSystemStorageHandle>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::FileSystemStorageHandle,WTF::RawPtrTraits<WebKit::FileSystemStorageHandle>,WTF::DefaultRefDerefTraits<WebKit::FileSystemStorageHandle>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RefPtr<WebKit::FileSystemStorageHandle,WTF::RawPtrTraits<WebKit::FileSystemStorageHandle>,WTF::DefaultRefDerefTraits<WebKit::FileSystemStorageHandle>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::FileSystemStorageHandle,WTF::RawPtrTraits<WebKit::FileSystemStorageHandle>,WTF::DefaultRefDerefTraits<WebKit::FileSystemStorageHandle>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RefPtr<WebKit::FileSystemStorageHandle,WTF::RawPtrTraits<WebKit::FileSystemStorageHandle>,WTF::DefaultRefDerefTraits<WebKit::FileSystemStorageHandle>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>( (v4 + 48),  &v23);
        v15 = *(v4 + 48);
        if (v15)
        {
          v15 += 16 * *(v15 - 4);
        }

        if (v15 == v12)
        {
          v16 = MEMORY[0x1E696EBA8];
        }

        else
        {
          v16 = (*(v12 + 8) + 40);
        }

        v17 = *v16;
        if (*v16)
        {
          atomic_fetch_add_explicit(v17, 2u, memory_order_relaxed);
          v23 = v17;
          if (v17[1])
          {
            if (WebKit::isValidFileName(&v23, a3, v14))
            {
              WTF::FileSystemImpl::pathByAppendingComponent();
              if (WTF::FileSystemImpl::moveFile((a1 + 40), &v22, v18))
              {
                v19 = v22;
                if (v22)
                {
                  atomic_fetch_add_explicit(v22, 2u, memory_order_relaxed);
                }

                v20 = *(a1 + 40);
                *(a1 + 40) = v19;
                if (v20 && atomic_fetch_add_explicit(v20, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  WTF::StringImpl::destroy(v20, v13);
                }

                WTF::String::operator=((a1 + 48), a3);
                v5 = 0;
                v6 = 0;
              }

              else
              {
                v6 = 1;
                v5 = 10;
              }

              v21 = v22;
              v22 = 0;
              if (v21 && atomic_fetch_add_explicit(v21, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v21, v13);
              }
            }

            else
            {
              v6 = 1;
              v5 = 5;
            }
          }

          else
          {
            v6 = 1;
            v5 = 10;
          }

          if (atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v17, v13);
          }

          goto LABEL_34;
        }

        v5 = 10;
      }

      v6 = 1;
LABEL_34:
      WTF::RefCounted<WebKit::FileSystemStorageManager>::deref(v9);
      return v5 | (v6 << 8);
    }
  }

  v5 = 10;
  v6 = 1;
  return v5 | (v6 << 8);
}

_DWORD *WebKit::FileSystemStorageHandle::requestNewCapacityForSyncAccessHandle(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t *a4)
{
  if (*(a1 + 72) != 1 || *(a1 + 56) != a2)
  {
    goto LABEL_6;
  }

  v7 = *(a1 + 64);
  if (v7 >= a3)
  {
    v10 = *a4;
    *a4 = 0;
    (*(*v10 + 16))(v10, v7, 1);
    goto LABEL_7;
  }

  v8 = *(a1 + 24);
  if (!v8 || (v9 = *(v8 + 8)) == 0)
  {
LABEL_6:
    v10 = *a4;
    *a4 = 0;
    (*(*v10 + 16))(v10, 0, 0);
LABEL_7:
    v11 = *(*v10 + 8);

    return v11(v10);
  }

  ++*(v9 + 8);
  if (a3 >= 0x100000)
  {
    if (a3 >> 28)
    {
      v13 = (a3 & 0xFFFFFFFFF8000000) + 0x8000000;
    }

    else
    {
      v14 = log2(a3);
      v13 = ldexp(1.0, v14 + 1);
    }
  }

  else
  {
    v13 = 0x100000;
  }

  WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::initializeIfNeeded((a1 + 8), a1);
  v15 = *(a1 + 8);
  atomic_fetch_add(v15, 1u);
  v16 = *a4;
  *a4 = 0;
  v17 = WTF::fastMalloc(0x28);
  *v17 = &unk_1F110A5D8;
  v17[1] = v15;
  v17[2] = a2;
  v17[3] = v13;
  v17[4] = v16;
  v19 = v17;
  (*(**(v9 + 32) + 16))(*(v9 + 32), v13 - v7, &v19);
  v18 = v19;
  v19 = 0;
  if (v18)
  {
    (*(*v18 + 8))(v18);
  }

  return WTF::RefCounted<WebKit::FileSystemStorageManager>::deref((v9 + 8));
}

void WebKit::CacheStorageDiskStore::~CacheStorageDiskStore(WebKit::CacheStorageDiskStore *this, WTF::StringImpl *a2)
{
  v3 = *(this + 6);
  *(this + 6) = 0;
  if (v3)
  {
    (*(*v3 + 40))(v3);
  }

  v4 = *(this + 5);
  *(this + 5) = 0;
  if (v4)
  {
    (*(*v4 + 40))(v4);
  }

  v5 = *(this + 3);
  *(this + 3) = 0;
  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, a2);
  }

  v6 = *(this + 2);
  *(this + 2) = 0;
  if (v6)
  {
    if (atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v6, a2);
    }
  }
}

{
  v3 = *(this + 6);
  *(this + 6) = 0;
  if (v3)
  {
    (*(*v3 + 40))(v3);
  }

  v4 = *(this + 5);
  *(this + 5) = 0;
  if (v4)
  {
    (*(*v4 + 40))(v4);
  }

  v5 = *(this + 3);
  *(this + 3) = 0;
  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, a2);
  }

  v6 = *(this + 2);
  *(this + 2) = 0;
  if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v6, a2);
  }

  WTF::fastFree(this, a2);
}

void WebKit::CacheStorageMemoryStore::~CacheStorageMemoryStore(WebKit::CacheStorageMemoryStore *this, void *a2)
{
  v2 = *(this + 2);
  if (v2)
  {
    WTF::HashTable<unsigned long long,WTF::KeyValuePair<unsigned long long,std::unique_ptr<WebKit::CacheStorageRecord>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<unsigned long long,std::unique_ptr<WebKit::CacheStorageRecord>>>,WTF::DefaultHash<unsigned long long>,WTF::HashMap<unsigned long long,std::unique_ptr<WebKit::CacheStorageRecord>,WTF::DefaultHash<unsigned long long>,WTF::HashTraits<unsigned long long>,WTF::HashTraits<std::unique_ptr<WebKit::CacheStorageRecord>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<unsigned long long>,WTF::FastMalloc>::deallocateTable(v2, a2);
  }
}

{
  v3 = *(this + 2);
  if (v3)
  {
    WTF::HashTable<unsigned long long,WTF::KeyValuePair<unsigned long long,std::unique_ptr<WebKit::CacheStorageRecord>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<unsigned long long,std::unique_ptr<WebKit::CacheStorageRecord>>>,WTF::DefaultHash<unsigned long long>,WTF::HashMap<unsigned long long,std::unique_ptr<WebKit::CacheStorageRecord>,WTF::DefaultHash<unsigned long long>,WTF::HashTraits<unsigned long long>,WTF::HashTraits<std::unique_ptr<WebKit::CacheStorageRecord>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<unsigned long long>,WTF::FastMalloc>::deallocateTable(v3, a2);
  }

  WTF::fastFree(this, a2);
}

uint64_t WTF::Vector<WebCore::SharedBufferBuilder,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(uint64_t a1, void *a2)
{
  v3 = *(a1 + 12);
  if (v3)
  {
    WTF::VectorDestructor<true,WebCore::SharedBufferBuilder>::destruct(*a1, (*a1 + 8 * v3));
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

unsigned int *WTF::VectorDestructor<true,WebCore::SharedBufferBuilder>::destruct(unsigned int *result, unsigned int **a2)
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
        if (atomic_fetch_add(result + 2, 0xFFFFFFFF) == 1)
        {
          atomic_store(1u, result + 2);
          result = (*(*result + 8))(result);
        }
      }

      ++v3;
    }

    while (v3 != a2);
  }

  return result;
}

uint64_t WTF::makeString<WTF::String,char,unsigned long>(uint64_t result, uint64_t a2, _DWORD *a3)
{
  v5 = result;
  if (!a2)
  {
    goto LABEL_26;
  }

  for (i = *(a2 + 4); ; i = 0)
  {
    v7 = 0;
    v8 = a3;
    do
    {
      ++v7;
      v9 = v8 > 9;
      v8 /= 0xAuLL;
    }

    while (v9);
    if (v7 < 0)
    {
      break;
    }

    v10 = __OFADD__(v7, 1);
    v11 = v7 + 1;
    v12 = v10;
    if (i < 0)
    {
      break;
    }

    if (v12)
    {
      break;
    }

    v13 = (i + v11);
    if (__OFADD__(i, v11))
    {
      break;
    }

    if (!a2 || (*(a2 + 16) & 4) != 0)
    {
      if ((v13 & 0x80000000) != 0)
      {
        break;
      }

      result = WTF::tryFastCompactMalloc((v13 + 20));
      v14 = v20;
      if (!v20)
      {
        break;
      }

      v17 = v20 + 5;
      *v20 = 2;
      v14[1] = v13;
      *(v14 + 1) = v14 + 5;
      v14[4] = 4;
      v19 = a2;
      result = WTF::StringTypeAdapter<WTF::StringImpl *,void>::writeTo<unsigned char>(&v19, v14 + 20);
      v18 = v19;
      if (!v19 || (v18 = *(v19 + 4), v18 < v13))
      {
        *(v17 + v18) = 45;
        v20 = a3;
        result = WTF::StringTypeAdapter<unsigned long long,void>::writeTo<unsigned char>(&v20, v17 + v18 + 1, ~v18 + v13);
        goto LABEL_24;
      }
    }

    else
    {
      if (v13 > 0x7FFFFFEF)
      {
        break;
      }

      result = WTF::tryFastCompactMalloc((2 * v13 + 20));
      v14 = v20;
      if (!v20)
      {
        break;
      }

      *v20 = 2;
      v14[1] = v13;
      *(v14 + 1) = v14 + 5;
      v14[4] = 0;
      v19 = a2;
      result = WTF::StringTypeAdapter<WTF::StringImpl *,void>::writeTo<char16_t>(&v19, v14 + 20);
      v15 = v19;
      if (!v19 || (v15 = *(v19 + 4), v15 < v13))
      {
        v16 = v14 + v15 + 10;
        *v16 = 45;
        v20 = a3;
        result = WTF::StringTypeAdapter<unsigned long long,void>::writeTo<char16_t>(&v20, v16 + 1, ~v15 + v13);
LABEL_24:
        *v5 = v14;
        return result;
      }
    }

    __break(1u);
LABEL_26:
    ;
  }

  *v5 = 0;
  __break(0xC471u);
  return result;
}

uint64_t WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::Vector<WebKit::CacheStorageRecordInformation,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::Vector<WebKit::CacheStorageRecordInformation,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::Vector<WebKit::CacheStorageRecordInformation,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Vector<WebKit::CacheStorageRecordInformation,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(uint64_t a1, WTF::StringImpl *a2)
{
  v3 = *(a1 - 4);
  if (v3)
  {
    v4 = a1 + 8;
    do
    {
      if (*(v4 - 8) != -1)
      {
        WTF::Vector<WebKit::CacheStorageRecordInformation,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v4, a2);
        v5 = *(v4 - 8);
        *(v4 - 8) = 0;
        if (v5)
        {
          if (atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v5, a2);
          }
        }
      }

      v4 += 24;
      --v3;
    }

    while (v3);
  }

  return WTF::fastFree((a1 - 16), a2);
}

void WebKit::CacheStorageRecordInformation::~CacheStorageRecordInformation(WebKit::CacheStorageRecordInformation *this, WTF::StringImpl *a2)
{
  v3 = *(this + 19);
  if (v3)
  {
    WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::String>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v3, a2);
  }

  v4 = *(this + 13);
  *(this + 13) = 0;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, a2);
  }

  v5 = *(this + 3);
  *(this + 3) = 0;
  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, a2);
  }

  v6 = *(this + 2);
  *(this + 2) = 0;
  if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v6, a2);
  }

  v7 = *(this + 1);
  *(this + 1) = 0;
  if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v7, a2);
  }

  v8 = *this;
  *this = 0;
  if (v8)
  {
    if (atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v8, a2);
    }
  }
}

uint64_t WebCore::ResourceResponseData::operator=(uint64_t a1, uint64_t a2)
{
  WTF::URL::operator=(a1, a2);
  v5 = *(a2 + 40);
  *(a2 + 40) = 0;
  v6 = *(a1 + 40);
  *(a1 + 40) = v5;
  if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v6, v4);
  }

  v7 = *(a2 + 48);
  v8 = *(a2 + 56);
  *(a2 + 56) = 0;
  v9 = *(a1 + 56);
  *(a1 + 48) = v7;
  *(a1 + 56) = v8;
  if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v9, v4);
  }

  *(a1 + 64) = *(a2 + 64);
  v10 = *(a2 + 72);
  *(a2 + 72) = 0;
  v11 = *(a1 + 72);
  *(a1 + 72) = v10;
  if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v11, v4);
  }

  v12 = *(a2 + 80);
  *(a2 + 80) = 0;
  v13 = *(a1 + 80);
  *(a1 + 80) = v12;
  if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v13, v4);
  }

  v14 = *(a1 + 100);
  if (v14)
  {
    WTF::VectorDestructor<true,WebCore::HTTPHeaderMap::CommonHeader>::destruct(*(a1 + 88), (*(a1 + 88) + 16 * v14));
  }

  WTF::VectorBuffer<unsigned char,0ul,WTF::FastMalloc>::adopt(a1 + 88, (a2 + 88));
  v15 = *(a1 + 116);
  if (v15)
  {
    WTF::VectorTypeOperations<WebCore::HTTPHeaderMap::UncommonHeader>::destruct(*(a1 + 104), (*(a1 + 104) + 16 * v15));
  }

  WTF::VectorBuffer<unsigned char,0ul,WTF::FastMalloc>::adopt(a1 + 104, (a2 + 104));
  if (*(a1 + 248) == *(a2 + 248))
  {
    if (*(a1 + 248))
    {
      v17 = *(a2 + 120);
      *(a1 + 136) = *(a2 + 136);
      *(a1 + 120) = v17;
      v18 = *(a2 + 152);
      v19 = *(a2 + 168);
      v20 = *(a2 + 184);
      *(a1 + 200) = *(a2 + 200);
      *(a1 + 184) = v20;
      *(a1 + 168) = v19;
      *(a1 + 152) = v18;
      v21 = *(a2 + 208);
      *(a2 + 208) = 0;
      v22 = *(a1 + 208);
      *(a1 + 208) = v21;
      if (v22 && atomic_fetch_add_explicit(v22, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v22, v16);
      }

      v23 = *(a2 + 216);
      *(a1 + 232) = *(a2 + 232);
      *(a1 + 216) = v23;
      v24 = *(a2 + 240);
      *(a2 + 240) = 0;
      v25 = *(a1 + 240);
      *(a1 + 240) = v24;
      if (v25)
      {
        WTF::RefCounted<WebCore::AdditionalNetworkLoadMetricsForWebInspector>::deref(v25, v16);
      }
    }
  }

  else if (*(a1 + 248))
  {
    v26 = *(a1 + 240);
    *(a1 + 240) = 0;
    if (v26)
    {
      WTF::RefCounted<WebCore::AdditionalNetworkLoadMetricsForWebInspector>::deref(v26, v16);
    }

    v27 = *(a1 + 208);
    *(a1 + 208) = 0;
    if (v27 && atomic_fetch_add_explicit(v27, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v27, v16);
    }

    *(a1 + 248) = 0;
  }

  else
  {
    v28 = *(a2 + 120);
    *(a1 + 136) = *(a2 + 136);
    *(a1 + 120) = v28;
    v29 = *(a2 + 152);
    v30 = *(a2 + 168);
    v31 = *(a2 + 184);
    *(a1 + 200) = *(a2 + 200);
    *(a1 + 184) = v31;
    *(a1 + 168) = v30;
    *(a1 + 152) = v29;
    v32 = *(a2 + 208);
    *(a2 + 208) = 0;
    *(a1 + 208) = v32;
    v33 = *(a2 + 216);
    *(a1 + 232) = *(a2 + 232);
    *(a1 + 216) = v33;
    v34 = *(a2 + 240);
    *(a2 + 240) = 0;
    *(a1 + 240) = v34;
    *(a1 + 248) = 1;
  }

  v35 = *(a2 + 256);
  *(a1 + 260) = *(a2 + 260);
  *(a1 + 256) = v35;
  v36 = *(a2 + 264);
  *(a2 + 264) = 0;
  v37 = *(a1 + 264);
  *(a1 + 264) = v36;
  if (v37 && atomic_fetch_add_explicit(v37, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v37, v16);
  }

  *(a1 + 272) = *(a2 + 272);
  std::__optional_storage_base<WebCore::CertificateInfo,false>::__assign_from[abi:sn200100]<std::__optional_move_assign_base<WebCore::CertificateInfo,false>>(a1 + 280, (a2 + 280));
  return a1;
}

uint64_t *WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::String>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::HashTable(uint64_t *a1, void **a2)
{
  *a1 = 0;
  v3 = *a2;
  if (*a2)
  {
    v5 = *(v3 - 3);
    if (v5)
    {
      v7 = WTF::HashTable<Inspector::Protocol::Automation::VirtualKey,WTF::KeyValuePair<Inspector::Protocol::Automation::VirtualKey,Inspector::Protocol::Automation::VirtualKey>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<Inspector::Protocol::Automation::VirtualKey,Inspector::Protocol::Automation::VirtualKey>>,WTF::IntHash<Inspector::Protocol::Automation::VirtualKey>,WTF::HashMap<Inspector::Protocol::Automation::VirtualKey,Inspector::Protocol::Automation::VirtualKey,WTF::IntHash<Inspector::Protocol::Automation::VirtualKey>,WTF::StrongEnumHashTraits<Inspector::Protocol::Automation::VirtualKey>,WTF::HashTraits<Inspector::Protocol::Automation::VirtualKey>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::StrongEnumHashTraits<Inspector::Protocol::Automation::VirtualKey>,WTF::FastMalloc>::computeBestTableSize(*(v3 - 3));
      v8 = WTF::fastZeroedMalloc((16 * v7 + 16));
      *a1 = (v8 + 4);
      v8[2] = v7 - 1;
      v8[3] = v7;
      *v8 = 0;
      v8[1] = v5;
      v9 = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::begin(a2);
      v10 = v9;
      v12 = v11;
      v13 = *a2 ? &(*a2)[2 * *(*a2 - 1)] : 0;
      if (v13 != v9)
      {
        do
        {
          v20 = v10;
          v16 = *a1;
          if (*a1)
          {
            v14 = *(v16 - 8);
          }

          else
          {
            v14 = 0;
          }

          v17 = (*v10)[4];
          if (v17 < 0x100)
          {
            v15 = WTF::StringImpl::hashSlowCase(*v10);
          }

          else
          {
            v15 = v17 >> 8;
          }

          v18 = 0;
          do
          {
            v19 = v15 & v14;
            v15 = ++v18 + v19;
          }

          while (*(v16 + 16 * v19));
          WTF::IdentityHashTranslator<WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::String>>::translate<WTF::KeyValuePair<WTF::String,WTF::String>,WTF::String,WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::String>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::HashTable(WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::String>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc> const&)::{lambda(void)#1}>((v16 + 16 * v19), v10, &v20);
          do
          {
            v10 += 2;
          }

          while (v10 != v12 && *v10 + 1 <= 1);
        }

        while (v10 != v13);
      }
    }
  }

  return a1;
}

WTF::StringImpl *WTF::IdentityHashTranslator<WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::String>>::translate<WTF::KeyValuePair<WTF::String,WTF::String>,WTF::String,WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::String>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::HashTable(WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::String>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc> const&)::{lambda(void)#1}>(WTF::StringImpl **a1, WTF::StringImpl *a2, atomic_uint ***a3)
{
  v4 = *a3;
  v5 = **a3;
  if (v5)
  {
    atomic_fetch_add_explicit(v5, 2u, memory_order_relaxed);
  }

  v6 = v4[1];
  if (v6)
  {
    atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed);
  }

  v7 = *a1;
  *a1 = v5;
  if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v7, a2);
  }

  result = a1[1];
  a1[1] = v6;
  if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {

    return WTF::StringImpl::destroy(result, a2);
  }

  return result;
}

void WebKit::StoredRecordInformation::~StoredRecordInformation(WebKit::StoredRecordInformation *this, WTF::StringImpl *a2)
{
  WebCore::ResourceResponseData::~ResourceResponseData((this + 624), a2);
  v4 = *(this + 76);
  *(this + 76) = 0;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, v3);
  }

  v5 = *(this + 71);
  *(this + 71) = 0;
  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, v3);
  }

  WebCore::ResourceRequest::~ResourceRequest((this + 360));
  v7 = *(this + 24);
  *(this + 24) = 0;
  if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v7, v6);
  }

  v8 = *(this + 23);
  *(this + 23) = 0;
  if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v8, v6);
  }

  v9 = *(this + 22);
  *(this + 22) = 0;
  if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v9, v6);
  }

  v10 = *(this + 21);
  *(this + 21) = 0;
  if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v10, v6);
  }

  WebKit::CacheStorageRecordInformation::~CacheStorageRecordInformation(this, v6);
}

uint64_t WebKit::CacheStorageRecord::CacheStorageRecord(uint64_t a1, uint64_t a2, char a3, const WebCore::ResourceRequest *a4, int *a5, atomic_uint **a6, char a7, uint64_t a8, uint64_t a9, uint64_t *a10)
{
  v18 = WebKit::NetworkCache::Key::Key(a1, a2);
  v19 = *(a2 + 72);
  *(v18 + 88) = *(a2 + 88);
  *(v18 + 72) = v19;
  v20 = *(a2 + 104);
  if (v20)
  {
    atomic_fetch_add_explicit(v20, 2u, memory_order_relaxed);
  }

  *(a1 + 104) = v20;
  v21 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v21;
  *(a1 + 144) = *(a2 + 144);
  WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::String>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::HashTable((a1 + 152), (a2 + 152));
  *(a1 + 160) = a3;
  WebCore::ResourceRequest::ResourceRequest((a1 + 168), a4);
  v22 = *a5;
  *(a1 + 371) = *(a5 + 3);
  *(a1 + 368) = v22;
  v23 = *(a5 + 1);
  if (v23)
  {
    atomic_fetch_add_explicit(v23, 2u, memory_order_relaxed);
  }

  *(a1 + 376) = v23;
  v24 = *(a5 + 2);
  *(a1 + 384) = *(a5 + 1);
  *(a1 + 400) = v24;
  v25 = *a6;
  if (*a6)
  {
    atomic_fetch_add_explicit(v25, 2u, memory_order_relaxed);
  }

  *(a1 + 416) = v25;
  *(a1 + 424) = a7;
  WebCore::ResourceResponseData::ResourceResponseData(a1 + 432, a8);
  *(a1 + 728) = a9;
  *(a1 + 736) = 0;
  *(a1 + 744) = -1;
  if (!*(a10 + 8))
  {
    v26 = 0;
    goto LABEL_11;
  }

  if (*(a10 + 8) != 255)
  {
    v26 = *a10;
    *a10 = 0;
LABEL_11:
    *(a1 + 736) = v26;
    *(a1 + 744) = *(a10 + 8);
  }

  return a1;
}

uint64_t WebKit::CacheStorageRecord::CacheStorageRecord(uint64_t a1, uint64_t *a2)
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
  *(a1 + 88) = *(a2 + 11);
  *(a1 + 72) = v10;
  WTF::URL::URL(a1 + 104, a2 + 13);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 152) = 0;
  v11 = a2[19];
  a2[19] = 0;
  *(a1 + 152) = v11;
  *(a1 + 160) = *(a2 + 160);
  WTF::URL::URL(a1 + 168, a2 + 21);
  WTF::URL::URL(a1 + 208, a2 + 26);
  *(a1 + 248) = a2[31];
  v12 = a2[32];
  a2[32] = 0;
  *(a1 + 264) = 0;
  *(a1 + 272) = 0;
  *(a1 + 256) = v12;
  WTF::VectorBuffer<unsigned char,0ul,WTF::FastMalloc>::adopt(a1 + 264, a2 + 33);
  *(a1 + 280) = 0;
  *(a1 + 288) = 0;
  WTF::VectorBuffer<unsigned char,0ul,WTF::FastMalloc>::adopt(a1 + 280, a2 + 35);
  *(a1 + 296) = 0;
  *(a1 + 304) = 0;
  WTF::VectorBuffer<WTF::String,0ul,WTF::FastMalloc>::adopt(a1 + 296, a2 + 74);
  v13 = *(a2 + 78);
  *(a1 + 316) = *(a2 + 316);
  *(a1 + 312) = v13;
  v14 = a2[40];
  a2[40] = 0;
  *(a1 + 320) = v14;
  v15 = a2[41];
  a2[41] = 0;
  *(a1 + 328) = v15;
  v16 = a2[42];
  a2[42] = 0;
  *(a1 + 336) = v16;
  v17 = a2[43];
  *(a1 + 352) = *(a2 + 352);
  *(a1 + 344) = v17;
  v18 = a2[45];
  a2[45] = 0;
  *(a1 + 360) = v18;
  v19 = *(a2 + 92);
  *(a1 + 371) = *(a2 + 371);
  *(a1 + 368) = v19;
  v20 = a2[47];
  a2[47] = 0;
  *(a1 + 376) = v20;
  v21 = *(a2 + 25);
  *(a1 + 384) = *(a2 + 24);
  *(a1 + 400) = v21;
  v22 = a2[52];
  a2[52] = 0;
  *(a1 + 416) = v22;
  *(a1 + 424) = *(a2 + 424);
  WebCore::ResourceResponseData::ResourceResponseData(a1 + 432, (a2 + 54));
  *(a1 + 728) = a2[91];
  *(a1 + 736) = 0;
  *(a1 + 744) = -1;
  if (!*(a2 + 744))
  {
    v23 = 0;
    goto LABEL_5;
  }

  if (*(a2 + 744) != 255)
  {
    v23 = a2[92];
    a2[92] = 0;
LABEL_5:
    *(a1 + 736) = v23;
    *(a1 + 744) = *(a2 + 744);
  }

  return a1;
}

void WTF::Vector<WebKit::CacheStorageRecordInformation,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::unsafeAppendWithoutCapacityCheck(uint64_t a1, uint64_t *a2)
{
  v4 = *a1 + 160 * *(a1 + 12);
  v5 = *a2;
  *a2 = 0;
  *v4 = v5;
  v6 = a2[1];
  a2[1] = 0;
  *(v4 + 8) = v6;
  v7 = a2[2];
  a2[2] = 0;
  *(v4 + 16) = v7;
  v8 = a2[3];
  a2[3] = 0;
  *(v4 + 24) = v8;
  v9 = *(a2 + 2);
  v10 = *(a2 + 3);
  *(v4 + 64) = a2[8];
  *(v4 + 32) = v9;
  *(v4 + 48) = v10;
  v11 = *(a2 + 9);
  *(v4 + 88) = *(a2 + 11);
  *(v4 + 72) = v11;
  WTF::URL::URL(v4 + 104, a2 + 13);
  *(v4 + 144) = *(a2 + 144);
  *(v4 + 152) = 0;
  v12 = a2[19];
  a2[19] = 0;
  *(v4 + 152) = v12;
  ++*(a1 + 12);
}

unint64_t *WTF::Deque<WTF::String,0ul>::expandCapacity(unint64_t *result)
{
  v1 = *(result + 6);
  v2 = v1 + (v1 >> 2);
  if (v2 >= 0x1FFFFFFF)
  {
    __break(0xC471u);
    return result;
  }

  v3 = result;
  v4 = result[2];
  if (v2 <= 0xF)
  {
    v2 = 15;
  }

  v5 = v2 + 1;
  v6 = WTF::fastMalloc((8 * (v2 + 1)));
  *(v3 + 6) = v5;
  v3[2] = v6;
  v7 = *v3;
  v8 = v3[1];
  v9 = v8 - *v3;
  if (v8 >= *v3)
  {
    v8 = v1 - v7;
    if (v1 >= v7)
    {
      if (v9 == -1)
      {
LABEL_18:
        v9 = v8;
LABEL_19:
        result = memcpy(&v6[8 * v7], &v4[8 * v7], 8 * v9);
        if (!v4)
        {
          return result;
        }

        goto LABEL_9;
      }

      if (v8 >= v9)
      {
        goto LABEL_19;
      }
    }

LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v8 > v1)
  {
    goto LABEL_17;
  }

  v6 = memcpy(v6, v4, 8 * v8);
  v7 = *v3;
  v8 = v1 - *v3;
  if (v1 < *v3)
  {
    goto LABEL_17;
  }

  v10 = *(v3 + 6);
  if (v10 < v8)
  {
    goto LABEL_17;
  }

  v11 = v10 - v8;
  result = memcpy((v3[2] + 8 * (v10 - v8)), &v4[8 * v7], 8 * v8);
  *v3 = v11;
  if (!v4)
  {
    return result;
  }

LABEL_9:
  if (v3[2] == v4)
  {
    v3[2] = 0;
    *(v3 + 6) = 0;
  }

  return WTF::fastFree(v4, v12);
}

uint64_t WTF::HashTable<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::Vector<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::Vector<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashMap<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::Vector<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WTF::Vector<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::FastMalloc>::deallocateTable(uint64_t a1, void *a2)
{
  v3 = *(a1 - 4);
  if (v3)
  {
    v4 = a1 + 16;
    do
    {
      if (*(v4 - 8) != -1)
      {
        v5 = *v4;
        if (*v4)
        {
          *v4 = 0;
          *(v4 + 8) = 0;
          WTF::fastFree(v5, a2);
        }
      }

      v4 += 32;
      --v3;
    }

    while (v3);
  }

  return WTF::fastFree((a1 - 16), a2);
}

uint64_t WTF::HashTable<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::Ref<WebKit::CacheStorageCache,WTF::RawPtrTraits<WebKit::CacheStorageCache>,WTF::DefaultRefDerefTraits<WebKit::CacheStorageCache>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::Ref<WebKit::CacheStorageCache,WTF::RawPtrTraits<WebKit::CacheStorageCache>,WTF::DefaultRefDerefTraits<WebKit::CacheStorageCache>>>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashMap<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::Ref<WebKit::CacheStorageCache,WTF::RawPtrTraits<WebKit::CacheStorageCache>,WTF::DefaultRefDerefTraits<WebKit::CacheStorageCache>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WTF::Ref<WebKit::CacheStorageCache,WTF::RawPtrTraits<WebKit::CacheStorageCache>,WTF::DefaultRefDerefTraits<WebKit::CacheStorageCache>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::FastMalloc>::deallocateTable(uint64_t a1, WTF::StringImpl *a2)
{
  v3 = *(a1 - 4);
  if (v3)
  {
    v4 = (a1 + 16);
    do
    {
      if (*(v4 - 1) != -1)
      {
        v5 = *v4;
        *v4 = 0;
        if (v5)
        {
          WTF::RefCounted<WebKit::CacheStorageCache>::deref((v5 + 8), a2);
        }
      }

      v4 += 3;
      --v3;
    }

    while (v3);
  }

  return WTF::fastFree((a1 - 16), a2);
}

void **std::unique_ptr<WebKit::CacheStorageRecord>::reset[abi:sn200100](void **result, void *a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    mpark::detail::move_constructor<mpark::detail::traits<decltype(nullptr),WTF::Ref<WebCore::FormData,WTF::RawPtrTraits<WebCore::FormData>,WTF::DefaultRefDerefTraits<WebCore::FormData>>,WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>>,(mpark::detail::Trait)1>::~move_constructor((v2 + 92));
    WebCore::ResourceResponseData::~ResourceResponseData((v2 + 54), v3);
    v5 = v2[52];
    v2[52] = 0;
    if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v5, v4);
    }

    v6 = v2[47];
    v2[47] = 0;
    if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v6, v4);
    }

    WebCore::ResourceRequest::~ResourceRequest((v2 + 21));
    WebKit::CacheStorageRecordInformation::~CacheStorageRecordInformation(v2, v7);

    return WTF::fastFree(v8, v9);
  }

  return result;
}

WTF::StringImpl *WTF::CrossThreadCopierBase<false,false,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>::copy@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  result = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::begin(a1);
  v5 = result;
  v7 = v6;
  v8 = *a1;
  if (*a1)
  {
    v9 = &v8[2 * *(v8 - 1)];
  }

  else
  {
    v9 = 0;
  }

  if (v9 != result)
  {
    do
    {
      WTF::String::isolatedCopy();
      v11 = *v5;
      *v5 = v13;
      if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v11, v10);
      }

      WTF::String::isolatedCopy();
      v13 = 0;
      result = v5[1];
      v5[1] = 0;
      if (result)
      {
        if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(result, v12);
        }

        result = 0;
        v13 = 0;
      }

      do
      {
        v5 += 2;
      }

      while (v5 != v7 && *v5 + 1 <= 1);
    }

    while (v5 != v9);
    v8 = *a1;
  }

  *a1 = 0;
  *a2 = v8;
  return result;
}

WTF::StringImpl *WTF::CrossThreadCopierBase<false,false,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>::copy@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  *a2 = 0;
  result = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::begin(a1);
  v5 = result;
  v7 = v6;
  v8 = 0;
  if (*a1)
  {
    v8 = &(*a1)[2 * *(*a1 - 1)];
  }

  if (v8 != result)
  {
    do
    {
      WTF::String::isolatedCopy();
      WTF::String::isolatedCopy();
      WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<WTF::String>(a2, &v12, &v11, v13);
      v10 = v11;
      v11 = 0;
      if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v10, v9);
      }

      result = v12;
      v12 = 0;
      if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        result = WTF::StringImpl::destroy(result, v9);
      }

      do
      {
        v5 = (v5 + 16);
      }

      while (v5 != v7 && (*v5 + 1) <= 1);
    }

    while (v5 != v8);
  }

  return result;
}

uint64_t WTF::HashTable<unsigned long long,WTF::KeyValuePair<unsigned long long,std::unique_ptr<WebKit::CacheStorageRecord>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<unsigned long long,std::unique_ptr<WebKit::CacheStorageRecord>>>,WTF::DefaultHash<unsigned long long>,WTF::HashMap<unsigned long long,std::unique_ptr<WebKit::CacheStorageRecord>,WTF::DefaultHash<unsigned long long>,WTF::HashTraits<unsigned long long>,WTF::HashTraits<std::unique_ptr<WebKit::CacheStorageRecord>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<unsigned long long>,WTF::FastMalloc>::deallocateTable(uint64_t a1, void *a2)
{
  v3 = *(a1 - 4);
  if (v3)
  {
    v4 = (a1 + 8);
    do
    {
      if (*(v4 - 1) != -1)
      {
        std::unique_ptr<WebKit::CacheStorageRecord>::reset[abi:sn200100](v4, 0);
      }

      v4 += 2;
      --v3;
    }

    while (v3);
  }

  return WTF::fastFree((a1 - 16), a2);
}

void *WTF::Detail::CallableWrapper<WebKit::BackgroundFetchStoreManager::BackgroundFetchStoreManager(WTF::String const&,WTF::Ref<WTF::WorkQueue,WTF::RawPtrTraits<WTF::WorkQueue>,WTF::DefaultRefDerefTraits<WTF::WorkQueue>> &&,WTF::Function<void ()(unsigned long long,WTF::CompletionHandler<void ()(BOOL)> &&)> &&)::$_0,void>::~CallableWrapper(void *a1, WTF::StringImpl *a2)
{
  v3 = a1[1];
  *a1 = &unk_1F110A0B0;
  a1[1] = 0;
  if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v3, a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::BackgroundFetchStoreManager::BackgroundFetchStoreManager(WTF::String const&,WTF::Ref<WTF::WorkQueue,WTF::RawPtrTraits<WTF::WorkQueue>,WTF::DefaultRefDerefTraits<WTF::WorkQueue>> &&,WTF::Function<void ()(unsigned long long,WTF::CompletionHandler<void ()(BOOL)> &&)> &&)::$_0,void>::~CallableWrapper(WTF *this, WTF::StringImpl *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F110A0B0;
  *(this + 1) = 0;
  if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

void *WTF::Detail::CallableWrapper<WebKit::BackgroundFetchStoreManager::initializeFetches(WTF::CompletionHandler<void ()(WTF::Vector<std::pair<WTF::RefPtr<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>,WTF::String>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)> &&)::$_0,void>::~CallableWrapper(void *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F110A0D8;
  v3 = a1[3];
  a1[3] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = a1[2];
  a1[2] = 0;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, a2);
  }

  v5 = a1[1];
  a1[1] = 0;
  if (v5)
  {
    (*(*v5 + 40))(v5);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::BackgroundFetchStoreManager::initializeFetches(WTF::CompletionHandler<void ()(WTF::Vector<std::pair<WTF::RefPtr<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>,WTF::String>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)> &&)::$_0,void>::~CallableWrapper(WTF *this, WTF::StringImpl *a2)
{
  *this = &unk_1F110A0D8;
  v3 = *(this + 3);
  *(this + 3) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 2);
  *(this + 2) = 0;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, a2);
  }

  v5 = *(this + 1);
  *(this + 1) = 0;
  if (v5)
  {
    (*(*v5 + 40))(v5);
  }

  return WTF::fastFree(this, a2);
}

unsigned int *WTF::Detail::CallableWrapper<WebKit::BackgroundFetchStoreManager::initializeFetches(WTF::CompletionHandler<void ()(WTF::Vector<std::pair<WTF::RefPtr<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>,WTF::String>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)> &&)::$_0,void>::call(void *a1, const WTF::String *a2)
{
  v45 = 0;
  v46 = 0;
  WTF::FileSystemImpl::listDirectory(&v39, (a1 + 2), a2);
  if (HIDWORD(v40[0]))
  {
    v6 = v39;
    v7 = 8 * HIDWORD(v40[0]);
    do
    {
      if (*v6 && WTF::StringImpl::endsWith())
      {
        v8 = a1[2];
        if (v8)
        {
          v9 = *(v8 + 16);
          v8 = *(v8 + 4);
          v10 = ((v9 >> 2) & 1) << 32;
        }

        else
        {
          v10 = 0x100000000;
        }

        v11 = *v6;
        if (*v6)
        {
          v12 = *(v11 + 16);
          v11 = *(v11 + 4);
          v13 = ((v12 >> 2) & 1) << 32;
        }

        else
        {
          v13 = 0x100000000;
        }

        v2 = v8 | v2 & 0xFFFFFF0000000000 | v10;
        v3 = v11 | v3 & 0xFFFFFF0000000000 | v13;
        WTF::FileSystemImpl::pathByAppendingComponent();
        v15 = WTF::FileSystemImpl::fileSize(&v44, v14);
        if (v5)
        {
          WTF::pageSize(v15);
          WebCore::SharedBuffer::createWithContentsOfFile();
          v16 = v43;
          v43 = 0;
          v41 = v16;
          v17 = *v6;
          *v6 = 0;
          v42 = v17;
          v18 = HIDWORD(v46);
          if (HIDWORD(v46) == v46)
          {
            v19 = WTF::Vector<std::pair<unsigned long long,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(&v45, HIDWORD(v46) + 1, &v41);
            v18 = HIDWORD(v46);
            v20 = (v45 + 16 * HIDWORD(v46));
            v21 = *v19;
            *v19 = 0;
            v22 = (v19 + 1);
            *v20 = v21;
          }

          else
          {
            v20 = (v45 + 16 * HIDWORD(v46));
            v41 = 0;
            *v20 = v16;
            v22 = &v42;
          }

          v23 = *v22;
          *v22 = 0;
          v20[1] = v23;
          HIDWORD(v46) = v18 + 1;
          v24 = v42;
          v42 = 0;
          if (v24 && atomic_fetch_add_explicit(v24, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v24, v5);
          }

          v25 = v41;
          v41 = 0;
          if (v25 && atomic_fetch_add(v25 + 2, 0xFFFFFFFF) == 1)
          {
            atomic_store(1u, v25 + 2);
            (*(*v25 + 8))(v25);
          }

          v26 = v43;
          v43 = 0;
          if (v26 && atomic_fetch_add(v26 + 2, 0xFFFFFFFF) == 1)
          {
            atomic_store(1u, v26 + 2);
            (*(*v26 + 8))(v26);
          }
        }

        v27 = v44;
        v44 = 0;
        if (v27 && atomic_fetch_add_explicit(v27, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v27, v5);
        }
      }

      ++v6;
      v7 -= 8;
    }

    while (v7);
    v28 = v45;
    v29 = v46;
  }

  else
  {
    v28 = 0;
    v29 = 0;
  }

  v38 = v29;
  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v39, v5);
  v30 = a1[1];
  v31 = a1[3];
  a1[3] = 0;
  v45 = 0;
  v46 = 0;
  v32 = WTF::fastMalloc(0x20);
  *v32 = &unk_1F110A100;
  *(v32 + 1) = v31;
  v39 = 0;
  v40[0] = 0;
  *(v32 + 2) = v28;
  v40[1] = 0;
  *(v32 + 3) = v38;
  v41 = v32;
  (*(*v30 + 48))(v30, &v41);
  v34 = v41;
  v41 = 0;
  if (v34)
  {
    (*(*v34 + 8))(v34);
  }

  WTF::Vector<std::pair<WTF::RefPtr<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>,WTF::String>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v40, v33);
  v36 = v39;
  v39 = 0;
  if (v36)
  {
    (*(*v36 + 8))(v36);
  }

  return WTF::Vector<std::pair<WTF::RefPtr<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>,WTF::String>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v45, v35);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::BackgroundFetchStoreManager::initializeFetches(WTF::CompletionHandler<void ()(WTF::Vector<std::pair<WTF::RefPtr<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>,WTF::String>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)> &&)::$_0::operator()(void)::{lambda(void)#1},void>::~CallableWrapper(uint64_t a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F110A100;
  WTF::Vector<std::pair<WTF::RefPtr<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>,WTF::String>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector((a1 + 16), a2);
  v3 = *(a1 + 8);
  *(a1 + 8) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return a1;
}

{
  *a1 = &unk_1F110A100;
  WTF::Vector<std::pair<WTF::RefPtr<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>,WTF::String>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector((a1 + 16), a2);
  v4 = *(a1 + 8);
  *(a1 + 8) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  return WTF::fastFree(a1, v3);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::BackgroundFetchStoreManager::initializeFetches(WTF::CompletionHandler<void ()(WTF::Vector<std::pair<WTF::RefPtr<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>,WTF::String>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)> &&)::$_0::operator()(void)::{lambda(void)#1},void>::call(uint64_t a1)
{
  v1 = *(a1 + 8);
  *(a1 + 8) = 0;
  (*(*v1 + 16))(v1, a1 + 16);
  v2 = *(*v1 + 8);

  return v2(v1);
}

WTF::StringImpl **WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::Vector<WebCore::SharedBufferBuilder,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::Vector<WebCore::SharedBufferBuilder,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::Vector<WebCore::SharedBufferBuilder,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Vector<WebCore::SharedBufferBuilder,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::remove(uint64_t *a1, WTF::StringImpl *a2)
{
  v4 = *a2;
  *a2 = -1;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, a2);
  }

  result = WTF::Vector<WebCore::SharedBufferBuilder,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(a2 + 8, a2);
  v6 = *a1;
  v7 = vadd_s32(*(*a1 - 16), 0xFFFFFFFF00000001);
  *(v6 - 16) = v7;
  v8 = *(v6 - 4);
  if (6 * v7.i32[1] < v8 && v8 >= 9)
  {

    return WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::Vector<WebCore::SharedBufferBuilder,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::Vector<WebCore::SharedBufferBuilder,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::Vector<WebCore::SharedBufferBuilder,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Vector<WebCore::SharedBufferBuilder,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::rehash(a1, v8 >> 1, 0);
  }

  return result;
}

WTF::StringImpl **WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::Vector<WebCore::SharedBufferBuilder,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::Vector<WebCore::SharedBufferBuilder,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::Vector<WebCore::SharedBufferBuilder,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Vector<WebCore::SharedBufferBuilder,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::rehash(uint64_t *a1, unsigned int a2, uint64_t a3)
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

  v8 = WTF::fastZeroedMalloc((24 * a2 + 16));
  *a1 = (v8 + 4);
  v8[2] = a2 - 1;
  v8[3] = a2;
  *v8 = 0;
  v8[1] = v7;
  if (v6)
  {
    v10 = 0;
    v11 = 0;
    v12 = v6;
    do
    {
      v13 = v5 + 24 * v10;
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

          v18 = *(v14 + 4);
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
            v21 = (v16 + 24 * (v19 & v17));
            v19 = ++v20 + (v19 & v17);
          }

          while (*v21);
          WTF::Vector<WebCore::SharedBufferBuilder,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector((v21 + 1), v9);
          v23 = *v21;
          *v21 = 0;
          if (v23 && atomic_fetch_add_explicit(v23, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v23, v22);
          }

          v24 = *v13;
          *v13 = 0;
          v21[1] = 0;
          v21[2] = 0;
          *v21 = v24;
          WTF::VectorBuffer<WebCore::HTTPHeaderField,0ul,WTF::FastMalloc>::adopt((v21 + 1), (v13 + 8));
          WTF::Vector<WebCore::SharedBufferBuilder,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v13 + 8, v25);
          v26 = *v13;
          *v13 = 0;
          if (v26 && atomic_fetch_add_explicit(v26, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v26, v9);
          }

          if (v13 == a3)
          {
            v11 = v21;
          }
        }

        else
        {
          WTF::Vector<WebCore::SharedBufferBuilder,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v13 + 8, v9);
          v15 = *v13;
          *v13 = 0;
          if (v15)
          {
            if (atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v15, v9);
            }
          }
        }
      }

      ++v10;
    }

    while (v10 != v12);
  }

  else
  {
    v11 = 0;
    result = 0;
    if (!v5)
    {
      return result;
    }
  }

  WTF::fastFree((v5 - 16), v9);
  return v11;
}

void *WTF::Detail::CallableWrapper<WebKit::BackgroundFetchStoreManager::clearFetch(WTF::String const&,WTF::CompletionHandler<void ()(void)> &&)::$_0,void>::~CallableWrapper(void *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F110A128;
  v3 = a1[4];
  a1[4] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = a1[3];
  a1[3] = 0;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, a2);
  }

  v5 = a1[2];
  a1[2] = 0;
  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, a2);
  }

  v6 = a1[1];
  a1[1] = 0;
  if (v6)
  {
    (*(*v6 + 40))(v6);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::BackgroundFetchStoreManager::clearFetch(WTF::String const&,WTF::CompletionHandler<void ()(void)> &&)::$_0,void>::~CallableWrapper(WTF *this, WTF::StringImpl *a2)
{
  *this = &unk_1F110A128;
  v3 = *(this + 4);
  *(this + 4) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 3);
  *(this + 3) = 0;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, a2);
  }

  v5 = *(this + 2);
  *(this + 2) = 0;
  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, a2);
  }

  v6 = *(this + 1);
  *(this + 1) = 0;
  if (v6)
  {
    (*(*v6 + 40))(v6);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::BackgroundFetchStoreManager::clearFetch(WTF::String const&,WTF::CompletionHandler<void ()(void)> &&)::$_0,void>::call(void *a1, const WTF::String *a2)
{
  WTF::FileSystemImpl::listDirectory(&v23, (a1 + 2), a2);
  if (v24)
  {
    v7 = v23;
    v8 = 8 * v24;
    while (1)
    {
      v9 = v4 & 0xFFFFFF0000000000;
      v10 = a1[3];
      if (!v10)
      {
        break;
      }

      v11 = *(v10 + 4);
      v4 = v11 | (((*(v10 + 16) >> 2) & 1) << 32) | v9;
      if (*v7)
      {
        goto LABEL_5;
      }

      if (!v11)
      {
LABEL_6:
        v12 = a1[2];
        if (v12)
        {
          v13 = *(v12 + 16);
          v12 = *(v12 + 4);
          v14 = ((v13 >> 2) & 1) << 32;
        }

        else
        {
          v14 = 0x100000000;
        }

        v15 = *v7;
        if (*v7)
        {
          v16 = *(v15 + 16);
          v15 = *(v15 + 4);
          v17 = ((v16 >> 2) & 1) << 32;
        }

        else
        {
          v17 = 0x100000000;
        }

        v3 = v12 | v3 & 0xFFFFFF0000000000 | v14;
        v2 = v15 | v2 & 0xFFFFFF0000000000 | v17;
        WTF::FileSystemImpl::pathByAppendingComponent();
        WTF::FileSystemImpl::deleteFile(&v22, v18);
        v19 = v22;
        v22 = 0;
        if (v19 && atomic_fetch_add_explicit(v19, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v19, v6);
        }
      }

LABEL_13:
      ++v7;
      v8 -= 8;
      if (!v8)
      {
        goto LABEL_21;
      }
    }

    v4 = v9 | 0x100000000;
    if (!*v7)
    {
      goto LABEL_6;
    }

LABEL_5:
    if (WTF::StringImpl::startsWith())
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

LABEL_21:
  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v23, v6);
  v20 = a1[1];
  std::make_unique[abi:sn200100]<WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(void)>,void>,WTF::CompletionHandler<void ()(void)>,0>(a1 + 4, &v23);
  (*(*v20 + 48))(v20, &v23);
  result = v23;
  v23 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WebKit::BackgroundFetchStoreManager::clearAllFetches(WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&,WTF::CompletionHandler<void ()(void)> &&)::$_1,void>::~CallableWrapper(void *a1, void *a2)
{
  *a1 = &unk_1F110A150;
  v3 = a1[4];
  a1[4] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector((a1 + 2), a2);
  v4 = a1[1];
  a1[1] = 0;
  if (v4)
  {
    (*(*v4 + 40))(v4);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::BackgroundFetchStoreManager::clearAllFetches(WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&,WTF::CompletionHandler<void ()(void)> &&)::$_1,void>::~CallableWrapper(WTF *a1, void *a2)
{
  *a1 = &unk_1F110A150;
  v3 = *(a1 + 4);
  *(a1 + 4) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(a1 + 16, a2);
  v5 = *(a1 + 1);
  *(a1 + 1) = 0;
  if (v5)
  {
    (*(*v5 + 40))(v5);
  }

  return WTF::fastFree(a1, v4);
}

WTF::StringImpl *WTF::Detail::CallableWrapper<WebKit::BackgroundFetchStoreManager::clearAllFetches(WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&,WTF::CompletionHandler<void ()(void)> &&)::$_1,void>::call(uint64_t a1, const WTF::String *a2)
{
  v3 = *(a1 + 28);
  if (!v3)
  {
    goto LABEL_17;
  }

  v4 = *(a1 + 16);
  v5 = (v4 + 8 * v3);
  do
  {
    WTF::FileSystemImpl::deleteFile(v4, a2);
    v6 = 0;
    v14 = 0;
    do
    {
      v7 = *v4;
      if (*v4)
      {
        atomic_fetch_add_explicit(v7, 2u, memory_order_relaxed);
      }

      WTF::makeString<WTF::String,char,unsigned long>(&v13, v7, v6);
      v9 = v14;
      v14 = v13;
      if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v9, v8);
        if (!v7)
        {
          goto LABEL_12;
        }
      }

      else if (!v7)
      {
        goto LABEL_12;
      }

      if (atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v7, v8);
      }

LABEL_12:
      v6 = (v6 + 1);
    }

    while ((WTF::FileSystemImpl::deleteFile(&v14, v8) & 1) != 0);
    v10 = v14;
    v14 = 0;
    if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v10, a2);
    }

    v4 = (v4 + 8);
  }

  while (v4 != v5);
LABEL_17:
  v11 = *(a1 + 8);
  std::make_unique[abi:sn200100]<WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(void)>,void>,WTF::CompletionHandler<void ()(void)>,0>((a1 + 32), &v14);
  (*(*v11 + 48))(v11, &v14);
  result = v14;
  v14 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::BackgroundFetchStoreManager::storeFetch(WTF::String const&,unsigned long long,unsigned long long,std::optional<unsigned long>,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WTF::CompletionHandler<void ()(WebCore::BackgroundFetchStore::StoreResult)> &&)::$_0,void,BOOL>::~CallableWrapper(uint64_t a1, void *a2)
{
  *a1 = &unk_1F110A178;
  v3 = *(a1 + 72);
  *(a1 + 72) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(a1 + 56);
  if (v4)
  {
    *(a1 + 56) = 0;
    *(a1 + 64) = 0;
    WTF::fastFree(v4, a2);
  }

  v5 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, a2);
  }

  v6 = *(a1 + 8);
  *(a1 + 8) = 0;
  if (v6 && atomic_fetch_add(v6, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v6);
    WTF::fastFree(v6, a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::BackgroundFetchStoreManager::storeFetch(WTF::String const&,unsigned long long,unsigned long long,std::optional<unsigned long>,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WTF::CompletionHandler<void ()(WebCore::BackgroundFetchStore::StoreResult)> &&)::$_0,void,BOOL>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F110A178;
  v3 = *(this + 9);
  *(this + 9) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 7);
  if (v4)
  {
    *(this + 7) = 0;
    *(this + 16) = 0;
    WTF::fastFree(v4, a2);
  }

  v5 = *(this + 2);
  *(this + 2) = 0;
  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, a2);
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

WTF::StringImpl *WTF::Detail::CallableWrapper<WebKit::BackgroundFetchStoreManager::storeFetch(WTF::String const&,unsigned long long,unsigned long long,std::optional<unsigned long>,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WTF::CompletionHandler<void ()(WebCore::BackgroundFetchStore::StoreResult)> &&)::$_0,void,BOOL>::call(void *a1, char a2)
{
  v38 = *MEMORY[0x1E69E9840];
  v3 = a1[1];
  if (v3 && (v4 = *(v3 + 8)) != 0)
  {
    if (a2)
    {
      v5 = *(v4 + 16);
      if (v5 && *(v5 + 4))
      {
        v7 = a1[5];
        v6 = a1[6];
        v8 = a1[2];
        v33 = 0;
        if (v8)
        {
          v9 = *(v8 + 16);
          v10 = *(v8 + 4);
          v33 = *(v8 + 8);
          v11 = (v9 >> 2) & 1;
        }

        else
        {
          v10 = 0;
          LOBYTE(v11) = 1;
        }

        LODWORD(v34) = v10;
        BYTE4(v34) = v11;
        WTF::FileSystemImpl::pathByAppendingComponents();
        v14 = v4 + 24;
        v13 = *(v4 + 24);
        v12 = *(v14 + 8);
        (*(*v13 + 32))(v13);
        v33 = v13;
        WTF::String::isolatedCopy();
        *&v35 = v7;
        BYTE8(v35) = v6;
        v15 = a1[7];
        a1[7] = 0;
        v36 = v15;
        v16 = a1[8];
        v17 = a1[9];
        *(a1 + 4) = 0u;
        *&v37 = v16;
        *(&v37 + 1) = v17;
        v18 = WTF::fastMalloc(0x40);
        *v18 = &unk_1F110A1A0;
        *(v18 + 8) = v33;
        v19 = v34;
        v33 = 0;
        v34 = 0;
        *(v18 + 16) = v19;
        *(v18 + 24) = v35;
        v20 = v36;
        v36 = 0;
        *(v18 + 40) = v20;
        v21 = v37;
        v37 = 0u;
        *(v18 + 48) = v21;
        v31 = v18;
        (*(*v12 + 48))(v12, &v31);
        v23 = v31;
        v31 = 0;
        if (v23)
        {
          (*(*v23 + 8))(v23);
        }

        v24 = *(&v37 + 1);
        *(&v37 + 1) = 0;
        if (v24)
        {
          (*(*v24 + 8))(v24);
        }

        v25 = v36;
        if (v36)
        {
          v36 = 0;
          LODWORD(v37) = 0;
          WTF::fastFree(v25, v22);
        }

        v26 = v34;
        v34 = 0;
        if (v26 && atomic_fetch_add_explicit(v26, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v26, v22);
        }

        v27 = v33;
        v33 = 0;
        if (v27)
        {
          (*(*v27 + 40))(v27);
        }

        result = v32;
        v32 = 0;
        if (result)
        {
          if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            return WTF::StringImpl::destroy(result, v22);
          }
        }

        return result;
      }

      v29 = a1[9];
      a1[9] = 0;
      (*(*v29 + 16))(v29, 0);
    }

    else
    {
      v29 = a1[9];
      a1[9] = 0;
      (*(*v29 + 16))(v29, 1);
    }
  }

  else
  {
    v29 = a1[9];
    a1[9] = 0;
    (*(*v29 + 16))(v29, 2);
  }

  v30 = *(*v29 + 8);

  return v30(v29);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::BackgroundFetchStoreManager::storeFetchAfterQuotaCheck(WTF::String const&,unsigned long long,unsigned long long,std::optional<unsigned long>,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WTF::CompletionHandler<void ()(WebCore::BackgroundFetchStore::StoreResult)> &&)::$_0,void>::~CallableWrapper(uint64_t a1, void *a2)
{
  *a1 = &unk_1F110A1A0;
  v3 = *(a1 + 56);
  *(a1 + 56) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(a1 + 40);
  if (v4)
  {
    *(a1 + 40) = 0;
    *(a1 + 48) = 0;
    WTF::fastFree(v4, a2);
  }

  v5 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, a2);
  }

  v6 = *(a1 + 8);
  *(a1 + 8) = 0;
  if (v6)
  {
    (*(*v6 + 40))(v6);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::BackgroundFetchStoreManager::storeFetchAfterQuotaCheck(WTF::String const&,unsigned long long,unsigned long long,std::optional<unsigned long>,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WTF::CompletionHandler<void ()(WebCore::BackgroundFetchStore::StoreResult)> &&)::$_0,void>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F110A1A0;
  v3 = *(this + 7);
  *(this + 7) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 5);
  if (v4)
  {
    *(this + 5) = 0;
    *(this + 12) = 0;
    WTF::fastFree(v4, a2);
  }

  v5 = *(this + 2);
  *(this + 2) = 0;
  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, a2);
  }

  v6 = *(this + 1);
  *(this + 1) = 0;
  if (v6)
  {
    (*(*v6 + 40))(v6);
  }

  return WTF::fastFree(this, a2);
}

WTF::StringImpl *WTF::Detail::CallableWrapper<WebKit::BackgroundFetchStoreManager::storeFetchAfterQuotaCheck(WTF::String const&,unsigned long long,unsigned long long,std::optional<unsigned long>,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WTF::CompletionHandler<void ()(WebCore::BackgroundFetchStore::StoreResult)> &&)::$_0,void>::call(uint64_t a1)
{
  result = WTF::FileSystemImpl::overwriteEntireFile();
  if ((v3 & 1) == 0 || result != *(a1 + 52))
  {
    v8 = qword_1ED641288;
    if (os_log_type_enabled(qword_1ED641288, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v13[0]) = 0;
      v9 = 2;
      _os_log_error_impl(&dword_19D52D000, v8, OS_LOG_TYPE_ERROR, "BackgroundFetchStoreManager::storeFetch failed writing", v13, 2u);
    }

    else
    {
      v9 = 2;
    }

    goto LABEL_16;
  }

  if (*(a1 + 32) == 1)
  {
    v4 = *(a1 + 16);
    if (v4)
    {
      atomic_fetch_add_explicit(v4, 2u, memory_order_relaxed);
      if ((*(a1 + 32) & 1) == 0)
      {
        __break(1u);
        return result;
      }
    }

    WTF::makeString<WTF::String,char,unsigned long>(v13, v4, *(a1 + 24));
    WTF::FileSystemImpl::deleteFile(v13, v5);
    v7 = v13[0];
    v13[0] = 0;
    if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v7, v6);
      if (v4)
      {
LABEL_9:
        if (atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v4, v6);
        }
      }
    }

    else if (v4)
    {
      goto LABEL_9;
    }
  }

  v9 = 0;
LABEL_16:
  v10 = *(a1 + 8);
  v11 = *(a1 + 56);
  *(a1 + 56) = 0;
  v12 = WTF::fastMalloc(0x18);
  *v12 = &unk_1F110A1C8;
  *(v12 + 8) = v9;
  *(v12 + 16) = v11;
  v13[0] = v12;
  (*(*v10 + 48))(v10, v13);
  result = v13[0];
  v13[0] = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WebKit::BackgroundFetchStoreManager::storeFetchAfterQuotaCheck(WTF::String const&,unsigned long long,unsigned long long,std::optional<unsigned long>,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WTF::CompletionHandler<void ()(WebCore::BackgroundFetchStore::StoreResult)> &&)::$_0::operator()(void)::{lambda(void)#1},void>::~CallableWrapper(void *a1)
{
  *a1 = &unk_1F110A1C8;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::BackgroundFetchStoreManager::storeFetchAfterQuotaCheck(WTF::String const&,unsigned long long,unsigned long long,std::optional<unsigned long>,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WTF::CompletionHandler<void ()(WebCore::BackgroundFetchStore::StoreResult)> &&)::$_0::operator()(void)::{lambda(void)#1},void>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F110A1C8;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::BackgroundFetchStoreManager::storeFetchAfterQuotaCheck(WTF::String const&,unsigned long long,unsigned long long,std::optional<unsigned long>,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WTF::CompletionHandler<void ()(WebCore::BackgroundFetchStore::StoreResult)> &&)::$_0::operator()(void)::{lambda(void)#1},void>::call(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  (*(*v2 + 16))(v2, v1);
  v3 = *(*v2 + 8);

  return v3(v2);
}

WTF::StringImpl **WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::Vector<WebCore::SharedBufferBuilder,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::Vector<WebCore::SharedBufferBuilder,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::Vector<WebCore::SharedBufferBuilder,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Vector<WebCore::SharedBufferBuilder,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::expand(uint64_t *a1, uint64_t a2)
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

  return WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::Vector<WebCore::SharedBufferBuilder,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::Vector<WebCore::SharedBufferBuilder,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::Vector<WebCore::SharedBufferBuilder,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Vector<WebCore::SharedBufferBuilder,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::rehash(a1, v5, a2);
}

unint64_t WTF::Vector<WebCore::SharedBufferBuilder,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(unsigned int *a1, unint64_t a2, unint64_t a3)
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

    WTF::Vector<WebCore::SharedBufferBuilder,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v12);
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

    WTF::Vector<WebCore::SharedBufferBuilder,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v9);
    return *a1 + v6;
  }

  return v3;
}

unsigned int *WTF::Vector<WebCore::SharedBufferBuilder,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(unsigned int *result, unint64_t a2)
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
          if (result && atomic_fetch_add(result + 2, 0xFFFFFFFF) == 1)
          {
            atomic_store(1u, result + 2);
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

void *WTF::Detail::CallableWrapper<WebKit::BackgroundFetchStoreManager::storeFetchResponseBodyChunk(WTF::String const&,unsigned long,WebCore::SharedBuffer const&,WTF::CompletionHandler<void ()(WebCore::BackgroundFetchStore::StoreResult)> &&)::$_1,void>::~CallableWrapper(void *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F110A1F0;
  v3 = a1[4];
  a1[4] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = a1[3];
  a1[3] = 0;
  if (v4 && atomic_fetch_add(v4 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v4 + 2);
    (*(*v4 + 8))(v4);
  }

  v5 = a1[2];
  a1[2] = 0;
  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, a2);
  }

  v6 = a1[1];
  a1[1] = 0;
  if (v6)
  {
    (*(*v6 + 40))(v6);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::BackgroundFetchStoreManager::storeFetchResponseBodyChunk(WTF::String const&,unsigned long,WebCore::SharedBuffer const&,WTF::CompletionHandler<void ()(WebCore::BackgroundFetchStore::StoreResult)> &&)::$_1,void>::~CallableWrapper(WTF *this, WTF::StringImpl *a2)
{
  *this = &unk_1F110A1F0;
  v3 = *(this + 4);
  *(this + 4) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 3);
  *(this + 3) = 0;
  if (v4 && atomic_fetch_add(v4 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v4 + 2);
    (*(*v4 + 8))(v4);
  }

  v5 = *(this + 2);
  *(this + 2) = 0;
  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, a2);
  }

  v6 = *(this + 1);
  *(this + 1) = 0;
  if (v6)
  {
    (*(*v6 + 40))(v6);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::BackgroundFetchStoreManager::storeFetchResponseBodyChunk(WTF::String const&,unsigned long,WebCore::SharedBuffer const&,WTF::CompletionHandler<void ()(WebCore::BackgroundFetchStore::StoreResult)> &&)::$_1,void>::call(uint64_t a1)
{
  WTF::FileSystemImpl::openFile();
  if (v12 != -1 && (WebCore::SharedBuffer::span(*(a1 + 24)), v2 = WTF::FileSystemImpl::FileHandle::write(), (v3 & 1) != 0) && v2 == *(*(a1 + 24) + 56))
  {
    WTF::FileSystemImpl::FileHandle::~FileHandle(&v12);
    v4 = 0;
  }

  else
  {
    WTF::FileSystemImpl::FileHandle::~FileHandle(&v12);
    v5 = qword_1ED641288;
    if (os_log_type_enabled(qword_1ED641288, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v4 = 2;
      _os_log_error_impl(&dword_19D52D000, v5, OS_LOG_TYPE_ERROR, "BackgroundFetchStoreManager::storeFetchResponseBodyChunk failed writing", buf, 2u);
    }

    else
    {
      v4 = 2;
    }
  }

  v6 = *(a1 + 8);
  v7 = *(a1 + 32);
  *(a1 + 32) = 0;
  v8 = WTF::fastMalloc(0x18);
  *v8 = &unk_1F110A218;
  *(v8 + 8) = v4;
  *(v8 + 16) = v7;
  v10 = v8;
  (*(*v6 + 48))(v6, &v10);
  result = v10;
  v10 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WebKit::BackgroundFetchStoreManager::storeFetchResponseBodyChunk(WTF::String const&,unsigned long,WebCore::SharedBuffer const&,WTF::CompletionHandler<void ()(WebCore::BackgroundFetchStore::StoreResult)> &&)::$_1::operator()(void)::{lambda(void)#1},void>::~CallableWrapper(void *a1)
{
  *a1 = &unk_1F110A218;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::BackgroundFetchStoreManager::storeFetchResponseBodyChunk(WTF::String const&,unsigned long,WebCore::SharedBuffer const&,WTF::CompletionHandler<void ()(WebCore::BackgroundFetchStore::StoreResult)> &&)::$_1::operator()(void)::{lambda(void)#1},void>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F110A218;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::BackgroundFetchStoreManager::storeFetchResponseBodyChunk(WTF::String const&,unsigned long,WebCore::SharedBuffer const&,WTF::CompletionHandler<void ()(WebCore::BackgroundFetchStore::StoreResult)> &&)::$_1::operator()(void)::{lambda(void)#1},void>::call(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  (*(*v2 + 16))(v2, v1);
  v3 = *(*v2 + 8);

  return v3(v2);
}

uint64_t WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::Vector<WebCore::SharedBufferBuilder,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::Vector<WebCore::SharedBufferBuilder,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::Vector<WebCore::SharedBufferBuilder,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Vector<WebCore::SharedBufferBuilder,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WTF::String,WTF::Vector<WebCore::SharedBufferBuilder,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Vector<WebCore::SharedBufferBuilder,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::String>>,(WTF::ShouldValidateKey)1,WTF::String>(uint64_t *a1, const WTF::StringImpl **a2, const WTF::StringImpl *a3)
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
    JUMPOUT(0x19DDCF21CLL);
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

void *WTF::Detail::CallableWrapper<WebKit::BackgroundFetchStoreManager::retrieveResponseBody(WTF::String const&,unsigned long,WTF::CompletionHandler<void ()(WTF::RefPtr<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>> &&)> &&)::$_0,void>::~CallableWrapper(void *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F110A240;
  v3 = a1[3];
  a1[3] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = a1[2];
  a1[2] = 0;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, a2);
  }

  v5 = a1[1];
  a1[1] = 0;
  if (v5)
  {
    (*(*v5 + 40))(v5);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::BackgroundFetchStoreManager::retrieveResponseBody(WTF::String const&,unsigned long,WTF::CompletionHandler<void ()(WTF::RefPtr<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>> &&)> &&)::$_0,void>::~CallableWrapper(WTF *this, WTF::StringImpl *a2)
{
  *this = &unk_1F110A240;
  v3 = *(this + 3);
  *(this + 3) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 2);
  *(this + 2) = 0;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, a2);
  }

  v5 = *(this + 1);
  *(this + 1) = 0;
  if (v5)
  {
    (*(*v5 + 40))(v5);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::BackgroundFetchStoreManager::retrieveResponseBody(WTF::String const&,unsigned long,WTF::CompletionHandler<void ()(WTF::RefPtr<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>> &&)> &&)::$_0,void>::call(void *a1, const WTF::String *a2)
{
  v3 = WTF::FileSystemImpl::fileSize((a1 + 2), a2);
  if (v4)
  {
    WTF::pageSize(v3);
    WebCore::SharedBuffer::createWithContentsOfFile();
    v5 = v10;
  }

  else
  {
    v5 = 0;
  }

  v6 = a1[1];
  v7 = a1[3];
  a1[3] = 0;
  v8 = WTF::fastMalloc(0x18);
  *v8 = &unk_1F110A268;
  v8[1] = v5;
  v8[2] = v7;
  v10 = v8;
  (*(*v6 + 48))(v6, &v10);
  result = v10;
  v10 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WebKit::BackgroundFetchStoreManager::retrieveResponseBody(WTF::String const&,unsigned long,WTF::CompletionHandler<void ()(WTF::RefPtr<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>> &&)> &&)::$_0::operator()(void)::{lambda(void)#1},void>::~CallableWrapper(void *a1)
{
  *a1 = &unk_1F110A268;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
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

uint64_t WTF::Detail::CallableWrapper<WebKit::BackgroundFetchStoreManager::retrieveResponseBody(WTF::String const&,unsigned long,WTF::CompletionHandler<void ()(WTF::RefPtr<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>> &&)> &&)::$_0::operator()(void)::{lambda(void)#1},void>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F110A268;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
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

uint64_t WTF::Detail::CallableWrapper<WebKit::BackgroundFetchStoreManager::retrieveResponseBody(WTF::String const&,unsigned long,WTF::CompletionHandler<void ()(WTF::RefPtr<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>> &&)> &&)::$_0::operator()(void)::{lambda(void)#1},void>::call(uint64_t a1)
{
  v1 = *(a1 + 16);
  *(a1 + 16) = 0;
  (*(*v1 + 16))(v1, a1 + 8);
  v2 = *(*v1 + 8);

  return v2(v1);
}

_DWORD *WTF::RefCounted<WebKit::CacheStorageCache>::deref(_DWORD *result, WTF::StringImpl *a2)
{
  if (*result == 1)
  {
    WebKit::CacheStorageCache::~CacheStorageCache((result - 2), a2);

    return bmalloc::api::tzoneFree(v3, v4);
  }

  else
  {
    --*result;
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WebKit::CacheStorageCache::getSize(WTF::CompletionHandler<void ()(unsigned long long)> &&)::$_0,void,WTF::Vector<WebKit::CacheStorageRecordInformation,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F110A290;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::CacheStorageCache::getSize(WTF::CompletionHandler<void ()(unsigned long long)> &&)::$_0,void,WTF::Vector<WebKit::CacheStorageRecordInformation,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F110A290;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::CacheStorageCache::getSize(WTF::CompletionHandler<void ()(unsigned long long)> &&)::$_0,void,WTF::Vector<WebKit::CacheStorageRecordInformation,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&>::call(uint64_t a1, uint64_t *a2)
{
  v2 = *(a2 + 3);
  if (v2)
  {
    v4 = 0;
    v5 = *a2;
    v6 = 160 * v2;
    v7 = (v5 + 96);
    do
    {
      v8 = *v7;
      v7 += 20;
      v4 += v8;
      v6 -= 160;
    }

    while (v6);
  }

  else
  {
    v4 = 0;
  }

  v9 = *(a1 + 8);
  *(a1 + 8) = 0;
  (*(*v9 + 16))(v9, v4);
  v10 = *(*v9 + 8);

  return v10(v9);
}

unint64_t WTF::Vector<WTF::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<WebCore::DOMCacheEngine::CacheIdentifierOperationResult,WebCore::DOMCacheEngine::Error> const&)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(unsigned int *a1, unint64_t a2, unint64_t a3)
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

    WTF::Vector<WTF::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<WebCore::DOMCacheEngine::CacheIdentifierOperationResult,WebCore::DOMCacheEngine::Error> const&)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v12);
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

    WTF::Vector<WTF::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<WebCore::DOMCacheEngine::CacheIdentifierOperationResult,WebCore::DOMCacheEngine::Error> const&)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v9);
    return *a1 + v6;
  }

  return v3;
}

unsigned int *WTF::Vector<WTF::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<WebCore::DOMCacheEngine::CacheIdentifierOperationResult,WebCore::DOMCacheEngine::Error> const&)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(unsigned int *result, unint64_t a2)
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

void *WTF::Detail::CallableWrapper<WebKit::CacheStorageCache::open(WTF::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<WebCore::DOMCacheEngine::CacheIdentifierOperationResult,WebCore::DOMCacheEngine::Error> const&)> &&)::$_0,void,WTF::Vector<WebKit::CacheStorageRecordInformation,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&>::~CallableWrapper(void *a1, void *a2)
{
  v3 = a1[1];
  *a1 = &unk_1F110A2B8;
  a1[1] = 0;
  if (v3 && atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3);
    WTF::fastFree(v3, a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::CacheStorageCache::open(WTF::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<WebCore::DOMCacheEngine::CacheIdentifierOperationResult,WebCore::DOMCacheEngine::Error> const&)> &&)::$_0,void,WTF::Vector<WebKit::CacheStorageRecordInformation,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F110A2B8;
  *(this + 1) = 0;
  if (v3 && atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3);
    WTF::fastFree(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

_DWORD *WTF::Detail::CallableWrapper<WebKit::CacheStorageCache::open(WTF::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<WebCore::DOMCacheEngine::CacheIdentifierOperationResult,WebCore::DOMCacheEngine::Error> const&)> &&)::$_0,void,WTF::Vector<WebKit::CacheStorageRecordInformation,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&>::call(_DWORD *result, uint64_t a2)
{
  v2 = *(result + 1);
  if (!v2)
  {
    return result;
  }

  v3 = *(v2 + 8);
  if (!v3)
  {
    return result;
  }

  ++*(v3 + 8);
  v54[0] = WebKit::CacheStorageRecordInformation::insertionTime;
  v54[1] = 0;
  v5 = *a2;
  v6 = *(a2 + 12);
  v7 = *a2 + 160 * v6;
  *&v51 = &v55;
  *(&v51 + 1) = v54;
  v8 = 126 - 2 * __clz(v6);
  if (v6)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  std::__introsort<std::_RangeAlgPolicy,std::_ProjectedPred<std::ranges::less,double (WebKit::CacheStorageRecordInformation::*)(void)const> &,WebKit::CacheStorageRecordInformation*,false>(v5, v7, &v51, v9, 1);
  v11 = *(a2 + 12);
  if (!v11)
  {
    goto LABEL_45;
  }

  v12 = *a2;
  v50 = v12 + 160 * v11;
  do
  {
    *(v12 + 80) = atomic_fetch_add(&WebKit::nextRecordIdentifier(void)::currentRecordIdentifier, 1uLL) + 1;
    WebKit::CacheStorageCache::computeKeyURL(v54, (v12 + 104));
    v15 = v54[0];
    if (v54[0] == -1 || !v54[0])
    {
      __break(0xC471u);
      JUMPOUT(0x19DDCFF8CLL);
    }

    v16 = *(v3 + 80);
    if (v16 || (WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::Vector<WebKit::CacheStorageRecordInformation,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::Vector<WebKit::CacheStorageRecordInformation,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::Vector<WebKit::CacheStorageRecordInformation,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Vector<WebKit::CacheStorageRecordInformation,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::expand((v3 + 80), 0), (v16 = *(v3 + 80)) != 0))
    {
      v17 = *(v16 - 8);
    }

    else
    {
      v17 = 0;
    }

    v18 = *(v15 + 4);
    if (v18 < 0x100)
    {
      v19 = WTF::StringImpl::hashSlowCase(v15);
    }

    else
    {
      v19 = v18 >> 8;
    }

    v20 = 0;
    for (i = 1; ; ++i)
    {
      v22 = v19 & v17;
      v23 = (v16 + 24 * (v19 & v17));
      v24 = *v23;
      if (*v23 == -1)
      {
        v20 = (v16 + 24 * v22);
        goto LABEL_21;
      }

      if (!v24)
      {
        break;
      }

      if (WTF::equal(v24, v15, v14))
      {
        goto LABEL_33;
      }

LABEL_21:
      v19 = i + v22;
    }

    if (v20)
    {
      *v20 = 0;
      v20[1] = 0;
      v20[2] = 0;
      --*(*(v3 + 80) - 16);
      v23 = v20;
    }

    v54[0] = 0;
    v25 = *v23;
    *v23 = v15;
    if (v25 && atomic_fetch_add_explicit(v25, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v25, v13);
    }

    v51 = 0uLL;
    WTF::GenericHashTraits<WTF::Vector<WebKit::CacheStorageRecordInformation,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>::assignToEmpty<WTF::Vector<WebKit::CacheStorageRecordInformation,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::Vector<WebKit::CacheStorageRecordInformation,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>((v23 + 1), &v51);
    WTF::Vector<WebKit::CacheStorageRecordInformation,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v51, v26);
    v27 = *(v3 + 80);
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
      if (v30 <= 2 * v29)
      {
LABEL_32:
        v23 = WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::Vector<WebKit::CacheStorageRecordInformation,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::Vector<WebKit::CacheStorageRecordInformation,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::Vector<WebKit::CacheStorageRecordInformation,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Vector<WebKit::CacheStorageRecordInformation,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::expand((v3 + 80), v23);
      }
    }

    else if (3 * v30 <= 4 * v29)
    {
      goto LABEL_32;
    }

LABEL_33:
    v31 = *(v23 + 5);
    if (v31 == *(v23 + 4))
    {
      WTF::Vector<WebKit::CacheStorageRecordInformation,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebKit::CacheStorageRecordInformation>((v23 + 1), v12);
    }

    else
    {
      v32 = v23[1] + 160 * v31;
      v33 = *v12;
      *v12 = 0;
      *v32 = v33;
      v34 = *(v12 + 8);
      *(v12 + 8) = 0;
      *(v32 + 8) = v34;
      v35 = *(v12 + 16);
      *(v12 + 16) = 0;
      *(v32 + 16) = v35;
      v36 = *(v12 + 24);
      *(v12 + 24) = 0;
      *(v32 + 24) = v36;
      v37 = *(v12 + 32);
      v38 = *(v12 + 48);
      *(v32 + 64) = *(v12 + 64);
      *(v32 + 32) = v37;
      *(v32 + 48) = v38;
      v39 = *(v12 + 72);
      *(v32 + 88) = *(v12 + 88);
      *(v32 + 72) = v39;
      WTF::URL::URL(v32 + 104, (v12 + 104));
      *(v32 + 144) = *(v12 + 144);
      *(v32 + 152) = 0;
      v40 = *(v12 + 152);
      *(v12 + 152) = 0;
      *(v32 + 152) = v40;
      ++*(v23 + 5);
    }

    v41 = v54[0];
    if (v54[0] && atomic_fetch_add_explicit(v54[0], 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v41, v10);
    }

    v12 += 160;
  }

  while (v12 != v50);
LABEL_45:
  *(v3 + 40) = 1;
  v42 = *(v3 + 60);
  if (v42)
  {
    v43 = *(v3 + 48);
    v44 = 8 * v42;
    do
    {
      v51 = *(v3 + 16);
      v52 = 0;
      v53 = 0;
      v45 = *v43;
      *v43++ = 0;
      (*(*v45 + 16))(v45, &v51);
      (*(*v45 + 8))(v45);
      v44 -= 8;
    }

    while (v44);
  }

  if (*(v3 + 56))
  {
    v46 = *(v3 + 60);
    v47 = *(v3 + 48);
    if (v46)
    {
      v48 = 8 * v46;
      do
      {
        v49 = *v47;
        *v47 = 0;
        if (v49)
        {
          (*(*v49 + 8))(v49);
        }

        v47 = (v47 + 8);
        v48 -= 8;
      }

      while (v48);
      *(v3 + 60) = 0;
      v47 = *(v3 + 48);
    }

    if (v47)
    {
      *(v3 + 48) = 0;
      *(v3 + 56) = 0;
      WTF::fastFree(v47, v10);
    }
  }

  return WTF::RefCounted<WebKit::CacheStorageCache>::deref((v3 + 8), v10);
}

void std::__introsort<std::_RangeAlgPolicy,std::_ProjectedPred<std::ranges::less,double (WebKit::CacheStorageRecordInformation::*)(void)const> &,WebKit::CacheStorageRecordInformation*,false>(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v225 = *MEMORY[0x1E69E9840];
LABEL_2:
  v204 = a2 - 160;
  v10 = a1;
  while (1)
  {
    a1 = v10;
    v11 = a2 - v10;
    v12 = 0xCCCCCCCCCCCCCCCDLL * (v11 >> 5);
    if (v12 > 2)
    {
      switch(v12)
      {
        case 3uLL:

          std::__sort3[abi:sn200100]<std::_RangeAlgPolicy,std::_ProjectedPred<std::ranges::less,double (WebKit::CacheStorageRecordInformation::*)(void)const> &,WebKit::CacheStorageRecordInformation*,0>(a1, a1 + 160, v204, a3);
          return;
        case 4uLL:
          std::__sort3[abi:sn200100]<std::_RangeAlgPolicy,std::_ProjectedPred<std::ranges::less,double (WebKit::CacheStorageRecordInformation::*)(void)const> &,WebKit::CacheStorageRecordInformation*,0>(a1, a1 + 160, a1 + 320, a3);
          if (!std::_ProjectedPred<std::ranges::less,double (WebKit::CacheStorageRecordInformation::*)(void)const>::operator()[abi:sn200100]<WebKit::CacheStorageRecordInformation&,WebKit::CacheStorageRecordInformation&>(a3, v204, a1 + 320))
          {
            return;
          }

          std::ranges::__swap::__fn::operator()[abi:sn200100]<WebKit::CacheStorageRecordInformation>(a1 + 320, v204);
          if (!std::_ProjectedPred<std::ranges::less,double (WebKit::CacheStorageRecordInformation::*)(void)const>::operator()[abi:sn200100]<WebKit::CacheStorageRecordInformation&,WebKit::CacheStorageRecordInformation&>(a3, a1 + 320, a1 + 160))
          {
            return;
          }

          std::ranges::__swap::__fn::operator()[abi:sn200100]<WebKit::CacheStorageRecordInformation>(a1 + 160, a1 + 320);
          if (!std::_ProjectedPred<std::ranges::less,double (WebKit::CacheStorageRecordInformation::*)(void)const>::operator()[abi:sn200100]<WebKit::CacheStorageRecordInformation&,WebKit::CacheStorageRecordInformation&>(a3, a1 + 160, a1))
          {
            return;
          }

          v65 = a1 + 160;
          v64 = a1;
          goto LABEL_113;
        case 5uLL:

          std::__sort5[abi:sn200100]<std::_RangeAlgPolicy,std::_ProjectedPred<std::ranges::less,double (WebKit::CacheStorageRecordInformation::*)(void)const> &,WebKit::CacheStorageRecordInformation*,0>(a1, a1 + 160, a1 + 320, a1 + 480, v204, a3);
          return;
      }
    }

    else
    {
      if (v12 < 2)
      {
        return;
      }

      if (v12 == 2)
      {
        if (!std::_ProjectedPred<std::ranges::less,double (WebKit::CacheStorageRecordInformation::*)(void)const>::operator()[abi:sn200100]<WebKit::CacheStorageRecordInformation&,WebKit::CacheStorageRecordInformation&>(a3, v204, a1))
        {
          return;
        }

        v64 = a1;
        v65 = a2 - 160;
LABEL_113:

        std::ranges::__swap::__fn::operator()[abi:sn200100]<WebKit::CacheStorageRecordInformation>(v64, v65);
        return;
      }
    }

    if (v11 <= 3839)
    {
      break;
    }

    if (!a4)
    {
      if (a1 == a2)
      {
        return;
      }

      v92 = (v12 - 2) >> 1;
      v205 = v92;
      do
      {
        v93 = v92;
        if (v205 >= v92)
        {
          v94 = (2 * v92) | 1;
          v95 = a1 + 160 * v94;
          if (2 * v92 + 2 < v12 && std::_ProjectedPred<std::ranges::less,double (WebKit::CacheStorageRecordInformation::*)(void)const>::operator()[abi:sn200100]<WebKit::CacheStorageRecordInformation&,WebKit::CacheStorageRecordInformation&>(a3, a1 + 160 * v94, v95 + 160))
          {
            v95 += 160;
            v94 = 2 * v93 + 2;
          }

          v96 = a1 + 160 * v93;
          if (!std::_ProjectedPred<std::ranges::less,double (WebKit::CacheStorageRecordInformation::*)(void)const>::operator()[abi:sn200100]<WebKit::CacheStorageRecordInformation&,WebKit::CacheStorageRecordInformation&>(a3, v95, v96))
          {
            v203 = v93;
            v97 = *v96;
            *v96 = 0;
            *v216 = v97;
            v98 = *(v96 + 8);
            *(v96 + 8) = 0;
            *&v216[8] = v98;
            v99 = *(v96 + 16);
            *(v96 + 16) = 0;
            *&v216[16] = v99;
            v100 = *(v96 + 24);
            *(v96 + 24) = 0;
            *&v216[24] = v100;
            v101 = *(v96 + 32);
            v102 = *(v96 + 48);
            v219 = *(v96 + 64);
            v217 = v101;
            v218 = v102;
            v103 = *(v96 + 72);
            v221 = *(v96 + 88);
            v220 = v103;
            WTF::URL::URL(v222, (v96 + 104));
            v223 = *(v96 + 144);
            v104 = *(v96 + 152);
            *(v96 + 152) = 0;
            v224 = v104;
            do
            {
              v105 = v95;
              WebKit::NetworkCache::Key::operator=(v96, v95);
              v106 = *(v95 + 88);
              *(v96 + 72) = *(v95 + 72);
              *(v96 + 88) = v106;
              WTF::URL::operator=(v96 + 104, v95 + 104);
              *(v96 + 144) = *(v95 + 144);
              v108 = *(v95 + 152);
              *(v95 + 152) = 0;
              v109 = *(v96 + 152);
              *(v96 + 152) = v108;
              if (v109)
              {
                WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::String>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v109, v107);
              }

              if (v205 < v94)
              {
                break;
              }

              v110 = (2 * v94) | 1;
              v95 = a1 + 160 * v110;
              v111 = 2 * v94 + 2;
              if (v111 < v12 && std::_ProjectedPred<std::ranges::less,double (WebKit::CacheStorageRecordInformation::*)(void)const>::operator()[abi:sn200100]<WebKit::CacheStorageRecordInformation&,WebKit::CacheStorageRecordInformation&>(a3, a1 + 160 * v110, v95 + 160))
              {
                v95 += 160;
                v110 = v111;
              }

              v96 = v105;
              v94 = v110;
            }

            while (!std::_ProjectedPred<std::ranges::less,double (WebKit::CacheStorageRecordInformation::*)(void)const>::operator()[abi:sn200100]<WebKit::CacheStorageRecordInformation&,WebKit::CacheStorageRecordInformation&>(a3, v95, v216));
            WebKit::NetworkCache::Key::operator=(v105, v216);
            v112 = v221;
            *(v105 + 72) = v220;
            *(v105 + 88) = v112;
            WTF::URL::operator=(v105 + 104, v222);
            *(v105 + 144) = v223;
            v114 = v224;
            v224 = 0;
            v115 = *(v105 + 152);
            *(v105 + 152) = v114;
            if (v115)
            {
              WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::String>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v115, v113);
            }

            if (v224)
            {
              WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::String>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v224, v113);
            }

            v116 = v222[0];
            v222[0] = 0;
            v93 = v203;
            if (v116 && atomic_fetch_add_explicit(v116, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v116, v113);
            }

            v117 = *&v216[24];
            *&v216[24] = 0;
            if (v117 && atomic_fetch_add_explicit(v117, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v117, v113);
            }

            v118 = *&v216[16];
            *&v216[16] = 0;
            if (v118 && atomic_fetch_add_explicit(v118, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v118, v113);
            }

            v119 = *&v216[8];
            *&v216[8] = 0;
            if (v119 && atomic_fetch_add_explicit(v119, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v119, v113);
            }

            v120 = *v216;
            *v216 = 0;
            if (v120 && atomic_fetch_add_explicit(v120, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v120, v113);
            }
          }
        }

        v92 = v93 - 1;
      }

      while (v93);
      v121 = 0xCCCCCCCCCCCCCCCDLL * (v11 >> 5);
      while (v121 > 0)
      {
        if (v121 != 1)
        {
          v122 = a2;
          v123 = *a1;
          v124 = *(a1 + 16);
          *a1 = 0u;
          *(a1 + 16) = 0u;
          *v206 = v123;
          *v207 = v124;
          v125 = *(a1 + 32);
          v126 = *(a1 + 48);
          v210 = *(a1 + 64);
          v208 = v125;
          v209 = v126;
          v127 = *(a1 + 88);
          v211 = *(a1 + 72);
          v212 = v127;
          WTF::URL::URL(v213, (a1 + 104));
          v128 = 0;
          v214 = *(a1 + 144);
          v129 = *(a1 + 152);
          *(a1 + 152) = 0;
          v215 = v129;
          v130 = a1;
          do
          {
            v131 = v130 + 160 * v128;
            v132 = v131 + 160;
            v133 = 2 * v128;
            v128 = (2 * v128) | 1;
            v134 = v133 + 2;
            if (v133 + 2 < v121)
            {
              v135 = v131 + 320;
              if (std::_ProjectedPred<std::ranges::less,double (WebKit::CacheStorageRecordInformation::*)(void)const>::operator()[abi:sn200100]<WebKit::CacheStorageRecordInformation&,WebKit::CacheStorageRecordInformation&>(a3, v131 + 160, v131 + 320))
              {
                v132 = v135;
                v128 = v134;
              }
            }

            WebKit::NetworkCache::Key::operator=(v130, v132);
            v136 = *(v132 + 88);
            *(v130 + 72) = *(v132 + 72);
            *(v130 + 88) = v136;
            WTF::URL::operator=(v130 + 104, v132 + 104);
            *(v130 + 144) = *(v132 + 144);
            v138 = *(v132 + 152);
            *(v132 + 152) = 0;
            v139 = *(v130 + 152);
            *(v130 + 152) = v138;
            if (v139)
            {
              WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::String>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v139, v137);
            }

            v130 = v132;
          }

          while (v128 <= ((v121 - 2) >> 1));
          a2 = v122 - 160;
          if (v132 == v122 - 160)
          {
            WebKit::NetworkCache::Key::operator=(v132, v206);
            v170 = v212;
            *(v132 + 72) = v211;
            *(v132 + 88) = v170;
            WTF::URL::operator=(v132 + 104, v213);
            *(v132 + 144) = v214;
            v171 = v215;
            v215 = 0;
            v172 = *(v132 + 152);
            *(v132 + 152) = v171;
            if (v172)
            {
              WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::String>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v172, v145);
            }
          }

          else
          {
            WebKit::NetworkCache::Key::operator=(v132, (v122 - 160));
            v140 = *(v122 - 72);
            *(v132 + 72) = *(v122 - 88);
            *(v132 + 88) = v140;
            WTF::URL::operator=(v132 + 104, v122 - 56);
            *(v132 + 144) = *(v122 - 16);
            v142 = *(v122 - 8);
            *(v122 - 8) = 0;
            v143 = *(v132 + 152);
            *(v132 + 152) = v142;
            if (v143)
            {
              WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::String>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v143, v141);
            }

            WebKit::NetworkCache::Key::operator=(v122 - 160, v206);
            v144 = v212;
            *(v122 - 88) = v211;
            *(v122 - 72) = v144;
            WTF::URL::operator=(v122 - 56, v213);
            *(v122 - 16) = v214;
            v146 = v215;
            v215 = 0;
            v147 = *(v122 - 8);
            *(v122 - 8) = v146;
            if (v147)
            {
              WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::String>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v147, v145);
            }

            v148 = v132 + 160 - a1;
            if (v148 >= 161)
            {
              v149 = (-2 - 0x3333333333333333 * (v148 >> 5)) >> 1;
              v150 = a1 + 160 * v149;
              if (std::_ProjectedPred<std::ranges::less,double (WebKit::CacheStorageRecordInformation::*)(void)const>::operator()[abi:sn200100]<WebKit::CacheStorageRecordInformation&,WebKit::CacheStorageRecordInformation&>(a3, v150, v132))
              {
                v151 = *v132;
                v152 = *(v132 + 16);
                *v132 = 0u;
                *(v132 + 16) = 0u;
                *v216 = v151;
                *&v216[16] = v152;
                v153 = *(v132 + 32);
                v154 = *(v132 + 48);
                v219 = *(v132 + 64);
                v217 = v153;
                v218 = v154;
                v155 = *(v132 + 88);
                v220 = *(v132 + 72);
                v221 = v155;
                WTF::URL::URL(v222, (v132 + 104));
                v223 = *(v132 + 144);
                v156 = *(v132 + 152);
                *(v132 + 152) = 0;
                v224 = v156;
                while (1)
                {
                  v157 = v150;
                  WebKit::NetworkCache::Key::operator=(v132, v150);
                  v158 = *(v150 + 88);
                  *(v132 + 72) = *(v150 + 72);
                  *(v132 + 88) = v158;
                  WTF::URL::operator=(v132 + 104, v150 + 104);
                  *(v132 + 144) = *(v150 + 144);
                  v160 = *(v150 + 152);
                  *(v150 + 152) = 0;
                  v161 = *(v132 + 152);
                  *(v132 + 152) = v160;
                  if (v161)
                  {
                    WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::String>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v161, v159);
                    if (!v149)
                    {
LABEL_210:
                      WebKit::NetworkCache::Key::operator=(v157, v216);
                      v162 = v221;
                      *(v157 + 72) = v220;
                      *(v157 + 88) = v162;
                      WTF::URL::operator=(v157 + 104, v222);
                      *(v157 + 144) = v223;
                      v163 = v224;
                      v224 = 0;
                      v164 = *(v157 + 152);
                      *(v157 + 152) = v163;
                      if (v164)
                      {
                        WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::String>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v164, v145);
                        if (v224)
                        {
                          WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::String>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v224, v145);
                        }
                      }

                      v165 = v222[0];
                      v222[0] = 0;
                      if (v165 && atomic_fetch_add_explicit(v165, 0xFFFFFFFE, memory_order_relaxed) == 2)
                      {
                        WTF::StringImpl::destroy(v165, v145);
                      }

                      v166 = *&v216[24];
                      *&v216[24] = 0;
                      if (v166 && atomic_fetch_add_explicit(v166, 0xFFFFFFFE, memory_order_relaxed) == 2)
                      {
                        WTF::StringImpl::destroy(v166, v145);
                      }

                      v167 = *&v216[16];
                      *&v216[16] = 0;
                      if (v167 && atomic_fetch_add_explicit(v167, 0xFFFFFFFE, memory_order_relaxed) == 2)
                      {
                        WTF::StringImpl::destroy(v167, v145);
                      }

                      v168 = *&v216[8];
                      *&v216[8] = 0;
                      if (v168 && atomic_fetch_add_explicit(v168, 0xFFFFFFFE, memory_order_relaxed) == 2)
                      {
                        WTF::StringImpl::destroy(v168, v145);
                      }

                      v169 = *v216;
                      *v216 = 0;
                      if (v169 && atomic_fetch_add_explicit(v169, 0xFFFFFFFE, memory_order_relaxed) == 2)
                      {
                        WTF::StringImpl::destroy(v169, v145);
                      }

                      break;
                    }
                  }

                  else if (!v149)
                  {
                    goto LABEL_210;
                  }

                  v149 = (v149 - 1) >> 1;
                  v150 = a1 + 160 * v149;
                  v132 = v157;
                  if (!std::_ProjectedPred<std::ranges::less,double (WebKit::CacheStorageRecordInformation::*)(void)const>::operator()[abi:sn200100]<WebKit::CacheStorageRecordInformation&,WebKit::CacheStorageRecordInformation&>(a3, v150, v216))
                  {
                    goto LABEL_210;
                  }
                }
              }
            }
          }

          if (v215)
          {
            WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::String>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v215, v145);
          }

          v173 = v213[0];
          v213[0] = 0;
          if (v173 && atomic_fetch_add_explicit(v173, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v173, v145);
          }

          v174 = v207[1];
          v207[1] = 0;
          if (v174 && atomic_fetch_add_explicit(v174, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v174, v145);
          }

          v175 = v207[0];
          v207[0] = 0;
          if (v175 && atomic_fetch_add_explicit(v175, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v175, v145);
          }

          v176 = v206[1];
          v206[1] = 0;
          if (v176 && atomic_fetch_add_explicit(v176, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v176, v145);
          }

          v177 = v206[0];
          v206[0] = 0;
          if (v177 && atomic_fetch_add_explicit(v177, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v177, v145);
          }

          if (v121-- > 2)
          {
            continue;
          }
        }

        return;
      }

      goto LABEL_278;
    }

    v13 = a1 + 160 * (v12 >> 1);
    if (v11 <= 0x5000)
    {
      std::__sort3[abi:sn200100]<std::_RangeAlgPolicy,std::_ProjectedPred<std::ranges::less,double (WebKit::CacheStorageRecordInformation::*)(void)const> &,WebKit::CacheStorageRecordInformation*,0>(a1 + 160 * (v12 >> 1), a1, v204, a3);
    }

    else
    {
      std::__sort3[abi:sn200100]<std::_RangeAlgPolicy,std::_ProjectedPred<std::ranges::less,double (WebKit::CacheStorageRecordInformation::*)(void)const> &,WebKit::CacheStorageRecordInformation*,0>(a1, a1 + 160 * (v12 >> 1), v204, a3);
      v14 = 5 * (v12 >> 1);
      v15 = a1 + 160 * (v12 >> 1) - 160;
      std::__sort3[abi:sn200100]<std::_RangeAlgPolicy,std::_ProjectedPred<std::ranges::less,double (WebKit::CacheStorageRecordInformation::*)(void)const> &,WebKit::CacheStorageRecordInformation*,0>(a1 + 160, v15, a2 - 320, a3);
      std::__sort3[abi:sn200100]<std::_RangeAlgPolicy,std::_ProjectedPred<std::ranges::less,double (WebKit::CacheStorageRecordInformation::*)(void)const> &,WebKit::CacheStorageRecordInformation*,0>(a1 + 320, a1 + 160 + 32 * v14, a2 - 480, a3);
      std::__sort3[abi:sn200100]<std::_RangeAlgPolicy,std::_ProjectedPred<std::ranges::less,double (WebKit::CacheStorageRecordInformation::*)(void)const> &,WebKit::CacheStorageRecordInformation*,0>(v15, v13, a1 + 160 + 32 * v14, a3);
      std::ranges::__swap::__fn::operator()[abi:sn200100]<WebKit::CacheStorageRecordInformation>(a1, v13);
    }

    --a4;
    if ((a5 & 1) != 0 || std::_ProjectedPred<std::ranges::less,double (WebKit::CacheStorageRecordInformation::*)(void)const>::operator()[abi:sn200100]<WebKit::CacheStorageRecordInformation&,WebKit::CacheStorageRecordInformation&>(a3, a1 - 160, a1))
    {
      v16 = *a1;
      v17 = *(a1 + 16);
      *a1 = 0u;
      *(a1 + 16) = 0u;
      *v216 = v16;
      *&v216[16] = v17;
      v18 = *(a1 + 32);
      v19 = *(a1 + 48);
      v219 = *(a1 + 64);
      v217 = v18;
      v218 = v19;
      v20 = *(a1 + 88);
      v220 = *(a1 + 72);
      v221 = v20;
      WTF::URL::URL(v222, (a1 + 104));
      v21 = 0;
      v223 = *(a1 + 144);
      v22 = *(a1 + 152);
      *(a1 + 152) = 0;
      v224 = v22;
      do
      {
        v23 = a1 + v21 + 160;
        if (v23 == a2)
        {
          goto LABEL_278;
        }

        v21 += 160;
      }

      while (std::_ProjectedPred<std::ranges::less,double (WebKit::CacheStorageRecordInformation::*)(void)const>::operator()[abi:sn200100]<WebKit::CacheStorageRecordInformation&,WebKit::CacheStorageRecordInformation&>(a3, v23, v216));
      v24 = a1 + v21;
      v25 = a2;
      if (v21 != 160)
      {
        while (v25 != a1)
        {
          v25 -= 160;
          if (std::_ProjectedPred<std::ranges::less,double (WebKit::CacheStorageRecordInformation::*)(void)const>::operator()[abi:sn200100]<WebKit::CacheStorageRecordInformation&,WebKit::CacheStorageRecordInformation&>(a3, v25, v216))
          {
            goto LABEL_27;
          }
        }

        goto LABEL_278;
      }

      v25 = a2;
      do
      {
        if (v24 >= v25)
        {
          break;
        }

        v25 -= 160;
      }

      while (!std::_ProjectedPred<std::ranges::less,double (WebKit::CacheStorageRecordInformation::*)(void)const>::operator()[abi:sn200100]<WebKit::CacheStorageRecordInformation&,WebKit::CacheStorageRecordInformation&>(a3, v25, v216));
LABEL_27:
      v10 = a1 + v21;
      if (v24 < v25)
      {
        v26 = v25;
LABEL_29:
        std::ranges::__swap::__fn::operator()[abi:sn200100]<WebKit::CacheStorageRecordInformation>(v10, v26);
        while (1)
        {
          v10 += 160;
          if (v10 == a2)
          {
            break;
          }

          if (!std::_ProjectedPred<std::ranges::less,double (WebKit::CacheStorageRecordInformation::*)(void)const>::operator()[abi:sn200100]<WebKit::CacheStorageRecordInformation&,WebKit::CacheStorageRecordInformation&>(a3, v10, v216))
          {
            while (v26 != a1)
            {
              v26 -= 160;
              if (std::_ProjectedPred<std::ranges::less,double (WebKit::CacheStorageRecordInformation::*)(void)const>::operator()[abi:sn200100]<WebKit::CacheStorageRecordInformation&,WebKit::CacheStorageRecordInformation&>(a3, v26, v216))
              {
                if (v10 < v26)
                {
                  goto LABEL_29;
                }

                goto LABEL_35;
              }
            }

            break;
          }
        }

LABEL_278:
        __break(1u);
        return;
      }

LABEL_35:
      if (v10 - 160 != a1)
      {
        WebKit::NetworkCache::Key::operator=(a1, (v10 - 160));
        v27 = *(v10 - 72);
        *(a1 + 72) = *(v10 - 88);
        *(a1 + 88) = v27;
        WTF::URL::operator=(a1 + 104, v10 - 56);
        *(a1 + 144) = *(v10 - 16);
        v29 = *(v10 - 8);
        *(v10 - 8) = 0;
        v30 = *(a1 + 152);
        *(a1 + 152) = v29;
        if (v30)
        {
          WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::String>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v30, v28);
        }
      }

      WebKit::NetworkCache::Key::operator=(v10 - 160, v216);
      v31 = v221;
      *(v10 - 88) = v220;
      *(v10 - 72) = v31;
      WTF::URL::operator=(v10 - 56, v222);
      *(v10 - 16) = v223;
      v33 = v224;
      v224 = 0;
      v34 = *(v10 - 8);
      *(v10 - 8) = v33;
      if (v34)
      {
        WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::String>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v34, v32);
      }

      if (v224)
      {
        WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::String>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v224, v32);
      }

      v35 = v222[0];
      v222[0] = 0;
      if (v35 && atomic_fetch_add_explicit(v35, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v35, v32);
      }

      v36 = *&v216[24];
      *&v216[24] = 0;
      if (v36 && atomic_fetch_add_explicit(v36, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v36, v32);
      }

      v37 = *&v216[16];
      *&v216[16] = 0;
      if (v37 && atomic_fetch_add_explicit(v37, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v37, v32);
      }

      v38 = *&v216[8];
      *&v216[8] = 0;
      if (v38 && atomic_fetch_add_explicit(v38, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v38, v32);
      }

      v39 = *v216;
      *v216 = 0;
      if (v39 && atomic_fetch_add_explicit(v39, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v39, v32);
      }

      if (v24 < v25)
      {
LABEL_60:
        std::__introsort<std::_RangeAlgPolicy,std::_ProjectedPred<std::ranges::less,double (WebKit::CacheStorageRecordInformation::*)(void)const> &,WebKit::CacheStorageRecordInformation*,false>(a1, v10 - 160, a3, a4, a5 & 1);
        goto LABEL_61;
      }

      v40 = std::__insertion_sort_incomplete[abi:sn200100]<std::_RangeAlgPolicy,std::_ProjectedPred<std::ranges::less,double (WebKit::CacheStorageRecordInformation::*)(void)const> &,WebKit::CacheStorageRecordInformation*>(a1, v10 - 160, a3);
      if (!std::__insertion_sort_incomplete[abi:sn200100]<std::_RangeAlgPolicy,std::_ProjectedPred<std::ranges::less,double (WebKit::CacheStorageRecordInformation::*)(void)const> &,WebKit::CacheStorageRecordInformation*>(v10, a2, a3))
      {
        if (v40)
        {
          continue;
        }

        goto LABEL_60;
      }

      a2 = v10 - 160;
      if (v40)
      {
        return;
      }

      goto LABEL_2;
    }

    v41 = *a1;
    v42 = *(a1 + 16);
    *a1 = 0u;
    *(a1 + 16) = 0u;
    *v216 = v41;
    *&v216[16] = v42;
    v43 = *(a1 + 32);
    v44 = *(a1 + 48);
    v219 = *(a1 + 64);
    v217 = v43;
    v218 = v44;
    v45 = *(a1 + 88);
    v220 = *(a1 + 72);
    v221 = v45;
    WTF::URL::URL(v222, (a1 + 104));
    v223 = *(a1 + 144);
    v46 = *(a1 + 152);
    *(a1 + 152) = 0;
    v224 = v46;
    if (std::_ProjectedPred<std::ranges::less,double (WebKit::CacheStorageRecordInformation::*)(void)const>::operator()[abi:sn200100]<WebKit::CacheStorageRecordInformation&,WebKit::CacheStorageRecordInformation&>(a3, v216, v204))
    {
      v10 = a1;
      while (1)
      {
        v10 += 160;
        if (v10 == a2)
        {
          goto LABEL_278;
        }

        if (std::_ProjectedPred<std::ranges::less,double (WebKit::CacheStorageRecordInformation::*)(void)const>::operator()[abi:sn200100]<WebKit::CacheStorageRecordInformation&,WebKit::CacheStorageRecordInformation&>(a3, v216, v10))
        {
          goto LABEL_70;
        }
      }
    }

    v47 = a1 + 160;
    do
    {
      v10 = v47;
      if (v47 >= a2)
      {
        break;
      }

      v48 = std::_ProjectedPred<std::ranges::less,double (WebKit::CacheStorageRecordInformation::*)(void)const>::operator()[abi:sn200100]<WebKit::CacheStorageRecordInformation&,WebKit::CacheStorageRecordInformation&>(a3, v216, v47);
      v47 = v10 + 160;
    }

    while (!v48);
LABEL_70:
    v49 = a2;
    if (v10 < a2)
    {
      v49 = a2;
      while (v49 != a1)
      {
        v49 -= 160;
        if (!std::_ProjectedPred<std::ranges::less,double (WebKit::CacheStorageRecordInformation::*)(void)const>::operator()[abi:sn200100]<WebKit::CacheStorageRecordInformation&,WebKit::CacheStorageRecordInformation&>(a3, v216, v49))
        {
          goto LABEL_80;
        }
      }

      goto LABEL_278;
    }

LABEL_80:
    if (v10 < v49)
    {
      std::ranges::__swap::__fn::operator()[abi:sn200100]<WebKit::CacheStorageRecordInformation>(v10, v49);
      while (1)
      {
        v10 += 160;
        if (v10 == a2)
        {
          goto LABEL_278;
        }

        if (std::_ProjectedPred<std::ranges::less,double (WebKit::CacheStorageRecordInformation::*)(void)const>::operator()[abi:sn200100]<WebKit::CacheStorageRecordInformation&,WebKit::CacheStorageRecordInformation&>(a3, v216, v10))
        {
          while (v49 != a1)
          {
            v49 -= 160;
            if (!std::_ProjectedPred<std::ranges::less,double (WebKit::CacheStorageRecordInformation::*)(void)const>::operator()[abi:sn200100]<WebKit::CacheStorageRecordInformation&,WebKit::CacheStorageRecordInformation&>(a3, v216, v49))
            {
              goto LABEL_80;
            }
          }

          goto LABEL_278;
        }
      }
    }

    if (v10 - 160 != a1)
    {
      WebKit::NetworkCache::Key::operator=(a1, (v10 - 160));
      v50 = *(v10 - 72);
      *(a1 + 72) = *(v10 - 88);
      *(a1 + 88) = v50;
      WTF::URL::operator=(a1 + 104, v10 - 56);
      *(a1 + 144) = *(v10 - 16);
      v52 = *(v10 - 8);
      *(v10 - 8) = 0;
      v53 = *(a1 + 152);
      *(a1 + 152) = v52;
      if (v53)
      {
        WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::String>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v53, v51);
      }
    }

    WebKit::NetworkCache::Key::operator=(v10 - 160, v216);
    v54 = v221;
    *(v10 - 88) = v220;
    *(v10 - 72) = v54;
    WTF::URL::operator=(v10 - 56, v222);
    *(v10 - 16) = v223;
    v56 = v224;
    v224 = 0;
    v57 = *(v10 - 8);
    *(v10 - 8) = v56;
    if (v57)
    {
      WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::String>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v57, v55);
    }

    if (v224)
    {
      WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::String>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v224, v55);
    }

    v58 = v222[0];
    v222[0] = 0;
    if (v58 && atomic_fetch_add_explicit(v58, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v58, v55);
    }

    v59 = *&v216[24];
    *&v216[24] = 0;
    if (v59 && atomic_fetch_add_explicit(v59, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v59, v55);
    }

    v60 = *&v216[16];
    *&v216[16] = 0;
    if (v60 && atomic_fetch_add_explicit(v60, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v60, v55);
    }

    v61 = *&v216[8];
    *&v216[8] = 0;
    if (v61 && atomic_fetch_add_explicit(v61, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v61, v55);
    }

    v62 = *v216;
    *v216 = 0;
    if (v62 && atomic_fetch_add_explicit(v62, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v62, v55);
    }

LABEL_61:
    a5 = 0;
  }

  if ((a5 & 1) == 0)
  {
    if (a1 == a2)
    {
      return;
    }

    v179 = (a1 + 160);
    if (a1 + 160 == a2)
    {
      return;
    }

    v180 = 0;
    v181 = 160;
    v182 = a1;
    while (1)
    {
      v183 = v181;
      if (std::_ProjectedPred<std::ranges::less,double (WebKit::CacheStorageRecordInformation::*)(void)const>::operator()[abi:sn200100]<WebKit::CacheStorageRecordInformation&,WebKit::CacheStorageRecordInformation&>(a3, v179, v182))
      {
        v184 = *v179;
        *v179 = 0;
        v185 = *(v182 + 168);
        *(v182 + 168) = 0;
        *(v182 + 176) = 0;
        *&v216[8] = v185;
        v186 = *(v182 + 184);
        *(v182 + 184) = 0;
        *v216 = v184;
        *&v216[24] = v186;
        v187 = *(v182 + 208);
        v217 = *(v182 + 192);
        v218 = v187;
        v219 = *(v182 + 224);
        v220 = *(v182 + 232);
        v221 = *(v182 + 248);
        WTF::URL::URL(v222, (v182 + 264));
        v223 = *(v182 + 304);
        v188 = *(v182 + 312);
        *(v182 + 312) = 0;
        v224 = v188;
        do
        {
          v189 = a1 + v180;
          WebKit::NetworkCache::Key::operator=(a1 + v180 + 160, (a1 + v180));
          *(v189 + 232) = *(v189 + 72);
          *(v189 + 248) = *(v189 + 88);
          WTF::URL::operator=(v189 + 264, v189 + 104);
          *(v189 + 304) = *(v189 + 144);
          v191 = *(a1 + v180 + 152);
          *(v189 + 152) = 0;
          v192 = *(a1 + v180 + 312);
          *(v189 + 312) = v191;
          if (v192)
          {
            WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::String>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v192, v190);
          }

          if (v180 == -160)
          {
            goto LABEL_278;
          }

          v180 -= 160;
        }

        while (std::_ProjectedPred<std::ranges::less,double (WebKit::CacheStorageRecordInformation::*)(void)const>::operator()[abi:sn200100]<WebKit::CacheStorageRecordInformation&,WebKit::CacheStorageRecordInformation&>(a3, v216, v180 + a1));
        v193 = a1 + v180;
        WebKit::NetworkCache::Key::operator=(a1 + v180 + 160, v216);
        v194 = v221;
        *(v193 + 232) = v220;
        *(v193 + 248) = v194;
        WTF::URL::operator=(a1 + v180 + 264, v222);
        *(v193 + 304) = v223;
        v196 = v224;
        v224 = 0;
        v197 = *(a1 + v180 + 312);
        *(v193 + 312) = v196;
        if (v197)
        {
          WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::String>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v197, v195);
          if (v224)
          {
            WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::String>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v224, v195);
          }
        }

        v198 = v222[0];
        v222[0] = 0;
        if (v198 && atomic_fetch_add_explicit(v198, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v198, v195);
        }

        v199 = *&v216[24];
        *&v216[24] = 0;
        if (v199 && atomic_fetch_add_explicit(v199, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v199, v195);
        }

        v200 = *&v216[16];
        *&v216[16] = 0;
        if (v200 && atomic_fetch_add_explicit(v200, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v200, v195);
        }

        v201 = *&v216[8];
        *&v216[8] = 0;
        if (v201 && atomic_fetch_add_explicit(v201, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v201, v195);
        }

        v202 = *v216;
        *v216 = 0;
        if (v202 && atomic_fetch_add_explicit(v202, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v202, v195);
        }
      }

      v182 = a1 + v183;
      v181 = v183 + 160;
      v179 = (a1 + v183 + 160);
      v180 = v183;
      if (v179 == a2)
      {
        return;
      }
    }
  }

  if (a1 == a2)
  {
    return;
  }

  v66 = a1 + 160;
  if (a1 + 160 == a2)
  {
    return;
  }

  v67 = 0;
  v68 = a1;
  do
  {
    v69 = v66;
    if (!std::_ProjectedPred<std::ranges::less,double (WebKit::CacheStorageRecordInformation::*)(void)const>::operator()[abi:sn200100]<WebKit::CacheStorageRecordInformation&,WebKit::CacheStorageRecordInformation&>(a3, v66, v68))
    {
      goto LABEL_148;
    }

    v70 = *v69;
    *v69 = 0;
    v71 = *(v68 + 168);
    *(v68 + 168) = 0;
    *(v68 + 176) = 0;
    *&v216[8] = v71;
    v72 = *(v68 + 184);
    *(v68 + 184) = 0;
    *v216 = v70;
    *&v216[24] = v72;
    v73 = *(v68 + 208);
    v217 = *(v68 + 192);
    v218 = v73;
    v219 = *(v68 + 224);
    v220 = *(v68 + 232);
    v221 = *(v68 + 248);
    WTF::URL::URL(v222, (v68 + 264));
    v223 = *(v68 + 304);
    v74 = *(v68 + 312);
    *(v68 + 312) = 0;
    v224 = v74;
    v75 = v67;
    while (1)
    {
      v76 = v75;
      v77 = a1 + v75;
      WebKit::NetworkCache::Key::operator=(v77 + 160, v77);
      *(v77 + 232) = *(v77 + 72);
      *(v77 + 248) = *(v77 + 88);
      WTF::URL::operator=(v77 + 264, v77 + 104);
      *(v77 + 304) = *(v77 + 144);
      v79 = *(v77 + 152);
      *(v77 + 152) = 0;
      v80 = *(v77 + 312);
      *(v77 + 312) = v79;
      if (v80)
      {
        break;
      }

      if (!v76)
      {
        goto LABEL_131;
      }

LABEL_128:
      v75 = v76 - 160;
      if (!std::_ProjectedPred<std::ranges::less,double (WebKit::CacheStorageRecordInformation::*)(void)const>::operator()[abi:sn200100]<WebKit::CacheStorageRecordInformation&,WebKit::CacheStorageRecordInformation&>(a3, v216, v76 - 160 + a1))
      {
        v81 = a1 + v76;
        goto LABEL_132;
      }
    }

    WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::String>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v80, v78);
    if (v76)
    {
      goto LABEL_128;
    }

LABEL_131:
    v81 = a1;
LABEL_132:
    WebKit::NetworkCache::Key::operator=(v81, v216);
    v82 = a1 + v76;
    v83 = v221;
    *(v82 + 72) = v220;
    *(v82 + 88) = v83;
    WTF::URL::operator=(a1 + v76 + 104, v222);
    *(v81 + 144) = v223;
    v85 = v224;
    v224 = 0;
    v86 = *(v81 + 152);
    *(v81 + 152) = v85;
    if (v86)
    {
      WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::String>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v86, v84);
      if (v224)
      {
        WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::String>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v224, v84);
      }
    }

    v87 = v222[0];
    v222[0] = 0;
    if (v87 && atomic_fetch_add_explicit(v87, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v87, v84);
    }

    v88 = *&v216[24];
    *&v216[24] = 0;
    if (v88 && atomic_fetch_add_explicit(v88, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v88, v84);
    }

    v89 = *&v216[16];
    *&v216[16] = 0;
    if (v89 && atomic_fetch_add_explicit(v89, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v89, v84);
    }

    v90 = *&v216[8];
    *&v216[8] = 0;
    if (v90 && atomic_fetch_add_explicit(v90, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v90, v84);
    }

    v91 = *v216;
    *v216 = 0;
    if (v91 && atomic_fetch_add_explicit(v91, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v91, v84);
    }

LABEL_148:
    v66 = (v69 + 20);
    v67 += 160;
    v68 = v69;
  }

  while (v69 + 20 != a2);
}