uint64_t *WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::PendingDownload,WTF::RawPtrTraits<WebKit::PendingDownload>,WTF::DefaultRefDerefTraits<WebKit::PendingDownload>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::PendingDownload,WTF::RawPtrTraits<WebKit::PendingDownload>,WTF::DefaultRefDerefTraits<WebKit::PendingDownload>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::PendingDownload,WTF::RawPtrTraits<WebKit::PendingDownload>,WTF::DefaultRefDerefTraits<WebKit::PendingDownload>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::PendingDownload,WTF::RawPtrTraits<WebKit::PendingDownload>,WTF::DefaultRefDerefTraits<WebKit::PendingDownload>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::remove(uint64_t *a1, void *a2)
{
  result = WTF::KeyValuePairHashTraits<WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::PendingDownload,WTF::RawPtrTraits<WebKit::PendingDownload>,WTF::DefaultRefDerefTraits<WebKit::PendingDownload>>>>::customDeleteBucket(a2);
  v4 = *a1;
  v5 = vadd_s32(*(*a1 - 16), 0xFFFFFFFF00000001);
  *(v4 - 16) = v5;
  v6 = *(v4 - 4);
  if (6 * v5.i32[1] < v6 && v6 >= 9)
  {

    return WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::PendingDownload,WTF::RawPtrTraits<WebKit::PendingDownload>,WTF::DefaultRefDerefTraits<WebKit::PendingDownload>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::PendingDownload,WTF::RawPtrTraits<WebKit::PendingDownload>,WTF::DefaultRefDerefTraits<WebKit::PendingDownload>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::PendingDownload,WTF::RawPtrTraits<WebKit::PendingDownload>,WTF::DefaultRefDerefTraits<WebKit::PendingDownload>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::PendingDownload,WTF::RawPtrTraits<WebKit::PendingDownload>,WTF::DefaultRefDerefTraits<WebKit::PendingDownload>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash(a1, v6 >> 1, 0);
  }

  return result;
}

_DWORD *WTF::KeyValuePairHashTraits<WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::PendingDownload,WTF::RawPtrTraits<WebKit::PendingDownload>,WTF::DefaultRefDerefTraits<WebKit::PendingDownload>>>>::customDeleteBucket(void *a1)
{
  result = a1[1];
  *a1 = -1;
  a1[1] = 0;
  if (result)
  {
    if (result[5] == 1)
    {
      return (*(*result + 24))();
    }

    else
    {
      --result[5];
    }
  }

  return result;
}

uint64_t WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::PendingDownload,WTF::RawPtrTraits<WebKit::PendingDownload>,WTF::DefaultRefDerefTraits<WebKit::PendingDownload>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::PendingDownload,WTF::RawPtrTraits<WebKit::PendingDownload>,WTF::DefaultRefDerefTraits<WebKit::PendingDownload>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::PendingDownload,WTF::RawPtrTraits<WebKit::PendingDownload>,WTF::DefaultRefDerefTraits<WebKit::PendingDownload>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::PendingDownload,WTF::RawPtrTraits<WebKit::PendingDownload>,WTF::DefaultRefDerefTraits<WebKit::PendingDownload>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::PendingDownload,WTF::RawPtrTraits<WebKit::PendingDownload>,WTF::DefaultRefDerefTraits<WebKit::PendingDownload>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::PendingDownload,WTF::RawPtrTraits<WebKit::PendingDownload>,WTF::DefaultRefDerefTraits<WebKit::PendingDownload>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  if (!*a1)
  {
    return 0;
  }

  v3 = *a2;
  if (*a2 == -1 || !v3)
  {
    __break(0xC471u);
    JUMPOUT(0x19DD3F218);
  }

  v4 = *(v2 - 8);
  v5 = (v3 + ~(v3 << 32)) ^ ((v3 + ~(v3 << 32)) >> 22);
  v6 = 9 * ((v5 + ~(v5 << 13)) ^ ((v5 + ~(v5 << 13)) >> 8));
  v7 = (v6 ^ (v6 >> 15)) + ~((v6 ^ (v6 >> 15)) << 27);
  v8 = v4 & ((v7 >> 31) ^ v7);
  v9 = *(v2 + 16 * v8);
  if (v9 == v3)
  {
    return v2 + 16 * v8;
  }

  v10 = 1;
  while (v9)
  {
    v8 = (v8 + v10) & v4;
    v9 = *(v2 + 16 * v8);
    ++v10;
    if (v9 == v3)
    {
      return v2 + 16 * v8;
    }
  }

  return v2 + 16 * *(v2 - 4);
}

uint64_t *WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::NetworkDataTask,WTF::RawPtrTraits<WebKit::NetworkDataTask>,WTF::DefaultRefDerefTraits<WebKit::NetworkDataTask>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::NetworkDataTask,WTF::RawPtrTraits<WebKit::NetworkDataTask>,WTF::DefaultRefDerefTraits<WebKit::NetworkDataTask>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::NetworkDataTask,WTF::RawPtrTraits<WebKit::NetworkDataTask>,WTF::DefaultRefDerefTraits<WebKit::NetworkDataTask>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RefPtr<WebKit::NetworkDataTask,WTF::RawPtrTraits<WebKit::NetworkDataTask>,WTF::DefaultRefDerefTraits<WebKit::NetworkDataTask>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::remove(uint64_t *result, void *a2)
{
  v2 = result;
  v3 = a2[1];
  *a2 = -1;
  a2[1] = 0;
  if (v3)
  {
    result = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::NetworkDataTask,(WTF::DestructionThread)1>::deref((v3 + 8));
  }

  v4 = *v2;
  v5 = vadd_s32(*(*v2 - 16), 0xFFFFFFFF00000001);
  *(v4 - 16) = v5;
  v6 = *(v4 - 4);
  if (6 * v5.i32[1] < v6 && v6 >= 9)
  {

    return WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::NetworkDataTask,WTF::RawPtrTraits<WebKit::NetworkDataTask>,WTF::DefaultRefDerefTraits<WebKit::NetworkDataTask>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::NetworkDataTask,WTF::RawPtrTraits<WebKit::NetworkDataTask>,WTF::DefaultRefDerefTraits<WebKit::NetworkDataTask>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::NetworkDataTask,WTF::RawPtrTraits<WebKit::NetworkDataTask>,WTF::DefaultRefDerefTraits<WebKit::NetworkDataTask>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RefPtr<WebKit::NetworkDataTask,WTF::RawPtrTraits<WebKit::NetworkDataTask>,WTF::DefaultRefDerefTraits<WebKit::NetworkDataTask>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash(v2, v6 >> 1, 0);
  }

  return result;
}

uint64_t *WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::NetworkDataTask,WTF::RawPtrTraits<WebKit::NetworkDataTask>,WTF::DefaultRefDerefTraits<WebKit::NetworkDataTask>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::NetworkDataTask,WTF::RawPtrTraits<WebKit::NetworkDataTask>,WTF::DefaultRefDerefTraits<WebKit::NetworkDataTask>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::NetworkDataTask,WTF::RawPtrTraits<WebKit::NetworkDataTask>,WTF::DefaultRefDerefTraits<WebKit::NetworkDataTask>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RefPtr<WebKit::NetworkDataTask,WTF::RawPtrTraits<WebKit::NetworkDataTask>,WTF::DefaultRefDerefTraits<WebKit::NetworkDataTask>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash(uint64_t *a1, unsigned int a2, uint64_t *a3)
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
            WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::NetworkDataTask,(WTF::DestructionThread)1>::deref((v26 + 8));
          }

          *v25 = *v13;
          v27 = v13[1];
          v13[1] = 0;
          v25[1] = v27;
          v28 = v13[1];
          v13[1] = 0;
          if (v28)
          {
            WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::NetworkDataTask,(WTF::DestructionThread)1>::deref((v28 + 8));
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
            WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::NetworkDataTask,(WTF::DestructionThread)1>::deref((v15 + 8));
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

uint64_t WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::NetworkDataTask,WTF::RawPtrTraits<WebKit::NetworkDataTask>,WTF::DefaultRefDerefTraits<WebKit::NetworkDataTask>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::NetworkDataTask,WTF::RawPtrTraits<WebKit::NetworkDataTask>,WTF::DefaultRefDerefTraits<WebKit::NetworkDataTask>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::NetworkDataTask,WTF::RawPtrTraits<WebKit::NetworkDataTask>,WTF::DefaultRefDerefTraits<WebKit::NetworkDataTask>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RefPtr<WebKit::NetworkDataTask,WTF::RawPtrTraits<WebKit::NetworkDataTask>,WTF::DefaultRefDerefTraits<WebKit::NetworkDataTask>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::NetworkDataTask,WTF::RawPtrTraits<WebKit::NetworkDataTask>,WTF::DefaultRefDerefTraits<WebKit::NetworkDataTask>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RefPtr<WebKit::NetworkDataTask,WTF::RawPtrTraits<WebKit::NetworkDataTask>,WTF::DefaultRefDerefTraits<WebKit::NetworkDataTask>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  if (!*a1)
  {
    return 0;
  }

  v3 = *a2;
  if (*a2 == -1 || !v3)
  {
    __break(0xC471u);
    JUMPOUT(0x19DD3F540);
  }

  v4 = *(v2 - 8);
  v5 = (v3 + ~(v3 << 32)) ^ ((v3 + ~(v3 << 32)) >> 22);
  v6 = 9 * ((v5 + ~(v5 << 13)) ^ ((v5 + ~(v5 << 13)) >> 8));
  v7 = (v6 ^ (v6 >> 15)) + ~((v6 ^ (v6 >> 15)) << 27);
  v8 = v4 & ((v7 >> 31) ^ v7);
  v9 = *(v2 + 16 * v8);
  if (v9 == v3)
  {
    return v2 + 16 * v8;
  }

  v10 = 1;
  while (v9)
  {
    v8 = (v8 + v10) & v4;
    v9 = *(v2 + 16 * v8);
    ++v10;
    if (v9 == v3)
    {
      return v2 + 16 * v8;
    }
  }

  return v2 + 16 * *(v2 - 4);
}

uint64_t *WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::Download,WTF::RawPtrTraits<WebKit::Download>,WTF::DefaultRefDerefTraits<WebKit::Download>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::Download,WTF::RawPtrTraits<WebKit::Download>,WTF::DefaultRefDerefTraits<WebKit::Download>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::Download,WTF::RawPtrTraits<WebKit::Download>,WTF::DefaultRefDerefTraits<WebKit::Download>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::Download,WTF::RawPtrTraits<WebKit::Download>,WTF::DefaultRefDerefTraits<WebKit::Download>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand(uint64_t *a1, uint64_t *a2)
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

  return WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::Download,WTF::RawPtrTraits<WebKit::Download>,WTF::DefaultRefDerefTraits<WebKit::Download>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::Download,WTF::RawPtrTraits<WebKit::Download>,WTF::DefaultRefDerefTraits<WebKit::Download>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::Download,WTF::RawPtrTraits<WebKit::Download>,WTF::DefaultRefDerefTraits<WebKit::Download>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::Download,WTF::RawPtrTraits<WebKit::Download>,WTF::DefaultRefDerefTraits<WebKit::Download>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash(a1, v4, a2);
}

uint64_t *WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::Download,WTF::RawPtrTraits<WebKit::Download>,WTF::DefaultRefDerefTraits<WebKit::Download>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::Download,WTF::RawPtrTraits<WebKit::Download>,WTF::DefaultRefDerefTraits<WebKit::Download>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::Download,WTF::RawPtrTraits<WebKit::Download>,WTF::DefaultRefDerefTraits<WebKit::Download>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::Download,WTF::RawPtrTraits<WebKit::Download>,WTF::DefaultRefDerefTraits<WebKit::Download>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash(uint64_t *a1, unsigned int a2, uint64_t *a3)
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
            WTF::RefCounted<WebKit::Download>::deref((v26 + 16));
          }

          *v25 = *v13;
          v27 = v13[1];
          v13[1] = 0;
          v25[1] = v27;
          v28 = v13[1];
          v13[1] = 0;
          if (v28)
          {
            WTF::RefCounted<WebKit::Download>::deref((v28 + 16));
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
            WTF::RefCounted<WebKit::Download>::deref((v15 + 16));
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

atomic_ullong *WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::NetworkDataTask,WTF::RawPtrTraits<WebKit::NetworkDataTask>,WTF::DefaultRefDerefTraits<WebKit::NetworkDataTask>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RefPtr<WebKit::NetworkDataTask,WTF::RawPtrTraits<WebKit::NetworkDataTask>,WTF::DefaultRefDerefTraits<WebKit::NetworkDataTask>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::inlineSet<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long> const&,WTF::Ref<WebKit::NetworkDataTask,WTF::RawPtrTraits<WebKit::NetworkDataTask>,WTF::DefaultRefDerefTraits<WebKit::NetworkDataTask>>>@<X0>(atomic_ullong *result@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *a2;
  if (*a2 == -1 || !v5)
  {
    __break(0xC471u);
    JUMPOUT(0x19DD3F940);
  }

  v8 = result;
  v9 = *result;
  if (!*result)
  {
    result = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::NetworkDataTask,WTF::RawPtrTraits<WebKit::NetworkDataTask>,WTF::DefaultRefDerefTraits<WebKit::NetworkDataTask>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::NetworkDataTask,WTF::RawPtrTraits<WebKit::NetworkDataTask>,WTF::DefaultRefDerefTraits<WebKit::NetworkDataTask>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::NetworkDataTask,WTF::RawPtrTraits<WebKit::NetworkDataTask>,WTF::DefaultRefDerefTraits<WebKit::NetworkDataTask>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RefPtr<WebKit::NetworkDataTask,WTF::RawPtrTraits<WebKit::NetworkDataTask>,WTF::DefaultRefDerefTraits<WebKit::NetworkDataTask>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand(result, 0);
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
  if (!*v15)
  {
LABEL_13:
    *v15 = v5;
    v19 = *a3;
    *a3 = 0;
    v20 = v15[1];
    v15[1] = v19;
    if (v20)
    {
      result = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::NetworkDataTask,(WTF::DestructionThread)1>::deref((v20 + 8));
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
    v26 = (*(v21 - 16) + v22);
    v27 = *(v21 - 4);
    if (v27 > 0x400)
    {
      if (v27 <= 2 * v26)
      {
LABEL_24:
        result = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::NetworkDataTask,WTF::RawPtrTraits<WebKit::NetworkDataTask>,WTF::DefaultRefDerefTraits<WebKit::NetworkDataTask>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::NetworkDataTask,WTF::RawPtrTraits<WebKit::NetworkDataTask>,WTF::DefaultRefDerefTraits<WebKit::NetworkDataTask>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::NetworkDataTask,WTF::RawPtrTraits<WebKit::NetworkDataTask>,WTF::DefaultRefDerefTraits<WebKit::NetworkDataTask>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RefPtr<WebKit::NetworkDataTask,WTF::RawPtrTraits<WebKit::NetworkDataTask>,WTF::DefaultRefDerefTraits<WebKit::NetworkDataTask>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand(v8, v15);
        v15 = result;
        v21 = *v8;
        if (*v8)
        {
          v27 = *(v21 - 4);
        }

        else
        {
          v27 = 0;
        }
      }
    }

    else if (3 * v27 <= 4 * v26)
    {
      goto LABEL_24;
    }

    *a4 = v15;
    *(a4 + 8) = v21 + 16 * v27;
    *(a4 + 16) = 1;
    return result;
  }

  v17 = 0;
  v18 = 1;
  while (v16 != v5)
  {
    if (v16 == -1)
    {
      v17 = v15;
    }

    v14 = (v14 + v18) & v10;
    v15 = (v9 + 16 * v14);
    v16 = *v15;
    ++v18;
    if (!*v15)
    {
      if (v17)
      {
        *v17 = 0;
        v17[1] = 0;
        --*(*v8 - 16);
        v5 = *a2;
        v15 = v17;
      }

      goto LABEL_13;
    }
  }

  v23 = v9 + 16 * *(v9 - 4);
  *a4 = v15;
  *(a4 + 8) = v23;
  *(a4 + 16) = 0;
  v24 = *a3;
  *a3 = 0;
  v25 = v15[1];
  v15[1] = v24;
  if (v25)
  {

    return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::NetworkDataTask,(WTF::DestructionThread)1>::deref((v25 + 8));
  }

  return result;
}

uint64_t *WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::NetworkDataTask,WTF::RawPtrTraits<WebKit::NetworkDataTask>,WTF::DefaultRefDerefTraits<WebKit::NetworkDataTask>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::NetworkDataTask,WTF::RawPtrTraits<WebKit::NetworkDataTask>,WTF::DefaultRefDerefTraits<WebKit::NetworkDataTask>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::NetworkDataTask,WTF::RawPtrTraits<WebKit::NetworkDataTask>,WTF::DefaultRefDerefTraits<WebKit::NetworkDataTask>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RefPtr<WebKit::NetworkDataTask,WTF::RawPtrTraits<WebKit::NetworkDataTask>,WTF::DefaultRefDerefTraits<WebKit::NetworkDataTask>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand(uint64_t *a1, uint64_t *a2)
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

  return WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::NetworkDataTask,WTF::RawPtrTraits<WebKit::NetworkDataTask>,WTF::DefaultRefDerefTraits<WebKit::NetworkDataTask>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::NetworkDataTask,WTF::RawPtrTraits<WebKit::NetworkDataTask>,WTF::DefaultRefDerefTraits<WebKit::NetworkDataTask>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::NetworkDataTask,WTF::RawPtrTraits<WebKit::NetworkDataTask>,WTF::DefaultRefDerefTraits<WebKit::NetworkDataTask>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RefPtr<WebKit::NetworkDataTask,WTF::RawPtrTraits<WebKit::NetworkDataTask>,WTF::DefaultRefDerefTraits<WebKit::NetworkDataTask>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash(a1, v5, a2);
}

uint64_t WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::Download,WTF::RawPtrTraits<WebKit::Download>,WTF::DefaultRefDerefTraits<WebKit::Download>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::Download,WTF::RawPtrTraits<WebKit::Download>,WTF::DefaultRefDerefTraits<WebKit::Download>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::Download,WTF::RawPtrTraits<WebKit::Download>,WTF::DefaultRefDerefTraits<WebKit::Download>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::Download,WTF::RawPtrTraits<WebKit::Download>,WTF::DefaultRefDerefTraits<WebKit::Download>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  if (*a2 == -1 || !v2)
  {
    __break(0xC471u);
    JUMPOUT(0x19DD3FA54);
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

uint64_t WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::PendingDownload,WTF::RawPtrTraits<WebKit::PendingDownload>,WTF::DefaultRefDerefTraits<WebKit::PendingDownload>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::PendingDownload,WTF::RawPtrTraits<WebKit::PendingDownload>,WTF::DefaultRefDerefTraits<WebKit::PendingDownload>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::PendingDownload,WTF::RawPtrTraits<WebKit::PendingDownload>,WTF::DefaultRefDerefTraits<WebKit::PendingDownload>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::PendingDownload,WTF::RawPtrTraits<WebKit::PendingDownload>,WTF::DefaultRefDerefTraits<WebKit::PendingDownload>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  if (*a2 == -1 || !v2)
  {
    __break(0xC471u);
    JUMPOUT(0x19DD3FB30);
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

uint64_t *WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::Download,WTF::RawPtrTraits<WebKit::Download>,WTF::DefaultRefDerefTraits<WebKit::Download>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::Download,WTF::RawPtrTraits<WebKit::Download>,WTF::DefaultRefDerefTraits<WebKit::Download>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::Download,WTF::RawPtrTraits<WebKit::Download>,WTF::DefaultRefDerefTraits<WebKit::Download>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::Download,WTF::RawPtrTraits<WebKit::Download>,WTF::DefaultRefDerefTraits<WebKit::Download>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::remove(uint64_t *result, void *a2)
{
  v2 = result;
  v3 = a2[1];
  *a2 = -1;
  a2[1] = 0;
  if (v3)
  {
    result = WTF::RefCounted<WebKit::Download>::deref((v3 + 16));
  }

  v4 = *v2;
  v5 = vadd_s32(*(*v2 - 16), 0xFFFFFFFF00000001);
  *(v4 - 16) = v5;
  v6 = *(v4 - 4);
  if (6 * v5.i32[1] < v6 && v6 >= 9)
  {

    return WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::Download,WTF::RawPtrTraits<WebKit::Download>,WTF::DefaultRefDerefTraits<WebKit::Download>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::Download,WTF::RawPtrTraits<WebKit::Download>,WTF::DefaultRefDerefTraits<WebKit::Download>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::Download,WTF::RawPtrTraits<WebKit::Download>,WTF::DefaultRefDerefTraits<WebKit::Download>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::Download,WTF::RawPtrTraits<WebKit::Download>,WTF::DefaultRefDerefTraits<WebKit::Download>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash(v2, v6 >> 1, 0);
  }

  return result;
}

uint64_t WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::Download,WTF::RawPtrTraits<WebKit::Download>,WTF::DefaultRefDerefTraits<WebKit::Download>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::Download,WTF::RawPtrTraits<WebKit::Download>,WTF::DefaultRefDerefTraits<WebKit::Download>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::Download,WTF::RawPtrTraits<WebKit::Download>,WTF::DefaultRefDerefTraits<WebKit::Download>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::Download,WTF::RawPtrTraits<WebKit::Download>,WTF::DefaultRefDerefTraits<WebKit::Download>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::Download,WTF::RawPtrTraits<WebKit::Download>,WTF::DefaultRefDerefTraits<WebKit::Download>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::Download,WTF::RawPtrTraits<WebKit::Download>,WTF::DefaultRefDerefTraits<WebKit::Download>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  if (!*a1)
  {
    return 0;
  }

  v3 = *a2;
  if (*a2 == -1 || !v3)
  {
    __break(0xC471u);
    JUMPOUT(0x19DD3FCB8);
  }

  v4 = *(v2 - 8);
  v5 = (v3 + ~(v3 << 32)) ^ ((v3 + ~(v3 << 32)) >> 22);
  v6 = 9 * ((v5 + ~(v5 << 13)) ^ ((v5 + ~(v5 << 13)) >> 8));
  v7 = (v6 ^ (v6 >> 15)) + ~((v6 ^ (v6 >> 15)) << 27);
  v8 = v4 & ((v7 >> 31) ^ v7);
  v9 = *(v2 + 16 * v8);
  if (v9 == v3)
  {
    return v2 + 16 * v8;
  }

  v10 = 1;
  while (v9)
  {
    v8 = (v8 + v10) & v4;
    v9 = *(v2 + 16 * v8);
    ++v10;
    if (v9 == v3)
    {
      return v2 + 16 * v8;
    }
  }

  return v2 + 16 * *(v2 - 4);
}

uint64_t WTF::Detail::CallableWrapper<WebCore::Timer::Timer<WebKit::DownloadMonitor,WebKit::DownloadMonitor>(WebKit::DownloadMonitor &,void (WebKit::DownloadMonitor::*)(void))::{lambda(void)#1},void>::call(void *a1)
{
  v1 = a1[1];
  v2 = *(*v1 + 8);
  if (v2)
  {
    ++*(v2 + 16);
    v3 = a1[2];
    v4 = a1[3];
    v5 = (v1 + (v4 >> 1));
    if (v4)
    {
      v3 = *(*v5 + v3);
    }

    v3(v5);

    return WebKit::DownloadMonitor::deref(v1);
  }

  else
  {
    result = 92;
    __break(0xC471u);
  }

  return result;
}

uint64_t WTF::Deque<WebKit::DownloadMonitor::Timestamp,10ul>::expandCapacity(uint64_t result)
{
  v1 = *(result + 24);
  v2 = v1 + (v1 >> 2);
  if (v2 >= 0xFFFFFFF)
  {
    __break(0xC471u);
    goto LABEL_33;
  }

  v3 = result;
  v4 = *(result + 16);
  if (v2 <= 0xF)
  {
    v2 = 15;
  }

  v5 = v2 + 1;
  result = WTF::fastMalloc((16 * (v2 + 1)));
  *(v3 + 24) = v5;
  *(v3 + 16) = result;
  v7 = *v3;
  v8 = *(v3 + 8);
  v9 = v8 - *v3;
  if (v8 < *v3)
  {
    if (v8 <= v1)
    {
      if (v8)
      {
        v10 = 16 * v8;
        v11 = v4;
        do
        {
          v12 = *v11;
          v11 = (v11 + 16);
          *result = v12;
          result += 16;
          v10 -= 16;
        }

        while (v10);
        v5 = *(v3 + 24);
        v7 = *v3;
      }

      if (v1 >= v7 && v5 >= v1 - v7)
      {
        v13 = v5 - (v1 - v7);
        if (v1 != v7)
        {
          v14 = (v4 + 16 * v7);
          v15 = 16 * v7;
          v16 = *(v3 + 16) + 16 * v5;
          v17 = v15 - 16 * v1;
          do
          {
            v18 = *v14++;
            *(v16 + v17) = v18;
            v17 += 16;
          }

          while (v17);
        }

        *v3 = v13;
        goto LABEL_24;
      }
    }

LABEL_33:
    __break(1u);
    return result;
  }

  v19 = v1 - v7;
  if (v1 < v7)
  {
    goto LABEL_33;
  }

  if (v9 == -1)
  {
    v9 = v1 - v7;
    if (!v19)
    {
      goto LABEL_24;
    }

    goto LABEL_22;
  }

  if (v19 < v9)
  {
    goto LABEL_33;
  }

  if (v9)
  {
LABEL_22:
    v20 = (v4 + 16 * v7);
    v21 = 16 * v9;
    v22 = (result + 16 * v7);
    do
    {
      v23 = *v20++;
      *v22++ = v23;
      v21 -= 16;
    }

    while (v21);
  }

LABEL_24:
  if ((v3 + 32) != v4 && v4)
  {
    if (*(v3 + 16) == v4)
    {
      *(v3 + 16) = 0;
      *(v3 + 24) = 0;
    }

    return WTF::fastFree(v4, v6);
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::DownloadProxy::WillSendRequest,WTF::CompletionHandler<void ()(WebCore::ResourceRequest &&)>>(WTF::CompletionHandler<void ()(WebCore::ResourceRequest &&)> &&,WTF::ThreadLikeAssertion)::{lambda(WTF::CompletionHandler<void ()(WebCore::ResourceRequest &&)>,IPC::Decoder)#1},void,WTF::CompletionHandler<void ()(WebCore::ResourceRequest &&)>,IPC::Decoder>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F11068E8;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::DownloadProxy::WillSendRequest,WTF::CompletionHandler<void ()(WebCore::ResourceRequest &&)>>(WTF::CompletionHandler<void ()(WebCore::ResourceRequest &&)> &&,WTF::ThreadLikeAssertion)::{lambda(WTF::CompletionHandler<void ()(WebCore::ResourceRequest &&)>,IPC::Decoder)#1},void,WTF::CompletionHandler<void ()(WebCore::ResourceRequest &&)>,IPC::Decoder>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F11068E8;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

void WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::DownloadProxy::WillSendRequest,WTF::CompletionHandler<void ()(WebCore::ResourceRequest &&)>>(WTF::CompletionHandler<void ()(WebCore::ResourceRequest &&)> &&,WTF::ThreadLikeAssertion)::{lambda(WTF::CompletionHandler<void ()(WebCore::ResourceRequest &&)>,IPC::Decoder)#1},void,WTF::CompletionHandler<void ()(WebCore::ResourceRequest &&)>,IPC::Decoder>::call(uint64_t a1, uint64_t a2, IPC::Decoder *a3)
{
  if (a3 && *a3)
  {
    IPC::ArgumentCoder<std::tuple<WebCore::ResourceRequest>,void>::decode<IPC::Decoder>(a3, v10);
    if (v11 & 1) != 0 || (v7 = *a3, v8 = *(a3 + 1), *a3 = 0, *(a3 + 1) = 0, (v9 = *(a3 + 3)) != 0) && v8 && ((*(*v9 + 16))(v9, v7), (v11))
    {
      v5 = *(a1 + 8);
      *(a1 + 8) = 0;
      (*(*v5 + 16))(v5, v10);
      (*(*v5 + 8))(v5);
      if (v11)
      {
        WebCore::ResourceRequest::~ResourceRequest(v10);
      }
    }

    else
    {
      IPC::Connection::cancelReply<Messages::DownloadProxy::WillSendRequest,WTF::CompletionHandler<void ()(WebCore::ResourceRequest &&)>>((a1 + 8));
    }
  }

  else
  {
    v6 = (a1 + 8);

    IPC::Connection::cancelReply<Messages::DownloadProxy::WillSendRequest,WTF::CompletionHandler<void ()(WebCore::ResourceRequest &&)>>(v6);
  }
}

void IPC::Connection::cancelReply<Messages::DownloadProxy::WillSendRequest,WTF::CompletionHandler<void ()(WebCore::ResourceRequest &&)>>(uint64_t *a1)
{
  WebCore::ResourceRequest::ResourceRequest(v4);
  std::__tuple_leaf<0ul,WebCore::ResourceRequest,false>::__tuple_leaf[abi:sn200100]<WebCore::ResourceRequest,0>(v3, v4);
  WebCore::ResourceRequest::~ResourceRequest(v4);
  v2 = *a1;
  *a1 = 0;
  (*(*v2 + 16))(v2, v3);
  (*(*v2 + 8))(v2);
  WebCore::ResourceRequest::~ResourceRequest(v3);
}

void *WTF::Detail::CallableWrapper<BOOL IPC::MessageSender::sendWithAsyncReplyWithoutUsingIPCConnection<Messages::PushClientConnection::SetPushAndNotificationsEnabledForOrigin,WTF::CompletionHandler<void ()(void)>>(Messages::PushClientConnection::SetPushAndNotificationsEnabledForOrigin &&,WTF::CompletionHandler<void ()(void)> &&)::{lambda(IPC::Decoder *)#1},void,WTF::CompletionHandler<void ()(void)> &&>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F1106910;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<BOOL IPC::MessageSender::sendWithAsyncReplyWithoutUsingIPCConnection<Messages::PushClientConnection::SetPushAndNotificationsEnabledForOrigin,WTF::CompletionHandler<void ()(void)>>(Messages::PushClientConnection::SetPushAndNotificationsEnabledForOrigin &&,WTF::CompletionHandler<void ()(void)> &&)::{lambda(IPC::Decoder *)#1},void,WTF::CompletionHandler<void ()(void)> &&>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F1106910;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<BOOL IPC::MessageSender::sendWithAsyncReplyWithoutUsingIPCConnection<Messages::PushClientConnection::SetPushAndNotificationsEnabledForOrigin,WTF::CompletionHandler<void ()(void)>>(Messages::PushClientConnection::SetPushAndNotificationsEnabledForOrigin &&,WTF::CompletionHandler<void ()(void)> &&)::{lambda(IPC::Decoder *)#1},void,WTF::CompletionHandler<void ()(void)> &&>::call(uint64_t a1)
{
  v1 = *(a1 + 8);
  *(a1 + 8) = 0;
  (*(*v1 + 16))(v1);
  v2 = *(*v1 + 8);

  return v2(v1);
}

void *WTF::Detail::CallableWrapper<WebKit::NetworkNotificationManager::getPendingPushMessage(WTF::CompletionHandler<void ()(std::optional<WebKit::WebPushMessage> const&)> &&)::$_0,void,std::optional<WebKit::WebPushMessage>&&>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F1106938;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::NetworkNotificationManager::getPendingPushMessage(WTF::CompletionHandler<void ()(std::optional<WebKit::WebPushMessage> const&)> &&)::$_0,void,std::optional<WebKit::WebPushMessage>&&>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F1106938;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::NetworkNotificationManager::getPendingPushMessage(WTF::CompletionHandler<void ()(std::optional<WebKit::WebPushMessage> const&)> &&)::$_0,void,std::optional<WebKit::WebPushMessage>&&>::call(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = qword_1ED6410A8;
  if (os_log_type_enabled(qword_1ED6410A8, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a2 + 216);
    v8[0] = 67109120;
    v8[1] = v5;
    _os_log_impl(&dword_19D52D000, v4, OS_LOG_TYPE_DEFAULT, "Done getting %u push messages", v8, 8u);
  }

  v6 = *(a1 + 8);
  *(a1 + 8) = 0;
  (*(*v6 + 16))(v6, a2);
  return (*(*v6 + 8))(v6);
}

void *WTF::Detail::CallableWrapper<BOOL IPC::MessageSender::sendWithAsyncReplyWithoutUsingIPCConnection<Messages::PushClientConnection::GetPendingPushMessage,WTF::CompletionHandler<void ()(std::optional<WebKit::WebPushMessage> &&)>>(Messages::PushClientConnection::GetPendingPushMessage &&,WTF::CompletionHandler<void ()(std::optional<WebKit::WebPushMessage> &&)> &&)::{lambda(IPC::Decoder *)#1},void,WTF::CompletionHandler<void ()(std::optional<WebKit::WebPushMessage> &&)> &>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F1106960;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<BOOL IPC::MessageSender::sendWithAsyncReplyWithoutUsingIPCConnection<Messages::PushClientConnection::GetPendingPushMessage,WTF::CompletionHandler<void ()(std::optional<WebKit::WebPushMessage> &&)>>(Messages::PushClientConnection::GetPendingPushMessage &&,WTF::CompletionHandler<void ()(std::optional<WebKit::WebPushMessage> &&)> &&)::{lambda(IPC::Decoder *)#1},void,WTF::CompletionHandler<void ()(std::optional<WebKit::WebPushMessage> &&)> &>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F1106960;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

void WTF::Detail::CallableWrapper<BOOL IPC::MessageSender::sendWithAsyncReplyWithoutUsingIPCConnection<Messages::PushClientConnection::GetPendingPushMessage,WTF::CompletionHandler<void ()(std::optional<WebKit::WebPushMessage> &&)>>(Messages::PushClientConnection::GetPendingPushMessage &&,WTF::CompletionHandler<void ()(std::optional<WebKit::WebPushMessage> &&)> &&)::{lambda(IPC::Decoder *)#1},void,WTF::CompletionHandler<void ()(std::optional<WebKit::WebPushMessage> &&)> &>::call(uint64_t a1, uint64_t *a2)
{
  if (a2 && *a2)
  {
    IPC::ArgumentCoder<std::tuple<std::optional<WebKit::WebPushMessage>>,void>::decode<IPC::Decoder>(a2, v10);
    if (v11 & 1) != 0 || (v7 = *a2, v8 = a2[1], *a2 = 0, a2[1] = 0, (v9 = a2[3]) != 0) && v8 && ((*(*v9 + 16))(v9, v7), (v11))
    {
      v4 = *(a1 + 8);
      *(a1 + 8) = 0;
      (*(*v4 + 16))(v4, v10);
      (*(*v4 + 8))(v4);
      if ((v11 & 1) != 0 && v10[216] == 1)
      {
        WebKit::WebPushMessage::~WebPushMessage(v10, v5);
      }
    }

    else
    {
      IPC::cancelReplyWithoutUsingConnection<Messages::PushClientConnection::GetPendingPushMessage,WTF::CompletionHandler<void ()(std::optional<WebKit::WebPushMessage> &&)>>((a1 + 8));
    }
  }

  else
  {
    v6 = (a1 + 8);

    IPC::cancelReplyWithoutUsingConnection<Messages::PushClientConnection::GetPendingPushMessage,WTF::CompletionHandler<void ()(std::optional<WebKit::WebPushMessage> &&)>>(v6);
  }
}

void IPC::cancelReplyWithoutUsingConnection<Messages::PushClientConnection::GetPendingPushMessage,WTF::CompletionHandler<void ()(std::optional<WebKit::WebPushMessage> &&)>>(uint64_t *a1)
{
  v3[0] = 0;
  v4 = 0;
  v1 = *a1;
  *a1 = 0;
  (*(*v1 + 16))(v1, v3);
  (*(*v1 + 8))(v1);
  if (v4 == 1)
  {
    WebKit::WebPushMessage::~WebPushMessage(v3, v2);
  }
}

void IPC::ArgumentCoder<std::tuple<std::optional<WebKit::WebPushMessage>>,void>::decode<IPC::Decoder>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  IPC::ArgumentCoder<std::optional<WebKit::WebPushMessage>,void>::decode<IPC::Decoder>(a1, v10);
  if (v11 & 1) != 0 || ((v6 = *a1, v7 = a1[1], *a1 = 0, a1[1] = 0, (v8 = a1[3]) != 0) ? (v9 = v7 == 0) : (v9 = 1), !v9 && ((*(*v8 + 16))(v8, v6), (v11)))
  {
    std::optional<WebKit::WebPushMessage>::optional[abi:sn200100](a2, v10);
    v5 = v11;
    a2[224] = 1;
    if ((v5 & 1) != 0 && v10[216] == 1)
    {
      WebKit::WebPushMessage::~WebPushMessage(v10, v4);
    }
  }

  else
  {
    *a2 = 0;
    a2[224] = 0;
  }
}

void IPC::ArgumentCoder<std::optional<WebKit::WebPushMessage>,void>::decode<IPC::Decoder>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[1];
  v4 = a1[2];
  v5 = *a1;
  if (v3 <= &v4[-*a1])
  {
    *a1 = 0;
    a1[1] = 0;
    v18 = a1;
    v15 = a1[3];
    if (v15)
    {
      if (v3)
      {
        (*(*v15 + 16))(v15);
        v5 = *v18;
        v3 = v18[1];
LABEL_19:
        *v18 = 0;
        v18[1] = 0;
        v16 = v18[3];
        if (v16)
        {
          if (v3)
          {
            (*(*v16 + 16))(v16, v5);
            v5 = *v18;
            v3 = v18[1];
LABEL_23:
            *v18 = 0;
            v18[1] = 0;
            v17 = v18[3];
            if (v17 && v3)
            {
              (*(*v17 + 16))(v17, v5);
            }

            *a2 = 0;
            goto LABEL_25;
          }
        }

        else
        {
          v3 = 0;
        }

        v5 = 0;
        goto LABEL_23;
      }
    }

    else
    {
      v3 = 0;
    }

    v5 = 0;
    goto LABEL_19;
  }

  a1[2] = (v4 + 1);
  if (!v4)
  {
    v18 = a1;
    goto LABEL_19;
  }

  v6 = *v4;
  if (v6 >= 2)
  {
    v18 = a1;
    goto LABEL_23;
  }

  if (!v6)
  {
    LOBYTE(v19) = 0;
    v35 = 0;
    std::optional<WebKit::WebPushMessage>::optional[abi:sn200100](a2, &v19);
    *(a2 + 224) = 1;
    if (v35 != 1)
    {
      return;
    }

LABEL_15:
    WebKit::WebPushMessage::~WebPushMessage(&v19, v10);
    return;
  }

  IPC::Decoder::decode<WebKit::WebPushMessage>(a1, &v19);
  v7 = v35;
  *a2 = 0;
  if (v7 != 1)
  {
LABEL_25:
    *(a2 + 224) = 0;
    return;
  }

  *(a2 + 16) = 0;
  if (v21 == 1)
  {
    *a2 = v19;
    v8 = v20;
    v19 = 0;
    v20 = 0;
    *(a2 + 8) = v8;
    *(a2 + 16) = 1;
  }

  v9 = v22;
  v22 = 0;
  *(a2 + 24) = v9;
  WTF::URL::URL(a2 + 32, v23);
  *(a2 + 72) = 0;
  *(a2 + 208) = 0;
  if (v34 == 1)
  {
    WTF::URL::URL(a2 + 72, v24);
    v11 = v25;
    v25 = 0;
    *(a2 + 112) = v11;
    *(a2 + 120) = v26;
    *(a2 + 136) = 0;
    *(a2 + 192) = 0;
    if (v32 == 1)
    {
      v12 = v28;
      v13 = v29;
      v28 = 0u;
      v29 = 0u;
      *(a2 + 136) = v27;
      *(a2 + 144) = v12;
      *(a2 + 160) = v13;
      v14 = v30;
      v30 = 0;
      *(a2 + 176) = v14;
      *(a2 + 184) = v31;
      *(a2 + 192) = 1;
    }

    *(a2 + 200) = v33;
    *(a2 + 208) = 1;
  }

  *(a2 + 216) = 1;
  *(a2 + 224) = 1;
  if (v35)
  {
    goto LABEL_15;
  }
}

void IPC::Decoder::decode<WebKit::WebPushMessage>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  IPC::ArgumentCoder<WebKit::WebPushMessage,void>::decode(a1, a2);
  if ((a2[216] & 1) == 0)
  {
    v4 = a1[1];
    *a1 = 0;
    a1[1] = 0;
    v5 = a1[3];
    if (v5 && v4 != 0)
    {
      v7 = *(*v5 + 16);

      v7();
    }
  }
}

uint64_t std::optional<WebKit::WebPushMessage>::optional[abi:sn200100](uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 216) = 0;
  if (*(a2 + 216) == 1)
  {
    *(a1 + 16) = 0;
    if (*(a2 + 16) == 1)
    {
      *a1 = 0;
      *(a1 + 8) = 0;
      WTF::VectorBuffer<unsigned char,0ul,WTF::FastMalloc>::adopt(a1, a2);
      *(a1 + 16) = 1;
    }

    v4 = *(a2 + 24);
    *(a2 + 24) = 0;
    *(a1 + 24) = v4;
    WTF::URL::URL(a1 + 32, (a2 + 32));
    *(a1 + 72) = 0;
    *(a1 + 208) = 0;
    if (*(a2 + 208) == 1)
    {
      WTF::URL::URL(a1 + 72, (a2 + 72));
      v5 = *(a2 + 112);
      *(a2 + 112) = 0;
      *(a1 + 112) = v5;
      *(a1 + 120) = *(a2 + 120);
      *(a1 + 136) = 0;
      *(a1 + 192) = 0;
      if (*(a2 + 192) == 1)
      {
        *(a1 + 136) = *(a2 + 136);
        v6 = *(a2 + 144);
        *(a2 + 144) = 0;
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
        *(a2 + 176) = 0;
        *(a1 + 176) = v10;
        *(a1 + 184) = *(a2 + 184);
        *(a1 + 192) = 1;
      }

      *(a1 + 200) = *(a2 + 200);
      *(a1 + 208) = 1;
    }

    *(a1 + 216) = 1;
  }

  return a1;
}

void *WTF::Detail::CallableWrapper<WebKit::NetworkNotificationManager::getPendingPushMessages(WTF::CompletionHandler<void ()(WTF::Vector<WebKit::WebPushMessage,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&)> &&)::$_0,void,WTF::Vector<WebKit::WebPushMessage,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>&&>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F1106988;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::NetworkNotificationManager::getPendingPushMessages(WTF::CompletionHandler<void ()(WTF::Vector<WebKit::WebPushMessage,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&)> &&)::$_0,void,WTF::Vector<WebKit::WebPushMessage,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>&&>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F1106988;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::NetworkNotificationManager::getPendingPushMessages(WTF::CompletionHandler<void ()(WTF::Vector<WebKit::WebPushMessage,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&)> &&)::$_0,void,WTF::Vector<WebKit::WebPushMessage,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>&&>::call(uint64_t a1)
{
  v1 = *(a1 + 8);
  *(a1 + 8) = 0;
  (*(*v1 + 16))(v1);
  v2 = *(*v1 + 8);

  return v2(v1);
}

void *WTF::Detail::CallableWrapper<BOOL IPC::MessageSender::sendWithAsyncReplyWithoutUsingIPCConnection<Messages::PushClientConnection::GetPendingPushMessages,WTF::CompletionHandler<void ()(WTF::Vector<WebKit::WebPushMessage,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>>(Messages::PushClientConnection::GetPendingPushMessages &&,WTF::CompletionHandler<void ()(WTF::Vector<WebKit::WebPushMessage,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)> &&)::{lambda(IPC::Decoder *)#1},void,WTF::CompletionHandler<void ()(WTF::Vector<WebKit::WebPushMessage,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)> &>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F11069B0;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<BOOL IPC::MessageSender::sendWithAsyncReplyWithoutUsingIPCConnection<Messages::PushClientConnection::GetPendingPushMessages,WTF::CompletionHandler<void ()(WTF::Vector<WebKit::WebPushMessage,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>>(Messages::PushClientConnection::GetPendingPushMessages &&,WTF::CompletionHandler<void ()(WTF::Vector<WebKit::WebPushMessage,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)> &&)::{lambda(IPC::Decoder *)#1},void,WTF::CompletionHandler<void ()(WTF::Vector<WebKit::WebPushMessage,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)> &>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F11069B0;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<BOOL IPC::MessageSender::sendWithAsyncReplyWithoutUsingIPCConnection<Messages::PushClientConnection::GetPendingPushMessages,WTF::CompletionHandler<void ()(WTF::Vector<WebKit::WebPushMessage,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>>(Messages::PushClientConnection::GetPendingPushMessages &&,WTF::CompletionHandler<void ()(WTF::Vector<WebKit::WebPushMessage,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)> &&)::{lambda(IPC::Decoder *)#1},void,WTF::CompletionHandler<void ()(WTF::Vector<WebKit::WebPushMessage,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)> &>::call(uint64_t a1, uint64_t *a2, double a3, __n128 a4)
{
  if (a2 && *a2)
  {
    IPC::ArgumentCoder<std::tuple<WTF::Vector<WebKit::WebPushMessage,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,void>::decode<IPC::Decoder>(a2, v13, a4);
    if (v14 & 1) != 0 || (v10 = *a2, v11 = a2[1], *a2 = 0, a2[1] = 0, (v12 = a2[3]) != 0) && v11 && ((*(*v12 + 16))(v12, v10), (v14))
    {
      v6 = *(a1 + 8);
      *(a1 + 8) = 0;
      (*(*v6 + 16))(v6, v13);
      result = (*(*v6 + 8))(v6);
      if (v14)
      {
        return WTF::Vector<WebKit::WebPushMessage,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v13, v8);
      }
    }

    else
    {
      return IPC::cancelReplyWithoutUsingConnection<Messages::PushClientConnection::GetPendingPushMessages,WTF::CompletionHandler<void ()(WTF::Vector<WebKit::WebPushMessage,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>>((a1 + 8));
    }
  }

  else
  {
    v9 = (a1 + 8);

    return IPC::cancelReplyWithoutUsingConnection<Messages::PushClientConnection::GetPendingPushMessages,WTF::CompletionHandler<void ()(WTF::Vector<WebKit::WebPushMessage,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>>(v9);
  }

  return result;
}

uint64_t IPC::cancelReplyWithoutUsingConnection<Messages::PushClientConnection::GetPendingPushMessages,WTF::CompletionHandler<void ()(WTF::Vector<WebKit::WebPushMessage,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>>(uint64_t *a1)
{
  v4[0] = 0;
  v4[1] = 0;
  v1 = *a1;
  *a1 = 0;
  (*(*v1 + 16))(v1, v4);
  (*(*v1 + 8))(v1);
  return WTF::Vector<WebKit::WebPushMessage,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v4, v2);
}

uint64_t IPC::ArgumentCoder<std::tuple<WTF::Vector<WebKit::WebPushMessage,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,void>::decode<IPC::Decoder>@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>, __n128 a3@<Q1>)
{
  IPC::VectorArgumentCoder<false,WebKit::WebPushMessage,0ul,WTF::CrashOnOverflow,16ul>::decode<IPC::Decoder>(a1, &v11, a3);
  if (v13 & 1) != 0 || ((v8 = *a1, v9 = a1[1], *a1 = 0, a1[1] = 0, (result = a1[3]) != 0) ? (v10 = v9 == 0) : (v10 = 1), !v10 && (result = (*(*result + 16))(result, v8), (v13)))
  {
    *a2 = v11;
    v6 = v12;
    v11 = 0;
    v12 = 0;
    *(a2 + 8) = v6;
    *(a2 + 16) = 1;
    return WTF::Vector<WebKit::WebPushMessage,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v11, v5);
  }

  else
  {
    *a2 = 0;
    *(a2 + 16) = 0;
  }

  return result;
}

uint64_t IPC::VectorArgumentCoder<false,WebKit::WebPushMessage,0ul,WTF::CrashOnOverflow,16ul>::decode<IPC::Decoder>@<X0>(uint64_t *a1@<X0>, char *a2@<X8>, __n128 a3@<Q1>)
{
  v5 = a1[1];
  v6 = ((a1[2] + 7) & 0xFFFFFFFFFFFFFFF8);
  v7 = *a1;
  v8 = v6 - *a1;
  v9 = v5 >= v8;
  v10 = v5 - v8;
  if (!v9 || v10 <= 7)
  {
    *a1 = 0;
    a1[1] = 0;
    v41 = a1[3];
    if (v41)
    {
      if (v5)
      {
        (*(*v41 + 16))(v41);
        v5 = a1[1];
      }
    }

    else
    {
      v5 = 0;
    }

    goto LABEL_51;
  }

  a1[2] = (v6 + 1);
  if (!v6)
  {
LABEL_51:
    *a1 = 0;
    a1[1] = 0;
    result = a1[3];
    if (result)
    {
      if (v5)
      {
        result = (*(*result + 16))(result);
      }
    }

    *a2 = 0;
    a2[16] = 0;
    return result;
  }

  v12 = *v6;
  v62 = 0uLL;
  if (v12 >> 1 >= 0x97B)
  {
    v28 = *a2;
    v29 = a2[16];
    while (1)
    {
      IPC::Decoder::decode<WebKit::WebPushMessage>(a1, &v42);
      v30 = v61;
      if (v61 == 1)
      {
        if (v62.n128_u32[3] == v62.n128_u32[2])
        {
          WTF::Vector<WebKit::WebPushMessage,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebKit::WebPushMessage>(&v62, &v42);
        }

        else
        {
          v31 = v62.n128_u64[0] + 216 * v62.n128_u32[3];
          *v31 = 0;
          *(v31 + 16) = 0;
          if (v45 == 1)
          {
            *v31 = 0;
            *(v31 + 8) = 0;
            v32 = v42;
            v42 = 0;
            *v31 = v32;
            LODWORD(v32) = v43;
            v43 = 0;
            *(v31 + 8) = v32;
            LODWORD(v32) = v44;
            v44 = 0;
            *(v31 + 12) = v32;
            *(v31 + 16) = 1;
          }

          v33 = v46;
          v46 = 0;
          *(v31 + 24) = v33;
          WTF::URL::URL(v31 + 32, v47);
          *(v31 + 72) = 0;
          *(v31 + 208) = 0;
          if (v60 == 1)
          {
            WTF::URL::URL(v31 + 72, v48);
            v34 = v49;
            v49 = 0;
            *(v31 + 112) = v34;
            *(v31 + 120) = v50;
            *(v31 + 136) = 0;
            *(v31 + 192) = 0;
            if (v58 == 1)
            {
              *(v31 + 136) = v51;
              v35 = v52;
              v52 = 0;
              *(v31 + 144) = v35;
              v36 = v53;
              v53 = 0;
              *(v31 + 152) = v36;
              v37 = v54;
              v54 = 0;
              *(v31 + 160) = v37;
              v38 = v55;
              v55 = 0;
              *(v31 + 168) = v38;
              v39 = v56;
              v56 = 0;
              *(v31 + 176) = v39;
              *(v31 + 184) = v57;
              *(v31 + 192) = 1;
            }

            *(v31 + 200) = v59;
            *(v31 + 208) = 1;
          }

          ++v62.n128_u32[3];
        }
      }

      else
      {
        v29 = 0;
        v28 = 0;
      }

      if (v61 == 1)
      {
        WebKit::WebPushMessage::~WebPushMessage(&v42, v7);
      }

      if ((v30 & 1) == 0)
      {
        break;
      }

      if (!--v12)
      {
        WTF::Vector<WebKit::WebPushMessage,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity(&v62, v62.n128_u32[3]);
        *a2 = v62.n128_u64[0];
        v40 = v62.n128_u64[1];
        v62 = 0uLL;
        *(a2 + 1) = v40;
        goto LABEL_28;
      }
    }

    a2[16] = v29;
    *a2 = v28;
  }

  else if (v12)
  {
    v62.n128_u32[2] = 216 * v12 / 0xD8u;
    v62.n128_u64[0] = WTF::fastMalloc((216 * v12));
    v13 = *a2;
    v14 = a2[16];
    while (1)
    {
      IPC::Decoder::decode<WebKit::WebPushMessage>(a1, &v42);
      v15 = v61;
      if (v61 == 1)
      {
        if (v62.n128_u32[3] == v62.n128_u32[2])
        {
          WTF::Vector<WebKit::WebPushMessage,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebKit::WebPushMessage>(&v62, &v42);
        }

        else
        {
          v16 = v62.n128_u64[0] + 216 * v62.n128_u32[3];
          *v16 = 0;
          *(v16 + 16) = 0;
          if (v45 == 1)
          {
            *v16 = 0;
            *(v16 + 8) = 0;
            v17 = v42;
            v42 = 0;
            *v16 = v17;
            LODWORD(v17) = v43;
            v43 = 0;
            *(v16 + 8) = v17;
            LODWORD(v17) = v44;
            v44 = 0;
            *(v16 + 12) = v17;
            *(v16 + 16) = 1;
          }

          v18 = v46;
          v46 = 0;
          *(v16 + 24) = v18;
          WTF::URL::URL(v16 + 32, v47);
          *(v16 + 72) = 0;
          *(v16 + 208) = 0;
          if (v60 == 1)
          {
            WTF::URL::URL(v16 + 72, v48);
            v19 = v49;
            v49 = 0;
            *(v16 + 112) = v19;
            *(v16 + 120) = v50;
            *(v16 + 136) = 0;
            *(v16 + 192) = 0;
            if (v58 == 1)
            {
              *(v16 + 136) = v51;
              v20 = v52;
              v52 = 0;
              *(v16 + 144) = v20;
              v21 = v53;
              v53 = 0;
              *(v16 + 152) = v21;
              v22 = v54;
              v54 = 0;
              *(v16 + 160) = v22;
              v23 = v55;
              v55 = 0;
              *(v16 + 168) = v23;
              v24 = v56;
              v56 = 0;
              *(v16 + 176) = v24;
              *(v16 + 184) = v57;
              *(v16 + 192) = 1;
            }

            *(v16 + 200) = v59;
            *(v16 + 208) = 1;
          }

          ++v62.n128_u32[3];
        }
      }

      else
      {
        v14 = 0;
        v13 = 0;
      }

      if (v61 == 1)
      {
        WebKit::WebPushMessage::~WebPushMessage(&v42, v7);
      }

      if ((v15 & 1) == 0)
      {
        break;
      }

      if (!--v12)
      {
        v26 = v62.n128_u64[1];
        v25 = v62.n128_u64[0];
        goto LABEL_27;
      }
    }

    a2[16] = v14;
    *a2 = v13;
  }

  else
  {
    v25 = 0;
    v26 = 0;
LABEL_27:
    a3.n128_u64[0] = 0;
    v62 = a3;
    *a2 = v25;
    *(a2 + 1) = v26;
LABEL_28:
    a2[16] = 1;
  }

  return WTF::Vector<WebKit::WebPushMessage,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v62, v7);
}

uint64_t WTF::Vector<WebKit::WebPushMessage,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebKit::WebPushMessage>(uint64_t a1, unint64_t a2)
{
  v3 = WTF::Vector<WebKit::WebPushMessage,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(a1, *(a1 + 12) + 1, a2);
  v4 = *a1 + 216 * *(a1 + 12);
  *v4 = 0;
  *(v4 + 16) = 0;
  if (*(v3 + 16) == 1)
  {
    *v4 = 0;
    *(v4 + 8) = 0;
    WTF::VectorBuffer<unsigned char,0ul,WTF::FastMalloc>::adopt(v4, v3);
    *(v4 + 16) = 1;
  }

  v5 = *(v3 + 24);
  *(v3 + 24) = 0;
  *(v4 + 24) = v5;
  WTF::URL::URL(v4 + 32, (v3 + 32));
  *(v4 + 72) = 0;
  *(v4 + 208) = 0;
  if (*(v3 + 208) == 1)
  {
    WTF::URL::URL(v4 + 72, (v3 + 72));
    v6 = *(v3 + 112);
    *(v3 + 112) = 0;
    *(v4 + 112) = v6;
    *(v4 + 120) = *(v3 + 120);
    *(v4 + 136) = 0;
    *(v4 + 192) = 0;
    if (*(v3 + 192) == 1)
    {
      *(v4 + 136) = *(v3 + 136);
      v7 = *(v3 + 144);
      *(v3 + 144) = 0;
      *(v4 + 144) = v7;
      v8 = *(v3 + 152);
      *(v3 + 152) = 0;
      *(v4 + 152) = v8;
      v9 = *(v3 + 160);
      *(v3 + 160) = 0;
      *(v4 + 160) = v9;
      v10 = *(v3 + 168);
      *(v3 + 168) = 0;
      *(v4 + 168) = v10;
      v11 = *(v3 + 176);
      *(v3 + 176) = 0;
      *(v4 + 176) = v11;
      *(v4 + 184) = *(v3 + 184);
      *(v4 + 192) = 1;
    }

    *(v4 + 200) = *(v3 + 200);
    *(v4 + 208) = 1;
  }

  ++*(a1 + 12);
  return 1;
}

unint64_t WTF::Vector<WebKit::WebPushMessage,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v3 = a3;
  v5 = *a1;
  if (*a1 > a3 || v5 + 216 * *(a1 + 12) <= a3)
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

    WTF::Vector<WebKit::WebPushMessage,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v12);
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

    WTF::Vector<WebKit::WebPushMessage,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v9);
    return *a1 + v6;
  }

  return v3;
}

uint64_t WTF::Vector<WebKit::WebPushMessage,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 8) < a2)
  {
    if (a2 >= 0x12F684C)
    {
      __break(0xC471u);
      JUMPOUT(0x19DD41920);
    }

    v3 = *a1;
    v4 = *a1 + 216 * *(a1 + 12);
    v5 = 216 * a2;
    v6 = WTF::fastMalloc((216 * a2));
    *(a1 + 8) = v5 / 0xD8;
    *a1 = v6;
    WTF::VectorMover<false,WebKit::WebPushMessage>::move(v3, v4, v6);
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

void WTF::VectorMover<false,WebKit::WebPushMessage>::move(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v6 = 0;
    do
    {
      v7 = a3 + v6;
      v8 = a1 + v6;
      *v7 = 0;
      *(v7 + 16) = 0;
      if (*(a1 + v6 + 16) == 1)
      {
        *v7 = 0;
        *(v7 + 8) = 0;
        WTF::VectorBuffer<unsigned char,0ul,WTF::FastMalloc>::adopt(a3 + v6, (a1 + v6));
        *(v7 + 16) = 1;
      }

      v9 = *(v8 + 24);
      *(v8 + 24) = 0;
      *(v7 + 24) = v9;
      WTF::URL::URL(v7 + 32, (v8 + 32));
      *(v7 + 72) = 0;
      *(v7 + 208) = 0;
      if (*(v8 + 208) == 1)
      {
        v11 = a1 + v6;
        WTF::URL::URL(v7 + 72, (a1 + v6 + 72));
        v12 = a3 + v6;
        v13 = *(a1 + v6 + 112);
        *(a1 + v6 + 112) = 0;
        *(v12 + 112) = v13;
        *(v12 + 120) = *(a1 + v6 + 120);
        *(v12 + 136) = 0;
        *(v12 + 192) = 0;
        if (*(a1 + v6 + 192) == 1)
        {
          *(v12 + 136) = *(v11 + 136);
          v14 = *(v11 + 144);
          *(v11 + 144) = 0;
          *(v12 + 144) = v14;
          v15 = *(v11 + 152);
          *(v11 + 152) = 0;
          *(v12 + 152) = v15;
          v16 = *(v11 + 160);
          *(v11 + 160) = 0;
          *(v12 + 160) = v16;
          v17 = *(v11 + 168);
          *(v11 + 168) = 0;
          *(v12 + 168) = v17;
          v18 = *(v11 + 176);
          *(v11 + 176) = 0;
          *(v12 + 176) = v18;
          *(v12 + 184) = *(v11 + 184);
          *(v12 + 192) = 1;
        }

        *(v12 + 200) = *(v11 + 200);
        *(v7 + 208) = 1;
      }

      WebKit::WebPushMessage::~WebPushMessage((a1 + v6), v10);
      v6 += 216;
    }

    while (a1 + v6 != a2);
  }
}

void WTF::Vector<WebKit::WebPushMessage,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity(unsigned int *a1, unint64_t a2)
{
  if (a1[2] > a2)
  {
    if (a1[3] > a2)
    {
      WTF::Vector<WebKit::WebPushMessage,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrink(a1, a2);
    }

    v4 = *a1;
    if (a2)
    {
      if (a2 >= 0x12F684C)
      {
        __break(0xC471u);
        return;
      }

      v5 = a1[3];
      v6 = (216 * a2);
      v7 = WTF::fastMalloc(v6);
      a1[2] = v6 / 0xD8;
      *a1 = v7;
      if (v7 != v4)
      {
        WTF::VectorMover<false,WebKit::WebPushMessage>::move(v4, v4 + 216 * v5, v7);
      }
    }

    if (v4)
    {
      if (*a1 == v4)
      {
        *a1 = 0;
        a1[2] = 0;
      }

      WTF::fastFree(v4, a2);
    }
  }
}

unsigned int *WTF::Vector<WebKit::WebPushMessage,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrink(unsigned int *result, WTF::StringImpl *a2)
{
  v2 = result[3];
  if (v2 < a2)
  {
    __break(1u);
  }

  else
  {
    v3 = a2;
    v4 = result;
    if (v2 != a2)
    {
      result = (*result + 216 * a2);
      v5 = 216 * v2 - 216 * a2;
      do
      {
        WebKit::WebPushMessage::~WebPushMessage(result, a2);
        result = (v6 + 216);
        v5 -= 216;
      }

      while (v5);
    }

    v4[3] = v3;
  }

  return result;
}

char *IPC::ArgumentCoder<WTF::RefPtr<WebCore::NotificationResources,WTF::RawPtrTraits<WebCore::NotificationResources>,WTF::DefaultRefDerefTraits<WebCore::NotificationResources>>,void>::encode<IPC::Encoder,WebCore::NotificationResources>(IPC::Encoder *a1, void *a2)
{
  v4 = *a2;
  result = IPC::Encoder::grow(a1, 1uLL, 1);
  if (!v4)
  {
    if (v6)
    {
      *result = 0;
      return result;
    }

LABEL_8:
    __break(0xC471u);
    JUMPOUT(0x19DD41C84);
  }

  if (!v6)
  {
    goto LABEL_8;
  }

  *result = 1;
  v7 = (*a2 + 8);

  return IPC::ArgumentCoder<WTF::RefPtr<WebCore::Image,WTF::RawPtrTraits<WebCore::Image>,WTF::DefaultRefDerefTraits<WebCore::Image>>,void>::encode<IPC::Encoder,WebCore::Image>(a1, v7);
}

void *WTF::Detail::CallableWrapper<BOOL IPC::MessageSender::sendWithAsyncReplyWithoutUsingIPCConnection<Messages::PushClientConnection::ShowNotification,WTF::CompletionHandler<void ()(void)>>(Messages::PushClientConnection::ShowNotification &&,WTF::CompletionHandler<void ()(void)> &&)::{lambda(IPC::Decoder *)#1},void,WTF::CompletionHandler<void ()(void)> &&>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F11069D8;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<BOOL IPC::MessageSender::sendWithAsyncReplyWithoutUsingIPCConnection<Messages::PushClientConnection::ShowNotification,WTF::CompletionHandler<void ()(void)>>(Messages::PushClientConnection::ShowNotification &&,WTF::CompletionHandler<void ()(void)> &&)::{lambda(IPC::Decoder *)#1},void,WTF::CompletionHandler<void ()(void)> &&>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F11069D8;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<BOOL IPC::MessageSender::sendWithAsyncReplyWithoutUsingIPCConnection<Messages::PushClientConnection::ShowNotification,WTF::CompletionHandler<void ()(void)>>(Messages::PushClientConnection::ShowNotification &&,WTF::CompletionHandler<void ()(void)> &&)::{lambda(IPC::Decoder *)#1},void,WTF::CompletionHandler<void ()(void)> &&>::call(uint64_t a1)
{
  v1 = *(a1 + 8);
  *(a1 + 8) = 0;
  (*(*v1 + 16))(v1);
  v2 = *(*v1 + 8);

  return v2(v1);
}

void *WTF::Detail::CallableWrapper<BOOL IPC::MessageSender::sendWithAsyncReplyWithoutUsingIPCConnection<Messages::PushClientConnection::GetNotifications,WTF::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<WTF::Vector<WebCore::NotificationData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::ExceptionData> &&)>>(Messages::PushClientConnection::GetNotifications &&,WTF::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<WTF::Vector<WebCore::NotificationData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::ExceptionData> &&)> &&)::{lambda(IPC::Decoder *)#1},void,WTF::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<WTF::Vector<WebCore::NotificationData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::ExceptionData> &&)> &>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F1106A00;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<BOOL IPC::MessageSender::sendWithAsyncReplyWithoutUsingIPCConnection<Messages::PushClientConnection::GetNotifications,WTF::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<WTF::Vector<WebCore::NotificationData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::ExceptionData> &&)>>(Messages::PushClientConnection::GetNotifications &&,WTF::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<WTF::Vector<WebCore::NotificationData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::ExceptionData> &&)> &&)::{lambda(IPC::Decoder *)#1},void,WTF::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<WTF::Vector<WebCore::NotificationData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::ExceptionData> &&)> &>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F1106A00;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<BOOL IPC::MessageSender::sendWithAsyncReplyWithoutUsingIPCConnection<Messages::PushClientConnection::GetNotifications,WTF::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<WTF::Vector<WebCore::NotificationData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::ExceptionData> &&)>>(Messages::PushClientConnection::GetNotifications &&,WTF::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<WTF::Vector<WebCore::NotificationData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::ExceptionData> &&)> &&)::{lambda(IPC::Decoder *)#1},void,WTF::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<WTF::Vector<WebCore::NotificationData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::ExceptionData> &&)> &>::call(uint64_t a1, IPC::Decoder *a2, double a3, __n128 a4)
{
  if (a2 && *a2)
  {
    IPC::ArgumentCoder<std::tuple<std::experimental::fundamentals_v3::expected<WTF::Vector<WebCore::NotificationData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::ExceptionData>>,void>::decode<IPC::Decoder>(a2, v13, a4);
    if (v14 & 1) != 0 || (v10 = *a2, v11 = *(a2 + 1), *a2 = 0, *(a2 + 1) = 0, (v12 = *(a2 + 3)) != 0) && v11 && ((*(*v12 + 16))(v12, v10), (v14))
    {
      v6 = *(a1 + 8);
      *(a1 + 8) = 0;
      (*(*v6 + 16))(v6, v13);
      result = (*(*v6 + 8))(v6);
      if (v14)
      {
        return mpark::detail::copy_constructor<mpark::detail::traits<WTF::Vector<WebCore::NotificationData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::ExceptionData>,(mpark::detail::Trait)1>::~copy_constructor(v13, v8);
      }
    }

    else
    {
      return IPC::cancelReplyWithoutUsingConnection<Messages::PushClientConnection::GetNotifications,WTF::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<WTF::Vector<WebCore::NotificationData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::ExceptionData> &&)>>((a1 + 8));
    }
  }

  else
  {
    v9 = (a1 + 8);

    return IPC::cancelReplyWithoutUsingConnection<Messages::PushClientConnection::GetNotifications,WTF::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<WTF::Vector<WebCore::NotificationData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::ExceptionData> &&)>>(v9);
  }

  return result;
}

uint64_t IPC::cancelReplyWithoutUsingConnection<Messages::PushClientConnection::GetNotifications,WTF::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<WTF::Vector<WebCore::NotificationData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::ExceptionData> &&)>>(uint64_t *a1)
{
  v4[0] = 0;
  v5 = 0;
  v6 = 1;
  v1 = *a1;
  *a1 = 0;
  (*(*v1 + 16))(v1, v4);
  (*(*v1 + 8))(v1);
  return mpark::detail::copy_constructor<mpark::detail::traits<WTF::Vector<WebCore::NotificationData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::ExceptionData>,(mpark::detail::Trait)1>::~copy_constructor(v4, v2);
}

uint64_t IPC::ArgumentCoder<std::tuple<std::experimental::fundamentals_v3::expected<WTF::Vector<WebCore::NotificationData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::ExceptionData>>,void>::decode<IPC::Decoder>@<X0>(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>, __n128 a3@<Q1>)
{
  IPC::ArgumentCoder<std::experimental::fundamentals_v3::expected<WTF::Vector<WebCore::NotificationData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::ExceptionData>,void>::decode<IPC::Decoder>(a1, &v13, a3);
  if (v16 & 1) != 0 || ((v10 = *a1, v11 = *(a1 + 1), *a1 = 0, *(a1 + 1) = 0, (result = *(a1 + 3)) != 0) ? (v12 = v11 == 0) : (v12 = 1), !v12 && (result = (*(*result + 16))(result, v10), (v16)))
  {
    *a2 = 0;
    *(a2 + 16) = -1;
    v6 = v15;
    if (v15 != 255)
    {
      if (v15)
      {
        *a2 = v13;
        v8 = v14;
        v14 = 0;
        *(a2 + 8) = v8;
      }

      else
      {
        *a2 = v13;
        v7 = v14;
        v13 = 0;
        v14 = 0;
        *(a2 + 8) = v7;
      }

      *(a2 + 16) = v6;
    }

    *(a2 + 24) = 1;
    return mpark::detail::copy_constructor<mpark::detail::traits<WTF::Vector<WebCore::NotificationData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::ExceptionData>,(mpark::detail::Trait)1>::~copy_constructor(&v13, v5);
  }

  else
  {
    *a2 = 0;
    *(a2 + 24) = 0;
  }

  return result;
}

WTF::StringImpl *IPC::ArgumentCoder<std::experimental::fundamentals_v3::expected<WTF::Vector<WebCore::NotificationData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::ExceptionData>,void>::decode<IPC::Decoder>@<X0>(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>, __n128 a3@<Q1>)
{
  v5 = *(a1 + 1);
  v6 = *(a1 + 2);
  v7 = *a1;
  if (v5 <= &v6[-*a1])
  {
    *a1 = 0;
    *(a1 + 1) = 0;
    v16 = *(a1 + 3);
    if (v16)
    {
      if (v5)
      {
        (*(*v16 + 16))(v16);
        v5 = *(a1 + 1);
      }
    }

    else
    {
      v5 = 0;
    }

    goto LABEL_18;
  }

  *(a1 + 2) = v6 + 1;
  if (!v6)
  {
LABEL_18:
    *a1 = 0;
    *(a1 + 1) = 0;
    v17 = *(a1 + 3);
    if (v17)
    {
      if (v5)
      {
        (*(*v17 + 16))(v17);
        v7 = *a1;
        v5 = *(a1 + 1);
        goto LABEL_21;
      }
    }

    else
    {
      v5 = 0;
    }

    v7 = 0;
LABEL_21:
    *a1 = 0;
    *(a1 + 1) = 0;
    result = *(a1 + 3);
    if (result && v5)
    {
      result = (*(*result + 16))(result, v7);
    }

LABEL_12:
    *a2 = 0;
    *(a2 + 24) = 0;
    return result;
  }

  v8 = *v6;
  if (v8 >= 2)
  {
    goto LABEL_21;
  }

  if (v8)
  {
    IPC::VectorArgumentCoder<false,WebCore::NotificationData,0ul,WTF::CrashOnOverflow,16ul>::decode<IPC::Decoder>(a1, &v18, a3);
    if (v20 & 1) != 0 || (v14 = *a1, v15 = *(a1 + 1), *a1 = 0, *(a1 + 1) = 0, (result = *(a1 + 3)) != 0) && v15 && (result = (*(*result + 16))(result, v14), (v20))
    {
      *a2 = v18;
      v10 = v19;
      v18 = 0;
      v19 = 0;
      *(a2 + 8) = v10;
      *(a2 + 16) = 0;
      *(a2 + 24) = 1;
      return WTF::Vector<WebCore::NotificationData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v18, v9);
    }

    goto LABEL_12;
  }

  result = IPC::Decoder::decode<WebCore::ExceptionData>(a1, &v18);
  if (v20 == 1)
  {
    v12 = v18;
    *(a2 + 8) = v19;
    v13 = 1;
    *(a2 + 16) = 1;
  }

  else
  {
    v12 = 0;
    v13 = 0;
  }

  *a2 = v12;
  *(a2 + 24) = v13;
  return result;
}

WTF::StringImpl *IPC::Decoder::decode<WebCore::ExceptionData>@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = IPC::ArgumentCoder<WebCore::Exception,void>::decode(a1, a2);
  if ((*(a2 + 16) & 1) == 0)
  {
    v5 = a1[1];
    *a1 = 0;
    a1[1] = 0;
    result = a1[3];
    if (result && v5 != 0)
    {
      v7 = *(*result + 16);

      return v7();
    }
  }

  return result;
}

uint64_t IPC::VectorArgumentCoder<false,WebCore::NotificationData,0ul,WTF::CrashOnOverflow,16ul>::decode<IPC::Decoder>@<X0>(IPC::Decoder *a1@<X0>, char *a2@<X8>, __n128 a3@<Q1>)
{
  v63 = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 1);
  v6 = ((*(a1 + 2) + 7) & 0xFFFFFFFFFFFFFFF8);
  v7 = *a1;
  v8 = v6 - *a1;
  v9 = v5 >= v8;
  v10 = v5 - v8;
  if (!v9 || v10 <= 7)
  {
    *a1 = 0;
    *(a1 + 1) = 0;
    v42 = *(a1 + 3);
    if (v42)
    {
      if (v5)
      {
        (*(*v42 + 16))(v42);
        v5 = *(a1 + 1);
      }
    }

    else
    {
      v5 = 0;
    }

    goto LABEL_38;
  }

  *(a1 + 2) = v6 + 1;
  if (v6)
  {
    v12 = *v6;
    v43 = 0uLL;
    if (v12 >= 0x1000)
    {
      v13 = *a2;
      v14 = a2[16];
      while (1)
      {
        IPC::Decoder::decode<WebCore::NotificationData>(a1, v44);
        v28 = v62;
        if (v62 == 1)
        {
          if (v43.n128_u32[3] == v43.n128_u32[2])
          {
            WTF::Vector<WebCore::NotificationData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebCore::NotificationData>(&v43, v44);
          }

          else
          {
            v29 = v43.n128_u64[0] + (v43.n128_u32[3] << 8);
            WTF::URL::URL(v29, v44);
            v30 = v45;
            v45 = 0;
            *(v29 + 40) = v30;
            v31 = v46;
            v46 = 0;
            *(v29 + 48) = v31;
            v32 = v47;
            v47 = 0;
            *(v29 + 56) = v32;
            v33 = v48;
            v48 = 0;
            *(v29 + 64) = v33;
            v34 = v49;
            v49 = 0;
            *(v29 + 72) = v34;
            *(v29 + 80) = v50;
            v35 = v51;
            v51 = 0;
            *(v29 + 88) = v35;
            WTF::URL::URL(v29 + 96, v52);
            *(v29 + 144) = v53;
            v36 = v54;
            v37 = v55;
            v38 = v57;
            *(v29 + 192) = v56;
            *(v29 + 208) = v38;
            *(v29 + 160) = v36;
            *(v29 + 176) = v37;
            *(v29 + 224) = 0;
            *(v29 + 232) = 0;
            v39 = v58;
            v58 = 0;
            *(v29 + 224) = v39;
            LODWORD(v39) = v59;
            v59 = 0;
            *(v29 + 232) = v39;
            LODWORD(v39) = v60;
            v60 = 0;
            *(v29 + 236) = v39;
            *(v29 + 240) = v61;
            ++v43.n128_u32[3];
          }
        }

        else
        {
          v14 = 0;
          v13 = 0;
        }

        if (v62 == 1)
        {
          WebCore::NotificationData::~NotificationData(v44, v7);
        }

        if ((v28 & 1) == 0)
        {
          break;
        }

        if (!--v12)
        {
          WTF::Vector<WebCore::NotificationData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity(&v43, v43.n128_u32[3]);
          *a2 = v43.n128_u64[0];
          v40 = v43.n128_u64[1];
          v43 = 0uLL;
          *(a2 + 1) = v40;
          goto LABEL_22;
        }
      }
    }

    else
    {
      if (!v12)
      {
        v26 = 0;
        v27 = 0;
LABEL_21:
        a3.n128_u64[0] = 0;
        v43 = a3;
        *a2 = v26;
        *(a2 + 1) = v27;
LABEL_22:
        a2[16] = 1;
        return WTF::Vector<WebCore::NotificationData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v43, v7);
      }

      v43.n128_u32[2] = v12;
      v43.n128_u64[0] = WTF::fastMalloc((v12 << 8));
      v13 = *a2;
      v14 = a2[16];
      while (1)
      {
        IPC::Decoder::decode<WebCore::NotificationData>(a1, v44);
        v15 = v62;
        if (v62 == 1)
        {
          if (v43.n128_u32[3] == v43.n128_u32[2])
          {
            WTF::Vector<WebCore::NotificationData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebCore::NotificationData>(&v43, v44);
          }

          else
          {
            v16 = v43.n128_u64[0] + (v43.n128_u32[3] << 8);
            WTF::URL::URL(v16, v44);
            v17 = v45;
            v45 = 0;
            *(v16 + 40) = v17;
            v18 = v46;
            v46 = 0;
            *(v16 + 48) = v18;
            v19 = v47;
            v47 = 0;
            *(v16 + 56) = v19;
            v20 = v48;
            v48 = 0;
            *(v16 + 64) = v20;
            v21 = v49;
            v49 = 0;
            *(v16 + 72) = v21;
            *(v16 + 80) = v50;
            v22 = v51;
            v51 = 0;
            *(v16 + 88) = v22;
            WTF::URL::URL(v16 + 96, v52);
            *(v16 + 144) = v53;
            v23 = v54;
            a3 = v55;
            v24 = v57;
            *(v16 + 192) = v56;
            *(v16 + 208) = v24;
            *(v16 + 160) = v23;
            *(v16 + 176) = a3;
            *(v16 + 224) = 0;
            *(v16 + 232) = 0;
            v25 = v58;
            v58 = 0;
            *(v16 + 224) = v25;
            LODWORD(v25) = v59;
            v59 = 0;
            *(v16 + 232) = v25;
            LODWORD(v25) = v60;
            v60 = 0;
            *(v16 + 236) = v25;
            *(v16 + 240) = v61;
            ++v43.n128_u32[3];
          }
        }

        else
        {
          v14 = 0;
          v13 = 0;
        }

        if (v62 == 1)
        {
          WebCore::NotificationData::~NotificationData(v44, v7);
        }

        if ((v15 & 1) == 0)
        {
          break;
        }

        if (!--v12)
        {
          v27 = v43.n128_u64[1];
          v26 = v43.n128_u64[0];
          goto LABEL_21;
        }
      }
    }

    a2[16] = v14;
    *a2 = v13;
    return WTF::Vector<WebCore::NotificationData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v43, v7);
  }

LABEL_38:
  *a1 = 0;
  *(a1 + 1) = 0;
  result = *(a1 + 3);
  if (result)
  {
    if (v5)
    {
      result = (*(*result + 16))(result);
    }
  }

  *a2 = 0;
  a2[16] = 0;
  return result;
}

uint64_t WTF::Vector<WebCore::NotificationData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebCore::NotificationData>(uint64_t a1, unint64_t a2)
{
  v3 = WTF::Vector<WebCore::NotificationData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(a1, *(a1 + 12) + 1, a2);
  v4 = *a1 + (*(a1 + 12) << 8);
  WTF::URL::URL(v4, v3);
  v5 = *(v3 + 40);
  *(v3 + 40) = 0;
  *(v4 + 40) = v5;
  v6 = *(v3 + 48);
  *(v3 + 48) = 0;
  *(v4 + 48) = v6;
  v7 = *(v3 + 56);
  *(v3 + 56) = 0;
  *(v4 + 56) = v7;
  v8 = *(v3 + 64);
  *(v3 + 64) = 0;
  *(v4 + 64) = v8;
  v9 = *(v3 + 72);
  *(v3 + 72) = 0;
  *(v4 + 72) = v9;
  *(v4 + 80) = *(v3 + 80);
  v10 = *(v3 + 88);
  *(v3 + 88) = 0;
  *(v4 + 88) = v10;
  WTF::URL::URL(v4 + 96, (v3 + 96));
  v11 = *(v3 + 176);
  v12 = *(v3 + 192);
  v13 = *(v3 + 208);
  v15 = *(v3 + 144);
  v14 = *(v3 + 160);
  *(v4 + 224) = 0;
  v4 += 224;
  *(v4 - 32) = v12;
  *(v4 - 16) = v13;
  *(v4 - 64) = v14;
  *(v4 - 48) = v11;
  *(v4 - 80) = v15;
  *(v4 + 8) = 0;
  WTF::VectorBuffer<unsigned char,0ul,WTF::FastMalloc>::adopt(v4, (v3 + 224));
  *(v4 + 16) = *(v3 + 240);
  ++*(a1 + 12);
  return 1;
}

void WTF::Vector<WebCore::NotificationData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 8) > a2)
  {
    v4 = *(a1 + 12);
    if (v4 > a2)
    {
      v5 = (*a1 + (a2 << 8));
      v6 = (v4 << 8) - (a2 << 8);
      do
      {
        WebCore::NotificationData::~NotificationData(v5, a2);
        v5 = (v7 + 256);
        v6 -= 256;
      }

      while (v6);
      *(a1 + 12) = a2;
      LODWORD(v4) = a2;
    }

    v8 = *a1;
    if (a2)
    {
      if (a2 >> 24)
      {
        __break(0xC471u);
        return;
      }

      v9 = WTF::fastMalloc((a2 << 8));
      *(a1 + 8) = a2;
      *a1 = v9;
      if (v9 != v8)
      {
        WTF::VectorMover<false,WebCore::NotificationData>::move(v8, (v8 + 256 * v4), v9);
      }
    }

    if (v8)
    {
      if (*a1 == v8)
      {
        *a1 = 0;
        *(a1 + 8) = 0;
      }

      WTF::fastFree(v8, a2);
    }
  }
}

void *WTF::Detail::CallableWrapper<BOOL IPC::MessageSender::sendWithAsyncReplyWithoutUsingIPCConnection<Messages::PushClientConnection::RequestPushPermission,WTF::CompletionHandler<void ()(BOOL)>>(Messages::PushClientConnection::RequestPushPermission &&,WTF::CompletionHandler<void ()(BOOL)> &&)::{lambda(IPC::Decoder *)#1},void,WTF::CompletionHandler<void ()(BOOL)> &&>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F1106A28;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<BOOL IPC::MessageSender::sendWithAsyncReplyWithoutUsingIPCConnection<Messages::PushClientConnection::RequestPushPermission,WTF::CompletionHandler<void ()(BOOL)>>(Messages::PushClientConnection::RequestPushPermission &&,WTF::CompletionHandler<void ()(BOOL)> &&)::{lambda(IPC::Decoder *)#1},void,WTF::CompletionHandler<void ()(BOOL)> &&>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F1106A28;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<BOOL IPC::MessageSender::sendWithAsyncReplyWithoutUsingIPCConnection<Messages::PushClientConnection::RequestPushPermission,WTF::CompletionHandler<void ()(BOOL)>>(Messages::PushClientConnection::RequestPushPermission &&,WTF::CompletionHandler<void ()(BOOL)> &&)::{lambda(IPC::Decoder *)#1},void,WTF::CompletionHandler<void ()(BOOL)> &&>::call(uint64_t a1, IPC::Decoder *a2)
{
  if (a2)
  {
    if (*a2)
    {
      v3 = IPC::Decoder::decode<std::tuple<BOOL>>(a2);
      a2 = (*&v3 & ((v3 & 0x100) >> 8));
    }

    else
    {
      a2 = 0;
    }
  }

  v4 = *(a1 + 8);
  *(a1 + 8) = 0;
  (*(*v4 + 16))(v4, a2);
  v5 = *(*v4 + 8);

  return v5(v4);
}

void *WTF::Detail::CallableWrapper<BOOL IPC::MessageSender::sendWithAsyncReplyWithoutUsingIPCConnection<Messages::PushClientConnection::SubscribeToPushService,WTF::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<WebCore::PushSubscriptionData,WebCore::ExceptionData> &&)>>(Messages::PushClientConnection::SubscribeToPushService &&,WTF::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<WebCore::PushSubscriptionData,WebCore::ExceptionData> &&)> &&)::{lambda(IPC::Decoder *)#1},void,WTF::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<WebCore::PushSubscriptionData,WebCore::ExceptionData> &&)> &>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F1106A50;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<BOOL IPC::MessageSender::sendWithAsyncReplyWithoutUsingIPCConnection<Messages::PushClientConnection::SubscribeToPushService,WTF::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<WebCore::PushSubscriptionData,WebCore::ExceptionData> &&)>>(Messages::PushClientConnection::SubscribeToPushService &&,WTF::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<WebCore::PushSubscriptionData,WebCore::ExceptionData> &&)> &&)::{lambda(IPC::Decoder *)#1},void,WTF::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<WebCore::PushSubscriptionData,WebCore::ExceptionData> &&)> &>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F1106A50;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<BOOL IPC::MessageSender::sendWithAsyncReplyWithoutUsingIPCConnection<Messages::PushClientConnection::SubscribeToPushService,WTF::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<WebCore::PushSubscriptionData,WebCore::ExceptionData> &&)>>(Messages::PushClientConnection::SubscribeToPushService &&,WTF::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<WebCore::PushSubscriptionData,WebCore::ExceptionData> &&)> &&)::{lambda(IPC::Decoder *)#1},void,WTF::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<WebCore::PushSubscriptionData,WebCore::ExceptionData> &&)> &>::call(uint64_t a1, uint64_t *a2)
{
  if (a2 && *a2)
  {
    IPC::ArgumentCoder<std::tuple<std::experimental::fundamentals_v3::expected<WebCore::PushSubscriptionData,WebCore::ExceptionData>>,void>::decode<IPC::Decoder>(a2, v11);
    if (v12 & 1) != 0 || (v8 = *a2, v9 = a2[1], *a2 = 0, a2[1] = 0, (v10 = a2[3]) != 0) && v9 && ((*(*v10 + 16))(v10, v8), (v12))
    {
      v4 = *(a1 + 8);
      *(a1 + 8) = 0;
      (*(*v4 + 16))(v4, v11);
      result = (*(*v4 + 8))(v4);
      if (v12)
      {
        return std::experimental::fundamentals_v3::expected<WebCore::PushSubscriptionData,WebCore::ExceptionData>::~expected(v11, v6);
      }
    }

    else
    {
      return IPC::cancelReplyWithoutUsingConnection<Messages::PushClientConnection::SubscribeToPushService,WTF::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<WebCore::PushSubscriptionData,WebCore::ExceptionData> &&)>>((a1 + 8));
    }
  }

  else
  {
    v7 = (a1 + 8);

    return IPC::cancelReplyWithoutUsingConnection<Messages::PushClientConnection::SubscribeToPushService,WTF::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<WebCore::PushSubscriptionData,WebCore::ExceptionData> &&)>>(v7);
  }

  return result;
}

uint64_t IPC::cancelReplyWithoutUsingConnection<Messages::PushClientConnection::SubscribeToPushService,WTF::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<WebCore::PushSubscriptionData,WebCore::ExceptionData> &&)>>(uint64_t *a1)
{
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v5[0] = 16;
  v5[80] = 1;
  v2 = *a1;
  *a1 = 0;
  (*(*v2 + 16))(v2, v5);
  (*(*v2 + 8))(v2);
  return std::experimental::fundamentals_v3::expected<WebCore::PushSubscriptionData,WebCore::ExceptionData>::~expected(v5, v3);
}

uint64_t IPC::ArgumentCoder<std::tuple<std::experimental::fundamentals_v3::expected<WebCore::PushSubscriptionData,WebCore::ExceptionData>>,void>::decode<IPC::Decoder>@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  IPC::ArgumentCoder<std::experimental::fundamentals_v3::expected<WebCore::PushSubscriptionData,WebCore::ExceptionData>,void>::decode<IPC::Decoder>(a1, &v16);
  if (v24 & 1) != 0 || ((v13 = *a1, v14 = a1[1], *a1 = 0, a1[1] = 0, (result = a1[3]) != 0) ? (v15 = v14 == 0) : (v15 = 1), !v15 && (result = (*(*result + 16))(result, v13), (v24)))
  {
    *a2 = 0;
    *(a2 + 80) = -1;
    v6 = v23;
    if (v23 != 255)
    {
      if (v23)
      {
        *a2 = v16;
        v7 = v17;
      }

      else
      {
        *&v5 = 0;
        v7 = v17;
        *a2 = v16;
        *(a2 + 16) = v18;
        v8 = *(&v19 + 1);
        *(a2 + 32) = v19;
        *(a2 + 40) = v8;
        v9 = v20;
        v19 = v5;
        v20 = v5;
        *(a2 + 48) = v9;
        v10 = v21;
        v21 = 0;
        *(a2 + 64) = v10;
        v11 = v22;
        v22 = 0;
        *(a2 + 72) = v11;
      }

      v17 = 0;
      *(a2 + 8) = v7;
      *(a2 + 80) = v6;
    }

    *(a2 + 88) = 1;
    return std::experimental::fundamentals_v3::expected<WebCore::PushSubscriptionData,WebCore::ExceptionData>::~expected(&v16, v4);
  }

  else
  {
    *a2 = 0;
    *(a2 + 88) = 0;
  }

  return result;
}

WTF::StringImpl *IPC::ArgumentCoder<std::experimental::fundamentals_v3::expected<WebCore::PushSubscriptionData,WebCore::ExceptionData>,void>::decode<IPC::Decoder>@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[1];
  v4 = a1[2];
  v5 = *a1;
  if (v3 <= &v4[-*a1])
  {
    *a1 = 0;
    a1[1] = 0;
    v15 = a1;
    v13 = a1[3];
    if (v13)
    {
      if (v3)
      {
        (*(*v13 + 16))(v13);
        v5 = *v15;
        v3 = v15[1];
LABEL_17:
        *v15 = 0;
        v15[1] = 0;
        v14 = v15[3];
        if (v14)
        {
          if (v3)
          {
            (*(*v14 + 16))(v14, v5);
            v5 = *v15;
            v3 = v15[1];
            goto LABEL_21;
          }
        }

        else
        {
          v3 = 0;
        }

        v5 = 0;
        goto LABEL_21;
      }
    }

    else
    {
      v3 = 0;
    }

    v5 = 0;
    goto LABEL_17;
  }

  a1[2] = (v4 + 1);
  if (!v4)
  {
    v15 = a1;
    goto LABEL_17;
  }

  v6 = *v4;
  if (v6 < 2)
  {
    if (v6)
    {
      result = IPC::Decoder::decode<WebCore::PushSubscriptionData>(a1, &v16);
      if (v25 == 1)
      {
        v8 = v17;
        *a2 = v16;
        *(a2 + 8) = v8;
        *(a2 + 16) = v18;
        *(a2 + 32) = v19;
        *(a2 + 40) = v20;
        *(a2 + 48) = v21;
        *(a2 + 56) = v22;
        *(a2 + 64) = v23;
        v9 = (a2 + 80);
        v10 = 1;
        *(a2 + 72) = v24;
      }

      else
      {
        v10 = 0;
        v9 = a2;
      }

      *v9 = 0;
      *(a2 + 88) = v10;
    }

    else
    {
      result = IPC::Decoder::decode<WebCore::ExceptionData>(a1, &v16);
      if (v18 == 1)
      {
        v11 = v16;
        *(a2 + 8) = v17;
        v12 = 1;
        *(a2 + 80) = 1;
      }

      else
      {
        v11 = 0;
        v12 = 0;
      }

      *a2 = v11;
      *(a2 + 88) = v12;
    }

    return result;
  }

  v15 = a1;
LABEL_21:
  *v15 = 0;
  v15[1] = 0;
  result = v15[3];
  if (result && v3)
  {
    result = (*(*result + 16))(result, v5);
  }

  *a2 = 0;
  *(a2 + 88) = 0;
  return result;
}

WTF::StringImpl *IPC::Decoder::decode<WebCore::PushSubscriptionData>@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = IPC::ArgumentCoder<WebCore::PushSubscriptionData,void>::decode(a1, a2);
  if ((a2[80] & 1) == 0)
  {
    v5 = a1[1];
    *a1 = 0;
    a1[1] = 0;
    result = a1[3];
    if (result && v5 != 0)
    {
      v7 = *(*result + 16);

      return v7();
    }
  }

  return result;
}

char *IPC::ArgumentCoder<std::optional<WTF::ObjectIdentifierGeneric<WebCore::PushSubscriptionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,void>::encode<IPC::Encoder,std::optional<WTF::ObjectIdentifierGeneric<WebCore::PushSubscriptionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>> const&>(IPC::Encoder *a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  result = IPC::Encoder::grow(a1, 1uLL, 1);
  if ((v4 & 1) == 0)
  {
    if (v6)
    {
      *result = 0;
      return result;
    }

LABEL_10:
    __break(0xC471u);
    JUMPOUT(0x19DD432C4);
  }

  if (!v6)
  {
    goto LABEL_10;
  }

  *result = 1;
  if ((*(a2 + 8) & 1) == 0)
  {
    std::__throw_bad_optional_access[abi:sn200100]();
    goto LABEL_10;
  }

  v7 = *a2;

  return IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, v7);
}

void *WTF::Detail::CallableWrapper<BOOL IPC::MessageSender::sendWithAsyncReplyWithoutUsingIPCConnection<Messages::PushClientConnection::UnsubscribeFromPushService,WTF::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<BOOL,WebCore::ExceptionData> &&)>>(Messages::PushClientConnection::UnsubscribeFromPushService &&,WTF::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<BOOL,WebCore::ExceptionData> &&)> &&)::{lambda(IPC::Decoder *)#1},void,WTF::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<BOOL,WebCore::ExceptionData> &&)> &>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F1106A78;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<BOOL IPC::MessageSender::sendWithAsyncReplyWithoutUsingIPCConnection<Messages::PushClientConnection::UnsubscribeFromPushService,WTF::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<BOOL,WebCore::ExceptionData> &&)>>(Messages::PushClientConnection::UnsubscribeFromPushService &&,WTF::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<BOOL,WebCore::ExceptionData> &&)> &&)::{lambda(IPC::Decoder *)#1},void,WTF::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<BOOL,WebCore::ExceptionData> &&)> &>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F1106A78;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<BOOL IPC::MessageSender::sendWithAsyncReplyWithoutUsingIPCConnection<Messages::PushClientConnection::UnsubscribeFromPushService,WTF::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<BOOL,WebCore::ExceptionData> &&)>>(Messages::PushClientConnection::UnsubscribeFromPushService &&,WTF::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<BOOL,WebCore::ExceptionData> &&)> &&)::{lambda(IPC::Decoder *)#1},void,WTF::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<BOOL,WebCore::ExceptionData> &&)> &>::call(uint64_t a1, uint64_t *a2)
{
  if (a2 && *a2)
  {
    IPC::ArgumentCoder<std::tuple<std::experimental::fundamentals_v3::expected<BOOL,WebCore::ExceptionData>>,void>::decode<IPC::Decoder>(a2, v11);
    if (v12 & 1) != 0 || (v8 = *a2, v9 = a2[1], *a2 = 0, a2[1] = 0, (v10 = a2[3]) != 0) && v9 && ((*(*v10 + 16))(v10, v8), (v12))
    {
      v4 = *(a1 + 8);
      *(a1 + 8) = 0;
      (*(*v4 + 16))(v4, v11);
      result = (*(*v4 + 8))(v4);
      if (v12)
      {
        return mpark::detail::move_constructor<mpark::detail::traits<BOOL,WebCore::ExceptionData>,(mpark::detail::Trait)1>::~move_constructor(v11, v6);
      }
    }

    else
    {
      return IPC::cancelReplyWithoutUsingConnection<Messages::PushClientConnection::UnsubscribeFromPushService,WTF::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<BOOL,WebCore::ExceptionData> &&)>>((a1 + 8));
    }
  }

  else
  {
    v7 = (a1 + 8);

    return IPC::cancelReplyWithoutUsingConnection<Messages::PushClientConnection::UnsubscribeFromPushService,WTF::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<BOOL,WebCore::ExceptionData> &&)>>(v7);
  }

  return result;
}

uint64_t IPC::cancelReplyWithoutUsingConnection<Messages::PushClientConnection::UnsubscribeFromPushService,WTF::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<BOOL,WebCore::ExceptionData> &&)>>(uint64_t *a1)
{
  v4[0] = 0;
  v5 = 0;
  v6 = 1;
  v1 = *a1;
  *a1 = 0;
  (*(*v1 + 16))(v1, v4);
  (*(*v1 + 8))(v1);
  return mpark::detail::move_constructor<mpark::detail::traits<BOOL,WebCore::ExceptionData>,(mpark::detail::Trait)1>::~move_constructor(v4, v2);
}

uint64_t IPC::ArgumentCoder<std::tuple<std::experimental::fundamentals_v3::expected<BOOL,WebCore::ExceptionData>>,void>::decode<IPC::Decoder>@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  IPC::ArgumentCoder<std::experimental::fundamentals_v3::expected<BOOL,WebCore::ExceptionData>,void>::decode<IPC::Decoder>(a1, v11);
  if (v14 & 1) != 0 || ((v8 = *a1, v9 = a1[1], *a1 = 0, a1[1] = 0, (result = a1[3]) != 0) ? (v10 = v9 == 0) : (v10 = 1), !v10 && (result = (*(*result + 16))(result, v8), (v14)))
  {
    *a2 = 0;
    *(a2 + 16) = -1;
    v5 = v13;
    if (v13 != 255)
    {
      if (v13)
      {
        *a2 = v11[0];
        v6 = v12;
        v12 = 0;
        *(a2 + 8) = v6;
      }

      else
      {
        *a2 = v11[0];
      }

      *(a2 + 16) = v5;
    }

    *(a2 + 24) = 1;
    return mpark::detail::move_constructor<mpark::detail::traits<BOOL,WebCore::ExceptionData>,(mpark::detail::Trait)1>::~move_constructor(v11, v4);
  }

  else
  {
    *a2 = 0;
    *(a2 + 24) = 0;
  }

  return result;
}

uint64_t *IPC::ArgumentCoder<std::experimental::fundamentals_v3::expected<BOOL,WebCore::ExceptionData>,void>::decode<IPC::Decoder>@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = result[1];
  v4 = result[2];
  v5 = *result;
  if (v3 <= &v4[-*result])
  {
    *result = 0;
    result[1] = 0;
    v16 = result;
    v10 = result[3];
    if (v10)
    {
      if (v3)
      {
        (*(*v10 + 16))(v10);
        v5 = *v16;
        v3 = v16[1];
LABEL_17:
        *v16 = 0;
        v16[1] = 0;
        v11 = v16[3];
        if (v11)
        {
          if (!v3)
          {
            goto LABEL_24;
          }

          (*(*v11 + 16))(v11, v5);
LABEL_34:
          v3 = v16[1];
          goto LABEL_24;
        }

LABEL_23:
        v3 = 0;
        goto LABEL_24;
      }
    }

    else
    {
      v3 = 0;
    }

    v5 = 0;
    goto LABEL_17;
  }

  v6 = v4 + 1;
  result[2] = (v4 + 1);
  if (!v4)
  {
    v16 = result;
    goto LABEL_17;
  }

  if (*v4 < 2u)
  {
    if (!*v4)
    {
      result = IPC::Decoder::decode<WebCore::ExceptionData>(result, v17);
      if (v19 == 1)
      {
        v8 = v17[0];
        *(a2 + 8) = v18;
        v9 = 1;
        *(a2 + 16) = 1;
      }

      else
      {
        v8 = 0;
        v9 = 0;
      }

      *a2 = v8;
      *(a2 + 24) = v9;
      return result;
    }

    if (v3 <= &v6[-v5])
    {
      v12 = 0;
      v13 = 0;
      *result = 0;
      result[1] = 0;
      v16 = result;
      v14 = result[3];
      if (v14)
      {
        (*(*v14 + 16))(v14);
        v13 = *v16;
        v12 = v16[1];
      }
    }

    else
    {
      result[2] = (v4 + 2);
      if (v4 != -1)
      {
        v7 = *v6;
        if (v7 < 2)
        {
          *a2 = v7;
          *(a2 + 16) = 0;
          *(a2 + 24) = 1;
          return result;
        }

        goto LABEL_13;
      }

      v16 = result;
      v12 = v3;
      v13 = v5;
    }

    *v16 = 0;
    v16[1] = 0;
    v15 = v16[3];
    if (v15 && v12)
    {
      (*(*v15 + 16))(v15, v13, v12);
      goto LABEL_34;
    }

    goto LABEL_23;
  }

LABEL_13:
  v16 = result;
LABEL_24:
  *v16 = 0;
  v16[1] = 0;
  result = v16[3];
  if (result)
  {
    if (v3)
    {
      result = (*(*result + 16))(result);
    }
  }

  *a2 = 0;
  *(a2 + 24) = 0;
  return result;
}

void *WTF::Detail::CallableWrapper<BOOL IPC::MessageSender::sendWithAsyncReplyWithoutUsingIPCConnection<Messages::PushClientConnection::GetPushSubscription,WTF::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<std::optional<WebCore::PushSubscriptionData>,WebCore::ExceptionData> &&)>>(Messages::PushClientConnection::GetPushSubscription &&,WTF::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<std::optional<WebCore::PushSubscriptionData>,WebCore::ExceptionData> &&)> &&)::{lambda(IPC::Decoder *)#1},void,WTF::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<std::optional<WebCore::PushSubscriptionData>,WebCore::ExceptionData> &&)> &>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F1106AA0;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<BOOL IPC::MessageSender::sendWithAsyncReplyWithoutUsingIPCConnection<Messages::PushClientConnection::GetPushSubscription,WTF::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<std::optional<WebCore::PushSubscriptionData>,WebCore::ExceptionData> &&)>>(Messages::PushClientConnection::GetPushSubscription &&,WTF::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<std::optional<WebCore::PushSubscriptionData>,WebCore::ExceptionData> &&)> &&)::{lambda(IPC::Decoder *)#1},void,WTF::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<std::optional<WebCore::PushSubscriptionData>,WebCore::ExceptionData> &&)> &>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F1106AA0;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<BOOL IPC::MessageSender::sendWithAsyncReplyWithoutUsingIPCConnection<Messages::PushClientConnection::GetPushSubscription,WTF::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<std::optional<WebCore::PushSubscriptionData>,WebCore::ExceptionData> &&)>>(Messages::PushClientConnection::GetPushSubscription &&,WTF::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<std::optional<WebCore::PushSubscriptionData>,WebCore::ExceptionData> &&)> &&)::{lambda(IPC::Decoder *)#1},void,WTF::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<std::optional<WebCore::PushSubscriptionData>,WebCore::ExceptionData> &&)> &>::call(uint64_t a1, uint64_t *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  if (a2 && *a2)
  {
    IPC::ArgumentCoder<std::tuple<std::experimental::fundamentals_v3::expected<std::optional<WebCore::PushSubscriptionData>,WebCore::ExceptionData>>,void>::decode<IPC::Decoder>(a2, v11);
    if (v12 & 1) != 0 || (v8 = *a2, v9 = a2[1], *a2 = 0, a2[1] = 0, (v10 = a2[3]) != 0) && v9 && ((*(*v10 + 16))(v10, v8), (v12))
    {
      v4 = *(a1 + 8);
      *(a1 + 8) = 0;
      (*(*v4 + 16))(v4, v11);
      result = (*(*v4 + 8))(v4);
      if (v12)
      {
        return std::experimental::fundamentals_v3::expected<std::optional<WebCore::PushSubscriptionData>,WebCore::ExceptionData>::~expected(v11, v6);
      }
    }

    else
    {
      return IPC::cancelReplyWithoutUsingConnection<Messages::PushClientConnection::GetPushSubscription,WTF::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<std::optional<WebCore::PushSubscriptionData>,WebCore::ExceptionData> &&)>>((a1 + 8));
    }
  }

  else
  {
    v7 = (a1 + 8);

    return IPC::cancelReplyWithoutUsingConnection<Messages::PushClientConnection::GetPushSubscription,WTF::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<std::optional<WebCore::PushSubscriptionData>,WebCore::ExceptionData> &&)>>(v7);
  }

  return result;
}

uint64_t IPC::cancelReplyWithoutUsingConnection<Messages::PushClientConnection::GetPushSubscription,WTF::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<std::optional<WebCore::PushSubscriptionData>,WebCore::ExceptionData> &&)>>(uint64_t *a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  v5 = 0;
  v6 = 1;
  v1 = *a1;
  *a1 = 0;
  (*(*v1 + 16))(v1, v4);
  (*(*v1 + 8))(v1);
  return std::experimental::fundamentals_v3::expected<std::optional<WebCore::PushSubscriptionData>,WebCore::ExceptionData>::~expected(v4, v2);
}

uint64_t IPC::ArgumentCoder<std::tuple<std::experimental::fundamentals_v3::expected<std::optional<WebCore::PushSubscriptionData>,WebCore::ExceptionData>>,void>::decode<IPC::Decoder>@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v16 = *MEMORY[0x1E69E9840];
  IPC::ArgumentCoder<std::experimental::fundamentals_v3::expected<std::optional<WebCore::PushSubscriptionData>,WebCore::ExceptionData>,void>::decode<IPC::Decoder>(a1, v12);
  if ((v15 & 1) == 0)
  {
    v9 = *a1;
    v10 = a1[1];
    *a1 = 0;
    a1[1] = 0;
    result = a1[3];
    v11 = !result || v10 == 0;
    if (v11 || (result = (*(*result + 16))(result, v9), (v15 & 1) == 0))
    {
      *a2 = 0;
      *(a2 + 96) = 0;
      return result;
    }
  }

  *a2 = 0;
  *(a2 + 88) = -1;
  v5 = v14;
  if (v14)
  {
    if (v14 != 255)
    {
      *a2 = v12[0];
      v6 = v13;
      v13 = 0;
      *(a2 + 8) = v6;
      *(a2 + 88) = v5;
    }

    *(a2 + 96) = 1;
    return std::experimental::fundamentals_v3::expected<std::optional<WebCore::PushSubscriptionData>,WebCore::ExceptionData>::~expected(v12, v4);
  }

  result = std::optional<WebCore::PushSubscriptionData>::optional[abi:sn200100](a2, v12);
  v8 = v15;
  *(a2 + 88) = v14;
  *(a2 + 96) = 1;
  if (v8)
  {
    return std::experimental::fundamentals_v3::expected<std::optional<WebCore::PushSubscriptionData>,WebCore::ExceptionData>::~expected(v12, v4);
  }

  return result;
}

WTF::StringImpl *IPC::ArgumentCoder<std::experimental::fundamentals_v3::expected<std::optional<WebCore::PushSubscriptionData>,WebCore::ExceptionData>,void>::decode<IPC::Decoder>@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[1];
  v5 = a1[2];
  v6 = *a1;
  if (v4 <= &v5[-*a1])
  {
    *a1 = 0;
    a1[1] = 0;
    v18 = a1[3];
    if (v18)
    {
      if (v4)
      {
        (*(*v18 + 16))(v18);
        v4 = a1[1];
      }
    }

    else
    {
      v4 = 0;
    }

    goto LABEL_29;
  }

  a1[2] = (v5 + 1);
  if (!v5)
  {
LABEL_29:
    *a1 = 0;
    a1[1] = 0;
    v19 = a1[3];
    if (v19)
    {
      if (v4)
      {
        (*(*v19 + 16))(v19);
        v6 = *a1;
        v4 = a1[1];
        goto LABEL_32;
      }
    }

    else
    {
      v4 = 0;
    }

    v6 = 0;
LABEL_32:
    *a1 = 0;
    a1[1] = 0;
    result = a1[3];
    if (result && v4)
    {
      result = (*(*result + 16))(result, v6);
    }

    goto LABEL_23;
  }

  v7 = *v5;
  if (v7 >= 2)
  {
    goto LABEL_32;
  }

  if (v7)
  {
    IPC::ArgumentCoder<std::optional<WebCore::PushSubscriptionData>,void>::decode<IPC::Decoder>(a1, v20);
    if ((v30 & 1) == 0)
    {
      v16 = *a1;
      v17 = a1[1];
      *a1 = 0;
      a1[1] = 0;
      result = a1[3];
      if (!result || !v17 || (result = (*(*result + 16))(result, v16), (v30 & 1) == 0))
      {
LABEL_23:
        *a2 = 0;
        *(a2 + 96) = 0;
        return result;
      }
    }

    result = std::optional<WebCore::PushSubscriptionData>::optional[abi:sn200100](a2, v20);
    *(a2 + 88) = 0;
    v10 = v30;
    *(a2 + 96) = 1;
    if ((v10 & 1) != 0 && v29 == 1)
    {
      v11 = v27;
      if (v27)
      {
        v27 = 0;
        v28 = 0;
        WTF::fastFree(v11, v9);
      }

      v12 = v25;
      if (v25)
      {
        v25 = 0;
        v26 = 0;
        WTF::fastFree(v12, v9);
      }

      v13 = v23;
      if (v23)
      {
        v23 = 0;
        v24 = 0;
        WTF::fastFree(v13, v9);
      }

      result = v21;
      v21 = 0;
      if (result)
      {
        if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          return WTF::StringImpl::destroy(result, v9);
        }
      }
    }
  }

  else
  {
    result = IPC::Decoder::decode<WebCore::ExceptionData>(a1, v20);
    if (v22 == 1)
    {
      v14 = v20[0];
      *(a2 + 8) = v21;
      v15 = 1;
      *(a2 + 88) = 1;
    }

    else
    {
      v14 = 0;
      v15 = 0;
    }

    *a2 = v14;
    *(a2 + 96) = v15;
  }

  return result;
}

WTF::StringImpl *IPC::ArgumentCoder<std::optional<WebCore::PushSubscriptionData>,void>::decode<IPC::Decoder>@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[1];
  v4 = a1[2];
  v5 = *a1;
  if (v3 <= &v4[-*a1])
  {
    *a1 = 0;
    a1[1] = 0;
    v16 = a1;
    v14 = a1[3];
    if (v14)
    {
      if (v3)
      {
        (*(*v14 + 16))(v14);
        v5 = *v16;
        v3 = v16[1];
LABEL_23:
        *v16 = 0;
        v16[1] = 0;
        v15 = v16[3];
        if (v15)
        {
          if (v3)
          {
            (*(*v15 + 16))(v15, v5);
            v5 = *v16;
            v3 = v16[1];
            goto LABEL_27;
          }
        }

        else
        {
          v3 = 0;
        }

        v5 = 0;
        goto LABEL_27;
      }
    }

    else
    {
      v3 = 0;
    }

    v5 = 0;
    goto LABEL_23;
  }

  a1[2] = (v4 + 1);
  if (!v4)
  {
    v16 = a1;
    goto LABEL_23;
  }

  v6 = *v4;
  if (v6 < 2)
  {
    if (v6)
    {
      result = IPC::Decoder::decode<WebCore::PushSubscriptionData>(a1, &v17);
      if (v26)
      {
        v8 = v18;
        *a2 = v17;
        *(a2 + 8) = v8;
        *(a2 + 16) = v19;
        *(a2 + 32) = v20;
        *(a2 + 40) = v21;
        *(a2 + 48) = v22;
        *(a2 + 56) = v23;
        *(a2 + 64) = v24;
        *(a2 + 72) = v25;
        v9 = 1;
        *(a2 + 80) = 1;
      }

      else
      {
        v9 = 0;
        *a2 = 0;
      }

      *(a2 + 88) = v9;
    }

    else
    {
      LOBYTE(v17) = 0;
      v26 = 0;
      result = std::optional<WebCore::PushSubscriptionData>::optional[abi:sn200100](a2, &v17);
      *(a2 + 88) = 1;
      if (v26 == 1)
      {
        v11 = v24;
        if (v24)
        {
          v24 = 0;
          LODWORD(v25) = 0;
          WTF::fastFree(v11, v10);
        }

        v12 = v22;
        if (v22)
        {
          v22 = 0;
          LODWORD(v23) = 0;
          WTF::fastFree(v12, v10);
        }

        v13 = v20;
        if (v20)
        {
          v20 = 0;
          LODWORD(v21) = 0;
          WTF::fastFree(v13, v10);
        }

        result = v18;
        v18 = 0;
        if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          return WTF::StringImpl::destroy(result, v10);
        }
      }
    }

    return result;
  }

  v16 = a1;
LABEL_27:
  *v16 = 0;
  v16[1] = 0;
  result = v16[3];
  if (result && v3)
  {
    result = (*(*result + 16))(result, v5);
  }

  *a2 = 0;
  *(a2 + 88) = 0;
  return result;
}

void *WTF::Detail::CallableWrapper<BOOL IPC::MessageSender::sendWithAsyncReplyWithoutUsingIPCConnection<Messages::PushClientConnection::IncrementSilentPushCount,WTF::CompletionHandler<void ()(unsigned int)>>(Messages::PushClientConnection::IncrementSilentPushCount &&,WTF::CompletionHandler<void ()(unsigned int)> &&)::{lambda(IPC::Decoder *)#1},void,WTF::CompletionHandler<void ()(unsigned int)> &&>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F1106AC8;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<BOOL IPC::MessageSender::sendWithAsyncReplyWithoutUsingIPCConnection<Messages::PushClientConnection::IncrementSilentPushCount,WTF::CompletionHandler<void ()(unsigned int)>>(Messages::PushClientConnection::IncrementSilentPushCount &&,WTF::CompletionHandler<void ()(unsigned int)> &&)::{lambda(IPC::Decoder *)#1},void,WTF::CompletionHandler<void ()(unsigned int)> &&>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F1106AC8;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<BOOL IPC::MessageSender::sendWithAsyncReplyWithoutUsingIPCConnection<Messages::PushClientConnection::IncrementSilentPushCount,WTF::CompletionHandler<void ()(unsigned int)>>(Messages::PushClientConnection::IncrementSilentPushCount &&,WTF::CompletionHandler<void ()(unsigned int)> &&)::{lambda(IPC::Decoder *)#1},void,WTF::CompletionHandler<void ()(unsigned int)> &&>::call(uint64_t a1, uint64_t *a2)
{
  if (a2)
  {
    if (*a2)
    {
      v3 = IPC::Decoder::decode<std::tuple<unsigned int>>(a2);
      if ((v3 & 0x100000000) != 0)
      {
        a2 = v3;
      }

      else
      {
        a2 = 0;
      }
    }

    else
    {
      a2 = 0;
    }
  }

  v4 = *(a1 + 8);
  *(a1 + 8) = 0;
  (*(*v4 + 16))(v4, a2);
  v5 = *(*v4 + 8);

  return v5(v4);
}

void *WTF::Detail::CallableWrapper<BOOL IPC::MessageSender::sendWithAsyncReplyWithoutUsingIPCConnection<Messages::PushClientConnection::RemoveAllPushSubscriptions,WTF::CompletionHandler<void ()(unsigned int)>>(Messages::PushClientConnection::RemoveAllPushSubscriptions &&,WTF::CompletionHandler<void ()(unsigned int)> &&)::{lambda(IPC::Decoder *)#1},void,WTF::CompletionHandler<void ()(unsigned int)> &&>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F1106AF0;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<BOOL IPC::MessageSender::sendWithAsyncReplyWithoutUsingIPCConnection<Messages::PushClientConnection::RemoveAllPushSubscriptions,WTF::CompletionHandler<void ()(unsigned int)>>(Messages::PushClientConnection::RemoveAllPushSubscriptions &&,WTF::CompletionHandler<void ()(unsigned int)> &&)::{lambda(IPC::Decoder *)#1},void,WTF::CompletionHandler<void ()(unsigned int)> &&>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F1106AF0;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<BOOL IPC::MessageSender::sendWithAsyncReplyWithoutUsingIPCConnection<Messages::PushClientConnection::RemoveAllPushSubscriptions,WTF::CompletionHandler<void ()(unsigned int)>>(Messages::PushClientConnection::RemoveAllPushSubscriptions &&,WTF::CompletionHandler<void ()(unsigned int)> &&)::{lambda(IPC::Decoder *)#1},void,WTF::CompletionHandler<void ()(unsigned int)> &&>::call(uint64_t a1, uint64_t *a2)
{
  if (a2)
  {
    if (*a2)
    {
      v3 = IPC::Decoder::decode<std::tuple<unsigned int>>(a2);
      if ((v3 & 0x100000000) != 0)
      {
        a2 = v3;
      }

      else
      {
        a2 = 0;
      }
    }

    else
    {
      a2 = 0;
    }
  }

  v4 = *(a1 + 8);
  *(a1 + 8) = 0;
  (*(*v4 + 16))(v4, a2);
  v5 = *(*v4 + 8);

  return v5(v4);
}

void *WTF::Detail::CallableWrapper<BOOL IPC::MessageSender::sendWithAsyncReplyWithoutUsingIPCConnection<Messages::PushClientConnection::RemovePushSubscriptionsForOrigin,WTF::CompletionHandler<void ()(unsigned int)>>(Messages::PushClientConnection::RemovePushSubscriptionsForOrigin &&,WTF::CompletionHandler<void ()(unsigned int)> &&)::{lambda(IPC::Decoder *)#1},void,WTF::CompletionHandler<void ()(unsigned int)> &&>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F1106B18;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<BOOL IPC::MessageSender::sendWithAsyncReplyWithoutUsingIPCConnection<Messages::PushClientConnection::RemovePushSubscriptionsForOrigin,WTF::CompletionHandler<void ()(unsigned int)>>(Messages::PushClientConnection::RemovePushSubscriptionsForOrigin &&,WTF::CompletionHandler<void ()(unsigned int)> &&)::{lambda(IPC::Decoder *)#1},void,WTF::CompletionHandler<void ()(unsigned int)> &&>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F1106B18;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<BOOL IPC::MessageSender::sendWithAsyncReplyWithoutUsingIPCConnection<Messages::PushClientConnection::RemovePushSubscriptionsForOrigin,WTF::CompletionHandler<void ()(unsigned int)>>(Messages::PushClientConnection::RemovePushSubscriptionsForOrigin &&,WTF::CompletionHandler<void ()(unsigned int)> &&)::{lambda(IPC::Decoder *)#1},void,WTF::CompletionHandler<void ()(unsigned int)> &&>::call(uint64_t a1, uint64_t *a2)
{
  if (a2)
  {
    if (*a2)
    {
      v3 = IPC::Decoder::decode<std::tuple<unsigned int>>(a2);
      if ((v3 & 0x100000000) != 0)
      {
        a2 = v3;
      }

      else
      {
        a2 = 0;
      }
    }

    else
    {
      a2 = 0;
    }
  }

  v4 = *(a1 + 8);
  *(a1 + 8) = 0;
  (*(*v4 + 16))(v4, a2);
  v5 = *(*v4 + 8);

  return v5(v4);
}

void *WTF::Detail::CallableWrapper<BOOL IPC::MessageSender::sendWithAsyncReplyWithoutUsingIPCConnection<Messages::PushClientConnection::GetAppBadgeForTesting,WTF::CompletionHandler<void ()(std::optional<unsigned long long>)>>(Messages::PushClientConnection::GetAppBadgeForTesting &&,WTF::CompletionHandler<void ()(std::optional<unsigned long long>)> &&)::{lambda(IPC::Decoder *)#1},void,WTF::CompletionHandler<void ()(std::optional<unsigned long long>)> &&>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F1106B40;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<BOOL IPC::MessageSender::sendWithAsyncReplyWithoutUsingIPCConnection<Messages::PushClientConnection::GetAppBadgeForTesting,WTF::CompletionHandler<void ()(std::optional<unsigned long long>)>>(Messages::PushClientConnection::GetAppBadgeForTesting &&,WTF::CompletionHandler<void ()(std::optional<unsigned long long>)> &&)::{lambda(IPC::Decoder *)#1},void,WTF::CompletionHandler<void ()(std::optional<unsigned long long>)> &&>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F1106B40;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<BOOL IPC::MessageSender::sendWithAsyncReplyWithoutUsingIPCConnection<Messages::PushClientConnection::GetAppBadgeForTesting,WTF::CompletionHandler<void ()(std::optional<unsigned long long>)>>(Messages::PushClientConnection::GetAppBadgeForTesting &&,WTF::CompletionHandler<void ()(std::optional<unsigned long long>)> &&)::{lambda(IPC::Decoder *)#1},void,WTF::CompletionHandler<void ()(std::optional<unsigned long long>)> &&>::call(uint64_t a1, IPC::Decoder *a2)
{
  if (a2 && *a2)
  {
    IPC::Decoder::decode<std::tuple<std::optional<unsigned long long>>>(a2, v9);
    if (v10 == 1)
    {
      v3 = v9[0];
      v4 = v9[1];
      v5 = *(a1 + 8);
      *(a1 + 8) = 0;
      (*(*v5 + 16))(v5, v3, v4);
    }

    else
    {
      v5 = *(a1 + 8);
      *(a1 + 8) = 0;
      (*(*v5 + 16))(v5, 0, 0);
    }

    return (*(*v5 + 8))(v5);
  }

  else
  {
    v6 = *(a1 + 8);
    *(a1 + 8) = 0;
    (*(*v6 + 16))(v6, 0, 0);
    v7 = *(*v6 + 8);

    return v7(v6);
  }
}

uint64_t IPC::Decoder::decode<std::tuple<std::optional<unsigned long long>>>@<X0>(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  result = IPC::Decoder::decode<std::optional<unsigned long long>>(a1, &v9);
  v5 = v10;
  if (v10 == 1)
  {
    *a2 = v9;
    *(a2 + 16) = v5;
  }

  else
  {
    *a2 = 0;
    *(a2 + 16) = 0;
    v6 = *a1;
    v7 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    result = *(a1 + 3);
    if (result)
    {
      v8 = v7 == 0;
    }

    else
    {
      v8 = 1;
    }

    if (!v8)
    {
      return (*(*result + 16))(result, v6);
    }
  }

  return result;
}

void *WebKit::NavigationSOAuthorizationSession::NavigationSOAuthorizationSession(void *a1, void *a2, uint64_t *a3, uint64_t a4, char a5, uint64_t *a6)
{
  v15 = a2;
  if (a2)
  {
    v12 = a2;
  }

  WebKit::SOAuthorizationSession::SOAuthorizationSession(a1, &v15, a3, a4, a5);
  if (a2)
  {
  }

  *a1 = &unk_1F1106B90;
  a1[8] = &unk_1F1106BF8;
  a1[9] = 0;
  v13 = *a6;
  *a6 = 0;
  a1[10] = v13;
  a1[11] = 0;
  return a1;
}

void sub_19DD449F0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
  }

  _Unwind_Resume(exception_object);
}

uint64_t WebKit::SOAuthorizationSession::SOAuthorizationSession(uint64_t a1, void *a2, uint64_t *a3, uint64_t a4, char a5)
{
  *a1 = &unk_1F1106D18;
  *(a1 + 8) = 3;
  *(a1 + 16) = 0;
  v10 = [objc_alloc((*MEMORY[0x1E69E22D8])()) init];
  v11 = *a3;
  *a3 = 0;
  *(a1 + 24) = v10;
  *(a1 + 32) = v11;
  WTF::WeakPtrFactory<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl>::initializeIfNeeded((a4 + 24), a4 + 16);
  v12 = *(a4 + 24);
  atomic_fetch_add(v12, 1u);
  *(a1 + 40) = v12;
  *(a1 + 48) = a5;
  *(a1 + 49) = 0;
  *(a1 + 56) = 0;
  [*(a1 + 24) setDelegate:*a2];
  return a1;
}

void sub_19DD44AC4(_Unwind_Exception *exception_object, void *a2)
{
  v4 = v2[7];
  v2[7] = 0;
  if (v4)
  {
  }

  v5 = v2[5];
  v2[5] = 0;
  if (v5 && atomic_fetch_add(v5, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v5);
    WTF::fastFree(v5, a2);
  }

  v6 = v2[4];
  v2[4] = 0;
  if (v6)
  {
    CFRelease(*(v6 + 8));
  }

  v7 = v2[3];
  v2[3] = 0;
  if (v7)
  {
  }

  _Unwind_Resume(exception_object);
}

void WebKit::SOAuthorizationSession::~SOAuthorizationSession(WebKit::SOAuthorizationSession *this)
{
  v23 = *MEMORY[0x1E69E9840];
  *this = &unk_1F1106D18;
  v2 = qword_1ED640838;
  if (os_log_type_enabled(qword_1ED640838, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(this + 48);
    if (*(this + 48))
    {
      if (v3 == 2)
      {
        v4 = "SubFrame";
      }

      else if (v3 == 1)
      {
        v4 = "PopUp";
      }

      else
      {
        v4 = 0;
      }
    }

    else
    {
      v4 = "Redirect";
    }

    v5 = *(this + 16);
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        v6 = "Waiting";
        goto LABEL_19;
      }

      if (v5 == 3)
      {
        v6 = "Completed";
        goto LABEL_19;
      }
    }

    else
    {
      if (!*(this + 16))
      {
        v6 = "Idle";
        goto LABEL_19;
      }

      if (v5 == 1)
      {
        v6 = "Active";
LABEL_19:
        v7 = *(this + 7);
        v15 = 134218754;
        v16 = this;
        v17 = 2080;
        v18 = v4;
        v19 = 2080;
        v20 = v6;
        v21 = 2048;
        v22 = v7;
        _os_log_impl(&dword_19D52D000, v2, OS_LOG_TYPE_DEFAULT, "%p - [InitiatingAction=%s][State=%s] SOAuthorizationSession::~SOAuthorizationSession: m_viewController=%p", &v15, 0x2Au);
        goto LABEL_20;
      }
    }

    v6 = 0;
    goto LABEL_19;
  }

LABEL_20:
  *(this + 49) = 1;
  v8 = *(this + 16);
  if (v8 == 1)
  {
    v9 = *(this + 3);
    if (!v9)
    {
      goto LABEL_26;
    }

    [v9 cancelAuthorization];
    v8 = *(this + 16);
  }

  if (!v8 || v8 == 3)
  {
    WebKit::SOAuthorizationSession::dismissViewController(this);
    goto LABEL_27;
  }

LABEL_26:
  WebKit::SOAuthorizationSession::becomeCompleted(this);
LABEL_27:
  v11 = *(this + 7);
  *(this + 7) = 0;
  if (v11)
  {
  }

  v12 = *(this + 5);
  *(this + 5) = 0;
  if (v12 && atomic_fetch_add(v12, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v12);
    WTF::fastFree(v12, v10);
  }

  v13 = *(this + 4);
  *(this + 4) = 0;
  if (v13)
  {
    CFRelease(*(v13 + 8));
  }

  v14 = *(this + 3);
  *(this + 3) = 0;
  if (v14)
  {
  }
}

void sub_19DD44D50(_Unwind_Exception *exception_object, void *a2)
{
  v4 = v2[7];
  v2[7] = 0;
  if (v4)
  {
  }

  v5 = v2[5];
  v2[5] = 0;
  if (v5 && atomic_fetch_add(v5, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v5);
    WTF::fastFree(v5, a2);
  }

  v6 = v2[4];
  v2[4] = 0;
  if (v6)
  {
    CFRelease(*(v6 + 8));
  }

  v7 = v2[3];
  v2[3] = 0;
  if (v7)
  {
  }

  _Unwind_Resume(exception_object);
}

void WebKit::NavigationSOAuthorizationSession::~NavigationSOAuthorizationSession(WebKit::NavigationSOAuthorizationSession *this, WTF::StringImpl *a2)
{
  *this = &unk_1F1106B90;
  v3 = (this + 64);
  *(this + 8) = &unk_1F1106BF8;
  v4 = (this + 80);
  if (*(this + 10))
  {
    WTF::CompletionHandler<void ()(BOOL)>::operator()((this + 80), 1);
  }

  if (*(this + 16) == 2)
  {
    v5 = *(this + 5);
    if (v5)
    {
      v6 = *(v5 + 8);
      if (v6)
      {
        CFRetain(*(v6 - 8));
        WTF::WeakHashSet<WebKit::RemoteAudioSessionProxy,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::remove<WebKit::RemoteAudioSessionProxy>(v6 + 1280, v3);
        CFRelease(*(v6 - 8));
      }
    }
  }

  v7 = *(this + 11);
  *(this + 11) = 0;
  if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v7, a2);
  }

  v8 = *v4;
  *v4 = 0;
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::~WeakPtrFactory(this + 9, a2);

  WebKit::SOAuthorizationSession::~SOAuthorizationSession(this);
}

void sub_19DD44ED8(_Unwind_Exception *a1, WTF::StringImpl *a2)
{
  v5 = *(v2 + 88);
  *(v2 + 88) = 0;
  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, a2);
  }

  v6 = *v3;
  *v3 = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::~WeakPtrFactory((v2 + 72), a2);
  WebKit::SOAuthorizationSession::~SOAuthorizationSession(v2);
  _Unwind_Resume(a1);
}

void WebKit::NavigationSOAuthorizationSession::shouldStartInternal(WebKit::NavigationSOAuthorizationSession *this)
{
  v28 = *MEMORY[0x1E69E9840];
  v2 = qword_1ED640838;
  if (!os_log_type_enabled(qword_1ED640838, OS_LOG_TYPE_DEFAULT))
  {
    goto LABEL_24;
  }

  v3 = *(this + 48);
  if (*(this + 48))
  {
    if (v3 == 2)
    {
      v4 = "SubFrame";
    }

    else if (v3 == 1)
    {
      v4 = "PopUp";
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = "Redirect";
  }

  v5 = *(this + 16);
  if (v5 > 1)
  {
    if (v5 == 2)
    {
      v6 = "Waiting";
      goto LABEL_19;
    }

    if (v5 == 3)
    {
      v6 = "Completed";
      goto LABEL_19;
    }

LABEL_16:
    v6 = 0;
    goto LABEL_19;
  }

  if (!*(this + 16))
  {
    v6 = "Idle";
    goto LABEL_19;
  }

  if (v5 != 1)
  {
    goto LABEL_16;
  }

  v6 = "Active";
LABEL_19:
  v7 = *(this + 5);
  if (v7)
  {
    v8 = *(v7 + 8);
    if (v8)
    {
      v7 = v8 - 16;
    }

    else
    {
      v7 = 0;
    }
  }

  *v21 = 134218754;
  *&v21[4] = this;
  v22 = 2080;
  v23 = v4;
  v24 = 2080;
  v25 = v6;
  v26 = 2048;
  v27 = v7;
  _os_log_impl(&dword_19D52D000, v2, OS_LOG_TYPE_DEFAULT, "%p - [InitiatingAction=%s][State=%s] NavigationSOAuthorizationSession::shouldStartInternal: m_page=%p", v21, 0x2Au);
LABEL_24:
  v9 = *(this + 5);
  if (v9 && (v10 = *(v9 + 8)) != 0)
  {
    CFRetain(*(v10 - 8));
    v11 = 0;
    v12 = v10 - 16;
  }

  else
  {
    v12 = 0;
    v11 = 1;
  }

  (*(*this + 80))(this);
  if ((*(*(v12 + 32) + 80) & 0x10) != 0)
  {
    WebKit::SOAuthorizationSession::start(this);
    goto LABEL_53;
  }

  v13 = qword_1ED640838;
  if (os_log_type_enabled(qword_1ED640838, OS_LOG_TYPE_DEFAULT))
  {
    v14 = *(this + 48);
    if (*(this + 48))
    {
      if (v14 == 2)
      {
        v15 = "SubFrame";
      }

      else if (v14 == 1)
      {
        v15 = "PopUp";
      }

      else
      {
        v15 = 0;
      }
    }

    else
    {
      v15 = "Redirect";
    }

    v16 = *(this + 16);
    if (v16 > 1)
    {
      if (v16 == 2)
      {
        v17 = "Waiting";
        goto LABEL_48;
      }

      if (v16 == 3)
      {
        v17 = "Completed";
        goto LABEL_48;
      }
    }

    else
    {
      if (!*(this + 16))
      {
        v17 = "Idle";
        goto LABEL_48;
      }

      if (v16 == 1)
      {
        v17 = "Active";
LABEL_48:
        *v21 = 134218498;
        *&v21[4] = this;
        v22 = 2080;
        v23 = v15;
        v24 = 2080;
        v25 = v17;
        _os_log_impl(&dword_19D52D000, v13, OS_LOG_TYPE_DEFAULT, "%p - [InitiatingAction=%s][State=%s] NavigationSOAuthorizationSession::shouldStartInternal: Starting Extensible SSO authentication for a web view that is not attached to a window. Loading will pause until a window is attached.", v21, 0x20u);
        goto LABEL_49;
      }
    }

    v17 = 0;
    goto LABEL_48;
  }

LABEL_49:
  *(this + 16) = 2;
  WTF::WeakHashSet<WebKit::FrameLoadStateObserver,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::add<WebKit::FrameLoadStateObserver>(v12 + 1296, this + 16, v21);
  v18 = *(v12 + 32);
  WebKit::PageLoadState::ref((v18 + 1120));
  WebKit::PageLoadState::activeURL((v18 + 1144), v21);
  v20 = *(this + 11);
  *(this + 11) = *v21;
  if (v20 && atomic_fetch_add_explicit(v20, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v20, v19);
  }

  WebKit::PageLoadState::deref((v18 + 1120));
LABEL_53:
  if ((v11 & 1) == 0)
  {
    CFRelease(*(v12 + 8));
  }
}

void WebKit::SOAuthorizationSession::start(WebKit::SOAuthorizationSession *this)
{
  v26 = *MEMORY[0x1E69E9840];
  v2 = qword_1ED640838;
  if (os_log_type_enabled(qword_1ED640838, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(this + 48);
    if (*(this + 48))
    {
      if (v3 == 2)
      {
        v4 = "SubFrame";
      }

      else if (v3 == 1)
      {
        v4 = "PopUp";
      }

      else
      {
        v4 = 0;
      }
    }

    else
    {
      v4 = "Redirect";
    }

    v5 = *(this + 16);
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        v6 = "Waiting";
        goto LABEL_19;
      }

      if (v5 == 3)
      {
        v6 = "Completed";
        goto LABEL_19;
      }
    }

    else
    {
      if (!*(this + 16))
      {
        v6 = "Idle";
        goto LABEL_19;
      }

      if (v5 == 1)
      {
        v6 = "Active";
LABEL_19:
        v7 = *(this + 4);
        *v19 = 134218754;
        *&v19[4] = this;
        v20 = 2080;
        v21 = v4;
        v22 = 2080;
        v23 = v6;
        v24 = 2048;
        v25 = v7;
        _os_log_impl(&dword_19D52D000, v2, OS_LOG_TYPE_DEFAULT, "%p - [InitiatingAction=%s][State=%s] SOAuthorizationSession::start: navigationAction=%p", v19, 0x2Au);
        v2 = qword_1ED640838;
        goto LABEL_20;
      }
    }

    v6 = 0;
    goto LABEL_19;
  }

LABEL_20:
  *(this + 16) = 1;
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(this + 48);
    v9 = "SubFrame";
    v10 = "PopUp";
    if (v8 != 1)
    {
      v10 = 0;
    }

    if (v8 != 2)
    {
      v9 = v10;
    }

    if (*(this + 48))
    {
      v11 = v9;
    }

    else
    {
      v11 = "Redirect";
    }

    *v19 = 134218498;
    *&v19[4] = this;
    v20 = 2080;
    v21 = v11;
    v22 = 2080;
    v23 = "Active";
    _os_log_impl(&dword_19D52D000, v2, OS_LOG_TYPE_DEFAULT, "%p - [InitiatingAction=%s][State=%s] SOAuthorizationSession::start: Moving m_state to Active.", v19, 0x20u);
  }

  v12 = *(this + 3);
  v13 = WebCore::ResourceRequestBase::url((*(this + 4) + 40));
  WTF::URL::createCFURL(v19, v13);
  v14 = *v19;
  v15 = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::NetworkDataTask,(WTF::DestructionThread)1>::controlBlock(this + 1);
  v16 = WTF::ThreadSafeWeakPtrControlBlock::weakRef(v15);
  v17 = malloc_type_malloc(0x30uLL, 0x10E00404AE1ED02uLL);
  *v17 = MEMORY[0x1E69E9818];
  v17[1] = 50331650;
  v17[2] = WTF::BlockPtr<void ()(SOAuthorizationHints *,NSError *)>::fromCallable<WebKit::SOAuthorizationSession::start(void)::$_0>(WebKit::SOAuthorizationSession::start(void)::$_0)::{lambda(void *,SOAuthorizationHints *,NSError *)#1}::__invoke;
  v17[3] = &WTF::BlockPtr<void ()(SOAuthorizationHints *,NSError *)>::fromCallable<WebKit::SOAuthorizationSession::start(void)::$_0>(WebKit::SOAuthorizationSession::start(void)::$_0)::descriptor;
  v17[4] = this;
  v17[5] = v16;
  [v12 getAuthorizationHintsWithURL:v14 responseCode:0 completion:v17];
  _Block_release(v17);
  v18 = *v19;
  *v19 = 0;
  if (v18)
  {
  }
}

void sub_19DD4558C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9)
{
  _Block_release(v9);
  if (a9)
  {
  }

  _Unwind_Resume(a1);
}

void WebKit::NavigationSOAuthorizationSession::webViewDidMoveToWindow(WebKit::NavigationSOAuthorizationSession *this)
{
  v26 = *MEMORY[0x1E69E9840];
  v2 = qword_1ED640838;
  if (os_log_type_enabled(qword_1ED640838, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(this + 48);
    v4 = "SubFrame";
    v5 = "PopUp";
    if (v3 != 1)
    {
      v5 = 0;
    }

    if (v3 != 2)
    {
      v4 = v5;
    }

    if (*(this + 48))
    {
      v6 = v4;
    }

    else
    {
      v6 = "Redirect";
    }

    v7 = *(this + 16);
    if (v7 > 1)
    {
      if (v7 == 2)
      {
        v8 = "Waiting";
        goto LABEL_19;
      }

      if (v7 == 3)
      {
        v8 = "Completed";
        goto LABEL_19;
      }
    }

    else
    {
      if (!*(this + 16))
      {
        v8 = "Idle";
        goto LABEL_19;
      }

      if (v7 == 1)
      {
        v8 = "Active";
LABEL_19:
        *v21 = 134218498;
        *&v21[4] = this;
        v22 = 2080;
        v23 = v6;
        v24 = 2080;
        v25 = v8;
        _os_log_impl(&dword_19D52D000, v2, OS_LOG_TYPE_DEFAULT, "%p - [InitiatingAction=%s][State=%s] NavigationSOAuthorizationSession::webViewDidMoveToWindow", v21, 0x20u);
        goto LABEL_20;
      }
    }

    v8 = 0;
    goto LABEL_19;
  }

LABEL_20:
  v9 = *(this + 5);
  if (v9)
  {
    v10 = *(v9 + 8);
    if (v10)
    {
      CFRetain(*(v10 - 8));
      if (*(this + 16) == 2 && (*(*(v10 + 16) + 80) & 0x10) != 0)
      {
        v11 = qword_1ED640838;
        if (os_log_type_enabled(qword_1ED640838, OS_LOG_TYPE_DEFAULT))
        {
          v12 = *(this + 48);
          if (*(this + 48))
          {
            if (v12 == 2)
            {
              v13 = "SubFrame";
            }

            else if (v12 == 1)
            {
              v13 = "PopUp";
            }

            else
            {
              v13 = 0;
            }
          }

          else
          {
            v13 = "Redirect";
          }

          *v21 = 134218498;
          *&v21[4] = this;
          v22 = 2080;
          v23 = v13;
          v24 = 2080;
          v25 = "Waiting";
          _os_log_impl(&dword_19D52D000, v11, OS_LOG_TYPE_DEFAULT, "%p - [InitiatingAction=%s][State=%s] NavigationSOAuthorizationSession::pageActiveURLDidChangeDuringWaiting", v21, 0x20u);
        }

        v14 = *(this + 5);
        if (!v14)
        {
          goto LABEL_40;
        }

        v15 = *(v14 + 8);
        if (!v15)
        {
          goto LABEL_40;
        }

        CFRetain(*(v15 - 8));
        v16 = *(v15 + 16);
        WebKit::PageLoadState::ref((v16 + 1120));
        WebKit::PageLoadState::activeURL((v16 + 1144), v21);
        v17 = *v21;
        v20 = WTF::equal(*v21, *(this + 11), v18);
        if (v17)
        {
          if (atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v17, v19);
          }
        }

        WebKit::PageLoadState::deref((v16 + 1120));
        CFRelease(*(v15 - 8));
        if (v20)
        {
          WebKit::SOAuthorizationSession::start(this);
        }

        else
        {
LABEL_40:
          WebKit::SOAuthorizationSession::abort(this);
        }

        WTF::WeakHashSet<WebKit::RemoteAudioSessionProxy,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::remove<WebKit::RemoteAudioSessionProxy>(v10 + 1280, this + 8);
      }

      CFRelease(*(v10 - 8));
    }
  }
}

void sub_19DD45898(_Unwind_Exception *a1, WTF::StringImpl *a2)
{
  if (v2)
  {
    if (atomic_fetch_add_explicit(v2, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v2, a2);
    }
  }

  WebKit::PageLoadState::deref((v5 + 1120));
  CFRelease(*(v4 - 8));
  CFRelease(*(v3 - 8));
  _Unwind_Resume(a1);
}

void WebKit::SOAuthorizationSession::abort(WebKit::SOAuthorizationSession *this)
{
  v22 = *MEMORY[0x1E69E9840];
  v2 = qword_1ED640838;
  if (!os_log_type_enabled(qword_1ED640838, OS_LOG_TYPE_DEFAULT))
  {
    goto LABEL_20;
  }

  v3 = *(this + 48);
  if (*(this + 48))
  {
    if (v3 == 2)
    {
      v4 = "SubFrame";
    }

    else if (v3 == 1)
    {
      v4 = "PopUp";
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = "Redirect";
  }

  v5 = *(this + 16);
  if (v5 > 1)
  {
    if (v5 == 2)
    {
      v6 = "Waiting";
      goto LABEL_19;
    }

    if (v5 == 3)
    {
      v6 = "Completed";
      goto LABEL_19;
    }

LABEL_16:
    v6 = 0;
    goto LABEL_19;
  }

  if (!*(this + 16))
  {
    v6 = "Idle";
    goto LABEL_19;
  }

  if (v5 != 1)
  {
    goto LABEL_16;
  }

  v6 = "Active";
LABEL_19:
  v7 = *(this + 7);
  v14 = 134218754;
  v15 = this;
  v16 = 2080;
  v17 = v4;
  v18 = 2080;
  v19 = v6;
  v20 = 2048;
  v21 = v7;
  _os_log_impl(&dword_19D52D000, v2, OS_LOG_TYPE_DEFAULT, "%p - [InitiatingAction=%s][State=%s] SOAuthorizationSession::abort: m_viewController=%p", &v14, 0x2Au);
LABEL_20:
  v8 = *(this + 16);
  if (v8 == 3 || v8 == 0)
  {
    v10 = qword_1ED640838;
    if (os_log_type_enabled(qword_1ED640838, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(this + 48);
      if (*(this + 48))
      {
        if (v11 == 2)
        {
          v12 = "SubFrame";
        }

        else if (v11 == 1)
        {
          v12 = "PopUp";
        }

        else
        {
          v12 = 0;
        }
      }

      else
      {
        v12 = "Redirect";
      }

      if (v8 > 1)
      {
        if (v8 == 2)
        {
          v13 = "Waiting";
        }

        else
        {
          v13 = "Completed";
        }
      }

      else if (v8)
      {
        v13 = "Active";
      }

      else
      {
        v13 = "Idle";
      }

      v14 = 134218498;
      v15 = this;
      v16 = 2080;
      v17 = v12;
      v18 = 2080;
      v19 = v13;
      _os_log_impl(&dword_19D52D000, v10, OS_LOG_TYPE_DEFAULT, "%p - [InitiatingAction=%s][State=%s] SOAuthorizationSession::abort: Returning early since idle or already completed.", &v14, 0x20u);
    }

    WebKit::SOAuthorizationSession::dismissViewController(this);
  }

  else
  {
    WebKit::SOAuthorizationSession::becomeCompleted(this);
    (*(*this + 32))(this);
  }
}

void WebKit::PopUpSOAuthorizationSession::close(WebKit::PopUpSOAuthorizationSession *this, WKWebView *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = qword_1ED640838;
  if (os_log_type_enabled(qword_1ED640838, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(this + 48);
    v6 = "SubFrame";
    v7 = "PopUp";
    if (v5 != 1)
    {
      v7 = 0;
    }

    if (v5 != 2)
    {
      v6 = v7;
    }

    if (*(this + 48))
    {
      v8 = v6;
    }

    else
    {
      v8 = "Redirect";
    }

    v9 = *(this + 16);
    if (v9 > 1)
    {
      if (v9 == 2)
      {
        v10 = "Waiting";
        goto LABEL_19;
      }

      if (v9 == 3)
      {
        v10 = "Completed";
        goto LABEL_19;
      }
    }

    else
    {
      if (!*(this + 16))
      {
        v10 = "Idle";
        goto LABEL_19;
      }

      if (v9 == 1)
      {
        v10 = "Active";
LABEL_19:
        v13 = 134218498;
        v14 = this;
        v15 = 2080;
        v16 = v8;
        v17 = 2080;
        v18 = v10;
        _os_log_impl(&dword_19D52D000, v4, OS_LOG_TYPE_DEFAULT, "%p - [InitiatingAction=%s][State=%s] PopUpSOAuthorizationSession::close", &v13, 0x20u);
        goto LABEL_20;
      }
    }

    v10 = 0;
    goto LABEL_19;
  }

LABEL_20:
  v11 = *(this + 12);
  if (v11)
  {
    if (v11 == a2 && *(this + 16) == 3)
    {
      *(this + 12) = 0;

      WTFLogAlways();
    }
  }
}

void WebKit::PopUpSOAuthorizationSession::~PopUpSOAuthorizationSession(WebKit::PopUpSOAuthorizationSession *this)
{
  v2 = (this + 72);
  if (*(this + 9))
  {
    WTF::CompletionHandler<void ()(WTF::RefPtr<WebKit::WebPageProxy,WTF::RawPtrTraits<WebKit::WebPageProxy>,WTF::DefaultRefDerefTraits<WebKit::WebPageProxy>> &&)>::operator()(this + 9);
  }

  v3 = *(this + 12);
  *(this + 12) = 0;
  if (v3)
  {
  }

  v4 = *(this + 11);
  *(this + 11) = 0;
  if (v4)
  {
  }

  v5 = *(this + 10);
  *(this + 10) = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  v6 = *v2;
  *v2 = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  v7 = *(this + 8);
  *(this + 8) = 0;
  if (v7)
  {
    CFRelease(*(v7 + 8));
  }

  WebKit::SOAuthorizationSession::~SOAuthorizationSession(this);
}

{
  WebKit::PopUpSOAuthorizationSession::~PopUpSOAuthorizationSession(this);

  WTF::fastFree(v1, v2);
}

void sub_19DD45FD4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    CFRelease(*(a10 + 8));
  }

  v13 = *(v10 + 12);
  *(v10 + 12) = 0;
  if (v13)
  {
  }

  v14 = *(v10 + 11);
  *(v10 + 11) = 0;
  if (v14)
  {
  }

  v15 = *(v10 + 10);
  *(v10 + 10) = 0;
  if (v15)
  {
    (*(*v15 + 8))(v15);
  }

  v16 = *v11;
  *v11 = 0;
  if (v16)
  {
    (*(*v16 + 8))(v16);
  }

  v17 = *(v10 + 8);
  *(v10 + 8) = 0;
  if (v17)
  {
    CFRelease(*(v17 + 8));
  }

  WebKit::SOAuthorizationSession::~SOAuthorizationSession(v10);
  _Unwind_Resume(a1);
}

void WebKit::PopUpSOAuthorizationSession::shouldStartInternal(WebKit::PopUpSOAuthorizationSession *this)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = qword_1ED640838;
  if (!os_log_type_enabled(qword_1ED640838, OS_LOG_TYPE_DEFAULT))
  {
    goto LABEL_24;
  }

  v3 = *(this + 48);
  if (*(this + 48))
  {
    if (v3 == 2)
    {
      v4 = "SubFrame";
    }

    else if (v3 == 1)
    {
      v4 = "PopUp";
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = "Redirect";
  }

  v5 = *(this + 16);
  if (v5 > 1)
  {
    if (v5 == 2)
    {
      v6 = "Waiting";
      goto LABEL_19;
    }

    if (v5 == 3)
    {
      v6 = "Completed";
      goto LABEL_19;
    }

LABEL_16:
    v6 = 0;
    goto LABEL_19;
  }

  if (!*(this + 16))
  {
    v6 = "Idle";
    goto LABEL_19;
  }

  if (v5 != 1)
  {
    goto LABEL_16;
  }

  v6 = "Active";
LABEL_19:
  v7 = *(this + 5);
  if (v7)
  {
    v8 = *(v7 + 8);
    if (v8)
    {
      v7 = v8 - 16;
    }

    else
    {
      v7 = 0;
    }
  }

  v9 = 134218754;
  v10 = this;
  v11 = 2080;
  v12 = v4;
  v13 = 2080;
  v14 = v6;
  v15 = 2048;
  v16 = v7;
  _os_log_impl(&dword_19D52D000, v2, OS_LOG_TYPE_DEFAULT, "%p - [InitiatingAction=%s][State=%s] PopUpSOAuthorizationSession::shouldStartInternal: m_page=%p", &v9, 0x2Au);
LABEL_24:
  WebKit::SOAuthorizationSession::start(this);
}

void WebKit::PopUpSOAuthorizationSession::fallBackToWebPathInternal(WebKit::PopUpSOAuthorizationSession *this)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = qword_1ED640838;
  if (!os_log_type_enabled(qword_1ED640838, OS_LOG_TYPE_DEFAULT))
  {
    goto LABEL_20;
  }

  v3 = *(this + 48);
  v4 = "SubFrame";
  v5 = "PopUp";
  if (v3 != 1)
  {
    v5 = 0;
  }

  if (v3 != 2)
  {
    v4 = v5;
  }

  if (*(this + 48))
  {
    v6 = v4;
  }

  else
  {
    v6 = "Redirect";
  }

  v7 = *(this + 16);
  if (v7 > 1)
  {
    if (v7 == 2)
    {
      v8 = "Waiting";
      goto LABEL_19;
    }

    if (v7 == 3)
    {
      v8 = "Completed";
      goto LABEL_19;
    }

LABEL_16:
    v8 = 0;
    goto LABEL_19;
  }

  if (!*(this + 16))
  {
    v8 = "Idle";
    goto LABEL_19;
  }

  if (v7 != 1)
  {
    goto LABEL_16;
  }

  v8 = "Active";
LABEL_19:
  *v10 = 134218498;
  *&v10[4] = this;
  v11 = 2080;
  v12 = v6;
  v13 = 2080;
  v14 = v8;
  _os_log_impl(&dword_19D52D000, v2, OS_LOG_TYPE_DEFAULT, "%p - [InitiatingAction=%s][State=%s] PopUpSOAuthorizationSession::fallBackToWebPathInternal", v10, 0x20u);
LABEL_20:
  *v10 = *(this + 4);
  *(this + 4) = 0;
  (*(**(this + 10) + 16))(*(this + 10), v10, this + 72);
  v9 = *v10;
  *v10 = 0;
  if (v9)
  {
    CFRelease(*(v9 + 8));
  }
}

void sub_19DD463CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  if (a9)
  {
    CFRelease(*(a9 + 8));
  }

  _Unwind_Resume(exception_object);
}

void WebKit::PopUpSOAuthorizationSession::abortInternal(WebKit::PopUpSOAuthorizationSession *this)
{
  v21 = *MEMORY[0x1E69E9840];
  v2 = qword_1ED640838;
  if (!os_log_type_enabled(qword_1ED640838, OS_LOG_TYPE_DEFAULT))
  {
    goto LABEL_24;
  }

  v3 = *(this + 48);
  if (*(this + 48))
  {
    if (v3 == 2)
    {
      v4 = "SubFrame";
    }

    else if (v3 == 1)
    {
      v4 = "PopUp";
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = "Redirect";
  }

  v5 = *(this + 16);
  if (v5 > 1)
  {
    if (v5 == 2)
    {
      v6 = "Waiting";
      goto LABEL_19;
    }

    if (v5 == 3)
    {
      v6 = "Completed";
      goto LABEL_19;
    }

LABEL_16:
    v6 = 0;
    goto LABEL_19;
  }

  if (!*(this + 16))
  {
    v6 = "Idle";
    goto LABEL_19;
  }

  if (v5 != 1)
  {
    goto LABEL_16;
  }

  v6 = "Active";
LABEL_19:
  v7 = *(this + 5);
  if (v7)
  {
    v8 = *(v7 + 8);
    if (v8)
    {
      v7 = v8 - 16;
    }

    else
    {
      v7 = 0;
    }
  }

  *v14 = 134218754;
  *&v14[4] = this;
  v15 = 2080;
  v16 = v4;
  v17 = 2080;
  v18 = v6;
  v19 = 2048;
  v20 = v7;
  _os_log_impl(&dword_19D52D000, v2, OS_LOG_TYPE_DEFAULT, "%p - [InitiatingAction=%s][State=%s] PopUpSOAuthorizationSession::abortInternal: m_page=%p", v14, 0x2Au);
LABEL_24:
  v9 = *(this + 5);
  if (v9 && *(v9 + 8) && (WebKit::PopUpSOAuthorizationSession::initSecretWebView(this), (v10 = *(this + 12)) != 0))
  {
    v11 = *(v10 + 416);
    if (v11)
    {
      CFRetain(*(v11 + 8));
    }

    *v14 = v11;
    WTF::CompletionHandler<void ()(WTF::RefPtr<WebKit::WebPageProxy,WTF::RawPtrTraits<WebKit::WebPageProxy>,WTF::DefaultRefDerefTraits<WebKit::WebPageProxy>> &&)>::operator()(this + 9);
    v12 = *v14;
    *v14 = 0;
    if (v12)
    {
      CFRelease(*(v12 + 8));
    }

    [*(this + 12) evaluateJavaScript:@"window.close()" completionHandler:{0, *v14}];
  }

  else
  {
    *v14 = 0;
    WTF::CompletionHandler<void ()(WTF::RefPtr<WebKit::WebPageProxy,WTF::RawPtrTraits<WebKit::WebPageProxy>,WTF::DefaultRefDerefTraits<WebKit::WebPageProxy>> &&)>::operator()(this + 9);
    v13 = *v14;
    *v14 = 0;
    if (v13)
    {
      CFRelease(*(v13 + 8));
    }
  }
}

void sub_19DD4660C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  if (a9)
  {
    CFRelease(*(a9 + 8));
  }

  _Unwind_Resume(exception_object);
}

void WebKit::PopUpSOAuthorizationSession::initSecretWebView(WebKit::PopUpSOAuthorizationSession *this)
{
  v26 = *MEMORY[0x1E69E9840];
  v2 = qword_1ED640838;
  if (os_log_type_enabled(qword_1ED640838, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(this + 48);
    v4 = "SubFrame";
    v5 = "PopUp";
    if (v3 != 1)
    {
      v5 = 0;
    }

    if (v3 != 2)
    {
      v4 = v5;
    }

    if (*(this + 48))
    {
      v6 = v4;
    }

    else
    {
      v6 = "Redirect";
    }

    v7 = *(this + 16);
    if (v7 > 1)
    {
      if (v7 == 2)
      {
        v8 = "Waiting";
        goto LABEL_19;
      }

      if (v7 == 3)
      {
        v8 = "Completed";
        goto LABEL_19;
      }
    }

    else
    {
      if (!*(this + 16))
      {
        v8 = "Idle";
        goto LABEL_19;
      }

      if (v7 == 1)
      {
        v8 = "Active";
LABEL_19:
        v20 = 134218498;
        v21 = this;
        v22 = 2080;
        v23 = v6;
        v24 = 2080;
        v25 = v8;
        _os_log_impl(&dword_19D52D000, v2, OS_LOG_TYPE_DEFAULT, "%p - [InitiatingAction=%s][State=%s] PopUpSOAuthorizationSession::initSecretWebView", &v20, 0x20u);
        goto LABEL_20;
      }
    }

    v8 = 0;
    goto LABEL_19;
  }

LABEL_20:
  v9 = *(*(this + 8) + 8);
  if (v9)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_35;
    }

    v10 = v9;
  }

  v11 = [objc_msgSend(v9 "preferences")];
  [v11 _setExtensibleSSOEnabled:0];
  [v9 setPreferences:v11];
  v12 = [WKWebView alloc];
  v13 = [(WKWebView *)v12 initWithFrame:v9 configuration:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v14 = *(this + 12);
  *(this + 12) = v13;
  if (v14)
  {
  }

  v15 = [[WKSOSecretDelegate alloc] initWithSession:this];
  v16 = *(this + 11);
  *(this + 11) = v15;
  if (v16)
  {

    v15 = *(this + 11);
  }

  [*(this + 12) setUIDelegate:v15];
  [*(this + 12) setNavigationDelegate:*(this + 11)];
  v17 = *(*(*(this + 12) + 416) + 368);
  CFRetain(*(v17 + 8));
  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::isExtensibleSSOEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::isExtensibleSSOEnabledKey(void)::key = WebKit::WebPreferencesKey::isExtensibleSSOEnabledKey(void)::$_0::operator() const(void)::impl;
  }

  BoolValueForKey = WebKit::WebPreferencesStore::getBoolValueForKey((v17 + 40), &WebKit::WebPreferencesKey::isExtensibleSSOEnabledKey(void)::key, v18);
  CFRelease(*(v17 + 8));
  if (BoolValueForKey)
  {
LABEL_35:
    __break(0xC471u);
    JUMPOUT(0x19DD468ECLL);
  }

  WTFLogAlways();
  if (v11)
  {
  }

  if (v9)
  {
  }
}

void WebKit::PopUpSOAuthorizationSession::completeInternal(WebKit::PopUpSOAuthorizationSession *this, const WebCore::ResourceResponse *a2, NSData *a3)
{
  v27 = *MEMORY[0x1E69E9840];
  v6 = qword_1ED640838;
  if (os_log_type_enabled(qword_1ED640838, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(this + 48);
    v8 = "SubFrame";
    v9 = "PopUp";
    if (v7 != 1)
    {
      v9 = 0;
    }

    if (v7 != 2)
    {
      v8 = v9;
    }

    if (*(this + 48))
    {
      v10 = v8;
    }

    else
    {
      v10 = "Redirect";
    }

    v11 = *(this + 16);
    if (v11 > 1)
    {
      if (v11 == 2)
      {
        v12 = "Waiting";
        goto LABEL_19;
      }

      if (v11 == 3)
      {
        v12 = "Completed";
        goto LABEL_19;
      }
    }

    else
    {
      if (!*(this + 16))
      {
        v12 = "Idle";
        goto LABEL_19;
      }

      if (v11 == 1)
      {
        v12 = "Active";
LABEL_19:
        *v20 = 134218754;
        *&v20[4] = this;
        v21 = 2080;
        v22 = v10;
        v23 = 2080;
        v24 = v12;
        v25 = 1024;
        v26 = WebCore::ResourceResponseBase::httpStatusCode(a2);
        _os_log_impl(&dword_19D52D000, v6, OS_LOG_TYPE_DEFAULT, "%p - [InitiatingAction=%s][State=%s] PopUpSOAuthorizationSession::completeInternal: httpState=%d", v20, 0x26u);
        goto LABEL_20;
      }
    }

    v12 = 0;
    goto LABEL_19;
  }

LABEL_20:
  if (WebCore::ResourceResponseBase::httpStatusCode(a2) == 200 && (v13 = *(this + 5)) != 0 && *(v13 + 8) && (WebKit::PopUpSOAuthorizationSession::initSecretWebView(this), (v14 = *(this + 12)) != 0))
  {
    v15 = *(v14 + 416);
    if (v15)
    {
      CFRetain(*(v15 + 8));
    }

    *v20 = v15;
    WTF::CompletionHandler<void ()(WTF::RefPtr<WebKit::WebPageProxy,WTF::RawPtrTraits<WebKit::WebPageProxy>,WTF::DefaultRefDerefTraits<WebKit::WebPageProxy>> &&)>::operator()(this + 9);
    v16 = *v20;
    *v20 = 0;
    if (v16)
    {
      CFRelease(*(v16 + 8));
    }

    v17 = *(this + 12);
    v18 = WebCore::ResourceResponseBase::url(a2);
    WTF::URL::createCFURL(v20, v18);
    [v17 loadData:a3 MIMEType:@"text/html" characterEncodingName:@"UTF-8" baseURL:*v20];
    v19 = *v20;
    *v20 = 0;
    if (v19)
    {
    }
  }

  else
  {
    WebKit::PopUpSOAuthorizationSession::fallBackToWebPathInternal(this);
  }
}

void sub_19DD46B7C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9)
{
  if (a9)
  {
  }

  _Unwind_Resume(exception_object);
}

uint64_t *WebKit::RedirectSOAuthorizationSession::fallBackToWebPathInternal(WebKit::RedirectSOAuthorizationSession *this)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = qword_1ED640838;
  if (os_log_type_enabled(qword_1ED640838, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(this + 48);
    if (*(this + 48))
    {
      if (v3 == 2)
      {
        v5 = "SubFrame";
      }

      else
      {
        v4 = v3 == 1;
        v5 = "PopUp";
        if (!v4)
        {
          v5 = 0;
        }
      }
    }

    else
    {
      v5 = "Redirect";
    }

    v6 = *(this + 16);
    if (v6 > 1)
    {
      if (v6 == 2)
      {
        v7 = "Waiting";
        goto LABEL_19;
      }

      if (v6 == 3)
      {
        v7 = "Completed";
        goto LABEL_19;
      }
    }

    else
    {
      if (!*(this + 16))
      {
        v7 = "Idle";
        goto LABEL_19;
      }

      if (v6 == 1)
      {
        v7 = "Active";
LABEL_19:
        v8 = *(this + 4);
        v10 = 134218754;
        v11 = this;
        v12 = 2080;
        v13 = v5;
        v14 = 2080;
        v15 = v7;
        v16 = 2048;
        v17 = v8;
        _os_log_impl(&dword_19D52D000, v2, OS_LOG_TYPE_DEFAULT, "%p - [InitiatingAction=%s][State=%s] RedirectSOAuthorizationSession::fallBackToWebPathInternal: navigationAction=%p", &v10, 0x2Au);
        return WTF::CompletionHandler<void ()(BOOL)>::operator()((this + 80), 0);
      }
    }

    v7 = 0;
    goto LABEL_19;
  }

  return WTF::CompletionHandler<void ()(BOOL)>::operator()((this + 80), 0);
}

uint64_t *WebKit::RedirectSOAuthorizationSession::abortInternal(WebKit::RedirectSOAuthorizationSession *this)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = qword_1ED640838;
  if (os_log_type_enabled(qword_1ED640838, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(this + 48);
    if (*(this + 48))
    {
      if (v3 == 2)
      {
        v5 = "SubFrame";
      }

      else
      {
        v4 = v3 == 1;
        v5 = "PopUp";
        if (!v4)
        {
          v5 = 0;
        }
      }
    }

    else
    {
      v5 = "Redirect";
    }

    v6 = *(this + 16);
    if (v6 > 1)
    {
      if (v6 == 2)
      {
        v7 = "Waiting";
        goto LABEL_19;
      }

      if (v6 == 3)
      {
        v7 = "Completed";
        goto LABEL_19;
      }
    }

    else
    {
      if (!*(this + 16))
      {
        v7 = "Idle";
        goto LABEL_19;
      }

      if (v6 == 1)
      {
        v7 = "Active";
LABEL_19:
        v9 = 134218498;
        v10 = this;
        v11 = 2080;
        v12 = v5;
        v13 = 2080;
        v14 = v7;
        _os_log_impl(&dword_19D52D000, v2, OS_LOG_TYPE_DEFAULT, "%p - [InitiatingAction=%s][State=%s] RedirectSOAuthorizationSession::abortInternal", &v9, 0x20u);
        return WTF::CompletionHandler<void ()(BOOL)>::operator()((this + 80), 1);
      }
    }

    v7 = 0;
    goto LABEL_19;
  }

  return WTF::CompletionHandler<void ()(BOOL)>::operator()((this + 80), 1);
}

void WebKit::RedirectSOAuthorizationSession::completeInternal(WebKit::RedirectSOAuthorizationSession *this, const WebCore::ResourceResponse *a2, NSData *a3)
{
  v65 = *MEMORY[0x1E69E9840];
  v54 = a3;
  v5 = qword_1ED640838;
  if (os_log_type_enabled(qword_1ED640838, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(this + 48);
    if (*(this + 48))
    {
      if (v6 == 2)
      {
        v7 = "SubFrame";
      }

      else if (v6 == 1)
      {
        v7 = "PopUp";
      }

      else
      {
        v7 = 0;
      }
    }

    else
    {
      v7 = "Redirect";
    }

    v8 = *(this + 16);
    if (v8 > 1)
    {
      if (v8 == 2)
      {
        v9 = "Waiting";
        goto LABEL_19;
      }

      if (v8 == 3)
      {
        v9 = "Completed";
        goto LABEL_19;
      }
    }

    else
    {
      if (!*(this + 16))
      {
        v9 = "Idle";
        goto LABEL_19;
      }

      if (v8 == 1)
      {
        v9 = "Active";
LABEL_19:
        v10 = WebCore::ResourceResponseBase::httpStatusCode(a2);
        v11 = *(this + 4);
        *buf = 134219010;
        *&buf[4] = this;
        *&buf[12] = 2080;
        *&buf[14] = v7;
        v58 = 2080;
        v59 = v9;
        v60 = 1024;
        v61 = v10;
        v62 = 2048;
        v63 = v11;
        _os_log_impl(&dword_19D52D000, v5, OS_LOG_TYPE_DEFAULT, "%p - [InitiatingAction=%s][State=%s] RedirectSOAuthorizationSession::completeInternal: httpState=%d, navigationAction=%p", buf, 0x30u);
        goto LABEL_20;
      }
    }

    v9 = 0;
    goto LABEL_19;
  }

LABEL_20:
  v12 = *(this + 4);
  if (v12)
  {
    CFRetain(*(v12 + 8));
  }

  v13 = *(this + 5);
  if (v13)
  {
    v14 = *(v13 + 8);
    if (v14)
    {
      CFRetain(*(v14 - 8));
      v14 -= 16;
      v15 = 1;
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    v15 = 0;
    v14 = 0;
  }

  if (WebCore::ResourceResponseBase::httpStatusCode(a2) == 302 || WebCore::ResourceResponseBase::httpStatusCode(a2) == 200)
  {
    if (v15)
    {
      goto LABEL_30;
    }

LABEL_45:
    v22 = qword_1ED640838;
    if (!os_log_type_enabled(qword_1ED640838, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_99;
    }

    v23 = *(this + 48);
    if (*(this + 48))
    {
      if (v23 == 2)
      {
        v24 = "SubFrame";
      }

      else if (v23 == 1)
      {
        v24 = "PopUp";
      }

      else
      {
        v24 = 0;
      }
    }

    else
    {
      v24 = "Redirect";
    }

    v44 = *(this + 16);
    if (v44 > 1)
    {
      if (v44 == 2)
      {
        v45 = "Waiting";
        goto LABEL_98;
      }

      if (v44 == 3)
      {
        v45 = "Completed";
        goto LABEL_98;
      }
    }

    else
    {
      if (!*(this + 16))
      {
        v45 = "Idle";
        goto LABEL_98;
      }

      if (v44 == 1)
      {
        v45 = "Active";
LABEL_98:
        v46 = WebCore::ResourceResponseBase::httpStatusCode(a2);
        *buf = 134219010;
        *&buf[4] = this;
        *&buf[12] = 2080;
        *&buf[14] = v24;
        v58 = 2080;
        v59 = v45;
        v60 = 1024;
        v61 = v46;
        v62 = 1024;
        LODWORD(v63) = v15;
        _os_log_impl(&dword_19D52D000, v22, OS_LOG_TYPE_DEFAULT, "%p - [InitiatingAction=%s][State=%s] RedirectSOAuthorizationSession::completeInternal: httpState=%d page=%d, so falling back to web path.", buf, 0x2Cu);
LABEL_99:
        WebKit::RedirectSOAuthorizationSession::fallBackToWebPathInternal(this);
        if (!v15)
        {
          goto LABEL_101;
        }

        goto LABEL_100;
      }
    }

    v45 = 0;
    goto LABEL_98;
  }

  if (WebCore::ResourceResponseBase::httpStatusCode(a2) != 307)
  {
    goto LABEL_45;
  }

  v21 = WebCore::ResourceRequestBase::httpMethod((v12 + 40));
  if ((v15 & MEMORY[0x19EB01EF0](*v21, "POST", 4) & 1) == 0)
  {
    goto LABEL_45;
  }

LABEL_30:
  if (WebCore::ResourceResponseBase::httpStatusCode(a2) == 302)
  {
    WTF::CompletionHandler<void ()(BOOL)>::operator()((this + 80), 1);
    if (*(v12 + 288))
    {
      WebCore::ResourceResponseBase::httpHeaderFields(a2);
      WebCore::HTTPHeaderMap::get();
      WTF::URL::URL(v55);
      MEMORY[0x19EB01E00](v56, v55, &v51, 0);
      WebCore::ResourceRequestBase::ResourceRequestBase(buf, v56, 0);
      v17 = v56[0];
      v56[0] = 0;
      if (v17 && atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v17, v16);
      }

      v18 = v55[0];
      v55[0] = 0;
      if (v18 && atomic_fetch_add_explicit(v18, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v18, v16);
      }

      v64 = 0;
      v56[0] = 0;
      WebKit::WebPageProxy::loadRequest(v14, buf, 1, 0, v56, 0, 1, &v48);
      if (v48)
      {
        CFRelease(*(v48 + 8));
      }

      WebCore::ResourceRequest::~ResourceRequest(buf);
      v20 = v51;
      v51 = 0;
      if (v20 && atomic_fetch_add_explicit(v20, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v20, v19);
      }
    }

    else
    {
      *(v14 + 873) = 1;
      WebCore::ResourceResponseBase::httpHeaderFields(a2);
      WebCore::HTTPHeaderMap::get();
      WTF::makeString<WTF::ASCIILiteral,WTF::String,WTF::ASCIILiteral>("<script>location = '", 21, &v53, "'</script>", 11, buf);
      WTF::String::utf8();
      v33 = *buf;
      *buf = 0;
      if (v33 && atomic_fetch_add_explicit(v33, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v33, v32);
      }

      v34 = v53;
      v53 = 0;
      if (v34 && atomic_fetch_add_explicit(v34, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v34, v32);
      }

      v35 = v55[0];
      if (v55[0])
      {
        v36 = v55[0] + 16;
        v35 = *(v55[0] + 1);
      }

      else
      {
        v36 = 0;
      }

      *buf = v36;
      *&buf[8] = v35;
      WebCore::SharedBuffer::create<std::span<char const,18446744073709551615ul>>(buf, &v51);
      WTF::StringImpl::createWithoutCopyingNonEmpty();
      v50 = v56[0];
      WTF::StringImpl::createWithoutCopyingNonEmpty();
      v49 = v56[0];
      v37 = WebCore::ResourceRequestBase::url((v12 + 40));
      WebKit::WebPageProxy::loadData(v14, &v51, &v50, &v49, v37, 0, *(v12 + 369), &v52);
      v39 = v52;
      v52 = 0;
      if (v39)
      {
        CFRelease(*(v39 + 1));
      }

      v40 = v49;
      v49 = 0;
      if (v40 && atomic_fetch_add_explicit(v40, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v40, v38);
      }

      v41 = v50;
      v50 = 0;
      if (v41 && atomic_fetch_add_explicit(v41, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v41, v38);
      }

      v42 = v51;
      v51 = 0;
      if (v42 && atomic_fetch_add(v42 + 2, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v42 + 2);
        (*(*v42 + 8))(v42);
      }

      v43 = v55[0];
      v55[0] = 0;
      if (v43)
      {
        if (*v43 == 1)
        {
          WTF::fastFree(v43, v38);
        }

        else
        {
          --*v43;
        }
      }
    }
  }

  else if (WebCore::ResourceResponseBase::httpStatusCode(a2) == 200)
  {
    WTF::CompletionHandler<void ()(BOOL)>::operator()((this + 80), 1);
    *(v14 + 873) = 1;
    WebCore::SharedBuffer::create<NSData *&>(&v54, v25, v56);
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    v55[0] = *buf;
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    v51 = *buf;
    v26 = WebCore::ResourceResponseBase::url(a2);
    WebKit::WebPageProxy::loadData(v14, v56, v55, &v51, v26, 0, *(v12 + 369), &v47);
    v28 = v47;
    v47 = 0;
    if (v28)
    {
      CFRelease(*(v28 + 1));
    }

    v29 = v51;
    v51 = 0;
    if (v29 && atomic_fetch_add_explicit(v29, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v29, v27);
    }

    v30 = v55[0];
    v55[0] = 0;
    if (v30 && atomic_fetch_add_explicit(v30, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v30, v27);
    }

    v31 = v56[0];
    v56[0] = 0;
    if (v31 && atomic_fetch_add(v31 + 2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v31 + 2);
      (*(*v31 + 8))(v31);
    }
  }

  else
  {
    *buf = a2;
    WebKit::WebPageProxy::send<Messages::WebPage::UseRedirectionForCurrentNavigation>(v14, buf);
    WTF::CompletionHandler<void ()(BOOL)>::operator()((this + 80), 0);
  }

LABEL_100:
  CFRelease(*(v14 + 8));
LABEL_101:
  if (v12)
  {
    CFRelease(*(v12 + 8));
  }
}

void sub_19DD47628(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11, WTF::StringImpl *a12, WTF::StringImpl *a13, uint64_t a14, uint64_t a15, uint64_t a16, WTF::StringImpl *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, WTF::StringImpl *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, WTF::StringImpl *a27)
{
  if (a12 && atomic_fetch_add_explicit(a12, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a12, a2);
  }

  if (a13 && atomic_fetch_add(a13 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, a13 + 2);
    (*(*a13 + 8))(a13);
  }

  if (a17)
  {
    if (*a17 == 1)
    {
      WTF::fastFree(a17, a2);
    }

    else
    {
      --*a17;
    }
  }

  CFRelease(*(v27 + 8));
  if (v28)
  {
    CFRelease(*(v28 + 8));
  }

  _Unwind_Resume(a1);
}

unsigned int *WebCore::SharedBuffer::create<std::span<char const,18446744073709551615ul>>@<X0>(unsigned int *result@<X0>, uint64_t *a2@<X8>)
{
  v4 = *result;
  v3 = *(result + 1);
  v9 = 0;
  if (v3)
  {
    if (v3 >> 32)
    {
      __break(0xC471u);
      return result;
    }

    v5 = WTF::fastMalloc(v3);
    v9 = v5;
    do
    {
      v6 = *v4++;
      *v5 = v6;
      v5 = (v5 + 1);
      v3 = (v3 - 1);
    }

    while (v3);
  }

  WebCore::FragmentedSharedBuffer::create();
  if (v9)
  {
    WTF::fastFree(v9, v7);
  }

  v8 = WTF::fastMalloc(0x40);
  MEMORY[0x19EB04740](v8, &v10);
  *a2 = v8;
  result = v10;
  v10 = 0;
  if (result)
  {
    if (atomic_fetch_add(result + 2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, result + 2);
      return (*(*result + 8))(result);
    }
  }

  return result;
}

void sub_19DD47994(_Unwind_Exception *a1, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF *a10, int a11, unsigned int *a12)
{
  WTF::fastFree(v12, a2);
  if (a12)
  {
    if (atomic_fetch_add(a12 + 2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, a12 + 2);
      (*(*a12 + 8))(a12);
    }
  }

  _Unwind_Resume(a1);
}

void WebKit::RedirectSOAuthorizationSession::beforeStart(WebKit::RedirectSOAuthorizationSession *this)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = qword_1ED640838;
  if (os_log_type_enabled(qword_1ED640838, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(this + 48);
    v4 = "SubFrame";
    v5 = "PopUp";
    if (v3 != 1)
    {
      v5 = 0;
    }

    if (v3 != 2)
    {
      v4 = v5;
    }

    if (*(this + 48))
    {
      v6 = v4;
    }

    else
    {
      v6 = "Redirect";
    }

    v7 = *(this + 16);
    if (v7 > 1)
    {
      if (v7 == 2)
      {
        v8 = "Waiting";
        goto LABEL_19;
      }

      if (v7 == 3)
      {
        v8 = "Completed";
        goto LABEL_19;
      }
    }

    else
    {
      if (!*(this + 16))
      {
        v8 = "Idle";
        goto LABEL_19;
      }

      if (v7 == 1)
      {
        v8 = "Active";
LABEL_19:
        v9 = 134218498;
        v10 = this;
        v11 = 2080;
        v12 = v6;
        v13 = 2080;
        v14 = v8;
        _os_log_impl(&dword_19D52D000, v2, OS_LOG_TYPE_DEFAULT, "%p - [InitiatingAction=%s][State=%s] RedirectSOAuthorizationSession::beforeStart", &v9, 0x20u);
        return;
      }
    }

    v8 = 0;
    goto LABEL_19;
  }
}

WebKit::SOAuthorizationCoordinator *WebKit::SOAuthorizationCoordinator::SOAuthorizationCoordinator(WebKit::SOAuthorizationCoordinator *this)
{
  *this = 0;
  *(this + 8) = 0;
  *(this + 8) = (*MEMORY[0x1E69E22D8])() != 0;
  v2 = objc_alloc_init(WKSOAuthorizationDelegate);
  v3 = *this;
  *this = v2;
  if (v3)
  {
  }

  [MEMORY[0x1E695AC78] _disableAppSSO];
  return this;
}

void sub_19DD47BD4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  *v1 = 0;
  if (v3)
  {
  }

  _Unwind_Resume(exception_object);
}

void WebKit::SOAuthorizationCoordinator::canAuthorize(char a1, WTF::URL *a2, WTF::RefCountedBase *a3)
{
  if (a1)
  {
    v5 = MEMORY[0x1E69E22D8];
    (*MEMORY[0x1E69E22D8])();
    v6 = objc_opt_respondsToSelector();
    v7 = (*v5)();
    WTF::URL::createCFURL(&v12, a2);
    if (v6)
    {
      v8 = v12;
      v9 = *a3;
      *a3 = 0;
      v10 = malloc_type_malloc(0x28uLL, 0x10E004053C0834CuLL);
      *v10 = MEMORY[0x1E69E9818];
      v10[1] = 50331650;
      v10[2] = WTF::BlockPtr<void ()(BOOL)>::fromCallable<WebKit::SOAuthorizationCoordinator::canAuthorize(WTF::URL const&,WTF::CompletionHandler<void ()(BOOL)> &&)::$_0>(WebKit::SOAuthorizationCoordinator::canAuthorize(WTF::URL const&,WTF::CompletionHandler<void ()(BOOL)> &&)::$_0)::{lambda(void *,BOOL)#1}::__invoke;
      v10[3] = &WTF::BlockPtr<void ()(BOOL)>::fromCallable<WebKit::SOAuthorizationCoordinator::canAuthorize(WTF::URL const&,WTF::CompletionHandler<void ()(BOOL)> &&)::$_0>(WebKit::SOAuthorizationCoordinator::canAuthorize(WTF::URL const&,WTF::CompletionHandler<void ()(BOOL)> &&)::$_0)::descriptor;
      v10[4] = v9;
      [v7 canPerformAuthorizationWithURL:v8 responseCode:0 callerBundleIdentifier:0 useInternalExtensions:1 completion:v10];
      _Block_release(v10);
    }

    else
    {
      WTF::CompletionHandler<void ()(BOOL)>::operator()(a3, [v7 canPerformAuthorizationWithURL:v12 responseCode:0]);
    }

    v11 = v12;
    v12 = 0;
    if (v11)
    {
    }
  }

  else
  {

    WTF::CompletionHandler<void ()(BOOL)>::operator()(a3, 0);
  }
}

void sub_19DD47D58(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  v11 = v10;
  _Block_release(v11);
  if (a10)
  {
  }

  _Unwind_Resume(a1);
}

uint64_t WebKit::SOAuthorizationCoordinator::tryAuthorize(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4)
{
  v17 = *MEMORY[0x1E69E9840];
  v8 = qword_1ED640838;
  if (os_log_type_enabled(qword_1ED640838, OS_LOG_TYPE_DEFAULT))
  {
    *v16 = 134217984;
    *&v16[4] = a1;
    _os_log_impl(&dword_19D52D000, v8, OS_LOG_TYPE_DEFAULT, "%p - SOAuthorizationCoordinator::tryAuthorize", v16, 0xCu);
  }

  v9 = WebCore::ResourceRequestBase::url((*a2 + 40));
  v10 = *a4;
  *a4 = 0;
  v11 = *a2;
  *a2 = 0;
  CFRetain(*(a3 + 8));
  v12 = *a1;
  if (*a1)
  {
    v13 = v12;
  }

  v14 = WTF::fastMalloc(0x28);
  *v14 = &unk_1F1106F30;
  v14[1] = v10;
  v14[2] = v11;
  v14[3] = a3;
  v14[4] = v12;
  *v16 = v14;
  WebKit::SOAuthorizationCoordinator::canAuthorize(*(a1 + 8), v9, v16);
  result = *v16;
  *v16 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

void sub_19DD47F1C(_Unwind_Exception *a1)
{
  CFRelease(*(v2 + 8));
  if (v3)
  {
    CFRelease(*(v3 + 8));
  }

  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  _Unwind_Resume(a1);
}

uint64_t WebKit::SOAuthorizationCoordinator::tryAuthorize(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t *a5, void *a6)
{
  v27 = *MEMORY[0x1E69E9840];
  v12 = qword_1ED640838;
  if (os_log_type_enabled(qword_1ED640838, OS_LOG_TYPE_DEFAULT))
  {
    *v26 = 134217984;
    *&v26[4] = a1;
    _os_log_impl(&dword_19D52D000, v12, OS_LOG_TYPE_DEFAULT, "%p - SOAuthorizationCoordinator::tryAuthorize (2)", v26, 0xCu);
  }

  v13 = *a3;
  v14 = *(*a3 + 16);
  if (v14 && (*(v14 + 16) & 1) == 0)
  {
    v24 = qword_1ED640838;
    if (os_log_type_enabled(qword_1ED640838, OS_LOG_TYPE_ERROR))
    {
      *v26 = 134217984;
      *&v26[4] = a1;
      _os_log_error_impl(&dword_19D52D000, v24, OS_LOG_TYPE_ERROR, "%p - SOAuthorizationCoordinator::tryAuthorize (2): Attempting to perform subframe navigation.", v26, 0xCu);
    }

    return (*(**a6 + 16))(*a6, a3, a5);
  }

  if (!*(v13 + 288))
  {
    v25 = qword_1ED640838;
    if (os_log_type_enabled(qword_1ED640838, OS_LOG_TYPE_ERROR))
    {
      *v26 = 134217984;
      *&v26[4] = a1;
      _os_log_error_impl(&dword_19D52D000, v25, OS_LOG_TYPE_ERROR, "%p - SOAuthorizationCoordinator::tryAuthorize (2): Attempting to perform auth without a user gesture.", v26, 0xCu);
    }

    return (*(**a6 + 16))(*a6, a3, a5);
  }

  v15 = WebCore::ResourceRequestBase::url((v13 + 40));
  v16 = *a6;
  *a6 = 0;
  v17 = *a3;
  *a3 = 0;
  v18 = *a2;
  *a2 = 0;
  CFRetain(*(a4 + 8));
  v19 = *a1;
  if (*a1)
  {
    v20 = v19;
  }

  v21 = *a5;
  *a5 = 0;
  v22 = WTF::fastMalloc(0x38);
  *v22 = &unk_1F1106F58;
  v22[1] = v16;
  v22[2] = v17;
  v22[3] = v18;
  v22[4] = a4;
  v22[5] = v19;
  v22[6] = v21;
  *v26 = v22;
  WebKit::SOAuthorizationCoordinator::canAuthorize(*(a1 + 8), v15, v26);
  result = *v26;
  *v26 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

void sub_19DD4823C(_Unwind_Exception *a1)
{
  CFRelease(*(v2 + 8));
  if (v4)
  {
    CFRelease(*(v4 + 8));
    if (!v3)
    {
LABEL_3:
      if (!v1)
      {
LABEL_8:
        _Unwind_Resume(a1);
      }

LABEL_7:
      (*(*v1 + 8))(v1);
      goto LABEL_8;
    }
  }

  else if (!v3)
  {
    goto LABEL_3;
  }

  CFRelease(*(v3 + 8));
  if (!v1)
  {
    goto LABEL_8;
  }

  goto LABEL_7;
}

void WebKit::SOAuthorizationSession::becomeCompleted(WebKit::SOAuthorizationSession *this)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = qword_1ED640838;
  if (os_log_type_enabled(qword_1ED640838, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(this + 48);
    if (*(this + 48))
    {
      if (v3 == 2)
      {
        v5 = "SubFrame";
      }

      else
      {
        v4 = v3 == 1;
        v5 = "PopUp";
        if (!v4)
        {
          v5 = 0;
        }
      }
    }

    else
    {
      v5 = "Redirect";
    }

    v6 = *(this + 16);
    if (v6 > 1)
    {
      if (v6 == 2)
      {
        v7 = "Waiting";
        goto LABEL_19;
      }

      if (v6 == 3)
      {
        v7 = "Completed";
        goto LABEL_19;
      }
    }

    else
    {
      if (!*(this + 16))
      {
        v7 = "Idle";
        goto LABEL_19;
      }

      if (v6 == 1)
      {
        v7 = "Active";
LABEL_19:
        v8 = *(this + 7);
        v9 = 134218754;
        v10 = this;
        v11 = 2080;
        v12 = v5;
        v13 = 2080;
        v14 = v7;
        v15 = 2048;
        v16 = v8;
        _os_log_impl(&dword_19D52D000, v2, OS_LOG_TYPE_DEFAULT, "%p - [InitiatingAction=%s][State=%s] SOAuthorizationSession::becomeCompleted: m_viewController=%p", &v9, 0x2Au);
        goto LABEL_20;
      }
    }

    v7 = 0;
    goto LABEL_19;
  }

LABEL_20:
  *(this + 16) = 3;
  WebKit::SOAuthorizationSession::dismissViewController(this);
}

void WebKit::SOAuthorizationSession::dismissViewController(WebKit::SOAuthorizationSession *this)
{
  v25 = *MEMORY[0x1E69E9840];
  v2 = qword_1ED640838;
  if (os_log_type_enabled(qword_1ED640838, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(this + 48);
    v4 = "SubFrame";
    v5 = "PopUp";
    if (v3 != 1)
    {
      v5 = 0;
    }

    if (v3 != 2)
    {
      v4 = v5;
    }

    if (*(this + 48))
    {
      v6 = v4;
    }

    else
    {
      v6 = "Redirect";
    }

    v7 = *(this + 16);
    if (v7 > 1)
    {
      if (v7 == 2)
      {
        v8 = "Waiting";
        goto LABEL_19;
      }

      if (v7 == 3)
      {
        v8 = "Completed";
        goto LABEL_19;
      }
    }

    else
    {
      if (!*(this + 16))
      {
        v8 = "Idle";
        goto LABEL_19;
      }

      if (v7 == 1)
      {
        v8 = "Active";
LABEL_19:
        v9 = *(this + 7);
        v17 = 134218754;
        v18 = this;
        v19 = 2080;
        v20 = v6;
        v21 = 2080;
        v22 = v8;
        v23 = 2048;
        v24 = v9;
        _os_log_impl(&dword_19D52D000, v2, OS_LOG_TYPE_DEFAULT, "%p - [InitiatingAction=%s][State=%s] SOAuthorizationSession::dismissViewController: m_viewController=%p", &v17, 0x2Au);
        goto LABEL_20;
      }
    }

    v8 = 0;
    goto LABEL_19;
  }

LABEL_20:
  v10 = *(this + 7);
  if (!v10)
  {
    v12 = qword_1ED640838;
    if (!os_log_type_enabled(qword_1ED640838, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    v13 = *(this + 48);
    if (*(this + 48))
    {
      if (v13 == 2)
      {
        v14 = "SubFrame";
      }

      else if (v13 == 1)
      {
        v14 = "PopUp";
      }

      else
      {
        v14 = 0;
      }
    }

    else
    {
      v14 = "Redirect";
    }

    v15 = *(this + 16);
    if (v15 > 1)
    {
      if (v15 == 2)
      {
        v16 = "Waiting";
        goto LABEL_41;
      }

      if (v15 == 3)
      {
        v16 = "Completed";
        goto LABEL_41;
      }
    }

    else
    {
      if (!*(this + 16))
      {
        v16 = "Idle";
        goto LABEL_41;
      }

      if (v15 == 1)
      {
        v16 = "Active";
LABEL_41:
        v17 = 134218498;
        v18 = this;
        v19 = 2080;
        v20 = v14;
        v21 = 2080;
        v22 = v16;
        _os_log_impl(&dword_19D52D000, v12, OS_LOG_TYPE_DEFAULT, "%p - [InitiatingAction=%s][State=%s] SOAuthorizationSession::dismissViewController: No view controller, so returning early.", &v17, 0x20u);
        return;
      }
    }

    v16 = 0;
    goto LABEL_41;
  }

  [objc_msgSend(v10 "presentingViewController")];
  v11 = *(this + 7);
  *(this + 7) = 0;
  if (v11)
  {
  }
}

void WebKit::SOAuthorizationSession::shouldStart(WebKit::SOAuthorizationSession *this)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = qword_1ED640838;
  if (!os_log_type_enabled(qword_1ED640838, OS_LOG_TYPE_DEFAULT))
  {
    goto LABEL_24;
  }

  v3 = *(this + 48);
  if (*(this + 48))
  {
    if (v3 == 2)
    {
      v4 = "SubFrame";
    }

    else if (v3 == 1)
    {
      v4 = "PopUp";
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = "Redirect";
  }

  v5 = *(this + 16);
  if (v5 > 1)
  {
    if (v5 == 2)
    {
      v6 = "Waiting";
      goto LABEL_19;
    }

    if (v5 == 3)
    {
      v6 = "Completed";
      goto LABEL_19;
    }

LABEL_16:
    v6 = 0;
    goto LABEL_19;
  }

  if (!*(this + 16))
  {
    v6 = "Idle";
    goto LABEL_19;
  }

  if (v5 != 1)
  {
    goto LABEL_16;
  }

  v6 = "Active";
LABEL_19:
  v7 = *(this + 5);
  if (v7)
  {
    v8 = *(v7 + 8);
    if (v8)
    {
      v7 = v8 - 16;
    }

    else
    {
      v7 = 0;
    }
  }

  v10 = 134218754;
  v11 = this;
  v12 = 2080;
  v13 = v4;
  v14 = 2080;
  v15 = v6;
  v16 = 2048;
  v17 = v7;
  _os_log_impl(&dword_19D52D000, v2, OS_LOG_TYPE_DEFAULT, "%p - [InitiatingAction=%s][State=%s] SOAuthorizationSession::shouldStart: m_page=%p", &v10, 0x2Au);
LABEL_24:
  v9 = *(this + 5);
  if (v9)
  {
    if (*(v9 + 8))
    {
      (*(*this + 16))(this);
    }
  }
}

void WebKit::SOAuthorizationSession::fallBackToWebPath(WebKit::SOAuthorizationSession *this)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = qword_1ED640838;
  if (os_log_type_enabled(qword_1ED640838, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(this + 48);
    if (*(this + 48))
    {
      if (v3 == 2)
      {
        v4 = "SubFrame";
      }

      else if (v3 == 1)
      {
        v4 = "PopUp";
      }

      else
      {
        v4 = 0;
      }
    }

    else
    {
      v4 = "Redirect";
    }

    v5 = *(this + 16);
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        v6 = "Waiting";
        goto LABEL_19;
      }

      if (v5 == 3)
      {
        v6 = "Completed";
        goto LABEL_19;
      }
    }

    else
    {
      if (!*(this + 16))
      {
        v6 = "Idle";
        goto LABEL_19;
      }

      if (v5 == 1)
      {
        v6 = "Active";
LABEL_19:
        v12 = 134218498;
        v13 = this;
        v14 = 2080;
        v15 = v4;
        v16 = 2080;
        v17 = v6;
        _os_log_impl(&dword_19D52D000, v2, OS_LOG_TYPE_DEFAULT, "%p - [InitiatingAction=%s][State=%s] SOAuthorizationSession::fallBackToWebPath", &v12, 0x20u);
        goto LABEL_20;
      }
    }

    v6 = 0;
    goto LABEL_19;
  }

LABEL_20:
  v7 = *(this + 16);
  if (v7 == 1)
  {
    WebKit::SOAuthorizationSession::becomeCompleted(this);
    (*(*this + 24))(this);
    return;
  }

  v8 = qword_1ED640838;
  if (os_log_type_enabled(qword_1ED640838, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(this + 48);
    if (*(this + 48))
    {
      if (v9 == 2)
      {
        v10 = "SubFrame";
        if (!v7)
        {
          goto LABEL_36;
        }

        goto LABEL_31;
      }

      if (v9 == 1)
      {
        v10 = "PopUp";
        if (!v7)
        {
          goto LABEL_36;
        }

LABEL_31:
        if (v7 == 3)
        {
          v11 = "Completed";
        }

        else if (v7 == 2)
        {
          v11 = "Waiting";
        }

        else
        {
          v11 = 0;
        }

        goto LABEL_38;
      }

      v10 = 0;
      if (v7)
      {
        goto LABEL_31;
      }
    }

    else
    {
      v10 = "Redirect";
      if (v7)
      {
        goto LABEL_31;
      }
    }

LABEL_36:
    v11 = "Idle";
LABEL_38:
    v12 = 134218498;
    v13 = this;
    v14 = 2080;
    v15 = v10;
    v16 = 2080;
    v17 = v11;
    _os_log_impl(&dword_19D52D000, v8, OS_LOG_TYPE_DEFAULT, "%p - [InitiatingAction=%s][State=%s] SOAuthorizationSession::fallBackToWebPath: Returning early since not active.", &v12, 0x20u);
  }

  WebKit::SOAuthorizationSession::dismissViewController(this);
}

void WebKit::SOAuthorizationSession::complete(WebKit::SOAuthorizationSession *this, NSHTTPURLResponse *a2, NSData *a3)
{
  v109 = *MEMORY[0x1E69E9840];
  v6 = qword_1ED640838;
  if (os_log_type_enabled(qword_1ED640838, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(this + 48);
    if (*(this + 48))
    {
      if (v7 == 2)
      {
        v8 = "SubFrame";
      }

      else if (v7 == 1)
      {
        v8 = "PopUp";
      }

      else
      {
        v8 = 0;
      }
    }

    else
    {
      v8 = "Redirect";
    }

    v9 = *(this + 16);
    if (v9 > 1)
    {
      if (v9 == 2)
      {
        v10 = "Waiting";
        goto LABEL_19;
      }

      if (v9 == 3)
      {
        v10 = "Completed";
        goto LABEL_19;
      }
    }

    else
    {
      if (!*(this + 16))
      {
        v10 = "Idle";
        goto LABEL_19;
      }

      if (v9 == 1)
      {
        v10 = "Active";
LABEL_19:
        v11 = [(NSHTTPURLResponse *)a2 statusCode];
        v12 = *(this + 7);
        *buf = 134219010;
        *&buf[4] = this;
        *&buf[12] = 2080;
        *&buf[14] = v8;
        v100 = 2080;
        v101 = v10;
        v102 = 1024;
        *v103 = v11;
        *&v103[4] = 2048;
        *&v103[6] = v12;
        _os_log_impl(&dword_19D52D000, v6, OS_LOG_TYPE_DEFAULT, "%p - [InitiatingAction=%s][State=%s] SOAuthorizationSession::complete: httpState=%d, m_viewController=%p", buf, 0x30u);
        goto LABEL_20;
      }
    }

    v10 = 0;
    goto LABEL_19;
  }

LABEL_20:
  v13 = *(this + 16);
  if (v13 != 1)
  {
    v17 = qword_1ED640838;
    if (!os_log_type_enabled(qword_1ED640838, OS_LOG_TYPE_DEFAULT))
    {
LABEL_60:
      WebKit::SOAuthorizationSession::dismissViewController(this);
      return;
    }

    v18 = *(this + 48);
    if (*(this + 48))
    {
      if (v18 != 2)
      {
        if (v18 == 1)
        {
          v19 = "PopUp";
          if (!v13)
          {
            goto LABEL_55;
          }
        }

        else
        {
          v19 = 0;
          if (!v13)
          {
            goto LABEL_55;
          }
        }

LABEL_50:
        if (v13 == 3)
        {
          v44 = "Completed";
        }

        else if (v13 == 2)
        {
          v44 = "Waiting";
        }

        else
        {
          v44 = 0;
        }

        goto LABEL_59;
      }

      v19 = "SubFrame";
      if (v13)
      {
        goto LABEL_50;
      }
    }

    else
    {
      v19 = "Redirect";
      if (v13)
      {
        goto LABEL_50;
      }
    }

LABEL_55:
    v44 = "Idle";
LABEL_59:
    *buf = 134218498;
    *&buf[4] = this;
    *&buf[12] = 2080;
    *&buf[14] = v19;
    v100 = 2080;
    v101 = v44;
    _os_log_impl(&dword_19D52D000, v17, OS_LOG_TYPE_DEFAULT, "%p - [InitiatingAction=%s][State=%s] SOAuthorizationSession::complete: Returning early since not active.", buf, 0x20u);
    goto LABEL_60;
  }

  WebKit::SOAuthorizationSession::becomeCompleted(this);
  WebCore::ResourceResponse::ResourceResponse(v96, &a2->super);
  if (!(*(*this + 48))(this, v96))
  {
    v20 = WebCore::ResourceRequestBase::url((*(this + 4) + 40));
    WebCore::SecurityOrigin::create(buf, v20, v21);
    v22 = *buf;
    v23 = WebCore::ResourceResponseBase::url(v96);
    WebCore::SecurityOrigin::create(&v95, v23, v24);
    isSameOriginAs = WebCore::SecurityOrigin::isSameOriginAs(v22, v95.n128_u64[0]);
    v27 = v95.n128_u64[0];
    v95.n128_u64[0] = 0;
    if (v27)
    {
      WTF::ThreadSafeRefCounted<WebCore::SecurityOrigin,(WTF::DestructionThread)0>::deref(v27, v25);
    }

    v28 = *buf;
    *buf = 0;
    if (v28)
    {
      WTF::ThreadSafeRefCounted<WebCore::SecurityOrigin,(WTF::DestructionThread)0>::deref(v28, v25);
      if (isSameOriginAs)
      {
LABEL_37:
        v29 = MEMORY[0x1E695ABF8];
        v30 = [(NSHTTPURLResponse *)a2 allHeaderFields];
        v31 = WebCore::ResourceResponseBase::url(v96);
        WTF::URL::createCFURL(&v94, v31);
        v32 = [v29 cookiesWithResponseHeaderFields:v30 forURL:v94];
        v33 = [v32 count];
        v34 = v33;
        v95 = 0uLL;
        if (v33)
        {
          if (v33 >= 0x1C71C72)
          {
            __break(0xC471u);
            return;
          }

          v35 = 144 * v33;
          v36 = WTF::fastMalloc((144 * v33));
          v37 = 0;
          v95.n128_u32[2] = v35 / 0x90;
          v95.n128_u64[0] = v36;
          v38 = v36;
          do
          {
            MEMORY[0x19EB0E900](buf, [v32 objectAtIndexedSubscript:v37]);
            WebCore::Cookie::Cookie(v38, buf);
            ++v37;
            WebCore::Cookie::~Cookie(buf, v39);
            v38 += 144;
          }

          while (v34 != v37);
          v95.n128_u32[3] = v34;
        }

        v40 = v94;
        v94 = 0;
        if (v40)
        {
        }

        v41 = qword_1ED640838;
        if (!os_log_type_enabled(qword_1ED640838, OS_LOG_TYPE_DEFAULT))
        {
LABEL_111:
          if (v95.n128_u32[3])
          {
            v58 = *(this + 5);
            if (v58)
            {
              v59 = *(v58 + 8);
              if (v59)
              {
                CFRetain(*(v59 - 8));
                v60 = v95.n128_u32[3];
                if (!v95.n128_u32[3])
                {
                  goto LABEL_181;
                }

                v61 = 0;
                v62 = v95.n128_u64[0];
                do
                {
                  if (*v62)
                  {
                    v63 = *(*v62 + 4) + 1;
                  }

                  else
                  {
                    v63 = 1;
                  }

                  v64 = v62[1];
                  if (v64)
                  {
                    LODWORD(v64) = *(v64 + 4);
                  }

                  v61 += (v64 + v63);
                  v62 += 18;
                }

                while (v62 != (v95.n128_u64[0] + 144 * v95.n128_u32[3]));
                v72 = qword_1ED640838;
                if (!os_log_type_enabled(qword_1ED640838, OS_LOG_TYPE_DEFAULT))
                {
                  goto LABEL_181;
                }

                v73 = *(this + 48);
                if (*(this + 48))
                {
                  if (v73 == 2)
                  {
                    v74 = "SubFrame";
                  }

                  else if (v73 == 1)
                  {
                    v74 = "PopUp";
                  }

                  else
                  {
                    v74 = 0;
                  }
                }

                else
                {
                  v74 = "Redirect";
                }

                v79 = *(this + 16);
                if (v79 > 1)
                {
                  if (v79 == 2)
                  {
                    v80 = "Waiting";
                    goto LABEL_180;
                  }

                  if (v79 == 3)
                  {
                    v80 = "Completed";
                    goto LABEL_180;
                  }
                }

                else
                {
                  if (!*(this + 16))
                  {
                    v80 = "Idle";
                    goto LABEL_180;
                  }

                  if (v79 == 1)
                  {
                    v80 = "Active";
LABEL_180:
                    v81 = *(v59 + 392);
                    CFRetain(*(v81 + 8));
                    *buf = 134219266;
                    *&buf[4] = this;
                    *&buf[12] = 2080;
                    *&buf[14] = v74;
                    v100 = 2080;
                    v101 = v80;
                    v102 = 2048;
                    *v103 = v60;
                    *&v103[8] = 2048;
                    *&v103[10] = v61;
                    v104 = 2048;
                    v105 = v81;
                    _os_log_impl(&dword_19D52D000, v72, OS_LOG_TYPE_DEFAULT, "%p - [InitiatingAction=%s][State=%s] SOAuthorizationSession::complete: Setting %zu cookies with total header size ~%zu bytes in data store %p", buf, 0x3Eu);
                    CFRelease(*(v81 + 8));
LABEL_181:
                    v82 = *(v59 + 392);
                    CFRetain(v82[1]);
                    v83 = WebKit::WebsiteDataStore::cookieStore(v82);
                    CFRetain(*(v83 + 1));
                    *buf = this;
                    v84 = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::NetworkDataTask,(WTF::DestructionThread)1>::controlBlock(this + 1);
                    *&buf[8] = WTF::ThreadSafeWeakPtrControlBlock::weakRef(v84);
                    WebCore::ResourceResponseBase::ResourceResponseBase(&buf[16], v96);
                    v85 = v97;
                    v97 = 0;
                    v106 = v85;
                    v107 = v98;
                    v108 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithData:a3];
                    v86 = WTF::fastMalloc(0x128);
                    *v86 = &unk_1F1106FA8;
                    *(v86 + 8) = *buf;
                    *(v86 + 16) = *&buf[8];
                    *buf = 0;
                    *&buf[8] = 0;
                    WebCore::ResourceResponseBase::ResourceResponseBase(v86 + 24, &buf[16]);
                    *(v86 + 272) = v106;
                    *(v86 + 280) = v107;
                    v87 = v108;
                    v106 = 0;
                    v108 = 0;
                    *(v86 + 288) = v87;
                    v94 = v86;
                    API::HTTPCookieStore::setCookies(v83, &v95, &v94);
                    if (v94)
                    {
                      (*(*v94 + 8))(v94);
                    }

                    v89 = v108;
                    v108 = 0;
                    if (v89)
                    {
                    }

                    v90 = v106;
                    v106 = 0;
                    if (v90)
                    {
                    }

                    WebCore::ResourceResponseBase::~ResourceResponseBase(&buf[16], v88);
                    v92 = *&buf[8];
                    *&buf[8] = 0;
                    if (v92)
                    {
                      WTF::ThreadSafeWeakPtrControlBlock::weakDeref(v92, v91);
                    }

                    CFRelease(*(v83 + 1));
                    CFRelease(v82[1]);
                    CFRelease(*(v59 - 8));
                    goto LABEL_190;
                  }
                }

                v80 = 0;
                goto LABEL_180;
              }
            }

            v65 = qword_1ED640838;
            if (!os_log_type_enabled(qword_1ED640838, OS_LOG_TYPE_DEFAULT))
            {
LABEL_190:
              WTF::Vector<WebCore::Cookie,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v95, v66);
              goto LABEL_191;
            }

            v67 = *(this + 48);
            if (*(this + 48))
            {
              if (v67 == 2)
              {
                v68 = "SubFrame";
              }

              else if (v67 == 1)
              {
                v68 = "PopUp";
              }

              else
              {
                v68 = 0;
              }
            }

            else
            {
              v68 = "Redirect";
            }

            v75 = *(this + 16);
            if (v75 > 1)
            {
              if (v75 == 2)
              {
                v76 = "Waiting";
                goto LABEL_151;
              }

              if (v75 == 3)
              {
                v76 = "Completed";
                goto LABEL_151;
              }
            }

            else
            {
              if (!*(this + 16))
              {
                v76 = "Idle";
                goto LABEL_151;
              }

              if (v75 == 1)
              {
                v76 = "Active";
LABEL_151:
                *buf = 134218498;
                *&buf[4] = this;
                *&buf[12] = 2080;
                *&buf[14] = v68;
                v100 = 2080;
                v101 = v76;
                _os_log_impl(&dword_19D52D000, v65, OS_LOG_TYPE_DEFAULT, "%p - [InitiatingAction=%s][State=%s] SOAuthorizationSession::complete:  Returning early because m_page is null.", buf, 0x20u);
                goto LABEL_190;
              }
            }

            v76 = 0;
            goto LABEL_151;
          }

          v69 = qword_1ED640838;
          if (!os_log_type_enabled(qword_1ED640838, OS_LOG_TYPE_DEFAULT))
          {
LABEL_166:
            (*(*this + 40))(this, v96, a3);
            goto LABEL_190;
          }

          v70 = *(this + 48);
          if (*(this + 48))
          {
            if (v70 == 2)
            {
              v71 = "SubFrame";
            }

            else if (v70 == 1)
            {
              v71 = "PopUp";
            }

            else
            {
              v71 = 0;
            }
          }

          else
          {
            v71 = "Redirect";
          }

          v77 = *(this + 16);
          if (v77 > 1)
          {
            if (v77 == 2)
            {
              v78 = "Waiting";
              goto LABEL_165;
            }

            if (v77 == 3)
            {
              v78 = "Completed";
              goto LABEL_165;
            }
          }

          else
          {
            if (!*(this + 16))
            {
              v78 = "Idle";
              goto LABEL_165;
            }

            if (v77 == 1)
            {
              v78 = "Active";
LABEL_165:
              *buf = 134218498;
              *&buf[4] = this;
              *&buf[12] = 2080;
              *&buf[14] = v71;
              v100 = 2080;
              v101 = v78;
              _os_log_impl(&dword_19D52D000, v69, OS_LOG_TYPE_DEFAULT, "%p - [InitiatingAction=%s][State=%s] SOAuthorizationSession::complete:  No cookies to set. Completing (internal).", buf, 0x20u);
              goto LABEL_166;
            }
          }

          v78 = 0;
          goto LABEL_165;
        }

        v42 = *(this + 48);
        if (*(this + 48))
        {
          if (v42 == 2)
          {
            v43 = "SubFrame";
          }

          else if (v42 == 1)
          {
            v43 = "PopUp";
          }

          else
          {
            v43 = 0;
          }
        }

        else
        {
          v43 = "Redirect";
        }

        v52 = *(this + 16);
        if (v52 > 1)
        {
          if (v52 == 2)
          {
            v53 = "Waiting";
            goto LABEL_110;
          }

          if (v52 == 3)
          {
            v53 = "Completed";
            goto LABEL_110;
          }
        }

        else
        {
          if (!*(this + 16))
          {
            v53 = "Idle";
            goto LABEL_110;
          }

          if (v52 == 1)
          {
            v53 = "Active";
LABEL_110:
            v55 = WebCore::ResourceResponseBase::httpStatusCode(v96);
            v56 = v95.n128_u32[3];
            v57 = [(NSData *)a3 length];
            *buf = 134219266;
            *&buf[4] = this;
            *&buf[12] = 2080;
            *&buf[14] = v43;
            v100 = 2080;
            v101 = v53;
            v102 = 1024;
            *v103 = v55;
            *&v103[4] = 1024;
            *&v103[6] = v56 != 0;
            *&v103[10] = 1024;
            *&v103[12] = v57 != 0;
            _os_log_impl(&dword_19D52D000, v41, OS_LOG_TYPE_DEFAULT, "%p - [InitiatingAction=%s][State=%s] SOAuthorizationSession::complete: (httpStatusCode=%d, hasCookies=%d, hasData=%d)", buf, 0x32u);
            goto LABEL_111;
          }
        }

        v53 = 0;
        goto LABEL_110;
      }
    }

    else if (isSameOriginAs)
    {
      goto LABEL_37;
    }

    v14 = qword_1ED640838;
    if (!os_log_type_enabled(qword_1ED640838, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_106;
    }

    v48 = *(this + 48);
    if (*(this + 48))
    {
      if (v48 == 2)
      {
        v49 = "SubFrame";
      }

      else if (v48 == 1)
      {
        v49 = "PopUp";
      }

      else
      {
        v49 = 0;
      }
    }

    else
    {
      v49 = "Redirect";
    }

    v50 = *(this + 16);
    if (v50 > 1)
    {
      if (v50 == 2)
      {
        v51 = "Waiting";
        goto LABEL_104;
      }

      if (v50 == 3)
      {
        v51 = "Completed";
        goto LABEL_104;
      }
    }

    else
    {
      if (!*(this + 16))
      {
        v51 = "Idle";
        goto LABEL_104;
      }

      if (v50 == 1)
      {
        v51 = "Active";
LABEL_104:
        *buf = 134218498;
        *&buf[4] = this;
        *&buf[12] = 2080;
        *&buf[14] = v49;
        v100 = 2080;
        v101 = v51;
        v47 = "%p - [InitiatingAction=%s][State=%s] SOAuthorizationSession::complete:  Origins don't match. Falling back to web path.";
        goto LABEL_105;
      }
    }

    v51 = 0;
    goto LABEL_104;
  }

  v14 = qword_1ED640838;
  if (os_log_type_enabled(qword_1ED640838, OS_LOG_TYPE_DEFAULT))
  {
    v15 = *(this + 48);
    if (*(this + 48))
    {
      if (v15 == 2)
      {
        v16 = "SubFrame";
      }

      else if (v15 == 1)
      {
        v16 = "PopUp";
      }

      else
      {
        v16 = 0;
      }
    }

    else
    {
      v16 = "Redirect";
    }

    v45 = *(this + 16);
    if (v45 > 1)
    {
      if (v45 == 2)
      {
        v46 = "Waiting";
        goto LABEL_74;
      }

      if (v45 == 3)
      {
        v46 = "Completed";
        goto LABEL_74;
      }
    }

    else
    {
      if (!*(this + 16))
      {
        v46 = "Idle";
        goto LABEL_74;
      }

      if (v45 == 1)
      {
        v46 = "Active";
LABEL_74:
        *buf = 134218498;
        *&buf[4] = this;
        *&buf[12] = 2080;
        *&buf[14] = v16;
        v100 = 2080;
        v101 = v46;
        v47 = "%p - [InitiatingAction=%s][State=%s] SOAuthorizationSession::complete: CSP failed. Falling back to web path.";
LABEL_105:
        _os_log_impl(&dword_19D52D000, v14, OS_LOG_TYPE_DEFAULT, v47, buf, 0x20u);
        goto LABEL_106;
      }
    }

    v46 = 0;
    goto LABEL_74;
  }

LABEL_106:
  (*(*this + 24))(this);
LABEL_191:
  v93 = v97;
  v97 = 0;
  if (v93)
  {
  }

  WebCore::ResourceResponseBase::~ResourceResponseBase(v96, v54);
}

void sub_19DD4989C(_Unwind_Exception *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, WTF::ThreadSafeWeakPtrControlBlock *a46)
{
  v52 = *(v46 + 2);
  *(v46 + 2) = 0;
  if (v52)
  {
    WTF::ThreadSafeWeakPtrControlBlock::weakDeref(v52, a2);
  }

  WTF::fastFree(v46, a2);
  v54 = STACK[0x238];
  STACK[0x238] = 0;
  if (v54)
  {
  }

  v55 = STACK[0x228];
  STACK[0x228] = 0;
  if (v55)
  {
  }

  WebCore::ResourceResponseBase::~ResourceResponseBase((v50 + 16), v53);
  v57 = a46;
  a46 = 0;
  if (v57)
  {
    WTF::ThreadSafeWeakPtrControlBlock::weakDeref(v57, v56);
  }

  CFRelease(*(v48 + 8));
  CFRelease(*(v47 + 8));
  CFRelease(*(v49 - 8));
  WTF::Vector<WebCore::Cookie,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&a10, v58);
  v60 = a43;
  a43 = 0;
  if (v60)
  {
  }

  WebCore::ResourceResponseBase::~ResourceResponseBase(&a12, v59);
  _Unwind_Resume(a1);
}

void WebKit::SOAuthorizationSession::presentViewController(uint64_t a1, void *a2, uint64_t a3)
{
  v43 = *MEMORY[0x1E69E9840];
  v6 = qword_1ED640838;
  if (os_log_type_enabled(qword_1ED640838, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 48);
    if (*(a1 + 48))
    {
      if (v7 == 2)
      {
        v8 = "SubFrame";
      }

      else if (v7 == 1)
      {
        v8 = "PopUp";
      }

      else
      {
        v8 = 0;
      }
    }

    else
    {
      v8 = "Redirect";
    }

    v9 = *(a1 + 16);
    if (v9 > 1)
    {
      if (v9 == 2)
      {
        v10 = "Waiting";
        goto LABEL_19;
      }

      if (v9 == 3)
      {
        v10 = "Completed";
        goto LABEL_19;
      }
    }

    else
    {
      if (!*(a1 + 16))
      {
        v10 = "Idle";
        goto LABEL_19;
      }

      if (v9 == 1)
      {
        v10 = "Active";
LABEL_19:
        v11 = *(a1 + 56);
        v31 = 134218754;
        v32 = a1;
        v33 = 2080;
        v34 = v8;
        v35 = 2080;
        v36 = v10;
        v37 = 2048;
        v38 = v11;
        _os_log_impl(&dword_19D52D000, v6, OS_LOG_TYPE_DEFAULT, "%p - [InitiatingAction=%s][State=%s] SOAuthorizationSession::presentViewController: m_viewController=%p", &v31, 0x2Au);
        goto LABEL_20;
      }
    }

    v10 = 0;
    goto LABEL_19;
  }

LABEL_20:
  v12 = *(a1 + 40);
  if (v12 && (v13 = *(v12 + 8)) != 0)
  {
    CFRetain(*(v13 - 8));
    v14 = v13 - 16;
    if ((*(v13 + 849) & 1) == 0 && !*(a1 + 56))
    {
      if (a2)
      {
        v25 = a2;
        v26 = *(a1 + 56);
        *(a1 + 56) = a2;
        if (v26)
        {
        }
      }

      else
      {
        *(a1 + 56) = 0;
      }

      v27 = (*(**(v13 + 104) + 504))(*(v13 + 104));
      if (v27)
      {
        goto LABEL_62;
      }

      WeakRetained = objc_loadWeakRetained((*(v13 + 16) + 2248));
      v27 = [WeakRetained _wk_viewControllerForFullScreenPresentation];
      if (WeakRetained)
      {
      }

      if (v27)
      {
LABEL_62:
        [v27 presentViewController:*(a1 + 56) animated:1 completion:0];
        (*(a3 + 16))(a3, 1, 0);
      }

      else
      {
        v29 = objc_alloc(MEMORY[0x1E696ABC0]);
        v30 = [v29 initWithDomain:PAL::get_AppSSO_SOErrorDomain(v29) code:-7 userInfo:0];
        (*(a3 + 16))(a3, 0, v30);
        if (v30)
        {
        }
      }

      goto LABEL_48;
    }

    v15 = 0;
  }

  else
  {
    v14 = 0;
    v15 = 1;
  }

  v16 = qword_1ED640838;
  if (os_log_type_enabled(qword_1ED640838, OS_LOG_TYPE_DEFAULT))
  {
    v17 = *(a1 + 48);
    if (*(a1 + 48))
    {
      if (v17 == 2)
      {
        v18 = "SubFrame";
      }

      else if (v17 == 1)
      {
        v18 = "PopUp";
      }

      else
      {
        v18 = 0;
      }
    }

    else
    {
      v18 = "Redirect";
    }

    v19 = *(a1 + 16);
    if (v19 > 1)
    {
      if (v19 == 2)
      {
        v20 = "Waiting";
        if (!v14)
        {
          goto LABEL_42;
        }

        goto LABEL_44;
      }

      if (v19 == 3)
      {
        v20 = "Completed";
        if (v14)
        {
          goto LABEL_44;
        }

LABEL_42:
        v21 = 0;
LABEL_45:
        v22 = *(a1 + 56);
        v31 = 134219266;
        v32 = a1;
        v33 = 2080;
        v34 = v18;
        v35 = 2080;
        v36 = v20;
        v37 = 2048;
        v38 = v14;
        v39 = 1024;
        v40 = v21;
        v41 = 2048;
        v42 = v22;
        _os_log_impl(&dword_19D52D000, v16, OS_LOG_TYPE_DEFAULT, "%p - [InitiatingAction=%s][State=%s] SOAuthorizationSession::presentViewController: m_page=%p, m_page->isClosed=%d, m_viewController=%p", &v31, 0x3Au);
        goto LABEL_46;
      }
    }

    else
    {
      if (!*(a1 + 16))
      {
        v20 = "Idle";
        if (!v14)
        {
          goto LABEL_42;
        }

        goto LABEL_44;
      }

      if (v19 == 1)
      {
        v20 = "Active";
        if (!v14)
        {
          goto LABEL_42;
        }

LABEL_44:
        v21 = *(v14 + 865);
        goto LABEL_45;
      }
    }

    v20 = 0;
    if (v14)
    {
      goto LABEL_44;
    }

    goto LABEL_42;
  }

LABEL_46:
  v23 = objc_alloc(MEMORY[0x1E696ABC0]);
  v24 = [v23 initWithDomain:PAL::get_AppSSO_SOErrorDomain(v23) code:-7 userInfo:0];
  (*(a3 + 16))(a3, 0, v24);
  if (!v24)
  {
    if (v15)
    {
      return;
    }

    goto LABEL_48;
  }

  if ((v15 & 1) == 0)
  {
LABEL_48:
    CFRelease(*(v14 + 8));
  }
}

void sub_19DD49E40(_Unwind_Exception *a1)
{
  if (v1)
  {
  }

  CFRelease(*(v2 + 8));
  _Unwind_Resume(a1);
}

void WebKit::SubFrameSOAuthorizationSession::~SubFrameSOAuthorizationSession(WebKit::SubFrameSOAuthorizationSession *this)
{
  v2 = WebKit::WebFrameProxy::webFrame(*(this + 14), *(this + 14) != 0);
  if (v2)
  {
    v3 = v2;
    CFRetain(*(v2 + 8));
    WTF::WeakHashSet<WebKit::RemoteAudioSessionProxy,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::remove<WebKit::RemoteAudioSessionProxy>(v3 + 224, this + 12);
    CFRelease(*(v3 + 8));
  }

  v4 = *(this + 16);
  v5 = *(this + 17);
  v6 = *(this + 36);
  v7 = *(this + 15);
  v8 = (v4 - v7);
  if (v4 >= v7)
  {
    v4 = (v6 - v7);
    if (v6 >= v7)
    {
      if (v8 == -1)
      {
LABEL_11:
        v8 = v4;
        goto LABEL_12;
      }

      if (v4 >= v8)
      {
        goto LABEL_12;
      }
    }

LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (v4 > v6)
  {
    goto LABEL_10;
  }

  WTF::VectorTypeOperations<std::pair<WTF::URL,mpark::variant<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String>>>::destruct(*(this + 17), *(this + 16));
  v7 = *(this + 15);
  v8 = (v6 - v7);
  if (v6 < v7)
  {
    goto LABEL_10;
  }

LABEL_12:
  WTF::VectorTypeOperations<std::pair<WTF::URL,mpark::variant<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String>>>::destruct((v5 + (v7 << 6)), v8);
  v10 = *(this + 17);
  if (v10)
  {
    *(this + 17) = 0;
    *(this + 36) = 0;
    WTF::fastFree(v10, v9);
  }

  WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::~WeakPtrFactory(this + 13, v9);

  WebKit::NavigationSOAuthorizationSession::~NavigationSOAuthorizationSession(this, v11);
}

{
  WebKit::SubFrameSOAuthorizationSession::~SubFrameSOAuthorizationSession(this);

  WTF::fastFree(v1, v2);
}

void sub_19DD49F90(_Unwind_Exception *a1)
{
  v3 = *(v1 + 128);
  v4 = *(v1 + 136);
  v5 = *(v1 + 144);
  v6 = *(v1 + 120);
  v7 = (v3 - v6);
  if (v3 >= v6)
  {
    v8 = (v5 - v6);
    if (v5 < v6 || v7 != -1 && (v9 = v8 >= v7, v8 = v7, !v9))
    {
LABEL_12:
      JUMPOUT(0x19DD49F40);
    }
  }

  else
  {
    if (v3 > v5)
    {
      goto LABEL_12;
    }

    WTF::VectorTypeOperations<std::pair<WTF::URL,mpark::variant<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String>>>::destruct(*(v1 + 136), v3);
    v6 = *(v1 + 120);
    v8 = (v5 - v6);
    if (v5 < v6)
    {
      goto LABEL_12;
    }
  }

  WTF::VectorTypeOperations<std::pair<WTF::URL,mpark::variant<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String>>>::destruct((v4 + (v6 << 6)), v8);
  v11 = *(v1 + 136);
  if (v11)
  {
    *(v1 + 136) = 0;
    *(v1 + 144) = 0;
    WTF::fastFree(v11, v10);
  }

  WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::~WeakPtrFactory((v1 + 104), v10);
  WebKit::NavigationSOAuthorizationSession::~NavigationSOAuthorizationSession(v1, v12);
  _Unwind_Resume(a1);
}

void non-virtual thunk toWebKit::SubFrameSOAuthorizationSession::~SubFrameSOAuthorizationSession(WebKit::SubFrameSOAuthorizationSession *this)
{
  WebKit::SubFrameSOAuthorizationSession::~SubFrameSOAuthorizationSession((this - 64));
}

{
  WebKit::SubFrameSOAuthorizationSession::~SubFrameSOAuthorizationSession((this - 96));
}

{
  WebKit::SubFrameSOAuthorizationSession::~SubFrameSOAuthorizationSession((this - 64));

  WTF::fastFree(v1, v2);
}

{
  WebKit::SubFrameSOAuthorizationSession::~SubFrameSOAuthorizationSession((this - 96));

  WTF::fastFree(v1, v2);
}

WTF::StringImpl *WebKit::SubFrameSOAuthorizationSession::fallBackToWebPathInternal(WebKit::SubFrameSOAuthorizationSession *this)
{
  v30 = *MEMORY[0x1E69E9840];
  v2 = qword_1ED640838;
  if (os_log_type_enabled(qword_1ED640838, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(this + 48);
    v4 = "SubFrame";
    v5 = "PopUp";
    if (v3 != 1)
    {
      v5 = 0;
    }

    if (v3 != 2)
    {
      v4 = v5;
    }

    if (*(this + 48))
    {
      v6 = v4;
    }

    else
    {
      v6 = "Redirect";
    }

    v7 = *(this + 16);
    if (v7 > 1)
    {
      if (v7 == 2)
      {
        v8 = "Waiting";
        goto LABEL_19;
      }

      if (v7 == 3)
      {
        v8 = "Completed";
        goto LABEL_19;
      }
    }

    else
    {
      if (!*(this + 16))
      {
        v8 = "Idle";
        goto LABEL_19;
      }

      if (v7 == 1)
      {
        v8 = "Active";
LABEL_19:
        v9 = *(this + 4);
        *buf = 134218754;
        *&buf[4] = this;
        *&buf[12] = 2080;
        *&buf[14] = v6;
        *&buf[22] = 2080;
        *&v29[0] = v8;
        WORD4(v29[0]) = 2048;
        *(v29 + 10) = v9;
        _os_log_impl(&dword_19D52D000, v2, OS_LOG_TYPE_DEFAULT, "%p - [InitiatingAction=%s][State=%s] SubFrameSOAuthorizationSession::fallBackToWebPathInternal: navigationAction=%p", buf, 0x2Au);
        goto LABEL_20;
      }
    }

    v8 = 0;
    goto LABEL_19;
  }

LABEL_20:
  v10 = WebCore::ResourceRequestBase::url((*(this + 4) + 40));
  v11 = *v10;
  if (*v10)
  {
    atomic_fetch_add_explicit(v11, 2u, memory_order_relaxed);
  }

  *buf = v11;
  v12 = *(v10 + 24);
  *&buf[8] = *(v10 + 8);
  v29[0] = v12;
  v13 = WTF::fastMalloc(0x45);
  qmemcpy(v13, "<script>parent.postMessage('SOAuthorizationDidCancel', '*');</script>", 69);
  v26[0] = v13;
  v26[1] = 0x4500000045;
  v27 = 0;
  WebKit::SubFrameSOAuthorizationSession::appendRequestToLoad(this, buf, v26);
  mpark::detail::move_constructor<mpark::detail::traits<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String>,(mpark::detail::Trait)1>::~move_constructor(v26, v14);
  v16 = *buf;
  *buf = 0;
  if (v16 && atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v16, v15);
  }

  v17 = WebCore::ResourceRequestBase::url((*(this + 4) + 40));
  v18 = *v17;
  if (*v17)
  {
    atomic_fetch_add_explicit(v18, 2u, memory_order_relaxed);
  }

  *buf = v18;
  v19 = *(v17 + 24);
  *&buf[8] = *(v17 + 8);
  v29[0] = v19;
  WebCore::ResourceRequestBase::httpReferrer(&v25, (*(this + 4) + 40));
  v20 = v25;
  v25 = 0;
  v26[0] = v20;
  v27 = 1;
  WebKit::SubFrameSOAuthorizationSession::appendRequestToLoad(this, buf, v26);
  mpark::detail::move_constructor<mpark::detail::traits<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String>,(mpark::detail::Trait)1>::~move_constructor(v26, v21);
  v23 = v25;
  v25 = 0;
  if (v23 && atomic_fetch_add_explicit(v23, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v23, v22);
  }

  result = *buf;
  *buf = 0;
  if (result)
  {
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v22);
    }
  }

  return result;
}

void sub_19DD4A348(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, char a10, uint64_t a11, uint64_t a12, WTF::StringImpl *a13)
{
  mpark::detail::move_constructor<mpark::detail::traits<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String>,(mpark::detail::Trait)1>::~move_constructor(&a10, a2);
  if (a9 && atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a9, v14);
  }

  v15 = a13;
  a13 = 0;
  if (v15)
  {
    if (atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v15, v14);
    }
  }

  _Unwind_Resume(a1);
}

void WebKit::SubFrameSOAuthorizationSession::appendRequestToLoad(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  WTF::URL::URL(v27, a2);
  mpark::detail::move_constructor<mpark::detail::traits<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String>,(mpark::detail::Trait)1>::move_constructor(v28, a3);
  v6 = *(a1 + 120);
  v5 = *(a1 + 128);
  if (v6)
  {
    if (v5 + 1 != v6)
    {
      goto LABEL_28;
    }

    LODWORD(v7) = *(a1 + 144);
  }

  else
  {
    v7 = *(a1 + 144);
    if (v5)
    {
      if (v5 != v7 - 1)
      {
        goto LABEL_28;
      }
    }

    else if (v7)
    {
      v5 = 0;
      goto LABEL_28;
    }
  }

  v8 = v7;
  v9 = (v7 >> 2) + v7;
  if (v9 >= 0x3FFFFFF)
  {
LABEL_41:
    __break(0xC471u);
    return;
  }

  v10 = *(a1 + 136);
  if (v9 <= 0xF)
  {
    v9 = 15;
  }

  v11 = v9 + 1;
  v12 = WTF::fastMalloc(((v9 + 1) << 6));
  *(a1 + 144) = v11;
  *(a1 + 136) = v12;
  v13 = *(a1 + 120);
  v14 = *(a1 + 128);
  v15 = v14 - v13;
  if (v14 >= v13)
  {
    if (v8 < v13)
    {
LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

    if (v15 == -1)
    {
      v15 = v8 - v13;
    }

    else if (v8 - v13 < v15)
    {
      goto LABEL_40;
    }

    WTF::VectorMover<false,std::pair<WTF::URL,mpark::variant<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String>>>::move((v10 + 64 * v13), v10 + 8 * v13 + 8 * v15, v12 + (v13 << 6));
  }

  else
  {
    if (v14 > v8)
    {
      goto LABEL_40;
    }

    WTF::VectorMover<false,std::pair<WTF::URL,mpark::variant<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String>>>::move(v10, v10 + 8 * v14, v12);
    v16 = *(a1 + 120);
    if (v8 < v16)
    {
      goto LABEL_40;
    }

    v17 = *(a1 + 144);
    if (v17 < v8 - v16)
    {
      goto LABEL_40;
    }

    v18 = v17 - (v8 - v16);
    WTF::VectorMover<false,std::pair<WTF::URL,mpark::variant<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String>>>::move((v10 + 64 * v16), v10 + 8 * v8, *(a1 + 136) + (v18 << 6));
    *(a1 + 120) = v18;
  }

  if (v10)
  {
    if (*(a1 + 136) == v10)
    {
      *(a1 + 136) = 0;
      *(a1 + 144) = 0;
    }

    WTF::fastFree(v10, v19);
  }

  v5 = *(a1 + 128);
LABEL_28:
  if (v5 >= *(a1 + 144))
  {
    goto LABEL_40;
  }

  std::pair<WTF::URL,mpark::variant<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String>>::pair[abi:sn200100](*(a1 + 136) + (v5 << 6), v27);
  v21 = *(a1 + 128);
  if (v21 == *(a1 + 144) - 1)
  {
    v22 = 0;
  }

  else
  {
    v22 = v21 + 1;
  }

  *(a1 + 128) = v22;
  mpark::detail::move_constructor<mpark::detail::traits<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String>,(mpark::detail::Trait)1>::~move_constructor(v28, v20);
  v24 = v27[0];
  v27[0] = 0;
  if (v24 && atomic_fetch_add_explicit(v24, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v24, v23);
  }

  v25 = *(a1 + 120);
  v26 = *(a1 + 128);
  if (v25 > v26)
  {
    v26 += *(a1 + 144);
  }

  if (v26 - v25 == 1)
  {
    WebKit::SubFrameSOAuthorizationSession::loadRequestToFrame(a1);
  }
}

void sub_19DD4A5F8(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9)
{
  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

WTF::StringImpl *WebKit::SubFrameSOAuthorizationSession::abortInternal(WebKit::SubFrameSOAuthorizationSession *this)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = qword_1ED640838;
  if (os_log_type_enabled(qword_1ED640838, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(this + 48);
    v4 = "SubFrame";
    v5 = "PopUp";
    if (v3 != 1)
    {
      v5 = 0;
    }

    if (v3 != 2)
    {
      v4 = v5;
    }

    if (*(this + 48))
    {
      v6 = v4;
    }

    else
    {
      v6 = "Redirect";
    }

    v7 = *(this + 16);
    if (v7 > 1)
    {
      if (v7 == 2)
      {
        v8 = "Waiting";
        goto LABEL_19;
      }

      if (v7 == 3)
      {
        v8 = "Completed";
        goto LABEL_19;
      }
    }

    else
    {
      if (!*(this + 16))
      {
        v8 = "Idle";
        goto LABEL_19;
      }

      if (v7 == 1)
      {
        v8 = "Active";
LABEL_19:
        v10 = 134218498;
        v11 = this;
        v12 = 2080;
        v13 = v6;
        v14 = 2080;
        v15 = v8;
        _os_log_impl(&dword_19D52D000, v2, OS_LOG_TYPE_DEFAULT, "%p - [InitiatingAction=%s][State=%s] SubFrameSOAuthorizationSession::abortInternal", &v10, 0x20u);
        return WebKit::SubFrameSOAuthorizationSession::fallBackToWebPathInternal(this);
      }
    }

    v8 = 0;
    goto LABEL_19;
  }

  return WebKit::SubFrameSOAuthorizationSession::fallBackToWebPathInternal(this);
}

NSUInteger WebKit::SubFrameSOAuthorizationSession::completeInternal(WebKit::SubFrameSOAuthorizationSession *this, const WebCore::ResourceResponse *a2, NSData *a3)
{
  v28 = *MEMORY[0x1E69E9840];
  v6 = qword_1ED640838;
  if (os_log_type_enabled(qword_1ED640838, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(this + 48);
    v8 = "SubFrame";
    v9 = "PopUp";
    if (v7 != 1)
    {
      v9 = 0;
    }

    if (v7 != 2)
    {
      v8 = v9;
    }

    if (*(this + 48))
    {
      v10 = v8;
    }

    else
    {
      v10 = "Redirect";
    }

    v11 = *(this + 16);
    if (v11 > 1)
    {
      if (v11 == 2)
      {
        v12 = "Waiting";
        goto LABEL_19;
      }

      if (v11 == 3)
      {
        v12 = "Completed";
        goto LABEL_19;
      }
    }

    else
    {
      if (!*(this + 16))
      {
        v12 = "Idle";
        goto LABEL_19;
      }

      if (v11 == 1)
      {
        v12 = "Active";
LABEL_19:
        *buf = 134218754;
        *&buf[4] = this;
        *&buf[12] = 2080;
        *&buf[14] = v10;
        *&buf[22] = 2080;
        *&v27 = v12;
        WORD4(v27) = 1024;
        *(&v27 + 10) = WebCore::ResourceResponseBase::httpStatusCode(a2);
        _os_log_impl(&dword_19D52D000, v6, OS_LOG_TYPE_DEFAULT, "%p - [InitiatingAction=%s][State=%s] SubFrameSOAuthorizationSession::completeInternal: httpState=%d", buf, 0x26u);
        goto LABEL_20;
      }
    }

    v12 = 0;
    goto LABEL_19;
  }

LABEL_20:
  if (WebCore::ResourceResponseBase::httpStatusCode(a2) != 200)
  {
    return WebKit::SubFrameSOAuthorizationSession::fallBackToWebPathInternal(this);
  }

  v13 = WebCore::ResourceResponseBase::url(a2);
  v14 = *v13;
  if (*v13)
  {
    atomic_fetch_add_explicit(v14, 2u, memory_order_relaxed);
  }

  *buf = v14;
  v15 = *(v13 + 24);
  *&buf[8] = *(v13 + 8);
  v27 = v15;
  if (a3 && (v16 = [(NSData *)a3 bytes], result = [(NSData *)a3 length], (a3 = result) != 0))
  {
    if (HIDWORD(result))
    {
      __break(0xC471u);
      return result;
    }

    v18 = WTF::fastMalloc(result);
    v19 = 0;
    do
    {
      *(&v19->super.isa + v18) = *(&v19->super.isa + v16);
      v19 = (v19 + 1);
    }

    while (a3 != v19);
  }

  else
  {
    v18 = 0;
  }

  v22 = v18;
  v23 = a3;
  v24 = a3;
  v25 = 0;
  WebKit::SubFrameSOAuthorizationSession::appendRequestToLoad(this, buf, &v22);
  mpark::detail::move_constructor<mpark::detail::traits<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String>,(mpark::detail::Trait)1>::~move_constructor(&v22, v20);
  result = *buf;
  *buf = 0;
  if (result)
  {
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v21);
    }
  }

  return result;
}

void sub_19DD4A9D4(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, WTF::StringImpl *a13)
{
  mpark::detail::move_constructor<mpark::detail::traits<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String>,(mpark::detail::Trait)1>::~move_constructor(&a10, a2);
  v15 = a13;
  a13 = 0;
  if (v15)
  {
    if (atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v15, v14);
    }
  }

  _Unwind_Resume(a1);
}

WTF::StringImpl *WebKit::SubFrameSOAuthorizationSession::beforeStart(WebKit::SubFrameSOAuthorizationSession *this)
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = qword_1ED640838;
  if (os_log_type_enabled(qword_1ED640838, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(this + 48);
    v4 = "SubFrame";
    v5 = "PopUp";
    if (v3 != 1)
    {
      v5 = 0;
    }

    if (v3 != 2)
    {
      v4 = v5;
    }

    if (*(this + 48))
    {
      v6 = v4;
    }

    else
    {
      v6 = "Redirect";
    }

    v7 = *(this + 16);
    if (v7 > 1)
    {
      if (v7 == 2)
      {
        v8 = "Waiting";
        goto LABEL_19;
      }

      if (v7 == 3)
      {
        v8 = "Completed";
        goto LABEL_19;
      }
    }

    else
    {
      if (!*(this + 16))
      {
        v8 = "Idle";
        goto LABEL_19;
      }

      if (v7 == 1)
      {
        v8 = "Active";
LABEL_19:
        *buf = 134218498;
        *&buf[4] = this;
        *&buf[12] = 2080;
        *&buf[14] = v6;
        *&buf[22] = 2080;
        *&v19 = v8;
        _os_log_impl(&dword_19D52D000, v2, OS_LOG_TYPE_DEFAULT, "%p - [InitiatingAction=%s][State=%s] SubFrameSOAuthorizationSession::beforeStart", buf, 0x20u);
        goto LABEL_20;
      }
    }

    v8 = 0;
    goto LABEL_19;
  }

LABEL_20:
  WTF::CompletionHandler<void ()(BOOL)>::operator()((this + 80), 1);
  v9 = WebCore::ResourceRequestBase::url((*(this + 4) + 40));
  v10 = *v9;
  if (*v9)
  {
    atomic_fetch_add_explicit(v10, 2u, memory_order_relaxed);
  }

  *buf = v10;
  v11 = *(v9 + 24);
  *&buf[8] = *(v9 + 8);
  v19 = v11;
  v12 = WTF::fastMalloc(0x44);
  qmemcpy(v12, "<script>parent.postMessage('SOAuthorizationDidStart', '*');</script>", 68);
  v16[0] = v12;
  v16[1] = 0x4400000044;
  v17 = 0;
  WebKit::SubFrameSOAuthorizationSession::appendRequestToLoad(this, buf, v16);
  mpark::detail::move_constructor<mpark::detail::traits<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String>,(mpark::detail::Trait)1>::~move_constructor(v16, v13);
  result = *buf;
  *buf = 0;
  if (result)
  {
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v14);
    }
  }

  return result;
}

void sub_19DD4AC10(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, WTF::StringImpl *a13)
{
  mpark::detail::move_constructor<mpark::detail::traits<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String>,(mpark::detail::Trait)1>::~move_constructor(&a10, a2);
  v15 = a13;
  a13 = 0;
  if (v15)
  {
    if (atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v15, v14);
    }
  }

  _Unwind_Resume(a1);
}

void WebKit::SubFrameSOAuthorizationSession::didFinishLoad(uint64_t a1)
{
  v28 = *MEMORY[0x1E69E9840];
  v2 = qword_1ED640838;
  if (os_log_type_enabled(qword_1ED640838, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 48);
    if (*(a1 + 48))
    {
      if (v3 == 2)
      {
        v4 = "SubFrame";
      }

      else if (v3 == 1)
      {
        v4 = "PopUp";
      }

      else
      {
        v4 = 0;
      }
    }

    else
    {
      v4 = "Redirect";
    }

    v5 = *(a1 + 16);
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        v6 = "Waiting";
        goto LABEL_19;
      }

      if (v5 == 3)
      {
        v6 = "Completed";
        goto LABEL_19;
      }
    }

    else
    {
      if (!*(a1 + 16))
      {
        v6 = "Idle";
        goto LABEL_19;
      }

      if (v5 == 1)
      {
        v6 = "Active";
LABEL_19:
        *buf = 134218498;
        v23 = a1;
        v24 = 2080;
        v25 = v4;
        v26 = 2080;
        v27 = v6;
        _os_log_impl(&dword_19D52D000, v2, OS_LOG_TYPE_DEFAULT, "%p - [InitiatingAction=%s][State=%s] SubFrameSOAuthorizationSession::didFinishLoad", buf, 0x20u);
        goto LABEL_20;
      }
    }

    v6 = 0;
    goto LABEL_19;
  }

LABEL_20:
  v7 = WebKit::WebFrameProxy::webFrame(*(a1 + 112), *(a1 + 112) != 0);
  v9 = v7;
  if (!v7)
  {
    goto LABEL_36;
  }

  CFRetain(*(v7 + 8));
  v11 = (a1 + 120);
  v10 = *(a1 + 120);
  v12 = (a1 + 128);
  if (v10 != *(a1 + 128))
  {
    while (1)
    {
      if (v10 < *(a1 + 144))
      {
        if ((WTF::equal(*(*(a1 + 136) + (v10 << 6)), *(v9 + 64), v8) & 1) == 0)
        {
          goto LABEL_34;
        }

        v13 = *(a1 + 120);
        if (v13 < *(a1 + 144))
        {
          std::pair<WTF::URL,mpark::variant<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String>>::pair[abi:sn200100](&v20, (*(a1 + 136) + (v13 << 6)));
          v14 = *v11;
          if (*v11 == *v12)
          {
            __break(0xC471u);
            return;
          }

          if (v14 < *(a1 + 144))
          {
            break;
          }
        }
      }

      __break(1u);
LABEL_36:
      v11 = (a1 + 120);
      v10 = *(a1 + 120);
      v12 = (a1 + 128);
      if (v10 == *(a1 + 128))
      {
        return;
      }
    }

    WTF::VectorTypeOperations<std::pair<WTF::URL,mpark::variant<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String>>>::destruct((*(a1 + 136) + (v14 << 6)), 1);
    v16 = *(a1 + 120);
    if (v16 == *(a1 + 144) - 1)
    {
      v17 = 0;
    }

    else
    {
      v17 = v16 + 1;
    }

    *(a1 + 120) = v17;
    mpark::detail::move_constructor<mpark::detail::traits<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String>,(mpark::detail::Trait)1>::~move_constructor(&v21, v15);
    v19 = v20;
    v20 = 0;
    if (v19)
    {
      if (atomic_fetch_add_explicit(v19, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v19, v18);
      }
    }

    WebKit::SubFrameSOAuthorizationSession::loadRequestToFrame(a1);
  }

LABEL_34:
  CFRelease(*(v9 + 8));
}

void WebKit::SubFrameSOAuthorizationSession::loadRequestToFrame(WebKit::SubFrameSOAuthorizationSession *this)
{
  v28 = *MEMORY[0x1E69E9840];
  v2 = qword_1ED640838;
  if (os_log_type_enabled(qword_1ED640838, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(this + 48);
    v4 = "SubFrame";
    v5 = "PopUp";
    if (v3 != 1)
    {
      v5 = 0;
    }

    if (v3 != 2)
    {
      v4 = v5;
    }

    if (*(this + 48))
    {
      v6 = v4;
    }

    else
    {
      v6 = "Redirect";
    }

    v7 = *(this + 16);
    if (v7 > 1)
    {
      if (v7 == 2)
      {
        v8 = "Waiting";
        goto LABEL_19;
      }

      if (v7 == 3)
      {
        v8 = "Completed";
        goto LABEL_19;
      }
    }

    else
    {
      if (!*(this + 16))
      {
        v8 = "Idle";
        goto LABEL_19;
      }

      if (v7 == 1)
      {
        v8 = "Active";
LABEL_19:
        *buf = 134218498;
        *&buf[4] = this;
        v24 = 2080;
        v25 = v6;
        v26 = 2080;
        v27 = v8;
        _os_log_impl(&dword_19D52D000, v2, OS_LOG_TYPE_DEFAULT, "%p - [InitiatingAction=%s][State=%s] SubFrameSOAuthorizationSession::loadRequestToFrame", buf, 0x20u);
        goto LABEL_20;
      }
    }

    v8 = 0;
    goto LABEL_19;
  }

LABEL_20:
  v9 = *(this + 5);
  if (v9)
  {
    v10 = *(v9 + 8);
    if (v10)
    {
      CFRetain(*(v10 - 8));
      if (*(this + 15) != *(this + 16))
      {
        v11 = WebKit::WebFrameProxy::webFrame(*(this + 14), *(this + 14) != 0);
        if (v11)
        {
          v12 = v11;
          v13 = CFRetain(*(v11 + 8));
          *(v10 + 857) = 1;
          v14 = *(this + 15);
          if (v14 >= *(this + 36))
          {
            __break(1u);
          }

          v15 = *(this + 17) + (v14 << 6);
          if (*(v15 + 56) == 1)
          {
            WebKit::WebFrameProxy::loadURL(v12, v15, (v15 + 40));
          }

          else
          {
            if (*(v15 + 56))
            {
              mpark::throw_bad_variant_access(v13);
            }

            v16 = *(v15 + 40);
            v17 = *(v15 + 52);
            WTF::StringImpl::createWithoutCopyingNonEmpty();
            WTF::StringImpl::createWithoutCopyingNonEmpty();
            v21 = *buf;
            WebKit::WebFrameProxy::loadData(v12, v16, v17, &v22, &v21, v15);
            v19 = v21;
            v21 = 0;
            if (v19 && atomic_fetch_add_explicit(v19, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v19, v18);
            }

            v20 = v22;
            v22 = 0;
            if (v20)
            {
              if (atomic_fetch_add_explicit(v20, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v20, v18);
              }
            }
          }

          CFRelease(v12[1]);
        }
      }

      CFRelease(*(v10 - 8));
    }
  }
}

void sub_19DD4B194(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
{
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, a2);
    }
  }

  CFRelease(*(v10 + 8));
  CFRelease(*(v11 - 8));
  _Unwind_Resume(a1);
}

uint64_t WebKit::SubFrameSOAuthorizationSession::shouldInterruptLoadForCSPFrameAncestorsOrXFrameOptions(WebKit::SubFrameSOAuthorizationSession *this, const WebCore::ResourceResponse *a2)
{
  v95 = *MEMORY[0x1E69E9840];
  v4 = *(this + 5);
  if (v4)
  {
    v5 = *(v4 + 8);
    if (v5)
    {
      CFRetain(*(v5 - 8));
      v6 = *(v5 + 352);
      CFRetain(*(v6 + 8));
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::ignoreIframeEmbeddingProtectionsEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::ignoreIframeEmbeddingProtectionsEnabledKey(void)::key = WebKit::WebPreferencesKey::ignoreIframeEmbeddingProtectionsEnabledKey(void)::$_0::operator() const(void)::impl;
      }

      BoolValueForKey = WebKit::WebPreferencesStore::getBoolValueForKey((v6 + 40), &WebKit::WebPreferencesKey::ignoreIframeEmbeddingProtectionsEnabledKey(void)::key, v7);
      CFRelease(*(v6 + 8));
      CFRelease(*(v5 - 8));
      if (BoolValueForKey)
      {
        return 0;
      }
    }
  }

  v87 = 0;
  v88 = 0;
  v10 = *(*(this + 4) + 24);
  if (v10)
  {
    CFRetain(*(v10 + 8));
    v11 = *(v10 + 272);
    if (v11)
    {
      API::FrameHandle::create(v11, 1, v83);
      v12 = v83[0];
      if (v83[0])
      {
        v13 = WebKit::WebFrameProxy::webFrame(*(v83[0] + 2), *(v83[0] + 2) != 0);
        if (v13)
        {
          v14 = v13;
          CFRetain(*(v13 + 8));
          while (1)
          {
            WebCore::SecurityOrigin::create(v83, (v14 + 64), v15);
            LODWORD(v17) = HIDWORD(v88);
            if (HIDWORD(v88) == v88)
            {
              v22 = WTF::Vector<WTF::Ref<WebCore::SecurityOrigin,WTF::RawPtrTraits<WebCore::SecurityOrigin>,WTF::DefaultRefDerefTraits<WebCore::SecurityOrigin>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(&v87, HIDWORD(v88) + 1, v83);
              v17 = HIDWORD(v88);
              v23 = v87;
              v24 = *v22;
              *v22 = 0;
              v23[v17] = v24;
            }

            else
            {
              v18 = v83[0];
              v83[0] = 0;
              v87[HIDWORD(v88)] = v18;
            }

            HIDWORD(v88) = v17 + 1;
            v19 = v83[0];
            v83[0] = 0;
            if (v19)
            {
              WTF::ThreadSafeRefCounted<WebCore::SecurityOrigin,(WTF::DestructionThread)0>::deref(v19, v16);
            }

            v20 = *(v14 + 320);
            if (!v20)
            {
              break;
            }

            v21 = *(v20 + 8);
            if (!v21)
            {
              break;
            }

            CFRetain(*(v21 - 8));
            CFRelease(*(v14 + 8));
            v14 = v21 - 16;
          }

          CFRelease(*(v14 + 8));
        }

        CFRelease(*(v12 + 1));
      }
    }

    CFRelease(*(v10 + 8));
  }

  v25 = WebCore::ResourceResponseBase::url(a2);
  v26 = *v25;
  if (*v25)
  {
    atomic_fetch_add_explicit(v26, 2u, memory_order_relaxed);
    v84 = v26;
    v27 = *(v25 + 24);
    v85 = *(v25 + 8);
    v86 = v27;
    atomic_fetch_add_explicit(v26, 2u, memory_order_relaxed);
  }

  else
  {
    v84 = 0;
    v28 = *(v25 + 24);
    v85 = *(v25 + 8);
    v86 = v28;
  }

  *buf = v26;
  *&buf[8] = v85;
  *v94 = v86;
  MEMORY[0x19EB09300](v83, buf, 0, 0);
  v30 = *buf;
  *buf = 0;
  if (v30 && atomic_fetch_add_explicit(v30, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v30, v29);
  }

  MEMORY[0x19EB0D930](buf, a2);
  WebCore::ResourceRequestBase::httpReferrer(&v92, (*(this + 4) + 40));
  WebCore::ContentSecurityPolicy::didReceiveHeaders();
  v32 = v92;
  v92 = 0;
  if (v32 && atomic_fetch_add_explicit(v32, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v32, v31);
  }

  WTF::Vector<std::pair<WTF::String,WebCore::ContentSecurityPolicyHeaderType>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(buf, v31);
  if ((WebCore::ContentSecurityPolicy::allowFrameAncestors() & 1) == 0)
  {
    goto LABEL_152;
  }

  if (WebCore::ContentSecurityPolicy::overridesXFrameOptions(v83))
  {
    goto LABEL_154;
  }

  WebCore::ResourceResponseBase::httpHeaderField();
  if (!v82)
  {
    goto LABEL_154;
  }

  v33 = WebCore::ResourceResponseBase::url(a2);
  v34 = WebCore::parseXFrameOptionsHeader();
  if (v34 <= 3)
  {
    if (v34 == 1)
    {
      goto LABEL_112;
    }

    if (v34 == 2)
    {
      WebCore::SecurityOrigin::create(buf, v33, v35);
      if (HIDWORD(v88))
      {
        v36 = v87;
        v37 = 8 * HIDWORD(v88) - 8;
        do
        {
          isSameSchemeHostPort = WebCore::SecurityOrigin::isSameSchemeHostPort(*buf, *v36++);
          if (v37)
          {
            v39 = isSameSchemeHostPort;
          }

          else
          {
            v39 = 0;
          }

          v37 -= 8;
        }

        while ((v39 & 1) != 0);
        v40 = isSameSchemeHostPort ^ 1;
      }

      else
      {
        v40 = 0;
      }

      v52 = *buf;
      *buf = 0;
      if (v52)
      {
        WTF::ThreadSafeRefCounted<WebCore::SecurityOrigin,(WTF::DestructionThread)0>::deref(v52, v35);
        if (v40)
        {
          goto LABEL_112;
        }
      }

      else if (v40)
      {
        goto LABEL_112;
      }
    }

LABEL_125:
    v70 = 0;
    goto LABEL_149;
  }

  if (v34 == 4)
  {
    atomic_fetch_add_explicit(v82, 2u, memory_order_relaxed);
    v89 = v82;
    WTF::makeString<WTF::ASCIILiteral,WTF::String,WTF::ASCIILiteral>("Invalid 'X-Frame-Options' header encountered: '", 48, &v89, "' is not a recognized directive. The header will be ignored.", 61, &v92);
    v48 = v89;
    v89 = 0;
    if (v48 && atomic_fetch_add_explicit(v48, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v48, v47);
    }

    v49 = qword_1ED640838;
    if (!os_log_type_enabled(qword_1ED640838, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_108;
    }

    v50 = *(this + 48);
    if (*(this + 48))
    {
      if (v50 == 2)
      {
        v51 = "SubFrame";
      }

      else if (v50 == 1)
      {
        v51 = "PopUp";
      }

      else
      {
        v51 = 0;
      }
    }

    else
    {
      v51 = "Redirect";
    }

    v55 = *(this + 16);
    if (v55 > 1)
    {
      if (v55 != 2)
      {
        if (v55 == 3)
        {
          v56 = "Completed";
          goto LABEL_102;
        }

        goto LABEL_88;
      }

      v56 = "Waiting";
    }

    else
    {
      if (*(this + 16))
      {
        if (v55 == 1)
        {
          v56 = "Active";
          goto LABEL_102;
        }

LABEL_88:
        v56 = 0;
        goto LABEL_102;
      }

      v56 = "Idle";
    }

LABEL_102:
    WTF::String::utf8();
    if (v90)
    {
      v60 = v90 + 16;
    }

    else
    {
      v60 = 0;
    }

    *buf = 134218754;
    *&buf[4] = this;
    *&buf[12] = 2080;
    *&buf[14] = v51;
    *&buf[22] = 2080;
    *v94 = v56;
    *&v94[8] = 2080;
    *&v94[10] = v60;
    _os_log_impl(&dword_19D52D000, v49, OS_LOG_TYPE_DEFAULT, "%p - [InitiatingAction=%s][State=%s] SubFrameSOAuthorizationSession::shouldInterruptLoadForXFrameOptions: %s", buf, 0x2Au);
    v61 = v90;
    v90 = 0;
    if (v61)
    {
      if (*v61 == 1)
      {
        WTF::fastFree(v61, v35);
      }

      else
      {
        --*v61;
      }
    }

LABEL_108:
    v62 = v92;
    v92 = 0;
    if (v62 && atomic_fetch_add_explicit(v62, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v62, v35);
    }

    goto LABEL_125;
  }

  if (v34 != 5)
  {
    goto LABEL_125;
  }

  atomic_fetch_add_explicit(v82, 2u, memory_order_relaxed);
  v91 = v82;
  WTF::makeString<WTF::ASCIILiteral,WTF::String,WTF::ASCIILiteral>("Multiple 'X-Frame-Options' headers with conflicting values ('", 62, &v91, "') encountered. Falling back to 'DENY'.", 40, &v92);
  v42 = v91;
  v91 = 0;
  if (v42 && atomic_fetch_add_explicit(v42, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v42, v41);
  }

  v43 = qword_1ED640838;
  if (os_log_type_enabled(qword_1ED640838, OS_LOG_TYPE_DEFAULT))
  {
    v45 = *(this + 48);
    if (*(this + 48))
    {
      if (v45 == 2)
      {
        v46 = "SubFrame";
      }

      else if (v45 == 1)
      {
        v46 = "PopUp";
      }

      else
      {
        v46 = 0;
      }
    }

    else
    {
      v46 = "Redirect";
    }

    v53 = *(this + 16);
    if (v53 > 1)
    {
      if (v53 != 2)
      {
        if (v53 == 3)
        {
          v54 = "Completed";
          goto LABEL_91;
        }

        goto LABEL_87;
      }

      v54 = "Waiting";
    }

    else
    {
      if (*(this + 16))
      {
        if (v53 == 1)
        {
          v54 = "Active";
          goto LABEL_91;
        }

LABEL_87:
        v54 = 0;
        goto LABEL_91;
      }

      v54 = "Idle";
    }

LABEL_91:
    WTF::String::utf8();
    if (v90)
    {
      v57 = v90 + 16;
    }

    else
    {
      v57 = 0;
    }

    *buf = 134218754;
    *&buf[4] = this;
    *&buf[12] = 2080;
    *&buf[14] = v46;
    *&buf[22] = 2080;
    *v94 = v54;
    *&v94[8] = 2080;
    *&v94[10] = v57;
    _os_log_impl(&dword_19D52D000, v43, OS_LOG_TYPE_DEFAULT, "%p - [InitiatingAction=%s][State=%s] SubFrameSOAuthorizationSession::shouldInterruptLoadForXFrameOptions: %s", buf, 0x2Au);
    v58 = v90;
    v90 = 0;
    if (v58)
    {
      if (*v58 == 1)
      {
        WTF::fastFree(v58, v44);
      }

      else
      {
        --*v58;
      }
    }
  }

  v59 = v92;
  v92 = 0;
  if (v59 && atomic_fetch_add_explicit(v59, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v59, v44);
  }

LABEL_112:
  v63 = WebCore::ResourceResponseBase::url(a2);
  WTF::URL::stringCenterEllipsizedToLength(v63);
  if (v82)
  {
    atomic_fetch_add_explicit(v82, 2u, memory_order_relaxed);
  }

  v80 = v82;
  WTF::makeString<WTF::ASCIILiteral,WTF::String,WTF::ASCIILiteral,WTF::String,WTF::ASCIILiteral>("Refused to display '", 21, &v81, "' in a frame because it set 'X-Frame-Options' to '", 51, &v80, "'.", 3, &v92);
  v65 = v80;
  v80 = 0;
  if (v65 && atomic_fetch_add_explicit(v65, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v65, v64);
  }

  v66 = v81;
  v81 = 0;
  if (v66 && atomic_fetch_add_explicit(v66, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v66, v64);
  }

  v67 = qword_1ED640838;
  if (!os_log_type_enabled(qword_1ED640838, OS_LOG_TYPE_DEFAULT))
  {
    goto LABEL_145;
  }

  v68 = *(this + 48);
  if (*(this + 48))
  {
    if (v68 == 2)
    {
      v69 = "SubFrame";
    }

    else if (v68 == 1)
    {
      v69 = "PopUp";
    }

    else
    {
      v69 = 0;
    }
  }

  else
  {
    v69 = "Redirect";
  }

  v71 = *(this + 16);
  if (v71 > 1)
  {
    if (v71 != 2)
    {
      if (v71 == 3)
      {
        v72 = "Completed";
        goto LABEL_139;
      }

      goto LABEL_136;
    }

    v72 = "Waiting";
  }

  else
  {
    if (*(this + 16))
    {
      if (v71 == 1)
      {
        v72 = "Active";
        goto LABEL_139;
      }

LABEL_136:
      v72 = 0;
      goto LABEL_139;
    }

    v72 = "Idle";
  }

LABEL_139:
  WTF::String::utf8();
  if (v91)
  {
    v73 = v91 + 16;
  }

  else
  {
    v73 = 0;
  }

  *buf = 134218754;
  *&buf[4] = this;
  *&buf[12] = 2080;
  *&buf[14] = v69;
  *&buf[22] = 2080;
  *v94 = v72;
  *&v94[8] = 2080;
  *&v94[10] = v73;
  _os_log_impl(&dword_19D52D000, v67, OS_LOG_TYPE_DEFAULT, "%p - [InitiatingAction=%s][State=%s] SubFrameSOAuthorizationSession::shouldInterruptLoadForCSPFrameAncestorsOrXFrameOptions: %s", buf, 0x2Au);
  v74 = v91;
  v91 = 0;
  if (v74)
  {
    if (*v74 == 1)
    {
      WTF::fastFree(v74, v35);
    }

    else
    {
      --*v74;
    }
  }

LABEL_145:
  v75 = v92;
  v92 = 0;
  if (v75 && atomic_fetch_add_explicit(v75, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v75, v35);
  }

  v70 = 1;
LABEL_149:
  v76 = v82;
  v82 = 0;
  if (v76 && atomic_fetch_add_explicit(v76, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v76, v35);
    if (v70)
    {
      goto LABEL_152;
    }
  }

  else if (v70)
  {
LABEL_152:
    v9 = 1;
    goto LABEL_155;
  }

LABEL_154:
  v9 = 0;
LABEL_155:
  MEMORY[0x19EB09310](v83);
  v78 = v84;
  v84 = 0;
  if (v78 && atomic_fetch_add_explicit(v78, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v78, v77);
  }

  WTF::Vector<WTF::Ref<WebCore::SecurityOrigin,WTF::RawPtrTraits<WebCore::SecurityOrigin>,WTF::DefaultRefDerefTraits<WebCore::SecurityOrigin>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v87, v77);
  return v9;
}